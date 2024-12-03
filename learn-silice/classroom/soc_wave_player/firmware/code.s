
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00006097          	auipc	ra,0x6
       8:	ffc080e7          	jalr	-4(ra) # 6000 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x5948>
      20:	000067b7          	lui	a5,0x6
      24:	00812423          	sw	s0,8(sp)
      28:	bbc7a403          	lw	s0,-1092(a5) # 5bbc <AUDIO>
      2c:	00112623          	sw	ra,12(sp)
      30:	00912223          	sw	s1,4(sp)
      34:	00042703          	lw	a4,0(s0)
      38:	00042783          	lw	a5,0(s0)
      3c:	fef70ee3          	beq	a4,a5,38 <clear_audio+0x1c>
      40:	00042483          	lw	s1,0(s0)
      44:	20000613          	li	a2,512
      48:	00000593          	li	a1,0
      4c:	00048513          	mv	a0,s1
      50:	00000097          	auipc	ra,0x0
      54:	710080e7          	jalr	1808(ra) # 760 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00000097          	auipc	ra,0x0
      74:	6f0080e7          	jalr	1776(ra) # 760 <memset>
      78:	00042783          	lw	a5,0(s0)
      7c:	fef48ee3          	beq	s1,a5,78 <clear_audio+0x5c>
      80:	00c12083          	lw	ra,12(sp)
      84:	00812403          	lw	s0,8(sp)
      88:	00412483          	lw	s1,4(sp)
      8c:	01010113          	addi	sp,sp,16
      90:	00008067          	ret

00000094 <pause>:
      94:	c0002773          	rdcycle	a4
      98:	c00027f3          	rdcycle	a5
      9c:	40e787b3          	sub	a5,a5,a4
      a0:	fea7ece3          	bltu	a5,a0,98 <pause+0x4>
      a4:	00008067          	ret

000000a8 <sdcard_idle>:
      a8:	00008067          	ret

000000ac <sdcard_select>:
      ac:	000067b7          	lui	a5,0x6
      b0:	bc87a783          	lw	a5,-1080(a5) # 5bc8 <SDCARD>
      b4:	00200713          	li	a4,2
      b8:	00e7a023          	sw	a4,0(a5)
      bc:	00008067          	ret

000000c0 <sdcard_ponder>:
      c0:	000066b7          	lui	a3,0x6
      c4:	bc86a603          	lw	a2,-1080(a3) # 5bc8 <SDCARD>
      c8:	01000793          	li	a5,16
      cc:	00000713          	li	a4,0
      d0:	00100693          	li	a3,1
      d4:	00676593          	ori	a1,a4,6
      d8:	00b62023          	sw	a1,0(a2)
      dc:	40e68733          	sub	a4,a3,a4
      e0:	00000013          	nop
      e4:	fff78793          	addi	a5,a5,-1
      e8:	fe0796e3          	bnez	a5,d4 <sdcard_ponder+0x14>
      ec:	00008067          	ret

000000f0 <sdcard_unselect>:
      f0:	000067b7          	lui	a5,0x6
      f4:	bc87a783          	lw	a5,-1080(a5) # 5bc8 <SDCARD>
      f8:	00600713          	li	a4,6
      fc:	00e7a023          	sw	a4,0(a5)
     100:	00008067          	ret

00000104 <sdcard_send>:
     104:	000067b7          	lui	a5,0x6
     108:	bc87a783          	lw	a5,-1080(a5) # 5bc8 <SDCARD>
     10c:	00655713          	srli	a4,a0,0x6
     110:	00277713          	andi	a4,a4,2
     114:	00e7a023          	sw	a4,0(a5)
     118:	00176713          	ori	a4,a4,1
     11c:	00e7a023          	sw	a4,0(a5)
     120:	00555713          	srli	a4,a0,0x5
     124:	00277713          	andi	a4,a4,2
     128:	00e7a023          	sw	a4,0(a5)
     12c:	00176713          	ori	a4,a4,1
     130:	00e7a023          	sw	a4,0(a5)
     134:	00455713          	srli	a4,a0,0x4
     138:	00277713          	andi	a4,a4,2
     13c:	00e7a023          	sw	a4,0(a5)
     140:	00176713          	ori	a4,a4,1
     144:	00e7a023          	sw	a4,0(a5)
     148:	00355713          	srli	a4,a0,0x3
     14c:	00277713          	andi	a4,a4,2
     150:	00e7a023          	sw	a4,0(a5)
     154:	00176713          	ori	a4,a4,1
     158:	00e7a023          	sw	a4,0(a5)
     15c:	00255713          	srli	a4,a0,0x2
     160:	00277713          	andi	a4,a4,2
     164:	00e7a023          	sw	a4,0(a5)
     168:	00176713          	ori	a4,a4,1
     16c:	00e7a023          	sw	a4,0(a5)
     170:	00155713          	srli	a4,a0,0x1
     174:	00277713          	andi	a4,a4,2
     178:	00e7a023          	sw	a4,0(a5)
     17c:	00176713          	ori	a4,a4,1
     180:	00e7a023          	sw	a4,0(a5)
     184:	00257713          	andi	a4,a0,2
     188:	00e7a023          	sw	a4,0(a5)
     18c:	00151513          	slli	a0,a0,0x1
     190:	00176713          	ori	a4,a4,1
     194:	00e7a023          	sw	a4,0(a5)
     198:	00257513          	andi	a0,a0,2
     19c:	00a7a023          	sw	a0,0(a5)
     1a0:	00156513          	ori	a0,a0,1
     1a4:	00a7a023          	sw	a0,0(a5)
     1a8:	00200713          	li	a4,2
     1ac:	00e7a023          	sw	a4,0(a5)
     1b0:	000067b7          	lui	a5,0x6
     1b4:	fd47a783          	lw	a5,-44(a5) # 5fd4 <sdcard_while_loading_callback>
     1b8:	00078067          	jr	a5

000001bc <sdcard_read>:
     1bc:	fd010113          	addi	sp,sp,-48
     1c0:	fff50793          	addi	a5,a0,-1
     1c4:	01312e23          	sw	s3,28(sp)
     1c8:	00100993          	li	s3,1
     1cc:	00f999b3          	sll	s3,s3,a5
     1d0:	000067b7          	lui	a5,0x6
     1d4:	01512a23          	sw	s5,20(sp)
     1d8:	bc87aa83          	lw	s5,-1080(a5) # 5bc8 <SDCARD>
     1dc:	02812423          	sw	s0,40(sp)
     1e0:	02912223          	sw	s1,36(sp)
     1e4:	03212023          	sw	s2,32(sp)
     1e8:	01412c23          	sw	s4,24(sp)
     1ec:	01612823          	sw	s6,16(sp)
     1f0:	01712623          	sw	s7,12(sp)
     1f4:	01812423          	sw	s8,8(sp)
     1f8:	02112623          	sw	ra,44(sp)
     1fc:	00050493          	mv	s1,a0
     200:	00058a13          	mv	s4,a1
     204:	0ff00413          	li	s0,255
     208:	00000913          	li	s2,0
     20c:	00300b13          	li	s6,3
     210:	00200b93          	li	s7,2
     214:	00006c37          	lui	s8,0x6
     218:	040a0063          	beqz	s4,258 <sdcard_read+0x9c>
     21c:	0089f7b3          	and	a5,s3,s0
     220:	02079e63          	bnez	a5,25c <sdcard_read+0xa0>
     224:	02c12083          	lw	ra,44(sp)
     228:	0ff47513          	zext.b	a0,s0
     22c:	02812403          	lw	s0,40(sp)
     230:	02412483          	lw	s1,36(sp)
     234:	02012903          	lw	s2,32(sp)
     238:	01c12983          	lw	s3,28(sp)
     23c:	01812a03          	lw	s4,24(sp)
     240:	01412a83          	lw	s5,20(sp)
     244:	01012b03          	lw	s6,16(sp)
     248:	00c12b83          	lw	s7,12(sp)
     24c:	00812c03          	lw	s8,8(sp)
     250:	03010113          	addi	sp,sp,48
     254:	00008067          	ret
     258:	fc9956e3          	bge	s2,s1,224 <sdcard_read+0x68>
     25c:	016aa023          	sw	s6,0(s5)
     260:	017aa023          	sw	s7,0(s5)
     264:	000aa783          	lw	a5,0(s5)
     268:	00141413          	slli	s0,s0,0x1
     26c:	00190913          	addi	s2,s2,1
     270:	00f46433          	or	s0,s0,a5
     274:	fd4c2783          	lw	a5,-44(s8) # 5fd4 <sdcard_while_loading_callback>
     278:	000780e7          	jalr	a5
     27c:	f9dff06f          	j	218 <sdcard_read+0x5c>

00000280 <sdcard_get>:
     280:	fe010113          	addi	sp,sp,-32
     284:	00112e23          	sw	ra,28(sp)
     288:	00812c23          	sw	s0,24(sp)
     28c:	00912a23          	sw	s1,20(sp)
     290:	00050413          	mv	s0,a0
     294:	00b12623          	sw	a1,12(sp)
     298:	00000097          	auipc	ra,0x0
     29c:	e14080e7          	jalr	-492(ra) # ac <sdcard_select>
     2a0:	00c12583          	lw	a1,12(sp)
     2a4:	00040513          	mv	a0,s0
     2a8:	00100493          	li	s1,1
     2ac:	00000097          	auipc	ra,0x0
     2b0:	f10080e7          	jalr	-240(ra) # 1bc <sdcard_read>
     2b4:	00345413          	srli	s0,s0,0x3
     2b8:	0284c463          	blt	s1,s0,2e0 <sdcard_get+0x60>
     2bc:	00a12623          	sw	a0,12(sp)
     2c0:	00000097          	auipc	ra,0x0
     2c4:	e30080e7          	jalr	-464(ra) # f0 <sdcard_unselect>
     2c8:	01c12083          	lw	ra,28(sp)
     2cc:	01812403          	lw	s0,24(sp)
     2d0:	00c12503          	lw	a0,12(sp)
     2d4:	01412483          	lw	s1,20(sp)
     2d8:	02010113          	addi	sp,sp,32
     2dc:	00008067          	ret
     2e0:	00000593          	li	a1,0
     2e4:	00800513          	li	a0,8
     2e8:	00000097          	auipc	ra,0x0
     2ec:	ed4080e7          	jalr	-300(ra) # 1bc <sdcard_read>
     2f0:	00148493          	addi	s1,s1,1
     2f4:	fc5ff06f          	j	2b8 <sdcard_get+0x38>

000002f8 <sdcard_cmd>:
     2f8:	ff010113          	addi	sp,sp,-16
     2fc:	00812423          	sw	s0,8(sp)
     300:	00912223          	sw	s1,4(sp)
     304:	01212023          	sw	s2,0(sp)
     308:	00112623          	sw	ra,12(sp)
     30c:	00050493          	mv	s1,a0
     310:	00000413          	li	s0,0
     314:	00000097          	auipc	ra,0x0
     318:	d98080e7          	jalr	-616(ra) # ac <sdcard_select>
     31c:	00600913          	li	s2,6
     320:	008487b3          	add	a5,s1,s0
     324:	0007c503          	lbu	a0,0(a5)
     328:	00140413          	addi	s0,s0,1
     32c:	00000097          	auipc	ra,0x0
     330:	dd8080e7          	jalr	-552(ra) # 104 <sdcard_send>
     334:	ff2416e3          	bne	s0,s2,320 <sdcard_cmd+0x28>
     338:	00812403          	lw	s0,8(sp)
     33c:	00c12083          	lw	ra,12(sp)
     340:	00412483          	lw	s1,4(sp)
     344:	00012903          	lw	s2,0(sp)
     348:	01010113          	addi	sp,sp,16
     34c:	00000317          	auipc	t1,0x0
     350:	da430067          	jr	-604(t1) # f0 <sdcard_unselect>

00000354 <sdcard_start_sector>:
     354:	ff010113          	addi	sp,sp,-16
     358:	00112623          	sw	ra,12(sp)
     35c:	00812423          	sw	s0,8(sp)
     360:	00050413          	mv	s0,a0
     364:	00000097          	auipc	ra,0x0
     368:	d48080e7          	jalr	-696(ra) # ac <sdcard_select>
     36c:	05100513          	li	a0,81
     370:	00000097          	auipc	ra,0x0
     374:	d94080e7          	jalr	-620(ra) # 104 <sdcard_send>
     378:	01845513          	srli	a0,s0,0x18
     37c:	00000097          	auipc	ra,0x0
     380:	d88080e7          	jalr	-632(ra) # 104 <sdcard_send>
     384:	41045513          	srai	a0,s0,0x10
     388:	0ff57513          	zext.b	a0,a0
     38c:	00000097          	auipc	ra,0x0
     390:	d78080e7          	jalr	-648(ra) # 104 <sdcard_send>
     394:	40845513          	srai	a0,s0,0x8
     398:	0ff57513          	zext.b	a0,a0
     39c:	00000097          	auipc	ra,0x0
     3a0:	d68080e7          	jalr	-664(ra) # 104 <sdcard_send>
     3a4:	0ff47513          	zext.b	a0,s0
     3a8:	00000097          	auipc	ra,0x0
     3ac:	d5c080e7          	jalr	-676(ra) # 104 <sdcard_send>
     3b0:	05500513          	li	a0,85
     3b4:	00000097          	auipc	ra,0x0
     3b8:	d50080e7          	jalr	-688(ra) # 104 <sdcard_send>
     3bc:	00000097          	auipc	ra,0x0
     3c0:	d34080e7          	jalr	-716(ra) # f0 <sdcard_unselect>
     3c4:	00812403          	lw	s0,8(sp)
     3c8:	00c12083          	lw	ra,12(sp)
     3cc:	00100593          	li	a1,1
     3d0:	00800513          	li	a0,8
     3d4:	01010113          	addi	sp,sp,16
     3d8:	00000317          	auipc	t1,0x0
     3dc:	ea830067          	jr	-344(t1) # 280 <sdcard_get>

000003e0 <sdcard_read_sector>:
     3e0:	ff010113          	addi	sp,sp,-16
     3e4:	00812423          	sw	s0,8(sp)
     3e8:	00112623          	sw	ra,12(sp)
     3ec:	00912223          	sw	s1,4(sp)
     3f0:	01212023          	sw	s2,0(sp)
     3f4:	00058413          	mv	s0,a1
     3f8:	00000097          	auipc	ra,0x0
     3fc:	f5c080e7          	jalr	-164(ra) # 354 <sdcard_start_sector>
     400:	04051863          	bnez	a0,450 <sdcard_read_sector+0x70>
     404:	00100593          	li	a1,1
     408:	00100513          	li	a0,1
     40c:	00000097          	auipc	ra,0x0
     410:	e74080e7          	jalr	-396(ra) # 280 <sdcard_get>
     414:	00000493          	li	s1,0
     418:	20000913          	li	s2,512
     41c:	00000593          	li	a1,0
     420:	00800513          	li	a0,8
     424:	00000097          	auipc	ra,0x0
     428:	e5c080e7          	jalr	-420(ra) # 280 <sdcard_get>
     42c:	009407b3          	add	a5,s0,s1
     430:	00a78023          	sb	a0,0(a5)
     434:	00148493          	addi	s1,s1,1
     438:	ff2492e3          	bne	s1,s2,41c <sdcard_read_sector+0x3c>
     43c:	00100593          	li	a1,1
     440:	01000513          	li	a0,16
     444:	20040413          	addi	s0,s0,512
     448:	00000097          	auipc	ra,0x0
     44c:	e38080e7          	jalr	-456(ra) # 280 <sdcard_get>
     450:	00c12083          	lw	ra,12(sp)
     454:	00040513          	mv	a0,s0
     458:	00812403          	lw	s0,8(sp)
     45c:	00412483          	lw	s1,4(sp)
     460:	00012903          	lw	s2,0(sp)
     464:	01010113          	addi	sp,sp,16
     468:	00008067          	ret

0000046c <sdcard_preinit>:
     46c:	ff010113          	addi	sp,sp,-16
     470:	000067b7          	lui	a5,0x6
     474:	00812423          	sw	s0,8(sp)
     478:	bc87a403          	lw	s0,-1080(a5) # 5bc8 <SDCARD>
     47c:	00112623          	sw	ra,12(sp)
     480:	00600793          	li	a5,6
     484:	01313537          	lui	a0,0x1313
     488:	00f42023          	sw	a5,0(s0)
     48c:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     490:	00000097          	auipc	ra,0x0
     494:	c04080e7          	jalr	-1020(ra) # 94 <pause>
     498:	0a000793          	li	a5,160
     49c:	00000713          	li	a4,0
     4a0:	00100693          	li	a3,1
     4a4:	00676613          	ori	a2,a4,6
     4a8:	00c42023          	sw	a2,0(s0)
     4ac:	fff78793          	addi	a5,a5,-1
     4b0:	40e68733          	sub	a4,a3,a4
     4b4:	fe0798e3          	bnez	a5,4a4 <sdcard_preinit+0x38>
     4b8:	00600793          	li	a5,6
     4bc:	00c12083          	lw	ra,12(sp)
     4c0:	00f42023          	sw	a5,0(s0)
     4c4:	00812403          	lw	s0,8(sp)
     4c8:	01010113          	addi	sp,sp,16
     4cc:	00008067          	ret

000004d0 <sdcard_init>:
     4d0:	fe010113          	addi	sp,sp,-32
     4d4:	000007b7          	lui	a5,0x0
     4d8:	00812c23          	sw	s0,24(sp)
     4dc:	00006737          	lui	a4,0x6
     4e0:	0a878793          	addi	a5,a5,168 # a8 <sdcard_idle>
     4e4:	01313437          	lui	s0,0x1313
     4e8:	01212823          	sw	s2,16(sp)
     4ec:	01312623          	sw	s3,12(sp)
     4f0:	00112e23          	sw	ra,28(sp)
     4f4:	00912a23          	sw	s1,20(sp)
     4f8:	fcf72a23          	sw	a5,-44(a4) # 5fd4 <sdcard_while_loading_callback>
     4fc:	00006937          	lui	s2,0x6
     500:	0ff00993          	li	s3,255
     504:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     508:	00000097          	auipc	ra,0x0
     50c:	f64080e7          	jalr	-156(ra) # 46c <sdcard_preinit>
     510:	bb490513          	addi	a0,s2,-1100 # 5bb4 <cmd0>
     514:	00000097          	auipc	ra,0x0
     518:	de4080e7          	jalr	-540(ra) # 2f8 <sdcard_cmd>
     51c:	00100593          	li	a1,1
     520:	00800513          	li	a0,8
     524:	00000097          	auipc	ra,0x0
     528:	d5c080e7          	jalr	-676(ra) # 280 <sdcard_get>
     52c:	00050493          	mv	s1,a0
     530:	00000097          	auipc	ra,0x0
     534:	b90080e7          	jalr	-1136(ra) # c0 <sdcard_ponder>
     538:	01349a63          	bne	s1,s3,54c <sdcard_init+0x7c>
     53c:	00040513          	mv	a0,s0
     540:	00000097          	auipc	ra,0x0
     544:	b54080e7          	jalr	-1196(ra) # 94 <pause>
     548:	fc1ff06f          	j	508 <sdcard_init+0x38>
     54c:	00006537          	lui	a0,0x6
     550:	bac50513          	addi	a0,a0,-1108 # 5bac <cmd8>
     554:	00000097          	auipc	ra,0x0
     558:	da4080e7          	jalr	-604(ra) # 2f8 <sdcard_cmd>
     55c:	00100593          	li	a1,1
     560:	02800513          	li	a0,40
     564:	00000097          	auipc	ra,0x0
     568:	d1c080e7          	jalr	-740(ra) # 280 <sdcard_get>
     56c:	001e8437          	lui	s0,0x1e8
     570:	00000097          	auipc	ra,0x0
     574:	b50080e7          	jalr	-1200(ra) # c0 <sdcard_ponder>
     578:	00006937          	lui	s2,0x6
     57c:	000069b7          	lui	s3,0x6
     580:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     584:	ba490513          	addi	a0,s2,-1116 # 5ba4 <cmd55>
     588:	00000097          	auipc	ra,0x0
     58c:	d70080e7          	jalr	-656(ra) # 2f8 <sdcard_cmd>
     590:	00100593          	li	a1,1
     594:	00800513          	li	a0,8
     598:	00000097          	auipc	ra,0x0
     59c:	ce8080e7          	jalr	-792(ra) # 280 <sdcard_get>
     5a0:	00000097          	auipc	ra,0x0
     5a4:	b20080e7          	jalr	-1248(ra) # c0 <sdcard_ponder>
     5a8:	b9c98513          	addi	a0,s3,-1124 # 5b9c <acmd41>
     5ac:	00000097          	auipc	ra,0x0
     5b0:	d4c080e7          	jalr	-692(ra) # 2f8 <sdcard_cmd>
     5b4:	00100593          	li	a1,1
     5b8:	00800513          	li	a0,8
     5bc:	00000097          	auipc	ra,0x0
     5c0:	cc4080e7          	jalr	-828(ra) # 280 <sdcard_get>
     5c4:	00050493          	mv	s1,a0
     5c8:	00000097          	auipc	ra,0x0
     5cc:	af8080e7          	jalr	-1288(ra) # c0 <sdcard_ponder>
     5d0:	00048a63          	beqz	s1,5e4 <sdcard_init+0x114>
     5d4:	00040513          	mv	a0,s0
     5d8:	00000097          	auipc	ra,0x0
     5dc:	abc080e7          	jalr	-1348(ra) # 94 <pause>
     5e0:	fa5ff06f          	j	584 <sdcard_init+0xb4>
     5e4:	00006537          	lui	a0,0x6
     5e8:	b9450513          	addi	a0,a0,-1132 # 5b94 <cmd16>
     5ec:	00000097          	auipc	ra,0x0
     5f0:	d0c080e7          	jalr	-756(ra) # 2f8 <sdcard_cmd>
     5f4:	00100593          	li	a1,1
     5f8:	00800513          	li	a0,8
     5fc:	00000097          	auipc	ra,0x0
     600:	c84080e7          	jalr	-892(ra) # 280 <sdcard_get>
     604:	01812403          	lw	s0,24(sp)
     608:	01c12083          	lw	ra,28(sp)
     60c:	01412483          	lw	s1,20(sp)
     610:	01012903          	lw	s2,16(sp)
     614:	00c12983          	lw	s3,12(sp)
     618:	02010113          	addi	sp,sp,32
     61c:	00000317          	auipc	t1,0x0
     620:	aa430067          	jr	-1372(t1) # c0 <sdcard_ponder>

00000624 <sdcard_readsector>:
     624:	04060863          	beqz	a2,674 <sdcard_readsector+0x50>
     628:	ff010113          	addi	sp,sp,-16
     62c:	00812423          	sw	s0,8(sp)
     630:	00912223          	sw	s1,4(sp)
     634:	00112623          	sw	ra,12(sp)
     638:	00050413          	mv	s0,a0
     63c:	00a604b3          	add	s1,a2,a0
     640:	00941e63          	bne	s0,s1,65c <sdcard_readsector+0x38>
     644:	00c12083          	lw	ra,12(sp)
     648:	00812403          	lw	s0,8(sp)
     64c:	00412483          	lw	s1,4(sp)
     650:	00100513          	li	a0,1
     654:	01010113          	addi	sp,sp,16
     658:	00008067          	ret
     65c:	00040513          	mv	a0,s0
     660:	00000097          	auipc	ra,0x0
     664:	d80080e7          	jalr	-640(ra) # 3e0 <sdcard_read_sector>
     668:	00050593          	mv	a1,a0
     66c:	00140413          	addi	s0,s0,1
     670:	fd1ff06f          	j	640 <sdcard_readsector+0x1c>
     674:	00000513          	li	a0,0
     678:	00008067          	ret

0000067c <sdcard_writesector>:
     67c:	00000513          	li	a0,0
     680:	00008067          	ret

00000684 <__divsi3>:
     684:	06054063          	bltz	a0,6e4 <__umodsi3+0x10>
     688:	0605c663          	bltz	a1,6f4 <__umodsi3+0x20>

0000068c <__udivsi3>:
     68c:	00058613          	mv	a2,a1
     690:	00050593          	mv	a1,a0
     694:	fff00513          	li	a0,-1
     698:	02060c63          	beqz	a2,6d0 <__udivsi3+0x44>
     69c:	00100693          	li	a3,1
     6a0:	00b67a63          	bgeu	a2,a1,6b4 <__udivsi3+0x28>
     6a4:	00c05863          	blez	a2,6b4 <__udivsi3+0x28>
     6a8:	00161613          	slli	a2,a2,0x1
     6ac:	00169693          	slli	a3,a3,0x1
     6b0:	feb66ae3          	bltu	a2,a1,6a4 <__udivsi3+0x18>
     6b4:	00000513          	li	a0,0
     6b8:	00c5e663          	bltu	a1,a2,6c4 <__udivsi3+0x38>
     6bc:	40c585b3          	sub	a1,a1,a2
     6c0:	00d56533          	or	a0,a0,a3
     6c4:	0016d693          	srli	a3,a3,0x1
     6c8:	00165613          	srli	a2,a2,0x1
     6cc:	fe0696e3          	bnez	a3,6b8 <__udivsi3+0x2c>
     6d0:	00008067          	ret

000006d4 <__umodsi3>:
     6d4:	00008293          	mv	t0,ra
     6d8:	fb5ff0ef          	jal	ra,68c <__udivsi3>
     6dc:	00058513          	mv	a0,a1
     6e0:	00028067          	jr	t0
     6e4:	40a00533          	neg	a0,a0
     6e8:	0005d863          	bgez	a1,6f8 <__umodsi3+0x24>
     6ec:	40b005b3          	neg	a1,a1
     6f0:	f95ff06f          	j	684 <__divsi3>
     6f4:	40b005b3          	neg	a1,a1
     6f8:	00008293          	mv	t0,ra
     6fc:	f89ff0ef          	jal	ra,684 <__divsi3>
     700:	40a00533          	neg	a0,a0
     704:	00028067          	jr	t0

00000708 <__modsi3>:
     708:	00008293          	mv	t0,ra
     70c:	0005ca63          	bltz	a1,720 <__modsi3+0x18>
     710:	00054c63          	bltz	a0,728 <__modsi3+0x20>
     714:	f79ff0ef          	jal	ra,68c <__udivsi3>
     718:	00058513          	mv	a0,a1
     71c:	00028067          	jr	t0
     720:	40b005b3          	neg	a1,a1
     724:	fe0558e3          	bgez	a0,714 <__modsi3+0xc>
     728:	40a00533          	neg	a0,a0
     72c:	f61ff0ef          	jal	ra,68c <__udivsi3>
     730:	40b00533          	neg	a0,a1
     734:	00028067          	jr	t0

00000738 <uart_putchar>:
     738:	000067b7          	lui	a5,0x6
     73c:	bcc7a783          	lw	a5,-1076(a5) # 5bcc <UART>
     740:	00a7a023          	sw	a0,0(a5)
     744:	c00026f3          	rdcycle	a3
     748:	000027b7          	lui	a5,0x2
     74c:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_create_path_string+0x87>
     750:	c0002773          	rdcycle	a4
     754:	40d70733          	sub	a4,a4,a3
     758:	fee7fce3          	bgeu	a5,a4,750 <uart_putchar+0x18>
     75c:	00008067          	ret

00000760 <memset>:
     760:	00c50633          	add	a2,a0,a2
     764:	00050793          	mv	a5,a0
     768:	00c79463          	bne	a5,a2,770 <memset+0x10>
     76c:	00008067          	ret
     770:	00178793          	addi	a5,a5,1
     774:	feb78fa3          	sb	a1,-1(a5)
     778:	ff1ff06f          	j	768 <memset+0x8>

0000077c <memcpy>:
     77c:	00000793          	li	a5,0
     780:	00c79463          	bne	a5,a2,788 <memcpy+0xc>
     784:	00008067          	ret
     788:	00f58733          	add	a4,a1,a5
     78c:	00074683          	lbu	a3,0(a4)
     790:	00f50733          	add	a4,a0,a5
     794:	00178793          	addi	a5,a5,1
     798:	00d70023          	sb	a3,0(a4)
     79c:	fe5ff06f          	j	780 <memcpy+0x4>

000007a0 <strlen>:
     7a0:	00050793          	mv	a5,a0
     7a4:	00000513          	li	a0,0
     7a8:	00a78733          	add	a4,a5,a0
     7ac:	00074703          	lbu	a4,0(a4)
     7b0:	00071463          	bnez	a4,7b8 <strlen+0x18>
     7b4:	00008067          	ret
     7b8:	00150513          	addi	a0,a0,1
     7bc:	fedff06f          	j	7a8 <strlen+0x8>

000007c0 <strncmp>:
     7c0:	00000793          	li	a5,0
     7c4:	00c79663          	bne	a5,a2,7d0 <strncmp+0x10>
     7c8:	00000513          	li	a0,0
     7cc:	00008067          	ret
     7d0:	00f50733          	add	a4,a0,a5
     7d4:	00074683          	lbu	a3,0(a4)
     7d8:	00f58733          	add	a4,a1,a5
     7dc:	00074703          	lbu	a4,0(a4)
     7e0:	00e6e863          	bltu	a3,a4,7f0 <strncmp+0x30>
     7e4:	00d76a63          	bltu	a4,a3,7f8 <strncmp+0x38>
     7e8:	00178793          	addi	a5,a5,1
     7ec:	fd9ff06f          	j	7c4 <strncmp+0x4>
     7f0:	fff00513          	li	a0,-1
     7f4:	00008067          	ret
     7f8:	00100513          	li	a0,1
     7fc:	00008067          	ret

00000800 <strncpy>:
     800:	00000793          	li	a5,0
     804:	00f61463          	bne	a2,a5,80c <strncpy+0xc>
     808:	00008067          	ret
     80c:	00f58733          	add	a4,a1,a5
     810:	00074683          	lbu	a3,0(a4)
     814:	00f50733          	add	a4,a0,a5
     818:	00178793          	addi	a5,a5,1
     81c:	00d70023          	sb	a3,0(a4)
     820:	fe5ff06f          	j	804 <strncpy+0x4>

00000824 <strcpy>:
     824:	0005c783          	lbu	a5,0(a1)
     828:	00079663          	bnez	a5,834 <strcpy+0x10>
     82c:	00050023          	sb	zero,0(a0)
     830:	00008067          	ret
     834:	00150513          	addi	a0,a0,1
     838:	00158593          	addi	a1,a1,1
     83c:	fef50fa3          	sb	a5,-1(a0)
     840:	fe5ff06f          	j	824 <strcpy>

00000844 <strcat>:
     844:	00050793          	mv	a5,a0
     848:	0007c683          	lbu	a3,0(a5)
     84c:	00078713          	mv	a4,a5
     850:	00178793          	addi	a5,a5,1
     854:	fe069ae3          	bnez	a3,848 <strcat+0x4>
     858:	0005c783          	lbu	a5,0(a1)
     85c:	00158593          	addi	a1,a1,1
     860:	00170713          	addi	a4,a4,1
     864:	fef70fa3          	sb	a5,-1(a4)
     868:	fe0798e3          	bnez	a5,858 <strcat+0x14>
     86c:	00008067          	ret

00000870 <oled_wait>:
     870:	00000013          	nop
     874:	00000013          	nop
     878:	00000013          	nop
     87c:	00000013          	nop
     880:	00000013          	nop
     884:	00000013          	nop
     888:	00000013          	nop
     88c:	00008067          	ret

00000890 <oled_init_mode>:
     890:	000067b7          	lui	a5,0x6
     894:	bd07a703          	lw	a4,-1072(a5) # 5bd0 <OLED_RST>
     898:	ff010113          	addi	sp,sp,-16
     89c:	00912223          	sw	s1,4(sp)
     8a0:	00112623          	sw	ra,12(sp)
     8a4:	00812423          	sw	s0,8(sp)
     8a8:	00072023          	sw	zero,0(a4)
     8ac:	00050493          	mv	s1,a0
     8b0:	00040737          	lui	a4,0x40
     8b4:	00000013          	nop
     8b8:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     8bc:	fe071ce3          	bnez	a4,8b4 <oled_init_mode+0x24>
     8c0:	bd07a703          	lw	a4,-1072(a5)
     8c4:	00100693          	li	a3,1
     8c8:	00d72023          	sw	a3,0(a4)
     8cc:	00040737          	lui	a4,0x40
     8d0:	00000013          	nop
     8d4:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     8d8:	fe071ce3          	bnez	a4,8d0 <oled_init_mode+0x40>
     8dc:	bd07a783          	lw	a5,-1072(a5)
     8e0:	0007a023          	sw	zero,0(a5)
     8e4:	000407b7          	lui	a5,0x40
     8e8:	00000013          	nop
     8ec:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     8f0:	fe079ce3          	bnez	a5,8e8 <oled_init_mode+0x58>
     8f4:	00006737          	lui	a4,0x6
     8f8:	bd472783          	lw	a5,-1068(a4) # 5bd4 <OLED>
     8fc:	2af00693          	li	a3,687
     900:	00d7a023          	sw	a3,0(a5)
     904:	000407b7          	lui	a5,0x40
     908:	00000013          	nop
     90c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     910:	fe079ce3          	bnez	a5,908 <oled_init_mode+0x78>
     914:	bd472403          	lw	s0,-1068(a4)
     918:	2a000793          	li	a5,672
     91c:	00f42023          	sw	a5,0(s0)
     920:	00000097          	auipc	ra,0x0
     924:	f50080e7          	jalr	-176(ra) # 870 <oled_wait>
     928:	4a000793          	li	a5,1184
     92c:	00048463          	beqz	s1,934 <oled_init_mode+0xa4>
     930:	42000793          	li	a5,1056
     934:	00f42023          	sw	a5,0(s0)
     938:	00000097          	auipc	ra,0x0
     93c:	f38080e7          	jalr	-200(ra) # 870 <oled_wait>
     940:	2fd00793          	li	a5,765
     944:	00f42023          	sw	a5,0(s0)
     948:	00000097          	auipc	ra,0x0
     94c:	f28080e7          	jalr	-216(ra) # 870 <oled_wait>
     950:	4b100793          	li	a5,1201
     954:	00f42023          	sw	a5,0(s0)
     958:	00000097          	auipc	ra,0x0
     95c:	f18080e7          	jalr	-232(ra) # 870 <oled_wait>
     960:	2a200793          	li	a5,674
     964:	00f42023          	sw	a5,0(s0)
     968:	00000097          	auipc	ra,0x0
     96c:	f08080e7          	jalr	-248(ra) # 870 <oled_wait>
     970:	40000793          	li	a5,1024
     974:	00f42023          	sw	a5,0(s0)
     978:	00812403          	lw	s0,8(sp)
     97c:	00c12083          	lw	ra,12(sp)
     980:	00412483          	lw	s1,4(sp)
     984:	01010113          	addi	sp,sp,16
     988:	00000317          	auipc	t1,0x0
     98c:	ee830067          	jr	-280(t1) # 870 <oled_wait>

00000990 <oled_init>:
     990:	00000513          	li	a0,0
     994:	00000317          	auipc	t1,0x0
     998:	efc30067          	jr	-260(t1) # 890 <oled_init_mode>

0000099c <oled_fullscreen>:
     99c:	ff010113          	addi	sp,sp,-16
     9a0:	000067b7          	lui	a5,0x6
     9a4:	00812423          	sw	s0,8(sp)
     9a8:	bd47a403          	lw	s0,-1068(a5) # 5bd4 <OLED>
     9ac:	00112623          	sw	ra,12(sp)
     9b0:	00912223          	sw	s1,4(sp)
     9b4:	01212023          	sw	s2,0(sp)
     9b8:	21500793          	li	a5,533
     9bc:	00f42023          	sw	a5,0(s0)
     9c0:	40000913          	li	s2,1024
     9c4:	00000097          	auipc	ra,0x0
     9c8:	eac080e7          	jalr	-340(ra) # 870 <oled_wait>
     9cc:	47f00493          	li	s1,1151
     9d0:	01242023          	sw	s2,0(s0)
     9d4:	00000097          	auipc	ra,0x0
     9d8:	e9c080e7          	jalr	-356(ra) # 870 <oled_wait>
     9dc:	00942023          	sw	s1,0(s0)
     9e0:	00000097          	auipc	ra,0x0
     9e4:	e90080e7          	jalr	-368(ra) # 870 <oled_wait>
     9e8:	27500793          	li	a5,629
     9ec:	00f42023          	sw	a5,0(s0)
     9f0:	00000097          	auipc	ra,0x0
     9f4:	e80080e7          	jalr	-384(ra) # 870 <oled_wait>
     9f8:	01242023          	sw	s2,0(s0)
     9fc:	00000097          	auipc	ra,0x0
     a00:	e74080e7          	jalr	-396(ra) # 870 <oled_wait>
     a04:	00942023          	sw	s1,0(s0)
     a08:	00000097          	auipc	ra,0x0
     a0c:	e68080e7          	jalr	-408(ra) # 870 <oled_wait>
     a10:	25c00793          	li	a5,604
     a14:	00f42023          	sw	a5,0(s0)
     a18:	00812403          	lw	s0,8(sp)
     a1c:	00c12083          	lw	ra,12(sp)
     a20:	00412483          	lw	s1,4(sp)
     a24:	00012903          	lw	s2,0(sp)
     a28:	01010113          	addi	sp,sp,16
     a2c:	00000317          	auipc	t1,0x0
     a30:	e4430067          	jr	-444(t1) # 870 <oled_wait>

00000a34 <oled_clear>:
     a34:	fe010113          	addi	sp,sp,-32
     a38:	000067b7          	lui	a5,0x6
     a3c:	01312623          	sw	s3,12(sp)
     a40:	bd47a983          	lw	s3,-1068(a5) # 5bd4 <OLED>
     a44:	00812c23          	sw	s0,24(sp)
     a48:	01212823          	sw	s2,16(sp)
     a4c:	00112e23          	sw	ra,28(sp)
     a50:	00912a23          	sw	s1,20(sp)
     a54:	08000913          	li	s2,128
     a58:	40056413          	ori	s0,a0,1024
     a5c:	08000493          	li	s1,128
     a60:	0089a023          	sw	s0,0(s3)
     a64:	00000097          	auipc	ra,0x0
     a68:	e0c080e7          	jalr	-500(ra) # 870 <oled_wait>
     a6c:	0089a023          	sw	s0,0(s3)
     a70:	00000097          	auipc	ra,0x0
     a74:	e00080e7          	jalr	-512(ra) # 870 <oled_wait>
     a78:	fff48493          	addi	s1,s1,-1
     a7c:	0089a023          	sw	s0,0(s3)
     a80:	00000097          	auipc	ra,0x0
     a84:	df0080e7          	jalr	-528(ra) # 870 <oled_wait>
     a88:	fc049ce3          	bnez	s1,a60 <oled_clear+0x2c>
     a8c:	fff90913          	addi	s2,s2,-1
     a90:	fc0916e3          	bnez	s2,a5c <oled_clear+0x28>
     a94:	01c12083          	lw	ra,28(sp)
     a98:	01812403          	lw	s0,24(sp)
     a9c:	01412483          	lw	s1,20(sp)
     aa0:	01012903          	lw	s2,16(sp)
     aa4:	00c12983          	lw	s3,12(sp)
     aa8:	02010113          	addi	sp,sp,32
     aac:	00008067          	ret

00000ab0 <oled_wait>:
     ab0:	00000013          	nop
     ab4:	00000013          	nop
     ab8:	00000013          	nop
     abc:	00000013          	nop
     ac0:	00000013          	nop
     ac4:	00000013          	nop
     ac8:	00000013          	nop
     acc:	00008067          	ret

00000ad0 <display_framebuffer>:
     ad0:	00006537          	lui	a0,0x6
     ad4:	24050513          	addi	a0,a0,576 # 6240 <framebuffer>
     ad8:	00008067          	ret

00000adc <display_set_cursor>:
     adc:	000067b7          	lui	a5,0x6
     ae0:	fea7a023          	sw	a0,-32(a5) # 5fe0 <cursor_x>
     ae4:	000067b7          	lui	a5,0x6
     ae8:	fcb7ae23          	sw	a1,-36(a5) # 5fdc <cursor_y>
     aec:	00008067          	ret

00000af0 <display_set_front_back_color>:
     af0:	000067b7          	lui	a5,0x6
     af4:	fca78ca3          	sb	a0,-39(a5) # 5fd9 <front_color>
     af8:	000067b7          	lui	a5,0x6
     afc:	fcb78c23          	sb	a1,-40(a5) # 5fd8 <back_color>
     b00:	00008067          	ret

00000b04 <display_putchar>:
     b04:	00a00793          	li	a5,10
     b08:	00006637          	lui	a2,0x6
     b0c:	02f51663          	bne	a0,a5,b38 <display_putchar+0x34>
     b10:	00006737          	lui	a4,0x6
     b14:	fdc72783          	lw	a5,-36(a4) # 5fdc <cursor_y>
     b18:	fe062023          	sw	zero,-32(a2) # 5fe0 <cursor_x>
     b1c:	00878793          	addi	a5,a5,8
     b20:	fcf72e23          	sw	a5,-36(a4)
     b24:	07f00713          	li	a4,127
     b28:	00f75663          	bge	a4,a5,b34 <display_putchar+0x30>
     b2c:	000067b7          	lui	a5,0x6
     b30:	fc07ae23          	sw	zero,-36(a5) # 5fdc <cursor_y>
     b34:	00008067          	ret
     b38:	ff010113          	addi	sp,sp,-16
     b3c:	00812623          	sw	s0,12(sp)
     b40:	00912423          	sw	s1,8(sp)
     b44:	01212223          	sw	s2,4(sp)
     b48:	01f00713          	li	a4,31
     b4c:	fe062783          	lw	a5,-32(a2)
     b50:	08a75863          	bge	a4,a0,be0 <display_putchar+0xdc>
     b54:	00006737          	lui	a4,0x6
     b58:	fd874383          	lbu	t2,-40(a4) # 5fd8 <back_color>
     b5c:	00006737          	lui	a4,0x6
     b60:	fd974403          	lbu	s0,-39(a4) # 5fd9 <front_color>
     b64:	00006737          	lui	a4,0x6
     b68:	fdc72f03          	lw	t5,-36(a4) # 5fdc <cursor_y>
     b6c:	00251693          	slli	a3,a0,0x2
     b70:	00006737          	lui	a4,0x6
     b74:	00a686b3          	add	a3,a3,a0
     b78:	bdc70713          	addi	a4,a4,-1060 # 5bdc <font>
     b7c:	00779313          	slli	t1,a5,0x7
     b80:	00006837          	lui	a6,0x6
     b84:	00d70733          	add	a4,a4,a3
     b88:	28030493          	addi	s1,t1,640
     b8c:	00000693          	li	a3,0
     b90:	00100293          	li	t0,1
     b94:	24080813          	addi	a6,a6,576 # 6240 <framebuffer>
     b98:	00800913          	li	s2,8
     b9c:	00d29fb3          	sll	t6,t0,a3
     ba0:	00df0eb3          	add	t4,t5,a3
     ba4:	00030593          	mv	a1,t1
     ba8:	00070513          	mv	a0,a4
     bac:	f6054883          	lbu	a7,-160(a0)
     bb0:	00038e13          	mv	t3,t2
     bb4:	01f8f8b3          	and	a7,a7,t6
     bb8:	00088463          	beqz	a7,bc0 <display_putchar+0xbc>
     bbc:	00040e13          	mv	t3,s0
     bc0:	00b808b3          	add	a7,a6,a1
     bc4:	01d888b3          	add	a7,a7,t4
     bc8:	01c88023          	sb	t3,0(a7)
     bcc:	08058593          	addi	a1,a1,128
     bd0:	00150513          	addi	a0,a0,1
     bd4:	fc959ce3          	bne	a1,s1,bac <display_putchar+0xa8>
     bd8:	00168693          	addi	a3,a3,1
     bdc:	fd2690e3          	bne	a3,s2,b9c <display_putchar+0x98>
     be0:	00578793          	addi	a5,a5,5
     be4:	07f00713          	li	a4,127
     be8:	00f74663          	blt	a4,a5,bf4 <display_putchar+0xf0>
     bec:	fef62023          	sw	a5,-32(a2)
     bf0:	0240006f          	j	c14 <display_putchar+0x110>
     bf4:	000066b7          	lui	a3,0x6
     bf8:	fdc6a783          	lw	a5,-36(a3) # 5fdc <cursor_y>
     bfc:	fe062023          	sw	zero,-32(a2)
     c00:	00878793          	addi	a5,a5,8
     c04:	fcf6ae23          	sw	a5,-36(a3)
     c08:	00f75663          	bge	a4,a5,c14 <display_putchar+0x110>
     c0c:	000067b7          	lui	a5,0x6
     c10:	fc07ae23          	sw	zero,-36(a5) # 5fdc <cursor_y>
     c14:	00c12403          	lw	s0,12(sp)
     c18:	00812483          	lw	s1,8(sp)
     c1c:	00412903          	lw	s2,4(sp)
     c20:	01010113          	addi	sp,sp,16
     c24:	00008067          	ret

00000c28 <display_refresh>:
     c28:	fe010113          	addi	sp,sp,-32
     c2c:	000067b7          	lui	a5,0x6
     c30:	01212823          	sw	s2,16(sp)
     c34:	bd47a903          	lw	s2,-1068(a5) # 5bd4 <OLED>
     c38:	01312623          	sw	s3,12(sp)
     c3c:	000069b7          	lui	s3,0x6
     c40:	00912a23          	sw	s1,20(sp)
     c44:	01412423          	sw	s4,8(sp)
     c48:	00112e23          	sw	ra,28(sp)
     c4c:	00812c23          	sw	s0,24(sp)
     c50:	00000493          	li	s1,0
     c54:	24098993          	addi	s3,s3,576 # 6240 <framebuffer>
     c58:	00004a37          	lui	s4,0x4
     c5c:	013487b3          	add	a5,s1,s3
     c60:	0007c403          	lbu	s0,0(a5)
     c64:	00148493          	addi	s1,s1,1
     c68:	00245413          	srli	s0,s0,0x2
     c6c:	40046413          	ori	s0,s0,1024
     c70:	00892023          	sw	s0,0(s2)
     c74:	00000097          	auipc	ra,0x0
     c78:	e3c080e7          	jalr	-452(ra) # ab0 <oled_wait>
     c7c:	00892023          	sw	s0,0(s2)
     c80:	00000097          	auipc	ra,0x0
     c84:	e30080e7          	jalr	-464(ra) # ab0 <oled_wait>
     c88:	00892023          	sw	s0,0(s2)
     c8c:	00000097          	auipc	ra,0x0
     c90:	e24080e7          	jalr	-476(ra) # ab0 <oled_wait>
     c94:	fd4494e3          	bne	s1,s4,c5c <display_refresh+0x34>
     c98:	01c12083          	lw	ra,28(sp)
     c9c:	01812403          	lw	s0,24(sp)
     ca0:	01412483          	lw	s1,20(sp)
     ca4:	01012903          	lw	s2,16(sp)
     ca8:	00c12983          	lw	s3,12(sp)
     cac:	00812a03          	lw	s4,8(sp)
     cb0:	02010113          	addi	sp,sp,32
     cb4:	00008067          	ret

00000cb8 <dual_putchar>:
     cb8:	ff010113          	addi	sp,sp,-16
     cbc:	00812423          	sw	s0,8(sp)
     cc0:	00112623          	sw	ra,12(sp)
     cc4:	00050413          	mv	s0,a0
     cc8:	00000097          	auipc	ra,0x0
     ccc:	e3c080e7          	jalr	-452(ra) # b04 <display_putchar>
     cd0:	00040513          	mv	a0,s0
     cd4:	00812403          	lw	s0,8(sp)
     cd8:	00c12083          	lw	ra,12(sp)
     cdc:	01010113          	addi	sp,sp,16
     ce0:	00000317          	auipc	t1,0x0
     ce4:	a5830067          	jr	-1448(t1) # 738 <uart_putchar>

00000ce8 <print_string>:
     ce8:	ff010113          	addi	sp,sp,-16
     cec:	00812423          	sw	s0,8(sp)
     cf0:	00912223          	sw	s1,4(sp)
     cf4:	00112623          	sw	ra,12(sp)
     cf8:	00050413          	mv	s0,a0
     cfc:	000064b7          	lui	s1,0x6
     d00:	00044503          	lbu	a0,0(s0)
     d04:	00051c63          	bnez	a0,d1c <print_string+0x34>
     d08:	00c12083          	lw	ra,12(sp)
     d0c:	00812403          	lw	s0,8(sp)
     d10:	00412483          	lw	s1,4(sp)
     d14:	01010113          	addi	sp,sp,16
     d18:	00008067          	ret
     d1c:	fe44a783          	lw	a5,-28(s1) # 5fe4 <f_putchar>
     d20:	00140413          	addi	s0,s0,1
     d24:	000780e7          	jalr	a5
     d28:	fd9ff06f          	j	d00 <print_string+0x18>

00000d2c <print_dec>:
     d2c:	ee010113          	addi	sp,sp,-288
     d30:	10812c23          	sw	s0,280(sp)
     d34:	11312623          	sw	s3,268(sp)
     d38:	10112e23          	sw	ra,284(sp)
     d3c:	10912a23          	sw	s1,276(sp)
     d40:	11212823          	sw	s2,272(sp)
     d44:	00050413          	mv	s0,a0
     d48:	000069b7          	lui	s3,0x6
     d4c:	fe49a783          	lw	a5,-28(s3) # 5fe4 <f_putchar>
     d50:	06045e63          	bgez	s0,dcc <print_dec+0xa0>
     d54:	02d00513          	li	a0,45
     d58:	000780e7          	jalr	a5
     d5c:	40800433          	neg	s0,s0
     d60:	fedff06f          	j	d4c <print_dec+0x20>
     d64:	00040513          	mv	a0,s0
     d68:	00a00593          	li	a1,10
     d6c:	00000097          	auipc	ra,0x0
     d70:	918080e7          	jalr	-1768(ra) # 684 <__divsi3>
     d74:	00251793          	slli	a5,a0,0x2
     d78:	00f507b3          	add	a5,a0,a5
     d7c:	00179793          	slli	a5,a5,0x1
     d80:	40f40433          	sub	s0,s0,a5
     d84:	00148493          	addi	s1,s1,1
     d88:	fe848fa3          	sb	s0,-1(s1)
     d8c:	00050413          	mv	s0,a0
     d90:	fc041ae3          	bnez	s0,d64 <print_dec+0x38>
     d94:	fd2488e3          	beq	s1,s2,d64 <print_dec+0x38>
     d98:	fff4c503          	lbu	a0,-1(s1)
     d9c:	fe49a783          	lw	a5,-28(s3)
     da0:	fff48493          	addi	s1,s1,-1
     da4:	03050513          	addi	a0,a0,48
     da8:	000780e7          	jalr	a5
     dac:	ff2496e3          	bne	s1,s2,d98 <print_dec+0x6c>
     db0:	11c12083          	lw	ra,284(sp)
     db4:	11812403          	lw	s0,280(sp)
     db8:	11412483          	lw	s1,276(sp)
     dbc:	11012903          	lw	s2,272(sp)
     dc0:	10c12983          	lw	s3,268(sp)
     dc4:	12010113          	addi	sp,sp,288
     dc8:	00008067          	ret
     dcc:	00010493          	mv	s1,sp
     dd0:	00048913          	mv	s2,s1
     dd4:	fbdff06f          	j	d90 <print_dec+0x64>

00000dd8 <print_hex_digits>:
     dd8:	fe010113          	addi	sp,sp,-32
     ddc:	00812c23          	sw	s0,24(sp)
     de0:	01212823          	sw	s2,16(sp)
     de4:	fff58413          	addi	s0,a1,-1
     de8:	00006937          	lui	s2,0x6
     dec:	00912a23          	sw	s1,20(sp)
     df0:	01312623          	sw	s3,12(sp)
     df4:	00112e23          	sw	ra,28(sp)
     df8:	00050493          	mv	s1,a0
     dfc:	00241413          	slli	s0,s0,0x2
     e00:	e4c90913          	addi	s2,s2,-436 # 5e4c <font+0x270>
     e04:	000069b7          	lui	s3,0x6
     e08:	02045063          	bgez	s0,e28 <print_hex_digits+0x50>
     e0c:	01c12083          	lw	ra,28(sp)
     e10:	01812403          	lw	s0,24(sp)
     e14:	01412483          	lw	s1,20(sp)
     e18:	01012903          	lw	s2,16(sp)
     e1c:	00c12983          	lw	s3,12(sp)
     e20:	02010113          	addi	sp,sp,32
     e24:	00008067          	ret
     e28:	0084d7b3          	srl	a5,s1,s0
     e2c:	00f7f793          	andi	a5,a5,15
     e30:	00f907b3          	add	a5,s2,a5
     e34:	fe49a703          	lw	a4,-28(s3) # 5fe4 <f_putchar>
     e38:	0007c503          	lbu	a0,0(a5)
     e3c:	ffc40413          	addi	s0,s0,-4
     e40:	000700e7          	jalr	a4
     e44:	fc5ff06f          	j	e08 <print_hex_digits+0x30>

00000e48 <print_hex>:
     e48:	00800593          	li	a1,8
     e4c:	00000317          	auipc	t1,0x0
     e50:	f8c30067          	jr	-116(t1) # dd8 <print_hex_digits>

00000e54 <printf>:
     e54:	fa010113          	addi	sp,sp,-96
     e58:	04f12a23          	sw	a5,84(sp)
     e5c:	04410793          	addi	a5,sp,68
     e60:	02812c23          	sw	s0,56(sp)
     e64:	02912a23          	sw	s1,52(sp)
     e68:	03312623          	sw	s3,44(sp)
     e6c:	03412423          	sw	s4,40(sp)
     e70:	03512223          	sw	s5,36(sp)
     e74:	03612023          	sw	s6,32(sp)
     e78:	01712e23          	sw	s7,28(sp)
     e7c:	02112e23          	sw	ra,60(sp)
     e80:	03212823          	sw	s2,48(sp)
     e84:	00050413          	mv	s0,a0
     e88:	04b12223          	sw	a1,68(sp)
     e8c:	04c12423          	sw	a2,72(sp)
     e90:	04d12623          	sw	a3,76(sp)
     e94:	04e12823          	sw	a4,80(sp)
     e98:	05012c23          	sw	a6,88(sp)
     e9c:	05112e23          	sw	a7,92(sp)
     ea0:	00f12623          	sw	a5,12(sp)
     ea4:	02500993          	li	s3,37
     ea8:	000064b7          	lui	s1,0x6
     eac:	07300a13          	li	s4,115
     eb0:	07800a93          	li	s5,120
     eb4:	06400b13          	li	s6,100
     eb8:	06300b93          	li	s7,99
     ebc:	00044503          	lbu	a0,0(s0)
     ec0:	02051863          	bnez	a0,ef0 <printf+0x9c>
     ec4:	03c12083          	lw	ra,60(sp)
     ec8:	03812403          	lw	s0,56(sp)
     ecc:	03412483          	lw	s1,52(sp)
     ed0:	03012903          	lw	s2,48(sp)
     ed4:	02c12983          	lw	s3,44(sp)
     ed8:	02812a03          	lw	s4,40(sp)
     edc:	02412a83          	lw	s5,36(sp)
     ee0:	02012b03          	lw	s6,32(sp)
     ee4:	01c12b83          	lw	s7,28(sp)
     ee8:	06010113          	addi	sp,sp,96
     eec:	00008067          	ret
     ef0:	00140913          	addi	s2,s0,1
     ef4:	09351663          	bne	a0,s3,f80 <printf+0x12c>
     ef8:	00144503          	lbu	a0,1(s0)
     efc:	03451263          	bne	a0,s4,f20 <printf+0xcc>
     f00:	00c12783          	lw	a5,12(sp)
     f04:	0007a503          	lw	a0,0(a5)
     f08:	00478713          	addi	a4,a5,4
     f0c:	00e12623          	sw	a4,12(sp)
     f10:	00000097          	auipc	ra,0x0
     f14:	dd8080e7          	jalr	-552(ra) # ce8 <print_string>
     f18:	00190413          	addi	s0,s2,1
     f1c:	fa1ff06f          	j	ebc <printf+0x68>
     f20:	03551063          	bne	a0,s5,f40 <printf+0xec>
     f24:	00c12783          	lw	a5,12(sp)
     f28:	0007a503          	lw	a0,0(a5)
     f2c:	00478713          	addi	a4,a5,4
     f30:	00e12623          	sw	a4,12(sp)
     f34:	00000097          	auipc	ra,0x0
     f38:	f14080e7          	jalr	-236(ra) # e48 <print_hex>
     f3c:	fddff06f          	j	f18 <printf+0xc4>
     f40:	03651063          	bne	a0,s6,f60 <printf+0x10c>
     f44:	00c12783          	lw	a5,12(sp)
     f48:	0007a503          	lw	a0,0(a5)
     f4c:	00478713          	addi	a4,a5,4
     f50:	00e12623          	sw	a4,12(sp)
     f54:	00000097          	auipc	ra,0x0
     f58:	dd8080e7          	jalr	-552(ra) # d2c <print_dec>
     f5c:	fbdff06f          	j	f18 <printf+0xc4>
     f60:	fe44a783          	lw	a5,-28(s1) # 5fe4 <f_putchar>
     f64:	01751a63          	bne	a0,s7,f78 <printf+0x124>
     f68:	00c12703          	lw	a4,12(sp)
     f6c:	00072503          	lw	a0,0(a4)
     f70:	00470693          	addi	a3,a4,4
     f74:	00d12623          	sw	a3,12(sp)
     f78:	000780e7          	jalr	a5
     f7c:	f9dff06f          	j	f18 <printf+0xc4>
     f80:	fe44a783          	lw	a5,-28(s1)
     f84:	00040913          	mv	s2,s0
     f88:	000780e7          	jalr	a5
     f8c:	f8dff06f          	j	f18 <printf+0xc4>

00000f90 <__mulsi3>:
     f90:	00050793          	mv	a5,a0
     f94:	00000513          	li	a0,0
     f98:	00079463          	bnez	a5,fa0 <__mulsi3+0x10>
     f9c:	00008067          	ret
     fa0:	0017f713          	andi	a4,a5,1
     fa4:	00070463          	beqz	a4,fac <__mulsi3+0x1c>
     fa8:	00b50533          	add	a0,a0,a1
     fac:	0017d793          	srli	a5,a5,0x1
     fb0:	00159593          	slli	a1,a1,0x1
     fb4:	fe5ff06f          	j	f98 <__mulsi3+0x8>

00000fb8 <fat_list_insert_last>:
     fb8:	00452783          	lw	a5,4(a0)
     fbc:	04079263          	bnez	a5,1000 <fat_list_insert_last+0x48>
     fc0:	00052783          	lw	a5,0(a0)
     fc4:	00079c63          	bnez	a5,fdc <fat_list_insert_last+0x24>
     fc8:	00b52023          	sw	a1,0(a0)
     fcc:	00b52223          	sw	a1,4(a0)
     fd0:	0005a023          	sw	zero,0(a1)
     fd4:	0005a223          	sw	zero,4(a1)
     fd8:	00008067          	ret
     fdc:	0007a703          	lw	a4,0(a5)
     fe0:	00f5a223          	sw	a5,4(a1)
     fe4:	00e5a023          	sw	a4,0(a1)
     fe8:	00071863          	bnez	a4,ff8 <fat_list_insert_last+0x40>
     fec:	00b52023          	sw	a1,0(a0)
     ff0:	00b7a023          	sw	a1,0(a5)
     ff4:	00008067          	ret
     ff8:	00b72223          	sw	a1,4(a4)
     ffc:	ff5ff06f          	j	ff0 <fat_list_insert_last+0x38>
    1000:	0047a703          	lw	a4,4(a5)
    1004:	00f5a023          	sw	a5,0(a1)
    1008:	00e5a223          	sw	a4,4(a1)
    100c:	0047a703          	lw	a4,4(a5)
    1010:	00071863          	bnez	a4,1020 <fat_list_insert_last+0x68>
    1014:	00b52223          	sw	a1,4(a0)
    1018:	00b7a223          	sw	a1,4(a5)
    101c:	00008067          	ret
    1020:	00b72023          	sw	a1,0(a4)
    1024:	ff5ff06f          	j	1018 <fat_list_insert_last+0x60>

00001028 <FileString_StrCmpNoCase>:
    1028:	00050313          	mv	t1,a0
    102c:	00000793          	li	a5,0
    1030:	01900e13          	li	t3,25
    1034:	00f61663          	bne	a2,a5,1040 <FileString_StrCmpNoCase+0x18>
    1038:	00000513          	li	a0,0
    103c:	0580006f          	j	1094 <FileString_StrCmpNoCase+0x6c>
    1040:	00f30733          	add	a4,t1,a5
    1044:	00074883          	lbu	a7,0(a4)
    1048:	00f58733          	add	a4,a1,a5
    104c:	00074803          	lbu	a6,0(a4)
    1050:	fbf88713          	addi	a4,a7,-65
    1054:	0ff77713          	zext.b	a4,a4
    1058:	00088693          	mv	a3,a7
    105c:	00ee6663          	bltu	t3,a4,1068 <FileString_StrCmpNoCase+0x40>
    1060:	02088693          	addi	a3,a7,32
    1064:	0ff6f693          	zext.b	a3,a3
    1068:	fbf80513          	addi	a0,a6,-65
    106c:	0ff57513          	zext.b	a0,a0
    1070:	00080713          	mv	a4,a6
    1074:	00ae6663          	bltu	t3,a0,1080 <FileString_StrCmpNoCase+0x58>
    1078:	02080713          	addi	a4,a6,32
    107c:	0ff77713          	zext.b	a4,a4
    1080:	40e68533          	sub	a0,a3,a4
    1084:	00e69863          	bne	a3,a4,1094 <FileString_StrCmpNoCase+0x6c>
    1088:	00088663          	beqz	a7,1094 <FileString_StrCmpNoCase+0x6c>
    108c:	00178793          	addi	a5,a5,1
    1090:	fa0812e3          	bnez	a6,1034 <FileString_StrCmpNoCase+0xc>
    1094:	00008067          	ret

00001098 <FileString_GetExtension>:
    1098:	00050713          	mv	a4,a0
    109c:	00050793          	mv	a5,a0
    10a0:	02e00613          	li	a2,46
    10a4:	fff00513          	li	a0,-1
    10a8:	0007c683          	lbu	a3,0(a5)
    10ac:	00069463          	bnez	a3,10b4 <FileString_GetExtension+0x1c>
    10b0:	00008067          	ret
    10b4:	00c69463          	bne	a3,a2,10bc <FileString_GetExtension+0x24>
    10b8:	40e78533          	sub	a0,a5,a4
    10bc:	00178793          	addi	a5,a5,1
    10c0:	fe9ff06f          	j	10a8 <FileString_GetExtension+0x10>

000010c4 <fatfs_fat_writeback>:
    10c4:	00059663          	bnez	a1,10d0 <fatfs_fat_writeback+0xc>
    10c8:	00000513          	li	a0,0
    10cc:	00008067          	ret
    10d0:	2045a703          	lw	a4,516(a1)
    10d4:	ff010113          	addi	sp,sp,-16
    10d8:	00812423          	sw	s0,8(sp)
    10dc:	00112623          	sw	ra,12(sp)
    10e0:	00050793          	mv	a5,a0
    10e4:	00058413          	mv	s0,a1
    10e8:	00100513          	li	a0,1
    10ec:	04070663          	beqz	a4,1138 <fatfs_fat_writeback+0x74>
    10f0:	0387a683          	lw	a3,56(a5)
    10f4:	00069863          	bnez	a3,1104 <fatfs_fat_writeback+0x40>
    10f8:	20042223          	sw	zero,516(s0)
    10fc:	00100513          	li	a0,1
    1100:	0380006f          	j	1138 <fatfs_fat_writeback+0x74>
    1104:	2005a503          	lw	a0,512(a1)
    1108:	0147a703          	lw	a4,20(a5)
    110c:	0207a583          	lw	a1,32(a5)
    1110:	00100613          	li	a2,1
    1114:	40e507b3          	sub	a5,a0,a4
    1118:	00178793          	addi	a5,a5,1
    111c:	00f5f663          	bgeu	a1,a5,1128 <fatfs_fat_writeback+0x64>
    1120:	00b70733          	add	a4,a4,a1
    1124:	40a70633          	sub	a2,a4,a0
    1128:	00040593          	mv	a1,s0
    112c:	000680e7          	jalr	a3
    1130:	fc0514e3          	bnez	a0,10f8 <fatfs_fat_writeback+0x34>
    1134:	00000513          	li	a0,0
    1138:	00c12083          	lw	ra,12(sp)
    113c:	00812403          	lw	s0,8(sp)
    1140:	01010113          	addi	sp,sp,16
    1144:	00008067          	ret

00001148 <fatfs_fat_read_sector>:
    1148:	fe010113          	addi	sp,sp,-32
    114c:	01212823          	sw	s2,16(sp)
    1150:	25452903          	lw	s2,596(a0)
    1154:	00812c23          	sw	s0,24(sp)
    1158:	00912a23          	sw	s1,20(sp)
    115c:	01312623          	sw	s3,12(sp)
    1160:	00112e23          	sw	ra,28(sp)
    1164:	00050993          	mv	s3,a0
    1168:	00058493          	mv	s1,a1
    116c:	00000413          	li	s0,0
    1170:	06091863          	bnez	s2,11e0 <fatfs_fat_read_sector+0x98>
    1174:	2549a783          	lw	a5,596(s3)
    1178:	20f42623          	sw	a5,524(s0)
    117c:	20442783          	lw	a5,516(s0)
    1180:	2489aa23          	sw	s0,596(s3)
    1184:	00078c63          	beqz	a5,119c <fatfs_fat_read_sector+0x54>
    1188:	00040593          	mv	a1,s0
    118c:	00098513          	mv	a0,s3
    1190:	00000097          	auipc	ra,0x0
    1194:	f34080e7          	jalr	-204(ra) # 10c4 <fatfs_fat_writeback>
    1198:	02050463          	beqz	a0,11c0 <fatfs_fat_read_sector+0x78>
    119c:	0349a783          	lw	a5,52(s3)
    11a0:	20942023          	sw	s1,512(s0)
    11a4:	00100613          	li	a2,1
    11a8:	00040593          	mv	a1,s0
    11ac:	00048513          	mv	a0,s1
    11b0:	000780e7          	jalr	a5
    11b4:	06051063          	bnez	a0,1214 <fatfs_fat_read_sector+0xcc>
    11b8:	fff00793          	li	a5,-1
    11bc:	20f42023          	sw	a5,512(s0)
    11c0:	01c12083          	lw	ra,28(sp)
    11c4:	01812403          	lw	s0,24(sp)
    11c8:	01412483          	lw	s1,20(sp)
    11cc:	00c12983          	lw	s3,12(sp)
    11d0:	00090513          	mv	a0,s2
    11d4:	01012903          	lw	s2,16(sp)
    11d8:	02010113          	addi	sp,sp,32
    11dc:	00008067          	ret
    11e0:	20092783          	lw	a5,512(s2)
    11e4:	00f4e663          	bltu	s1,a5,11f0 <fatfs_fat_read_sector+0xa8>
    11e8:	00178713          	addi	a4,a5,1
    11ec:	02e4ea63          	bltu	s1,a4,1220 <fatfs_fat_read_sector+0xd8>
    11f0:	20c92783          	lw	a5,524(s2)
    11f4:	00079663          	bnez	a5,1200 <fatfs_fat_read_sector+0xb8>
    11f8:	00040a63          	beqz	s0,120c <fatfs_fat_read_sector+0xc4>
    11fc:	20042623          	sw	zero,524(s0)
    1200:	00090413          	mv	s0,s2
    1204:	20c92903          	lw	s2,524(s2)
    1208:	f69ff06f          	j	1170 <fatfs_fat_read_sector+0x28>
    120c:	2409aa23          	sw	zero,596(s3)
    1210:	ff1ff06f          	j	1200 <fatfs_fat_read_sector+0xb8>
    1214:	20842423          	sw	s0,520(s0)
    1218:	00040913          	mv	s2,s0
    121c:	fa5ff06f          	j	11c0 <fatfs_fat_read_sector+0x78>
    1220:	40f484b3          	sub	s1,s1,a5
    1224:	00949493          	slli	s1,s1,0x9
    1228:	009904b3          	add	s1,s2,s1
    122c:	20992423          	sw	s1,520(s2)
    1230:	f91ff06f          	j	11c0 <fatfs_fat_read_sector+0x78>

00001234 <fatfs_erase_fat>:
    1234:	ff010113          	addi	sp,sp,-16
    1238:	01212023          	sw	s2,0(sp)
    123c:	04450913          	addi	s2,a0,68
    1240:	00812423          	sw	s0,8(sp)
    1244:	00912223          	sw	s1,4(sp)
    1248:	00050413          	mv	s0,a0
    124c:	00058493          	mv	s1,a1
    1250:	20000613          	li	a2,512
    1254:	00000593          	li	a1,0
    1258:	00090513          	mv	a0,s2
    125c:	00112623          	sw	ra,12(sp)
    1260:	fffff097          	auipc	ra,0xfffff
    1264:	500080e7          	jalr	1280(ra) # 760 <memset>
    1268:	04049063          	bnez	s1,12a8 <fatfs_erase_fat+0x74>
    126c:	ff800793          	li	a5,-8
    1270:	04f42223          	sw	a5,68(s0)
    1274:	03842783          	lw	a5,56(s0)
    1278:	01442503          	lw	a0,20(s0)
    127c:	00100613          	li	a2,1
    1280:	00090593          	mv	a1,s2
    1284:	000780e7          	jalr	a5
    1288:	04051063          	bnez	a0,12c8 <fatfs_erase_fat+0x94>
    128c:	00000513          	li	a0,0
    1290:	00c12083          	lw	ra,12(sp)
    1294:	00812403          	lw	s0,8(sp)
    1298:	00412483          	lw	s1,4(sp)
    129c:	00012903          	lw	s2,0(sp)
    12a0:	01010113          	addi	sp,sp,16
    12a4:	00008067          	ret
    12a8:	100007b7          	lui	a5,0x10000
    12ac:	ff878713          	addi	a4,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    12b0:	04e42223          	sw	a4,68(s0)
    12b4:	fff78793          	addi	a5,a5,-1
    12b8:	fff00713          	li	a4,-1
    12bc:	04e42423          	sw	a4,72(s0)
    12c0:	04f42623          	sw	a5,76(s0)
    12c4:	fb1ff06f          	j	1274 <fatfs_erase_fat+0x40>
    12c8:	20000613          	li	a2,512
    12cc:	00000593          	li	a1,0
    12d0:	00090513          	mv	a0,s2
    12d4:	fffff097          	auipc	ra,0xfffff
    12d8:	48c080e7          	jalr	1164(ra) # 760 <memset>
    12dc:	00100493          	li	s1,1
    12e0:	02042583          	lw	a1,32(s0)
    12e4:	02c44503          	lbu	a0,44(s0)
    12e8:	00000097          	auipc	ra,0x0
    12ec:	ca8080e7          	jalr	-856(ra) # f90 <__mulsi3>
    12f0:	00a4e663          	bltu	s1,a0,12fc <fatfs_erase_fat+0xc8>
    12f4:	00100513          	li	a0,1
    12f8:	f99ff06f          	j	1290 <fatfs_erase_fat+0x5c>
    12fc:	01442503          	lw	a0,20(s0)
    1300:	03842783          	lw	a5,56(s0)
    1304:	00100613          	li	a2,1
    1308:	00090593          	mv	a1,s2
    130c:	00a48533          	add	a0,s1,a0
    1310:	000780e7          	jalr	a5
    1314:	f6050ce3          	beqz	a0,128c <fatfs_erase_fat+0x58>
    1318:	00148493          	addi	s1,s1,1
    131c:	fc5ff06f          	j	12e0 <fatfs_erase_fat+0xac>

00001320 <fatfs_erase_sectors>:
    1320:	fe010113          	addi	sp,sp,-32
    1324:	01412423          	sw	s4,8(sp)
    1328:	04450a13          	addi	s4,a0,68
    132c:	00912a23          	sw	s1,20(sp)
    1330:	01212823          	sw	s2,16(sp)
    1334:	01312623          	sw	s3,12(sp)
    1338:	00050493          	mv	s1,a0
    133c:	00058993          	mv	s3,a1
    1340:	00060913          	mv	s2,a2
    1344:	00000593          	li	a1,0
    1348:	20000613          	li	a2,512
    134c:	000a0513          	mv	a0,s4
    1350:	00812c23          	sw	s0,24(sp)
    1354:	00112e23          	sw	ra,28(sp)
    1358:	00000413          	li	s0,0
    135c:	fffff097          	auipc	ra,0xfffff
    1360:	404080e7          	jalr	1028(ra) # 760 <memset>
    1364:	03244463          	blt	s0,s2,138c <fatfs_erase_sectors+0x6c>
    1368:	00100513          	li	a0,1
    136c:	01c12083          	lw	ra,28(sp)
    1370:	01812403          	lw	s0,24(sp)
    1374:	01412483          	lw	s1,20(sp)
    1378:	01012903          	lw	s2,16(sp)
    137c:	00c12983          	lw	s3,12(sp)
    1380:	00812a03          	lw	s4,8(sp)
    1384:	02010113          	addi	sp,sp,32
    1388:	00008067          	ret
    138c:	0384a783          	lw	a5,56(s1)
    1390:	00100613          	li	a2,1
    1394:	000a0593          	mv	a1,s4
    1398:	01340533          	add	a0,s0,s3
    139c:	000780e7          	jalr	a5
    13a0:	fc0506e3          	beqz	a0,136c <fatfs_erase_sectors+0x4c>
    13a4:	00140413          	addi	s0,s0,1
    13a8:	fbdff06f          	j	1364 <fatfs_erase_sectors+0x44>

000013ac <_allocate_file>:
    13ac:	ff010113          	addi	sp,sp,-16
    13b0:	000067b7          	lui	a5,0x6
    13b4:	00812423          	sw	s0,8(sp)
    13b8:	fe87a403          	lw	s0,-24(a5) # 5fe8 <_free_file_list>
    13bc:	00112623          	sw	ra,12(sp)
    13c0:	02040e63          	beqz	s0,13fc <_allocate_file+0x50>
    13c4:	00042703          	lw	a4,0(s0)
    13c8:	00442683          	lw	a3,4(s0)
    13cc:	fe878793          	addi	a5,a5,-24
    13d0:	04071063          	bnez	a4,1410 <_allocate_file+0x64>
    13d4:	00d7a023          	sw	a3,0(a5)
    13d8:	00442683          	lw	a3,4(s0)
    13dc:	02069e63          	bnez	a3,1418 <_allocate_file+0x6c>
    13e0:	00e7a223          	sw	a4,4(a5)
    13e4:	00006537          	lui	a0,0x6
    13e8:	00040593          	mv	a1,s0
    13ec:	ff050513          	addi	a0,a0,-16 # 5ff0 <_open_file_list>
    13f0:	00000097          	auipc	ra,0x0
    13f4:	bc8080e7          	jalr	-1080(ra) # fb8 <fat_list_insert_last>
    13f8:	bc440413          	addi	s0,s0,-1084
    13fc:	00c12083          	lw	ra,12(sp)
    1400:	00040513          	mv	a0,s0
    1404:	00812403          	lw	s0,8(sp)
    1408:	01010113          	addi	sp,sp,16
    140c:	00008067          	ret
    1410:	00d72223          	sw	a3,4(a4)
    1414:	fc5ff06f          	j	13d8 <_allocate_file+0x2c>
    1418:	00e6a023          	sw	a4,0(a3)
    141c:	fc9ff06f          	j	13e4 <_allocate_file+0x38>

00001420 <_free_file>:
    1420:	43c52783          	lw	a5,1084(a0)
    1424:	44052703          	lw	a4,1088(a0)
    1428:	43c50593          	addi	a1,a0,1084
    142c:	02079663          	bnez	a5,1458 <_free_file+0x38>
    1430:	000066b7          	lui	a3,0x6
    1434:	fee6a823          	sw	a4,-16(a3) # 5ff0 <_open_file_list>
    1438:	44052703          	lw	a4,1088(a0)
    143c:	02071263          	bnez	a4,1460 <_free_file+0x40>
    1440:	00006737          	lui	a4,0x6
    1444:	fef72a23          	sw	a5,-12(a4) # 5ff4 <_open_file_list+0x4>
    1448:	00006537          	lui	a0,0x6
    144c:	fe850513          	addi	a0,a0,-24 # 5fe8 <_free_file_list>
    1450:	00000317          	auipc	t1,0x0
    1454:	b6830067          	jr	-1176(t1) # fb8 <fat_list_insert_last>
    1458:	00e7a223          	sw	a4,4(a5)
    145c:	fddff06f          	j	1438 <_free_file+0x18>
    1460:	00f72023          	sw	a5,0(a4)
    1464:	fe5ff06f          	j	1448 <_free_file+0x28>

00001468 <fatfs_lba_of_cluster>:
    1468:	ff010113          	addi	sp,sp,-16
    146c:	00812423          	sw	s0,8(sp)
    1470:	00050413          	mv	s0,a0
    1474:	00058513          	mv	a0,a1
    1478:	00044583          	lbu	a1,0(s0)
    147c:	ffe50513          	addi	a0,a0,-2
    1480:	00112623          	sw	ra,12(sp)
    1484:	00000097          	auipc	ra,0x0
    1488:	b0c080e7          	jalr	-1268(ra) # f90 <__mulsi3>
    148c:	00442783          	lw	a5,4(s0)
    1490:	00f50533          	add	a0,a0,a5
    1494:	03042783          	lw	a5,48(s0)
    1498:	00079863          	bnez	a5,14a8 <fatfs_lba_of_cluster+0x40>
    149c:	02845783          	lhu	a5,40(s0)
    14a0:	4047d793          	srai	a5,a5,0x4
    14a4:	00f50533          	add	a0,a0,a5
    14a8:	00c12083          	lw	ra,12(sp)
    14ac:	00812403          	lw	s0,8(sp)
    14b0:	01010113          	addi	sp,sp,16
    14b4:	00008067          	ret

000014b8 <fatfs_sector_read>:
    14b8:	03452783          	lw	a5,52(a0)
    14bc:	00058713          	mv	a4,a1
    14c0:	00070513          	mv	a0,a4
    14c4:	00060593          	mv	a1,a2
    14c8:	00068613          	mv	a2,a3
    14cc:	00078067          	jr	a5

000014d0 <fatfs_sector_write>:
    14d0:	03852783          	lw	a5,56(a0)
    14d4:	00058713          	mv	a4,a1
    14d8:	00070513          	mv	a0,a4
    14dc:	00060593          	mv	a1,a2
    14e0:	00068613          	mv	a2,a3
    14e4:	00078067          	jr	a5

000014e8 <fatfs_read_sector>:
    14e8:	03052783          	lw	a5,48(a0)
    14ec:	ff010113          	addi	sp,sp,-16
    14f0:	00812423          	sw	s0,8(sp)
    14f4:	00912223          	sw	s1,4(sp)
    14f8:	01212023          	sw	s2,0(sp)
    14fc:	00112623          	sw	ra,12(sp)
    1500:	00f5e7b3          	or	a5,a1,a5
    1504:	00050413          	mv	s0,a0
    1508:	00060493          	mv	s1,a2
    150c:	00068913          	mv	s2,a3
    1510:	04079263          	bnez	a5,1554 <fatfs_read_sector+0x6c>
    1514:	01052783          	lw	a5,16(a0)
    1518:	04f67c63          	bgeu	a2,a5,1570 <fatfs_read_sector+0x88>
    151c:	01c52503          	lw	a0,28(a0)
    1520:	00c42783          	lw	a5,12(s0)
    1524:	00f50533          	add	a0,a0,a5
    1528:	03442783          	lw	a5,52(s0)
    152c:	00a48533          	add	a0,s1,a0
    1530:	02090863          	beqz	s2,1560 <fatfs_read_sector+0x78>
    1534:	00100613          	li	a2,1
    1538:	00090593          	mv	a1,s2
    153c:	00812403          	lw	s0,8(sp)
    1540:	00c12083          	lw	ra,12(sp)
    1544:	00412483          	lw	s1,4(sp)
    1548:	00012903          	lw	s2,0(sp)
    154c:	01010113          	addi	sp,sp,16
    1550:	00078067          	jr	a5
    1554:	00000097          	auipc	ra,0x0
    1558:	f14080e7          	jalr	-236(ra) # 1468 <fatfs_lba_of_cluster>
    155c:	fcdff06f          	j	1528 <fatfs_read_sector+0x40>
    1560:	24a42223          	sw	a0,580(s0)
    1564:	00100613          	li	a2,1
    1568:	04440593          	addi	a1,s0,68
    156c:	fd1ff06f          	j	153c <fatfs_read_sector+0x54>
    1570:	00c12083          	lw	ra,12(sp)
    1574:	00812403          	lw	s0,8(sp)
    1578:	00412483          	lw	s1,4(sp)
    157c:	00012903          	lw	s2,0(sp)
    1580:	00000513          	li	a0,0
    1584:	01010113          	addi	sp,sp,16
    1588:	00008067          	ret

0000158c <fatfs_write_sector>:
    158c:	03852783          	lw	a5,56(a0)
    1590:	0a078863          	beqz	a5,1640 <fatfs_write_sector+0xb4>
    1594:	fe010113          	addi	sp,sp,-32
    1598:	01212823          	sw	s2,16(sp)
    159c:	00068913          	mv	s2,a3
    15a0:	03052683          	lw	a3,48(a0)
    15a4:	00812c23          	sw	s0,24(sp)
    15a8:	00912a23          	sw	s1,20(sp)
    15ac:	00112e23          	sw	ra,28(sp)
    15b0:	00d5e733          	or	a4,a1,a3
    15b4:	00050413          	mv	s0,a0
    15b8:	00060493          	mv	s1,a2
    15bc:	04071063          	bnez	a4,15fc <fatfs_write_sector+0x70>
    15c0:	01052703          	lw	a4,16(a0)
    15c4:	06e67063          	bgeu	a2,a4,1624 <fatfs_write_sector+0x98>
    15c8:	01c52503          	lw	a0,28(a0)
    15cc:	00c42703          	lw	a4,12(s0)
    15d0:	00e50533          	add	a0,a0,a4
    15d4:	00c50533          	add	a0,a0,a2
    15d8:	02090e63          	beqz	s2,1614 <fatfs_write_sector+0x88>
    15dc:	00100613          	li	a2,1
    15e0:	00090593          	mv	a1,s2
    15e4:	01812403          	lw	s0,24(sp)
    15e8:	01c12083          	lw	ra,28(sp)
    15ec:	01412483          	lw	s1,20(sp)
    15f0:	01012903          	lw	s2,16(sp)
    15f4:	02010113          	addi	sp,sp,32
    15f8:	00078067          	jr	a5
    15fc:	00f12623          	sw	a5,12(sp)
    1600:	00000097          	auipc	ra,0x0
    1604:	e68080e7          	jalr	-408(ra) # 1468 <fatfs_lba_of_cluster>
    1608:	00c12783          	lw	a5,12(sp)
    160c:	00a48533          	add	a0,s1,a0
    1610:	fc9ff06f          	j	15d8 <fatfs_write_sector+0x4c>
    1614:	24a42223          	sw	a0,580(s0)
    1618:	00100613          	li	a2,1
    161c:	04440593          	addi	a1,s0,68
    1620:	fc5ff06f          	j	15e4 <fatfs_write_sector+0x58>
    1624:	01c12083          	lw	ra,28(sp)
    1628:	01812403          	lw	s0,24(sp)
    162c:	01412483          	lw	s1,20(sp)
    1630:	01012903          	lw	s2,16(sp)
    1634:	00000513          	li	a0,0
    1638:	02010113          	addi	sp,sp,32
    163c:	00008067          	ret
    1640:	00000513          	li	a0,0
    1644:	00008067          	ret

00001648 <fatfs_show_details>:
    1648:	ff010113          	addi	sp,sp,-16
    164c:	00812423          	sw	s0,8(sp)
    1650:	00050413          	mv	s0,a0
    1654:	00006537          	lui	a0,0x6
    1658:	e7050513          	addi	a0,a0,-400 # 5e70 <font+0x294>
    165c:	00112623          	sw	ra,12(sp)
    1660:	fffff097          	auipc	ra,0xfffff
    1664:	7f4080e7          	jalr	2036(ra) # e54 <printf>
    1668:	03042703          	lw	a4,48(s0)
    166c:	00100793          	li	a5,1
    1670:	06f70c63          	beq	a4,a5,16e8 <fatfs_show_details+0xa0>
    1674:	000065b7          	lui	a1,0x6
    1678:	e6858593          	addi	a1,a1,-408 # 5e68 <font+0x28c>
    167c:	00006537          	lui	a0,0x6
    1680:	e8050513          	addi	a0,a0,-384 # 5e80 <font+0x2a4>
    1684:	fffff097          	auipc	ra,0xfffff
    1688:	7d0080e7          	jalr	2000(ra) # e54 <printf>
    168c:	00842583          	lw	a1,8(s0)
    1690:	00006537          	lui	a0,0x6
    1694:	e8c50513          	addi	a0,a0,-372 # 5e8c <font+0x2b0>
    1698:	fffff097          	auipc	ra,0xfffff
    169c:	7bc080e7          	jalr	1980(ra) # e54 <printf>
    16a0:	01442583          	lw	a1,20(s0)
    16a4:	00006537          	lui	a0,0x6
    16a8:	eac50513          	addi	a0,a0,-340 # 5eac <font+0x2d0>
    16ac:	fffff097          	auipc	ra,0xfffff
    16b0:	7a8080e7          	jalr	1960(ra) # e54 <printf>
    16b4:	00442583          	lw	a1,4(s0)
    16b8:	00006537          	lui	a0,0x6
    16bc:	ec450513          	addi	a0,a0,-316 # 5ec4 <font+0x2e8>
    16c0:	fffff097          	auipc	ra,0xfffff
    16c4:	794080e7          	jalr	1940(ra) # e54 <printf>
    16c8:	00044583          	lbu	a1,0(s0)
    16cc:	00812403          	lw	s0,8(sp)
    16d0:	00c12083          	lw	ra,12(sp)
    16d4:	00006537          	lui	a0,0x6
    16d8:	ee050513          	addi	a0,a0,-288 # 5ee0 <font+0x304>
    16dc:	01010113          	addi	sp,sp,16
    16e0:	fffff317          	auipc	t1,0xfffff
    16e4:	77430067          	jr	1908(t1) # e54 <printf>
    16e8:	000065b7          	lui	a1,0x6
    16ec:	e6058593          	addi	a1,a1,-416 # 5e60 <font+0x284>
    16f0:	f8dff06f          	j	167c <fatfs_show_details+0x34>

000016f4 <fatfs_get_root_cluster>:
    16f4:	00852503          	lw	a0,8(a0)
    16f8:	00008067          	ret

000016fc <fatfs_list_directory_start>:
    16fc:	00c5a223          	sw	a2,4(a1)
    1700:	0005a023          	sw	zero,0(a1)
    1704:	00058423          	sb	zero,8(a1)
    1708:	00008067          	ret

0000170c <fatfs_cache_init>:
    170c:	00100513          	li	a0,1
    1710:	00008067          	ret

00001714 <fatfs_cache_get_next_cluster>:
    1714:	00000513          	li	a0,0
    1718:	00008067          	ret

0000171c <fatfs_cache_set_next_cluster>:
    171c:	00100513          	li	a0,1
    1720:	00008067          	ret

00001724 <fl_init>:
    1724:	ff010113          	addi	sp,sp,-16
    1728:	00812423          	sw	s0,8(sp)
    172c:	00006437          	lui	s0,0x6
    1730:	00112623          	sw	ra,12(sp)
    1734:	fe840793          	addi	a5,s0,-24 # 5fe8 <_free_file_list>
    1738:	0007a223          	sw	zero,4(a5)
    173c:	0007a023          	sw	zero,0(a5)
    1740:	0000b5b7          	lui	a1,0xb
    1744:	000067b7          	lui	a5,0x6
    1748:	ff078793          	addi	a5,a5,-16 # 5ff0 <_open_file_list>
    174c:	fe840513          	addi	a0,s0,-24
    1750:	ae458593          	addi	a1,a1,-1308 # aae4 <_files+0x43c>
    1754:	0007a223          	sw	zero,4(a5)
    1758:	0007a023          	sw	zero,0(a5)
    175c:	00000097          	auipc	ra,0x0
    1760:	85c080e7          	jalr	-1956(ra) # fb8 <fat_list_insert_last>
    1764:	0000b5b7          	lui	a1,0xb
    1768:	fe840513          	addi	a0,s0,-24
    176c:	f2858593          	addi	a1,a1,-216 # af28 <_files+0x880>
    1770:	00000097          	auipc	ra,0x0
    1774:	848080e7          	jalr	-1976(ra) # fb8 <fat_list_insert_last>
    1778:	00c12083          	lw	ra,12(sp)
    177c:	00812403          	lw	s0,8(sp)
    1780:	000067b7          	lui	a5,0x6
    1784:	00100713          	li	a4,1
    1788:	fee7ae23          	sw	a4,-4(a5) # 5ffc <_filelib_init>
    178c:	01010113          	addi	sp,sp,16
    1790:	00008067          	ret

00001794 <fl_attach_locks>:
    1794:	0000a7b7          	lui	a5,0xa
    1798:	24078793          	addi	a5,a5,576 # a240 <_fs>
    179c:	02a7ae23          	sw	a0,60(a5)
    17a0:	04b7a023          	sw	a1,64(a5)
    17a4:	00008067          	ret

000017a8 <fl_fseek>:
    17a8:	000067b7          	lui	a5,0x6
    17ac:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    17b0:	fe010113          	addi	sp,sp,-32
    17b4:	00812c23          	sw	s0,24(sp)
    17b8:	00912a23          	sw	s1,20(sp)
    17bc:	01212823          	sw	s2,16(sp)
    17c0:	00112e23          	sw	ra,28(sp)
    17c4:	01312623          	sw	s3,12(sp)
    17c8:	00050413          	mv	s0,a0
    17cc:	00058913          	mv	s2,a1
    17d0:	00060493          	mv	s1,a2
    17d4:	00079663          	bnez	a5,17e0 <fl_fseek+0x38>
    17d8:	00000097          	auipc	ra,0x0
    17dc:	f4c080e7          	jalr	-180(ra) # 1724 <fl_init>
    17e0:	0c040c63          	beqz	s0,18b8 <fl_fseek+0x110>
    17e4:	00200793          	li	a5,2
    17e8:	00f49463          	bne	s1,a5,17f0 <fl_fseek+0x48>
    17ec:	0c091663          	bnez	s2,18b8 <fl_fseek+0x110>
    17f0:	0000a7b7          	lui	a5,0xa
    17f4:	24078713          	addi	a4,a5,576 # a240 <_fs>
    17f8:	03c72703          	lw	a4,60(a4)
    17fc:	24078993          	addi	s3,a5,576
    1800:	00070463          	beqz	a4,1808 <fl_fseek+0x60>
    1804:	000700e7          	jalr	a4
    1808:	fff00793          	li	a5,-1
    180c:	42f42823          	sw	a5,1072(s0)
    1810:	42042a23          	sw	zero,1076(s0)
    1814:	04049463          	bnez	s1,185c <fl_fseek+0xb4>
    1818:	00c42783          	lw	a5,12(s0)
    181c:	01242423          	sw	s2,8(s0)
    1820:	0127e663          	bltu	a5,s2,182c <fl_fseek+0x84>
    1824:	00000493          	li	s1,0
    1828:	0080006f          	j	1830 <fl_fseek+0x88>
    182c:	00f42423          	sw	a5,8(s0)
    1830:	0409a783          	lw	a5,64(s3)
    1834:	00078463          	beqz	a5,183c <fl_fseek+0x94>
    1838:	000780e7          	jalr	a5
    183c:	01c12083          	lw	ra,28(sp)
    1840:	01812403          	lw	s0,24(sp)
    1844:	01012903          	lw	s2,16(sp)
    1848:	00c12983          	lw	s3,12(sp)
    184c:	00048513          	mv	a0,s1
    1850:	01412483          	lw	s1,20(sp)
    1854:	02010113          	addi	sp,sp,32
    1858:	00008067          	ret
    185c:	00100793          	li	a5,1
    1860:	04f49063          	bne	s1,a5,18a0 <fl_fseek+0xf8>
    1864:	00842783          	lw	a5,8(s0)
    1868:	00094e63          	bltz	s2,1884 <fl_fseek+0xdc>
    186c:	00f90933          	add	s2,s2,a5
    1870:	00c42783          	lw	a5,12(s0)
    1874:	01242423          	sw	s2,8(s0)
    1878:	fb27f6e3          	bgeu	a5,s2,1824 <fl_fseek+0x7c>
    187c:	00f42423          	sw	a5,8(s0)
    1880:	fa5ff06f          	j	1824 <fl_fseek+0x7c>
    1884:	41200733          	neg	a4,s2
    1888:	00e7f663          	bgeu	a5,a4,1894 <fl_fseek+0xec>
    188c:	00042423          	sw	zero,8(s0)
    1890:	f95ff06f          	j	1824 <fl_fseek+0x7c>
    1894:	00f90933          	add	s2,s2,a5
    1898:	01242423          	sw	s2,8(s0)
    189c:	f89ff06f          	j	1824 <fl_fseek+0x7c>
    18a0:	00200793          	li	a5,2
    18a4:	00f49663          	bne	s1,a5,18b0 <fl_fseek+0x108>
    18a8:	00c42783          	lw	a5,12(s0)
    18ac:	fd1ff06f          	j	187c <fl_fseek+0xd4>
    18b0:	fff00493          	li	s1,-1
    18b4:	f7dff06f          	j	1830 <fl_fseek+0x88>
    18b8:	fff00493          	li	s1,-1
    18bc:	f81ff06f          	j	183c <fl_fseek+0x94>

000018c0 <fl_fgetpos>:
    18c0:	06050663          	beqz	a0,192c <fl_fgetpos+0x6c>
    18c4:	0000a7b7          	lui	a5,0xa
    18c8:	24078713          	addi	a4,a5,576 # a240 <_fs>
    18cc:	03c72703          	lw	a4,60(a4)
    18d0:	ff010113          	addi	sp,sp,-16
    18d4:	00812423          	sw	s0,8(sp)
    18d8:	00912223          	sw	s1,4(sp)
    18dc:	01212023          	sw	s2,0(sp)
    18e0:	00112623          	sw	ra,12(sp)
    18e4:	00050493          	mv	s1,a0
    18e8:	00058913          	mv	s2,a1
    18ec:	24078413          	addi	s0,a5,576
    18f0:	00070463          	beqz	a4,18f8 <fl_fgetpos+0x38>
    18f4:	000700e7          	jalr	a4
    18f8:	0084a783          	lw	a5,8(s1)
    18fc:	00000513          	li	a0,0
    1900:	00f92023          	sw	a5,0(s2)
    1904:	04042783          	lw	a5,64(s0)
    1908:	00078663          	beqz	a5,1914 <fl_fgetpos+0x54>
    190c:	000780e7          	jalr	a5
    1910:	00000513          	li	a0,0
    1914:	00c12083          	lw	ra,12(sp)
    1918:	00812403          	lw	s0,8(sp)
    191c:	00412483          	lw	s1,4(sp)
    1920:	00012903          	lw	s2,0(sp)
    1924:	01010113          	addi	sp,sp,16
    1928:	00008067          	ret
    192c:	fff00513          	li	a0,-1
    1930:	00008067          	ret

00001934 <fl_ftell>:
    1934:	fe010113          	addi	sp,sp,-32
    1938:	00c10593          	addi	a1,sp,12
    193c:	00112e23          	sw	ra,28(sp)
    1940:	00012623          	sw	zero,12(sp)
    1944:	00000097          	auipc	ra,0x0
    1948:	f7c080e7          	jalr	-132(ra) # 18c0 <fl_fgetpos>
    194c:	01c12083          	lw	ra,28(sp)
    1950:	00c12503          	lw	a0,12(sp)
    1954:	02010113          	addi	sp,sp,32
    1958:	00008067          	ret

0000195c <fl_feof>:
    195c:	06050663          	beqz	a0,19c8 <fl_feof+0x6c>
    1960:	0000a7b7          	lui	a5,0xa
    1964:	24078713          	addi	a4,a5,576 # a240 <_fs>
    1968:	03c72703          	lw	a4,60(a4)
    196c:	fe010113          	addi	sp,sp,-32
    1970:	00812c23          	sw	s0,24(sp)
    1974:	00912a23          	sw	s1,20(sp)
    1978:	00112e23          	sw	ra,28(sp)
    197c:	00050413          	mv	s0,a0
    1980:	24078493          	addi	s1,a5,576
    1984:	00070463          	beqz	a4,198c <fl_feof+0x30>
    1988:	000700e7          	jalr	a4
    198c:	00842783          	lw	a5,8(s0)
    1990:	00c42703          	lw	a4,12(s0)
    1994:	40e78533          	sub	a0,a5,a4
    1998:	0404a783          	lw	a5,64(s1)
    199c:	00153513          	seqz	a0,a0
    19a0:	40a00533          	neg	a0,a0
    19a4:	00078863          	beqz	a5,19b4 <fl_feof+0x58>
    19a8:	00a12623          	sw	a0,12(sp)
    19ac:	000780e7          	jalr	a5
    19b0:	00c12503          	lw	a0,12(sp)
    19b4:	01c12083          	lw	ra,28(sp)
    19b8:	01812403          	lw	s0,24(sp)
    19bc:	01412483          	lw	s1,20(sp)
    19c0:	02010113          	addi	sp,sp,32
    19c4:	00008067          	ret
    19c8:	fff00513          	li	a0,-1
    19cc:	00008067          	ret

000019d0 <fl_closedir>:
    19d0:	00000513          	li	a0,0
    19d4:	00008067          	ret

000019d8 <fatfs_lfn_cache_init>:
    19d8:	100502a3          	sb	zero,261(a0)
    19dc:	04058663          	beqz	a1,1a28 <fatfs_lfn_cache_init+0x50>
    19e0:	ff010113          	addi	sp,sp,-16
    19e4:	00812423          	sw	s0,8(sp)
    19e8:	00912223          	sw	s1,4(sp)
    19ec:	00112623          	sw	ra,12(sp)
    19f0:	00050413          	mv	s0,a0
    19f4:	10450493          	addi	s1,a0,260
    19f8:	00040513          	mv	a0,s0
    19fc:	00d00613          	li	a2,13
    1a00:	00000593          	li	a1,0
    1a04:	00d40413          	addi	s0,s0,13
    1a08:	fffff097          	auipc	ra,0xfffff
    1a0c:	d58080e7          	jalr	-680(ra) # 760 <memset>
    1a10:	fe9414e3          	bne	s0,s1,19f8 <fatfs_lfn_cache_init+0x20>
    1a14:	00c12083          	lw	ra,12(sp)
    1a18:	00812403          	lw	s0,8(sp)
    1a1c:	00412483          	lw	s1,4(sp)
    1a20:	01010113          	addi	sp,sp,16
    1a24:	00008067          	ret
    1a28:	00008067          	ret

00001a2c <fatfs_lfn_cache_entry>:
    1a2c:	0005c783          	lbu	a5,0(a1)
    1a30:	01300693          	li	a3,19
    1a34:	01f7f793          	andi	a5,a5,31
    1a38:	fff78713          	addi	a4,a5,-1
    1a3c:	0ff77613          	zext.b	a2,a4
    1a40:	0ac6ea63          	bltu	a3,a2,1af4 <fatfs_lfn_cache_entry+0xc8>
    1a44:	10554683          	lbu	a3,261(a0)
    1a48:	00069463          	bnez	a3,1a50 <fatfs_lfn_cache_entry+0x24>
    1a4c:	10f502a3          	sb	a5,261(a0)
    1a50:	00171793          	slli	a5,a4,0x1
    1a54:	00e787b3          	add	a5,a5,a4
    1a58:	0015c683          	lbu	a3,1(a1)
    1a5c:	00279793          	slli	a5,a5,0x2
    1a60:	00e787b3          	add	a5,a5,a4
    1a64:	00f50533          	add	a0,a0,a5
    1a68:	00d50023          	sb	a3,0(a0)
    1a6c:	0035c783          	lbu	a5,3(a1)
    1a70:	0ff00713          	li	a4,255
    1a74:	02000693          	li	a3,32
    1a78:	00f500a3          	sb	a5,1(a0)
    1a7c:	0055c783          	lbu	a5,5(a1)
    1a80:	00f50123          	sb	a5,2(a0)
    1a84:	0075c783          	lbu	a5,7(a1)
    1a88:	00f501a3          	sb	a5,3(a0)
    1a8c:	0095c783          	lbu	a5,9(a1)
    1a90:	00f50223          	sb	a5,4(a0)
    1a94:	00e5c783          	lbu	a5,14(a1)
    1a98:	00f502a3          	sb	a5,5(a0)
    1a9c:	0105c783          	lbu	a5,16(a1)
    1aa0:	00f50323          	sb	a5,6(a0)
    1aa4:	0125c783          	lbu	a5,18(a1)
    1aa8:	00f503a3          	sb	a5,7(a0)
    1aac:	0145c783          	lbu	a5,20(a1)
    1ab0:	00f50423          	sb	a5,8(a0)
    1ab4:	0165c783          	lbu	a5,22(a1)
    1ab8:	00f504a3          	sb	a5,9(a0)
    1abc:	0185c783          	lbu	a5,24(a1)
    1ac0:	00f50523          	sb	a5,10(a0)
    1ac4:	01c5c783          	lbu	a5,28(a1)
    1ac8:	00f505a3          	sb	a5,11(a0)
    1acc:	01e5c783          	lbu	a5,30(a1)
    1ad0:	00f50623          	sb	a5,12(a0)
    1ad4:	00d00793          	li	a5,13
    1ad8:	00054603          	lbu	a2,0(a0)
    1adc:	00e61463          	bne	a2,a4,1ae4 <fatfs_lfn_cache_entry+0xb8>
    1ae0:	00d50023          	sb	a3,0(a0)
    1ae4:	fff78793          	addi	a5,a5,-1
    1ae8:	0ff7f793          	zext.b	a5,a5
    1aec:	00150513          	addi	a0,a0,1
    1af0:	fe0794e3          	bnez	a5,1ad8 <fatfs_lfn_cache_entry+0xac>
    1af4:	00008067          	ret

00001af8 <fatfs_lfn_cache_get>:
    1af8:	10554703          	lbu	a4,261(a0)
    1afc:	01400793          	li	a5,20
    1b00:	00f71663          	bne	a4,a5,1b0c <fatfs_lfn_cache_get+0x14>
    1b04:	10050223          	sb	zero,260(a0)
    1b08:	00008067          	ret
    1b0c:	02070063          	beqz	a4,1b2c <fatfs_lfn_cache_get+0x34>
    1b10:	00171793          	slli	a5,a4,0x1
    1b14:	00e787b3          	add	a5,a5,a4
    1b18:	00279793          	slli	a5,a5,0x2
    1b1c:	00e787b3          	add	a5,a5,a4
    1b20:	00f507b3          	add	a5,a0,a5
    1b24:	00078023          	sb	zero,0(a5)
    1b28:	00008067          	ret
    1b2c:	00050023          	sb	zero,0(a0)
    1b30:	00008067          	ret

00001b34 <fatfs_entry_lfn_text>:
    1b34:	00b54503          	lbu	a0,11(a0)
    1b38:	00f57513          	andi	a0,a0,15
    1b3c:	ff150513          	addi	a0,a0,-15
    1b40:	00153513          	seqz	a0,a0
    1b44:	00008067          	ret

00001b48 <fatfs_entry_lfn_invalid>:
    1b48:	00054703          	lbu	a4,0(a0)
    1b4c:	00050793          	mv	a5,a0
    1b50:	02070463          	beqz	a4,1b78 <fatfs_entry_lfn_invalid+0x30>
    1b54:	0e500693          	li	a3,229
    1b58:	00100513          	li	a0,1
    1b5c:	02d70063          	beq	a4,a3,1b7c <fatfs_entry_lfn_invalid+0x34>
    1b60:	00b7c783          	lbu	a5,11(a5)
    1b64:	00800713          	li	a4,8
    1b68:	00e78a63          	beq	a5,a4,1b7c <fatfs_entry_lfn_invalid+0x34>
    1b6c:	0067f793          	andi	a5,a5,6
    1b70:	00f03533          	snez	a0,a5
    1b74:	00008067          	ret
    1b78:	00100513          	li	a0,1
    1b7c:	00008067          	ret

00001b80 <fatfs_entry_lfn_exists>:
    1b80:	00b5c783          	lbu	a5,11(a1)
    1b84:	00f00693          	li	a3,15
    1b88:	00050713          	mv	a4,a0
    1b8c:	02d78a63          	beq	a5,a3,1bc0 <fatfs_entry_lfn_exists+0x40>
    1b90:	0005c683          	lbu	a3,0(a1)
    1b94:	00000513          	li	a0,0
    1b98:	02068663          	beqz	a3,1bc4 <fatfs_entry_lfn_exists+0x44>
    1b9c:	0e500613          	li	a2,229
    1ba0:	02c68263          	beq	a3,a2,1bc4 <fatfs_entry_lfn_exists+0x44>
    1ba4:	00800693          	li	a3,8
    1ba8:	00d78e63          	beq	a5,a3,1bc4 <fatfs_entry_lfn_exists+0x44>
    1bac:	0067f793          	andi	a5,a5,6
    1bb0:	00079a63          	bnez	a5,1bc4 <fatfs_entry_lfn_exists+0x44>
    1bb4:	10574503          	lbu	a0,261(a4)
    1bb8:	00a03533          	snez	a0,a0
    1bbc:	00008067          	ret
    1bc0:	00000513          	li	a0,0
    1bc4:	00008067          	ret

00001bc8 <fatfs_entry_sfn_only>:
    1bc8:	00b54783          	lbu	a5,11(a0)
    1bcc:	00f00713          	li	a4,15
    1bd0:	02e78663          	beq	a5,a4,1bfc <fatfs_entry_sfn_only+0x34>
    1bd4:	00054703          	lbu	a4,0(a0)
    1bd8:	00000513          	li	a0,0
    1bdc:	02070263          	beqz	a4,1c00 <fatfs_entry_sfn_only+0x38>
    1be0:	0e500693          	li	a3,229
    1be4:	00d70e63          	beq	a4,a3,1c00 <fatfs_entry_sfn_only+0x38>
    1be8:	00800713          	li	a4,8
    1bec:	00e78a63          	beq	a5,a4,1c00 <fatfs_entry_sfn_only+0x38>
    1bf0:	0067f793          	andi	a5,a5,6
    1bf4:	0017b513          	seqz	a0,a5
    1bf8:	00008067          	ret
    1bfc:	00000513          	li	a0,0
    1c00:	00008067          	ret

00001c04 <fatfs_entry_is_dir>:
    1c04:	00b54503          	lbu	a0,11(a0)
    1c08:	00455513          	srli	a0,a0,0x4
    1c0c:	00157513          	andi	a0,a0,1
    1c10:	00008067          	ret

00001c14 <fatfs_entry_is_file>:
    1c14:	00b54503          	lbu	a0,11(a0)
    1c18:	00555513          	srli	a0,a0,0x5
    1c1c:	00157513          	andi	a0,a0,1
    1c20:	00008067          	ret

00001c24 <fatfs_lfn_entries_required>:
    1c24:	ff010113          	addi	sp,sp,-16
    1c28:	00112623          	sw	ra,12(sp)
    1c2c:	fffff097          	auipc	ra,0xfffff
    1c30:	b74080e7          	jalr	-1164(ra) # 7a0 <strlen>
    1c34:	00050a63          	beqz	a0,1c48 <fatfs_lfn_entries_required+0x24>
    1c38:	00d00593          	li	a1,13
    1c3c:	00c50513          	addi	a0,a0,12
    1c40:	fffff097          	auipc	ra,0xfffff
    1c44:	a44080e7          	jalr	-1468(ra) # 684 <__divsi3>
    1c48:	00c12083          	lw	ra,12(sp)
    1c4c:	01010113          	addi	sp,sp,16
    1c50:	00008067          	ret

00001c54 <fatfs_filename_to_lfn>:
    1c54:	fa010113          	addi	sp,sp,-96
    1c58:	04912a23          	sw	s1,84(sp)
    1c5c:	00058493          	mv	s1,a1
    1c60:	000065b7          	lui	a1,0x6
    1c64:	dbc58593          	addi	a1,a1,-580 # 5dbc <font+0x1e0>
    1c68:	05212823          	sw	s2,80(sp)
    1c6c:	05312623          	sw	s3,76(sp)
    1c70:	00060913          	mv	s2,a2
    1c74:	00050993          	mv	s3,a0
    1c78:	03400613          	li	a2,52
    1c7c:	00c10513          	addi	a0,sp,12
    1c80:	04112e23          	sw	ra,92(sp)
    1c84:	04812c23          	sw	s0,88(sp)
    1c88:	05412423          	sw	s4,72(sp)
    1c8c:	05512223          	sw	s5,68(sp)
    1c90:	05612023          	sw	s6,64(sp)
    1c94:	00068b13          	mv	s6,a3
    1c98:	fffff097          	auipc	ra,0xfffff
    1c9c:	ae4080e7          	jalr	-1308(ra) # 77c <memcpy>
    1ca0:	00098513          	mv	a0,s3
    1ca4:	fffff097          	auipc	ra,0xfffff
    1ca8:	afc080e7          	jalr	-1284(ra) # 7a0 <strlen>
    1cac:	00050a93          	mv	s5,a0
    1cb0:	00098513          	mv	a0,s3
    1cb4:	00000097          	auipc	ra,0x0
    1cb8:	f70080e7          	jalr	-144(ra) # 1c24 <fatfs_lfn_entries_required>
    1cbc:	00191793          	slli	a5,s2,0x1
    1cc0:	012787b3          	add	a5,a5,s2
    1cc4:	00279793          	slli	a5,a5,0x2
    1cc8:	00050a13          	mv	s4,a0
    1ccc:	02000613          	li	a2,32
    1cd0:	00000593          	li	a1,0
    1cd4:	00048513          	mv	a0,s1
    1cd8:	01278433          	add	s0,a5,s2
    1cdc:	fffff097          	auipc	ra,0xfffff
    1ce0:	a84080e7          	jalr	-1404(ra) # 760 <memset>
    1ce4:	00190793          	addi	a5,s2,1
    1ce8:	fffa0a13          	addi	s4,s4,-1 # 3fff <fl_listdirectory+0x63>
    1cec:	0ff7f793          	zext.b	a5,a5
    1cf0:	012a1463          	bne	s4,s2,1cf8 <fatfs_filename_to_lfn+0xa4>
    1cf4:	0407e793          	ori	a5,a5,64
    1cf8:	00f48023          	sb	a5,0(s1)
    1cfc:	00f00793          	li	a5,15
    1d00:	00f485a3          	sb	a5,11(s1)
    1d04:	016486a3          	sb	s6,13(s1)
    1d08:	00c10713          	addi	a4,sp,12
    1d0c:	00040793          	mv	a5,s0
    1d10:	00d40593          	addi	a1,s0,13
    1d14:	fff00613          	li	a2,-1
    1d18:	00072683          	lw	a3,0(a4)
    1d1c:	00d486b3          	add	a3,s1,a3
    1d20:	0557d263          	bge	a5,s5,1d64 <fatfs_filename_to_lfn+0x110>
    1d24:	00f98533          	add	a0,s3,a5
    1d28:	00054503          	lbu	a0,0(a0)
    1d2c:	00a68023          	sb	a0,0(a3)
    1d30:	00178793          	addi	a5,a5,1
    1d34:	00470713          	addi	a4,a4,4
    1d38:	feb790e3          	bne	a5,a1,1d18 <fatfs_filename_to_lfn+0xc4>
    1d3c:	05c12083          	lw	ra,92(sp)
    1d40:	05812403          	lw	s0,88(sp)
    1d44:	05412483          	lw	s1,84(sp)
    1d48:	05012903          	lw	s2,80(sp)
    1d4c:	04c12983          	lw	s3,76(sp)
    1d50:	04812a03          	lw	s4,72(sp)
    1d54:	04412a83          	lw	s5,68(sp)
    1d58:	04012b03          	lw	s6,64(sp)
    1d5c:	06010113          	addi	sp,sp,96
    1d60:	00008067          	ret
    1d64:	00fa9663          	bne	s5,a5,1d70 <fatfs_filename_to_lfn+0x11c>
    1d68:	00068023          	sb	zero,0(a3)
    1d6c:	fc5ff06f          	j	1d30 <fatfs_filename_to_lfn+0xdc>
    1d70:	00c68023          	sb	a2,0(a3)
    1d74:	00c680a3          	sb	a2,1(a3)
    1d78:	fb9ff06f          	j	1d30 <fatfs_filename_to_lfn+0xdc>

00001d7c <fatfs_sfn_create_entry>:
    1d7c:	00000793          	li	a5,0
    1d80:	00b00813          	li	a6,11
    1d84:	00f508b3          	add	a7,a0,a5
    1d88:	0008c303          	lbu	t1,0(a7)
    1d8c:	00f688b3          	add	a7,a3,a5
    1d90:	00178793          	addi	a5,a5,1
    1d94:	00688023          	sb	t1,0(a7)
    1d98:	ff0796e3          	bne	a5,a6,1d84 <fatfs_sfn_create_entry+0x8>
    1d9c:	02000793          	li	a5,32
    1da0:	000686a3          	sb	zero,13(a3)
    1da4:	00068723          	sb	zero,14(a3)
    1da8:	000687a3          	sb	zero,15(a3)
    1dac:	000688a3          	sb	zero,17(a3)
    1db0:	00f68823          	sb	a5,16(a3)
    1db4:	000689a3          	sb	zero,19(a3)
    1db8:	00f68923          	sb	a5,18(a3)
    1dbc:	00068b23          	sb	zero,22(a3)
    1dc0:	00068ba3          	sb	zero,23(a3)
    1dc4:	00068ca3          	sb	zero,25(a3)
    1dc8:	00f68c23          	sb	a5,24(a3)
    1dcc:	00070463          	beqz	a4,1dd4 <fatfs_sfn_create_entry+0x58>
    1dd0:	01000793          	li	a5,16
    1dd4:	00f685a3          	sb	a5,11(a3)
    1dd8:	01065793          	srli	a5,a2,0x10
    1ddc:	00f68a23          	sb	a5,20(a3)
    1de0:	0087d793          	srli	a5,a5,0x8
    1de4:	00f68aa3          	sb	a5,21(a3)
    1de8:	01061793          	slli	a5,a2,0x10
    1dec:	0107d793          	srli	a5,a5,0x10
    1df0:	0087d793          	srli	a5,a5,0x8
    1df4:	00f68da3          	sb	a5,27(a3)
    1df8:	0085d793          	srli	a5,a1,0x8
    1dfc:	00b68e23          	sb	a1,28(a3)
    1e00:	00f68ea3          	sb	a5,29(a3)
    1e04:	0105d793          	srli	a5,a1,0x10
    1e08:	0185d593          	srli	a1,a1,0x18
    1e0c:	00068623          	sb	zero,12(a3)
    1e10:	00c68d23          	sb	a2,26(a3)
    1e14:	00f68f23          	sb	a5,30(a3)
    1e18:	00b68fa3          	sb	a1,31(a3)
    1e1c:	00008067          	ret

00001e20 <fatfs_lfn_create_sfn>:
    1e20:	0005c703          	lbu	a4,0(a1)
    1e24:	02e00793          	li	a5,46
    1e28:	16f70463          	beq	a4,a5,1f90 <fatfs_lfn_create_sfn+0x170>
    1e2c:	fe010113          	addi	sp,sp,-32
    1e30:	00912a23          	sw	s1,20(sp)
    1e34:	00050493          	mv	s1,a0
    1e38:	00058513          	mv	a0,a1
    1e3c:	00112e23          	sw	ra,28(sp)
    1e40:	00812c23          	sw	s0,24(sp)
    1e44:	01212823          	sw	s2,16(sp)
    1e48:	00058413          	mv	s0,a1
    1e4c:	fffff097          	auipc	ra,0xfffff
    1e50:	954080e7          	jalr	-1708(ra) # 7a0 <strlen>
    1e54:	00b00613          	li	a2,11
    1e58:	02000593          	li	a1,32
    1e5c:	00050913          	mv	s2,a0
    1e60:	00048513          	mv	a0,s1
    1e64:	fffff097          	auipc	ra,0xfffff
    1e68:	8fc080e7          	jalr	-1796(ra) # 760 <memset>
    1e6c:	00300613          	li	a2,3
    1e70:	02000593          	li	a1,32
    1e74:	00c10513          	addi	a0,sp,12
    1e78:	fffff097          	auipc	ra,0xfffff
    1e7c:	8e8080e7          	jalr	-1816(ra) # 760 <memset>
    1e80:	fff00713          	li	a4,-1
    1e84:	00000793          	li	a5,0
    1e88:	02e00693          	li	a3,46
    1e8c:	0d27c063          	blt	a5,s2,1f4c <fatfs_lfn_create_sfn+0x12c>
    1e90:	fff00793          	li	a5,-1
    1e94:	0ef70663          	beq	a4,a5,1f80 <fatfs_lfn_create_sfn+0x160>
    1e98:	00170793          	addi	a5,a4,1
    1e9c:	00c10693          	addi	a3,sp,12
    1ea0:	00470613          	addi	a2,a4,4
    1ea4:	0cf61063          	bne	a2,a5,1f64 <fatfs_lfn_create_sfn+0x144>
    1ea8:	00000613          	li	a2,0
    1eac:	00000693          	li	a3,0
    1eb0:	02000813          	li	a6,32
    1eb4:	02e00893          	li	a7,46
    1eb8:	01900313          	li	t1,25
    1ebc:	00800e13          	li	t3,8
    1ec0:	02e6da63          	bge	a3,a4,1ef4 <fatfs_lfn_create_sfn+0xd4>
    1ec4:	00d407b3          	add	a5,s0,a3
    1ec8:	0007c783          	lbu	a5,0(a5)
    1ecc:	03078263          	beq	a5,a6,1ef0 <fatfs_lfn_create_sfn+0xd0>
    1ed0:	03178063          	beq	a5,a7,1ef0 <fatfs_lfn_create_sfn+0xd0>
    1ed4:	f9f78593          	addi	a1,a5,-97
    1ed8:	0ff5f593          	zext.b	a1,a1
    1edc:	00c48533          	add	a0,s1,a2
    1ee0:	00160613          	addi	a2,a2,1
    1ee4:	00b36463          	bltu	t1,a1,1eec <fatfs_lfn_create_sfn+0xcc>
    1ee8:	fe078793          	addi	a5,a5,-32
    1eec:	00f50023          	sb	a5,0(a0)
    1ef0:	09c61c63          	bne	a2,t3,1f88 <fatfs_lfn_create_sfn+0x168>
    1ef4:	00c10793          	addi	a5,sp,12
    1ef8:	00800693          	li	a3,8
    1efc:	01900513          	li	a0,25
    1f00:	00b00593          	li	a1,11
    1f04:	0007c703          	lbu	a4,0(a5)
    1f08:	f9f70613          	addi	a2,a4,-97
    1f0c:	0ff67613          	zext.b	a2,a2
    1f10:	00c56663          	bltu	a0,a2,1f1c <fatfs_lfn_create_sfn+0xfc>
    1f14:	fe070713          	addi	a4,a4,-32
    1f18:	0ff77713          	zext.b	a4,a4
    1f1c:	00d48633          	add	a2,s1,a3
    1f20:	00e60023          	sb	a4,0(a2)
    1f24:	00168693          	addi	a3,a3,1
    1f28:	00178793          	addi	a5,a5,1
    1f2c:	fcb69ce3          	bne	a3,a1,1f04 <fatfs_lfn_create_sfn+0xe4>
    1f30:	01c12083          	lw	ra,28(sp)
    1f34:	01812403          	lw	s0,24(sp)
    1f38:	01412483          	lw	s1,20(sp)
    1f3c:	01012903          	lw	s2,16(sp)
    1f40:	00100513          	li	a0,1
    1f44:	02010113          	addi	sp,sp,32
    1f48:	00008067          	ret
    1f4c:	00f40633          	add	a2,s0,a5
    1f50:	00064603          	lbu	a2,0(a2)
    1f54:	00d61463          	bne	a2,a3,1f5c <fatfs_lfn_create_sfn+0x13c>
    1f58:	00078713          	mv	a4,a5
    1f5c:	00178793          	addi	a5,a5,1
    1f60:	f2dff06f          	j	1e8c <fatfs_lfn_create_sfn+0x6c>
    1f64:	0127d863          	bge	a5,s2,1f74 <fatfs_lfn_create_sfn+0x154>
    1f68:	00f405b3          	add	a1,s0,a5
    1f6c:	0005c583          	lbu	a1,0(a1)
    1f70:	00b68023          	sb	a1,0(a3)
    1f74:	00178793          	addi	a5,a5,1
    1f78:	00168693          	addi	a3,a3,1
    1f7c:	f29ff06f          	j	1ea4 <fatfs_lfn_create_sfn+0x84>
    1f80:	00090713          	mv	a4,s2
    1f84:	f25ff06f          	j	1ea8 <fatfs_lfn_create_sfn+0x88>
    1f88:	00168693          	addi	a3,a3,1
    1f8c:	f35ff06f          	j	1ec0 <fatfs_lfn_create_sfn+0xa0>
    1f90:	00000513          	li	a0,0
    1f94:	00008067          	ret

00001f98 <fatfs_lfn_generate_tail>:
    1f98:	000187b7          	lui	a5,0x18
    1f9c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1fa0:	16c7e063          	bltu	a5,a2,2100 <fatfs_lfn_generate_tail+0x168>
    1fa4:	fa010113          	addi	sp,sp,-96
    1fa8:	04812c23          	sw	s0,88(sp)
    1fac:	04912a23          	sw	s1,84(sp)
    1fb0:	05412423          	sw	s4,72(sp)
    1fb4:	00050493          	mv	s1,a0
    1fb8:	00058a13          	mv	s4,a1
    1fbc:	00060413          	mv	s0,a2
    1fc0:	00000593          	li	a1,0
    1fc4:	00c00613          	li	a2,12
    1fc8:	00410513          	addi	a0,sp,4
    1fcc:	04112e23          	sw	ra,92(sp)
    1fd0:	05212823          	sw	s2,80(sp)
    1fd4:	05512223          	sw	s5,68(sp)
    1fd8:	03712e23          	sw	s7,60(sp)
    1fdc:	05312623          	sw	s3,76(sp)
    1fe0:	05612023          	sw	s6,64(sp)
    1fe4:	ffffe097          	auipc	ra,0xffffe
    1fe8:	77c080e7          	jalr	1916(ra) # 760 <memset>
    1fec:	000065b7          	lui	a1,0x6
    1ff0:	07e00793          	li	a5,126
    1ff4:	01100613          	li	a2,17
    1ff8:	e4c58593          	addi	a1,a1,-436 # 5e4c <font+0x270>
    1ffc:	01c10513          	addi	a0,sp,28
    2000:	01010913          	addi	s2,sp,16
    2004:	00f10223          	sb	a5,4(sp)
    2008:	00090a93          	mv	s5,s2
    200c:	ffffe097          	auipc	ra,0xffffe
    2010:	770080e7          	jalr	1904(ra) # 77c <memcpy>
    2014:	00900b93          	li	s7,9
    2018:	00a00593          	li	a1,10
    201c:	00040513          	mv	a0,s0
    2020:	ffffe097          	auipc	ra,0xffffe
    2024:	6b4080e7          	jalr	1716(ra) # 6d4 <__umodsi3>
    2028:	03050793          	addi	a5,a0,48
    202c:	00278533          	add	a0,a5,sp
    2030:	fec54783          	lbu	a5,-20(a0)
    2034:	00090993          	mv	s3,s2
    2038:	00040513          	mv	a0,s0
    203c:	00a00593          	li	a1,10
    2040:	00f90023          	sb	a5,0(s2)
    2044:	00040b13          	mv	s6,s0
    2048:	ffffe097          	auipc	ra,0xffffe
    204c:	644080e7          	jalr	1604(ra) # 68c <__udivsi3>
    2050:	00190913          	addi	s2,s2,1
    2054:	00050413          	mv	s0,a0
    2058:	fd6be0e3          	bltu	s7,s6,2018 <fatfs_lfn_generate_tail+0x80>
    205c:	00090023          	sb	zero,0(s2)
    2060:	00410713          	addi	a4,sp,4
    2064:	00098793          	mv	a5,s3
    2068:	0007c683          	lbu	a3,0(a5)
    206c:	fff78793          	addi	a5,a5,-1
    2070:	00170713          	addi	a4,a4,1
    2074:	00d70023          	sb	a3,0(a4)
    2078:	ff57f8e3          	bgeu	a5,s5,2068 <fatfs_lfn_generate_tail+0xd0>
    207c:	00100793          	li	a5,1
    2080:	0159e663          	bltu	s3,s5,208c <fatfs_lfn_generate_tail+0xf4>
    2084:	415787b3          	sub	a5,a5,s5
    2088:	00f987b3          	add	a5,s3,a5
    208c:	03078793          	addi	a5,a5,48
    2090:	002787b3          	add	a5,a5,sp
    2094:	000a0593          	mv	a1,s4
    2098:	fc078aa3          	sb	zero,-43(a5)
    209c:	00b00613          	li	a2,11
    20a0:	00048513          	mv	a0,s1
    20a4:	ffffe097          	auipc	ra,0xffffe
    20a8:	6d8080e7          	jalr	1752(ra) # 77c <memcpy>
    20ac:	00410513          	addi	a0,sp,4
    20b0:	ffffe097          	auipc	ra,0xffffe
    20b4:	6f0080e7          	jalr	1776(ra) # 7a0 <strlen>
    20b8:	40a484b3          	sub	s1,s1,a0
    20bc:	00050613          	mv	a2,a0
    20c0:	00410593          	addi	a1,sp,4
    20c4:	00848513          	addi	a0,s1,8
    20c8:	ffffe097          	auipc	ra,0xffffe
    20cc:	6b4080e7          	jalr	1716(ra) # 77c <memcpy>
    20d0:	05c12083          	lw	ra,92(sp)
    20d4:	05812403          	lw	s0,88(sp)
    20d8:	05412483          	lw	s1,84(sp)
    20dc:	05012903          	lw	s2,80(sp)
    20e0:	04c12983          	lw	s3,76(sp)
    20e4:	04812a03          	lw	s4,72(sp)
    20e8:	04412a83          	lw	s5,68(sp)
    20ec:	04012b03          	lw	s6,64(sp)
    20f0:	03c12b83          	lw	s7,60(sp)
    20f4:	00100513          	li	a0,1
    20f8:	06010113          	addi	sp,sp,96
    20fc:	00008067          	ret
    2100:	00000513          	li	a0,0
    2104:	00008067          	ret

00002108 <fatfs_total_path_levels>:
    2108:	00050793          	mv	a5,a0
    210c:	06050463          	beqz	a0,2174 <fatfs_total_path_levels+0x6c>
    2110:	00054703          	lbu	a4,0(a0)
    2114:	02f00693          	li	a3,47
    2118:	00d71863          	bne	a4,a3,2128 <fatfs_total_path_levels+0x20>
    211c:	00150793          	addi	a5,a0,1
    2120:	00000513          	li	a0,0
    2124:	0400006f          	j	2164 <fatfs_total_path_levels+0x5c>
    2128:	00154683          	lbu	a3,1(a0)
    212c:	03a00713          	li	a4,58
    2130:	00e68a63          	beq	a3,a4,2144 <fatfs_total_path_levels+0x3c>
    2134:	00254683          	lbu	a3,2(a0)
    2138:	05c00713          	li	a4,92
    213c:	fff00513          	li	a0,-1
    2140:	02e69c63          	bne	a3,a4,2178 <fatfs_total_path_levels+0x70>
    2144:	00378793          	addi	a5,a5,3
    2148:	05c00713          	li	a4,92
    214c:	fd5ff06f          	j	2120 <fatfs_total_path_levels+0x18>
    2150:	00178793          	addi	a5,a5,1
    2154:	00e68663          	beq	a3,a4,2160 <fatfs_total_path_levels+0x58>
    2158:	0007c683          	lbu	a3,0(a5)
    215c:	fe069ae3          	bnez	a3,2150 <fatfs_total_path_levels+0x48>
    2160:	00150513          	addi	a0,a0,1
    2164:	0007c683          	lbu	a3,0(a5)
    2168:	fe0698e3          	bnez	a3,2158 <fatfs_total_path_levels+0x50>
    216c:	fff50513          	addi	a0,a0,-1
    2170:	00008067          	ret
    2174:	fff00513          	li	a0,-1
    2178:	00008067          	ret

0000217c <fatfs_get_substring>:
    217c:	0c050c63          	beqz	a0,2254 <fatfs_get_substring+0xd8>
    2180:	fe010113          	addi	sp,sp,-32
    2184:	00912a23          	sw	s1,20(sp)
    2188:	00112e23          	sw	ra,28(sp)
    218c:	00812c23          	sw	s0,24(sp)
    2190:	01212823          	sw	s2,16(sp)
    2194:	01312623          	sw	s3,12(sp)
    2198:	01412423          	sw	s4,8(sp)
    219c:	00050793          	mv	a5,a0
    21a0:	00068493          	mv	s1,a3
    21a4:	fff00513          	li	a0,-1
    21a8:	06d05a63          	blez	a3,221c <fatfs_get_substring+0xa0>
    21ac:	0007c983          	lbu	s3,0(a5)
    21b0:	02f00713          	li	a4,47
    21b4:	00058a13          	mv	s4,a1
    21b8:	00060913          	mv	s2,a2
    21bc:	00178413          	addi	s0,a5,1
    21c0:	02e98463          	beq	s3,a4,21e8 <fatfs_get_substring+0x6c>
    21c4:	0017c683          	lbu	a3,1(a5)
    21c8:	03a00713          	li	a4,58
    21cc:	00e68a63          	beq	a3,a4,21e0 <fatfs_get_substring+0x64>
    21d0:	0027c683          	lbu	a3,2(a5)
    21d4:	05c00713          	li	a4,92
    21d8:	fff00513          	li	a0,-1
    21dc:	04e69063          	bne	a3,a4,221c <fatfs_get_substring+0xa0>
    21e0:	00378413          	addi	s0,a5,3
    21e4:	05c00993          	li	s3,92
    21e8:	00040513          	mv	a0,s0
    21ec:	ffffe097          	auipc	ra,0xffffe
    21f0:	5b4080e7          	jalr	1460(ra) # 7a0 <strlen>
    21f4:	00000713          	li	a4,0
    21f8:	00000693          	li	a3,0
    21fc:	00000793          	li	a5,0
    2200:	fff48493          	addi	s1,s1,-1
    2204:	00e905b3          	add	a1,s2,a4
    2208:	02a7ca63          	blt	a5,a0,223c <fatfs_get_substring+0xc0>
    220c:	00058023          	sb	zero,0(a1)
    2210:	00094503          	lbu	a0,0(s2)
    2214:	00153513          	seqz	a0,a0
    2218:	40a00533          	neg	a0,a0
    221c:	01c12083          	lw	ra,28(sp)
    2220:	01812403          	lw	s0,24(sp)
    2224:	01412483          	lw	s1,20(sp)
    2228:	01012903          	lw	s2,16(sp)
    222c:	00c12983          	lw	s3,12(sp)
    2230:	00812a03          	lw	s4,8(sp)
    2234:	02010113          	addi	sp,sp,32
    2238:	00008067          	ret
    223c:	00f40633          	add	a2,s0,a5
    2240:	00064603          	lbu	a2,0(a2)
    2244:	01361c63          	bne	a2,s3,225c <fatfs_get_substring+0xe0>
    2248:	00168693          	addi	a3,a3,1
    224c:	00178793          	addi	a5,a5,1
    2250:	fb5ff06f          	j	2204 <fatfs_get_substring+0x88>
    2254:	fff00513          	li	a0,-1
    2258:	00008067          	ret
    225c:	ff4698e3          	bne	a3,s4,224c <fatfs_get_substring+0xd0>
    2260:	fe9756e3          	bge	a4,s1,224c <fatfs_get_substring+0xd0>
    2264:	00170713          	addi	a4,a4,1
    2268:	00c58023          	sb	a2,0(a1)
    226c:	fe1ff06f          	j	224c <fatfs_get_substring+0xd0>

00002270 <fatfs_split_path>:
    2270:	fd010113          	addi	sp,sp,-48
    2274:	02912223          	sw	s1,36(sp)
    2278:	03212023          	sw	s2,32(sp)
    227c:	01312e23          	sw	s3,28(sp)
    2280:	01412c23          	sw	s4,24(sp)
    2284:	02112623          	sw	ra,44(sp)
    2288:	00068a13          	mv	s4,a3
    228c:	02812423          	sw	s0,40(sp)
    2290:	00050913          	mv	s2,a0
    2294:	00058493          	mv	s1,a1
    2298:	00060993          	mv	s3,a2
    229c:	00e12623          	sw	a4,12(sp)
    22a0:	00000097          	auipc	ra,0x0
    22a4:	e68080e7          	jalr	-408(ra) # 2108 <fatfs_total_path_levels>
    22a8:	fff00793          	li	a5,-1
    22ac:	00c12683          	lw	a3,12(sp)
    22b0:	02f51663          	bne	a0,a5,22dc <fatfs_split_path+0x6c>
    22b4:	fff00413          	li	s0,-1
    22b8:	02c12083          	lw	ra,44(sp)
    22bc:	00040513          	mv	a0,s0
    22c0:	02812403          	lw	s0,40(sp)
    22c4:	02412483          	lw	s1,36(sp)
    22c8:	02012903          	lw	s2,32(sp)
    22cc:	01c12983          	lw	s3,28(sp)
    22d0:	01812a03          	lw	s4,24(sp)
    22d4:	03010113          	addi	sp,sp,48
    22d8:	00008067          	ret
    22dc:	00050413          	mv	s0,a0
    22e0:	00050593          	mv	a1,a0
    22e4:	000a0613          	mv	a2,s4
    22e8:	00090513          	mv	a0,s2
    22ec:	00000097          	auipc	ra,0x0
    22f0:	e90080e7          	jalr	-368(ra) # 217c <fatfs_get_substring>
    22f4:	fc0510e3          	bnez	a0,22b4 <fatfs_split_path+0x44>
    22f8:	00041663          	bnez	s0,2304 <fatfs_split_path+0x94>
    22fc:	00048023          	sb	zero,0(s1)
    2300:	fb9ff06f          	j	22b8 <fatfs_split_path+0x48>
    2304:	00090513          	mv	a0,s2
    2308:	ffffe097          	auipc	ra,0xffffe
    230c:	498080e7          	jalr	1176(ra) # 7a0 <strlen>
    2310:	00050413          	mv	s0,a0
    2314:	000a0513          	mv	a0,s4
    2318:	ffffe097          	auipc	ra,0xffffe
    231c:	488080e7          	jalr	1160(ra) # 7a0 <strlen>
    2320:	40a40433          	sub	s0,s0,a0
    2324:	0089d463          	bge	s3,s0,232c <fatfs_split_path+0xbc>
    2328:	00098413          	mv	s0,s3
    232c:	00040613          	mv	a2,s0
    2330:	00048513          	mv	a0,s1
    2334:	00090593          	mv	a1,s2
    2338:	008484b3          	add	s1,s1,s0
    233c:	ffffe097          	auipc	ra,0xffffe
    2340:	440080e7          	jalr	1088(ra) # 77c <memcpy>
    2344:	00000413          	li	s0,0
    2348:	fe048fa3          	sb	zero,-1(s1)
    234c:	f6dff06f          	j	22b8 <fatfs_split_path+0x48>

00002350 <fatfs_compare_names>:
    2350:	fd010113          	addi	sp,sp,-48
    2354:	02112623          	sw	ra,44(sp)
    2358:	02812423          	sw	s0,40(sp)
    235c:	02912223          	sw	s1,36(sp)
    2360:	03212023          	sw	s2,32(sp)
    2364:	01312e23          	sw	s3,28(sp)
    2368:	00058913          	mv	s2,a1
    236c:	01412c23          	sw	s4,24(sp)
    2370:	01512a23          	sw	s5,20(sp)
    2374:	01612823          	sw	s6,16(sp)
    2378:	00050a13          	mv	s4,a0
    237c:	fffff097          	auipc	ra,0xfffff
    2380:	d1c080e7          	jalr	-740(ra) # 1098 <FileString_GetExtension>
    2384:	00050493          	mv	s1,a0
    2388:	00090513          	mv	a0,s2
    238c:	fffff097          	auipc	ra,0xfffff
    2390:	d0c080e7          	jalr	-756(ra) # 1098 <FileString_GetExtension>
    2394:	fff00793          	li	a5,-1
    2398:	00050413          	mv	s0,a0
    239c:	00000993          	li	s3,0
    23a0:	0af49263          	bne	s1,a5,2444 <fatfs_compare_names+0xf4>
    23a4:	0e951863          	bne	a0,s1,2494 <fatfs_compare_names+0x144>
    23a8:	000a0513          	mv	a0,s4
    23ac:	ffffe097          	auipc	ra,0xffffe
    23b0:	3f4080e7          	jalr	1012(ra) # 7a0 <strlen>
    23b4:	00050493          	mv	s1,a0
    23b8:	00090513          	mv	a0,s2
    23bc:	ffffe097          	auipc	ra,0xffffe
    23c0:	3e4080e7          	jalr	996(ra) # 7a0 <strlen>
    23c4:	00050413          	mv	s0,a0
    23c8:	fff48793          	addi	a5,s1,-1
    23cc:	00fa07b3          	add	a5,s4,a5
    23d0:	40978733          	sub	a4,a5,s1
    23d4:	02000613          	li	a2,32
    23d8:	00078693          	mv	a3,a5
    23dc:	00e78863          	beq	a5,a4,23ec <fatfs_compare_names+0x9c>
    23e0:	0007c583          	lbu	a1,0(a5)
    23e4:	fff78793          	addi	a5,a5,-1
    23e8:	04c58663          	beq	a1,a2,2434 <fatfs_compare_names+0xe4>
    23ec:	fff40793          	addi	a5,s0,-1
    23f0:	00f907b3          	add	a5,s2,a5
    23f4:	40878733          	sub	a4,a5,s0
    23f8:	02000613          	li	a2,32
    23fc:	00078693          	mv	a3,a5
    2400:	00e78863          	beq	a5,a4,2410 <fatfs_compare_names+0xc0>
    2404:	0007c583          	lbu	a1,0(a5)
    2408:	fff78793          	addi	a5,a5,-1
    240c:	02c58863          	beq	a1,a2,243c <fatfs_compare_names+0xec>
    2410:	00000993          	li	s3,0
    2414:	08941063          	bne	s0,s1,2494 <fatfs_compare_names+0x144>
    2418:	00040613          	mv	a2,s0
    241c:	00090593          	mv	a1,s2
    2420:	000a0513          	mv	a0,s4
    2424:	fffff097          	auipc	ra,0xfffff
    2428:	c04080e7          	jalr	-1020(ra) # 1028 <FileString_StrCmpNoCase>
    242c:	00153993          	seqz	s3,a0
    2430:	0640006f          	j	2494 <fatfs_compare_names+0x144>
    2434:	414684b3          	sub	s1,a3,s4
    2438:	fa1ff06f          	j	23d8 <fatfs_compare_names+0x88>
    243c:	41268433          	sub	s0,a3,s2
    2440:	fbdff06f          	j	23fc <fatfs_compare_names+0xac>
    2444:	04f50863          	beq	a0,a5,2494 <fatfs_compare_names+0x144>
    2448:	00148a93          	addi	s5,s1,1
    244c:	015a0ab3          	add	s5,s4,s5
    2450:	00140b13          	addi	s6,s0,1
    2454:	000a8513          	mv	a0,s5
    2458:	ffffe097          	auipc	ra,0xffffe
    245c:	348080e7          	jalr	840(ra) # 7a0 <strlen>
    2460:	01690b33          	add	s6,s2,s6
    2464:	00a12623          	sw	a0,12(sp)
    2468:	000b0513          	mv	a0,s6
    246c:	ffffe097          	auipc	ra,0xffffe
    2470:	334080e7          	jalr	820(ra) # 7a0 <strlen>
    2474:	00c12603          	lw	a2,12(sp)
    2478:	00000993          	li	s3,0
    247c:	00a61c63          	bne	a2,a0,2494 <fatfs_compare_names+0x144>
    2480:	000b0593          	mv	a1,s6
    2484:	000a8513          	mv	a0,s5
    2488:	fffff097          	auipc	ra,0xfffff
    248c:	ba0080e7          	jalr	-1120(ra) # 1028 <FileString_StrCmpNoCase>
    2490:	f2050ce3          	beqz	a0,23c8 <fatfs_compare_names+0x78>
    2494:	02c12083          	lw	ra,44(sp)
    2498:	02812403          	lw	s0,40(sp)
    249c:	02412483          	lw	s1,36(sp)
    24a0:	02012903          	lw	s2,32(sp)
    24a4:	01812a03          	lw	s4,24(sp)
    24a8:	01412a83          	lw	s5,20(sp)
    24ac:	01012b03          	lw	s6,16(sp)
    24b0:	00098513          	mv	a0,s3
    24b4:	01c12983          	lw	s3,28(sp)
    24b8:	03010113          	addi	sp,sp,48
    24bc:	00008067          	ret

000024c0 <_check_file_open>:
    24c0:	fe010113          	addi	sp,sp,-32
    24c4:	000067b7          	lui	a5,0x6
    24c8:	00812c23          	sw	s0,24(sp)
    24cc:	ff07a403          	lw	s0,-16(a5) # 5ff0 <_open_file_list>
    24d0:	00912a23          	sw	s1,20(sp)
    24d4:	01212823          	sw	s2,16(sp)
    24d8:	01312623          	sw	s3,12(sp)
    24dc:	00112e23          	sw	ra,28(sp)
    24e0:	00050493          	mv	s1,a0
    24e4:	01450913          	addi	s2,a0,20
    24e8:	11850993          	addi	s3,a0,280
    24ec:	02041263          	bnez	s0,2510 <_check_file_open+0x50>
    24f0:	00000513          	li	a0,0
    24f4:	01c12083          	lw	ra,28(sp)
    24f8:	01812403          	lw	s0,24(sp)
    24fc:	01412483          	lw	s1,20(sp)
    2500:	01012903          	lw	s2,16(sp)
    2504:	00c12983          	lw	s3,12(sp)
    2508:	02010113          	addi	sp,sp,32
    250c:	00008067          	ret
    2510:	bc440793          	addi	a5,s0,-1084
    2514:	02f48663          	beq	s1,a5,2540 <_check_file_open+0x80>
    2518:	00090593          	mv	a1,s2
    251c:	bd840513          	addi	a0,s0,-1064
    2520:	00000097          	auipc	ra,0x0
    2524:	e30080e7          	jalr	-464(ra) # 2350 <fatfs_compare_names>
    2528:	00050c63          	beqz	a0,2540 <_check_file_open+0x80>
    252c:	00098593          	mv	a1,s3
    2530:	cdc40513          	addi	a0,s0,-804
    2534:	00000097          	auipc	ra,0x0
    2538:	e1c080e7          	jalr	-484(ra) # 2350 <fatfs_compare_names>
    253c:	00051663          	bnez	a0,2548 <_check_file_open+0x88>
    2540:	00442403          	lw	s0,4(s0)
    2544:	fa9ff06f          	j	24ec <_check_file_open+0x2c>
    2548:	00100513          	li	a0,1
    254c:	fa9ff06f          	j	24f4 <_check_file_open+0x34>

00002550 <fatfs_string_ends_with_slash>:
    2550:	00050a63          	beqz	a0,2564 <fatfs_string_ends_with_slash+0x14>
    2554:	05c00713          	li	a4,92
    2558:	02f00693          	li	a3,47
    255c:	00054783          	lbu	a5,0(a0)
    2560:	00079663          	bnez	a5,256c <fatfs_string_ends_with_slash+0x1c>
    2564:	00000513          	li	a0,0
    2568:	00008067          	ret
    256c:	00154603          	lbu	a2,1(a0)
    2570:	00061663          	bnez	a2,257c <fatfs_string_ends_with_slash+0x2c>
    2574:	00e78863          	beq	a5,a4,2584 <fatfs_string_ends_with_slash+0x34>
    2578:	00d78663          	beq	a5,a3,2584 <fatfs_string_ends_with_slash+0x34>
    257c:	00150513          	addi	a0,a0,1
    2580:	fddff06f          	j	255c <fatfs_string_ends_with_slash+0xc>
    2584:	00100513          	li	a0,1
    2588:	00008067          	ret

0000258c <fatfs_get_sfn_display_name>:
    258c:	00000713          	li	a4,0
    2590:	00c00613          	li	a2,12
    2594:	02000813          	li	a6,32
    2598:	01900893          	li	a7,25
    259c:	0005c783          	lbu	a5,0(a1)
    25a0:	00078463          	beqz	a5,25a8 <fatfs_get_sfn_display_name+0x1c>
    25a4:	00c71863          	bne	a4,a2,25b4 <fatfs_get_sfn_display_name+0x28>
    25a8:	00050023          	sb	zero,0(a0)
    25ac:	00100513          	li	a0,1
    25b0:	00008067          	ret
    25b4:	00158593          	addi	a1,a1,1
    25b8:	ff0782e3          	beq	a5,a6,259c <fatfs_get_sfn_display_name+0x10>
    25bc:	fbf78693          	addi	a3,a5,-65
    25c0:	0ff6f693          	zext.b	a3,a3
    25c4:	00d8e663          	bltu	a7,a3,25d0 <fatfs_get_sfn_display_name+0x44>
    25c8:	02078793          	addi	a5,a5,32
    25cc:	0ff7f793          	zext.b	a5,a5
    25d0:	00f50023          	sb	a5,0(a0)
    25d4:	00170713          	addi	a4,a4,1
    25d8:	00150513          	addi	a0,a0,1
    25dc:	fc1ff06f          	j	259c <fatfs_get_sfn_display_name+0x10>

000025e0 <fatfs_get_extension>:
    25e0:	ff010113          	addi	sp,sp,-16
    25e4:	00812423          	sw	s0,8(sp)
    25e8:	00912223          	sw	s1,4(sp)
    25ec:	01212023          	sw	s2,0(sp)
    25f0:	00112623          	sw	ra,12(sp)
    25f4:	00050913          	mv	s2,a0
    25f8:	00058493          	mv	s1,a1
    25fc:	00060413          	mv	s0,a2
    2600:	fffff097          	auipc	ra,0xfffff
    2604:	a98080e7          	jalr	-1384(ra) # 1098 <FileString_GetExtension>
    2608:	06a05c63          	blez	a0,2680 <fatfs_get_extension+0xa0>
    260c:	06048a63          	beqz	s1,2680 <fatfs_get_extension+0xa0>
    2610:	02040863          	beqz	s0,2640 <fatfs_get_extension+0x60>
    2614:	00150513          	addi	a0,a0,1
    2618:	00000713          	li	a4,0
    261c:	fff40413          	addi	s0,s0,-1
    2620:	01900593          	li	a1,25
    2624:	00e507b3          	add	a5,a0,a4
    2628:	00f907b3          	add	a5,s2,a5
    262c:	0007c783          	lbu	a5,0(a5)
    2630:	00e48633          	add	a2,s1,a4
    2634:	02079463          	bnez	a5,265c <fatfs_get_extension+0x7c>
    2638:	00060023          	sb	zero,0(a2)
    263c:	00100413          	li	s0,1
    2640:	00c12083          	lw	ra,12(sp)
    2644:	00040513          	mv	a0,s0
    2648:	00812403          	lw	s0,8(sp)
    264c:	00412483          	lw	s1,4(sp)
    2650:	00012903          	lw	s2,0(sp)
    2654:	01010113          	addi	sp,sp,16
    2658:	00008067          	ret
    265c:	fc875ee3          	bge	a4,s0,2638 <fatfs_get_extension+0x58>
    2660:	fbf78693          	addi	a3,a5,-65
    2664:	0ff6f693          	zext.b	a3,a3
    2668:	00d5e663          	bltu	a1,a3,2674 <fatfs_get_extension+0x94>
    266c:	02078793          	addi	a5,a5,32
    2670:	0ff7f793          	zext.b	a5,a5
    2674:	00f60023          	sb	a5,0(a2)
    2678:	00170713          	addi	a4,a4,1
    267c:	fa9ff06f          	j	2624 <fatfs_get_extension+0x44>
    2680:	00000413          	li	s0,0
    2684:	fbdff06f          	j	2640 <fatfs_get_extension+0x60>

00002688 <fatfs_create_path_string>:
    2688:	00050893          	mv	a7,a0
    268c:	00000513          	li	a0,0
    2690:	0a088263          	beqz	a7,2734 <fatfs_create_path_string+0xac>
    2694:	0a058063          	beqz	a1,2734 <fatfs_create_path_string+0xac>
    2698:	08060e63          	beqz	a2,2734 <fatfs_create_path_string+0xac>
    269c:	00d04463          	bgtz	a3,26a4 <fatfs_create_path_string+0x1c>
    26a0:	00008067          	ret
    26a4:	02f00313          	li	t1,47
    26a8:	00000513          	li	a0,0
    26ac:	00000713          	li	a4,0
    26b0:	ffe68e13          	addi	t3,a3,-2
    26b4:	05c00e93          	li	t4,92
    26b8:	01c0006f          	j	26d4 <fatfs_create_path_string+0x4c>
    26bc:	03c75463          	bge	a4,t3,26e4 <fatfs_create_path_string+0x5c>
    26c0:	01d81463          	bne	a6,t4,26c8 <fatfs_create_path_string+0x40>
    26c4:	05c00313          	li	t1,92
    26c8:	01078023          	sb	a6,0(a5)
    26cc:	00170713          	addi	a4,a4,1
    26d0:	00080513          	mv	a0,a6
    26d4:	00e88833          	add	a6,a7,a4
    26d8:	00084803          	lbu	a6,0(a6)
    26dc:	00e607b3          	add	a5,a2,a4
    26e0:	fc081ee3          	bnez	a6,26bc <fatfs_create_path_string+0x34>
    26e4:	05c00613          	li	a2,92
    26e8:	02c51063          	bne	a0,a2,2708 <fatfs_create_path_string+0x80>
    26ec:	fff68693          	addi	a3,a3,-1
    26f0:	40b70733          	sub	a4,a4,a1
    26f4:	0005c603          	lbu	a2,0(a1)
    26f8:	02061263          	bnez	a2,271c <fatfs_create_path_string+0x94>
    26fc:	00078023          	sb	zero,0(a5)
    2700:	00100513          	li	a0,1
    2704:	00008067          	ret
    2708:	02f00613          	li	a2,47
    270c:	fec500e3          	beq	a0,a2,26ec <fatfs_create_path_string+0x64>
    2710:	00678023          	sb	t1,0(a5)
    2714:	00178793          	addi	a5,a5,1
    2718:	fd5ff06f          	j	26ec <fatfs_create_path_string+0x64>
    271c:	00e58533          	add	a0,a1,a4
    2720:	fcd55ee3          	bge	a0,a3,26fc <fatfs_create_path_string+0x74>
    2724:	00178793          	addi	a5,a5,1
    2728:	00158593          	addi	a1,a1,1
    272c:	fec78fa3          	sb	a2,-1(a5)
    2730:	fc5ff06f          	j	26f4 <fatfs_create_path_string+0x6c>
    2734:	00008067          	ret

00002738 <fatfs_fat_init>:
    2738:	ff010113          	addi	sp,sp,-16
    273c:	00812423          	sw	s0,8(sp)
    2740:	00912223          	sw	s1,4(sp)
    2744:	00112623          	sw	ra,12(sp)
    2748:	fff00793          	li	a5,-1
    274c:	25850493          	addi	s1,a0,600
    2750:	00050413          	mv	s0,a0
    2754:	44f52c23          	sw	a5,1112(a0)
    2758:	24052a23          	sw	zero,596(a0)
    275c:	44052e23          	sw	zero,1116(a0)
    2760:	20000613          	li	a2,512
    2764:	00048513          	mv	a0,s1
    2768:	00000593          	li	a1,0
    276c:	ffffe097          	auipc	ra,0xffffe
    2770:	ff4080e7          	jalr	-12(ra) # 760 <memset>
    2774:	25442783          	lw	a5,596(s0)
    2778:	00c12083          	lw	ra,12(sp)
    277c:	24942a23          	sw	s1,596(s0)
    2780:	46042023          	sw	zero,1120(s0)
    2784:	46f42223          	sw	a5,1124(s0)
    2788:	00812403          	lw	s0,8(sp)
    278c:	00412483          	lw	s1,4(sp)
    2790:	01010113          	addi	sp,sp,16
    2794:	00008067          	ret

00002798 <fatfs_init>:
    2798:	fc010113          	addi	sp,sp,-64
    279c:	02812c23          	sw	s0,56(sp)
    27a0:	02112e23          	sw	ra,60(sp)
    27a4:	02912a23          	sw	s1,52(sp)
    27a8:	03212823          	sw	s2,48(sp)
    27ac:	03312623          	sw	s3,44(sp)
    27b0:	03412423          	sw	s4,40(sp)
    27b4:	03512223          	sw	s5,36(sp)
    27b8:	03612023          	sw	s6,32(sp)
    27bc:	01712e23          	sw	s7,28(sp)
    27c0:	fff00793          	li	a5,-1
    27c4:	24f52223          	sw	a5,580(a0)
    27c8:	24052423          	sw	zero,584(a0)
    27cc:	02052223          	sw	zero,36(a0)
    27d0:	00050413          	mv	s0,a0
    27d4:	00000097          	auipc	ra,0x0
    27d8:	f64080e7          	jalr	-156(ra) # 2738 <fatfs_fat_init>
    27dc:	03442783          	lw	a5,52(s0)
    27e0:	02079a63          	bnez	a5,2814 <fatfs_init+0x7c>
    27e4:	fff00513          	li	a0,-1
    27e8:	03c12083          	lw	ra,60(sp)
    27ec:	03812403          	lw	s0,56(sp)
    27f0:	03412483          	lw	s1,52(sp)
    27f4:	03012903          	lw	s2,48(sp)
    27f8:	02c12983          	lw	s3,44(sp)
    27fc:	02812a03          	lw	s4,40(sp)
    2800:	02412a83          	lw	s5,36(sp)
    2804:	02012b03          	lw	s6,32(sp)
    2808:	01c12b83          	lw	s7,28(sp)
    280c:	04010113          	addi	sp,sp,64
    2810:	00008067          	ret
    2814:	04440593          	addi	a1,s0,68
    2818:	00100613          	li	a2,1
    281c:	00000513          	li	a0,0
    2820:	00b12623          	sw	a1,12(sp)
    2824:	000780e7          	jalr	a5
    2828:	fa050ee3          	beqz	a0,27e4 <fatfs_init+0x4c>
    282c:	24042703          	lw	a4,576(s0)
    2830:	ffff07b7          	lui	a5,0xffff0
    2834:	00c12583          	lw	a1,12(sp)
    2838:	00e7f7b3          	and	a5,a5,a4
    283c:	aa550737          	lui	a4,0xaa550
    2840:	00e78663          	beq	a5,a4,284c <fatfs_init+0xb4>
    2844:	ffd00513          	li	a0,-3
    2848:	fa1ff06f          	j	27e8 <fatfs_init+0x50>
    284c:	24344783          	lbu	a5,579(s0)
    2850:	24244703          	lbu	a4,578(s0)
    2854:	ffc00513          	li	a0,-4
    2858:	00879793          	slli	a5,a5,0x8
    285c:	00e787b3          	add	a5,a5,a4
    2860:	0000b737          	lui	a4,0xb
    2864:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x3ad>
    2868:	f8e790e3          	bne	a5,a4,27e8 <fatfs_init+0x50>
    286c:	20644783          	lbu	a5,518(s0)
    2870:	00600713          	li	a4,6
    2874:	04f76063          	bltu	a4,a5,28b4 <fatfs_init+0x11c>
    2878:	00400713          	li	a4,4
    287c:	00f76663          	bltu	a4,a5,2888 <fatfs_init+0xf0>
    2880:	00000513          	li	a0,0
    2884:	04078263          	beqz	a5,28c8 <fatfs_init+0x130>
    2888:	20d44503          	lbu	a0,525(s0)
    288c:	20c44783          	lbu	a5,524(s0)
    2890:	01851513          	slli	a0,a0,0x18
    2894:	01079793          	slli	a5,a5,0x10
    2898:	00f50533          	add	a0,a0,a5
    289c:	20a44783          	lbu	a5,522(s0)
    28a0:	00f50533          	add	a0,a0,a5
    28a4:	20b44783          	lbu	a5,523(s0)
    28a8:	00879793          	slli	a5,a5,0x8
    28ac:	00f50533          	add	a0,a0,a5
    28b0:	0180006f          	j	28c8 <fatfs_init+0x130>
    28b4:	00c00713          	li	a4,12
    28b8:	1ef76a63          	bltu	a4,a5,2aac <fatfs_init+0x314>
    28bc:	00a00713          	li	a4,10
    28c0:	00000513          	li	a0,0
    28c4:	fcf762e3          	bltu	a4,a5,2888 <fatfs_init+0xf0>
    28c8:	03442783          	lw	a5,52(s0)
    28cc:	00a42e23          	sw	a0,28(s0)
    28d0:	00100613          	li	a2,1
    28d4:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    28d8:	f00506e3          	beqz	a0,27e4 <fatfs_init+0x4c>
    28dc:	05044783          	lbu	a5,80(s0)
    28e0:	04f44703          	lbu	a4,79(s0)
    28e4:	ffe00513          	li	a0,-2
    28e8:	00879793          	slli	a5,a5,0x8
    28ec:	00e787b3          	add	a5,a5,a4
    28f0:	20000713          	li	a4,512
    28f4:	eee79ae3          	bne	a5,a4,27e8 <fatfs_init+0x50>
    28f8:	05644483          	lbu	s1,86(s0)
    28fc:	05544b83          	lbu	s7,85(s0)
    2900:	05344903          	lbu	s2,83(s0)
    2904:	05244a03          	lbu	s4,82(s0)
    2908:	05b44583          	lbu	a1,91(s0)
    290c:	00849493          	slli	s1,s1,0x8
    2910:	05144983          	lbu	s3,81(s0)
    2914:	05a44783          	lbu	a5,90(s0)
    2918:	01748ab3          	add	s5,s1,s7
    291c:	00891913          	slli	s2,s2,0x8
    2920:	010a9a93          	slli	s5,s5,0x10
    2924:	01490b33          	add	s6,s2,s4
    2928:	010ada93          	srli	s5,s5,0x10
    292c:	00859593          	slli	a1,a1,0x8
    2930:	010b1b13          	slli	s6,s6,0x10
    2934:	01340023          	sb	s3,0(s0)
    2938:	03541423          	sh	s5,40(s0)
    293c:	00f585b3          	add	a1,a1,a5
    2940:	05444503          	lbu	a0,84(s0)
    2944:	010b5b13          	srli	s6,s6,0x10
    2948:	02059663          	bnez	a1,2974 <fatfs_init+0x1dc>
    294c:	06b44583          	lbu	a1,107(s0)
    2950:	06a44783          	lbu	a5,106(s0)
    2954:	01859593          	slli	a1,a1,0x18
    2958:	01079793          	slli	a5,a5,0x10
    295c:	00f585b3          	add	a1,a1,a5
    2960:	06844783          	lbu	a5,104(s0)
    2964:	00f585b3          	add	a1,a1,a5
    2968:	06944783          	lbu	a5,105(s0)
    296c:	00879793          	slli	a5,a5,0x8
    2970:	00f585b3          	add	a1,a1,a5
    2974:	07344783          	lbu	a5,115(s0)
    2978:	07244703          	lbu	a4,114(s0)
    297c:	02b42023          	sw	a1,32(s0)
    2980:	01879793          	slli	a5,a5,0x18
    2984:	01071713          	slli	a4,a4,0x10
    2988:	00e787b3          	add	a5,a5,a4
    298c:	07044703          	lbu	a4,112(s0)
    2990:	005a9a93          	slli	s5,s5,0x5
    2994:	1ffa8a93          	addi	s5,s5,511
    2998:	00e787b3          	add	a5,a5,a4
    299c:	07144703          	lbu	a4,113(s0)
    29a0:	409ada93          	srai	s5,s5,0x9
    29a4:	00871713          	slli	a4,a4,0x8
    29a8:	00e787b3          	add	a5,a5,a4
    29ac:	00f42423          	sw	a5,8(s0)
    29b0:	07544783          	lbu	a5,117(s0)
    29b4:	07444703          	lbu	a4,116(s0)
    29b8:	00879793          	slli	a5,a5,0x8
    29bc:	00e787b3          	add	a5,a5,a4
    29c0:	00f41c23          	sh	a5,24(s0)
    29c4:	ffffe097          	auipc	ra,0xffffe
    29c8:	5cc080e7          	jalr	1484(ra) # f90 <__mulsi3>
    29cc:	00ab07b3          	add	a5,s6,a0
    29d0:	00f42623          	sw	a5,12(s0)
    29d4:	01c42783          	lw	a5,28(s0)
    29d8:	24244703          	lbu	a4,578(s0)
    29dc:	01542823          	sw	s5,16(s0)
    29e0:	00fb0b33          	add	s6,s6,a5
    29e4:	24344783          	lbu	a5,579(s0)
    29e8:	01642a23          	sw	s6,20(s0)
    29ec:	01650b33          	add	s6,a0,s6
    29f0:	00879793          	slli	a5,a5,0x8
    29f4:	00e787b3          	add	a5,a5,a4
    29f8:	0000b737          	lui	a4,0xb
    29fc:	01642223          	sw	s6,4(s0)
    2a00:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x3ad>
    2a04:	e4e790e3          	bne	a5,a4,2844 <fatfs_init+0xac>
    2a08:	05844783          	lbu	a5,88(s0)
    2a0c:	05744703          	lbu	a4,87(s0)
    2a10:	017484b3          	add	s1,s1,s7
    2a14:	00549493          	slli	s1,s1,0x5
    2a18:	00879793          	slli	a5,a5,0x8
    2a1c:	1ff48493          	addi	s1,s1,511
    2a20:	00e787b3          	add	a5,a5,a4
    2a24:	4094d493          	srai	s1,s1,0x9
    2a28:	02079663          	bnez	a5,2a54 <fatfs_init+0x2bc>
    2a2c:	06744783          	lbu	a5,103(s0)
    2a30:	06644703          	lbu	a4,102(s0)
    2a34:	01879793          	slli	a5,a5,0x18
    2a38:	01071713          	slli	a4,a4,0x10
    2a3c:	00e787b3          	add	a5,a5,a4
    2a40:	06444703          	lbu	a4,100(s0)
    2a44:	00e787b3          	add	a5,a5,a4
    2a48:	06544703          	lbu	a4,101(s0)
    2a4c:	00871713          	slli	a4,a4,0x8
    2a50:	00e787b3          	add	a5,a5,a4
    2a54:	01490933          	add	s2,s2,s4
    2a58:	00990933          	add	s2,s2,s1
    2a5c:	00a90533          	add	a0,s2,a0
    2a60:	40a787b3          	sub	a5,a5,a0
    2a64:	ffb00513          	li	a0,-5
    2a68:	d80980e3          	beqz	s3,27e8 <fatfs_init+0x50>
    2a6c:	00078513          	mv	a0,a5
    2a70:	00098593          	mv	a1,s3
    2a74:	ffffe097          	auipc	ra,0xffffe
    2a78:	c18080e7          	jalr	-1000(ra) # 68c <__udivsi3>
    2a7c:	00001737          	lui	a4,0x1
    2a80:	00050793          	mv	a5,a0
    2a84:	ff470713          	addi	a4,a4,-12 # ff4 <fat_list_insert_last+0x3c>
    2a88:	ffb00513          	li	a0,-5
    2a8c:	d4f77ee3          	bgeu	a4,a5,27e8 <fatfs_init+0x50>
    2a90:	00010737          	lui	a4,0x10
    2a94:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x594c>
    2a98:	02f76663          	bltu	a4,a5,2ac4 <fatfs_init+0x32c>
    2a9c:	00042423          	sw	zero,8(s0)
    2aa0:	02042823          	sw	zero,48(s0)
    2aa4:	00000513          	li	a0,0
    2aa8:	d41ff06f          	j	27e8 <fatfs_init+0x50>
    2aac:	ff278793          	addi	a5,a5,-14
    2ab0:	0ff7f793          	zext.b	a5,a5
    2ab4:	00100713          	li	a4,1
    2ab8:	00000513          	li	a0,0
    2abc:	dcf776e3          	bgeu	a4,a5,2888 <fatfs_init+0xf0>
    2ac0:	e09ff06f          	j	28c8 <fatfs_init+0x130>
    2ac4:	00100793          	li	a5,1
    2ac8:	02f42823          	sw	a5,48(s0)
    2acc:	fd9ff06f          	j	2aa4 <fatfs_init+0x30c>

00002ad0 <fl_attach_media>:
    2ad0:	000067b7          	lui	a5,0x6
    2ad4:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    2ad8:	ff010113          	addi	sp,sp,-16
    2adc:	00812423          	sw	s0,8(sp)
    2ae0:	00912223          	sw	s1,4(sp)
    2ae4:	00112623          	sw	ra,12(sp)
    2ae8:	00050493          	mv	s1,a0
    2aec:	00058413          	mv	s0,a1
    2af0:	00079663          	bnez	a5,2afc <fl_attach_media+0x2c>
    2af4:	fffff097          	auipc	ra,0xfffff
    2af8:	c30080e7          	jalr	-976(ra) # 1724 <fl_init>
    2afc:	0000a537          	lui	a0,0xa
    2b00:	24050793          	addi	a5,a0,576 # a240 <_fs>
    2b04:	24050513          	addi	a0,a0,576
    2b08:	0287ac23          	sw	s0,56(a5)
    2b0c:	0297aa23          	sw	s1,52(a5)
    2b10:	00000097          	auipc	ra,0x0
    2b14:	c88080e7          	jalr	-888(ra) # 2798 <fatfs_init>
    2b18:	00050413          	mv	s0,a0
    2b1c:	02050863          	beqz	a0,2b4c <fl_attach_media+0x7c>
    2b20:	00050593          	mv	a1,a0
    2b24:	00006537          	lui	a0,0x6
    2b28:	efc50513          	addi	a0,a0,-260 # 5efc <font+0x320>
    2b2c:	ffffe097          	auipc	ra,0xffffe
    2b30:	328080e7          	jalr	808(ra) # e54 <printf>
    2b34:	00c12083          	lw	ra,12(sp)
    2b38:	00040513          	mv	a0,s0
    2b3c:	00812403          	lw	s0,8(sp)
    2b40:	00412483          	lw	s1,4(sp)
    2b44:	01010113          	addi	sp,sp,16
    2b48:	00008067          	ret
    2b4c:	000067b7          	lui	a5,0x6
    2b50:	00100713          	li	a4,1
    2b54:	fee7ac23          	sw	a4,-8(a5) # 5ff8 <_filelib_valid>
    2b58:	fddff06f          	j	2b34 <fl_attach_media+0x64>

00002b5c <fatfs_format_fat16>:
    2b5c:	fe010113          	addi	sp,sp,-32
    2b60:	00812c23          	sw	s0,24(sp)
    2b64:	00912a23          	sw	s1,20(sp)
    2b68:	01212823          	sw	s2,16(sp)
    2b6c:	00112e23          	sw	ra,28(sp)
    2b70:	01312623          	sw	s3,12(sp)
    2b74:	01412423          	sw	s4,8(sp)
    2b78:	fff00793          	li	a5,-1
    2b7c:	24f52223          	sw	a5,580(a0)
    2b80:	24052423          	sw	zero,584(a0)
    2b84:	02052223          	sw	zero,36(a0)
    2b88:	00050413          	mv	s0,a0
    2b8c:	00058493          	mv	s1,a1
    2b90:	00060913          	mv	s2,a2
    2b94:	00000097          	auipc	ra,0x0
    2b98:	ba4080e7          	jalr	-1116(ra) # 2738 <fatfs_fat_init>
    2b9c:	03442783          	lw	a5,52(s0)
    2ba0:	fff00513          	li	a0,-1
    2ba4:	08078663          	beqz	a5,2c30 <fatfs_format_fat16+0xd4>
    2ba8:	03842783          	lw	a5,56(s0)
    2bac:	fff00513          	li	a0,-1
    2bb0:	08078063          	beqz	a5,2c30 <fatfs_format_fat16+0xd4>
    2bb4:	04440993          	addi	s3,s0,68
    2bb8:	02042823          	sw	zero,48(s0)
    2bbc:	00041c23          	sh	zero,24(s0)
    2bc0:	00042423          	sw	zero,8(s0)
    2bc4:	00042e23          	sw	zero,28(s0)
    2bc8:	20000613          	li	a2,512
    2bcc:	00000593          	li	a1,0
    2bd0:	00098513          	mv	a0,s3
    2bd4:	ffffe097          	auipc	ra,0xffffe
    2bd8:	b8c080e7          	jalr	-1140(ra) # 760 <memset>
    2bdc:	4d9047b7          	lui	a5,0x4d904
    2be0:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2be4:	04f42223          	sw	a5,68(s0)
    2be8:	534f47b7          	lui	a5,0x534f4
    2bec:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2bf0:	04f42423          	sw	a5,72(s0)
    2bf4:	003037b7          	lui	a5,0x303
    2bf8:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2bfc:	04f42623          	sw	a5,76(s0)
    2c00:	00200793          	li	a5,2
    2c04:	04f40823          	sb	a5,80(s0)
    2c08:	000067b7          	lui	a5,0x6
    2c0c:	f6478793          	addi	a5,a5,-156 # 5f64 <_cluster_size_table16>
    2c10:	0047c583          	lbu	a1,4(a5)
    2c14:	00058863          	beqz	a1,2c24 <fatfs_format_fat16+0xc8>
    2c18:	0007a703          	lw	a4,0(a5)
    2c1c:	00878793          	addi	a5,a5,8
    2c20:	fe9768e3          	bltu	a4,s1,2c10 <fatfs_format_fat16+0xb4>
    2c24:	00b40023          	sb	a1,0(s0)
    2c28:	02059463          	bnez	a1,2c50 <fatfs_format_fat16+0xf4>
    2c2c:	00000513          	li	a0,0
    2c30:	01c12083          	lw	ra,28(sp)
    2c34:	01812403          	lw	s0,24(sp)
    2c38:	01412483          	lw	s1,20(sp)
    2c3c:	01012903          	lw	s2,16(sp)
    2c40:	00c12983          	lw	s3,12(sp)
    2c44:	00812a03          	lw	s4,8(sp)
    2c48:	02010113          	addi	sp,sp,32
    2c4c:	00008067          	ret
    2c50:	000807b7          	lui	a5,0x80
    2c54:	20078793          	addi	a5,a5,512 # 80200 <__stacktop+0x70200>
    2c58:	02f42423          	sw	a5,40(s0)
    2c5c:	00200793          	li	a5,2
    2c60:	02f40623          	sb	a5,44(s0)
    2c64:	00800793          	li	a5,8
    2c68:	04f41923          	sh	a5,82(s0)
    2c6c:	000207b7          	lui	a5,0x20
    2c70:	00278793          	addi	a5,a5,2 # 20002 <__stacktop+0x10002>
    2c74:	04f42a23          	sw	a5,84(s0)
    2c78:	80000793          	li	a5,-2048
    2c7c:	04f41c23          	sh	a5,88(s0)
    2c80:	00048513          	mv	a0,s1
    2c84:	04b408a3          	sb	a1,81(s0)
    2c88:	ffffe097          	auipc	ra,0xffffe
    2c8c:	a04080e7          	jalr	-1532(ra) # 68c <__udivsi3>
    2c90:	00150793          	addi	a5,a0,1
    2c94:	0087d793          	srli	a5,a5,0x8
    2c98:	00178793          	addi	a5,a5,1
    2c9c:	02f42023          	sw	a5,32(s0)
    2ca0:	04f41d23          	sh	a5,90(s0)
    2ca4:	02000793          	li	a5,32
    2ca8:	06f42023          	sw	a5,96(s0)
    2cac:	122907b7          	lui	a5,0x12290
    2cb0:	06f42423          	sw	a5,104(s0)
    2cb4:	000057b7          	lui	a5,0x5
    2cb8:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x1f4>
    2cbc:	06f41623          	sh	a5,108(s0)
    2cc0:	07800793          	li	a5,120
    2cc4:	06942223          	sw	s1,100(s0)
    2cc8:	04042e23          	sw	zero,92(s0)
    2ccc:	06f40723          	sb	a5,110(s0)
    2cd0:	00000493          	li	s1,0
    2cd4:	00b00a13          	li	s4,11
    2cd8:	00090513          	mv	a0,s2
    2cdc:	ffffe097          	auipc	ra,0xffffe
    2ce0:	ac4080e7          	jalr	-1340(ra) # 7a0 <strlen>
    2ce4:	02000793          	li	a5,32
    2ce8:	00a4d663          	bge	s1,a0,2cf4 <fatfs_format_fat16+0x198>
    2cec:	009907b3          	add	a5,s2,s1
    2cf0:	0007c783          	lbu	a5,0(a5)
    2cf4:	00940733          	add	a4,s0,s1
    2cf8:	06f707a3          	sb	a5,111(a4)
    2cfc:	00148493          	addi	s1,s1,1
    2d00:	fd449ce3          	bne	s1,s4,2cd8 <fatfs_format_fat16+0x17c>
    2d04:	000047b7          	lui	a5,0x4
    2d08:	14678793          	addi	a5,a5,326 # 4146 <_read_sectors+0xb6>
    2d0c:	06f41d23          	sh	a5,122(s0)
    2d10:	203637b7          	lui	a5,0x20363
    2d14:	15478793          	addi	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2d18:	06f42e23          	sw	a5,124(s0)
    2d1c:	000027b7          	lui	a5,0x2
    2d20:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x88>
    2d24:	08f41023          	sh	a5,128(s0)
    2d28:	ffffb7b7          	lui	a5,0xffffb
    2d2c:	a5578793          	addi	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2d30:	24f41123          	sh	a5,578(s0)
    2d34:	03842783          	lw	a5,56(s0)
    2d38:	00100613          	li	a2,1
    2d3c:	00098593          	mv	a1,s3
    2d40:	00000513          	li	a0,0
    2d44:	000780e7          	jalr	a5
    2d48:	ee0502e3          	beqz	a0,2c2c <fatfs_format_fat16+0xd0>
    2d4c:	02042583          	lw	a1,32(s0)
    2d50:	02c44503          	lbu	a0,44(s0)
    2d54:	02a45483          	lhu	s1,42(s0)
    2d58:	ffffe097          	auipc	ra,0xffffe
    2d5c:	238080e7          	jalr	568(ra) # f90 <__mulsi3>
    2d60:	00a487b3          	add	a5,s1,a0
    2d64:	00f42623          	sw	a5,12(s0)
    2d68:	02845783          	lhu	a5,40(s0)
    2d6c:	00000593          	li	a1,0
    2d70:	00579793          	slli	a5,a5,0x5
    2d74:	1ff78793          	addi	a5,a5,511
    2d78:	4097d793          	srai	a5,a5,0x9
    2d7c:	00f42823          	sw	a5,16(s0)
    2d80:	01c42783          	lw	a5,28(s0)
    2d84:	00f484b3          	add	s1,s1,a5
    2d88:	00950533          	add	a0,a0,s1
    2d8c:	00a42223          	sw	a0,4(s0)
    2d90:	00942a23          	sw	s1,20(s0)
    2d94:	00040513          	mv	a0,s0
    2d98:	ffffe097          	auipc	ra,0xffffe
    2d9c:	49c080e7          	jalr	1180(ra) # 1234 <fatfs_erase_fat>
    2da0:	e80506e3          	beqz	a0,2c2c <fatfs_format_fat16+0xd0>
    2da4:	01c42583          	lw	a1,28(s0)
    2da8:	00c42783          	lw	a5,12(s0)
    2dac:	01042603          	lw	a2,16(s0)
    2db0:	00040513          	mv	a0,s0
    2db4:	00f585b3          	add	a1,a1,a5
    2db8:	ffffe097          	auipc	ra,0xffffe
    2dbc:	568080e7          	jalr	1384(ra) # 1320 <fatfs_erase_sectors>
    2dc0:	00a03533          	snez	a0,a0
    2dc4:	e6dff06f          	j	2c30 <fatfs_format_fat16+0xd4>

00002dc8 <fatfs_format_fat32>:
    2dc8:	fe010113          	addi	sp,sp,-32
    2dcc:	00812c23          	sw	s0,24(sp)
    2dd0:	00912a23          	sw	s1,20(sp)
    2dd4:	01212823          	sw	s2,16(sp)
    2dd8:	00112e23          	sw	ra,28(sp)
    2ddc:	01312623          	sw	s3,12(sp)
    2de0:	01412423          	sw	s4,8(sp)
    2de4:	fff00793          	li	a5,-1
    2de8:	24f52223          	sw	a5,580(a0)
    2dec:	24052423          	sw	zero,584(a0)
    2df0:	02052223          	sw	zero,36(a0)
    2df4:	00050413          	mv	s0,a0
    2df8:	00058493          	mv	s1,a1
    2dfc:	00060913          	mv	s2,a2
    2e00:	00000097          	auipc	ra,0x0
    2e04:	938080e7          	jalr	-1736(ra) # 2738 <fatfs_fat_init>
    2e08:	03442783          	lw	a5,52(s0)
    2e0c:	fff00513          	li	a0,-1
    2e10:	08078863          	beqz	a5,2ea0 <fatfs_format_fat32+0xd8>
    2e14:	03842783          	lw	a5,56(s0)
    2e18:	fff00513          	li	a0,-1
    2e1c:	08078263          	beqz	a5,2ea0 <fatfs_format_fat32+0xd8>
    2e20:	00100793          	li	a5,1
    2e24:	00200a13          	li	s4,2
    2e28:	04440993          	addi	s3,s0,68
    2e2c:	02f42823          	sw	a5,48(s0)
    2e30:	00f41c23          	sh	a5,24(s0)
    2e34:	01442423          	sw	s4,8(s0)
    2e38:	00042e23          	sw	zero,28(s0)
    2e3c:	20000613          	li	a2,512
    2e40:	00000593          	li	a1,0
    2e44:	00098513          	mv	a0,s3
    2e48:	ffffe097          	auipc	ra,0xffffe
    2e4c:	918080e7          	jalr	-1768(ra) # 760 <memset>
    2e50:	4d9047b7          	lui	a5,0x4d904
    2e54:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2e58:	04f42223          	sw	a5,68(s0)
    2e5c:	534f47b7          	lui	a5,0x534f4
    2e60:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2e64:	04f42423          	sw	a5,72(s0)
    2e68:	003037b7          	lui	a5,0x303
    2e6c:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2e70:	04f42623          	sw	a5,76(s0)
    2e74:	000067b7          	lui	a5,0x6
    2e78:	05440823          	sb	s4,80(s0)
    2e7c:	fa478793          	addi	a5,a5,-92 # 5fa4 <_cluster_size_table32>
    2e80:	0047c583          	lbu	a1,4(a5)
    2e84:	00058863          	beqz	a1,2e94 <fatfs_format_fat32+0xcc>
    2e88:	0007a703          	lw	a4,0(a5)
    2e8c:	00878793          	addi	a5,a5,8
    2e90:	fe9768e3          	bltu	a4,s1,2e80 <fatfs_format_fat32+0xb8>
    2e94:	00b40023          	sb	a1,0(s0)
    2e98:	02059463          	bnez	a1,2ec0 <fatfs_format_fat32+0xf8>
    2e9c:	00000513          	li	a0,0
    2ea0:	01c12083          	lw	ra,28(sp)
    2ea4:	01812403          	lw	s0,24(sp)
    2ea8:	01412483          	lw	s1,20(sp)
    2eac:	01012903          	lw	s2,16(sp)
    2eb0:	00c12983          	lw	s3,12(sp)
    2eb4:	00812a03          	lw	s4,8(sp)
    2eb8:	02010113          	addi	sp,sp,32
    2ebc:	00008067          	ret
    2ec0:	002007b7          	lui	a5,0x200
    2ec4:	02f42423          	sw	a5,40(s0)
    2ec8:	00200793          	li	a5,2
    2ecc:	02f40623          	sb	a5,44(s0)
    2ed0:	04f42a23          	sw	a5,84(s0)
    2ed4:	000107b7          	lui	a5,0x10
    2ed8:	80078793          	addi	a5,a5,-2048 # f800 <_files+0x5158>
    2edc:	04f42c23          	sw	a5,88(s0)
    2ee0:	00ff07b7          	lui	a5,0xff0
    2ee4:	03f78793          	addi	a5,a5,63 # ff003f <__stacktop+0xfe003f>
    2ee8:	02000713          	li	a4,32
    2eec:	04f42e23          	sw	a5,92(s0)
    2ef0:	06942223          	sw	s1,100(s0)
    2ef4:	00048513          	mv	a0,s1
    2ef8:	04b408a3          	sb	a1,81(s0)
    2efc:	04e41923          	sh	a4,82(s0)
    2f00:	06042023          	sw	zero,96(s0)
    2f04:	ffffd097          	auipc	ra,0xffffd
    2f08:	788080e7          	jalr	1928(ra) # 68c <__udivsi3>
    2f0c:	00150793          	addi	a5,a0,1
    2f10:	0077d793          	srli	a5,a5,0x7
    2f14:	00178793          	addi	a5,a5,1
    2f18:	02f42023          	sw	a5,32(s0)
    2f1c:	06f42423          	sw	a5,104(s0)
    2f20:	00842783          	lw	a5,8(s0)
    2f24:	06042623          	sw	zero,108(s0)
    2f28:	08040223          	sb	zero,132(s0)
    2f2c:	06f42823          	sw	a5,112(s0)
    2f30:	01845783          	lhu	a5,24(s0)
    2f34:	00000493          	li	s1,0
    2f38:	00b00a13          	li	s4,11
    2f3c:	06f41a23          	sh	a5,116(s0)
    2f40:	00600793          	li	a5,6
    2f44:	06f41b23          	sh	a5,118(s0)
    2f48:	000017b7          	lui	a5,0x1
    2f4c:	22978793          	addi	a5,a5,553 # 1229 <fatfs_fat_read_sector+0xe1>
    2f50:	08f41323          	sh	a5,134(s0)
    2f54:	000057b7          	lui	a5,0x5
    2f58:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x1f4>
    2f5c:	08f41423          	sh	a5,136(s0)
    2f60:	07800793          	li	a5,120
    2f64:	08f40523          	sb	a5,138(s0)
    2f68:	00090513          	mv	a0,s2
    2f6c:	ffffe097          	auipc	ra,0xffffe
    2f70:	834080e7          	jalr	-1996(ra) # 7a0 <strlen>
    2f74:	02000793          	li	a5,32
    2f78:	00a4d663          	bge	s1,a0,2f84 <fatfs_format_fat32+0x1bc>
    2f7c:	009907b3          	add	a5,s2,s1
    2f80:	0007c783          	lbu	a5,0(a5)
    2f84:	00940733          	add	a4,s0,s1
    2f88:	08f705a3          	sb	a5,139(a4)
    2f8c:	00148493          	addi	s1,s1,1
    2f90:	fd449ce3          	bne	s1,s4,2f68 <fatfs_format_fat32+0x1a0>
    2f94:	000047b7          	lui	a5,0x4
    2f98:	14678793          	addi	a5,a5,326 # 4146 <_read_sectors+0xb6>
    2f9c:	08f41b23          	sh	a5,150(s0)
    2fa0:	203237b7          	lui	a5,0x20323
    2fa4:	35478793          	addi	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    2fa8:	08f42c23          	sw	a5,152(s0)
    2fac:	000027b7          	lui	a5,0x2
    2fb0:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x88>
    2fb4:	08f41e23          	sh	a5,156(s0)
    2fb8:	ffffb4b7          	lui	s1,0xffffb
    2fbc:	03842783          	lw	a5,56(s0)
    2fc0:	a5548493          	addi	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2fc4:	24941123          	sh	s1,578(s0)
    2fc8:	00100613          	li	a2,1
    2fcc:	00098593          	mv	a1,s3
    2fd0:	00000513          	li	a0,0
    2fd4:	000780e7          	jalr	a5
    2fd8:	ec0502e3          	beqz	a0,2e9c <fatfs_format_fat32+0xd4>
    2fdc:	01c42783          	lw	a5,28(s0)
    2fe0:	02a45903          	lhu	s2,42(s0)
    2fe4:	02042583          	lw	a1,32(s0)
    2fe8:	02c44503          	lbu	a0,44(s0)
    2fec:	00f90933          	add	s2,s2,a5
    2ff0:	01242a23          	sw	s2,20(s0)
    2ff4:	ffffe097          	auipc	ra,0xffffe
    2ff8:	f9c080e7          	jalr	-100(ra) # f90 <__mulsi3>
    2ffc:	01250533          	add	a0,a0,s2
    3000:	00a42223          	sw	a0,4(s0)
    3004:	20000613          	li	a2,512
    3008:	00000593          	li	a1,0
    300c:	00098513          	mv	a0,s3
    3010:	01845903          	lhu	s2,24(s0)
    3014:	ffffd097          	auipc	ra,0xffffd
    3018:	74c080e7          	jalr	1868(ra) # 760 <memset>
    301c:	416157b7          	lui	a5,0x41615
    3020:	25278793          	addi	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    3024:	04f42223          	sw	a5,68(s0)
    3028:	614177b7          	lui	a5,0x61417
    302c:	27278793          	addi	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    3030:	22f42423          	sw	a5,552(s0)
    3034:	fff00793          	li	a5,-1
    3038:	22f42623          	sw	a5,556(s0)
    303c:	22f42823          	sw	a5,560(s0)
    3040:	03842783          	lw	a5,56(s0)
    3044:	24941123          	sh	s1,578(s0)
    3048:	00100613          	li	a2,1
    304c:	00098593          	mv	a1,s3
    3050:	00090513          	mv	a0,s2
    3054:	000780e7          	jalr	a5
    3058:	e40502e3          	beqz	a0,2e9c <fatfs_format_fat32+0xd4>
    305c:	00100593          	li	a1,1
    3060:	00040513          	mv	a0,s0
    3064:	ffffe097          	auipc	ra,0xffffe
    3068:	1d0080e7          	jalr	464(ra) # 1234 <fatfs_erase_fat>
    306c:	e20508e3          	beqz	a0,2e9c <fatfs_format_fat32+0xd4>
    3070:	00842583          	lw	a1,8(s0)
    3074:	00040513          	mv	a0,s0
    3078:	ffffe097          	auipc	ra,0xffffe
    307c:	3f0080e7          	jalr	1008(ra) # 1468 <fatfs_lba_of_cluster>
    3080:	00044603          	lbu	a2,0(s0)
    3084:	00050593          	mv	a1,a0
    3088:	00040513          	mv	a0,s0
    308c:	ffffe097          	auipc	ra,0xffffe
    3090:	294080e7          	jalr	660(ra) # 1320 <fatfs_erase_sectors>
    3094:	00a03533          	snez	a0,a0
    3098:	e09ff06f          	j	2ea0 <fatfs_format_fat32+0xd8>

0000309c <fatfs_format>:
    309c:	004007b7          	lui	a5,0x400
    30a0:	00b7e663          	bltu	a5,a1,30ac <fatfs_format+0x10>
    30a4:	00000317          	auipc	t1,0x0
    30a8:	ab830067          	jr	-1352(t1) # 2b5c <fatfs_format_fat16>
    30ac:	00000317          	auipc	t1,0x0
    30b0:	d1c30067          	jr	-740(t1) # 2dc8 <fatfs_format_fat32>

000030b4 <fl_format>:
    30b4:	00058613          	mv	a2,a1
    30b8:	00050593          	mv	a1,a0
    30bc:	0000a537          	lui	a0,0xa
    30c0:	24050513          	addi	a0,a0,576 # a240 <_fs>
    30c4:	00000317          	auipc	t1,0x0
    30c8:	fd830067          	jr	-40(t1) # 309c <fatfs_format>

000030cc <fatfs_fat_purge>:
    30cc:	ff010113          	addi	sp,sp,-16
    30d0:	00812423          	sw	s0,8(sp)
    30d4:	25452403          	lw	s0,596(a0)
    30d8:	00912223          	sw	s1,4(sp)
    30dc:	00112623          	sw	ra,12(sp)
    30e0:	00050493          	mv	s1,a0
    30e4:	00041663          	bnez	s0,30f0 <fatfs_fat_purge+0x24>
    30e8:	00100513          	li	a0,1
    30ec:	0280006f          	j	3114 <fatfs_fat_purge+0x48>
    30f0:	20442783          	lw	a5,516(s0)
    30f4:	00079663          	bnez	a5,3100 <fatfs_fat_purge+0x34>
    30f8:	20c42403          	lw	s0,524(s0)
    30fc:	fe9ff06f          	j	30e4 <fatfs_fat_purge+0x18>
    3100:	00040593          	mv	a1,s0
    3104:	00048513          	mv	a0,s1
    3108:	ffffe097          	auipc	ra,0xffffe
    310c:	fbc080e7          	jalr	-68(ra) # 10c4 <fatfs_fat_writeback>
    3110:	fe0514e3          	bnez	a0,30f8 <fatfs_fat_purge+0x2c>
    3114:	00c12083          	lw	ra,12(sp)
    3118:	00812403          	lw	s0,8(sp)
    311c:	00412483          	lw	s1,4(sp)
    3120:	01010113          	addi	sp,sp,16
    3124:	00008067          	ret

00003128 <fl_shutdown>:
    3128:	000067b7          	lui	a5,0x6
    312c:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    3130:	ff010113          	addi	sp,sp,-16
    3134:	00112623          	sw	ra,12(sp)
    3138:	00812423          	sw	s0,8(sp)
    313c:	00912223          	sw	s1,4(sp)
    3140:	00079663          	bnez	a5,314c <fl_shutdown+0x24>
    3144:	ffffe097          	auipc	ra,0xffffe
    3148:	5e0080e7          	jalr	1504(ra) # 1724 <fl_init>
    314c:	0000a437          	lui	s0,0xa
    3150:	24040793          	addi	a5,s0,576 # a240 <_fs>
    3154:	03c7a783          	lw	a5,60(a5)
    3158:	24040493          	addi	s1,s0,576
    315c:	00078463          	beqz	a5,3164 <fl_shutdown+0x3c>
    3160:	000780e7          	jalr	a5
    3164:	24040513          	addi	a0,s0,576
    3168:	00000097          	auipc	ra,0x0
    316c:	f64080e7          	jalr	-156(ra) # 30cc <fatfs_fat_purge>
    3170:	0404a783          	lw	a5,64(s1)
    3174:	00078c63          	beqz	a5,318c <fl_shutdown+0x64>
    3178:	00812403          	lw	s0,8(sp)
    317c:	00c12083          	lw	ra,12(sp)
    3180:	00412483          	lw	s1,4(sp)
    3184:	01010113          	addi	sp,sp,16
    3188:	00078067          	jr	a5
    318c:	00c12083          	lw	ra,12(sp)
    3190:	00812403          	lw	s0,8(sp)
    3194:	00412483          	lw	s1,4(sp)
    3198:	01010113          	addi	sp,sp,16
    319c:	00008067          	ret

000031a0 <fatfs_find_next_cluster>:
    31a0:	ff010113          	addi	sp,sp,-16
    31a4:	00812423          	sw	s0,8(sp)
    31a8:	01212023          	sw	s2,0(sp)
    31ac:	00112623          	sw	ra,12(sp)
    31b0:	00912223          	sw	s1,4(sp)
    31b4:	00050913          	mv	s2,a0
    31b8:	00200413          	li	s0,2
    31bc:	00058463          	beqz	a1,31c4 <fatfs_find_next_cluster+0x24>
    31c0:	00058413          	mv	s0,a1
    31c4:	03092783          	lw	a5,48(s2)
    31c8:	00745493          	srli	s1,s0,0x7
    31cc:	00079463          	bnez	a5,31d4 <fatfs_find_next_cluster+0x34>
    31d0:	00845493          	srli	s1,s0,0x8
    31d4:	01492583          	lw	a1,20(s2)
    31d8:	00090513          	mv	a0,s2
    31dc:	00b485b3          	add	a1,s1,a1
    31e0:	ffffe097          	auipc	ra,0xffffe
    31e4:	f68080e7          	jalr	-152(ra) # 1148 <fatfs_fat_read_sector>
    31e8:	00050793          	mv	a5,a0
    31ec:	fff00513          	li	a0,-1
    31f0:	04078a63          	beqz	a5,3244 <fatfs_find_next_cluster+0xa4>
    31f4:	03092703          	lw	a4,48(s2)
    31f8:	2087a783          	lw	a5,520(a5)
    31fc:	06071063          	bnez	a4,325c <fatfs_find_next_cluster+0xbc>
    3200:	00849493          	slli	s1,s1,0x8
    3204:	40940433          	sub	s0,s0,s1
    3208:	00010737          	lui	a4,0x10
    320c:	00141413          	slli	s0,s0,0x1
    3210:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x5957>
    3214:	00e47433          	and	s0,s0,a4
    3218:	008787b3          	add	a5,a5,s0
    321c:	0017c503          	lbu	a0,1(a5)
    3220:	0007c783          	lbu	a5,0(a5)
    3224:	00851513          	slli	a0,a0,0x8
    3228:	00f50533          	add	a0,a0,a5
    322c:	ffff07b7          	lui	a5,0xffff0
    3230:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3234:	00f507b3          	add	a5,a0,a5
    3238:	00700713          	li	a4,7
    323c:	00f76463          	bltu	a4,a5,3244 <fatfs_find_next_cluster+0xa4>
    3240:	fff00513          	li	a0,-1
    3244:	00c12083          	lw	ra,12(sp)
    3248:	00812403          	lw	s0,8(sp)
    324c:	00412483          	lw	s1,4(sp)
    3250:	00012903          	lw	s2,0(sp)
    3254:	01010113          	addi	sp,sp,16
    3258:	00008067          	ret
    325c:	00749493          	slli	s1,s1,0x7
    3260:	40940433          	sub	s0,s0,s1
    3264:	00010737          	lui	a4,0x10
    3268:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x5957>
    326c:	00241413          	slli	s0,s0,0x2
    3270:	00e47433          	and	s0,s0,a4
    3274:	008787b3          	add	a5,a5,s0
    3278:	0037c503          	lbu	a0,3(a5)
    327c:	0027c703          	lbu	a4,2(a5)
    3280:	01851513          	slli	a0,a0,0x18
    3284:	01071713          	slli	a4,a4,0x10
    3288:	00e50533          	add	a0,a0,a4
    328c:	0007c703          	lbu	a4,0(a5)
    3290:	0017c783          	lbu	a5,1(a5)
    3294:	00e50533          	add	a0,a0,a4
    3298:	00879793          	slli	a5,a5,0x8
    329c:	00f50533          	add	a0,a0,a5
    32a0:	00451513          	slli	a0,a0,0x4
    32a4:	00455513          	srli	a0,a0,0x4
    32a8:	f00007b7          	lui	a5,0xf0000
    32ac:	f85ff06f          	j	3230 <fatfs_find_next_cluster+0x90>

000032b0 <fatfs_sector_reader>:
    32b0:	03052783          	lw	a5,48(a0)
    32b4:	fd010113          	addi	sp,sp,-48
    32b8:	02812423          	sw	s0,40(sp)
    32bc:	03212023          	sw	s2,32(sp)
    32c0:	01312e23          	sw	s3,28(sp)
    32c4:	02112623          	sw	ra,44(sp)
    32c8:	02912223          	sw	s1,36(sp)
    32cc:	01412c23          	sw	s4,24(sp)
    32d0:	01512a23          	sw	s5,20(sp)
    32d4:	00f5e7b3          	or	a5,a1,a5
    32d8:	00050413          	mv	s0,a0
    32dc:	00060913          	mv	s2,a2
    32e0:	00068993          	mv	s3,a3
    32e4:	06079c63          	bnez	a5,335c <fatfs_sector_reader+0xac>
    32e8:	01052783          	lw	a5,16(a0)
    32ec:	02f66663          	bltu	a2,a5,3318 <fatfs_sector_reader+0x68>
    32f0:	00000513          	li	a0,0
    32f4:	02c12083          	lw	ra,44(sp)
    32f8:	02812403          	lw	s0,40(sp)
    32fc:	02412483          	lw	s1,36(sp)
    3300:	02012903          	lw	s2,32(sp)
    3304:	01c12983          	lw	s3,28(sp)
    3308:	01812a03          	lw	s4,24(sp)
    330c:	01412a83          	lw	s5,20(sp)
    3310:	03010113          	addi	sp,sp,48
    3314:	00008067          	ret
    3318:	01c52503          	lw	a0,28(a0)
    331c:	00c42783          	lw	a5,12(s0)
    3320:	00f50533          	add	a0,a0,a5
    3324:	01250533          	add	a0,a0,s2
    3328:	0a098263          	beqz	s3,33cc <fatfs_sector_reader+0x11c>
    332c:	03442783          	lw	a5,52(s0)
    3330:	00100613          	li	a2,1
    3334:	00098593          	mv	a1,s3
    3338:	02812403          	lw	s0,40(sp)
    333c:	02c12083          	lw	ra,44(sp)
    3340:	02412483          	lw	s1,36(sp)
    3344:	02012903          	lw	s2,32(sp)
    3348:	01c12983          	lw	s3,28(sp)
    334c:	01812a03          	lw	s4,24(sp)
    3350:	01412a83          	lw	s5,20(sp)
    3354:	03010113          	addi	sp,sp,48
    3358:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    335c:	00058493          	mv	s1,a1
    3360:	00054583          	lbu	a1,0(a0)
    3364:	00060513          	mv	a0,a2
    3368:	00000a93          	li	s5,0
    336c:	00b12623          	sw	a1,12(sp)
    3370:	ffffd097          	auipc	ra,0xffffd
    3374:	31c080e7          	jalr	796(ra) # 68c <__udivsi3>
    3378:	00c12583          	lw	a1,12(sp)
    337c:	00050a13          	mv	s4,a0
    3380:	00090513          	mv	a0,s2
    3384:	ffffd097          	auipc	ra,0xffffd
    3388:	350080e7          	jalr	848(ra) # 6d4 <__umodsi3>
    338c:	00050913          	mv	s2,a0
    3390:	034a9063          	bne	s5,s4,33b0 <fatfs_sector_reader+0x100>
    3394:	fff00793          	li	a5,-1
    3398:	f4f48ce3          	beq	s1,a5,32f0 <fatfs_sector_reader+0x40>
    339c:	00048593          	mv	a1,s1
    33a0:	00040513          	mv	a0,s0
    33a4:	ffffe097          	auipc	ra,0xffffe
    33a8:	0c4080e7          	jalr	196(ra) # 1468 <fatfs_lba_of_cluster>
    33ac:	f79ff06f          	j	3324 <fatfs_sector_reader+0x74>
    33b0:	00048593          	mv	a1,s1
    33b4:	00040513          	mv	a0,s0
    33b8:	00000097          	auipc	ra,0x0
    33bc:	de8080e7          	jalr	-536(ra) # 31a0 <fatfs_find_next_cluster>
    33c0:	00050493          	mv	s1,a0
    33c4:	001a8a93          	addi	s5,s5,1
    33c8:	fc9ff06f          	j	3390 <fatfs_sector_reader+0xe0>
    33cc:	24442783          	lw	a5,580(s0)
    33d0:	00a78c63          	beq	a5,a0,33e8 <fatfs_sector_reader+0x138>
    33d4:	03442783          	lw	a5,52(s0)
    33d8:	24a42223          	sw	a0,580(s0)
    33dc:	00100613          	li	a2,1
    33e0:	04440593          	addi	a1,s0,68
    33e4:	f55ff06f          	j	3338 <fatfs_sector_reader+0x88>
    33e8:	00100513          	li	a0,1
    33ec:	f09ff06f          	j	32f4 <fatfs_sector_reader+0x44>

000033f0 <fatfs_get_file_entry>:
    33f0:	eb010113          	addi	sp,sp,-336
    33f4:	14812423          	sw	s0,328(sp)
    33f8:	01810413          	addi	s0,sp,24
    33fc:	14912223          	sw	s1,324(sp)
    3400:	15212023          	sw	s2,320(sp)
    3404:	13312e23          	sw	s3,316(sp)
    3408:	13412c23          	sw	s4,312(sp)
    340c:	13512a23          	sw	s5,308(sp)
    3410:	13612823          	sw	s6,304(sp)
    3414:	14112623          	sw	ra,332(sp)
    3418:	13712623          	sw	s7,300(sp)
    341c:	13812423          	sw	s8,296(sp)
    3420:	13912223          	sw	s9,292(sp)
    3424:	13a12023          	sw	s10,288(sp)
    3428:	00050493          	mv	s1,a0
    342c:	00058a93          	mv	s5,a1
    3430:	00060913          	mv	s2,a2
    3434:	00068993          	mv	s3,a3
    3438:	10010ea3          	sb	zero,285(sp)
    343c:	11c10a13          	addi	s4,sp,284
    3440:	00040b13          	mv	s6,s0
    3444:	00040513          	mv	a0,s0
    3448:	00d00613          	li	a2,13
    344c:	00000593          	li	a1,0
    3450:	00d40413          	addi	s0,s0,13
    3454:	ffffd097          	auipc	ra,0xffffd
    3458:	30c080e7          	jalr	780(ra) # 760 <memset>
    345c:	ff4414e3          	bne	s0,s4,3444 <fatfs_get_file_entry+0x54>
    3460:	00000a13          	li	s4,0
    3464:	24448c13          	addi	s8,s1,580
    3468:	00800c93          	li	s9,8
    346c:	02000b93          	li	s7,32
    3470:	00000693          	li	a3,0
    3474:	000a0613          	mv	a2,s4
    3478:	000a8593          	mv	a1,s5
    347c:	00048513          	mv	a0,s1
    3480:	00000097          	auipc	ra,0x0
    3484:	e30080e7          	jalr	-464(ra) # 32b0 <fatfs_sector_reader>
    3488:	16050463          	beqz	a0,35f0 <fatfs_get_file_entry+0x200>
    348c:	04448413          	addi	s0,s1,68
    3490:	02e00d13          	li	s10,46
    3494:	00040513          	mv	a0,s0
    3498:	ffffe097          	auipc	ra,0xffffe
    349c:	69c080e7          	jalr	1692(ra) # 1b34 <fatfs_entry_lfn_text>
    34a0:	02050263          	beqz	a0,34c4 <fatfs_get_file_entry+0xd4>
    34a4:	00040593          	mv	a1,s0
    34a8:	000b0513          	mv	a0,s6
    34ac:	ffffe097          	auipc	ra,0xffffe
    34b0:	580080e7          	jalr	1408(ra) # 1a2c <fatfs_lfn_cache_entry>
    34b4:	02040413          	addi	s0,s0,32
    34b8:	fd841ee3          	bne	s0,s8,3494 <fatfs_get_file_entry+0xa4>
    34bc:	001a0a13          	addi	s4,s4,1
    34c0:	fb1ff06f          	j	3470 <fatfs_get_file_entry+0x80>
    34c4:	00040513          	mv	a0,s0
    34c8:	ffffe097          	auipc	ra,0xffffe
    34cc:	680080e7          	jalr	1664(ra) # 1b48 <fatfs_entry_lfn_invalid>
    34d0:	00050663          	beqz	a0,34dc <fatfs_get_file_entry+0xec>
    34d4:	10010ea3          	sb	zero,285(sp)
    34d8:	fddff06f          	j	34b4 <fatfs_get_file_entry+0xc4>
    34dc:	00040593          	mv	a1,s0
    34e0:	000b0513          	mv	a0,s6
    34e4:	ffffe097          	auipc	ra,0xffffe
    34e8:	69c080e7          	jalr	1692(ra) # 1b80 <fatfs_entry_lfn_exists>
    34ec:	06050863          	beqz	a0,355c <fatfs_get_file_entry+0x16c>
    34f0:	000b0513          	mv	a0,s6
    34f4:	ffffe097          	auipc	ra,0xffffe
    34f8:	604080e7          	jalr	1540(ra) # 1af8 <fatfs_lfn_cache_get>
    34fc:	00090593          	mv	a1,s2
    3500:	fffff097          	auipc	ra,0xfffff
    3504:	e50080e7          	jalr	-432(ra) # 2350 <fatfs_compare_names>
    3508:	fc0506e3          	beqz	a0,34d4 <fatfs_get_file_entry+0xe4>
    350c:	02000613          	li	a2,32
    3510:	00040593          	mv	a1,s0
    3514:	00098513          	mv	a0,s3
    3518:	ffffd097          	auipc	ra,0xffffd
    351c:	264080e7          	jalr	612(ra) # 77c <memcpy>
    3520:	00100513          	li	a0,1
    3524:	14c12083          	lw	ra,332(sp)
    3528:	14812403          	lw	s0,328(sp)
    352c:	14412483          	lw	s1,324(sp)
    3530:	14012903          	lw	s2,320(sp)
    3534:	13c12983          	lw	s3,316(sp)
    3538:	13812a03          	lw	s4,312(sp)
    353c:	13412a83          	lw	s5,308(sp)
    3540:	13012b03          	lw	s6,304(sp)
    3544:	12c12b83          	lw	s7,300(sp)
    3548:	12812c03          	lw	s8,296(sp)
    354c:	12412c83          	lw	s9,292(sp)
    3550:	12012d03          	lw	s10,288(sp)
    3554:	15010113          	addi	sp,sp,336
    3558:	00008067          	ret
    355c:	00040513          	mv	a0,s0
    3560:	ffffe097          	auipc	ra,0xffffe
    3564:	668080e7          	jalr	1640(ra) # 1bc8 <fatfs_entry_sfn_only>
    3568:	f40506e3          	beqz	a0,34b4 <fatfs_get_file_entry+0xc4>
    356c:	00d00613          	li	a2,13
    3570:	00000593          	li	a1,0
    3574:	00810513          	addi	a0,sp,8
    3578:	ffffd097          	auipc	ra,0xffffd
    357c:	1e8080e7          	jalr	488(ra) # 760 <memset>
    3580:	00000793          	li	a5,0
    3584:	00f406b3          	add	a3,s0,a5
    3588:	0006c683          	lbu	a3,0(a3)
    358c:	00810713          	addi	a4,sp,8
    3590:	00f70733          	add	a4,a4,a5
    3594:	00d70023          	sb	a3,0(a4)
    3598:	00178793          	addi	a5,a5,1
    359c:	ff9794e3          	bne	a5,s9,3584 <fatfs_get_file_entry+0x194>
    35a0:	00844783          	lbu	a5,8(s0)
    35a4:	00944683          	lbu	a3,9(s0)
    35a8:	00100713          	li	a4,1
    35ac:	00f108a3          	sb	a5,17(sp)
    35b0:	00d10923          	sb	a3,18(sp)
    35b4:	01769663          	bne	a3,s7,35c0 <fatfs_get_file_entry+0x1d0>
    35b8:	fe078793          	addi	a5,a5,-32
    35bc:	00f03733          	snez	a4,a5
    35c0:	00a44783          	lbu	a5,10(s0)
    35c4:	00f109a3          	sb	a5,19(sp)
    35c8:	01779463          	bne	a5,s7,35d0 <fatfs_get_file_entry+0x1e0>
    35cc:	00070a63          	beqz	a4,35e0 <fatfs_get_file_entry+0x1f0>
    35d0:	00814703          	lbu	a4,8(sp)
    35d4:	02000793          	li	a5,32
    35d8:	01a70463          	beq	a4,s10,35e0 <fatfs_get_file_entry+0x1f0>
    35dc:	02e00793          	li	a5,46
    35e0:	00f10823          	sb	a5,16(sp)
    35e4:	00090593          	mv	a1,s2
    35e8:	00810513          	addi	a0,sp,8
    35ec:	f15ff06f          	j	3500 <fatfs_get_file_entry+0x110>
    35f0:	00000513          	li	a0,0
    35f4:	f31ff06f          	j	3524 <fatfs_get_file_entry+0x134>

000035f8 <_open_directory>:
    35f8:	eb010113          	addi	sp,sp,-336
    35fc:	13512a23          	sw	s5,308(sp)
    3600:	0000aab7          	lui	s5,0xa
    3604:	240a8793          	addi	a5,s5,576 # a240 <_fs>
    3608:	14812423          	sw	s0,328(sp)
    360c:	14912223          	sw	s1,324(sp)
    3610:	15212023          	sw	s2,320(sp)
    3614:	13312e23          	sw	s3,316(sp)
    3618:	13412c23          	sw	s4,312(sp)
    361c:	13612823          	sw	s6,304(sp)
    3620:	0087a403          	lw	s0,8(a5)
    3624:	14112623          	sw	ra,332(sp)
    3628:	00050a13          	mv	s4,a0
    362c:	00058913          	mv	s2,a1
    3630:	fffff097          	auipc	ra,0xfffff
    3634:	ad8080e7          	jalr	-1320(ra) # 2108 <fatfs_total_path_levels>
    3638:	00050993          	mv	s3,a0
    363c:	00000493          	li	s1,0
    3640:	fff00b13          	li	s6,-1
    3644:	0099d863          	bge	s3,s1,3654 <_open_directory+0x5c>
    3648:	00892023          	sw	s0,0(s2)
    364c:	00100513          	li	a0,1
    3650:	0240006f          	j	3674 <_open_directory+0x7c>
    3654:	10400693          	li	a3,260
    3658:	02c10613          	addi	a2,sp,44
    365c:	00048593          	mv	a1,s1
    3660:	000a0513          	mv	a0,s4
    3664:	fffff097          	auipc	ra,0xfffff
    3668:	b18080e7          	jalr	-1256(ra) # 217c <fatfs_get_substring>
    366c:	03651863          	bne	a0,s6,369c <_open_directory+0xa4>
    3670:	00000513          	li	a0,0
    3674:	14c12083          	lw	ra,332(sp)
    3678:	14812403          	lw	s0,328(sp)
    367c:	14412483          	lw	s1,324(sp)
    3680:	14012903          	lw	s2,320(sp)
    3684:	13c12983          	lw	s3,316(sp)
    3688:	13812a03          	lw	s4,312(sp)
    368c:	13412a83          	lw	s5,308(sp)
    3690:	13012b03          	lw	s6,304(sp)
    3694:	15010113          	addi	sp,sp,336
    3698:	00008067          	ret
    369c:	00c10693          	addi	a3,sp,12
    36a0:	02c10613          	addi	a2,sp,44
    36a4:	00040593          	mv	a1,s0
    36a8:	240a8513          	addi	a0,s5,576
    36ac:	00000097          	auipc	ra,0x0
    36b0:	d44080e7          	jalr	-700(ra) # 33f0 <fatfs_get_file_entry>
    36b4:	fa050ee3          	beqz	a0,3670 <_open_directory+0x78>
    36b8:	00c10513          	addi	a0,sp,12
    36bc:	ffffe097          	auipc	ra,0xffffe
    36c0:	548080e7          	jalr	1352(ra) # 1c04 <fatfs_entry_is_dir>
    36c4:	fa0506e3          	beqz	a0,3670 <_open_directory+0x78>
    36c8:	02015403          	lhu	s0,32(sp)
    36cc:	02615783          	lhu	a5,38(sp)
    36d0:	00148493          	addi	s1,s1,1
    36d4:	01041413          	slli	s0,s0,0x10
    36d8:	00f40433          	add	s0,s0,a5
    36dc:	f69ff06f          	j	3644 <_open_directory+0x4c>

000036e0 <fl_opendir>:
    36e0:	fe010113          	addi	sp,sp,-32
    36e4:	fff00793          	li	a5,-1
    36e8:	00f12623          	sw	a5,12(sp)
    36ec:	000067b7          	lui	a5,0x6
    36f0:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    36f4:	00812c23          	sw	s0,24(sp)
    36f8:	01212823          	sw	s2,16(sp)
    36fc:	00112e23          	sw	ra,28(sp)
    3700:	00912a23          	sw	s1,20(sp)
    3704:	00050913          	mv	s2,a0
    3708:	00058413          	mv	s0,a1
    370c:	00079663          	bnez	a5,3718 <fl_opendir+0x38>
    3710:	ffffe097          	auipc	ra,0xffffe
    3714:	014080e7          	jalr	20(ra) # 1724 <fl_init>
    3718:	0000a4b7          	lui	s1,0xa
    371c:	24048793          	addi	a5,s1,576 # a240 <_fs>
    3720:	03c7a783          	lw	a5,60(a5)
    3724:	24048493          	addi	s1,s1,576
    3728:	00078463          	beqz	a5,3730 <fl_opendir+0x50>
    372c:	000780e7          	jalr	a5
    3730:	00090513          	mv	a0,s2
    3734:	fffff097          	auipc	ra,0xfffff
    3738:	9d4080e7          	jalr	-1580(ra) # 2108 <fatfs_total_path_levels>
    373c:	fff00793          	li	a5,-1
    3740:	02f51063          	bne	a0,a5,3760 <fl_opendir+0x80>
    3744:	0084a783          	lw	a5,8(s1)
    3748:	00f12623          	sw	a5,12(sp)
    374c:	00c12783          	lw	a5,12(sp)
    3750:	00042023          	sw	zero,0(s0)
    3754:	00040423          	sb	zero,8(s0)
    3758:	00f42223          	sw	a5,4(s0)
    375c:	0180006f          	j	3774 <fl_opendir+0x94>
    3760:	00c10593          	addi	a1,sp,12
    3764:	00090513          	mv	a0,s2
    3768:	00000097          	auipc	ra,0x0
    376c:	e90080e7          	jalr	-368(ra) # 35f8 <_open_directory>
    3770:	fc051ee3          	bnez	a0,374c <fl_opendir+0x6c>
    3774:	0404a783          	lw	a5,64(s1)
    3778:	00078463          	beqz	a5,3780 <fl_opendir+0xa0>
    377c:	000780e7          	jalr	a5
    3780:	00c12703          	lw	a4,12(sp)
    3784:	fff00793          	li	a5,-1
    3788:	00f71463          	bne	a4,a5,3790 <fl_opendir+0xb0>
    378c:	00000413          	li	s0,0
    3790:	01c12083          	lw	ra,28(sp)
    3794:	00040513          	mv	a0,s0
    3798:	01812403          	lw	s0,24(sp)
    379c:	01412483          	lw	s1,20(sp)
    37a0:	01012903          	lw	s2,16(sp)
    37a4:	02010113          	addi	sp,sp,32
    37a8:	00008067          	ret

000037ac <fl_is_dir>:
    37ac:	fe010113          	addi	sp,sp,-32
    37b0:	00410593          	addi	a1,sp,4
    37b4:	00112e23          	sw	ra,28(sp)
    37b8:	00000097          	auipc	ra,0x0
    37bc:	f28080e7          	jalr	-216(ra) # 36e0 <fl_opendir>
    37c0:	01c12083          	lw	ra,28(sp)
    37c4:	00a03533          	snez	a0,a0
    37c8:	02010113          	addi	sp,sp,32
    37cc:	00008067          	ret

000037d0 <_open_file>:
    37d0:	fc010113          	addi	sp,sp,-64
    37d4:	02812c23          	sw	s0,56(sp)
    37d8:	03312623          	sw	s3,44(sp)
    37dc:	02112e23          	sw	ra,60(sp)
    37e0:	02912a23          	sw	s1,52(sp)
    37e4:	03212823          	sw	s2,48(sp)
    37e8:	00050993          	mv	s3,a0
    37ec:	ffffe097          	auipc	ra,0xffffe
    37f0:	bc0080e7          	jalr	-1088(ra) # 13ac <_allocate_file>
    37f4:	00050413          	mv	s0,a0
    37f8:	10050c63          	beqz	a0,3910 <_open_file+0x140>
    37fc:	01450913          	addi	s2,a0,20
    3800:	10400613          	li	a2,260
    3804:	00000593          	li	a1,0
    3808:	00090513          	mv	a0,s2
    380c:	ffffd097          	auipc	ra,0xffffd
    3810:	f54080e7          	jalr	-172(ra) # 760 <memset>
    3814:	11840493          	addi	s1,s0,280
    3818:	10400613          	li	a2,260
    381c:	00000593          	li	a1,0
    3820:	00048513          	mv	a0,s1
    3824:	ffffd097          	auipc	ra,0xffffd
    3828:	f3c080e7          	jalr	-196(ra) # 760 <memset>
    382c:	10400713          	li	a4,260
    3830:	00048693          	mv	a3,s1
    3834:	10400613          	li	a2,260
    3838:	00090593          	mv	a1,s2
    383c:	00098513          	mv	a0,s3
    3840:	fffff097          	auipc	ra,0xfffff
    3844:	a30080e7          	jalr	-1488(ra) # 2270 <fatfs_split_path>
    3848:	fff00793          	li	a5,-1
    384c:	00f51c63          	bne	a0,a5,3864 <_open_file+0x94>
    3850:	00040513          	mv	a0,s0
    3854:	ffffe097          	auipc	ra,0xffffe
    3858:	bcc080e7          	jalr	-1076(ra) # 1420 <_free_file>
    385c:	00000413          	li	s0,0
    3860:	0b00006f          	j	3910 <_open_file+0x140>
    3864:	00040513          	mv	a0,s0
    3868:	fffff097          	auipc	ra,0xfffff
    386c:	c58080e7          	jalr	-936(ra) # 24c0 <_check_file_open>
    3870:	fe0510e3          	bnez	a0,3850 <_open_file+0x80>
    3874:	01444783          	lbu	a5,20(s0)
    3878:	0a079c63          	bnez	a5,3930 <_open_file+0x160>
    387c:	0000a7b7          	lui	a5,0xa
    3880:	2487a783          	lw	a5,584(a5) # a248 <_fs+0x8>
    3884:	00f42023          	sw	a5,0(s0)
    3888:	00042583          	lw	a1,0(s0)
    388c:	0000a937          	lui	s2,0xa
    3890:	00010693          	mv	a3,sp
    3894:	00048613          	mv	a2,s1
    3898:	24090513          	addi	a0,s2,576 # a240 <_fs>
    389c:	00000097          	auipc	ra,0x0
    38a0:	b54080e7          	jalr	-1196(ra) # 33f0 <fatfs_get_file_entry>
    38a4:	fa0506e3          	beqz	a0,3850 <_open_file+0x80>
    38a8:	00010513          	mv	a0,sp
    38ac:	ffffe097          	auipc	ra,0xffffe
    38b0:	368080e7          	jalr	872(ra) # 1c14 <fatfs_entry_is_file>
    38b4:	f8050ee3          	beqz	a0,3850 <_open_file+0x80>
    38b8:	00b00613          	li	a2,11
    38bc:	00010593          	mv	a1,sp
    38c0:	21c40513          	addi	a0,s0,540
    38c4:	ffffd097          	auipc	ra,0xffffd
    38c8:	eb8080e7          	jalr	-328(ra) # 77c <memcpy>
    38cc:	01c12783          	lw	a5,28(sp)
    38d0:	01a15703          	lhu	a4,26(sp)
    38d4:	00042423          	sw	zero,8(s0)
    38d8:	00f42623          	sw	a5,12(s0)
    38dc:	01415783          	lhu	a5,20(sp)
    38e0:	42042a23          	sw	zero,1076(s0)
    38e4:	00042823          	sw	zero,16(s0)
    38e8:	01079793          	slli	a5,a5,0x10
    38ec:	00e787b3          	add	a5,a5,a4
    38f0:	00f42223          	sw	a5,4(s0)
    38f4:	fff00793          	li	a5,-1
    38f8:	42f42823          	sw	a5,1072(s0)
    38fc:	22f42423          	sw	a5,552(s0)
    3900:	22f42623          	sw	a5,556(s0)
    3904:	24090513          	addi	a0,s2,576
    3908:	fffff097          	auipc	ra,0xfffff
    390c:	7c4080e7          	jalr	1988(ra) # 30cc <fatfs_fat_purge>
    3910:	03c12083          	lw	ra,60(sp)
    3914:	00040513          	mv	a0,s0
    3918:	03812403          	lw	s0,56(sp)
    391c:	03412483          	lw	s1,52(sp)
    3920:	03012903          	lw	s2,48(sp)
    3924:	02c12983          	lw	s3,44(sp)
    3928:	04010113          	addi	sp,sp,64
    392c:	00008067          	ret
    3930:	00040593          	mv	a1,s0
    3934:	00090513          	mv	a0,s2
    3938:	00000097          	auipc	ra,0x0
    393c:	cc0080e7          	jalr	-832(ra) # 35f8 <_open_directory>
    3940:	f40514e3          	bnez	a0,3888 <_open_file+0xb8>
    3944:	f0dff06f          	j	3850 <_open_file+0x80>

00003948 <fatfs_sfn_exists>:
    3948:	fe010113          	addi	sp,sp,-32
    394c:	00912a23          	sw	s1,20(sp)
    3950:	01212823          	sw	s2,16(sp)
    3954:	01312623          	sw	s3,12(sp)
    3958:	01412423          	sw	s4,8(sp)
    395c:	01512223          	sw	s5,4(sp)
    3960:	00112e23          	sw	ra,28(sp)
    3964:	00812c23          	sw	s0,24(sp)
    3968:	00050493          	mv	s1,a0
    396c:	00058993          	mv	s3,a1
    3970:	00060a13          	mv	s4,a2
    3974:	00000913          	li	s2,0
    3978:	24450a93          	addi	s5,a0,580
    397c:	00000693          	li	a3,0
    3980:	00090613          	mv	a2,s2
    3984:	00098593          	mv	a1,s3
    3988:	00048513          	mv	a0,s1
    398c:	00000097          	auipc	ra,0x0
    3990:	924080e7          	jalr	-1756(ra) # 32b0 <fatfs_sector_reader>
    3994:	06050263          	beqz	a0,39f8 <fatfs_sfn_exists+0xb0>
    3998:	04448413          	addi	s0,s1,68
    399c:	00040513          	mv	a0,s0
    39a0:	ffffe097          	auipc	ra,0xffffe
    39a4:	194080e7          	jalr	404(ra) # 1b34 <fatfs_entry_lfn_text>
    39a8:	02051e63          	bnez	a0,39e4 <fatfs_sfn_exists+0x9c>
    39ac:	00040513          	mv	a0,s0
    39b0:	ffffe097          	auipc	ra,0xffffe
    39b4:	198080e7          	jalr	408(ra) # 1b48 <fatfs_entry_lfn_invalid>
    39b8:	02051663          	bnez	a0,39e4 <fatfs_sfn_exists+0x9c>
    39bc:	00040513          	mv	a0,s0
    39c0:	ffffe097          	auipc	ra,0xffffe
    39c4:	208080e7          	jalr	520(ra) # 1bc8 <fatfs_entry_sfn_only>
    39c8:	00050e63          	beqz	a0,39e4 <fatfs_sfn_exists+0x9c>
    39cc:	00b00613          	li	a2,11
    39d0:	000a0593          	mv	a1,s4
    39d4:	00040513          	mv	a0,s0
    39d8:	ffffd097          	auipc	ra,0xffffd
    39dc:	de8080e7          	jalr	-536(ra) # 7c0 <strncmp>
    39e0:	00050a63          	beqz	a0,39f4 <fatfs_sfn_exists+0xac>
    39e4:	02040413          	addi	s0,s0,32
    39e8:	fb541ae3          	bne	s0,s5,399c <fatfs_sfn_exists+0x54>
    39ec:	00190913          	addi	s2,s2,1
    39f0:	f8dff06f          	j	397c <fatfs_sfn_exists+0x34>
    39f4:	00100513          	li	a0,1
    39f8:	01c12083          	lw	ra,28(sp)
    39fc:	01812403          	lw	s0,24(sp)
    3a00:	01412483          	lw	s1,20(sp)
    3a04:	01012903          	lw	s2,16(sp)
    3a08:	00c12983          	lw	s3,12(sp)
    3a0c:	00812a03          	lw	s4,8(sp)
    3a10:	00412a83          	lw	s5,4(sp)
    3a14:	02010113          	addi	sp,sp,32
    3a18:	00008067          	ret

00003a1c <fatfs_update_file_length>:
    3a1c:	03852783          	lw	a5,56(a0)
    3a20:	14078e63          	beqz	a5,3b7c <fatfs_update_file_length+0x160>
    3a24:	fd010113          	addi	sp,sp,-48
    3a28:	02912223          	sw	s1,36(sp)
    3a2c:	03212023          	sw	s2,32(sp)
    3a30:	01312e23          	sw	s3,28(sp)
    3a34:	01412c23          	sw	s4,24(sp)
    3a38:	01512a23          	sw	s5,20(sp)
    3a3c:	01612823          	sw	s6,16(sp)
    3a40:	02112623          	sw	ra,44(sp)
    3a44:	02812423          	sw	s0,40(sp)
    3a48:	01712623          	sw	s7,12(sp)
    3a4c:	00050493          	mv	s1,a0
    3a50:	00058a13          	mv	s4,a1
    3a54:	00060a93          	mv	s5,a2
    3a58:	00068913          	mv	s2,a3
    3a5c:	00000993          	li	s3,0
    3a60:	24450b13          	addi	s6,a0,580
    3a64:	00000693          	li	a3,0
    3a68:	00098613          	mv	a2,s3
    3a6c:	000a0593          	mv	a1,s4
    3a70:	00048513          	mv	a0,s1
    3a74:	00000097          	auipc	ra,0x0
    3a78:	83c080e7          	jalr	-1988(ra) # 32b0 <fatfs_sector_reader>
    3a7c:	0c050863          	beqz	a0,3b4c <fatfs_update_file_length+0x130>
    3a80:	04448413          	addi	s0,s1,68
    3a84:	00040b93          	mv	s7,s0
    3a88:	00040513          	mv	a0,s0
    3a8c:	ffffe097          	auipc	ra,0xffffe
    3a90:	0a8080e7          	jalr	168(ra) # 1b34 <fatfs_entry_lfn_text>
    3a94:	0a051463          	bnez	a0,3b3c <fatfs_update_file_length+0x120>
    3a98:	00040513          	mv	a0,s0
    3a9c:	ffffe097          	auipc	ra,0xffffe
    3aa0:	0ac080e7          	jalr	172(ra) # 1b48 <fatfs_entry_lfn_invalid>
    3aa4:	08051c63          	bnez	a0,3b3c <fatfs_update_file_length+0x120>
    3aa8:	00040513          	mv	a0,s0
    3aac:	ffffe097          	auipc	ra,0xffffe
    3ab0:	11c080e7          	jalr	284(ra) # 1bc8 <fatfs_entry_sfn_only>
    3ab4:	08050463          	beqz	a0,3b3c <fatfs_update_file_length+0x120>
    3ab8:	00b00613          	li	a2,11
    3abc:	000a8593          	mv	a1,s5
    3ac0:	00040513          	mv	a0,s0
    3ac4:	ffffd097          	auipc	ra,0xffffd
    3ac8:	cfc080e7          	jalr	-772(ra) # 7c0 <strncmp>
    3acc:	06051863          	bnez	a0,3b3c <fatfs_update_file_length+0x120>
    3ad0:	00895793          	srli	a5,s2,0x8
    3ad4:	01240e23          	sb	s2,28(s0)
    3ad8:	00f40ea3          	sb	a5,29(s0)
    3adc:	01095793          	srli	a5,s2,0x10
    3ae0:	01895913          	srli	s2,s2,0x18
    3ae4:	00f40f23          	sb	a5,30(s0)
    3ae8:	01240fa3          	sb	s2,31(s0)
    3aec:	00040593          	mv	a1,s0
    3af0:	02000613          	li	a2,32
    3af4:	00040513          	mv	a0,s0
    3af8:	ffffd097          	auipc	ra,0xffffd
    3afc:	c84080e7          	jalr	-892(ra) # 77c <memcpy>
    3b00:	02812403          	lw	s0,40(sp)
    3b04:	0384a783          	lw	a5,56(s1)
    3b08:	2444a503          	lw	a0,580(s1)
    3b0c:	02c12083          	lw	ra,44(sp)
    3b10:	02412483          	lw	s1,36(sp)
    3b14:	02012903          	lw	s2,32(sp)
    3b18:	01c12983          	lw	s3,28(sp)
    3b1c:	01812a03          	lw	s4,24(sp)
    3b20:	01412a83          	lw	s5,20(sp)
    3b24:	01012b03          	lw	s6,16(sp)
    3b28:	000b8593          	mv	a1,s7
    3b2c:	00c12b83          	lw	s7,12(sp)
    3b30:	00100613          	li	a2,1
    3b34:	03010113          	addi	sp,sp,48
    3b38:	00078067          	jr	a5
    3b3c:	02040413          	addi	s0,s0,32
    3b40:	f56414e3          	bne	s0,s6,3a88 <fatfs_update_file_length+0x6c>
    3b44:	00198993          	addi	s3,s3,1
    3b48:	f1dff06f          	j	3a64 <fatfs_update_file_length+0x48>
    3b4c:	02c12083          	lw	ra,44(sp)
    3b50:	02812403          	lw	s0,40(sp)
    3b54:	02412483          	lw	s1,36(sp)
    3b58:	02012903          	lw	s2,32(sp)
    3b5c:	01c12983          	lw	s3,28(sp)
    3b60:	01812a03          	lw	s4,24(sp)
    3b64:	01412a83          	lw	s5,20(sp)
    3b68:	01012b03          	lw	s6,16(sp)
    3b6c:	00c12b83          	lw	s7,12(sp)
    3b70:	00000513          	li	a0,0
    3b74:	03010113          	addi	sp,sp,48
    3b78:	00008067          	ret
    3b7c:	00000513          	li	a0,0
    3b80:	00008067          	ret

00003b84 <fatfs_mark_file_deleted>:
    3b84:	03852783          	lw	a5,56(a0)
    3b88:	12078c63          	beqz	a5,3cc0 <fatfs_mark_file_deleted+0x13c>
    3b8c:	fe010113          	addi	sp,sp,-32
    3b90:	00912a23          	sw	s1,20(sp)
    3b94:	01212823          	sw	s2,16(sp)
    3b98:	01312623          	sw	s3,12(sp)
    3b9c:	01412423          	sw	s4,8(sp)
    3ba0:	01512223          	sw	s5,4(sp)
    3ba4:	00112e23          	sw	ra,28(sp)
    3ba8:	00812c23          	sw	s0,24(sp)
    3bac:	01612023          	sw	s6,0(sp)
    3bb0:	00050493          	mv	s1,a0
    3bb4:	00058993          	mv	s3,a1
    3bb8:	00060a13          	mv	s4,a2
    3bbc:	00000913          	li	s2,0
    3bc0:	24450a93          	addi	s5,a0,580
    3bc4:	00000693          	li	a3,0
    3bc8:	00090613          	mv	a2,s2
    3bcc:	00098593          	mv	a1,s3
    3bd0:	00048513          	mv	a0,s1
    3bd4:	fffff097          	auipc	ra,0xfffff
    3bd8:	6dc080e7          	jalr	1756(ra) # 32b0 <fatfs_sector_reader>
    3bdc:	0a050c63          	beqz	a0,3c94 <fatfs_mark_file_deleted+0x110>
    3be0:	04448413          	addi	s0,s1,68
    3be4:	00040b13          	mv	s6,s0
    3be8:	00040513          	mv	a0,s0
    3bec:	ffffe097          	auipc	ra,0xffffe
    3bf0:	f48080e7          	jalr	-184(ra) # 1b34 <fatfs_entry_lfn_text>
    3bf4:	08051863          	bnez	a0,3c84 <fatfs_mark_file_deleted+0x100>
    3bf8:	00040513          	mv	a0,s0
    3bfc:	ffffe097          	auipc	ra,0xffffe
    3c00:	f4c080e7          	jalr	-180(ra) # 1b48 <fatfs_entry_lfn_invalid>
    3c04:	08051063          	bnez	a0,3c84 <fatfs_mark_file_deleted+0x100>
    3c08:	00040513          	mv	a0,s0
    3c0c:	ffffe097          	auipc	ra,0xffffe
    3c10:	fbc080e7          	jalr	-68(ra) # 1bc8 <fatfs_entry_sfn_only>
    3c14:	06050863          	beqz	a0,3c84 <fatfs_mark_file_deleted+0x100>
    3c18:	00b00613          	li	a2,11
    3c1c:	000a0593          	mv	a1,s4
    3c20:	00040513          	mv	a0,s0
    3c24:	ffffd097          	auipc	ra,0xffffd
    3c28:	b9c080e7          	jalr	-1124(ra) # 7c0 <strncmp>
    3c2c:	04051c63          	bnez	a0,3c84 <fatfs_mark_file_deleted+0x100>
    3c30:	fe500793          	li	a5,-27
    3c34:	00f40023          	sb	a5,0(s0)
    3c38:	00040593          	mv	a1,s0
    3c3c:	02000613          	li	a2,32
    3c40:	00040513          	mv	a0,s0
    3c44:	ffffd097          	auipc	ra,0xffffd
    3c48:	b38080e7          	jalr	-1224(ra) # 77c <memcpy>
    3c4c:	01812403          	lw	s0,24(sp)
    3c50:	0384a783          	lw	a5,56(s1)
    3c54:	2444a503          	lw	a0,580(s1)
    3c58:	01c12083          	lw	ra,28(sp)
    3c5c:	01412483          	lw	s1,20(sp)
    3c60:	01012903          	lw	s2,16(sp)
    3c64:	00c12983          	lw	s3,12(sp)
    3c68:	00812a03          	lw	s4,8(sp)
    3c6c:	00412a83          	lw	s5,4(sp)
    3c70:	000b0593          	mv	a1,s6
    3c74:	00012b03          	lw	s6,0(sp)
    3c78:	00100613          	li	a2,1
    3c7c:	02010113          	addi	sp,sp,32
    3c80:	00078067          	jr	a5
    3c84:	02040413          	addi	s0,s0,32
    3c88:	f75410e3          	bne	s0,s5,3be8 <fatfs_mark_file_deleted+0x64>
    3c8c:	00190913          	addi	s2,s2,1
    3c90:	f35ff06f          	j	3bc4 <fatfs_mark_file_deleted+0x40>
    3c94:	01c12083          	lw	ra,28(sp)
    3c98:	01812403          	lw	s0,24(sp)
    3c9c:	01412483          	lw	s1,20(sp)
    3ca0:	01012903          	lw	s2,16(sp)
    3ca4:	00c12983          	lw	s3,12(sp)
    3ca8:	00812a03          	lw	s4,8(sp)
    3cac:	00412a83          	lw	s5,4(sp)
    3cb0:	00012b03          	lw	s6,0(sp)
    3cb4:	00000513          	li	a0,0
    3cb8:	02010113          	addi	sp,sp,32
    3cbc:	00008067          	ret
    3cc0:	00000513          	li	a0,0
    3cc4:	00008067          	ret

00003cc8 <fatfs_list_directory_next>:
    3cc8:	ec010113          	addi	sp,sp,-320
    3ccc:	13212823          	sw	s2,304(sp)
    3cd0:	13312623          	sw	s3,300(sp)
    3cd4:	13412423          	sw	s4,296(sp)
    3cd8:	13512223          	sw	s5,292(sp)
    3cdc:	12112e23          	sw	ra,316(sp)
    3ce0:	12812c23          	sw	s0,312(sp)
    3ce4:	12912a23          	sw	s1,308(sp)
    3ce8:	00050a13          	mv	s4,a0
    3cec:	00058913          	mv	s2,a1
    3cf0:	00060993          	mv	s3,a2
    3cf4:	10010ea3          	sb	zero,285(sp)
    3cf8:	00f00a93          	li	s5,15
    3cfc:	00092603          	lw	a2,0(s2)
    3d00:	00492583          	lw	a1,4(s2)
    3d04:	00000693          	li	a3,0
    3d08:	000a0513          	mv	a0,s4
    3d0c:	fffff097          	auipc	ra,0xfffff
    3d10:	5a4080e7          	jalr	1444(ra) # 32b0 <fatfs_sector_reader>
    3d14:	12050063          	beqz	a0,3e34 <fatfs_list_directory_next+0x16c>
    3d18:	00894483          	lbu	s1,8(s2)
    3d1c:	00549413          	slli	s0,s1,0x5
    3d20:	04440413          	addi	s0,s0,68
    3d24:	008a0433          	add	s0,s4,s0
    3d28:	009afc63          	bgeu	s5,s1,3d40 <fatfs_list_directory_next+0x78>
    3d2c:	00092783          	lw	a5,0(s2)
    3d30:	00090423          	sb	zero,8(s2)
    3d34:	00178793          	addi	a5,a5,1
    3d38:	00f92023          	sw	a5,0(s2)
    3d3c:	fc1ff06f          	j	3cfc <fatfs_list_directory_next+0x34>
    3d40:	00040513          	mv	a0,s0
    3d44:	ffffe097          	auipc	ra,0xffffe
    3d48:	df0080e7          	jalr	-528(ra) # 1b34 <fatfs_entry_lfn_text>
    3d4c:	02050263          	beqz	a0,3d70 <fatfs_list_directory_next+0xa8>
    3d50:	00040593          	mv	a1,s0
    3d54:	01810513          	addi	a0,sp,24
    3d58:	ffffe097          	auipc	ra,0xffffe
    3d5c:	cd4080e7          	jalr	-812(ra) # 1a2c <fatfs_lfn_cache_entry>
    3d60:	00148493          	addi	s1,s1,1
    3d64:	0ff4f493          	zext.b	s1,s1
    3d68:	02040413          	addi	s0,s0,32
    3d6c:	fbdff06f          	j	3d28 <fatfs_list_directory_next+0x60>
    3d70:	00040513          	mv	a0,s0
    3d74:	ffffe097          	auipc	ra,0xffffe
    3d78:	dd4080e7          	jalr	-556(ra) # 1b48 <fatfs_entry_lfn_invalid>
    3d7c:	00050663          	beqz	a0,3d88 <fatfs_list_directory_next+0xc0>
    3d80:	10010ea3          	sb	zero,285(sp)
    3d84:	fddff06f          	j	3d60 <fatfs_list_directory_next+0x98>
    3d88:	00040593          	mv	a1,s0
    3d8c:	01810513          	addi	a0,sp,24
    3d90:	ffffe097          	auipc	ra,0xffffe
    3d94:	df0080e7          	jalr	-528(ra) # 1b80 <fatfs_entry_lfn_exists>
    3d98:	0c050063          	beqz	a0,3e58 <fatfs_list_directory_next+0x190>
    3d9c:	01810513          	addi	a0,sp,24
    3da0:	ffffe097          	auipc	ra,0xffffe
    3da4:	d58080e7          	jalr	-680(ra) # 1af8 <fatfs_lfn_cache_get>
    3da8:	00050593          	mv	a1,a0
    3dac:	10300613          	li	a2,259
    3db0:	00098513          	mv	a0,s3
    3db4:	ffffd097          	auipc	ra,0xffffd
    3db8:	a4c080e7          	jalr	-1460(ra) # 800 <strncpy>
    3dbc:	00040513          	mv	a0,s0
    3dc0:	ffffe097          	auipc	ra,0xffffe
    3dc4:	e44080e7          	jalr	-444(ra) # 1c04 <fatfs_entry_is_dir>
    3dc8:	00a03533          	snez	a0,a0
    3dcc:	10a98223          	sb	a0,260(s3)
    3dd0:	01d44783          	lbu	a5,29(s0)
    3dd4:	01c44703          	lbu	a4,28(s0)
    3dd8:	00148493          	addi	s1,s1,1
    3ddc:	00879793          	slli	a5,a5,0x8
    3de0:	00e7e7b3          	or	a5,a5,a4
    3de4:	01e44703          	lbu	a4,30(s0)
    3de8:	00100513          	li	a0,1
    3dec:	01071713          	slli	a4,a4,0x10
    3df0:	00f76733          	or	a4,a4,a5
    3df4:	01f44783          	lbu	a5,31(s0)
    3df8:	01879793          	slli	a5,a5,0x18
    3dfc:	00e7e7b3          	or	a5,a5,a4
    3e00:	10f9a623          	sw	a5,268(s3)
    3e04:	01544783          	lbu	a5,21(s0)
    3e08:	01444703          	lbu	a4,20(s0)
    3e0c:	01a44683          	lbu	a3,26(s0)
    3e10:	00879793          	slli	a5,a5,0x8
    3e14:	00e7e7b3          	or	a5,a5,a4
    3e18:	01b44703          	lbu	a4,27(s0)
    3e1c:	01079793          	slli	a5,a5,0x10
    3e20:	00871713          	slli	a4,a4,0x8
    3e24:	00d76733          	or	a4,a4,a3
    3e28:	00e7e7b3          	or	a5,a5,a4
    3e2c:	10f9a423          	sw	a5,264(s3)
    3e30:	00990423          	sb	s1,8(s2)
    3e34:	13c12083          	lw	ra,316(sp)
    3e38:	13812403          	lw	s0,312(sp)
    3e3c:	13412483          	lw	s1,308(sp)
    3e40:	13012903          	lw	s2,304(sp)
    3e44:	12c12983          	lw	s3,300(sp)
    3e48:	12812a03          	lw	s4,296(sp)
    3e4c:	12412a83          	lw	s5,292(sp)
    3e50:	14010113          	addi	sp,sp,320
    3e54:	00008067          	ret
    3e58:	00040513          	mv	a0,s0
    3e5c:	ffffe097          	auipc	ra,0xffffe
    3e60:	d6c080e7          	jalr	-660(ra) # 1bc8 <fatfs_entry_sfn_only>
    3e64:	ee050ee3          	beqz	a0,3d60 <fatfs_list_directory_next+0x98>
    3e68:	00d00613          	li	a2,13
    3e6c:	00000593          	li	a1,0
    3e70:	00810513          	addi	a0,sp,8
    3e74:	10010ea3          	sb	zero,285(sp)
    3e78:	ffffd097          	auipc	ra,0xffffd
    3e7c:	8e8080e7          	jalr	-1816(ra) # 760 <memset>
    3e80:	00000793          	li	a5,0
    3e84:	00800713          	li	a4,8
    3e88:	00f40633          	add	a2,s0,a5
    3e8c:	00064603          	lbu	a2,0(a2)
    3e90:	00810693          	addi	a3,sp,8
    3e94:	00f686b3          	add	a3,a3,a5
    3e98:	00c68023          	sb	a2,0(a3)
    3e9c:	00178793          	addi	a5,a5,1
    3ea0:	fee794e3          	bne	a5,a4,3e88 <fatfs_list_directory_next+0x1c0>
    3ea4:	00844783          	lbu	a5,8(s0)
    3ea8:	00944683          	lbu	a3,9(s0)
    3eac:	02000613          	li	a2,32
    3eb0:	00f108a3          	sb	a5,17(sp)
    3eb4:	00d10923          	sb	a3,18(sp)
    3eb8:	00100713          	li	a4,1
    3ebc:	00c69663          	bne	a3,a2,3ec8 <fatfs_list_directory_next+0x200>
    3ec0:	fe078793          	addi	a5,a5,-32
    3ec4:	00f03733          	snez	a4,a5
    3ec8:	00a44783          	lbu	a5,10(s0)
    3ecc:	02000693          	li	a3,32
    3ed0:	00f109a3          	sb	a5,19(sp)
    3ed4:	00d79463          	bne	a5,a3,3edc <fatfs_list_directory_next+0x214>
    3ed8:	00070c63          	beqz	a4,3ef0 <fatfs_list_directory_next+0x228>
    3edc:	00814683          	lbu	a3,8(sp)
    3ee0:	02e00713          	li	a4,46
    3ee4:	02000793          	li	a5,32
    3ee8:	00e68463          	beq	a3,a4,3ef0 <fatfs_list_directory_next+0x228>
    3eec:	02e00793          	li	a5,46
    3ef0:	00810593          	addi	a1,sp,8
    3ef4:	00098513          	mv	a0,s3
    3ef8:	00f10823          	sb	a5,16(sp)
    3efc:	ffffe097          	auipc	ra,0xffffe
    3f00:	690080e7          	jalr	1680(ra) # 258c <fatfs_get_sfn_display_name>
    3f04:	eb9ff06f          	j	3dbc <fatfs_list_directory_next+0xf4>

00003f08 <fl_readdir>:
    3f08:	000067b7          	lui	a5,0x6
    3f0c:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    3f10:	fe010113          	addi	sp,sp,-32
    3f14:	00912a23          	sw	s1,20(sp)
    3f18:	01212823          	sw	s2,16(sp)
    3f1c:	00112e23          	sw	ra,28(sp)
    3f20:	00812c23          	sw	s0,24(sp)
    3f24:	01312623          	sw	s3,12(sp)
    3f28:	00050493          	mv	s1,a0
    3f2c:	00058913          	mv	s2,a1
    3f30:	00079663          	bnez	a5,3f3c <fl_readdir+0x34>
    3f34:	ffffd097          	auipc	ra,0xffffd
    3f38:	7f0080e7          	jalr	2032(ra) # 1724 <fl_init>
    3f3c:	0000a437          	lui	s0,0xa
    3f40:	24040793          	addi	a5,s0,576 # a240 <_fs>
    3f44:	03c7a783          	lw	a5,60(a5)
    3f48:	24040993          	addi	s3,s0,576
    3f4c:	00078463          	beqz	a5,3f54 <fl_readdir+0x4c>
    3f50:	000780e7          	jalr	a5
    3f54:	24040513          	addi	a0,s0,576
    3f58:	00090613          	mv	a2,s2
    3f5c:	00048593          	mv	a1,s1
    3f60:	00000097          	auipc	ra,0x0
    3f64:	d68080e7          	jalr	-664(ra) # 3cc8 <fatfs_list_directory_next>
    3f68:	0409a783          	lw	a5,64(s3)
    3f6c:	00050413          	mv	s0,a0
    3f70:	00078463          	beqz	a5,3f78 <fl_readdir+0x70>
    3f74:	000780e7          	jalr	a5
    3f78:	01c12083          	lw	ra,28(sp)
    3f7c:	00143513          	seqz	a0,s0
    3f80:	01812403          	lw	s0,24(sp)
    3f84:	01412483          	lw	s1,20(sp)
    3f88:	01012903          	lw	s2,16(sp)
    3f8c:	00c12983          	lw	s3,12(sp)
    3f90:	40a00533          	neg	a0,a0
    3f94:	02010113          	addi	sp,sp,32
    3f98:	00008067          	ret

00003f9c <fl_listdirectory>:
    3f9c:	000067b7          	lui	a5,0x6
    3fa0:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    3fa4:	ed010113          	addi	sp,sp,-304
    3fa8:	12912223          	sw	s1,292(sp)
    3fac:	12112623          	sw	ra,300(sp)
    3fb0:	12812423          	sw	s0,296(sp)
    3fb4:	13212023          	sw	s2,288(sp)
    3fb8:	00050493          	mv	s1,a0
    3fbc:	00079663          	bnez	a5,3fc8 <fl_listdirectory+0x2c>
    3fc0:	ffffd097          	auipc	ra,0xffffd
    3fc4:	764080e7          	jalr	1892(ra) # 1724 <fl_init>
    3fc8:	0000a7b7          	lui	a5,0xa
    3fcc:	24078713          	addi	a4,a5,576 # a240 <_fs>
    3fd0:	03c72703          	lw	a4,60(a4)
    3fd4:	24078413          	addi	s0,a5,576
    3fd8:	00070463          	beqz	a4,3fe0 <fl_listdirectory+0x44>
    3fdc:	000700e7          	jalr	a4
    3fe0:	00006537          	lui	a0,0x6
    3fe4:	00048593          	mv	a1,s1
    3fe8:	f3050513          	addi	a0,a0,-208 # 5f30 <font+0x354>
    3fec:	ffffd097          	auipc	ra,0xffffd
    3ff0:	e68080e7          	jalr	-408(ra) # e54 <printf>
    3ff4:	00410593          	addi	a1,sp,4
    3ff8:	00048513          	mv	a0,s1
    3ffc:	fffff097          	auipc	ra,0xfffff
    4000:	6e4080e7          	jalr	1764(ra) # 36e0 <fl_opendir>
    4004:	02050063          	beqz	a0,4024 <fl_listdirectory+0x88>
    4008:	000064b7          	lui	s1,0x6
    400c:	00006937          	lui	s2,0x6
    4010:	01010593          	addi	a1,sp,16
    4014:	00410513          	addi	a0,sp,4
    4018:	00000097          	auipc	ra,0x0
    401c:	ef0080e7          	jalr	-272(ra) # 3f08 <fl_readdir>
    4020:	02050263          	beqz	a0,4044 <fl_listdirectory+0xa8>
    4024:	04042783          	lw	a5,64(s0)
    4028:	04078863          	beqz	a5,4078 <fl_listdirectory+0xdc>
    402c:	12812403          	lw	s0,296(sp)
    4030:	12c12083          	lw	ra,300(sp)
    4034:	12412483          	lw	s1,292(sp)
    4038:	12012903          	lw	s2,288(sp)
    403c:	13010113          	addi	sp,sp,304
    4040:	00078067          	jr	a5
    4044:	11414783          	lbu	a5,276(sp)
    4048:	00078c63          	beqz	a5,4060 <fl_listdirectory+0xc4>
    404c:	01010593          	addi	a1,sp,16
    4050:	f4490513          	addi	a0,s2,-188 # 5f44 <font+0x368>
    4054:	ffffd097          	auipc	ra,0xffffd
    4058:	e00080e7          	jalr	-512(ra) # e54 <printf>
    405c:	fb5ff06f          	j	4010 <fl_listdirectory+0x74>
    4060:	11c12603          	lw	a2,284(sp)
    4064:	01010593          	addi	a1,sp,16
    4068:	f5048513          	addi	a0,s1,-176 # 5f50 <font+0x374>
    406c:	ffffd097          	auipc	ra,0xffffd
    4070:	de8080e7          	jalr	-536(ra) # e54 <printf>
    4074:	f9dff06f          	j	4010 <fl_listdirectory+0x74>
    4078:	12c12083          	lw	ra,300(sp)
    407c:	12812403          	lw	s0,296(sp)
    4080:	12412483          	lw	s1,292(sp)
    4084:	12012903          	lw	s2,288(sp)
    4088:	13010113          	addi	sp,sp,304
    408c:	00008067          	ret

00004090 <_read_sectors>:
    4090:	fd010113          	addi	sp,sp,-48
    4094:	01612823          	sw	s6,16(sp)
    4098:	0000ab37          	lui	s6,0xa
    409c:	01512a23          	sw	s5,20(sp)
    40a0:	240b4a83          	lbu	s5,576(s6) # a240 <_fs>
    40a4:	01412c23          	sw	s4,24(sp)
    40a8:	00058a13          	mv	s4,a1
    40ac:	02912223          	sw	s1,36(sp)
    40b0:	000a8593          	mv	a1,s5
    40b4:	00050493          	mv	s1,a0
    40b8:	000a0513          	mv	a0,s4
    40bc:	02112623          	sw	ra,44(sp)
    40c0:	02812423          	sw	s0,40(sp)
    40c4:	03212023          	sw	s2,32(sp)
    40c8:	00068413          	mv	s0,a3
    40cc:	01712623          	sw	s7,12(sp)
    40d0:	01812423          	sw	s8,8(sp)
    40d4:	01312e23          	sw	s3,28(sp)
    40d8:	00060c13          	mv	s8,a2
    40dc:	ffffc097          	auipc	ra,0xffffc
    40e0:	5b0080e7          	jalr	1456(ra) # 68c <__udivsi3>
    40e4:	00050913          	mv	s2,a0
    40e8:	000a8593          	mv	a1,s5
    40ec:	000a0513          	mv	a0,s4
    40f0:	ffffc097          	auipc	ra,0xffffc
    40f4:	5e4080e7          	jalr	1508(ra) # 6d4 <__umodsi3>
    40f8:	00a407b3          	add	a5,s0,a0
    40fc:	00050b93          	mv	s7,a0
    4100:	00fafe63          	bgeu	s5,a5,411c <_read_sectors+0x8c>
    4104:	00090593          	mv	a1,s2
    4108:	000a8513          	mv	a0,s5
    410c:	ffffd097          	auipc	ra,0xffffd
    4110:	e84080e7          	jalr	-380(ra) # f90 <__mulsi3>
    4114:	414a87b3          	sub	a5,s5,s4
    4118:	00f50433          	add	s0,a0,a5
    411c:	2284a983          	lw	s3,552(s1)
    4120:	01299c63          	bne	s3,s2,4138 <_read_sectors+0xa8>
    4124:	22c4a583          	lw	a1,556(s1)
    4128:	fff00793          	li	a5,-1
    412c:	02f59863          	bne	a1,a5,415c <_read_sectors+0xcc>
    4130:	00000413          	li	s0,0
    4134:	0500006f          	j	4184 <_read_sectors+0xf4>
    4138:	095a6063          	bltu	s4,s5,41b8 <_read_sectors+0x128>
    413c:	00198793          	addi	a5,s3,1
    4140:	07279c63          	bne	a5,s2,41b8 <_read_sectors+0x128>
    4144:	22c4a583          	lw	a1,556(s1)
    4148:	0729ee63          	bltu	s3,s2,41c4 <_read_sectors+0x134>
    414c:	fff00793          	li	a5,-1
    4150:	fef580e3          	beq	a1,a5,4130 <_read_sectors+0xa0>
    4154:	22b4a623          	sw	a1,556(s1)
    4158:	2324a423          	sw	s2,552(s1)
    415c:	240b0513          	addi	a0,s6,576
    4160:	ffffd097          	auipc	ra,0xffffd
    4164:	308080e7          	jalr	776(ra) # 1468 <fatfs_lba_of_cluster>
    4168:	017505b3          	add	a1,a0,s7
    416c:	00040693          	mv	a3,s0
    4170:	000c0613          	mv	a2,s8
    4174:	240b0513          	addi	a0,s6,576
    4178:	ffffd097          	auipc	ra,0xffffd
    417c:	340080e7          	jalr	832(ra) # 14b8 <fatfs_sector_read>
    4180:	fa0508e3          	beqz	a0,4130 <_read_sectors+0xa0>
    4184:	02c12083          	lw	ra,44(sp)
    4188:	00040513          	mv	a0,s0
    418c:	02812403          	lw	s0,40(sp)
    4190:	02412483          	lw	s1,36(sp)
    4194:	02012903          	lw	s2,32(sp)
    4198:	01c12983          	lw	s3,28(sp)
    419c:	01812a03          	lw	s4,24(sp)
    41a0:	01412a83          	lw	s5,20(sp)
    41a4:	01012b03          	lw	s6,16(sp)
    41a8:	00c12b83          	lw	s7,12(sp)
    41ac:	00812c03          	lw	s8,8(sp)
    41b0:	03010113          	addi	sp,sp,48
    41b4:	00008067          	ret
    41b8:	0044a583          	lw	a1,4(s1)
    41bc:	00000993          	li	s3,0
    41c0:	f89ff06f          	j	4148 <_read_sectors+0xb8>
    41c4:	240b0513          	addi	a0,s6,576
    41c8:	fffff097          	auipc	ra,0xfffff
    41cc:	fd8080e7          	jalr	-40(ra) # 31a0 <fatfs_find_next_cluster>
    41d0:	00050593          	mv	a1,a0
    41d4:	00198993          	addi	s3,s3,1
    41d8:	f71ff06f          	j	4148 <_read_sectors+0xb8>

000041dc <fatfs_set_fs_info_next_free_cluster>:
    41dc:	03052783          	lw	a5,48(a0)
    41e0:	0a078863          	beqz	a5,4290 <fatfs_set_fs_info_next_free_cluster+0xb4>
    41e4:	ff010113          	addi	sp,sp,-16
    41e8:	01c52783          	lw	a5,28(a0)
    41ec:	01212023          	sw	s2,0(sp)
    41f0:	00058913          	mv	s2,a1
    41f4:	01855583          	lhu	a1,24(a0)
    41f8:	00812423          	sw	s0,8(sp)
    41fc:	00912223          	sw	s1,4(sp)
    4200:	00f585b3          	add	a1,a1,a5
    4204:	00112623          	sw	ra,12(sp)
    4208:	00050493          	mv	s1,a0
    420c:	ffffd097          	auipc	ra,0xffffd
    4210:	f3c080e7          	jalr	-196(ra) # 1148 <fatfs_fat_read_sector>
    4214:	00050413          	mv	s0,a0
    4218:	06050063          	beqz	a0,4278 <fatfs_set_fs_info_next_free_cluster+0x9c>
    421c:	20852783          	lw	a5,520(a0)
    4220:	00895713          	srli	a4,s2,0x8
    4224:	1f278623          	sb	s2,492(a5)
    4228:	20852783          	lw	a5,520(a0)
    422c:	1ee786a3          	sb	a4,493(a5)
    4230:	20852783          	lw	a5,520(a0)
    4234:	01095713          	srli	a4,s2,0x10
    4238:	1ee78723          	sb	a4,494(a5)
    423c:	20852783          	lw	a5,520(a0)
    4240:	01895713          	srli	a4,s2,0x18
    4244:	1ee787a3          	sb	a4,495(a5)
    4248:	00100793          	li	a5,1
    424c:	20f52223          	sw	a5,516(a0)
    4250:	0384a783          	lw	a5,56(s1)
    4254:	0324a223          	sw	s2,36(s1)
    4258:	00078a63          	beqz	a5,426c <fatfs_set_fs_info_next_free_cluster+0x90>
    425c:	00050593          	mv	a1,a0
    4260:	20052503          	lw	a0,512(a0)
    4264:	00100613          	li	a2,1
    4268:	000780e7          	jalr	a5
    426c:	fff00793          	li	a5,-1
    4270:	20f42023          	sw	a5,512(s0)
    4274:	20042223          	sw	zero,516(s0)
    4278:	00c12083          	lw	ra,12(sp)
    427c:	00812403          	lw	s0,8(sp)
    4280:	00412483          	lw	s1,4(sp)
    4284:	00012903          	lw	s2,0(sp)
    4288:	01010113          	addi	sp,sp,16
    428c:	00008067          	ret
    4290:	00008067          	ret

00004294 <fatfs_find_blank_cluster>:
    4294:	fe010113          	addi	sp,sp,-32
    4298:	01312623          	sw	s3,12(sp)
    429c:	01512223          	sw	s5,4(sp)
    42a0:	000109b7          	lui	s3,0x10
    42a4:	10000ab7          	lui	s5,0x10000
    42a8:	00912a23          	sw	s1,20(sp)
    42ac:	01212823          	sw	s2,16(sp)
    42b0:	01412423          	sw	s4,8(sp)
    42b4:	00112e23          	sw	ra,28(sp)
    42b8:	00812c23          	sw	s0,24(sp)
    42bc:	00050913          	mv	s2,a0
    42c0:	00058493          	mv	s1,a1
    42c4:	00060a13          	mv	s4,a2
    42c8:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x5957>
    42cc:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    42d0:	03092783          	lw	a5,48(s2)
    42d4:	0074d413          	srli	s0,s1,0x7
    42d8:	00079463          	bnez	a5,42e0 <fatfs_find_blank_cluster+0x4c>
    42dc:	0084d413          	srli	s0,s1,0x8
    42e0:	02092783          	lw	a5,32(s2)
    42e4:	08f47e63          	bgeu	s0,a5,4380 <fatfs_find_blank_cluster+0xec>
    42e8:	01492583          	lw	a1,20(s2)
    42ec:	00090513          	mv	a0,s2
    42f0:	00b405b3          	add	a1,s0,a1
    42f4:	ffffd097          	auipc	ra,0xffffd
    42f8:	e54080e7          	jalr	-428(ra) # 1148 <fatfs_fat_read_sector>
    42fc:	08050263          	beqz	a0,4380 <fatfs_find_blank_cluster+0xec>
    4300:	03092783          	lw	a5,48(s2)
    4304:	20852703          	lw	a4,520(a0)
    4308:	02079a63          	bnez	a5,433c <fatfs_find_blank_cluster+0xa8>
    430c:	00841413          	slli	s0,s0,0x8
    4310:	40848433          	sub	s0,s1,s0
    4314:	00141413          	slli	s0,s0,0x1
    4318:	01347433          	and	s0,s0,s3
    431c:	00870733          	add	a4,a4,s0
    4320:	00174783          	lbu	a5,1(a4)
    4324:	00074703          	lbu	a4,0(a4)
    4328:	00879793          	slli	a5,a5,0x8
    432c:	00e787b3          	add	a5,a5,a4
    4330:	06078c63          	beqz	a5,43a8 <fatfs_find_blank_cluster+0x114>
    4334:	00148493          	addi	s1,s1,1
    4338:	f99ff06f          	j	42d0 <fatfs_find_blank_cluster+0x3c>
    433c:	00741413          	slli	s0,s0,0x7
    4340:	40848433          	sub	s0,s1,s0
    4344:	00241413          	slli	s0,s0,0x2
    4348:	01347433          	and	s0,s0,s3
    434c:	00870733          	add	a4,a4,s0
    4350:	00374783          	lbu	a5,3(a4)
    4354:	00274683          	lbu	a3,2(a4)
    4358:	01879793          	slli	a5,a5,0x18
    435c:	01069693          	slli	a3,a3,0x10
    4360:	00d787b3          	add	a5,a5,a3
    4364:	00074683          	lbu	a3,0(a4)
    4368:	00174703          	lbu	a4,1(a4)
    436c:	00d787b3          	add	a5,a5,a3
    4370:	00871713          	slli	a4,a4,0x8
    4374:	00e787b3          	add	a5,a5,a4
    4378:	0157f7b3          	and	a5,a5,s5
    437c:	fb5ff06f          	j	4330 <fatfs_find_blank_cluster+0x9c>
    4380:	00000513          	li	a0,0
    4384:	01c12083          	lw	ra,28(sp)
    4388:	01812403          	lw	s0,24(sp)
    438c:	01412483          	lw	s1,20(sp)
    4390:	01012903          	lw	s2,16(sp)
    4394:	00c12983          	lw	s3,12(sp)
    4398:	00812a03          	lw	s4,8(sp)
    439c:	00412a83          	lw	s5,4(sp)
    43a0:	02010113          	addi	sp,sp,32
    43a4:	00008067          	ret
    43a8:	009a2023          	sw	s1,0(s4)
    43ac:	00100513          	li	a0,1
    43b0:	fd5ff06f          	j	4384 <fatfs_find_blank_cluster+0xf0>

000043b4 <fatfs_fat_set_cluster>:
    43b4:	03052783          	lw	a5,48(a0)
    43b8:	fe010113          	addi	sp,sp,-32
    43bc:	00812c23          	sw	s0,24(sp)
    43c0:	00912a23          	sw	s1,20(sp)
    43c4:	01212823          	sw	s2,16(sp)
    43c8:	01312623          	sw	s3,12(sp)
    43cc:	00112e23          	sw	ra,28(sp)
    43d0:	00050993          	mv	s3,a0
    43d4:	00058413          	mv	s0,a1
    43d8:	00060493          	mv	s1,a2
    43dc:	0085d913          	srli	s2,a1,0x8
    43e0:	00078463          	beqz	a5,43e8 <fatfs_fat_set_cluster+0x34>
    43e4:	0075d913          	srli	s2,a1,0x7
    43e8:	0149a583          	lw	a1,20(s3)
    43ec:	00098513          	mv	a0,s3
    43f0:	00b905b3          	add	a1,s2,a1
    43f4:	ffffd097          	auipc	ra,0xffffd
    43f8:	d54080e7          	jalr	-684(ra) # 1148 <fatfs_fat_read_sector>
    43fc:	00050793          	mv	a5,a0
    4400:	00000513          	li	a0,0
    4404:	04078c63          	beqz	a5,445c <fatfs_fat_set_cluster+0xa8>
    4408:	0309a683          	lw	a3,48(s3)
    440c:	2087a703          	lw	a4,520(a5)
    4410:	0ff4f613          	zext.b	a2,s1
    4414:	06069263          	bnez	a3,4478 <fatfs_fat_set_cluster+0xc4>
    4418:	00891913          	slli	s2,s2,0x8
    441c:	41240433          	sub	s0,s0,s2
    4420:	000106b7          	lui	a3,0x10
    4424:	00141413          	slli	s0,s0,0x1
    4428:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x5957>
    442c:	00d47433          	and	s0,s0,a3
    4430:	00870733          	add	a4,a4,s0
    4434:	00c70023          	sb	a2,0(a4)
    4438:	2087a703          	lw	a4,520(a5)
    443c:	01049493          	slli	s1,s1,0x10
    4440:	0104d493          	srli	s1,s1,0x10
    4444:	00870733          	add	a4,a4,s0
    4448:	0084d493          	srli	s1,s1,0x8
    444c:	009700a3          	sb	s1,1(a4)
    4450:	00100713          	li	a4,1
    4454:	20e7a223          	sw	a4,516(a5)
    4458:	00100513          	li	a0,1
    445c:	01c12083          	lw	ra,28(sp)
    4460:	01812403          	lw	s0,24(sp)
    4464:	01412483          	lw	s1,20(sp)
    4468:	01012903          	lw	s2,16(sp)
    446c:	00c12983          	lw	s3,12(sp)
    4470:	02010113          	addi	sp,sp,32
    4474:	00008067          	ret
    4478:	00791913          	slli	s2,s2,0x7
    447c:	41240433          	sub	s0,s0,s2
    4480:	000106b7          	lui	a3,0x10
    4484:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x5957>
    4488:	00241413          	slli	s0,s0,0x2
    448c:	00d47433          	and	s0,s0,a3
    4490:	00870733          	add	a4,a4,s0
    4494:	00c70023          	sb	a2,0(a4)
    4498:	2087a703          	lw	a4,520(a5)
    449c:	0084d693          	srli	a3,s1,0x8
    44a0:	00870733          	add	a4,a4,s0
    44a4:	00d700a3          	sb	a3,1(a4)
    44a8:	2087a703          	lw	a4,520(a5)
    44ac:	0104d693          	srli	a3,s1,0x10
    44b0:	0184d493          	srli	s1,s1,0x18
    44b4:	00870733          	add	a4,a4,s0
    44b8:	00d70123          	sb	a3,2(a4)
    44bc:	2087a703          	lw	a4,520(a5)
    44c0:	00870733          	add	a4,a4,s0
    44c4:	009701a3          	sb	s1,3(a4)
    44c8:	f89ff06f          	j	4450 <fatfs_fat_set_cluster+0x9c>

000044cc <fatfs_free_cluster_chain>:
    44cc:	fe010113          	addi	sp,sp,-32
    44d0:	00812c23          	sw	s0,24(sp)
    44d4:	01212823          	sw	s2,16(sp)
    44d8:	00112e23          	sw	ra,28(sp)
    44dc:	00912a23          	sw	s1,20(sp)
    44e0:	00050413          	mv	s0,a0
    44e4:	ffd00913          	li	s2,-3
    44e8:	fff58793          	addi	a5,a1,-1
    44ec:	02f97063          	bgeu	s2,a5,450c <fatfs_free_cluster_chain+0x40>
    44f0:	01c12083          	lw	ra,28(sp)
    44f4:	01812403          	lw	s0,24(sp)
    44f8:	01412483          	lw	s1,20(sp)
    44fc:	01012903          	lw	s2,16(sp)
    4500:	00100513          	li	a0,1
    4504:	02010113          	addi	sp,sp,32
    4508:	00008067          	ret
    450c:	00040513          	mv	a0,s0
    4510:	00b12623          	sw	a1,12(sp)
    4514:	fffff097          	auipc	ra,0xfffff
    4518:	c8c080e7          	jalr	-884(ra) # 31a0 <fatfs_find_next_cluster>
    451c:	00c12583          	lw	a1,12(sp)
    4520:	00050493          	mv	s1,a0
    4524:	00000613          	li	a2,0
    4528:	00040513          	mv	a0,s0
    452c:	00000097          	auipc	ra,0x0
    4530:	e88080e7          	jalr	-376(ra) # 43b4 <fatfs_fat_set_cluster>
    4534:	00048593          	mv	a1,s1
    4538:	fb1ff06f          	j	44e8 <fatfs_free_cluster_chain+0x1c>

0000453c <fatfs_fat_add_cluster_to_chain>:
    453c:	fff00793          	li	a5,-1
    4540:	02f59463          	bne	a1,a5,4568 <fatfs_fat_add_cluster_to_chain+0x2c>
    4544:	00000513          	li	a0,0
    4548:	00008067          	ret
    454c:	00000513          	li	a0,0
    4550:	01c12083          	lw	ra,28(sp)
    4554:	01812403          	lw	s0,24(sp)
    4558:	01412483          	lw	s1,20(sp)
    455c:	01012903          	lw	s2,16(sp)
    4560:	02010113          	addi	sp,sp,32
    4564:	00008067          	ret
    4568:	fe010113          	addi	sp,sp,-32
    456c:	00812c23          	sw	s0,24(sp)
    4570:	00912a23          	sw	s1,20(sp)
    4574:	01212823          	sw	s2,16(sp)
    4578:	00050413          	mv	s0,a0
    457c:	00112e23          	sw	ra,28(sp)
    4580:	00058513          	mv	a0,a1
    4584:	00060493          	mv	s1,a2
    4588:	fff00913          	li	s2,-1
    458c:	00050593          	mv	a1,a0
    4590:	00a12623          	sw	a0,12(sp)
    4594:	00040513          	mv	a0,s0
    4598:	fffff097          	auipc	ra,0xfffff
    459c:	c08080e7          	jalr	-1016(ra) # 31a0 <fatfs_find_next_cluster>
    45a0:	fa0506e3          	beqz	a0,454c <fatfs_fat_add_cluster_to_chain+0x10>
    45a4:	00c12583          	lw	a1,12(sp)
    45a8:	ff2512e3          	bne	a0,s2,458c <fatfs_fat_add_cluster_to_chain+0x50>
    45ac:	00048613          	mv	a2,s1
    45b0:	00040513          	mv	a0,s0
    45b4:	00000097          	auipc	ra,0x0
    45b8:	e00080e7          	jalr	-512(ra) # 43b4 <fatfs_fat_set_cluster>
    45bc:	fff00613          	li	a2,-1
    45c0:	00048593          	mv	a1,s1
    45c4:	00040513          	mv	a0,s0
    45c8:	00000097          	auipc	ra,0x0
    45cc:	dec080e7          	jalr	-532(ra) # 43b4 <fatfs_fat_set_cluster>
    45d0:	00100513          	li	a0,1
    45d4:	f7dff06f          	j	4550 <fatfs_fat_add_cluster_to_chain+0x14>

000045d8 <fatfs_count_free_clusters>:
    45d8:	fe010113          	addi	sp,sp,-32
    45dc:	00812c23          	sw	s0,24(sp)
    45e0:	00912a23          	sw	s1,20(sp)
    45e4:	01212823          	sw	s2,16(sp)
    45e8:	01312623          	sw	s3,12(sp)
    45ec:	00112e23          	sw	ra,28(sp)
    45f0:	00050413          	mv	s0,a0
    45f4:	00000493          	li	s1,0
    45f8:	00000913          	li	s2,0
    45fc:	1ff00993          	li	s3,511
    4600:	02042783          	lw	a5,32(s0)
    4604:	02f96263          	bltu	s2,a5,4628 <fatfs_count_free_clusters+0x50>
    4608:	01c12083          	lw	ra,28(sp)
    460c:	01812403          	lw	s0,24(sp)
    4610:	01012903          	lw	s2,16(sp)
    4614:	00c12983          	lw	s3,12(sp)
    4618:	00048513          	mv	a0,s1
    461c:	01412483          	lw	s1,20(sp)
    4620:	02010113          	addi	sp,sp,32
    4624:	00008067          	ret
    4628:	01442583          	lw	a1,20(s0)
    462c:	00040513          	mv	a0,s0
    4630:	00b905b3          	add	a1,s2,a1
    4634:	ffffd097          	auipc	ra,0xffffd
    4638:	b14080e7          	jalr	-1260(ra) # 1148 <fatfs_fat_read_sector>
    463c:	fc0506e3          	beqz	a0,4608 <fatfs_count_free_clusters+0x30>
    4640:	03042803          	lw	a6,48(s0)
    4644:	20852583          	lw	a1,520(a0)
    4648:	00000713          	li	a4,0
    464c:	00e587b3          	add	a5,a1,a4
    4650:	0017c683          	lbu	a3,1(a5)
    4654:	0007c503          	lbu	a0,0(a5)
    4658:	00270613          	addi	a2,a4,2
    465c:	00869693          	slli	a3,a3,0x8
    4660:	02081063          	bnez	a6,4680 <fatfs_count_free_clusters+0xa8>
    4664:	00a686b3          	add	a3,a3,a0
    4668:	00069463          	bnez	a3,4670 <fatfs_count_free_clusters+0x98>
    466c:	00148493          	addi	s1,s1,1
    4670:	00060713          	mv	a4,a2
    4674:	fce9fce3          	bgeu	s3,a4,464c <fatfs_count_free_clusters+0x74>
    4678:	00190913          	addi	s2,s2,1
    467c:	f85ff06f          	j	4600 <fatfs_count_free_clusters+0x28>
    4680:	00c58633          	add	a2,a1,a2
    4684:	0037c783          	lbu	a5,3(a5)
    4688:	00064603          	lbu	a2,0(a2)
    468c:	01879793          	slli	a5,a5,0x18
    4690:	01061613          	slli	a2,a2,0x10
    4694:	00c787b3          	add	a5,a5,a2
    4698:	00a787b3          	add	a5,a5,a0
    469c:	00d787b3          	add	a5,a5,a3
    46a0:	00079463          	bnez	a5,46a8 <fatfs_count_free_clusters+0xd0>
    46a4:	00148493          	addi	s1,s1,1
    46a8:	00470713          	addi	a4,a4,4
    46ac:	fc9ff06f          	j	4674 <fatfs_count_free_clusters+0x9c>

000046b0 <fatfs_add_free_space>:
    46b0:	02452703          	lw	a4,36(a0)
    46b4:	fd010113          	addi	sp,sp,-48
    46b8:	02812423          	sw	s0,40(sp)
    46bc:	03212023          	sw	s2,32(sp)
    46c0:	01412c23          	sw	s4,24(sp)
    46c4:	01512a23          	sw	s5,20(sp)
    46c8:	02112623          	sw	ra,44(sp)
    46cc:	02912223          	sw	s1,36(sp)
    46d0:	01312e23          	sw	s3,28(sp)
    46d4:	fff00793          	li	a5,-1
    46d8:	0005aa83          	lw	s5,0(a1)
    46dc:	00050413          	mv	s0,a0
    46e0:	00058913          	mv	s2,a1
    46e4:	00060a13          	mv	s4,a2
    46e8:	00f70863          	beq	a4,a5,46f8 <fatfs_add_free_space+0x48>
    46ec:	fff00593          	li	a1,-1
    46f0:	00000097          	auipc	ra,0x0
    46f4:	aec080e7          	jalr	-1300(ra) # 41dc <fatfs_set_fs_info_next_free_cluster>
    46f8:	00000493          	li	s1,0
    46fc:	03449663          	bne	s1,s4,4728 <fatfs_add_free_space+0x78>
    4700:	00100513          	li	a0,1
    4704:	02c12083          	lw	ra,44(sp)
    4708:	02812403          	lw	s0,40(sp)
    470c:	02412483          	lw	s1,36(sp)
    4710:	02012903          	lw	s2,32(sp)
    4714:	01c12983          	lw	s3,28(sp)
    4718:	01812a03          	lw	s4,24(sp)
    471c:	01412a83          	lw	s5,20(sp)
    4720:	03010113          	addi	sp,sp,48
    4724:	00008067          	ret
    4728:	00842583          	lw	a1,8(s0)
    472c:	00c10613          	addi	a2,sp,12
    4730:	00040513          	mv	a0,s0
    4734:	00000097          	auipc	ra,0x0
    4738:	b60080e7          	jalr	-1184(ra) # 4294 <fatfs_find_blank_cluster>
    473c:	fc0504e3          	beqz	a0,4704 <fatfs_add_free_space+0x54>
    4740:	00c12983          	lw	s3,12(sp)
    4744:	000a8593          	mv	a1,s5
    4748:	00040513          	mv	a0,s0
    474c:	00098613          	mv	a2,s3
    4750:	00000097          	auipc	ra,0x0
    4754:	c64080e7          	jalr	-924(ra) # 43b4 <fatfs_fat_set_cluster>
    4758:	fff00613          	li	a2,-1
    475c:	00098593          	mv	a1,s3
    4760:	00040513          	mv	a0,s0
    4764:	00000097          	auipc	ra,0x0
    4768:	c50080e7          	jalr	-944(ra) # 43b4 <fatfs_fat_set_cluster>
    476c:	00049463          	bnez	s1,4774 <fatfs_add_free_space+0xc4>
    4770:	01392023          	sw	s3,0(s2)
    4774:	00148493          	addi	s1,s1,1
    4778:	00098a93          	mv	s5,s3
    477c:	f81ff06f          	j	46fc <fatfs_add_free_space+0x4c>

00004780 <_write_sectors>:
    4780:	fb010113          	addi	sp,sp,-80
    4784:	03312e23          	sw	s3,60(sp)
    4788:	0000a9b7          	lui	s3,0xa
    478c:	03612823          	sw	s6,48(sp)
    4790:	2409cb03          	lbu	s6,576(s3) # a240 <_fs>
    4794:	03512a23          	sw	s5,52(sp)
    4798:	00058a93          	mv	s5,a1
    479c:	fff00793          	li	a5,-1
    47a0:	04812423          	sw	s0,72(sp)
    47a4:	000b0593          	mv	a1,s6
    47a8:	00050413          	mv	s0,a0
    47ac:	000a8513          	mv	a0,s5
    47b0:	00f12e23          	sw	a5,28(sp)
    47b4:	04112623          	sw	ra,76(sp)
    47b8:	04912223          	sw	s1,68(sp)
    47bc:	05212023          	sw	s2,64(sp)
    47c0:	03712623          	sw	s7,44(sp)
    47c4:	03812423          	sw	s8,40(sp)
    47c8:	00068b93          	mv	s7,a3
    47cc:	03912223          	sw	s9,36(sp)
    47d0:	03a12023          	sw	s10,32(sp)
    47d4:	00060c93          	mv	s9,a2
    47d8:	03412c23          	sw	s4,56(sp)
    47dc:	ffffc097          	auipc	ra,0xffffc
    47e0:	eb0080e7          	jalr	-336(ra) # 68c <__udivsi3>
    47e4:	00050493          	mv	s1,a0
    47e8:	000b0593          	mv	a1,s6
    47ec:	000a8513          	mv	a0,s5
    47f0:	ffffc097          	auipc	ra,0xffffc
    47f4:	ee4080e7          	jalr	-284(ra) # 6d4 <__umodsi3>
    47f8:	00ab87b3          	add	a5,s7,a0
    47fc:	00050c13          	mv	s8,a0
    4800:	24098d13          	addi	s10,s3,576
    4804:	000b8913          	mv	s2,s7
    4808:	00fb7e63          	bgeu	s6,a5,4824 <_write_sectors+0xa4>
    480c:	00048593          	mv	a1,s1
    4810:	000b0513          	mv	a0,s6
    4814:	ffffc097          	auipc	ra,0xffffc
    4818:	77c080e7          	jalr	1916(ra) # f90 <__mulsi3>
    481c:	415b07b3          	sub	a5,s6,s5
    4820:	00f50933          	add	s2,a0,a5
    4824:	22842a03          	lw	s4,552(s0)
    4828:	069a1663          	bne	s4,s1,4894 <_write_sectors+0x114>
    482c:	22c42583          	lw	a1,556(s0)
    4830:	24098513          	addi	a0,s3,576
    4834:	ffffd097          	auipc	ra,0xffffd
    4838:	c34080e7          	jalr	-972(ra) # 1468 <fatfs_lba_of_cluster>
    483c:	018505b3          	add	a1,a0,s8
    4840:	00090693          	mv	a3,s2
    4844:	000c8613          	mv	a2,s9
    4848:	24098513          	addi	a0,s3,576
    484c:	ffffd097          	auipc	ra,0xffffd
    4850:	c84080e7          	jalr	-892(ra) # 14d0 <fatfs_sector_write>
    4854:	0c050063          	beqz	a0,4914 <_write_sectors+0x194>
    4858:	04c12083          	lw	ra,76(sp)
    485c:	04812403          	lw	s0,72(sp)
    4860:	04412483          	lw	s1,68(sp)
    4864:	03c12983          	lw	s3,60(sp)
    4868:	03812a03          	lw	s4,56(sp)
    486c:	03412a83          	lw	s5,52(sp)
    4870:	03012b03          	lw	s6,48(sp)
    4874:	02c12b83          	lw	s7,44(sp)
    4878:	02812c03          	lw	s8,40(sp)
    487c:	02412c83          	lw	s9,36(sp)
    4880:	02012d03          	lw	s10,32(sp)
    4884:	00090513          	mv	a0,s2
    4888:	04012903          	lw	s2,64(sp)
    488c:	05010113          	addi	sp,sp,80
    4890:	00008067          	ret
    4894:	036ae663          	bltu	s5,s6,48c0 <_write_sectors+0x140>
    4898:	001a0793          	addi	a5,s4,1
    489c:	02979263          	bne	a5,s1,48c0 <_write_sectors+0x140>
    48a0:	22c42583          	lw	a1,556(s0)
    48a4:	fff00a93          	li	s5,-1
    48a8:	029a6263          	bltu	s4,s1,48cc <_write_sectors+0x14c>
    48ac:	fff00793          	li	a5,-1
    48b0:	02f58c63          	beq	a1,a5,48e8 <_write_sectors+0x168>
    48b4:	22b42623          	sw	a1,556(s0)
    48b8:	22942423          	sw	s1,552(s0)
    48bc:	f75ff06f          	j	4830 <_write_sectors+0xb0>
    48c0:	00442583          	lw	a1,4(s0)
    48c4:	00000a13          	li	s4,0
    48c8:	fddff06f          	j	48a4 <_write_sectors+0x124>
    48cc:	24098513          	addi	a0,s3,576
    48d0:	00b12623          	sw	a1,12(sp)
    48d4:	fffff097          	auipc	ra,0xfffff
    48d8:	8cc080e7          	jalr	-1844(ra) # 31a0 <fatfs_find_next_cluster>
    48dc:	00c12583          	lw	a1,12(sp)
    48e0:	00b12e23          	sw	a1,28(sp)
    48e4:	03551c63          	bne	a0,s5,491c <_write_sectors+0x19c>
    48e8:	000d4583          	lbu	a1,0(s10)
    48ec:	fff58513          	addi	a0,a1,-1
    48f0:	01750533          	add	a0,a0,s7
    48f4:	ffffc097          	auipc	ra,0xffffc
    48f8:	d98080e7          	jalr	-616(ra) # 68c <__udivsi3>
    48fc:	00050613          	mv	a2,a0
    4900:	01c10593          	addi	a1,sp,28
    4904:	24098513          	addi	a0,s3,576
    4908:	00000097          	auipc	ra,0x0
    490c:	da8080e7          	jalr	-600(ra) # 46b0 <fatfs_add_free_space>
    4910:	00051c63          	bnez	a0,4928 <_write_sectors+0x1a8>
    4914:	00000913          	li	s2,0
    4918:	f41ff06f          	j	4858 <_write_sectors+0xd8>
    491c:	001a0a13          	addi	s4,s4,1
    4920:	00050593          	mv	a1,a0
    4924:	f85ff06f          	j	48a8 <_write_sectors+0x128>
    4928:	01c12583          	lw	a1,28(sp)
    492c:	f89ff06f          	j	48b4 <_write_sectors+0x134>

00004930 <fl_fflush>:
    4930:	000067b7          	lui	a5,0x6
    4934:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    4938:	ff010113          	addi	sp,sp,-16
    493c:	00812423          	sw	s0,8(sp)
    4940:	00112623          	sw	ra,12(sp)
    4944:	00912223          	sw	s1,4(sp)
    4948:	00050413          	mv	s0,a0
    494c:	00079663          	bnez	a5,4958 <fl_fflush+0x28>
    4950:	ffffd097          	auipc	ra,0xffffd
    4954:	dd4080e7          	jalr	-556(ra) # 1724 <fl_init>
    4958:	04040863          	beqz	s0,49a8 <fl_fflush+0x78>
    495c:	0000a7b7          	lui	a5,0xa
    4960:	24078713          	addi	a4,a5,576 # a240 <_fs>
    4964:	03c72703          	lw	a4,60(a4)
    4968:	24078493          	addi	s1,a5,576
    496c:	00070463          	beqz	a4,4974 <fl_fflush+0x44>
    4970:	000700e7          	jalr	a4
    4974:	43442783          	lw	a5,1076(s0)
    4978:	02078263          	beqz	a5,499c <fl_fflush+0x6c>
    497c:	43042583          	lw	a1,1072(s0)
    4980:	00100693          	li	a3,1
    4984:	23040613          	addi	a2,s0,560
    4988:	00040513          	mv	a0,s0
    498c:	00000097          	auipc	ra,0x0
    4990:	df4080e7          	jalr	-524(ra) # 4780 <_write_sectors>
    4994:	00050463          	beqz	a0,499c <fl_fflush+0x6c>
    4998:	42042a23          	sw	zero,1076(s0)
    499c:	0404a783          	lw	a5,64(s1)
    49a0:	00078463          	beqz	a5,49a8 <fl_fflush+0x78>
    49a4:	000780e7          	jalr	a5
    49a8:	00c12083          	lw	ra,12(sp)
    49ac:	00812403          	lw	s0,8(sp)
    49b0:	00412483          	lw	s1,4(sp)
    49b4:	00000513          	li	a0,0
    49b8:	01010113          	addi	sp,sp,16
    49bc:	00008067          	ret

000049c0 <fl_fclose>:
    49c0:	000067b7          	lui	a5,0x6
    49c4:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    49c8:	ff010113          	addi	sp,sp,-16
    49cc:	00812423          	sw	s0,8(sp)
    49d0:	00112623          	sw	ra,12(sp)
    49d4:	00912223          	sw	s1,4(sp)
    49d8:	01212023          	sw	s2,0(sp)
    49dc:	00050413          	mv	s0,a0
    49e0:	00079663          	bnez	a5,49ec <fl_fclose+0x2c>
    49e4:	ffffd097          	auipc	ra,0xffffd
    49e8:	d40080e7          	jalr	-704(ra) # 1724 <fl_init>
    49ec:	08040e63          	beqz	s0,4a88 <fl_fclose+0xc8>
    49f0:	0000a4b7          	lui	s1,0xa
    49f4:	24048793          	addi	a5,s1,576 # a240 <_fs>
    49f8:	03c7a783          	lw	a5,60(a5)
    49fc:	24048913          	addi	s2,s1,576
    4a00:	00078463          	beqz	a5,4a08 <fl_fclose+0x48>
    4a04:	000780e7          	jalr	a5
    4a08:	00040513          	mv	a0,s0
    4a0c:	00000097          	auipc	ra,0x0
    4a10:	f24080e7          	jalr	-220(ra) # 4930 <fl_fflush>
    4a14:	01042783          	lw	a5,16(s0)
    4a18:	00078e63          	beqz	a5,4a34 <fl_fclose+0x74>
    4a1c:	00c42683          	lw	a3,12(s0)
    4a20:	00042583          	lw	a1,0(s0)
    4a24:	21c40613          	addi	a2,s0,540
    4a28:	24048513          	addi	a0,s1,576
    4a2c:	fffff097          	auipc	ra,0xfffff
    4a30:	ff0080e7          	jalr	-16(ra) # 3a1c <fatfs_update_file_length>
    4a34:	fff00793          	li	a5,-1
    4a38:	42f42823          	sw	a5,1072(s0)
    4a3c:	00040513          	mv	a0,s0
    4a40:	00042423          	sw	zero,8(s0)
    4a44:	00042623          	sw	zero,12(s0)
    4a48:	00042223          	sw	zero,4(s0)
    4a4c:	42042a23          	sw	zero,1076(s0)
    4a50:	00042823          	sw	zero,16(s0)
    4a54:	ffffd097          	auipc	ra,0xffffd
    4a58:	9cc080e7          	jalr	-1588(ra) # 1420 <_free_file>
    4a5c:	24048513          	addi	a0,s1,576
    4a60:	ffffe097          	auipc	ra,0xffffe
    4a64:	66c080e7          	jalr	1644(ra) # 30cc <fatfs_fat_purge>
    4a68:	04092783          	lw	a5,64(s2)
    4a6c:	00078e63          	beqz	a5,4a88 <fl_fclose+0xc8>
    4a70:	00812403          	lw	s0,8(sp)
    4a74:	00c12083          	lw	ra,12(sp)
    4a78:	00412483          	lw	s1,4(sp)
    4a7c:	00012903          	lw	s2,0(sp)
    4a80:	01010113          	addi	sp,sp,16
    4a84:	00078067          	jr	a5
    4a88:	00c12083          	lw	ra,12(sp)
    4a8c:	00812403          	lw	s0,8(sp)
    4a90:	00412483          	lw	s1,4(sp)
    4a94:	00012903          	lw	s2,0(sp)
    4a98:	01010113          	addi	sp,sp,16
    4a9c:	00008067          	ret

00004aa0 <fl_fread>:
    4aa0:	fd010113          	addi	sp,sp,-48
    4aa4:	01512a23          	sw	s5,20(sp)
    4aa8:	00050a93          	mv	s5,a0
    4aac:	00058513          	mv	a0,a1
    4ab0:	00060593          	mv	a1,a2
    4ab4:	02812423          	sw	s0,40(sp)
    4ab8:	02912223          	sw	s1,36(sp)
    4abc:	02112623          	sw	ra,44(sp)
    4ac0:	03212023          	sw	s2,32(sp)
    4ac4:	01312e23          	sw	s3,28(sp)
    4ac8:	01412c23          	sw	s4,24(sp)
    4acc:	01612823          	sw	s6,16(sp)
    4ad0:	01712623          	sw	s7,12(sp)
    4ad4:	01812423          	sw	s8,8(sp)
    4ad8:	01912223          	sw	s9,4(sp)
    4adc:	00068493          	mv	s1,a3
    4ae0:	ffffc097          	auipc	ra,0xffffc
    4ae4:	4b0080e7          	jalr	1200(ra) # f90 <__mulsi3>
    4ae8:	000067b7          	lui	a5,0x6
    4aec:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    4af0:	00050413          	mv	s0,a0
    4af4:	00079663          	bnez	a5,4b00 <fl_fread+0x60>
    4af8:	ffffd097          	auipc	ra,0xffffd
    4afc:	c2c080e7          	jalr	-980(ra) # 1724 <fl_init>
    4b00:	120a8e63          	beqz	s5,4c3c <fl_fread+0x19c>
    4b04:	12048c63          	beqz	s1,4c3c <fl_fread+0x19c>
    4b08:	4384c783          	lbu	a5,1080(s1)
    4b0c:	0017f793          	andi	a5,a5,1
    4b10:	12078663          	beqz	a5,4c3c <fl_fread+0x19c>
    4b14:	02040e63          	beqz	s0,4b50 <fl_fread+0xb0>
    4b18:	0084a583          	lw	a1,8(s1)
    4b1c:	00c4a783          	lw	a5,12(s1)
    4b20:	10f5fe63          	bgeu	a1,a5,4c3c <fl_fread+0x19c>
    4b24:	00b40733          	add	a4,s0,a1
    4b28:	00040b13          	mv	s6,s0
    4b2c:	00e7f463          	bgeu	a5,a4,4b34 <fl_fread+0x94>
    4b30:	40b78b33          	sub	s6,a5,a1
    4b34:	0095d993          	srli	s3,a1,0x9
    4b38:	1ff5f913          	andi	s2,a1,511
    4b3c:	00000413          	li	s0,0
    4b40:	23048b93          	addi	s7,s1,560
    4b44:	20000c13          	li	s8,512
    4b48:	1ff00c93          	li	s9,511
    4b4c:	03644e63          	blt	s0,s6,4b88 <fl_fread+0xe8>
    4b50:	02c12083          	lw	ra,44(sp)
    4b54:	00040513          	mv	a0,s0
    4b58:	02812403          	lw	s0,40(sp)
    4b5c:	02412483          	lw	s1,36(sp)
    4b60:	02012903          	lw	s2,32(sp)
    4b64:	01c12983          	lw	s3,28(sp)
    4b68:	01812a03          	lw	s4,24(sp)
    4b6c:	01412a83          	lw	s5,20(sp)
    4b70:	01012b03          	lw	s6,16(sp)
    4b74:	00c12b83          	lw	s7,12(sp)
    4b78:	00812c03          	lw	s8,8(sp)
    4b7c:	00412c83          	lw	s9,4(sp)
    4b80:	03010113          	addi	sp,sp,48
    4b84:	00008067          	ret
    4b88:	04091463          	bnez	s2,4bd0 <fl_fread+0x130>
    4b8c:	408b06b3          	sub	a3,s6,s0
    4b90:	04dcd063          	bge	s9,a3,4bd0 <fl_fread+0x130>
    4b94:	4096d693          	srai	a3,a3,0x9
    4b98:	008a8633          	add	a2,s5,s0
    4b9c:	00098593          	mv	a1,s3
    4ba0:	00048513          	mv	a0,s1
    4ba4:	fffff097          	auipc	ra,0xfffff
    4ba8:	4ec080e7          	jalr	1260(ra) # 4090 <_read_sectors>
    4bac:	fa0502e3          	beqz	a0,4b50 <fl_fread+0xb0>
    4bb0:	00951a13          	slli	s4,a0,0x9
    4bb4:	00a989b3          	add	s3,s3,a0
    4bb8:	0084a783          	lw	a5,8(s1)
    4bbc:	01440433          	add	s0,s0,s4
    4bc0:	00000913          	li	s2,0
    4bc4:	014787b3          	add	a5,a5,s4
    4bc8:	00f4a423          	sw	a5,8(s1)
    4bcc:	f81ff06f          	j	4b4c <fl_fread+0xac>
    4bd0:	4304a783          	lw	a5,1072(s1)
    4bd4:	03378e63          	beq	a5,s3,4c10 <fl_fread+0x170>
    4bd8:	4344a783          	lw	a5,1076(s1)
    4bdc:	00078863          	beqz	a5,4bec <fl_fread+0x14c>
    4be0:	00048513          	mv	a0,s1
    4be4:	00000097          	auipc	ra,0x0
    4be8:	d4c080e7          	jalr	-692(ra) # 4930 <fl_fflush>
    4bec:	00100693          	li	a3,1
    4bf0:	000b8613          	mv	a2,s7
    4bf4:	00098593          	mv	a1,s3
    4bf8:	00048513          	mv	a0,s1
    4bfc:	fffff097          	auipc	ra,0xfffff
    4c00:	494080e7          	jalr	1172(ra) # 4090 <_read_sectors>
    4c04:	f40506e3          	beqz	a0,4b50 <fl_fread+0xb0>
    4c08:	4334a823          	sw	s3,1072(s1)
    4c0c:	4204aa23          	sw	zero,1076(s1)
    4c10:	412c07b3          	sub	a5,s8,s2
    4c14:	408b0a33          	sub	s4,s6,s0
    4c18:	0147d463          	bge	a5,s4,4c20 <fl_fread+0x180>
    4c1c:	00078a13          	mv	s4,a5
    4c20:	000a0613          	mv	a2,s4
    4c24:	012b85b3          	add	a1,s7,s2
    4c28:	008a8533          	add	a0,s5,s0
    4c2c:	ffffc097          	auipc	ra,0xffffc
    4c30:	b50080e7          	jalr	-1200(ra) # 77c <memcpy>
    4c34:	00198993          	addi	s3,s3,1
    4c38:	f81ff06f          	j	4bb8 <fl_fread+0x118>
    4c3c:	fff00413          	li	s0,-1
    4c40:	f11ff06f          	j	4b50 <fl_fread+0xb0>

00004c44 <fl_fgetc>:
    4c44:	fe010113          	addi	sp,sp,-32
    4c48:	00050693          	mv	a3,a0
    4c4c:	00100613          	li	a2,1
    4c50:	00100593          	li	a1,1
    4c54:	00f10513          	addi	a0,sp,15
    4c58:	00112e23          	sw	ra,28(sp)
    4c5c:	000107a3          	sb	zero,15(sp)
    4c60:	00000097          	auipc	ra,0x0
    4c64:	e40080e7          	jalr	-448(ra) # 4aa0 <fl_fread>
    4c68:	00100793          	li	a5,1
    4c6c:	00f51463          	bne	a0,a5,4c74 <fl_fgetc+0x30>
    4c70:	00f14503          	lbu	a0,15(sp)
    4c74:	01c12083          	lw	ra,28(sp)
    4c78:	02010113          	addi	sp,sp,32
    4c7c:	00008067          	ret

00004c80 <fl_fgets>:
    4c80:	fe010113          	addi	sp,sp,-32
    4c84:	00112e23          	sw	ra,28(sp)
    4c88:	00812c23          	sw	s0,24(sp)
    4c8c:	00912a23          	sw	s1,20(sp)
    4c90:	01212823          	sw	s2,16(sp)
    4c94:	01312623          	sw	s3,12(sp)
    4c98:	01412423          	sw	s4,8(sp)
    4c9c:	02b05e63          	blez	a1,4cd8 <fl_fgets+0x58>
    4ca0:	00050493          	mv	s1,a0
    4ca4:	00060993          	mv	s3,a2
    4ca8:	00000413          	li	s0,0
    4cac:	fff58913          	addi	s2,a1,-1
    4cb0:	00a00a13          	li	s4,10
    4cb4:	01245a63          	bge	s0,s2,4cc8 <fl_fgets+0x48>
    4cb8:	00098513          	mv	a0,s3
    4cbc:	00000097          	auipc	ra,0x0
    4cc0:	f88080e7          	jalr	-120(ra) # 4c44 <fl_fgetc>
    4cc4:	02055e63          	bgez	a0,4d00 <fl_fgets+0x80>
    4cc8:	00040863          	beqz	s0,4cd8 <fl_fgets+0x58>
    4ccc:	00848433          	add	s0,s1,s0
    4cd0:	00040023          	sb	zero,0(s0)
    4cd4:	0080006f          	j	4cdc <fl_fgets+0x5c>
    4cd8:	00000493          	li	s1,0
    4cdc:	01c12083          	lw	ra,28(sp)
    4ce0:	01812403          	lw	s0,24(sp)
    4ce4:	01012903          	lw	s2,16(sp)
    4ce8:	00c12983          	lw	s3,12(sp)
    4cec:	00812a03          	lw	s4,8(sp)
    4cf0:	00048513          	mv	a0,s1
    4cf4:	01412483          	lw	s1,20(sp)
    4cf8:	02010113          	addi	sp,sp,32
    4cfc:	00008067          	ret
    4d00:	00140413          	addi	s0,s0,1
    4d04:	008487b3          	add	a5,s1,s0
    4d08:	fea78fa3          	sb	a0,-1(a5)
    4d0c:	fb4514e3          	bne	a0,s4,4cb4 <fl_fgets+0x34>
    4d10:	fbdff06f          	j	4ccc <fl_fgets+0x4c>

00004d14 <fl_fwrite>:
    4d14:	fb010113          	addi	sp,sp,-80
    4d18:	00a12423          	sw	a0,8(sp)
    4d1c:	00058513          	mv	a0,a1
    4d20:	00060593          	mv	a1,a2
    4d24:	04912223          	sw	s1,68(sp)
    4d28:	03a12023          	sw	s10,32(sp)
    4d2c:	04112623          	sw	ra,76(sp)
    4d30:	04812423          	sw	s0,72(sp)
    4d34:	05212023          	sw	s2,64(sp)
    4d38:	03312e23          	sw	s3,60(sp)
    4d3c:	03412c23          	sw	s4,56(sp)
    4d40:	03512a23          	sw	s5,52(sp)
    4d44:	03612823          	sw	s6,48(sp)
    4d48:	03712623          	sw	s7,44(sp)
    4d4c:	03812423          	sw	s8,40(sp)
    4d50:	03912223          	sw	s9,36(sp)
    4d54:	01b12e23          	sw	s11,28(sp)
    4d58:	00068d13          	mv	s10,a3
    4d5c:	ffffc097          	auipc	ra,0xffffc
    4d60:	234080e7          	jalr	564(ra) # f90 <__mulsi3>
    4d64:	00006737          	lui	a4,0x6
    4d68:	ffc72703          	lw	a4,-4(a4) # 5ffc <_filelib_init>
    4d6c:	00050493          	mv	s1,a0
    4d70:	00071663          	bnez	a4,4d7c <fl_fwrite+0x68>
    4d74:	ffffd097          	auipc	ra,0xffffd
    4d78:	9b0080e7          	jalr	-1616(ra) # 1724 <fl_init>
    4d7c:	040d1463          	bnez	s10,4dc4 <fl_fwrite+0xb0>
    4d80:	fff00493          	li	s1,-1
    4d84:	04c12083          	lw	ra,76(sp)
    4d88:	04812403          	lw	s0,72(sp)
    4d8c:	04012903          	lw	s2,64(sp)
    4d90:	03c12983          	lw	s3,60(sp)
    4d94:	03812a03          	lw	s4,56(sp)
    4d98:	03412a83          	lw	s5,52(sp)
    4d9c:	03012b03          	lw	s6,48(sp)
    4da0:	02c12b83          	lw	s7,44(sp)
    4da4:	02812c03          	lw	s8,40(sp)
    4da8:	02412c83          	lw	s9,36(sp)
    4dac:	02012d03          	lw	s10,32(sp)
    4db0:	01c12d83          	lw	s11,28(sp)
    4db4:	00048513          	mv	a0,s1
    4db8:	04412483          	lw	s1,68(sp)
    4dbc:	05010113          	addi	sp,sp,80
    4dc0:	00008067          	ret
    4dc4:	0000aab7          	lui	s5,0xa
    4dc8:	240a8713          	addi	a4,s5,576 # a240 <_fs>
    4dcc:	03c72703          	lw	a4,60(a4)
    4dd0:	240a8a93          	addi	s5,s5,576
    4dd4:	00070463          	beqz	a4,4ddc <fl_fwrite+0xc8>
    4dd8:	000700e7          	jalr	a4
    4ddc:	438d4703          	lbu	a4,1080(s10)
    4de0:	00277693          	andi	a3,a4,2
    4de4:	00069a63          	bnez	a3,4df8 <fl_fwrite+0xe4>
    4de8:	040aa783          	lw	a5,64(s5)
    4dec:	f8078ae3          	beqz	a5,4d80 <fl_fwrite+0x6c>
    4df0:	000780e7          	jalr	a5
    4df4:	f8dff06f          	j	4d80 <fl_fwrite+0x6c>
    4df8:	00477713          	andi	a4,a4,4
    4dfc:	00070663          	beqz	a4,4e08 <fl_fwrite+0xf4>
    4e00:	00cd2703          	lw	a4,12(s10)
    4e04:	00ed2423          	sw	a4,8(s10)
    4e08:	008d2983          	lw	s3,8(s10)
    4e0c:	00000913          	li	s2,0
    4e10:	20000b93          	li	s7,512
    4e14:	0099d413          	srli	s0,s3,0x9
    4e18:	230d0b13          	addi	s6,s10,560
    4e1c:	1ff9f993          	andi	s3,s3,511
    4e20:	1ff00d93          	li	s11,511
    4e24:	fff00c13          	li	s8,-1
    4e28:	06997c63          	bgeu	s2,s1,4ea0 <fl_fwrite+0x18c>
    4e2c:	00812783          	lw	a5,8(sp)
    4e30:	430d2703          	lw	a4,1072(s10)
    4e34:	412486b3          	sub	a3,s1,s2
    4e38:	01278cb3          	add	s9,a5,s2
    4e3c:	08099063          	bnez	s3,4ebc <fl_fwrite+0x1a8>
    4e40:	06ddfe63          	bgeu	s11,a3,4ebc <fl_fwrite+0x1a8>
    4e44:	03870463          	beq	a4,s8,4e6c <fl_fwrite+0x158>
    4e48:	434d2703          	lw	a4,1076(s10)
    4e4c:	00070c63          	beqz	a4,4e64 <fl_fwrite+0x150>
    4e50:	000d0513          	mv	a0,s10
    4e54:	00d12623          	sw	a3,12(sp)
    4e58:	00000097          	auipc	ra,0x0
    4e5c:	ad8080e7          	jalr	-1320(ra) # 4930 <fl_fflush>
    4e60:	00c12683          	lw	a3,12(sp)
    4e64:	438d2823          	sw	s8,1072(s10)
    4e68:	420d2a23          	sw	zero,1076(s10)
    4e6c:	0096d693          	srli	a3,a3,0x9
    4e70:	00040593          	mv	a1,s0
    4e74:	000c8613          	mv	a2,s9
    4e78:	000d0513          	mv	a0,s10
    4e7c:	00000097          	auipc	ra,0x0
    4e80:	904080e7          	jalr	-1788(ra) # 4780 <_write_sectors>
    4e84:	008d2703          	lw	a4,8(s10)
    4e88:	00951693          	slli	a3,a0,0x9
    4e8c:	00d90933          	add	s2,s2,a3
    4e90:	00d70733          	add	a4,a4,a3
    4e94:	00ed2423          	sw	a4,8(s10)
    4e98:	00a40433          	add	s0,s0,a0
    4e9c:	0a051863          	bnez	a0,4f4c <fl_fwrite+0x238>
    4ea0:	008d2703          	lw	a4,8(s10)
    4ea4:	00cd2683          	lw	a3,12(s10)
    4ea8:	0ae6e663          	bltu	a3,a4,4f54 <fl_fwrite+0x240>
    4eac:	040aa783          	lw	a5,64(s5)
    4eb0:	ec078ae3          	beqz	a5,4d84 <fl_fwrite+0x70>
    4eb4:	000780e7          	jalr	a5
    4eb8:	ecdff06f          	j	4d84 <fl_fwrite+0x70>
    4ebc:	413b8a33          	sub	s4,s7,s3
    4ec0:	0146f463          	bgeu	a3,s4,4ec8 <fl_fwrite+0x1b4>
    4ec4:	00068a13          	mv	s4,a3
    4ec8:	04e40a63          	beq	s0,a4,4f1c <fl_fwrite+0x208>
    4ecc:	434d2703          	lw	a4,1076(s10)
    4ed0:	00070863          	beqz	a4,4ee0 <fl_fwrite+0x1cc>
    4ed4:	000d0513          	mv	a0,s10
    4ed8:	00000097          	auipc	ra,0x0
    4edc:	a58080e7          	jalr	-1448(ra) # 4930 <fl_fflush>
    4ee0:	037a0a63          	beq	s4,s7,4f14 <fl_fwrite+0x200>
    4ee4:	00100693          	li	a3,1
    4ee8:	000b0613          	mv	a2,s6
    4eec:	00040593          	mv	a1,s0
    4ef0:	000d0513          	mv	a0,s10
    4ef4:	fffff097          	auipc	ra,0xfffff
    4ef8:	19c080e7          	jalr	412(ra) # 4090 <_read_sectors>
    4efc:	00051c63          	bnez	a0,4f14 <fl_fwrite+0x200>
    4f00:	20000613          	li	a2,512
    4f04:	00000593          	li	a1,0
    4f08:	000b0513          	mv	a0,s6
    4f0c:	ffffc097          	auipc	ra,0xffffc
    4f10:	854080e7          	jalr	-1964(ra) # 760 <memset>
    4f14:	428d2823          	sw	s0,1072(s10)
    4f18:	420d2a23          	sw	zero,1076(s10)
    4f1c:	000a0613          	mv	a2,s4
    4f20:	000c8593          	mv	a1,s9
    4f24:	013b0533          	add	a0,s6,s3
    4f28:	ffffc097          	auipc	ra,0xffffc
    4f2c:	854080e7          	jalr	-1964(ra) # 77c <memcpy>
    4f30:	008d2703          	lw	a4,8(s10)
    4f34:	00100793          	li	a5,1
    4f38:	42fd2a23          	sw	a5,1076(s10)
    4f3c:	01470733          	add	a4,a4,s4
    4f40:	01490933          	add	s2,s2,s4
    4f44:	00ed2423          	sw	a4,8(s10)
    4f48:	00140413          	addi	s0,s0,1
    4f4c:	00000993          	li	s3,0
    4f50:	ed9ff06f          	j	4e28 <fl_fwrite+0x114>
    4f54:	00ed2623          	sw	a4,12(s10)
    4f58:	00100713          	li	a4,1
    4f5c:	00ed2823          	sw	a4,16(s10)
    4f60:	f4dff06f          	j	4eac <fl_fwrite+0x198>

00004f64 <fl_fputc>:
    4f64:	fe010113          	addi	sp,sp,-32
    4f68:	00812c23          	sw	s0,24(sp)
    4f6c:	00058693          	mv	a3,a1
    4f70:	00a107a3          	sb	a0,15(sp)
    4f74:	00050413          	mv	s0,a0
    4f78:	00100613          	li	a2,1
    4f7c:	00100593          	li	a1,1
    4f80:	00f10513          	addi	a0,sp,15
    4f84:	00112e23          	sw	ra,28(sp)
    4f88:	00000097          	auipc	ra,0x0
    4f8c:	d8c080e7          	jalr	-628(ra) # 4d14 <fl_fwrite>
    4f90:	00100793          	li	a5,1
    4f94:	00f50463          	beq	a0,a5,4f9c <fl_fputc+0x38>
    4f98:	00050413          	mv	s0,a0
    4f9c:	01c12083          	lw	ra,28(sp)
    4fa0:	00040513          	mv	a0,s0
    4fa4:	01812403          	lw	s0,24(sp)
    4fa8:	02010113          	addi	sp,sp,32
    4fac:	00008067          	ret

00004fb0 <fl_fputs>:
    4fb0:	fe010113          	addi	sp,sp,-32
    4fb4:	00812c23          	sw	s0,24(sp)
    4fb8:	00112e23          	sw	ra,28(sp)
    4fbc:	00050413          	mv	s0,a0
    4fc0:	00b12623          	sw	a1,12(sp)
    4fc4:	ffffb097          	auipc	ra,0xffffb
    4fc8:	7dc080e7          	jalr	2012(ra) # 7a0 <strlen>
    4fcc:	00050613          	mv	a2,a0
    4fd0:	00040513          	mv	a0,s0
    4fd4:	01812403          	lw	s0,24(sp)
    4fd8:	00c12683          	lw	a3,12(sp)
    4fdc:	01c12083          	lw	ra,28(sp)
    4fe0:	00100593          	li	a1,1
    4fe4:	02010113          	addi	sp,sp,32
    4fe8:	00000317          	auipc	t1,0x0
    4fec:	d2c30067          	jr	-724(t1) # 4d14 <fl_fwrite>

00004ff0 <fatfs_allocate_free_space.part.0>:
    4ff0:	02452703          	lw	a4,36(a0)
    4ff4:	fd010113          	addi	sp,sp,-48
    4ff8:	02812423          	sw	s0,40(sp)
    4ffc:	03212023          	sw	s2,32(sp)
    5000:	01312e23          	sw	s3,28(sp)
    5004:	01512a23          	sw	s5,20(sp)
    5008:	02112623          	sw	ra,44(sp)
    500c:	02912223          	sw	s1,36(sp)
    5010:	01412c23          	sw	s4,24(sp)
    5014:	fff00793          	li	a5,-1
    5018:	00050413          	mv	s0,a0
    501c:	00058a93          	mv	s5,a1
    5020:	00060913          	mv	s2,a2
    5024:	00068993          	mv	s3,a3
    5028:	00f70863          	beq	a4,a5,5038 <fatfs_allocate_free_space.part.0+0x48>
    502c:	fff00593          	li	a1,-1
    5030:	fffff097          	auipc	ra,0xfffff
    5034:	1ac080e7          	jalr	428(ra) # 41dc <fatfs_set_fs_info_next_free_cluster>
    5038:	00044a03          	lbu	s4,0(s0)
    503c:	00098513          	mv	a0,s3
    5040:	009a1a13          	slli	s4,s4,0x9
    5044:	000a0593          	mv	a1,s4
    5048:	ffffb097          	auipc	ra,0xffffb
    504c:	644080e7          	jalr	1604(ra) # 68c <__udivsi3>
    5050:	00050493          	mv	s1,a0
    5054:	00050593          	mv	a1,a0
    5058:	000a0513          	mv	a0,s4
    505c:	ffffc097          	auipc	ra,0xffffc
    5060:	f34080e7          	jalr	-204(ra) # f90 <__mulsi3>
    5064:	00a98463          	beq	s3,a0,506c <fatfs_allocate_free_space.part.0+0x7c>
    5068:	00148493          	addi	s1,s1,1
    506c:	060a8463          	beqz	s5,50d4 <fatfs_allocate_free_space.part.0+0xe4>
    5070:	00842583          	lw	a1,8(s0)
    5074:	00c10613          	addi	a2,sp,12
    5078:	00040513          	mv	a0,s0
    507c:	fffff097          	auipc	ra,0xfffff
    5080:	218080e7          	jalr	536(ra) # 4294 <fatfs_find_blank_cluster>
    5084:	02050663          	beqz	a0,50b0 <fatfs_allocate_free_space.part.0+0xc0>
    5088:	00100793          	li	a5,1
    508c:	04f49863          	bne	s1,a5,50dc <fatfs_allocate_free_space.part.0+0xec>
    5090:	00c12483          	lw	s1,12(sp)
    5094:	fff00613          	li	a2,-1
    5098:	00040513          	mv	a0,s0
    509c:	00048593          	mv	a1,s1
    50a0:	fffff097          	auipc	ra,0xfffff
    50a4:	314080e7          	jalr	788(ra) # 43b4 <fatfs_fat_set_cluster>
    50a8:	00100513          	li	a0,1
    50ac:	00992023          	sw	s1,0(s2)
    50b0:	02c12083          	lw	ra,44(sp)
    50b4:	02812403          	lw	s0,40(sp)
    50b8:	02412483          	lw	s1,36(sp)
    50bc:	02012903          	lw	s2,32(sp)
    50c0:	01c12983          	lw	s3,28(sp)
    50c4:	01812a03          	lw	s4,24(sp)
    50c8:	01412a83          	lw	s5,20(sp)
    50cc:	03010113          	addi	sp,sp,48
    50d0:	00008067          	ret
    50d4:	00092783          	lw	a5,0(s2)
    50d8:	00f12623          	sw	a5,12(sp)
    50dc:	00048613          	mv	a2,s1
    50e0:	00c10593          	addi	a1,sp,12
    50e4:	00040513          	mv	a0,s0
    50e8:	fffff097          	auipc	ra,0xfffff
    50ec:	5c8080e7          	jalr	1480(ra) # 46b0 <fatfs_add_free_space>
    50f0:	00a03533          	snez	a0,a0
    50f4:	fbdff06f          	j	50b0 <fatfs_allocate_free_space.part.0+0xc0>

000050f8 <fatfs_allocate_free_space>:
    50f8:	00068663          	beqz	a3,5104 <fatfs_allocate_free_space+0xc>
    50fc:	00000317          	auipc	t1,0x0
    5100:	ef430067          	jr	-268(t1) # 4ff0 <fatfs_allocate_free_space.part.0>
    5104:	00000513          	li	a0,0
    5108:	00008067          	ret

0000510c <fatfs_add_file_entry>:
    510c:	f8010113          	addi	sp,sp,-128
    5110:	00f12823          	sw	a5,16(sp)
    5114:	03852783          	lw	a5,56(a0)
    5118:	06112e23          	sw	ra,124(sp)
    511c:	06812c23          	sw	s0,120(sp)
    5120:	06912a23          	sw	s1,116(sp)
    5124:	07212823          	sw	s2,112(sp)
    5128:	07312623          	sw	s3,108(sp)
    512c:	07412423          	sw	s4,104(sp)
    5130:	07512223          	sw	s5,100(sp)
    5134:	07612023          	sw	s6,96(sp)
    5138:	05712e23          	sw	s7,92(sp)
    513c:	05812c23          	sw	s8,88(sp)
    5140:	05912a23          	sw	s9,84(sp)
    5144:	05a12823          	sw	s10,80(sp)
    5148:	05b12623          	sw	s11,76(sp)
    514c:	00e12623          	sw	a4,12(sp)
    5150:	01012a23          	sw	a6,20(sp)
    5154:	04079463          	bnez	a5,519c <fatfs_add_file_entry+0x90>
    5158:	00000913          	li	s2,0
    515c:	07c12083          	lw	ra,124(sp)
    5160:	07812403          	lw	s0,120(sp)
    5164:	07412483          	lw	s1,116(sp)
    5168:	06c12983          	lw	s3,108(sp)
    516c:	06812a03          	lw	s4,104(sp)
    5170:	06412a83          	lw	s5,100(sp)
    5174:	06012b03          	lw	s6,96(sp)
    5178:	05c12b83          	lw	s7,92(sp)
    517c:	05812c03          	lw	s8,88(sp)
    5180:	05412c83          	lw	s9,84(sp)
    5184:	05012d03          	lw	s10,80(sp)
    5188:	04c12d83          	lw	s11,76(sp)
    518c:	00090513          	mv	a0,s2
    5190:	07012903          	lw	s2,112(sp)
    5194:	08010113          	addi	sp,sp,128
    5198:	00008067          	ret
    519c:	00050413          	mv	s0,a0
    51a0:	00060513          	mv	a0,a2
    51a4:	00058b13          	mv	s6,a1
    51a8:	00060c93          	mv	s9,a2
    51ac:	00068b93          	mv	s7,a3
    51b0:	ffffd097          	auipc	ra,0xffffd
    51b4:	a74080e7          	jalr	-1420(ra) # 1c24 <fatfs_lfn_entries_required>
    51b8:	00150713          	addi	a4,a0,1
    51bc:	00100793          	li	a5,1
    51c0:	00050493          	mv	s1,a0
    51c4:	f8e7fae3          	bgeu	a5,a4,5158 <fatfs_add_file_entry+0x4c>
    51c8:	00000993          	li	s3,0
    51cc:	00000a93          	li	s5,0
    51d0:	00000a13          	li	s4,0
    51d4:	00000c13          	li	s8,0
    51d8:	00000d13          	li	s10,0
    51dc:	01000d93          	li	s11,16
    51e0:	00000693          	li	a3,0
    51e4:	00098613          	mv	a2,s3
    51e8:	000b0593          	mv	a1,s6
    51ec:	00040513          	mv	a0,s0
    51f0:	ffffe097          	auipc	ra,0xffffe
    51f4:	0c0080e7          	jalr	192(ra) # 32b0 <fatfs_sector_reader>
    51f8:	00050913          	mv	s2,a0
    51fc:	14050a63          	beqz	a0,5350 <fatfs_add_file_entry+0x244>
    5200:	04440693          	addi	a3,s0,68
    5204:	000d0913          	mv	s2,s10
    5208:	00000713          	li	a4,0
    520c:	00068513          	mv	a0,a3
    5210:	00e12e23          	sw	a4,28(sp)
    5214:	00d12c23          	sw	a3,24(sp)
    5218:	ffffd097          	auipc	ra,0xffffd
    521c:	91c080e7          	jalr	-1764(ra) # 1b34 <fatfs_entry_lfn_text>
    5220:	01812683          	lw	a3,24(sp)
    5224:	01c12703          	lw	a4,28(sp)
    5228:	00050d13          	mv	s10,a0
    522c:	02050c63          	beqz	a0,5264 <fatfs_add_file_entry+0x158>
    5230:	00091863          	bnez	s2,5240 <fatfs_add_file_entry+0x134>
    5234:	00070a93          	mv	s5,a4
    5238:	00098a13          	mv	s4,s3
    523c:	00100c13          	li	s8,1
    5240:	00190d13          	addi	s10,s2,1
    5244:	00170713          	addi	a4,a4,1
    5248:	0ff77713          	zext.b	a4,a4
    524c:	02068693          	addi	a3,a3,32
    5250:	01b71663          	bne	a4,s11,525c <fatfs_add_file_entry+0x150>
    5254:	00198993          	addi	s3,s3,1
    5258:	f89ff06f          	j	51e0 <fatfs_add_file_entry+0xd4>
    525c:	000d0913          	mv	s2,s10
    5260:	fadff06f          	j	520c <fatfs_add_file_entry+0x100>
    5264:	0006c603          	lbu	a2,0(a3)
    5268:	0e500793          	li	a5,229
    526c:	0cf61c63          	bne	a2,a5,5344 <fatfs_add_file_entry+0x238>
    5270:	00091863          	bnez	s2,5280 <fatfs_add_file_entry+0x174>
    5274:	00070a93          	mv	s5,a4
    5278:	00098a13          	mv	s4,s3
    527c:	00100c13          	li	s8,1
    5280:	00190d13          	addi	s10,s2,1
    5284:	fc9940e3          	blt	s2,s1,5244 <fatfs_add_file_entry+0x138>
    5288:	00bb8713          	addi	a4,s7,11
    528c:	000b8793          	mv	a5,s7
    5290:	00000913          	li	s2,0
    5294:	0007c603          	lbu	a2,0(a5)
    5298:	00791693          	slli	a3,s2,0x7
    529c:	00195913          	srli	s2,s2,0x1
    52a0:	00c90933          	add	s2,s2,a2
    52a4:	00178793          	addi	a5,a5,1
    52a8:	00d90933          	add	s2,s2,a3
    52ac:	0ff97913          	zext.b	s2,s2
    52b0:	fee792e3          	bne	a5,a4,5294 <fatfs_add_file_entry+0x188>
    52b4:	000a0993          	mv	s3,s4
    52b8:	00000d93          	li	s11,0
    52bc:	00000693          	li	a3,0
    52c0:	00098613          	mv	a2,s3
    52c4:	000b0593          	mv	a1,s6
    52c8:	00040513          	mv	a0,s0
    52cc:	ffffe097          	auipc	ra,0xffffe
    52d0:	fe4080e7          	jalr	-28(ra) # 32b0 <fatfs_sector_reader>
    52d4:	e80502e3          	beqz	a0,5158 <fatfs_add_file_entry+0x4c>
    52d8:	04440d13          	addi	s10,s0,68
    52dc:	00000713          	li	a4,0
    52e0:	00000793          	li	a5,0
    52e4:	000d0c13          	mv	s8,s10
    52e8:	000d9663          	bnez	s11,52f4 <fatfs_add_file_entry+0x1e8>
    52ec:	11499e63          	bne	s3,s4,5408 <fatfs_add_file_entry+0x2fc>
    52f0:	11579c63          	bne	a5,s5,5408 <fatfs_add_file_entry+0x2fc>
    52f4:	0e049463          	bnez	s1,53dc <fatfs_add_file_entry+0x2d0>
    52f8:	01412703          	lw	a4,20(sp)
    52fc:	00c12603          	lw	a2,12(sp)
    5300:	01012583          	lw	a1,16(sp)
    5304:	02010693          	addi	a3,sp,32
    5308:	000b8513          	mv	a0,s7
    530c:	ffffd097          	auipc	ra,0xffffd
    5310:	a70080e7          	jalr	-1424(ra) # 1d7c <fatfs_sfn_create_entry>
    5314:	02000613          	li	a2,32
    5318:	02010593          	addi	a1,sp,32
    531c:	000d0513          	mv	a0,s10
    5320:	ffffb097          	auipc	ra,0xffffb
    5324:	45c080e7          	jalr	1116(ra) # 77c <memcpy>
    5328:	03842783          	lw	a5,56(s0)
    532c:	24442503          	lw	a0,580(s0)
    5330:	00100613          	li	a2,1
    5334:	000c0593          	mv	a1,s8
    5338:	000780e7          	jalr	a5
    533c:	00050913          	mv	s2,a0
    5340:	e1dff06f          	j	515c <fatfs_add_file_entry+0x50>
    5344:	f20606e3          	beqz	a2,5270 <fatfs_add_file_entry+0x164>
    5348:	00000c13          	li	s8,0
    534c:	ef9ff06f          	j	5244 <fatfs_add_file_entry+0x138>
    5350:	00842583          	lw	a1,8(s0)
    5354:	02010613          	addi	a2,sp,32
    5358:	00040513          	mv	a0,s0
    535c:	fffff097          	auipc	ra,0xfffff
    5360:	f38080e7          	jalr	-200(ra) # 4294 <fatfs_find_blank_cluster>
    5364:	de050ce3          	beqz	a0,515c <fatfs_add_file_entry+0x50>
    5368:	02012d83          	lw	s11,32(sp)
    536c:	000b0593          	mv	a1,s6
    5370:	00040513          	mv	a0,s0
    5374:	000d8613          	mv	a2,s11
    5378:	fffff097          	auipc	ra,0xfffff
    537c:	1c4080e7          	jalr	452(ra) # 453c <fatfs_fat_add_cluster_to_chain>
    5380:	dc050ee3          	beqz	a0,515c <fatfs_add_file_entry+0x50>
    5384:	20000613          	li	a2,512
    5388:	00000593          	li	a1,0
    538c:	04440513          	addi	a0,s0,68
    5390:	ffffb097          	auipc	ra,0xffffb
    5394:	3d0080e7          	jalr	976(ra) # 760 <memset>
    5398:	00000d13          	li	s10,0
    539c:	00044783          	lbu	a5,0(s0)
    53a0:	00fd6a63          	bltu	s10,a5,53b4 <fatfs_add_file_entry+0x2a8>
    53a4:	ee0c12e3          	bnez	s8,5288 <fatfs_add_file_entry+0x17c>
    53a8:	00098a13          	mv	s4,s3
    53ac:	00000a93          	li	s5,0
    53b0:	ed9ff06f          	j	5288 <fatfs_add_file_entry+0x17c>
    53b4:	00000693          	li	a3,0
    53b8:	000d0613          	mv	a2,s10
    53bc:	000d8593          	mv	a1,s11
    53c0:	00040513          	mv	a0,s0
    53c4:	ffffc097          	auipc	ra,0xffffc
    53c8:	1c8080e7          	jalr	456(ra) # 158c <fatfs_write_sector>
    53cc:	d80508e3          	beqz	a0,515c <fatfs_add_file_entry+0x50>
    53d0:	001d0613          	addi	a2,s10,1
    53d4:	0ff67d13          	zext.b	s10,a2
    53d8:	fc5ff06f          	j	539c <fatfs_add_file_entry+0x290>
    53dc:	fff48493          	addi	s1,s1,-1
    53e0:	00090693          	mv	a3,s2
    53e4:	00048613          	mv	a2,s1
    53e8:	000d0593          	mv	a1,s10
    53ec:	000c8513          	mv	a0,s9
    53f0:	00f12c23          	sw	a5,24(sp)
    53f4:	ffffd097          	auipc	ra,0xffffd
    53f8:	860080e7          	jalr	-1952(ra) # 1c54 <fatfs_filename_to_lfn>
    53fc:	01812783          	lw	a5,24(sp)
    5400:	00100d93          	li	s11,1
    5404:	00100713          	li	a4,1
    5408:	00178793          	addi	a5,a5,1
    540c:	0ff7f793          	zext.b	a5,a5
    5410:	01000693          	li	a3,16
    5414:	020d0d13          	addi	s10,s10,32
    5418:	ecd798e3          	bne	a5,a3,52e8 <fatfs_add_file_entry+0x1dc>
    541c:	00070e63          	beqz	a4,5438 <fatfs_add_file_entry+0x32c>
    5420:	03842783          	lw	a5,56(s0)
    5424:	24442503          	lw	a0,580(s0)
    5428:	00100613          	li	a2,1
    542c:	000c0593          	mv	a1,s8
    5430:	000780e7          	jalr	a5
    5434:	d20502e3          	beqz	a0,5158 <fatfs_add_file_entry+0x4c>
    5438:	00198993          	addi	s3,s3,1
    543c:	e81ff06f          	j	52bc <fatfs_add_file_entry+0x1b0>

00005440 <fl_fopen>:
    5440:	000067b7          	lui	a5,0x6
    5444:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    5448:	fa010113          	addi	sp,sp,-96
    544c:	04812c23          	sw	s0,88(sp)
    5450:	05412423          	sw	s4,72(sp)
    5454:	04112e23          	sw	ra,92(sp)
    5458:	04912a23          	sw	s1,84(sp)
    545c:	05212823          	sw	s2,80(sp)
    5460:	05312623          	sw	s3,76(sp)
    5464:	05512223          	sw	s5,68(sp)
    5468:	05612023          	sw	s6,64(sp)
    546c:	03712e23          	sw	s7,60(sp)
    5470:	03812c23          	sw	s8,56(sp)
    5474:	03912a23          	sw	s9,52(sp)
    5478:	00050a13          	mv	s4,a0
    547c:	00058413          	mv	s0,a1
    5480:	00079663          	bnez	a5,548c <fl_fopen+0x4c>
    5484:	ffffc097          	auipc	ra,0xffffc
    5488:	2a0080e7          	jalr	672(ra) # 1724 <fl_init>
    548c:	000067b7          	lui	a5,0x6
    5490:	ff87a783          	lw	a5,-8(a5) # 5ff8 <_filelib_valid>
    5494:	30078263          	beqz	a5,5798 <fl_fopen+0x358>
    5498:	300a0063          	beqz	s4,5798 <fl_fopen+0x358>
    549c:	10040463          	beqz	s0,55a4 <fl_fopen+0x164>
    54a0:	00040513          	mv	a0,s0
    54a4:	ffffb097          	auipc	ra,0xffffb
    54a8:	2fc080e7          	jalr	764(ra) # 7a0 <strlen>
    54ac:	00000493          	li	s1,0
    54b0:	00000713          	li	a4,0
    54b4:	05700693          	li	a3,87
    54b8:	07200613          	li	a2,114
    54bc:	07700813          	li	a6,119
    54c0:	06100893          	li	a7,97
    54c4:	06200313          	li	t1,98
    54c8:	04100593          	li	a1,65
    54cc:	04200e13          	li	t3,66
    54d0:	05200e93          	li	t4,82
    54d4:	02b00f13          	li	t5,43
    54d8:	10a74263          	blt	a4,a0,55dc <fl_fopen+0x19c>
    54dc:	0000a937          	lui	s2,0xa
    54e0:	24090793          	addi	a5,s2,576 # a240 <_fs>
    54e4:	0387a783          	lw	a5,56(a5)
    54e8:	24090b13          	addi	s6,s2,576
    54ec:	00079463          	bnez	a5,54f4 <fl_fopen+0xb4>
    54f0:	0d94f493          	andi	s1,s1,217
    54f4:	03cb2783          	lw	a5,60(s6)
    54f8:	00078463          	beqz	a5,5500 <fl_fopen+0xc0>
    54fc:	000780e7          	jalr	a5
    5500:	0014fc13          	andi	s8,s1,1
    5504:	160c1463          	bnez	s8,566c <fl_fopen+0x22c>
    5508:	0204f793          	andi	a5,s1,32
    550c:	08078463          	beqz	a5,5594 <fl_fopen+0x154>
    5510:	038b2783          	lw	a5,56(s6)
    5514:	06078a63          	beqz	a5,5588 <fl_fopen+0x148>
    5518:	ffffc097          	auipc	ra,0xffffc
    551c:	e94080e7          	jalr	-364(ra) # 13ac <_allocate_file>
    5520:	00050413          	mv	s0,a0
    5524:	06050263          	beqz	a0,5588 <fl_fopen+0x148>
    5528:	01450b93          	addi	s7,a0,20
    552c:	10400613          	li	a2,260
    5530:	00000593          	li	a1,0
    5534:	000b8513          	mv	a0,s7
    5538:	ffffb097          	auipc	ra,0xffffb
    553c:	228080e7          	jalr	552(ra) # 760 <memset>
    5540:	11840a93          	addi	s5,s0,280
    5544:	10400613          	li	a2,260
    5548:	00000593          	li	a1,0
    554c:	000a8513          	mv	a0,s5
    5550:	ffffb097          	auipc	ra,0xffffb
    5554:	210080e7          	jalr	528(ra) # 760 <memset>
    5558:	10400713          	li	a4,260
    555c:	000a8693          	mv	a3,s5
    5560:	10400613          	li	a2,260
    5564:	000b8593          	mv	a1,s7
    5568:	000a0513          	mv	a0,s4
    556c:	ffffd097          	auipc	ra,0xffffd
    5570:	d04080e7          	jalr	-764(ra) # 2270 <fatfs_split_path>
    5574:	fff00793          	li	a5,-1
    5578:	10f51863          	bne	a0,a5,5688 <fl_fopen+0x248>
    557c:	00040513          	mv	a0,s0
    5580:	ffffc097          	auipc	ra,0xffffc
    5584:	ea0080e7          	jalr	-352(ra) # 1420 <_free_file>
    5588:	000c1663          	bnez	s8,5594 <fl_fopen+0x154>
    558c:	0064f793          	andi	a5,s1,6
    5590:	1e079a63          	bnez	a5,5784 <fl_fopen+0x344>
    5594:	00000413          	li	s0,0
    5598:	040b2783          	lw	a5,64(s6)
    559c:	00078463          	beqz	a5,55a4 <fl_fopen+0x164>
    55a0:	000780e7          	jalr	a5
    55a4:	05c12083          	lw	ra,92(sp)
    55a8:	00040513          	mv	a0,s0
    55ac:	05812403          	lw	s0,88(sp)
    55b0:	05412483          	lw	s1,84(sp)
    55b4:	05012903          	lw	s2,80(sp)
    55b8:	04c12983          	lw	s3,76(sp)
    55bc:	04812a03          	lw	s4,72(sp)
    55c0:	04412a83          	lw	s5,68(sp)
    55c4:	04012b03          	lw	s6,64(sp)
    55c8:	03c12b83          	lw	s7,60(sp)
    55cc:	03812c03          	lw	s8,56(sp)
    55d0:	03412c83          	lw	s9,52(sp)
    55d4:	06010113          	addi	sp,sp,96
    55d8:	00008067          	ret
    55dc:	00e407b3          	add	a5,s0,a4
    55e0:	0007c783          	lbu	a5,0(a5)
    55e4:	04d78463          	beq	a5,a3,562c <fl_fopen+0x1ec>
    55e8:	02f6e463          	bltu	a3,a5,5610 <fl_fopen+0x1d0>
    55ec:	04b78463          	beq	a5,a1,5634 <fl_fopen+0x1f4>
    55f0:	00f5e863          	bltu	a1,a5,5600 <fl_fopen+0x1c0>
    55f4:	05e78463          	beq	a5,t5,563c <fl_fopen+0x1fc>
    55f8:	00170713          	addi	a4,a4,1
    55fc:	eddff06f          	j	54d8 <fl_fopen+0x98>
    5600:	03c78063          	beq	a5,t3,5620 <fl_fopen+0x1e0>
    5604:	ffd79ae3          	bne	a5,t4,55f8 <fl_fopen+0x1b8>
    5608:	0014e493          	ori	s1,s1,1
    560c:	fedff06f          	j	55f8 <fl_fopen+0x1b8>
    5610:	fec78ce3          	beq	a5,a2,5608 <fl_fopen+0x1c8>
    5614:	00f66a63          	bltu	a2,a5,5628 <fl_fopen+0x1e8>
    5618:	01178e63          	beq	a5,a7,5634 <fl_fopen+0x1f4>
    561c:	fc679ee3          	bne	a5,t1,55f8 <fl_fopen+0x1b8>
    5620:	0084e493          	ori	s1,s1,8
    5624:	fd5ff06f          	j	55f8 <fl_fopen+0x1b8>
    5628:	fd0798e3          	bne	a5,a6,55f8 <fl_fopen+0x1b8>
    562c:	0324e493          	ori	s1,s1,50
    5630:	fc9ff06f          	j	55f8 <fl_fopen+0x1b8>
    5634:	0264e493          	ori	s1,s1,38
    5638:	fc1ff06f          	j	55f8 <fl_fopen+0x1b8>
    563c:	0014f793          	andi	a5,s1,1
    5640:	00078663          	beqz	a5,564c <fl_fopen+0x20c>
    5644:	0024e493          	ori	s1,s1,2
    5648:	fb1ff06f          	j	55f8 <fl_fopen+0x1b8>
    564c:	0024f793          	andi	a5,s1,2
    5650:	00078663          	beqz	a5,565c <fl_fopen+0x21c>
    5654:	0314e493          	ori	s1,s1,49
    5658:	fa1ff06f          	j	55f8 <fl_fopen+0x1b8>
    565c:	0044f793          	andi	a5,s1,4
    5660:	f8078ce3          	beqz	a5,55f8 <fl_fopen+0x1b8>
    5664:	0274e493          	ori	s1,s1,39
    5668:	f91ff06f          	j	55f8 <fl_fopen+0x1b8>
    566c:	000a0513          	mv	a0,s4
    5670:	ffffe097          	auipc	ra,0xffffe
    5674:	160080e7          	jalr	352(ra) # 37d0 <_open_file>
    5678:	00050413          	mv	s0,a0
    567c:	e80506e3          	beqz	a0,5508 <fl_fopen+0xc8>
    5680:	42940c23          	sb	s1,1080(s0)
    5684:	f15ff06f          	j	5598 <fl_fopen+0x158>
    5688:	00040513          	mv	a0,s0
    568c:	ffffd097          	auipc	ra,0xffffd
    5690:	e34080e7          	jalr	-460(ra) # 24c0 <_check_file_open>
    5694:	00050993          	mv	s3,a0
    5698:	ee0512e3          	bnez	a0,557c <fl_fopen+0x13c>
    569c:	01444783          	lbu	a5,20(s0)
    56a0:	0a079a63          	bnez	a5,5754 <fl_fopen+0x314>
    56a4:	008b2783          	lw	a5,8(s6)
    56a8:	00f42023          	sw	a5,0(s0)
    56ac:	00042583          	lw	a1,0(s0)
    56b0:	01010693          	addi	a3,sp,16
    56b4:	000a8613          	mv	a2,s5
    56b8:	24090513          	addi	a0,s2,576
    56bc:	ffffe097          	auipc	ra,0xffffe
    56c0:	d34080e7          	jalr	-716(ra) # 33f0 <fatfs_get_file_entry>
    56c4:	00100793          	li	a5,1
    56c8:	eaf50ae3          	beq	a0,a5,557c <fl_fopen+0x13c>
    56cc:	00042223          	sw	zero,4(s0)
    56d0:	00100693          	li	a3,1
    56d4:	00440613          	addi	a2,s0,4
    56d8:	00100593          	li	a1,1
    56dc:	24090513          	addi	a0,s2,576
    56e0:	00000097          	auipc	ra,0x0
    56e4:	910080e7          	jalr	-1776(ra) # 4ff0 <fatfs_allocate_free_space.part.0>
    56e8:	e8050ae3          	beqz	a0,557c <fl_fopen+0x13c>
    56ec:	00002cb7          	lui	s9,0x2
    56f0:	21c40b93          	addi	s7,s0,540
    56f4:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_create_path_string+0x87>
    56f8:	000a8593          	mv	a1,s5
    56fc:	00410513          	addi	a0,sp,4
    5700:	ffffc097          	auipc	ra,0xffffc
    5704:	720080e7          	jalr	1824(ra) # 1e20 <fatfs_lfn_create_sfn>
    5708:	06098263          	beqz	s3,576c <fl_fopen+0x32c>
    570c:	00098613          	mv	a2,s3
    5710:	00410593          	addi	a1,sp,4
    5714:	000b8513          	mv	a0,s7
    5718:	ffffd097          	auipc	ra,0xffffd
    571c:	880080e7          	jalr	-1920(ra) # 1f98 <fatfs_lfn_generate_tail>
    5720:	00042583          	lw	a1,0(s0)
    5724:	000b8613          	mv	a2,s7
    5728:	24090513          	addi	a0,s2,576
    572c:	ffffe097          	auipc	ra,0xffffe
    5730:	21c080e7          	jalr	540(ra) # 3948 <fatfs_sfn_exists>
    5734:	06050663          	beqz	a0,57a0 <fl_fopen+0x360>
    5738:	00198993          	addi	s3,s3,1
    573c:	fb999ee3          	bne	s3,s9,56f8 <fl_fopen+0x2b8>
    5740:	00442583          	lw	a1,4(s0)
    5744:	24090513          	addi	a0,s2,576
    5748:	fffff097          	auipc	ra,0xfffff
    574c:	d84080e7          	jalr	-636(ra) # 44cc <fatfs_free_cluster_chain>
    5750:	e2dff06f          	j	557c <fl_fopen+0x13c>
    5754:	00040593          	mv	a1,s0
    5758:	000b8513          	mv	a0,s7
    575c:	ffffe097          	auipc	ra,0xffffe
    5760:	e9c080e7          	jalr	-356(ra) # 35f8 <_open_directory>
    5764:	f40514e3          	bnez	a0,56ac <fl_fopen+0x26c>
    5768:	e15ff06f          	j	557c <fl_fopen+0x13c>
    576c:	00b00613          	li	a2,11
    5770:	00410593          	addi	a1,sp,4
    5774:	000b8513          	mv	a0,s7
    5778:	ffffb097          	auipc	ra,0xffffb
    577c:	004080e7          	jalr	4(ra) # 77c <memcpy>
    5780:	fa1ff06f          	j	5720 <fl_fopen+0x2e0>
    5784:	000a0513          	mv	a0,s4
    5788:	ffffe097          	auipc	ra,0xffffe
    578c:	048080e7          	jalr	72(ra) # 37d0 <_open_file>
    5790:	00050413          	mv	s0,a0
    5794:	0640006f          	j	57f8 <fl_fopen+0x3b8>
    5798:	00000413          	li	s0,0
    579c:	e09ff06f          	j	55a4 <fl_fopen+0x164>
    57a0:	00442703          	lw	a4,4(s0)
    57a4:	00042583          	lw	a1,0(s0)
    57a8:	00000813          	li	a6,0
    57ac:	00000793          	li	a5,0
    57b0:	000b8693          	mv	a3,s7
    57b4:	000a8613          	mv	a2,s5
    57b8:	24090513          	addi	a0,s2,576
    57bc:	00000097          	auipc	ra,0x0
    57c0:	950080e7          	jalr	-1712(ra) # 510c <fatfs_add_file_entry>
    57c4:	f6050ee3          	beqz	a0,5740 <fl_fopen+0x300>
    57c8:	fff00793          	li	a5,-1
    57cc:	00042623          	sw	zero,12(s0)
    57d0:	00042423          	sw	zero,8(s0)
    57d4:	42f42823          	sw	a5,1072(s0)
    57d8:	42042a23          	sw	zero,1076(s0)
    57dc:	00042823          	sw	zero,16(s0)
    57e0:	22f42423          	sw	a5,552(s0)
    57e4:	22f42623          	sw	a5,556(s0)
    57e8:	24090513          	addi	a0,s2,576
    57ec:	ffffe097          	auipc	ra,0xffffe
    57f0:	8e0080e7          	jalr	-1824(ra) # 30cc <fatfs_fat_purge>
    57f4:	e80c06e3          	beqz	s8,5680 <fl_fopen+0x240>
    57f8:	e80414e3          	bnez	s0,5680 <fl_fopen+0x240>
    57fc:	d99ff06f          	j	5594 <fl_fopen+0x154>

00005800 <fl_remove>:
    5800:	fe010113          	addi	sp,sp,-32
    5804:	00912a23          	sw	s1,20(sp)
    5808:	0000a4b7          	lui	s1,0xa
    580c:	24048793          	addi	a5,s1,576 # a240 <_fs>
    5810:	03c7a783          	lw	a5,60(a5)
    5814:	01212823          	sw	s2,16(sp)
    5818:	00112e23          	sw	ra,28(sp)
    581c:	00812c23          	sw	s0,24(sp)
    5820:	24048913          	addi	s2,s1,576
    5824:	00078863          	beqz	a5,5834 <fl_remove+0x34>
    5828:	00a12623          	sw	a0,12(sp)
    582c:	000780e7          	jalr	a5
    5830:	00c12503          	lw	a0,12(sp)
    5834:	000065b7          	lui	a1,0x6
    5838:	f6058593          	addi	a1,a1,-160 # 5f60 <font+0x384>
    583c:	00000097          	auipc	ra,0x0
    5840:	c04080e7          	jalr	-1020(ra) # 5440 <fl_fopen>
    5844:	00050413          	mv	s0,a0
    5848:	02051a63          	bnez	a0,587c <fl_remove+0x7c>
    584c:	fff00513          	li	a0,-1
    5850:	04092783          	lw	a5,64(s2)
    5854:	00078863          	beqz	a5,5864 <fl_remove+0x64>
    5858:	00a12623          	sw	a0,12(sp)
    585c:	000780e7          	jalr	a5
    5860:	00c12503          	lw	a0,12(sp)
    5864:	01c12083          	lw	ra,28(sp)
    5868:	01812403          	lw	s0,24(sp)
    586c:	01412483          	lw	s1,20(sp)
    5870:	01012903          	lw	s2,16(sp)
    5874:	02010113          	addi	sp,sp,32
    5878:	00008067          	ret
    587c:	00452583          	lw	a1,4(a0)
    5880:	24048513          	addi	a0,s1,576
    5884:	fffff097          	auipc	ra,0xfffff
    5888:	c48080e7          	jalr	-952(ra) # 44cc <fatfs_free_cluster_chain>
    588c:	fc0500e3          	beqz	a0,584c <fl_remove+0x4c>
    5890:	00042583          	lw	a1,0(s0)
    5894:	21c40613          	addi	a2,s0,540
    5898:	24048513          	addi	a0,s1,576
    589c:	ffffe097          	auipc	ra,0xffffe
    58a0:	2e8080e7          	jalr	744(ra) # 3b84 <fatfs_mark_file_deleted>
    58a4:	fa0504e3          	beqz	a0,584c <fl_remove+0x4c>
    58a8:	00040513          	mv	a0,s0
    58ac:	fffff097          	auipc	ra,0xfffff
    58b0:	114080e7          	jalr	276(ra) # 49c0 <fl_fclose>
    58b4:	00000513          	li	a0,0
    58b8:	f99ff06f          	j	5850 <fl_remove+0x50>

000058bc <fl_createdirectory>:
    58bc:	000067b7          	lui	a5,0x6
    58c0:	ffc7a783          	lw	a5,-4(a5) # 5ffc <_filelib_init>
    58c4:	fa010113          	addi	sp,sp,-96
    58c8:	05512223          	sw	s5,68(sp)
    58cc:	04112e23          	sw	ra,92(sp)
    58d0:	04812c23          	sw	s0,88(sp)
    58d4:	04912a23          	sw	s1,84(sp)
    58d8:	05212823          	sw	s2,80(sp)
    58dc:	05312623          	sw	s3,76(sp)
    58e0:	05412423          	sw	s4,72(sp)
    58e4:	05612023          	sw	s6,64(sp)
    58e8:	03712e23          	sw	s7,60(sp)
    58ec:	00050a93          	mv	s5,a0
    58f0:	00079663          	bnez	a5,58fc <fl_createdirectory+0x40>
    58f4:	ffffc097          	auipc	ra,0xffffc
    58f8:	e30080e7          	jalr	-464(ra) # 1724 <fl_init>
    58fc:	0000a937          	lui	s2,0xa
    5900:	24090793          	addi	a5,s2,576 # a240 <_fs>
    5904:	03c7a783          	lw	a5,60(a5)
    5908:	24090b13          	addi	s6,s2,576
    590c:	00078463          	beqz	a5,5914 <fl_createdirectory+0x58>
    5910:	000780e7          	jalr	a5
    5914:	ffffc097          	auipc	ra,0xffffc
    5918:	a98080e7          	jalr	-1384(ra) # 13ac <_allocate_file>
    591c:	00050413          	mv	s0,a0
    5920:	00000493          	li	s1,0
    5924:	08050663          	beqz	a0,59b0 <fl_createdirectory+0xf4>
    5928:	01450a13          	addi	s4,a0,20
    592c:	10400613          	li	a2,260
    5930:	00000593          	li	a1,0
    5934:	000a0513          	mv	a0,s4
    5938:	ffffb097          	auipc	ra,0xffffb
    593c:	e28080e7          	jalr	-472(ra) # 760 <memset>
    5940:	11840993          	addi	s3,s0,280
    5944:	10400613          	li	a2,260
    5948:	00000593          	li	a1,0
    594c:	00098513          	mv	a0,s3
    5950:	ffffb097          	auipc	ra,0xffffb
    5954:	e10080e7          	jalr	-496(ra) # 760 <memset>
    5958:	10400713          	li	a4,260
    595c:	00098693          	mv	a3,s3
    5960:	10400613          	li	a2,260
    5964:	000a0593          	mv	a1,s4
    5968:	000a8513          	mv	a0,s5
    596c:	ffffd097          	auipc	ra,0xffffd
    5970:	904080e7          	jalr	-1788(ra) # 2270 <fatfs_split_path>
    5974:	fff00793          	li	a5,-1
    5978:	00f51a63          	bne	a0,a5,598c <fl_createdirectory+0xd0>
    597c:	00040513          	mv	a0,s0
    5980:	ffffc097          	auipc	ra,0xffffc
    5984:	aa0080e7          	jalr	-1376(ra) # 1420 <_free_file>
    5988:	0280006f          	j	59b0 <fl_createdirectory+0xf4>
    598c:	00040513          	mv	a0,s0
    5990:	ffffd097          	auipc	ra,0xffffd
    5994:	b30080e7          	jalr	-1232(ra) # 24c0 <_check_file_open>
    5998:	00050493          	mv	s1,a0
    599c:	04050863          	beqz	a0,59ec <fl_createdirectory+0x130>
    59a0:	00040513          	mv	a0,s0
    59a4:	ffffc097          	auipc	ra,0xffffc
    59a8:	a7c080e7          	jalr	-1412(ra) # 1420 <_free_file>
    59ac:	00000493          	li	s1,0
    59b0:	040b2783          	lw	a5,64(s6)
    59b4:	00078463          	beqz	a5,59bc <fl_createdirectory+0x100>
    59b8:	000780e7          	jalr	a5
    59bc:	05c12083          	lw	ra,92(sp)
    59c0:	05812403          	lw	s0,88(sp)
    59c4:	05012903          	lw	s2,80(sp)
    59c8:	04c12983          	lw	s3,76(sp)
    59cc:	04812a03          	lw	s4,72(sp)
    59d0:	04412a83          	lw	s5,68(sp)
    59d4:	04012b03          	lw	s6,64(sp)
    59d8:	03c12b83          	lw	s7,60(sp)
    59dc:	00048513          	mv	a0,s1
    59e0:	05412483          	lw	s1,84(sp)
    59e4:	06010113          	addi	sp,sp,96
    59e8:	00008067          	ret
    59ec:	01444783          	lbu	a5,20(s0)
    59f0:	0c079e63          	bnez	a5,5acc <fl_createdirectory+0x210>
    59f4:	008b2783          	lw	a5,8(s6)
    59f8:	00f42023          	sw	a5,0(s0)
    59fc:	00042583          	lw	a1,0(s0)
    5a00:	01010693          	addi	a3,sp,16
    5a04:	00098613          	mv	a2,s3
    5a08:	24090513          	addi	a0,s2,576
    5a0c:	ffffe097          	auipc	ra,0xffffe
    5a10:	9e4080e7          	jalr	-1564(ra) # 33f0 <fatfs_get_file_entry>
    5a14:	00100793          	li	a5,1
    5a18:	f6f502e3          	beq	a0,a5,597c <fl_createdirectory+0xc0>
    5a1c:	00042223          	sw	zero,4(s0)
    5a20:	00100693          	li	a3,1
    5a24:	00440613          	addi	a2,s0,4
    5a28:	00100593          	li	a1,1
    5a2c:	24090513          	addi	a0,s2,576
    5a30:	fffff097          	auipc	ra,0xfffff
    5a34:	5c0080e7          	jalr	1472(ra) # 4ff0 <fatfs_allocate_free_space.part.0>
    5a38:	f60504e3          	beqz	a0,59a0 <fl_createdirectory+0xe4>
    5a3c:	23040a93          	addi	s5,s0,560
    5a40:	20000613          	li	a2,512
    5a44:	00000593          	li	a1,0
    5a48:	000a8513          	mv	a0,s5
    5a4c:	ffffb097          	auipc	ra,0xffffb
    5a50:	d14080e7          	jalr	-748(ra) # 760 <memset>
    5a54:	00000a13          	li	s4,0
    5a58:	000b4783          	lbu	a5,0(s6)
    5a5c:	08fa4463          	blt	s4,a5,5ae4 <fl_createdirectory+0x228>
    5a60:	00002bb7          	lui	s7,0x2
    5a64:	00000a13          	li	s4,0
    5a68:	21c40a93          	addi	s5,s0,540
    5a6c:	70fb8b93          	addi	s7,s7,1807 # 270f <fatfs_create_path_string+0x87>
    5a70:	00098593          	mv	a1,s3
    5a74:	00410513          	addi	a0,sp,4
    5a78:	ffffc097          	auipc	ra,0xffffc
    5a7c:	3a8080e7          	jalr	936(ra) # 1e20 <fatfs_lfn_create_sfn>
    5a80:	080a0463          	beqz	s4,5b08 <fl_createdirectory+0x24c>
    5a84:	000a0613          	mv	a2,s4
    5a88:	00410593          	addi	a1,sp,4
    5a8c:	000a8513          	mv	a0,s5
    5a90:	ffffc097          	auipc	ra,0xffffc
    5a94:	508080e7          	jalr	1288(ra) # 1f98 <fatfs_lfn_generate_tail>
    5a98:	00042583          	lw	a1,0(s0)
    5a9c:	000a8613          	mv	a2,s5
    5aa0:	24090513          	addi	a0,s2,576
    5aa4:	ffffe097          	auipc	ra,0xffffe
    5aa8:	ea4080e7          	jalr	-348(ra) # 3948 <fatfs_sfn_exists>
    5aac:	06050a63          	beqz	a0,5b20 <fl_createdirectory+0x264>
    5ab0:	001a0a13          	addi	s4,s4,1
    5ab4:	fb7a1ee3          	bne	s4,s7,5a70 <fl_createdirectory+0x1b4>
    5ab8:	00442583          	lw	a1,4(s0)
    5abc:	24090513          	addi	a0,s2,576
    5ac0:	fffff097          	auipc	ra,0xfffff
    5ac4:	a0c080e7          	jalr	-1524(ra) # 44cc <fatfs_free_cluster_chain>
    5ac8:	eb5ff06f          	j	597c <fl_createdirectory+0xc0>
    5acc:	00040593          	mv	a1,s0
    5ad0:	000a0513          	mv	a0,s4
    5ad4:	ffffe097          	auipc	ra,0xffffe
    5ad8:	b24080e7          	jalr	-1244(ra) # 35f8 <_open_directory>
    5adc:	f20510e3          	bnez	a0,59fc <fl_createdirectory+0x140>
    5ae0:	e9dff06f          	j	597c <fl_createdirectory+0xc0>
    5ae4:	00442583          	lw	a1,4(s0)
    5ae8:	000a8693          	mv	a3,s5
    5aec:	000a0613          	mv	a2,s4
    5af0:	24090513          	addi	a0,s2,576
    5af4:	ffffc097          	auipc	ra,0xffffc
    5af8:	a98080e7          	jalr	-1384(ra) # 158c <fatfs_write_sector>
    5afc:	ea0502e3          	beqz	a0,59a0 <fl_createdirectory+0xe4>
    5b00:	001a0a13          	addi	s4,s4,1
    5b04:	f55ff06f          	j	5a58 <fl_createdirectory+0x19c>
    5b08:	00b00613          	li	a2,11
    5b0c:	00410593          	addi	a1,sp,4
    5b10:	000a8513          	mv	a0,s5
    5b14:	ffffb097          	auipc	ra,0xffffb
    5b18:	c68080e7          	jalr	-920(ra) # 77c <memcpy>
    5b1c:	f7dff06f          	j	5a98 <fl_createdirectory+0x1dc>
    5b20:	00442703          	lw	a4,4(s0)
    5b24:	00042583          	lw	a1,0(s0)
    5b28:	00100813          	li	a6,1
    5b2c:	00000793          	li	a5,0
    5b30:	000a8693          	mv	a3,s5
    5b34:	00098613          	mv	a2,s3
    5b38:	24090513          	addi	a0,s2,576
    5b3c:	fffff097          	auipc	ra,0xfffff
    5b40:	5d0080e7          	jalr	1488(ra) # 510c <fatfs_add_file_entry>
    5b44:	00050493          	mv	s1,a0
    5b48:	f60508e3          	beqz	a0,5ab8 <fl_createdirectory+0x1fc>
    5b4c:	fff00793          	li	a5,-1
    5b50:	42f42823          	sw	a5,1072(s0)
    5b54:	22f42423          	sw	a5,552(s0)
    5b58:	22f42623          	sw	a5,556(s0)
    5b5c:	00042623          	sw	zero,12(s0)
    5b60:	00042423          	sw	zero,8(s0)
    5b64:	42042a23          	sw	zero,1076(s0)
    5b68:	00042823          	sw	zero,16(s0)
    5b6c:	24090513          	addi	a0,s2,576
    5b70:	ffffd097          	auipc	ra,0xffffd
    5b74:	55c080e7          	jalr	1372(ra) # 30cc <fatfs_fat_purge>
    5b78:	00040513          	mv	a0,s0
    5b7c:	ffffc097          	auipc	ra,0xffffc
    5b80:	8a4080e7          	jalr	-1884(ra) # 1420 <_free_file>
    5b84:	00100493          	li	s1,1
    5b88:	e29ff06f          	j	59b0 <fl_createdirectory+0xf4>

00005b8c <cmd17>:
    5b8c:	00000051 00005500                       Q....U..

00005b94 <cmd16>:
    5b94:	02000050 00001500                       P.......

00005b9c <acmd41>:
    5b9c:	00004069 00000100                       i@......

00005ba4 <cmd55>:
    5ba4:	00000077 00000100                       w.......

00005bac <cmd8>:
    5bac:	01000048 000087aa                       H.......

00005bb4 <cmd0>:
    5bb4:	00000040 00009500                       @.......

00005bbc <AUDIO>:
    5bbc:	00018000                                ....

00005bc0 <DISPLAY>:
    5bc0:	00014000                                .@..

00005bc4 <BUTTONS>:
    5bc4:	00010100                                ....

00005bc8 <SDCARD>:
    5bc8:	00010080                                ....

00005bcc <UART>:
    5bcc:	00010020                                 ...

00005bd0 <OLED_RST>:
    5bd0:	00010010                                ....

00005bd4 <OLED>:
    5bd4:	00010008                                ....

00005bd8 <LEDS>:
    5bd8:	00010004                                ....

00005bdc <font>:
    5bdc:	00000000 00002f00 00030000 14000003     ...../..........
    5bec:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5bfc:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5c0c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5c1c:	00080800 00200000 20000000 02040810     ...... .... ....
    5c2c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5c3c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5c4c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5c5c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5c6c:	00141400 0a110000 01000004 0007052d     ............-...
    5c7c:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5c8c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5c9c:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5cac:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5cbc:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5ccc:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5cdc:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5cec:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5cfc:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5d0c:	003f2102 01020000 20000201 00000020     .!?........  ...
    5d1c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5d2c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5d3c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5d4c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5d5c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5d6c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5d7c:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5d8c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5d9c:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5dac:	043f2100 02010000 00000102 00000000     .!?.............
    5dbc:	00000001 00000003 00000005 00000007     ................
    5dcc:	00000009 0000000e 00000010 00000012     ................
    5ddc:	00000014 00000016 00000018 0000001c     ................
    5dec:	0000001e 74696e69 2e2e2e20 00000020     ....init ... ...
    5dfc:	656e6f64 00000a2e 00006272 73756d2f     done....rb../mus
    5e0c:	722e6369 00007761 656c6966 746f6e20     ic.raw..file not
    5e1c:	756f6620 0a2e646e 00000000 6973756d      found......musi
    5e2c:	69662063 6620656c 646e756f 00000a2e     c file found....
    5e3c:	79616c70 20676e69 202e2e2e 00000000     playing ... ....
    5e4c:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5e5c:	00000000 33544146 00000032 31544146     ....FAT32...FAT1
    5e6c:	00000036 20544146 61746564 3a736c69     6...FAT details:
    5e7c:	00000a0d 70795420 253d2065 00000073     .... Type =%s...
    5e8c:	6f6f5220 69442074 69462072 20747372      Root Dir First 
    5e9c:	73756c43 20726574 7825203d 00000a0d     Cluster = %x....
    5eac:	54414620 67654220 4c206e69 3d204142      FAT Begin LBA =
    5ebc:	25783020 000a0d78 756c4320 72657473      0x%x... Cluster
    5ecc:	67654220 4c206e69 3d204142 25783020      Begin LBA = 0x%
    5edc:	000a0d78 63655320 73726f74 72655020     x... Sectors Per
    5eec:	756c4320 72657473 25203d20 000a0d64      Cluster = %d...
    5efc:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    5f0c:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    5f1c:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    5f2c:	00000000 69440a0d 74636572 2079726f     ......Directory 
    5f3c:	0a0d7325 00000000 3c207325 3e524944     %s......%s <DIR>
    5f4c:	00000a0d 5b207325 62206425 73657479     ....%s [%d bytes
    5f5c:	000a0d5d 00000072                       ]...r...

00005f64 <_cluster_size_table16>:
    5f64:	00007fa8 00000002 00040000 00000004     ................
    5f74:	00080000 00000008 00100000 00000010     ................
    5f84:	00200000 00000020 00400000 00000040     .. . .....@.@...
    5f94:	00800000 00000080 00000000 00000000     ................

00005fa4 <_cluster_size_table32>:
    5fa4:	00082000 00000001 01000000 00000008     . ..............
    5fb4:	02000000 00000010 04000000 00000020     ............ ...
    5fc4:	ffffffff 00000040 00000000 00000000     ....@...........

00005fd4 <sdcard_while_loading_callback>:
    5fd4:	00000000                                ....

00005fd8 <back_color>:
	...

00005fd9 <front_color>:
    5fd9:	                                         ...

00005fdc <cursor_y>:
    5fdc:	00000000                                ....

00005fe0 <cursor_x>:
    5fe0:	00000000                                ....

00005fe4 <f_putchar>:
    5fe4:	00000000                                ....

00005fe8 <_free_file_list>:
	...

00005ff0 <_open_file_list>:
	...

00005ff8 <_filelib_valid>:
    5ff8:	00000000                                ....

00005ffc <_filelib_init>:
    5ffc:	00000000                                ....

Déassemblage de la section .text.startup :

00006000 <main>:
    6000:	000017b7          	lui	a5,0x1
    6004:	fd010113          	addi	sp,sp,-48
    6008:	00006737          	lui	a4,0x6
    600c:	b0478793          	addi	a5,a5,-1276 # b04 <display_putchar>
    6010:	02112623          	sw	ra,44(sp)
    6014:	fef72223          	sw	a5,-28(a4) # 5fe4 <f_putchar>
    6018:	02812423          	sw	s0,40(sp)
    601c:	03212023          	sw	s2,32(sp)
    6020:	02912223          	sw	s1,36(sp)
    6024:	01312e23          	sw	s3,28(sp)
    6028:	01412c23          	sw	s4,24(sp)
    602c:	01512a23          	sw	s5,20(sp)
    6030:	01612823          	sw	s6,16(sp)
    6034:	01712623          	sw	s7,12(sp)
    6038:	ffffb097          	auipc	ra,0xffffb
    603c:	958080e7          	jalr	-1704(ra) # 990 <oled_init>
    6040:	ffffb097          	auipc	ra,0xffffb
    6044:	95c080e7          	jalr	-1700(ra) # 99c <oled_fullscreen>
    6048:	ffffb097          	auipc	ra,0xffffb
    604c:	a88080e7          	jalr	-1400(ra) # ad0 <display_framebuffer>
    6050:	00004637          	lui	a2,0x4
    6054:	00000593          	li	a1,0
    6058:	ffffa097          	auipc	ra,0xffffa
    605c:	708080e7          	jalr	1800(ra) # 760 <memset>
    6060:	ffffb097          	auipc	ra,0xffffb
    6064:	bc8080e7          	jalr	-1080(ra) # c28 <display_refresh>
    6068:	00000593          	li	a1,0
    606c:	00000513          	li	a0,0
    6070:	ffffb097          	auipc	ra,0xffffb
    6074:	a6c080e7          	jalr	-1428(ra) # adc <display_set_cursor>
    6078:	00000593          	li	a1,0
    607c:	0ff00513          	li	a0,255
    6080:	ffffb097          	auipc	ra,0xffffb
    6084:	a70080e7          	jalr	-1424(ra) # af0 <display_set_front_back_color>
    6088:	00006537          	lui	a0,0x6
    608c:	df050513          	addi	a0,a0,-528 # 5df0 <font+0x214>
    6090:	ffffb097          	auipc	ra,0xffffb
    6094:	dc4080e7          	jalr	-572(ra) # e54 <printf>
    6098:	ffffb097          	auipc	ra,0xffffb
    609c:	b90080e7          	jalr	-1136(ra) # c28 <display_refresh>
    60a0:	00000937          	lui	s2,0x0
    60a4:	ffffa097          	auipc	ra,0xffffa
    60a8:	42c080e7          	jalr	1068(ra) # 4d0 <sdcard_init>
    60ac:	00000437          	lui	s0,0x0
    60b0:	ffffb097          	auipc	ra,0xffffb
    60b4:	674080e7          	jalr	1652(ra) # 1724 <fl_init>
    60b8:	67c90593          	addi	a1,s2,1660 # 67c <sdcard_writesector>
    60bc:	62440513          	addi	a0,s0,1572 # 624 <sdcard_readsector>
    60c0:	ffffd097          	auipc	ra,0xffffd
    60c4:	a10080e7          	jalr	-1520(ra) # 2ad0 <fl_attach_media>
    60c8:	00050493          	mv	s1,a0
    60cc:	fe0516e3          	bnez	a0,60b8 <main+0xb8>
    60d0:	00006537          	lui	a0,0x6
    60d4:	dfc50513          	addi	a0,a0,-516 # 5dfc <font+0x220>
    60d8:	ffffb097          	auipc	ra,0xffffb
    60dc:	d7c080e7          	jalr	-644(ra) # e54 <printf>
    60e0:	ffffb097          	auipc	ra,0xffffb
    60e4:	b48080e7          	jalr	-1208(ra) # c28 <display_refresh>
    60e8:	000065b7          	lui	a1,0x6
    60ec:	00006537          	lui	a0,0x6
    60f0:	e0458593          	addi	a1,a1,-508 # 5e04 <font+0x228>
    60f4:	e0850513          	addi	a0,a0,-504 # 5e08 <font+0x22c>
    60f8:	fffff097          	auipc	ra,0xfffff
    60fc:	348080e7          	jalr	840(ra) # 5440 <fl_fopen>
    6100:	00050913          	mv	s2,a0
    6104:	04051263          	bnez	a0,6148 <main+0x148>
    6108:	00006537          	lui	a0,0x6
    610c:	e1450513          	addi	a0,a0,-492 # 5e14 <font+0x238>
    6110:	ffffb097          	auipc	ra,0xffffb
    6114:	d44080e7          	jalr	-700(ra) # e54 <printf>
    6118:	02812403          	lw	s0,40(sp)
    611c:	02c12083          	lw	ra,44(sp)
    6120:	02412483          	lw	s1,36(sp)
    6124:	02012903          	lw	s2,32(sp)
    6128:	01c12983          	lw	s3,28(sp)
    612c:	01812a03          	lw	s4,24(sp)
    6130:	01412a83          	lw	s5,20(sp)
    6134:	01012b03          	lw	s6,16(sp)
    6138:	00c12b83          	lw	s7,12(sp)
    613c:	03010113          	addi	sp,sp,48
    6140:	ffffb317          	auipc	t1,0xffffb
    6144:	ae830067          	jr	-1304(t1) # c28 <display_refresh>
    6148:	0ff00593          	li	a1,255
    614c:	00000513          	li	a0,0
    6150:	ffffb097          	auipc	ra,0xffffb
    6154:	9a0080e7          	jalr	-1632(ra) # af0 <display_set_front_back_color>
    6158:	00006537          	lui	a0,0x6
    615c:	e2850513          	addi	a0,a0,-472 # 5e28 <font+0x24c>
    6160:	ffffb097          	auipc	ra,0xffffb
    6164:	cf4080e7          	jalr	-780(ra) # e54 <printf>
    6168:	ffffb097          	auipc	ra,0xffffb
    616c:	ac0080e7          	jalr	-1344(ra) # c28 <display_refresh>
    6170:	00000593          	li	a1,0
    6174:	0ff00513          	li	a0,255
    6178:	ffffb097          	auipc	ra,0xffffb
    617c:	978080e7          	jalr	-1672(ra) # af0 <display_set_front_back_color>
    6180:	00006537          	lui	a0,0x6
    6184:	e3c50513          	addi	a0,a0,-452 # 5e3c <font+0x260>
    6188:	ffffb097          	auipc	ra,0xffffb
    618c:	ccc080e7          	jalr	-820(ra) # e54 <printf>
    6190:	ffffb097          	auipc	ra,0xffffb
    6194:	a98080e7          	jalr	-1384(ra) # c28 <display_refresh>
    6198:	000067b7          	lui	a5,0x6
    619c:	bbc7a983          	lw	s3,-1092(a5) # 5bbc <AUDIO>
    61a0:	000067b7          	lui	a5,0x6
    61a4:	bd87a783          	lw	a5,-1064(a5) # 5bd8 <LEDS>
    61a8:	00100413          	li	s0,1
    61ac:	1ff00a93          	li	s5,511
    61b0:	08000b13          	li	s6,128
    61b4:	00078b93          	mv	s7,a5
    61b8:	0009aa03          	lw	s4,0(s3)
    61bc:	00090693          	mv	a3,s2
    61c0:	20000613          	li	a2,512
    61c4:	00100593          	li	a1,1
    61c8:	000a0513          	mv	a0,s4
    61cc:	fffff097          	auipc	ra,0xfffff
    61d0:	8d4080e7          	jalr	-1836(ra) # 4aa0 <fl_fread>
    61d4:	02aadc63          	bge	s5,a0,620c <main+0x20c>
    61d8:	0009a783          	lw	a5,0(s3)
    61dc:	fefa0ee3          	beq	s4,a5,61d8 <main+0x1d8>
    61e0:	01640663          	beq	s0,s6,61ec <main+0x1ec>
    61e4:	00100793          	li	a5,1
    61e8:	00f41663          	bne	s0,a5,61f4 <main+0x1f4>
    61ec:	00100793          	li	a5,1
    61f0:	409784b3          	sub	s1,a5,s1
    61f4:	00048863          	beqz	s1,6204 <main+0x204>
    61f8:	00141413          	slli	s0,s0,0x1
    61fc:	008ba023          	sw	s0,0(s7)
    6200:	fb9ff06f          	j	61b8 <main+0x1b8>
    6204:	40145413          	srai	s0,s0,0x1
    6208:	ff5ff06f          	j	61fc <main+0x1fc>
    620c:	02812403          	lw	s0,40(sp)
    6210:	02c12083          	lw	ra,44(sp)
    6214:	02412483          	lw	s1,36(sp)
    6218:	01c12983          	lw	s3,28(sp)
    621c:	01812a03          	lw	s4,24(sp)
    6220:	01412a83          	lw	s5,20(sp)
    6224:	01012b03          	lw	s6,16(sp)
    6228:	00c12b83          	lw	s7,12(sp)
    622c:	00090513          	mv	a0,s2
    6230:	02012903          	lw	s2,32(sp)
    6234:	03010113          	addi	sp,sp,48
    6238:	ffffe317          	auipc	t1,0xffffe
    623c:	78830067          	jr	1928(t1) # 49c0 <fl_fclose>
