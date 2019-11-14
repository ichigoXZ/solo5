
test_hello.hvt:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <_start>:
  100000:	53                   	push   %rbx
  100001:	48 89 fb             	mov    %rdi,%rbx
  100004:	0f 31                	rdtsc  
  100006:	48 89 d6             	mov    %rdx,%rsi
  100009:	48 89 c1             	mov    %rax,%rcx
  10000c:	0f 31                	rdtsc  
  10000e:	48 c1 e6 20          	shl    $0x20,%rsi
  100012:	48 c1 e0 20          	shl    $0x20,%rax
  100016:	31 ff                	xor    %edi,%edi
  100018:	48 09 f1             	or     %rsi,%rcx
  10001b:	48 01 c1             	add    %rax,%rcx
  10001e:	30 ed                	xor    %ch,%ch
  100020:	48 89 0d e1 5f 00 00 	mov    %rcx,0x5fe1(%rip)        # 106008 <__stack_chk_guard>
  100027:	e8 74 31 00 00       	callq  1031a0 <platform_set_tls_base>
  10002c:	e8 8f 35 00 00       	callq  1035c0 <console_init>
  100031:	e8 aa 01 00 00       	callq  1001e0 <cpu_init>
  100036:	48 89 df             	mov    %rbx,%rdi
  100039:	e8 12 32 00 00       	callq  103250 <platform_init>
  10003e:	e8 3d 31 00 00       	callq  103180 <platform_cmdline>
  100043:	48 89 c7             	mov    %rax,%rdi
  100046:	e8 a5 2d 00 00       	callq  102df0 <cmdline_parse>
  10004b:	be b0 45 10 00       	mov    $0x1045b0,%esi
  100050:	48 89 05 a9 6f 00 00 	mov    %rax,0x6fa9(%rip)        # 107000 <_edata>
  100057:	bf 02 00 00 00       	mov    $0x2,%edi
  10005c:	31 c0                	xor    %eax,%eax
  10005e:	e8 6d 2c 00 00       	callq  102cd0 <log>
  100063:	be c9 45 10 00       	mov    $0x1045c9,%esi
  100068:	bf 02 00 00 00       	mov    $0x2,%edi
  10006d:	31 c0                	xor    %eax,%eax
  10006f:	e8 5c 2c 00 00       	callq  102cd0 <log>
  100074:	be e2 45 10 00       	mov    $0x1045e2,%esi
  100079:	bf 02 00 00 00       	mov    $0x2,%edi
  10007e:	31 c0                	xor    %eax,%eax
  100080:	e8 4b 2c 00 00       	callq  102cd0 <log>
  100085:	be fc 45 10 00       	mov    $0x1045fc,%esi
  10008a:	bf 02 00 00 00       	mov    $0x2,%edi
  10008f:	31 c0                	xor    %eax,%eax
  100091:	e8 3a 2c 00 00       	callq  102cd0 <log>
  100096:	ba 15 46 10 00       	mov    $0x104615,%edx
  10009b:	be 2d 46 10 00       	mov    $0x10462d,%esi
  1000a0:	bf 02 00 00 00       	mov    $0x2,%edi
  1000a5:	31 c0                	xor    %eax,%eax
  1000a7:	e8 24 2c 00 00       	callq  102cd0 <log>
  1000ac:	e8 6f 2a 00 00       	callq  102b20 <mem_init>
  1000b1:	48 89 df             	mov    %rbx,%rdi
  1000b4:	e8 37 31 00 00       	callq  1031f0 <time_init>
  1000b9:	48 89 df             	mov    %rbx,%rdi
  1000bc:	e8 df 38 00 00       	callq  1039a0 <block_init>
  1000c1:	48 89 df             	mov    %rbx,%rdi
  1000c4:	e8 97 36 00 00       	callq  103760 <net_init>
  1000c9:	be 10 70 10 00       	mov    $0x107010,%esi
  1000ce:	bf 08 70 10 00       	mov    $0x107008,%edi
  1000d3:	e8 f8 29 00 00       	callq  102ad0 <mem_lock_heap>
  1000d8:	bf 00 70 10 00       	mov    $0x107000,%edi
  1000dd:	e8 be 3c 00 00       	callq  103da0 <solo5_app_main>
  1000e2:	89 c7                	mov    %eax,%edi
  1000e4:	e8 97 2b 00 00       	callq  102c80 <solo5_exit>
  1000e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000001000f0 <puts>:
  1000f0:	53                   	push   %rbx
  1000f1:	48 89 fb             	mov    %rdi,%rbx
  1000f4:	e8 c7 28 00 00       	callq  1029c0 <strlen>
  1000f9:	48 89 df             	mov    %rbx,%rdi
  1000fc:	89 c6                	mov    %eax,%esi
  1000fe:	5b                   	pop    %rbx
  1000ff:	e9 dc 33 00 00       	jmpq   1034e0 <platform_puts>
  100104:	66 90                	xchg   %ax,%ax
  100106:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10010d:	00 00 00 

0000000000100110 <_assert_fail>:
  100110:	41 54                	push   %r12
  100112:	55                   	push   %rbp
  100113:	49 89 fc             	mov    %rdi,%r12
  100116:	53                   	push   %rbx
  100117:	bf 49 46 10 00       	mov    $0x104649,%edi
  10011c:	48 89 f5             	mov    %rsi,%rbp
  10011f:	48 89 d3             	mov    %rdx,%rbx
  100122:	e8 c9 ff ff ff       	callq  1000f0 <puts>
  100127:	4c 89 e7             	mov    %r12,%rdi
  10012a:	e8 c1 ff ff ff       	callq  1000f0 <puts>
  10012f:	bf 58 46 10 00       	mov    $0x104658,%edi
  100134:	e8 b7 ff ff ff       	callq  1000f0 <puts>
  100139:	48 89 ef             	mov    %rbp,%rdi
  10013c:	e8 af ff ff ff       	callq  1000f0 <puts>
  100141:	bf 5a 46 10 00       	mov    $0x10465a,%edi
  100146:	e8 a5 ff ff ff       	callq  1000f0 <puts>
  10014b:	48 89 df             	mov    %rbx,%rdi
  10014e:	e8 9d ff ff ff       	callq  1000f0 <puts>
  100153:	bf 68 46 10 00       	mov    $0x104668,%edi
  100158:	e8 93 ff ff ff       	callq  1000f0 <puts>
  10015d:	31 f6                	xor    %esi,%esi
  10015f:	bf ff 00 00 00       	mov    $0xff,%edi
  100164:	e8 f7 30 00 00       	callq  103260 <platform_exit>
  100169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000100170 <_abort>:
  100170:	41 55                	push   %r13
  100172:	41 54                	push   %r12
  100174:	49 89 fd             	mov    %rdi,%r13
  100177:	55                   	push   %rbp
  100178:	53                   	push   %rbx
  100179:	bf 49 46 10 00       	mov    $0x104649,%edi
  10017e:	49 89 f4             	mov    %rsi,%r12
  100181:	48 89 d5             	mov    %rdx,%rbp
  100184:	48 89 cb             	mov    %rcx,%rbx
  100187:	48 83 ec 08          	sub    $0x8,%rsp
  10018b:	e8 60 ff ff ff       	callq  1000f0 <puts>
  100190:	4c 89 ef             	mov    %r13,%rdi
  100193:	e8 58 ff ff ff       	callq  1000f0 <puts>
  100198:	bf 58 46 10 00       	mov    $0x104658,%edi
  10019d:	e8 4e ff ff ff       	callq  1000f0 <puts>
  1001a2:	4c 89 e7             	mov    %r12,%rdi
  1001a5:	e8 46 ff ff ff       	callq  1000f0 <puts>
  1001aa:	bf 55 46 10 00       	mov    $0x104655,%edi
  1001af:	e8 3c ff ff ff       	callq  1000f0 <puts>
  1001b4:	48 89 ef             	mov    %rbp,%rdi
  1001b7:	e8 34 ff ff ff       	callq  1000f0 <puts>
  1001bc:	bf ed 4a 10 00       	mov    $0x104aed,%edi
  1001c1:	e8 2a ff ff ff       	callq  1000f0 <puts>
  1001c6:	48 89 de             	mov    %rbx,%rsi
  1001c9:	bf ff 00 00 00       	mov    $0xff,%edi
  1001ce:	e8 8d 30 00 00       	callq  103260 <platform_exit>
  1001d3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1001da:	00 00 00 
  1001dd:	0f 1f 00             	nopl   (%rax)

00000000001001e0 <cpu_init>:
  1001e0:	48 83 ec 28          	sub    $0x28,%rsp
  1001e4:	48 8b 05 1d 5e 00 00 	mov    0x5e1d(%rip),%rax        # 106008 <__stack_chk_guard>
  1001eb:	ba 28 00 00 00       	mov    $0x28,%edx
  1001f0:	31 f6                	xor    %esi,%esi
  1001f2:	bf c0 a3 10 00       	mov    $0x10a3c0,%edi
  1001f7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  1001fc:	e8 ff 24 00 00       	callq  102700 <memset>
  100201:	48 b8 ff ff 00 00 00 	movabs $0xaf99000000ffff,%rax
  100208:	99 af 00 
  10020b:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  100210:	48 89 05 b1 a1 00 00 	mov    %rax,0xa1b1(%rip)        # 10a3c8 <cpu_gdt64+0x8>
  100217:	48 b8 ff ff 00 00 00 	movabs $0xcf93000000ffff,%rax
  10021e:	93 cf 00 
  100221:	48 89 05 a8 a1 00 00 	mov    %rax,0xa1a8(%rip)        # 10a3d0 <cpu_gdt64+0x10>
  100228:	b8 27 00 00 00       	mov    $0x27,%eax
  10022d:	66 89 44 24 04       	mov    %ax,0x4(%rsp)
  100232:	48 c7 44 24 06 c0 a3 	movq   $0x10a3c0,0x6(%rsp)
  100239:	10 00 
  10023b:	0f 01 12             	lgdt   (%rdx)
  10023e:	6a 08                	pushq  $0x8
  100240:	68 47 02 10 00       	pushq  $0x100247
  100245:	48 cb                	lretq  
  100247:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
  10024e:	8e d0                	mov    %eax,%ss
  100250:	8e d8                	mov    %eax,%ds
  100252:	8e c0                	mov    %eax,%es
  100254:	b9 40 a0 10 00       	mov    $0x10a040,%ecx
  100259:	ba 68 00 00 00       	mov    $0x68,%edx
  10025e:	48 c7 05 fb 9d 00 00 	movq   $0x10a040,0x9dfb(%rip)        # 10a064 <cpu_tss+0x24>
  100265:	40 a0 10 00 
  100269:	89 c8                	mov    %ecx,%eax
  10026b:	66 89 15 66 a1 00 00 	mov    %dx,0xa166(%rip)        # 10a3d8 <cpu_gdt64+0x18>
  100272:	48 c7 05 ef 9d 00 00 	movq   $0x109040,0x9def(%rip)        # 10a06c <cpu_tss+0x2c>
  100279:	40 90 10 00 
  10027d:	25 ff ff ff 00       	and    $0xffffff,%eax
  100282:	48 c7 05 e7 9d 00 00 	movq   $0x108040,0x9de7(%rip)        # 10a074 <cpu_tss+0x34>
  100289:	40 80 10 00 
  10028d:	80 25 51 a1 00 00 e0 	andb   $0xe0,0xa151(%rip)        # 10a3e5 <cpu_gdt64+0x25>
  100294:	48 c1 e0 10          	shl    $0x10,%rax
  100298:	48 89 c2             	mov    %rax,%rdx
  10029b:	48 b8 ff ff 00 00 00 	movabs $0xffffff000000ffff,%rax
  1002a2:	ff ff ff 
  1002a5:	48 23 05 2c a1 00 00 	and    0xa12c(%rip),%rax        # 10a3d8 <cpu_gdt64+0x18>
  1002ac:	48 09 d0             	or     %rdx,%rax
  1002af:	48 89 05 22 a1 00 00 	mov    %rax,0xa122(%rip)        # 10a3d8 <cpu_gdt64+0x18>
  1002b6:	48 c1 e8 30          	shr    $0x30,%rax
  1002ba:	c6 05 1c a1 00 00 89 	movb   $0x89,0xa11c(%rip)        # 10a3dd <cpu_gdt64+0x1d>
  1002c1:	83 e0 70             	and    $0x70,%eax
  1002c4:	88 05 14 a1 00 00    	mov    %al,0xa114(%rip)        # 10a3de <cpu_gdt64+0x1e>
  1002ca:	48 89 c8             	mov    %rcx,%rax
  1002cd:	48 c1 e9 20          	shr    $0x20,%rcx
  1002d1:	48 c1 e8 18          	shr    $0x18,%rax
  1002d5:	89 0d 05 a1 00 00    	mov    %ecx,0xa105(%rip)        # 10a3e0 <cpu_gdt64+0x20>
  1002db:	88 05 fe a0 00 00    	mov    %al,0xa0fe(%rip)        # 10a3df <cpu_gdt64+0x1f>
  1002e1:	b8 18 00 00 00       	mov    $0x18,%eax
  1002e6:	0f 00 d8             	ltr    %ax
  1002e9:	b8 74 0e 10 00       	mov    $0x100e74,%eax
  1002ee:	b9 08 00 00 00       	mov    $0x8,%ecx
  1002f3:	be 08 00 00 00       	mov    $0x8,%esi
  1002f8:	48 89 c2             	mov    %rax,%rdx
  1002fb:	66 89 05 a6 9d 00 00 	mov    %ax,0x9da6(%rip)        # 10a0a8 <cpu_idt>
  100302:	bf 08 00 00 00       	mov    $0x8,%edi
  100307:	48 c1 ea 10          	shr    $0x10,%rdx
  10030b:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  100311:	41 b9 08 00 00 00    	mov    $0x8,%r9d
  100317:	66 89 15 90 9d 00 00 	mov    %dx,0x9d90(%rip)        # 10a0ae <cpu_idt+0x6>
  10031e:	48 89 c2             	mov    %rax,%rdx
  100321:	0f b6 05 84 9d 00 00 	movzbl 0x9d84(%rip),%eax        # 10a0ac <cpu_idt+0x4>
  100328:	48 c1 ea 20          	shr    $0x20,%rdx
  10032c:	66 89 0d 77 9d 00 00 	mov    %cx,0x9d77(%rip)        # 10a0aa <cpu_idt+0x2>
  100333:	66 89 35 80 9d 00 00 	mov    %si,0x9d80(%rip)        # 10a0ba <cpu_idt+0x12>
  10033a:	89 15 70 9d 00 00    	mov    %edx,0x9d70(%rip)        # 10a0b0 <cpu_idt+0x8>
  100340:	66 89 3d 83 9d 00 00 	mov    %di,0x9d83(%rip)        # 10a0ca <cpu_idt+0x22>
  100347:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  10034d:	66 44 89 05 85 9d 00 	mov    %r8w,0x9d85(%rip)        # 10a0da <cpu_idt+0x32>
  100354:	00 
  100355:	66 44 89 0d 8d 9d 00 	mov    %r9w,0x9d8d(%rip)        # 10a0ea <cpu_idt+0x42>
  10035c:	00 
  10035d:	41 bb 08 00 00 00    	mov    $0x8,%r11d
  100363:	83 e0 f8             	and    $0xfffffff8,%eax
  100366:	c6 05 40 9d 00 00 8e 	movb   $0x8e,0x9d40(%rip)        # 10a0ad <cpu_idt+0x5>
  10036d:	c6 05 49 9d 00 00 8e 	movb   $0x8e,0x9d49(%rip)        # 10a0bd <cpu_idt+0x15>
  100374:	83 c8 02             	or     $0x2,%eax
  100377:	c6 05 4f 9d 00 00 8e 	movb   $0x8e,0x9d4f(%rip)        # 10a0cd <cpu_idt+0x25>
  10037e:	c6 05 58 9d 00 00 8e 	movb   $0x8e,0x9d58(%rip)        # 10a0dd <cpu_idt+0x35>
  100385:	88 05 21 9d 00 00    	mov    %al,0x9d21(%rip)        # 10a0ac <cpu_idt+0x4>
  10038b:	b8 ac 0e 10 00       	mov    $0x100eac,%eax
  100390:	b9 08 00 00 00       	mov    $0x8,%ecx
  100395:	48 89 c2             	mov    %rax,%rdx
  100398:	66 89 05 19 9d 00 00 	mov    %ax,0x9d19(%rip)        # 10a0b8 <cpu_idt+0x10>
  10039f:	be 08 00 00 00       	mov    $0x8,%esi
  1003a4:	48 c1 ea 10          	shr    $0x10,%rdx
  1003a8:	bf 08 00 00 00       	mov    $0x8,%edi
  1003ad:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  1003b3:	66 89 15 04 9d 00 00 	mov    %dx,0x9d04(%rip)        # 10a0be <cpu_idt+0x16>
  1003ba:	48 89 c2             	mov    %rax,%rdx
  1003bd:	0f b6 05 f8 9c 00 00 	movzbl 0x9cf8(%rip),%eax        # 10a0bc <cpu_idt+0x14>
  1003c4:	48 c1 ea 20          	shr    $0x20,%rdx
  1003c8:	41 b9 08 00 00 00    	mov    $0x8,%r9d
  1003ce:	89 15 ec 9c 00 00    	mov    %edx,0x9cec(%rip)        # 10a0c0 <cpu_idt+0x18>
  1003d4:	83 e0 f8             	and    $0xfffffff8,%eax
  1003d7:	83 c8 02             	or     $0x2,%eax
  1003da:	88 05 dc 9c 00 00    	mov    %al,0x9cdc(%rip)        # 10a0bc <cpu_idt+0x14>
  1003e0:	b8 e4 0e 10 00       	mov    $0x100ee4,%eax
  1003e5:	48 89 c2             	mov    %rax,%rdx
  1003e8:	66 89 05 d9 9c 00 00 	mov    %ax,0x9cd9(%rip)        # 10a0c8 <cpu_idt+0x20>
  1003ef:	48 c1 ea 10          	shr    $0x10,%rdx
  1003f3:	66 89 15 d4 9c 00 00 	mov    %dx,0x9cd4(%rip)        # 10a0ce <cpu_idt+0x26>
  1003fa:	48 89 c2             	mov    %rax,%rdx
  1003fd:	0f b6 05 c8 9c 00 00 	movzbl 0x9cc8(%rip),%eax        # 10a0cc <cpu_idt+0x24>
  100404:	48 c1 ea 20          	shr    $0x20,%rdx
  100408:	89 15 c2 9c 00 00    	mov    %edx,0x9cc2(%rip)        # 10a0d0 <cpu_idt+0x28>
  10040e:	83 e0 f8             	and    $0xfffffff8,%eax
  100411:	83 c8 03             	or     $0x3,%eax
  100414:	88 05 b2 9c 00 00    	mov    %al,0x9cb2(%rip)        # 10a0cc <cpu_idt+0x24>
  10041a:	b8 1c 0f 10 00       	mov    $0x100f1c,%eax
  10041f:	48 89 c2             	mov    %rax,%rdx
  100422:	66 89 05 af 9c 00 00 	mov    %ax,0x9caf(%rip)        # 10a0d8 <cpu_idt+0x30>
  100429:	48 c1 ea 10          	shr    $0x10,%rdx
  10042d:	66 89 15 aa 9c 00 00 	mov    %dx,0x9caa(%rip)        # 10a0de <cpu_idt+0x36>
  100434:	48 89 c2             	mov    %rax,%rdx
  100437:	0f b6 05 9e 9c 00 00 	movzbl 0x9c9e(%rip),%eax        # 10a0dc <cpu_idt+0x34>
  10043e:	48 c1 ea 20          	shr    $0x20,%rdx
  100442:	89 15 98 9c 00 00    	mov    %edx,0x9c98(%rip)        # 10a0e0 <cpu_idt+0x38>
  100448:	83 e0 f8             	and    $0xfffffff8,%eax
  10044b:	83 c8 02             	or     $0x2,%eax
  10044e:	88 05 88 9c 00 00    	mov    %al,0x9c88(%rip)        # 10a0dc <cpu_idt+0x34>
  100454:	b8 54 0f 10 00       	mov    $0x100f54,%eax
  100459:	48 89 c2             	mov    %rax,%rdx
  10045c:	66 89 05 85 9c 00 00 	mov    %ax,0x9c85(%rip)        # 10a0e8 <cpu_idt+0x40>
  100463:	48 c1 ea 10          	shr    $0x10,%rdx
  100467:	66 89 15 80 9c 00 00 	mov    %dx,0x9c80(%rip)        # 10a0ee <cpu_idt+0x46>
  10046e:	48 89 c2             	mov    %rax,%rdx
  100471:	0f b6 05 74 9c 00 00 	movzbl 0x9c74(%rip),%eax        # 10a0ec <cpu_idt+0x44>
  100478:	48 c1 ea 20          	shr    $0x20,%rdx
  10047c:	89 15 6e 9c 00 00    	mov    %edx,0x9c6e(%rip)        # 10a0f0 <cpu_idt+0x48>
  100482:	83 e0 f8             	and    $0xfffffff8,%eax
  100485:	83 c8 02             	or     $0x2,%eax
  100488:	88 05 5e 9c 00 00    	mov    %al,0x9c5e(%rip)        # 10a0ec <cpu_idt+0x44>
  10048e:	b8 8c 0f 10 00       	mov    $0x100f8c,%eax
  100493:	66 44 89 15 5f 9c 00 	mov    %r10w,0x9c5f(%rip)        # 10a0fa <cpu_idt+0x52>
  10049a:	00 
  10049b:	48 89 c2             	mov    %rax,%rdx
  10049e:	66 89 05 53 9c 00 00 	mov    %ax,0x9c53(%rip)        # 10a0f8 <cpu_idt+0x50>
  1004a5:	66 44 89 1d 5d 9c 00 	mov    %r11w,0x9c5d(%rip)        # 10a10a <cpu_idt+0x62>
  1004ac:	00 
  1004ad:	48 c1 ea 10          	shr    $0x10,%rdx
  1004b1:	c6 05 35 9c 00 00 8e 	movb   $0x8e,0x9c35(%rip)        # 10a0ed <cpu_idt+0x45>
  1004b8:	c6 05 3e 9c 00 00 8e 	movb   $0x8e,0x9c3e(%rip)        # 10a0fd <cpu_idt+0x55>
  1004bf:	66 89 15 38 9c 00 00 	mov    %dx,0x9c38(%rip)        # 10a0fe <cpu_idt+0x56>
  1004c6:	48 89 c2             	mov    %rax,%rdx
  1004c9:	0f b6 05 2c 9c 00 00 	movzbl 0x9c2c(%rip),%eax        # 10a0fc <cpu_idt+0x54>
  1004d0:	48 c1 ea 20          	shr    $0x20,%rdx
  1004d4:	c6 05 32 9c 00 00 8e 	movb   $0x8e,0x9c32(%rip)        # 10a10d <cpu_idt+0x65>
  1004db:	c6 05 3b 9c 00 00 8e 	movb   $0x8e,0x9c3b(%rip)        # 10a11d <cpu_idt+0x75>
  1004e2:	89 15 18 9c 00 00    	mov    %edx,0x9c18(%rip)        # 10a100 <cpu_idt+0x58>
  1004e8:	c6 05 3e 9c 00 00 8e 	movb   $0x8e,0x9c3e(%rip)        # 10a12d <cpu_idt+0x85>
  1004ef:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  1004f5:	41 bb 08 00 00 00    	mov    $0x8,%r11d
  1004fb:	83 e0 f8             	and    $0xfffffff8,%eax
  1004fe:	83 c8 02             	or     $0x2,%eax
  100501:	88 05 f5 9b 00 00    	mov    %al,0x9bf5(%rip)        # 10a0fc <cpu_idt+0x54>
  100507:	b8 c4 0f 10 00       	mov    $0x100fc4,%eax
  10050c:	48 89 c2             	mov    %rax,%rdx
  10050f:	66 89 05 f2 9b 00 00 	mov    %ax,0x9bf2(%rip)        # 10a108 <cpu_idt+0x60>
  100516:	48 c1 ea 10          	shr    $0x10,%rdx
  10051a:	66 89 15 ed 9b 00 00 	mov    %dx,0x9bed(%rip)        # 10a10e <cpu_idt+0x66>
  100521:	48 89 c2             	mov    %rax,%rdx
  100524:	0f b6 05 e1 9b 00 00 	movzbl 0x9be1(%rip),%eax        # 10a10c <cpu_idt+0x64>
  10052b:	48 c1 ea 20          	shr    $0x20,%rdx
  10052f:	89 15 db 9b 00 00    	mov    %edx,0x9bdb(%rip)        # 10a110 <cpu_idt+0x68>
  100535:	83 e0 f8             	and    $0xfffffff8,%eax
  100538:	83 c8 02             	or     $0x2,%eax
  10053b:	88 05 cb 9b 00 00    	mov    %al,0x9bcb(%rip)        # 10a10c <cpu_idt+0x64>
  100541:	b8 fc 0f 10 00       	mov    $0x100ffc,%eax
  100546:	48 89 c2             	mov    %rax,%rdx
  100549:	66 89 05 c8 9b 00 00 	mov    %ax,0x9bc8(%rip)        # 10a118 <cpu_idt+0x70>
  100550:	48 c1 ea 10          	shr    $0x10,%rdx
  100554:	66 89 15 c3 9b 00 00 	mov    %dx,0x9bc3(%rip)        # 10a11e <cpu_idt+0x76>
  10055b:	48 89 c2             	mov    %rax,%rdx
  10055e:	b8 08 00 00 00       	mov    $0x8,%eax
  100563:	66 89 05 b0 9b 00 00 	mov    %ax,0x9bb0(%rip)        # 10a11a <cpu_idt+0x72>
  10056a:	0f b6 05 ab 9b 00 00 	movzbl 0x9bab(%rip),%eax        # 10a11c <cpu_idt+0x74>
  100571:	48 c1 ea 20          	shr    $0x20,%rdx
  100575:	89 15 a5 9b 00 00    	mov    %edx,0x9ba5(%rip)        # 10a120 <cpu_idt+0x78>
  10057b:	83 e0 f8             	and    $0xfffffff8,%eax
  10057e:	83 c8 02             	or     $0x2,%eax
  100581:	88 05 95 9b 00 00    	mov    %al,0x9b95(%rip)        # 10a11c <cpu_idt+0x74>
  100587:	b8 34 10 10 00       	mov    $0x101034,%eax
  10058c:	48 89 c2             	mov    %rax,%rdx
  10058f:	66 89 05 92 9b 00 00 	mov    %ax,0x9b92(%rip)        # 10a128 <cpu_idt+0x80>
  100596:	48 c1 ea 10          	shr    $0x10,%rdx
  10059a:	66 89 15 8d 9b 00 00 	mov    %dx,0x9b8d(%rip)        # 10a12e <cpu_idt+0x86>
  1005a1:	48 89 c2             	mov    %rax,%rdx
  1005a4:	b8 08 00 00 00       	mov    $0x8,%eax
  1005a9:	66 89 05 7a 9b 00 00 	mov    %ax,0x9b7a(%rip)        # 10a12a <cpu_idt+0x82>
  1005b0:	0f b6 05 75 9b 00 00 	movzbl 0x9b75(%rip),%eax        # 10a12c <cpu_idt+0x84>
  1005b7:	48 c1 ea 20          	shr    $0x20,%rdx
  1005bb:	89 15 6f 9b 00 00    	mov    %edx,0x9b6f(%rip)        # 10a130 <cpu_idt+0x88>
  1005c1:	83 e0 f8             	and    $0xfffffff8,%eax
  1005c4:	83 c8 03             	or     $0x3,%eax
  1005c7:	88 05 5f 9b 00 00    	mov    %al,0x9b5f(%rip)        # 10a12c <cpu_idt+0x84>
  1005cd:	b8 6c 10 10 00       	mov    $0x10106c,%eax
  1005d2:	48 89 c2             	mov    %rax,%rdx
  1005d5:	66 89 05 6c 9b 00 00 	mov    %ax,0x9b6c(%rip)        # 10a148 <cpu_idt+0xa0>
  1005dc:	48 c1 ea 10          	shr    $0x10,%rdx
  1005e0:	66 89 15 67 9b 00 00 	mov    %dx,0x9b67(%rip)        # 10a14e <cpu_idt+0xa6>
  1005e7:	48 89 c2             	mov    %rax,%rdx
  1005ea:	b8 08 00 00 00       	mov    $0x8,%eax
  1005ef:	48 c1 ea 20          	shr    $0x20,%rdx
  1005f3:	66 89 05 50 9b 00 00 	mov    %ax,0x9b50(%rip)        # 10a14a <cpu_idt+0xa2>
  1005fa:	89 15 50 9b 00 00    	mov    %edx,0x9b50(%rip)        # 10a150 <cpu_idt+0xa8>
  100600:	0f b6 05 45 9b 00 00 	movzbl 0x9b45(%rip),%eax        # 10a14c <cpu_idt+0xa4>
  100607:	c6 05 3f 9b 00 00 8e 	movb   $0x8e,0x9b3f(%rip)        # 10a14d <cpu_idt+0xa5>
  10060e:	c6 05 48 9b 00 00 8e 	movb   $0x8e,0x9b48(%rip)        # 10a15d <cpu_idt+0xb5>
  100615:	c6 05 51 9b 00 00 8e 	movb   $0x8e,0x9b51(%rip)        # 10a16d <cpu_idt+0xc5>
  10061c:	c6 05 5a 9b 00 00 8e 	movb   $0x8e,0x9b5a(%rip)        # 10a17d <cpu_idt+0xd5>
  100623:	c6 05 63 9b 00 00 8e 	movb   $0x8e,0x9b63(%rip)        # 10a18d <cpu_idt+0xe5>
  10062a:	83 e0 f8             	and    $0xfffffff8,%eax
  10062d:	83 c8 02             	or     $0x2,%eax
  100630:	88 05 16 9b 00 00    	mov    %al,0x9b16(%rip)        # 10a14c <cpu_idt+0xa4>
  100636:	b8 a4 10 10 00       	mov    $0x1010a4,%eax
  10063b:	48 89 c2             	mov    %rax,%rdx
  10063e:	66 89 05 13 9b 00 00 	mov    %ax,0x9b13(%rip)        # 10a158 <cpu_idt+0xb0>
  100645:	48 c1 ea 10          	shr    $0x10,%rdx
  100649:	66 89 15 0e 9b 00 00 	mov    %dx,0x9b0e(%rip)        # 10a15e <cpu_idt+0xb6>
  100650:	48 89 c2             	mov    %rax,%rdx
  100653:	b8 08 00 00 00       	mov    $0x8,%eax
  100658:	66 89 05 fb 9a 00 00 	mov    %ax,0x9afb(%rip)        # 10a15a <cpu_idt+0xb2>
  10065f:	0f b6 05 f6 9a 00 00 	movzbl 0x9af6(%rip),%eax        # 10a15c <cpu_idt+0xb4>
  100666:	48 c1 ea 20          	shr    $0x20,%rdx
  10066a:	89 15 f0 9a 00 00    	mov    %edx,0x9af0(%rip)        # 10a160 <cpu_idt+0xb8>
  100670:	83 e0 f8             	and    $0xfffffff8,%eax
  100673:	83 c8 02             	or     $0x2,%eax
  100676:	88 05 e0 9a 00 00    	mov    %al,0x9ae0(%rip)        # 10a15c <cpu_idt+0xb4>
  10067c:	b8 dc 10 10 00       	mov    $0x1010dc,%eax
  100681:	48 89 c2             	mov    %rax,%rdx
  100684:	66 89 05 dd 9a 00 00 	mov    %ax,0x9add(%rip)        # 10a168 <cpu_idt+0xc0>
  10068b:	48 c1 ea 10          	shr    $0x10,%rdx
  10068f:	66 89 15 d8 9a 00 00 	mov    %dx,0x9ad8(%rip)        # 10a16e <cpu_idt+0xc6>
  100696:	48 89 c2             	mov    %rax,%rdx
  100699:	b8 08 00 00 00       	mov    $0x8,%eax
  10069e:	66 89 05 c5 9a 00 00 	mov    %ax,0x9ac5(%rip)        # 10a16a <cpu_idt+0xc2>
  1006a5:	0f b6 05 c0 9a 00 00 	movzbl 0x9ac0(%rip),%eax        # 10a16c <cpu_idt+0xc4>
  1006ac:	48 c1 ea 20          	shr    $0x20,%rdx
  1006b0:	89 15 ba 9a 00 00    	mov    %edx,0x9aba(%rip)        # 10a170 <cpu_idt+0xc8>
  1006b6:	83 e0 f8             	and    $0xfffffff8,%eax
  1006b9:	83 c8 02             	or     $0x2,%eax
  1006bc:	88 05 aa 9a 00 00    	mov    %al,0x9aaa(%rip)        # 10a16c <cpu_idt+0xc4>
  1006c2:	b8 14 11 10 00       	mov    $0x101114,%eax
  1006c7:	48 89 c2             	mov    %rax,%rdx
  1006ca:	66 89 05 a7 9a 00 00 	mov    %ax,0x9aa7(%rip)        # 10a178 <cpu_idt+0xd0>
  1006d1:	48 c1 ea 10          	shr    $0x10,%rdx
  1006d5:	66 89 15 a2 9a 00 00 	mov    %dx,0x9aa2(%rip)        # 10a17e <cpu_idt+0xd6>
  1006dc:	48 89 c2             	mov    %rax,%rdx
  1006df:	b8 08 00 00 00       	mov    $0x8,%eax
  1006e4:	66 89 05 8f 9a 00 00 	mov    %ax,0x9a8f(%rip)        # 10a17a <cpu_idt+0xd2>
  1006eb:	0f b6 05 8a 9a 00 00 	movzbl 0x9a8a(%rip),%eax        # 10a17c <cpu_idt+0xd4>
  1006f2:	48 c1 ea 20          	shr    $0x20,%rdx
  1006f6:	89 15 84 9a 00 00    	mov    %edx,0x9a84(%rip)        # 10a180 <cpu_idt+0xd8>
  1006fc:	83 e0 f8             	and    $0xfffffff8,%eax
  1006ff:	83 c8 02             	or     $0x2,%eax
  100702:	88 05 74 9a 00 00    	mov    %al,0x9a74(%rip)        # 10a17c <cpu_idt+0xd4>
  100708:	b8 4c 11 10 00       	mov    $0x10114c,%eax
  10070d:	48 89 c2             	mov    %rax,%rdx
  100710:	66 89 05 71 9a 00 00 	mov    %ax,0x9a71(%rip)        # 10a188 <cpu_idt+0xe0>
  100717:	48 c1 ea 10          	shr    $0x10,%rdx
  10071b:	66 89 15 6c 9a 00 00 	mov    %dx,0x9a6c(%rip)        # 10a18e <cpu_idt+0xe6>
  100722:	48 89 c2             	mov    %rax,%rdx
  100725:	0f b6 05 60 9a 00 00 	movzbl 0x9a60(%rip),%eax        # 10a18c <cpu_idt+0xe4>
  10072c:	48 c1 ea 20          	shr    $0x20,%rdx
  100730:	89 15 5a 9a 00 00    	mov    %edx,0x9a5a(%rip)        # 10a190 <cpu_idt+0xe8>
  100736:	ba 08 00 00 00       	mov    $0x8,%edx
  10073b:	66 89 15 48 9a 00 00 	mov    %dx,0x9a48(%rip)        # 10a18a <cpu_idt+0xe2>
  100742:	83 e0 f8             	and    $0xfffffff8,%eax
  100745:	83 c8 02             	or     $0x2,%eax
  100748:	88 05 3e 9a 00 00    	mov    %al,0x9a3e(%rip)        # 10a18c <cpu_idt+0xe4>
  10074e:	b8 84 11 10 00       	mov    $0x101184,%eax
  100753:	48 89 c2             	mov    %rax,%rdx
  100756:	48 c1 ea 10          	shr    $0x10,%rdx
  10075a:	66 89 15 4d 9a 00 00 	mov    %dx,0x9a4d(%rip)        # 10a1ae <cpu_idt+0x106>
  100761:	48 89 c2             	mov    %rax,%rdx
  100764:	48 c1 ea 20          	shr    $0x20,%rdx
  100768:	89 15 42 9a 00 00    	mov    %edx,0x9a42(%rip)        # 10a1b0 <cpu_idt+0x108>
  10076e:	66 89 05 33 9a 00 00 	mov    %ax,0x9a33(%rip)        # 10a1a8 <cpu_idt+0x100>
  100775:	0f b6 05 30 9a 00 00 	movzbl 0x9a30(%rip),%eax        # 10a1ac <cpu_idt+0x104>
  10077c:	66 89 0d 27 9a 00 00 	mov    %cx,0x9a27(%rip)        # 10a1aa <cpu_idt+0x102>
  100783:	b9 08 00 00 00       	mov    $0x8,%ecx
  100788:	66 89 35 2b 9a 00 00 	mov    %si,0x9a2b(%rip)        # 10a1ba <cpu_idt+0x112>
  10078f:	66 89 3d 34 9a 00 00 	mov    %di,0x9a34(%rip)        # 10a1ca <cpu_idt+0x122>
  100796:	be 08 00 00 00       	mov    $0x8,%esi
  10079b:	66 44 89 05 37 9a 00 	mov    %r8w,0x9a37(%rip)        # 10a1da <cpu_idt+0x132>
  1007a2:	00 
  1007a3:	66 44 89 0d 3f 9a 00 	mov    %r9w,0x9a3f(%rip)        # 10a1ea <cpu_idt+0x142>
  1007aa:	00 
  1007ab:	bf 08 00 00 00       	mov    $0x8,%edi
  1007b0:	c6 05 f6 99 00 00 8e 	movb   $0x8e,0x99f6(%rip)        # 10a1ad <cpu_idt+0x105>
  1007b7:	c6 05 ff 99 00 00 8e 	movb   $0x8e,0x99ff(%rip)        # 10a1bd <cpu_idt+0x115>
  1007be:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  1007c4:	83 e0 f8             	and    $0xfffffff8,%eax
  1007c7:	c6 05 ff 99 00 00 8e 	movb   $0x8e,0x99ff(%rip)        # 10a1cd <cpu_idt+0x125>
  1007ce:	c6 05 08 9a 00 00 8e 	movb   $0x8e,0x9a08(%rip)        # 10a1dd <cpu_idt+0x135>
  1007d5:	83 c8 02             	or     $0x2,%eax
  1007d8:	c6 05 0e 9a 00 00 8e 	movb   $0x8e,0x9a0e(%rip)        # 10a1ed <cpu_idt+0x145>
  1007df:	41 b9 08 00 00 00    	mov    $0x8,%r9d
  1007e5:	88 05 c1 99 00 00    	mov    %al,0x99c1(%rip)        # 10a1ac <cpu_idt+0x104>
  1007eb:	b8 bc 11 10 00       	mov    $0x1011bc,%eax
  1007f0:	48 89 c2             	mov    %rax,%rdx
  1007f3:	66 89 05 be 99 00 00 	mov    %ax,0x99be(%rip)        # 10a1b8 <cpu_idt+0x110>
  1007fa:	48 c1 ea 10          	shr    $0x10,%rdx
  1007fe:	66 89 15 b9 99 00 00 	mov    %dx,0x99b9(%rip)        # 10a1be <cpu_idt+0x116>
  100805:	48 89 c2             	mov    %rax,%rdx
  100808:	0f b6 05 ad 99 00 00 	movzbl 0x99ad(%rip),%eax        # 10a1bc <cpu_idt+0x114>
  10080f:	48 c1 ea 20          	shr    $0x20,%rdx
  100813:	89 15 a7 99 00 00    	mov    %edx,0x99a7(%rip)        # 10a1c0 <cpu_idt+0x118>
  100819:	83 e0 f8             	and    $0xfffffff8,%eax
  10081c:	83 c8 02             	or     $0x2,%eax
  10081f:	88 05 97 99 00 00    	mov    %al,0x9997(%rip)        # 10a1bc <cpu_idt+0x114>
  100825:	b8 f4 11 10 00       	mov    $0x1011f4,%eax
  10082a:	48 89 c2             	mov    %rax,%rdx
  10082d:	66 89 05 94 99 00 00 	mov    %ax,0x9994(%rip)        # 10a1c8 <cpu_idt+0x120>
  100834:	48 c1 ea 10          	shr    $0x10,%rdx
  100838:	66 89 15 8f 99 00 00 	mov    %dx,0x998f(%rip)        # 10a1ce <cpu_idt+0x126>
  10083f:	48 89 c2             	mov    %rax,%rdx
  100842:	0f b6 05 83 99 00 00 	movzbl 0x9983(%rip),%eax        # 10a1cc <cpu_idt+0x124>
  100849:	48 c1 ea 20          	shr    $0x20,%rdx
  10084d:	89 15 7d 99 00 00    	mov    %edx,0x997d(%rip)        # 10a1d0 <cpu_idt+0x128>
  100853:	83 e0 f8             	and    $0xfffffff8,%eax
  100856:	83 c8 02             	or     $0x2,%eax
  100859:	88 05 6d 99 00 00    	mov    %al,0x996d(%rip)        # 10a1cc <cpu_idt+0x124>
  10085f:	b8 2c 12 10 00       	mov    $0x10122c,%eax
  100864:	48 89 c2             	mov    %rax,%rdx
  100867:	66 89 05 6a 99 00 00 	mov    %ax,0x996a(%rip)        # 10a1d8 <cpu_idt+0x130>
  10086e:	48 c1 ea 10          	shr    $0x10,%rdx
  100872:	66 89 15 65 99 00 00 	mov    %dx,0x9965(%rip)        # 10a1de <cpu_idt+0x136>
  100879:	48 89 c2             	mov    %rax,%rdx
  10087c:	0f b6 05 59 99 00 00 	movzbl 0x9959(%rip),%eax        # 10a1dc <cpu_idt+0x134>
  100883:	48 c1 ea 20          	shr    $0x20,%rdx
  100887:	89 15 53 99 00 00    	mov    %edx,0x9953(%rip)        # 10a1e0 <cpu_idt+0x138>
  10088d:	83 e0 f8             	and    $0xfffffff8,%eax
  100890:	83 c8 02             	or     $0x2,%eax
  100893:	88 05 43 99 00 00    	mov    %al,0x9943(%rip)        # 10a1dc <cpu_idt+0x134>
  100899:	b8 64 12 10 00       	mov    $0x101264,%eax
  10089e:	48 89 c2             	mov    %rax,%rdx
  1008a1:	66 89 05 40 99 00 00 	mov    %ax,0x9940(%rip)        # 10a1e8 <cpu_idt+0x140>
  1008a8:	48 c1 ea 10          	shr    $0x10,%rdx
  1008ac:	66 89 15 3b 99 00 00 	mov    %dx,0x993b(%rip)        # 10a1ee <cpu_idt+0x146>
  1008b3:	48 89 c2             	mov    %rax,%rdx
  1008b6:	0f b6 05 2f 99 00 00 	movzbl 0x992f(%rip),%eax        # 10a1ec <cpu_idt+0x144>
  1008bd:	48 c1 ea 20          	shr    $0x20,%rdx
  1008c1:	89 15 29 99 00 00    	mov    %edx,0x9929(%rip)        # 10a1f0 <cpu_idt+0x148>
  1008c7:	83 e0 f8             	and    $0xfffffff8,%eax
  1008ca:	83 c8 02             	or     $0x2,%eax
  1008cd:	88 05 19 99 00 00    	mov    %al,0x9919(%rip)        # 10a1ec <cpu_idt+0x144>
  1008d3:	b8 9c 12 10 00       	mov    $0x10129c,%eax
  1008d8:	48 89 c2             	mov    %rax,%rdx
  1008db:	48 c1 ea 10          	shr    $0x10,%rdx
  1008df:	66 89 15 c8 99 00 00 	mov    %dx,0x99c8(%rip)        # 10a2ae <cpu_idt+0x206>
  1008e6:	48 89 c2             	mov    %rax,%rdx
  1008e9:	48 c1 ea 20          	shr    $0x20,%rdx
  1008ed:	89 15 bd 99 00 00    	mov    %edx,0x99bd(%rip)        # 10a2b0 <cpu_idt+0x208>
  1008f3:	66 89 05 ae 99 00 00 	mov    %ax,0x99ae(%rip)        # 10a2a8 <cpu_idt+0x200>
  1008fa:	0f b6 05 ab 99 00 00 	movzbl 0x99ab(%rip),%eax        # 10a2ac <cpu_idt+0x204>
  100901:	66 44 89 15 a1 99 00 	mov    %r10w,0x99a1(%rip)        # 10a2aa <cpu_idt+0x202>
  100908:	00 
  100909:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  10090f:	66 44 89 1d a3 99 00 	mov    %r11w,0x99a3(%rip)        # 10a2ba <cpu_idt+0x212>
  100916:	00 
  100917:	c6 05 8f 99 00 00 8e 	movb   $0x8e,0x998f(%rip)        # 10a2ad <cpu_idt+0x205>
  10091e:	41 bb 08 00 00 00    	mov    $0x8,%r11d
  100924:	c6 05 92 99 00 00 8e 	movb   $0x8e,0x9992(%rip)        # 10a2bd <cpu_idt+0x215>
  10092b:	c6 05 9b 99 00 00 8e 	movb   $0x8e,0x999b(%rip)        # 10a2cd <cpu_idt+0x225>
  100932:	c6 05 a4 99 00 00 8e 	movb   $0x8e,0x99a4(%rip)        # 10a2dd <cpu_idt+0x235>
  100939:	c6 05 ad 99 00 00 8e 	movb   $0x8e,0x99ad(%rip)        # 10a2ed <cpu_idt+0x245>
  100940:	83 e0 f8             	and    $0xfffffff8,%eax
  100943:	83 c8 01             	or     $0x1,%eax
  100946:	88 05 60 99 00 00    	mov    %al,0x9960(%rip)        # 10a2ac <cpu_idt+0x204>
  10094c:	b8 c5 12 10 00       	mov    $0x1012c5,%eax
  100951:	48 89 c2             	mov    %rax,%rdx
  100954:	66 89 05 5d 99 00 00 	mov    %ax,0x995d(%rip)        # 10a2b8 <cpu_idt+0x210>
  10095b:	48 c1 ea 10          	shr    $0x10,%rdx
  10095f:	66 89 15 58 99 00 00 	mov    %dx,0x9958(%rip)        # 10a2be <cpu_idt+0x216>
  100966:	48 89 c2             	mov    %rax,%rdx
  100969:	0f b6 05 4c 99 00 00 	movzbl 0x994c(%rip),%eax        # 10a2bc <cpu_idt+0x214>
  100970:	48 c1 ea 20          	shr    $0x20,%rdx
  100974:	89 15 46 99 00 00    	mov    %edx,0x9946(%rip)        # 10a2c0 <cpu_idt+0x218>
  10097a:	83 e0 f8             	and    $0xfffffff8,%eax
  10097d:	83 c8 01             	or     $0x1,%eax
  100980:	88 05 36 99 00 00    	mov    %al,0x9936(%rip)        # 10a2bc <cpu_idt+0x214>
  100986:	b8 ee 12 10 00       	mov    $0x1012ee,%eax
  10098b:	48 89 c2             	mov    %rax,%rdx
  10098e:	66 89 05 33 99 00 00 	mov    %ax,0x9933(%rip)        # 10a2c8 <cpu_idt+0x220>
  100995:	48 c1 ea 10          	shr    $0x10,%rdx
  100999:	66 89 15 2e 99 00 00 	mov    %dx,0x992e(%rip)        # 10a2ce <cpu_idt+0x226>
  1009a0:	48 89 c2             	mov    %rax,%rdx
  1009a3:	b8 08 00 00 00       	mov    $0x8,%eax
  1009a8:	66 89 05 1b 99 00 00 	mov    %ax,0x991b(%rip)        # 10a2ca <cpu_idt+0x222>
  1009af:	0f b6 05 16 99 00 00 	movzbl 0x9916(%rip),%eax        # 10a2cc <cpu_idt+0x224>
  1009b6:	48 c1 ea 20          	shr    $0x20,%rdx
  1009ba:	89 15 10 99 00 00    	mov    %edx,0x9910(%rip)        # 10a2d0 <cpu_idt+0x228>
  1009c0:	83 e0 f8             	and    $0xfffffff8,%eax
  1009c3:	83 c8 01             	or     $0x1,%eax
  1009c6:	88 05 00 99 00 00    	mov    %al,0x9900(%rip)        # 10a2cc <cpu_idt+0x224>
  1009cc:	b8 17 13 10 00       	mov    $0x101317,%eax
  1009d1:	48 89 c2             	mov    %rax,%rdx
  1009d4:	66 89 05 fd 98 00 00 	mov    %ax,0x98fd(%rip)        # 10a2d8 <cpu_idt+0x230>
  1009db:	48 c1 ea 10          	shr    $0x10,%rdx
  1009df:	66 89 15 f8 98 00 00 	mov    %dx,0x98f8(%rip)        # 10a2de <cpu_idt+0x236>
  1009e6:	48 89 c2             	mov    %rax,%rdx
  1009e9:	b8 08 00 00 00       	mov    $0x8,%eax
  1009ee:	66 89 05 e5 98 00 00 	mov    %ax,0x98e5(%rip)        # 10a2da <cpu_idt+0x232>
  1009f5:	0f b6 05 e0 98 00 00 	movzbl 0x98e0(%rip),%eax        # 10a2dc <cpu_idt+0x234>
  1009fc:	48 c1 ea 20          	shr    $0x20,%rdx
  100a00:	89 15 da 98 00 00    	mov    %edx,0x98da(%rip)        # 10a2e0 <cpu_idt+0x238>
  100a06:	83 e0 f8             	and    $0xfffffff8,%eax
  100a09:	83 c8 01             	or     $0x1,%eax
  100a0c:	88 05 ca 98 00 00    	mov    %al,0x98ca(%rip)        # 10a2dc <cpu_idt+0x234>
  100a12:	b8 40 13 10 00       	mov    $0x101340,%eax
  100a17:	48 89 c2             	mov    %rax,%rdx
  100a1a:	66 89 05 c7 98 00 00 	mov    %ax,0x98c7(%rip)        # 10a2e8 <cpu_idt+0x240>
  100a21:	48 c1 ea 10          	shr    $0x10,%rdx
  100a25:	66 89 15 c2 98 00 00 	mov    %dx,0x98c2(%rip)        # 10a2ee <cpu_idt+0x246>
  100a2c:	48 89 c2             	mov    %rax,%rdx
  100a2f:	b8 08 00 00 00       	mov    $0x8,%eax
  100a34:	66 89 05 af 98 00 00 	mov    %ax,0x98af(%rip)        # 10a2ea <cpu_idt+0x242>
  100a3b:	0f b6 05 aa 98 00 00 	movzbl 0x98aa(%rip),%eax        # 10a2ec <cpu_idt+0x244>
  100a42:	48 c1 ea 20          	shr    $0x20,%rdx
  100a46:	89 15 a4 98 00 00    	mov    %edx,0x98a4(%rip)        # 10a2f0 <cpu_idt+0x248>
  100a4c:	83 e0 f8             	and    $0xfffffff8,%eax
  100a4f:	83 c8 01             	or     $0x1,%eax
  100a52:	88 05 94 98 00 00    	mov    %al,0x9894(%rip)        # 10a2ec <cpu_idt+0x244>
  100a58:	b8 69 13 10 00       	mov    $0x101369,%eax
  100a5d:	48 89 c2             	mov    %rax,%rdx
  100a60:	48 c1 ea 10          	shr    $0x10,%rdx
  100a64:	66 89 15 93 98 00 00 	mov    %dx,0x9893(%rip)        # 10a2fe <cpu_idt+0x256>
  100a6b:	48 89 c2             	mov    %rax,%rdx
  100a6e:	66 89 05 83 98 00 00 	mov    %ax,0x9883(%rip)        # 10a2f8 <cpu_idt+0x250>
  100a75:	b8 08 00 00 00       	mov    $0x8,%eax
  100a7a:	48 c1 ea 20          	shr    $0x20,%rdx
  100a7e:	66 89 0d b5 98 00 00 	mov    %cx,0x98b5(%rip)        # 10a33a <cpu_idt+0x292>
  100a85:	66 89 05 6e 98 00 00 	mov    %ax,0x986e(%rip)        # 10a2fa <cpu_idt+0x252>
  100a8c:	0f b6 05 69 98 00 00 	movzbl 0x9869(%rip),%eax        # 10a2fc <cpu_idt+0x254>
  100a93:	89 15 67 98 00 00    	mov    %edx,0x9867(%rip)        # 10a300 <cpu_idt+0x258>
  100a99:	c6 05 5d 98 00 00 8e 	movb   $0x8e,0x985d(%rip)        # 10a2fd <cpu_idt+0x255>
  100aa0:	c6 05 66 98 00 00 8e 	movb   $0x8e,0x9866(%rip)        # 10a30d <cpu_idt+0x265>
  100aa7:	c6 05 6f 98 00 00 8e 	movb   $0x8e,0x986f(%rip)        # 10a31d <cpu_idt+0x275>
  100aae:	c6 05 78 98 00 00 8e 	movb   $0x8e,0x9878(%rip)        # 10a32d <cpu_idt+0x285>
  100ab5:	83 e0 f8             	and    $0xfffffff8,%eax
  100ab8:	83 c8 01             	or     $0x1,%eax
  100abb:	88 05 3b 98 00 00    	mov    %al,0x983b(%rip)        # 10a2fc <cpu_idt+0x254>
  100ac1:	b8 92 13 10 00       	mov    $0x101392,%eax
  100ac6:	48 89 c2             	mov    %rax,%rdx
  100ac9:	66 89 05 38 98 00 00 	mov    %ax,0x9838(%rip)        # 10a308 <cpu_idt+0x260>
  100ad0:	48 c1 ea 10          	shr    $0x10,%rdx
  100ad4:	66 89 15 33 98 00 00 	mov    %dx,0x9833(%rip)        # 10a30e <cpu_idt+0x266>
  100adb:	48 89 c2             	mov    %rax,%rdx
  100ade:	b8 08 00 00 00       	mov    $0x8,%eax
  100ae3:	66 89 05 20 98 00 00 	mov    %ax,0x9820(%rip)        # 10a30a <cpu_idt+0x262>
  100aea:	0f b6 05 1b 98 00 00 	movzbl 0x981b(%rip),%eax        # 10a30c <cpu_idt+0x264>
  100af1:	48 c1 ea 20          	shr    $0x20,%rdx
  100af5:	89 15 15 98 00 00    	mov    %edx,0x9815(%rip)        # 10a310 <cpu_idt+0x268>
  100afb:	83 e0 f8             	and    $0xfffffff8,%eax
  100afe:	83 c8 01             	or     $0x1,%eax
  100b01:	88 05 05 98 00 00    	mov    %al,0x9805(%rip)        # 10a30c <cpu_idt+0x264>
  100b07:	b8 bb 13 10 00       	mov    $0x1013bb,%eax
  100b0c:	48 89 c2             	mov    %rax,%rdx
  100b0f:	66 89 05 02 98 00 00 	mov    %ax,0x9802(%rip)        # 10a318 <cpu_idt+0x270>
  100b16:	48 c1 ea 10          	shr    $0x10,%rdx
  100b1a:	66 89 15 fd 97 00 00 	mov    %dx,0x97fd(%rip)        # 10a31e <cpu_idt+0x276>
  100b21:	48 89 c2             	mov    %rax,%rdx
  100b24:	b8 08 00 00 00       	mov    $0x8,%eax
  100b29:	66 89 05 ea 97 00 00 	mov    %ax,0x97ea(%rip)        # 10a31a <cpu_idt+0x272>
  100b30:	0f b6 05 e5 97 00 00 	movzbl 0x97e5(%rip),%eax        # 10a31c <cpu_idt+0x274>
  100b37:	48 c1 ea 20          	shr    $0x20,%rdx
  100b3b:	89 15 df 97 00 00    	mov    %edx,0x97df(%rip)        # 10a320 <cpu_idt+0x278>
  100b41:	83 e0 f8             	and    $0xfffffff8,%eax
  100b44:	83 c8 01             	or     $0x1,%eax
  100b47:	88 05 cf 97 00 00    	mov    %al,0x97cf(%rip)        # 10a31c <cpu_idt+0x274>
  100b4d:	b8 e4 13 10 00       	mov    $0x1013e4,%eax
  100b52:	48 89 c2             	mov    %rax,%rdx
  100b55:	66 89 05 cc 97 00 00 	mov    %ax,0x97cc(%rip)        # 10a328 <cpu_idt+0x280>
  100b5c:	48 c1 ea 10          	shr    $0x10,%rdx
  100b60:	66 89 15 c7 97 00 00 	mov    %dx,0x97c7(%rip)        # 10a32e <cpu_idt+0x286>
  100b67:	48 89 c2             	mov    %rax,%rdx
  100b6a:	0f b6 05 bb 97 00 00 	movzbl 0x97bb(%rip),%eax        # 10a32c <cpu_idt+0x284>
  100b71:	48 c1 ea 20          	shr    $0x20,%rdx
  100b75:	89 15 b5 97 00 00    	mov    %edx,0x97b5(%rip)        # 10a330 <cpu_idt+0x288>
  100b7b:	ba 08 00 00 00       	mov    $0x8,%edx
  100b80:	66 89 15 a3 97 00 00 	mov    %dx,0x97a3(%rip)        # 10a32a <cpu_idt+0x282>
  100b87:	83 e0 f8             	and    $0xfffffff8,%eax
  100b8a:	83 c8 01             	or     $0x1,%eax
  100b8d:	88 05 99 97 00 00    	mov    %al,0x9799(%rip)        # 10a32c <cpu_idt+0x284>
  100b93:	b8 0d 14 10 00       	mov    $0x10140d,%eax
  100b98:	48 89 c2             	mov    %rax,%rdx
  100b9b:	66 89 05 96 97 00 00 	mov    %ax,0x9796(%rip)        # 10a338 <cpu_idt+0x290>
  100ba2:	48 c1 ea 10          	shr    $0x10,%rdx
  100ba6:	66 89 15 91 97 00 00 	mov    %dx,0x9791(%rip)        # 10a33e <cpu_idt+0x296>
  100bad:	48 89 c2             	mov    %rax,%rdx
  100bb0:	0f b6 05 85 97 00 00 	movzbl 0x9785(%rip),%eax        # 10a33c <cpu_idt+0x294>
  100bb7:	48 c1 ea 20          	shr    $0x20,%rdx
  100bbb:	89 15 7f 97 00 00    	mov    %edx,0x977f(%rip)        # 10a340 <cpu_idt+0x298>
  100bc1:	83 e0 f8             	and    $0xfffffff8,%eax
  100bc4:	83 c8 01             	or     $0x1,%eax
  100bc7:	88 05 6f 97 00 00    	mov    %al,0x976f(%rip)        # 10a33c <cpu_idt+0x294>
  100bcd:	b8 36 14 10 00       	mov    $0x101436,%eax
  100bd2:	c6 05 64 97 00 00 8e 	movb   $0x8e,0x9764(%rip)        # 10a33d <cpu_idt+0x295>
  100bd9:	48 89 c2             	mov    %rax,%rdx
  100bdc:	66 89 05 65 97 00 00 	mov    %ax,0x9765(%rip)        # 10a348 <cpu_idt+0x2a0>
  100be3:	66 89 35 60 97 00 00 	mov    %si,0x9760(%rip)        # 10a34a <cpu_idt+0x2a2>
  100bea:	48 c1 ea 10          	shr    $0x10,%rdx
  100bee:	66 89 3d 65 97 00 00 	mov    %di,0x9765(%rip)        # 10a35a <cpu_idt+0x2b2>
  100bf5:	66 44 89 05 6d 97 00 	mov    %r8w,0x976d(%rip)        # 10a36a <cpu_idt+0x2c2>
  100bfc:	00 
  100bfd:	66 89 15 4a 97 00 00 	mov    %dx,0x974a(%rip)        # 10a34e <cpu_idt+0x2a6>
  100c04:	48 89 c2             	mov    %rax,%rdx
  100c07:	0f b6 05 3e 97 00 00 	movzbl 0x973e(%rip),%eax        # 10a34c <cpu_idt+0x2a4>
  100c0e:	48 c1 ea 20          	shr    $0x20,%rdx
  100c12:	66 44 89 0d 60 97 00 	mov    %r9w,0x9760(%rip)        # 10a37a <cpu_idt+0x2d2>
  100c19:	00 
  100c1a:	66 44 89 15 68 97 00 	mov    %r10w,0x9768(%rip)        # 10a38a <cpu_idt+0x2e2>
  100c21:	00 
  100c22:	89 15 28 97 00 00    	mov    %edx,0x9728(%rip)        # 10a350 <cpu_idt+0x2a8>
  100c28:	c6 05 1e 97 00 00 8e 	movb   $0x8e,0x971e(%rip)        # 10a34d <cpu_idt+0x2a5>
  100c2f:	c6 05 27 97 00 00 8e 	movb   $0x8e,0x9727(%rip)        # 10a35d <cpu_idt+0x2b5>
  100c36:	c6 05 30 97 00 00 8e 	movb   $0x8e,0x9730(%rip)        # 10a36d <cpu_idt+0x2c5>
  100c3d:	83 e0 f8             	and    $0xfffffff8,%eax
  100c40:	c6 05 36 97 00 00 8e 	movb   $0x8e,0x9736(%rip)        # 10a37d <cpu_idt+0x2d5>
  100c47:	83 c8 01             	or     $0x1,%eax
  100c4a:	88 05 fc 96 00 00    	mov    %al,0x96fc(%rip)        # 10a34c <cpu_idt+0x2a4>
  100c50:	b8 5f 14 10 00       	mov    $0x10145f,%eax
  100c55:	48 89 c2             	mov    %rax,%rdx
  100c58:	66 89 05 f9 96 00 00 	mov    %ax,0x96f9(%rip)        # 10a358 <cpu_idt+0x2b0>
  100c5f:	48 c1 ea 10          	shr    $0x10,%rdx
  100c63:	66 89 15 f4 96 00 00 	mov    %dx,0x96f4(%rip)        # 10a35e <cpu_idt+0x2b6>
  100c6a:	48 89 c2             	mov    %rax,%rdx
  100c6d:	0f b6 05 e8 96 00 00 	movzbl 0x96e8(%rip),%eax        # 10a35c <cpu_idt+0x2b4>
  100c74:	48 c1 ea 20          	shr    $0x20,%rdx
  100c78:	89 15 e2 96 00 00    	mov    %edx,0x96e2(%rip)        # 10a360 <cpu_idt+0x2b8>
  100c7e:	83 e0 f8             	and    $0xfffffff8,%eax
  100c81:	83 c8 01             	or     $0x1,%eax
  100c84:	88 05 d2 96 00 00    	mov    %al,0x96d2(%rip)        # 10a35c <cpu_idt+0x2b4>
  100c8a:	b8 88 14 10 00       	mov    $0x101488,%eax
  100c8f:	48 89 c2             	mov    %rax,%rdx
  100c92:	66 89 05 cf 96 00 00 	mov    %ax,0x96cf(%rip)        # 10a368 <cpu_idt+0x2c0>
  100c99:	48 c1 ea 10          	shr    $0x10,%rdx
  100c9d:	66 89 15 ca 96 00 00 	mov    %dx,0x96ca(%rip)        # 10a36e <cpu_idt+0x2c6>
  100ca4:	48 89 c2             	mov    %rax,%rdx
  100ca7:	0f b6 05 be 96 00 00 	movzbl 0x96be(%rip),%eax        # 10a36c <cpu_idt+0x2c4>
  100cae:	48 c1 ea 20          	shr    $0x20,%rdx
  100cb2:	89 15 b8 96 00 00    	mov    %edx,0x96b8(%rip)        # 10a370 <cpu_idt+0x2c8>
  100cb8:	83 e0 f8             	and    $0xfffffff8,%eax
  100cbb:	83 c8 01             	or     $0x1,%eax
  100cbe:	88 05 a8 96 00 00    	mov    %al,0x96a8(%rip)        # 10a36c <cpu_idt+0x2c4>
  100cc4:	b8 b1 14 10 00       	mov    $0x1014b1,%eax
  100cc9:	48 89 c2             	mov    %rax,%rdx
  100ccc:	66 89 05 a5 96 00 00 	mov    %ax,0x96a5(%rip)        # 10a378 <cpu_idt+0x2d0>
  100cd3:	48 c1 ea 10          	shr    $0x10,%rdx
  100cd7:	66 89 15 a0 96 00 00 	mov    %dx,0x96a0(%rip)        # 10a37e <cpu_idt+0x2d6>
  100cde:	48 89 c2             	mov    %rax,%rdx
  100ce1:	0f b6 05 94 96 00 00 	movzbl 0x9694(%rip),%eax        # 10a37c <cpu_idt+0x2d4>
  100ce8:	48 c1 ea 20          	shr    $0x20,%rdx
  100cec:	89 15 8e 96 00 00    	mov    %edx,0x968e(%rip)        # 10a380 <cpu_idt+0x2d8>
  100cf2:	83 e0 f8             	and    $0xfffffff8,%eax
  100cf5:	83 c8 01             	or     $0x1,%eax
  100cf8:	88 05 7e 96 00 00    	mov    %al,0x967e(%rip)        # 10a37c <cpu_idt+0x2d4>
  100cfe:	b8 da 14 10 00       	mov    $0x1014da,%eax
  100d03:	48 89 c2             	mov    %rax,%rdx
  100d06:	66 89 05 7b 96 00 00 	mov    %ax,0x967b(%rip)        # 10a388 <cpu_idt+0x2e0>
  100d0d:	48 c1 ea 10          	shr    $0x10,%rdx
  100d11:	66 89 15 76 96 00 00 	mov    %dx,0x9676(%rip)        # 10a38e <cpu_idt+0x2e6>
  100d18:	48 89 c2             	mov    %rax,%rdx
  100d1b:	0f b6 05 6a 96 00 00 	movzbl 0x966a(%rip),%eax        # 10a38c <cpu_idt+0x2e4>
  100d22:	48 c1 ea 20          	shr    $0x20,%rdx
  100d26:	89 15 64 96 00 00    	mov    %edx,0x9664(%rip)        # 10a390 <cpu_idt+0x2e8>
  100d2c:	83 e0 f8             	and    $0xfffffff8,%eax
  100d2f:	83 c8 01             	or     $0x1,%eax
  100d32:	88 05 54 96 00 00    	mov    %al,0x9654(%rip)        # 10a38c <cpu_idt+0x2e4>
  100d38:	b8 03 15 10 00       	mov    $0x101503,%eax
  100d3d:	c6 05 49 96 00 00 8e 	movb   $0x8e,0x9649(%rip)        # 10a38d <cpu_idt+0x2e5>
  100d44:	48 89 c2             	mov    %rax,%rdx
  100d47:	66 89 05 4a 96 00 00 	mov    %ax,0x964a(%rip)        # 10a398 <cpu_idt+0x2f0>
  100d4e:	66 44 89 1d 44 96 00 	mov    %r11w,0x9644(%rip)        # 10a39a <cpu_idt+0x2f2>
  100d55:	00 
  100d56:	48 c1 ea 10          	shr    $0x10,%rdx
  100d5a:	c6 05 3c 96 00 00 8e 	movb   $0x8e,0x963c(%rip)        # 10a39d <cpu_idt+0x2f5>
  100d61:	66 89 15 36 96 00 00 	mov    %dx,0x9636(%rip)        # 10a39e <cpu_idt+0x2f6>
  100d68:	48 89 c2             	mov    %rax,%rdx
  100d6b:	0f b6 05 2a 96 00 00 	movzbl 0x962a(%rip),%eax        # 10a39c <cpu_idt+0x2f4>
  100d72:	48 c1 ea 20          	shr    $0x20,%rdx
  100d76:	89 15 24 96 00 00    	mov    %edx,0x9624(%rip)        # 10a3a0 <cpu_idt+0x2f8>
  100d7c:	83 e0 f8             	and    $0xfffffff8,%eax
  100d7f:	83 c8 01             	or     $0x1,%eax
  100d82:	88 05 14 96 00 00    	mov    %al,0x9614(%rip)        # 10a39c <cpu_idt+0x2f4>
  100d88:	b8 ff 02 00 00       	mov    $0x2ff,%eax
  100d8d:	66 89 44 24 0e       	mov    %ax,0xe(%rsp)
  100d92:	48 c7 44 24 10 a8 a0 	movq   $0x10a0a8,0x10(%rsp)
  100d99:	10 00 
  100d9b:	48 8d 44 24 0e       	lea    0xe(%rsp),%rax
  100da0:	0f 01 18             	lidt   (%rax)
  100da3:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  100da8:	48 8b 05 59 52 00 00 	mov    0x5259(%rip),%rax        # 106008 <__stack_chk_guard>
  100daf:	48 39 c2             	cmp    %rax,%rdx
  100db2:	75 05                	jne    100db9 <cpu_init+0xbd9>
  100db4:	48 83 c4 28          	add    $0x28,%rsp
  100db8:	c3                   	retq   
  100db9:	e8 72 07 00 00       	callq  101530 <__stack_chk_fail>
  100dbe:	66 90                	xchg   %ax,%ax

0000000000100dc0 <cpu_trap_handler>:
  100dc0:	55                   	push   %rbp
  100dc1:	53                   	push   %rbx
  100dc2:	48 89 fd             	mov    %rdi,%rbp
  100dc5:	31 c0                	xor    %eax,%eax
  100dc7:	48 89 f3             	mov    %rsi,%rbx
  100dca:	48 83 ec 10          	sub    $0x10,%rsp
  100dce:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  100dd2:	48 8b 14 fd c0 40 10 	mov    0x1040c0(,%rdi,8),%rdx
  100dd9:	00 
  100dda:	ff 76 20             	pushq  0x20(%rsi)
  100ddd:	4c 8b 4e 28          	mov    0x28(%rsi),%r9
  100de1:	bf 02 00 00 00       	mov    $0x2,%edi
  100de6:	4c 8b 46 10          	mov    0x10(%rsi),%r8
  100dea:	be b0 48 10 00       	mov    $0x1048b0,%esi
  100def:	e8 dc 1e 00 00       	callq  102cd0 <log>
  100df4:	48 83 fd 0e          	cmp    $0xe,%rbp
  100df8:	58                   	pop    %rax
  100df9:	5a                   	pop    %rdx
  100dfa:	74 17                	je     100e13 <cpu_trap_handler+0x53>
  100dfc:	48 89 d9             	mov    %rbx,%rcx
  100dff:	ba 8b 46 10 00       	mov    $0x10468b,%edx
  100e04:	be 96 46 10 00       	mov    $0x104696,%esi
  100e09:	bf 9a 46 10 00       	mov    $0x10469a,%edi
  100e0e:	e8 5d f3 ff ff       	callq  100170 <_abort>
  100e13:	48 8b 13             	mov    (%rbx),%rdx
  100e16:	be 72 46 10 00       	mov    $0x104672,%esi
  100e1b:	bf 02 00 00 00       	mov    $0x2,%edi
  100e20:	31 c0                	xor    %eax,%eax
  100e22:	e8 a9 1e 00 00       	callq  102cd0 <log>
  100e27:	eb d3                	jmp    100dfc <cpu_trap_handler+0x3c>
  100e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000100e30 <cpu_intr_disable>:
  100e30:	fa                   	cli    
  100e31:	83 05 c8 51 00 00 01 	addl   $0x1,0x51c8(%rip)        # 106000 <_erodata>
  100e38:	c3                   	retq   
  100e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000100e40 <cpu_intr_enable>:
  100e40:	8b 05 ba 51 00 00    	mov    0x51ba(%rip),%eax        # 106000 <_erodata>
  100e46:	85 c0                	test   %eax,%eax
  100e48:	7e 10                	jle    100e5a <cpu_intr_enable+0x1a>
  100e4a:	83 e8 01             	sub    $0x1,%eax
  100e4d:	85 c0                	test   %eax,%eax
  100e4f:	89 05 ab 51 00 00    	mov    %eax,0x51ab(%rip)        # 106000 <_erodata>
  100e55:	75 01                	jne    100e58 <cpu_intr_enable+0x18>
  100e57:	fb                   	sti    
  100e58:	f3 c3                	repz retq 
  100e5a:	50                   	push   %rax
  100e5b:	ba a7 46 10 00       	mov    $0x1046a7,%edx
  100e60:	be ba 46 10 00       	mov    $0x1046ba,%esi
  100e65:	bf 9a 46 10 00       	mov    $0x10469a,%edi
  100e6a:	e8 a1 f2 ff ff       	callq  100110 <_assert_fail>
  100e6f:	90                   	nop

0000000000100e70 <cpu_halt>:
  100e70:	fa                   	cli    
  100e71:	f4                   	hlt    
  100e72:	eb fe                	jmp    100e72 <cpu_halt+0x2>

0000000000100e74 <cpu_trap_0>:
  100e74:	fc                   	cld    
  100e75:	6a 00                	pushq  $0x0
  100e77:	6a 00                	pushq  $0x0
  100e79:	50                   	push   %rax
  100e7a:	57                   	push   %rdi
  100e7b:	56                   	push   %rsi
  100e7c:	52                   	push   %rdx
  100e7d:	51                   	push   %rcx
  100e7e:	41 50                	push   %r8
  100e80:	41 51                	push   %r9
  100e82:	41 52                	push   %r10
  100e84:	41 53                	push   %r11
  100e86:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  100e8d:	48 89 e6             	mov    %rsp,%rsi
  100e90:	48 83 c6 48          	add    $0x48,%rsi
  100e94:	e8 27 ff ff ff       	callq  100dc0 <cpu_trap_handler>
  100e99:	41 5b                	pop    %r11
  100e9b:	41 5a                	pop    %r10
  100e9d:	41 59                	pop    %r9
  100e9f:	41 58                	pop    %r8
  100ea1:	59                   	pop    %rcx
  100ea2:	5a                   	pop    %rdx
  100ea3:	5e                   	pop    %rsi
  100ea4:	5f                   	pop    %rdi
  100ea5:	58                   	pop    %rax
  100ea6:	48 83 c4 10          	add    $0x10,%rsp
  100eaa:	48 cf                	iretq  

0000000000100eac <cpu_trap_1>:
  100eac:	fc                   	cld    
  100ead:	6a 00                	pushq  $0x0
  100eaf:	6a 00                	pushq  $0x0
  100eb1:	50                   	push   %rax
  100eb2:	57                   	push   %rdi
  100eb3:	56                   	push   %rsi
  100eb4:	52                   	push   %rdx
  100eb5:	51                   	push   %rcx
  100eb6:	41 50                	push   %r8
  100eb8:	41 51                	push   %r9
  100eba:	41 52                	push   %r10
  100ebc:	41 53                	push   %r11
  100ebe:	48 c7 c7 01 00 00 00 	mov    $0x1,%rdi
  100ec5:	48 89 e6             	mov    %rsp,%rsi
  100ec8:	48 83 c6 48          	add    $0x48,%rsi
  100ecc:	e8 ef fe ff ff       	callq  100dc0 <cpu_trap_handler>
  100ed1:	41 5b                	pop    %r11
  100ed3:	41 5a                	pop    %r10
  100ed5:	41 59                	pop    %r9
  100ed7:	41 58                	pop    %r8
  100ed9:	59                   	pop    %rcx
  100eda:	5a                   	pop    %rdx
  100edb:	5e                   	pop    %rsi
  100edc:	5f                   	pop    %rdi
  100edd:	58                   	pop    %rax
  100ede:	48 83 c4 10          	add    $0x10,%rsp
  100ee2:	48 cf                	iretq  

0000000000100ee4 <cpu_trap_2>:
  100ee4:	fc                   	cld    
  100ee5:	6a 00                	pushq  $0x0
  100ee7:	6a 00                	pushq  $0x0
  100ee9:	50                   	push   %rax
  100eea:	57                   	push   %rdi
  100eeb:	56                   	push   %rsi
  100eec:	52                   	push   %rdx
  100eed:	51                   	push   %rcx
  100eee:	41 50                	push   %r8
  100ef0:	41 51                	push   %r9
  100ef2:	41 52                	push   %r10
  100ef4:	41 53                	push   %r11
  100ef6:	48 c7 c7 02 00 00 00 	mov    $0x2,%rdi
  100efd:	48 89 e6             	mov    %rsp,%rsi
  100f00:	48 83 c6 48          	add    $0x48,%rsi
  100f04:	e8 b7 fe ff ff       	callq  100dc0 <cpu_trap_handler>
  100f09:	41 5b                	pop    %r11
  100f0b:	41 5a                	pop    %r10
  100f0d:	41 59                	pop    %r9
  100f0f:	41 58                	pop    %r8
  100f11:	59                   	pop    %rcx
  100f12:	5a                   	pop    %rdx
  100f13:	5e                   	pop    %rsi
  100f14:	5f                   	pop    %rdi
  100f15:	58                   	pop    %rax
  100f16:	48 83 c4 10          	add    $0x10,%rsp
  100f1a:	48 cf                	iretq  

0000000000100f1c <cpu_trap_3>:
  100f1c:	fc                   	cld    
  100f1d:	6a 00                	pushq  $0x0
  100f1f:	6a 00                	pushq  $0x0
  100f21:	50                   	push   %rax
  100f22:	57                   	push   %rdi
  100f23:	56                   	push   %rsi
  100f24:	52                   	push   %rdx
  100f25:	51                   	push   %rcx
  100f26:	41 50                	push   %r8
  100f28:	41 51                	push   %r9
  100f2a:	41 52                	push   %r10
  100f2c:	41 53                	push   %r11
  100f2e:	48 c7 c7 03 00 00 00 	mov    $0x3,%rdi
  100f35:	48 89 e6             	mov    %rsp,%rsi
  100f38:	48 83 c6 48          	add    $0x48,%rsi
  100f3c:	e8 7f fe ff ff       	callq  100dc0 <cpu_trap_handler>
  100f41:	41 5b                	pop    %r11
  100f43:	41 5a                	pop    %r10
  100f45:	41 59                	pop    %r9
  100f47:	41 58                	pop    %r8
  100f49:	59                   	pop    %rcx
  100f4a:	5a                   	pop    %rdx
  100f4b:	5e                   	pop    %rsi
  100f4c:	5f                   	pop    %rdi
  100f4d:	58                   	pop    %rax
  100f4e:	48 83 c4 10          	add    $0x10,%rsp
  100f52:	48 cf                	iretq  

0000000000100f54 <cpu_trap_4>:
  100f54:	fc                   	cld    
  100f55:	6a 00                	pushq  $0x0
  100f57:	6a 00                	pushq  $0x0
  100f59:	50                   	push   %rax
  100f5a:	57                   	push   %rdi
  100f5b:	56                   	push   %rsi
  100f5c:	52                   	push   %rdx
  100f5d:	51                   	push   %rcx
  100f5e:	41 50                	push   %r8
  100f60:	41 51                	push   %r9
  100f62:	41 52                	push   %r10
  100f64:	41 53                	push   %r11
  100f66:	48 c7 c7 04 00 00 00 	mov    $0x4,%rdi
  100f6d:	48 89 e6             	mov    %rsp,%rsi
  100f70:	48 83 c6 48          	add    $0x48,%rsi
  100f74:	e8 47 fe ff ff       	callq  100dc0 <cpu_trap_handler>
  100f79:	41 5b                	pop    %r11
  100f7b:	41 5a                	pop    %r10
  100f7d:	41 59                	pop    %r9
  100f7f:	41 58                	pop    %r8
  100f81:	59                   	pop    %rcx
  100f82:	5a                   	pop    %rdx
  100f83:	5e                   	pop    %rsi
  100f84:	5f                   	pop    %rdi
  100f85:	58                   	pop    %rax
  100f86:	48 83 c4 10          	add    $0x10,%rsp
  100f8a:	48 cf                	iretq  

0000000000100f8c <cpu_trap_5>:
  100f8c:	fc                   	cld    
  100f8d:	6a 00                	pushq  $0x0
  100f8f:	6a 00                	pushq  $0x0
  100f91:	50                   	push   %rax
  100f92:	57                   	push   %rdi
  100f93:	56                   	push   %rsi
  100f94:	52                   	push   %rdx
  100f95:	51                   	push   %rcx
  100f96:	41 50                	push   %r8
  100f98:	41 51                	push   %r9
  100f9a:	41 52                	push   %r10
  100f9c:	41 53                	push   %r11
  100f9e:	48 c7 c7 05 00 00 00 	mov    $0x5,%rdi
  100fa5:	48 89 e6             	mov    %rsp,%rsi
  100fa8:	48 83 c6 48          	add    $0x48,%rsi
  100fac:	e8 0f fe ff ff       	callq  100dc0 <cpu_trap_handler>
  100fb1:	41 5b                	pop    %r11
  100fb3:	41 5a                	pop    %r10
  100fb5:	41 59                	pop    %r9
  100fb7:	41 58                	pop    %r8
  100fb9:	59                   	pop    %rcx
  100fba:	5a                   	pop    %rdx
  100fbb:	5e                   	pop    %rsi
  100fbc:	5f                   	pop    %rdi
  100fbd:	58                   	pop    %rax
  100fbe:	48 83 c4 10          	add    $0x10,%rsp
  100fc2:	48 cf                	iretq  

0000000000100fc4 <cpu_trap_6>:
  100fc4:	fc                   	cld    
  100fc5:	6a 00                	pushq  $0x0
  100fc7:	6a 00                	pushq  $0x0
  100fc9:	50                   	push   %rax
  100fca:	57                   	push   %rdi
  100fcb:	56                   	push   %rsi
  100fcc:	52                   	push   %rdx
  100fcd:	51                   	push   %rcx
  100fce:	41 50                	push   %r8
  100fd0:	41 51                	push   %r9
  100fd2:	41 52                	push   %r10
  100fd4:	41 53                	push   %r11
  100fd6:	48 c7 c7 06 00 00 00 	mov    $0x6,%rdi
  100fdd:	48 89 e6             	mov    %rsp,%rsi
  100fe0:	48 83 c6 48          	add    $0x48,%rsi
  100fe4:	e8 d7 fd ff ff       	callq  100dc0 <cpu_trap_handler>
  100fe9:	41 5b                	pop    %r11
  100feb:	41 5a                	pop    %r10
  100fed:	41 59                	pop    %r9
  100fef:	41 58                	pop    %r8
  100ff1:	59                   	pop    %rcx
  100ff2:	5a                   	pop    %rdx
  100ff3:	5e                   	pop    %rsi
  100ff4:	5f                   	pop    %rdi
  100ff5:	58                   	pop    %rax
  100ff6:	48 83 c4 10          	add    $0x10,%rsp
  100ffa:	48 cf                	iretq  

0000000000100ffc <cpu_trap_7>:
  100ffc:	fc                   	cld    
  100ffd:	6a 00                	pushq  $0x0
  100fff:	6a 00                	pushq  $0x0
  101001:	50                   	push   %rax
  101002:	57                   	push   %rdi
  101003:	56                   	push   %rsi
  101004:	52                   	push   %rdx
  101005:	51                   	push   %rcx
  101006:	41 50                	push   %r8
  101008:	41 51                	push   %r9
  10100a:	41 52                	push   %r10
  10100c:	41 53                	push   %r11
  10100e:	48 c7 c7 07 00 00 00 	mov    $0x7,%rdi
  101015:	48 89 e6             	mov    %rsp,%rsi
  101018:	48 83 c6 48          	add    $0x48,%rsi
  10101c:	e8 9f fd ff ff       	callq  100dc0 <cpu_trap_handler>
  101021:	41 5b                	pop    %r11
  101023:	41 5a                	pop    %r10
  101025:	41 59                	pop    %r9
  101027:	41 58                	pop    %r8
  101029:	59                   	pop    %rcx
  10102a:	5a                   	pop    %rdx
  10102b:	5e                   	pop    %rsi
  10102c:	5f                   	pop    %rdi
  10102d:	58                   	pop    %rax
  10102e:	48 83 c4 10          	add    $0x10,%rsp
  101032:	48 cf                	iretq  

0000000000101034 <cpu_trap_8>:
  101034:	fc                   	cld    
  101035:	0f 20 d7             	mov    %cr2,%rdi
  101038:	57                   	push   %rdi
  101039:	50                   	push   %rax
  10103a:	57                   	push   %rdi
  10103b:	56                   	push   %rsi
  10103c:	52                   	push   %rdx
  10103d:	51                   	push   %rcx
  10103e:	41 50                	push   %r8
  101040:	41 51                	push   %r9
  101042:	41 52                	push   %r10
  101044:	41 53                	push   %r11
  101046:	48 c7 c7 08 00 00 00 	mov    $0x8,%rdi
  10104d:	48 89 e6             	mov    %rsp,%rsi
  101050:	48 83 c6 48          	add    $0x48,%rsi
  101054:	e8 67 fd ff ff       	callq  100dc0 <cpu_trap_handler>
  101059:	41 5b                	pop    %r11
  10105b:	41 5a                	pop    %r10
  10105d:	41 59                	pop    %r9
  10105f:	41 58                	pop    %r8
  101061:	59                   	pop    %rcx
  101062:	5a                   	pop    %rdx
  101063:	5e                   	pop    %rsi
  101064:	5f                   	pop    %rdi
  101065:	58                   	pop    %rax
  101066:	48 83 c4 10          	add    $0x10,%rsp
  10106a:	48 cf                	iretq  

000000000010106c <cpu_trap_10>:
  10106c:	fc                   	cld    
  10106d:	0f 20 d7             	mov    %cr2,%rdi
  101070:	57                   	push   %rdi
  101071:	50                   	push   %rax
  101072:	57                   	push   %rdi
  101073:	56                   	push   %rsi
  101074:	52                   	push   %rdx
  101075:	51                   	push   %rcx
  101076:	41 50                	push   %r8
  101078:	41 51                	push   %r9
  10107a:	41 52                	push   %r10
  10107c:	41 53                	push   %r11
  10107e:	48 c7 c7 0a 00 00 00 	mov    $0xa,%rdi
  101085:	48 89 e6             	mov    %rsp,%rsi
  101088:	48 83 c6 48          	add    $0x48,%rsi
  10108c:	e8 2f fd ff ff       	callq  100dc0 <cpu_trap_handler>
  101091:	41 5b                	pop    %r11
  101093:	41 5a                	pop    %r10
  101095:	41 59                	pop    %r9
  101097:	41 58                	pop    %r8
  101099:	59                   	pop    %rcx
  10109a:	5a                   	pop    %rdx
  10109b:	5e                   	pop    %rsi
  10109c:	5f                   	pop    %rdi
  10109d:	58                   	pop    %rax
  10109e:	48 83 c4 10          	add    $0x10,%rsp
  1010a2:	48 cf                	iretq  

00000000001010a4 <cpu_trap_11>:
  1010a4:	fc                   	cld    
  1010a5:	0f 20 d7             	mov    %cr2,%rdi
  1010a8:	57                   	push   %rdi
  1010a9:	50                   	push   %rax
  1010aa:	57                   	push   %rdi
  1010ab:	56                   	push   %rsi
  1010ac:	52                   	push   %rdx
  1010ad:	51                   	push   %rcx
  1010ae:	41 50                	push   %r8
  1010b0:	41 51                	push   %r9
  1010b2:	41 52                	push   %r10
  1010b4:	41 53                	push   %r11
  1010b6:	48 c7 c7 0b 00 00 00 	mov    $0xb,%rdi
  1010bd:	48 89 e6             	mov    %rsp,%rsi
  1010c0:	48 83 c6 48          	add    $0x48,%rsi
  1010c4:	e8 f7 fc ff ff       	callq  100dc0 <cpu_trap_handler>
  1010c9:	41 5b                	pop    %r11
  1010cb:	41 5a                	pop    %r10
  1010cd:	41 59                	pop    %r9
  1010cf:	41 58                	pop    %r8
  1010d1:	59                   	pop    %rcx
  1010d2:	5a                   	pop    %rdx
  1010d3:	5e                   	pop    %rsi
  1010d4:	5f                   	pop    %rdi
  1010d5:	58                   	pop    %rax
  1010d6:	48 83 c4 10          	add    $0x10,%rsp
  1010da:	48 cf                	iretq  

00000000001010dc <cpu_trap_12>:
  1010dc:	fc                   	cld    
  1010dd:	0f 20 d7             	mov    %cr2,%rdi
  1010e0:	57                   	push   %rdi
  1010e1:	50                   	push   %rax
  1010e2:	57                   	push   %rdi
  1010e3:	56                   	push   %rsi
  1010e4:	52                   	push   %rdx
  1010e5:	51                   	push   %rcx
  1010e6:	41 50                	push   %r8
  1010e8:	41 51                	push   %r9
  1010ea:	41 52                	push   %r10
  1010ec:	41 53                	push   %r11
  1010ee:	48 c7 c7 0c 00 00 00 	mov    $0xc,%rdi
  1010f5:	48 89 e6             	mov    %rsp,%rsi
  1010f8:	48 83 c6 48          	add    $0x48,%rsi
  1010fc:	e8 bf fc ff ff       	callq  100dc0 <cpu_trap_handler>
  101101:	41 5b                	pop    %r11
  101103:	41 5a                	pop    %r10
  101105:	41 59                	pop    %r9
  101107:	41 58                	pop    %r8
  101109:	59                   	pop    %rcx
  10110a:	5a                   	pop    %rdx
  10110b:	5e                   	pop    %rsi
  10110c:	5f                   	pop    %rdi
  10110d:	58                   	pop    %rax
  10110e:	48 83 c4 10          	add    $0x10,%rsp
  101112:	48 cf                	iretq  

0000000000101114 <cpu_trap_13>:
  101114:	fc                   	cld    
  101115:	0f 20 d7             	mov    %cr2,%rdi
  101118:	57                   	push   %rdi
  101119:	50                   	push   %rax
  10111a:	57                   	push   %rdi
  10111b:	56                   	push   %rsi
  10111c:	52                   	push   %rdx
  10111d:	51                   	push   %rcx
  10111e:	41 50                	push   %r8
  101120:	41 51                	push   %r9
  101122:	41 52                	push   %r10
  101124:	41 53                	push   %r11
  101126:	48 c7 c7 0d 00 00 00 	mov    $0xd,%rdi
  10112d:	48 89 e6             	mov    %rsp,%rsi
  101130:	48 83 c6 48          	add    $0x48,%rsi
  101134:	e8 87 fc ff ff       	callq  100dc0 <cpu_trap_handler>
  101139:	41 5b                	pop    %r11
  10113b:	41 5a                	pop    %r10
  10113d:	41 59                	pop    %r9
  10113f:	41 58                	pop    %r8
  101141:	59                   	pop    %rcx
  101142:	5a                   	pop    %rdx
  101143:	5e                   	pop    %rsi
  101144:	5f                   	pop    %rdi
  101145:	58                   	pop    %rax
  101146:	48 83 c4 10          	add    $0x10,%rsp
  10114a:	48 cf                	iretq  

000000000010114c <cpu_trap_14>:
  10114c:	fc                   	cld    
  10114d:	0f 20 d7             	mov    %cr2,%rdi
  101150:	57                   	push   %rdi
  101151:	50                   	push   %rax
  101152:	57                   	push   %rdi
  101153:	56                   	push   %rsi
  101154:	52                   	push   %rdx
  101155:	51                   	push   %rcx
  101156:	41 50                	push   %r8
  101158:	41 51                	push   %r9
  10115a:	41 52                	push   %r10
  10115c:	41 53                	push   %r11
  10115e:	48 c7 c7 0e 00 00 00 	mov    $0xe,%rdi
  101165:	48 89 e6             	mov    %rsp,%rsi
  101168:	48 83 c6 48          	add    $0x48,%rsi
  10116c:	e8 4f fc ff ff       	callq  100dc0 <cpu_trap_handler>
  101171:	41 5b                	pop    %r11
  101173:	41 5a                	pop    %r10
  101175:	41 59                	pop    %r9
  101177:	41 58                	pop    %r8
  101179:	59                   	pop    %rcx
  10117a:	5a                   	pop    %rdx
  10117b:	5e                   	pop    %rsi
  10117c:	5f                   	pop    %rdi
  10117d:	58                   	pop    %rax
  10117e:	48 83 c4 10          	add    $0x10,%rsp
  101182:	48 cf                	iretq  

0000000000101184 <cpu_trap_16>:
  101184:	fc                   	cld    
  101185:	6a 00                	pushq  $0x0
  101187:	6a 00                	pushq  $0x0
  101189:	50                   	push   %rax
  10118a:	57                   	push   %rdi
  10118b:	56                   	push   %rsi
  10118c:	52                   	push   %rdx
  10118d:	51                   	push   %rcx
  10118e:	41 50                	push   %r8
  101190:	41 51                	push   %r9
  101192:	41 52                	push   %r10
  101194:	41 53                	push   %r11
  101196:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
  10119d:	48 89 e6             	mov    %rsp,%rsi
  1011a0:	48 83 c6 48          	add    $0x48,%rsi
  1011a4:	e8 17 fc ff ff       	callq  100dc0 <cpu_trap_handler>
  1011a9:	41 5b                	pop    %r11
  1011ab:	41 5a                	pop    %r10
  1011ad:	41 59                	pop    %r9
  1011af:	41 58                	pop    %r8
  1011b1:	59                   	pop    %rcx
  1011b2:	5a                   	pop    %rdx
  1011b3:	5e                   	pop    %rsi
  1011b4:	5f                   	pop    %rdi
  1011b5:	58                   	pop    %rax
  1011b6:	48 83 c4 10          	add    $0x10,%rsp
  1011ba:	48 cf                	iretq  

00000000001011bc <cpu_trap_17>:
  1011bc:	fc                   	cld    
  1011bd:	0f 20 d7             	mov    %cr2,%rdi
  1011c0:	57                   	push   %rdi
  1011c1:	50                   	push   %rax
  1011c2:	57                   	push   %rdi
  1011c3:	56                   	push   %rsi
  1011c4:	52                   	push   %rdx
  1011c5:	51                   	push   %rcx
  1011c6:	41 50                	push   %r8
  1011c8:	41 51                	push   %r9
  1011ca:	41 52                	push   %r10
  1011cc:	41 53                	push   %r11
  1011ce:	48 c7 c7 11 00 00 00 	mov    $0x11,%rdi
  1011d5:	48 89 e6             	mov    %rsp,%rsi
  1011d8:	48 83 c6 48          	add    $0x48,%rsi
  1011dc:	e8 df fb ff ff       	callq  100dc0 <cpu_trap_handler>
  1011e1:	41 5b                	pop    %r11
  1011e3:	41 5a                	pop    %r10
  1011e5:	41 59                	pop    %r9
  1011e7:	41 58                	pop    %r8
  1011e9:	59                   	pop    %rcx
  1011ea:	5a                   	pop    %rdx
  1011eb:	5e                   	pop    %rsi
  1011ec:	5f                   	pop    %rdi
  1011ed:	58                   	pop    %rax
  1011ee:	48 83 c4 10          	add    $0x10,%rsp
  1011f2:	48 cf                	iretq  

00000000001011f4 <cpu_trap_18>:
  1011f4:	fc                   	cld    
  1011f5:	6a 00                	pushq  $0x0
  1011f7:	6a 00                	pushq  $0x0
  1011f9:	50                   	push   %rax
  1011fa:	57                   	push   %rdi
  1011fb:	56                   	push   %rsi
  1011fc:	52                   	push   %rdx
  1011fd:	51                   	push   %rcx
  1011fe:	41 50                	push   %r8
  101200:	41 51                	push   %r9
  101202:	41 52                	push   %r10
  101204:	41 53                	push   %r11
  101206:	48 c7 c7 12 00 00 00 	mov    $0x12,%rdi
  10120d:	48 89 e6             	mov    %rsp,%rsi
  101210:	48 83 c6 48          	add    $0x48,%rsi
  101214:	e8 a7 fb ff ff       	callq  100dc0 <cpu_trap_handler>
  101219:	41 5b                	pop    %r11
  10121b:	41 5a                	pop    %r10
  10121d:	41 59                	pop    %r9
  10121f:	41 58                	pop    %r8
  101221:	59                   	pop    %rcx
  101222:	5a                   	pop    %rdx
  101223:	5e                   	pop    %rsi
  101224:	5f                   	pop    %rdi
  101225:	58                   	pop    %rax
  101226:	48 83 c4 10          	add    $0x10,%rsp
  10122a:	48 cf                	iretq  

000000000010122c <cpu_trap_19>:
  10122c:	fc                   	cld    
  10122d:	6a 00                	pushq  $0x0
  10122f:	6a 00                	pushq  $0x0
  101231:	50                   	push   %rax
  101232:	57                   	push   %rdi
  101233:	56                   	push   %rsi
  101234:	52                   	push   %rdx
  101235:	51                   	push   %rcx
  101236:	41 50                	push   %r8
  101238:	41 51                	push   %r9
  10123a:	41 52                	push   %r10
  10123c:	41 53                	push   %r11
  10123e:	48 c7 c7 13 00 00 00 	mov    $0x13,%rdi
  101245:	48 89 e6             	mov    %rsp,%rsi
  101248:	48 83 c6 48          	add    $0x48,%rsi
  10124c:	e8 6f fb ff ff       	callq  100dc0 <cpu_trap_handler>
  101251:	41 5b                	pop    %r11
  101253:	41 5a                	pop    %r10
  101255:	41 59                	pop    %r9
  101257:	41 58                	pop    %r8
  101259:	59                   	pop    %rcx
  10125a:	5a                   	pop    %rdx
  10125b:	5e                   	pop    %rsi
  10125c:	5f                   	pop    %rdi
  10125d:	58                   	pop    %rax
  10125e:	48 83 c4 10          	add    $0x10,%rsp
  101262:	48 cf                	iretq  

0000000000101264 <cpu_trap_20>:
  101264:	fc                   	cld    
  101265:	6a 00                	pushq  $0x0
  101267:	6a 00                	pushq  $0x0
  101269:	50                   	push   %rax
  10126a:	57                   	push   %rdi
  10126b:	56                   	push   %rsi
  10126c:	52                   	push   %rdx
  10126d:	51                   	push   %rcx
  10126e:	41 50                	push   %r8
  101270:	41 51                	push   %r9
  101272:	41 52                	push   %r10
  101274:	41 53                	push   %r11
  101276:	48 c7 c7 14 00 00 00 	mov    $0x14,%rdi
  10127d:	48 89 e6             	mov    %rsp,%rsi
  101280:	48 83 c6 48          	add    $0x48,%rsi
  101284:	e8 37 fb ff ff       	callq  100dc0 <cpu_trap_handler>
  101289:	41 5b                	pop    %r11
  10128b:	41 5a                	pop    %r10
  10128d:	41 59                	pop    %r9
  10128f:	41 58                	pop    %r8
  101291:	59                   	pop    %rcx
  101292:	5a                   	pop    %rdx
  101293:	5e                   	pop    %rsi
  101294:	5f                   	pop    %rdi
  101295:	58                   	pop    %rax
  101296:	48 83 c4 10          	add    $0x10,%rsp
  10129a:	48 cf                	iretq  

000000000010129c <cpu_irq_0>:
  10129c:	fc                   	cld    
  10129d:	50                   	push   %rax
  10129e:	57                   	push   %rdi
  10129f:	56                   	push   %rsi
  1012a0:	52                   	push   %rdx
  1012a1:	51                   	push   %rcx
  1012a2:	41 50                	push   %r8
  1012a4:	41 51                	push   %r9
  1012a6:	41 52                	push   %r10
  1012a8:	41 53                	push   %r11
  1012aa:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  1012b1:	e8 da 13 00 00       	callq  102690 <intr_irq_handler>
  1012b6:	41 5b                	pop    %r11
  1012b8:	41 5a                	pop    %r10
  1012ba:	41 59                	pop    %r9
  1012bc:	41 58                	pop    %r8
  1012be:	59                   	pop    %rcx
  1012bf:	5a                   	pop    %rdx
  1012c0:	5e                   	pop    %rsi
  1012c1:	5f                   	pop    %rdi
  1012c2:	58                   	pop    %rax
  1012c3:	48 cf                	iretq  

00000000001012c5 <cpu_irq_1>:
  1012c5:	fc                   	cld    
  1012c6:	50                   	push   %rax
  1012c7:	57                   	push   %rdi
  1012c8:	56                   	push   %rsi
  1012c9:	52                   	push   %rdx
  1012ca:	51                   	push   %rcx
  1012cb:	41 50                	push   %r8
  1012cd:	41 51                	push   %r9
  1012cf:	41 52                	push   %r10
  1012d1:	41 53                	push   %r11
  1012d3:	48 c7 c7 01 00 00 00 	mov    $0x1,%rdi
  1012da:	e8 b1 13 00 00       	callq  102690 <intr_irq_handler>
  1012df:	41 5b                	pop    %r11
  1012e1:	41 5a                	pop    %r10
  1012e3:	41 59                	pop    %r9
  1012e5:	41 58                	pop    %r8
  1012e7:	59                   	pop    %rcx
  1012e8:	5a                   	pop    %rdx
  1012e9:	5e                   	pop    %rsi
  1012ea:	5f                   	pop    %rdi
  1012eb:	58                   	pop    %rax
  1012ec:	48 cf                	iretq  

00000000001012ee <cpu_irq_2>:
  1012ee:	fc                   	cld    
  1012ef:	50                   	push   %rax
  1012f0:	57                   	push   %rdi
  1012f1:	56                   	push   %rsi
  1012f2:	52                   	push   %rdx
  1012f3:	51                   	push   %rcx
  1012f4:	41 50                	push   %r8
  1012f6:	41 51                	push   %r9
  1012f8:	41 52                	push   %r10
  1012fa:	41 53                	push   %r11
  1012fc:	48 c7 c7 02 00 00 00 	mov    $0x2,%rdi
  101303:	e8 88 13 00 00       	callq  102690 <intr_irq_handler>
  101308:	41 5b                	pop    %r11
  10130a:	41 5a                	pop    %r10
  10130c:	41 59                	pop    %r9
  10130e:	41 58                	pop    %r8
  101310:	59                   	pop    %rcx
  101311:	5a                   	pop    %rdx
  101312:	5e                   	pop    %rsi
  101313:	5f                   	pop    %rdi
  101314:	58                   	pop    %rax
  101315:	48 cf                	iretq  

0000000000101317 <cpu_irq_3>:
  101317:	fc                   	cld    
  101318:	50                   	push   %rax
  101319:	57                   	push   %rdi
  10131a:	56                   	push   %rsi
  10131b:	52                   	push   %rdx
  10131c:	51                   	push   %rcx
  10131d:	41 50                	push   %r8
  10131f:	41 51                	push   %r9
  101321:	41 52                	push   %r10
  101323:	41 53                	push   %r11
  101325:	48 c7 c7 03 00 00 00 	mov    $0x3,%rdi
  10132c:	e8 5f 13 00 00       	callq  102690 <intr_irq_handler>
  101331:	41 5b                	pop    %r11
  101333:	41 5a                	pop    %r10
  101335:	41 59                	pop    %r9
  101337:	41 58                	pop    %r8
  101339:	59                   	pop    %rcx
  10133a:	5a                   	pop    %rdx
  10133b:	5e                   	pop    %rsi
  10133c:	5f                   	pop    %rdi
  10133d:	58                   	pop    %rax
  10133e:	48 cf                	iretq  

0000000000101340 <cpu_irq_4>:
  101340:	fc                   	cld    
  101341:	50                   	push   %rax
  101342:	57                   	push   %rdi
  101343:	56                   	push   %rsi
  101344:	52                   	push   %rdx
  101345:	51                   	push   %rcx
  101346:	41 50                	push   %r8
  101348:	41 51                	push   %r9
  10134a:	41 52                	push   %r10
  10134c:	41 53                	push   %r11
  10134e:	48 c7 c7 04 00 00 00 	mov    $0x4,%rdi
  101355:	e8 36 13 00 00       	callq  102690 <intr_irq_handler>
  10135a:	41 5b                	pop    %r11
  10135c:	41 5a                	pop    %r10
  10135e:	41 59                	pop    %r9
  101360:	41 58                	pop    %r8
  101362:	59                   	pop    %rcx
  101363:	5a                   	pop    %rdx
  101364:	5e                   	pop    %rsi
  101365:	5f                   	pop    %rdi
  101366:	58                   	pop    %rax
  101367:	48 cf                	iretq  

0000000000101369 <cpu_irq_5>:
  101369:	fc                   	cld    
  10136a:	50                   	push   %rax
  10136b:	57                   	push   %rdi
  10136c:	56                   	push   %rsi
  10136d:	52                   	push   %rdx
  10136e:	51                   	push   %rcx
  10136f:	41 50                	push   %r8
  101371:	41 51                	push   %r9
  101373:	41 52                	push   %r10
  101375:	41 53                	push   %r11
  101377:	48 c7 c7 05 00 00 00 	mov    $0x5,%rdi
  10137e:	e8 0d 13 00 00       	callq  102690 <intr_irq_handler>
  101383:	41 5b                	pop    %r11
  101385:	41 5a                	pop    %r10
  101387:	41 59                	pop    %r9
  101389:	41 58                	pop    %r8
  10138b:	59                   	pop    %rcx
  10138c:	5a                   	pop    %rdx
  10138d:	5e                   	pop    %rsi
  10138e:	5f                   	pop    %rdi
  10138f:	58                   	pop    %rax
  101390:	48 cf                	iretq  

0000000000101392 <cpu_irq_6>:
  101392:	fc                   	cld    
  101393:	50                   	push   %rax
  101394:	57                   	push   %rdi
  101395:	56                   	push   %rsi
  101396:	52                   	push   %rdx
  101397:	51                   	push   %rcx
  101398:	41 50                	push   %r8
  10139a:	41 51                	push   %r9
  10139c:	41 52                	push   %r10
  10139e:	41 53                	push   %r11
  1013a0:	48 c7 c7 06 00 00 00 	mov    $0x6,%rdi
  1013a7:	e8 e4 12 00 00       	callq  102690 <intr_irq_handler>
  1013ac:	41 5b                	pop    %r11
  1013ae:	41 5a                	pop    %r10
  1013b0:	41 59                	pop    %r9
  1013b2:	41 58                	pop    %r8
  1013b4:	59                   	pop    %rcx
  1013b5:	5a                   	pop    %rdx
  1013b6:	5e                   	pop    %rsi
  1013b7:	5f                   	pop    %rdi
  1013b8:	58                   	pop    %rax
  1013b9:	48 cf                	iretq  

00000000001013bb <cpu_irq_7>:
  1013bb:	fc                   	cld    
  1013bc:	50                   	push   %rax
  1013bd:	57                   	push   %rdi
  1013be:	56                   	push   %rsi
  1013bf:	52                   	push   %rdx
  1013c0:	51                   	push   %rcx
  1013c1:	41 50                	push   %r8
  1013c3:	41 51                	push   %r9
  1013c5:	41 52                	push   %r10
  1013c7:	41 53                	push   %r11
  1013c9:	48 c7 c7 07 00 00 00 	mov    $0x7,%rdi
  1013d0:	e8 bb 12 00 00       	callq  102690 <intr_irq_handler>
  1013d5:	41 5b                	pop    %r11
  1013d7:	41 5a                	pop    %r10
  1013d9:	41 59                	pop    %r9
  1013db:	41 58                	pop    %r8
  1013dd:	59                   	pop    %rcx
  1013de:	5a                   	pop    %rdx
  1013df:	5e                   	pop    %rsi
  1013e0:	5f                   	pop    %rdi
  1013e1:	58                   	pop    %rax
  1013e2:	48 cf                	iretq  

00000000001013e4 <cpu_irq_8>:
  1013e4:	fc                   	cld    
  1013e5:	50                   	push   %rax
  1013e6:	57                   	push   %rdi
  1013e7:	56                   	push   %rsi
  1013e8:	52                   	push   %rdx
  1013e9:	51                   	push   %rcx
  1013ea:	41 50                	push   %r8
  1013ec:	41 51                	push   %r9
  1013ee:	41 52                	push   %r10
  1013f0:	41 53                	push   %r11
  1013f2:	48 c7 c7 08 00 00 00 	mov    $0x8,%rdi
  1013f9:	e8 92 12 00 00       	callq  102690 <intr_irq_handler>
  1013fe:	41 5b                	pop    %r11
  101400:	41 5a                	pop    %r10
  101402:	41 59                	pop    %r9
  101404:	41 58                	pop    %r8
  101406:	59                   	pop    %rcx
  101407:	5a                   	pop    %rdx
  101408:	5e                   	pop    %rsi
  101409:	5f                   	pop    %rdi
  10140a:	58                   	pop    %rax
  10140b:	48 cf                	iretq  

000000000010140d <cpu_irq_9>:
  10140d:	fc                   	cld    
  10140e:	50                   	push   %rax
  10140f:	57                   	push   %rdi
  101410:	56                   	push   %rsi
  101411:	52                   	push   %rdx
  101412:	51                   	push   %rcx
  101413:	41 50                	push   %r8
  101415:	41 51                	push   %r9
  101417:	41 52                	push   %r10
  101419:	41 53                	push   %r11
  10141b:	48 c7 c7 09 00 00 00 	mov    $0x9,%rdi
  101422:	e8 69 12 00 00       	callq  102690 <intr_irq_handler>
  101427:	41 5b                	pop    %r11
  101429:	41 5a                	pop    %r10
  10142b:	41 59                	pop    %r9
  10142d:	41 58                	pop    %r8
  10142f:	59                   	pop    %rcx
  101430:	5a                   	pop    %rdx
  101431:	5e                   	pop    %rsi
  101432:	5f                   	pop    %rdi
  101433:	58                   	pop    %rax
  101434:	48 cf                	iretq  

0000000000101436 <cpu_irq_10>:
  101436:	fc                   	cld    
  101437:	50                   	push   %rax
  101438:	57                   	push   %rdi
  101439:	56                   	push   %rsi
  10143a:	52                   	push   %rdx
  10143b:	51                   	push   %rcx
  10143c:	41 50                	push   %r8
  10143e:	41 51                	push   %r9
  101440:	41 52                	push   %r10
  101442:	41 53                	push   %r11
  101444:	48 c7 c7 0a 00 00 00 	mov    $0xa,%rdi
  10144b:	e8 40 12 00 00       	callq  102690 <intr_irq_handler>
  101450:	41 5b                	pop    %r11
  101452:	41 5a                	pop    %r10
  101454:	41 59                	pop    %r9
  101456:	41 58                	pop    %r8
  101458:	59                   	pop    %rcx
  101459:	5a                   	pop    %rdx
  10145a:	5e                   	pop    %rsi
  10145b:	5f                   	pop    %rdi
  10145c:	58                   	pop    %rax
  10145d:	48 cf                	iretq  

000000000010145f <cpu_irq_11>:
  10145f:	fc                   	cld    
  101460:	50                   	push   %rax
  101461:	57                   	push   %rdi
  101462:	56                   	push   %rsi
  101463:	52                   	push   %rdx
  101464:	51                   	push   %rcx
  101465:	41 50                	push   %r8
  101467:	41 51                	push   %r9
  101469:	41 52                	push   %r10
  10146b:	41 53                	push   %r11
  10146d:	48 c7 c7 0b 00 00 00 	mov    $0xb,%rdi
  101474:	e8 17 12 00 00       	callq  102690 <intr_irq_handler>
  101479:	41 5b                	pop    %r11
  10147b:	41 5a                	pop    %r10
  10147d:	41 59                	pop    %r9
  10147f:	41 58                	pop    %r8
  101481:	59                   	pop    %rcx
  101482:	5a                   	pop    %rdx
  101483:	5e                   	pop    %rsi
  101484:	5f                   	pop    %rdi
  101485:	58                   	pop    %rax
  101486:	48 cf                	iretq  

0000000000101488 <cpu_irq_12>:
  101488:	fc                   	cld    
  101489:	50                   	push   %rax
  10148a:	57                   	push   %rdi
  10148b:	56                   	push   %rsi
  10148c:	52                   	push   %rdx
  10148d:	51                   	push   %rcx
  10148e:	41 50                	push   %r8
  101490:	41 51                	push   %r9
  101492:	41 52                	push   %r10
  101494:	41 53                	push   %r11
  101496:	48 c7 c7 0c 00 00 00 	mov    $0xc,%rdi
  10149d:	e8 ee 11 00 00       	callq  102690 <intr_irq_handler>
  1014a2:	41 5b                	pop    %r11
  1014a4:	41 5a                	pop    %r10
  1014a6:	41 59                	pop    %r9
  1014a8:	41 58                	pop    %r8
  1014aa:	59                   	pop    %rcx
  1014ab:	5a                   	pop    %rdx
  1014ac:	5e                   	pop    %rsi
  1014ad:	5f                   	pop    %rdi
  1014ae:	58                   	pop    %rax
  1014af:	48 cf                	iretq  

00000000001014b1 <cpu_irq_13>:
  1014b1:	fc                   	cld    
  1014b2:	50                   	push   %rax
  1014b3:	57                   	push   %rdi
  1014b4:	56                   	push   %rsi
  1014b5:	52                   	push   %rdx
  1014b6:	51                   	push   %rcx
  1014b7:	41 50                	push   %r8
  1014b9:	41 51                	push   %r9
  1014bb:	41 52                	push   %r10
  1014bd:	41 53                	push   %r11
  1014bf:	48 c7 c7 0d 00 00 00 	mov    $0xd,%rdi
  1014c6:	e8 c5 11 00 00       	callq  102690 <intr_irq_handler>
  1014cb:	41 5b                	pop    %r11
  1014cd:	41 5a                	pop    %r10
  1014cf:	41 59                	pop    %r9
  1014d1:	41 58                	pop    %r8
  1014d3:	59                   	pop    %rcx
  1014d4:	5a                   	pop    %rdx
  1014d5:	5e                   	pop    %rsi
  1014d6:	5f                   	pop    %rdi
  1014d7:	58                   	pop    %rax
  1014d8:	48 cf                	iretq  

00000000001014da <cpu_irq_14>:
  1014da:	fc                   	cld    
  1014db:	50                   	push   %rax
  1014dc:	57                   	push   %rdi
  1014dd:	56                   	push   %rsi
  1014de:	52                   	push   %rdx
  1014df:	51                   	push   %rcx
  1014e0:	41 50                	push   %r8
  1014e2:	41 51                	push   %r9
  1014e4:	41 52                	push   %r10
  1014e6:	41 53                	push   %r11
  1014e8:	48 c7 c7 0e 00 00 00 	mov    $0xe,%rdi
  1014ef:	e8 9c 11 00 00       	callq  102690 <intr_irq_handler>
  1014f4:	41 5b                	pop    %r11
  1014f6:	41 5a                	pop    %r10
  1014f8:	41 59                	pop    %r9
  1014fa:	41 58                	pop    %r8
  1014fc:	59                   	pop    %rcx
  1014fd:	5a                   	pop    %rdx
  1014fe:	5e                   	pop    %rsi
  1014ff:	5f                   	pop    %rdi
  101500:	58                   	pop    %rax
  101501:	48 cf                	iretq  

0000000000101503 <cpu_irq_15>:
  101503:	fc                   	cld    
  101504:	50                   	push   %rax
  101505:	57                   	push   %rdi
  101506:	56                   	push   %rsi
  101507:	52                   	push   %rdx
  101508:	51                   	push   %rcx
  101509:	41 50                	push   %r8
  10150b:	41 51                	push   %r9
  10150d:	41 52                	push   %r10
  10150f:	41 53                	push   %r11
  101511:	48 c7 c7 0f 00 00 00 	mov    $0xf,%rdi
  101518:	e8 73 11 00 00       	callq  102690 <intr_irq_handler>
  10151d:	41 5b                	pop    %r11
  10151f:	41 5a                	pop    %r10
  101521:	41 59                	pop    %r9
  101523:	41 58                	pop    %r8
  101525:	59                   	pop    %rcx
  101526:	5a                   	pop    %rdx
  101527:	5e                   	pop    %rsi
  101528:	5f                   	pop    %rdi
  101529:	58                   	pop    %rax
  10152a:	48 cf                	iretq  
  10152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000101530 <__stack_chk_fail>:
  101530:	be 29 00 00 00       	mov    $0x29,%esi
  101535:	bf c0 41 10 00       	mov    $0x1041c0,%edi
  10153a:	48 83 ec 08          	sub    $0x8,%rsp
  10153e:	e8 9d 1f 00 00       	callq  1034e0 <platform_puts>
  101543:	31 f6                	xor    %esi,%esi
  101545:	bf ff 00 00 00       	mov    $0xff,%edi
  10154a:	e8 11 1d 00 00       	callq  103260 <platform_exit>
  10154f:	90                   	nop

0000000000101550 <_out_buffer>:
  101550:	48 39 ca             	cmp    %rcx,%rdx
  101553:	73 04                	jae    101559 <_out_buffer+0x9>
  101555:	40 88 3c 16          	mov    %dil,(%rsi,%rdx,1)
  101559:	f3 c3                	repz retq 
  10155b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000101560 <_out_null>:
  101560:	f3 c3                	repz retq 
  101562:	0f 1f 40 00          	nopl   0x0(%rax)
  101566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10156d:	00 00 00 

0000000000101570 <_ntoa_format>:
  101570:	41 57                	push   %r15
  101572:	41 56                	push   %r14
  101574:	4d 89 c7             	mov    %r8,%r15
  101577:	41 55                	push   %r13
  101579:	41 54                	push   %r12
  10157b:	49 89 cc             	mov    %rcx,%r12
  10157e:	55                   	push   %rbp
  10157f:	53                   	push   %rbx
  101580:	48 89 f5             	mov    %rsi,%rbp
  101583:	48 89 fb             	mov    %rdi,%rbx
  101586:	4d 89 ce             	mov    %r9,%r14
  101589:	48 83 ec 28          	sub    $0x28,%rsp
  10158d:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
  101594:	48 89 14 24          	mov    %rdx,(%rsp)
  101598:	8b 74 24 60          	mov    0x60(%rsp),%esi
  10159c:	89 c8                	mov    %ecx,%eax
  10159e:	83 e0 02             	and    $0x2,%eax
  1015a1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  1015a5:	0f 85 dd 00 00 00    	jne    101688 <_ntoa_format+0x118>
  1015ab:	8b 54 24 78          	mov    0x78(%rsp),%edx
  1015af:	85 d2                	test   %edx,%edx
  1015b1:	74 3d                	je     1015f0 <_ntoa_format+0x80>
  1015b3:	89 cf                	mov    %ecx,%edi
  1015b5:	83 e7 01             	and    $0x1,%edi
  1015b8:	0f 84 a2 02 00 00    	je     101860 <_ntoa_format+0x2f0>
  1015be:	40 84 f6             	test   %sil,%sil
  1015c1:	0f 85 e3 02 00 00    	jne    1018aa <_ntoa_format+0x33a>
  1015c7:	f6 c1 0c             	test   $0xc,%cl
  1015ca:	0f 85 da 02 00 00    	jne    1018aa <_ntoa_format+0x33a>
  1015d0:	8b 54 24 70          	mov    0x70(%rsp),%edx
  1015d4:	49 83 fe 1f          	cmp    $0x1f,%r14
  1015d8:	41 0f 96 c2          	setbe  %r10b
  1015dc:	49 39 d6             	cmp    %rdx,%r14
  1015df:	73 0a                	jae    1015eb <_ntoa_format+0x7b>
  1015e1:	45 84 d2             	test   %r10b,%r10b
  1015e4:	bf 01 00 00 00       	mov    $0x1,%edi
  1015e9:	75 26                	jne    101611 <_ntoa_format+0xa1>
  1015eb:	4c 89 f0             	mov    %r14,%rax
  1015ee:	eb 55                	jmp    101645 <_ntoa_format+0xd5>
  1015f0:	8b 54 24 70          	mov    0x70(%rsp),%edx
  1015f4:	49 39 d1             	cmp    %rdx,%r9
  1015f7:	0f 83 fa 02 00 00    	jae    1018f7 <_ntoa_format+0x387>
  1015fd:	49 83 f9 1f          	cmp    $0x1f,%r9
  101601:	89 cf                	mov    %ecx,%edi
  101603:	0f 96 c0             	setbe  %al
  101606:	83 e7 01             	and    $0x1,%edi
  101609:	84 c0                	test   %al,%al
  10160b:	0f 84 e6 02 00 00    	je     1018f7 <_ntoa_format+0x387>
  101611:	4c 89 f0             	mov    %r14,%rax
  101614:	eb 10                	jmp    101626 <_ntoa_format+0xb6>
  101616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10161d:	00 00 00 
  101620:	48 83 f8 1f          	cmp    $0x1f,%rax
  101624:	77 0f                	ja     101635 <_ntoa_format+0xc5>
  101626:	48 83 c0 01          	add    $0x1,%rax
  10162a:	48 39 d0             	cmp    %rdx,%rax
  10162d:	41 c6 44 07 ff 30    	movb   $0x30,-0x1(%r15,%rax,1)
  101633:	72 eb                	jb     101620 <_ntoa_format+0xb0>
  101635:	85 ff                	test   %edi,%edi
  101637:	0f 84 c7 02 00 00    	je     101904 <_ntoa_format+0x394>
  10163d:	48 83 f8 1f          	cmp    $0x1f,%rax
  101641:	41 0f 96 c2          	setbe  %r10b
  101645:	8b 54 24 78          	mov    0x78(%rsp),%edx
  101649:	48 39 d0             	cmp    %rdx,%rax
  10164c:	0f 83 b2 02 00 00    	jae    101904 <_ntoa_format+0x394>
  101652:	45 84 d2             	test   %r10b,%r10b
  101655:	0f 84 a9 02 00 00    	je     101904 <_ntoa_format+0x394>
  10165b:	4c 8d 70 01          	lea    0x1(%rax),%r14
  10165f:	41 c6 04 07 30       	movb   $0x30,(%r15,%rax,1)
  101664:	eb 1a                	jmp    101680 <_ntoa_format+0x110>
  101666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10166d:	00 00 00 
  101670:	49 83 fe 1f          	cmp    $0x1f,%r14
  101674:	77 12                	ja     101688 <_ntoa_format+0x118>
  101676:	49 83 c6 01          	add    $0x1,%r14
  10167a:	43 c6 44 37 ff 30    	movb   $0x30,-0x1(%r15,%r14,1)
  101680:	49 39 d6             	cmp    %rdx,%r14
  101683:	72 eb                	jb     101670 <_ntoa_format+0x100>
  101685:	0f 1f 00             	nopl   (%rax)
  101688:	f6 c1 10             	test   $0x10,%cl
  10168b:	74 3e                	je     1016cb <_ntoa_format+0x15b>
  10168d:	f6 c5 04             	test   $0x4,%ch
  101690:	0f 84 42 01 00 00    	je     1017d8 <_ntoa_format+0x268>
  101696:	49 83 fe 1f          	cmp    $0x1f,%r14
  10169a:	0f 96 c0             	setbe  %al
  10169d:	83 7c 24 68 10       	cmpl   $0x10,0x68(%rsp)
  1016a2:	0f 84 72 01 00 00    	je     10181a <_ntoa_format+0x2aa>
  1016a8:	84 c0                	test   %al,%al
  1016aa:	74 10                	je     1016bc <_ntoa_format+0x14c>
  1016ac:	83 7c 24 68 02       	cmpl   $0x2,0x68(%rsp)
  1016b1:	75 09                	jne    1016bc <_ntoa_format+0x14c>
  1016b3:	43 c6 04 37 62       	movb   $0x62,(%r15,%r14,1)
  1016b8:	49 83 c6 01          	add    $0x1,%r14
  1016bc:	49 83 fe 1f          	cmp    $0x1f,%r14
  1016c0:	77 21                	ja     1016e3 <_ntoa_format+0x173>
  1016c2:	43 c6 04 37 30       	movb   $0x30,(%r15,%r14,1)
  1016c7:	49 83 c6 01          	add    $0x1,%r14
  1016cb:	49 83 fe 1f          	cmp    $0x1f,%r14
  1016cf:	77 12                	ja     1016e3 <_ntoa_format+0x173>
  1016d1:	40 84 f6             	test   %sil,%sil
  1016d4:	0f 84 66 01 00 00    	je     101840 <_ntoa_format+0x2d0>
  1016da:	43 c6 04 37 2d       	movb   $0x2d,(%r15,%r14,1)
  1016df:	49 83 c6 01          	add    $0x1,%r14
  1016e3:	83 e1 03             	and    $0x3,%ecx
  1016e6:	0f 85 dc 00 00 00    	jne    1017c8 <_ntoa_format+0x258>
  1016ec:	8b 44 24 78          	mov    0x78(%rsp),%eax
  1016f0:	48 8b 0c 24          	mov    (%rsp),%rcx
  1016f4:	4c 89 f6             	mov    %r14,%rsi
  1016f7:	48 29 ce             	sub    %rcx,%rsi
  1016fa:	48 89 ca             	mov    %rcx,%rdx
  1016fd:	49 39 c6             	cmp    %rax,%r14
  101700:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  101705:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  10170a:	73 33                	jae    10173f <_ntoa_format+0x1cf>
  10170c:	0f 1f 40 00          	nopl   0x0(%rax)
  101710:	4c 8d 6a 01          	lea    0x1(%rdx),%r13
  101714:	4c 89 e1             	mov    %r12,%rcx
  101717:	48 89 ee             	mov    %rbp,%rsi
  10171a:	bf 20 00 00 00       	mov    $0x20,%edi
  10171f:	ff d3                	callq  *%rbx
  101721:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  101726:	4c 89 ea             	mov    %r13,%rdx
  101729:	4c 01 e8             	add    %r13,%rax
  10172c:	48 3b 44 24 08       	cmp    0x8(%rsp),%rax
  101731:	72 dd                	jb     101710 <_ntoa_format+0x1a0>
  101733:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  101738:	48 03 14 24          	add    (%rsp),%rdx
  10173c:	4c 29 f2             	sub    %r14,%rdx
  10173f:	4d 85 f6             	test   %r14,%r14
  101742:	0f 84 98 01 00 00    	je     1018e0 <_ntoa_format+0x370>
  101748:	4f 8d 2c 37          	lea    (%r15,%r14,1),%r13
  10174c:	49 01 d6             	add    %rdx,%r14
  10174f:	90                   	nop
  101750:	4c 8d 7a 01          	lea    0x1(%rdx),%r15
  101754:	41 0f be 7d ff       	movsbl -0x1(%r13),%edi
  101759:	4c 89 e1             	mov    %r12,%rcx
  10175c:	48 89 ee             	mov    %rbp,%rsi
  10175f:	49 83 ed 01          	sub    $0x1,%r13
  101763:	ff d3                	callq  *%rbx
  101765:	4d 39 f7             	cmp    %r14,%r15
  101768:	4c 89 fa             	mov    %r15,%rdx
  10176b:	75 e3                	jne    101750 <_ntoa_format+0x1e0>
  10176d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  101771:	85 c0                	test   %eax,%eax
  101773:	74 3b                	je     1017b0 <_ntoa_format+0x240>
  101775:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
  10177a:	4c 89 f0             	mov    %r14,%rax
  10177d:	48 2b 04 24          	sub    (%rsp),%rax
  101781:	4c 39 f8             	cmp    %r15,%rax
  101784:	73 2a                	jae    1017b0 <_ntoa_format+0x240>
  101786:	4c 89 f2             	mov    %r14,%rdx
  101789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  101790:	49 83 c6 01          	add    $0x1,%r14
  101794:	4c 89 e1             	mov    %r12,%rcx
  101797:	48 89 ee             	mov    %rbp,%rsi
  10179a:	bf 20 00 00 00       	mov    $0x20,%edi
  10179f:	ff d3                	callq  *%rbx
  1017a1:	4c 89 f0             	mov    %r14,%rax
  1017a4:	48 2b 04 24          	sub    (%rsp),%rax
  1017a8:	4c 89 f2             	mov    %r14,%rdx
  1017ab:	4c 39 f8             	cmp    %r15,%rax
  1017ae:	72 e0                	jb     101790 <_ntoa_format+0x220>
  1017b0:	48 83 c4 28          	add    $0x28,%rsp
  1017b4:	4c 89 f0             	mov    %r14,%rax
  1017b7:	5b                   	pop    %rbx
  1017b8:	5d                   	pop    %rbp
  1017b9:	41 5c                	pop    %r12
  1017bb:	41 5d                	pop    %r13
  1017bd:	41 5e                	pop    %r14
  1017bf:	41 5f                	pop    %r15
  1017c1:	c3                   	retq   
  1017c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  1017c8:	48 8b 14 24          	mov    (%rsp),%rdx
  1017cc:	e9 77 ff ff ff       	jmpq   101748 <_ntoa_format+0x1d8>
  1017d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1017d8:	4d 85 f6             	test   %r14,%r14
  1017db:	0f 84 bf 00 00 00    	je     1018a0 <_ntoa_format+0x330>
  1017e1:	8b 44 24 70          	mov    0x70(%rsp),%eax
  1017e5:	4c 39 f0             	cmp    %r14,%rax
  1017e8:	74 0d                	je     1017f7 <_ntoa_format+0x287>
  1017ea:	8b 44 24 78          	mov    0x78(%rsp),%eax
  1017ee:	4c 39 f0             	cmp    %r14,%rax
  1017f1:	0f 85 9f fe ff ff    	jne    101696 <_ntoa_format+0x126>
  1017f7:	4c 89 f2             	mov    %r14,%rdx
  1017fa:	48 83 ea 01          	sub    $0x1,%rdx
  1017fe:	0f 84 e4 00 00 00    	je     1018e8 <_ntoa_format+0x378>
  101804:	83 7c 24 68 10       	cmpl   $0x10,0x68(%rsp)
  101809:	0f 85 d9 00 00 00    	jne    1018e8 <_ntoa_format+0x378>
  10180f:	49 83 ee 02          	sub    $0x2,%r14
  101813:	49 83 fe 1f          	cmp    $0x1f,%r14
  101817:	0f 96 c0             	setbe  %al
  10181a:	89 ca                	mov    %ecx,%edx
  10181c:	83 e2 20             	and    $0x20,%edx
  10181f:	84 c0                	test   %al,%al
  101821:	0f 84 95 fe ff ff    	je     1016bc <_ntoa_format+0x14c>
  101827:	85 d2                	test   %edx,%edx
  101829:	0f 85 9b 00 00 00    	jne    1018ca <_ntoa_format+0x35a>
  10182f:	43 c6 04 37 78       	movb   $0x78,(%r15,%r14,1)
  101834:	49 83 c6 01          	add    $0x1,%r14
  101838:	e9 7f fe ff ff       	jmpq   1016bc <_ntoa_format+0x14c>
  10183d:	0f 1f 00             	nopl   (%rax)
  101840:	f6 c1 04             	test   $0x4,%cl
  101843:	75 3b                	jne    101880 <_ntoa_format+0x310>
  101845:	f6 c1 08             	test   $0x8,%cl
  101848:	74 6e                	je     1018b8 <_ntoa_format+0x348>
  10184a:	43 c6 04 37 20       	movb   $0x20,(%r15,%r14,1)
  10184f:	49 83 c6 01          	add    $0x1,%r14
  101853:	e9 8b fe ff ff       	jmpq   1016e3 <_ntoa_format+0x173>
  101858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10185f:	00 
  101860:	8b 54 24 70          	mov    0x70(%rsp),%edx
  101864:	49 39 d1             	cmp    %rdx,%r9
  101867:	0f 83 1b fe ff ff    	jae    101688 <_ntoa_format+0x118>
  10186d:	49 83 f9 1f          	cmp    $0x1f,%r9
  101871:	0f 86 9a fd ff ff    	jbe    101611 <_ntoa_format+0xa1>
  101877:	e9 0c fe ff ff       	jmpq   101688 <_ntoa_format+0x118>
  10187c:	0f 1f 40 00          	nopl   0x0(%rax)
  101880:	43 c6 04 37 2b       	movb   $0x2b,(%r15,%r14,1)
  101885:	49 83 c6 01          	add    $0x1,%r14
  101889:	83 e1 03             	and    $0x3,%ecx
  10188c:	0f 84 5a fe ff ff    	je     1016ec <_ntoa_format+0x17c>
  101892:	e9 31 ff ff ff       	jmpq   1017c8 <_ntoa_format+0x258>
  101897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10189e:	00 00 
  1018a0:	b8 01 00 00 00       	mov    $0x1,%eax
  1018a5:	e9 f3 fd ff ff       	jmpq   10169d <_ntoa_format+0x12d>
  1018aa:	83 6c 24 78 01       	subl   $0x1,0x78(%rsp)
  1018af:	e9 1c fd ff ff       	jmpq   1015d0 <_ntoa_format+0x60>
  1018b4:	0f 1f 40 00          	nopl   0x0(%rax)
  1018b8:	83 e1 03             	and    $0x3,%ecx
  1018bb:	48 8b 14 24          	mov    (%rsp),%rdx
  1018bf:	0f 85 7a fe ff ff    	jne    10173f <_ntoa_format+0x1cf>
  1018c5:	e9 22 fe ff ff       	jmpq   1016ec <_ntoa_format+0x17c>
  1018ca:	85 d2                	test   %edx,%edx
  1018cc:	0f 84 d6 fd ff ff    	je     1016a8 <_ntoa_format+0x138>
  1018d2:	43 c6 04 37 58       	movb   $0x58,(%r15,%r14,1)
  1018d7:	49 83 c6 01          	add    $0x1,%r14
  1018db:	e9 dc fd ff ff       	jmpq   1016bc <_ntoa_format+0x14c>
  1018e0:	49 89 d6             	mov    %rdx,%r14
  1018e3:	e9 85 fe ff ff       	jmpq   10176d <_ntoa_format+0x1fd>
  1018e8:	48 83 fa 1f          	cmp    $0x1f,%rdx
  1018ec:	49 89 d6             	mov    %rdx,%r14
  1018ef:	0f 96 c0             	setbe  %al
  1018f2:	e9 a6 fd ff ff       	jmpq   10169d <_ntoa_format+0x12d>
  1018f7:	89 cf                	mov    %ecx,%edi
  1018f9:	4c 89 f0             	mov    %r14,%rax
  1018fc:	83 e7 01             	and    $0x1,%edi
  1018ff:	e9 31 fd ff ff       	jmpq   101635 <_ntoa_format+0xc5>
  101904:	49 89 c6             	mov    %rax,%r14
  101907:	e9 7c fd ff ff       	jmpq   101688 <_ntoa_format+0x118>
  10190c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000101910 <_ntoa_long>:
  101910:	41 54                	push   %r12
  101912:	55                   	push   %rbp
  101913:	48 89 d5             	mov    %rdx,%rbp
  101916:	53                   	push   %rbx
  101917:	48 83 ec 30          	sub    $0x30,%rsp
  10191b:	48 8b 05 e6 46 00 00 	mov    0x46e6(%rip),%rax        # 106008 <__stack_chk_guard>
  101922:	4d 85 c0             	test   %r8,%r8
  101925:	4c 8b 54 24 50       	mov    0x50(%rsp),%r10
  10192a:	44 8b 64 24 68       	mov    0x68(%rsp),%r12d
  10192f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  101934:	75 5a                	jne    101990 <_ntoa_long+0x80>
  101936:	44 89 e0             	mov    %r12d,%eax
  101939:	45 31 db             	xor    %r11d,%r11d
  10193c:	41 83 e4 ef          	and    $0xffffffef,%r12d
  101940:	25 00 04 00 00       	and    $0x400,%eax
  101945:	85 c0                	test   %eax,%eax
  101947:	74 47                	je     101990 <_ntoa_long+0x80>
  101949:	48 83 ec 08          	sub    $0x8,%rsp
  10194d:	45 0f b6 c9          	movzbl %r9b,%r9d
  101951:	48 89 ea             	mov    %rbp,%rdx
  101954:	41 54                	push   %r12
  101956:	8b 44 24 70          	mov    0x70(%rsp),%eax
  10195a:	50                   	push   %rax
  10195b:	8b 44 24 70          	mov    0x70(%rsp),%eax
  10195f:	50                   	push   %rax
  101960:	41 52                	push   %r10
  101962:	41 51                	push   %r9
  101964:	4d 89 d9             	mov    %r11,%r9
  101967:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
  10196c:	e8 ff fb ff ff       	callq  101570 <_ntoa_format>
  101971:	48 83 c4 30          	add    $0x30,%rsp
  101975:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  10197a:	48 8b 15 87 46 00 00 	mov    0x4687(%rip),%rdx        # 106008 <__stack_chk_guard>
  101981:	48 39 d1             	cmp    %rdx,%rcx
  101984:	75 5a                	jne    1019e0 <_ntoa_long+0xd0>
  101986:	48 83 c4 30          	add    $0x30,%rsp
  10198a:	5b                   	pop    %rbx
  10198b:	5d                   	pop    %rbp
  10198c:	41 5c                	pop    %r12
  10198e:	c3                   	retq   
  10198f:	90                   	nop
  101990:	44 89 e3             	mov    %r12d,%ebx
  101993:	45 31 db             	xor    %r11d,%r11d
  101996:	83 e3 20             	and    $0x20,%ebx
  101999:	eb 0b                	jmp    1019a6 <_ntoa_long+0x96>
  10199b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1019a0:	49 83 fb 1f          	cmp    $0x1f,%r11
  1019a4:	77 a3                	ja     101949 <_ntoa_long+0x39>
  1019a6:	31 d2                	xor    %edx,%edx
  1019a8:	4c 89 c0             	mov    %r8,%rax
  1019ab:	49 83 c3 01          	add    $0x1,%r11
  1019af:	49 f7 f2             	div    %r10
  1019b2:	80 fa 09             	cmp    $0x9,%dl
  1019b5:	8d 42 30             	lea    0x30(%rdx),%eax
  1019b8:	7e 0c                	jle    1019c6 <_ntoa_long+0xb6>
  1019ba:	83 fb 01             	cmp    $0x1,%ebx
  1019bd:	19 c0                	sbb    %eax,%eax
  1019bf:	83 e0 20             	and    $0x20,%eax
  1019c2:	8d 44 10 37          	lea    0x37(%rax,%rdx,1),%eax
  1019c6:	31 d2                	xor    %edx,%edx
  1019c8:	42 88 44 1c 07       	mov    %al,0x7(%rsp,%r11,1)
  1019cd:	4c 89 c0             	mov    %r8,%rax
  1019d0:	49 f7 f2             	div    %r10
  1019d3:	48 85 c0             	test   %rax,%rax
  1019d6:	49 89 c0             	mov    %rax,%r8
  1019d9:	75 c5                	jne    1019a0 <_ntoa_long+0x90>
  1019db:	e9 69 ff ff ff       	jmpq   101949 <_ntoa_long+0x39>
  1019e0:	e8 4b fb ff ff       	callq  101530 <__stack_chk_fail>
  1019e5:	90                   	nop
  1019e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1019ed:	00 00 00 

00000000001019f0 <_ntoa_long_long>:
  1019f0:	41 54                	push   %r12
  1019f2:	55                   	push   %rbp
  1019f3:	48 89 d5             	mov    %rdx,%rbp
  1019f6:	53                   	push   %rbx
  1019f7:	48 83 ec 30          	sub    $0x30,%rsp
  1019fb:	48 8b 05 06 46 00 00 	mov    0x4606(%rip),%rax        # 106008 <__stack_chk_guard>
  101a02:	4d 85 c0             	test   %r8,%r8
  101a05:	4c 8b 54 24 50       	mov    0x50(%rsp),%r10
  101a0a:	44 8b 64 24 68       	mov    0x68(%rsp),%r12d
  101a0f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  101a14:	75 5a                	jne    101a70 <_ntoa_long_long+0x80>
  101a16:	44 89 e0             	mov    %r12d,%eax
  101a19:	45 31 db             	xor    %r11d,%r11d
  101a1c:	41 83 e4 ef          	and    $0xffffffef,%r12d
  101a20:	25 00 04 00 00       	and    $0x400,%eax
  101a25:	85 c0                	test   %eax,%eax
  101a27:	74 47                	je     101a70 <_ntoa_long_long+0x80>
  101a29:	48 83 ec 08          	sub    $0x8,%rsp
  101a2d:	45 0f b6 c9          	movzbl %r9b,%r9d
  101a31:	48 89 ea             	mov    %rbp,%rdx
  101a34:	41 54                	push   %r12
  101a36:	8b 44 24 70          	mov    0x70(%rsp),%eax
  101a3a:	50                   	push   %rax
  101a3b:	8b 44 24 70          	mov    0x70(%rsp),%eax
  101a3f:	50                   	push   %rax
  101a40:	41 52                	push   %r10
  101a42:	41 51                	push   %r9
  101a44:	4d 89 d9             	mov    %r11,%r9
  101a47:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
  101a4c:	e8 1f fb ff ff       	callq  101570 <_ntoa_format>
  101a51:	48 83 c4 30          	add    $0x30,%rsp
  101a55:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  101a5a:	48 8b 15 a7 45 00 00 	mov    0x45a7(%rip),%rdx        # 106008 <__stack_chk_guard>
  101a61:	48 39 d1             	cmp    %rdx,%rcx
  101a64:	75 5a                	jne    101ac0 <_ntoa_long_long+0xd0>
  101a66:	48 83 c4 30          	add    $0x30,%rsp
  101a6a:	5b                   	pop    %rbx
  101a6b:	5d                   	pop    %rbp
  101a6c:	41 5c                	pop    %r12
  101a6e:	c3                   	retq   
  101a6f:	90                   	nop
  101a70:	44 89 e3             	mov    %r12d,%ebx
  101a73:	45 31 db             	xor    %r11d,%r11d
  101a76:	83 e3 20             	and    $0x20,%ebx
  101a79:	eb 0b                	jmp    101a86 <_ntoa_long_long+0x96>
  101a7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  101a80:	49 83 fb 1f          	cmp    $0x1f,%r11
  101a84:	77 a3                	ja     101a29 <_ntoa_long_long+0x39>
  101a86:	31 d2                	xor    %edx,%edx
  101a88:	4c 89 c0             	mov    %r8,%rax
  101a8b:	49 83 c3 01          	add    $0x1,%r11
  101a8f:	49 f7 f2             	div    %r10
  101a92:	80 fa 09             	cmp    $0x9,%dl
  101a95:	8d 42 30             	lea    0x30(%rdx),%eax
  101a98:	7e 0c                	jle    101aa6 <_ntoa_long_long+0xb6>
  101a9a:	83 fb 01             	cmp    $0x1,%ebx
  101a9d:	19 c0                	sbb    %eax,%eax
  101a9f:	83 e0 20             	and    $0x20,%eax
  101aa2:	8d 44 10 37          	lea    0x37(%rax,%rdx,1),%eax
  101aa6:	31 d2                	xor    %edx,%edx
  101aa8:	42 88 44 1c 07       	mov    %al,0x7(%rsp,%r11,1)
  101aad:	4c 89 c0             	mov    %r8,%rax
  101ab0:	49 f7 f2             	div    %r10
  101ab3:	48 85 c0             	test   %rax,%rax
  101ab6:	49 89 c0             	mov    %rax,%r8
  101ab9:	75 c5                	jne    101a80 <_ntoa_long_long+0x90>
  101abb:	e9 69 ff ff ff       	jmpq   101a29 <_ntoa_long_long+0x39>
  101ac0:	e8 6b fa ff ff       	callq  101530 <__stack_chk_fail>
  101ac5:	90                   	nop
  101ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  101acd:	00 00 00 

0000000000101ad0 <_vsnprintf.constprop.0>:
  101ad0:	41 57                	push   %r15
  101ad2:	41 56                	push   %r14
  101ad4:	b8 60 15 10 00       	mov    $0x101560,%eax
  101ad9:	41 55                	push   %r13
  101adb:	41 54                	push   %r12
  101add:	41 bc 50 15 10 00    	mov    $0x101550,%r12d
  101ae3:	55                   	push   %rbp
  101ae4:	53                   	push   %rbx
  101ae5:	48 89 d3             	mov    %rdx,%rbx
  101ae8:	48 83 ec 48          	sub    $0x48,%rsp
  101aec:	48 85 ff             	test   %rdi,%rdi
  101aef:	4c 0f 44 e0          	cmove  %rax,%r12
  101af3:	45 31 ff             	xor    %r15d,%r15d
  101af6:	48 89 3c 24          	mov    %rdi,(%rsp)
  101afa:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  101aff:	4d 89 fe             	mov    %r15,%r14
  101b02:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  101b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  101b0e:	00 00 
  101b10:	0f be 3b             	movsbl (%rbx),%edi
  101b13:	40 84 ff             	test   %dil,%dil
  101b16:	74 28                	je     101b40 <_vsnprintf.constprop.0+0x70>
  101b18:	40 80 ff 25          	cmp    $0x25,%dil
  101b1c:	74 52                	je     101b70 <_vsnprintf.constprop.0+0xa0>
  101b1e:	48 83 c3 01          	add    $0x1,%rbx
  101b22:	4c 89 f2             	mov    %r14,%rdx
  101b25:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  101b2a:	48 8b 34 24          	mov    (%rsp),%rsi
  101b2e:	49 8d 6e 01          	lea    0x1(%r14),%rbp
  101b32:	41 ff d4             	callq  *%r12
  101b35:	0f be 3b             	movsbl (%rbx),%edi
  101b38:	49 89 ee             	mov    %rbp,%r14
  101b3b:	40 84 ff             	test   %dil,%dil
  101b3e:	75 d8                	jne    101b18 <_vsnprintf.constprop.0+0x48>
  101b40:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  101b45:	48 8b 34 24          	mov    (%rsp),%rsi
  101b49:	49 8d 55 ff          	lea    -0x1(%r13),%rdx
  101b4d:	4d 39 f5             	cmp    %r14,%r13
  101b50:	4c 89 e9             	mov    %r13,%rcx
  101b53:	49 0f 47 d6          	cmova  %r14,%rdx
  101b57:	31 ff                	xor    %edi,%edi
  101b59:	41 ff d4             	callq  *%r12
  101b5c:	48 83 c4 48          	add    $0x48,%rsp
  101b60:	44 89 f0             	mov    %r14d,%eax
  101b63:	5b                   	pop    %rbx
  101b64:	5d                   	pop    %rbp
  101b65:	41 5c                	pop    %r12
  101b67:	41 5d                	pop    %r13
  101b69:	41 5e                	pop    %r14
  101b6b:	41 5f                	pop    %r15
  101b6d:	c3                   	retq   
  101b6e:	66 90                	xchg   %ax,%ax
  101b70:	48 8d 53 02          	lea    0x2(%rbx),%rdx
  101b74:	0f be 72 ff          	movsbl -0x1(%rdx),%esi
  101b78:	31 db                	xor    %ebx,%ebx
  101b7a:	4c 8d 6a ff          	lea    -0x1(%rdx),%r13
  101b7e:	8d 46 e0             	lea    -0x20(%rsi),%eax
  101b81:	3c 10                	cmp    $0x10,%al
  101b83:	77 29                	ja     101bae <_vsnprintf.constprop.0+0xde>
  101b85:	0f 1f 00             	nopl   (%rax)
  101b88:	0f b6 c0             	movzbl %al,%eax
  101b8b:	ff 24 c5 f0 41 10 00 	jmpq   *0x1041f0(,%rax,8)
  101b92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  101b98:	83 cb 01             	or     $0x1,%ebx
  101b9b:	48 83 c2 01          	add    $0x1,%rdx
  101b9f:	0f be 72 ff          	movsbl -0x1(%rdx),%esi
  101ba3:	4c 8d 6a ff          	lea    -0x1(%rdx),%r13
  101ba7:	8d 46 e0             	lea    -0x20(%rsi),%eax
  101baa:	3c 10                	cmp    $0x10,%al
  101bac:	76 da                	jbe    101b88 <_vsnprintf.constprop.0+0xb8>
  101bae:	8d 56 d0             	lea    -0x30(%rsi),%edx
  101bb1:	4c 89 e9             	mov    %r13,%rcx
  101bb4:	80 fa 09             	cmp    $0x9,%dl
  101bb7:	0f 87 0b 05 00 00    	ja     1020c8 <_vsnprintf.constprop.0+0x5f8>
  101bbd:	45 31 ff             	xor    %r15d,%r15d
  101bc0:	43 8d 04 bf          	lea    (%r15,%r15,4),%eax
  101bc4:	49 83 c5 01          	add    $0x1,%r13
  101bc8:	44 8d 7c 46 d0       	lea    -0x30(%rsi,%rax,2),%r15d
  101bcd:	41 0f be 75 00       	movsbl 0x0(%r13),%esi
  101bd2:	8d 46 d0             	lea    -0x30(%rsi),%eax
  101bd5:	3c 09                	cmp    $0x9,%al
  101bd7:	76 e7                	jbe    101bc0 <_vsnprintf.constprop.0+0xf0>
  101bd9:	45 31 db             	xor    %r11d,%r11d
  101bdc:	40 80 fe 2e          	cmp    $0x2e,%sil
  101be0:	0f 84 32 05 00 00    	je     102118 <_vsnprintf.constprop.0+0x648>
  101be6:	8d 56 98             	lea    -0x68(%rsi),%edx
  101be9:	80 fa 12             	cmp    $0x12,%dl
  101bec:	77 3e                	ja     101c2c <_vsnprintf.constprop.0+0x15c>
  101bee:	0f b6 d2             	movzbl %dl,%edx
  101bf1:	ff 24 d5 78 42 10 00 	jmpq   *0x104278(,%rdx,8)
  101bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  101bff:	00 
  101c00:	83 cb 02             	or     $0x2,%ebx
  101c03:	eb 96                	jmp    101b9b <_vsnprintf.constprop.0+0xcb>
  101c05:	0f 1f 00             	nopl   (%rax)
  101c08:	83 cb 04             	or     $0x4,%ebx
  101c0b:	eb 8e                	jmp    101b9b <_vsnprintf.constprop.0+0xcb>
  101c0d:	0f 1f 00             	nopl   (%rax)
  101c10:	83 cb 10             	or     $0x10,%ebx
  101c13:	eb 86                	jmp    101b9b <_vsnprintf.constprop.0+0xcb>
  101c15:	0f 1f 00             	nopl   (%rax)
  101c18:	83 cb 08             	or     $0x8,%ebx
  101c1b:	e9 7b ff ff ff       	jmpq   101b9b <_vsnprintf.constprop.0+0xcb>
  101c20:	41 0f b6 75 01       	movzbl 0x1(%r13),%esi
  101c25:	80 cf 01             	or     $0x1,%bh
  101c28:	49 83 c5 01          	add    $0x1,%r13
  101c2c:	8d 56 db             	lea    -0x25(%rsi),%edx
  101c2f:	80 fa 53             	cmp    $0x53,%dl
  101c32:	0f 87 48 04 00 00    	ja     102080 <_vsnprintf.constprop.0+0x5b0>
  101c38:	0f b6 d2             	movzbl %dl,%edx
  101c3b:	ff 24 d5 10 43 10 00 	jmpq   *0x104310(,%rdx,8)
  101c42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  101c48:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  101c4d:	8b 10                	mov    (%rax),%edx
  101c4f:	83 fa 2f             	cmp    $0x2f,%edx
  101c52:	0f 86 50 05 00 00    	jbe    1021a8 <_vsnprintf.constprop.0+0x6d8>
  101c58:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  101c5d:	45 85 db             	test   %r11d,%r11d
  101c60:	48 8b 48 08          	mov    0x8(%rax),%rcx
  101c64:	48 8d 51 08          	lea    0x8(%rcx),%rdx
  101c68:	48 89 50 08          	mov    %rdx,0x8(%rax)
  101c6c:	4c 8b 09             	mov    (%rcx),%r9
  101c6f:	0f 84 4a 05 00 00    	je     1021bf <_vsnprintf.constprop.0+0x6ef>
  101c75:	41 80 39 00          	cmpb   $0x0,(%r9)
  101c79:	44 89 d9             	mov    %r11d,%ecx
  101c7c:	0f 84 4e 05 00 00    	je     1021d0 <_vsnprintf.constprop.0+0x700>
  101c82:	48 83 e9 01          	sub    $0x1,%rcx
  101c86:	4c 89 cd             	mov    %r9,%rbp
  101c89:	eb 15                	jmp    101ca0 <_vsnprintf.constprop.0+0x1d0>
  101c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  101c90:	b8 01 00 00 00       	mov    $0x1,%eax
  101c95:	48 29 e8             	sub    %rbp,%rax
  101c98:	48 01 c8             	add    %rcx,%rax
  101c9b:	4c 01 c8             	add    %r9,%rax
  101c9e:	74 0a                	je     101caa <_vsnprintf.constprop.0+0x1da>
  101ca0:	48 83 c5 01          	add    $0x1,%rbp
  101ca4:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
  101ca8:	75 e6                	jne    101c90 <_vsnprintf.constprop.0+0x1c0>
  101caa:	89 e8                	mov    %ebp,%eax
  101cac:	44 29 c8             	sub    %r9d,%eax
  101caf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  101cb3:	89 dd                	mov    %ebx,%ebp
  101cb5:	81 e5 00 04 00 00    	and    $0x400,%ebp
  101cbb:	74 0f                	je     101ccc <_vsnprintf.constprop.0+0x1fc>
  101cbd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  101cc1:	44 39 d8             	cmp    %r11d,%eax
  101cc4:	41 0f 47 c3          	cmova  %r11d,%eax
  101cc8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  101ccc:	83 e3 02             	and    $0x2,%ebx
  101ccf:	89 5c 24 20          	mov    %ebx,0x20(%rsp)
  101cd3:	0f 85 92 05 00 00    	jne    10226b <_vsnprintf.constprop.0+0x79b>
  101cd9:	8b 4c 24 18          	mov    0x18(%rsp),%ecx
  101cdd:	41 39 cf             	cmp    %ecx,%r15d
  101ce0:	8d 51 01             	lea    0x1(%rcx),%edx
  101ce3:	0f 86 28 08 00 00    	jbe    102511 <_vsnprintf.constprop.0+0xa41>
  101ce9:	41 8d 47 ff          	lea    -0x1(%r15),%eax
  101ced:	49 8d 5e 01          	lea    0x1(%r14),%rbx
  101cf1:	4c 89 f2             	mov    %r14,%rdx
  101cf4:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
  101cf9:	89 6c 24 3c          	mov    %ebp,0x3c(%rsp)
  101cfd:	29 c8                	sub    %ecx,%eax
  101cff:	48 89 dd             	mov    %rbx,%rbp
  101d02:	44 89 5c 24 38       	mov    %r11d,0x38(%rsp)
  101d07:	48 01 d8             	add    %rbx,%rax
  101d0a:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
  101d0f:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
  101d14:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  101d19:	49 89 c5             	mov    %rax,%r13
  101d1c:	48 8b 1c 24          	mov    (%rsp),%rbx
  101d20:	eb 0a                	jmp    101d2c <_vsnprintf.constprop.0+0x25c>
  101d22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  101d28:	48 83 c5 01          	add    $0x1,%rbp
  101d2c:	4c 89 f1             	mov    %r14,%rcx
  101d2f:	48 89 de             	mov    %rbx,%rsi
  101d32:	bf 20 00 00 00       	mov    $0x20,%edi
  101d37:	41 ff d4             	callq  *%r12
  101d3a:	4c 39 ed             	cmp    %r13,%rbp
  101d3d:	48 89 ea             	mov    %rbp,%rdx
  101d40:	75 e6                	jne    101d28 <_vsnprintf.constprop.0+0x258>
  101d42:	41 8d 47 01          	lea    0x1(%r15),%eax
  101d46:	44 8b 5c 24 38       	mov    0x38(%rsp),%r11d
  101d4b:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  101d50:	8b 6c 24 3c          	mov    0x3c(%rsp),%ebp
  101d54:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
  101d59:	89 44 24 18          	mov    %eax,0x18(%rsp)
  101d5d:	41 0f be 39          	movsbl (%r9),%edi
  101d61:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  101d66:	40 84 ff             	test   %dil,%dil
  101d69:	0f 84 b1 00 00 00    	je     101e20 <_vsnprintf.constprop.0+0x350>
  101d6f:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  101d74:	44 89 7c 24 38       	mov    %r15d,0x38(%rsp)
  101d79:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
  101d7e:	45 89 dd             	mov    %r11d,%r13d
  101d81:	49 29 d9             	sub    %rbx,%r9
  101d84:	49 89 df             	mov    %rbx,%r15
  101d87:	4c 89 cb             	mov    %r9,%rbx
  101d8a:	eb 07                	jmp    101d93 <_vsnprintf.constprop.0+0x2c3>
  101d8c:	0f 1f 40 00          	nopl   0x0(%rax)
  101d90:	4d 89 f7             	mov    %r14,%r15
  101d93:	85 ed                	test   %ebp,%ebp
  101d95:	74 10                	je     101da7 <_vsnprintf.constprop.0+0x2d7>
  101d97:	45 85 ed             	test   %r13d,%r13d
  101d9a:	41 8d 55 ff          	lea    -0x1(%r13),%edx
  101d9e:	0f 84 e4 04 00 00    	je     102288 <_vsnprintf.constprop.0+0x7b8>
  101da4:	41 89 d5             	mov    %edx,%r13d
  101da7:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  101dac:	4c 89 fa             	mov    %r15,%rdx
  101daf:	48 8b 34 24          	mov    (%rsp),%rsi
  101db3:	41 ff d4             	callq  *%r12
  101db6:	41 0f be 7c 1f 01    	movsbl 0x1(%r15,%rbx,1),%edi
  101dbc:	4d 8d 77 01          	lea    0x1(%r15),%r14
  101dc0:	40 84 ff             	test   %dil,%dil
  101dc3:	75 cb                	jne    101d90 <_vsnprintf.constprop.0+0x2c0>
  101dc5:	4c 8b 6c 24 28       	mov    0x28(%rsp),%r13
  101dca:	44 8b 7c 24 38       	mov    0x38(%rsp),%r15d
  101dcf:	8b 44 24 20          	mov    0x20(%rsp),%eax
  101dd3:	85 c0                	test   %eax,%eax
  101dd5:	74 49                	je     101e20 <_vsnprintf.constprop.0+0x350>
  101dd7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  101ddb:	41 39 c7             	cmp    %eax,%r15d
  101dde:	76 40                	jbe    101e20 <_vsnprintf.constprop.0+0x350>
  101de0:	49 8d 5e 01          	lea    0x1(%r14),%rbx
  101de4:	41 83 ef 01          	sub    $0x1,%r15d
  101de8:	4c 89 f2             	mov    %r14,%rdx
  101deb:	41 29 c7             	sub    %eax,%r15d
  101dee:	4d 89 ee             	mov    %r13,%r14
  101df1:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  101df6:	4a 8d 2c 3b          	lea    (%rbx,%r15,1),%rbp
  101dfa:	4c 8b 3c 24          	mov    (%rsp),%r15
  101dfe:	eb 04                	jmp    101e04 <_vsnprintf.constprop.0+0x334>
  101e00:	48 83 c3 01          	add    $0x1,%rbx
  101e04:	4c 89 e9             	mov    %r13,%rcx
  101e07:	4c 89 fe             	mov    %r15,%rsi
  101e0a:	bf 20 00 00 00       	mov    $0x20,%edi
  101e0f:	41 ff d4             	callq  *%r12
  101e12:	48 39 eb             	cmp    %rbp,%rbx
  101e15:	48 89 da             	mov    %rbx,%rdx
  101e18:	75 e6                	jne    101e00 <_vsnprintf.constprop.0+0x330>
  101e1a:	4d 89 f5             	mov    %r14,%r13
  101e1d:	49 89 de             	mov    %rbx,%r14
  101e20:	49 8d 5d 01          	lea    0x1(%r13),%rbx
  101e24:	e9 e7 fc ff ff       	jmpq   101b10 <_vsnprintf.constprop.0+0x40>
  101e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  101e30:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  101e35:	83 cb 21             	or     $0x21,%ebx
  101e38:	8b 10                	mov    (%rax),%edx
  101e3a:	83 fa 2f             	cmp    $0x2f,%edx
  101e3d:	0f 87 4f 03 00 00    	ja     102192 <_vsnprintf.constprop.0+0x6c2>
  101e43:	89 d1                	mov    %edx,%ecx
  101e45:	48 03 48 10          	add    0x10(%rax),%rcx
  101e49:	83 c2 08             	add    $0x8,%edx
  101e4c:	89 10                	mov    %edx,(%rax)
  101e4e:	53                   	push   %rbx
  101e4f:	6a 10                	pushq  $0x10
  101e51:	4c 89 f2             	mov    %r14,%rdx
  101e54:	41 53                	push   %r11
  101e56:	6a 10                	pushq  $0x10
  101e58:	45 31 c9             	xor    %r9d,%r9d
  101e5b:	4c 8b 01             	mov    (%rcx),%r8
  101e5e:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  101e63:	4c 89 e7             	mov    %r12,%rdi
  101e66:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  101e6b:	49 8d 5d 01          	lea    0x1(%r13),%rbx
  101e6f:	e8 7c fb ff ff       	callq  1019f0 <_ntoa_long_long>
  101e74:	48 83 c4 20          	add    $0x20,%rsp
  101e78:	49 89 c6             	mov    %rax,%r14
  101e7b:	e9 90 fc ff ff       	jmpq   101b10 <_vsnprintf.constprop.0+0x40>
  101e80:	83 e3 02             	and    $0x2,%ebx
  101e83:	b8 01 00 00 00       	mov    $0x1,%eax
  101e88:	89 5c 24 18          	mov    %ebx,0x18(%rsp)
  101e8c:	75 55                	jne    101ee3 <_vsnprintf.constprop.0+0x413>
  101e8e:	41 83 ff 01          	cmp    $0x1,%r15d
  101e92:	0f 86 6f 06 00 00    	jbe    102507 <_vsnprintf.constprop.0+0xa37>
  101e98:	49 8d 5e 01          	lea    0x1(%r14),%rbx
  101e9c:	41 8d 6f fe          	lea    -0x2(%r15),%ebp
  101ea0:	4c 89 f2             	mov    %r14,%rdx
  101ea3:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  101ea8:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  101ead:	48 01 dd             	add    %rbx,%rbp
  101eb0:	49 89 de             	mov    %rbx,%r14
  101eb3:	48 8b 1c 24          	mov    (%rsp),%rbx
  101eb7:	eb 0b                	jmp    101ec4 <_vsnprintf.constprop.0+0x3f4>
  101eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  101ec0:	49 83 c6 01          	add    $0x1,%r14
  101ec4:	4c 89 e9             	mov    %r13,%rcx
  101ec7:	48 89 de             	mov    %rbx,%rsi
  101eca:	bf 20 00 00 00       	mov    $0x20,%edi
  101ecf:	41 ff d4             	callq  *%r12
  101ed2:	49 39 ee             	cmp    %rbp,%r14
  101ed5:	4c 89 f2             	mov    %r14,%rdx
  101ed8:	75 e6                	jne    101ec0 <_vsnprintf.constprop.0+0x3f0>
  101eda:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  101edf:	41 8d 47 01          	lea    0x1(%r15),%eax
  101ee3:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  101ee8:	49 8d 6e 01          	lea    0x1(%r14),%rbp
  101eec:	8b 11                	mov    (%rcx),%edx
  101eee:	83 fa 2f             	cmp    $0x2f,%edx
  101ef1:	0f 87 6b 02 00 00    	ja     102162 <_vsnprintf.constprop.0+0x692>
  101ef7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  101efc:	89 d1                	mov    %edx,%ecx
  101efe:	83 c2 08             	add    $0x8,%edx
  101f01:	48 03 4f 10          	add    0x10(%rdi),%rcx
  101f05:	89 17                	mov    %edx,(%rdi)
  101f07:	0f be 39             	movsbl (%rcx),%edi
  101f0a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  101f0e:	4c 89 f2             	mov    %r14,%rdx
  101f11:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  101f16:	48 8b 34 24          	mov    (%rsp),%rsi
  101f1a:	41 ff d4             	callq  *%r12
  101f1d:	8b 54 24 18          	mov    0x18(%rsp),%edx
  101f21:	8b 44 24 20          	mov    0x20(%rsp),%eax
  101f25:	85 d2                	test   %edx,%edx
  101f27:	0f 84 6a 01 00 00    	je     102097 <_vsnprintf.constprop.0+0x5c7>
  101f2d:	41 39 c7             	cmp    %eax,%r15d
  101f30:	0f 86 61 01 00 00    	jbe    102097 <_vsnprintf.constprop.0+0x5c7>
  101f36:	41 8d 57 ff          	lea    -0x1(%r15),%edx
  101f3a:	49 83 c6 02          	add    $0x2,%r14
  101f3e:	4c 8b 3c 24          	mov    (%rsp),%r15
  101f42:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  101f47:	89 d1                	mov    %edx,%ecx
  101f49:	48 89 ea             	mov    %rbp,%rdx
  101f4c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  101f51:	29 c1                	sub    %eax,%ecx
  101f53:	49 8d 1c 0e          	lea    (%r14,%rcx,1),%rbx
  101f57:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  101f5c:	0f 1f 40 00          	nopl   0x0(%rax)
  101f60:	4c 8d 6a 01          	lea    0x1(%rdx),%r13
  101f64:	48 89 e9             	mov    %rbp,%rcx
  101f67:	4c 89 fe             	mov    %r15,%rsi
  101f6a:	bf 20 00 00 00       	mov    $0x20,%edi
  101f6f:	41 ff d4             	callq  *%r12
  101f72:	49 39 dd             	cmp    %rbx,%r13
  101f75:	4c 89 ea             	mov    %r13,%rdx
  101f78:	75 e6                	jne    101f60 <_vsnprintf.constprop.0+0x490>
  101f7a:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  101f7f:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  101f84:	4c 01 f5             	add    %r14,%rbp
  101f87:	e9 0b 01 00 00       	jmpq   102097 <_vsnprintf.constprop.0+0x5c7>
  101f8c:	0f 1f 40 00          	nopl   0x0(%rax)
  101f90:	89 f2                	mov    %esi,%edx
  101f92:	83 e2 df             	and    $0xffffffdf,%edx
  101f95:	80 fa 58             	cmp    $0x58,%dl
  101f98:	0f 84 da 01 00 00    	je     102178 <_vsnprintf.constprop.0+0x6a8>
  101f9e:	40 80 fe 6f          	cmp    $0x6f,%sil
  101fa2:	0f 84 42 04 00 00    	je     1023ea <_vsnprintf.constprop.0+0x91a>
  101fa8:	40 80 fe 62          	cmp    $0x62,%sil
  101fac:	0f 84 55 04 00 00    	je     102407 <_vsnprintf.constprop.0+0x937>
  101fb2:	83 e3 ef             	and    $0xffffffef,%ebx
  101fb5:	40 80 fe 58          	cmp    $0x58,%sil
  101fb9:	b9 0a 00 00 00       	mov    $0xa,%ecx
  101fbe:	0f 84 c3 01 00 00    	je     102187 <_vsnprintf.constprop.0+0x6b7>
  101fc4:	40 80 fe 64          	cmp    $0x64,%sil
  101fc8:	74 0a                	je     101fd4 <_vsnprintf.constprop.0+0x504>
  101fca:	40 80 fe 69          	cmp    $0x69,%sil
  101fce:	0f 85 b6 01 00 00    	jne    10218a <_vsnprintf.constprop.0+0x6ba>
  101fd4:	89 da                	mov    %ebx,%edx
  101fd6:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  101fdb:	83 e2 fe             	and    $0xfffffffe,%edx
  101fde:	f6 c7 04             	test   $0x4,%bh
  101fe1:	0f 45 da             	cmovne %edx,%ebx
  101fe4:	40 80 fe 64          	cmp    $0x64,%sil
  101fe8:	0f 84 1a 02 00 00    	je     102208 <_vsnprintf.constprop.0+0x738>
  101fee:	40 80 fe 69          	cmp    $0x69,%sil
  101ff2:	0f 84 10 02 00 00    	je     102208 <_vsnprintf.constprop.0+0x738>
  101ff8:	f6 c7 02             	test   $0x2,%bh
  101ffb:	0f 84 be 02 00 00    	je     1022bf <_vsnprintf.constprop.0+0x7ef>
  102001:	8b 10                	mov    (%rax),%edx
  102003:	83 fa 2f             	cmp    $0x2f,%edx
  102006:	0f 87 95 03 00 00    	ja     1023a1 <_vsnprintf.constprop.0+0x8d1>
  10200c:	89 d6                	mov    %edx,%esi
  10200e:	48 03 70 10          	add    0x10(%rax),%rsi
  102012:	83 c2 08             	add    $0x8,%edx
  102015:	89 10                	mov    %edx,(%rax)
  102017:	53                   	push   %rbx
  102018:	45 31 c9             	xor    %r9d,%r9d
  10201b:	41 57                	push   %r15
  10201d:	41 53                	push   %r11
  10201f:	51                   	push   %rcx
  102020:	4c 8b 06             	mov    (%rsi),%r8
  102023:	e9 22 02 00 00       	jmpq   10224a <_vsnprintf.constprop.0+0x77a>
  102028:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10202f:	00 
  102030:	49 8d 6e 01          	lea    0x1(%r14),%rbp
  102034:	4c 89 f2             	mov    %r14,%rdx
  102037:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  10203c:	48 8b 34 24          	mov    (%rsp),%rsi
  102040:	bf 25 00 00 00       	mov    $0x25,%edi
  102045:	49 8d 5d 01          	lea    0x1(%r13),%rbx
  102049:	41 ff d4             	callq  *%r12
  10204c:	49 89 ee             	mov    %rbp,%r14
  10204f:	e9 bc fa ff ff       	jmpq   101b10 <_vsnprintf.constprop.0+0x40>
  102054:	0f 1f 40 00          	nopl   0x0(%rax)
  102058:	41 0f b6 75 01       	movzbl 0x1(%r13),%esi
  10205d:	40 80 fe 6c          	cmp    $0x6c,%sil
  102061:	0f 84 47 02 00 00    	je     1022ae <_vsnprintf.constprop.0+0x7de>
  102067:	8d 56 db             	lea    -0x25(%rsi),%edx
  10206a:	80 cf 01             	or     $0x1,%bh
  10206d:	49 83 c5 01          	add    $0x1,%r13
  102071:	80 fa 53             	cmp    $0x53,%dl
  102074:	0f 86 be fb ff ff    	jbe    101c38 <_vsnprintf.constprop.0+0x168>
  10207a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  102080:	40 0f be fe          	movsbl %sil,%edi
  102084:	49 8d 6e 01          	lea    0x1(%r14),%rbp
  102088:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  10208d:	4c 89 f2             	mov    %r14,%rdx
  102090:	48 8b 34 24          	mov    (%rsp),%rsi
  102094:	41 ff d4             	callq  *%r12
  102097:	49 8d 5d 01          	lea    0x1(%r13),%rbx
  10209b:	49 89 ee             	mov    %rbp,%r14
  10209e:	e9 6d fa ff ff       	jmpq   101b10 <_vsnprintf.constprop.0+0x40>
  1020a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1020a8:	41 0f b6 75 01       	movzbl 0x1(%r13),%esi
  1020ad:	40 80 fe 68          	cmp    $0x68,%sil
  1020b1:	0f 84 e6 01 00 00    	je     10229d <_vsnprintf.constprop.0+0x7cd>
  1020b7:	80 cb 80             	or     $0x80,%bl
  1020ba:	49 83 c5 01          	add    $0x1,%r13
  1020be:	e9 69 fb ff ff       	jmpq   101c2c <_vsnprintf.constprop.0+0x15c>
  1020c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1020c8:	45 31 ff             	xor    %r15d,%r15d
  1020cb:	40 80 fe 2a          	cmp    $0x2a,%sil
  1020cf:	0f 85 04 fb ff ff    	jne    101bd9 <_vsnprintf.constprop.0+0x109>
  1020d5:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1020da:	8b 10                	mov    (%rax),%edx
  1020dc:	83 fa 2f             	cmp    $0x2f,%edx
  1020df:	0f 87 fb 00 00 00    	ja     1021e0 <_vsnprintf.constprop.0+0x710>
  1020e5:	89 d6                	mov    %edx,%esi
  1020e7:	48 03 70 10          	add    0x10(%rax),%rsi
  1020eb:	83 c2 08             	add    $0x8,%edx
  1020ee:	89 10                	mov    %edx,(%rax)
  1020f0:	44 8b 3e             	mov    (%rsi),%r15d
  1020f3:	45 85 ff             	test   %r15d,%r15d
  1020f6:	0f 88 01 01 00 00    	js     1021fd <_vsnprintf.constprop.0+0x72d>
  1020fc:	0f b6 71 01          	movzbl 0x1(%rcx),%esi
  102100:	49 83 c5 01          	add    $0x1,%r13
  102104:	45 31 db             	xor    %r11d,%r11d
  102107:	40 80 fe 2e          	cmp    $0x2e,%sil
  10210b:	0f 85 d5 fa ff ff    	jne    101be6 <_vsnprintf.constprop.0+0x116>
  102111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102118:	41 0f be 75 01       	movsbl 0x1(%r13),%esi
  10211d:	80 cf 04             	or     $0x4,%bh
  102120:	49 8d 4d 01          	lea    0x1(%r13),%rcx
  102124:	8d 56 d0             	lea    -0x30(%rsi),%edx
  102127:	80 fa 09             	cmp    $0x9,%dl
  10212a:	77 24                	ja     102150 <_vsnprintf.constprop.0+0x680>
  10212c:	49 89 cd             	mov    %rcx,%r13
  10212f:	90                   	nop
  102130:	43 8d 04 9b          	lea    (%r11,%r11,4),%eax
  102134:	49 83 c5 01          	add    $0x1,%r13
  102138:	44 8d 5c 46 d0       	lea    -0x30(%rsi,%rax,2),%r11d
  10213d:	41 0f be 75 00       	movsbl 0x0(%r13),%esi
  102142:	8d 46 d0             	lea    -0x30(%rsi),%eax
  102145:	3c 09                	cmp    $0x9,%al
  102147:	76 e7                	jbe    102130 <_vsnprintf.constprop.0+0x660>
  102149:	e9 98 fa ff ff       	jmpq   101be6 <_vsnprintf.constprop.0+0x116>
  10214e:	66 90                	xchg   %ax,%ax
  102150:	40 80 fe 2a          	cmp    $0x2a,%sil
  102154:	0f 84 5d 02 00 00    	je     1023b7 <_vsnprintf.constprop.0+0x8e7>
  10215a:	49 89 cd             	mov    %rcx,%r13
  10215d:	e9 84 fa ff ff       	jmpq   101be6 <_vsnprintf.constprop.0+0x116>
  102162:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  102167:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  10216b:	48 8d 51 08          	lea    0x8(%rcx),%rdx
  10216f:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  102173:	e9 8f fd ff ff       	jmpq   101f07 <_vsnprintf.constprop.0+0x437>
  102178:	40 80 fe 58          	cmp    $0x58,%sil
  10217c:	b9 10 00 00 00       	mov    $0x10,%ecx
  102181:	0f 85 3d fe ff ff    	jne    101fc4 <_vsnprintf.constprop.0+0x4f4>
  102187:	83 cb 20             	or     $0x20,%ebx
  10218a:	83 e3 f3             	and    $0xfffffff3,%ebx
  10218d:	e9 42 fe ff ff       	jmpq   101fd4 <_vsnprintf.constprop.0+0x504>
  102192:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  102197:	48 8b 48 08          	mov    0x8(%rax),%rcx
  10219b:	48 8d 51 08          	lea    0x8(%rcx),%rdx
  10219f:	48 89 50 08          	mov    %rdx,0x8(%rax)
  1021a3:	e9 a6 fc ff ff       	jmpq   101e4e <_vsnprintf.constprop.0+0x37e>
  1021a8:	89 d1                	mov    %edx,%ecx
  1021aa:	48 03 48 10          	add    0x10(%rax),%rcx
  1021ae:	83 c2 08             	add    $0x8,%edx
  1021b1:	45 85 db             	test   %r11d,%r11d
  1021b4:	89 10                	mov    %edx,(%rax)
  1021b6:	4c 8b 09             	mov    (%rcx),%r9
  1021b9:	0f 85 b6 fa ff ff    	jne    101c75 <_vsnprintf.constprop.0+0x1a5>
  1021bf:	41 80 39 00          	cmpb   $0x0,(%r9)
  1021c3:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  1021ca:	0f 85 b6 fa ff ff    	jne    101c86 <_vsnprintf.constprop.0+0x1b6>
  1021d0:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%rsp)
  1021d7:	00 
  1021d8:	e9 d6 fa ff ff       	jmpq   101cb3 <_vsnprintf.constprop.0+0x1e3>
  1021dd:	0f 1f 00             	nopl   (%rax)
  1021e0:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1021e5:	48 8b 70 08          	mov    0x8(%rax),%rsi
  1021e9:	48 8d 56 08          	lea    0x8(%rsi),%rdx
  1021ed:	48 89 50 08          	mov    %rdx,0x8(%rax)
  1021f1:	44 8b 3e             	mov    (%rsi),%r15d
  1021f4:	45 85 ff             	test   %r15d,%r15d
  1021f7:	0f 89 ff fe ff ff    	jns    1020fc <_vsnprintf.constprop.0+0x62c>
  1021fd:	83 cb 02             	or     $0x2,%ebx
  102200:	41 f7 df             	neg    %r15d
  102203:	e9 f4 fe ff ff       	jmpq   1020fc <_vsnprintf.constprop.0+0x62c>
  102208:	f6 c7 02             	test   $0x2,%bh
  10220b:	0f 84 db 00 00 00    	je     1022ec <_vsnprintf.constprop.0+0x81c>
  102211:	8b 10                	mov    (%rax),%edx
  102213:	83 fa 2f             	cmp    $0x2f,%edx
  102216:	0f 86 75 01 00 00    	jbe    102391 <_vsnprintf.constprop.0+0x8c1>
  10221c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  102221:	48 8b 70 08          	mov    0x8(%rax),%rsi
  102225:	48 8d 56 08          	lea    0x8(%rsi),%rdx
  102229:	48 89 50 08          	mov    %rdx,0x8(%rax)
  10222d:	4c 8b 0e             	mov    (%rsi),%r9
  102230:	53                   	push   %rbx
  102231:	41 57                	push   %r15
  102233:	41 53                	push   %r11
  102235:	51                   	push   %rcx
  102236:	4c 89 ca             	mov    %r9,%rdx
  102239:	48 c1 fa 3f          	sar    $0x3f,%rdx
  10223d:	49 89 d0             	mov    %rdx,%r8
  102240:	4d 31 c8             	xor    %r9,%r8
  102243:	49 c1 e9 3f          	shr    $0x3f,%r9
  102247:	49 29 d0             	sub    %rdx,%r8
  10224a:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  10224f:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  102254:	4c 89 f2             	mov    %r14,%rdx
  102257:	4c 89 e7             	mov    %r12,%rdi
  10225a:	e8 91 f7 ff ff       	callq  1019f0 <_ntoa_long_long>
  10225f:	48 83 c4 20          	add    $0x20,%rsp
  102263:	49 89 c6             	mov    %rax,%r14
  102266:	e9 b5 fb ff ff       	jmpq   101e20 <_vsnprintf.constprop.0+0x350>
  10226b:	41 0f be 39          	movsbl (%r9),%edi
  10226f:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
  102274:	40 84 ff             	test   %dil,%dil
  102277:	0f 85 f2 fa ff ff    	jne    101d6f <_vsnprintf.constprop.0+0x29f>
  10227d:	e9 55 fb ff ff       	jmpq   101dd7 <_vsnprintf.constprop.0+0x307>
  102282:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  102288:	4c 89 fb             	mov    %r15,%rbx
  10228b:	4c 8b 6c 24 28       	mov    0x28(%rsp),%r13
  102290:	44 8b 7c 24 38       	mov    0x38(%rsp),%r15d
  102295:	49 89 de             	mov    %rbx,%r14
  102298:	e9 32 fb ff ff       	jmpq   101dcf <_vsnprintf.constprop.0+0x2ff>
  10229d:	41 0f b6 75 02       	movzbl 0x2(%r13),%esi
  1022a2:	80 cb c0             	or     $0xc0,%bl
  1022a5:	49 83 c5 02          	add    $0x2,%r13
  1022a9:	e9 7e f9 ff ff       	jmpq   101c2c <_vsnprintf.constprop.0+0x15c>
  1022ae:	41 0f b6 75 02       	movzbl 0x2(%r13),%esi
  1022b3:	80 cf 03             	or     $0x3,%bh
  1022b6:	49 83 c5 02          	add    $0x2,%r13
  1022ba:	e9 6d f9 ff ff       	jmpq   101c2c <_vsnprintf.constprop.0+0x15c>
  1022bf:	f6 c7 01             	test   $0x1,%bh
  1022c2:	8b 30                	mov    (%rax),%esi
  1022c4:	0f 84 a1 00 00 00    	je     10236b <_vsnprintf.constprop.0+0x89b>
  1022ca:	83 fe 2f             	cmp    $0x2f,%esi
  1022cd:	0f 87 95 01 00 00    	ja     102468 <_vsnprintf.constprop.0+0x998>
  1022d3:	89 f2                	mov    %esi,%edx
  1022d5:	48 03 50 10          	add    0x10(%rax),%rdx
  1022d9:	83 c6 08             	add    $0x8,%esi
  1022dc:	89 30                	mov    %esi,(%rax)
  1022de:	53                   	push   %rbx
  1022df:	45 31 c9             	xor    %r9d,%r9d
  1022e2:	41 57                	push   %r15
  1022e4:	41 53                	push   %r11
  1022e6:	51                   	push   %rcx
  1022e7:	4c 8b 02             	mov    (%rdx),%r8
  1022ea:	eb 38                	jmp    102324 <_vsnprintf.constprop.0+0x854>
  1022ec:	f6 c7 01             	test   $0x1,%bh
  1022ef:	8b 30                	mov    (%rax),%esi
  1022f1:	74 52                	je     102345 <_vsnprintf.constprop.0+0x875>
  1022f3:	83 fe 2f             	cmp    $0x2f,%esi
  1022f6:	0f 87 56 01 00 00    	ja     102452 <_vsnprintf.constprop.0+0x982>
  1022fc:	89 f2                	mov    %esi,%edx
  1022fe:	48 03 50 10          	add    0x10(%rax),%rdx
  102302:	83 c6 08             	add    $0x8,%esi
  102305:	89 30                	mov    %esi,(%rax)
  102307:	4c 8b 0a             	mov    (%rdx),%r9
  10230a:	53                   	push   %rbx
  10230b:	41 57                	push   %r15
  10230d:	41 53                	push   %r11
  10230f:	51                   	push   %rcx
  102310:	4c 89 ca             	mov    %r9,%rdx
  102313:	48 c1 fa 3f          	sar    $0x3f,%rdx
  102317:	49 89 d0             	mov    %rdx,%r8
  10231a:	4d 31 c8             	xor    %r9,%r8
  10231d:	49 c1 e9 3f          	shr    $0x3f,%r9
  102321:	49 29 d0             	sub    %rdx,%r8
  102324:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  102329:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  10232e:	4c 89 f2             	mov    %r14,%rdx
  102331:	4c 89 e7             	mov    %r12,%rdi
  102334:	e8 d7 f5 ff ff       	callq  101910 <_ntoa_long>
  102339:	48 83 c4 20          	add    $0x20,%rsp
  10233d:	49 89 c6             	mov    %rax,%r14
  102340:	e9 db fa ff ff       	jmpq   101e20 <_vsnprintf.constprop.0+0x350>
  102345:	f6 c3 40             	test   $0x40,%bl
  102348:	0f 84 c3 00 00 00    	je     102411 <_vsnprintf.constprop.0+0x941>
  10234e:	83 fe 2f             	cmp    $0x2f,%esi
  102351:	0f 87 9a 01 00 00    	ja     1024f1 <_vsnprintf.constprop.0+0xa21>
  102357:	89 f2                	mov    %esi,%edx
  102359:	48 03 50 10          	add    0x10(%rax),%rdx
  10235d:	83 c6 08             	add    $0x8,%esi
  102360:	89 30                	mov    %esi,(%rax)
  102362:	44 0f be 0a          	movsbl (%rdx),%r9d
  102366:	e9 c6 00 00 00       	jmpq   102431 <_vsnprintf.constprop.0+0x961>
  10236b:	f6 c3 40             	test   $0x40,%bl
  10236e:	0f 84 0a 01 00 00    	je     10247e <_vsnprintf.constprop.0+0x9ae>
  102374:	83 fe 2f             	cmp    $0x2f,%esi
  102377:	0f 87 5e 01 00 00    	ja     1024db <_vsnprintf.constprop.0+0xa0b>
  10237d:	89 f2                	mov    %esi,%edx
  10237f:	48 03 50 10          	add    0x10(%rax),%rdx
  102383:	83 c6 08             	add    $0x8,%esi
  102386:	89 30                	mov    %esi,(%rax)
  102388:	44 0f b6 02          	movzbl (%rdx),%r8d
  10238c:	e9 09 01 00 00       	jmpq   10249a <_vsnprintf.constprop.0+0x9ca>
  102391:	89 d6                	mov    %edx,%esi
  102393:	83 c2 08             	add    $0x8,%edx
  102396:	48 03 70 10          	add    0x10(%rax),%rsi
  10239a:	89 10                	mov    %edx,(%rax)
  10239c:	e9 8c fe ff ff       	jmpq   10222d <_vsnprintf.constprop.0+0x75d>
  1023a1:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1023a6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  1023aa:	48 8d 56 08          	lea    0x8(%rsi),%rdx
  1023ae:	48 89 50 08          	mov    %rdx,0x8(%rax)
  1023b2:	e9 60 fc ff ff       	jmpq   102017 <_vsnprintf.constprop.0+0x547>
  1023b7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1023bc:	8b 08                	mov    (%rax),%ecx
  1023be:	83 f9 2f             	cmp    $0x2f,%ecx
  1023c1:	77 31                	ja     1023f4 <_vsnprintf.constprop.0+0x924>
  1023c3:	89 ca                	mov    %ecx,%edx
  1023c5:	48 03 50 10          	add    0x10(%rax),%rdx
  1023c9:	83 c1 08             	add    $0x8,%ecx
  1023cc:	89 08                	mov    %ecx,(%rax)
  1023ce:	8b 0a                	mov    (%rdx),%ecx
  1023d0:	41 bb 00 00 00 00    	mov    $0x0,%r11d
  1023d6:	41 0f b6 75 02       	movzbl 0x2(%r13),%esi
  1023db:	85 c9                	test   %ecx,%ecx
  1023dd:	44 0f 49 1a          	cmovns (%rdx),%r11d
  1023e1:	49 83 c5 02          	add    $0x2,%r13
  1023e5:	e9 fc f7 ff ff       	jmpq   101be6 <_vsnprintf.constprop.0+0x116>
  1023ea:	b9 08 00 00 00       	mov    $0x8,%ecx
  1023ef:	e9 d0 fb ff ff       	jmpq   101fc4 <_vsnprintf.constprop.0+0x4f4>
  1023f4:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1023f9:	48 8b 50 08          	mov    0x8(%rax),%rdx
  1023fd:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
  102401:	48 89 48 08          	mov    %rcx,0x8(%rax)
  102405:	eb c7                	jmp    1023ce <_vsnprintf.constprop.0+0x8fe>
  102407:	b9 02 00 00 00       	mov    $0x2,%ecx
  10240c:	e9 b3 fb ff ff       	jmpq   101fc4 <_vsnprintf.constprop.0+0x4f4>
  102411:	f6 c3 80             	test   $0x80,%bl
  102414:	0f 85 a8 00 00 00    	jne    1024c2 <_vsnprintf.constprop.0+0x9f2>
  10241a:	83 fe 2f             	cmp    $0x2f,%esi
  10241d:	0f 87 0f 01 00 00    	ja     102532 <_vsnprintf.constprop.0+0xa62>
  102423:	89 f2                	mov    %esi,%edx
  102425:	48 03 50 10          	add    0x10(%rax),%rdx
  102429:	83 c6 08             	add    $0x8,%esi
  10242c:	89 30                	mov    %esi,(%rax)
  10242e:	44 8b 0a             	mov    (%rdx),%r9d
  102431:	44 89 ca             	mov    %r9d,%edx
  102434:	53                   	push   %rbx
  102435:	41 57                	push   %r15
  102437:	c1 fa 1f             	sar    $0x1f,%edx
  10243a:	41 53                	push   %r11
  10243c:	51                   	push   %rcx
  10243d:	41 89 d0             	mov    %edx,%r8d
  102440:	45 31 c8             	xor    %r9d,%r8d
  102443:	41 c1 e9 1f          	shr    $0x1f,%r9d
  102447:	41 29 d0             	sub    %edx,%r8d
  10244a:	4d 63 c0             	movslq %r8d,%r8
  10244d:	e9 d2 fe ff ff       	jmpq   102324 <_vsnprintf.constprop.0+0x854>
  102452:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  102457:	48 8b 50 08          	mov    0x8(%rax),%rdx
  10245b:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  10245f:	48 89 70 08          	mov    %rsi,0x8(%rax)
  102463:	e9 9f fe ff ff       	jmpq   102307 <_vsnprintf.constprop.0+0x837>
  102468:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  10246d:	48 8b 50 08          	mov    0x8(%rax),%rdx
  102471:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  102475:	48 89 70 08          	mov    %rsi,0x8(%rax)
  102479:	e9 60 fe ff ff       	jmpq   1022de <_vsnprintf.constprop.0+0x80e>
  10247e:	f6 c3 80             	test   $0x80,%bl
  102481:	75 25                	jne    1024a8 <_vsnprintf.constprop.0+0x9d8>
  102483:	83 fe 2f             	cmp    $0x2f,%esi
  102486:	0f 87 bc 00 00 00    	ja     102548 <_vsnprintf.constprop.0+0xa78>
  10248c:	89 f2                	mov    %esi,%edx
  10248e:	48 03 50 10          	add    0x10(%rax),%rdx
  102492:	83 c6 08             	add    $0x8,%esi
  102495:	89 30                	mov    %esi,(%rax)
  102497:	44 8b 02             	mov    (%rdx),%r8d
  10249a:	53                   	push   %rbx
  10249b:	45 31 c9             	xor    %r9d,%r9d
  10249e:	41 57                	push   %r15
  1024a0:	41 53                	push   %r11
  1024a2:	51                   	push   %rcx
  1024a3:	e9 7c fe ff ff       	jmpq   102324 <_vsnprintf.constprop.0+0x854>
  1024a8:	83 fe 2f             	cmp    $0x2f,%esi
  1024ab:	0f 87 ad 00 00 00    	ja     10255e <_vsnprintf.constprop.0+0xa8e>
  1024b1:	89 f2                	mov    %esi,%edx
  1024b3:	48 03 50 10          	add    0x10(%rax),%rdx
  1024b7:	83 c6 08             	add    $0x8,%esi
  1024ba:	89 30                	mov    %esi,(%rax)
  1024bc:	44 0f b7 02          	movzwl (%rdx),%r8d
  1024c0:	eb d8                	jmp    10249a <_vsnprintf.constprop.0+0x9ca>
  1024c2:	83 fe 2f             	cmp    $0x2f,%esi
  1024c5:	77 58                	ja     10251f <_vsnprintf.constprop.0+0xa4f>
  1024c7:	89 f2                	mov    %esi,%edx
  1024c9:	48 03 50 10          	add    0x10(%rax),%rdx
  1024cd:	83 c6 08             	add    $0x8,%esi
  1024d0:	89 30                	mov    %esi,(%rax)
  1024d2:	44 0f bf 0a          	movswl (%rdx),%r9d
  1024d6:	e9 56 ff ff ff       	jmpq   102431 <_vsnprintf.constprop.0+0x961>
  1024db:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1024e0:	48 8b 50 08          	mov    0x8(%rax),%rdx
  1024e4:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  1024e8:	48 89 70 08          	mov    %rsi,0x8(%rax)
  1024ec:	e9 97 fe ff ff       	jmpq   102388 <_vsnprintf.constprop.0+0x8b8>
  1024f1:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  1024f6:	48 8b 50 08          	mov    0x8(%rax),%rdx
  1024fa:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  1024fe:	48 89 70 08          	mov    %rsi,0x8(%rax)
  102502:	e9 5b fe ff ff       	jmpq   102362 <_vsnprintf.constprop.0+0x892>
  102507:	b8 02 00 00 00       	mov    $0x2,%eax
  10250c:	e9 d2 f9 ff ff       	jmpq   101ee3 <_vsnprintf.constprop.0+0x413>
  102511:	89 54 24 18          	mov    %edx,0x18(%rsp)
  102515:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
  10251a:	e9 3e f8 ff ff       	jmpq   101d5d <_vsnprintf.constprop.0+0x28d>
  10251f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  102524:	48 8b 50 08          	mov    0x8(%rax),%rdx
  102528:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  10252c:	48 89 70 08          	mov    %rsi,0x8(%rax)
  102530:	eb a0                	jmp    1024d2 <_vsnprintf.constprop.0+0xa02>
  102532:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  102537:	48 8b 50 08          	mov    0x8(%rax),%rdx
  10253b:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  10253f:	48 89 70 08          	mov    %rsi,0x8(%rax)
  102543:	e9 e6 fe ff ff       	jmpq   10242e <_vsnprintf.constprop.0+0x95e>
  102548:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  10254d:	48 8b 50 08          	mov    0x8(%rax),%rdx
  102551:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  102555:	48 89 70 08          	mov    %rsi,0x8(%rax)
  102559:	e9 39 ff ff ff       	jmpq   102497 <_vsnprintf.constprop.0+0x9c7>
  10255e:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  102563:	48 8b 50 08          	mov    0x8(%rax),%rdx
  102567:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  10256b:	48 89 70 08          	mov    %rsi,0x8(%rax)
  10256f:	e9 48 ff ff ff       	jmpq   1024bc <_vsnprintf.constprop.0+0x9ec>
  102574:	66 90                	xchg   %ax,%ax
  102576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10257d:	00 00 00 

0000000000102580 <snprintf>:
  102580:	48 83 ec 58          	sub    $0x58,%rsp
  102584:	48 8b 05 7d 3a 00 00 	mov    0x3a7d(%rip),%rax        # 106008 <__stack_chk_guard>
  10258b:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  102590:	48 89 e1             	mov    %rsp,%rcx
  102593:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  102598:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  10259d:	c7 04 24 18 00 00 00 	movl   $0x18,(%rsp)
  1025a4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  1025a9:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  1025ae:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  1025b3:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  1025b8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  1025bd:	e8 0e f5 ff ff       	callq  101ad0 <_vsnprintf.constprop.0>
  1025c2:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  1025c7:	48 8b 15 3a 3a 00 00 	mov    0x3a3a(%rip),%rdx        # 106008 <__stack_chk_guard>
  1025ce:	48 39 d1             	cmp    %rdx,%rcx
  1025d1:	75 05                	jne    1025d8 <snprintf+0x58>
  1025d3:	48 83 c4 58          	add    $0x58,%rsp
  1025d7:	c3                   	retq   
  1025d8:	e8 53 ef ff ff       	callq  101530 <__stack_chk_fail>
  1025dd:	0f 1f 00             	nopl   (%rax)

00000000001025e0 <vsnprintf>:
  1025e0:	e9 eb f4 ff ff       	jmpq   101ad0 <_vsnprintf.constprop.0>
  1025e5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1025ec:	00 00 00 
  1025ef:	90                   	nop

00000000001025f0 <intr_register_irq>:
  1025f0:	41 55                	push   %r13
  1025f2:	41 54                	push   %r12
  1025f4:	55                   	push   %rbp
  1025f5:	53                   	push   %rbx
  1025f6:	89 fd                	mov    %edi,%ebp
  1025f8:	48 83 ec 08          	sub    $0x8,%rsp
  1025fc:	83 ff 0f             	cmp    $0xf,%edi
  1025ff:	77 5e                	ja     10265f <intr_register_irq+0x6f>
  102601:	89 f8                	mov    %edi,%eax
  102603:	49 89 d4             	mov    %rdx,%r12
  102606:	48 89 c2             	mov    %rax,%rdx
  102609:	48 c1 e2 07          	shl    $0x7,%rdx
  10260d:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  102611:	83 bb 00 a4 10 00 07 	cmpl   $0x7,0x10a400(%rbx)
  102618:	7f 59                	jg     102673 <intr_register_irq+0x83>
  10261a:	49 89 f5             	mov    %rsi,%r13
  10261d:	e8 0e e8 ff ff       	callq  100e30 <cpu_intr_disable>
  102622:	48 63 8b 00 a4 10 00 	movslq 0x10a400(%rbx),%rcx
  102629:	48 89 c8             	mov    %rcx,%rax
  10262c:	48 c1 e1 04          	shl    $0x4,%rcx
  102630:	48 8d 8c 0b 00 a4 10 	lea    0x10a400(%rbx,%rcx,1),%rcx
  102637:	00 
  102638:	83 c0 01             	add    $0x1,%eax
  10263b:	89 83 00 a4 10 00    	mov    %eax,0x10a400(%rbx)
  102641:	4c 89 69 08          	mov    %r13,0x8(%rcx)
  102645:	4c 89 61 10          	mov    %r12,0x10(%rcx)
  102649:	e8 f2 e7 ff ff       	callq  100e40 <cpu_intr_enable>
  10264e:	48 83 c4 08          	add    $0x8,%rsp
  102652:	89 ef                	mov    %ebp,%edi
  102654:	5b                   	pop    %rbx
  102655:	5d                   	pop    %rbp
  102656:	41 5c                	pop    %r12
  102658:	41 5d                	pop    %r13
  10265a:	e9 81 0b 00 00       	jmpq   1031e0 <platform_intr_clear_irq>
  10265f:	ba 3e 47 10 00       	mov    $0x10473e,%edx
  102664:	be 47 47 10 00       	mov    $0x104747,%esi
  102669:	bf 4a 47 10 00       	mov    $0x10474a,%edi
  10266e:	e8 9d da ff ff       	callq  100110 <_assert_fail>
  102673:	ba f8 48 10 00       	mov    $0x1048f8,%edx
  102678:	be 51 47 10 00       	mov    $0x104751,%esi
  10267d:	bf 4a 47 10 00       	mov    $0x10474a,%edi
  102682:	e8 89 da ff ff       	callq  100110 <_assert_fail>
  102687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10268e:	00 00 

0000000000102690 <intr_irq_handler>:
  102690:	48 89 f8             	mov    %rdi,%rax
  102693:	41 54                	push   %r12
  102695:	55                   	push   %rbp
  102696:	48 c1 e0 07          	shl    $0x7,%rax
  10269a:	53                   	push   %rbx
  10269b:	49 89 fc             	mov    %rdi,%r12
  10269e:	48 8d 2c f8          	lea    (%rax,%rdi,8),%rbp
  1026a2:	8b 85 00 a4 10 00    	mov    0x10a400(%rbp),%eax
  1026a8:	85 c0                	test   %eax,%eax
  1026aa:	7e 3c                	jle    1026e8 <intr_irq_handler+0x58>
  1026ac:	31 db                	xor    %ebx,%ebx
  1026ae:	eb 0b                	jmp    1026bb <intr_irq_handler+0x2b>
  1026b0:	83 c3 01             	add    $0x1,%ebx
  1026b3:	39 9d 00 a4 10 00    	cmp    %ebx,0x10a400(%rbp)
  1026b9:	7e 2d                	jle    1026e8 <intr_irq_handler+0x58>
  1026bb:	48 63 c3             	movslq %ebx,%rax
  1026be:	48 c1 e0 04          	shl    $0x4,%rax
  1026c2:	48 8d 84 28 00 a4 10 	lea    0x10a400(%rax,%rbp,1),%rax
  1026c9:	00 
  1026ca:	48 8b 78 10          	mov    0x10(%rax),%rdi
  1026ce:	ff 50 08             	callq  *0x8(%rax)
  1026d1:	83 f8 01             	cmp    $0x1,%eax
  1026d4:	75 da                	jne    1026b0 <intr_irq_handler+0x20>
  1026d6:	5b                   	pop    %rbx
  1026d7:	44 89 e7             	mov    %r12d,%edi
  1026da:	5d                   	pop    %rbp
  1026db:	41 5c                	pop    %r12
  1026dd:	e9 de 0a 00 00       	jmpq   1031c0 <platform_intr_ack_irq>
  1026e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  1026e8:	5b                   	pop    %rbx
  1026e9:	4c 89 e2             	mov    %r12,%rdx
  1026ec:	be 54 47 10 00       	mov    $0x104754,%esi
  1026f1:	31 ff                	xor    %edi,%edi
  1026f3:	5d                   	pop    %rbp
  1026f4:	41 5c                	pop    %r12
  1026f6:	31 c0                	xor    %eax,%eax
  1026f8:	e9 d3 05 00 00       	jmpq   102cd0 <log>
  1026fd:	0f 1f 00             	nopl   (%rax)

0000000000102700 <memset>:
  102700:	48 85 d2             	test   %rdx,%rdx
  102703:	48 89 f8             	mov    %rdi,%rax
  102706:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
  10270a:	48 89 f9             	mov    %rdi,%rcx
  10270d:	74 0d                	je     10271c <memset+0x1c>
  10270f:	90                   	nop
  102710:	40 88 31             	mov    %sil,(%rcx)
  102713:	48 83 c1 01          	add    $0x1,%rcx
  102717:	4c 39 c1             	cmp    %r8,%rcx
  10271a:	75 f4                	jne    102710 <memset+0x10>
  10271c:	f3 c3                	repz retq 
  10271e:	66 90                	xchg   %ax,%ax

0000000000102720 <memcpy>:
  102720:	48 85 d2             	test   %rdx,%rdx
  102723:	48 89 f8             	mov    %rdi,%rax
  102726:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
  10272a:	48 89 f9             	mov    %rdi,%rcx
  10272d:	74 15                	je     102744 <memcpy+0x24>
  10272f:	90                   	nop
  102730:	48 83 c6 01          	add    $0x1,%rsi
  102734:	0f b6 56 ff          	movzbl -0x1(%rsi),%edx
  102738:	48 83 c1 01          	add    $0x1,%rcx
  10273c:	4c 39 c1             	cmp    %r8,%rcx
  10273f:	88 51 ff             	mov    %dl,-0x1(%rcx)
  102742:	75 ec                	jne    102730 <memcpy+0x10>
  102744:	f3 c3                	repz retq 
  102746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10274d:	00 00 00 

0000000000102750 <memmove>:
  102750:	48 39 f7             	cmp    %rsi,%rdi
  102753:	48 89 f8             	mov    %rdi,%rax
  102756:	74 78                	je     1027d0 <memmove+0x80>
  102758:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  10275c:	48 39 cf             	cmp    %rcx,%rdi
  10275f:	72 77                	jb     1027d8 <memmove+0x88>
  102761:	48 85 d2             	test   %rdx,%rdx
  102764:	74 6a                	je     1027d0 <memmove+0x80>
  102766:	48 01 c2             	add    %rax,%rdx
  102769:	48 89 c1             	mov    %rax,%rcx
  10276c:	0f 1f 40 00          	nopl   0x0(%rax)
  102770:	48 83 c6 01          	add    $0x1,%rsi
  102774:	44 0f b6 46 ff       	movzbl -0x1(%rsi),%r8d
  102779:	48 83 c1 01          	add    $0x1,%rcx
  10277d:	48 39 d1             	cmp    %rdx,%rcx
  102780:	44 88 41 ff          	mov    %r8b,-0x1(%rcx)
  102784:	75 ea                	jne    102770 <memmove+0x20>
  102786:	f3 c3                	repz retq 
  102788:	48 89 d1             	mov    %rdx,%rcx
  10278b:	48 83 f9 07          	cmp    $0x7,%rcx
  10278f:	48 89 ca             	mov    %rcx,%rdx
  102792:	76 1c                	jbe    1027b0 <memmove+0x60>
  102794:	0f 1f 40 00          	nopl   0x0(%rax)
  102798:	48 83 ea 08          	sub    $0x8,%rdx
  10279c:	48 8b 3c 16          	mov    (%rsi,%rdx,1),%rdi
  1027a0:	48 83 fa 07          	cmp    $0x7,%rdx
  1027a4:	48 89 3c 10          	mov    %rdi,(%rax,%rdx,1)
  1027a8:	77 ee                	ja     102798 <memmove+0x48>
  1027aa:	48 89 ca             	mov    %rcx,%rdx
  1027ad:	83 e2 07             	and    $0x7,%edx
  1027b0:	48 85 d2             	test   %rdx,%rdx
  1027b3:	0f 84 27 01 00 00    	je     1028e0 <memmove+0x190>
  1027b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1027c0:	48 83 ea 01          	sub    $0x1,%rdx
  1027c4:	0f b6 0c 16          	movzbl (%rsi,%rdx,1),%ecx
  1027c8:	48 85 d2             	test   %rdx,%rdx
  1027cb:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
  1027ce:	75 f0                	jne    1027c0 <memmove+0x70>
  1027d0:	f3 c3                	repz retq 
  1027d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  1027d8:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  1027dc:	48 39 ce             	cmp    %rcx,%rsi
  1027df:	73 80                	jae    102761 <memmove+0x11>
  1027e1:	48 39 f7             	cmp    %rsi,%rdi
  1027e4:	0f 83 86 00 00 00    	jae    102870 <memmove+0x120>
  1027ea:	48 89 f1             	mov    %rsi,%rcx
  1027ed:	48 31 f9             	xor    %rdi,%rcx
  1027f0:	83 e1 07             	and    $0x7,%ecx
  1027f3:	0f 85 bc 00 00 00    	jne    1028b5 <memmove+0x165>
  1027f9:	a8 07                	test   $0x7,%al
  1027fb:	0f 84 e1 00 00 00    	je     1028e2 <memmove+0x192>
  102801:	48 85 d2             	test   %rdx,%rdx
  102804:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
  102808:	74 c6                	je     1027d0 <memmove+0x80>
  10280a:	48 89 c1             	mov    %rax,%rcx
  10280d:	eb 0d                	jmp    10281c <memmove+0xcc>
  10280f:	90                   	nop
  102810:	48 85 ff             	test   %rdi,%rdi
  102813:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
  102817:	74 b7                	je     1027d0 <memmove+0x80>
  102819:	48 89 d7             	mov    %rdx,%rdi
  10281c:	48 83 c6 01          	add    $0x1,%rsi
  102820:	0f b6 56 ff          	movzbl -0x1(%rsi),%edx
  102824:	48 83 c1 01          	add    $0x1,%rcx
  102828:	f6 c1 07             	test   $0x7,%cl
  10282b:	88 51 ff             	mov    %dl,-0x1(%rcx)
  10282e:	75 e0                	jne    102810 <memmove+0xc0>
  102830:	48 83 ff 07          	cmp    $0x7,%rdi
  102834:	0f 86 b3 00 00 00    	jbe    1028ed <memmove+0x19d>
  10283a:	48 8d 57 f8          	lea    -0x8(%rdi),%rdx
  10283e:	45 31 c0             	xor    %r8d,%r8d
  102841:	48 c1 ea 03          	shr    $0x3,%rdx
  102845:	4c 8d 0c d5 08 00 00 	lea    0x8(,%rdx,8),%r9
  10284c:	00 
  10284d:	0f 1f 00             	nopl   (%rax)
  102850:	4a 8b 14 06          	mov    (%rsi,%r8,1),%rdx
  102854:	4a 89 14 01          	mov    %rdx,(%rcx,%r8,1)
  102858:	49 83 c0 08          	add    $0x8,%r8
  10285c:	4d 39 c8             	cmp    %r9,%r8
  10285f:	75 ef                	jne    102850 <memmove+0x100>
  102861:	83 e7 07             	and    $0x7,%edi
  102864:	4c 01 c1             	add    %r8,%rcx
  102867:	4c 01 c6             	add    %r8,%rsi
  10286a:	48 89 fa             	mov    %rdi,%rdx
  10286d:	eb 49                	jmp    1028b8 <memmove+0x168>
  10286f:	90                   	nop
  102870:	48 31 f7             	xor    %rsi,%rdi
  102873:	83 e7 07             	and    $0x7,%edi
  102876:	0f 85 34 ff ff ff    	jne    1027b0 <memmove+0x60>
  10287c:	83 e1 07             	and    $0x7,%ecx
  10287f:	0f 84 03 ff ff ff    	je     102788 <memmove+0x38>
  102885:	48 85 d2             	test   %rdx,%rdx
  102888:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10288c:	75 12                	jne    1028a0 <memmove+0x150>
  10288e:	eb 62                	jmp    1028f2 <memmove+0x1a2>
  102890:	48 85 c9             	test   %rcx,%rcx
  102893:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  102897:	0f 84 33 ff ff ff    	je     1027d0 <memmove+0x80>
  10289d:	48 89 d1             	mov    %rdx,%rcx
  1028a0:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1028a4:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  1028a7:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  1028ab:	83 e2 07             	and    $0x7,%edx
  1028ae:	75 e0                	jne    102890 <memmove+0x140>
  1028b0:	e9 d6 fe ff ff       	jmpq   10278b <memmove+0x3b>
  1028b5:	48 89 f9             	mov    %rdi,%rcx
  1028b8:	48 85 d2             	test   %rdx,%rdx
  1028bb:	48 8d 3c 11          	lea    (%rcx,%rdx,1),%rdi
  1028bf:	74 1d                	je     1028de <memmove+0x18e>
  1028c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1028c8:	48 83 c6 01          	add    $0x1,%rsi
  1028cc:	0f b6 56 ff          	movzbl -0x1(%rsi),%edx
  1028d0:	48 83 c1 01          	add    $0x1,%rcx
  1028d4:	48 39 f9             	cmp    %rdi,%rcx
  1028d7:	88 51 ff             	mov    %dl,-0x1(%rcx)
  1028da:	75 ec                	jne    1028c8 <memmove+0x178>
  1028dc:	f3 c3                	repz retq 
  1028de:	f3 c3                	repz retq 
  1028e0:	f3 c3                	repz retq 
  1028e2:	48 89 f9             	mov    %rdi,%rcx
  1028e5:	48 89 d7             	mov    %rdx,%rdi
  1028e8:	e9 43 ff ff ff       	jmpq   102830 <memmove+0xe0>
  1028ed:	48 89 fa             	mov    %rdi,%rdx
  1028f0:	eb c6                	jmp    1028b8 <memmove+0x168>
  1028f2:	f3 c3                	repz retq 
  1028f4:	66 90                	xchg   %ax,%ax
  1028f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1028fd:	00 00 00 

0000000000102900 <memcmp>:
  102900:	48 85 d2             	test   %rdx,%rdx
  102903:	74 33                	je     102938 <memcmp+0x38>
  102905:	0f b6 0f             	movzbl (%rdi),%ecx
  102908:	44 0f b6 06          	movzbl (%rsi),%r8d
  10290c:	44 38 c1             	cmp    %r8b,%cl
  10290f:	75 2f                	jne    102940 <memcmp+0x40>
  102911:	48 83 ea 01          	sub    $0x1,%rdx
  102915:	31 c0                	xor    %eax,%eax
  102917:	eb 1a                	jmp    102933 <memcmp+0x33>
  102919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102920:	0f b6 4c 07 01       	movzbl 0x1(%rdi,%rax,1),%ecx
  102925:	48 83 c0 01          	add    $0x1,%rax
  102929:	44 0f b6 04 06       	movzbl (%rsi,%rax,1),%r8d
  10292e:	44 38 c1             	cmp    %r8b,%cl
  102931:	75 0d                	jne    102940 <memcmp+0x40>
  102933:	48 39 d0             	cmp    %rdx,%rax
  102936:	75 e8                	jne    102920 <memcmp+0x20>
  102938:	31 c0                	xor    %eax,%eax
  10293a:	c3                   	retq   
  10293b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  102940:	0f b6 c1             	movzbl %cl,%eax
  102943:	44 29 c0             	sub    %r8d,%eax
  102946:	c3                   	retq   
  102947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10294e:	00 00 

0000000000102950 <strcmp>:
  102950:	eb 12                	jmp    102964 <strcmp+0x14>
  102952:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  102958:	84 d2                	test   %dl,%dl
  10295a:	74 24                	je     102980 <strcmp+0x30>
  10295c:	48 83 c7 01          	add    $0x1,%rdi
  102960:	48 83 c6 01          	add    $0x1,%rsi
  102964:	0f b6 17             	movzbl (%rdi),%edx
  102967:	0f b6 0e             	movzbl (%rsi),%ecx
  10296a:	38 ca                	cmp    %cl,%dl
  10296c:	74 ea                	je     102958 <strcmp+0x8>
  10296e:	0f b6 c2             	movzbl %dl,%eax
  102971:	0f b6 d1             	movzbl %cl,%edx
  102974:	29 d0                	sub    %edx,%eax
  102976:	c3                   	retq   
  102977:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10297e:	00 00 
  102980:	31 c0                	xor    %eax,%eax
  102982:	29 d0                	sub    %edx,%eax
  102984:	c3                   	retq   
  102985:	90                   	nop
  102986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10298d:	00 00 00 

0000000000102990 <strcpy>:
  102990:	48 89 f8             	mov    %rdi,%rax
  102993:	48 89 fa             	mov    %rdi,%rdx
  102996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10299d:	00 00 00 
  1029a0:	48 83 c6 01          	add    $0x1,%rsi
  1029a4:	0f b6 4e ff          	movzbl -0x1(%rsi),%ecx
  1029a8:	48 83 c2 01          	add    $0x1,%rdx
  1029ac:	84 c9                	test   %cl,%cl
  1029ae:	88 4a ff             	mov    %cl,-0x1(%rdx)
  1029b1:	75 ed                	jne    1029a0 <strcpy+0x10>
  1029b3:	f3 c3                	repz retq 
  1029b5:	90                   	nop
  1029b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1029bd:	00 00 00 

00000000001029c0 <strlen>:
  1029c0:	40 f6 c7 07          	test   $0x7,%dil
  1029c4:	74 67                	je     102a2d <strlen+0x6d>
  1029c6:	80 3f 00             	cmpb   $0x0,(%rdi)
  1029c9:	74 67                	je     102a32 <strlen+0x72>
  1029cb:	48 89 f8             	mov    %rdi,%rax
  1029ce:	eb 05                	jmp    1029d5 <strlen+0x15>
  1029d0:	80 38 00             	cmpb   $0x0,(%rax)
  1029d3:	74 54                	je     102a29 <strlen+0x69>
  1029d5:	48 83 c0 01          	add    $0x1,%rax
  1029d9:	a8 07                	test   $0x7,%al
  1029db:	75 f3                	jne    1029d0 <strlen+0x10>
  1029dd:	48 8b 10             	mov    (%rax),%rdx
  1029e0:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  1029e7:	fe fe fe 
  1029ea:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  1029f1:	80 80 80 
  1029f4:	4a 8d 0c 02          	lea    (%rdx,%r8,1),%rcx
  1029f8:	48 f7 d2             	not    %rdx
  1029fb:	48 21 ca             	and    %rcx,%rdx
  1029fe:	48 85 f2             	test   %rsi,%rdx
  102a01:	75 21                	jne    102a24 <strlen+0x64>
  102a03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  102a08:	48 83 c0 08          	add    $0x8,%rax
  102a0c:	48 8b 10             	mov    (%rax),%rdx
  102a0f:	4a 8d 0c 02          	lea    (%rdx,%r8,1),%rcx
  102a13:	48 f7 d2             	not    %rdx
  102a16:	48 21 ca             	and    %rcx,%rdx
  102a19:	48 85 f2             	test   %rsi,%rdx
  102a1c:	74 ea                	je     102a08 <strlen+0x48>
  102a1e:	eb 04                	jmp    102a24 <strlen+0x64>
  102a20:	48 83 c0 01          	add    $0x1,%rax
  102a24:	80 38 00             	cmpb   $0x0,(%rax)
  102a27:	75 f7                	jne    102a20 <strlen+0x60>
  102a29:	48 29 f8             	sub    %rdi,%rax
  102a2c:	c3                   	retq   
  102a2d:	48 89 f8             	mov    %rdi,%rax
  102a30:	eb ab                	jmp    1029dd <strlen+0x1d>
  102a32:	31 c0                	xor    %eax,%eax
  102a34:	c3                   	retq   
  102a35:	90                   	nop
  102a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102a3d:	00 00 00 

0000000000102a40 <isspace>:
  102a40:	8d 47 f7             	lea    -0x9(%rdi),%eax
  102a43:	83 f8 04             	cmp    $0x4,%eax
  102a46:	0f 96 c2             	setbe  %dl
  102a49:	83 ff 20             	cmp    $0x20,%edi
  102a4c:	0f 94 c0             	sete   %al
  102a4f:	09 d0                	or     %edx,%eax
  102a51:	0f b6 c0             	movzbl %al,%eax
  102a54:	c3                   	retq   
  102a55:	90                   	nop
  102a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102a5d:	00 00 00 

0000000000102a60 <strncmp>:
  102a60:	31 c0                	xor    %eax,%eax
  102a62:	48 85 d2             	test   %rdx,%rdx
  102a65:	74 5d                	je     102ac4 <strncmp+0x64>
  102a67:	0f b6 07             	movzbl (%rdi),%eax
  102a6a:	0f b6 0e             	movzbl (%rsi),%ecx
  102a6d:	84 c0                	test   %al,%al
  102a6f:	74 4f                	je     102ac0 <strncmp+0x60>
  102a71:	84 c9                	test   %cl,%cl
  102a73:	41 0f 95 c1          	setne  %r9b
  102a77:	48 83 ea 01          	sub    $0x1,%rdx
  102a7b:	41 0f 95 c0          	setne  %r8b
  102a7f:	45 84 c1             	test   %r8b,%r9b
  102a82:	74 3e                	je     102ac2 <strncmp+0x62>
  102a84:	38 c8                	cmp    %cl,%al
  102a86:	74 21                	je     102aa9 <strncmp+0x49>
  102a88:	eb 38                	jmp    102ac2 <strncmp+0x62>
  102a8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  102a90:	84 c9                	test   %cl,%cl
  102a92:	4c 89 c6             	mov    %r8,%rsi
  102a95:	41 0f 95 c1          	setne  %r9b
  102a99:	38 c8                	cmp    %cl,%al
  102a9b:	41 0f 94 c0          	sete   %r8b
  102a9f:	45 84 c1             	test   %r8b,%r9b
  102aa2:	74 1e                	je     102ac2 <strncmp+0x62>
  102aa4:	48 85 d2             	test   %rdx,%rdx
  102aa7:	74 19                	je     102ac2 <strncmp+0x62>
  102aa9:	48 83 c7 01          	add    $0x1,%rdi
  102aad:	0f b6 07             	movzbl (%rdi),%eax
  102ab0:	48 83 ea 01          	sub    $0x1,%rdx
  102ab4:	4c 8d 46 01          	lea    0x1(%rsi),%r8
  102ab8:	0f b6 4e 01          	movzbl 0x1(%rsi),%ecx
  102abc:	84 c0                	test   %al,%al
  102abe:	75 d0                	jne    102a90 <strncmp+0x30>
  102ac0:	31 c0                	xor    %eax,%eax
  102ac2:	29 c8                	sub    %ecx,%eax
  102ac4:	f3 c3                	repz retq 
  102ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102acd:	00 00 00 

0000000000102ad0 <mem_lock_heap>:
  102ad0:	8b 05 aa 81 00 00    	mov    0x81aa(%rip),%eax        # 10ac80 <mem_locked>
  102ad6:	53                   	push   %rbx
  102ad7:	85 c0                	test   %eax,%eax
  102ad9:	75 28                	jne    102b03 <mem_lock_heap+0x33>
  102adb:	48 8b 05 a6 81 00 00 	mov    0x81a6(%rip),%rax        # 10ac88 <heap_start>
  102ae2:	48 89 f3             	mov    %rsi,%rbx
  102ae5:	c7 05 91 81 00 00 01 	movl   $0x1,0x8191(%rip)        # 10ac80 <mem_locked>
  102aec:	00 00 00 
  102aef:	48 89 07             	mov    %rax,(%rdi)
  102af2:	e8 99 06 00 00       	callq  103190 <platform_mem_size>
  102af7:	48 2b 05 8a 81 00 00 	sub    0x818a(%rip),%rax        # 10ac88 <heap_start>
  102afe:	48 89 03             	mov    %rax,(%rbx)
  102b01:	5b                   	pop    %rbx
  102b02:	c3                   	retq   
  102b03:	ba 6f 47 10 00       	mov    $0x10476f,%edx
  102b08:	be 7b 47 10 00       	mov    $0x10477b,%esi
  102b0d:	bf 7e 47 10 00       	mov    $0x10477e,%edi
  102b12:	e8 f9 d5 ff ff       	callq  100110 <_assert_fail>
  102b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  102b1e:	00 00 

0000000000102b20 <mem_init>:
  102b20:	53                   	push   %rbx
  102b21:	e8 6a 06 00 00       	callq  103190 <platform_mem_size>
  102b26:	ba ff bf 10 00       	mov    $0x10bfff,%edx
  102b2b:	48 89 c3             	mov    %rax,%rbx
  102b2e:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
  102b35:	48 89 15 4c 81 00 00 	mov    %rdx,0x814c(%rip)        # 10ac88 <heap_start>
  102b3c:	48 81 c2 00 00 08 00 	add    $0x80000,%rdx
  102b43:	48 39 d0             	cmp    %rdx,%rax
  102b46:	0f 82 9b 00 00 00    	jb     102be7 <mem_init+0xc7>
  102b4c:	48 89 c2             	mov    %rax,%rdx
  102b4f:	be 30 49 10 00       	mov    $0x104930,%esi
  102b54:	bf 02 00 00 00       	mov    $0x2,%edi
  102b59:	48 c1 ea 14          	shr    $0x14,%rdx
  102b5d:	31 c0                	xor    %eax,%eax
  102b5f:	e8 6c 01 00 00       	callq  102cd0 <log>
  102b64:	ba ff ff 0f 00       	mov    $0xfffff,%edx
  102b69:	be 60 49 10 00       	mov    $0x104960,%esi
  102b6e:	bf 02 00 00 00       	mov    $0x2,%edi
  102b73:	31 c0                	xor    %eax,%eax
  102b75:	e8 56 01 00 00       	callq  102cd0 <log>
  102b7a:	b9 ff 3f 10 00       	mov    $0x103fff,%ecx
  102b7f:	ba 00 00 10 00       	mov    $0x100000,%edx
  102b84:	be 88 49 10 00       	mov    $0x104988,%esi
  102b89:	bf 02 00 00 00       	mov    $0x2,%edi
  102b8e:	31 c0                	xor    %eax,%eax
  102b90:	e8 3b 01 00 00       	callq  102cd0 <log>
  102b95:	b9 ff 5f 10 00       	mov    $0x105fff,%ecx
  102b9a:	ba 00 40 10 00       	mov    $0x104000,%edx
  102b9f:	be b0 49 10 00       	mov    $0x1049b0,%esi
  102ba4:	bf 02 00 00 00       	mov    $0x2,%edi
  102ba9:	31 c0                	xor    %eax,%eax
  102bab:	e8 20 01 00 00       	callq  102cd0 <log>
  102bb0:	b9 ff af 10 00       	mov    $0x10afff,%ecx
  102bb5:	ba 00 60 10 00       	mov    $0x106000,%edx
  102bba:	be d8 49 10 00       	mov    $0x1049d8,%esi
  102bbf:	bf 02 00 00 00       	mov    $0x2,%edi
  102bc4:	31 c0                	xor    %eax,%eax
  102bc6:	e8 05 01 00 00       	callq  102cd0 <log>
  102bcb:	48 89 d9             	mov    %rbx,%rcx
  102bce:	48 8b 15 b3 80 00 00 	mov    0x80b3(%rip),%rdx        # 10ac88 <heap_start>
  102bd5:	be 00 4a 10 00       	mov    $0x104a00,%esi
  102bda:	5b                   	pop    %rbx
  102bdb:	bf 02 00 00 00       	mov    $0x2,%edi
  102be0:	31 c0                	xor    %eax,%eax
  102be2:	e9 e9 00 00 00       	jmpq   102cd0 <log>
  102be7:	31 c9                	xor    %ecx,%ecx
  102be9:	ba 84 47 10 00       	mov    $0x104784,%edx
  102bee:	be 96 47 10 00       	mov    $0x104796,%esi
  102bf3:	bf 7e 47 10 00       	mov    $0x10477e,%edi
  102bf8:	e8 73 d5 ff ff       	callq  100170 <_abort>
  102bfd:	0f 1f 00             	nopl   (%rax)

0000000000102c00 <mem_ialloc_pages>:
  102c00:	48 83 ec 18          	sub    $0x18,%rsp
  102c04:	48 8b 05 fd 33 00 00 	mov    0x33fd(%rip),%rax        # 106008 <__stack_chk_guard>
  102c0b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  102c10:	8b 05 6a 80 00 00    	mov    0x806a(%rip),%eax        # 10ac80 <mem_locked>
  102c16:	85 c0                	test   %eax,%eax
  102c18:	75 34                	jne    102c4e <mem_ialloc_pages+0x4e>
  102c1a:	48 8b 05 67 80 00 00 	mov    0x8067(%rip),%rax        # 10ac88 <heap_start>
  102c21:	48 c1 e7 0c          	shl    $0xc,%rdi
  102c25:	48 01 c7             	add    %rax,%rdi
  102c28:	48 89 04 24          	mov    %rax,(%rsp)
  102c2c:	48 39 e7             	cmp    %rsp,%rdi
  102c2f:	48 89 3d 52 80 00 00 	mov    %rdi,0x8052(%rip)        # 10ac88 <heap_start>
  102c36:	73 2f                	jae    102c67 <mem_ialloc_pages+0x67>
  102c38:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  102c3d:	48 8b 15 c4 33 00 00 	mov    0x33c4(%rip),%rdx        # 106008 <__stack_chk_guard>
  102c44:	48 39 d1             	cmp    %rdx,%rcx
  102c47:	75 19                	jne    102c62 <mem_ialloc_pages+0x62>
  102c49:	48 83 c4 18          	add    $0x18,%rsp
  102c4d:	c3                   	retq   
  102c4e:	ba 6f 47 10 00       	mov    $0x10476f,%edx
  102c53:	be 99 47 10 00       	mov    $0x104799,%esi
  102c58:	bf 7e 47 10 00       	mov    $0x10477e,%edi
  102c5d:	e8 ae d4 ff ff       	callq  100110 <_assert_fail>
  102c62:	e8 c9 e8 ff ff       	callq  101530 <__stack_chk_fail>
  102c67:	ba 9c 47 10 00       	mov    $0x10479c,%edx
  102c6c:	be b9 47 10 00       	mov    $0x1047b9,%esi
  102c71:	bf 7e 47 10 00       	mov    $0x10477e,%edi
  102c76:	e8 95 d4 ff ff       	callq  100110 <_assert_fail>
  102c7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000102c80 <solo5_exit>:
  102c80:	53                   	push   %rbx
  102c81:	89 fa                	mov    %edi,%edx
  102c83:	89 fb                	mov    %edi,%ebx
  102c85:	be bc 47 10 00       	mov    $0x1047bc,%esi
  102c8a:	bf 02 00 00 00       	mov    $0x2,%edi
  102c8f:	31 c0                	xor    %eax,%eax
  102c91:	e8 3a 00 00 00       	callq  102cd0 <log>
  102c96:	31 f6                	xor    %esi,%esi
  102c98:	89 df                	mov    %ebx,%edi
  102c9a:	e8 c1 05 00 00       	callq  103260 <platform_exit>
  102c9f:	90                   	nop

0000000000102ca0 <solo5_abort>:
  102ca0:	be da 47 10 00       	mov    $0x1047da,%esi
  102ca5:	bf 02 00 00 00       	mov    $0x2,%edi
  102caa:	48 83 ec 08          	sub    $0x8,%rsp
  102cae:	31 c0                	xor    %eax,%eax
  102cb0:	e8 1b 00 00 00       	callq  102cd0 <log>
  102cb5:	31 f6                	xor    %esi,%esi
  102cb7:	bf ff 00 00 00       	mov    $0xff,%edi
  102cbc:	e8 9f 05 00 00       	callq  103260 <platform_exit>
  102cc1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102cc8:	00 00 00 
  102ccb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000102cd0 <log>:
  102cd0:	53                   	push   %rbx
  102cd1:	31 db                	xor    %ebx,%ebx
  102cd3:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
  102cda:	39 3d 30 33 00 00    	cmp    %edi,0x3330(%rip)        # 106010 <log_level>
  102ce0:	48 8b 05 21 33 00 00 	mov    0x3321(%rip),%rax        # 106008 <__stack_chk_guard>
  102ce7:	48 89 94 24 80 01 00 	mov    %rdx,0x180(%rsp)
  102cee:	00 
  102cef:	48 89 8c 24 88 01 00 	mov    %rcx,0x188(%rsp)
  102cf6:	00 
  102cf7:	4c 89 84 24 90 01 00 	mov    %r8,0x190(%rsp)
  102cfe:	00 
  102cff:	4c 89 8c 24 98 01 00 	mov    %r9,0x198(%rsp)
  102d06:	00 
  102d07:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
  102d0e:	00 
  102d0f:	73 27                	jae    102d38 <log+0x68>
  102d11:	48 8b 8c 24 68 01 00 	mov    0x168(%rsp),%rcx
  102d18:	00 
  102d19:	48 8b 15 e8 32 00 00 	mov    0x32e8(%rip),%rdx        # 106008 <__stack_chk_guard>
  102d20:	89 d8                	mov    %ebx,%eax
  102d22:	48 39 d1             	cmp    %rdx,%rcx
  102d25:	0f 85 a6 00 00 00    	jne    102dd1 <log+0x101>
  102d2b:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
  102d32:	5b                   	pop    %rbx
  102d33:	c3                   	retq   
  102d34:	0f 1f 40 00          	nopl   0x0(%rax)
  102d38:	48 8d 84 24 b0 01 00 	lea    0x1b0(%rsp),%rax
  102d3f:	00 
  102d40:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  102d45:	48 89 f2             	mov    %rsi,%rdx
  102d48:	48 89 e1             	mov    %rsp,%rcx
  102d4b:	be 40 01 00 00       	mov    $0x140,%esi
  102d50:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
  102d57:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  102d5c:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  102d63:	00 
  102d64:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  102d69:	e8 72 f8 ff ff       	callq  1025e0 <vsnprintf>
  102d6e:	48 98                	cltq   
  102d70:	48 3d 3f 01 00 00    	cmp    $0x13f,%rax
  102d76:	48 89 c3             	mov    %rax,%rbx
  102d79:	76 45                	jbe    102dc0 <log+0xf0>
  102d7b:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  102d80:	48 b8 28 74 72 75 6e 	movabs $0x7461636e75727428,%rax
  102d87:	63 61 74 
  102d8a:	be 3f 01 00 00       	mov    $0x13f,%esi
  102d8f:	48 89 44 24 1b       	mov    %rax,0x1b(%rsp)
  102d94:	c7 44 24 23 65 64 29 	movl   $0xa296465,0x23(%rsp)
  102d9b:	0a 
  102d9c:	bb 3f 01 00 00       	mov    $0x13f,%ebx
  102da1:	c6 44 24 27 00       	movb   $0x0,0x27(%rsp)
  102da6:	e8 35 07 00 00       	callq  1034e0 <platform_puts>
  102dab:	48 8d 7c 24 1b       	lea    0x1b(%rsp),%rdi
  102db0:	be 0c 00 00 00       	mov    $0xc,%esi
  102db5:	e8 26 07 00 00       	callq  1034e0 <platform_puts>
  102dba:	e9 52 ff ff ff       	jmpq   102d11 <log+0x41>
  102dbf:	90                   	nop
  102dc0:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  102dc5:	89 c6                	mov    %eax,%esi
  102dc7:	e8 14 07 00 00       	callq  1034e0 <platform_puts>
  102dcc:	e9 40 ff ff ff       	jmpq   102d11 <log+0x41>
  102dd1:	e8 5a e7 ff ff       	callq  101530 <__stack_chk_fail>
  102dd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102ddd:	00 00 00 

0000000000102de0 <log_set_level>:
  102de0:	89 3d 2a 32 00 00    	mov    %edi,0x322a(%rip)        # 106010 <log_level>
  102de6:	c3                   	retq   
  102de7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  102dee:	00 00 

0000000000102df0 <cmdline_parse>:
  102df0:	53                   	push   %rbx
  102df1:	ba 74 00 00 00       	mov    $0x74,%edx
  102df6:	b9 67 00 00 00       	mov    $0x67,%ecx
  102dfb:	48 89 fb             	mov    %rdi,%rbx
  102dfe:	48 83 ec 30          	sub    $0x30,%rsp
  102e02:	48 8b 05 ff 31 00 00 	mov    0x31ff(%rip),%rax        # 106008 <__stack_chk_guard>
  102e09:	c7 44 24 14 71 75 69 	movl   $0x65697571,0x14(%rsp)
  102e10:	65 
  102e11:	66 89 54 24 18       	mov    %dx,0x18(%rsp)
  102e16:	c7 44 24 22 64 65 62 	movl   $0x75626564,0x22(%rsp)
  102e1d:	75 
  102e1e:	66 89 4c 24 26       	mov    %cx,0x26(%rsp)
  102e23:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  102e28:	48 b8 2d 2d 73 6f 6c 	movabs $0x3a356f6c6f732d2d,%rax
  102e2f:	6f 35 3a 
  102e32:	48 89 44 24 0c       	mov    %rax,0xc(%rsp)
  102e37:	48 89 44 24 1a       	mov    %rax,0x1a(%rsp)
  102e3c:	0f be 3f             	movsbl (%rdi),%edi
  102e3f:	40 84 ff             	test   %dil,%dil
  102e42:	75 1c                	jne    102e60 <cmdline_parse+0x70>
  102e44:	e9 d8 00 00 00       	jmpq   102f21 <cmdline_parse+0x131>
  102e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102e50:	48 83 c3 01          	add    $0x1,%rbx
  102e54:	0f be 3b             	movsbl (%rbx),%edi
  102e57:	40 84 ff             	test   %dil,%dil
  102e5a:	0f 84 c1 00 00 00    	je     102f21 <cmdline_parse+0x131>
  102e60:	e8 db fb ff ff       	callq  102a40 <isspace>
  102e65:	85 c0                	test   %eax,%eax
  102e67:	75 e7                	jne    102e50 <cmdline_parse+0x60>
  102e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102e70:	0f b6 03             	movzbl (%rbx),%eax
  102e73:	84 c0                	test   %al,%al
  102e75:	74 50                	je     102ec7 <cmdline_parse+0xd7>
  102e77:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  102e7c:	ba 0d 00 00 00       	mov    $0xd,%edx
  102e81:	48 89 df             	mov    %rbx,%rdi
  102e84:	e8 d7 fb ff ff       	callq  102a60 <strncmp>
  102e89:	85 c0                	test   %eax,%eax
  102e8b:	75 5b                	jne    102ee8 <cmdline_parse+0xf8>
  102e8d:	0f be 7b 0d          	movsbl 0xd(%rbx),%edi
  102e91:	e8 aa fb ff ff       	callq  102a40 <isspace>
  102e96:	85 c0                	test   %eax,%eax
  102e98:	75 06                	jne    102ea0 <cmdline_parse+0xb0>
  102e9a:	80 7b 0d 00          	cmpb   $0x0,0xd(%rbx)
  102e9e:	75 27                	jne    102ec7 <cmdline_parse+0xd7>
  102ea0:	31 ff                	xor    %edi,%edi
  102ea2:	48 83 c3 0d          	add    $0xd,%rbx
  102ea6:	e8 35 ff ff ff       	callq  102de0 <log_set_level>
  102eab:	eb 13                	jmp    102ec0 <cmdline_parse+0xd0>
  102ead:	0f 1f 00             	nopl   (%rax)
  102eb0:	0f be fa             	movsbl %dl,%edi
  102eb3:	e8 88 fb ff ff       	callq  102a40 <isspace>
  102eb8:	85 c0                	test   %eax,%eax
  102eba:	74 b4                	je     102e70 <cmdline_parse+0x80>
  102ebc:	48 83 c3 01          	add    $0x1,%rbx
  102ec0:	0f b6 13             	movzbl (%rbx),%edx
  102ec3:	84 d2                	test   %dl,%dl
  102ec5:	75 e9                	jne    102eb0 <cmdline_parse+0xc0>
  102ec7:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  102ecc:	48 8b 15 35 31 00 00 	mov    0x3135(%rip),%rdx        # 106008 <__stack_chk_guard>
  102ed3:	48 89 d8             	mov    %rbx,%rax
  102ed6:	48 39 d1             	cmp    %rdx,%rcx
  102ed9:	75 4d                	jne    102f28 <cmdline_parse+0x138>
  102edb:	48 83 c4 30          	add    $0x30,%rsp
  102edf:	5b                   	pop    %rbx
  102ee0:	c3                   	retq   
  102ee1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102ee8:	48 8d 74 24 1a       	lea    0x1a(%rsp),%rsi
  102eed:	ba 0d 00 00 00       	mov    $0xd,%edx
  102ef2:	48 89 df             	mov    %rbx,%rdi
  102ef5:	e8 66 fb ff ff       	callq  102a60 <strncmp>
  102efa:	85 c0                	test   %eax,%eax
  102efc:	75 c9                	jne    102ec7 <cmdline_parse+0xd7>
  102efe:	0f be 7b 0d          	movsbl 0xd(%rbx),%edi
  102f02:	e8 39 fb ff ff       	callq  102a40 <isspace>
  102f07:	85 c0                	test   %eax,%eax
  102f09:	75 06                	jne    102f11 <cmdline_parse+0x121>
  102f0b:	80 7b 0d 00          	cmpb   $0x0,0xd(%rbx)
  102f0f:	75 b6                	jne    102ec7 <cmdline_parse+0xd7>
  102f11:	bf 03 00 00 00       	mov    $0x3,%edi
  102f16:	48 83 c3 0d          	add    $0xd,%rbx
  102f1a:	e8 c1 fe ff ff       	callq  102de0 <log_set_level>
  102f1f:	eb 9f                	jmp    102ec0 <cmdline_parse+0xd0>
  102f21:	31 c0                	xor    %eax,%eax
  102f23:	e9 4b ff ff ff       	jmpq   102e73 <cmdline_parse+0x83>
  102f28:	e8 03 e6 ff ff       	callq  101530 <__stack_chk_fail>
  102f2d:	0f 1f 00             	nopl   (%rax)

0000000000102f30 <solo5_set_tls_base>:
  102f30:	48 83 ec 08          	sub    $0x8,%rsp
  102f34:	e8 67 02 00 00       	callq  1031a0 <platform_set_tls_base>
  102f39:	83 f8 01             	cmp    $0x1,%eax
  102f3c:	19 c0                	sbb    %eax,%eax
  102f3e:	48 83 c4 08          	add    $0x8,%rsp
  102f42:	f7 d0                	not    %eax
  102f44:	83 e0 02             	and    $0x2,%eax
  102f47:	c3                   	retq   
  102f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  102f4f:	00 

0000000000102f50 <mft_validate>:
  102f50:	48 83 fe 07          	cmp    $0x7,%rsi
  102f54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102f59:	76 7c                	jbe    102fd7 <mft_validate+0x87>
  102f5b:	83 3f 01             	cmpl   $0x1,(%rdi)
  102f5e:	75 75                	jne    102fd5 <mft_validate+0x85>
  102f60:	8b 57 04             	mov    0x4(%rdi),%edx
  102f63:	4c 8d 04 52          	lea    (%rdx,%rdx,2),%r8
  102f67:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
  102f6a:	4a 8d 14 82          	lea    (%rdx,%r8,4),%rdx
  102f6e:	48 8d 14 d5 08 00 00 	lea    0x8(,%rdx,8),%rdx
  102f75:	00 
  102f76:	48 39 d6             	cmp    %rdx,%rsi
  102f79:	75 55                	jne    102fd0 <mft_validate+0x80>
  102f7b:	83 f9 3f             	cmp    $0x3f,%ecx
  102f7e:	77 50                	ja     102fd0 <mft_validate+0x80>
  102f80:	81 7f 4c 00 00 00 40 	cmpl   $0x40000000,0x4c(%rdi)
  102f87:	75 4c                	jne    102fd5 <mft_validate+0x85>
  102f89:	80 7f 08 00          	cmpb   $0x0,0x8(%rdi)
  102f8d:	75 46                	jne    102fd5 <mft_validate+0x85>
  102f8f:	89 ca                	mov    %ecx,%edx
  102f91:	48 8d 47 4b          	lea    0x4b(%rdi),%rax
  102f95:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
  102f99:	48 8d 14 8a          	lea    (%rdx,%rcx,4),%rdx
  102f9d:	48 8d 14 d5 b3 00 00 	lea    0xb3(,%rdx,8),%rdx
  102fa4:	00 
  102fa5:	48 01 d7             	add    %rdx,%rdi
  102fa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  102faf:	00 
  102fb0:	80 38 00             	cmpb   $0x0,(%rax)
  102fb3:	75 1b                	jne    102fd0 <mft_validate+0x80>
  102fb5:	80 78 1d 00          	cmpb   $0x0,0x1d(%rax)
  102fb9:	75 15                	jne    102fd0 <mft_validate+0x80>
  102fbb:	48 83 c0 68          	add    $0x68,%rax
  102fbf:	48 39 f8             	cmp    %rdi,%rax
  102fc2:	75 ec                	jne    102fb0 <mft_validate+0x60>
  102fc4:	31 c0                	xor    %eax,%eax
  102fc6:	c3                   	retq   
  102fc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  102fce:	00 00 
  102fd0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102fd5:	f3 c3                	repz retq 
  102fd7:	f3 c3                	repz retq 
  102fd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000102fe0 <mft_get_builtin_mft1_unconst>:
  102fe0:	48 8d 47 18          	lea    0x18(%rdi),%rax
  102fe4:	48 89 06             	mov    %rax,(%rsi)
  102fe7:	8b 47 04             	mov    0x4(%rdi),%eax
  102fea:	48 83 e8 04          	sub    $0x4,%rax
  102fee:	48 89 02             	mov    %rax,(%rdx)
  102ff1:	c3                   	retq   
  102ff2:	0f 1f 40 00          	nopl   0x0(%rax)
  102ff6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102ffd:	00 00 00 

0000000000103000 <mft_get_builtin_mft1>:
  103000:	48 8d 47 18          	lea    0x18(%rdi),%rax
  103004:	48 89 06             	mov    %rax,(%rsi)
  103007:	8b 47 04             	mov    0x4(%rdi),%eax
  10300a:	48 83 e8 04          	sub    $0x4,%rax
  10300e:	48 89 02             	mov    %rax,(%rdx)
  103011:	c3                   	retq   
  103012:	0f 1f 40 00          	nopl   0x0(%rax)
  103016:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10301d:	00 00 00 

0000000000103020 <mft_get_by_name>:
  103020:	41 57                	push   %r15
  103022:	41 56                	push   %r14
  103024:	41 89 d6             	mov    %edx,%r14d
  103027:	41 55                	push   %r13
  103029:	41 54                	push   %r12
  10302b:	49 89 fd             	mov    %rdi,%r13
  10302e:	55                   	push   %rbp
  10302f:	53                   	push   %rbx
  103030:	31 db                	xor    %ebx,%ebx
  103032:	48 89 f5             	mov    %rsi,%rbp
  103035:	49 89 cc             	mov    %rcx,%r12
  103038:	48 83 ec 08          	sub    $0x8,%rsp
  10303c:	8b 47 04             	mov    0x4(%rdi),%eax
  10303f:	85 c0                	test   %eax,%eax
  103041:	75 0e                	jne    103051 <mft_get_by_name+0x31>
  103043:	eb 5b                	jmp    1030a0 <mft_get_by_name+0x80>
  103045:	0f 1f 00             	nopl   (%rax)
  103048:	83 c3 01             	add    $0x1,%ebx
  10304b:	41 39 5d 04          	cmp    %ebx,0x4(%r13)
  10304f:	74 4f                	je     1030a0 <mft_get_by_name+0x80>
  103051:	89 d8                	mov    %ebx,%eax
  103053:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
  103057:	48 8d 04 88          	lea    (%rax,%rcx,4),%rax
  10305b:	48 c1 e0 03          	shl    $0x3,%rax
  10305f:	45 39 74 05 4c       	cmp    %r14d,0x4c(%r13,%rax,1)
  103064:	75 e2                	jne    103048 <mft_get_by_name+0x28>
  103066:	4d 8d 7c 05 08       	lea    0x8(%r13,%rax,1),%r15
  10306b:	ba 44 00 00 00       	mov    $0x44,%edx
  103070:	48 89 ee             	mov    %rbp,%rsi
  103073:	4c 89 ff             	mov    %r15,%rdi
  103076:	e8 e5 f9 ff ff       	callq  102a60 <strncmp>
  10307b:	85 c0                	test   %eax,%eax
  10307d:	75 c9                	jne    103048 <mft_get_by_name+0x28>
  10307f:	4d 85 e4             	test   %r12,%r12
  103082:	74 04                	je     103088 <mft_get_by_name+0x68>
  103084:	41 89 1c 24          	mov    %ebx,(%r12)
  103088:	48 83 c4 08          	add    $0x8,%rsp
  10308c:	4c 89 f8             	mov    %r15,%rax
  10308f:	5b                   	pop    %rbx
  103090:	5d                   	pop    %rbp
  103091:	41 5c                	pop    %r12
  103093:	41 5d                	pop    %r13
  103095:	41 5e                	pop    %r14
  103097:	41 5f                	pop    %r15
  103099:	c3                   	retq   
  10309a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  1030a0:	48 83 c4 08          	add    $0x8,%rsp
  1030a4:	31 c0                	xor    %eax,%eax
  1030a6:	5b                   	pop    %rbx
  1030a7:	5d                   	pop    %rbp
  1030a8:	41 5c                	pop    %r12
  1030aa:	41 5d                	pop    %r13
  1030ac:	41 5e                	pop    %r14
  1030ae:	41 5f                	pop    %r15
  1030b0:	c3                   	retq   
  1030b1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1030b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1030bd:	00 00 00 

00000000001030c0 <mft_get_by_index>:
  1030c0:	39 77 04             	cmp    %esi,0x4(%rdi)
  1030c3:	76 2b                	jbe    1030f0 <mft_get_by_index+0x30>
  1030c5:	89 f6                	mov    %esi,%esi
  1030c7:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
  1030cb:	48 8d 0c 86          	lea    (%rsi,%rax,4),%rcx
  1030cf:	48 c1 e1 03          	shl    $0x3,%rcx
  1030d3:	39 54 0f 4c          	cmp    %edx,0x4c(%rdi,%rcx,1)
  1030d7:	48 8d 44 0f 08       	lea    0x8(%rdi,%rcx,1),%rax
  1030dc:	ba 00 00 00 00       	mov    $0x0,%edx
  1030e1:	48 0f 45 c2          	cmovne %rdx,%rax
  1030e5:	c3                   	retq   
  1030e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1030ed:	00 00 00 
  1030f0:	31 c0                	xor    %eax,%eax
  1030f2:	c3                   	retq   
  1030f3:	0f 1f 00             	nopl   (%rax)
  1030f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1030fd:	00 00 00 

0000000000103100 <mft_type_to_string>:
  103100:	83 ff 02             	cmp    $0x2,%edi
  103103:	74 4b                	je     103150 <mft_type_to_string+0x50>
  103105:	81 ff 00 00 00 40    	cmp    $0x40000000,%edi
  10310b:	74 33                	je     103140 <mft_type_to_string+0x40>
  10310d:	83 ff 01             	cmp    $0x1,%edi
  103110:	74 1e                	je     103130 <mft_type_to_string+0x30>
  103112:	48 83 ec 08          	sub    $0x8,%rsp
  103116:	ba 1c 48 10 00       	mov    $0x10481c,%edx
  10311b:	be 22 48 10 00       	mov    $0x104822,%esi
  103120:	bf 26 48 10 00       	mov    $0x104826,%edi
  103125:	e8 e6 cf ff ff       	callq  100110 <_assert_fail>
  10312a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  103130:	b8 f7 47 10 00       	mov    $0x1047f7,%eax
  103135:	c3                   	retq   
  103136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10313d:	00 00 00 
  103140:	b8 0d 48 10 00       	mov    $0x10480d,%eax
  103145:	c3                   	retq   
  103146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10314d:	00 00 00 
  103150:	b8 03 48 10 00       	mov    $0x104803,%eax
  103155:	c3                   	retq   
  103156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10315d:	00 00 00 

0000000000103160 <process_bootinfo>:
  103160:	48 8b 47 18          	mov    0x18(%rdi),%rax
  103164:	48 89 05 2d 7b 00 00 	mov    %rax,0x7b2d(%rip)        # 10ac98 <cmdline>
  10316b:	48 8b 07             	mov    (%rdi),%rax
  10316e:	48 89 05 1b 7b 00 00 	mov    %rax,0x7b1b(%rip)        # 10ac90 <mem_size>
  103175:	c3                   	retq   
  103176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10317d:	00 00 00 

0000000000103180 <platform_cmdline>:
  103180:	48 8b 05 11 7b 00 00 	mov    0x7b11(%rip),%rax        # 10ac98 <cmdline>
  103187:	c3                   	retq   
  103188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10318f:	00 

0000000000103190 <platform_mem_size>:
  103190:	48 8b 05 f9 7a 00 00 	mov    0x7af9(%rip),%rax        # 10ac90 <mem_size>
  103197:	c3                   	retq   
  103198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10319f:	00 

00000000001031a0 <platform_set_tls_base>:
  1031a0:	48 89 fa             	mov    %rdi,%rdx
  1031a3:	b9 00 01 00 c0       	mov    $0xc0000100,%ecx
  1031a8:	89 f8                	mov    %edi,%eax
  1031aa:	48 c1 ea 20          	shr    $0x20,%rdx
  1031ae:	0f 30                	wrmsr  
  1031b0:	31 c0                	xor    %eax,%eax
  1031b2:	c3                   	retq   
  1031b3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1031ba:	00 00 00 
  1031bd:	0f 1f 00             	nopl   (%rax)

00000000001031c0 <platform_intr_ack_irq>:
  1031c0:	f3 c3                	repz retq 
  1031c2:	0f 1f 40 00          	nopl   0x0(%rax)
  1031c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1031cd:	00 00 00 

00000000001031d0 <platform_intr_mask_irq>:
  1031d0:	f3 c3                	repz retq 
  1031d2:	0f 1f 40 00          	nopl   0x0(%rax)
  1031d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1031dd:	00 00 00 

00000000001031e0 <platform_intr_clear_irq>:
  1031e0:	f3 c3                	repz retq 
  1031e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1031e9:	00 00 00 
  1031ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000001031f0 <time_init>:
  1031f0:	48 83 ec 08          	sub    $0x8,%rsp
  1031f4:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  1031f8:	e8 83 01 00 00       	callq  103380 <tscclock_init>
  1031fd:	85 c0                	test   %eax,%eax
  1031ff:	75 05                	jne    103206 <time_init+0x16>
  103201:	48 83 c4 08          	add    $0x8,%rsp
  103205:	c3                   	retq   
  103206:	ba 30 4a 10 00       	mov    $0x104a30,%edx
  10320b:	be 23 47 10 00       	mov    $0x104723,%esi
  103210:	bf 3e 48 10 00       	mov    $0x10483e,%edi
  103215:	e8 f6 ce ff ff       	callq  100110 <_assert_fail>
  10321a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000103220 <solo5_clock_monotonic>:
  103220:	e9 1b 01 00 00       	jmpq   103340 <tscclock_monotonic>
  103225:	90                   	nop
  103226:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10322d:	00 00 00 

0000000000103230 <solo5_clock_wall>:
  103230:	53                   	push   %rbx
  103231:	e8 0a 01 00 00       	callq  103340 <tscclock_monotonic>
  103236:	48 89 c3             	mov    %rax,%rbx
  103239:	e8 92 02 00 00       	callq  1034d0 <tscclock_epochoffset>
  10323e:	48 01 d8             	add    %rbx,%rax
  103241:	5b                   	pop    %rbx
  103242:	c3                   	retq   
  103243:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10324a:	00 00 00 
  10324d:	0f 1f 00             	nopl   (%rax)

0000000000103250 <platform_init>:
  103250:	e9 0b ff ff ff       	jmpq   103160 <process_bootinfo>
  103255:	90                   	nop
  103256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10325d:	00 00 00 

0000000000103260 <platform_exit>:
  103260:	48 83 ec 28          	sub    $0x28,%rsp
  103264:	48 8b 05 9d 2d 00 00 	mov    0x2d9d(%rip),%rax        # 106008 <__stack_chk_guard>
  10326b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  103270:	89 7c 24 10          	mov    %edi,0x10(%rsp)
  103274:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  103279:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  10327e:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  103283:	48 39 d0             	cmp    %rdx,%rax
  103286:	77 08                	ja     103290 <platform_exit+0x30>
  103288:	ba 08 05 00 00       	mov    $0x508,%edx
  10328d:	ef                   	out    %eax,(%dx)
  10328e:	eb fe                	jmp    10328e <platform_exit+0x2e>
  103290:	ba 49 48 10 00       	mov    $0x104849,%edx
  103295:	be 67 48 10 00       	mov    $0x104867,%esi
  10329a:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  10329f:	e8 6c ce ff ff       	callq  100110 <_assert_fail>
  1032a4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1032ab:	00 00 00 
  1032ae:	66 90                	xchg   %ax,%ax

00000000001032b0 <solo5_yield>:
  1032b0:	55                   	push   %rbp
  1032b1:	53                   	push   %rbx
  1032b2:	48 89 fb             	mov    %rdi,%rbx
  1032b5:	48 89 f5             	mov    %rsi,%rbp
  1032b8:	48 83 ec 28          	sub    $0x28,%rsp
  1032bc:	48 8b 05 45 2d 00 00 	mov    0x2d45(%rip),%rax        # 106008 <__stack_chk_guard>
  1032c3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  1032c8:	e8 53 ff ff ff       	callq  103220 <solo5_clock_monotonic>
  1032cd:	48 39 d8             	cmp    %rbx,%rax
  1032d0:	72 46                	jb     103318 <solo5_yield+0x68>
  1032d2:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  1032d9:	00 
  1032da:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  1032df:	48 89 e0             	mov    %rsp,%rax
  1032e2:	48 39 d4             	cmp    %rdx,%rsp
  1032e5:	77 3a                	ja     103321 <solo5_yield+0x71>
  1032e7:	ba 03 05 00 00       	mov    $0x503,%edx
  1032ec:	ef                   	out    %eax,(%dx)
  1032ed:	48 85 ed             	test   %rbp,%rbp
  1032f0:	74 09                	je     1032fb <solo5_yield+0x4b>
  1032f2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  1032f7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  1032fb:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  103300:	48 8b 05 01 2d 00 00 	mov    0x2d01(%rip),%rax        # 106008 <__stack_chk_guard>
  103307:	48 39 c2             	cmp    %rax,%rdx
  10330a:	75 29                	jne    103335 <solo5_yield+0x85>
  10330c:	48 83 c4 28          	add    $0x28,%rsp
  103310:	5b                   	pop    %rbx
  103311:	5d                   	pop    %rbp
  103312:	c3                   	retq   
  103313:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  103318:	48 29 c3             	sub    %rax,%rbx
  10331b:	48 89 1c 24          	mov    %rbx,(%rsp)
  10331f:	eb b9                	jmp    1032da <solo5_yield+0x2a>
  103321:	ba 49 48 10 00       	mov    $0x104849,%edx
  103326:	be 67 48 10 00       	mov    $0x104867,%esi
  10332b:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  103330:	e8 db cd ff ff       	callq  100110 <_assert_fail>
  103335:	e8 f6 e1 ff ff       	callq  101530 <__stack_chk_fail>
  10333a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000103340 <tscclock_monotonic>:
  103340:	0f 31                	rdtsc  
  103342:	48 c1 e2 20          	shl    $0x20,%rdx
  103346:	0f b6 0d 57 79 00 00 	movzbl 0x7957(%rip),%ecx        # 10aca4 <tsc_shift>
  10334d:	48 89 d6             	mov    %rdx,%rsi
  103350:	8b 15 4a 79 00 00    	mov    0x794a(%rip),%edx        # 10aca0 <tsc_mult>
  103356:	48 09 c6             	or     %rax,%rsi
  103359:	48 89 f0             	mov    %rsi,%rax
  10335c:	48 2b 05 45 79 00 00 	sub    0x7945(%rip),%rax        # 10aca8 <tsc_base>
  103363:	48 89 35 3e 79 00 00 	mov    %rsi,0x793e(%rip)        # 10aca8 <tsc_base>
  10336a:	48 f7 e2             	mul    %rdx
  10336d:	48 0f ad d0          	shrd   %cl,%rdx,%rax
  103371:	48 03 05 38 79 00 00 	add    0x7938(%rip),%rax        # 10acb0 <time_base>
  103378:	48 89 05 31 79 00 00 	mov    %rax,0x7931(%rip)        # 10acb0 <time_base>
  10337f:	c3                   	retq   

0000000000103380 <tscclock_init>:
  103380:	48 83 ec 18          	sub    $0x18,%rsp
  103384:	48 8b 05 7d 2c 00 00 	mov    0x2c7d(%rip),%rax        # 106008 <__stack_chk_guard>
  10338b:	8b 35 0f 79 00 00    	mov    0x790f(%rip),%esi        # 10aca0 <tsc_mult>
  103391:	41 b8 20 00 00 00    	mov    $0x20,%r8d
  103397:	b9 20 00 00 00       	mov    $0x20,%ecx
  10339c:	41 ba 00 ca 9a 3b    	mov    $0x3b9aca00,%r10d
  1033a2:	49 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%r9
  1033a9:	ff ff ff 
  1033ac:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  1033b1:	eb 13                	jmp    1033c6 <tscclock_init+0x46>
  1033b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1033b8:	84 c9                	test   %cl,%cl
  1033ba:	89 c6                	mov    %eax,%esi
  1033bc:	74 23                	je     1033e1 <tscclock_init+0x61>
  1033be:	85 f6                	test   %esi,%esi
  1033c0:	0f 85 ba 00 00 00    	jne    103480 <tscclock_init+0x100>
  1033c6:	4c 89 d0             	mov    %r10,%rax
  1033c9:	31 d2                	xor    %edx,%edx
  1033cb:	48 d3 e0             	shl    %cl,%rax
  1033ce:	48 f7 f7             	div    %rdi
  1033d1:	4c 85 c8             	test   %r9,%rax
  1033d4:	74 e2                	je     1033b8 <tscclock_init+0x38>
  1033d6:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
  1033da:	44 89 c1             	mov    %r8d,%ecx
  1033dd:	84 c9                	test   %cl,%cl
  1033df:	75 dd                	jne    1033be <tscclock_init+0x3e>
  1033e1:	85 f6                	test   %esi,%esi
  1033e3:	89 35 b7 78 00 00    	mov    %esi,0x78b7(%rip)        # 10aca0 <tsc_mult>
  1033e9:	44 88 05 b4 78 00 00 	mov    %r8b,0x78b4(%rip)        # 10aca4 <tsc_shift>
  1033f0:	0f 84 b9 00 00 00    	je     1034af <tscclock_init+0x12f>
  1033f6:	45 31 c0             	xor    %r8d,%r8d
  1033f9:	89 f1                	mov    %esi,%ecx
  1033fb:	48 89 fa             	mov    %rdi,%rdx
  1033fe:	be a0 4a 10 00       	mov    $0x104aa0,%esi
  103403:	bf 03 00 00 00       	mov    $0x3,%edi
  103408:	31 c0                	xor    %eax,%eax
  10340a:	e8 c1 f8 ff ff       	callq  102cd0 <log>
  10340f:	0f 31                	rdtsc  
  103411:	48 89 c1             	mov    %rax,%rcx
  103414:	48 89 d0             	mov    %rdx,%rax
  103417:	8b 15 83 78 00 00    	mov    0x7883(%rip),%edx        # 10aca0 <tsc_mult>
  10341d:	48 c1 e0 20          	shl    $0x20,%rax
  103421:	48 09 c8             	or     %rcx,%rax
  103424:	0f b6 0d 79 78 00 00 	movzbl 0x7879(%rip),%ecx        # 10aca4 <tsc_shift>
  10342b:	48 89 05 76 78 00 00 	mov    %rax,0x7876(%rip)        # 10aca8 <tsc_base>
  103432:	48 f7 e2             	mul    %rdx
  103435:	48 0f ad d0          	shrd   %cl,%rdx,%rax
  103439:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  10343e:	48 89 05 6b 78 00 00 	mov    %rax,0x786b(%rip)        # 10acb0 <time_base>
  103445:	48 89 e0             	mov    %rsp,%rax
  103448:	48 39 d4             	cmp    %rdx,%rsp
  10344b:	77 4e                	ja     10349b <tscclock_init+0x11b>
  10344d:	ba 01 05 00 00       	mov    $0x501,%edx
  103452:	ef                   	out    %eax,(%dx)
  103453:	48 8b 04 24          	mov    (%rsp),%rax
  103457:	48 2b 05 52 78 00 00 	sub    0x7852(%rip),%rax        # 10acb0 <time_base>
  10345e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  103463:	48 8b 15 9e 2b 00 00 	mov    0x2b9e(%rip),%rdx        # 106008 <__stack_chk_guard>
  10346a:	48 89 05 47 78 00 00 	mov    %rax,0x7847(%rip)        # 10acb8 <wc_epochoffset>
  103471:	31 c0                	xor    %eax,%eax
  103473:	48 39 d1             	cmp    %rdx,%rcx
  103476:	75 1e                	jne    103496 <tscclock_init+0x116>
  103478:	48 83 c4 18          	add    $0x18,%rsp
  10347c:	c3                   	retq   
  10347d:	0f 1f 00             	nopl   (%rax)
  103480:	44 88 05 1d 78 00 00 	mov    %r8b,0x781d(%rip)        # 10aca4 <tsc_shift>
  103487:	89 35 13 78 00 00    	mov    %esi,0x7813(%rip)        # 10aca0 <tsc_mult>
  10348d:	44 0f b6 c1          	movzbl %cl,%r8d
  103491:	e9 63 ff ff ff       	jmpq   1033f9 <tscclock_init+0x79>
  103496:	e8 95 e0 ff ff       	callq  101530 <__stack_chk_fail>
  10349b:	ba 49 48 10 00       	mov    $0x104849,%edx
  1034a0:	be 67 48 10 00       	mov    $0x104867,%esi
  1034a5:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  1034aa:	e8 61 cc ff ff       	callq  100110 <_assert_fail>
  1034af:	ba 6a 48 10 00       	mov    $0x10486a,%edx
  1034b4:	be 79 48 10 00       	mov    $0x104879,%esi
  1034b9:	bf 7c 48 10 00       	mov    $0x10487c,%edi
  1034be:	e8 4d cc ff ff       	callq  100110 <_assert_fail>
  1034c3:	0f 1f 00             	nopl   (%rax)
  1034c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1034cd:	00 00 00 

00000000001034d0 <tscclock_epochoffset>:
  1034d0:	48 8b 05 e1 77 00 00 	mov    0x77e1(%rip),%rax        # 10acb8 <wc_epochoffset>
  1034d7:	c3                   	retq   
  1034d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1034df:	00 

00000000001034e0 <platform_puts>:
  1034e0:	48 83 ec 28          	sub    $0x28,%rsp
  1034e4:	48 8b 05 1d 2b 00 00 	mov    0x2b1d(%rip),%rax        # 106008 <__stack_chk_guard>
  1034eb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  1034f0:	48 63 f6             	movslq %esi,%rsi
  1034f3:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  1034f8:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  1034fd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  103502:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  103507:	48 39 d0             	cmp    %rdx,%rax
  10350a:	77 20                	ja     10352c <platform_puts+0x4c>
  10350c:	ba 02 05 00 00       	mov    $0x502,%edx
  103511:	ef                   	out    %eax,(%dx)
  103512:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  103517:	48 8b 15 ea 2a 00 00 	mov    0x2aea(%rip),%rdx        # 106008 <__stack_chk_guard>
  10351e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  103522:	48 39 d1             	cmp    %rdx,%rcx
  103525:	75 19                	jne    103540 <platform_puts+0x60>
  103527:	48 83 c4 28          	add    $0x28,%rsp
  10352b:	c3                   	retq   
  10352c:	ba 49 48 10 00       	mov    $0x104849,%edx
  103531:	be 67 48 10 00       	mov    $0x104867,%esi
  103536:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  10353b:	e8 d0 cb ff ff       	callq  100110 <_assert_fail>
  103540:	e8 eb df ff ff       	callq  101530 <__stack_chk_fail>
  103545:	90                   	nop
  103546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10354d:	00 00 00 

0000000000103550 <solo5_console_write>:
  103550:	48 83 ec 28          	sub    $0x28,%rsp
  103554:	48 8b 05 ad 2a 00 00 	mov    0x2aad(%rip),%rax        # 106008 <__stack_chk_guard>
  10355b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  103560:	48 63 f6             	movslq %esi,%rsi
  103563:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  103568:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  10356d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  103572:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  103577:	48 39 d0             	cmp    %rdx,%rax
  10357a:	77 1c                	ja     103598 <solo5_console_write+0x48>
  10357c:	ba 02 05 00 00       	mov    $0x502,%edx
  103581:	ef                   	out    %eax,(%dx)
  103582:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  103587:	48 8b 05 7a 2a 00 00 	mov    0x2a7a(%rip),%rax        # 106008 <__stack_chk_guard>
  10358e:	48 39 c2             	cmp    %rax,%rdx
  103591:	75 19                	jne    1035ac <solo5_console_write+0x5c>
  103593:	48 83 c4 28          	add    $0x28,%rsp
  103597:	c3                   	retq   
  103598:	ba 49 48 10 00       	mov    $0x104849,%edx
  10359d:	be 67 48 10 00       	mov    $0x104867,%esi
  1035a2:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  1035a7:	e8 64 cb ff ff       	callq  100110 <_assert_fail>
  1035ac:	e8 7f df ff ff       	callq  101530 <__stack_chk_fail>
  1035b1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1035b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1035bd:	00 00 00 

00000000001035c0 <console_init>:
  1035c0:	f3 c3                	repz retq 
  1035c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1035c9:	00 00 00 
  1035cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000001035d0 <solo5_net_write>:
  1035d0:	48 83 ec 38          	sub    $0x38,%rsp
  1035d4:	48 8b 05 2d 2a 00 00 	mov    0x2a2d(%rip),%rax        # 106008 <__stack_chk_guard>
  1035db:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  1035e0:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  1035e5:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  1035ea:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  1035ef:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  1035f4:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  1035f9:	48 39 d0             	cmp    %rdx,%rax
  1035fc:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  103603:	00 
  103604:	77 20                	ja     103626 <solo5_net_write+0x56>
  103606:	ba 06 05 00 00       	mov    $0x506,%edx
  10360b:	ef                   	out    %eax,(%dx)
  10360c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  103610:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  103615:	48 8b 15 ec 29 00 00 	mov    0x29ec(%rip),%rdx        # 106008 <__stack_chk_guard>
  10361c:	48 39 d1             	cmp    %rdx,%rcx
  10361f:	75 19                	jne    10363a <solo5_net_write+0x6a>
  103621:	48 83 c4 38          	add    $0x38,%rsp
  103625:	c3                   	retq   
  103626:	ba 49 48 10 00       	mov    $0x104849,%edx
  10362b:	be 67 48 10 00       	mov    $0x104867,%esi
  103630:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  103635:	e8 d6 ca ff ff       	callq  100110 <_assert_fail>
  10363a:	e8 f1 de ff ff       	callq  101530 <__stack_chk_fail>
  10363f:	90                   	nop

0000000000103640 <solo5_net_read>:
  103640:	48 83 ec 38          	sub    $0x38,%rsp
  103644:	48 8b 05 bd 29 00 00 	mov    0x29bd(%rip),%rax        # 106008 <__stack_chk_guard>
  10364b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  103650:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  103655:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  10365a:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  10365f:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  103664:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  103669:	48 39 d0             	cmp    %rdx,%rax
  10366c:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  103673:	00 
  103674:	77 28                	ja     10369e <solo5_net_read+0x5e>
  103676:	ba 07 05 00 00       	mov    $0x507,%edx
  10367b:	ef                   	out    %eax,(%dx)
  10367c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  103681:	48 89 01             	mov    %rax,(%rcx)
  103684:	8b 44 24 20          	mov    0x20(%rsp),%eax
  103688:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  10368d:	48 8b 15 74 29 00 00 	mov    0x2974(%rip),%rdx        # 106008 <__stack_chk_guard>
  103694:	48 39 d1             	cmp    %rdx,%rcx
  103697:	75 19                	jne    1036b2 <solo5_net_read+0x72>
  103699:	48 83 c4 38          	add    $0x38,%rsp
  10369d:	c3                   	retq   
  10369e:	ba 49 48 10 00       	mov    $0x104849,%edx
  1036a3:	be 67 48 10 00       	mov    $0x104867,%esi
  1036a8:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  1036ad:	e8 5e ca ff ff       	callq  100110 <_assert_fail>
  1036b2:	e8 79 de ff ff       	callq  101530 <__stack_chk_fail>
  1036b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  1036be:	00 00 

00000000001036c0 <solo5_net_acquire>:
  1036c0:	55                   	push   %rbp
  1036c1:	53                   	push   %rbx
  1036c2:	48 89 f5             	mov    %rsi,%rbp
  1036c5:	48 89 fe             	mov    %rdi,%rsi
  1036c8:	48 89 d3             	mov    %rdx,%rbx
  1036cb:	ba 02 00 00 00       	mov    $0x2,%edx
  1036d0:	48 83 ec 18          	sub    $0x18,%rsp
  1036d4:	48 8b 05 2d 29 00 00 	mov    0x292d(%rip),%rax        # 106008 <__stack_chk_guard>
  1036db:	48 8b 3d de 75 00 00 	mov    0x75de(%rip),%rdi        # 10acc0 <mft>
  1036e2:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  1036e7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  1036ec:	e8 2f f9 ff ff       	callq  103020 <mft_get_by_name>
  1036f1:	48 85 c0             	test   %rax,%rax
  1036f4:	74 4a                	je     103740 <solo5_net_acquire+0x80>
  1036f6:	80 78 60 00          	cmpb   $0x0,0x60(%rax)
  1036fa:	74 50                	je     10374c <solo5_net_acquire+0x8c>
  1036fc:	8b 74 24 04          	mov    0x4(%rsp),%esi
  103700:	48 89 df             	mov    %rbx,%rdi
  103703:	48 89 75 00          	mov    %rsi,0x0(%rbp)
  103707:	0f b7 50 4e          	movzwl 0x4e(%rax),%edx
  10370b:	48 8d 70 48          	lea    0x48(%rax),%rsi
  10370f:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  103713:	ba 06 00 00 00       	mov    $0x6,%edx
  103718:	e8 03 f0 ff ff       	callq  102720 <memcpy>
  10371d:	31 c0                	xor    %eax,%eax
  10371f:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  103724:	48 8b 15 dd 28 00 00 	mov    0x28dd(%rip),%rdx        # 106008 <__stack_chk_guard>
  10372b:	48 39 d1             	cmp    %rdx,%rcx
  10372e:	75 17                	jne    103747 <solo5_net_acquire+0x87>
  103730:	48 83 c4 18          	add    $0x18,%rsp
  103734:	5b                   	pop    %rbx
  103735:	5d                   	pop    %rbp
  103736:	c3                   	retq   
  103737:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10373e:	00 00 
  103740:	b8 02 00 00 00       	mov    $0x2,%eax
  103745:	eb d8                	jmp    10371f <solo5_net_acquire+0x5f>
  103747:	e8 e4 dd ff ff       	callq  101530 <__stack_chk_fail>
  10374c:	ba 8b 48 10 00       	mov    $0x10488b,%edx
  103751:	be 97 48 10 00       	mov    $0x104897,%esi
  103756:	bf 9a 48 10 00       	mov    $0x10489a,%edi
  10375b:	e8 b0 c9 ff ff       	callq  100110 <_assert_fail>

0000000000103760 <net_init>:
  103760:	48 8b 47 20          	mov    0x20(%rdi),%rax
  103764:	48 89 05 55 75 00 00 	mov    %rax,0x7555(%rip)        # 10acc0 <mft>
  10376b:	c3                   	retq   
  10376c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000103770 <solo5_block_write>:
  103770:	41 55                	push   %r13
  103772:	41 54                	push   %r12
  103774:	49 89 d5             	mov    %rdx,%r13
  103777:	55                   	push   %rbp
  103778:	53                   	push   %rbx
  103779:	48 89 f5             	mov    %rsi,%rbp
  10377c:	48 89 fb             	mov    %rdi,%rbx
  10377f:	89 fe                	mov    %edi,%esi
  103781:	ba 01 00 00 00       	mov    $0x1,%edx
  103786:	48 83 ec 38          	sub    $0x38,%rsp
  10378a:	48 8b 05 77 28 00 00 	mov    0x2877(%rip),%rax        # 106008 <__stack_chk_guard>
  103791:	48 8b 3d 30 75 00 00 	mov    0x7530(%rip),%rdi        # 10acc8 <mft>
  103798:	49 89 cc             	mov    %rcx,%r12
  10379b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  1037a0:	e8 1b f9 ff ff       	callq  1030c0 <mft_get_by_index>
  1037a5:	48 85 c0             	test   %rax,%rax
  1037a8:	74 76                	je     103820 <solo5_block_write+0xb0>
  1037aa:	44 0f b7 40 50       	movzwl 0x50(%rax),%r8d
  1037af:	b8 02 00 00 00       	mov    $0x2,%eax
  1037b4:	4c 89 c2             	mov    %r8,%rdx
  1037b7:	41 83 e8 01          	sub    $0x1,%r8d
  1037bb:	4d 63 c0             	movslq %r8d,%r8
  1037be:	4c 85 c5             	test   %r8,%rbp
  1037c1:	74 1d                	je     1037e0 <solo5_block_write+0x70>
  1037c3:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  1037c8:	48 8b 15 39 28 00 00 	mov    0x2839(%rip),%rdx        # 106008 <__stack_chk_guard>
  1037cf:	48 39 d1             	cmp    %rdx,%rcx
  1037d2:	75 53                	jne    103827 <solo5_block_write+0xb7>
  1037d4:	48 83 c4 38          	add    $0x38,%rsp
  1037d8:	5b                   	pop    %rbx
  1037d9:	5d                   	pop    %rbp
  1037da:	41 5c                	pop    %r12
  1037dc:	41 5d                	pop    %r13
  1037de:	c3                   	retq   
  1037df:	90                   	nop
  1037e0:	4c 39 e2             	cmp    %r12,%rdx
  1037e3:	75 de                	jne    1037c3 <solo5_block_write+0x53>
  1037e5:	48 89 1c 24          	mov    %rbx,(%rsp)
  1037e9:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  1037ee:	48 89 e0             	mov    %rsp,%rax
  1037f1:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  1037f6:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  1037fb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  103800:	48 39 d4             	cmp    %rdx,%rsp
  103803:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  10380a:	00 
  10380b:	77 1f                	ja     10382c <solo5_block_write+0xbc>
  10380d:	ba 04 05 00 00       	mov    $0x504,%edx
  103812:	ef                   	out    %eax,(%dx)
  103813:	8b 44 24 20          	mov    0x20(%rsp),%eax
  103817:	eb aa                	jmp    1037c3 <solo5_block_write+0x53>
  103819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  103820:	b8 02 00 00 00       	mov    $0x2,%eax
  103825:	eb 9c                	jmp    1037c3 <solo5_block_write+0x53>
  103827:	e8 04 dd ff ff       	callq  101530 <__stack_chk_fail>
  10382c:	ba 49 48 10 00       	mov    $0x104849,%edx
  103831:	be 67 48 10 00       	mov    $0x104867,%esi
  103836:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  10383b:	e8 d0 c8 ff ff       	callq  100110 <_assert_fail>

0000000000103840 <solo5_block_read>:
  103840:	41 55                	push   %r13
  103842:	41 54                	push   %r12
  103844:	49 89 d5             	mov    %rdx,%r13
  103847:	55                   	push   %rbp
  103848:	53                   	push   %rbx
  103849:	48 89 f5             	mov    %rsi,%rbp
  10384c:	48 89 fb             	mov    %rdi,%rbx
  10384f:	89 fe                	mov    %edi,%esi
  103851:	ba 01 00 00 00       	mov    $0x1,%edx
  103856:	48 83 ec 38          	sub    $0x38,%rsp
  10385a:	48 8b 05 a7 27 00 00 	mov    0x27a7(%rip),%rax        # 106008 <__stack_chk_guard>
  103861:	48 8b 3d 60 74 00 00 	mov    0x7460(%rip),%rdi        # 10acc8 <mft>
  103868:	49 89 cc             	mov    %rcx,%r12
  10386b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  103870:	e8 4b f8 ff ff       	callq  1030c0 <mft_get_by_index>
  103875:	48 85 c0             	test   %rax,%rax
  103878:	74 76                	je     1038f0 <solo5_block_read+0xb0>
  10387a:	44 0f b7 40 50       	movzwl 0x50(%rax),%r8d
  10387f:	b8 02 00 00 00       	mov    $0x2,%eax
  103884:	4c 89 c2             	mov    %r8,%rdx
  103887:	41 83 e8 01          	sub    $0x1,%r8d
  10388b:	4d 63 c0             	movslq %r8d,%r8
  10388e:	4c 85 c5             	test   %r8,%rbp
  103891:	74 1d                	je     1038b0 <solo5_block_read+0x70>
  103893:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  103898:	48 8b 15 69 27 00 00 	mov    0x2769(%rip),%rdx        # 106008 <__stack_chk_guard>
  10389f:	48 39 d1             	cmp    %rdx,%rcx
  1038a2:	75 53                	jne    1038f7 <solo5_block_read+0xb7>
  1038a4:	48 83 c4 38          	add    $0x38,%rsp
  1038a8:	5b                   	pop    %rbx
  1038a9:	5d                   	pop    %rbp
  1038aa:	41 5c                	pop    %r12
  1038ac:	41 5d                	pop    %r13
  1038ae:	c3                   	retq   
  1038af:	90                   	nop
  1038b0:	4c 39 e2             	cmp    %r12,%rdx
  1038b3:	75 de                	jne    103893 <solo5_block_read+0x53>
  1038b5:	48 89 1c 24          	mov    %rbx,(%rsp)
  1038b9:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  1038be:	48 89 e0             	mov    %rsp,%rax
  1038c1:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  1038c6:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  1038cb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  1038d0:	48 39 d4             	cmp    %rdx,%rsp
  1038d3:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  1038da:	00 
  1038db:	77 1f                	ja     1038fc <solo5_block_read+0xbc>
  1038dd:	ba 05 05 00 00       	mov    $0x505,%edx
  1038e2:	ef                   	out    %eax,(%dx)
  1038e3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  1038e7:	eb aa                	jmp    103893 <solo5_block_read+0x53>
  1038e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1038f0:	b8 02 00 00 00       	mov    $0x2,%eax
  1038f5:	eb 9c                	jmp    103893 <solo5_block_read+0x53>
  1038f7:	e8 34 dc ff ff       	callq  101530 <__stack_chk_fail>
  1038fc:	ba 49 48 10 00       	mov    $0x104849,%edx
  103901:	be 67 48 10 00       	mov    $0x104867,%esi
  103906:	bf 58 4a 10 00       	mov    $0x104a58,%edi
  10390b:	e8 00 c8 ff ff       	callq  100110 <_assert_fail>

0000000000103910 <solo5_block_acquire>:
  103910:	55                   	push   %rbp
  103911:	53                   	push   %rbx
  103912:	48 89 f5             	mov    %rsi,%rbp
  103915:	48 89 fe             	mov    %rdi,%rsi
  103918:	48 89 d3             	mov    %rdx,%rbx
  10391b:	ba 01 00 00 00       	mov    $0x1,%edx
  103920:	48 83 ec 18          	sub    $0x18,%rsp
  103924:	48 8b 05 dd 26 00 00 	mov    0x26dd(%rip),%rax        # 106008 <__stack_chk_guard>
  10392b:	48 8b 3d 96 73 00 00 	mov    0x7396(%rip),%rdi        # 10acc8 <mft>
  103932:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  103937:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  10393c:	e8 df f6 ff ff       	callq  103020 <mft_get_by_name>
  103941:	48 85 c0             	test   %rax,%rax
  103944:	74 3a                	je     103980 <solo5_block_acquire+0x70>
  103946:	80 78 60 00          	cmpb   $0x0,0x60(%rax)
  10394a:	74 40                	je     10398c <solo5_block_acquire+0x7c>
  10394c:	8b 74 24 04          	mov    0x4(%rsp),%esi
  103950:	48 89 75 00          	mov    %rsi,0x0(%rbp)
  103954:	48 8b 50 48          	mov    0x48(%rax),%rdx
  103958:	48 89 13             	mov    %rdx,(%rbx)
  10395b:	0f b7 40 50          	movzwl 0x50(%rax),%eax
  10395f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  103963:	31 c0                	xor    %eax,%eax
  103965:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  10396a:	48 8b 15 97 26 00 00 	mov    0x2697(%rip),%rdx        # 106008 <__stack_chk_guard>
  103971:	48 39 d1             	cmp    %rdx,%rcx
  103974:	75 11                	jne    103987 <solo5_block_acquire+0x77>
  103976:	48 83 c4 18          	add    $0x18,%rsp
  10397a:	5b                   	pop    %rbx
  10397b:	5d                   	pop    %rbp
  10397c:	c3                   	retq   
  10397d:	0f 1f 00             	nopl   (%rax)
  103980:	b8 02 00 00 00       	mov    $0x2,%eax
  103985:	eb de                	jmp    103965 <solo5_block_acquire+0x55>
  103987:	e8 a4 db ff ff       	callq  101530 <__stack_chk_fail>
  10398c:	ba 8b 48 10 00       	mov    $0x10488b,%edx
  103991:	be 79 48 10 00       	mov    $0x104879,%esi
  103996:	bf a4 48 10 00       	mov    $0x1048a4,%edi
  10399b:	e8 70 c7 ff ff       	callq  100110 <_assert_fail>

00000000001039a0 <block_init>:
  1039a0:	48 8b 47 20          	mov    0x20(%rdi),%rax
  1039a4:	48 89 05 1d 73 00 00 	mov    %rax,0x731d(%rip)        # 10acc8 <mft>
  1039ab:	c3                   	retq   
  1039ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000001039b0 <memset>:
  1039b0:	48 85 d2             	test   %rdx,%rdx
  1039b3:	48 89 f8             	mov    %rdi,%rax
  1039b6:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
  1039ba:	48 89 f9             	mov    %rdi,%rcx
  1039bd:	74 0d                	je     1039cc <memset+0x1c>
  1039bf:	90                   	nop
  1039c0:	40 88 31             	mov    %sil,(%rcx)
  1039c3:	48 83 c1 01          	add    $0x1,%rcx
  1039c7:	4c 39 c1             	cmp    %r8,%rcx
  1039ca:	75 f4                	jne    1039c0 <memset+0x10>
  1039cc:	f3 c3                	repz retq 
  1039ce:	66 90                	xchg   %ax,%ax

00000000001039d0 <memcpy>:
  1039d0:	48 85 d2             	test   %rdx,%rdx
  1039d3:	48 89 f8             	mov    %rdi,%rax
  1039d6:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
  1039da:	48 89 f9             	mov    %rdi,%rcx
  1039dd:	74 15                	je     1039f4 <memcpy+0x24>
  1039df:	90                   	nop
  1039e0:	48 83 c6 01          	add    $0x1,%rsi
  1039e4:	0f b6 56 ff          	movzbl -0x1(%rsi),%edx
  1039e8:	48 83 c1 01          	add    $0x1,%rcx
  1039ec:	4c 39 c1             	cmp    %r8,%rcx
  1039ef:	88 51 ff             	mov    %dl,-0x1(%rcx)
  1039f2:	75 ec                	jne    1039e0 <memcpy+0x10>
  1039f4:	f3 c3                	repz retq 
  1039f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1039fd:	00 00 00 

0000000000103a00 <memmove>:
  103a00:	48 39 f7             	cmp    %rsi,%rdi
  103a03:	48 89 f8             	mov    %rdi,%rax
  103a06:	74 78                	je     103a80 <memmove+0x80>
  103a08:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  103a0c:	48 39 cf             	cmp    %rcx,%rdi
  103a0f:	72 77                	jb     103a88 <memmove+0x88>
  103a11:	48 85 d2             	test   %rdx,%rdx
  103a14:	74 6a                	je     103a80 <memmove+0x80>
  103a16:	48 01 c2             	add    %rax,%rdx
  103a19:	48 89 c1             	mov    %rax,%rcx
  103a1c:	0f 1f 40 00          	nopl   0x0(%rax)
  103a20:	48 83 c6 01          	add    $0x1,%rsi
  103a24:	44 0f b6 46 ff       	movzbl -0x1(%rsi),%r8d
  103a29:	48 83 c1 01          	add    $0x1,%rcx
  103a2d:	48 39 d1             	cmp    %rdx,%rcx
  103a30:	44 88 41 ff          	mov    %r8b,-0x1(%rcx)
  103a34:	75 ea                	jne    103a20 <memmove+0x20>
  103a36:	f3 c3                	repz retq 
  103a38:	48 89 d1             	mov    %rdx,%rcx
  103a3b:	48 83 f9 07          	cmp    $0x7,%rcx
  103a3f:	48 89 ca             	mov    %rcx,%rdx
  103a42:	76 1c                	jbe    103a60 <memmove+0x60>
  103a44:	0f 1f 40 00          	nopl   0x0(%rax)
  103a48:	48 83 ea 08          	sub    $0x8,%rdx
  103a4c:	48 8b 3c 16          	mov    (%rsi,%rdx,1),%rdi
  103a50:	48 83 fa 07          	cmp    $0x7,%rdx
  103a54:	48 89 3c 10          	mov    %rdi,(%rax,%rdx,1)
  103a58:	77 ee                	ja     103a48 <memmove+0x48>
  103a5a:	48 89 ca             	mov    %rcx,%rdx
  103a5d:	83 e2 07             	and    $0x7,%edx
  103a60:	48 85 d2             	test   %rdx,%rdx
  103a63:	0f 84 27 01 00 00    	je     103b90 <memmove+0x190>
  103a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  103a70:	48 83 ea 01          	sub    $0x1,%rdx
  103a74:	0f b6 0c 16          	movzbl (%rsi,%rdx,1),%ecx
  103a78:	48 85 d2             	test   %rdx,%rdx
  103a7b:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
  103a7e:	75 f0                	jne    103a70 <memmove+0x70>
  103a80:	f3 c3                	repz retq 
  103a82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  103a88:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  103a8c:	48 39 ce             	cmp    %rcx,%rsi
  103a8f:	73 80                	jae    103a11 <memmove+0x11>
  103a91:	48 39 f7             	cmp    %rsi,%rdi
  103a94:	0f 83 86 00 00 00    	jae    103b20 <memmove+0x120>
  103a9a:	48 89 f1             	mov    %rsi,%rcx
  103a9d:	48 31 f9             	xor    %rdi,%rcx
  103aa0:	83 e1 07             	and    $0x7,%ecx
  103aa3:	0f 85 bc 00 00 00    	jne    103b65 <memmove+0x165>
  103aa9:	a8 07                	test   $0x7,%al
  103aab:	0f 84 e1 00 00 00    	je     103b92 <memmove+0x192>
  103ab1:	48 85 d2             	test   %rdx,%rdx
  103ab4:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
  103ab8:	74 c6                	je     103a80 <memmove+0x80>
  103aba:	48 89 c1             	mov    %rax,%rcx
  103abd:	eb 0d                	jmp    103acc <memmove+0xcc>
  103abf:	90                   	nop
  103ac0:	48 85 ff             	test   %rdi,%rdi
  103ac3:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
  103ac7:	74 b7                	je     103a80 <memmove+0x80>
  103ac9:	48 89 d7             	mov    %rdx,%rdi
  103acc:	48 83 c6 01          	add    $0x1,%rsi
  103ad0:	0f b6 56 ff          	movzbl -0x1(%rsi),%edx
  103ad4:	48 83 c1 01          	add    $0x1,%rcx
  103ad8:	f6 c1 07             	test   $0x7,%cl
  103adb:	88 51 ff             	mov    %dl,-0x1(%rcx)
  103ade:	75 e0                	jne    103ac0 <memmove+0xc0>
  103ae0:	48 83 ff 07          	cmp    $0x7,%rdi
  103ae4:	0f 86 b3 00 00 00    	jbe    103b9d <memmove+0x19d>
  103aea:	48 8d 57 f8          	lea    -0x8(%rdi),%rdx
  103aee:	45 31 c0             	xor    %r8d,%r8d
  103af1:	48 c1 ea 03          	shr    $0x3,%rdx
  103af5:	4c 8d 0c d5 08 00 00 	lea    0x8(,%rdx,8),%r9
  103afc:	00 
  103afd:	0f 1f 00             	nopl   (%rax)
  103b00:	4a 8b 14 06          	mov    (%rsi,%r8,1),%rdx
  103b04:	4a 89 14 01          	mov    %rdx,(%rcx,%r8,1)
  103b08:	49 83 c0 08          	add    $0x8,%r8
  103b0c:	4d 39 c8             	cmp    %r9,%r8
  103b0f:	75 ef                	jne    103b00 <memmove+0x100>
  103b11:	83 e7 07             	and    $0x7,%edi
  103b14:	4c 01 c1             	add    %r8,%rcx
  103b17:	4c 01 c6             	add    %r8,%rsi
  103b1a:	48 89 fa             	mov    %rdi,%rdx
  103b1d:	eb 49                	jmp    103b68 <memmove+0x168>
  103b1f:	90                   	nop
  103b20:	48 31 f7             	xor    %rsi,%rdi
  103b23:	83 e7 07             	and    $0x7,%edi
  103b26:	0f 85 34 ff ff ff    	jne    103a60 <memmove+0x60>
  103b2c:	83 e1 07             	and    $0x7,%ecx
  103b2f:	0f 84 03 ff ff ff    	je     103a38 <memmove+0x38>
  103b35:	48 85 d2             	test   %rdx,%rdx
  103b38:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  103b3c:	75 12                	jne    103b50 <memmove+0x150>
  103b3e:	eb 62                	jmp    103ba2 <memmove+0x1a2>
  103b40:	48 85 c9             	test   %rcx,%rcx
  103b43:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  103b47:	0f 84 33 ff ff ff    	je     103a80 <memmove+0x80>
  103b4d:	48 89 d1             	mov    %rdx,%rcx
  103b50:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  103b54:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  103b57:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  103b5b:	83 e2 07             	and    $0x7,%edx
  103b5e:	75 e0                	jne    103b40 <memmove+0x140>
  103b60:	e9 d6 fe ff ff       	jmpq   103a3b <memmove+0x3b>
  103b65:	48 89 f9             	mov    %rdi,%rcx
  103b68:	48 85 d2             	test   %rdx,%rdx
  103b6b:	48 8d 3c 11          	lea    (%rcx,%rdx,1),%rdi
  103b6f:	74 1d                	je     103b8e <memmove+0x18e>
  103b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  103b78:	48 83 c6 01          	add    $0x1,%rsi
  103b7c:	0f b6 56 ff          	movzbl -0x1(%rsi),%edx
  103b80:	48 83 c1 01          	add    $0x1,%rcx
  103b84:	48 39 f9             	cmp    %rdi,%rcx
  103b87:	88 51 ff             	mov    %dl,-0x1(%rcx)
  103b8a:	75 ec                	jne    103b78 <memmove+0x178>
  103b8c:	f3 c3                	repz retq 
  103b8e:	f3 c3                	repz retq 
  103b90:	f3 c3                	repz retq 
  103b92:	48 89 f9             	mov    %rdi,%rcx
  103b95:	48 89 d7             	mov    %rdx,%rdi
  103b98:	e9 43 ff ff ff       	jmpq   103ae0 <memmove+0xe0>
  103b9d:	48 89 fa             	mov    %rdi,%rdx
  103ba0:	eb c6                	jmp    103b68 <memmove+0x168>
  103ba2:	f3 c3                	repz retq 
  103ba4:	66 90                	xchg   %ax,%ax
  103ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103bad:	00 00 00 

0000000000103bb0 <memcmp>:
  103bb0:	48 85 d2             	test   %rdx,%rdx
  103bb3:	74 33                	je     103be8 <memcmp+0x38>
  103bb5:	0f b6 0f             	movzbl (%rdi),%ecx
  103bb8:	44 0f b6 06          	movzbl (%rsi),%r8d
  103bbc:	44 38 c1             	cmp    %r8b,%cl
  103bbf:	75 2f                	jne    103bf0 <memcmp+0x40>
  103bc1:	48 83 ea 01          	sub    $0x1,%rdx
  103bc5:	31 c0                	xor    %eax,%eax
  103bc7:	eb 1a                	jmp    103be3 <memcmp+0x33>
  103bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  103bd0:	0f b6 4c 07 01       	movzbl 0x1(%rdi,%rax,1),%ecx
  103bd5:	48 83 c0 01          	add    $0x1,%rax
  103bd9:	44 0f b6 04 06       	movzbl (%rsi,%rax,1),%r8d
  103bde:	44 38 c1             	cmp    %r8b,%cl
  103be1:	75 0d                	jne    103bf0 <memcmp+0x40>
  103be3:	48 39 d0             	cmp    %rdx,%rax
  103be6:	75 e8                	jne    103bd0 <memcmp+0x20>
  103be8:	31 c0                	xor    %eax,%eax
  103bea:	c3                   	retq   
  103beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  103bf0:	0f b6 c1             	movzbl %cl,%eax
  103bf3:	44 29 c0             	sub    %r8d,%eax
  103bf6:	c3                   	retq   
  103bf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  103bfe:	00 00 

0000000000103c00 <strcmp>:
  103c00:	eb 12                	jmp    103c14 <strcmp+0x14>
  103c02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  103c08:	84 d2                	test   %dl,%dl
  103c0a:	74 24                	je     103c30 <strcmp+0x30>
  103c0c:	48 83 c7 01          	add    $0x1,%rdi
  103c10:	48 83 c6 01          	add    $0x1,%rsi
  103c14:	0f b6 17             	movzbl (%rdi),%edx
  103c17:	0f b6 0e             	movzbl (%rsi),%ecx
  103c1a:	38 ca                	cmp    %cl,%dl
  103c1c:	74 ea                	je     103c08 <strcmp+0x8>
  103c1e:	0f b6 c2             	movzbl %dl,%eax
  103c21:	0f b6 d1             	movzbl %cl,%edx
  103c24:	29 d0                	sub    %edx,%eax
  103c26:	c3                   	retq   
  103c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  103c2e:	00 00 
  103c30:	31 c0                	xor    %eax,%eax
  103c32:	29 d0                	sub    %edx,%eax
  103c34:	c3                   	retq   
  103c35:	90                   	nop
  103c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103c3d:	00 00 00 

0000000000103c40 <strcpy>:
  103c40:	48 89 f8             	mov    %rdi,%rax
  103c43:	48 89 fa             	mov    %rdi,%rdx
  103c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103c4d:	00 00 00 
  103c50:	48 83 c6 01          	add    $0x1,%rsi
  103c54:	0f b6 4e ff          	movzbl -0x1(%rsi),%ecx
  103c58:	48 83 c2 01          	add    $0x1,%rdx
  103c5c:	84 c9                	test   %cl,%cl
  103c5e:	88 4a ff             	mov    %cl,-0x1(%rdx)
  103c61:	75 ed                	jne    103c50 <strcpy+0x10>
  103c63:	f3 c3                	repz retq 
  103c65:	90                   	nop
  103c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103c6d:	00 00 00 

0000000000103c70 <strlen>:
  103c70:	40 f6 c7 07          	test   $0x7,%dil
  103c74:	74 67                	je     103cdd <strlen+0x6d>
  103c76:	80 3f 00             	cmpb   $0x0,(%rdi)
  103c79:	74 67                	je     103ce2 <strlen+0x72>
  103c7b:	48 89 f8             	mov    %rdi,%rax
  103c7e:	eb 05                	jmp    103c85 <strlen+0x15>
  103c80:	80 38 00             	cmpb   $0x0,(%rax)
  103c83:	74 54                	je     103cd9 <strlen+0x69>
  103c85:	48 83 c0 01          	add    $0x1,%rax
  103c89:	a8 07                	test   $0x7,%al
  103c8b:	75 f3                	jne    103c80 <strlen+0x10>
  103c8d:	48 8b 10             	mov    (%rax),%rdx
  103c90:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  103c97:	fe fe fe 
  103c9a:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  103ca1:	80 80 80 
  103ca4:	4a 8d 0c 02          	lea    (%rdx,%r8,1),%rcx
  103ca8:	48 f7 d2             	not    %rdx
  103cab:	48 21 ca             	and    %rcx,%rdx
  103cae:	48 85 f2             	test   %rsi,%rdx
  103cb1:	75 21                	jne    103cd4 <strlen+0x64>
  103cb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  103cb8:	48 83 c0 08          	add    $0x8,%rax
  103cbc:	48 8b 10             	mov    (%rax),%rdx
  103cbf:	4a 8d 0c 02          	lea    (%rdx,%r8,1),%rcx
  103cc3:	48 f7 d2             	not    %rdx
  103cc6:	48 21 ca             	and    %rcx,%rdx
  103cc9:	48 85 f2             	test   %rsi,%rdx
  103ccc:	74 ea                	je     103cb8 <strlen+0x48>
  103cce:	eb 04                	jmp    103cd4 <strlen+0x64>
  103cd0:	48 83 c0 01          	add    $0x1,%rax
  103cd4:	80 38 00             	cmpb   $0x0,(%rax)
  103cd7:	75 f7                	jne    103cd0 <strlen+0x60>
  103cd9:	48 29 f8             	sub    %rdi,%rax
  103cdc:	c3                   	retq   
  103cdd:	48 89 f8             	mov    %rdi,%rax
  103ce0:	eb ab                	jmp    103c8d <strlen+0x1d>
  103ce2:	31 c0                	xor    %eax,%eax
  103ce4:	c3                   	retq   
  103ce5:	90                   	nop
  103ce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103ced:	00 00 00 

0000000000103cf0 <puts>:
  103cf0:	53                   	push   %rbx
  103cf1:	48 89 fb             	mov    %rdi,%rbx
  103cf4:	e8 77 ff ff ff       	callq  103c70 <strlen>
  103cf9:	48 89 df             	mov    %rbx,%rdi
  103cfc:	48 89 c6             	mov    %rax,%rsi
  103cff:	5b                   	pop    %rbx
  103d00:	e9 4b f8 ff ff       	jmpq   103550 <solo5_console_write>
  103d05:	90                   	nop
  103d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103d0d:	00 00 00 

0000000000103d10 <isspace>:
  103d10:	8d 47 f7             	lea    -0x9(%rdi),%eax
  103d13:	83 f8 04             	cmp    $0x4,%eax
  103d16:	0f 96 c2             	setbe  %dl
  103d19:	83 ff 20             	cmp    $0x20,%edi
  103d1c:	0f 94 c0             	sete   %al
  103d1f:	09 d0                	or     %edx,%eax
  103d21:	0f b6 c0             	movzbl %al,%eax
  103d24:	c3                   	retq   
  103d25:	90                   	nop
  103d26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103d2d:	00 00 00 

0000000000103d30 <strncmp>:
  103d30:	31 c0                	xor    %eax,%eax
  103d32:	48 85 d2             	test   %rdx,%rdx
  103d35:	74 5d                	je     103d94 <strncmp+0x64>
  103d37:	0f b6 07             	movzbl (%rdi),%eax
  103d3a:	0f b6 0e             	movzbl (%rsi),%ecx
  103d3d:	84 c0                	test   %al,%al
  103d3f:	74 4f                	je     103d90 <strncmp+0x60>
  103d41:	84 c9                	test   %cl,%cl
  103d43:	41 0f 95 c1          	setne  %r9b
  103d47:	48 83 ea 01          	sub    $0x1,%rdx
  103d4b:	41 0f 95 c0          	setne  %r8b
  103d4f:	45 84 c1             	test   %r8b,%r9b
  103d52:	74 3e                	je     103d92 <strncmp+0x62>
  103d54:	38 c8                	cmp    %cl,%al
  103d56:	74 21                	je     103d79 <strncmp+0x49>
  103d58:	eb 38                	jmp    103d92 <strncmp+0x62>
  103d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  103d60:	84 c9                	test   %cl,%cl
  103d62:	4c 89 c6             	mov    %r8,%rsi
  103d65:	41 0f 95 c1          	setne  %r9b
  103d69:	38 c8                	cmp    %cl,%al
  103d6b:	41 0f 94 c0          	sete   %r8b
  103d6f:	45 84 c1             	test   %r8b,%r9b
  103d72:	74 1e                	je     103d92 <strncmp+0x62>
  103d74:	48 85 d2             	test   %rdx,%rdx
  103d77:	74 19                	je     103d92 <strncmp+0x62>
  103d79:	48 83 c7 01          	add    $0x1,%rdi
  103d7d:	0f b6 07             	movzbl (%rdi),%eax
  103d80:	48 83 ea 01          	sub    $0x1,%rdx
  103d84:	4c 8d 46 01          	lea    0x1(%rsi),%r8
  103d88:	0f b6 4e 01          	movzbl 0x1(%rsi),%ecx
  103d8c:	84 c0                	test   %al,%al
  103d8e:	75 d0                	jne    103d60 <strncmp+0x30>
  103d90:	31 c0                	xor    %eax,%eax
  103d92:	29 c8                	sub    %ecx,%eax
  103d94:	f3 c3                	repz retq 
  103d96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103d9d:	00 00 00 

0000000000103da0 <solo5_app_main>:
  103da0:	53                   	push   %rbx
  103da1:	48 89 fb             	mov    %rdi,%rbx
  103da4:	bf f8 4a 10 00       	mov    $0x104af8,%edi
  103da9:	e8 42 ff ff ff       	callq  103cf0 <puts>
  103dae:	bf 28 4b 10 00       	mov    $0x104b28,%edi
  103db3:	e8 38 ff ff ff       	callq  103cf0 <puts>
  103db8:	48 8b 3b             	mov    (%rbx),%rdi
  103dbb:	31 f6                	xor    %esi,%esi
  103dbd:	80 3f 00             	cmpb   $0x0,(%rdi)
  103dc0:	74 10                	je     103dd2 <solo5_app_main+0x32>
  103dc2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  103dc8:	48 83 c6 01          	add    $0x1,%rsi
  103dcc:	80 3c 37 00          	cmpb   $0x0,(%rdi,%rsi,1)
  103dd0:	75 f6                	jne    103dc8 <solo5_app_main+0x28>
  103dd2:	e8 79 f7 ff ff       	callq  103550 <solo5_console_write>
  103dd7:	bf ec 4a 10 00       	mov    $0x104aec,%edi
  103ddc:	e8 0f ff ff ff       	callq  103cf0 <puts>
  103de1:	48 8b 03             	mov    (%rbx),%rax
  103de4:	80 38 48             	cmpb   $0x48,(%rax)
  103de7:	75 1a                	jne    103e03 <solo5_app_main+0x63>
  103de9:	ba e0 4a 10 00       	mov    $0x104ae0,%edx
  103dee:	eb 04                	jmp    103df4 <solo5_app_main+0x54>
  103df0:	84 c9                	test   %cl,%cl
  103df2:	74 1c                	je     103e10 <solo5_app_main+0x70>
  103df4:	48 83 c0 01          	add    $0x1,%rax
  103df8:	48 83 c2 01          	add    $0x1,%rdx
  103dfc:	0f b6 08             	movzbl (%rax),%ecx
  103dff:	3a 0a                	cmp    (%rdx),%cl
  103e01:	74 ed                	je     103df0 <solo5_app_main+0x50>
  103e03:	31 c0                	xor    %eax,%eax
  103e05:	5b                   	pop    %rbx
  103e06:	c3                   	retq   
  103e07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  103e0e:	00 00 
  103e10:	bf ef 4a 10 00       	mov    $0x104aef,%edi
  103e15:	e8 d6 fe ff ff       	callq  103cf0 <puts>
  103e1a:	31 c0                	xor    %eax,%eax
  103e1c:	5b                   	pop    %rbx
  103e1d:	c3                   	retq   
