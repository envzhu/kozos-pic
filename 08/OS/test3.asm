
kzload:     file format elf32-littlemips


Disassembly of section .text:

a000c400 <_startup>:
a000c400:	08003138 	j	a000c4e0 <main>
a000c404:	00000000 	nop

a000c408 <dispatch>:
a000c408:	0080e825 8fbf0064 8fbe0060 8fb9005c     %...d...`...\...
a000c418:	8fb80058 8faf0054 8fae0050 8fad004c     X...T...P...L...
a000c428:	8fac0048 8fab0044 8faa0040 8fa9003c     H...D...@...<...
a000c438:	8fa80038 8fa70034 8fa60030 8fa5002c     8...4...0...,...
a000c448:	8fa40028 8fa30024 8fa20020 41606000     (...$... ....``A
a000c458:	000000c0 8fba006c 03400013 8fba0068     ....l.....@.h...
a000c468:	03400011 8fba0074 409a7000 8fba0070     ..@.t....p.@p...
a000c478:	27bd0078 409a6000 42000018 00000000     x..'.`.@...B....

a000c488 <start_threads>:
a000c488:	27bdffe0 	addiu	sp,sp,-32
a000c48c:	afbf001c 	sw	ra,28(sp)
a000c490:	afbe0018 	sw	s8,24(sp)
a000c494:	03a0f025 	move	s8,sp
a000c498:	afc40020 	sw	a0,32(s8)
a000c49c:	afc50024 	sw	a1,36(s8)
a000c4a0:	afa00010 	sw	zero,16(sp)
a000c4a4:	00003825 	move	a3,zero
a000c4a8:	24060100 	li	a2,256
a000c4ac:	3c02a001 	lui	v0,0xa001
a000c4b0:	24458000 	addiu	a1,v0,-32768
a000c4b4:	3c02a001 	lui	v0,0xa001
a000c4b8:	2444d9f0 	addiu	a0,v0,-9744
a000c4bc:	0c00364f 	jal	a000d93c <kz_run>
a000c4c0:	00000000 	nop
a000c4c4:	00001025 	move	v0,zero
a000c4c8:	03c0e825 	move	sp,s8
a000c4cc:	8fbf001c 	lw	ra,28(sp)
a000c4d0:	8fbe0018 	lw	s8,24(sp)
a000c4d4:	27bd0020 	addiu	sp,sp,32
a000c4d8:	03e00008 	jr	ra
a000c4dc:	00000000 	nop

a000c4e0 <main>:
a000c4e0:	27bdffe0 	addiu	sp,sp,-32
a000c4e4:	afbf001c 	sw	ra,28(sp)
a000c4e8:	afbe0018 	sw	s8,24(sp)
a000c4ec:	03a0f025 	move	s8,sp
a000c4f0:	3c02a001 	lui	v0,0xa001
a000c4f4:	24448008 	addiu	a0,v0,-32760
a000c4f8:	0c00328a 	jal	a000ca28 <puts>
a000c4fc:	00000000 	nop
a000c500:	afa00010 	sw	zero,16(sp)
a000c504:	00003825 	move	a3,zero
a000c508:	24060100 	li	a2,256
a000c50c:	3c02a001 	lui	v0,0xa001
a000c510:	24458020 	addiu	a1,v0,-32736
a000c514:	3c02a001 	lui	v0,0xa001
a000c518:	2444c488 	addiu	a0,v0,-15224
a000c51c:	0c0035e9 	jal	a000d7a4 <kz_start>
a000c520:	00000000 	nop
a000c524:	00001025 	move	v0,zero
a000c528:	03c0e825 	move	sp,s8
a000c52c:	8fbf001c 	lw	ra,28(sp)
a000c530:	8fbe0018 	lw	s8,24(sp)
a000c534:	27bd0020 	addiu	sp,sp,32
a000c538:	03e00008 	jr	ra
a000c53c:	00000000 	nop

a000c540 <memset>:
a000c540:	27bdfff0 	addiu	sp,sp,-16
a000c544:	afbe000c 	sw	s8,12(sp)
a000c548:	03a0f025 	move	s8,sp
a000c54c:	afc40010 	sw	a0,16(s8)
a000c550:	afc50014 	sw	a1,20(s8)
a000c554:	afc60018 	sw	a2,24(s8)
a000c558:	8fc20010 	lw	v0,16(s8)
a000c55c:	afc20000 	sw	v0,0(s8)
a000c560:	1000000a 	b	a000c58c <memset+0x4c>
a000c564:	00000000 	nop
a000c568:	8fc20000 	lw	v0,0(s8)
a000c56c:	24430001 	addiu	v1,v0,1
a000c570:	afc30000 	sw	v1,0(s8)
a000c574:	8fc30014 	lw	v1,20(s8)
a000c578:	7c031c20 	seb	v1,v1
a000c57c:	a0430000 	sb	v1,0(v0)
a000c580:	8fc20018 	lw	v0,24(s8)
a000c584:	2442ffff 	addiu	v0,v0,-1
a000c588:	afc20018 	sw	v0,24(s8)
a000c58c:	8fc20018 	lw	v0,24(s8)
a000c590:	1c40fff5 	bgtz	v0,a000c568 <memset+0x28>
a000c594:	00000000 	nop
a000c598:	8fc20010 	lw	v0,16(s8)
a000c59c:	03c0e825 	move	sp,s8
a000c5a0:	8fbe000c 	lw	s8,12(sp)
a000c5a4:	27bd0010 	addiu	sp,sp,16
a000c5a8:	03e00008 	jr	ra
a000c5ac:	00000000 	nop

a000c5b0 <memcpy>:
a000c5b0:	27bdfff0 	addiu	sp,sp,-16
a000c5b4:	afbe000c 	sw	s8,12(sp)
a000c5b8:	03a0f025 	move	s8,sp
a000c5bc:	afc40010 	sw	a0,16(s8)
a000c5c0:	afc50014 	sw	a1,20(s8)
a000c5c4:	afc60018 	sw	a2,24(s8)
a000c5c8:	8fc20010 	lw	v0,16(s8)
a000c5cc:	afc20000 	sw	v0,0(s8)
a000c5d0:	8fc20014 	lw	v0,20(s8)
a000c5d4:	afc20004 	sw	v0,4(s8)
a000c5d8:	1000000c 	b	a000c60c <memcpy+0x5c>
a000c5dc:	00000000 	nop
a000c5e0:	8fc30004 	lw	v1,4(s8)
a000c5e4:	24620001 	addiu	v0,v1,1
a000c5e8:	afc20004 	sw	v0,4(s8)
a000c5ec:	8fc20000 	lw	v0,0(s8)
a000c5f0:	24440001 	addiu	a0,v0,1
a000c5f4:	afc40000 	sw	a0,0(s8)
a000c5f8:	80630000 	lb	v1,0(v1)
a000c5fc:	a0430000 	sb	v1,0(v0)
a000c600:	8fc20018 	lw	v0,24(s8)
a000c604:	2442ffff 	addiu	v0,v0,-1
a000c608:	afc20018 	sw	v0,24(s8)
a000c60c:	8fc20018 	lw	v0,24(s8)
a000c610:	1c40fff3 	bgtz	v0,a000c5e0 <memcpy+0x30>
a000c614:	00000000 	nop
a000c618:	8fc20010 	lw	v0,16(s8)
a000c61c:	03c0e825 	move	sp,s8
a000c620:	8fbe000c 	lw	s8,12(sp)
a000c624:	27bd0010 	addiu	sp,sp,16
a000c628:	03e00008 	jr	ra
a000c62c:	00000000 	nop

a000c630 <memcmp>:
a000c630:	27bdfff0 	addiu	sp,sp,-16
a000c634:	afbe000c 	sw	s8,12(sp)
a000c638:	03a0f025 	move	s8,sp
a000c63c:	afc40010 	sw	a0,16(s8)
a000c640:	afc50014 	sw	a1,20(s8)
a000c644:	afc60018 	sw	a2,24(s8)
a000c648:	8fc20010 	lw	v0,16(s8)
a000c64c:	afc20000 	sw	v0,0(s8)
a000c650:	8fc20014 	lw	v0,20(s8)
a000c654:	afc20004 	sw	v0,4(s8)
a000c658:	1000001d 	b	a000c6d0 <memcmp+0xa0>
a000c65c:	00000000 	nop
a000c660:	8fc20000 	lw	v0,0(s8)
a000c664:	80430000 	lb	v1,0(v0)
a000c668:	8fc20004 	lw	v0,4(s8)
a000c66c:	80420000 	lb	v0,0(v0)
a000c670:	1062000e 	beq	v1,v0,a000c6ac <memcmp+0x7c>
a000c674:	00000000 	nop
a000c678:	8fc20000 	lw	v0,0(s8)
a000c67c:	80430000 	lb	v1,0(v0)
a000c680:	8fc20004 	lw	v0,4(s8)
a000c684:	80420000 	lb	v0,0(v0)
a000c688:	0043102a 	slt	v0,v0,v1
a000c68c:	10400004 	beqz	v0,a000c6a0 <memcmp+0x70>
a000c690:	00000000 	nop
a000c694:	24020001 	li	v0,1
a000c698:	10000011 	b	a000c6e0 <memcmp+0xb0>
a000c69c:	00000000 	nop
a000c6a0:	2402ffff 	li	v0,-1
a000c6a4:	1000000e 	b	a000c6e0 <memcmp+0xb0>
a000c6a8:	00000000 	nop
a000c6ac:	8fc20000 	lw	v0,0(s8)
a000c6b0:	24420001 	addiu	v0,v0,1
a000c6b4:	afc20000 	sw	v0,0(s8)
a000c6b8:	8fc20004 	lw	v0,4(s8)
a000c6bc:	24420001 	addiu	v0,v0,1
a000c6c0:	afc20004 	sw	v0,4(s8)
a000c6c4:	8fc20018 	lw	v0,24(s8)
a000c6c8:	2442ffff 	addiu	v0,v0,-1
a000c6cc:	afc20018 	sw	v0,24(s8)
a000c6d0:	8fc20018 	lw	v0,24(s8)
a000c6d4:	1c40ffe2 	bgtz	v0,a000c660 <memcmp+0x30>
a000c6d8:	00000000 	nop
a000c6dc:	00001025 	move	v0,zero
a000c6e0:	03c0e825 	move	sp,s8
a000c6e4:	8fbe000c 	lw	s8,12(sp)
a000c6e8:	27bd0010 	addiu	sp,sp,16
a000c6ec:	03e00008 	jr	ra
a000c6f0:	00000000 	nop

a000c6f4 <strlen>:
a000c6f4:	27bdfff0 	addiu	sp,sp,-16
a000c6f8:	afbe000c 	sw	s8,12(sp)
a000c6fc:	03a0f025 	move	s8,sp
a000c700:	afc40010 	sw	a0,16(s8)
a000c704:	afc00000 	sw	zero,0(s8)
a000c708:	10000007 	b	a000c728 <strlen+0x34>
a000c70c:	00000000 	nop
a000c710:	8fc20010 	lw	v0,16(s8)
a000c714:	24420001 	addiu	v0,v0,1
a000c718:	afc20010 	sw	v0,16(s8)
a000c71c:	8fc20000 	lw	v0,0(s8)
a000c720:	24420001 	addiu	v0,v0,1
a000c724:	afc20000 	sw	v0,0(s8)
a000c728:	8fc20010 	lw	v0,16(s8)
a000c72c:	80420000 	lb	v0,0(v0)
a000c730:	1440fff7 	bnez	v0,a000c710 <strlen+0x1c>
a000c734:	00000000 	nop
a000c738:	8fc20000 	lw	v0,0(s8)
a000c73c:	03c0e825 	move	sp,s8
a000c740:	8fbe000c 	lw	s8,12(sp)
a000c744:	27bd0010 	addiu	sp,sp,16
a000c748:	03e00008 	jr	ra
a000c74c:	00000000 	nop

a000c750 <strcpy>:
a000c750:	27bdfff0 	addiu	sp,sp,-16
a000c754:	afbe000c 	sw	s8,12(sp)
a000c758:	03a0f025 	move	s8,sp
a000c75c:	afc40010 	sw	a0,16(s8)
a000c760:	afc50014 	sw	a1,20(s8)
a000c764:	8fc20010 	lw	v0,16(s8)
a000c768:	afc20000 	sw	v0,0(s8)
a000c76c:	8fc20014 	lw	v0,20(s8)
a000c770:	80430000 	lb	v1,0(v0)
a000c774:	8fc20010 	lw	v0,16(s8)
a000c778:	a0430000 	sb	v1,0(v0)
a000c77c:	8fc20014 	lw	v0,20(s8)
a000c780:	80420000 	lb	v0,0(v0)
a000c784:	10400009 	beqz	v0,a000c7ac <strcpy+0x5c>
a000c788:	00000000 	nop
a000c78c:	8fc20010 	lw	v0,16(s8)
a000c790:	24420001 	addiu	v0,v0,1
a000c794:	afc20010 	sw	v0,16(s8)
a000c798:	8fc20014 	lw	v0,20(s8)
a000c79c:	24420001 	addiu	v0,v0,1
a000c7a0:	afc20014 	sw	v0,20(s8)
a000c7a4:	1000fff1 	b	a000c76c <strcpy+0x1c>
a000c7a8:	00000000 	nop
a000c7ac:	00000000 	nop
a000c7b0:	8fc20000 	lw	v0,0(s8)
a000c7b4:	03c0e825 	move	sp,s8
a000c7b8:	8fbe000c 	lw	s8,12(sp)
a000c7bc:	27bd0010 	addiu	sp,sp,16
a000c7c0:	03e00008 	jr	ra
a000c7c4:	00000000 	nop

a000c7c8 <strcmp>:
a000c7c8:	27bdfff8 	addiu	sp,sp,-8
a000c7cc:	afbe0004 	sw	s8,4(sp)
a000c7d0:	03a0f025 	move	s8,sp
a000c7d4:	afc40008 	sw	a0,8(s8)
a000c7d8:	afc5000c 	sw	a1,12(s8)
a000c7dc:	1000001a 	b	a000c848 <strcmp+0x80>
a000c7e0:	00000000 	nop
a000c7e4:	8fc20008 	lw	v0,8(s8)
a000c7e8:	80430000 	lb	v1,0(v0)
a000c7ec:	8fc2000c 	lw	v0,12(s8)
a000c7f0:	80420000 	lb	v0,0(v0)
a000c7f4:	1062000e 	beq	v1,v0,a000c830 <strcmp+0x68>
a000c7f8:	00000000 	nop
a000c7fc:	8fc20008 	lw	v0,8(s8)
a000c800:	80430000 	lb	v1,0(v0)
a000c804:	8fc2000c 	lw	v0,12(s8)
a000c808:	80420000 	lb	v0,0(v0)
a000c80c:	0043102a 	slt	v0,v0,v1
a000c810:	10400004 	beqz	v0,a000c824 <strcmp+0x5c>
a000c814:	00000000 	nop
a000c818:	24020001 	li	v0,1
a000c81c:	10000013 	b	a000c86c <strcmp+0xa4>
a000c820:	00000000 	nop
a000c824:	2402ffff 	li	v0,-1
a000c828:	10000010 	b	a000c86c <strcmp+0xa4>
a000c82c:	00000000 	nop
a000c830:	8fc20008 	lw	v0,8(s8)
a000c834:	24420001 	addiu	v0,v0,1
a000c838:	afc20008 	sw	v0,8(s8)
a000c83c:	8fc2000c 	lw	v0,12(s8)
a000c840:	24420001 	addiu	v0,v0,1
a000c844:	afc2000c 	sw	v0,12(s8)
a000c848:	8fc20008 	lw	v0,8(s8)
a000c84c:	80420000 	lb	v0,0(v0)
a000c850:	1440ffe4 	bnez	v0,a000c7e4 <strcmp+0x1c>
a000c854:	00000000 	nop
a000c858:	8fc2000c 	lw	v0,12(s8)
a000c85c:	80420000 	lb	v0,0(v0)
a000c860:	1440ffe0 	bnez	v0,a000c7e4 <strcmp+0x1c>
a000c864:	00000000 	nop
a000c868:	00001025 	move	v0,zero
a000c86c:	03c0e825 	move	sp,s8
a000c870:	8fbe0004 	lw	s8,4(sp)
a000c874:	27bd0008 	addiu	sp,sp,8
a000c878:	03e00008 	jr	ra
a000c87c:	00000000 	nop

a000c880 <strncmp>:
a000c880:	27bdfff8 	addiu	sp,sp,-8
a000c884:	afbe0004 	sw	s8,4(sp)
a000c888:	03a0f025 	move	s8,sp
a000c88c:	afc40008 	sw	a0,8(s8)
a000c890:	afc5000c 	sw	a1,12(s8)
a000c894:	afc60010 	sw	a2,16(s8)
a000c898:	1000001d 	b	a000c910 <strncmp+0x90>
a000c89c:	00000000 	nop
a000c8a0:	8fc20008 	lw	v0,8(s8)
a000c8a4:	80430000 	lb	v1,0(v0)
a000c8a8:	8fc2000c 	lw	v0,12(s8)
a000c8ac:	80420000 	lb	v0,0(v0)
a000c8b0:	1062000e 	beq	v1,v0,a000c8ec <strncmp+0x6c>
a000c8b4:	00000000 	nop
a000c8b8:	8fc20008 	lw	v0,8(s8)
a000c8bc:	80430000 	lb	v1,0(v0)
a000c8c0:	8fc2000c 	lw	v0,12(s8)
a000c8c4:	80420000 	lb	v0,0(v0)
a000c8c8:	0043102a 	slt	v0,v0,v1
a000c8cc:	10400004 	beqz	v0,a000c8e0 <strncmp+0x60>
a000c8d0:	00000000 	nop
a000c8d4:	24020001 	li	v0,1
a000c8d8:	10000019 	b	a000c940 <strncmp+0xc0>
a000c8dc:	00000000 	nop
a000c8e0:	2402ffff 	li	v0,-1
a000c8e4:	10000016 	b	a000c940 <strncmp+0xc0>
a000c8e8:	00000000 	nop
a000c8ec:	8fc20008 	lw	v0,8(s8)
a000c8f0:	24420001 	addiu	v0,v0,1
a000c8f4:	afc20008 	sw	v0,8(s8)
a000c8f8:	8fc2000c 	lw	v0,12(s8)
a000c8fc:	24420001 	addiu	v0,v0,1
a000c900:	afc2000c 	sw	v0,12(s8)
a000c904:	8fc20010 	lw	v0,16(s8)
a000c908:	2442ffff 	addiu	v0,v0,-1
a000c90c:	afc20010 	sw	v0,16(s8)
a000c910:	8fc20008 	lw	v0,8(s8)
a000c914:	80420000 	lb	v0,0(v0)
a000c918:	14400005 	bnez	v0,a000c930 <strncmp+0xb0>
a000c91c:	00000000 	nop
a000c920:	8fc2000c 	lw	v0,12(s8)
a000c924:	80420000 	lb	v0,0(v0)
a000c928:	10400004 	beqz	v0,a000c93c <strncmp+0xbc>
a000c92c:	00000000 	nop
a000c930:	8fc20010 	lw	v0,16(s8)
a000c934:	1c40ffda 	bgtz	v0,a000c8a0 <strncmp+0x20>
a000c938:	00000000 	nop
a000c93c:	00001025 	move	v0,zero
a000c940:	03c0e825 	move	sp,s8
a000c944:	8fbe0004 	lw	s8,4(sp)
a000c948:	27bd0008 	addiu	sp,sp,8
a000c94c:	03e00008 	jr	ra
a000c950:	00000000 	nop

a000c954 <putc>:
a000c954:	27bdffe8 	addiu	sp,sp,-24
a000c958:	afbf0014 	sw	ra,20(sp)
a000c95c:	afbe0010 	sw	s8,16(sp)
a000c960:	03a0f025 	move	s8,sp
a000c964:	00801025 	move	v0,a0
a000c968:	a3c20018 	sb	v0,24(s8)
a000c96c:	93c30018 	lbu	v1,24(s8)
a000c970:	2402000a 	li	v0,10
a000c974:	14620005 	bne	v1,v0,a000c98c <putc+0x38>
a000c978:	00000000 	nop
a000c97c:	2405000d 	li	a1,13
a000c980:	24040001 	li	a0,1
a000c984:	0c003312 	jal	a000cc48 <serial_send_byte>
a000c988:	00000000 	nop
a000c98c:	93c20018 	lbu	v0,24(s8)
a000c990:	00402825 	move	a1,v0
a000c994:	24040001 	li	a0,1
a000c998:	0c003312 	jal	a000cc48 <serial_send_byte>
a000c99c:	00000000 	nop
a000c9a0:	03c0e825 	move	sp,s8
a000c9a4:	8fbf0014 	lw	ra,20(sp)
a000c9a8:	8fbe0010 	lw	s8,16(sp)
a000c9ac:	27bd0018 	addiu	sp,sp,24
a000c9b0:	03e00008 	jr	ra
a000c9b4:	00000000 	nop

a000c9b8 <getc>:
a000c9b8:	27bdffe0 	addiu	sp,sp,-32
a000c9bc:	afbf001c 	sw	ra,28(sp)
a000c9c0:	afbe0018 	sw	s8,24(sp)
a000c9c4:	03a0f025 	move	s8,sp
a000c9c8:	24040001 	li	a0,1
a000c9cc:	0c00333d 	jal	a000ccf4 <serial_recv_byte>
a000c9d0:	00000000 	nop
a000c9d4:	a3c20010 	sb	v0,16(s8)
a000c9d8:	93c30010 	lbu	v1,16(s8)
a000c9dc:	2402000d 	li	v0,13
a000c9e0:	10620004 	beq	v1,v0,a000c9f4 <getc+0x3c>
a000c9e4:	00000000 	nop
a000c9e8:	93c20010 	lbu	v0,16(s8)
a000c9ec:	10000002 	b	a000c9f8 <getc+0x40>
a000c9f0:	00000000 	nop
a000c9f4:	2402000a 	li	v0,10
a000c9f8:	a3c20010 	sb	v0,16(s8)
a000c9fc:	93c20010 	lbu	v0,16(s8)
a000ca00:	00402025 	move	a0,v0
a000ca04:	0c003255 	jal	a000c954 <putc>
a000ca08:	00000000 	nop
a000ca0c:	93c20010 	lbu	v0,16(s8)
a000ca10:	03c0e825 	move	sp,s8
a000ca14:	8fbf001c 	lw	ra,28(sp)
a000ca18:	8fbe0018 	lw	s8,24(sp)
a000ca1c:	27bd0020 	addiu	sp,sp,32
a000ca20:	03e00008 	jr	ra
a000ca24:	00000000 	nop

a000ca28 <puts>:
a000ca28:	27bdffe8 	addiu	sp,sp,-24
a000ca2c:	afbf0014 	sw	ra,20(sp)
a000ca30:	afbe0010 	sw	s8,16(sp)
a000ca34:	03a0f025 	move	s8,sp
a000ca38:	afc40018 	sw	a0,24(s8)
a000ca3c:	10000008 	b	a000ca60 <puts+0x38>
a000ca40:	00000000 	nop
a000ca44:	8fc20018 	lw	v0,24(s8)
a000ca48:	24430001 	addiu	v1,v0,1
a000ca4c:	afc30018 	sw	v1,24(s8)
a000ca50:	90420000 	lbu	v0,0(v0)
a000ca54:	00402025 	move	a0,v0
a000ca58:	0c003255 	jal	a000c954 <putc>
a000ca5c:	00000000 	nop
a000ca60:	8fc20018 	lw	v0,24(s8)
a000ca64:	90420000 	lbu	v0,0(v0)
a000ca68:	1440fff6 	bnez	v0,a000ca44 <puts+0x1c>
a000ca6c:	00000000 	nop
a000ca70:	00001025 	move	v0,zero
a000ca74:	03c0e825 	move	sp,s8
a000ca78:	8fbf0014 	lw	ra,20(sp)
a000ca7c:	8fbe0010 	lw	s8,16(sp)
a000ca80:	27bd0018 	addiu	sp,sp,24
a000ca84:	03e00008 	jr	ra
a000ca88:	00000000 	nop

a000ca8c <gets>:
a000ca8c:	27bdffe0 	addiu	sp,sp,-32
a000ca90:	afbf001c 	sw	ra,28(sp)
a000ca94:	afbe0018 	sw	s8,24(sp)
a000ca98:	03a0f025 	move	s8,sp
a000ca9c:	afc40020 	sw	a0,32(s8)
a000caa0:	afc00010 	sw	zero,16(s8)
a000caa4:	0c00326e 	jal	a000c9b8 <getc>
a000caa8:	00000000 	nop
a000caac:	a3c20014 	sb	v0,20(s8)
a000cab0:	93c30014 	lbu	v1,20(s8)
a000cab4:	2402000a 	li	v0,10
a000cab8:	14620002 	bne	v1,v0,a000cac4 <gets+0x38>
a000cabc:	00000000 	nop
a000cac0:	a3c00014 	sb	zero,20(s8)
a000cac4:	8fc20010 	lw	v0,16(s8)
a000cac8:	24430001 	addiu	v1,v0,1
a000cacc:	afc30010 	sw	v1,16(s8)
a000cad0:	00401825 	move	v1,v0
a000cad4:	8fc20020 	lw	v0,32(s8)
a000cad8:	00431021 	addu	v0,v0,v1
a000cadc:	93c30014 	lbu	v1,20(s8)
a000cae0:	a0430000 	sb	v1,0(v0)
a000cae4:	93c20014 	lbu	v0,20(s8)
a000cae8:	1440ffee 	bnez	v0,a000caa4 <gets+0x18>
a000caec:	00000000 	nop
a000caf0:	8fc20010 	lw	v0,16(s8)
a000caf4:	2442ffff 	addiu	v0,v0,-1
a000caf8:	03c0e825 	move	sp,s8
a000cafc:	8fbf001c 	lw	ra,28(sp)
a000cb00:	8fbe0018 	lw	s8,24(sp)
a000cb04:	27bd0020 	addiu	sp,sp,32
a000cb08:	03e00008 	jr	ra
a000cb0c:	00000000 	nop

a000cb10 <putxval>:
a000cb10:	27bdffd8 	addiu	sp,sp,-40
a000cb14:	afbf0024 	sw	ra,36(sp)
a000cb18:	afbe0020 	sw	s8,32(sp)
a000cb1c:	03a0f025 	move	s8,sp
a000cb20:	afc40028 	sw	a0,40(s8)
a000cb24:	afc5002c 	sw	a1,44(s8)
a000cb28:	27c20014 	addiu	v0,s8,20
a000cb2c:	24420008 	addiu	v0,v0,8
a000cb30:	afc20010 	sw	v0,16(s8)
a000cb34:	8fc20010 	lw	v0,16(s8)
a000cb38:	2443ffff 	addiu	v1,v0,-1
a000cb3c:	afc30010 	sw	v1,16(s8)
a000cb40:	a0400000 	sb	zero,0(v0)
a000cb44:	8fc20028 	lw	v0,40(s8)
a000cb48:	1440001c 	bnez	v0,a000cbbc <putxval+0xac>
a000cb4c:	00000000 	nop
a000cb50:	8fc2002c 	lw	v0,44(s8)
a000cb54:	14400019 	bnez	v0,a000cbbc <putxval+0xac>
a000cb58:	00000000 	nop
a000cb5c:	8fc2002c 	lw	v0,44(s8)
a000cb60:	24420001 	addiu	v0,v0,1
a000cb64:	afc2002c 	sw	v0,44(s8)
a000cb68:	10000014 	b	a000cbbc <putxval+0xac>
a000cb6c:	00000000 	nop
a000cb70:	8fc20028 	lw	v0,40(s8)
a000cb74:	3044000f 	andi	a0,v0,0xf
a000cb78:	8fc20010 	lw	v0,16(s8)
a000cb7c:	2443ffff 	addiu	v1,v0,-1
a000cb80:	afc30010 	sw	v1,16(s8)
a000cb84:	3c03a001 	lui	v1,0xa001
a000cb88:	24638028 	addiu	v1,v1,-32728
a000cb8c:	00831821 	addu	v1,a0,v1
a000cb90:	80630000 	lb	v1,0(v1)
a000cb94:	a0430000 	sb	v1,0(v0)
a000cb98:	8fc20028 	lw	v0,40(s8)
a000cb9c:	00021102 	srl	v0,v0,0x4
a000cba0:	afc20028 	sw	v0,40(s8)
a000cba4:	8fc2002c 	lw	v0,44(s8)
a000cba8:	10400004 	beqz	v0,a000cbbc <putxval+0xac>
a000cbac:	00000000 	nop
a000cbb0:	8fc2002c 	lw	v0,44(s8)
a000cbb4:	2442ffff 	addiu	v0,v0,-1
a000cbb8:	afc2002c 	sw	v0,44(s8)
a000cbbc:	8fc20028 	lw	v0,40(s8)
a000cbc0:	1440ffeb 	bnez	v0,a000cb70 <putxval+0x60>
a000cbc4:	00000000 	nop
a000cbc8:	8fc2002c 	lw	v0,44(s8)
a000cbcc:	1440ffe8 	bnez	v0,a000cb70 <putxval+0x60>
a000cbd0:	00000000 	nop
a000cbd4:	8fc20010 	lw	v0,16(s8)
a000cbd8:	24420001 	addiu	v0,v0,1
a000cbdc:	00402025 	move	a0,v0
a000cbe0:	0c00328a 	jal	a000ca28 <puts>
a000cbe4:	00000000 	nop
a000cbe8:	00001025 	move	v0,zero
a000cbec:	03c0e825 	move	sp,s8
a000cbf0:	8fbf0024 	lw	ra,36(sp)
a000cbf4:	8fbe0020 	lw	s8,32(sp)
a000cbf8:	27bd0028 	addiu	sp,sp,40
a000cbfc:	03e00008 	jr	ra
a000cc00:	00000000 	nop

a000cc04 <serial_is_send_enable>:
a000cc04:	27bdfff0 	addiu	sp,sp,-16
a000cc08:	afbe000c 	sw	s8,12(sp)
a000cc0c:	03a0f025 	move	s8,sp
a000cc10:	afc40010 	sw	a0,16(s8)
a000cc14:	3c02bf80 	lui	v0,0xbf80
a000cc18:	34426210 	ori	v0,v0,0x6210
a000cc1c:	afc20000 	sw	v0,0(s8)
a000cc20:	8fc20000 	lw	v0,0(s8)
a000cc24:	8c420000 	lw	v0,0(v0)
a000cc28:	30420200 	andi	v0,v0,0x200
a000cc2c:	2c420001 	sltiu	v0,v0,1
a000cc30:	304200ff 	andi	v0,v0,0xff
a000cc34:	03c0e825 	move	sp,s8
a000cc38:	8fbe000c 	lw	s8,12(sp)
a000cc3c:	27bd0010 	addiu	sp,sp,16
a000cc40:	03e00008 	jr	ra
a000cc44:	00000000 	nop

a000cc48 <serial_send_byte>:
a000cc48:	27bdffe0 	addiu	sp,sp,-32
a000cc4c:	afbf001c 	sw	ra,28(sp)
a000cc50:	afbe0018 	sw	s8,24(sp)
a000cc54:	03a0f025 	move	s8,sp
a000cc58:	afc40020 	sw	a0,32(s8)
a000cc5c:	00a01025 	move	v0,a1
a000cc60:	a3c20024 	sb	v0,36(s8)
a000cc64:	3c02bf80 	lui	v0,0xbf80
a000cc68:	34426220 	ori	v0,v0,0x6220
a000cc6c:	afc20010 	sw	v0,16(s8)
a000cc70:	00000000 	nop
a000cc74:	8fc40020 	lw	a0,32(s8)
a000cc78:	0c003301 	jal	a000cc04 <serial_is_send_enable>
a000cc7c:	00000000 	nop
a000cc80:	1040fffc 	beqz	v0,a000cc74 <serial_send_byte+0x2c>
a000cc84:	00000000 	nop
a000cc88:	93c30024 	lbu	v1,36(s8)
a000cc8c:	8fc20010 	lw	v0,16(s8)
a000cc90:	ac430000 	sw	v1,0(v0)
a000cc94:	00001025 	move	v0,zero
a000cc98:	03c0e825 	move	sp,s8
a000cc9c:	8fbf001c 	lw	ra,28(sp)
a000cca0:	8fbe0018 	lw	s8,24(sp)
a000cca4:	27bd0020 	addiu	sp,sp,32
a000cca8:	03e00008 	jr	ra
a000ccac:	00000000 	nop

a000ccb0 <serial_is_recv_enable>:
a000ccb0:	27bdfff0 	addiu	sp,sp,-16
a000ccb4:	afbe000c 	sw	s8,12(sp)
a000ccb8:	03a0f025 	move	s8,sp
a000ccbc:	afc40010 	sw	a0,16(s8)
a000ccc0:	3c02bf80 	lui	v0,0xbf80
a000ccc4:	34426210 	ori	v0,v0,0x6210
a000ccc8:	afc20000 	sw	v0,0(s8)
a000cccc:	8fc20000 	lw	v0,0(s8)
a000ccd0:	8c420000 	lw	v0,0(v0)
a000ccd4:	30420002 	andi	v0,v0,0x2
a000ccd8:	2c420001 	sltiu	v0,v0,1
a000ccdc:	304200ff 	andi	v0,v0,0xff
a000cce0:	03c0e825 	move	sp,s8
a000cce4:	8fbe000c 	lw	s8,12(sp)
a000cce8:	27bd0010 	addiu	sp,sp,16
a000ccec:	03e00008 	jr	ra
a000ccf0:	00000000 	nop

a000ccf4 <serial_recv_byte>:
a000ccf4:	27bdfff0 	addiu	sp,sp,-16
a000ccf8:	afbe000c 	sw	s8,12(sp)
a000ccfc:	03a0f025 	move	s8,sp
a000cd00:	afc40010 	sw	a0,16(s8)
a000cd04:	3c02bf80 	lui	v0,0xbf80
a000cd08:	34426230 	ori	v0,v0,0x6230
a000cd0c:	afc20000 	sw	v0,0(s8)
a000cd10:	3c02bf80 	lui	v0,0xbf80
a000cd14:	34426210 	ori	v0,v0,0x6210
a000cd18:	afc20004 	sw	v0,4(s8)
a000cd1c:	00000000 	nop
a000cd20:	8fc20004 	lw	v0,4(s8)
a000cd24:	8c420000 	lw	v0,0(v0)
a000cd28:	30420001 	andi	v0,v0,0x1
a000cd2c:	1040fffc 	beqz	v0,a000cd20 <serial_recv_byte+0x2c>
a000cd30:	00000000 	nop
a000cd34:	8fc20000 	lw	v0,0(s8)
a000cd38:	8c420000 	lw	v0,0(v0)
a000cd3c:	304200ff 	andi	v0,v0,0xff
a000cd40:	03c0e825 	move	sp,s8
a000cd44:	8fbe000c 	lw	s8,12(sp)
a000cd48:	27bd0010 	addiu	sp,sp,16
a000cd4c:	03e00008 	jr	ra
a000cd50:	00000000 	nop

a000cd54 <serial_intr_is_recv_enable>:
a000cd54:	27bdfff0 	addiu	sp,sp,-16
a000cd58:	afbe000c 	sw	s8,12(sp)
a000cd5c:	03a0f025 	move	s8,sp
a000cd60:	afc40010 	sw	a0,16(s8)
a000cd64:	3c02bf88 	lui	v0,0xbf88
a000cd68:	34421070 	ori	v0,v0,0x1070
a000cd6c:	afc20000 	sw	v0,0(s8)
a000cd70:	8fc20000 	lw	v0,0(s8)
a000cd74:	8c420000 	lw	v0,0(v0)
a000cd78:	00021582 	srl	v0,v0,0x16
a000cd7c:	30420001 	andi	v0,v0,0x1
a000cd80:	03c0e825 	move	sp,s8
a000cd84:	8fbe000c 	lw	s8,12(sp)
a000cd88:	27bd0010 	addiu	sp,sp,16
a000cd8c:	03e00008 	jr	ra
a000cd90:	00000000 	nop

a000cd94 <serial_intr_recv_enable>:
a000cd94:	27bdfff0 	addiu	sp,sp,-16
a000cd98:	afbe000c 	sw	s8,12(sp)
a000cd9c:	03a0f025 	move	s8,sp
a000cda0:	afc40010 	sw	a0,16(s8)
a000cda4:	3c02bf88 	lui	v0,0xbf88
a000cda8:	34421078 	ori	v0,v0,0x1078
a000cdac:	afc20000 	sw	v0,0(s8)
a000cdb0:	8fc20000 	lw	v0,0(s8)
a000cdb4:	3c030040 	lui	v1,0x40
a000cdb8:	ac430000 	sw	v1,0(v0)
a000cdbc:	00000000 	nop
a000cdc0:	03c0e825 	move	sp,s8
a000cdc4:	8fbe000c 	lw	s8,12(sp)
a000cdc8:	27bd0010 	addiu	sp,sp,16
a000cdcc:	03e00008 	jr	ra
a000cdd0:	00000000 	nop

a000cdd4 <serial_intr_recv_disable>:
a000cdd4:	27bdfff0 	addiu	sp,sp,-16
a000cdd8:	afbe000c 	sw	s8,12(sp)
a000cddc:	03a0f025 	move	s8,sp
a000cde0:	afc40010 	sw	a0,16(s8)
a000cde4:	3c02bf88 	lui	v0,0xbf88
a000cde8:	34421074 	ori	v0,v0,0x1074
a000cdec:	afc20000 	sw	v0,0(s8)
a000cdf0:	8fc20000 	lw	v0,0(s8)
a000cdf4:	3c030040 	lui	v1,0x40
a000cdf8:	ac430000 	sw	v1,0(v0)
a000cdfc:	00000000 	nop
a000ce00:	03c0e825 	move	sp,s8
a000ce04:	8fbe000c 	lw	s8,12(sp)
a000ce08:	27bd0010 	addiu	sp,sp,16
a000ce0c:	03e00008 	jr	ra
a000ce10:	00000000 	nop

a000ce14 <softvec_init>:
a000ce14:	27bdffe0 	addiu	sp,sp,-32
a000ce18:	afbf001c 	sw	ra,28(sp)
a000ce1c:	afbe0018 	sw	s8,24(sp)
a000ce20:	03a0f025 	move	s8,sp
a000ce24:	afc00010 	sw	zero,16(s8)
a000ce28:	10000008 	b	a000ce4c <softvec_init+0x38>
a000ce2c:	00000000 	nop
a000ce30:	00002825 	move	a1,zero
a000ce34:	8fc40010 	lw	a0,16(s8)
a000ce38:	0c00339e 	jal	a000ce78 <softvec_setintr>
a000ce3c:	00000000 	nop
a000ce40:	8fc20010 	lw	v0,16(s8)
a000ce44:	24420001 	addiu	v0,v0,1
a000ce48:	afc20010 	sw	v0,16(s8)
a000ce4c:	8fc20010 	lw	v0,16(s8)
a000ce50:	28420003 	slti	v0,v0,3
a000ce54:	1440fff6 	bnez	v0,a000ce30 <softvec_init+0x1c>
a000ce58:	00000000 	nop
a000ce5c:	00001025 	move	v0,zero
a000ce60:	03c0e825 	move	sp,s8
a000ce64:	8fbf001c 	lw	ra,28(sp)
a000ce68:	8fbe0018 	lw	s8,24(sp)
a000ce6c:	27bd0020 	addiu	sp,sp,32
a000ce70:	03e00008 	jr	ra
a000ce74:	00000000 	nop

a000ce78 <softvec_setintr>:
a000ce78:	27bdfff8 	addiu	sp,sp,-8
a000ce7c:	afbe0004 	sw	s8,4(sp)
a000ce80:	03a0f025 	move	s8,sp
a000ce84:	afc40008 	sw	a0,8(s8)
a000ce88:	afc5000c 	sw	a1,12(s8)
a000ce8c:	8fc20008 	lw	v0,8(s8)
a000ce90:	00021880 	sll	v1,v0,0x2
a000ce94:	3c02a000 	lui	v0,0xa000
a000ce98:	34427d00 	ori	v0,v0,0x7d00
a000ce9c:	00621021 	addu	v0,v1,v0
a000cea0:	8fc3000c 	lw	v1,12(s8)
a000cea4:	ac430000 	sw	v1,0(v0)
a000cea8:	00001025 	move	v0,zero
a000ceac:	03c0e825 	move	sp,s8
a000ceb0:	8fbe0004 	lw	s8,4(sp)
a000ceb4:	27bd0008 	addiu	sp,sp,8
a000ceb8:	03e00008 	jr	ra
a000cebc:	00000000 	nop

a000cec0 <interrupt>:
a000cec0:	27bdffe0 	addiu	sp,sp,-32
a000cec4:	afbf001c 	sw	ra,28(sp)
a000cec8:	afbe0018 	sw	s8,24(sp)
a000cecc:	03a0f025 	move	s8,sp
a000ced0:	afc40020 	sw	a0,32(s8)
a000ced4:	afc50024 	sw	a1,36(s8)
a000ced8:	8fc20020 	lw	v0,32(s8)
a000cedc:	00021880 	sll	v1,v0,0x2
a000cee0:	3c02a000 	lui	v0,0xa000
a000cee4:	34427d00 	ori	v0,v0,0x7d00
a000cee8:	00621021 	addu	v0,v1,v0
a000ceec:	8c420000 	lw	v0,0(v0)
a000cef0:	afc20010 	sw	v0,16(s8)
a000cef4:	8fc20010 	lw	v0,16(s8)
a000cef8:	10400006 	beqz	v0,a000cf14 <interrupt+0x54>
a000cefc:	00000000 	nop
a000cf00:	8fc20010 	lw	v0,16(s8)
a000cf04:	8fc50024 	lw	a1,36(s8)
a000cf08:	8fc40020 	lw	a0,32(s8)
a000cf0c:	0040f809 	jalr	v0
a000cf10:	00000000 	nop
a000cf14:	00000000 	nop
a000cf18:	03c0e825 	move	sp,s8
a000cf1c:	8fbf001c 	lw	ra,28(sp)
a000cf20:	8fbe0018 	lw	s8,24(sp)
a000cf24:	27bd0020 	addiu	sp,sp,32
a000cf28:	03e00008 	jr	ra
a000cf2c:	00000000 	nop

a000cf30 <getcurrent>:
a000cf30:	27bdfff8 	addiu	sp,sp,-8
a000cf34:	afbe0004 	sw	s8,4(sp)
a000cf38:	03a0f025 	move	s8,sp
a000cf3c:	3c02a001 	lui	v0,0xa001
a000cf40:	8c4280fc 	lw	v0,-32516(v0)
a000cf44:	14400004 	bnez	v0,a000cf58 <getcurrent+0x28>
a000cf48:	00000000 	nop
a000cf4c:	2402ffff 	li	v0,-1
a000cf50:	10000011 	b	a000cf98 <getcurrent+0x68>
a000cf54:	00000000 	nop
a000cf58:	3c02a001 	lui	v0,0xa001
a000cf5c:	8c4280fc 	lw	v0,-32516(v0)
a000cf60:	8c430000 	lw	v1,0(v0)
a000cf64:	3c02a001 	lui	v0,0xa001
a000cf68:	ac4380f4 	sw	v1,-32524(v0)
a000cf6c:	3c02a001 	lui	v0,0xa001
a000cf70:	8c4280f4 	lw	v0,-32524(v0)
a000cf74:	14400004 	bnez	v0,a000cf88 <getcurrent+0x58>
a000cf78:	00000000 	nop
a000cf7c:	3c02a001 	lui	v0,0xa001
a000cf80:	244280f4 	addiu	v0,v0,-32524
a000cf84:	ac400004 	sw	zero,4(v0)
a000cf88:	3c02a001 	lui	v0,0xa001
a000cf8c:	8c4280fc 	lw	v0,-32516(v0)
a000cf90:	ac400000 	sw	zero,0(v0)
a000cf94:	00001025 	move	v0,zero
a000cf98:	03c0e825 	move	sp,s8
a000cf9c:	8fbe0004 	lw	s8,4(sp)
a000cfa0:	27bd0008 	addiu	sp,sp,8
a000cfa4:	03e00008 	jr	ra
a000cfa8:	00000000 	nop

a000cfac <putcurrent>:
a000cfac:	27bdfff8 	addiu	sp,sp,-8
a000cfb0:	afbe0004 	sw	s8,4(sp)
a000cfb4:	03a0f025 	move	s8,sp
a000cfb8:	3c02a001 	lui	v0,0xa001
a000cfbc:	8c4280fc 	lw	v0,-32516(v0)
a000cfc0:	14400004 	bnez	v0,a000cfd4 <putcurrent+0x28>
a000cfc4:	00000000 	nop
a000cfc8:	2402ffff 	li	v0,-1
a000cfcc:	10000018 	b	a000d030 <putcurrent+0x84>
a000cfd0:	00000000 	nop
a000cfd4:	3c02a001 	lui	v0,0xa001
a000cfd8:	244280f4 	addiu	v0,v0,-32524
a000cfdc:	8c420004 	lw	v0,4(v0)
a000cfe0:	10400009 	beqz	v0,a000d008 <putcurrent+0x5c>
a000cfe4:	00000000 	nop
a000cfe8:	3c02a001 	lui	v0,0xa001
a000cfec:	244280f4 	addiu	v0,v0,-32524
a000cff0:	8c420004 	lw	v0,4(v0)
a000cff4:	3c03a001 	lui	v1,0xa001
a000cff8:	8c6380fc 	lw	v1,-32516(v1)
a000cffc:	ac430000 	sw	v1,0(v0)
a000d000:	10000005 	b	a000d018 <putcurrent+0x6c>
a000d004:	00000000 	nop
a000d008:	3c02a001 	lui	v0,0xa001
a000d00c:	8c4380fc 	lw	v1,-32516(v0)
a000d010:	3c02a001 	lui	v0,0xa001
a000d014:	ac4380f4 	sw	v1,-32524(v0)
a000d018:	3c02a001 	lui	v0,0xa001
a000d01c:	8c4380fc 	lw	v1,-32516(v0)
a000d020:	3c02a001 	lui	v0,0xa001
a000d024:	244280f4 	addiu	v0,v0,-32524
a000d028:	ac430004 	sw	v1,4(v0)
a000d02c:	00001025 	move	v0,zero
a000d030:	03c0e825 	move	sp,s8
a000d034:	8fbe0004 	lw	s8,4(sp)
a000d038:	27bd0008 	addiu	sp,sp,8
a000d03c:	03e00008 	jr	ra
a000d040:	00000000 	nop

a000d044 <thread_end>:
a000d044:	27bdffe8 	addiu	sp,sp,-24
a000d048:	afbf0014 	sw	ra,20(sp)
a000d04c:	afbe0010 	sw	s8,16(sp)
a000d050:	03a0f025 	move	s8,sp
a000d054:	0c00366d 	jal	a000d9b4 <kz_exit>
a000d058:	00000000 	nop
a000d05c:	00000000 	nop
a000d060:	03c0e825 	move	sp,s8
a000d064:	8fbf0014 	lw	ra,20(sp)
a000d068:	8fbe0010 	lw	s8,16(sp)
a000d06c:	27bd0018 	addiu	sp,sp,24
a000d070:	03e00008 	jr	ra
a000d074:	00000000 	nop

a000d078 <thread_init>:
a000d078:	27bdffe8 	addiu	sp,sp,-24
a000d07c:	afbf0014 	sw	ra,20(sp)
a000d080:	afbe0010 	sw	s8,16(sp)
a000d084:	03a0f025 	move	s8,sp
a000d088:	afc40018 	sw	a0,24(s8)
a000d08c:	8fc20018 	lw	v0,24(s8)
a000d090:	8c420018 	lw	v0,24(v0)
a000d094:	8fc30018 	lw	v1,24(s8)
a000d098:	8c64001c 	lw	a0,28(v1)
a000d09c:	8fc30018 	lw	v1,24(s8)
a000d0a0:	8c630020 	lw	v1,32(v1)
a000d0a4:	00602825 	move	a1,v1
a000d0a8:	0040f809 	jalr	v0
a000d0ac:	00000000 	nop
a000d0b0:	0c003411 	jal	a000d044 <thread_end>
a000d0b4:	00000000 	nop
a000d0b8:	00000000 	nop
a000d0bc:	03c0e825 	move	sp,s8
a000d0c0:	8fbf0014 	lw	ra,20(sp)
a000d0c4:	8fbe0010 	lw	s8,16(sp)
a000d0c8:	27bd0018 	addiu	sp,sp,24
a000d0cc:	03e00008 	jr	ra
a000d0d0:	00000000 	nop

a000d0d4 <thread_run>:
a000d0d4:	27bdffd8 	addiu	sp,sp,-40
a000d0d8:	afbf0024 	sw	ra,36(sp)
a000d0dc:	afbe0020 	sw	s8,32(sp)
a000d0e0:	03a0f025 	move	s8,sp
a000d0e4:	afc40028 	sw	a0,40(s8)
a000d0e8:	afc5002c 	sw	a1,44(s8)
a000d0ec:	afc60030 	sw	a2,48(s8)
a000d0f0:	afc70034 	sw	a3,52(s8)
a000d0f4:	afc00010 	sw	zero,16(s8)
a000d0f8:	10000011 	b	a000d140 <thread_run+0x6c>
a000d0fc:	00000000 	nop
a000d100:	8fc30010 	lw	v1,16(s8)
a000d104:	00601025 	move	v0,v1
a000d108:	00021040 	sll	v0,v0,0x1
a000d10c:	00431021 	addu	v0,v0,v1
a000d110:	00021100 	sll	v0,v0,0x4
a000d114:	3c03a001 	lui	v1,0xa001
a000d118:	24638100 	addiu	v1,v1,-32512
a000d11c:	00431021 	addu	v0,v0,v1
a000d120:	afc20014 	sw	v0,20(s8)
a000d124:	8fc20014 	lw	v0,20(s8)
a000d128:	8c420018 	lw	v0,24(v0)
a000d12c:	1040000a 	beqz	v0,a000d158 <thread_run+0x84>
a000d130:	00000000 	nop
a000d134:	8fc20010 	lw	v0,16(s8)
a000d138:	24420001 	addiu	v0,v0,1
a000d13c:	afc20010 	sw	v0,16(s8)
a000d140:	8fc20010 	lw	v0,16(s8)
a000d144:	28420006 	slti	v0,v0,6
a000d148:	1440ffed 	bnez	v0,a000d100 <thread_run+0x2c>
a000d14c:	00000000 	nop
a000d150:	10000002 	b	a000d15c <thread_run+0x88>
a000d154:	00000000 	nop
a000d158:	00000000 	nop
a000d15c:	8fc30010 	lw	v1,16(s8)
a000d160:	24020006 	li	v0,6
a000d164:	14620004 	bne	v1,v0,a000d178 <thread_run+0xa4>
a000d168:	00000000 	nop
a000d16c:	2402ffff 	li	v0,-1
a000d170:	100000a4 	b	a000d404 <thread_run+0x330>
a000d174:	00000000 	nop
a000d178:	24060030 	li	a2,48
a000d17c:	00002825 	move	a1,zero
a000d180:	8fc40014 	lw	a0,20(s8)
a000d184:	0c003150 	jal	a000c540 <memset>
a000d188:	00000000 	nop
a000d18c:	8fc20014 	lw	v0,20(s8)
a000d190:	24420004 	addiu	v0,v0,4
a000d194:	8fc5002c 	lw	a1,44(s8)
a000d198:	00402025 	move	a0,v0
a000d19c:	0c0031d4 	jal	a000c750 <strcpy>
a000d1a0:	00000000 	nop
a000d1a4:	8fc20014 	lw	v0,20(s8)
a000d1a8:	ac400000 	sw	zero,0(v0)
a000d1ac:	8fc20014 	lw	v0,20(s8)
a000d1b0:	8fc30028 	lw	v1,40(s8)
a000d1b4:	ac430018 	sw	v1,24(v0)
a000d1b8:	8fc20014 	lw	v0,20(s8)
a000d1bc:	8fc30034 	lw	v1,52(s8)
a000d1c0:	ac43001c 	sw	v1,28(v0)
a000d1c4:	8fc20014 	lw	v0,20(s8)
a000d1c8:	8fc30038 	lw	v1,56(s8)
a000d1cc:	ac430020 	sw	v1,32(v0)
a000d1d0:	3c02a001 	lui	v0,0xa001
a000d1d4:	8c4280f0 	lw	v0,-32528(v0)
a000d1d8:	8fc60030 	lw	a2,48(s8)
a000d1dc:	00002825 	move	a1,zero
a000d1e0:	00402025 	move	a0,v0
a000d1e4:	0c003150 	jal	a000c540 <memset>
a000d1e8:	00000000 	nop
a000d1ec:	3c02a001 	lui	v0,0xa001
a000d1f0:	8c4380f0 	lw	v1,-32528(v0)
a000d1f4:	8fc20030 	lw	v0,48(s8)
a000d1f8:	00621821 	addu	v1,v1,v0
a000d1fc:	3c02a001 	lui	v0,0xa001
a000d200:	ac4380f0 	sw	v1,-32528(v0)
a000d204:	3c02a001 	lui	v0,0xa001
a000d208:	8c4380f0 	lw	v1,-32528(v0)
a000d20c:	8fc20014 	lw	v0,20(s8)
a000d210:	ac430014 	sw	v1,20(v0)
a000d214:	8fc20014 	lw	v0,20(s8)
a000d218:	8c420014 	lw	v0,20(v0)
a000d21c:	afc20018 	sw	v0,24(s8)
a000d220:	8fc20018 	lw	v0,24(s8)
a000d224:	2442fffc 	addiu	v0,v0,-4
a000d228:	afc20018 	sw	v0,24(s8)
a000d22c:	3c02a001 	lui	v0,0xa001
a000d230:	2443d044 	addiu	v1,v0,-12220
a000d234:	8fc20018 	lw	v0,24(s8)
a000d238:	ac430000 	sw	v1,0(v0)
a000d23c:	8fc20018 	lw	v0,24(s8)
a000d240:	2442fffc 	addiu	v0,v0,-4
a000d244:	afc20018 	sw	v0,24(s8)
a000d248:	3c02a001 	lui	v0,0xa001
a000d24c:	2443d078 	addiu	v1,v0,-12168
a000d250:	8fc20018 	lw	v0,24(s8)
a000d254:	ac430000 	sw	v1,0(v0)
a000d258:	8fc20018 	lw	v0,24(s8)
a000d25c:	2442fffc 	addiu	v0,v0,-4
a000d260:	afc20018 	sw	v0,24(s8)
a000d264:	8fc20018 	lw	v0,24(s8)
a000d268:	ac400000 	sw	zero,0(v0)
a000d26c:	8fc20018 	lw	v0,24(s8)
a000d270:	2442fffc 	addiu	v0,v0,-4
a000d274:	afc20018 	sw	v0,24(s8)
a000d278:	8fc20018 	lw	v0,24(s8)
a000d27c:	ac400000 	sw	zero,0(v0)
a000d280:	8fc20018 	lw	v0,24(s8)
a000d284:	2442fffc 	addiu	v0,v0,-4
a000d288:	afc20018 	sw	v0,24(s8)
a000d28c:	8fc20018 	lw	v0,24(s8)
a000d290:	ac400000 	sw	zero,0(v0)
a000d294:	8fc20018 	lw	v0,24(s8)
a000d298:	2442fffc 	addiu	v0,v0,-4
a000d29c:	afc20018 	sw	v0,24(s8)
a000d2a0:	8fc20018 	lw	v0,24(s8)
a000d2a4:	ac400000 	sw	zero,0(v0)
a000d2a8:	8fc20018 	lw	v0,24(s8)
a000d2ac:	2442fffc 	addiu	v0,v0,-4
a000d2b0:	afc20018 	sw	v0,24(s8)
a000d2b4:	8fc20018 	lw	v0,24(s8)
a000d2b8:	ac400000 	sw	zero,0(v0)
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
a000d390:	8fc30014 	lw	v1,20(s8)
a000d394:	8fc20018 	lw	v0,24(s8)
a000d398:	ac430000 	sw	v1,0(v0)
a000d39c:	8fc20018 	lw	v0,24(s8)
a000d3a0:	2442fffc 	addiu	v0,v0,-4
a000d3a4:	afc20018 	sw	v0,24(s8)
a000d3a8:	8fc20018 	lw	v0,24(s8)
a000d3ac:	ac400000 	sw	zero,0(v0)
a000d3b0:	8fc20018 	lw	v0,24(s8)
a000d3b4:	2442fffc 	addiu	v0,v0,-4
a000d3b8:	afc20018 	sw	v0,24(s8)
a000d3bc:	8fc20018 	lw	v0,24(s8)
a000d3c0:	ac400000 	sw	zero,0(v0)
a000d3c4:	3c02a001 	lui	v0,0xa001
a000d3c8:	2444803c 	addiu	a0,v0,-32708
a000d3cc:	0c00328a 	jal	a000ca28 <puts>
a000d3d0:	00000000 	nop
a000d3d4:	8fc30018 	lw	v1,24(s8)
a000d3d8:	8fc20014 	lw	v0,20(s8)
a000d3dc:	ac43002c 	sw	v1,44(v0)
a000d3e0:	0c0033eb 	jal	a000cfac <putcurrent>
a000d3e4:	00000000 	nop
a000d3e8:	3c02a001 	lui	v0,0xa001
a000d3ec:	8fc30014 	lw	v1,20(s8)
a000d3f0:	ac4380fc 	sw	v1,-32516(v0)
a000d3f4:	0c0033eb 	jal	a000cfac <putcurrent>
a000d3f8:	00000000 	nop
a000d3fc:	3c02a001 	lui	v0,0xa001
a000d400:	8c4280fc 	lw	v0,-32516(v0)
a000d404:	03c0e825 	move	sp,s8
a000d408:	8fbf0024 	lw	ra,36(sp)
a000d40c:	8fbe0020 	lw	s8,32(sp)
a000d410:	27bd0028 	addiu	sp,sp,40
a000d414:	03e00008 	jr	ra
a000d418:	00000000 	nop

a000d41c <thread_exit>:
a000d41c:	27bdffe8 	addiu	sp,sp,-24
a000d420:	afbf0014 	sw	ra,20(sp)
a000d424:	afbe0010 	sw	s8,16(sp)
a000d428:	03a0f025 	move	s8,sp
a000d42c:	3c02a001 	lui	v0,0xa001
a000d430:	8c4280fc 	lw	v0,-32516(v0)
a000d434:	24420004 	addiu	v0,v0,4
a000d438:	00402025 	move	a0,v0
a000d43c:	0c00328a 	jal	a000ca28 <puts>
a000d440:	00000000 	nop
a000d444:	3c02a001 	lui	v0,0xa001
a000d448:	2444804c 	addiu	a0,v0,-32692
a000d44c:	0c00328a 	jal	a000ca28 <puts>
a000d450:	00000000 	nop
a000d454:	3c02a001 	lui	v0,0xa001
a000d458:	8c4280fc 	lw	v0,-32516(v0)
a000d45c:	24060030 	li	a2,48
a000d460:	00002825 	move	a1,zero
a000d464:	00402025 	move	a0,v0
a000d468:	0c003150 	jal	a000c540 <memset>
a000d46c:	00000000 	nop
a000d470:	00001025 	move	v0,zero
a000d474:	03c0e825 	move	sp,s8
a000d478:	8fbf0014 	lw	ra,20(sp)
a000d47c:	8fbe0010 	lw	s8,16(sp)
a000d480:	27bd0018 	addiu	sp,sp,24
a000d484:	03e00008 	jr	ra
a000d488:	00000000 	nop

a000d48c <setintr>:
a000d48c:	27bdffe8 	addiu	sp,sp,-24
a000d490:	afbf0014 	sw	ra,20(sp)
a000d494:	afbe0010 	sw	s8,16(sp)
a000d498:	03a0f025 	move	s8,sp
a000d49c:	afc40018 	sw	a0,24(s8)
a000d4a0:	afc5001c 	sw	a1,28(s8)
a000d4a4:	3c02a001 	lui	v0,0xa001
a000d4a8:	2445d700 	addiu	a1,v0,-10496
a000d4ac:	8fc40018 	lw	a0,24(s8)
a000d4b0:	0c00339e 	jal	a000ce78 <softvec_setintr>
a000d4b4:	00000000 	nop
a000d4b8:	3c02a001 	lui	v0,0xa001
a000d4bc:	8fc30018 	lw	v1,24(s8)
a000d4c0:	00031880 	sll	v1,v1,0x2
a000d4c4:	24428220 	addiu	v0,v0,-32224
a000d4c8:	00621021 	addu	v0,v1,v0
a000d4cc:	8fc3001c 	lw	v1,28(s8)
a000d4d0:	ac430000 	sw	v1,0(v0)
a000d4d4:	00001025 	move	v0,zero
a000d4d8:	03c0e825 	move	sp,s8
a000d4dc:	8fbf0014 	lw	ra,20(sp)
a000d4e0:	8fbe0010 	lw	s8,16(sp)
a000d4e4:	27bd0018 	addiu	sp,sp,24
a000d4e8:	03e00008 	jr	ra
a000d4ec:	00000000 	nop

a000d4f0 <call_functions>:
a000d4f0:	27bdffe0 	addiu	sp,sp,-32
a000d4f4:	afbf001c 	sw	ra,28(sp)
a000d4f8:	afbe0018 	sw	s8,24(sp)
a000d4fc:	03a0f025 	move	s8,sp
a000d500:	afc40020 	sw	a0,32(s8)
a000d504:	afc50024 	sw	a1,36(s8)
a000d508:	8fc20020 	lw	v0,32(s8)
a000d50c:	10400006 	beqz	v0,a000d528 <call_functions+0x38>
a000d510:	00000000 	nop
a000d514:	24030001 	li	v1,1
a000d518:	10430019 	beq	v0,v1,a000d580 <call_functions+0x90>
a000d51c:	00000000 	nop
a000d520:	1000001a 	b	a000d58c <call_functions+0x9c>
a000d524:	00000000 	nop
a000d528:	8fc20024 	lw	v0,36(s8)
a000d52c:	8c430000 	lw	v1,0(v0)
a000d530:	8fc20024 	lw	v0,36(s8)
a000d534:	8c440004 	lw	a0,4(v0)
a000d538:	8fc20024 	lw	v0,36(s8)
a000d53c:	8c450008 	lw	a1,8(v0)
a000d540:	8fc20024 	lw	v0,36(s8)
a000d544:	8c46000c 	lw	a2,12(v0)
a000d548:	8fc20024 	lw	v0,36(s8)
a000d54c:	8c420010 	lw	v0,16(v0)
a000d550:	afa20010 	sw	v0,16(sp)
a000d554:	00c03825 	move	a3,a2
a000d558:	00a03025 	move	a2,a1
a000d55c:	00802825 	move	a1,a0
a000d560:	00602025 	move	a0,v1
a000d564:	0c003435 	jal	a000d0d4 <thread_run>
a000d568:	00000000 	nop
a000d56c:	00401825 	move	v1,v0
a000d570:	8fc20024 	lw	v0,36(s8)
a000d574:	ac430014 	sw	v1,20(v0)
a000d578:	10000004 	b	a000d58c <call_functions+0x9c>
a000d57c:	00000000 	nop
a000d580:	0c003507 	jal	a000d41c <thread_exit>
a000d584:	00000000 	nop
	...
a000d590:	03c0e825 	move	sp,s8
a000d594:	8fbf001c 	lw	ra,28(sp)
a000d598:	8fbe0018 	lw	s8,24(sp)
a000d59c:	27bd0020 	addiu	sp,sp,32
a000d5a0:	03e00008 	jr	ra
a000d5a4:	00000000 	nop

a000d5a8 <syscall_proc>:
a000d5a8:	27bdffe8 	addiu	sp,sp,-24
a000d5ac:	afbf0014 	sw	ra,20(sp)
a000d5b0:	afbe0010 	sw	s8,16(sp)
a000d5b4:	03a0f025 	move	s8,sp
a000d5b8:	afc40018 	sw	a0,24(s8)
a000d5bc:	afc5001c 	sw	a1,28(s8)
a000d5c0:	0c0033cc 	jal	a000cf30 <getcurrent>
a000d5c4:	00000000 	nop
a000d5c8:	8fc5001c 	lw	a1,28(s8)
a000d5cc:	8fc40018 	lw	a0,24(s8)
a000d5d0:	0c00353c 	jal	a000d4f0 <call_functions>
a000d5d4:	00000000 	nop
a000d5d8:	00000000 	nop
a000d5dc:	03c0e825 	move	sp,s8
a000d5e0:	8fbf0014 	lw	ra,20(sp)
a000d5e4:	8fbe0010 	lw	s8,16(sp)
a000d5e8:	27bd0018 	addiu	sp,sp,24
a000d5ec:	03e00008 	jr	ra
a000d5f0:	00000000 	nop

a000d5f4 <schedule>:
a000d5f4:	27bdffe8 	addiu	sp,sp,-24
a000d5f8:	afbf0014 	sw	ra,20(sp)
a000d5fc:	afbe0010 	sw	s8,16(sp)
a000d600:	03a0f025 	move	s8,sp
a000d604:	3c02a001 	lui	v0,0xa001
a000d608:	8c4280f4 	lw	v0,-32524(v0)
a000d60c:	14400003 	bnez	v0,a000d61c <schedule+0x28>
a000d610:	00000000 	nop
a000d614:	0c003631 	jal	a000d8c4 <kz_sysdown>
a000d618:	00000000 	nop
a000d61c:	3c02a001 	lui	v0,0xa001
a000d620:	8c4380f4 	lw	v1,-32524(v0)
a000d624:	3c02a001 	lui	v0,0xa001
a000d628:	ac4380fc 	sw	v1,-32516(v0)
a000d62c:	00000000 	nop
a000d630:	03c0e825 	move	sp,s8
a000d634:	8fbf0014 	lw	ra,20(sp)
a000d638:	8fbe0010 	lw	s8,16(sp)
a000d63c:	27bd0018 	addiu	sp,sp,24
a000d640:	03e00008 	jr	ra
a000d644:	00000000 	nop

a000d648 <syscall_intr>:
a000d648:	27bdffe8 	addiu	sp,sp,-24
a000d64c:	afbf0014 	sw	ra,20(sp)
a000d650:	afbe0010 	sw	s8,16(sp)
a000d654:	03a0f025 	move	s8,sp
a000d658:	3c02a001 	lui	v0,0xa001
a000d65c:	8c4280fc 	lw	v0,-32516(v0)
a000d660:	8c430024 	lw	v1,36(v0)
a000d664:	3c02a001 	lui	v0,0xa001
a000d668:	8c4280fc 	lw	v0,-32516(v0)
a000d66c:	8c420028 	lw	v0,40(v0)
a000d670:	00402825 	move	a1,v0
a000d674:	00602025 	move	a0,v1
a000d678:	0c00356a 	jal	a000d5a8 <syscall_proc>
a000d67c:	00000000 	nop
a000d680:	00000000 	nop
a000d684:	03c0e825 	move	sp,s8
a000d688:	8fbf0014 	lw	ra,20(sp)
a000d68c:	8fbe0010 	lw	s8,16(sp)
a000d690:	27bd0018 	addiu	sp,sp,24
a000d694:	03e00008 	jr	ra
a000d698:	00000000 	nop

a000d69c <softerr_intr>:
a000d69c:	27bdffe8 	addiu	sp,sp,-24
a000d6a0:	afbf0014 	sw	ra,20(sp)
a000d6a4:	afbe0010 	sw	s8,16(sp)
a000d6a8:	03a0f025 	move	s8,sp
a000d6ac:	3c02a001 	lui	v0,0xa001
a000d6b0:	8c4280fc 	lw	v0,-32516(v0)
a000d6b4:	24420004 	addiu	v0,v0,4
a000d6b8:	00402025 	move	a0,v0
a000d6bc:	0c00328a 	jal	a000ca28 <puts>
a000d6c0:	00000000 	nop
a000d6c4:	3c02a001 	lui	v0,0xa001
a000d6c8:	24448054 	addiu	a0,v0,-32684
a000d6cc:	0c00328a 	jal	a000ca28 <puts>
a000d6d0:	00000000 	nop
a000d6d4:	0c0033cc 	jal	a000cf30 <getcurrent>
a000d6d8:	00000000 	nop
a000d6dc:	0c003507 	jal	a000d41c <thread_exit>
a000d6e0:	00000000 	nop
a000d6e4:	00000000 	nop
a000d6e8:	03c0e825 	move	sp,s8
a000d6ec:	8fbf0014 	lw	ra,20(sp)
a000d6f0:	8fbe0010 	lw	s8,16(sp)
a000d6f4:	27bd0018 	addiu	sp,sp,24
a000d6f8:	03e00008 	jr	ra
a000d6fc:	00000000 	nop

a000d700 <thread_intr>:
a000d700:	27bdffe8 	addiu	sp,sp,-24
a000d704:	afbf0014 	sw	ra,20(sp)
a000d708:	afbe0010 	sw	s8,16(sp)
a000d70c:	03a0f025 	move	s8,sp
a000d710:	afc40018 	sw	a0,24(s8)
a000d714:	afc5001c 	sw	a1,28(s8)
a000d718:	3c02a001 	lui	v0,0xa001
a000d71c:	8c4280fc 	lw	v0,-32516(v0)
a000d720:	8fc3001c 	lw	v1,28(s8)
a000d724:	ac43002c 	sw	v1,44(v0)
a000d728:	3c02a001 	lui	v0,0xa001
a000d72c:	8fc30018 	lw	v1,24(s8)
a000d730:	00031880 	sll	v1,v1,0x2
a000d734:	24428220 	addiu	v0,v0,-32224
a000d738:	00621021 	addu	v0,v1,v0
a000d73c:	8c420000 	lw	v0,0(v0)
a000d740:	10400009 	beqz	v0,a000d768 <thread_intr+0x68>
a000d744:	00000000 	nop
a000d748:	3c02a001 	lui	v0,0xa001
a000d74c:	8fc30018 	lw	v1,24(s8)
a000d750:	00031880 	sll	v1,v1,0x2
a000d754:	24428220 	addiu	v0,v0,-32224
a000d758:	00621021 	addu	v0,v1,v0
a000d75c:	8c420000 	lw	v0,0(v0)
a000d760:	0040f809 	jalr	v0
a000d764:	00000000 	nop
a000d768:	0c00357d 	jal	a000d5f4 <schedule>
a000d76c:	00000000 	nop
a000d770:	3c02a001 	lui	v0,0xa001
a000d774:	8c4280fc 	lw	v0,-32516(v0)
a000d778:	2442002c 	addiu	v0,v0,44
a000d77c:	00402025 	move	a0,v0
a000d780:	0c003102 	jal	a000c408 <dispatch>
a000d784:	00000000 	nop
a000d788:	00000000 	nop
a000d78c:	03c0e825 	move	sp,s8
a000d790:	8fbf0014 	lw	ra,20(sp)
a000d794:	8fbe0010 	lw	s8,16(sp)
a000d798:	27bd0018 	addiu	sp,sp,24
a000d79c:	03e00008 	jr	ra
a000d7a0:	00000000 	nop

a000d7a4 <kz_start>:
a000d7a4:	27bdffe0 	addiu	sp,sp,-32
a000d7a8:	afbf001c 	sw	ra,28(sp)
a000d7ac:	afbe0018 	sw	s8,24(sp)
a000d7b0:	03a0f025 	move	s8,sp
a000d7b4:	afc40020 	sw	a0,32(s8)
a000d7b8:	afc50024 	sw	a1,36(s8)
a000d7bc:	afc60028 	sw	a2,40(s8)
a000d7c0:	afc7002c 	sw	a3,44(s8)
a000d7c4:	3c02a001 	lui	v0,0xa001
a000d7c8:	ac4080fc 	sw	zero,-32516(v0)
a000d7cc:	3c02a001 	lui	v0,0xa001
a000d7d0:	244280f4 	addiu	v0,v0,-32524
a000d7d4:	ac400004 	sw	zero,4(v0)
a000d7d8:	3c02a001 	lui	v0,0xa001
a000d7dc:	244280f4 	addiu	v0,v0,-32524
a000d7e0:	8c430004 	lw	v1,4(v0)
a000d7e4:	3c02a001 	lui	v0,0xa001
a000d7e8:	ac4380f4 	sw	v1,-32524(v0)
a000d7ec:	24060120 	li	a2,288
a000d7f0:	00002825 	move	a1,zero
a000d7f4:	3c02a001 	lui	v0,0xa001
a000d7f8:	24448100 	addiu	a0,v0,-32512
a000d7fc:	0c003150 	jal	a000c540 <memset>
a000d800:	00000000 	nop
a000d804:	2406000c 	li	a2,12
a000d808:	00002825 	move	a1,zero
a000d80c:	3c02a001 	lui	v0,0xa001
a000d810:	24448220 	addiu	a0,v0,-32224
a000d814:	0c003150 	jal	a000c540 <memset>
a000d818:	00000000 	nop
a000d81c:	3c02a001 	lui	v0,0xa001
a000d820:	2445d648 	addiu	a1,v0,-10680
a000d824:	24040001 	li	a0,1
a000d828:	0c003523 	jal	a000d48c <setintr>
a000d82c:	00000000 	nop
a000d830:	3c02a001 	lui	v0,0xa001
a000d834:	2445d69c 	addiu	a1,v0,-10596
a000d838:	00002025 	move	a0,zero
a000d83c:	0c003523 	jal	a000d48c <setintr>
a000d840:	00000000 	nop
a000d844:	8fc20030 	lw	v0,48(s8)
a000d848:	afa20010 	sw	v0,16(sp)
a000d84c:	8fc7002c 	lw	a3,44(s8)
a000d850:	8fc60028 	lw	a2,40(s8)
a000d854:	8fc50024 	lw	a1,36(s8)
a000d858:	8fc40020 	lw	a0,32(s8)
a000d85c:	0c003435 	jal	a000d0d4 <thread_run>
a000d860:	00000000 	nop
a000d864:	00401825 	move	v1,v0
a000d868:	3c02a001 	lui	v0,0xa001
a000d86c:	ac4380fc 	sw	v1,-32516(v0)
a000d870:	3c02a001 	lui	v0,0xa001
a000d874:	2444805c 	addiu	a0,v0,-32676
a000d878:	0c00328a 	jal	a000ca28 <puts>
a000d87c:	00000000 	nop
a000d880:	3c02a001 	lui	v0,0xa001
a000d884:	8c4280fc 	lw	v0,-32516(v0)
a000d888:	2442002c 	addiu	v0,v0,44
a000d88c:	00402025 	move	a0,v0
a000d890:	0c003102 	jal	a000c408 <dispatch>
a000d894:	00000000 	nop
a000d898:	3c02a001 	lui	v0,0xa001
a000d89c:	2444806c 	addiu	a0,v0,-32660
a000d8a0:	0c00328a 	jal	a000ca28 <puts>
a000d8a4:	00000000 	nop
a000d8a8:	00000000 	nop
a000d8ac:	03c0e825 	move	sp,s8
a000d8b0:	8fbf001c 	lw	ra,28(sp)
a000d8b4:	8fbe0018 	lw	s8,24(sp)
a000d8b8:	27bd0020 	addiu	sp,sp,32
a000d8bc:	03e00008 	jr	ra
a000d8c0:	00000000 	nop

a000d8c4 <kz_sysdown>:
a000d8c4:	27bdffe8 	addiu	sp,sp,-24
a000d8c8:	afbf0014 	sw	ra,20(sp)
a000d8cc:	afbe0010 	sw	s8,16(sp)
a000d8d0:	03a0f025 	move	s8,sp
a000d8d4:	3c02a001 	lui	v0,0xa001
a000d8d8:	2444807c 	addiu	a0,v0,-32644
a000d8dc:	0c00328a 	jal	a000ca28 <puts>
a000d8e0:	00000000 	nop
a000d8e4:	1000ffff 	b	a000d8e4 <kz_sysdown+0x20>
a000d8e8:	00000000 	nop

a000d8ec <kz_syscall>:
a000d8ec:	27bdfff8 	addiu	sp,sp,-8
a000d8f0:	afbe0004 	sw	s8,4(sp)
a000d8f4:	03a0f025 	move	s8,sp
a000d8f8:	afc40008 	sw	a0,8(s8)
a000d8fc:	afc5000c 	sw	a1,12(s8)
a000d900:	3c02a001 	lui	v0,0xa001
a000d904:	8c4280fc 	lw	v0,-32516(v0)
a000d908:	8fc30008 	lw	v1,8(s8)
a000d90c:	ac430024 	sw	v1,36(v0)
a000d910:	3c02a001 	lui	v0,0xa001
a000d914:	8c4280fc 	lw	v0,-32516(v0)
a000d918:	8fc3000c 	lw	v1,12(s8)
a000d91c:	ac430028 	sw	v1,40(v0)
a000d920:	0000000c 	syscall
a000d924:	00000000 	nop
a000d928:	03c0e825 	move	sp,s8
a000d92c:	8fbe0004 	lw	s8,4(sp)
a000d930:	27bd0008 	addiu	sp,sp,8
a000d934:	03e00008 	jr	ra
a000d938:	00000000 	nop

a000d93c <kz_run>:
a000d93c:	27bdffd0 	addiu	sp,sp,-48
a000d940:	afbf002c 	sw	ra,44(sp)
a000d944:	afbe0028 	sw	s8,40(sp)
a000d948:	03a0f025 	move	s8,sp
a000d94c:	afc40030 	sw	a0,48(s8)
a000d950:	afc50034 	sw	a1,52(s8)
a000d954:	afc60038 	sw	a2,56(s8)
a000d958:	afc7003c 	sw	a3,60(s8)
a000d95c:	8fc20030 	lw	v0,48(s8)
a000d960:	afc20010 	sw	v0,16(s8)
a000d964:	8fc20034 	lw	v0,52(s8)
a000d968:	afc20014 	sw	v0,20(s8)
a000d96c:	8fc20038 	lw	v0,56(s8)
a000d970:	afc20018 	sw	v0,24(s8)
a000d974:	8fc2003c 	lw	v0,60(s8)
a000d978:	afc2001c 	sw	v0,28(s8)
a000d97c:	8fc20040 	lw	v0,64(s8)
a000d980:	afc20020 	sw	v0,32(s8)
a000d984:	27c20010 	addiu	v0,s8,16
a000d988:	00402825 	move	a1,v0
a000d98c:	00002025 	move	a0,zero
a000d990:	0c00363b 	jal	a000d8ec <kz_syscall>
a000d994:	00000000 	nop
a000d998:	8fc20024 	lw	v0,36(s8)
a000d99c:	03c0e825 	move	sp,s8
a000d9a0:	8fbf002c 	lw	ra,44(sp)
a000d9a4:	8fbe0028 	lw	s8,40(sp)
a000d9a8:	27bd0030 	addiu	sp,sp,48
a000d9ac:	03e00008 	jr	ra
a000d9b0:	00000000 	nop

a000d9b4 <kz_exit>:
a000d9b4:	27bdffe8 	addiu	sp,sp,-24
a000d9b8:	afbf0014 	sw	ra,20(sp)
a000d9bc:	afbe0010 	sw	s8,16(sp)
a000d9c0:	03a0f025 	move	s8,sp
a000d9c4:	00002825 	move	a1,zero
a000d9c8:	24040001 	li	a0,1
a000d9cc:	0c00363b 	jal	a000d8ec <kz_syscall>
a000d9d0:	00000000 	nop
a000d9d4:	00000000 	nop
a000d9d8:	03c0e825 	move	sp,s8
a000d9dc:	8fbf0014 	lw	ra,20(sp)
a000d9e0:	8fbe0010 	lw	s8,16(sp)
a000d9e4:	27bd0018 	addiu	sp,sp,24
a000d9e8:	03e00008 	jr	ra
a000d9ec:	00000000 	nop

a000d9f0 <test08_1_main>:
a000d9f0:	27bdffc8 	addiu	sp,sp,-56
a000d9f4:	afbf0034 	sw	ra,52(sp)
a000d9f8:	afbe0030 	sw	s8,48(sp)
a000d9fc:	03a0f025 	move	s8,sp
a000da00:	afc40038 	sw	a0,56(s8)
a000da04:	afc5003c 	sw	a1,60(s8)
a000da08:	3c02a001 	lui	v0,0xa001
a000da0c:	2444808c 	addiu	a0,v0,-32628
a000da10:	0c00328a 	jal	a000ca28 <puts>
a000da14:	00000000 	nop
a000da18:	3c02a001 	lui	v0,0xa001
a000da1c:	244480a0 	addiu	a0,v0,-32608
a000da20:	0c00328a 	jal	a000ca28 <puts>
a000da24:	00000000 	nop
a000da28:	27c20010 	addiu	v0,s8,16
a000da2c:	00402025 	move	a0,v0
a000da30:	0c0032a3 	jal	a000ca8c <gets>
a000da34:	00000000 	nop
a000da38:	24060004 	li	a2,4
a000da3c:	3c02a001 	lui	v0,0xa001
a000da40:	244580a4 	addiu	a1,v0,-32604
a000da44:	27c20010 	addiu	v0,s8,16
a000da48:	00402025 	move	a0,v0
a000da4c:	0c003220 	jal	a000c880 <strncmp>
a000da50:	00000000 	nop
a000da54:	1440000b 	bnez	v0,a000da84 <test08_1_main+0x94>
a000da58:	00000000 	nop
a000da5c:	27c20014 	addiu	v0,s8,20
a000da60:	00402025 	move	a0,v0
a000da64:	0c00328a 	jal	a000ca28 <puts>
a000da68:	00000000 	nop
a000da6c:	3c02a001 	lui	v0,0xa001
a000da70:	244480ac 	addiu	a0,v0,-32596
a000da74:	0c00328a 	jal	a000ca28 <puts>
a000da78:	00000000 	nop
a000da7c:	1000ffe6 	b	a000da18 <test08_1_main+0x28>
a000da80:	00000000 	nop
a000da84:	3c02a001 	lui	v0,0xa001
a000da88:	244580b0 	addiu	a1,v0,-32592
a000da8c:	27c20010 	addiu	v0,s8,16
a000da90:	00402025 	move	a0,v0
a000da94:	0c0031f2 	jal	a000c7c8 <strcmp>
a000da98:	00000000 	nop
a000da9c:	10400007 	beqz	v0,a000dabc <test08_1_main+0xcc>
a000daa0:	00000000 	nop
a000daa4:	3c02a001 	lui	v0,0xa001
a000daa8:	244480b8 	addiu	a0,v0,-32584
a000daac:	0c00328a 	jal	a000ca28 <puts>
a000dab0:	00000000 	nop
a000dab4:	1000ffd8 	b	a000da18 <test08_1_main+0x28>
a000dab8:	00000000 	nop
a000dabc:	00000000 	nop
a000dac0:	3c02a001 	lui	v0,0xa001
a000dac4:	244480c4 	addiu	a0,v0,-32572
a000dac8:	0c00328a 	jal	a000ca28 <puts>
a000dacc:	00000000 	nop
a000dad0:	00001025 	move	v0,zero
a000dad4:	03c0e825 	move	sp,s8
a000dad8:	8fbf0034 	lw	ra,52(sp)
a000dadc:	8fbe0030 	lw	s8,48(sp)
a000dae0:	27bd0038 	addiu	sp,sp,56
a000dae4:	03e00008 	jr	ra
a000dae8:	00000000 	nop
