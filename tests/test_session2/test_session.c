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

#include <stdarg.h>
#include <stddef.h>

#include "solo5.h"
#include "../../bindings/lib.c"
#include "../../bindings/printf.c"

#define NSEC_PER_SEC 1000000000ULL

__attribute__((__used__))
static int source_id = 0;

static void printf(const char *fmt, ...)
    __attribute__((format(printf, 1, 2)));

static void printf(const char *fmt, ...)
{
    char buffer[1024];
    va_list args;
    size_t size;

    va_start(args, fmt);
    size = vsnprintf(buffer, sizeof buffer, fmt, args);
    va_end(args);

    if (size >= sizeof buffer)
    {
        const char trunc[] = "(truncated)\n";
        solo5_console_write(buffer, sizeof buffer - 1);
        solo5_console_write(trunc, sizeof trunc - 1);
    }
    else
    {
        solo5_console_write(buffer, size);
    }
}

static void puts(const char *s)
{
    solo5_console_write(s, strlen(s));
}

__attribute__((__used__)) static void nop(void)
{
}

static int call_trampoline(int n, uint64_t key, int target_id, uint64_t source_id)
{
    int r = 0;
    if (target_id >= 512)
        return r;
    n = n, key = key;
    __asm__ volatile("mov %0, %%edi;"
                     "movq %1, %%rsi;"
                     "mov %2, %%ecx;"
                     "movq %3, %%r11;"
                     :
                     : "r"(n), "r"(key), "r"(target_id), "r"(source_id)
                     :"edi","rsi","ecx","r11");
    __asm__ volatile("callq 0xfc000;"
                     "mov %%ebx, %0;"
                     : "=m"(r)
                     :
                     : "memory");
    return r;
}

int solo5_app_main(const struct solo5_start_info *si)
{
    puts("\n**** Solo5 standalone test_hello ****\n\n");
    puts("Hello, World\nCommand line is: '");

    size_t len = 0;
    const char *p = si->cmdline;

    while (*p++)
        len++;
    solo5_console_write(si->cmdline, len);
    puts("'\n");

    /* "Hello_Solo5" will be passed in via the command line */
    if (strcmp(si->cmdline, "Hello_Solo5") == 0)
        puts("SUCCESS\n");

    int r = 0;
    solo5_time_t ta = 0, tb = 0;
    ta = solo5_clock_monotonic();
    __asm__ volatile("mov $6, %edi;"
                     "movq $0x1000, %rsi;"
                     "mov $0, %ecx;"
                     "movq $2, %r11;");
    __asm__ volatile("callq 0xfc000;"
                     "mov %%ebx, %0;"
                     : "=m"(r)
                     :
                     : "memory");
    tb = solo5_clock_monotonic() + NSEC_PER_SEC;
    printf("TIME USE: %llu\n",
           (unsigned long long)(tb - ta));
    if (r == 15)
        puts("FUNC SUCCESS\n");
    else
        puts("FUNC NOT READY\n");
    ta = tb = 0;
    ta = solo5_clock_monotonic();
    r = call_trampoline(7, 0x1000, 0, 2);
    tb = solo5_clock_monotonic() + NSEC_PER_SEC;
    if (r == 21)
        puts("2: FUNC SUCCESS\n");
    printf("TIME USE: %llu\n",
            (unsigned long long)(tb - ta));
    if (r == 1)
        puts("TRAMPOLINE SUCCESS\n");
    
    return SOLO5_EXIT_SUCCESS;
}
