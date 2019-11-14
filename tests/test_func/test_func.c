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

#define DEBUG_FUNCTION __attribute__((__used__))
#define DEBUG_VARIABLE __attribute__((__used__))

DEBUG_FUNCTION
static int sum(int num) {
    int r = 0;
    r = num * (num - 1) / 2;
    // int session_id = 0;
    // __asm__ volatile("movq %%r11, %0;"
	// 	   : "=m"(session_id)
	// 	   :
	// 	   : "memory");
    // printf("r11:%d\n",session_id);
    return r;
}

//DEBUG_VARIABLE
//static int source_id = 1;
//DEBUG_VARIABLE
//static int target_id = 0;

/*void change_rsp(){
   uint64_t source_id = 0;
   __asm__ volatile("movq %%r11, %0;"
		   : "=m"(source_id)
		   :
		   : "memory");
   uint64_t target_rsp = 0x1effffff - (source_id - 1)*128*1024;
   
   __asm__ volatile("movq %0, %%rsp;"
		   : 
		   : "m"(target_rsp)
		   : "rsp"
		   );
   //__asm__ volatile("push %r10;"
   //		    "push %r11;"
   //		   );
}*/

static void puts(const char *s)
{
    solo5_console_write(s, strlen(s));
}

int solo5_app_main(const struct solo5_start_info *si)
{
    puts("\n**** I provide function 1: Accumulate sum.****\n\n");

    const char *p = si->cmdline;

    int r = 0;
    while (*p)
        r = r * 10 - '0' + *p++;
    solo5_time_t ta = 0, tb = 0;
    ta = solo5_clock_monotonic();
    r = sum(r);
    tb = solo5_clock_monotonic() + NSEC_PER_SEC;
    if (r == 15)
        puts("Success\n");
    puts("\n");
    __asm__ volatile("mov $5, %edi;"
                     "movq $0x1000, %rsi;"
                     "mov $0, %ecx;"  // target id
                     "mov $2, %r11");   // source id
    __asm__ volatile("callq 0xfc000;"
                     "mov %%ebx, %0;"
                     : "=m"(r)
                     :
                     : "memory");
    printf("r = %d\n", r);
    if (r == 10)
        puts("TRAMPOLINE SUCCESS\n");
    printf("TIME USE: %llu\n",
           (unsigned long long)(tb - ta));
    while (1)
    {}
    return SOLO5_EXIT_SUCCESS;
}
