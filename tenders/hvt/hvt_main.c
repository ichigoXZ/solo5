/*
 * Copyright (c) 2015-2019 Contributors as noted in the AUTHORS file
 *
 * This file is part of Solo5, a sandboxed execution environment.
 *
 * Permission to use, copy, modify, and/or distribute this software
 * for any purpose with or without fee is hereby granted, provided
 * that the above copyright notice and this permission notice appear
 * in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
 * WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
 * AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
 * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
 * OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
 * NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

/*
 * hvt_main.c: Main program.
 */

#define _GNU_SOURCE
#include <assert.h>
#include <err.h>
#include <fcntl.h>
#include <libgen.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include "hvt.h"
#include "solo5_version.h"

extern struct hvt_module __start_modules;
extern struct hvt_module __stop_modules;

static void setup_modules(struct hvt *hvt, struct mft *mft)
{
    for (struct hvt_module *m = &__start_modules; m < &__stop_modules; m++) {
        assert(m->ops.setup);
        if (m->ops.setup(hvt, mft)) {
            warnx("Module `%s' setup failed", m->name);
            if (m->ops.usage) {
                warnx("Please check you have correctly specified:\n    %s",
                       m->ops.usage());
            }
            exit(1);
        }
    }

    bool fail = false;
    for (unsigned i = 0; i != mft->entries; i++) {
        if (mft->e[i].type >= MFT_RESERVED_FIRST)
            continue;
        if (!mft->e[i].attached) {
            warnx("Device '%s' of type %s declared but not attached.",
                    mft->e[i].name, mft_type_to_string(mft->e[i].type));
            fail = true;
        }
    }
    if (fail)
        errx(1, "All declared devices must be attached. "
                "See --help for syntax.");
}

static int handle_cmdarg(char *cmdarg, struct mft *mft)
{
    for (struct hvt_module *m = &__start_modules; m < &__stop_modules; m++) {
        if (m->ops.handle_cmdarg) {
            if (m->ops.handle_cmdarg(cmdarg, mft) == 0) {
                return 0;
            }
        }
    }
    return -1;
}

static void sig_handler(int signo)
{
    errx(1, "Exiting on signal %d", signo);
}

static void handle_mem(char *cmdarg, size_t *mem_size)
{
    size_t mem;
    int rc = sscanf(cmdarg, "--mem=%zd", &mem);
    mem = mem << 20;
    if (rc != 1 || mem <= 0) {
        errx(1, "Malformed argument to --mem");
    }
    *mem_size = mem;
}

static void usage(const char *prog)
{
    fprintf(stderr, "usage: %s [ CORE OPTIONS ] [ MODULE OPTIONS ] [ -- ] "
            "KERNEL [ ARGS ]\n", prog);
    fprintf(stderr, "KERNEL is the filename of the unikernel to run.\n");
    fprintf(stderr, "ARGS are optional arguments passed to the unikernel.\n");
    fprintf(stderr, "Core options:\n");
    fprintf(stderr, "  [ --mem=512 ] (guest memory in MB)\n");
    fprintf(stderr, "    --help (display this help)\n");
    fprintf(stderr, "    --version (display version information)\n");
    fprintf(stderr, "Compiled-in modules: ");
    for (struct hvt_module *m = &__start_modules; m < &__stop_modules; m++) {
        assert(m->name);
        fprintf(stderr, "%s ", m->name);
    }
    fprintf(stderr, "\n");
    fprintf(stderr, "Compiled-in module options:\n");
    int nm = 0;
    for (struct hvt_module *m = &__start_modules; m < &__stop_modules; m++) {
        if (m->ops.usage) {
            fprintf(stderr, "    %s\n", m->ops.usage());
            nm++;
        }
    }
    if (!nm)
        fprintf(stderr, "    (none)\n");
    exit(1);
}

static void version(const char *prog)
{
    fprintf(stderr, "%s %s\n", prog, SOLO5_VERSION);
    exit(0);
}

int main(int argc, char **argv)
{
    size_t mem_size = 0x20000000;
    hvt_gpa_t gpa_ep, gpa_kend;
    const char *prog;
    const char *elf_filename;
    int elf_fd = -1;
    int matched;

    prog = basename(*argv);
    argc--;
    argv++;

    /*
     * Scan command line arguments, looking for the first non-option argument
     * which will be the ELF file to load. Stop if a "terminal" option such as
     * --help is encountered.
     */
    int argc1 = argc;
    char **argv1 = argv;
    while (*argv1 && *argv1[0] == '-') {
        if (strcmp("--", *argv1) == 0)
        {
            /* Consume and stop option processing */
            argc1--;
            argv1++;
            break;
        }

        if (strcmp("--help", *argv1) == 0)
            usage(prog);
	else if(strcmp("--version", *argv1) == 0)
	    version(prog);

        argc1--;
        argv1++;
    }
    if (*argv1 == NULL) {
        warnx("Missing KERNEL operand");
        usage(prog);
    }
    elf_filename = *argv1;

    /*
     * Now that we have the ELF file name, try and load the manifest from it,
     * as subsequent parsing of the command line in the 2nd pass depends on it.
     */
    elf_fd = open(elf_filename, O_RDONLY);
    if (elf_fd == -1)
        err(1, "%s: Could not open", elf_filename);

    struct mft *mft;
    size_t mft_size;
    if (elf_load_note(elf_fd, elf_filename, MFT1_NOTE_TYPE, MFT1_NOTE_ALIGN,
                MFT1_NOTE_MAX_SIZE, (void **)&mft, &mft_size) == -1)
        errx(1, "%s: No Solo5 manifest found in executable", elf_filename);
    if (mft_validate(mft, mft_size) == -1) {
        free(mft);
        errx(1, "%s: Solo5 manifest is invalid", elf_filename);
    }

    /*
     * Scan command line arguments in a 2nd pass, and pass options through to
     * modules to handle.
     */
    while (*argv && *argv[0] == '-') {
        if (strcmp("--", *argv) == 0) {
            /* Consume and stop option processing */
            argc--;
            argv++;
            break;
        }

        matched = 0;
        if (strncmp("--mem=", *argv, 6) == 0) {
            handle_mem(*argv, &mem_size);
            matched = 1;
            argc--;
            argv++;
        }
        if (handle_cmdarg(*argv, mft) == 0) {
            /* Handled by module, consume and go on to next arg */
            matched = 1;
            argc--;
            argv++;
        }
        if (!matched) {
            warnx("Invalid option: `%s'", *argv);
            usage(prog);
        }
    }
    assert(elf_filename == *argv);
    argc--;
    argv++;

    struct sigaction sa;
    memset (&sa, 0, sizeof (struct sigaction));
    sa.sa_handler = sig_handler;
    sigfillset(&sa.sa_mask);
    if (sigaction(SIGINT, &sa, NULL) == -1)
        err(1, "Could not install signal handler");
    if (sigaction(SIGTERM, &sa, NULL) == -1)
        err(1, "Could not install signal handler");

    hvt_mem_size(&mem_size);
    struct hvt *hvt = hvt_init(mem_size);

    elf_load(elf_fd, elf_filename, hvt->mem, hvt->mem_size, HVT_GUEST_MIN_BASE,
            &gpa_ep, &gpa_kend);
    close(elf_fd);

    hvt_vcpu_init(hvt, gpa_ep);

    setup_modules(hvt, mft);

    hvt_boot_info_init(hvt, gpa_kend, argc, argv, mft, mft_size);

#if HVT_DROP_PRIVILEGES
    hvt_drop_privileges();
#else
    warnx("WARNING: Tender is configured with HVT_DROP_PRIVILEGES=0. Not"
          " dropping any privileges.");
    warnx("WARNING: This is not recommended for production use.");
#endif

    return hvt_vcpu_loop(hvt);
}
