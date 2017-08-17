
kzload:     file format elf32-littlemips


Disassembly of section .text:

a000c400 <_startup>:
a000c400:	08003140 	j	a000c500 <main>
a000c404:	00000000 	nop

a000c408 <dispatch>:
a000c408:	0080e825 	move	sp,a0
a000c40c:	8fbf0070 	lw	ra,112(sp)
a000c410:	8fbe006c 	lw	s8,108(sp)
a000c414:	8fbc0068 	lw	gp,104(sp)
a000c418:	8fb90064 	lw	t9,100(sp)
a000c41c:	8fb80060 	lw	t8,96(sp)
a000c420:	8fb7005c 	lw	s7,92(sp)
a000c424:	8fb60058 	lw	s6,88(sp)
a000c428:	8fb50054 	lw	s5,84(sp)
a000c42c:	8fb40050 	lw	s4,80(sp)
a000c430:	8fb3004c 	lw	s3,76(sp)
a000c434:	8fb20048 	lw	s2,72(sp)
a000c438:	8fb10044 	lw	s1,68(sp)
a000c43c:	8fb00040 	lw	s0,64(sp)
a000c440:	8faf003c 	lw	t7,60(sp)
a000c444:	8fae0038 	lw	t6,56(sp)
a000c448:	8fad0034 	lw	t5,52(sp)
a000c44c:	8fac0030 	lw	t4,48(sp)
a000c450:	8fab002c 	lw	t3,44(sp)
a000c454:	8faa0028 	lw	t2,40(sp)
a000c458:	8fa90024 	lw	t1,36(sp)
a000c45c:	8fa80020 	lw	t0,32(sp)
a000c460:	8fa7001c 	lw	a3,28(sp)
a000c464:	8fa60018 	lw	a2,24(sp)
a000c468:	8fa50014 	lw	a1,20(sp)
a000c46c:	8fa40010 	lw	a0,16(sp)
a000c470:	8fa3000c 	lw	v1,12(sp)
a000c474:	8fa20008 	lw	v0,8(sp)
a000c478:	8fa10004 	lw	at,4(sp)
a000c47c:	8fba0074 	lw	k0,116(sp)
a000c480:	03400013 	mtlo	k0
a000c484:	8fba0078 	lw	k0,120(sp)
a000c488:	03400011 	mthi	k0
a000c48c:	8fba007c 	lw	k0,124(sp)
a000c490:	409a7000 	mtc0	k0,c0_epc
a000c494:	8fba0080 	lw	k0,128(sp)
a000c498:	409a6000 	mtc0	k0,c0_status
a000c49c:	27bd0084 	addiu	sp,sp,132
a000c4a0:	42000018 	eret
a000c4a4:	00000000 	nop

a000c4a8 <start_threads>:
a000c4a8:	27bdffe0 	addiu	sp,sp,-32
a000c4ac:	afbf001c 	sw	ra,28(sp)
a000c4b0:	afbe0018 	sw	s8,24(sp)
a000c4b4:	03a0f025 	move	s8,sp
a000c4b8:	afc40020 	sw	a0,32(s8)
a000c4bc:	afc50024 	sw	a1,36(s8)
a000c4c0:	afa00010 	sw	zero,16(sp)
a000c4c4:	00003825 	move	a3,zero
a000c4c8:	24060100 	li	a2,256
a000c4cc:	3c02a001 	lui	v0,0xa001
a000c4d0:	24458000 	addiu	a1,v0,-32768
a000c4d4:	3c02a001 	lui	v0,0xa001
a000c4d8:	2444db14 	addiu	a0,v0,-9452
a000c4dc:	0c003698 	jal	a000da60 <kz_run>
a000c4e0:	00000000 	nop
a000c4e4:	00001025 	move	v0,zero
a000c4e8:	03c0e825 	move	sp,s8
a000c4ec:	8fbf001c 	lw	ra,28(sp)
a000c4f0:	8fbe0018 	lw	s8,24(sp)
a000c4f4:	27bd0020 	addiu	sp,sp,32
a000c4f8:	03e00008 	jr	ra
a000c4fc:	00000000 	nop

a000c500 <main>:
a000c500:	27bdffe0 	addiu	sp,sp,-32
a000c504:	afbf001c 	sw	ra,28(sp)
a000c508:	afbe0018 	sw	s8,24(sp)
a000c50c:	03a0f025 	move	s8,sp
a000c510:	3c02a001 	lui	v0,0xa001
a000c514:	24448008 	addiu	a0,v0,-32760
a000c518:	0c003292 	jal	a000ca48 <puts>
a000c51c:	00000000 	nop
a000c520:	afa00010 	sw	zero,16(sp)
a000c524:	00003825 	move	a3,zero
a000c528:	24060100 	li	a2,256
a000c52c:	3c02a001 	lui	v0,0xa001
a000c530:	24458020 	addiu	a1,v0,-32736
a000c534:	3c02a001 	lui	v0,0xa001
a000c538:	2444c4a8 	addiu	a0,v0,-15192
a000c53c:	0c00363a 	jal	a000d8e8 <kz_start>
a000c540:	00000000 	nop
a000c544:	00001025 	move	v0,zero
a000c548:	03c0e825 	move	sp,s8
a000c54c:	8fbf001c 	lw	ra,28(sp)
a000c550:	8fbe0018 	lw	s8,24(sp)
a000c554:	27bd0020 	addiu	sp,sp,32
a000c558:	03e00008 	jr	ra
a000c55c:	00000000 	nop

a000c560 <memset>:
a000c560:	27bdfff0 	addiu	sp,sp,-16
a000c564:	afbe000c 	sw	s8,12(sp)
a000c568:	03a0f025 	move	s8,sp
a000c56c:	afc40010 	sw	a0,16(s8)
a000c570:	afc50014 	sw	a1,20(s8)
a000c574:	afc60018 	sw	a2,24(s8)
a000c578:	8fc20010 	lw	v0,16(s8)
a000c57c:	afc20000 	sw	v0,0(s8)
a000c580:	1000000a 	b	a000c5ac <memset+0x4c>
a000c584:	00000000 	nop
a000c588:	8fc20000 	lw	v0,0(s8)
a000c58c:	24430001 	addiu	v1,v0,1
a000c590:	afc30000 	sw	v1,0(s8)
a000c594:	8fc30014 	lw	v1,20(s8)
a000c598:	7c031c20 	seb	v1,v1
a000c59c:	a0430000 	sb	v1,0(v0)
a000c5a0:	8fc20018 	lw	v0,24(s8)
a000c5a4:	2442ffff 	addiu	v0,v0,-1
a000c5a8:	afc20018 	sw	v0,24(s8)
a000c5ac:	8fc20018 	lw	v0,24(s8)
a000c5b0:	1c40fff5 	bgtz	v0,a000c588 <memset+0x28>
a000c5b4:	00000000 	nop
a000c5b8:	8fc20010 	lw	v0,16(s8)
a000c5bc:	03c0e825 	move	sp,s8
a000c5c0:	8fbe000c 	lw	s8,12(sp)
a000c5c4:	27bd0010 	addiu	sp,sp,16
a000c5c8:	03e00008 	jr	ra
a000c5cc:	00000000 	nop

a000c5d0 <memcpy>:
a000c5d0:	27bdfff0 	addiu	sp,sp,-16
a000c5d4:	afbe000c 	sw	s8,12(sp)
a000c5d8:	03a0f025 	move	s8,sp
a000c5dc:	afc40010 	sw	a0,16(s8)
a000c5e0:	afc50014 	sw	a1,20(s8)
a000c5e4:	afc60018 	sw	a2,24(s8)
a000c5e8:	8fc20010 	lw	v0,16(s8)
a000c5ec:	afc20000 	sw	v0,0(s8)
a000c5f0:	8fc20014 	lw	v0,20(s8)
a000c5f4:	afc20004 	sw	v0,4(s8)
a000c5f8:	1000000c 	b	a000c62c <memcpy+0x5c>
a000c5fc:	00000000 	nop
a000c600:	8fc30004 	lw	v1,4(s8)
a000c604:	24620001 	addiu	v0,v1,1
a000c608:	afc20004 	sw	v0,4(s8)
a000c60c:	8fc20000 	lw	v0,0(s8)
a000c610:	24440001 	addiu	a0,v0,1
a000c614:	afc40000 	sw	a0,0(s8)
a000c618:	80630000 	lb	v1,0(v1)
a000c61c:	a0430000 	sb	v1,0(v0)
a000c620:	8fc20018 	lw	v0,24(s8)
a000c624:	2442ffff 	addiu	v0,v0,-1
a000c628:	afc20018 	sw	v0,24(s8)
a000c62c:	8fc20018 	lw	v0,24(s8)
a000c630:	1c40fff3 	bgtz	v0,a000c600 <memcpy+0x30>
a000c634:	00000000 	nop
a000c638:	8fc20010 	lw	v0,16(s8)
a000c63c:	03c0e825 	move	sp,s8
a000c640:	8fbe000c 	lw	s8,12(sp)
a000c644:	27bd0010 	addiu	sp,sp,16
a000c648:	03e00008 	jr	ra
a000c64c:	00000000 	nop

a000c650 <memcmp>:
a000c650:	27bdfff0 	addiu	sp,sp,-16
a000c654:	afbe000c 	sw	s8,12(sp)
a000c658:	03a0f025 	move	s8,sp
a000c65c:	afc40010 	sw	a0,16(s8)
a000c660:	afc50014 	sw	a1,20(s8)
a000c664:	afc60018 	sw	a2,24(s8)
a000c668:	8fc20010 	lw	v0,16(s8)
a000c66c:	afc20000 	sw	v0,0(s8)
a000c670:	8fc20014 	lw	v0,20(s8)
a000c674:	afc20004 	sw	v0,4(s8)
a000c678:	1000001d 	b	a000c6f0 <memcmp+0xa0>
a000c67c:	00000000 	nop
a000c680:	8fc20000 	lw	v0,0(s8)
a000c684:	80430000 	lb	v1,0(v0)
a000c688:	8fc20004 	lw	v0,4(s8)
a000c68c:	80420000 	lb	v0,0(v0)
a000c690:	1062000e 	beq	v1,v0,a000c6cc <memcmp+0x7c>
a000c694:	00000000 	nop
a000c698:	8fc20000 	lw	v0,0(s8)
a000c69c:	80430000 	lb	v1,0(v0)
a000c6a0:	8fc20004 	lw	v0,4(s8)
a000c6a4:	80420000 	lb	v0,0(v0)
a000c6a8:	0043102a 	slt	v0,v0,v1
a000c6ac:	10400004 	beqz	v0,a000c6c0 <memcmp+0x70>
a000c6b0:	00000000 	nop
a000c6b4:	24020001 	li	v0,1
a000c6b8:	10000011 	b	a000c700 <memcmp+0xb0>
a000c6bc:	00000000 	nop
a000c6c0:	2402ffff 	li	v0,-1
a000c6c4:	1000000e 	b	a000c700 <memcmp+0xb0>
a000c6c8:	00000000 	nop
a000c6cc:	8fc20000 	lw	v0,0(s8)
a000c6d0:	24420001 	addiu	v0,v0,1
a000c6d4:	afc20000 	sw	v0,0(s8)
a000c6d8:	8fc20004 	lw	v0,4(s8)
a000c6dc:	24420001 	addiu	v0,v0,1
a000c6e0:	afc20004 	sw	v0,4(s8)
a000c6e4:	8fc20018 	lw	v0,24(s8)
a000c6e8:	2442ffff 	addiu	v0,v0,-1
a000c6ec:	afc20018 	sw	v0,24(s8)
a000c6f0:	8fc20018 	lw	v0,24(s8)
a000c6f4:	1c40ffe2 	bgtz	v0,a000c680 <memcmp+0x30>
a000c6f8:	00000000 	nop
a000c6fc:	00001025 	move	v0,zero
a000c700:	03c0e825 	move	sp,s8
a000c704:	8fbe000c 	lw	s8,12(sp)
a000c708:	27bd0010 	addiu	sp,sp,16
a000c70c:	03e00008 	jr	ra
a000c710:	00000000 	nop

a000c714 <strlen>:
a000c714:	27bdfff0 	addiu	sp,sp,-16
a000c718:	afbe000c 	sw	s8,12(sp)
a000c71c:	03a0f025 	move	s8,sp
a000c720:	afc40010 	sw	a0,16(s8)
a000c724:	afc00000 	sw	zero,0(s8)
a000c728:	10000007 	b	a000c748 <strlen+0x34>
a000c72c:	00000000 	nop
a000c730:	8fc20010 	lw	v0,16(s8)
a000c734:	24420001 	addiu	v0,v0,1
a000c738:	afc20010 	sw	v0,16(s8)
a000c73c:	8fc20000 	lw	v0,0(s8)
a000c740:	24420001 	addiu	v0,v0,1
a000c744:	afc20000 	sw	v0,0(s8)
a000c748:	8fc20010 	lw	v0,16(s8)
a000c74c:	80420000 	lb	v0,0(v0)
a000c750:	1440fff7 	bnez	v0,a000c730 <strlen+0x1c>
a000c754:	00000000 	nop
a000c758:	8fc20000 	lw	v0,0(s8)
a000c75c:	03c0e825 	move	sp,s8
a000c760:	8fbe000c 	lw	s8,12(sp)
a000c764:	27bd0010 	addiu	sp,sp,16
a000c768:	03e00008 	jr	ra
a000c76c:	00000000 	nop

a000c770 <strcpy>:
a000c770:	27bdfff0 	addiu	sp,sp,-16
a000c774:	afbe000c 	sw	s8,12(sp)
a000c778:	03a0f025 	move	s8,sp
a000c77c:	afc40010 	sw	a0,16(s8)
a000c780:	afc50014 	sw	a1,20(s8)
a000c784:	8fc20010 	lw	v0,16(s8)
a000c788:	afc20000 	sw	v0,0(s8)
a000c78c:	8fc20014 	lw	v0,20(s8)
a000c790:	80430000 	lb	v1,0(v0)
a000c794:	8fc20010 	lw	v0,16(s8)
a000c798:	a0430000 	sb	v1,0(v0)
a000c79c:	8fc20014 	lw	v0,20(s8)
a000c7a0:	80420000 	lb	v0,0(v0)
a000c7a4:	10400009 	beqz	v0,a000c7cc <strcpy+0x5c>
a000c7a8:	00000000 	nop
a000c7ac:	8fc20010 	lw	v0,16(s8)
a000c7b0:	24420001 	addiu	v0,v0,1
a000c7b4:	afc20010 	sw	v0,16(s8)
a000c7b8:	8fc20014 	lw	v0,20(s8)
a000c7bc:	24420001 	addiu	v0,v0,1
a000c7c0:	afc20014 	sw	v0,20(s8)
a000c7c4:	1000fff1 	b	a000c78c <strcpy+0x1c>
a000c7c8:	00000000 	nop
a000c7cc:	00000000 	nop
a000c7d0:	8fc20000 	lw	v0,0(s8)
a000c7d4:	03c0e825 	move	sp,s8
a000c7d8:	8fbe000c 	lw	s8,12(sp)
a000c7dc:	27bd0010 	addiu	sp,sp,16
a000c7e0:	03e00008 	jr	ra
a000c7e4:	00000000 	nop

a000c7e8 <strcmp>:
a000c7e8:	27bdfff8 	addiu	sp,sp,-8
a000c7ec:	afbe0004 	sw	s8,4(sp)
a000c7f0:	03a0f025 	move	s8,sp
a000c7f4:	afc40008 	sw	a0,8(s8)
a000c7f8:	afc5000c 	sw	a1,12(s8)
a000c7fc:	1000001a 	b	a000c868 <strcmp+0x80>
a000c800:	00000000 	nop
a000c804:	8fc20008 	lw	v0,8(s8)
a000c808:	80430000 	lb	v1,0(v0)
a000c80c:	8fc2000c 	lw	v0,12(s8)
a000c810:	80420000 	lb	v0,0(v0)
a000c814:	1062000e 	beq	v1,v0,a000c850 <strcmp+0x68>
a000c818:	00000000 	nop
a000c81c:	8fc20008 	lw	v0,8(s8)
a000c820:	80430000 	lb	v1,0(v0)
a000c824:	8fc2000c 	lw	v0,12(s8)
a000c828:	80420000 	lb	v0,0(v0)
a000c82c:	0043102a 	slt	v0,v0,v1
a000c830:	10400004 	beqz	v0,a000c844 <strcmp+0x5c>
a000c834:	00000000 	nop
a000c838:	24020001 	li	v0,1
a000c83c:	10000013 	b	a000c88c <strcmp+0xa4>
a000c840:	00000000 	nop
a000c844:	2402ffff 	li	v0,-1
a000c848:	10000010 	b	a000c88c <strcmp+0xa4>
a000c84c:	00000000 	nop
a000c850:	8fc20008 	lw	v0,8(s8)
a000c854:	24420001 	addiu	v0,v0,1
a000c858:	afc20008 	sw	v0,8(s8)
a000c85c:	8fc2000c 	lw	v0,12(s8)
a000c860:	24420001 	addiu	v0,v0,1
a000c864:	afc2000c 	sw	v0,12(s8)
a000c868:	8fc20008 	lw	v0,8(s8)
a000c86c:	80420000 	lb	v0,0(v0)
a000c870:	1440ffe4 	bnez	v0,a000c804 <strcmp+0x1c>
a000c874:	00000000 	nop
a000c878:	8fc2000c 	lw	v0,12(s8)
a000c87c:	80420000 	lb	v0,0(v0)
a000c880:	1440ffe0 	bnez	v0,a000c804 <strcmp+0x1c>
a000c884:	00000000 	nop
a000c888:	00001025 	move	v0,zero
a000c88c:	03c0e825 	move	sp,s8
a000c890:	8fbe0004 	lw	s8,4(sp)
a000c894:	27bd0008 	addiu	sp,sp,8
a000c898:	03e00008 	jr	ra
a000c89c:	00000000 	nop

a000c8a0 <strncmp>:
a000c8a0:	27bdfff8 	addiu	sp,sp,-8
a000c8a4:	afbe0004 	sw	s8,4(sp)
a000c8a8:	03a0f025 	move	s8,sp
a000c8ac:	afc40008 	sw	a0,8(s8)
a000c8b0:	afc5000c 	sw	a1,12(s8)
a000c8b4:	afc60010 	sw	a2,16(s8)
a000c8b8:	1000001d 	b	a000c930 <strncmp+0x90>
a000c8bc:	00000000 	nop
a000c8c0:	8fc20008 	lw	v0,8(s8)
a000c8c4:	80430000 	lb	v1,0(v0)
a000c8c8:	8fc2000c 	lw	v0,12(s8)
a000c8cc:	80420000 	lb	v0,0(v0)
a000c8d0:	1062000e 	beq	v1,v0,a000c90c <strncmp+0x6c>
a000c8d4:	00000000 	nop
a000c8d8:	8fc20008 	lw	v0,8(s8)
a000c8dc:	80430000 	lb	v1,0(v0)
a000c8e0:	8fc2000c 	lw	v0,12(s8)
a000c8e4:	80420000 	lb	v0,0(v0)
a000c8e8:	0043102a 	slt	v0,v0,v1
a000c8ec:	10400004 	beqz	v0,a000c900 <strncmp+0x60>
a000c8f0:	00000000 	nop
a000c8f4:	24020001 	li	v0,1
a000c8f8:	10000019 	b	a000c960 <strncmp+0xc0>
a000c8fc:	00000000 	nop
a000c900:	2402ffff 	li	v0,-1
a000c904:	10000016 	b	a000c960 <strncmp+0xc0>
a000c908:	00000000 	nop
a000c90c:	8fc20008 	lw	v0,8(s8)
a000c910:	24420001 	addiu	v0,v0,1
a000c914:	afc20008 	sw	v0,8(s8)
a000c918:	8fc2000c 	lw	v0,12(s8)
a000c91c:	24420001 	addiu	v0,v0,1
a000c920:	afc2000c 	sw	v0,12(s8)
a000c924:	8fc20010 	lw	v0,16(s8)
a000c928:	2442ffff 	addiu	v0,v0,-1
a000c92c:	afc20010 	sw	v0,16(s8)
a000c930:	8fc20008 	lw	v0,8(s8)
a000c934:	80420000 	lb	v0,0(v0)
a000c938:	14400005 	bnez	v0,a000c950 <strncmp+0xb0>
a000c93c:	00000000 	nop
a000c940:	8fc2000c 	lw	v0,12(s8)
a000c944:	80420000 	lb	v0,0(v0)
a000c948:	10400004 	beqz	v0,a000c95c <strncmp+0xbc>
a000c94c:	00000000 	nop
a000c950:	8fc20010 	lw	v0,16(s8)
a000c954:	1c40ffda 	bgtz	v0,a000c8c0 <strncmp+0x20>
a000c958:	00000000 	nop
a000c95c:	00001025 	move	v0,zero
a000c960:	03c0e825 	move	sp,s8
a000c964:	8fbe0004 	lw	s8,4(sp)
a000c968:	27bd0008 	addiu	sp,sp,8
a000c96c:	03e00008 	jr	ra
a000c970:	00000000 	nop

a000c974 <putc>:
a000c974:	27bdffe8 	addiu	sp,sp,-24
a000c978:	afbf0014 	sw	ra,20(sp)
a000c97c:	afbe0010 	sw	s8,16(sp)
a000c980:	03a0f025 	move	s8,sp
a000c984:	00801025 	move	v0,a0
a000c988:	a3c20018 	sb	v0,24(s8)
a000c98c:	93c30018 	lbu	v1,24(s8)
a000c990:	2402000a 	li	v0,10
a000c994:	14620005 	bne	v1,v0,a000c9ac <putc+0x38>
a000c998:	00000000 	nop
a000c99c:	2405000d 	li	a1,13
a000c9a0:	24040001 	li	a0,1
a000c9a4:	0c00331a 	jal	a000cc68 <serial_send_byte>
a000c9a8:	00000000 	nop
a000c9ac:	93c20018 	lbu	v0,24(s8)
a000c9b0:	00402825 	move	a1,v0
a000c9b4:	24040001 	li	a0,1
a000c9b8:	0c00331a 	jal	a000cc68 <serial_send_byte>
a000c9bc:	00000000 	nop
a000c9c0:	03c0e825 	move	sp,s8
a000c9c4:	8fbf0014 	lw	ra,20(sp)
a000c9c8:	8fbe0010 	lw	s8,16(sp)
a000c9cc:	27bd0018 	addiu	sp,sp,24
a000c9d0:	03e00008 	jr	ra
a000c9d4:	00000000 	nop

a000c9d8 <getc>:
a000c9d8:	27bdffe0 	addiu	sp,sp,-32
a000c9dc:	afbf001c 	sw	ra,28(sp)
a000c9e0:	afbe0018 	sw	s8,24(sp)
a000c9e4:	03a0f025 	move	s8,sp
a000c9e8:	24040001 	li	a0,1
a000c9ec:	0c003345 	jal	a000cd14 <serial_recv_byte>
a000c9f0:	00000000 	nop
a000c9f4:	a3c20010 	sb	v0,16(s8)
a000c9f8:	93c30010 	lbu	v1,16(s8)
a000c9fc:	2402000d 	li	v0,13
a000ca00:	10620004 	beq	v1,v0,a000ca14 <getc+0x3c>
a000ca04:	00000000 	nop
a000ca08:	93c20010 	lbu	v0,16(s8)
a000ca0c:	10000002 	b	a000ca18 <getc+0x40>
a000ca10:	00000000 	nop
a000ca14:	2402000a 	li	v0,10
a000ca18:	a3c20010 	sb	v0,16(s8)
a000ca1c:	93c20010 	lbu	v0,16(s8)
a000ca20:	00402025 	move	a0,v0
a000ca24:	0c00325d 	jal	a000c974 <putc>
a000ca28:	00000000 	nop
a000ca2c:	93c20010 	lbu	v0,16(s8)
a000ca30:	03c0e825 	move	sp,s8
a000ca34:	8fbf001c 	lw	ra,28(sp)
a000ca38:	8fbe0018 	lw	s8,24(sp)
a000ca3c:	27bd0020 	addiu	sp,sp,32
a000ca40:	03e00008 	jr	ra
a000ca44:	00000000 	nop

a000ca48 <puts>:
a000ca48:	27bdffe8 	addiu	sp,sp,-24
a000ca4c:	afbf0014 	sw	ra,20(sp)
a000ca50:	afbe0010 	sw	s8,16(sp)
a000ca54:	03a0f025 	move	s8,sp
a000ca58:	afc40018 	sw	a0,24(s8)
a000ca5c:	10000008 	b	a000ca80 <puts+0x38>
a000ca60:	00000000 	nop
a000ca64:	8fc20018 	lw	v0,24(s8)
a000ca68:	24430001 	addiu	v1,v0,1
a000ca6c:	afc30018 	sw	v1,24(s8)
a000ca70:	90420000 	lbu	v0,0(v0)
a000ca74:	00402025 	move	a0,v0
a000ca78:	0c00325d 	jal	a000c974 <putc>
a000ca7c:	00000000 	nop
a000ca80:	8fc20018 	lw	v0,24(s8)
a000ca84:	90420000 	lbu	v0,0(v0)
a000ca88:	1440fff6 	bnez	v0,a000ca64 <puts+0x1c>
a000ca8c:	00000000 	nop
a000ca90:	00001025 	move	v0,zero
a000ca94:	03c0e825 	move	sp,s8
a000ca98:	8fbf0014 	lw	ra,20(sp)
a000ca9c:	8fbe0010 	lw	s8,16(sp)
a000caa0:	27bd0018 	addiu	sp,sp,24
a000caa4:	03e00008 	jr	ra
a000caa8:	00000000 	nop

a000caac <gets>:
a000caac:	27bdffe0 	addiu	sp,sp,-32
a000cab0:	afbf001c 	sw	ra,28(sp)
a000cab4:	afbe0018 	sw	s8,24(sp)
a000cab8:	03a0f025 	move	s8,sp
a000cabc:	afc40020 	sw	a0,32(s8)
a000cac0:	afc00010 	sw	zero,16(s8)
a000cac4:	0c003276 	jal	a000c9d8 <getc>
a000cac8:	00000000 	nop
a000cacc:	a3c20014 	sb	v0,20(s8)
a000cad0:	93c30014 	lbu	v1,20(s8)
a000cad4:	2402000a 	li	v0,10
a000cad8:	14620002 	bne	v1,v0,a000cae4 <gets+0x38>
a000cadc:	00000000 	nop
a000cae0:	a3c00014 	sb	zero,20(s8)
a000cae4:	8fc20010 	lw	v0,16(s8)
a000cae8:	24430001 	addiu	v1,v0,1
a000caec:	afc30010 	sw	v1,16(s8)
a000caf0:	00401825 	move	v1,v0
a000caf4:	8fc20020 	lw	v0,32(s8)
a000caf8:	00431021 	addu	v0,v0,v1
a000cafc:	93c30014 	lbu	v1,20(s8)
a000cb00:	a0430000 	sb	v1,0(v0)
a000cb04:	93c20014 	lbu	v0,20(s8)
a000cb08:	1440ffee 	bnez	v0,a000cac4 <gets+0x18>
a000cb0c:	00000000 	nop
a000cb10:	8fc20010 	lw	v0,16(s8)
a000cb14:	2442ffff 	addiu	v0,v0,-1
a000cb18:	03c0e825 	move	sp,s8
a000cb1c:	8fbf001c 	lw	ra,28(sp)
a000cb20:	8fbe0018 	lw	s8,24(sp)
a000cb24:	27bd0020 	addiu	sp,sp,32
a000cb28:	03e00008 	jr	ra
a000cb2c:	00000000 	nop

a000cb30 <putxval>:
a000cb30:	27bdffd8 	addiu	sp,sp,-40
a000cb34:	afbf0024 	sw	ra,36(sp)
a000cb38:	afbe0020 	sw	s8,32(sp)
a000cb3c:	03a0f025 	move	s8,sp
a000cb40:	afc40028 	sw	a0,40(s8)
a000cb44:	afc5002c 	sw	a1,44(s8)
a000cb48:	27c20014 	addiu	v0,s8,20
a000cb4c:	24420008 	addiu	v0,v0,8
a000cb50:	afc20010 	sw	v0,16(s8)
a000cb54:	8fc20010 	lw	v0,16(s8)
a000cb58:	2443ffff 	addiu	v1,v0,-1
a000cb5c:	afc30010 	sw	v1,16(s8)
a000cb60:	a0400000 	sb	zero,0(v0)
a000cb64:	8fc20028 	lw	v0,40(s8)
a000cb68:	1440001c 	bnez	v0,a000cbdc <putxval+0xac>
a000cb6c:	00000000 	nop
a000cb70:	8fc2002c 	lw	v0,44(s8)
a000cb74:	14400019 	bnez	v0,a000cbdc <putxval+0xac>
a000cb78:	00000000 	nop
a000cb7c:	8fc2002c 	lw	v0,44(s8)
a000cb80:	24420001 	addiu	v0,v0,1
a000cb84:	afc2002c 	sw	v0,44(s8)
a000cb88:	10000014 	b	a000cbdc <putxval+0xac>
a000cb8c:	00000000 	nop
a000cb90:	8fc20028 	lw	v0,40(s8)
a000cb94:	3044000f 	andi	a0,v0,0xf
a000cb98:	8fc20010 	lw	v0,16(s8)
a000cb9c:	2443ffff 	addiu	v1,v0,-1
a000cba0:	afc30010 	sw	v1,16(s8)
a000cba4:	3c03a001 	lui	v1,0xa001
a000cba8:	24638028 	addiu	v1,v1,-32728
a000cbac:	00831821 	addu	v1,a0,v1
a000cbb0:	80630000 	lb	v1,0(v1)
a000cbb4:	a0430000 	sb	v1,0(v0)
a000cbb8:	8fc20028 	lw	v0,40(s8)
a000cbbc:	00021102 	srl	v0,v0,0x4
a000cbc0:	afc20028 	sw	v0,40(s8)
a000cbc4:	8fc2002c 	lw	v0,44(s8)
a000cbc8:	10400004 	beqz	v0,a000cbdc <putxval+0xac>
a000cbcc:	00000000 	nop
a000cbd0:	8fc2002c 	lw	v0,44(s8)
a000cbd4:	2442ffff 	addiu	v0,v0,-1
a000cbd8:	afc2002c 	sw	v0,44(s8)
a000cbdc:	8fc20028 	lw	v0,40(s8)
a000cbe0:	1440ffeb 	bnez	v0,a000cb90 <putxval+0x60>
a000cbe4:	00000000 	nop
a000cbe8:	8fc2002c 	lw	v0,44(s8)
a000cbec:	1440ffe8 	bnez	v0,a000cb90 <putxval+0x60>
a000cbf0:	00000000 	nop
a000cbf4:	8fc20010 	lw	v0,16(s8)
a000cbf8:	24420001 	addiu	v0,v0,1
a000cbfc:	00402025 	move	a0,v0
a000cc00:	0c003292 	jal	a000ca48 <puts>
a000cc04:	00000000 	nop
a000cc08:	00001025 	move	v0,zero
a000cc0c:	03c0e825 	move	sp,s8
a000cc10:	8fbf0024 	lw	ra,36(sp)
a000cc14:	8fbe0020 	lw	s8,32(sp)
a000cc18:	27bd0028 	addiu	sp,sp,40
a000cc1c:	03e00008 	jr	ra
a000cc20:	00000000 	nop

a000cc24 <serial_is_send_enable>:
a000cc24:	27bdfff0 	addiu	sp,sp,-16
a000cc28:	afbe000c 	sw	s8,12(sp)
a000cc2c:	03a0f025 	move	s8,sp
a000cc30:	afc40010 	sw	a0,16(s8)
a000cc34:	3c02bf80 	lui	v0,0xbf80
a000cc38:	34426210 	ori	v0,v0,0x6210
a000cc3c:	afc20000 	sw	v0,0(s8)
a000cc40:	8fc20000 	lw	v0,0(s8)
a000cc44:	8c420000 	lw	v0,0(v0)
a000cc48:	30420200 	andi	v0,v0,0x200
a000cc4c:	2c420001 	sltiu	v0,v0,1
a000cc50:	304200ff 	andi	v0,v0,0xff
a000cc54:	03c0e825 	move	sp,s8
a000cc58:	8fbe000c 	lw	s8,12(sp)
a000cc5c:	27bd0010 	addiu	sp,sp,16
a000cc60:	03e00008 	jr	ra
a000cc64:	00000000 	nop

a000cc68 <serial_send_byte>:
a000cc68:	27bdffe0 	addiu	sp,sp,-32
a000cc6c:	afbf001c 	sw	ra,28(sp)
a000cc70:	afbe0018 	sw	s8,24(sp)
a000cc74:	03a0f025 	move	s8,sp
a000cc78:	afc40020 	sw	a0,32(s8)
a000cc7c:	00a01025 	move	v0,a1
a000cc80:	a3c20024 	sb	v0,36(s8)
a000cc84:	3c02bf80 	lui	v0,0xbf80
a000cc88:	34426220 	ori	v0,v0,0x6220
a000cc8c:	afc20010 	sw	v0,16(s8)
a000cc90:	00000000 	nop
a000cc94:	8fc40020 	lw	a0,32(s8)
a000cc98:	0c003309 	jal	a000cc24 <serial_is_send_enable>
a000cc9c:	00000000 	nop
a000cca0:	1040fffc 	beqz	v0,a000cc94 <serial_send_byte+0x2c>
a000cca4:	00000000 	nop
a000cca8:	93c30024 	lbu	v1,36(s8)
a000ccac:	8fc20010 	lw	v0,16(s8)
a000ccb0:	ac430000 	sw	v1,0(v0)
a000ccb4:	00001025 	move	v0,zero
a000ccb8:	03c0e825 	move	sp,s8
a000ccbc:	8fbf001c 	lw	ra,28(sp)
a000ccc0:	8fbe0018 	lw	s8,24(sp)
a000ccc4:	27bd0020 	addiu	sp,sp,32
a000ccc8:	03e00008 	jr	ra
a000cccc:	00000000 	nop

a000ccd0 <serial_is_recv_enable>:
a000ccd0:	27bdfff0 	addiu	sp,sp,-16
a000ccd4:	afbe000c 	sw	s8,12(sp)
a000ccd8:	03a0f025 	move	s8,sp
a000ccdc:	afc40010 	sw	a0,16(s8)
a000cce0:	3c02bf80 	lui	v0,0xbf80
a000cce4:	34426210 	ori	v0,v0,0x6210
a000cce8:	afc20000 	sw	v0,0(s8)
a000ccec:	8fc20000 	lw	v0,0(s8)
a000ccf0:	8c420000 	lw	v0,0(v0)
a000ccf4:	30420002 	andi	v0,v0,0x2
a000ccf8:	2c420001 	sltiu	v0,v0,1
a000ccfc:	304200ff 	andi	v0,v0,0xff
a000cd00:	03c0e825 	move	sp,s8
a000cd04:	8fbe000c 	lw	s8,12(sp)
a000cd08:	27bd0010 	addiu	sp,sp,16
a000cd0c:	03e00008 	jr	ra
a000cd10:	00000000 	nop

a000cd14 <serial_recv_byte>:
a000cd14:	27bdfff0 	addiu	sp,sp,-16
a000cd18:	afbe000c 	sw	s8,12(sp)
a000cd1c:	03a0f025 	move	s8,sp
a000cd20:	afc40010 	sw	a0,16(s8)
a000cd24:	3c02bf80 	lui	v0,0xbf80
a000cd28:	34426230 	ori	v0,v0,0x6230
a000cd2c:	afc20000 	sw	v0,0(s8)
a000cd30:	3c02bf80 	lui	v0,0xbf80
a000cd34:	34426210 	ori	v0,v0,0x6210
a000cd38:	afc20004 	sw	v0,4(s8)
a000cd3c:	00000000 	nop
a000cd40:	8fc20004 	lw	v0,4(s8)
a000cd44:	8c420000 	lw	v0,0(v0)
a000cd48:	30420001 	andi	v0,v0,0x1
a000cd4c:	1040fffc 	beqz	v0,a000cd40 <serial_recv_byte+0x2c>
a000cd50:	00000000 	nop
a000cd54:	8fc20000 	lw	v0,0(s8)
a000cd58:	8c420000 	lw	v0,0(v0)
a000cd5c:	304200ff 	andi	v0,v0,0xff
a000cd60:	03c0e825 	move	sp,s8
a000cd64:	8fbe000c 	lw	s8,12(sp)
a000cd68:	27bd0010 	addiu	sp,sp,16
a000cd6c:	03e00008 	jr	ra
a000cd70:	00000000 	nop

a000cd74 <serial_intr_is_recv_enable>:
a000cd74:	27bdfff0 	addiu	sp,sp,-16
a000cd78:	afbe000c 	sw	s8,12(sp)
a000cd7c:	03a0f025 	move	s8,sp
a000cd80:	afc40010 	sw	a0,16(s8)
a000cd84:	3c02bf88 	lui	v0,0xbf88
a000cd88:	34421070 	ori	v0,v0,0x1070
a000cd8c:	afc20000 	sw	v0,0(s8)
a000cd90:	8fc20000 	lw	v0,0(s8)
a000cd94:	8c420000 	lw	v0,0(v0)
a000cd98:	00021582 	srl	v0,v0,0x16
a000cd9c:	30420001 	andi	v0,v0,0x1
a000cda0:	03c0e825 	move	sp,s8
a000cda4:	8fbe000c 	lw	s8,12(sp)
a000cda8:	27bd0010 	addiu	sp,sp,16
a000cdac:	03e00008 	jr	ra
a000cdb0:	00000000 	nop

a000cdb4 <serial_intr_recv_enable>:
a000cdb4:	27bdfff0 	addiu	sp,sp,-16
a000cdb8:	afbe000c 	sw	s8,12(sp)
a000cdbc:	03a0f025 	move	s8,sp
a000cdc0:	afc40010 	sw	a0,16(s8)
a000cdc4:	3c02bf88 	lui	v0,0xbf88
a000cdc8:	34421078 	ori	v0,v0,0x1078
a000cdcc:	afc20000 	sw	v0,0(s8)
a000cdd0:	8fc20000 	lw	v0,0(s8)
a000cdd4:	3c030040 	lui	v1,0x40
a000cdd8:	ac430000 	sw	v1,0(v0)
a000cddc:	00000000 	nop
a000cde0:	03c0e825 	move	sp,s8
a000cde4:	8fbe000c 	lw	s8,12(sp)
a000cde8:	27bd0010 	addiu	sp,sp,16
a000cdec:	03e00008 	jr	ra
a000cdf0:	00000000 	nop

a000cdf4 <serial_intr_recv_disable>:
a000cdf4:	27bdfff0 	addiu	sp,sp,-16
a000cdf8:	afbe000c 	sw	s8,12(sp)
a000cdfc:	03a0f025 	move	s8,sp
a000ce00:	afc40010 	sw	a0,16(s8)
a000ce04:	3c02bf88 	lui	v0,0xbf88
a000ce08:	34421074 	ori	v0,v0,0x1074
a000ce0c:	afc20000 	sw	v0,0(s8)
a000ce10:	8fc20000 	lw	v0,0(s8)
a000ce14:	3c030040 	lui	v1,0x40
a000ce18:	ac430000 	sw	v1,0(v0)
a000ce1c:	00000000 	nop
a000ce20:	03c0e825 	move	sp,s8
a000ce24:	8fbe000c 	lw	s8,12(sp)
a000ce28:	27bd0010 	addiu	sp,sp,16
a000ce2c:	03e00008 	jr	ra
a000ce30:	00000000 	nop

a000ce34 <softvec_init>:
a000ce34:	27bdffe0 	addiu	sp,sp,-32
a000ce38:	afbf001c 	sw	ra,28(sp)
a000ce3c:	afbe0018 	sw	s8,24(sp)
a000ce40:	03a0f025 	move	s8,sp
a000ce44:	afc00010 	sw	zero,16(s8)
a000ce48:	10000008 	b	a000ce6c <softvec_init+0x38>
a000ce4c:	00000000 	nop
a000ce50:	00002825 	move	a1,zero
a000ce54:	8fc40010 	lw	a0,16(s8)
a000ce58:	0c0033a6 	jal	a000ce98 <softvec_setintr>
a000ce5c:	00000000 	nop
a000ce60:	8fc20010 	lw	v0,16(s8)
a000ce64:	24420001 	addiu	v0,v0,1
a000ce68:	afc20010 	sw	v0,16(s8)
a000ce6c:	8fc20010 	lw	v0,16(s8)
a000ce70:	28420003 	slti	v0,v0,3
a000ce74:	1440fff6 	bnez	v0,a000ce50 <softvec_init+0x1c>
a000ce78:	00000000 	nop
a000ce7c:	00001025 	move	v0,zero
a000ce80:	03c0e825 	move	sp,s8
a000ce84:	8fbf001c 	lw	ra,28(sp)
a000ce88:	8fbe0018 	lw	s8,24(sp)
a000ce8c:	27bd0020 	addiu	sp,sp,32
a000ce90:	03e00008 	jr	ra
a000ce94:	00000000 	nop

a000ce98 <softvec_setintr>:
a000ce98:	27bdfff8 	addiu	sp,sp,-8
a000ce9c:	afbe0004 	sw	s8,4(sp)
a000cea0:	03a0f025 	move	s8,sp
a000cea4:	afc40008 	sw	a0,8(s8)
a000cea8:	afc5000c 	sw	a1,12(s8)
a000ceac:	8fc20008 	lw	v0,8(s8)
a000ceb0:	00021880 	sll	v1,v0,0x2
a000ceb4:	3c02a000 	lui	v0,0xa000
a000ceb8:	34427d00 	ori	v0,v0,0x7d00
a000cebc:	00621021 	addu	v0,v1,v0
a000cec0:	8fc3000c 	lw	v1,12(s8)
a000cec4:	ac430000 	sw	v1,0(v0)
a000cec8:	00001025 	move	v0,zero
a000cecc:	03c0e825 	move	sp,s8
a000ced0:	8fbe0004 	lw	s8,4(sp)
a000ced4:	27bd0008 	addiu	sp,sp,8
a000ced8:	03e00008 	jr	ra
a000cedc:	00000000 	nop

a000cee0 <interrupt>:
a000cee0:	27bdffe0 	addiu	sp,sp,-32
a000cee4:	afbf001c 	sw	ra,28(sp)
a000cee8:	afbe0018 	sw	s8,24(sp)
a000ceec:	03a0f025 	move	s8,sp
a000cef0:	afc40020 	sw	a0,32(s8)
a000cef4:	afc50024 	sw	a1,36(s8)
a000cef8:	8fc20020 	lw	v0,32(s8)
a000cefc:	00021880 	sll	v1,v0,0x2
a000cf00:	3c02a000 	lui	v0,0xa000
a000cf04:	34427d00 	ori	v0,v0,0x7d00
a000cf08:	00621021 	addu	v0,v1,v0
a000cf0c:	8c420000 	lw	v0,0(v0)
a000cf10:	afc20010 	sw	v0,16(s8)
a000cf14:	8fc20010 	lw	v0,16(s8)
a000cf18:	10400006 	beqz	v0,a000cf34 <interrupt+0x54>
a000cf1c:	00000000 	nop
a000cf20:	8fc20010 	lw	v0,16(s8)
a000cf24:	8fc50024 	lw	a1,36(s8)
a000cf28:	8fc40020 	lw	a0,32(s8)
a000cf2c:	0040f809 	jalr	v0
a000cf30:	00000000 	nop
a000cf34:	00000000 	nop
a000cf38:	03c0e825 	move	sp,s8
a000cf3c:	8fbf001c 	lw	ra,28(sp)
a000cf40:	8fbe0018 	lw	s8,24(sp)
a000cf44:	27bd0020 	addiu	sp,sp,32
a000cf48:	03e00008 	jr	ra
a000cf4c:	00000000 	nop

a000cf50 <getcurrent>:
a000cf50:	27bdfff8 	addiu	sp,sp,-8
a000cf54:	afbe0004 	sw	s8,4(sp)
a000cf58:	03a0f025 	move	s8,sp
a000cf5c:	3c02a001 	lui	v0,0xa001
a000cf60:	8c4280ec 	lw	v0,-32532(v0)
a000cf64:	14400004 	bnez	v0,a000cf78 <getcurrent+0x28>
a000cf68:	00000000 	nop
a000cf6c:	2402ffff 	li	v0,-1
a000cf70:	10000011 	b	a000cfb8 <getcurrent+0x68>
a000cf74:	00000000 	nop
a000cf78:	3c02a001 	lui	v0,0xa001
a000cf7c:	8c4280ec 	lw	v0,-32532(v0)
a000cf80:	8c430000 	lw	v1,0(v0)
a000cf84:	3c02a001 	lui	v0,0xa001
a000cf88:	ac4380e4 	sw	v1,-32540(v0)
a000cf8c:	3c02a001 	lui	v0,0xa001
a000cf90:	8c4280e4 	lw	v0,-32540(v0)
a000cf94:	14400004 	bnez	v0,a000cfa8 <getcurrent+0x58>
a000cf98:	00000000 	nop
a000cf9c:	3c02a001 	lui	v0,0xa001
a000cfa0:	244280e4 	addiu	v0,v0,-32540
a000cfa4:	ac400004 	sw	zero,4(v0)
a000cfa8:	3c02a001 	lui	v0,0xa001
a000cfac:	8c4280ec 	lw	v0,-32532(v0)
a000cfb0:	ac400000 	sw	zero,0(v0)
a000cfb4:	00001025 	move	v0,zero
a000cfb8:	03c0e825 	move	sp,s8
a000cfbc:	8fbe0004 	lw	s8,4(sp)
a000cfc0:	27bd0008 	addiu	sp,sp,8
a000cfc4:	03e00008 	jr	ra
a000cfc8:	00000000 	nop

a000cfcc <putcurrent>:
a000cfcc:	27bdfff8 	addiu	sp,sp,-8
a000cfd0:	afbe0004 	sw	s8,4(sp)
a000cfd4:	03a0f025 	move	s8,sp
a000cfd8:	3c02a001 	lui	v0,0xa001
a000cfdc:	8c4280ec 	lw	v0,-32532(v0)
a000cfe0:	14400004 	bnez	v0,a000cff4 <putcurrent+0x28>
a000cfe4:	00000000 	nop
a000cfe8:	2402ffff 	li	v0,-1
a000cfec:	10000018 	b	a000d050 <putcurrent+0x84>
a000cff0:	00000000 	nop
a000cff4:	3c02a001 	lui	v0,0xa001
a000cff8:	244280e4 	addiu	v0,v0,-32540
a000cffc:	8c420004 	lw	v0,4(v0)
a000d000:	10400009 	beqz	v0,a000d028 <putcurrent+0x5c>
a000d004:	00000000 	nop
a000d008:	3c02a001 	lui	v0,0xa001
a000d00c:	244280e4 	addiu	v0,v0,-32540
a000d010:	8c420004 	lw	v0,4(v0)
a000d014:	3c03a001 	lui	v1,0xa001
a000d018:	8c6380ec 	lw	v1,-32532(v1)
a000d01c:	ac430000 	sw	v1,0(v0)
a000d020:	10000005 	b	a000d038 <putcurrent+0x6c>
a000d024:	00000000 	nop
a000d028:	3c02a001 	lui	v0,0xa001
a000d02c:	8c4380ec 	lw	v1,-32532(v0)
a000d030:	3c02a001 	lui	v0,0xa001
a000d034:	ac4380e4 	sw	v1,-32540(v0)
a000d038:	3c02a001 	lui	v0,0xa001
a000d03c:	8c4380ec 	lw	v1,-32532(v0)
a000d040:	3c02a001 	lui	v0,0xa001
a000d044:	244280e4 	addiu	v0,v0,-32540
a000d048:	ac430004 	sw	v1,4(v0)
a000d04c:	00001025 	move	v0,zero
a000d050:	03c0e825 	move	sp,s8
a000d054:	8fbe0004 	lw	s8,4(sp)
a000d058:	27bd0008 	addiu	sp,sp,8
a000d05c:	03e00008 	jr	ra
a000d060:	00000000 	nop

a000d064 <thread_end>:
a000d064:	27bdffe8 	addiu	sp,sp,-24
a000d068:	afbf0014 	sw	ra,20(sp)
a000d06c:	afbe0010 	sw	s8,16(sp)
a000d070:	03a0f025 	move	s8,sp
a000d074:	0c0036b6 	jal	a000dad8 <kz_exit>
a000d078:	00000000 	nop
a000d07c:	00000000 	nop
a000d080:	03c0e825 	move	sp,s8
a000d084:	8fbf0014 	lw	ra,20(sp)
a000d088:	8fbe0010 	lw	s8,16(sp)
a000d08c:	27bd0018 	addiu	sp,sp,24
a000d090:	03e00008 	jr	ra
a000d094:	00000000 	nop

a000d098 <thread_init>:
a000d098:	27bdffe8 	addiu	sp,sp,-24
a000d09c:	afbf0014 	sw	ra,20(sp)
a000d0a0:	afbe0010 	sw	s8,16(sp)
a000d0a4:	03a0f025 	move	s8,sp
a000d0a8:	afc40018 	sw	a0,24(s8)
a000d0ac:	3c02a001 	lui	v0,0xa001
a000d0b0:	2444803c 	addiu	a0,v0,-32708
a000d0b4:	0c003292 	jal	a000ca48 <puts>
a000d0b8:	00000000 	nop
a000d0bc:	8fc20018 	lw	v0,24(s8)
a000d0c0:	8c420018 	lw	v0,24(v0)
a000d0c4:	8fc30018 	lw	v1,24(s8)
a000d0c8:	8c64001c 	lw	a0,28(v1)
a000d0cc:	8fc30018 	lw	v1,24(s8)
a000d0d0:	8c630020 	lw	v1,32(v1)
a000d0d4:	00602825 	move	a1,v1
a000d0d8:	0040f809 	jalr	v0
a000d0dc:	00000000 	nop
a000d0e0:	0c003419 	jal	a000d064 <thread_end>
a000d0e4:	00000000 	nop
a000d0e8:	00000000 	nop
a000d0ec:	03c0e825 	move	sp,s8
a000d0f0:	8fbf0014 	lw	ra,20(sp)
a000d0f4:	8fbe0010 	lw	s8,16(sp)
a000d0f8:	27bd0018 	addiu	sp,sp,24
a000d0fc:	03e00008 	jr	ra
a000d100:	00000000 	nop

a000d104 <start_dispatch>:
a000d104:	27bdffe8 	addiu	sp,sp,-24
a000d108:	afbf0014 	sw	ra,20(sp)
a000d10c:	afbe0010 	sw	s8,16(sp)
a000d110:	03a0f025 	move	s8,sp
a000d114:	3c02a001 	lui	v0,0xa001
a000d118:	2444804c 	addiu	a0,v0,-32692
a000d11c:	0c003292 	jal	a000ca48 <puts>
a000d120:	00000000 	nop
a000d124:	00000000 	nop
a000d128:	03c0e825 	move	sp,s8
a000d12c:	8fbf0014 	lw	ra,20(sp)
a000d130:	8fbe0010 	lw	s8,16(sp)
a000d134:	27bd0018 	addiu	sp,sp,24
a000d138:	03e00008 	jr	ra
a000d13c:	00000000 	nop

a000d140 <thread_run>:
a000d140:	27bdffd8 	addiu	sp,sp,-40
a000d144:	afbf0024 	sw	ra,36(sp)
a000d148:	afbe0020 	sw	s8,32(sp)
a000d14c:	03a0f025 	move	s8,sp
a000d150:	afc40028 	sw	a0,40(s8)
a000d154:	afc5002c 	sw	a1,44(s8)
a000d158:	afc60030 	sw	a2,48(s8)
a000d15c:	afc70034 	sw	a3,52(s8)
a000d160:	afc00010 	sw	zero,16(s8)
a000d164:	10000011 	b	a000d1ac <thread_run+0x6c>
a000d168:	00000000 	nop
a000d16c:	8fc30010 	lw	v1,16(s8)
a000d170:	00601025 	move	v0,v1
a000d174:	00021040 	sll	v0,v0,0x1
a000d178:	00431021 	addu	v0,v0,v1
a000d17c:	00021100 	sll	v0,v0,0x4
a000d180:	3c03a001 	lui	v1,0xa001
a000d184:	246380f0 	addiu	v1,v1,-32528
a000d188:	00431021 	addu	v0,v0,v1
a000d18c:	afc20014 	sw	v0,20(s8)
a000d190:	8fc20014 	lw	v0,20(s8)
a000d194:	8c420018 	lw	v0,24(v0)
a000d198:	1040000a 	beqz	v0,a000d1c4 <thread_run+0x84>
a000d19c:	00000000 	nop
a000d1a0:	8fc20010 	lw	v0,16(s8)
a000d1a4:	24420001 	addiu	v0,v0,1
a000d1a8:	afc20010 	sw	v0,16(s8)
a000d1ac:	8fc20010 	lw	v0,16(s8)
a000d1b0:	28420006 	slti	v0,v0,6
a000d1b4:	1440ffed 	bnez	v0,a000d16c <thread_run+0x2c>
a000d1b8:	00000000 	nop
a000d1bc:	10000002 	b	a000d1c8 <thread_run+0x88>
a000d1c0:	00000000 	nop
a000d1c4:	00000000 	nop
a000d1c8:	8fc30010 	lw	v1,16(s8)
a000d1cc:	24020006 	li	v0,6
a000d1d0:	14620004 	bne	v1,v0,a000d1e4 <thread_run+0xa4>
a000d1d4:	00000000 	nop
a000d1d8:	2402ffff 	li	v0,-1
a000d1dc:	100000da 	b	a000d548 <thread_run+0x408>
a000d1e0:	00000000 	nop
a000d1e4:	24060030 	li	a2,48
a000d1e8:	00002825 	move	a1,zero
a000d1ec:	8fc40014 	lw	a0,20(s8)
a000d1f0:	0c003158 	jal	a000c560 <memset>
a000d1f4:	00000000 	nop
a000d1f8:	8fc20014 	lw	v0,20(s8)
a000d1fc:	24420004 	addiu	v0,v0,4
a000d200:	8fc5002c 	lw	a1,44(s8)
a000d204:	00402025 	move	a0,v0
a000d208:	0c0031dc 	jal	a000c770 <strcpy>
a000d20c:	00000000 	nop
a000d210:	8fc20014 	lw	v0,20(s8)
a000d214:	ac400000 	sw	zero,0(v0)
a000d218:	8fc20014 	lw	v0,20(s8)
a000d21c:	8fc30028 	lw	v1,40(s8)
a000d220:	ac430018 	sw	v1,24(v0)
a000d224:	8fc20014 	lw	v0,20(s8)
a000d228:	8fc30034 	lw	v1,52(s8)
a000d22c:	ac43001c 	sw	v1,28(v0)
a000d230:	8fc20014 	lw	v0,20(s8)
a000d234:	8fc30038 	lw	v1,56(s8)
a000d238:	ac430020 	sw	v1,32(v0)
a000d23c:	3c02a001 	lui	v0,0xa001
a000d240:	8c4280e0 	lw	v0,-32544(v0)
a000d244:	8fc60030 	lw	a2,48(s8)
a000d248:	00002825 	move	a1,zero
a000d24c:	00402025 	move	a0,v0
a000d250:	0c003158 	jal	a000c560 <memset>
a000d254:	00000000 	nop
a000d258:	3c02a001 	lui	v0,0xa001
a000d25c:	8c4380e0 	lw	v1,-32544(v0)
a000d260:	8fc20030 	lw	v0,48(s8)
a000d264:	00621821 	addu	v1,v1,v0
a000d268:	3c02a001 	lui	v0,0xa001
a000d26c:	ac4380e0 	sw	v1,-32544(v0)
a000d270:	3c02a001 	lui	v0,0xa001
a000d274:	8c4380e0 	lw	v1,-32544(v0)
a000d278:	8fc20014 	lw	v0,20(s8)
a000d27c:	ac430014 	sw	v1,20(v0)
a000d280:	8fc20014 	lw	v0,20(s8)
a000d284:	8c420014 	lw	v0,20(v0)
a000d288:	afc20018 	sw	v0,24(s8)
a000d28c:	8fc20018 	lw	v0,24(s8)
a000d290:	2442fffc 	addiu	v0,v0,-4
a000d294:	afc20018 	sw	v0,24(s8)
a000d298:	8fc20018 	lw	v0,24(s8)
a000d29c:	ac400000 	sw	zero,0(v0)
a000d2a0:	8fc20018 	lw	v0,24(s8)
a000d2a4:	2442fffc 	addiu	v0,v0,-4
a000d2a8:	afc20018 	sw	v0,24(s8)
a000d2ac:	3c02a001 	lui	v0,0xa001
a000d2b0:	2443d098 	addiu	v1,v0,-12136
a000d2b4:	8fc20018 	lw	v0,24(s8)
a000d2b8:	ac430000 	sw	v1,0(v0)
a000d2bc:	8fc20018 	lw	v0,24(s8)
a000d2c0:	2442fffc 	addiu	v0,v0,-4
a000d2c4:	afc20018 	sw	v0,24(s8)
a000d2c8:	8fc20018 	lw	v0,24(s8)
a000d2cc:	ac400000 	sw	zero,0(v0)
a000d2d0:	8fc20018 	lw	v0,24(s8)
a000d2d4:	2442fffc 	addiu	v0,v0,-4
a000d2d8:	afc20018 	sw	v0,24(s8)
a000d2dc:	8fc20018 	lw	v0,24(s8)
a000d2e0:	ac400000 	sw	zero,0(v0)
a000d2e4:	8fc20018 	lw	v0,24(s8)
a000d2e8:	2442fffc 	addiu	v0,v0,-4
a000d2ec:	afc20018 	sw	v0,24(s8)
a000d2f0:	8fc20018 	lw	v0,24(s8)
a000d2f4:	ac400000 	sw	zero,0(v0)
a000d2f8:	8fc20018 	lw	v0,24(s8)
a000d2fc:	2442fffc 	addiu	v0,v0,-4
a000d300:	afc20018 	sw	v0,24(s8)
a000d304:	8fc20018 	lw	v0,24(s8)
a000d308:	ac400000 	sw	zero,0(v0)
a000d30c:	8fc20018 	lw	v0,24(s8)
a000d310:	2442fffc 	addiu	v0,v0,-4
a000d314:	afc20018 	sw	v0,24(s8)
a000d318:	8fc20018 	lw	v0,24(s8)
a000d31c:	ac400000 	sw	zero,0(v0)
a000d320:	8fc20018 	lw	v0,24(s8)
a000d324:	2442fffc 	addiu	v0,v0,-4
a000d328:	afc20018 	sw	v0,24(s8)
a000d32c:	8fc20018 	lw	v0,24(s8)
a000d330:	ac400000 	sw	zero,0(v0)
a000d334:	8fc20018 	lw	v0,24(s8)
a000d338:	2442fffc 	addiu	v0,v0,-4
a000d33c:	afc20018 	sw	v0,24(s8)
a000d340:	8fc20018 	lw	v0,24(s8)
a000d344:	ac400000 	sw	zero,0(v0)
a000d348:	8fc20018 	lw	v0,24(s8)
a000d34c:	2442fffc 	addiu	v0,v0,-4
a000d350:	afc20018 	sw	v0,24(s8)
a000d354:	8fc20018 	lw	v0,24(s8)
a000d358:	ac400000 	sw	zero,0(v0)
a000d35c:	8fc20018 	lw	v0,24(s8)
a000d360:	2442fffc 	addiu	v0,v0,-4
a000d364:	afc20018 	sw	v0,24(s8)
a000d368:	8fc20018 	lw	v0,24(s8)
a000d36c:	ac400000 	sw	zero,0(v0)
a000d370:	8fc20018 	lw	v0,24(s8)
a000d374:	2442fffc 	addiu	v0,v0,-4
a000d378:	afc20018 	sw	v0,24(s8)
a000d37c:	8fc20018 	lw	v0,24(s8)
a000d380:	ac400000 	sw	zero,0(v0)
a000d384:	8fc20018 	lw	v0,24(s8)
a000d388:	2442fffc 	addiu	v0,v0,-4
a000d38c:	afc20018 	sw	v0,24(s8)
a000d390:	8fc20018 	lw	v0,24(s8)
a000d394:	ac400000 	sw	zero,0(v0)
a000d398:	8fc20018 	lw	v0,24(s8)
a000d39c:	2442fffc 	addiu	v0,v0,-4
a000d3a0:	afc20018 	sw	v0,24(s8)
a000d3a4:	8fc20018 	lw	v0,24(s8)
a000d3a8:	ac400000 	sw	zero,0(v0)
a000d3ac:	8fc20018 	lw	v0,24(s8)
a000d3b0:	2442fffc 	addiu	v0,v0,-4
a000d3b4:	afc20018 	sw	v0,24(s8)
a000d3b8:	8fc20018 	lw	v0,24(s8)
a000d3bc:	ac400000 	sw	zero,0(v0)
a000d3c0:	8fc20018 	lw	v0,24(s8)
a000d3c4:	2442fffc 	addiu	v0,v0,-4
a000d3c8:	afc20018 	sw	v0,24(s8)
a000d3cc:	8fc20018 	lw	v0,24(s8)
a000d3d0:	ac400000 	sw	zero,0(v0)
a000d3d4:	8fc20018 	lw	v0,24(s8)
a000d3d8:	2442fffc 	addiu	v0,v0,-4
a000d3dc:	afc20018 	sw	v0,24(s8)
a000d3e0:	8fc20018 	lw	v0,24(s8)
a000d3e4:	ac400000 	sw	zero,0(v0)
a000d3e8:	8fc20018 	lw	v0,24(s8)
a000d3ec:	2442fffc 	addiu	v0,v0,-4
a000d3f0:	afc20018 	sw	v0,24(s8)
a000d3f4:	8fc20018 	lw	v0,24(s8)
a000d3f8:	ac400000 	sw	zero,0(v0)
a000d3fc:	8fc20018 	lw	v0,24(s8)
a000d400:	2442fffc 	addiu	v0,v0,-4
a000d404:	afc20018 	sw	v0,24(s8)
a000d408:	8fc20018 	lw	v0,24(s8)
a000d40c:	ac400000 	sw	zero,0(v0)
a000d410:	8fc20018 	lw	v0,24(s8)
a000d414:	2442fffc 	addiu	v0,v0,-4
a000d418:	afc20018 	sw	v0,24(s8)
a000d41c:	8fc20018 	lw	v0,24(s8)
a000d420:	ac400000 	sw	zero,0(v0)
a000d424:	8fc20018 	lw	v0,24(s8)
a000d428:	2442fffc 	addiu	v0,v0,-4
a000d42c:	afc20018 	sw	v0,24(s8)
a000d430:	8fc20018 	lw	v0,24(s8)
a000d434:	ac400000 	sw	zero,0(v0)
a000d438:	8fc20018 	lw	v0,24(s8)
a000d43c:	2442fffc 	addiu	v0,v0,-4
a000d440:	afc20018 	sw	v0,24(s8)
a000d444:	8fc20018 	lw	v0,24(s8)
a000d448:	ac400000 	sw	zero,0(v0)
a000d44c:	8fc20018 	lw	v0,24(s8)
a000d450:	2442fffc 	addiu	v0,v0,-4
a000d454:	afc20018 	sw	v0,24(s8)
a000d458:	8fc20018 	lw	v0,24(s8)
a000d45c:	ac400000 	sw	zero,0(v0)
a000d460:	8fc20018 	lw	v0,24(s8)
a000d464:	2442fffc 	addiu	v0,v0,-4
a000d468:	afc20018 	sw	v0,24(s8)
a000d46c:	8fc20018 	lw	v0,24(s8)
a000d470:	ac400000 	sw	zero,0(v0)
a000d474:	8fc20018 	lw	v0,24(s8)
a000d478:	2442fffc 	addiu	v0,v0,-4
a000d47c:	afc20018 	sw	v0,24(s8)
a000d480:	8fc20018 	lw	v0,24(s8)
a000d484:	ac400000 	sw	zero,0(v0)
a000d488:	8fc20018 	lw	v0,24(s8)
a000d48c:	2442fffc 	addiu	v0,v0,-4
a000d490:	afc20018 	sw	v0,24(s8)
a000d494:	8fc20018 	lw	v0,24(s8)
a000d498:	ac400000 	sw	zero,0(v0)
a000d49c:	8fc20018 	lw	v0,24(s8)
a000d4a0:	2442fffc 	addiu	v0,v0,-4
a000d4a4:	afc20018 	sw	v0,24(s8)
a000d4a8:	8fc20018 	lw	v0,24(s8)
a000d4ac:	ac400000 	sw	zero,0(v0)
a000d4b0:	8fc20018 	lw	v0,24(s8)
a000d4b4:	2442fffc 	addiu	v0,v0,-4
a000d4b8:	afc20018 	sw	v0,24(s8)
a000d4bc:	8fc20018 	lw	v0,24(s8)
a000d4c0:	ac400000 	sw	zero,0(v0)
a000d4c4:	8fc20018 	lw	v0,24(s8)
a000d4c8:	2442fffc 	addiu	v0,v0,-4
a000d4cc:	afc20018 	sw	v0,24(s8)
a000d4d0:	8fc30014 	lw	v1,20(s8)
a000d4d4:	8fc20018 	lw	v0,24(s8)
a000d4d8:	ac430000 	sw	v1,0(v0)
a000d4dc:	8fc20018 	lw	v0,24(s8)
a000d4e0:	2442fffc 	addiu	v0,v0,-4
a000d4e4:	afc20018 	sw	v0,24(s8)
a000d4e8:	8fc20018 	lw	v0,24(s8)
a000d4ec:	ac400000 	sw	zero,0(v0)
a000d4f0:	8fc20018 	lw	v0,24(s8)
a000d4f4:	2442fffc 	addiu	v0,v0,-4
a000d4f8:	afc20018 	sw	v0,24(s8)
a000d4fc:	8fc20018 	lw	v0,24(s8)
a000d500:	ac400000 	sw	zero,0(v0)
a000d504:	8fc20018 	lw	v0,24(s8)
a000d508:	2442fffc 	addiu	v0,v0,-4
a000d50c:	afc20018 	sw	v0,24(s8)
a000d510:	8fc20018 	lw	v0,24(s8)
a000d514:	ac400000 	sw	zero,0(v0)
a000d518:	8fc30018 	lw	v1,24(s8)
a000d51c:	8fc20014 	lw	v0,20(s8)
a000d520:	ac43002c 	sw	v1,44(v0)
a000d524:	0c0033f3 	jal	a000cfcc <putcurrent>
a000d528:	00000000 	nop
a000d52c:	3c02a001 	lui	v0,0xa001
a000d530:	8fc30014 	lw	v1,20(s8)
a000d534:	ac4380ec 	sw	v1,-32532(v0)
a000d538:	0c0033f3 	jal	a000cfcc <putcurrent>
a000d53c:	00000000 	nop
a000d540:	3c02a001 	lui	v0,0xa001
a000d544:	8c4280ec 	lw	v0,-32532(v0)
a000d548:	03c0e825 	move	sp,s8
a000d54c:	8fbf0024 	lw	ra,36(sp)
a000d550:	8fbe0020 	lw	s8,32(sp)
a000d554:	27bd0028 	addiu	sp,sp,40
a000d558:	03e00008 	jr	ra
a000d55c:	00000000 	nop

a000d560 <thread_exit>:
a000d560:	27bdffe8 	addiu	sp,sp,-24
a000d564:	afbf0014 	sw	ra,20(sp)
a000d568:	afbe0010 	sw	s8,16(sp)
a000d56c:	03a0f025 	move	s8,sp
a000d570:	3c02a001 	lui	v0,0xa001
a000d574:	8c4280ec 	lw	v0,-32532(v0)
a000d578:	24420004 	addiu	v0,v0,4
a000d57c:	00402025 	move	a0,v0
a000d580:	0c003292 	jal	a000ca48 <puts>
a000d584:	00000000 	nop
a000d588:	3c02a001 	lui	v0,0xa001
a000d58c:	2444805c 	addiu	a0,v0,-32676
a000d590:	0c003292 	jal	a000ca48 <puts>
a000d594:	00000000 	nop
a000d598:	3c02a001 	lui	v0,0xa001
a000d59c:	8c4280ec 	lw	v0,-32532(v0)
a000d5a0:	24060030 	li	a2,48
a000d5a4:	00002825 	move	a1,zero
a000d5a8:	00402025 	move	a0,v0
a000d5ac:	0c003158 	jal	a000c560 <memset>
a000d5b0:	00000000 	nop
a000d5b4:	00001025 	move	v0,zero
a000d5b8:	03c0e825 	move	sp,s8
a000d5bc:	8fbf0014 	lw	ra,20(sp)
a000d5c0:	8fbe0010 	lw	s8,16(sp)
a000d5c4:	27bd0018 	addiu	sp,sp,24
a000d5c8:	03e00008 	jr	ra
a000d5cc:	00000000 	nop

a000d5d0 <setintr>:
a000d5d0:	27bdffe8 	addiu	sp,sp,-24
a000d5d4:	afbf0014 	sw	ra,20(sp)
a000d5d8:	afbe0010 	sw	s8,16(sp)
a000d5dc:	03a0f025 	move	s8,sp
a000d5e0:	afc40018 	sw	a0,24(s8)
a000d5e4:	afc5001c 	sw	a1,28(s8)
a000d5e8:	3c02a001 	lui	v0,0xa001
a000d5ec:	2445d844 	addiu	a1,v0,-10172
a000d5f0:	8fc40018 	lw	a0,24(s8)
a000d5f4:	0c0033a6 	jal	a000ce98 <softvec_setintr>
a000d5f8:	00000000 	nop
a000d5fc:	3c02a001 	lui	v0,0xa001
a000d600:	8fc30018 	lw	v1,24(s8)
a000d604:	00031880 	sll	v1,v1,0x2
a000d608:	24428210 	addiu	v0,v0,-32240
a000d60c:	00621021 	addu	v0,v1,v0
a000d610:	8fc3001c 	lw	v1,28(s8)
a000d614:	ac430000 	sw	v1,0(v0)
a000d618:	00001025 	move	v0,zero
a000d61c:	03c0e825 	move	sp,s8
a000d620:	8fbf0014 	lw	ra,20(sp)
a000d624:	8fbe0010 	lw	s8,16(sp)
a000d628:	27bd0018 	addiu	sp,sp,24
a000d62c:	03e00008 	jr	ra
a000d630:	00000000 	nop

a000d634 <call_functions>:
a000d634:	27bdffe0 	addiu	sp,sp,-32
a000d638:	afbf001c 	sw	ra,28(sp)
a000d63c:	afbe0018 	sw	s8,24(sp)
a000d640:	03a0f025 	move	s8,sp
a000d644:	afc40020 	sw	a0,32(s8)
a000d648:	afc50024 	sw	a1,36(s8)
a000d64c:	8fc20020 	lw	v0,32(s8)
a000d650:	10400006 	beqz	v0,a000d66c <call_functions+0x38>
a000d654:	00000000 	nop
a000d658:	24030001 	li	v1,1
a000d65c:	10430019 	beq	v0,v1,a000d6c4 <call_functions+0x90>
a000d660:	00000000 	nop
a000d664:	1000001a 	b	a000d6d0 <call_functions+0x9c>
a000d668:	00000000 	nop
a000d66c:	8fc20024 	lw	v0,36(s8)
a000d670:	8c430000 	lw	v1,0(v0)
a000d674:	8fc20024 	lw	v0,36(s8)
a000d678:	8c440004 	lw	a0,4(v0)
a000d67c:	8fc20024 	lw	v0,36(s8)
a000d680:	8c450008 	lw	a1,8(v0)
a000d684:	8fc20024 	lw	v0,36(s8)
a000d688:	8c46000c 	lw	a2,12(v0)
a000d68c:	8fc20024 	lw	v0,36(s8)
a000d690:	8c420010 	lw	v0,16(v0)
a000d694:	afa20010 	sw	v0,16(sp)
a000d698:	00c03825 	move	a3,a2
a000d69c:	00a03025 	move	a2,a1
a000d6a0:	00802825 	move	a1,a0
a000d6a4:	00602025 	move	a0,v1
a000d6a8:	0c003450 	jal	a000d140 <thread_run>
a000d6ac:	00000000 	nop
a000d6b0:	00401825 	move	v1,v0
a000d6b4:	8fc20024 	lw	v0,36(s8)
a000d6b8:	ac430014 	sw	v1,20(v0)
a000d6bc:	10000004 	b	a000d6d0 <call_functions+0x9c>
a000d6c0:	00000000 	nop
a000d6c4:	0c003558 	jal	a000d560 <thread_exit>
a000d6c8:	00000000 	nop
	...
a000d6d4:	03c0e825 	move	sp,s8
a000d6d8:	8fbf001c 	lw	ra,28(sp)
a000d6dc:	8fbe0018 	lw	s8,24(sp)
a000d6e0:	27bd0020 	addiu	sp,sp,32
a000d6e4:	03e00008 	jr	ra
a000d6e8:	00000000 	nop

a000d6ec <syscall_proc>:
a000d6ec:	27bdffe8 	addiu	sp,sp,-24
a000d6f0:	afbf0014 	sw	ra,20(sp)
a000d6f4:	afbe0010 	sw	s8,16(sp)
a000d6f8:	03a0f025 	move	s8,sp
a000d6fc:	afc40018 	sw	a0,24(s8)
a000d700:	afc5001c 	sw	a1,28(s8)
a000d704:	0c0033d4 	jal	a000cf50 <getcurrent>
a000d708:	00000000 	nop
a000d70c:	8fc5001c 	lw	a1,28(s8)
a000d710:	8fc40018 	lw	a0,24(s8)
a000d714:	0c00358d 	jal	a000d634 <call_functions>
a000d718:	00000000 	nop
a000d71c:	00000000 	nop
a000d720:	03c0e825 	move	sp,s8
a000d724:	8fbf0014 	lw	ra,20(sp)
a000d728:	8fbe0010 	lw	s8,16(sp)
a000d72c:	27bd0018 	addiu	sp,sp,24
a000d730:	03e00008 	jr	ra
a000d734:	00000000 	nop

a000d738 <schedule>:
a000d738:	27bdffe8 	addiu	sp,sp,-24
a000d73c:	afbf0014 	sw	ra,20(sp)
a000d740:	afbe0010 	sw	s8,16(sp)
a000d744:	03a0f025 	move	s8,sp
a000d748:	3c02a001 	lui	v0,0xa001
a000d74c:	8c4280e4 	lw	v0,-32540(v0)
a000d750:	14400003 	bnez	v0,a000d760 <schedule+0x28>
a000d754:	00000000 	nop
a000d758:	0c00367a 	jal	a000d9e8 <kz_sysdown>
a000d75c:	00000000 	nop
a000d760:	3c02a001 	lui	v0,0xa001
a000d764:	8c4380e4 	lw	v1,-32540(v0)
a000d768:	3c02a001 	lui	v0,0xa001
a000d76c:	ac4380ec 	sw	v1,-32532(v0)
a000d770:	00000000 	nop
a000d774:	03c0e825 	move	sp,s8
a000d778:	8fbf0014 	lw	ra,20(sp)
a000d77c:	8fbe0010 	lw	s8,16(sp)
a000d780:	27bd0018 	addiu	sp,sp,24
a000d784:	03e00008 	jr	ra
a000d788:	00000000 	nop

a000d78c <syscall_intr>:
a000d78c:	27bdffe8 	addiu	sp,sp,-24
a000d790:	afbf0014 	sw	ra,20(sp)
a000d794:	afbe0010 	sw	s8,16(sp)
a000d798:	03a0f025 	move	s8,sp
a000d79c:	3c02a001 	lui	v0,0xa001
a000d7a0:	8c4280ec 	lw	v0,-32532(v0)
a000d7a4:	8c430024 	lw	v1,36(v0)
a000d7a8:	3c02a001 	lui	v0,0xa001
a000d7ac:	8c4280ec 	lw	v0,-32532(v0)
a000d7b0:	8c420028 	lw	v0,40(v0)
a000d7b4:	00402825 	move	a1,v0
a000d7b8:	00602025 	move	a0,v1
a000d7bc:	0c0035bb 	jal	a000d6ec <syscall_proc>
a000d7c0:	00000000 	nop
a000d7c4:	00000000 	nop
a000d7c8:	03c0e825 	move	sp,s8
a000d7cc:	8fbf0014 	lw	ra,20(sp)
a000d7d0:	8fbe0010 	lw	s8,16(sp)
a000d7d4:	27bd0018 	addiu	sp,sp,24
a000d7d8:	03e00008 	jr	ra
a000d7dc:	00000000 	nop

a000d7e0 <softerr_intr>:
a000d7e0:	27bdffe8 	addiu	sp,sp,-24
a000d7e4:	afbf0014 	sw	ra,20(sp)
a000d7e8:	afbe0010 	sw	s8,16(sp)
a000d7ec:	03a0f025 	move	s8,sp
a000d7f0:	3c02a001 	lui	v0,0xa001
a000d7f4:	8c4280ec 	lw	v0,-32532(v0)
a000d7f8:	24420004 	addiu	v0,v0,4
a000d7fc:	00402025 	move	a0,v0
a000d800:	0c003292 	jal	a000ca48 <puts>
a000d804:	00000000 	nop
a000d808:	3c02a001 	lui	v0,0xa001
a000d80c:	24448064 	addiu	a0,v0,-32668
a000d810:	0c003292 	jal	a000ca48 <puts>
a000d814:	00000000 	nop
a000d818:	0c0033d4 	jal	a000cf50 <getcurrent>
a000d81c:	00000000 	nop
a000d820:	0c003558 	jal	a000d560 <thread_exit>
a000d824:	00000000 	nop
a000d828:	00000000 	nop
a000d82c:	03c0e825 	move	sp,s8
a000d830:	8fbf0014 	lw	ra,20(sp)
a000d834:	8fbe0010 	lw	s8,16(sp)
a000d838:	27bd0018 	addiu	sp,sp,24
a000d83c:	03e00008 	jr	ra
a000d840:	00000000 	nop

a000d844 <thread_intr>:
a000d844:	27bdffe8 	addiu	sp,sp,-24
a000d848:	afbf0014 	sw	ra,20(sp)
a000d84c:	afbe0010 	sw	s8,16(sp)
a000d850:	03a0f025 	move	s8,sp
a000d854:	afc40018 	sw	a0,24(s8)
a000d858:	afc5001c 	sw	a1,28(s8)
a000d85c:	3c02a001 	lui	v0,0xa001
a000d860:	8c4280ec 	lw	v0,-32532(v0)
a000d864:	8fc3001c 	lw	v1,28(s8)
a000d868:	ac43002c 	sw	v1,44(v0)
a000d86c:	3c02a001 	lui	v0,0xa001
a000d870:	8fc30018 	lw	v1,24(s8)
a000d874:	00031880 	sll	v1,v1,0x2
a000d878:	24428210 	addiu	v0,v0,-32240
a000d87c:	00621021 	addu	v0,v1,v0
a000d880:	8c420000 	lw	v0,0(v0)
a000d884:	10400009 	beqz	v0,a000d8ac <thread_intr+0x68>
a000d888:	00000000 	nop
a000d88c:	3c02a001 	lui	v0,0xa001
a000d890:	8fc30018 	lw	v1,24(s8)
a000d894:	00031880 	sll	v1,v1,0x2
a000d898:	24428210 	addiu	v0,v0,-32240
a000d89c:	00621021 	addu	v0,v1,v0
a000d8a0:	8c420000 	lw	v0,0(v0)
a000d8a4:	0040f809 	jalr	v0
a000d8a8:	00000000 	nop
a000d8ac:	0c0035ce 	jal	a000d738 <schedule>
a000d8b0:	00000000 	nop
a000d8b4:	3c02a001 	lui	v0,0xa001
a000d8b8:	8c4280ec 	lw	v0,-32532(v0)
a000d8bc:	2442002c 	addiu	v0,v0,44
a000d8c0:	00402025 	move	a0,v0
a000d8c4:	0c003102 	jal	a000c408 <dispatch>
a000d8c8:	00000000 	nop
a000d8cc:	00000000 	nop
a000d8d0:	03c0e825 	move	sp,s8
a000d8d4:	8fbf0014 	lw	ra,20(sp)
a000d8d8:	8fbe0010 	lw	s8,16(sp)
a000d8dc:	27bd0018 	addiu	sp,sp,24
a000d8e0:	03e00008 	jr	ra
a000d8e4:	00000000 	nop

a000d8e8 <kz_start>:
a000d8e8:	27bdffe0 	addiu	sp,sp,-32
a000d8ec:	afbf001c 	sw	ra,28(sp)
a000d8f0:	afbe0018 	sw	s8,24(sp)
a000d8f4:	03a0f025 	move	s8,sp
a000d8f8:	afc40020 	sw	a0,32(s8)
a000d8fc:	afc50024 	sw	a1,36(s8)
a000d900:	afc60028 	sw	a2,40(s8)
a000d904:	afc7002c 	sw	a3,44(s8)
a000d908:	3c02a001 	lui	v0,0xa001
a000d90c:	ac4080ec 	sw	zero,-32532(v0)
a000d910:	3c02a001 	lui	v0,0xa001
a000d914:	244280e4 	addiu	v0,v0,-32540
a000d918:	ac400004 	sw	zero,4(v0)
a000d91c:	3c02a001 	lui	v0,0xa001
a000d920:	244280e4 	addiu	v0,v0,-32540
a000d924:	8c430004 	lw	v1,4(v0)
a000d928:	3c02a001 	lui	v0,0xa001
a000d92c:	ac4380e4 	sw	v1,-32540(v0)
a000d930:	24060120 	li	a2,288
a000d934:	00002825 	move	a1,zero
a000d938:	3c02a001 	lui	v0,0xa001
a000d93c:	244480f0 	addiu	a0,v0,-32528
a000d940:	0c003158 	jal	a000c560 <memset>
a000d944:	00000000 	nop
a000d948:	2406000c 	li	a2,12
a000d94c:	00002825 	move	a1,zero
a000d950:	3c02a001 	lui	v0,0xa001
a000d954:	24448210 	addiu	a0,v0,-32240
a000d958:	0c003158 	jal	a000c560 <memset>
a000d95c:	00000000 	nop
a000d960:	3c02a001 	lui	v0,0xa001
a000d964:	2445d78c 	addiu	a1,v0,-10356
a000d968:	24040001 	li	a0,1
a000d96c:	0c003574 	jal	a000d5d0 <setintr>
a000d970:	00000000 	nop
a000d974:	3c02a001 	lui	v0,0xa001
a000d978:	2445d7e0 	addiu	a1,v0,-10272
a000d97c:	00002025 	move	a0,zero
a000d980:	0c003574 	jal	a000d5d0 <setintr>
a000d984:	00000000 	nop
a000d988:	8fc20030 	lw	v0,48(s8)
a000d98c:	afa20010 	sw	v0,16(sp)
a000d990:	8fc7002c 	lw	a3,44(s8)
a000d994:	8fc60028 	lw	a2,40(s8)
a000d998:	8fc50024 	lw	a1,36(s8)
a000d99c:	8fc40020 	lw	a0,32(s8)
a000d9a0:	0c003450 	jal	a000d140 <thread_run>
a000d9a4:	00000000 	nop
a000d9a8:	00401825 	move	v1,v0
a000d9ac:	3c02a001 	lui	v0,0xa001
a000d9b0:	ac4380ec 	sw	v1,-32532(v0)
a000d9b4:	3c02a001 	lui	v0,0xa001
a000d9b8:	8c4280ec 	lw	v0,-32532(v0)
a000d9bc:	2442002c 	addiu	v0,v0,44
a000d9c0:	00402025 	move	a0,v0
a000d9c4:	0c003102 	jal	a000c408 <dispatch>
a000d9c8:	00000000 	nop
a000d9cc:	00000000 	nop
a000d9d0:	03c0e825 	move	sp,s8
a000d9d4:	8fbf001c 	lw	ra,28(sp)
a000d9d8:	8fbe0018 	lw	s8,24(sp)
a000d9dc:	27bd0020 	addiu	sp,sp,32
a000d9e0:	03e00008 	jr	ra
a000d9e4:	00000000 	nop

a000d9e8 <kz_sysdown>:
a000d9e8:	27bdffe8 	addiu	sp,sp,-24
a000d9ec:	afbf0014 	sw	ra,20(sp)
a000d9f0:	afbe0010 	sw	s8,16(sp)
a000d9f4:	03a0f025 	move	s8,sp
a000d9f8:	3c02a001 	lui	v0,0xa001
a000d9fc:	2444806c 	addiu	a0,v0,-32660
a000da00:	0c003292 	jal	a000ca48 <puts>
a000da04:	00000000 	nop
a000da08:	1000ffff 	b	a000da08 <kz_sysdown+0x20>
a000da0c:	00000000 	nop

a000da10 <kz_syscall>:
a000da10:	27bdfff8 	addiu	sp,sp,-8
a000da14:	afbe0004 	sw	s8,4(sp)
a000da18:	03a0f025 	move	s8,sp
a000da1c:	afc40008 	sw	a0,8(s8)
a000da20:	afc5000c 	sw	a1,12(s8)
a000da24:	3c02a001 	lui	v0,0xa001
a000da28:	8c4280ec 	lw	v0,-32532(v0)
a000da2c:	8fc30008 	lw	v1,8(s8)
a000da30:	ac430024 	sw	v1,36(v0)
a000da34:	3c02a001 	lui	v0,0xa001
a000da38:	8c4280ec 	lw	v0,-32532(v0)
a000da3c:	8fc3000c 	lw	v1,12(s8)
a000da40:	ac430028 	sw	v1,40(v0)
a000da44:	0000000c 	syscall
a000da48:	00000000 	nop
a000da4c:	03c0e825 	move	sp,s8
a000da50:	8fbe0004 	lw	s8,4(sp)
a000da54:	27bd0008 	addiu	sp,sp,8
a000da58:	03e00008 	jr	ra
a000da5c:	00000000 	nop

a000da60 <kz_run>:
a000da60:	27bdffd0 	addiu	sp,sp,-48
a000da64:	afbf002c 	sw	ra,44(sp)
a000da68:	afbe0028 	sw	s8,40(sp)
a000da6c:	03a0f025 	move	s8,sp
a000da70:	afc40030 	sw	a0,48(s8)
a000da74:	afc50034 	sw	a1,52(s8)
a000da78:	afc60038 	sw	a2,56(s8)
a000da7c:	afc7003c 	sw	a3,60(s8)
a000da80:	8fc20030 	lw	v0,48(s8)
a000da84:	afc20010 	sw	v0,16(s8)
a000da88:	8fc20034 	lw	v0,52(s8)
a000da8c:	afc20014 	sw	v0,20(s8)
a000da90:	8fc20038 	lw	v0,56(s8)
a000da94:	afc20018 	sw	v0,24(s8)
a000da98:	8fc2003c 	lw	v0,60(s8)
a000da9c:	afc2001c 	sw	v0,28(s8)
a000daa0:	8fc20040 	lw	v0,64(s8)
a000daa4:	afc20020 	sw	v0,32(s8)
a000daa8:	27c20010 	addiu	v0,s8,16
a000daac:	00402825 	move	a1,v0
a000dab0:	00002025 	move	a0,zero
a000dab4:	0c003684 	jal	a000da10 <kz_syscall>
a000dab8:	00000000 	nop
a000dabc:	8fc20024 	lw	v0,36(s8)
a000dac0:	03c0e825 	move	sp,s8
a000dac4:	8fbf002c 	lw	ra,44(sp)
a000dac8:	8fbe0028 	lw	s8,40(sp)
a000dacc:	27bd0030 	addiu	sp,sp,48
a000dad0:	03e00008 	jr	ra
a000dad4:	00000000 	nop

a000dad8 <kz_exit>:
a000dad8:	27bdffe8 	addiu	sp,sp,-24
a000dadc:	afbf0014 	sw	ra,20(sp)
a000dae0:	afbe0010 	sw	s8,16(sp)
a000dae4:	03a0f025 	move	s8,sp
a000dae8:	00002825 	move	a1,zero
a000daec:	24040001 	li	a0,1
a000daf0:	0c003684 	jal	a000da10 <kz_syscall>
a000daf4:	00000000 	nop
a000daf8:	00000000 	nop
a000dafc:	03c0e825 	move	sp,s8
a000db00:	8fbf0014 	lw	ra,20(sp)
a000db04:	8fbe0010 	lw	s8,16(sp)
a000db08:	27bd0018 	addiu	sp,sp,24
a000db0c:	03e00008 	jr	ra
a000db10:	00000000 	nop

a000db14 <test08_1_main>:
a000db14:	27bdffc8 	addiu	sp,sp,-56
a000db18:	afbf0034 	sw	ra,52(sp)
a000db1c:	afbe0030 	sw	s8,48(sp)
a000db20:	03a0f025 	move	s8,sp
a000db24:	afc40038 	sw	a0,56(s8)
a000db28:	afc5003c 	sw	a1,60(s8)
a000db2c:	3c02a001 	lui	v0,0xa001
a000db30:	2444807c 	addiu	a0,v0,-32644
a000db34:	0c003292 	jal	a000ca48 <puts>
a000db38:	00000000 	nop
a000db3c:	3c02a001 	lui	v0,0xa001
a000db40:	24448090 	addiu	a0,v0,-32624
a000db44:	0c003292 	jal	a000ca48 <puts>
a000db48:	00000000 	nop
a000db4c:	27c20010 	addiu	v0,s8,16
a000db50:	00402025 	move	a0,v0
a000db54:	0c0032ab 	jal	a000caac <gets>
a000db58:	00000000 	nop
a000db5c:	24060004 	li	a2,4
a000db60:	3c02a001 	lui	v0,0xa001
a000db64:	24458094 	addiu	a1,v0,-32620
a000db68:	27c20010 	addiu	v0,s8,16
a000db6c:	00402025 	move	a0,v0
a000db70:	0c003228 	jal	a000c8a0 <strncmp>
a000db74:	00000000 	nop
a000db78:	1440000b 	bnez	v0,a000dba8 <test08_1_main+0x94>
a000db7c:	00000000 	nop
a000db80:	27c20014 	addiu	v0,s8,20
a000db84:	00402025 	move	a0,v0
a000db88:	0c003292 	jal	a000ca48 <puts>
a000db8c:	00000000 	nop
a000db90:	3c02a001 	lui	v0,0xa001
a000db94:	2444809c 	addiu	a0,v0,-32612
a000db98:	0c003292 	jal	a000ca48 <puts>
a000db9c:	00000000 	nop
a000dba0:	1000ffe6 	b	a000db3c <test08_1_main+0x28>
a000dba4:	00000000 	nop
a000dba8:	3c02a001 	lui	v0,0xa001
a000dbac:	244580a0 	addiu	a1,v0,-32608
a000dbb0:	27c20010 	addiu	v0,s8,16
a000dbb4:	00402025 	move	a0,v0
a000dbb8:	0c0031fa 	jal	a000c7e8 <strcmp>
a000dbbc:	00000000 	nop
a000dbc0:	10400007 	beqz	v0,a000dbe0 <test08_1_main+0xcc>
a000dbc4:	00000000 	nop
a000dbc8:	3c02a001 	lui	v0,0xa001
a000dbcc:	244480a8 	addiu	a0,v0,-32600
a000dbd0:	0c003292 	jal	a000ca48 <puts>
a000dbd4:	00000000 	nop
a000dbd8:	1000ffd8 	b	a000db3c <test08_1_main+0x28>
a000dbdc:	00000000 	nop
a000dbe0:	00000000 	nop
a000dbe4:	3c02a001 	lui	v0,0xa001
a000dbe8:	244480b4 	addiu	a0,v0,-32588
a000dbec:	0c003292 	jal	a000ca48 <puts>
a000dbf0:	00000000 	nop
a000dbf4:	00001025 	move	v0,zero
a000dbf8:	03c0e825 	move	sp,s8
a000dbfc:	8fbf0034 	lw	ra,52(sp)
a000dc00:	8fbe0030 	lw	s8,48(sp)
a000dc04:	27bd0038 	addiu	sp,sp,56
a000dc08:	03e00008 	jr	ra
a000dc0c:	00000000 	nop
