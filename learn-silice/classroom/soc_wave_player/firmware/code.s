
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00006097          	auipc	ra,0x6
       8:	f6c080e7          	jalr	-148(ra) # 5f70 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <pause>:
      1c:	c0002773          	rdcycle	a4
      20:	c00027f3          	rdcycle	a5
      24:	40e787b3          	sub	a5,a5,a4
      28:	fea7ece3          	bltu	a5,a0,20 <pause+0x4>
      2c:	00008067          	ret

00000030 <sdcard_idle>:
      30:	00008067          	ret

00000034 <sdcard_select>:
      34:	000067b7          	lui	a5,0x6
      38:	b507a783          	lw	a5,-1200(a5) # 5b50 <SDCARD>
      3c:	00200713          	li	a4,2
      40:	00e7a023          	sw	a4,0(a5)
      44:	00008067          	ret

00000048 <sdcard_ponder>:
      48:	000066b7          	lui	a3,0x6
      4c:	b506a603          	lw	a2,-1200(a3) # 5b50 <SDCARD>
      50:	01000793          	li	a5,16
      54:	00000713          	li	a4,0
      58:	00100693          	li	a3,1
      5c:	00676593          	ori	a1,a4,6
      60:	00b62023          	sw	a1,0(a2)
      64:	40e68733          	sub	a4,a3,a4
      68:	00000013          	nop
      6c:	fff78793          	addi	a5,a5,-1
      70:	fe0796e3          	bnez	a5,5c <sdcard_ponder+0x14>
      74:	00008067          	ret

00000078 <sdcard_unselect>:
      78:	000067b7          	lui	a5,0x6
      7c:	b507a783          	lw	a5,-1200(a5) # 5b50 <SDCARD>
      80:	00600713          	li	a4,6
      84:	00e7a023          	sw	a4,0(a5)
      88:	00008067          	ret

0000008c <sdcard_send>:
      8c:	000067b7          	lui	a5,0x6
      90:	b507a783          	lw	a5,-1200(a5) # 5b50 <SDCARD>
      94:	00655713          	srli	a4,a0,0x6
      98:	00277713          	andi	a4,a4,2
      9c:	00e7a023          	sw	a4,0(a5)
      a0:	00176713          	ori	a4,a4,1
      a4:	00e7a023          	sw	a4,0(a5)
      a8:	00555713          	srli	a4,a0,0x5
      ac:	00277713          	andi	a4,a4,2
      b0:	00e7a023          	sw	a4,0(a5)
      b4:	00176713          	ori	a4,a4,1
      b8:	00e7a023          	sw	a4,0(a5)
      bc:	00455713          	srli	a4,a0,0x4
      c0:	00277713          	andi	a4,a4,2
      c4:	00e7a023          	sw	a4,0(a5)
      c8:	00176713          	ori	a4,a4,1
      cc:	00e7a023          	sw	a4,0(a5)
      d0:	00355713          	srli	a4,a0,0x3
      d4:	00277713          	andi	a4,a4,2
      d8:	00e7a023          	sw	a4,0(a5)
      dc:	00176713          	ori	a4,a4,1
      e0:	00e7a023          	sw	a4,0(a5)
      e4:	00255713          	srli	a4,a0,0x2
      e8:	00277713          	andi	a4,a4,2
      ec:	00e7a023          	sw	a4,0(a5)
      f0:	00176713          	ori	a4,a4,1
      f4:	00e7a023          	sw	a4,0(a5)
      f8:	00155713          	srli	a4,a0,0x1
      fc:	00277713          	andi	a4,a4,2
     100:	00e7a023          	sw	a4,0(a5)
     104:	00176713          	ori	a4,a4,1
     108:	00e7a023          	sw	a4,0(a5)
     10c:	00257713          	andi	a4,a0,2
     110:	00e7a023          	sw	a4,0(a5)
     114:	00151513          	slli	a0,a0,0x1
     118:	00176713          	ori	a4,a4,1
     11c:	00e7a023          	sw	a4,0(a5)
     120:	00257513          	andi	a0,a0,2
     124:	00a7a023          	sw	a0,0(a5)
     128:	00156513          	ori	a0,a0,1
     12c:	00a7a023          	sw	a0,0(a5)
     130:	00200713          	li	a4,2
     134:	00e7a023          	sw	a4,0(a5)
     138:	000067b7          	lui	a5,0x6
     13c:	f447a783          	lw	a5,-188(a5) # 5f44 <sdcard_while_loading_callback>
     140:	00078067          	jr	a5

00000144 <sdcard_read>:
     144:	fd010113          	addi	sp,sp,-48 # ffd0 <_files+0x59a4>
     148:	fff50793          	addi	a5,a0,-1
     14c:	01312e23          	sw	s3,28(sp)
     150:	00100993          	li	s3,1
     154:	00f999b3          	sll	s3,s3,a5
     158:	000067b7          	lui	a5,0x6
     15c:	01512a23          	sw	s5,20(sp)
     160:	b507aa83          	lw	s5,-1200(a5) # 5b50 <SDCARD>
     164:	02812423          	sw	s0,40(sp)
     168:	02912223          	sw	s1,36(sp)
     16c:	03212023          	sw	s2,32(sp)
     170:	01412c23          	sw	s4,24(sp)
     174:	01612823          	sw	s6,16(sp)
     178:	01712623          	sw	s7,12(sp)
     17c:	01812423          	sw	s8,8(sp)
     180:	02112623          	sw	ra,44(sp)
     184:	00050493          	mv	s1,a0
     188:	00058a13          	mv	s4,a1
     18c:	0ff00413          	li	s0,255
     190:	00000913          	li	s2,0
     194:	00300b13          	li	s6,3
     198:	00200b93          	li	s7,2
     19c:	00006c37          	lui	s8,0x6
     1a0:	040a0063          	beqz	s4,1e0 <sdcard_read+0x9c>
     1a4:	0089f7b3          	and	a5,s3,s0
     1a8:	02079e63          	bnez	a5,1e4 <sdcard_read+0xa0>
     1ac:	02c12083          	lw	ra,44(sp)
     1b0:	0ff47513          	zext.b	a0,s0
     1b4:	02812403          	lw	s0,40(sp)
     1b8:	02412483          	lw	s1,36(sp)
     1bc:	02012903          	lw	s2,32(sp)
     1c0:	01c12983          	lw	s3,28(sp)
     1c4:	01812a03          	lw	s4,24(sp)
     1c8:	01412a83          	lw	s5,20(sp)
     1cc:	01012b03          	lw	s6,16(sp)
     1d0:	00c12b83          	lw	s7,12(sp)
     1d4:	00812c03          	lw	s8,8(sp)
     1d8:	03010113          	addi	sp,sp,48
     1dc:	00008067          	ret
     1e0:	fc9956e3          	bge	s2,s1,1ac <sdcard_read+0x68>
     1e4:	016aa023          	sw	s6,0(s5)
     1e8:	017aa023          	sw	s7,0(s5)
     1ec:	000aa783          	lw	a5,0(s5)
     1f0:	00141413          	slli	s0,s0,0x1
     1f4:	00190913          	addi	s2,s2,1
     1f8:	00f46433          	or	s0,s0,a5
     1fc:	f44c2783          	lw	a5,-188(s8) # 5f44 <sdcard_while_loading_callback>
     200:	000780e7          	jalr	a5
     204:	f9dff06f          	j	1a0 <sdcard_read+0x5c>

00000208 <sdcard_get>:
     208:	fe010113          	addi	sp,sp,-32
     20c:	00112e23          	sw	ra,28(sp)
     210:	00812c23          	sw	s0,24(sp)
     214:	00912a23          	sw	s1,20(sp)
     218:	00050413          	mv	s0,a0
     21c:	00b12623          	sw	a1,12(sp)
     220:	00000097          	auipc	ra,0x0
     224:	e14080e7          	jalr	-492(ra) # 34 <sdcard_select>
     228:	00c12583          	lw	a1,12(sp)
     22c:	00040513          	mv	a0,s0
     230:	00100493          	li	s1,1
     234:	00000097          	auipc	ra,0x0
     238:	f10080e7          	jalr	-240(ra) # 144 <sdcard_read>
     23c:	00345413          	srli	s0,s0,0x3
     240:	0284c463          	blt	s1,s0,268 <sdcard_get+0x60>
     244:	00a12623          	sw	a0,12(sp)
     248:	00000097          	auipc	ra,0x0
     24c:	e30080e7          	jalr	-464(ra) # 78 <sdcard_unselect>
     250:	01c12083          	lw	ra,28(sp)
     254:	01812403          	lw	s0,24(sp)
     258:	00c12503          	lw	a0,12(sp)
     25c:	01412483          	lw	s1,20(sp)
     260:	02010113          	addi	sp,sp,32
     264:	00008067          	ret
     268:	00000593          	li	a1,0
     26c:	00800513          	li	a0,8
     270:	00000097          	auipc	ra,0x0
     274:	ed4080e7          	jalr	-300(ra) # 144 <sdcard_read>
     278:	00148493          	addi	s1,s1,1
     27c:	fc5ff06f          	j	240 <sdcard_get+0x38>

00000280 <sdcard_cmd>:
     280:	ff010113          	addi	sp,sp,-16
     284:	00812423          	sw	s0,8(sp)
     288:	00912223          	sw	s1,4(sp)
     28c:	01212023          	sw	s2,0(sp)
     290:	00112623          	sw	ra,12(sp)
     294:	00050493          	mv	s1,a0
     298:	00000413          	li	s0,0
     29c:	00000097          	auipc	ra,0x0
     2a0:	d98080e7          	jalr	-616(ra) # 34 <sdcard_select>
     2a4:	00600913          	li	s2,6
     2a8:	008487b3          	add	a5,s1,s0
     2ac:	0007c503          	lbu	a0,0(a5)
     2b0:	00140413          	addi	s0,s0,1
     2b4:	00000097          	auipc	ra,0x0
     2b8:	dd8080e7          	jalr	-552(ra) # 8c <sdcard_send>
     2bc:	ff2416e3          	bne	s0,s2,2a8 <sdcard_cmd+0x28>
     2c0:	00812403          	lw	s0,8(sp)
     2c4:	00c12083          	lw	ra,12(sp)
     2c8:	00412483          	lw	s1,4(sp)
     2cc:	00012903          	lw	s2,0(sp)
     2d0:	01010113          	addi	sp,sp,16
     2d4:	00000317          	auipc	t1,0x0
     2d8:	da430067          	jr	-604(t1) # 78 <sdcard_unselect>

000002dc <sdcard_start_sector>:
     2dc:	ff010113          	addi	sp,sp,-16
     2e0:	00112623          	sw	ra,12(sp)
     2e4:	00812423          	sw	s0,8(sp)
     2e8:	00050413          	mv	s0,a0
     2ec:	00000097          	auipc	ra,0x0
     2f0:	d48080e7          	jalr	-696(ra) # 34 <sdcard_select>
     2f4:	05100513          	li	a0,81
     2f8:	00000097          	auipc	ra,0x0
     2fc:	d94080e7          	jalr	-620(ra) # 8c <sdcard_send>
     300:	01845513          	srli	a0,s0,0x18
     304:	00000097          	auipc	ra,0x0
     308:	d88080e7          	jalr	-632(ra) # 8c <sdcard_send>
     30c:	41045513          	srai	a0,s0,0x10
     310:	0ff57513          	zext.b	a0,a0
     314:	00000097          	auipc	ra,0x0
     318:	d78080e7          	jalr	-648(ra) # 8c <sdcard_send>
     31c:	40845513          	srai	a0,s0,0x8
     320:	0ff57513          	zext.b	a0,a0
     324:	00000097          	auipc	ra,0x0
     328:	d68080e7          	jalr	-664(ra) # 8c <sdcard_send>
     32c:	0ff47513          	zext.b	a0,s0
     330:	00000097          	auipc	ra,0x0
     334:	d5c080e7          	jalr	-676(ra) # 8c <sdcard_send>
     338:	05500513          	li	a0,85
     33c:	00000097          	auipc	ra,0x0
     340:	d50080e7          	jalr	-688(ra) # 8c <sdcard_send>
     344:	00000097          	auipc	ra,0x0
     348:	d34080e7          	jalr	-716(ra) # 78 <sdcard_unselect>
     34c:	00812403          	lw	s0,8(sp)
     350:	00c12083          	lw	ra,12(sp)
     354:	00100593          	li	a1,1
     358:	00800513          	li	a0,8
     35c:	01010113          	addi	sp,sp,16
     360:	00000317          	auipc	t1,0x0
     364:	ea830067          	jr	-344(t1) # 208 <sdcard_get>

00000368 <sdcard_read_sector>:
     368:	ff010113          	addi	sp,sp,-16
     36c:	00812423          	sw	s0,8(sp)
     370:	00112623          	sw	ra,12(sp)
     374:	00912223          	sw	s1,4(sp)
     378:	01212023          	sw	s2,0(sp)
     37c:	00058413          	mv	s0,a1
     380:	00000097          	auipc	ra,0x0
     384:	f5c080e7          	jalr	-164(ra) # 2dc <sdcard_start_sector>
     388:	04051863          	bnez	a0,3d8 <sdcard_read_sector+0x70>
     38c:	00100593          	li	a1,1
     390:	00100513          	li	a0,1
     394:	00000097          	auipc	ra,0x0
     398:	e74080e7          	jalr	-396(ra) # 208 <sdcard_get>
     39c:	00000493          	li	s1,0
     3a0:	20000913          	li	s2,512
     3a4:	00000593          	li	a1,0
     3a8:	00800513          	li	a0,8
     3ac:	00000097          	auipc	ra,0x0
     3b0:	e5c080e7          	jalr	-420(ra) # 208 <sdcard_get>
     3b4:	009407b3          	add	a5,s0,s1
     3b8:	00a78023          	sb	a0,0(a5)
     3bc:	00148493          	addi	s1,s1,1
     3c0:	ff2492e3          	bne	s1,s2,3a4 <sdcard_read_sector+0x3c>
     3c4:	00100593          	li	a1,1
     3c8:	01000513          	li	a0,16
     3cc:	20040413          	addi	s0,s0,512
     3d0:	00000097          	auipc	ra,0x0
     3d4:	e38080e7          	jalr	-456(ra) # 208 <sdcard_get>
     3d8:	00c12083          	lw	ra,12(sp)
     3dc:	00040513          	mv	a0,s0
     3e0:	00812403          	lw	s0,8(sp)
     3e4:	00412483          	lw	s1,4(sp)
     3e8:	00012903          	lw	s2,0(sp)
     3ec:	01010113          	addi	sp,sp,16
     3f0:	00008067          	ret

000003f4 <sdcard_preinit>:
     3f4:	ff010113          	addi	sp,sp,-16
     3f8:	000067b7          	lui	a5,0x6
     3fc:	00812423          	sw	s0,8(sp)
     400:	b507a403          	lw	s0,-1200(a5) # 5b50 <SDCARD>
     404:	00112623          	sw	ra,12(sp)
     408:	00600793          	li	a5,6
     40c:	01313537          	lui	a0,0x1313
     410:	00f42023          	sw	a5,0(s0)
     414:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     418:	00000097          	auipc	ra,0x0
     41c:	c04080e7          	jalr	-1020(ra) # 1c <pause>
     420:	0a000793          	li	a5,160
     424:	00000713          	li	a4,0
     428:	00100693          	li	a3,1
     42c:	00676613          	ori	a2,a4,6
     430:	00c42023          	sw	a2,0(s0)
     434:	fff78793          	addi	a5,a5,-1
     438:	40e68733          	sub	a4,a3,a4
     43c:	fe0798e3          	bnez	a5,42c <sdcard_preinit+0x38>
     440:	00600793          	li	a5,6
     444:	00c12083          	lw	ra,12(sp)
     448:	00f42023          	sw	a5,0(s0)
     44c:	00812403          	lw	s0,8(sp)
     450:	01010113          	addi	sp,sp,16
     454:	00008067          	ret

00000458 <sdcard_init>:
     458:	fe010113          	addi	sp,sp,-32
     45c:	000007b7          	lui	a5,0x0
     460:	00812c23          	sw	s0,24(sp)
     464:	00006737          	lui	a4,0x6
     468:	03078793          	addi	a5,a5,48 # 30 <sdcard_idle>
     46c:	01313437          	lui	s0,0x1313
     470:	01212823          	sw	s2,16(sp)
     474:	01312623          	sw	s3,12(sp)
     478:	00112e23          	sw	ra,28(sp)
     47c:	00912a23          	sw	s1,20(sp)
     480:	f4f72223          	sw	a5,-188(a4) # 5f44 <sdcard_while_loading_callback>
     484:	00006937          	lui	s2,0x6
     488:	0ff00993          	li	s3,255
     48c:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     490:	00000097          	auipc	ra,0x0
     494:	f64080e7          	jalr	-156(ra) # 3f4 <sdcard_preinit>
     498:	b3c90513          	addi	a0,s2,-1220 # 5b3c <cmd0>
     49c:	00000097          	auipc	ra,0x0
     4a0:	de4080e7          	jalr	-540(ra) # 280 <sdcard_cmd>
     4a4:	00100593          	li	a1,1
     4a8:	00800513          	li	a0,8
     4ac:	00000097          	auipc	ra,0x0
     4b0:	d5c080e7          	jalr	-676(ra) # 208 <sdcard_get>
     4b4:	00050493          	mv	s1,a0
     4b8:	00000097          	auipc	ra,0x0
     4bc:	b90080e7          	jalr	-1136(ra) # 48 <sdcard_ponder>
     4c0:	01349a63          	bne	s1,s3,4d4 <sdcard_init+0x7c>
     4c4:	00040513          	mv	a0,s0
     4c8:	00000097          	auipc	ra,0x0
     4cc:	b54080e7          	jalr	-1196(ra) # 1c <pause>
     4d0:	fc1ff06f          	j	490 <sdcard_init+0x38>
     4d4:	00006537          	lui	a0,0x6
     4d8:	b3450513          	addi	a0,a0,-1228 # 5b34 <cmd8>
     4dc:	00000097          	auipc	ra,0x0
     4e0:	da4080e7          	jalr	-604(ra) # 280 <sdcard_cmd>
     4e4:	00100593          	li	a1,1
     4e8:	02800513          	li	a0,40
     4ec:	00000097          	auipc	ra,0x0
     4f0:	d1c080e7          	jalr	-740(ra) # 208 <sdcard_get>
     4f4:	001e8437          	lui	s0,0x1e8
     4f8:	00000097          	auipc	ra,0x0
     4fc:	b50080e7          	jalr	-1200(ra) # 48 <sdcard_ponder>
     500:	00006937          	lui	s2,0x6
     504:	000069b7          	lui	s3,0x6
     508:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     50c:	b2c90513          	addi	a0,s2,-1236 # 5b2c <cmd55>
     510:	00000097          	auipc	ra,0x0
     514:	d70080e7          	jalr	-656(ra) # 280 <sdcard_cmd>
     518:	00100593          	li	a1,1
     51c:	00800513          	li	a0,8
     520:	00000097          	auipc	ra,0x0
     524:	ce8080e7          	jalr	-792(ra) # 208 <sdcard_get>
     528:	00000097          	auipc	ra,0x0
     52c:	b20080e7          	jalr	-1248(ra) # 48 <sdcard_ponder>
     530:	b2498513          	addi	a0,s3,-1244 # 5b24 <acmd41>
     534:	00000097          	auipc	ra,0x0
     538:	d4c080e7          	jalr	-692(ra) # 280 <sdcard_cmd>
     53c:	00100593          	li	a1,1
     540:	00800513          	li	a0,8
     544:	00000097          	auipc	ra,0x0
     548:	cc4080e7          	jalr	-828(ra) # 208 <sdcard_get>
     54c:	00050493          	mv	s1,a0
     550:	00000097          	auipc	ra,0x0
     554:	af8080e7          	jalr	-1288(ra) # 48 <sdcard_ponder>
     558:	00048a63          	beqz	s1,56c <sdcard_init+0x114>
     55c:	00040513          	mv	a0,s0
     560:	00000097          	auipc	ra,0x0
     564:	abc080e7          	jalr	-1348(ra) # 1c <pause>
     568:	fa5ff06f          	j	50c <sdcard_init+0xb4>
     56c:	00006537          	lui	a0,0x6
     570:	b1c50513          	addi	a0,a0,-1252 # 5b1c <cmd16>
     574:	00000097          	auipc	ra,0x0
     578:	d0c080e7          	jalr	-756(ra) # 280 <sdcard_cmd>
     57c:	00100593          	li	a1,1
     580:	00800513          	li	a0,8
     584:	00000097          	auipc	ra,0x0
     588:	c84080e7          	jalr	-892(ra) # 208 <sdcard_get>
     58c:	01812403          	lw	s0,24(sp)
     590:	01c12083          	lw	ra,28(sp)
     594:	01412483          	lw	s1,20(sp)
     598:	01012903          	lw	s2,16(sp)
     59c:	00c12983          	lw	s3,12(sp)
     5a0:	02010113          	addi	sp,sp,32
     5a4:	00000317          	auipc	t1,0x0
     5a8:	aa430067          	jr	-1372(t1) # 48 <sdcard_ponder>

000005ac <sdcard_readsector>:
     5ac:	04060863          	beqz	a2,5fc <sdcard_readsector+0x50>
     5b0:	ff010113          	addi	sp,sp,-16
     5b4:	00812423          	sw	s0,8(sp)
     5b8:	00912223          	sw	s1,4(sp)
     5bc:	00112623          	sw	ra,12(sp)
     5c0:	00050413          	mv	s0,a0
     5c4:	00a604b3          	add	s1,a2,a0
     5c8:	00941e63          	bne	s0,s1,5e4 <sdcard_readsector+0x38>
     5cc:	00c12083          	lw	ra,12(sp)
     5d0:	00812403          	lw	s0,8(sp)
     5d4:	00412483          	lw	s1,4(sp)
     5d8:	00100513          	li	a0,1
     5dc:	01010113          	addi	sp,sp,16
     5e0:	00008067          	ret
     5e4:	00040513          	mv	a0,s0
     5e8:	00000097          	auipc	ra,0x0
     5ec:	d80080e7          	jalr	-640(ra) # 368 <sdcard_read_sector>
     5f0:	00050593          	mv	a1,a0
     5f4:	00140413          	addi	s0,s0,1
     5f8:	fd1ff06f          	j	5c8 <sdcard_readsector+0x1c>
     5fc:	00000513          	li	a0,0
     600:	00008067          	ret

00000604 <sdcard_writesector>:
     604:	00000513          	li	a0,0
     608:	00008067          	ret

0000060c <__divsi3>:
     60c:	06054063          	bltz	a0,66c <__umodsi3+0x10>
     610:	0605c663          	bltz	a1,67c <__umodsi3+0x20>

00000614 <__udivsi3>:
     614:	00058613          	mv	a2,a1
     618:	00050593          	mv	a1,a0
     61c:	fff00513          	li	a0,-1
     620:	02060c63          	beqz	a2,658 <__udivsi3+0x44>
     624:	00100693          	li	a3,1
     628:	00b67a63          	bgeu	a2,a1,63c <__udivsi3+0x28>
     62c:	00c05863          	blez	a2,63c <__udivsi3+0x28>
     630:	00161613          	slli	a2,a2,0x1
     634:	00169693          	slli	a3,a3,0x1
     638:	feb66ae3          	bltu	a2,a1,62c <__udivsi3+0x18>
     63c:	00000513          	li	a0,0
     640:	00c5e663          	bltu	a1,a2,64c <__udivsi3+0x38>
     644:	40c585b3          	sub	a1,a1,a2
     648:	00d56533          	or	a0,a0,a3
     64c:	0016d693          	srli	a3,a3,0x1
     650:	00165613          	srli	a2,a2,0x1
     654:	fe0696e3          	bnez	a3,640 <__udivsi3+0x2c>
     658:	00008067          	ret

0000065c <__umodsi3>:
     65c:	00008293          	mv	t0,ra
     660:	fb5ff0ef          	jal	ra,614 <__udivsi3>
     664:	00058513          	mv	a0,a1
     668:	00028067          	jr	t0
     66c:	40a00533          	neg	a0,a0
     670:	0005d863          	bgez	a1,680 <__umodsi3+0x24>
     674:	40b005b3          	neg	a1,a1
     678:	f95ff06f          	j	60c <__divsi3>
     67c:	40b005b3          	neg	a1,a1
     680:	00008293          	mv	t0,ra
     684:	f89ff0ef          	jal	ra,60c <__divsi3>
     688:	40a00533          	neg	a0,a0
     68c:	00028067          	jr	t0

00000690 <__modsi3>:
     690:	00008293          	mv	t0,ra
     694:	0005ca63          	bltz	a1,6a8 <__modsi3+0x18>
     698:	00054c63          	bltz	a0,6b0 <__modsi3+0x20>
     69c:	f79ff0ef          	jal	ra,614 <__udivsi3>
     6a0:	00058513          	mv	a0,a1
     6a4:	00028067          	jr	t0
     6a8:	40b005b3          	neg	a1,a1
     6ac:	fe0558e3          	bgez	a0,69c <__modsi3+0xc>
     6b0:	40a00533          	neg	a0,a0
     6b4:	f61ff0ef          	jal	ra,614 <__udivsi3>
     6b8:	40b00533          	neg	a0,a1
     6bc:	00028067          	jr	t0

000006c0 <uart_putchar>:
     6c0:	000067b7          	lui	a5,0x6
     6c4:	b547a783          	lw	a5,-1196(a5) # 5b54 <UART>
     6c8:	00a7a023          	sw	a0,0(a5)
     6cc:	c00026f3          	rdcycle	a3
     6d0:	000027b7          	lui	a5,0x2
     6d4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_fat_init+0x4f>
     6d8:	c0002773          	rdcycle	a4
     6dc:	40d70733          	sub	a4,a4,a3
     6e0:	fee7fce3          	bgeu	a5,a4,6d8 <uart_putchar+0x18>
     6e4:	00008067          	ret

000006e8 <memset>:
     6e8:	00c50633          	add	a2,a0,a2
     6ec:	00050793          	mv	a5,a0
     6f0:	00c79463          	bne	a5,a2,6f8 <memset+0x10>
     6f4:	00008067          	ret
     6f8:	00178793          	addi	a5,a5,1
     6fc:	feb78fa3          	sb	a1,-1(a5)
     700:	ff1ff06f          	j	6f0 <memset+0x8>

00000704 <memcpy>:
     704:	00000793          	li	a5,0
     708:	00c79463          	bne	a5,a2,710 <memcpy+0xc>
     70c:	00008067          	ret
     710:	00f58733          	add	a4,a1,a5
     714:	00074683          	lbu	a3,0(a4)
     718:	00f50733          	add	a4,a0,a5
     71c:	00178793          	addi	a5,a5,1
     720:	00d70023          	sb	a3,0(a4)
     724:	fe5ff06f          	j	708 <memcpy+0x4>

00000728 <strlen>:
     728:	00050793          	mv	a5,a0
     72c:	00000513          	li	a0,0
     730:	00a78733          	add	a4,a5,a0
     734:	00074703          	lbu	a4,0(a4)
     738:	00071463          	bnez	a4,740 <strlen+0x18>
     73c:	00008067          	ret
     740:	00150513          	addi	a0,a0,1
     744:	fedff06f          	j	730 <strlen+0x8>

00000748 <strncmp>:
     748:	00000793          	li	a5,0
     74c:	00c79663          	bne	a5,a2,758 <strncmp+0x10>
     750:	00000513          	li	a0,0
     754:	00008067          	ret
     758:	00f50733          	add	a4,a0,a5
     75c:	00074683          	lbu	a3,0(a4)
     760:	00f58733          	add	a4,a1,a5
     764:	00074703          	lbu	a4,0(a4)
     768:	00e6e863          	bltu	a3,a4,778 <strncmp+0x30>
     76c:	00d76a63          	bltu	a4,a3,780 <strncmp+0x38>
     770:	00178793          	addi	a5,a5,1
     774:	fd9ff06f          	j	74c <strncmp+0x4>
     778:	fff00513          	li	a0,-1
     77c:	00008067          	ret
     780:	00100513          	li	a0,1
     784:	00008067          	ret

00000788 <strncpy>:
     788:	00000793          	li	a5,0
     78c:	00f61463          	bne	a2,a5,794 <strncpy+0xc>
     790:	00008067          	ret
     794:	00f58733          	add	a4,a1,a5
     798:	00074683          	lbu	a3,0(a4)
     79c:	00f50733          	add	a4,a0,a5
     7a0:	00178793          	addi	a5,a5,1
     7a4:	00d70023          	sb	a3,0(a4)
     7a8:	fe5ff06f          	j	78c <strncpy+0x4>

000007ac <strcpy>:
     7ac:	0005c783          	lbu	a5,0(a1)
     7b0:	00079663          	bnez	a5,7bc <strcpy+0x10>
     7b4:	00050023          	sb	zero,0(a0)
     7b8:	00008067          	ret
     7bc:	00150513          	addi	a0,a0,1
     7c0:	00158593          	addi	a1,a1,1
     7c4:	fef50fa3          	sb	a5,-1(a0)
     7c8:	fe5ff06f          	j	7ac <strcpy>

000007cc <strcat>:
     7cc:	00050793          	mv	a5,a0
     7d0:	0007c683          	lbu	a3,0(a5)
     7d4:	00078713          	mv	a4,a5
     7d8:	00178793          	addi	a5,a5,1
     7dc:	fe069ae3          	bnez	a3,7d0 <strcat+0x4>
     7e0:	0005c783          	lbu	a5,0(a1)
     7e4:	00158593          	addi	a1,a1,1
     7e8:	00170713          	addi	a4,a4,1
     7ec:	fef70fa3          	sb	a5,-1(a4)
     7f0:	fe0798e3          	bnez	a5,7e0 <strcat+0x14>
     7f4:	00008067          	ret

000007f8 <oled_wait>:
     7f8:	00000013          	nop
     7fc:	00000013          	nop
     800:	00000013          	nop
     804:	00000013          	nop
     808:	00000013          	nop
     80c:	00000013          	nop
     810:	00000013          	nop
     814:	00008067          	ret

00000818 <oled_init_mode>:
     818:	000067b7          	lui	a5,0x6
     81c:	b587a703          	lw	a4,-1192(a5) # 5b58 <OLED_RST>
     820:	ff010113          	addi	sp,sp,-16
     824:	00912223          	sw	s1,4(sp)
     828:	00112623          	sw	ra,12(sp)
     82c:	00812423          	sw	s0,8(sp)
     830:	00072023          	sw	zero,0(a4)
     834:	00050493          	mv	s1,a0
     838:	00040737          	lui	a4,0x40
     83c:	00000013          	nop
     840:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     844:	fe071ce3          	bnez	a4,83c <oled_init_mode+0x24>
     848:	b587a703          	lw	a4,-1192(a5)
     84c:	00100693          	li	a3,1
     850:	00d72023          	sw	a3,0(a4)
     854:	00040737          	lui	a4,0x40
     858:	00000013          	nop
     85c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     860:	fe071ce3          	bnez	a4,858 <oled_init_mode+0x40>
     864:	b587a783          	lw	a5,-1192(a5)
     868:	0007a023          	sw	zero,0(a5)
     86c:	000407b7          	lui	a5,0x40
     870:	00000013          	nop
     874:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     878:	fe079ce3          	bnez	a5,870 <oled_init_mode+0x58>
     87c:	00006737          	lui	a4,0x6
     880:	b5c72783          	lw	a5,-1188(a4) # 5b5c <OLED>
     884:	2af00693          	li	a3,687
     888:	00d7a023          	sw	a3,0(a5)
     88c:	000407b7          	lui	a5,0x40
     890:	00000013          	nop
     894:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     898:	fe079ce3          	bnez	a5,890 <oled_init_mode+0x78>
     89c:	b5c72403          	lw	s0,-1188(a4)
     8a0:	2a000793          	li	a5,672
     8a4:	00f42023          	sw	a5,0(s0)
     8a8:	00000097          	auipc	ra,0x0
     8ac:	f50080e7          	jalr	-176(ra) # 7f8 <oled_wait>
     8b0:	4a000793          	li	a5,1184
     8b4:	00048463          	beqz	s1,8bc <oled_init_mode+0xa4>
     8b8:	42000793          	li	a5,1056
     8bc:	00f42023          	sw	a5,0(s0)
     8c0:	00000097          	auipc	ra,0x0
     8c4:	f38080e7          	jalr	-200(ra) # 7f8 <oled_wait>
     8c8:	2fd00793          	li	a5,765
     8cc:	00f42023          	sw	a5,0(s0)
     8d0:	00000097          	auipc	ra,0x0
     8d4:	f28080e7          	jalr	-216(ra) # 7f8 <oled_wait>
     8d8:	4b100793          	li	a5,1201
     8dc:	00f42023          	sw	a5,0(s0)
     8e0:	00000097          	auipc	ra,0x0
     8e4:	f18080e7          	jalr	-232(ra) # 7f8 <oled_wait>
     8e8:	2a200793          	li	a5,674
     8ec:	00f42023          	sw	a5,0(s0)
     8f0:	00000097          	auipc	ra,0x0
     8f4:	f08080e7          	jalr	-248(ra) # 7f8 <oled_wait>
     8f8:	40000793          	li	a5,1024
     8fc:	00f42023          	sw	a5,0(s0)
     900:	00812403          	lw	s0,8(sp)
     904:	00c12083          	lw	ra,12(sp)
     908:	00412483          	lw	s1,4(sp)
     90c:	01010113          	addi	sp,sp,16
     910:	00000317          	auipc	t1,0x0
     914:	ee830067          	jr	-280(t1) # 7f8 <oled_wait>

00000918 <oled_init>:
     918:	00000513          	li	a0,0
     91c:	00000317          	auipc	t1,0x0
     920:	efc30067          	jr	-260(t1) # 818 <oled_init_mode>

00000924 <oled_fullscreen>:
     924:	ff010113          	addi	sp,sp,-16
     928:	000067b7          	lui	a5,0x6
     92c:	00812423          	sw	s0,8(sp)
     930:	b5c7a403          	lw	s0,-1188(a5) # 5b5c <OLED>
     934:	00112623          	sw	ra,12(sp)
     938:	00912223          	sw	s1,4(sp)
     93c:	01212023          	sw	s2,0(sp)
     940:	21500793          	li	a5,533
     944:	00f42023          	sw	a5,0(s0)
     948:	40000913          	li	s2,1024
     94c:	00000097          	auipc	ra,0x0
     950:	eac080e7          	jalr	-340(ra) # 7f8 <oled_wait>
     954:	47f00493          	li	s1,1151
     958:	01242023          	sw	s2,0(s0)
     95c:	00000097          	auipc	ra,0x0
     960:	e9c080e7          	jalr	-356(ra) # 7f8 <oled_wait>
     964:	00942023          	sw	s1,0(s0)
     968:	00000097          	auipc	ra,0x0
     96c:	e90080e7          	jalr	-368(ra) # 7f8 <oled_wait>
     970:	27500793          	li	a5,629
     974:	00f42023          	sw	a5,0(s0)
     978:	00000097          	auipc	ra,0x0
     97c:	e80080e7          	jalr	-384(ra) # 7f8 <oled_wait>
     980:	01242023          	sw	s2,0(s0)
     984:	00000097          	auipc	ra,0x0
     988:	e74080e7          	jalr	-396(ra) # 7f8 <oled_wait>
     98c:	00942023          	sw	s1,0(s0)
     990:	00000097          	auipc	ra,0x0
     994:	e68080e7          	jalr	-408(ra) # 7f8 <oled_wait>
     998:	25c00793          	li	a5,604
     99c:	00f42023          	sw	a5,0(s0)
     9a0:	00812403          	lw	s0,8(sp)
     9a4:	00c12083          	lw	ra,12(sp)
     9a8:	00412483          	lw	s1,4(sp)
     9ac:	00012903          	lw	s2,0(sp)
     9b0:	01010113          	addi	sp,sp,16
     9b4:	00000317          	auipc	t1,0x0
     9b8:	e4430067          	jr	-444(t1) # 7f8 <oled_wait>

000009bc <oled_clear>:
     9bc:	fe010113          	addi	sp,sp,-32
     9c0:	000067b7          	lui	a5,0x6
     9c4:	01312623          	sw	s3,12(sp)
     9c8:	b5c7a983          	lw	s3,-1188(a5) # 5b5c <OLED>
     9cc:	00812c23          	sw	s0,24(sp)
     9d0:	01212823          	sw	s2,16(sp)
     9d4:	00112e23          	sw	ra,28(sp)
     9d8:	00912a23          	sw	s1,20(sp)
     9dc:	08000913          	li	s2,128
     9e0:	40056413          	ori	s0,a0,1024
     9e4:	08000493          	li	s1,128
     9e8:	0089a023          	sw	s0,0(s3)
     9ec:	00000097          	auipc	ra,0x0
     9f0:	e0c080e7          	jalr	-500(ra) # 7f8 <oled_wait>
     9f4:	0089a023          	sw	s0,0(s3)
     9f8:	00000097          	auipc	ra,0x0
     9fc:	e00080e7          	jalr	-512(ra) # 7f8 <oled_wait>
     a00:	fff48493          	addi	s1,s1,-1
     a04:	0089a023          	sw	s0,0(s3)
     a08:	00000097          	auipc	ra,0x0
     a0c:	df0080e7          	jalr	-528(ra) # 7f8 <oled_wait>
     a10:	fc049ce3          	bnez	s1,9e8 <oled_clear+0x2c>
     a14:	fff90913          	addi	s2,s2,-1
     a18:	fc0916e3          	bnez	s2,9e4 <oled_clear+0x28>
     a1c:	01c12083          	lw	ra,28(sp)
     a20:	01812403          	lw	s0,24(sp)
     a24:	01412483          	lw	s1,20(sp)
     a28:	01012903          	lw	s2,16(sp)
     a2c:	00c12983          	lw	s3,12(sp)
     a30:	02010113          	addi	sp,sp,32
     a34:	00008067          	ret

00000a38 <oled_wait>:
     a38:	00000013          	nop
     a3c:	00000013          	nop
     a40:	00000013          	nop
     a44:	00000013          	nop
     a48:	00000013          	nop
     a4c:	00000013          	nop
     a50:	00000013          	nop
     a54:	00008067          	ret

00000a58 <display_framebuffer>:
     a58:	00006537          	lui	a0,0x6
     a5c:	1c450513          	addi	a0,a0,452 # 61c4 <framebuffer>
     a60:	00008067          	ret

00000a64 <display_set_cursor>:
     a64:	000067b7          	lui	a5,0x6
     a68:	f4a7a823          	sw	a0,-176(a5) # 5f50 <cursor_x>
     a6c:	000067b7          	lui	a5,0x6
     a70:	f4b7a623          	sw	a1,-180(a5) # 5f4c <cursor_y>
     a74:	00008067          	ret

00000a78 <display_set_front_back_color>:
     a78:	000067b7          	lui	a5,0x6
     a7c:	f4a784a3          	sb	a0,-183(a5) # 5f49 <front_color>
     a80:	000067b7          	lui	a5,0x6
     a84:	f4b78423          	sb	a1,-184(a5) # 5f48 <back_color>
     a88:	00008067          	ret

00000a8c <display_putchar>:
     a8c:	00a00793          	li	a5,10
     a90:	00006637          	lui	a2,0x6
     a94:	02f51663          	bne	a0,a5,ac0 <display_putchar+0x34>
     a98:	00006737          	lui	a4,0x6
     a9c:	f4c72783          	lw	a5,-180(a4) # 5f4c <cursor_y>
     aa0:	f4062823          	sw	zero,-176(a2) # 5f50 <cursor_x>
     aa4:	00878793          	addi	a5,a5,8
     aa8:	f4f72623          	sw	a5,-180(a4)
     aac:	07f00713          	li	a4,127
     ab0:	00f75663          	bge	a4,a5,abc <display_putchar+0x30>
     ab4:	000067b7          	lui	a5,0x6
     ab8:	f407a623          	sw	zero,-180(a5) # 5f4c <cursor_y>
     abc:	00008067          	ret
     ac0:	ff010113          	addi	sp,sp,-16
     ac4:	00812623          	sw	s0,12(sp)
     ac8:	00912423          	sw	s1,8(sp)
     acc:	01212223          	sw	s2,4(sp)
     ad0:	01f00713          	li	a4,31
     ad4:	f5062783          	lw	a5,-176(a2)
     ad8:	08a75863          	bge	a4,a0,b68 <display_putchar+0xdc>
     adc:	00006737          	lui	a4,0x6
     ae0:	f4874383          	lbu	t2,-184(a4) # 5f48 <back_color>
     ae4:	00006737          	lui	a4,0x6
     ae8:	f4974403          	lbu	s0,-183(a4) # 5f49 <front_color>
     aec:	00006737          	lui	a4,0x6
     af0:	f4c72f03          	lw	t5,-180(a4) # 5f4c <cursor_y>
     af4:	00251693          	slli	a3,a0,0x2
     af8:	00006737          	lui	a4,0x6
     afc:	00a686b3          	add	a3,a3,a0
     b00:	b6470713          	addi	a4,a4,-1180 # 5b64 <font>
     b04:	00779313          	slli	t1,a5,0x7
     b08:	00006837          	lui	a6,0x6
     b0c:	00d70733          	add	a4,a4,a3
     b10:	28030493          	addi	s1,t1,640
     b14:	00000693          	li	a3,0
     b18:	00100293          	li	t0,1
     b1c:	1c480813          	addi	a6,a6,452 # 61c4 <framebuffer>
     b20:	00800913          	li	s2,8
     b24:	00d29fb3          	sll	t6,t0,a3
     b28:	00df0eb3          	add	t4,t5,a3
     b2c:	00030593          	mv	a1,t1
     b30:	00070513          	mv	a0,a4
     b34:	f6054883          	lbu	a7,-160(a0)
     b38:	00038e13          	mv	t3,t2
     b3c:	01f8f8b3          	and	a7,a7,t6
     b40:	00088463          	beqz	a7,b48 <display_putchar+0xbc>
     b44:	00040e13          	mv	t3,s0
     b48:	00b808b3          	add	a7,a6,a1
     b4c:	01d888b3          	add	a7,a7,t4
     b50:	01c88023          	sb	t3,0(a7)
     b54:	08058593          	addi	a1,a1,128
     b58:	00150513          	addi	a0,a0,1
     b5c:	fc959ce3          	bne	a1,s1,b34 <display_putchar+0xa8>
     b60:	00168693          	addi	a3,a3,1
     b64:	fd2690e3          	bne	a3,s2,b24 <display_putchar+0x98>
     b68:	00578793          	addi	a5,a5,5
     b6c:	07f00713          	li	a4,127
     b70:	00f74663          	blt	a4,a5,b7c <display_putchar+0xf0>
     b74:	f4f62823          	sw	a5,-176(a2)
     b78:	0240006f          	j	b9c <display_putchar+0x110>
     b7c:	000066b7          	lui	a3,0x6
     b80:	f4c6a783          	lw	a5,-180(a3) # 5f4c <cursor_y>
     b84:	f4062823          	sw	zero,-176(a2)
     b88:	00878793          	addi	a5,a5,8
     b8c:	f4f6a623          	sw	a5,-180(a3)
     b90:	00f75663          	bge	a4,a5,b9c <display_putchar+0x110>
     b94:	000067b7          	lui	a5,0x6
     b98:	f407a623          	sw	zero,-180(a5) # 5f4c <cursor_y>
     b9c:	00c12403          	lw	s0,12(sp)
     ba0:	00812483          	lw	s1,8(sp)
     ba4:	00412903          	lw	s2,4(sp)
     ba8:	01010113          	addi	sp,sp,16
     bac:	00008067          	ret

00000bb0 <display_refresh>:
     bb0:	fe010113          	addi	sp,sp,-32
     bb4:	000067b7          	lui	a5,0x6
     bb8:	01212823          	sw	s2,16(sp)
     bbc:	b5c7a903          	lw	s2,-1188(a5) # 5b5c <OLED>
     bc0:	01312623          	sw	s3,12(sp)
     bc4:	000069b7          	lui	s3,0x6
     bc8:	00912a23          	sw	s1,20(sp)
     bcc:	01412423          	sw	s4,8(sp)
     bd0:	00112e23          	sw	ra,28(sp)
     bd4:	00812c23          	sw	s0,24(sp)
     bd8:	00000493          	li	s1,0
     bdc:	1c498993          	addi	s3,s3,452 # 61c4 <framebuffer>
     be0:	00004a37          	lui	s4,0x4
     be4:	013487b3          	add	a5,s1,s3
     be8:	0007c403          	lbu	s0,0(a5)
     bec:	00148493          	addi	s1,s1,1
     bf0:	00245413          	srli	s0,s0,0x2
     bf4:	40046413          	ori	s0,s0,1024
     bf8:	00892023          	sw	s0,0(s2)
     bfc:	00000097          	auipc	ra,0x0
     c00:	e3c080e7          	jalr	-452(ra) # a38 <oled_wait>
     c04:	00892023          	sw	s0,0(s2)
     c08:	00000097          	auipc	ra,0x0
     c0c:	e30080e7          	jalr	-464(ra) # a38 <oled_wait>
     c10:	00892023          	sw	s0,0(s2)
     c14:	00000097          	auipc	ra,0x0
     c18:	e24080e7          	jalr	-476(ra) # a38 <oled_wait>
     c1c:	fd4494e3          	bne	s1,s4,be4 <display_refresh+0x34>
     c20:	01c12083          	lw	ra,28(sp)
     c24:	01812403          	lw	s0,24(sp)
     c28:	01412483          	lw	s1,20(sp)
     c2c:	01012903          	lw	s2,16(sp)
     c30:	00c12983          	lw	s3,12(sp)
     c34:	00812a03          	lw	s4,8(sp)
     c38:	02010113          	addi	sp,sp,32
     c3c:	00008067          	ret

00000c40 <dual_putchar>:
     c40:	ff010113          	addi	sp,sp,-16
     c44:	00812423          	sw	s0,8(sp)
     c48:	00112623          	sw	ra,12(sp)
     c4c:	00050413          	mv	s0,a0
     c50:	00000097          	auipc	ra,0x0
     c54:	e3c080e7          	jalr	-452(ra) # a8c <display_putchar>
     c58:	00040513          	mv	a0,s0
     c5c:	00812403          	lw	s0,8(sp)
     c60:	00c12083          	lw	ra,12(sp)
     c64:	01010113          	addi	sp,sp,16
     c68:	00000317          	auipc	t1,0x0
     c6c:	a5830067          	jr	-1448(t1) # 6c0 <uart_putchar>

00000c70 <print_string>:
     c70:	ff010113          	addi	sp,sp,-16
     c74:	00812423          	sw	s0,8(sp)
     c78:	00912223          	sw	s1,4(sp)
     c7c:	00112623          	sw	ra,12(sp)
     c80:	00050413          	mv	s0,a0
     c84:	000064b7          	lui	s1,0x6
     c88:	00044503          	lbu	a0,0(s0)
     c8c:	00051c63          	bnez	a0,ca4 <print_string+0x34>
     c90:	00c12083          	lw	ra,12(sp)
     c94:	00812403          	lw	s0,8(sp)
     c98:	00412483          	lw	s1,4(sp)
     c9c:	01010113          	addi	sp,sp,16
     ca0:	00008067          	ret
     ca4:	f544a783          	lw	a5,-172(s1) # 5f54 <f_putchar>
     ca8:	00140413          	addi	s0,s0,1
     cac:	000780e7          	jalr	a5
     cb0:	fd9ff06f          	j	c88 <print_string+0x18>

00000cb4 <print_dec>:
     cb4:	ee010113          	addi	sp,sp,-288
     cb8:	10812c23          	sw	s0,280(sp)
     cbc:	11312623          	sw	s3,268(sp)
     cc0:	10112e23          	sw	ra,284(sp)
     cc4:	10912a23          	sw	s1,276(sp)
     cc8:	11212823          	sw	s2,272(sp)
     ccc:	00050413          	mv	s0,a0
     cd0:	000069b7          	lui	s3,0x6
     cd4:	f549a783          	lw	a5,-172(s3) # 5f54 <f_putchar>
     cd8:	06045e63          	bgez	s0,d54 <print_dec+0xa0>
     cdc:	02d00513          	li	a0,45
     ce0:	000780e7          	jalr	a5
     ce4:	40800433          	neg	s0,s0
     ce8:	fedff06f          	j	cd4 <print_dec+0x20>
     cec:	00040513          	mv	a0,s0
     cf0:	00a00593          	li	a1,10
     cf4:	00000097          	auipc	ra,0x0
     cf8:	918080e7          	jalr	-1768(ra) # 60c <__divsi3>
     cfc:	00251793          	slli	a5,a0,0x2
     d00:	00f507b3          	add	a5,a0,a5
     d04:	00179793          	slli	a5,a5,0x1
     d08:	40f40433          	sub	s0,s0,a5
     d0c:	00148493          	addi	s1,s1,1
     d10:	fe848fa3          	sb	s0,-1(s1)
     d14:	00050413          	mv	s0,a0
     d18:	fc041ae3          	bnez	s0,cec <print_dec+0x38>
     d1c:	fd2488e3          	beq	s1,s2,cec <print_dec+0x38>
     d20:	fff4c503          	lbu	a0,-1(s1)
     d24:	f549a783          	lw	a5,-172(s3)
     d28:	fff48493          	addi	s1,s1,-1
     d2c:	03050513          	addi	a0,a0,48
     d30:	000780e7          	jalr	a5
     d34:	ff2496e3          	bne	s1,s2,d20 <print_dec+0x6c>
     d38:	11c12083          	lw	ra,284(sp)
     d3c:	11812403          	lw	s0,280(sp)
     d40:	11412483          	lw	s1,276(sp)
     d44:	11012903          	lw	s2,272(sp)
     d48:	10c12983          	lw	s3,268(sp)
     d4c:	12010113          	addi	sp,sp,288
     d50:	00008067          	ret
     d54:	00010493          	mv	s1,sp
     d58:	00048913          	mv	s2,s1
     d5c:	fbdff06f          	j	d18 <print_dec+0x64>

00000d60 <print_hex_digits>:
     d60:	fe010113          	addi	sp,sp,-32
     d64:	00812c23          	sw	s0,24(sp)
     d68:	01212823          	sw	s2,16(sp)
     d6c:	fff58413          	addi	s0,a1,-1
     d70:	00006937          	lui	s2,0x6
     d74:	00912a23          	sw	s1,20(sp)
     d78:	01312623          	sw	s3,12(sp)
     d7c:	00112e23          	sw	ra,28(sp)
     d80:	00050493          	mv	s1,a0
     d84:	00241413          	slli	s0,s0,0x2
     d88:	db890913          	addi	s2,s2,-584 # 5db8 <font+0x254>
     d8c:	000069b7          	lui	s3,0x6
     d90:	02045063          	bgez	s0,db0 <print_hex_digits+0x50>
     d94:	01c12083          	lw	ra,28(sp)
     d98:	01812403          	lw	s0,24(sp)
     d9c:	01412483          	lw	s1,20(sp)
     da0:	01012903          	lw	s2,16(sp)
     da4:	00c12983          	lw	s3,12(sp)
     da8:	02010113          	addi	sp,sp,32
     dac:	00008067          	ret
     db0:	0084d7b3          	srl	a5,s1,s0
     db4:	00f7f793          	andi	a5,a5,15
     db8:	00f907b3          	add	a5,s2,a5
     dbc:	f549a703          	lw	a4,-172(s3) # 5f54 <f_putchar>
     dc0:	0007c503          	lbu	a0,0(a5)
     dc4:	ffc40413          	addi	s0,s0,-4
     dc8:	000700e7          	jalr	a4
     dcc:	fc5ff06f          	j	d90 <print_hex_digits+0x30>

00000dd0 <print_hex>:
     dd0:	00800593          	li	a1,8
     dd4:	00000317          	auipc	t1,0x0
     dd8:	f8c30067          	jr	-116(t1) # d60 <print_hex_digits>

00000ddc <printf>:
     ddc:	fa010113          	addi	sp,sp,-96
     de0:	04f12a23          	sw	a5,84(sp)
     de4:	04410793          	addi	a5,sp,68
     de8:	02812c23          	sw	s0,56(sp)
     dec:	02912a23          	sw	s1,52(sp)
     df0:	03312623          	sw	s3,44(sp)
     df4:	03412423          	sw	s4,40(sp)
     df8:	03512223          	sw	s5,36(sp)
     dfc:	03612023          	sw	s6,32(sp)
     e00:	01712e23          	sw	s7,28(sp)
     e04:	02112e23          	sw	ra,60(sp)
     e08:	03212823          	sw	s2,48(sp)
     e0c:	00050413          	mv	s0,a0
     e10:	04b12223          	sw	a1,68(sp)
     e14:	04c12423          	sw	a2,72(sp)
     e18:	04d12623          	sw	a3,76(sp)
     e1c:	04e12823          	sw	a4,80(sp)
     e20:	05012c23          	sw	a6,88(sp)
     e24:	05112e23          	sw	a7,92(sp)
     e28:	00f12623          	sw	a5,12(sp)
     e2c:	02500993          	li	s3,37
     e30:	000064b7          	lui	s1,0x6
     e34:	07300a13          	li	s4,115
     e38:	07800a93          	li	s5,120
     e3c:	06400b13          	li	s6,100
     e40:	06300b93          	li	s7,99
     e44:	00044503          	lbu	a0,0(s0)
     e48:	02051863          	bnez	a0,e78 <printf+0x9c>
     e4c:	03c12083          	lw	ra,60(sp)
     e50:	03812403          	lw	s0,56(sp)
     e54:	03412483          	lw	s1,52(sp)
     e58:	03012903          	lw	s2,48(sp)
     e5c:	02c12983          	lw	s3,44(sp)
     e60:	02812a03          	lw	s4,40(sp)
     e64:	02412a83          	lw	s5,36(sp)
     e68:	02012b03          	lw	s6,32(sp)
     e6c:	01c12b83          	lw	s7,28(sp)
     e70:	06010113          	addi	sp,sp,96
     e74:	00008067          	ret
     e78:	00140913          	addi	s2,s0,1
     e7c:	09351663          	bne	a0,s3,f08 <printf+0x12c>
     e80:	00144503          	lbu	a0,1(s0)
     e84:	03451263          	bne	a0,s4,ea8 <printf+0xcc>
     e88:	00c12783          	lw	a5,12(sp)
     e8c:	0007a503          	lw	a0,0(a5)
     e90:	00478713          	addi	a4,a5,4
     e94:	00e12623          	sw	a4,12(sp)
     e98:	00000097          	auipc	ra,0x0
     e9c:	dd8080e7          	jalr	-552(ra) # c70 <print_string>
     ea0:	00190413          	addi	s0,s2,1
     ea4:	fa1ff06f          	j	e44 <printf+0x68>
     ea8:	03551063          	bne	a0,s5,ec8 <printf+0xec>
     eac:	00c12783          	lw	a5,12(sp)
     eb0:	0007a503          	lw	a0,0(a5)
     eb4:	00478713          	addi	a4,a5,4
     eb8:	00e12623          	sw	a4,12(sp)
     ebc:	00000097          	auipc	ra,0x0
     ec0:	f14080e7          	jalr	-236(ra) # dd0 <print_hex>
     ec4:	fddff06f          	j	ea0 <printf+0xc4>
     ec8:	03651063          	bne	a0,s6,ee8 <printf+0x10c>
     ecc:	00c12783          	lw	a5,12(sp)
     ed0:	0007a503          	lw	a0,0(a5)
     ed4:	00478713          	addi	a4,a5,4
     ed8:	00e12623          	sw	a4,12(sp)
     edc:	00000097          	auipc	ra,0x0
     ee0:	dd8080e7          	jalr	-552(ra) # cb4 <print_dec>
     ee4:	fbdff06f          	j	ea0 <printf+0xc4>
     ee8:	f544a783          	lw	a5,-172(s1) # 5f54 <f_putchar>
     eec:	01751a63          	bne	a0,s7,f00 <printf+0x124>
     ef0:	00c12703          	lw	a4,12(sp)
     ef4:	00072503          	lw	a0,0(a4)
     ef8:	00470693          	addi	a3,a4,4
     efc:	00d12623          	sw	a3,12(sp)
     f00:	000780e7          	jalr	a5
     f04:	f9dff06f          	j	ea0 <printf+0xc4>
     f08:	f544a783          	lw	a5,-172(s1)
     f0c:	00040913          	mv	s2,s0
     f10:	000780e7          	jalr	a5
     f14:	f8dff06f          	j	ea0 <printf+0xc4>

00000f18 <__mulsi3>:
     f18:	00050793          	mv	a5,a0
     f1c:	00000513          	li	a0,0
     f20:	00079463          	bnez	a5,f28 <__mulsi3+0x10>
     f24:	00008067          	ret
     f28:	0017f713          	andi	a4,a5,1
     f2c:	00070463          	beqz	a4,f34 <__mulsi3+0x1c>
     f30:	00b50533          	add	a0,a0,a1
     f34:	0017d793          	srli	a5,a5,0x1
     f38:	00159593          	slli	a1,a1,0x1
     f3c:	fe5ff06f          	j	f20 <__mulsi3+0x8>

00000f40 <fat_list_insert_last>:
     f40:	00452783          	lw	a5,4(a0)
     f44:	04079263          	bnez	a5,f88 <fat_list_insert_last+0x48>
     f48:	00052783          	lw	a5,0(a0)
     f4c:	00079c63          	bnez	a5,f64 <fat_list_insert_last+0x24>
     f50:	00b52023          	sw	a1,0(a0)
     f54:	00b52223          	sw	a1,4(a0)
     f58:	0005a023          	sw	zero,0(a1)
     f5c:	0005a223          	sw	zero,4(a1)
     f60:	00008067          	ret
     f64:	0007a703          	lw	a4,0(a5)
     f68:	00f5a223          	sw	a5,4(a1)
     f6c:	00e5a023          	sw	a4,0(a1)
     f70:	00071863          	bnez	a4,f80 <fat_list_insert_last+0x40>
     f74:	00b52023          	sw	a1,0(a0)
     f78:	00b7a023          	sw	a1,0(a5)
     f7c:	00008067          	ret
     f80:	00b72223          	sw	a1,4(a4)
     f84:	ff5ff06f          	j	f78 <fat_list_insert_last+0x38>
     f88:	0047a703          	lw	a4,4(a5)
     f8c:	00f5a023          	sw	a5,0(a1)
     f90:	00e5a223          	sw	a4,4(a1)
     f94:	0047a703          	lw	a4,4(a5)
     f98:	00071863          	bnez	a4,fa8 <fat_list_insert_last+0x68>
     f9c:	00b52223          	sw	a1,4(a0)
     fa0:	00b7a223          	sw	a1,4(a5)
     fa4:	00008067          	ret
     fa8:	00b72023          	sw	a1,0(a4)
     fac:	ff5ff06f          	j	fa0 <fat_list_insert_last+0x60>

00000fb0 <FileString_StrCmpNoCase>:
     fb0:	00050313          	mv	t1,a0
     fb4:	00000793          	li	a5,0
     fb8:	01900e13          	li	t3,25
     fbc:	00f61663          	bne	a2,a5,fc8 <FileString_StrCmpNoCase+0x18>
     fc0:	00000513          	li	a0,0
     fc4:	0580006f          	j	101c <FileString_StrCmpNoCase+0x6c>
     fc8:	00f30733          	add	a4,t1,a5
     fcc:	00074883          	lbu	a7,0(a4)
     fd0:	00f58733          	add	a4,a1,a5
     fd4:	00074803          	lbu	a6,0(a4)
     fd8:	fbf88713          	addi	a4,a7,-65
     fdc:	0ff77713          	zext.b	a4,a4
     fe0:	00088693          	mv	a3,a7
     fe4:	00ee6663          	bltu	t3,a4,ff0 <FileString_StrCmpNoCase+0x40>
     fe8:	02088693          	addi	a3,a7,32
     fec:	0ff6f693          	zext.b	a3,a3
     ff0:	fbf80513          	addi	a0,a6,-65
     ff4:	0ff57513          	zext.b	a0,a0
     ff8:	00080713          	mv	a4,a6
     ffc:	00ae6663          	bltu	t3,a0,1008 <FileString_StrCmpNoCase+0x58>
    1000:	02080713          	addi	a4,a6,32
    1004:	0ff77713          	zext.b	a4,a4
    1008:	40e68533          	sub	a0,a3,a4
    100c:	00e69863          	bne	a3,a4,101c <FileString_StrCmpNoCase+0x6c>
    1010:	00088663          	beqz	a7,101c <FileString_StrCmpNoCase+0x6c>
    1014:	00178793          	addi	a5,a5,1
    1018:	fa0812e3          	bnez	a6,fbc <FileString_StrCmpNoCase+0xc>
    101c:	00008067          	ret

00001020 <FileString_GetExtension>:
    1020:	00050713          	mv	a4,a0
    1024:	00050793          	mv	a5,a0
    1028:	02e00613          	li	a2,46
    102c:	fff00513          	li	a0,-1
    1030:	0007c683          	lbu	a3,0(a5)
    1034:	00069463          	bnez	a3,103c <FileString_GetExtension+0x1c>
    1038:	00008067          	ret
    103c:	00c69463          	bne	a3,a2,1044 <FileString_GetExtension+0x24>
    1040:	40e78533          	sub	a0,a5,a4
    1044:	00178793          	addi	a5,a5,1
    1048:	fe9ff06f          	j	1030 <FileString_GetExtension+0x10>

0000104c <fatfs_fat_writeback>:
    104c:	00059663          	bnez	a1,1058 <fatfs_fat_writeback+0xc>
    1050:	00000513          	li	a0,0
    1054:	00008067          	ret
    1058:	2045a703          	lw	a4,516(a1)
    105c:	ff010113          	addi	sp,sp,-16
    1060:	00812423          	sw	s0,8(sp)
    1064:	00112623          	sw	ra,12(sp)
    1068:	00050793          	mv	a5,a0
    106c:	00058413          	mv	s0,a1
    1070:	00100513          	li	a0,1
    1074:	04070663          	beqz	a4,10c0 <fatfs_fat_writeback+0x74>
    1078:	0387a683          	lw	a3,56(a5)
    107c:	00069863          	bnez	a3,108c <fatfs_fat_writeback+0x40>
    1080:	20042223          	sw	zero,516(s0)
    1084:	00100513          	li	a0,1
    1088:	0380006f          	j	10c0 <fatfs_fat_writeback+0x74>
    108c:	2005a503          	lw	a0,512(a1)
    1090:	0147a703          	lw	a4,20(a5)
    1094:	0207a583          	lw	a1,32(a5)
    1098:	00100613          	li	a2,1
    109c:	40e507b3          	sub	a5,a0,a4
    10a0:	00178793          	addi	a5,a5,1
    10a4:	00f5f663          	bgeu	a1,a5,10b0 <fatfs_fat_writeback+0x64>
    10a8:	00b70733          	add	a4,a4,a1
    10ac:	40a70633          	sub	a2,a4,a0
    10b0:	00040593          	mv	a1,s0
    10b4:	000680e7          	jalr	a3
    10b8:	fc0514e3          	bnez	a0,1080 <fatfs_fat_writeback+0x34>
    10bc:	00000513          	li	a0,0
    10c0:	00c12083          	lw	ra,12(sp)
    10c4:	00812403          	lw	s0,8(sp)
    10c8:	01010113          	addi	sp,sp,16
    10cc:	00008067          	ret

000010d0 <fatfs_fat_read_sector>:
    10d0:	fe010113          	addi	sp,sp,-32
    10d4:	01212823          	sw	s2,16(sp)
    10d8:	25452903          	lw	s2,596(a0)
    10dc:	00812c23          	sw	s0,24(sp)
    10e0:	00912a23          	sw	s1,20(sp)
    10e4:	01312623          	sw	s3,12(sp)
    10e8:	00112e23          	sw	ra,28(sp)
    10ec:	00050993          	mv	s3,a0
    10f0:	00058493          	mv	s1,a1
    10f4:	00000413          	li	s0,0
    10f8:	06091863          	bnez	s2,1168 <fatfs_fat_read_sector+0x98>
    10fc:	2549a783          	lw	a5,596(s3)
    1100:	20f42623          	sw	a5,524(s0)
    1104:	20442783          	lw	a5,516(s0)
    1108:	2489aa23          	sw	s0,596(s3)
    110c:	00078c63          	beqz	a5,1124 <fatfs_fat_read_sector+0x54>
    1110:	00040593          	mv	a1,s0
    1114:	00098513          	mv	a0,s3
    1118:	00000097          	auipc	ra,0x0
    111c:	f34080e7          	jalr	-204(ra) # 104c <fatfs_fat_writeback>
    1120:	02050463          	beqz	a0,1148 <fatfs_fat_read_sector+0x78>
    1124:	0349a783          	lw	a5,52(s3)
    1128:	20942023          	sw	s1,512(s0)
    112c:	00100613          	li	a2,1
    1130:	00040593          	mv	a1,s0
    1134:	00048513          	mv	a0,s1
    1138:	000780e7          	jalr	a5
    113c:	06051063          	bnez	a0,119c <fatfs_fat_read_sector+0xcc>
    1140:	fff00793          	li	a5,-1
    1144:	20f42023          	sw	a5,512(s0)
    1148:	01c12083          	lw	ra,28(sp)
    114c:	01812403          	lw	s0,24(sp)
    1150:	01412483          	lw	s1,20(sp)
    1154:	00c12983          	lw	s3,12(sp)
    1158:	00090513          	mv	a0,s2
    115c:	01012903          	lw	s2,16(sp)
    1160:	02010113          	addi	sp,sp,32
    1164:	00008067          	ret
    1168:	20092783          	lw	a5,512(s2)
    116c:	00f4e663          	bltu	s1,a5,1178 <fatfs_fat_read_sector+0xa8>
    1170:	00178713          	addi	a4,a5,1
    1174:	02e4ea63          	bltu	s1,a4,11a8 <fatfs_fat_read_sector+0xd8>
    1178:	20c92783          	lw	a5,524(s2)
    117c:	00079663          	bnez	a5,1188 <fatfs_fat_read_sector+0xb8>
    1180:	00040a63          	beqz	s0,1194 <fatfs_fat_read_sector+0xc4>
    1184:	20042623          	sw	zero,524(s0)
    1188:	00090413          	mv	s0,s2
    118c:	20c92903          	lw	s2,524(s2)
    1190:	f69ff06f          	j	10f8 <fatfs_fat_read_sector+0x28>
    1194:	2409aa23          	sw	zero,596(s3)
    1198:	ff1ff06f          	j	1188 <fatfs_fat_read_sector+0xb8>
    119c:	20842423          	sw	s0,520(s0)
    11a0:	00040913          	mv	s2,s0
    11a4:	fa5ff06f          	j	1148 <fatfs_fat_read_sector+0x78>
    11a8:	40f484b3          	sub	s1,s1,a5
    11ac:	00949493          	slli	s1,s1,0x9
    11b0:	009904b3          	add	s1,s2,s1
    11b4:	20992423          	sw	s1,520(s2)
    11b8:	f91ff06f          	j	1148 <fatfs_fat_read_sector+0x78>

000011bc <fatfs_erase_fat>:
    11bc:	ff010113          	addi	sp,sp,-16
    11c0:	01212023          	sw	s2,0(sp)
    11c4:	04450913          	addi	s2,a0,68
    11c8:	00812423          	sw	s0,8(sp)
    11cc:	00912223          	sw	s1,4(sp)
    11d0:	00050413          	mv	s0,a0
    11d4:	00058493          	mv	s1,a1
    11d8:	20000613          	li	a2,512
    11dc:	00000593          	li	a1,0
    11e0:	00090513          	mv	a0,s2
    11e4:	00112623          	sw	ra,12(sp)
    11e8:	fffff097          	auipc	ra,0xfffff
    11ec:	500080e7          	jalr	1280(ra) # 6e8 <memset>
    11f0:	04049063          	bnez	s1,1230 <fatfs_erase_fat+0x74>
    11f4:	ff800793          	li	a5,-8
    11f8:	04f42223          	sw	a5,68(s0)
    11fc:	03842783          	lw	a5,56(s0)
    1200:	01442503          	lw	a0,20(s0)
    1204:	00100613          	li	a2,1
    1208:	00090593          	mv	a1,s2
    120c:	000780e7          	jalr	a5
    1210:	04051063          	bnez	a0,1250 <fatfs_erase_fat+0x94>
    1214:	00000513          	li	a0,0
    1218:	00c12083          	lw	ra,12(sp)
    121c:	00812403          	lw	s0,8(sp)
    1220:	00412483          	lw	s1,4(sp)
    1224:	00012903          	lw	s2,0(sp)
    1228:	01010113          	addi	sp,sp,16
    122c:	00008067          	ret
    1230:	100007b7          	lui	a5,0x10000
    1234:	ff878713          	addi	a4,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    1238:	04e42223          	sw	a4,68(s0)
    123c:	fff78793          	addi	a5,a5,-1
    1240:	fff00713          	li	a4,-1
    1244:	04e42423          	sw	a4,72(s0)
    1248:	04f42623          	sw	a5,76(s0)
    124c:	fb1ff06f          	j	11fc <fatfs_erase_fat+0x40>
    1250:	20000613          	li	a2,512
    1254:	00000593          	li	a1,0
    1258:	00090513          	mv	a0,s2
    125c:	fffff097          	auipc	ra,0xfffff
    1260:	48c080e7          	jalr	1164(ra) # 6e8 <memset>
    1264:	00100493          	li	s1,1
    1268:	02042583          	lw	a1,32(s0)
    126c:	02c44503          	lbu	a0,44(s0)
    1270:	00000097          	auipc	ra,0x0
    1274:	ca8080e7          	jalr	-856(ra) # f18 <__mulsi3>
    1278:	00a4e663          	bltu	s1,a0,1284 <fatfs_erase_fat+0xc8>
    127c:	00100513          	li	a0,1
    1280:	f99ff06f          	j	1218 <fatfs_erase_fat+0x5c>
    1284:	01442503          	lw	a0,20(s0)
    1288:	03842783          	lw	a5,56(s0)
    128c:	00100613          	li	a2,1
    1290:	00090593          	mv	a1,s2
    1294:	00a48533          	add	a0,s1,a0
    1298:	000780e7          	jalr	a5
    129c:	f6050ce3          	beqz	a0,1214 <fatfs_erase_fat+0x58>
    12a0:	00148493          	addi	s1,s1,1
    12a4:	fc5ff06f          	j	1268 <fatfs_erase_fat+0xac>

000012a8 <fatfs_erase_sectors>:
    12a8:	fe010113          	addi	sp,sp,-32
    12ac:	01412423          	sw	s4,8(sp)
    12b0:	04450a13          	addi	s4,a0,68
    12b4:	00912a23          	sw	s1,20(sp)
    12b8:	01212823          	sw	s2,16(sp)
    12bc:	01312623          	sw	s3,12(sp)
    12c0:	00050493          	mv	s1,a0
    12c4:	00058993          	mv	s3,a1
    12c8:	00060913          	mv	s2,a2
    12cc:	00000593          	li	a1,0
    12d0:	20000613          	li	a2,512
    12d4:	000a0513          	mv	a0,s4
    12d8:	00812c23          	sw	s0,24(sp)
    12dc:	00112e23          	sw	ra,28(sp)
    12e0:	00000413          	li	s0,0
    12e4:	fffff097          	auipc	ra,0xfffff
    12e8:	404080e7          	jalr	1028(ra) # 6e8 <memset>
    12ec:	03244463          	blt	s0,s2,1314 <fatfs_erase_sectors+0x6c>
    12f0:	00100513          	li	a0,1
    12f4:	01c12083          	lw	ra,28(sp)
    12f8:	01812403          	lw	s0,24(sp)
    12fc:	01412483          	lw	s1,20(sp)
    1300:	01012903          	lw	s2,16(sp)
    1304:	00c12983          	lw	s3,12(sp)
    1308:	00812a03          	lw	s4,8(sp)
    130c:	02010113          	addi	sp,sp,32
    1310:	00008067          	ret
    1314:	0384a783          	lw	a5,56(s1)
    1318:	00100613          	li	a2,1
    131c:	000a0593          	mv	a1,s4
    1320:	01340533          	add	a0,s0,s3
    1324:	000780e7          	jalr	a5
    1328:	fc0506e3          	beqz	a0,12f4 <fatfs_erase_sectors+0x4c>
    132c:	00140413          	addi	s0,s0,1
    1330:	fbdff06f          	j	12ec <fatfs_erase_sectors+0x44>

00001334 <_allocate_file>:
    1334:	ff010113          	addi	sp,sp,-16
    1338:	000067b7          	lui	a5,0x6
    133c:	00812423          	sw	s0,8(sp)
    1340:	f587a403          	lw	s0,-168(a5) # 5f58 <_free_file_list>
    1344:	00112623          	sw	ra,12(sp)
    1348:	02040e63          	beqz	s0,1384 <_allocate_file+0x50>
    134c:	00042703          	lw	a4,0(s0)
    1350:	00442683          	lw	a3,4(s0)
    1354:	f5878793          	addi	a5,a5,-168
    1358:	04071063          	bnez	a4,1398 <_allocate_file+0x64>
    135c:	00d7a023          	sw	a3,0(a5)
    1360:	00442683          	lw	a3,4(s0)
    1364:	02069e63          	bnez	a3,13a0 <_allocate_file+0x6c>
    1368:	00e7a223          	sw	a4,4(a5)
    136c:	00006537          	lui	a0,0x6
    1370:	00040593          	mv	a1,s0
    1374:	f6050513          	addi	a0,a0,-160 # 5f60 <_open_file_list>
    1378:	00000097          	auipc	ra,0x0
    137c:	bc8080e7          	jalr	-1080(ra) # f40 <fat_list_insert_last>
    1380:	bc440413          	addi	s0,s0,-1084
    1384:	00c12083          	lw	ra,12(sp)
    1388:	00040513          	mv	a0,s0
    138c:	00812403          	lw	s0,8(sp)
    1390:	01010113          	addi	sp,sp,16
    1394:	00008067          	ret
    1398:	00d72223          	sw	a3,4(a4)
    139c:	fc5ff06f          	j	1360 <_allocate_file+0x2c>
    13a0:	00e6a023          	sw	a4,0(a3)
    13a4:	fc9ff06f          	j	136c <_allocate_file+0x38>

000013a8 <_free_file>:
    13a8:	43c52783          	lw	a5,1084(a0)
    13ac:	44052703          	lw	a4,1088(a0)
    13b0:	43c50593          	addi	a1,a0,1084
    13b4:	02079663          	bnez	a5,13e0 <_free_file+0x38>
    13b8:	000066b7          	lui	a3,0x6
    13bc:	f6e6a023          	sw	a4,-160(a3) # 5f60 <_open_file_list>
    13c0:	44052703          	lw	a4,1088(a0)
    13c4:	02071263          	bnez	a4,13e8 <_free_file+0x40>
    13c8:	00006737          	lui	a4,0x6
    13cc:	f6f72223          	sw	a5,-156(a4) # 5f64 <_open_file_list+0x4>
    13d0:	00006537          	lui	a0,0x6
    13d4:	f5850513          	addi	a0,a0,-168 # 5f58 <_free_file_list>
    13d8:	00000317          	auipc	t1,0x0
    13dc:	b6830067          	jr	-1176(t1) # f40 <fat_list_insert_last>
    13e0:	00e7a223          	sw	a4,4(a5)
    13e4:	fddff06f          	j	13c0 <_free_file+0x18>
    13e8:	00f72023          	sw	a5,0(a4)
    13ec:	fe5ff06f          	j	13d0 <_free_file+0x28>

000013f0 <fatfs_lba_of_cluster>:
    13f0:	ff010113          	addi	sp,sp,-16
    13f4:	00812423          	sw	s0,8(sp)
    13f8:	00050413          	mv	s0,a0
    13fc:	00058513          	mv	a0,a1
    1400:	00044583          	lbu	a1,0(s0)
    1404:	ffe50513          	addi	a0,a0,-2
    1408:	00112623          	sw	ra,12(sp)
    140c:	00000097          	auipc	ra,0x0
    1410:	b0c080e7          	jalr	-1268(ra) # f18 <__mulsi3>
    1414:	00442783          	lw	a5,4(s0)
    1418:	00f50533          	add	a0,a0,a5
    141c:	03042783          	lw	a5,48(s0)
    1420:	00079863          	bnez	a5,1430 <fatfs_lba_of_cluster+0x40>
    1424:	02845783          	lhu	a5,40(s0)
    1428:	4047d793          	srai	a5,a5,0x4
    142c:	00f50533          	add	a0,a0,a5
    1430:	00c12083          	lw	ra,12(sp)
    1434:	00812403          	lw	s0,8(sp)
    1438:	01010113          	addi	sp,sp,16
    143c:	00008067          	ret

00001440 <fatfs_sector_read>:
    1440:	03452783          	lw	a5,52(a0)
    1444:	00058713          	mv	a4,a1
    1448:	00070513          	mv	a0,a4
    144c:	00060593          	mv	a1,a2
    1450:	00068613          	mv	a2,a3
    1454:	00078067          	jr	a5

00001458 <fatfs_sector_write>:
    1458:	03852783          	lw	a5,56(a0)
    145c:	00058713          	mv	a4,a1
    1460:	00070513          	mv	a0,a4
    1464:	00060593          	mv	a1,a2
    1468:	00068613          	mv	a2,a3
    146c:	00078067          	jr	a5

00001470 <fatfs_read_sector>:
    1470:	03052783          	lw	a5,48(a0)
    1474:	ff010113          	addi	sp,sp,-16
    1478:	00812423          	sw	s0,8(sp)
    147c:	00912223          	sw	s1,4(sp)
    1480:	01212023          	sw	s2,0(sp)
    1484:	00112623          	sw	ra,12(sp)
    1488:	00f5e7b3          	or	a5,a1,a5
    148c:	00050413          	mv	s0,a0
    1490:	00060493          	mv	s1,a2
    1494:	00068913          	mv	s2,a3
    1498:	04079263          	bnez	a5,14dc <fatfs_read_sector+0x6c>
    149c:	01052783          	lw	a5,16(a0)
    14a0:	04f67c63          	bgeu	a2,a5,14f8 <fatfs_read_sector+0x88>
    14a4:	01c52503          	lw	a0,28(a0)
    14a8:	00c42783          	lw	a5,12(s0)
    14ac:	00f50533          	add	a0,a0,a5
    14b0:	03442783          	lw	a5,52(s0)
    14b4:	00a48533          	add	a0,s1,a0
    14b8:	02090863          	beqz	s2,14e8 <fatfs_read_sector+0x78>
    14bc:	00100613          	li	a2,1
    14c0:	00090593          	mv	a1,s2
    14c4:	00812403          	lw	s0,8(sp)
    14c8:	00c12083          	lw	ra,12(sp)
    14cc:	00412483          	lw	s1,4(sp)
    14d0:	00012903          	lw	s2,0(sp)
    14d4:	01010113          	addi	sp,sp,16
    14d8:	00078067          	jr	a5
    14dc:	00000097          	auipc	ra,0x0
    14e0:	f14080e7          	jalr	-236(ra) # 13f0 <fatfs_lba_of_cluster>
    14e4:	fcdff06f          	j	14b0 <fatfs_read_sector+0x40>
    14e8:	24a42223          	sw	a0,580(s0)
    14ec:	00100613          	li	a2,1
    14f0:	04440593          	addi	a1,s0,68
    14f4:	fd1ff06f          	j	14c4 <fatfs_read_sector+0x54>
    14f8:	00c12083          	lw	ra,12(sp)
    14fc:	00812403          	lw	s0,8(sp)
    1500:	00412483          	lw	s1,4(sp)
    1504:	00012903          	lw	s2,0(sp)
    1508:	00000513          	li	a0,0
    150c:	01010113          	addi	sp,sp,16
    1510:	00008067          	ret

00001514 <fatfs_write_sector>:
    1514:	03852783          	lw	a5,56(a0)
    1518:	0a078863          	beqz	a5,15c8 <fatfs_write_sector+0xb4>
    151c:	fe010113          	addi	sp,sp,-32
    1520:	01212823          	sw	s2,16(sp)
    1524:	00068913          	mv	s2,a3
    1528:	03052683          	lw	a3,48(a0)
    152c:	00812c23          	sw	s0,24(sp)
    1530:	00912a23          	sw	s1,20(sp)
    1534:	00112e23          	sw	ra,28(sp)
    1538:	00d5e733          	or	a4,a1,a3
    153c:	00050413          	mv	s0,a0
    1540:	00060493          	mv	s1,a2
    1544:	04071063          	bnez	a4,1584 <fatfs_write_sector+0x70>
    1548:	01052703          	lw	a4,16(a0)
    154c:	06e67063          	bgeu	a2,a4,15ac <fatfs_write_sector+0x98>
    1550:	01c52503          	lw	a0,28(a0)
    1554:	00c42703          	lw	a4,12(s0)
    1558:	00e50533          	add	a0,a0,a4
    155c:	00c50533          	add	a0,a0,a2
    1560:	02090e63          	beqz	s2,159c <fatfs_write_sector+0x88>
    1564:	00100613          	li	a2,1
    1568:	00090593          	mv	a1,s2
    156c:	01812403          	lw	s0,24(sp)
    1570:	01c12083          	lw	ra,28(sp)
    1574:	01412483          	lw	s1,20(sp)
    1578:	01012903          	lw	s2,16(sp)
    157c:	02010113          	addi	sp,sp,32
    1580:	00078067          	jr	a5
    1584:	00f12623          	sw	a5,12(sp)
    1588:	00000097          	auipc	ra,0x0
    158c:	e68080e7          	jalr	-408(ra) # 13f0 <fatfs_lba_of_cluster>
    1590:	00c12783          	lw	a5,12(sp)
    1594:	00a48533          	add	a0,s1,a0
    1598:	fc9ff06f          	j	1560 <fatfs_write_sector+0x4c>
    159c:	24a42223          	sw	a0,580(s0)
    15a0:	00100613          	li	a2,1
    15a4:	04440593          	addi	a1,s0,68
    15a8:	fc5ff06f          	j	156c <fatfs_write_sector+0x58>
    15ac:	01c12083          	lw	ra,28(sp)
    15b0:	01812403          	lw	s0,24(sp)
    15b4:	01412483          	lw	s1,20(sp)
    15b8:	01012903          	lw	s2,16(sp)
    15bc:	00000513          	li	a0,0
    15c0:	02010113          	addi	sp,sp,32
    15c4:	00008067          	ret
    15c8:	00000513          	li	a0,0
    15cc:	00008067          	ret

000015d0 <fatfs_show_details>:
    15d0:	ff010113          	addi	sp,sp,-16
    15d4:	00812423          	sw	s0,8(sp)
    15d8:	00050413          	mv	s0,a0
    15dc:	00006537          	lui	a0,0x6
    15e0:	ddc50513          	addi	a0,a0,-548 # 5ddc <font+0x278>
    15e4:	00112623          	sw	ra,12(sp)
    15e8:	fffff097          	auipc	ra,0xfffff
    15ec:	7f4080e7          	jalr	2036(ra) # ddc <printf>
    15f0:	03042703          	lw	a4,48(s0)
    15f4:	00100793          	li	a5,1
    15f8:	06f70c63          	beq	a4,a5,1670 <fatfs_show_details+0xa0>
    15fc:	000065b7          	lui	a1,0x6
    1600:	dd458593          	addi	a1,a1,-556 # 5dd4 <font+0x270>
    1604:	00006537          	lui	a0,0x6
    1608:	dec50513          	addi	a0,a0,-532 # 5dec <font+0x288>
    160c:	fffff097          	auipc	ra,0xfffff
    1610:	7d0080e7          	jalr	2000(ra) # ddc <printf>
    1614:	00842583          	lw	a1,8(s0)
    1618:	00006537          	lui	a0,0x6
    161c:	df850513          	addi	a0,a0,-520 # 5df8 <font+0x294>
    1620:	fffff097          	auipc	ra,0xfffff
    1624:	7bc080e7          	jalr	1980(ra) # ddc <printf>
    1628:	01442583          	lw	a1,20(s0)
    162c:	00006537          	lui	a0,0x6
    1630:	e1850513          	addi	a0,a0,-488 # 5e18 <font+0x2b4>
    1634:	fffff097          	auipc	ra,0xfffff
    1638:	7a8080e7          	jalr	1960(ra) # ddc <printf>
    163c:	00442583          	lw	a1,4(s0)
    1640:	00006537          	lui	a0,0x6
    1644:	e3050513          	addi	a0,a0,-464 # 5e30 <font+0x2cc>
    1648:	fffff097          	auipc	ra,0xfffff
    164c:	794080e7          	jalr	1940(ra) # ddc <printf>
    1650:	00044583          	lbu	a1,0(s0)
    1654:	00812403          	lw	s0,8(sp)
    1658:	00c12083          	lw	ra,12(sp)
    165c:	00006537          	lui	a0,0x6
    1660:	e4c50513          	addi	a0,a0,-436 # 5e4c <font+0x2e8>
    1664:	01010113          	addi	sp,sp,16
    1668:	fffff317          	auipc	t1,0xfffff
    166c:	77430067          	jr	1908(t1) # ddc <printf>
    1670:	000065b7          	lui	a1,0x6
    1674:	dcc58593          	addi	a1,a1,-564 # 5dcc <font+0x268>
    1678:	f8dff06f          	j	1604 <fatfs_show_details+0x34>

0000167c <fatfs_get_root_cluster>:
    167c:	00852503          	lw	a0,8(a0)
    1680:	00008067          	ret

00001684 <fatfs_list_directory_start>:
    1684:	00c5a223          	sw	a2,4(a1)
    1688:	0005a023          	sw	zero,0(a1)
    168c:	00058423          	sb	zero,8(a1)
    1690:	00008067          	ret

00001694 <fatfs_cache_init>:
    1694:	00100513          	li	a0,1
    1698:	00008067          	ret

0000169c <fatfs_cache_get_next_cluster>:
    169c:	00000513          	li	a0,0
    16a0:	00008067          	ret

000016a4 <fatfs_cache_set_next_cluster>:
    16a4:	00100513          	li	a0,1
    16a8:	00008067          	ret

000016ac <fl_init>:
    16ac:	ff010113          	addi	sp,sp,-16
    16b0:	00812423          	sw	s0,8(sp)
    16b4:	00006437          	lui	s0,0x6
    16b8:	00112623          	sw	ra,12(sp)
    16bc:	f5840793          	addi	a5,s0,-168 # 5f58 <_free_file_list>
    16c0:	0007a223          	sw	zero,4(a5)
    16c4:	0007a023          	sw	zero,0(a5)
    16c8:	0000b5b7          	lui	a1,0xb
    16cc:	000067b7          	lui	a5,0x6
    16d0:	f6078793          	addi	a5,a5,-160 # 5f60 <_open_file_list>
    16d4:	f5840513          	addi	a0,s0,-168
    16d8:	a6858593          	addi	a1,a1,-1432 # aa68 <_files+0x43c>
    16dc:	0007a223          	sw	zero,4(a5)
    16e0:	0007a023          	sw	zero,0(a5)
    16e4:	00000097          	auipc	ra,0x0
    16e8:	85c080e7          	jalr	-1956(ra) # f40 <fat_list_insert_last>
    16ec:	0000b5b7          	lui	a1,0xb
    16f0:	f5840513          	addi	a0,s0,-168
    16f4:	eac58593          	addi	a1,a1,-340 # aeac <_files+0x880>
    16f8:	00000097          	auipc	ra,0x0
    16fc:	848080e7          	jalr	-1976(ra) # f40 <fat_list_insert_last>
    1700:	00c12083          	lw	ra,12(sp)
    1704:	00812403          	lw	s0,8(sp)
    1708:	000067b7          	lui	a5,0x6
    170c:	00100713          	li	a4,1
    1710:	f6e7a623          	sw	a4,-148(a5) # 5f6c <_filelib_init>
    1714:	01010113          	addi	sp,sp,16
    1718:	00008067          	ret

0000171c <fl_attach_locks>:
    171c:	0000a7b7          	lui	a5,0xa
    1720:	1c478793          	addi	a5,a5,452 # a1c4 <_fs>
    1724:	02a7ae23          	sw	a0,60(a5)
    1728:	04b7a023          	sw	a1,64(a5)
    172c:	00008067          	ret

00001730 <fl_fseek>:
    1730:	000067b7          	lui	a5,0x6
    1734:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    1738:	fe010113          	addi	sp,sp,-32
    173c:	00812c23          	sw	s0,24(sp)
    1740:	00912a23          	sw	s1,20(sp)
    1744:	01212823          	sw	s2,16(sp)
    1748:	00112e23          	sw	ra,28(sp)
    174c:	01312623          	sw	s3,12(sp)
    1750:	00050413          	mv	s0,a0
    1754:	00058913          	mv	s2,a1
    1758:	00060493          	mv	s1,a2
    175c:	00079663          	bnez	a5,1768 <fl_fseek+0x38>
    1760:	00000097          	auipc	ra,0x0
    1764:	f4c080e7          	jalr	-180(ra) # 16ac <fl_init>
    1768:	0c040c63          	beqz	s0,1840 <fl_fseek+0x110>
    176c:	00200793          	li	a5,2
    1770:	00f49463          	bne	s1,a5,1778 <fl_fseek+0x48>
    1774:	0c091663          	bnez	s2,1840 <fl_fseek+0x110>
    1778:	0000a7b7          	lui	a5,0xa
    177c:	1c478713          	addi	a4,a5,452 # a1c4 <_fs>
    1780:	03c72703          	lw	a4,60(a4)
    1784:	1c478993          	addi	s3,a5,452
    1788:	00070463          	beqz	a4,1790 <fl_fseek+0x60>
    178c:	000700e7          	jalr	a4
    1790:	fff00793          	li	a5,-1
    1794:	42f42823          	sw	a5,1072(s0)
    1798:	42042a23          	sw	zero,1076(s0)
    179c:	04049463          	bnez	s1,17e4 <fl_fseek+0xb4>
    17a0:	00c42783          	lw	a5,12(s0)
    17a4:	01242423          	sw	s2,8(s0)
    17a8:	0127e663          	bltu	a5,s2,17b4 <fl_fseek+0x84>
    17ac:	00000493          	li	s1,0
    17b0:	0080006f          	j	17b8 <fl_fseek+0x88>
    17b4:	00f42423          	sw	a5,8(s0)
    17b8:	0409a783          	lw	a5,64(s3)
    17bc:	00078463          	beqz	a5,17c4 <fl_fseek+0x94>
    17c0:	000780e7          	jalr	a5
    17c4:	01c12083          	lw	ra,28(sp)
    17c8:	01812403          	lw	s0,24(sp)
    17cc:	01012903          	lw	s2,16(sp)
    17d0:	00c12983          	lw	s3,12(sp)
    17d4:	00048513          	mv	a0,s1
    17d8:	01412483          	lw	s1,20(sp)
    17dc:	02010113          	addi	sp,sp,32
    17e0:	00008067          	ret
    17e4:	00100793          	li	a5,1
    17e8:	04f49063          	bne	s1,a5,1828 <fl_fseek+0xf8>
    17ec:	00842783          	lw	a5,8(s0)
    17f0:	00094e63          	bltz	s2,180c <fl_fseek+0xdc>
    17f4:	00f90933          	add	s2,s2,a5
    17f8:	00c42783          	lw	a5,12(s0)
    17fc:	01242423          	sw	s2,8(s0)
    1800:	fb27f6e3          	bgeu	a5,s2,17ac <fl_fseek+0x7c>
    1804:	00f42423          	sw	a5,8(s0)
    1808:	fa5ff06f          	j	17ac <fl_fseek+0x7c>
    180c:	41200733          	neg	a4,s2
    1810:	00e7f663          	bgeu	a5,a4,181c <fl_fseek+0xec>
    1814:	00042423          	sw	zero,8(s0)
    1818:	f95ff06f          	j	17ac <fl_fseek+0x7c>
    181c:	00f90933          	add	s2,s2,a5
    1820:	01242423          	sw	s2,8(s0)
    1824:	f89ff06f          	j	17ac <fl_fseek+0x7c>
    1828:	00200793          	li	a5,2
    182c:	00f49663          	bne	s1,a5,1838 <fl_fseek+0x108>
    1830:	00c42783          	lw	a5,12(s0)
    1834:	fd1ff06f          	j	1804 <fl_fseek+0xd4>
    1838:	fff00493          	li	s1,-1
    183c:	f7dff06f          	j	17b8 <fl_fseek+0x88>
    1840:	fff00493          	li	s1,-1
    1844:	f81ff06f          	j	17c4 <fl_fseek+0x94>

00001848 <fl_fgetpos>:
    1848:	06050663          	beqz	a0,18b4 <fl_fgetpos+0x6c>
    184c:	0000a7b7          	lui	a5,0xa
    1850:	1c478713          	addi	a4,a5,452 # a1c4 <_fs>
    1854:	03c72703          	lw	a4,60(a4)
    1858:	ff010113          	addi	sp,sp,-16
    185c:	00812423          	sw	s0,8(sp)
    1860:	00912223          	sw	s1,4(sp)
    1864:	01212023          	sw	s2,0(sp)
    1868:	00112623          	sw	ra,12(sp)
    186c:	00050493          	mv	s1,a0
    1870:	00058913          	mv	s2,a1
    1874:	1c478413          	addi	s0,a5,452
    1878:	00070463          	beqz	a4,1880 <fl_fgetpos+0x38>
    187c:	000700e7          	jalr	a4
    1880:	0084a783          	lw	a5,8(s1)
    1884:	00000513          	li	a0,0
    1888:	00f92023          	sw	a5,0(s2)
    188c:	04042783          	lw	a5,64(s0)
    1890:	00078663          	beqz	a5,189c <fl_fgetpos+0x54>
    1894:	000780e7          	jalr	a5
    1898:	00000513          	li	a0,0
    189c:	00c12083          	lw	ra,12(sp)
    18a0:	00812403          	lw	s0,8(sp)
    18a4:	00412483          	lw	s1,4(sp)
    18a8:	00012903          	lw	s2,0(sp)
    18ac:	01010113          	addi	sp,sp,16
    18b0:	00008067          	ret
    18b4:	fff00513          	li	a0,-1
    18b8:	00008067          	ret

000018bc <fl_ftell>:
    18bc:	fe010113          	addi	sp,sp,-32
    18c0:	00c10593          	addi	a1,sp,12
    18c4:	00112e23          	sw	ra,28(sp)
    18c8:	00012623          	sw	zero,12(sp)
    18cc:	00000097          	auipc	ra,0x0
    18d0:	f7c080e7          	jalr	-132(ra) # 1848 <fl_fgetpos>
    18d4:	01c12083          	lw	ra,28(sp)
    18d8:	00c12503          	lw	a0,12(sp)
    18dc:	02010113          	addi	sp,sp,32
    18e0:	00008067          	ret

000018e4 <fl_feof>:
    18e4:	06050663          	beqz	a0,1950 <fl_feof+0x6c>
    18e8:	0000a7b7          	lui	a5,0xa
    18ec:	1c478713          	addi	a4,a5,452 # a1c4 <_fs>
    18f0:	03c72703          	lw	a4,60(a4)
    18f4:	fe010113          	addi	sp,sp,-32
    18f8:	00812c23          	sw	s0,24(sp)
    18fc:	00912a23          	sw	s1,20(sp)
    1900:	00112e23          	sw	ra,28(sp)
    1904:	00050413          	mv	s0,a0
    1908:	1c478493          	addi	s1,a5,452
    190c:	00070463          	beqz	a4,1914 <fl_feof+0x30>
    1910:	000700e7          	jalr	a4
    1914:	00842783          	lw	a5,8(s0)
    1918:	00c42703          	lw	a4,12(s0)
    191c:	40e78533          	sub	a0,a5,a4
    1920:	0404a783          	lw	a5,64(s1)
    1924:	00153513          	seqz	a0,a0
    1928:	40a00533          	neg	a0,a0
    192c:	00078863          	beqz	a5,193c <fl_feof+0x58>
    1930:	00a12623          	sw	a0,12(sp)
    1934:	000780e7          	jalr	a5
    1938:	00c12503          	lw	a0,12(sp)
    193c:	01c12083          	lw	ra,28(sp)
    1940:	01812403          	lw	s0,24(sp)
    1944:	01412483          	lw	s1,20(sp)
    1948:	02010113          	addi	sp,sp,32
    194c:	00008067          	ret
    1950:	fff00513          	li	a0,-1
    1954:	00008067          	ret

00001958 <fl_closedir>:
    1958:	00000513          	li	a0,0
    195c:	00008067          	ret

00001960 <fatfs_lfn_cache_init>:
    1960:	100502a3          	sb	zero,261(a0)
    1964:	04058663          	beqz	a1,19b0 <fatfs_lfn_cache_init+0x50>
    1968:	ff010113          	addi	sp,sp,-16
    196c:	00812423          	sw	s0,8(sp)
    1970:	00912223          	sw	s1,4(sp)
    1974:	00112623          	sw	ra,12(sp)
    1978:	00050413          	mv	s0,a0
    197c:	10450493          	addi	s1,a0,260
    1980:	00040513          	mv	a0,s0
    1984:	00d00613          	li	a2,13
    1988:	00000593          	li	a1,0
    198c:	00d40413          	addi	s0,s0,13
    1990:	fffff097          	auipc	ra,0xfffff
    1994:	d58080e7          	jalr	-680(ra) # 6e8 <memset>
    1998:	fe9414e3          	bne	s0,s1,1980 <fatfs_lfn_cache_init+0x20>
    199c:	00c12083          	lw	ra,12(sp)
    19a0:	00812403          	lw	s0,8(sp)
    19a4:	00412483          	lw	s1,4(sp)
    19a8:	01010113          	addi	sp,sp,16
    19ac:	00008067          	ret
    19b0:	00008067          	ret

000019b4 <fatfs_lfn_cache_entry>:
    19b4:	0005c783          	lbu	a5,0(a1)
    19b8:	01300693          	li	a3,19
    19bc:	01f7f793          	andi	a5,a5,31
    19c0:	fff78713          	addi	a4,a5,-1
    19c4:	0ff77613          	zext.b	a2,a4
    19c8:	0ac6ea63          	bltu	a3,a2,1a7c <fatfs_lfn_cache_entry+0xc8>
    19cc:	10554683          	lbu	a3,261(a0)
    19d0:	00069463          	bnez	a3,19d8 <fatfs_lfn_cache_entry+0x24>
    19d4:	10f502a3          	sb	a5,261(a0)
    19d8:	00171793          	slli	a5,a4,0x1
    19dc:	00e787b3          	add	a5,a5,a4
    19e0:	0015c683          	lbu	a3,1(a1)
    19e4:	00279793          	slli	a5,a5,0x2
    19e8:	00e787b3          	add	a5,a5,a4
    19ec:	00f50533          	add	a0,a0,a5
    19f0:	00d50023          	sb	a3,0(a0)
    19f4:	0035c783          	lbu	a5,3(a1)
    19f8:	0ff00713          	li	a4,255
    19fc:	02000693          	li	a3,32
    1a00:	00f500a3          	sb	a5,1(a0)
    1a04:	0055c783          	lbu	a5,5(a1)
    1a08:	00f50123          	sb	a5,2(a0)
    1a0c:	0075c783          	lbu	a5,7(a1)
    1a10:	00f501a3          	sb	a5,3(a0)
    1a14:	0095c783          	lbu	a5,9(a1)
    1a18:	00f50223          	sb	a5,4(a0)
    1a1c:	00e5c783          	lbu	a5,14(a1)
    1a20:	00f502a3          	sb	a5,5(a0)
    1a24:	0105c783          	lbu	a5,16(a1)
    1a28:	00f50323          	sb	a5,6(a0)
    1a2c:	0125c783          	lbu	a5,18(a1)
    1a30:	00f503a3          	sb	a5,7(a0)
    1a34:	0145c783          	lbu	a5,20(a1)
    1a38:	00f50423          	sb	a5,8(a0)
    1a3c:	0165c783          	lbu	a5,22(a1)
    1a40:	00f504a3          	sb	a5,9(a0)
    1a44:	0185c783          	lbu	a5,24(a1)
    1a48:	00f50523          	sb	a5,10(a0)
    1a4c:	01c5c783          	lbu	a5,28(a1)
    1a50:	00f505a3          	sb	a5,11(a0)
    1a54:	01e5c783          	lbu	a5,30(a1)
    1a58:	00f50623          	sb	a5,12(a0)
    1a5c:	00d00793          	li	a5,13
    1a60:	00054603          	lbu	a2,0(a0)
    1a64:	00e61463          	bne	a2,a4,1a6c <fatfs_lfn_cache_entry+0xb8>
    1a68:	00d50023          	sb	a3,0(a0)
    1a6c:	fff78793          	addi	a5,a5,-1
    1a70:	0ff7f793          	zext.b	a5,a5
    1a74:	00150513          	addi	a0,a0,1
    1a78:	fe0794e3          	bnez	a5,1a60 <fatfs_lfn_cache_entry+0xac>
    1a7c:	00008067          	ret

00001a80 <fatfs_lfn_cache_get>:
    1a80:	10554703          	lbu	a4,261(a0)
    1a84:	01400793          	li	a5,20
    1a88:	00f71663          	bne	a4,a5,1a94 <fatfs_lfn_cache_get+0x14>
    1a8c:	10050223          	sb	zero,260(a0)
    1a90:	00008067          	ret
    1a94:	02070063          	beqz	a4,1ab4 <fatfs_lfn_cache_get+0x34>
    1a98:	00171793          	slli	a5,a4,0x1
    1a9c:	00e787b3          	add	a5,a5,a4
    1aa0:	00279793          	slli	a5,a5,0x2
    1aa4:	00e787b3          	add	a5,a5,a4
    1aa8:	00f507b3          	add	a5,a0,a5
    1aac:	00078023          	sb	zero,0(a5)
    1ab0:	00008067          	ret
    1ab4:	00050023          	sb	zero,0(a0)
    1ab8:	00008067          	ret

00001abc <fatfs_entry_lfn_text>:
    1abc:	00b54503          	lbu	a0,11(a0)
    1ac0:	00f57513          	andi	a0,a0,15
    1ac4:	ff150513          	addi	a0,a0,-15
    1ac8:	00153513          	seqz	a0,a0
    1acc:	00008067          	ret

00001ad0 <fatfs_entry_lfn_invalid>:
    1ad0:	00054703          	lbu	a4,0(a0)
    1ad4:	00050793          	mv	a5,a0
    1ad8:	02070463          	beqz	a4,1b00 <fatfs_entry_lfn_invalid+0x30>
    1adc:	0e500693          	li	a3,229
    1ae0:	00100513          	li	a0,1
    1ae4:	02d70063          	beq	a4,a3,1b04 <fatfs_entry_lfn_invalid+0x34>
    1ae8:	00b7c783          	lbu	a5,11(a5)
    1aec:	00800713          	li	a4,8
    1af0:	00e78a63          	beq	a5,a4,1b04 <fatfs_entry_lfn_invalid+0x34>
    1af4:	0067f793          	andi	a5,a5,6
    1af8:	00f03533          	snez	a0,a5
    1afc:	00008067          	ret
    1b00:	00100513          	li	a0,1
    1b04:	00008067          	ret

00001b08 <fatfs_entry_lfn_exists>:
    1b08:	00b5c783          	lbu	a5,11(a1)
    1b0c:	00f00693          	li	a3,15
    1b10:	00050713          	mv	a4,a0
    1b14:	02d78a63          	beq	a5,a3,1b48 <fatfs_entry_lfn_exists+0x40>
    1b18:	0005c683          	lbu	a3,0(a1)
    1b1c:	00000513          	li	a0,0
    1b20:	02068663          	beqz	a3,1b4c <fatfs_entry_lfn_exists+0x44>
    1b24:	0e500613          	li	a2,229
    1b28:	02c68263          	beq	a3,a2,1b4c <fatfs_entry_lfn_exists+0x44>
    1b2c:	00800693          	li	a3,8
    1b30:	00d78e63          	beq	a5,a3,1b4c <fatfs_entry_lfn_exists+0x44>
    1b34:	0067f793          	andi	a5,a5,6
    1b38:	00079a63          	bnez	a5,1b4c <fatfs_entry_lfn_exists+0x44>
    1b3c:	10574503          	lbu	a0,261(a4)
    1b40:	00a03533          	snez	a0,a0
    1b44:	00008067          	ret
    1b48:	00000513          	li	a0,0
    1b4c:	00008067          	ret

00001b50 <fatfs_entry_sfn_only>:
    1b50:	00b54783          	lbu	a5,11(a0)
    1b54:	00f00713          	li	a4,15
    1b58:	02e78663          	beq	a5,a4,1b84 <fatfs_entry_sfn_only+0x34>
    1b5c:	00054703          	lbu	a4,0(a0)
    1b60:	00000513          	li	a0,0
    1b64:	02070263          	beqz	a4,1b88 <fatfs_entry_sfn_only+0x38>
    1b68:	0e500693          	li	a3,229
    1b6c:	00d70e63          	beq	a4,a3,1b88 <fatfs_entry_sfn_only+0x38>
    1b70:	00800713          	li	a4,8
    1b74:	00e78a63          	beq	a5,a4,1b88 <fatfs_entry_sfn_only+0x38>
    1b78:	0067f793          	andi	a5,a5,6
    1b7c:	0017b513          	seqz	a0,a5
    1b80:	00008067          	ret
    1b84:	00000513          	li	a0,0
    1b88:	00008067          	ret

00001b8c <fatfs_entry_is_dir>:
    1b8c:	00b54503          	lbu	a0,11(a0)
    1b90:	00455513          	srli	a0,a0,0x4
    1b94:	00157513          	andi	a0,a0,1
    1b98:	00008067          	ret

00001b9c <fatfs_entry_is_file>:
    1b9c:	00b54503          	lbu	a0,11(a0)
    1ba0:	00555513          	srli	a0,a0,0x5
    1ba4:	00157513          	andi	a0,a0,1
    1ba8:	00008067          	ret

00001bac <fatfs_lfn_entries_required>:
    1bac:	ff010113          	addi	sp,sp,-16
    1bb0:	00112623          	sw	ra,12(sp)
    1bb4:	fffff097          	auipc	ra,0xfffff
    1bb8:	b74080e7          	jalr	-1164(ra) # 728 <strlen>
    1bbc:	00050a63          	beqz	a0,1bd0 <fatfs_lfn_entries_required+0x24>
    1bc0:	00d00593          	li	a1,13
    1bc4:	00c50513          	addi	a0,a0,12
    1bc8:	fffff097          	auipc	ra,0xfffff
    1bcc:	a44080e7          	jalr	-1468(ra) # 60c <__divsi3>
    1bd0:	00c12083          	lw	ra,12(sp)
    1bd4:	01010113          	addi	sp,sp,16
    1bd8:	00008067          	ret

00001bdc <fatfs_filename_to_lfn>:
    1bdc:	fa010113          	addi	sp,sp,-96
    1be0:	04912a23          	sw	s1,84(sp)
    1be4:	00058493          	mv	s1,a1
    1be8:	000065b7          	lui	a1,0x6
    1bec:	d4458593          	addi	a1,a1,-700 # 5d44 <font+0x1e0>
    1bf0:	05212823          	sw	s2,80(sp)
    1bf4:	05312623          	sw	s3,76(sp)
    1bf8:	00060913          	mv	s2,a2
    1bfc:	00050993          	mv	s3,a0
    1c00:	03400613          	li	a2,52
    1c04:	00c10513          	addi	a0,sp,12
    1c08:	04112e23          	sw	ra,92(sp)
    1c0c:	04812c23          	sw	s0,88(sp)
    1c10:	05412423          	sw	s4,72(sp)
    1c14:	05512223          	sw	s5,68(sp)
    1c18:	05612023          	sw	s6,64(sp)
    1c1c:	00068b13          	mv	s6,a3
    1c20:	fffff097          	auipc	ra,0xfffff
    1c24:	ae4080e7          	jalr	-1308(ra) # 704 <memcpy>
    1c28:	00098513          	mv	a0,s3
    1c2c:	fffff097          	auipc	ra,0xfffff
    1c30:	afc080e7          	jalr	-1284(ra) # 728 <strlen>
    1c34:	00050a93          	mv	s5,a0
    1c38:	00098513          	mv	a0,s3
    1c3c:	00000097          	auipc	ra,0x0
    1c40:	f70080e7          	jalr	-144(ra) # 1bac <fatfs_lfn_entries_required>
    1c44:	00191793          	slli	a5,s2,0x1
    1c48:	012787b3          	add	a5,a5,s2
    1c4c:	00279793          	slli	a5,a5,0x2
    1c50:	00050a13          	mv	s4,a0
    1c54:	02000613          	li	a2,32
    1c58:	00000593          	li	a1,0
    1c5c:	00048513          	mv	a0,s1
    1c60:	01278433          	add	s0,a5,s2
    1c64:	fffff097          	auipc	ra,0xfffff
    1c68:	a84080e7          	jalr	-1404(ra) # 6e8 <memset>
    1c6c:	00190793          	addi	a5,s2,1
    1c70:	fffa0a13          	addi	s4,s4,-1 # 3fff <fl_listdirectory+0xdb>
    1c74:	0ff7f793          	zext.b	a5,a5
    1c78:	012a1463          	bne	s4,s2,1c80 <fatfs_filename_to_lfn+0xa4>
    1c7c:	0407e793          	ori	a5,a5,64
    1c80:	00f48023          	sb	a5,0(s1)
    1c84:	00f00793          	li	a5,15
    1c88:	00f485a3          	sb	a5,11(s1)
    1c8c:	016486a3          	sb	s6,13(s1)
    1c90:	00c10713          	addi	a4,sp,12
    1c94:	00040793          	mv	a5,s0
    1c98:	00d40593          	addi	a1,s0,13
    1c9c:	fff00613          	li	a2,-1
    1ca0:	00072683          	lw	a3,0(a4)
    1ca4:	00d486b3          	add	a3,s1,a3
    1ca8:	0557d263          	bge	a5,s5,1cec <fatfs_filename_to_lfn+0x110>
    1cac:	00f98533          	add	a0,s3,a5
    1cb0:	00054503          	lbu	a0,0(a0)
    1cb4:	00a68023          	sb	a0,0(a3)
    1cb8:	00178793          	addi	a5,a5,1
    1cbc:	00470713          	addi	a4,a4,4
    1cc0:	feb790e3          	bne	a5,a1,1ca0 <fatfs_filename_to_lfn+0xc4>
    1cc4:	05c12083          	lw	ra,92(sp)
    1cc8:	05812403          	lw	s0,88(sp)
    1ccc:	05412483          	lw	s1,84(sp)
    1cd0:	05012903          	lw	s2,80(sp)
    1cd4:	04c12983          	lw	s3,76(sp)
    1cd8:	04812a03          	lw	s4,72(sp)
    1cdc:	04412a83          	lw	s5,68(sp)
    1ce0:	04012b03          	lw	s6,64(sp)
    1ce4:	06010113          	addi	sp,sp,96
    1ce8:	00008067          	ret
    1cec:	00fa9663          	bne	s5,a5,1cf8 <fatfs_filename_to_lfn+0x11c>
    1cf0:	00068023          	sb	zero,0(a3)
    1cf4:	fc5ff06f          	j	1cb8 <fatfs_filename_to_lfn+0xdc>
    1cf8:	00c68023          	sb	a2,0(a3)
    1cfc:	00c680a3          	sb	a2,1(a3)
    1d00:	fb9ff06f          	j	1cb8 <fatfs_filename_to_lfn+0xdc>

00001d04 <fatfs_sfn_create_entry>:
    1d04:	00000793          	li	a5,0
    1d08:	00b00813          	li	a6,11
    1d0c:	00f508b3          	add	a7,a0,a5
    1d10:	0008c303          	lbu	t1,0(a7)
    1d14:	00f688b3          	add	a7,a3,a5
    1d18:	00178793          	addi	a5,a5,1
    1d1c:	00688023          	sb	t1,0(a7)
    1d20:	ff0796e3          	bne	a5,a6,1d0c <fatfs_sfn_create_entry+0x8>
    1d24:	02000793          	li	a5,32
    1d28:	000686a3          	sb	zero,13(a3)
    1d2c:	00068723          	sb	zero,14(a3)
    1d30:	000687a3          	sb	zero,15(a3)
    1d34:	000688a3          	sb	zero,17(a3)
    1d38:	00f68823          	sb	a5,16(a3)
    1d3c:	000689a3          	sb	zero,19(a3)
    1d40:	00f68923          	sb	a5,18(a3)
    1d44:	00068b23          	sb	zero,22(a3)
    1d48:	00068ba3          	sb	zero,23(a3)
    1d4c:	00068ca3          	sb	zero,25(a3)
    1d50:	00f68c23          	sb	a5,24(a3)
    1d54:	00070463          	beqz	a4,1d5c <fatfs_sfn_create_entry+0x58>
    1d58:	01000793          	li	a5,16
    1d5c:	00f685a3          	sb	a5,11(a3)
    1d60:	01065793          	srli	a5,a2,0x10
    1d64:	00f68a23          	sb	a5,20(a3)
    1d68:	0087d793          	srli	a5,a5,0x8
    1d6c:	00f68aa3          	sb	a5,21(a3)
    1d70:	01061793          	slli	a5,a2,0x10
    1d74:	0107d793          	srli	a5,a5,0x10
    1d78:	0087d793          	srli	a5,a5,0x8
    1d7c:	00f68da3          	sb	a5,27(a3)
    1d80:	0085d793          	srli	a5,a1,0x8
    1d84:	00b68e23          	sb	a1,28(a3)
    1d88:	00f68ea3          	sb	a5,29(a3)
    1d8c:	0105d793          	srli	a5,a1,0x10
    1d90:	0185d593          	srli	a1,a1,0x18
    1d94:	00068623          	sb	zero,12(a3)
    1d98:	00c68d23          	sb	a2,26(a3)
    1d9c:	00f68f23          	sb	a5,30(a3)
    1da0:	00b68fa3          	sb	a1,31(a3)
    1da4:	00008067          	ret

00001da8 <fatfs_lfn_create_sfn>:
    1da8:	0005c703          	lbu	a4,0(a1)
    1dac:	02e00793          	li	a5,46
    1db0:	16f70463          	beq	a4,a5,1f18 <fatfs_lfn_create_sfn+0x170>
    1db4:	fe010113          	addi	sp,sp,-32
    1db8:	00912a23          	sw	s1,20(sp)
    1dbc:	00050493          	mv	s1,a0
    1dc0:	00058513          	mv	a0,a1
    1dc4:	00112e23          	sw	ra,28(sp)
    1dc8:	00812c23          	sw	s0,24(sp)
    1dcc:	01212823          	sw	s2,16(sp)
    1dd0:	00058413          	mv	s0,a1
    1dd4:	fffff097          	auipc	ra,0xfffff
    1dd8:	954080e7          	jalr	-1708(ra) # 728 <strlen>
    1ddc:	00b00613          	li	a2,11
    1de0:	02000593          	li	a1,32
    1de4:	00050913          	mv	s2,a0
    1de8:	00048513          	mv	a0,s1
    1dec:	fffff097          	auipc	ra,0xfffff
    1df0:	8fc080e7          	jalr	-1796(ra) # 6e8 <memset>
    1df4:	00300613          	li	a2,3
    1df8:	02000593          	li	a1,32
    1dfc:	00c10513          	addi	a0,sp,12
    1e00:	fffff097          	auipc	ra,0xfffff
    1e04:	8e8080e7          	jalr	-1816(ra) # 6e8 <memset>
    1e08:	fff00713          	li	a4,-1
    1e0c:	00000793          	li	a5,0
    1e10:	02e00693          	li	a3,46
    1e14:	0d27c063          	blt	a5,s2,1ed4 <fatfs_lfn_create_sfn+0x12c>
    1e18:	fff00793          	li	a5,-1
    1e1c:	0ef70663          	beq	a4,a5,1f08 <fatfs_lfn_create_sfn+0x160>
    1e20:	00170793          	addi	a5,a4,1
    1e24:	00c10693          	addi	a3,sp,12
    1e28:	00470613          	addi	a2,a4,4
    1e2c:	0cf61063          	bne	a2,a5,1eec <fatfs_lfn_create_sfn+0x144>
    1e30:	00000613          	li	a2,0
    1e34:	00000693          	li	a3,0
    1e38:	02000813          	li	a6,32
    1e3c:	02e00893          	li	a7,46
    1e40:	01900313          	li	t1,25
    1e44:	00800e13          	li	t3,8
    1e48:	02e6da63          	bge	a3,a4,1e7c <fatfs_lfn_create_sfn+0xd4>
    1e4c:	00d407b3          	add	a5,s0,a3
    1e50:	0007c783          	lbu	a5,0(a5)
    1e54:	03078263          	beq	a5,a6,1e78 <fatfs_lfn_create_sfn+0xd0>
    1e58:	03178063          	beq	a5,a7,1e78 <fatfs_lfn_create_sfn+0xd0>
    1e5c:	f9f78593          	addi	a1,a5,-97
    1e60:	0ff5f593          	zext.b	a1,a1
    1e64:	00c48533          	add	a0,s1,a2
    1e68:	00160613          	addi	a2,a2,1
    1e6c:	00b36463          	bltu	t1,a1,1e74 <fatfs_lfn_create_sfn+0xcc>
    1e70:	fe078793          	addi	a5,a5,-32
    1e74:	00f50023          	sb	a5,0(a0)
    1e78:	09c61c63          	bne	a2,t3,1f10 <fatfs_lfn_create_sfn+0x168>
    1e7c:	00c10793          	addi	a5,sp,12
    1e80:	00800693          	li	a3,8
    1e84:	01900513          	li	a0,25
    1e88:	00b00593          	li	a1,11
    1e8c:	0007c703          	lbu	a4,0(a5)
    1e90:	f9f70613          	addi	a2,a4,-97
    1e94:	0ff67613          	zext.b	a2,a2
    1e98:	00c56663          	bltu	a0,a2,1ea4 <fatfs_lfn_create_sfn+0xfc>
    1e9c:	fe070713          	addi	a4,a4,-32
    1ea0:	0ff77713          	zext.b	a4,a4
    1ea4:	00d48633          	add	a2,s1,a3
    1ea8:	00e60023          	sb	a4,0(a2)
    1eac:	00168693          	addi	a3,a3,1
    1eb0:	00178793          	addi	a5,a5,1
    1eb4:	fcb69ce3          	bne	a3,a1,1e8c <fatfs_lfn_create_sfn+0xe4>
    1eb8:	01c12083          	lw	ra,28(sp)
    1ebc:	01812403          	lw	s0,24(sp)
    1ec0:	01412483          	lw	s1,20(sp)
    1ec4:	01012903          	lw	s2,16(sp)
    1ec8:	00100513          	li	a0,1
    1ecc:	02010113          	addi	sp,sp,32
    1ed0:	00008067          	ret
    1ed4:	00f40633          	add	a2,s0,a5
    1ed8:	00064603          	lbu	a2,0(a2)
    1edc:	00d61463          	bne	a2,a3,1ee4 <fatfs_lfn_create_sfn+0x13c>
    1ee0:	00078713          	mv	a4,a5
    1ee4:	00178793          	addi	a5,a5,1
    1ee8:	f2dff06f          	j	1e14 <fatfs_lfn_create_sfn+0x6c>
    1eec:	0127d863          	bge	a5,s2,1efc <fatfs_lfn_create_sfn+0x154>
    1ef0:	00f405b3          	add	a1,s0,a5
    1ef4:	0005c583          	lbu	a1,0(a1)
    1ef8:	00b68023          	sb	a1,0(a3)
    1efc:	00178793          	addi	a5,a5,1
    1f00:	00168693          	addi	a3,a3,1
    1f04:	f29ff06f          	j	1e2c <fatfs_lfn_create_sfn+0x84>
    1f08:	00090713          	mv	a4,s2
    1f0c:	f25ff06f          	j	1e30 <fatfs_lfn_create_sfn+0x88>
    1f10:	00168693          	addi	a3,a3,1
    1f14:	f35ff06f          	j	1e48 <fatfs_lfn_create_sfn+0xa0>
    1f18:	00000513          	li	a0,0
    1f1c:	00008067          	ret

00001f20 <fatfs_lfn_generate_tail>:
    1f20:	000187b7          	lui	a5,0x18
    1f24:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1f28:	16c7e063          	bltu	a5,a2,2088 <fatfs_lfn_generate_tail+0x168>
    1f2c:	fa010113          	addi	sp,sp,-96
    1f30:	04812c23          	sw	s0,88(sp)
    1f34:	04912a23          	sw	s1,84(sp)
    1f38:	05412423          	sw	s4,72(sp)
    1f3c:	00050493          	mv	s1,a0
    1f40:	00058a13          	mv	s4,a1
    1f44:	00060413          	mv	s0,a2
    1f48:	00000593          	li	a1,0
    1f4c:	00c00613          	li	a2,12
    1f50:	00410513          	addi	a0,sp,4
    1f54:	04112e23          	sw	ra,92(sp)
    1f58:	05212823          	sw	s2,80(sp)
    1f5c:	05512223          	sw	s5,68(sp)
    1f60:	03712e23          	sw	s7,60(sp)
    1f64:	05312623          	sw	s3,76(sp)
    1f68:	05612023          	sw	s6,64(sp)
    1f6c:	ffffe097          	auipc	ra,0xffffe
    1f70:	77c080e7          	jalr	1916(ra) # 6e8 <memset>
    1f74:	000065b7          	lui	a1,0x6
    1f78:	07e00793          	li	a5,126
    1f7c:	01100613          	li	a2,17
    1f80:	db858593          	addi	a1,a1,-584 # 5db8 <font+0x254>
    1f84:	01c10513          	addi	a0,sp,28
    1f88:	01010913          	addi	s2,sp,16
    1f8c:	00f10223          	sb	a5,4(sp)
    1f90:	00090a93          	mv	s5,s2
    1f94:	ffffe097          	auipc	ra,0xffffe
    1f98:	770080e7          	jalr	1904(ra) # 704 <memcpy>
    1f9c:	00900b93          	li	s7,9
    1fa0:	00a00593          	li	a1,10
    1fa4:	00040513          	mv	a0,s0
    1fa8:	ffffe097          	auipc	ra,0xffffe
    1fac:	6b4080e7          	jalr	1716(ra) # 65c <__umodsi3>
    1fb0:	03050793          	addi	a5,a0,48
    1fb4:	00278533          	add	a0,a5,sp
    1fb8:	fec54783          	lbu	a5,-20(a0)
    1fbc:	00090993          	mv	s3,s2
    1fc0:	00040513          	mv	a0,s0
    1fc4:	00a00593          	li	a1,10
    1fc8:	00f90023          	sb	a5,0(s2)
    1fcc:	00040b13          	mv	s6,s0
    1fd0:	ffffe097          	auipc	ra,0xffffe
    1fd4:	644080e7          	jalr	1604(ra) # 614 <__udivsi3>
    1fd8:	00190913          	addi	s2,s2,1
    1fdc:	00050413          	mv	s0,a0
    1fe0:	fd6be0e3          	bltu	s7,s6,1fa0 <fatfs_lfn_generate_tail+0x80>
    1fe4:	00090023          	sb	zero,0(s2)
    1fe8:	00410713          	addi	a4,sp,4
    1fec:	00098793          	mv	a5,s3
    1ff0:	0007c683          	lbu	a3,0(a5)
    1ff4:	fff78793          	addi	a5,a5,-1
    1ff8:	00170713          	addi	a4,a4,1
    1ffc:	00d70023          	sb	a3,0(a4)
    2000:	ff57f8e3          	bgeu	a5,s5,1ff0 <fatfs_lfn_generate_tail+0xd0>
    2004:	00100793          	li	a5,1
    2008:	0159e663          	bltu	s3,s5,2014 <fatfs_lfn_generate_tail+0xf4>
    200c:	415787b3          	sub	a5,a5,s5
    2010:	00f987b3          	add	a5,s3,a5
    2014:	03078793          	addi	a5,a5,48
    2018:	002787b3          	add	a5,a5,sp
    201c:	000a0593          	mv	a1,s4
    2020:	fc078aa3          	sb	zero,-43(a5)
    2024:	00b00613          	li	a2,11
    2028:	00048513          	mv	a0,s1
    202c:	ffffe097          	auipc	ra,0xffffe
    2030:	6d8080e7          	jalr	1752(ra) # 704 <memcpy>
    2034:	00410513          	addi	a0,sp,4
    2038:	ffffe097          	auipc	ra,0xffffe
    203c:	6f0080e7          	jalr	1776(ra) # 728 <strlen>
    2040:	40a484b3          	sub	s1,s1,a0
    2044:	00050613          	mv	a2,a0
    2048:	00410593          	addi	a1,sp,4
    204c:	00848513          	addi	a0,s1,8
    2050:	ffffe097          	auipc	ra,0xffffe
    2054:	6b4080e7          	jalr	1716(ra) # 704 <memcpy>
    2058:	05c12083          	lw	ra,92(sp)
    205c:	05812403          	lw	s0,88(sp)
    2060:	05412483          	lw	s1,84(sp)
    2064:	05012903          	lw	s2,80(sp)
    2068:	04c12983          	lw	s3,76(sp)
    206c:	04812a03          	lw	s4,72(sp)
    2070:	04412a83          	lw	s5,68(sp)
    2074:	04012b03          	lw	s6,64(sp)
    2078:	03c12b83          	lw	s7,60(sp)
    207c:	00100513          	li	a0,1
    2080:	06010113          	addi	sp,sp,96
    2084:	00008067          	ret
    2088:	00000513          	li	a0,0
    208c:	00008067          	ret

00002090 <fatfs_total_path_levels>:
    2090:	00050793          	mv	a5,a0
    2094:	06050463          	beqz	a0,20fc <fatfs_total_path_levels+0x6c>
    2098:	00054703          	lbu	a4,0(a0)
    209c:	02f00693          	li	a3,47
    20a0:	00d71863          	bne	a4,a3,20b0 <fatfs_total_path_levels+0x20>
    20a4:	00150793          	addi	a5,a0,1
    20a8:	00000513          	li	a0,0
    20ac:	0400006f          	j	20ec <fatfs_total_path_levels+0x5c>
    20b0:	00154683          	lbu	a3,1(a0)
    20b4:	03a00713          	li	a4,58
    20b8:	00e68a63          	beq	a3,a4,20cc <fatfs_total_path_levels+0x3c>
    20bc:	00254683          	lbu	a3,2(a0)
    20c0:	05c00713          	li	a4,92
    20c4:	fff00513          	li	a0,-1
    20c8:	02e69c63          	bne	a3,a4,2100 <fatfs_total_path_levels+0x70>
    20cc:	00378793          	addi	a5,a5,3
    20d0:	05c00713          	li	a4,92
    20d4:	fd5ff06f          	j	20a8 <fatfs_total_path_levels+0x18>
    20d8:	00178793          	addi	a5,a5,1
    20dc:	00e68663          	beq	a3,a4,20e8 <fatfs_total_path_levels+0x58>
    20e0:	0007c683          	lbu	a3,0(a5)
    20e4:	fe069ae3          	bnez	a3,20d8 <fatfs_total_path_levels+0x48>
    20e8:	00150513          	addi	a0,a0,1
    20ec:	0007c683          	lbu	a3,0(a5)
    20f0:	fe0698e3          	bnez	a3,20e0 <fatfs_total_path_levels+0x50>
    20f4:	fff50513          	addi	a0,a0,-1
    20f8:	00008067          	ret
    20fc:	fff00513          	li	a0,-1
    2100:	00008067          	ret

00002104 <fatfs_get_substring>:
    2104:	0c050c63          	beqz	a0,21dc <fatfs_get_substring+0xd8>
    2108:	fe010113          	addi	sp,sp,-32
    210c:	00912a23          	sw	s1,20(sp)
    2110:	00112e23          	sw	ra,28(sp)
    2114:	00812c23          	sw	s0,24(sp)
    2118:	01212823          	sw	s2,16(sp)
    211c:	01312623          	sw	s3,12(sp)
    2120:	01412423          	sw	s4,8(sp)
    2124:	00050793          	mv	a5,a0
    2128:	00068493          	mv	s1,a3
    212c:	fff00513          	li	a0,-1
    2130:	06d05a63          	blez	a3,21a4 <fatfs_get_substring+0xa0>
    2134:	0007c983          	lbu	s3,0(a5)
    2138:	02f00713          	li	a4,47
    213c:	00058a13          	mv	s4,a1
    2140:	00060913          	mv	s2,a2
    2144:	00178413          	addi	s0,a5,1
    2148:	02e98463          	beq	s3,a4,2170 <fatfs_get_substring+0x6c>
    214c:	0017c683          	lbu	a3,1(a5)
    2150:	03a00713          	li	a4,58
    2154:	00e68a63          	beq	a3,a4,2168 <fatfs_get_substring+0x64>
    2158:	0027c683          	lbu	a3,2(a5)
    215c:	05c00713          	li	a4,92
    2160:	fff00513          	li	a0,-1
    2164:	04e69063          	bne	a3,a4,21a4 <fatfs_get_substring+0xa0>
    2168:	00378413          	addi	s0,a5,3
    216c:	05c00993          	li	s3,92
    2170:	00040513          	mv	a0,s0
    2174:	ffffe097          	auipc	ra,0xffffe
    2178:	5b4080e7          	jalr	1460(ra) # 728 <strlen>
    217c:	00000713          	li	a4,0
    2180:	00000693          	li	a3,0
    2184:	00000793          	li	a5,0
    2188:	fff48493          	addi	s1,s1,-1
    218c:	00e905b3          	add	a1,s2,a4
    2190:	02a7ca63          	blt	a5,a0,21c4 <fatfs_get_substring+0xc0>
    2194:	00058023          	sb	zero,0(a1)
    2198:	00094503          	lbu	a0,0(s2)
    219c:	00153513          	seqz	a0,a0
    21a0:	40a00533          	neg	a0,a0
    21a4:	01c12083          	lw	ra,28(sp)
    21a8:	01812403          	lw	s0,24(sp)
    21ac:	01412483          	lw	s1,20(sp)
    21b0:	01012903          	lw	s2,16(sp)
    21b4:	00c12983          	lw	s3,12(sp)
    21b8:	00812a03          	lw	s4,8(sp)
    21bc:	02010113          	addi	sp,sp,32
    21c0:	00008067          	ret
    21c4:	00f40633          	add	a2,s0,a5
    21c8:	00064603          	lbu	a2,0(a2)
    21cc:	01361c63          	bne	a2,s3,21e4 <fatfs_get_substring+0xe0>
    21d0:	00168693          	addi	a3,a3,1
    21d4:	00178793          	addi	a5,a5,1
    21d8:	fb5ff06f          	j	218c <fatfs_get_substring+0x88>
    21dc:	fff00513          	li	a0,-1
    21e0:	00008067          	ret
    21e4:	ff4698e3          	bne	a3,s4,21d4 <fatfs_get_substring+0xd0>
    21e8:	fe9756e3          	bge	a4,s1,21d4 <fatfs_get_substring+0xd0>
    21ec:	00170713          	addi	a4,a4,1
    21f0:	00c58023          	sb	a2,0(a1)
    21f4:	fe1ff06f          	j	21d4 <fatfs_get_substring+0xd0>

000021f8 <fatfs_split_path>:
    21f8:	fd010113          	addi	sp,sp,-48
    21fc:	02912223          	sw	s1,36(sp)
    2200:	03212023          	sw	s2,32(sp)
    2204:	01312e23          	sw	s3,28(sp)
    2208:	01412c23          	sw	s4,24(sp)
    220c:	02112623          	sw	ra,44(sp)
    2210:	00068a13          	mv	s4,a3
    2214:	02812423          	sw	s0,40(sp)
    2218:	00050913          	mv	s2,a0
    221c:	00058493          	mv	s1,a1
    2220:	00060993          	mv	s3,a2
    2224:	00e12623          	sw	a4,12(sp)
    2228:	00000097          	auipc	ra,0x0
    222c:	e68080e7          	jalr	-408(ra) # 2090 <fatfs_total_path_levels>
    2230:	fff00793          	li	a5,-1
    2234:	00c12683          	lw	a3,12(sp)
    2238:	02f51663          	bne	a0,a5,2264 <fatfs_split_path+0x6c>
    223c:	fff00413          	li	s0,-1
    2240:	02c12083          	lw	ra,44(sp)
    2244:	00040513          	mv	a0,s0
    2248:	02812403          	lw	s0,40(sp)
    224c:	02412483          	lw	s1,36(sp)
    2250:	02012903          	lw	s2,32(sp)
    2254:	01c12983          	lw	s3,28(sp)
    2258:	01812a03          	lw	s4,24(sp)
    225c:	03010113          	addi	sp,sp,48
    2260:	00008067          	ret
    2264:	00050413          	mv	s0,a0
    2268:	00050593          	mv	a1,a0
    226c:	000a0613          	mv	a2,s4
    2270:	00090513          	mv	a0,s2
    2274:	00000097          	auipc	ra,0x0
    2278:	e90080e7          	jalr	-368(ra) # 2104 <fatfs_get_substring>
    227c:	fc0510e3          	bnez	a0,223c <fatfs_split_path+0x44>
    2280:	00041663          	bnez	s0,228c <fatfs_split_path+0x94>
    2284:	00048023          	sb	zero,0(s1)
    2288:	fb9ff06f          	j	2240 <fatfs_split_path+0x48>
    228c:	00090513          	mv	a0,s2
    2290:	ffffe097          	auipc	ra,0xffffe
    2294:	498080e7          	jalr	1176(ra) # 728 <strlen>
    2298:	00050413          	mv	s0,a0
    229c:	000a0513          	mv	a0,s4
    22a0:	ffffe097          	auipc	ra,0xffffe
    22a4:	488080e7          	jalr	1160(ra) # 728 <strlen>
    22a8:	40a40433          	sub	s0,s0,a0
    22ac:	0089d463          	bge	s3,s0,22b4 <fatfs_split_path+0xbc>
    22b0:	00098413          	mv	s0,s3
    22b4:	00040613          	mv	a2,s0
    22b8:	00048513          	mv	a0,s1
    22bc:	00090593          	mv	a1,s2
    22c0:	008484b3          	add	s1,s1,s0
    22c4:	ffffe097          	auipc	ra,0xffffe
    22c8:	440080e7          	jalr	1088(ra) # 704 <memcpy>
    22cc:	00000413          	li	s0,0
    22d0:	fe048fa3          	sb	zero,-1(s1)
    22d4:	f6dff06f          	j	2240 <fatfs_split_path+0x48>

000022d8 <fatfs_compare_names>:
    22d8:	fd010113          	addi	sp,sp,-48
    22dc:	02112623          	sw	ra,44(sp)
    22e0:	02812423          	sw	s0,40(sp)
    22e4:	02912223          	sw	s1,36(sp)
    22e8:	03212023          	sw	s2,32(sp)
    22ec:	01312e23          	sw	s3,28(sp)
    22f0:	00058913          	mv	s2,a1
    22f4:	01412c23          	sw	s4,24(sp)
    22f8:	01512a23          	sw	s5,20(sp)
    22fc:	01612823          	sw	s6,16(sp)
    2300:	00050a13          	mv	s4,a0
    2304:	fffff097          	auipc	ra,0xfffff
    2308:	d1c080e7          	jalr	-740(ra) # 1020 <FileString_GetExtension>
    230c:	00050493          	mv	s1,a0
    2310:	00090513          	mv	a0,s2
    2314:	fffff097          	auipc	ra,0xfffff
    2318:	d0c080e7          	jalr	-756(ra) # 1020 <FileString_GetExtension>
    231c:	fff00793          	li	a5,-1
    2320:	00050413          	mv	s0,a0
    2324:	00000993          	li	s3,0
    2328:	0af49263          	bne	s1,a5,23cc <fatfs_compare_names+0xf4>
    232c:	0e951863          	bne	a0,s1,241c <fatfs_compare_names+0x144>
    2330:	000a0513          	mv	a0,s4
    2334:	ffffe097          	auipc	ra,0xffffe
    2338:	3f4080e7          	jalr	1012(ra) # 728 <strlen>
    233c:	00050493          	mv	s1,a0
    2340:	00090513          	mv	a0,s2
    2344:	ffffe097          	auipc	ra,0xffffe
    2348:	3e4080e7          	jalr	996(ra) # 728 <strlen>
    234c:	00050413          	mv	s0,a0
    2350:	fff48793          	addi	a5,s1,-1
    2354:	00fa07b3          	add	a5,s4,a5
    2358:	40978733          	sub	a4,a5,s1
    235c:	02000613          	li	a2,32
    2360:	00078693          	mv	a3,a5
    2364:	00e78863          	beq	a5,a4,2374 <fatfs_compare_names+0x9c>
    2368:	0007c583          	lbu	a1,0(a5)
    236c:	fff78793          	addi	a5,a5,-1
    2370:	04c58663          	beq	a1,a2,23bc <fatfs_compare_names+0xe4>
    2374:	fff40793          	addi	a5,s0,-1
    2378:	00f907b3          	add	a5,s2,a5
    237c:	40878733          	sub	a4,a5,s0
    2380:	02000613          	li	a2,32
    2384:	00078693          	mv	a3,a5
    2388:	00e78863          	beq	a5,a4,2398 <fatfs_compare_names+0xc0>
    238c:	0007c583          	lbu	a1,0(a5)
    2390:	fff78793          	addi	a5,a5,-1
    2394:	02c58863          	beq	a1,a2,23c4 <fatfs_compare_names+0xec>
    2398:	00000993          	li	s3,0
    239c:	08941063          	bne	s0,s1,241c <fatfs_compare_names+0x144>
    23a0:	00040613          	mv	a2,s0
    23a4:	00090593          	mv	a1,s2
    23a8:	000a0513          	mv	a0,s4
    23ac:	fffff097          	auipc	ra,0xfffff
    23b0:	c04080e7          	jalr	-1020(ra) # fb0 <FileString_StrCmpNoCase>
    23b4:	00153993          	seqz	s3,a0
    23b8:	0640006f          	j	241c <fatfs_compare_names+0x144>
    23bc:	414684b3          	sub	s1,a3,s4
    23c0:	fa1ff06f          	j	2360 <fatfs_compare_names+0x88>
    23c4:	41268433          	sub	s0,a3,s2
    23c8:	fbdff06f          	j	2384 <fatfs_compare_names+0xac>
    23cc:	04f50863          	beq	a0,a5,241c <fatfs_compare_names+0x144>
    23d0:	00148a93          	addi	s5,s1,1
    23d4:	015a0ab3          	add	s5,s4,s5
    23d8:	00140b13          	addi	s6,s0,1
    23dc:	000a8513          	mv	a0,s5
    23e0:	ffffe097          	auipc	ra,0xffffe
    23e4:	348080e7          	jalr	840(ra) # 728 <strlen>
    23e8:	01690b33          	add	s6,s2,s6
    23ec:	00a12623          	sw	a0,12(sp)
    23f0:	000b0513          	mv	a0,s6
    23f4:	ffffe097          	auipc	ra,0xffffe
    23f8:	334080e7          	jalr	820(ra) # 728 <strlen>
    23fc:	00c12603          	lw	a2,12(sp)
    2400:	00000993          	li	s3,0
    2404:	00a61c63          	bne	a2,a0,241c <fatfs_compare_names+0x144>
    2408:	000b0593          	mv	a1,s6
    240c:	000a8513          	mv	a0,s5
    2410:	fffff097          	auipc	ra,0xfffff
    2414:	ba0080e7          	jalr	-1120(ra) # fb0 <FileString_StrCmpNoCase>
    2418:	f2050ce3          	beqz	a0,2350 <fatfs_compare_names+0x78>
    241c:	02c12083          	lw	ra,44(sp)
    2420:	02812403          	lw	s0,40(sp)
    2424:	02412483          	lw	s1,36(sp)
    2428:	02012903          	lw	s2,32(sp)
    242c:	01812a03          	lw	s4,24(sp)
    2430:	01412a83          	lw	s5,20(sp)
    2434:	01012b03          	lw	s6,16(sp)
    2438:	00098513          	mv	a0,s3
    243c:	01c12983          	lw	s3,28(sp)
    2440:	03010113          	addi	sp,sp,48
    2444:	00008067          	ret

00002448 <_check_file_open>:
    2448:	fe010113          	addi	sp,sp,-32
    244c:	000067b7          	lui	a5,0x6
    2450:	00812c23          	sw	s0,24(sp)
    2454:	f607a403          	lw	s0,-160(a5) # 5f60 <_open_file_list>
    2458:	00912a23          	sw	s1,20(sp)
    245c:	01212823          	sw	s2,16(sp)
    2460:	01312623          	sw	s3,12(sp)
    2464:	00112e23          	sw	ra,28(sp)
    2468:	00050493          	mv	s1,a0
    246c:	01450913          	addi	s2,a0,20
    2470:	11850993          	addi	s3,a0,280
    2474:	02041263          	bnez	s0,2498 <_check_file_open+0x50>
    2478:	00000513          	li	a0,0
    247c:	01c12083          	lw	ra,28(sp)
    2480:	01812403          	lw	s0,24(sp)
    2484:	01412483          	lw	s1,20(sp)
    2488:	01012903          	lw	s2,16(sp)
    248c:	00c12983          	lw	s3,12(sp)
    2490:	02010113          	addi	sp,sp,32
    2494:	00008067          	ret
    2498:	bc440793          	addi	a5,s0,-1084
    249c:	02f48663          	beq	s1,a5,24c8 <_check_file_open+0x80>
    24a0:	00090593          	mv	a1,s2
    24a4:	bd840513          	addi	a0,s0,-1064
    24a8:	00000097          	auipc	ra,0x0
    24ac:	e30080e7          	jalr	-464(ra) # 22d8 <fatfs_compare_names>
    24b0:	00050c63          	beqz	a0,24c8 <_check_file_open+0x80>
    24b4:	00098593          	mv	a1,s3
    24b8:	cdc40513          	addi	a0,s0,-804
    24bc:	00000097          	auipc	ra,0x0
    24c0:	e1c080e7          	jalr	-484(ra) # 22d8 <fatfs_compare_names>
    24c4:	00051663          	bnez	a0,24d0 <_check_file_open+0x88>
    24c8:	00442403          	lw	s0,4(s0)
    24cc:	fa9ff06f          	j	2474 <_check_file_open+0x2c>
    24d0:	00100513          	li	a0,1
    24d4:	fa9ff06f          	j	247c <_check_file_open+0x34>

000024d8 <fatfs_string_ends_with_slash>:
    24d8:	00050a63          	beqz	a0,24ec <fatfs_string_ends_with_slash+0x14>
    24dc:	05c00713          	li	a4,92
    24e0:	02f00693          	li	a3,47
    24e4:	00054783          	lbu	a5,0(a0)
    24e8:	00079663          	bnez	a5,24f4 <fatfs_string_ends_with_slash+0x1c>
    24ec:	00000513          	li	a0,0
    24f0:	00008067          	ret
    24f4:	00154603          	lbu	a2,1(a0)
    24f8:	00061663          	bnez	a2,2504 <fatfs_string_ends_with_slash+0x2c>
    24fc:	00e78863          	beq	a5,a4,250c <fatfs_string_ends_with_slash+0x34>
    2500:	00d78663          	beq	a5,a3,250c <fatfs_string_ends_with_slash+0x34>
    2504:	00150513          	addi	a0,a0,1
    2508:	fddff06f          	j	24e4 <fatfs_string_ends_with_slash+0xc>
    250c:	00100513          	li	a0,1
    2510:	00008067          	ret

00002514 <fatfs_get_sfn_display_name>:
    2514:	00000713          	li	a4,0
    2518:	00c00613          	li	a2,12
    251c:	02000813          	li	a6,32
    2520:	01900893          	li	a7,25
    2524:	0005c783          	lbu	a5,0(a1)
    2528:	00078463          	beqz	a5,2530 <fatfs_get_sfn_display_name+0x1c>
    252c:	00c71863          	bne	a4,a2,253c <fatfs_get_sfn_display_name+0x28>
    2530:	00050023          	sb	zero,0(a0)
    2534:	00100513          	li	a0,1
    2538:	00008067          	ret
    253c:	00158593          	addi	a1,a1,1
    2540:	ff0782e3          	beq	a5,a6,2524 <fatfs_get_sfn_display_name+0x10>
    2544:	fbf78693          	addi	a3,a5,-65
    2548:	0ff6f693          	zext.b	a3,a3
    254c:	00d8e663          	bltu	a7,a3,2558 <fatfs_get_sfn_display_name+0x44>
    2550:	02078793          	addi	a5,a5,32
    2554:	0ff7f793          	zext.b	a5,a5
    2558:	00f50023          	sb	a5,0(a0)
    255c:	00170713          	addi	a4,a4,1
    2560:	00150513          	addi	a0,a0,1
    2564:	fc1ff06f          	j	2524 <fatfs_get_sfn_display_name+0x10>

00002568 <fatfs_get_extension>:
    2568:	ff010113          	addi	sp,sp,-16
    256c:	00812423          	sw	s0,8(sp)
    2570:	00912223          	sw	s1,4(sp)
    2574:	01212023          	sw	s2,0(sp)
    2578:	00112623          	sw	ra,12(sp)
    257c:	00050913          	mv	s2,a0
    2580:	00058493          	mv	s1,a1
    2584:	00060413          	mv	s0,a2
    2588:	fffff097          	auipc	ra,0xfffff
    258c:	a98080e7          	jalr	-1384(ra) # 1020 <FileString_GetExtension>
    2590:	06a05c63          	blez	a0,2608 <fatfs_get_extension+0xa0>
    2594:	06048a63          	beqz	s1,2608 <fatfs_get_extension+0xa0>
    2598:	02040863          	beqz	s0,25c8 <fatfs_get_extension+0x60>
    259c:	00150513          	addi	a0,a0,1
    25a0:	00000713          	li	a4,0
    25a4:	fff40413          	addi	s0,s0,-1
    25a8:	01900593          	li	a1,25
    25ac:	00e507b3          	add	a5,a0,a4
    25b0:	00f907b3          	add	a5,s2,a5
    25b4:	0007c783          	lbu	a5,0(a5)
    25b8:	00e48633          	add	a2,s1,a4
    25bc:	02079463          	bnez	a5,25e4 <fatfs_get_extension+0x7c>
    25c0:	00060023          	sb	zero,0(a2)
    25c4:	00100413          	li	s0,1
    25c8:	00c12083          	lw	ra,12(sp)
    25cc:	00040513          	mv	a0,s0
    25d0:	00812403          	lw	s0,8(sp)
    25d4:	00412483          	lw	s1,4(sp)
    25d8:	00012903          	lw	s2,0(sp)
    25dc:	01010113          	addi	sp,sp,16
    25e0:	00008067          	ret
    25e4:	fc875ee3          	bge	a4,s0,25c0 <fatfs_get_extension+0x58>
    25e8:	fbf78693          	addi	a3,a5,-65
    25ec:	0ff6f693          	zext.b	a3,a3
    25f0:	00d5e663          	bltu	a1,a3,25fc <fatfs_get_extension+0x94>
    25f4:	02078793          	addi	a5,a5,32
    25f8:	0ff7f793          	zext.b	a5,a5
    25fc:	00f60023          	sb	a5,0(a2)
    2600:	00170713          	addi	a4,a4,1
    2604:	fa9ff06f          	j	25ac <fatfs_get_extension+0x44>
    2608:	00000413          	li	s0,0
    260c:	fbdff06f          	j	25c8 <fatfs_get_extension+0x60>

00002610 <fatfs_create_path_string>:
    2610:	00050893          	mv	a7,a0
    2614:	00000513          	li	a0,0
    2618:	0a088263          	beqz	a7,26bc <fatfs_create_path_string+0xac>
    261c:	0a058063          	beqz	a1,26bc <fatfs_create_path_string+0xac>
    2620:	08060e63          	beqz	a2,26bc <fatfs_create_path_string+0xac>
    2624:	00d04463          	bgtz	a3,262c <fatfs_create_path_string+0x1c>
    2628:	00008067          	ret
    262c:	02f00313          	li	t1,47
    2630:	00000513          	li	a0,0
    2634:	00000713          	li	a4,0
    2638:	ffe68e13          	addi	t3,a3,-2
    263c:	05c00e93          	li	t4,92
    2640:	01c0006f          	j	265c <fatfs_create_path_string+0x4c>
    2644:	03c75463          	bge	a4,t3,266c <fatfs_create_path_string+0x5c>
    2648:	01d81463          	bne	a6,t4,2650 <fatfs_create_path_string+0x40>
    264c:	05c00313          	li	t1,92
    2650:	01078023          	sb	a6,0(a5)
    2654:	00170713          	addi	a4,a4,1
    2658:	00080513          	mv	a0,a6
    265c:	00e88833          	add	a6,a7,a4
    2660:	00084803          	lbu	a6,0(a6)
    2664:	00e607b3          	add	a5,a2,a4
    2668:	fc081ee3          	bnez	a6,2644 <fatfs_create_path_string+0x34>
    266c:	05c00613          	li	a2,92
    2670:	02c51063          	bne	a0,a2,2690 <fatfs_create_path_string+0x80>
    2674:	fff68693          	addi	a3,a3,-1
    2678:	40b70733          	sub	a4,a4,a1
    267c:	0005c603          	lbu	a2,0(a1)
    2680:	02061263          	bnez	a2,26a4 <fatfs_create_path_string+0x94>
    2684:	00078023          	sb	zero,0(a5)
    2688:	00100513          	li	a0,1
    268c:	00008067          	ret
    2690:	02f00613          	li	a2,47
    2694:	fec500e3          	beq	a0,a2,2674 <fatfs_create_path_string+0x64>
    2698:	00678023          	sb	t1,0(a5)
    269c:	00178793          	addi	a5,a5,1
    26a0:	fd5ff06f          	j	2674 <fatfs_create_path_string+0x64>
    26a4:	00e58533          	add	a0,a1,a4
    26a8:	fcd55ee3          	bge	a0,a3,2684 <fatfs_create_path_string+0x74>
    26ac:	00178793          	addi	a5,a5,1
    26b0:	00158593          	addi	a1,a1,1
    26b4:	fec78fa3          	sb	a2,-1(a5)
    26b8:	fc5ff06f          	j	267c <fatfs_create_path_string+0x6c>
    26bc:	00008067          	ret

000026c0 <fatfs_fat_init>:
    26c0:	ff010113          	addi	sp,sp,-16
    26c4:	00812423          	sw	s0,8(sp)
    26c8:	00912223          	sw	s1,4(sp)
    26cc:	00112623          	sw	ra,12(sp)
    26d0:	fff00793          	li	a5,-1
    26d4:	25850493          	addi	s1,a0,600
    26d8:	00050413          	mv	s0,a0
    26dc:	44f52c23          	sw	a5,1112(a0)
    26e0:	24052a23          	sw	zero,596(a0)
    26e4:	44052e23          	sw	zero,1116(a0)
    26e8:	20000613          	li	a2,512
    26ec:	00048513          	mv	a0,s1
    26f0:	00000593          	li	a1,0
    26f4:	ffffe097          	auipc	ra,0xffffe
    26f8:	ff4080e7          	jalr	-12(ra) # 6e8 <memset>
    26fc:	25442783          	lw	a5,596(s0)
    2700:	00c12083          	lw	ra,12(sp)
    2704:	24942a23          	sw	s1,596(s0)
    2708:	46042023          	sw	zero,1120(s0)
    270c:	46f42223          	sw	a5,1124(s0)
    2710:	00812403          	lw	s0,8(sp)
    2714:	00412483          	lw	s1,4(sp)
    2718:	01010113          	addi	sp,sp,16
    271c:	00008067          	ret

00002720 <fatfs_init>:
    2720:	fc010113          	addi	sp,sp,-64
    2724:	02812c23          	sw	s0,56(sp)
    2728:	02112e23          	sw	ra,60(sp)
    272c:	02912a23          	sw	s1,52(sp)
    2730:	03212823          	sw	s2,48(sp)
    2734:	03312623          	sw	s3,44(sp)
    2738:	03412423          	sw	s4,40(sp)
    273c:	03512223          	sw	s5,36(sp)
    2740:	03612023          	sw	s6,32(sp)
    2744:	01712e23          	sw	s7,28(sp)
    2748:	fff00793          	li	a5,-1
    274c:	24f52223          	sw	a5,580(a0)
    2750:	24052423          	sw	zero,584(a0)
    2754:	02052223          	sw	zero,36(a0)
    2758:	00050413          	mv	s0,a0
    275c:	00000097          	auipc	ra,0x0
    2760:	f64080e7          	jalr	-156(ra) # 26c0 <fatfs_fat_init>
    2764:	03442783          	lw	a5,52(s0)
    2768:	02079a63          	bnez	a5,279c <fatfs_init+0x7c>
    276c:	fff00513          	li	a0,-1
    2770:	03c12083          	lw	ra,60(sp)
    2774:	03812403          	lw	s0,56(sp)
    2778:	03412483          	lw	s1,52(sp)
    277c:	03012903          	lw	s2,48(sp)
    2780:	02c12983          	lw	s3,44(sp)
    2784:	02812a03          	lw	s4,40(sp)
    2788:	02412a83          	lw	s5,36(sp)
    278c:	02012b03          	lw	s6,32(sp)
    2790:	01c12b83          	lw	s7,28(sp)
    2794:	04010113          	addi	sp,sp,64
    2798:	00008067          	ret
    279c:	04440593          	addi	a1,s0,68
    27a0:	00100613          	li	a2,1
    27a4:	00000513          	li	a0,0
    27a8:	00b12623          	sw	a1,12(sp)
    27ac:	000780e7          	jalr	a5
    27b0:	fa050ee3          	beqz	a0,276c <fatfs_init+0x4c>
    27b4:	24042703          	lw	a4,576(s0)
    27b8:	ffff07b7          	lui	a5,0xffff0
    27bc:	00c12583          	lw	a1,12(sp)
    27c0:	00e7f7b3          	and	a5,a5,a4
    27c4:	aa550737          	lui	a4,0xaa550
    27c8:	00e78663          	beq	a5,a4,27d4 <fatfs_init+0xb4>
    27cc:	ffd00513          	li	a0,-3
    27d0:	fa1ff06f          	j	2770 <fatfs_init+0x50>
    27d4:	24344783          	lbu	a5,579(s0)
    27d8:	24244703          	lbu	a4,578(s0)
    27dc:	ffc00513          	li	a0,-4
    27e0:	00879793          	slli	a5,a5,0x8
    27e4:	00e787b3          	add	a5,a5,a4
    27e8:	0000b737          	lui	a4,0xb
    27ec:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x429>
    27f0:	f8e790e3          	bne	a5,a4,2770 <fatfs_init+0x50>
    27f4:	20644783          	lbu	a5,518(s0)
    27f8:	00600713          	li	a4,6
    27fc:	04f76063          	bltu	a4,a5,283c <fatfs_init+0x11c>
    2800:	00400713          	li	a4,4
    2804:	00f76663          	bltu	a4,a5,2810 <fatfs_init+0xf0>
    2808:	00000513          	li	a0,0
    280c:	04078263          	beqz	a5,2850 <fatfs_init+0x130>
    2810:	20d44503          	lbu	a0,525(s0)
    2814:	20c44783          	lbu	a5,524(s0)
    2818:	01851513          	slli	a0,a0,0x18
    281c:	01079793          	slli	a5,a5,0x10
    2820:	00f50533          	add	a0,a0,a5
    2824:	20a44783          	lbu	a5,522(s0)
    2828:	00f50533          	add	a0,a0,a5
    282c:	20b44783          	lbu	a5,523(s0)
    2830:	00879793          	slli	a5,a5,0x8
    2834:	00f50533          	add	a0,a0,a5
    2838:	0180006f          	j	2850 <fatfs_init+0x130>
    283c:	00c00713          	li	a4,12
    2840:	1ef76a63          	bltu	a4,a5,2a34 <fatfs_init+0x314>
    2844:	00a00713          	li	a4,10
    2848:	00000513          	li	a0,0
    284c:	fcf762e3          	bltu	a4,a5,2810 <fatfs_init+0xf0>
    2850:	03442783          	lw	a5,52(s0)
    2854:	00a42e23          	sw	a0,28(s0)
    2858:	00100613          	li	a2,1
    285c:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2860:	f00506e3          	beqz	a0,276c <fatfs_init+0x4c>
    2864:	05044783          	lbu	a5,80(s0)
    2868:	04f44703          	lbu	a4,79(s0)
    286c:	ffe00513          	li	a0,-2
    2870:	00879793          	slli	a5,a5,0x8
    2874:	00e787b3          	add	a5,a5,a4
    2878:	20000713          	li	a4,512
    287c:	eee79ae3          	bne	a5,a4,2770 <fatfs_init+0x50>
    2880:	05644483          	lbu	s1,86(s0)
    2884:	05544b83          	lbu	s7,85(s0)
    2888:	05344903          	lbu	s2,83(s0)
    288c:	05244a03          	lbu	s4,82(s0)
    2890:	05b44583          	lbu	a1,91(s0)
    2894:	00849493          	slli	s1,s1,0x8
    2898:	05144983          	lbu	s3,81(s0)
    289c:	05a44783          	lbu	a5,90(s0)
    28a0:	01748ab3          	add	s5,s1,s7
    28a4:	00891913          	slli	s2,s2,0x8
    28a8:	010a9a93          	slli	s5,s5,0x10
    28ac:	01490b33          	add	s6,s2,s4
    28b0:	010ada93          	srli	s5,s5,0x10
    28b4:	00859593          	slli	a1,a1,0x8
    28b8:	010b1b13          	slli	s6,s6,0x10
    28bc:	01340023          	sb	s3,0(s0)
    28c0:	03541423          	sh	s5,40(s0)
    28c4:	00f585b3          	add	a1,a1,a5
    28c8:	05444503          	lbu	a0,84(s0)
    28cc:	010b5b13          	srli	s6,s6,0x10
    28d0:	02059663          	bnez	a1,28fc <fatfs_init+0x1dc>
    28d4:	06b44583          	lbu	a1,107(s0)
    28d8:	06a44783          	lbu	a5,106(s0)
    28dc:	01859593          	slli	a1,a1,0x18
    28e0:	01079793          	slli	a5,a5,0x10
    28e4:	00f585b3          	add	a1,a1,a5
    28e8:	06844783          	lbu	a5,104(s0)
    28ec:	00f585b3          	add	a1,a1,a5
    28f0:	06944783          	lbu	a5,105(s0)
    28f4:	00879793          	slli	a5,a5,0x8
    28f8:	00f585b3          	add	a1,a1,a5
    28fc:	07344783          	lbu	a5,115(s0)
    2900:	07244703          	lbu	a4,114(s0)
    2904:	02b42023          	sw	a1,32(s0)
    2908:	01879793          	slli	a5,a5,0x18
    290c:	01071713          	slli	a4,a4,0x10
    2910:	00e787b3          	add	a5,a5,a4
    2914:	07044703          	lbu	a4,112(s0)
    2918:	005a9a93          	slli	s5,s5,0x5
    291c:	1ffa8a93          	addi	s5,s5,511
    2920:	00e787b3          	add	a5,a5,a4
    2924:	07144703          	lbu	a4,113(s0)
    2928:	409ada93          	srai	s5,s5,0x9
    292c:	00871713          	slli	a4,a4,0x8
    2930:	00e787b3          	add	a5,a5,a4
    2934:	00f42423          	sw	a5,8(s0)
    2938:	07544783          	lbu	a5,117(s0)
    293c:	07444703          	lbu	a4,116(s0)
    2940:	00879793          	slli	a5,a5,0x8
    2944:	00e787b3          	add	a5,a5,a4
    2948:	00f41c23          	sh	a5,24(s0)
    294c:	ffffe097          	auipc	ra,0xffffe
    2950:	5cc080e7          	jalr	1484(ra) # f18 <__mulsi3>
    2954:	00ab07b3          	add	a5,s6,a0
    2958:	00f42623          	sw	a5,12(s0)
    295c:	01c42783          	lw	a5,28(s0)
    2960:	24244703          	lbu	a4,578(s0)
    2964:	01542823          	sw	s5,16(s0)
    2968:	00fb0b33          	add	s6,s6,a5
    296c:	24344783          	lbu	a5,579(s0)
    2970:	01642a23          	sw	s6,20(s0)
    2974:	01650b33          	add	s6,a0,s6
    2978:	00879793          	slli	a5,a5,0x8
    297c:	00e787b3          	add	a5,a5,a4
    2980:	0000b737          	lui	a4,0xb
    2984:	01642223          	sw	s6,4(s0)
    2988:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x429>
    298c:	e4e790e3          	bne	a5,a4,27cc <fatfs_init+0xac>
    2990:	05844783          	lbu	a5,88(s0)
    2994:	05744703          	lbu	a4,87(s0)
    2998:	017484b3          	add	s1,s1,s7
    299c:	00549493          	slli	s1,s1,0x5
    29a0:	00879793          	slli	a5,a5,0x8
    29a4:	1ff48493          	addi	s1,s1,511
    29a8:	00e787b3          	add	a5,a5,a4
    29ac:	4094d493          	srai	s1,s1,0x9
    29b0:	02079663          	bnez	a5,29dc <fatfs_init+0x2bc>
    29b4:	06744783          	lbu	a5,103(s0)
    29b8:	06644703          	lbu	a4,102(s0)
    29bc:	01879793          	slli	a5,a5,0x18
    29c0:	01071713          	slli	a4,a4,0x10
    29c4:	00e787b3          	add	a5,a5,a4
    29c8:	06444703          	lbu	a4,100(s0)
    29cc:	00e787b3          	add	a5,a5,a4
    29d0:	06544703          	lbu	a4,101(s0)
    29d4:	00871713          	slli	a4,a4,0x8
    29d8:	00e787b3          	add	a5,a5,a4
    29dc:	01490933          	add	s2,s2,s4
    29e0:	00990933          	add	s2,s2,s1
    29e4:	00a90533          	add	a0,s2,a0
    29e8:	40a787b3          	sub	a5,a5,a0
    29ec:	ffb00513          	li	a0,-5
    29f0:	d80980e3          	beqz	s3,2770 <fatfs_init+0x50>
    29f4:	00078513          	mv	a0,a5
    29f8:	00098593          	mv	a1,s3
    29fc:	ffffe097          	auipc	ra,0xffffe
    2a00:	c18080e7          	jalr	-1000(ra) # 614 <__udivsi3>
    2a04:	00001737          	lui	a4,0x1
    2a08:	00050793          	mv	a5,a0
    2a0c:	ff470713          	addi	a4,a4,-12 # ff4 <FileString_StrCmpNoCase+0x44>
    2a10:	ffb00513          	li	a0,-5
    2a14:	d4f77ee3          	bgeu	a4,a5,2770 <fatfs_init+0x50>
    2a18:	00010737          	lui	a4,0x10
    2a1c:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x59c8>
    2a20:	02f76663          	bltu	a4,a5,2a4c <fatfs_init+0x32c>
    2a24:	00042423          	sw	zero,8(s0)
    2a28:	02042823          	sw	zero,48(s0)
    2a2c:	00000513          	li	a0,0
    2a30:	d41ff06f          	j	2770 <fatfs_init+0x50>
    2a34:	ff278793          	addi	a5,a5,-14
    2a38:	0ff7f793          	zext.b	a5,a5
    2a3c:	00100713          	li	a4,1
    2a40:	00000513          	li	a0,0
    2a44:	dcf776e3          	bgeu	a4,a5,2810 <fatfs_init+0xf0>
    2a48:	e09ff06f          	j	2850 <fatfs_init+0x130>
    2a4c:	00100793          	li	a5,1
    2a50:	02f42823          	sw	a5,48(s0)
    2a54:	fd9ff06f          	j	2a2c <fatfs_init+0x30c>

00002a58 <fl_attach_media>:
    2a58:	000067b7          	lui	a5,0x6
    2a5c:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    2a60:	ff010113          	addi	sp,sp,-16
    2a64:	00812423          	sw	s0,8(sp)
    2a68:	00912223          	sw	s1,4(sp)
    2a6c:	00112623          	sw	ra,12(sp)
    2a70:	00050493          	mv	s1,a0
    2a74:	00058413          	mv	s0,a1
    2a78:	00079663          	bnez	a5,2a84 <fl_attach_media+0x2c>
    2a7c:	fffff097          	auipc	ra,0xfffff
    2a80:	c30080e7          	jalr	-976(ra) # 16ac <fl_init>
    2a84:	0000a537          	lui	a0,0xa
    2a88:	1c450793          	addi	a5,a0,452 # a1c4 <_fs>
    2a8c:	1c450513          	addi	a0,a0,452
    2a90:	0287ac23          	sw	s0,56(a5)
    2a94:	0297aa23          	sw	s1,52(a5)
    2a98:	00000097          	auipc	ra,0x0
    2a9c:	c88080e7          	jalr	-888(ra) # 2720 <fatfs_init>
    2aa0:	00050413          	mv	s0,a0
    2aa4:	02050863          	beqz	a0,2ad4 <fl_attach_media+0x7c>
    2aa8:	00050593          	mv	a1,a0
    2aac:	00006537          	lui	a0,0x6
    2ab0:	e6850513          	addi	a0,a0,-408 # 5e68 <font+0x304>
    2ab4:	ffffe097          	auipc	ra,0xffffe
    2ab8:	328080e7          	jalr	808(ra) # ddc <printf>
    2abc:	00c12083          	lw	ra,12(sp)
    2ac0:	00040513          	mv	a0,s0
    2ac4:	00812403          	lw	s0,8(sp)
    2ac8:	00412483          	lw	s1,4(sp)
    2acc:	01010113          	addi	sp,sp,16
    2ad0:	00008067          	ret
    2ad4:	000067b7          	lui	a5,0x6
    2ad8:	00100713          	li	a4,1
    2adc:	f6e7a423          	sw	a4,-152(a5) # 5f68 <_filelib_valid>
    2ae0:	fddff06f          	j	2abc <fl_attach_media+0x64>

00002ae4 <fatfs_format_fat16>:
    2ae4:	fe010113          	addi	sp,sp,-32
    2ae8:	00812c23          	sw	s0,24(sp)
    2aec:	00912a23          	sw	s1,20(sp)
    2af0:	01212823          	sw	s2,16(sp)
    2af4:	00112e23          	sw	ra,28(sp)
    2af8:	01312623          	sw	s3,12(sp)
    2afc:	01412423          	sw	s4,8(sp)
    2b00:	fff00793          	li	a5,-1
    2b04:	24f52223          	sw	a5,580(a0)
    2b08:	24052423          	sw	zero,584(a0)
    2b0c:	02052223          	sw	zero,36(a0)
    2b10:	00050413          	mv	s0,a0
    2b14:	00058493          	mv	s1,a1
    2b18:	00060913          	mv	s2,a2
    2b1c:	00000097          	auipc	ra,0x0
    2b20:	ba4080e7          	jalr	-1116(ra) # 26c0 <fatfs_fat_init>
    2b24:	03442783          	lw	a5,52(s0)
    2b28:	fff00513          	li	a0,-1
    2b2c:	08078663          	beqz	a5,2bb8 <fatfs_format_fat16+0xd4>
    2b30:	03842783          	lw	a5,56(s0)
    2b34:	fff00513          	li	a0,-1
    2b38:	08078063          	beqz	a5,2bb8 <fatfs_format_fat16+0xd4>
    2b3c:	04440993          	addi	s3,s0,68
    2b40:	02042823          	sw	zero,48(s0)
    2b44:	00041c23          	sh	zero,24(s0)
    2b48:	00042423          	sw	zero,8(s0)
    2b4c:	00042e23          	sw	zero,28(s0)
    2b50:	20000613          	li	a2,512
    2b54:	00000593          	li	a1,0
    2b58:	00098513          	mv	a0,s3
    2b5c:	ffffe097          	auipc	ra,0xffffe
    2b60:	b8c080e7          	jalr	-1140(ra) # 6e8 <memset>
    2b64:	4d9047b7          	lui	a5,0x4d904
    2b68:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2b6c:	04f42223          	sw	a5,68(s0)
    2b70:	534f47b7          	lui	a5,0x534f4
    2b74:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2b78:	04f42423          	sw	a5,72(s0)
    2b7c:	003037b7          	lui	a5,0x303
    2b80:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2b84:	04f42623          	sw	a5,76(s0)
    2b88:	00200793          	li	a5,2
    2b8c:	04f40823          	sb	a5,80(s0)
    2b90:	000067b7          	lui	a5,0x6
    2b94:	ed078793          	addi	a5,a5,-304 # 5ed0 <_cluster_size_table16>
    2b98:	0047c583          	lbu	a1,4(a5)
    2b9c:	00058863          	beqz	a1,2bac <fatfs_format_fat16+0xc8>
    2ba0:	0007a703          	lw	a4,0(a5)
    2ba4:	00878793          	addi	a5,a5,8
    2ba8:	fe9768e3          	bltu	a4,s1,2b98 <fatfs_format_fat16+0xb4>
    2bac:	00b40023          	sb	a1,0(s0)
    2bb0:	02059463          	bnez	a1,2bd8 <fatfs_format_fat16+0xf4>
    2bb4:	00000513          	li	a0,0
    2bb8:	01c12083          	lw	ra,28(sp)
    2bbc:	01812403          	lw	s0,24(sp)
    2bc0:	01412483          	lw	s1,20(sp)
    2bc4:	01012903          	lw	s2,16(sp)
    2bc8:	00c12983          	lw	s3,12(sp)
    2bcc:	00812a03          	lw	s4,8(sp)
    2bd0:	02010113          	addi	sp,sp,32
    2bd4:	00008067          	ret
    2bd8:	000807b7          	lui	a5,0x80
    2bdc:	20078793          	addi	a5,a5,512 # 80200 <__stacktop+0x70200>
    2be0:	02f42423          	sw	a5,40(s0)
    2be4:	00200793          	li	a5,2
    2be8:	02f40623          	sb	a5,44(s0)
    2bec:	00800793          	li	a5,8
    2bf0:	04f41923          	sh	a5,82(s0)
    2bf4:	000207b7          	lui	a5,0x20
    2bf8:	00278793          	addi	a5,a5,2 # 20002 <__stacktop+0x10002>
    2bfc:	04f42a23          	sw	a5,84(s0)
    2c00:	80000793          	li	a5,-2048
    2c04:	04f41c23          	sh	a5,88(s0)
    2c08:	00048513          	mv	a0,s1
    2c0c:	04b408a3          	sb	a1,81(s0)
    2c10:	ffffe097          	auipc	ra,0xffffe
    2c14:	a04080e7          	jalr	-1532(ra) # 614 <__udivsi3>
    2c18:	00150793          	addi	a5,a0,1
    2c1c:	0087d793          	srli	a5,a5,0x8
    2c20:	00178793          	addi	a5,a5,1
    2c24:	02f42023          	sw	a5,32(s0)
    2c28:	04f41d23          	sh	a5,90(s0)
    2c2c:	02000793          	li	a5,32
    2c30:	06f42023          	sw	a5,96(s0)
    2c34:	122907b7          	lui	a5,0x12290
    2c38:	06f42423          	sw	a5,104(s0)
    2c3c:	000057b7          	lui	a5,0x5
    2c40:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x26c>
    2c44:	06f41623          	sh	a5,108(s0)
    2c48:	07800793          	li	a5,120
    2c4c:	06942223          	sw	s1,100(s0)
    2c50:	04042e23          	sw	zero,92(s0)
    2c54:	06f40723          	sb	a5,110(s0)
    2c58:	00000493          	li	s1,0
    2c5c:	00b00a13          	li	s4,11
    2c60:	00090513          	mv	a0,s2
    2c64:	ffffe097          	auipc	ra,0xffffe
    2c68:	ac4080e7          	jalr	-1340(ra) # 728 <strlen>
    2c6c:	02000793          	li	a5,32
    2c70:	00a4d663          	bge	s1,a0,2c7c <fatfs_format_fat16+0x198>
    2c74:	009907b3          	add	a5,s2,s1
    2c78:	0007c783          	lbu	a5,0(a5)
    2c7c:	00940733          	add	a4,s0,s1
    2c80:	06f707a3          	sb	a5,111(a4)
    2c84:	00148493          	addi	s1,s1,1
    2c88:	fd449ce3          	bne	s1,s4,2c60 <fatfs_format_fat16+0x17c>
    2c8c:	000047b7          	lui	a5,0x4
    2c90:	14678793          	addi	a5,a5,326 # 4146 <_read_sectors+0x12e>
    2c94:	06f41d23          	sh	a5,122(s0)
    2c98:	203637b7          	lui	a5,0x20363
    2c9c:	15478793          	addi	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2ca0:	06f42e23          	sw	a5,124(s0)
    2ca4:	000027b7          	lui	a5,0x2
    2ca8:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x100>
    2cac:	08f41023          	sh	a5,128(s0)
    2cb0:	ffffb7b7          	lui	a5,0xffffb
    2cb4:	a5578793          	addi	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2cb8:	24f41123          	sh	a5,578(s0)
    2cbc:	03842783          	lw	a5,56(s0)
    2cc0:	00100613          	li	a2,1
    2cc4:	00098593          	mv	a1,s3
    2cc8:	00000513          	li	a0,0
    2ccc:	000780e7          	jalr	a5
    2cd0:	ee0502e3          	beqz	a0,2bb4 <fatfs_format_fat16+0xd0>
    2cd4:	02042583          	lw	a1,32(s0)
    2cd8:	02c44503          	lbu	a0,44(s0)
    2cdc:	02a45483          	lhu	s1,42(s0)
    2ce0:	ffffe097          	auipc	ra,0xffffe
    2ce4:	238080e7          	jalr	568(ra) # f18 <__mulsi3>
    2ce8:	00a487b3          	add	a5,s1,a0
    2cec:	00f42623          	sw	a5,12(s0)
    2cf0:	02845783          	lhu	a5,40(s0)
    2cf4:	00000593          	li	a1,0
    2cf8:	00579793          	slli	a5,a5,0x5
    2cfc:	1ff78793          	addi	a5,a5,511
    2d00:	4097d793          	srai	a5,a5,0x9
    2d04:	00f42823          	sw	a5,16(s0)
    2d08:	01c42783          	lw	a5,28(s0)
    2d0c:	00f484b3          	add	s1,s1,a5
    2d10:	00950533          	add	a0,a0,s1
    2d14:	00a42223          	sw	a0,4(s0)
    2d18:	00942a23          	sw	s1,20(s0)
    2d1c:	00040513          	mv	a0,s0
    2d20:	ffffe097          	auipc	ra,0xffffe
    2d24:	49c080e7          	jalr	1180(ra) # 11bc <fatfs_erase_fat>
    2d28:	e80506e3          	beqz	a0,2bb4 <fatfs_format_fat16+0xd0>
    2d2c:	01c42583          	lw	a1,28(s0)
    2d30:	00c42783          	lw	a5,12(s0)
    2d34:	01042603          	lw	a2,16(s0)
    2d38:	00040513          	mv	a0,s0
    2d3c:	00f585b3          	add	a1,a1,a5
    2d40:	ffffe097          	auipc	ra,0xffffe
    2d44:	568080e7          	jalr	1384(ra) # 12a8 <fatfs_erase_sectors>
    2d48:	00a03533          	snez	a0,a0
    2d4c:	e6dff06f          	j	2bb8 <fatfs_format_fat16+0xd4>

00002d50 <fatfs_format_fat32>:
    2d50:	fe010113          	addi	sp,sp,-32
    2d54:	00812c23          	sw	s0,24(sp)
    2d58:	00912a23          	sw	s1,20(sp)
    2d5c:	01212823          	sw	s2,16(sp)
    2d60:	00112e23          	sw	ra,28(sp)
    2d64:	01312623          	sw	s3,12(sp)
    2d68:	01412423          	sw	s4,8(sp)
    2d6c:	fff00793          	li	a5,-1
    2d70:	24f52223          	sw	a5,580(a0)
    2d74:	24052423          	sw	zero,584(a0)
    2d78:	02052223          	sw	zero,36(a0)
    2d7c:	00050413          	mv	s0,a0
    2d80:	00058493          	mv	s1,a1
    2d84:	00060913          	mv	s2,a2
    2d88:	00000097          	auipc	ra,0x0
    2d8c:	938080e7          	jalr	-1736(ra) # 26c0 <fatfs_fat_init>
    2d90:	03442783          	lw	a5,52(s0)
    2d94:	fff00513          	li	a0,-1
    2d98:	08078863          	beqz	a5,2e28 <fatfs_format_fat32+0xd8>
    2d9c:	03842783          	lw	a5,56(s0)
    2da0:	fff00513          	li	a0,-1
    2da4:	08078263          	beqz	a5,2e28 <fatfs_format_fat32+0xd8>
    2da8:	00100793          	li	a5,1
    2dac:	00200a13          	li	s4,2
    2db0:	04440993          	addi	s3,s0,68
    2db4:	02f42823          	sw	a5,48(s0)
    2db8:	00f41c23          	sh	a5,24(s0)
    2dbc:	01442423          	sw	s4,8(s0)
    2dc0:	00042e23          	sw	zero,28(s0)
    2dc4:	20000613          	li	a2,512
    2dc8:	00000593          	li	a1,0
    2dcc:	00098513          	mv	a0,s3
    2dd0:	ffffe097          	auipc	ra,0xffffe
    2dd4:	918080e7          	jalr	-1768(ra) # 6e8 <memset>
    2dd8:	4d9047b7          	lui	a5,0x4d904
    2ddc:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2de0:	04f42223          	sw	a5,68(s0)
    2de4:	534f47b7          	lui	a5,0x534f4
    2de8:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2dec:	04f42423          	sw	a5,72(s0)
    2df0:	003037b7          	lui	a5,0x303
    2df4:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2df8:	04f42623          	sw	a5,76(s0)
    2dfc:	000067b7          	lui	a5,0x6
    2e00:	05440823          	sb	s4,80(s0)
    2e04:	f1078793          	addi	a5,a5,-240 # 5f10 <_cluster_size_table32>
    2e08:	0047c583          	lbu	a1,4(a5)
    2e0c:	00058863          	beqz	a1,2e1c <fatfs_format_fat32+0xcc>
    2e10:	0007a703          	lw	a4,0(a5)
    2e14:	00878793          	addi	a5,a5,8
    2e18:	fe9768e3          	bltu	a4,s1,2e08 <fatfs_format_fat32+0xb8>
    2e1c:	00b40023          	sb	a1,0(s0)
    2e20:	02059463          	bnez	a1,2e48 <fatfs_format_fat32+0xf8>
    2e24:	00000513          	li	a0,0
    2e28:	01c12083          	lw	ra,28(sp)
    2e2c:	01812403          	lw	s0,24(sp)
    2e30:	01412483          	lw	s1,20(sp)
    2e34:	01012903          	lw	s2,16(sp)
    2e38:	00c12983          	lw	s3,12(sp)
    2e3c:	00812a03          	lw	s4,8(sp)
    2e40:	02010113          	addi	sp,sp,32
    2e44:	00008067          	ret
    2e48:	002007b7          	lui	a5,0x200
    2e4c:	02f42423          	sw	a5,40(s0)
    2e50:	00200793          	li	a5,2
    2e54:	02f40623          	sb	a5,44(s0)
    2e58:	04f42a23          	sw	a5,84(s0)
    2e5c:	000107b7          	lui	a5,0x10
    2e60:	80078793          	addi	a5,a5,-2048 # f800 <_files+0x51d4>
    2e64:	04f42c23          	sw	a5,88(s0)
    2e68:	00ff07b7          	lui	a5,0xff0
    2e6c:	03f78793          	addi	a5,a5,63 # ff003f <__stacktop+0xfe003f>
    2e70:	02000713          	li	a4,32
    2e74:	04f42e23          	sw	a5,92(s0)
    2e78:	06942223          	sw	s1,100(s0)
    2e7c:	00048513          	mv	a0,s1
    2e80:	04b408a3          	sb	a1,81(s0)
    2e84:	04e41923          	sh	a4,82(s0)
    2e88:	06042023          	sw	zero,96(s0)
    2e8c:	ffffd097          	auipc	ra,0xffffd
    2e90:	788080e7          	jalr	1928(ra) # 614 <__udivsi3>
    2e94:	00150793          	addi	a5,a0,1
    2e98:	0077d793          	srli	a5,a5,0x7
    2e9c:	00178793          	addi	a5,a5,1
    2ea0:	02f42023          	sw	a5,32(s0)
    2ea4:	06f42423          	sw	a5,104(s0)
    2ea8:	00842783          	lw	a5,8(s0)
    2eac:	06042623          	sw	zero,108(s0)
    2eb0:	08040223          	sb	zero,132(s0)
    2eb4:	06f42823          	sw	a5,112(s0)
    2eb8:	01845783          	lhu	a5,24(s0)
    2ebc:	00000493          	li	s1,0
    2ec0:	00b00a13          	li	s4,11
    2ec4:	06f41a23          	sh	a5,116(s0)
    2ec8:	00600793          	li	a5,6
    2ecc:	06f41b23          	sh	a5,118(s0)
    2ed0:	000017b7          	lui	a5,0x1
    2ed4:	22978793          	addi	a5,a5,553 # 1229 <fatfs_erase_fat+0x6d>
    2ed8:	08f41323          	sh	a5,134(s0)
    2edc:	000057b7          	lui	a5,0x5
    2ee0:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x26c>
    2ee4:	08f41423          	sh	a5,136(s0)
    2ee8:	07800793          	li	a5,120
    2eec:	08f40523          	sb	a5,138(s0)
    2ef0:	00090513          	mv	a0,s2
    2ef4:	ffffe097          	auipc	ra,0xffffe
    2ef8:	834080e7          	jalr	-1996(ra) # 728 <strlen>
    2efc:	02000793          	li	a5,32
    2f00:	00a4d663          	bge	s1,a0,2f0c <fatfs_format_fat32+0x1bc>
    2f04:	009907b3          	add	a5,s2,s1
    2f08:	0007c783          	lbu	a5,0(a5)
    2f0c:	00940733          	add	a4,s0,s1
    2f10:	08f705a3          	sb	a5,139(a4)
    2f14:	00148493          	addi	s1,s1,1
    2f18:	fd449ce3          	bne	s1,s4,2ef0 <fatfs_format_fat32+0x1a0>
    2f1c:	000047b7          	lui	a5,0x4
    2f20:	14678793          	addi	a5,a5,326 # 4146 <_read_sectors+0x12e>
    2f24:	08f41b23          	sh	a5,150(s0)
    2f28:	203237b7          	lui	a5,0x20323
    2f2c:	35478793          	addi	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    2f30:	08f42c23          	sw	a5,152(s0)
    2f34:	000027b7          	lui	a5,0x2
    2f38:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x100>
    2f3c:	08f41e23          	sh	a5,156(s0)
    2f40:	ffffb4b7          	lui	s1,0xffffb
    2f44:	03842783          	lw	a5,56(s0)
    2f48:	a5548493          	addi	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2f4c:	24941123          	sh	s1,578(s0)
    2f50:	00100613          	li	a2,1
    2f54:	00098593          	mv	a1,s3
    2f58:	00000513          	li	a0,0
    2f5c:	000780e7          	jalr	a5
    2f60:	ec0502e3          	beqz	a0,2e24 <fatfs_format_fat32+0xd4>
    2f64:	01c42783          	lw	a5,28(s0)
    2f68:	02a45903          	lhu	s2,42(s0)
    2f6c:	02042583          	lw	a1,32(s0)
    2f70:	02c44503          	lbu	a0,44(s0)
    2f74:	00f90933          	add	s2,s2,a5
    2f78:	01242a23          	sw	s2,20(s0)
    2f7c:	ffffe097          	auipc	ra,0xffffe
    2f80:	f9c080e7          	jalr	-100(ra) # f18 <__mulsi3>
    2f84:	01250533          	add	a0,a0,s2
    2f88:	00a42223          	sw	a0,4(s0)
    2f8c:	20000613          	li	a2,512
    2f90:	00000593          	li	a1,0
    2f94:	00098513          	mv	a0,s3
    2f98:	01845903          	lhu	s2,24(s0)
    2f9c:	ffffd097          	auipc	ra,0xffffd
    2fa0:	74c080e7          	jalr	1868(ra) # 6e8 <memset>
    2fa4:	416157b7          	lui	a5,0x41615
    2fa8:	25278793          	addi	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    2fac:	04f42223          	sw	a5,68(s0)
    2fb0:	614177b7          	lui	a5,0x61417
    2fb4:	27278793          	addi	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    2fb8:	22f42423          	sw	a5,552(s0)
    2fbc:	fff00793          	li	a5,-1
    2fc0:	22f42623          	sw	a5,556(s0)
    2fc4:	22f42823          	sw	a5,560(s0)
    2fc8:	03842783          	lw	a5,56(s0)
    2fcc:	24941123          	sh	s1,578(s0)
    2fd0:	00100613          	li	a2,1
    2fd4:	00098593          	mv	a1,s3
    2fd8:	00090513          	mv	a0,s2
    2fdc:	000780e7          	jalr	a5
    2fe0:	e40502e3          	beqz	a0,2e24 <fatfs_format_fat32+0xd4>
    2fe4:	00100593          	li	a1,1
    2fe8:	00040513          	mv	a0,s0
    2fec:	ffffe097          	auipc	ra,0xffffe
    2ff0:	1d0080e7          	jalr	464(ra) # 11bc <fatfs_erase_fat>
    2ff4:	e20508e3          	beqz	a0,2e24 <fatfs_format_fat32+0xd4>
    2ff8:	00842583          	lw	a1,8(s0)
    2ffc:	00040513          	mv	a0,s0
    3000:	ffffe097          	auipc	ra,0xffffe
    3004:	3f0080e7          	jalr	1008(ra) # 13f0 <fatfs_lba_of_cluster>
    3008:	00044603          	lbu	a2,0(s0)
    300c:	00050593          	mv	a1,a0
    3010:	00040513          	mv	a0,s0
    3014:	ffffe097          	auipc	ra,0xffffe
    3018:	294080e7          	jalr	660(ra) # 12a8 <fatfs_erase_sectors>
    301c:	00a03533          	snez	a0,a0
    3020:	e09ff06f          	j	2e28 <fatfs_format_fat32+0xd8>

00003024 <fatfs_format>:
    3024:	004007b7          	lui	a5,0x400
    3028:	00b7e663          	bltu	a5,a1,3034 <fatfs_format+0x10>
    302c:	00000317          	auipc	t1,0x0
    3030:	ab830067          	jr	-1352(t1) # 2ae4 <fatfs_format_fat16>
    3034:	00000317          	auipc	t1,0x0
    3038:	d1c30067          	jr	-740(t1) # 2d50 <fatfs_format_fat32>

0000303c <fl_format>:
    303c:	00058613          	mv	a2,a1
    3040:	00050593          	mv	a1,a0
    3044:	0000a537          	lui	a0,0xa
    3048:	1c450513          	addi	a0,a0,452 # a1c4 <_fs>
    304c:	00000317          	auipc	t1,0x0
    3050:	fd830067          	jr	-40(t1) # 3024 <fatfs_format>

00003054 <fatfs_fat_purge>:
    3054:	ff010113          	addi	sp,sp,-16
    3058:	00812423          	sw	s0,8(sp)
    305c:	25452403          	lw	s0,596(a0)
    3060:	00912223          	sw	s1,4(sp)
    3064:	00112623          	sw	ra,12(sp)
    3068:	00050493          	mv	s1,a0
    306c:	00041663          	bnez	s0,3078 <fatfs_fat_purge+0x24>
    3070:	00100513          	li	a0,1
    3074:	0280006f          	j	309c <fatfs_fat_purge+0x48>
    3078:	20442783          	lw	a5,516(s0)
    307c:	00079663          	bnez	a5,3088 <fatfs_fat_purge+0x34>
    3080:	20c42403          	lw	s0,524(s0)
    3084:	fe9ff06f          	j	306c <fatfs_fat_purge+0x18>
    3088:	00040593          	mv	a1,s0
    308c:	00048513          	mv	a0,s1
    3090:	ffffe097          	auipc	ra,0xffffe
    3094:	fbc080e7          	jalr	-68(ra) # 104c <fatfs_fat_writeback>
    3098:	fe0514e3          	bnez	a0,3080 <fatfs_fat_purge+0x2c>
    309c:	00c12083          	lw	ra,12(sp)
    30a0:	00812403          	lw	s0,8(sp)
    30a4:	00412483          	lw	s1,4(sp)
    30a8:	01010113          	addi	sp,sp,16
    30ac:	00008067          	ret

000030b0 <fl_shutdown>:
    30b0:	000067b7          	lui	a5,0x6
    30b4:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    30b8:	ff010113          	addi	sp,sp,-16
    30bc:	00112623          	sw	ra,12(sp)
    30c0:	00812423          	sw	s0,8(sp)
    30c4:	00912223          	sw	s1,4(sp)
    30c8:	00079663          	bnez	a5,30d4 <fl_shutdown+0x24>
    30cc:	ffffe097          	auipc	ra,0xffffe
    30d0:	5e0080e7          	jalr	1504(ra) # 16ac <fl_init>
    30d4:	0000a437          	lui	s0,0xa
    30d8:	1c440793          	addi	a5,s0,452 # a1c4 <_fs>
    30dc:	03c7a783          	lw	a5,60(a5)
    30e0:	1c440493          	addi	s1,s0,452
    30e4:	00078463          	beqz	a5,30ec <fl_shutdown+0x3c>
    30e8:	000780e7          	jalr	a5
    30ec:	1c440513          	addi	a0,s0,452
    30f0:	00000097          	auipc	ra,0x0
    30f4:	f64080e7          	jalr	-156(ra) # 3054 <fatfs_fat_purge>
    30f8:	0404a783          	lw	a5,64(s1)
    30fc:	00078c63          	beqz	a5,3114 <fl_shutdown+0x64>
    3100:	00812403          	lw	s0,8(sp)
    3104:	00c12083          	lw	ra,12(sp)
    3108:	00412483          	lw	s1,4(sp)
    310c:	01010113          	addi	sp,sp,16
    3110:	00078067          	jr	a5
    3114:	00c12083          	lw	ra,12(sp)
    3118:	00812403          	lw	s0,8(sp)
    311c:	00412483          	lw	s1,4(sp)
    3120:	01010113          	addi	sp,sp,16
    3124:	00008067          	ret

00003128 <fatfs_find_next_cluster>:
    3128:	ff010113          	addi	sp,sp,-16
    312c:	00812423          	sw	s0,8(sp)
    3130:	01212023          	sw	s2,0(sp)
    3134:	00112623          	sw	ra,12(sp)
    3138:	00912223          	sw	s1,4(sp)
    313c:	00050913          	mv	s2,a0
    3140:	00200413          	li	s0,2
    3144:	00058463          	beqz	a1,314c <fatfs_find_next_cluster+0x24>
    3148:	00058413          	mv	s0,a1
    314c:	03092783          	lw	a5,48(s2)
    3150:	00745493          	srli	s1,s0,0x7
    3154:	00079463          	bnez	a5,315c <fatfs_find_next_cluster+0x34>
    3158:	00845493          	srli	s1,s0,0x8
    315c:	01492583          	lw	a1,20(s2)
    3160:	00090513          	mv	a0,s2
    3164:	00b485b3          	add	a1,s1,a1
    3168:	ffffe097          	auipc	ra,0xffffe
    316c:	f68080e7          	jalr	-152(ra) # 10d0 <fatfs_fat_read_sector>
    3170:	00050793          	mv	a5,a0
    3174:	fff00513          	li	a0,-1
    3178:	04078a63          	beqz	a5,31cc <fatfs_find_next_cluster+0xa4>
    317c:	03092703          	lw	a4,48(s2)
    3180:	2087a783          	lw	a5,520(a5)
    3184:	06071063          	bnez	a4,31e4 <fatfs_find_next_cluster+0xbc>
    3188:	00849493          	slli	s1,s1,0x8
    318c:	40940433          	sub	s0,s0,s1
    3190:	00010737          	lui	a4,0x10
    3194:	00141413          	slli	s0,s0,0x1
    3198:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x59d3>
    319c:	00e47433          	and	s0,s0,a4
    31a0:	008787b3          	add	a5,a5,s0
    31a4:	0017c503          	lbu	a0,1(a5)
    31a8:	0007c783          	lbu	a5,0(a5)
    31ac:	00851513          	slli	a0,a0,0x8
    31b0:	00f50533          	add	a0,a0,a5
    31b4:	ffff07b7          	lui	a5,0xffff0
    31b8:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    31bc:	00f507b3          	add	a5,a0,a5
    31c0:	00700713          	li	a4,7
    31c4:	00f76463          	bltu	a4,a5,31cc <fatfs_find_next_cluster+0xa4>
    31c8:	fff00513          	li	a0,-1
    31cc:	00c12083          	lw	ra,12(sp)
    31d0:	00812403          	lw	s0,8(sp)
    31d4:	00412483          	lw	s1,4(sp)
    31d8:	00012903          	lw	s2,0(sp)
    31dc:	01010113          	addi	sp,sp,16
    31e0:	00008067          	ret
    31e4:	00749493          	slli	s1,s1,0x7
    31e8:	40940433          	sub	s0,s0,s1
    31ec:	00010737          	lui	a4,0x10
    31f0:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x59d3>
    31f4:	00241413          	slli	s0,s0,0x2
    31f8:	00e47433          	and	s0,s0,a4
    31fc:	008787b3          	add	a5,a5,s0
    3200:	0037c503          	lbu	a0,3(a5)
    3204:	0027c703          	lbu	a4,2(a5)
    3208:	01851513          	slli	a0,a0,0x18
    320c:	01071713          	slli	a4,a4,0x10
    3210:	00e50533          	add	a0,a0,a4
    3214:	0007c703          	lbu	a4,0(a5)
    3218:	0017c783          	lbu	a5,1(a5)
    321c:	00e50533          	add	a0,a0,a4
    3220:	00879793          	slli	a5,a5,0x8
    3224:	00f50533          	add	a0,a0,a5
    3228:	00451513          	slli	a0,a0,0x4
    322c:	00455513          	srli	a0,a0,0x4
    3230:	f00007b7          	lui	a5,0xf0000
    3234:	f85ff06f          	j	31b8 <fatfs_find_next_cluster+0x90>

00003238 <fatfs_sector_reader>:
    3238:	03052783          	lw	a5,48(a0)
    323c:	fd010113          	addi	sp,sp,-48
    3240:	02812423          	sw	s0,40(sp)
    3244:	03212023          	sw	s2,32(sp)
    3248:	01312e23          	sw	s3,28(sp)
    324c:	02112623          	sw	ra,44(sp)
    3250:	02912223          	sw	s1,36(sp)
    3254:	01412c23          	sw	s4,24(sp)
    3258:	01512a23          	sw	s5,20(sp)
    325c:	00f5e7b3          	or	a5,a1,a5
    3260:	00050413          	mv	s0,a0
    3264:	00060913          	mv	s2,a2
    3268:	00068993          	mv	s3,a3
    326c:	06079c63          	bnez	a5,32e4 <fatfs_sector_reader+0xac>
    3270:	01052783          	lw	a5,16(a0)
    3274:	02f66663          	bltu	a2,a5,32a0 <fatfs_sector_reader+0x68>
    3278:	00000513          	li	a0,0
    327c:	02c12083          	lw	ra,44(sp)
    3280:	02812403          	lw	s0,40(sp)
    3284:	02412483          	lw	s1,36(sp)
    3288:	02012903          	lw	s2,32(sp)
    328c:	01c12983          	lw	s3,28(sp)
    3290:	01812a03          	lw	s4,24(sp)
    3294:	01412a83          	lw	s5,20(sp)
    3298:	03010113          	addi	sp,sp,48
    329c:	00008067          	ret
    32a0:	01c52503          	lw	a0,28(a0)
    32a4:	00c42783          	lw	a5,12(s0)
    32a8:	00f50533          	add	a0,a0,a5
    32ac:	01250533          	add	a0,a0,s2
    32b0:	0a098263          	beqz	s3,3354 <fatfs_sector_reader+0x11c>
    32b4:	03442783          	lw	a5,52(s0)
    32b8:	00100613          	li	a2,1
    32bc:	00098593          	mv	a1,s3
    32c0:	02812403          	lw	s0,40(sp)
    32c4:	02c12083          	lw	ra,44(sp)
    32c8:	02412483          	lw	s1,36(sp)
    32cc:	02012903          	lw	s2,32(sp)
    32d0:	01c12983          	lw	s3,28(sp)
    32d4:	01812a03          	lw	s4,24(sp)
    32d8:	01412a83          	lw	s5,20(sp)
    32dc:	03010113          	addi	sp,sp,48
    32e0:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    32e4:	00058493          	mv	s1,a1
    32e8:	00054583          	lbu	a1,0(a0)
    32ec:	00060513          	mv	a0,a2
    32f0:	00000a93          	li	s5,0
    32f4:	00b12623          	sw	a1,12(sp)
    32f8:	ffffd097          	auipc	ra,0xffffd
    32fc:	31c080e7          	jalr	796(ra) # 614 <__udivsi3>
    3300:	00c12583          	lw	a1,12(sp)
    3304:	00050a13          	mv	s4,a0
    3308:	00090513          	mv	a0,s2
    330c:	ffffd097          	auipc	ra,0xffffd
    3310:	350080e7          	jalr	848(ra) # 65c <__umodsi3>
    3314:	00050913          	mv	s2,a0
    3318:	034a9063          	bne	s5,s4,3338 <fatfs_sector_reader+0x100>
    331c:	fff00793          	li	a5,-1
    3320:	f4f48ce3          	beq	s1,a5,3278 <fatfs_sector_reader+0x40>
    3324:	00048593          	mv	a1,s1
    3328:	00040513          	mv	a0,s0
    332c:	ffffe097          	auipc	ra,0xffffe
    3330:	0c4080e7          	jalr	196(ra) # 13f0 <fatfs_lba_of_cluster>
    3334:	f79ff06f          	j	32ac <fatfs_sector_reader+0x74>
    3338:	00048593          	mv	a1,s1
    333c:	00040513          	mv	a0,s0
    3340:	00000097          	auipc	ra,0x0
    3344:	de8080e7          	jalr	-536(ra) # 3128 <fatfs_find_next_cluster>
    3348:	00050493          	mv	s1,a0
    334c:	001a8a93          	addi	s5,s5,1
    3350:	fc9ff06f          	j	3318 <fatfs_sector_reader+0xe0>
    3354:	24442783          	lw	a5,580(s0)
    3358:	00a78c63          	beq	a5,a0,3370 <fatfs_sector_reader+0x138>
    335c:	03442783          	lw	a5,52(s0)
    3360:	24a42223          	sw	a0,580(s0)
    3364:	00100613          	li	a2,1
    3368:	04440593          	addi	a1,s0,68
    336c:	f55ff06f          	j	32c0 <fatfs_sector_reader+0x88>
    3370:	00100513          	li	a0,1
    3374:	f09ff06f          	j	327c <fatfs_sector_reader+0x44>

00003378 <fatfs_get_file_entry>:
    3378:	eb010113          	addi	sp,sp,-336
    337c:	14812423          	sw	s0,328(sp)
    3380:	01810413          	addi	s0,sp,24
    3384:	14912223          	sw	s1,324(sp)
    3388:	15212023          	sw	s2,320(sp)
    338c:	13312e23          	sw	s3,316(sp)
    3390:	13412c23          	sw	s4,312(sp)
    3394:	13512a23          	sw	s5,308(sp)
    3398:	13612823          	sw	s6,304(sp)
    339c:	14112623          	sw	ra,332(sp)
    33a0:	13712623          	sw	s7,300(sp)
    33a4:	13812423          	sw	s8,296(sp)
    33a8:	13912223          	sw	s9,292(sp)
    33ac:	13a12023          	sw	s10,288(sp)
    33b0:	00050493          	mv	s1,a0
    33b4:	00058a93          	mv	s5,a1
    33b8:	00060913          	mv	s2,a2
    33bc:	00068993          	mv	s3,a3
    33c0:	10010ea3          	sb	zero,285(sp)
    33c4:	11c10a13          	addi	s4,sp,284
    33c8:	00040b13          	mv	s6,s0
    33cc:	00040513          	mv	a0,s0
    33d0:	00d00613          	li	a2,13
    33d4:	00000593          	li	a1,0
    33d8:	00d40413          	addi	s0,s0,13
    33dc:	ffffd097          	auipc	ra,0xffffd
    33e0:	30c080e7          	jalr	780(ra) # 6e8 <memset>
    33e4:	ff4414e3          	bne	s0,s4,33cc <fatfs_get_file_entry+0x54>
    33e8:	00000a13          	li	s4,0
    33ec:	24448c13          	addi	s8,s1,580
    33f0:	00800c93          	li	s9,8
    33f4:	02000b93          	li	s7,32
    33f8:	00000693          	li	a3,0
    33fc:	000a0613          	mv	a2,s4
    3400:	000a8593          	mv	a1,s5
    3404:	00048513          	mv	a0,s1
    3408:	00000097          	auipc	ra,0x0
    340c:	e30080e7          	jalr	-464(ra) # 3238 <fatfs_sector_reader>
    3410:	16050463          	beqz	a0,3578 <fatfs_get_file_entry+0x200>
    3414:	04448413          	addi	s0,s1,68
    3418:	02e00d13          	li	s10,46
    341c:	00040513          	mv	a0,s0
    3420:	ffffe097          	auipc	ra,0xffffe
    3424:	69c080e7          	jalr	1692(ra) # 1abc <fatfs_entry_lfn_text>
    3428:	02050263          	beqz	a0,344c <fatfs_get_file_entry+0xd4>
    342c:	00040593          	mv	a1,s0
    3430:	000b0513          	mv	a0,s6
    3434:	ffffe097          	auipc	ra,0xffffe
    3438:	580080e7          	jalr	1408(ra) # 19b4 <fatfs_lfn_cache_entry>
    343c:	02040413          	addi	s0,s0,32
    3440:	fd841ee3          	bne	s0,s8,341c <fatfs_get_file_entry+0xa4>
    3444:	001a0a13          	addi	s4,s4,1
    3448:	fb1ff06f          	j	33f8 <fatfs_get_file_entry+0x80>
    344c:	00040513          	mv	a0,s0
    3450:	ffffe097          	auipc	ra,0xffffe
    3454:	680080e7          	jalr	1664(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3458:	00050663          	beqz	a0,3464 <fatfs_get_file_entry+0xec>
    345c:	10010ea3          	sb	zero,285(sp)
    3460:	fddff06f          	j	343c <fatfs_get_file_entry+0xc4>
    3464:	00040593          	mv	a1,s0
    3468:	000b0513          	mv	a0,s6
    346c:	ffffe097          	auipc	ra,0xffffe
    3470:	69c080e7          	jalr	1692(ra) # 1b08 <fatfs_entry_lfn_exists>
    3474:	06050863          	beqz	a0,34e4 <fatfs_get_file_entry+0x16c>
    3478:	000b0513          	mv	a0,s6
    347c:	ffffe097          	auipc	ra,0xffffe
    3480:	604080e7          	jalr	1540(ra) # 1a80 <fatfs_lfn_cache_get>
    3484:	00090593          	mv	a1,s2
    3488:	fffff097          	auipc	ra,0xfffff
    348c:	e50080e7          	jalr	-432(ra) # 22d8 <fatfs_compare_names>
    3490:	fc0506e3          	beqz	a0,345c <fatfs_get_file_entry+0xe4>
    3494:	02000613          	li	a2,32
    3498:	00040593          	mv	a1,s0
    349c:	00098513          	mv	a0,s3
    34a0:	ffffd097          	auipc	ra,0xffffd
    34a4:	264080e7          	jalr	612(ra) # 704 <memcpy>
    34a8:	00100513          	li	a0,1
    34ac:	14c12083          	lw	ra,332(sp)
    34b0:	14812403          	lw	s0,328(sp)
    34b4:	14412483          	lw	s1,324(sp)
    34b8:	14012903          	lw	s2,320(sp)
    34bc:	13c12983          	lw	s3,316(sp)
    34c0:	13812a03          	lw	s4,312(sp)
    34c4:	13412a83          	lw	s5,308(sp)
    34c8:	13012b03          	lw	s6,304(sp)
    34cc:	12c12b83          	lw	s7,300(sp)
    34d0:	12812c03          	lw	s8,296(sp)
    34d4:	12412c83          	lw	s9,292(sp)
    34d8:	12012d03          	lw	s10,288(sp)
    34dc:	15010113          	addi	sp,sp,336
    34e0:	00008067          	ret
    34e4:	00040513          	mv	a0,s0
    34e8:	ffffe097          	auipc	ra,0xffffe
    34ec:	668080e7          	jalr	1640(ra) # 1b50 <fatfs_entry_sfn_only>
    34f0:	f40506e3          	beqz	a0,343c <fatfs_get_file_entry+0xc4>
    34f4:	00d00613          	li	a2,13
    34f8:	00000593          	li	a1,0
    34fc:	00810513          	addi	a0,sp,8
    3500:	ffffd097          	auipc	ra,0xffffd
    3504:	1e8080e7          	jalr	488(ra) # 6e8 <memset>
    3508:	00000793          	li	a5,0
    350c:	00f406b3          	add	a3,s0,a5
    3510:	0006c683          	lbu	a3,0(a3)
    3514:	00810713          	addi	a4,sp,8
    3518:	00f70733          	add	a4,a4,a5
    351c:	00d70023          	sb	a3,0(a4)
    3520:	00178793          	addi	a5,a5,1
    3524:	ff9794e3          	bne	a5,s9,350c <fatfs_get_file_entry+0x194>
    3528:	00844783          	lbu	a5,8(s0)
    352c:	00944683          	lbu	a3,9(s0)
    3530:	00100713          	li	a4,1
    3534:	00f108a3          	sb	a5,17(sp)
    3538:	00d10923          	sb	a3,18(sp)
    353c:	01769663          	bne	a3,s7,3548 <fatfs_get_file_entry+0x1d0>
    3540:	fe078793          	addi	a5,a5,-32
    3544:	00f03733          	snez	a4,a5
    3548:	00a44783          	lbu	a5,10(s0)
    354c:	00f109a3          	sb	a5,19(sp)
    3550:	01779463          	bne	a5,s7,3558 <fatfs_get_file_entry+0x1e0>
    3554:	00070a63          	beqz	a4,3568 <fatfs_get_file_entry+0x1f0>
    3558:	00814703          	lbu	a4,8(sp)
    355c:	02000793          	li	a5,32
    3560:	01a70463          	beq	a4,s10,3568 <fatfs_get_file_entry+0x1f0>
    3564:	02e00793          	li	a5,46
    3568:	00f10823          	sb	a5,16(sp)
    356c:	00090593          	mv	a1,s2
    3570:	00810513          	addi	a0,sp,8
    3574:	f15ff06f          	j	3488 <fatfs_get_file_entry+0x110>
    3578:	00000513          	li	a0,0
    357c:	f31ff06f          	j	34ac <fatfs_get_file_entry+0x134>

00003580 <_open_directory>:
    3580:	eb010113          	addi	sp,sp,-336
    3584:	13512a23          	sw	s5,308(sp)
    3588:	0000aab7          	lui	s5,0xa
    358c:	1c4a8793          	addi	a5,s5,452 # a1c4 <_fs>
    3590:	14812423          	sw	s0,328(sp)
    3594:	14912223          	sw	s1,324(sp)
    3598:	15212023          	sw	s2,320(sp)
    359c:	13312e23          	sw	s3,316(sp)
    35a0:	13412c23          	sw	s4,312(sp)
    35a4:	13612823          	sw	s6,304(sp)
    35a8:	0087a403          	lw	s0,8(a5)
    35ac:	14112623          	sw	ra,332(sp)
    35b0:	00050a13          	mv	s4,a0
    35b4:	00058913          	mv	s2,a1
    35b8:	fffff097          	auipc	ra,0xfffff
    35bc:	ad8080e7          	jalr	-1320(ra) # 2090 <fatfs_total_path_levels>
    35c0:	00050993          	mv	s3,a0
    35c4:	00000493          	li	s1,0
    35c8:	fff00b13          	li	s6,-1
    35cc:	0099d863          	bge	s3,s1,35dc <_open_directory+0x5c>
    35d0:	00892023          	sw	s0,0(s2)
    35d4:	00100513          	li	a0,1
    35d8:	0240006f          	j	35fc <_open_directory+0x7c>
    35dc:	10400693          	li	a3,260
    35e0:	02c10613          	addi	a2,sp,44
    35e4:	00048593          	mv	a1,s1
    35e8:	000a0513          	mv	a0,s4
    35ec:	fffff097          	auipc	ra,0xfffff
    35f0:	b18080e7          	jalr	-1256(ra) # 2104 <fatfs_get_substring>
    35f4:	03651863          	bne	a0,s6,3624 <_open_directory+0xa4>
    35f8:	00000513          	li	a0,0
    35fc:	14c12083          	lw	ra,332(sp)
    3600:	14812403          	lw	s0,328(sp)
    3604:	14412483          	lw	s1,324(sp)
    3608:	14012903          	lw	s2,320(sp)
    360c:	13c12983          	lw	s3,316(sp)
    3610:	13812a03          	lw	s4,312(sp)
    3614:	13412a83          	lw	s5,308(sp)
    3618:	13012b03          	lw	s6,304(sp)
    361c:	15010113          	addi	sp,sp,336
    3620:	00008067          	ret
    3624:	00c10693          	addi	a3,sp,12
    3628:	02c10613          	addi	a2,sp,44
    362c:	00040593          	mv	a1,s0
    3630:	1c4a8513          	addi	a0,s5,452
    3634:	00000097          	auipc	ra,0x0
    3638:	d44080e7          	jalr	-700(ra) # 3378 <fatfs_get_file_entry>
    363c:	fa050ee3          	beqz	a0,35f8 <_open_directory+0x78>
    3640:	00c10513          	addi	a0,sp,12
    3644:	ffffe097          	auipc	ra,0xffffe
    3648:	548080e7          	jalr	1352(ra) # 1b8c <fatfs_entry_is_dir>
    364c:	fa0506e3          	beqz	a0,35f8 <_open_directory+0x78>
    3650:	02015403          	lhu	s0,32(sp)
    3654:	02615783          	lhu	a5,38(sp)
    3658:	00148493          	addi	s1,s1,1
    365c:	01041413          	slli	s0,s0,0x10
    3660:	00f40433          	add	s0,s0,a5
    3664:	f69ff06f          	j	35cc <_open_directory+0x4c>

00003668 <fl_opendir>:
    3668:	fe010113          	addi	sp,sp,-32
    366c:	fff00793          	li	a5,-1
    3670:	00f12623          	sw	a5,12(sp)
    3674:	000067b7          	lui	a5,0x6
    3678:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    367c:	00812c23          	sw	s0,24(sp)
    3680:	01212823          	sw	s2,16(sp)
    3684:	00112e23          	sw	ra,28(sp)
    3688:	00912a23          	sw	s1,20(sp)
    368c:	00050913          	mv	s2,a0
    3690:	00058413          	mv	s0,a1
    3694:	00079663          	bnez	a5,36a0 <fl_opendir+0x38>
    3698:	ffffe097          	auipc	ra,0xffffe
    369c:	014080e7          	jalr	20(ra) # 16ac <fl_init>
    36a0:	0000a4b7          	lui	s1,0xa
    36a4:	1c448793          	addi	a5,s1,452 # a1c4 <_fs>
    36a8:	03c7a783          	lw	a5,60(a5)
    36ac:	1c448493          	addi	s1,s1,452
    36b0:	00078463          	beqz	a5,36b8 <fl_opendir+0x50>
    36b4:	000780e7          	jalr	a5
    36b8:	00090513          	mv	a0,s2
    36bc:	fffff097          	auipc	ra,0xfffff
    36c0:	9d4080e7          	jalr	-1580(ra) # 2090 <fatfs_total_path_levels>
    36c4:	fff00793          	li	a5,-1
    36c8:	02f51063          	bne	a0,a5,36e8 <fl_opendir+0x80>
    36cc:	0084a783          	lw	a5,8(s1)
    36d0:	00f12623          	sw	a5,12(sp)
    36d4:	00c12783          	lw	a5,12(sp)
    36d8:	00042023          	sw	zero,0(s0)
    36dc:	00040423          	sb	zero,8(s0)
    36e0:	00f42223          	sw	a5,4(s0)
    36e4:	0180006f          	j	36fc <fl_opendir+0x94>
    36e8:	00c10593          	addi	a1,sp,12
    36ec:	00090513          	mv	a0,s2
    36f0:	00000097          	auipc	ra,0x0
    36f4:	e90080e7          	jalr	-368(ra) # 3580 <_open_directory>
    36f8:	fc051ee3          	bnez	a0,36d4 <fl_opendir+0x6c>
    36fc:	0404a783          	lw	a5,64(s1)
    3700:	00078463          	beqz	a5,3708 <fl_opendir+0xa0>
    3704:	000780e7          	jalr	a5
    3708:	00c12703          	lw	a4,12(sp)
    370c:	fff00793          	li	a5,-1
    3710:	00f71463          	bne	a4,a5,3718 <fl_opendir+0xb0>
    3714:	00000413          	li	s0,0
    3718:	01c12083          	lw	ra,28(sp)
    371c:	00040513          	mv	a0,s0
    3720:	01812403          	lw	s0,24(sp)
    3724:	01412483          	lw	s1,20(sp)
    3728:	01012903          	lw	s2,16(sp)
    372c:	02010113          	addi	sp,sp,32
    3730:	00008067          	ret

00003734 <fl_is_dir>:
    3734:	fe010113          	addi	sp,sp,-32
    3738:	00410593          	addi	a1,sp,4
    373c:	00112e23          	sw	ra,28(sp)
    3740:	00000097          	auipc	ra,0x0
    3744:	f28080e7          	jalr	-216(ra) # 3668 <fl_opendir>
    3748:	01c12083          	lw	ra,28(sp)
    374c:	00a03533          	snez	a0,a0
    3750:	02010113          	addi	sp,sp,32
    3754:	00008067          	ret

00003758 <_open_file>:
    3758:	fc010113          	addi	sp,sp,-64
    375c:	02812c23          	sw	s0,56(sp)
    3760:	03312623          	sw	s3,44(sp)
    3764:	02112e23          	sw	ra,60(sp)
    3768:	02912a23          	sw	s1,52(sp)
    376c:	03212823          	sw	s2,48(sp)
    3770:	00050993          	mv	s3,a0
    3774:	ffffe097          	auipc	ra,0xffffe
    3778:	bc0080e7          	jalr	-1088(ra) # 1334 <_allocate_file>
    377c:	00050413          	mv	s0,a0
    3780:	10050c63          	beqz	a0,3898 <_open_file+0x140>
    3784:	01450913          	addi	s2,a0,20
    3788:	10400613          	li	a2,260
    378c:	00000593          	li	a1,0
    3790:	00090513          	mv	a0,s2
    3794:	ffffd097          	auipc	ra,0xffffd
    3798:	f54080e7          	jalr	-172(ra) # 6e8 <memset>
    379c:	11840493          	addi	s1,s0,280
    37a0:	10400613          	li	a2,260
    37a4:	00000593          	li	a1,0
    37a8:	00048513          	mv	a0,s1
    37ac:	ffffd097          	auipc	ra,0xffffd
    37b0:	f3c080e7          	jalr	-196(ra) # 6e8 <memset>
    37b4:	10400713          	li	a4,260
    37b8:	00048693          	mv	a3,s1
    37bc:	10400613          	li	a2,260
    37c0:	00090593          	mv	a1,s2
    37c4:	00098513          	mv	a0,s3
    37c8:	fffff097          	auipc	ra,0xfffff
    37cc:	a30080e7          	jalr	-1488(ra) # 21f8 <fatfs_split_path>
    37d0:	fff00793          	li	a5,-1
    37d4:	00f51c63          	bne	a0,a5,37ec <_open_file+0x94>
    37d8:	00040513          	mv	a0,s0
    37dc:	ffffe097          	auipc	ra,0xffffe
    37e0:	bcc080e7          	jalr	-1076(ra) # 13a8 <_free_file>
    37e4:	00000413          	li	s0,0
    37e8:	0b00006f          	j	3898 <_open_file+0x140>
    37ec:	00040513          	mv	a0,s0
    37f0:	fffff097          	auipc	ra,0xfffff
    37f4:	c58080e7          	jalr	-936(ra) # 2448 <_check_file_open>
    37f8:	fe0510e3          	bnez	a0,37d8 <_open_file+0x80>
    37fc:	01444783          	lbu	a5,20(s0)
    3800:	0a079c63          	bnez	a5,38b8 <_open_file+0x160>
    3804:	0000a7b7          	lui	a5,0xa
    3808:	1cc7a783          	lw	a5,460(a5) # a1cc <_fs+0x8>
    380c:	00f42023          	sw	a5,0(s0)
    3810:	00042583          	lw	a1,0(s0)
    3814:	0000a937          	lui	s2,0xa
    3818:	00010693          	mv	a3,sp
    381c:	00048613          	mv	a2,s1
    3820:	1c490513          	addi	a0,s2,452 # a1c4 <_fs>
    3824:	00000097          	auipc	ra,0x0
    3828:	b54080e7          	jalr	-1196(ra) # 3378 <fatfs_get_file_entry>
    382c:	fa0506e3          	beqz	a0,37d8 <_open_file+0x80>
    3830:	00010513          	mv	a0,sp
    3834:	ffffe097          	auipc	ra,0xffffe
    3838:	368080e7          	jalr	872(ra) # 1b9c <fatfs_entry_is_file>
    383c:	f8050ee3          	beqz	a0,37d8 <_open_file+0x80>
    3840:	00b00613          	li	a2,11
    3844:	00010593          	mv	a1,sp
    3848:	21c40513          	addi	a0,s0,540
    384c:	ffffd097          	auipc	ra,0xffffd
    3850:	eb8080e7          	jalr	-328(ra) # 704 <memcpy>
    3854:	01c12783          	lw	a5,28(sp)
    3858:	01a15703          	lhu	a4,26(sp)
    385c:	00042423          	sw	zero,8(s0)
    3860:	00f42623          	sw	a5,12(s0)
    3864:	01415783          	lhu	a5,20(sp)
    3868:	42042a23          	sw	zero,1076(s0)
    386c:	00042823          	sw	zero,16(s0)
    3870:	01079793          	slli	a5,a5,0x10
    3874:	00e787b3          	add	a5,a5,a4
    3878:	00f42223          	sw	a5,4(s0)
    387c:	fff00793          	li	a5,-1
    3880:	42f42823          	sw	a5,1072(s0)
    3884:	22f42423          	sw	a5,552(s0)
    3888:	22f42623          	sw	a5,556(s0)
    388c:	1c490513          	addi	a0,s2,452
    3890:	fffff097          	auipc	ra,0xfffff
    3894:	7c4080e7          	jalr	1988(ra) # 3054 <fatfs_fat_purge>
    3898:	03c12083          	lw	ra,60(sp)
    389c:	00040513          	mv	a0,s0
    38a0:	03812403          	lw	s0,56(sp)
    38a4:	03412483          	lw	s1,52(sp)
    38a8:	03012903          	lw	s2,48(sp)
    38ac:	02c12983          	lw	s3,44(sp)
    38b0:	04010113          	addi	sp,sp,64
    38b4:	00008067          	ret
    38b8:	00040593          	mv	a1,s0
    38bc:	00090513          	mv	a0,s2
    38c0:	00000097          	auipc	ra,0x0
    38c4:	cc0080e7          	jalr	-832(ra) # 3580 <_open_directory>
    38c8:	f40514e3          	bnez	a0,3810 <_open_file+0xb8>
    38cc:	f0dff06f          	j	37d8 <_open_file+0x80>

000038d0 <fatfs_sfn_exists>:
    38d0:	fe010113          	addi	sp,sp,-32
    38d4:	00912a23          	sw	s1,20(sp)
    38d8:	01212823          	sw	s2,16(sp)
    38dc:	01312623          	sw	s3,12(sp)
    38e0:	01412423          	sw	s4,8(sp)
    38e4:	01512223          	sw	s5,4(sp)
    38e8:	00112e23          	sw	ra,28(sp)
    38ec:	00812c23          	sw	s0,24(sp)
    38f0:	00050493          	mv	s1,a0
    38f4:	00058993          	mv	s3,a1
    38f8:	00060a13          	mv	s4,a2
    38fc:	00000913          	li	s2,0
    3900:	24450a93          	addi	s5,a0,580
    3904:	00000693          	li	a3,0
    3908:	00090613          	mv	a2,s2
    390c:	00098593          	mv	a1,s3
    3910:	00048513          	mv	a0,s1
    3914:	00000097          	auipc	ra,0x0
    3918:	924080e7          	jalr	-1756(ra) # 3238 <fatfs_sector_reader>
    391c:	06050263          	beqz	a0,3980 <fatfs_sfn_exists+0xb0>
    3920:	04448413          	addi	s0,s1,68
    3924:	00040513          	mv	a0,s0
    3928:	ffffe097          	auipc	ra,0xffffe
    392c:	194080e7          	jalr	404(ra) # 1abc <fatfs_entry_lfn_text>
    3930:	02051e63          	bnez	a0,396c <fatfs_sfn_exists+0x9c>
    3934:	00040513          	mv	a0,s0
    3938:	ffffe097          	auipc	ra,0xffffe
    393c:	198080e7          	jalr	408(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3940:	02051663          	bnez	a0,396c <fatfs_sfn_exists+0x9c>
    3944:	00040513          	mv	a0,s0
    3948:	ffffe097          	auipc	ra,0xffffe
    394c:	208080e7          	jalr	520(ra) # 1b50 <fatfs_entry_sfn_only>
    3950:	00050e63          	beqz	a0,396c <fatfs_sfn_exists+0x9c>
    3954:	00b00613          	li	a2,11
    3958:	000a0593          	mv	a1,s4
    395c:	00040513          	mv	a0,s0
    3960:	ffffd097          	auipc	ra,0xffffd
    3964:	de8080e7          	jalr	-536(ra) # 748 <strncmp>
    3968:	00050a63          	beqz	a0,397c <fatfs_sfn_exists+0xac>
    396c:	02040413          	addi	s0,s0,32
    3970:	fb541ae3          	bne	s0,s5,3924 <fatfs_sfn_exists+0x54>
    3974:	00190913          	addi	s2,s2,1
    3978:	f8dff06f          	j	3904 <fatfs_sfn_exists+0x34>
    397c:	00100513          	li	a0,1
    3980:	01c12083          	lw	ra,28(sp)
    3984:	01812403          	lw	s0,24(sp)
    3988:	01412483          	lw	s1,20(sp)
    398c:	01012903          	lw	s2,16(sp)
    3990:	00c12983          	lw	s3,12(sp)
    3994:	00812a03          	lw	s4,8(sp)
    3998:	00412a83          	lw	s5,4(sp)
    399c:	02010113          	addi	sp,sp,32
    39a0:	00008067          	ret

000039a4 <fatfs_update_file_length>:
    39a4:	03852783          	lw	a5,56(a0)
    39a8:	14078e63          	beqz	a5,3b04 <fatfs_update_file_length+0x160>
    39ac:	fd010113          	addi	sp,sp,-48
    39b0:	02912223          	sw	s1,36(sp)
    39b4:	03212023          	sw	s2,32(sp)
    39b8:	01312e23          	sw	s3,28(sp)
    39bc:	01412c23          	sw	s4,24(sp)
    39c0:	01512a23          	sw	s5,20(sp)
    39c4:	01612823          	sw	s6,16(sp)
    39c8:	02112623          	sw	ra,44(sp)
    39cc:	02812423          	sw	s0,40(sp)
    39d0:	01712623          	sw	s7,12(sp)
    39d4:	00050493          	mv	s1,a0
    39d8:	00058a13          	mv	s4,a1
    39dc:	00060a93          	mv	s5,a2
    39e0:	00068913          	mv	s2,a3
    39e4:	00000993          	li	s3,0
    39e8:	24450b13          	addi	s6,a0,580
    39ec:	00000693          	li	a3,0
    39f0:	00098613          	mv	a2,s3
    39f4:	000a0593          	mv	a1,s4
    39f8:	00048513          	mv	a0,s1
    39fc:	00000097          	auipc	ra,0x0
    3a00:	83c080e7          	jalr	-1988(ra) # 3238 <fatfs_sector_reader>
    3a04:	0c050863          	beqz	a0,3ad4 <fatfs_update_file_length+0x130>
    3a08:	04448413          	addi	s0,s1,68
    3a0c:	00040b93          	mv	s7,s0
    3a10:	00040513          	mv	a0,s0
    3a14:	ffffe097          	auipc	ra,0xffffe
    3a18:	0a8080e7          	jalr	168(ra) # 1abc <fatfs_entry_lfn_text>
    3a1c:	0a051463          	bnez	a0,3ac4 <fatfs_update_file_length+0x120>
    3a20:	00040513          	mv	a0,s0
    3a24:	ffffe097          	auipc	ra,0xffffe
    3a28:	0ac080e7          	jalr	172(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3a2c:	08051c63          	bnez	a0,3ac4 <fatfs_update_file_length+0x120>
    3a30:	00040513          	mv	a0,s0
    3a34:	ffffe097          	auipc	ra,0xffffe
    3a38:	11c080e7          	jalr	284(ra) # 1b50 <fatfs_entry_sfn_only>
    3a3c:	08050463          	beqz	a0,3ac4 <fatfs_update_file_length+0x120>
    3a40:	00b00613          	li	a2,11
    3a44:	000a8593          	mv	a1,s5
    3a48:	00040513          	mv	a0,s0
    3a4c:	ffffd097          	auipc	ra,0xffffd
    3a50:	cfc080e7          	jalr	-772(ra) # 748 <strncmp>
    3a54:	06051863          	bnez	a0,3ac4 <fatfs_update_file_length+0x120>
    3a58:	00895793          	srli	a5,s2,0x8
    3a5c:	01240e23          	sb	s2,28(s0)
    3a60:	00f40ea3          	sb	a5,29(s0)
    3a64:	01095793          	srli	a5,s2,0x10
    3a68:	01895913          	srli	s2,s2,0x18
    3a6c:	00f40f23          	sb	a5,30(s0)
    3a70:	01240fa3          	sb	s2,31(s0)
    3a74:	00040593          	mv	a1,s0
    3a78:	02000613          	li	a2,32
    3a7c:	00040513          	mv	a0,s0
    3a80:	ffffd097          	auipc	ra,0xffffd
    3a84:	c84080e7          	jalr	-892(ra) # 704 <memcpy>
    3a88:	02812403          	lw	s0,40(sp)
    3a8c:	0384a783          	lw	a5,56(s1)
    3a90:	2444a503          	lw	a0,580(s1)
    3a94:	02c12083          	lw	ra,44(sp)
    3a98:	02412483          	lw	s1,36(sp)
    3a9c:	02012903          	lw	s2,32(sp)
    3aa0:	01c12983          	lw	s3,28(sp)
    3aa4:	01812a03          	lw	s4,24(sp)
    3aa8:	01412a83          	lw	s5,20(sp)
    3aac:	01012b03          	lw	s6,16(sp)
    3ab0:	000b8593          	mv	a1,s7
    3ab4:	00c12b83          	lw	s7,12(sp)
    3ab8:	00100613          	li	a2,1
    3abc:	03010113          	addi	sp,sp,48
    3ac0:	00078067          	jr	a5
    3ac4:	02040413          	addi	s0,s0,32
    3ac8:	f56414e3          	bne	s0,s6,3a10 <fatfs_update_file_length+0x6c>
    3acc:	00198993          	addi	s3,s3,1
    3ad0:	f1dff06f          	j	39ec <fatfs_update_file_length+0x48>
    3ad4:	02c12083          	lw	ra,44(sp)
    3ad8:	02812403          	lw	s0,40(sp)
    3adc:	02412483          	lw	s1,36(sp)
    3ae0:	02012903          	lw	s2,32(sp)
    3ae4:	01c12983          	lw	s3,28(sp)
    3ae8:	01812a03          	lw	s4,24(sp)
    3aec:	01412a83          	lw	s5,20(sp)
    3af0:	01012b03          	lw	s6,16(sp)
    3af4:	00c12b83          	lw	s7,12(sp)
    3af8:	00000513          	li	a0,0
    3afc:	03010113          	addi	sp,sp,48
    3b00:	00008067          	ret
    3b04:	00000513          	li	a0,0
    3b08:	00008067          	ret

00003b0c <fatfs_mark_file_deleted>:
    3b0c:	03852783          	lw	a5,56(a0)
    3b10:	12078c63          	beqz	a5,3c48 <fatfs_mark_file_deleted+0x13c>
    3b14:	fe010113          	addi	sp,sp,-32
    3b18:	00912a23          	sw	s1,20(sp)
    3b1c:	01212823          	sw	s2,16(sp)
    3b20:	01312623          	sw	s3,12(sp)
    3b24:	01412423          	sw	s4,8(sp)
    3b28:	01512223          	sw	s5,4(sp)
    3b2c:	00112e23          	sw	ra,28(sp)
    3b30:	00812c23          	sw	s0,24(sp)
    3b34:	01612023          	sw	s6,0(sp)
    3b38:	00050493          	mv	s1,a0
    3b3c:	00058993          	mv	s3,a1
    3b40:	00060a13          	mv	s4,a2
    3b44:	00000913          	li	s2,0
    3b48:	24450a93          	addi	s5,a0,580
    3b4c:	00000693          	li	a3,0
    3b50:	00090613          	mv	a2,s2
    3b54:	00098593          	mv	a1,s3
    3b58:	00048513          	mv	a0,s1
    3b5c:	fffff097          	auipc	ra,0xfffff
    3b60:	6dc080e7          	jalr	1756(ra) # 3238 <fatfs_sector_reader>
    3b64:	0a050c63          	beqz	a0,3c1c <fatfs_mark_file_deleted+0x110>
    3b68:	04448413          	addi	s0,s1,68
    3b6c:	00040b13          	mv	s6,s0
    3b70:	00040513          	mv	a0,s0
    3b74:	ffffe097          	auipc	ra,0xffffe
    3b78:	f48080e7          	jalr	-184(ra) # 1abc <fatfs_entry_lfn_text>
    3b7c:	08051863          	bnez	a0,3c0c <fatfs_mark_file_deleted+0x100>
    3b80:	00040513          	mv	a0,s0
    3b84:	ffffe097          	auipc	ra,0xffffe
    3b88:	f4c080e7          	jalr	-180(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3b8c:	08051063          	bnez	a0,3c0c <fatfs_mark_file_deleted+0x100>
    3b90:	00040513          	mv	a0,s0
    3b94:	ffffe097          	auipc	ra,0xffffe
    3b98:	fbc080e7          	jalr	-68(ra) # 1b50 <fatfs_entry_sfn_only>
    3b9c:	06050863          	beqz	a0,3c0c <fatfs_mark_file_deleted+0x100>
    3ba0:	00b00613          	li	a2,11
    3ba4:	000a0593          	mv	a1,s4
    3ba8:	00040513          	mv	a0,s0
    3bac:	ffffd097          	auipc	ra,0xffffd
    3bb0:	b9c080e7          	jalr	-1124(ra) # 748 <strncmp>
    3bb4:	04051c63          	bnez	a0,3c0c <fatfs_mark_file_deleted+0x100>
    3bb8:	fe500793          	li	a5,-27
    3bbc:	00f40023          	sb	a5,0(s0)
    3bc0:	00040593          	mv	a1,s0
    3bc4:	02000613          	li	a2,32
    3bc8:	00040513          	mv	a0,s0
    3bcc:	ffffd097          	auipc	ra,0xffffd
    3bd0:	b38080e7          	jalr	-1224(ra) # 704 <memcpy>
    3bd4:	01812403          	lw	s0,24(sp)
    3bd8:	0384a783          	lw	a5,56(s1)
    3bdc:	2444a503          	lw	a0,580(s1)
    3be0:	01c12083          	lw	ra,28(sp)
    3be4:	01412483          	lw	s1,20(sp)
    3be8:	01012903          	lw	s2,16(sp)
    3bec:	00c12983          	lw	s3,12(sp)
    3bf0:	00812a03          	lw	s4,8(sp)
    3bf4:	00412a83          	lw	s5,4(sp)
    3bf8:	000b0593          	mv	a1,s6
    3bfc:	00012b03          	lw	s6,0(sp)
    3c00:	00100613          	li	a2,1
    3c04:	02010113          	addi	sp,sp,32
    3c08:	00078067          	jr	a5
    3c0c:	02040413          	addi	s0,s0,32
    3c10:	f75410e3          	bne	s0,s5,3b70 <fatfs_mark_file_deleted+0x64>
    3c14:	00190913          	addi	s2,s2,1
    3c18:	f35ff06f          	j	3b4c <fatfs_mark_file_deleted+0x40>
    3c1c:	01c12083          	lw	ra,28(sp)
    3c20:	01812403          	lw	s0,24(sp)
    3c24:	01412483          	lw	s1,20(sp)
    3c28:	01012903          	lw	s2,16(sp)
    3c2c:	00c12983          	lw	s3,12(sp)
    3c30:	00812a03          	lw	s4,8(sp)
    3c34:	00412a83          	lw	s5,4(sp)
    3c38:	00012b03          	lw	s6,0(sp)
    3c3c:	00000513          	li	a0,0
    3c40:	02010113          	addi	sp,sp,32
    3c44:	00008067          	ret
    3c48:	00000513          	li	a0,0
    3c4c:	00008067          	ret

00003c50 <fatfs_list_directory_next>:
    3c50:	ec010113          	addi	sp,sp,-320
    3c54:	13212823          	sw	s2,304(sp)
    3c58:	13312623          	sw	s3,300(sp)
    3c5c:	13412423          	sw	s4,296(sp)
    3c60:	13512223          	sw	s5,292(sp)
    3c64:	12112e23          	sw	ra,316(sp)
    3c68:	12812c23          	sw	s0,312(sp)
    3c6c:	12912a23          	sw	s1,308(sp)
    3c70:	00050a13          	mv	s4,a0
    3c74:	00058913          	mv	s2,a1
    3c78:	00060993          	mv	s3,a2
    3c7c:	10010ea3          	sb	zero,285(sp)
    3c80:	00f00a93          	li	s5,15
    3c84:	00092603          	lw	a2,0(s2)
    3c88:	00492583          	lw	a1,4(s2)
    3c8c:	00000693          	li	a3,0
    3c90:	000a0513          	mv	a0,s4
    3c94:	fffff097          	auipc	ra,0xfffff
    3c98:	5a4080e7          	jalr	1444(ra) # 3238 <fatfs_sector_reader>
    3c9c:	12050063          	beqz	a0,3dbc <fatfs_list_directory_next+0x16c>
    3ca0:	00894483          	lbu	s1,8(s2)
    3ca4:	00549413          	slli	s0,s1,0x5
    3ca8:	04440413          	addi	s0,s0,68
    3cac:	008a0433          	add	s0,s4,s0
    3cb0:	009afc63          	bgeu	s5,s1,3cc8 <fatfs_list_directory_next+0x78>
    3cb4:	00092783          	lw	a5,0(s2)
    3cb8:	00090423          	sb	zero,8(s2)
    3cbc:	00178793          	addi	a5,a5,1
    3cc0:	00f92023          	sw	a5,0(s2)
    3cc4:	fc1ff06f          	j	3c84 <fatfs_list_directory_next+0x34>
    3cc8:	00040513          	mv	a0,s0
    3ccc:	ffffe097          	auipc	ra,0xffffe
    3cd0:	df0080e7          	jalr	-528(ra) # 1abc <fatfs_entry_lfn_text>
    3cd4:	02050263          	beqz	a0,3cf8 <fatfs_list_directory_next+0xa8>
    3cd8:	00040593          	mv	a1,s0
    3cdc:	01810513          	addi	a0,sp,24
    3ce0:	ffffe097          	auipc	ra,0xffffe
    3ce4:	cd4080e7          	jalr	-812(ra) # 19b4 <fatfs_lfn_cache_entry>
    3ce8:	00148493          	addi	s1,s1,1
    3cec:	0ff4f493          	zext.b	s1,s1
    3cf0:	02040413          	addi	s0,s0,32
    3cf4:	fbdff06f          	j	3cb0 <fatfs_list_directory_next+0x60>
    3cf8:	00040513          	mv	a0,s0
    3cfc:	ffffe097          	auipc	ra,0xffffe
    3d00:	dd4080e7          	jalr	-556(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3d04:	00050663          	beqz	a0,3d10 <fatfs_list_directory_next+0xc0>
    3d08:	10010ea3          	sb	zero,285(sp)
    3d0c:	fddff06f          	j	3ce8 <fatfs_list_directory_next+0x98>
    3d10:	00040593          	mv	a1,s0
    3d14:	01810513          	addi	a0,sp,24
    3d18:	ffffe097          	auipc	ra,0xffffe
    3d1c:	df0080e7          	jalr	-528(ra) # 1b08 <fatfs_entry_lfn_exists>
    3d20:	0c050063          	beqz	a0,3de0 <fatfs_list_directory_next+0x190>
    3d24:	01810513          	addi	a0,sp,24
    3d28:	ffffe097          	auipc	ra,0xffffe
    3d2c:	d58080e7          	jalr	-680(ra) # 1a80 <fatfs_lfn_cache_get>
    3d30:	00050593          	mv	a1,a0
    3d34:	10300613          	li	a2,259
    3d38:	00098513          	mv	a0,s3
    3d3c:	ffffd097          	auipc	ra,0xffffd
    3d40:	a4c080e7          	jalr	-1460(ra) # 788 <strncpy>
    3d44:	00040513          	mv	a0,s0
    3d48:	ffffe097          	auipc	ra,0xffffe
    3d4c:	e44080e7          	jalr	-444(ra) # 1b8c <fatfs_entry_is_dir>
    3d50:	00a03533          	snez	a0,a0
    3d54:	10a98223          	sb	a0,260(s3)
    3d58:	01d44783          	lbu	a5,29(s0)
    3d5c:	01c44703          	lbu	a4,28(s0)
    3d60:	00148493          	addi	s1,s1,1
    3d64:	00879793          	slli	a5,a5,0x8
    3d68:	00e7e7b3          	or	a5,a5,a4
    3d6c:	01e44703          	lbu	a4,30(s0)
    3d70:	00100513          	li	a0,1
    3d74:	01071713          	slli	a4,a4,0x10
    3d78:	00f76733          	or	a4,a4,a5
    3d7c:	01f44783          	lbu	a5,31(s0)
    3d80:	01879793          	slli	a5,a5,0x18
    3d84:	00e7e7b3          	or	a5,a5,a4
    3d88:	10f9a623          	sw	a5,268(s3)
    3d8c:	01544783          	lbu	a5,21(s0)
    3d90:	01444703          	lbu	a4,20(s0)
    3d94:	01a44683          	lbu	a3,26(s0)
    3d98:	00879793          	slli	a5,a5,0x8
    3d9c:	00e7e7b3          	or	a5,a5,a4
    3da0:	01b44703          	lbu	a4,27(s0)
    3da4:	01079793          	slli	a5,a5,0x10
    3da8:	00871713          	slli	a4,a4,0x8
    3dac:	00d76733          	or	a4,a4,a3
    3db0:	00e7e7b3          	or	a5,a5,a4
    3db4:	10f9a423          	sw	a5,264(s3)
    3db8:	00990423          	sb	s1,8(s2)
    3dbc:	13c12083          	lw	ra,316(sp)
    3dc0:	13812403          	lw	s0,312(sp)
    3dc4:	13412483          	lw	s1,308(sp)
    3dc8:	13012903          	lw	s2,304(sp)
    3dcc:	12c12983          	lw	s3,300(sp)
    3dd0:	12812a03          	lw	s4,296(sp)
    3dd4:	12412a83          	lw	s5,292(sp)
    3dd8:	14010113          	addi	sp,sp,320
    3ddc:	00008067          	ret
    3de0:	00040513          	mv	a0,s0
    3de4:	ffffe097          	auipc	ra,0xffffe
    3de8:	d6c080e7          	jalr	-660(ra) # 1b50 <fatfs_entry_sfn_only>
    3dec:	ee050ee3          	beqz	a0,3ce8 <fatfs_list_directory_next+0x98>
    3df0:	00d00613          	li	a2,13
    3df4:	00000593          	li	a1,0
    3df8:	00810513          	addi	a0,sp,8
    3dfc:	10010ea3          	sb	zero,285(sp)
    3e00:	ffffd097          	auipc	ra,0xffffd
    3e04:	8e8080e7          	jalr	-1816(ra) # 6e8 <memset>
    3e08:	00000793          	li	a5,0
    3e0c:	00800713          	li	a4,8
    3e10:	00f40633          	add	a2,s0,a5
    3e14:	00064603          	lbu	a2,0(a2)
    3e18:	00810693          	addi	a3,sp,8
    3e1c:	00f686b3          	add	a3,a3,a5
    3e20:	00c68023          	sb	a2,0(a3)
    3e24:	00178793          	addi	a5,a5,1
    3e28:	fee794e3          	bne	a5,a4,3e10 <fatfs_list_directory_next+0x1c0>
    3e2c:	00844783          	lbu	a5,8(s0)
    3e30:	00944683          	lbu	a3,9(s0)
    3e34:	02000613          	li	a2,32
    3e38:	00f108a3          	sb	a5,17(sp)
    3e3c:	00d10923          	sb	a3,18(sp)
    3e40:	00100713          	li	a4,1
    3e44:	00c69663          	bne	a3,a2,3e50 <fatfs_list_directory_next+0x200>
    3e48:	fe078793          	addi	a5,a5,-32
    3e4c:	00f03733          	snez	a4,a5
    3e50:	00a44783          	lbu	a5,10(s0)
    3e54:	02000693          	li	a3,32
    3e58:	00f109a3          	sb	a5,19(sp)
    3e5c:	00d79463          	bne	a5,a3,3e64 <fatfs_list_directory_next+0x214>
    3e60:	00070c63          	beqz	a4,3e78 <fatfs_list_directory_next+0x228>
    3e64:	00814683          	lbu	a3,8(sp)
    3e68:	02e00713          	li	a4,46
    3e6c:	02000793          	li	a5,32
    3e70:	00e68463          	beq	a3,a4,3e78 <fatfs_list_directory_next+0x228>
    3e74:	02e00793          	li	a5,46
    3e78:	00810593          	addi	a1,sp,8
    3e7c:	00098513          	mv	a0,s3
    3e80:	00f10823          	sb	a5,16(sp)
    3e84:	ffffe097          	auipc	ra,0xffffe
    3e88:	690080e7          	jalr	1680(ra) # 2514 <fatfs_get_sfn_display_name>
    3e8c:	eb9ff06f          	j	3d44 <fatfs_list_directory_next+0xf4>

00003e90 <fl_readdir>:
    3e90:	000067b7          	lui	a5,0x6
    3e94:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    3e98:	fe010113          	addi	sp,sp,-32
    3e9c:	00912a23          	sw	s1,20(sp)
    3ea0:	01212823          	sw	s2,16(sp)
    3ea4:	00112e23          	sw	ra,28(sp)
    3ea8:	00812c23          	sw	s0,24(sp)
    3eac:	01312623          	sw	s3,12(sp)
    3eb0:	00050493          	mv	s1,a0
    3eb4:	00058913          	mv	s2,a1
    3eb8:	00079663          	bnez	a5,3ec4 <fl_readdir+0x34>
    3ebc:	ffffd097          	auipc	ra,0xffffd
    3ec0:	7f0080e7          	jalr	2032(ra) # 16ac <fl_init>
    3ec4:	0000a437          	lui	s0,0xa
    3ec8:	1c440793          	addi	a5,s0,452 # a1c4 <_fs>
    3ecc:	03c7a783          	lw	a5,60(a5)
    3ed0:	1c440993          	addi	s3,s0,452
    3ed4:	00078463          	beqz	a5,3edc <fl_readdir+0x4c>
    3ed8:	000780e7          	jalr	a5
    3edc:	1c440513          	addi	a0,s0,452
    3ee0:	00090613          	mv	a2,s2
    3ee4:	00048593          	mv	a1,s1
    3ee8:	00000097          	auipc	ra,0x0
    3eec:	d68080e7          	jalr	-664(ra) # 3c50 <fatfs_list_directory_next>
    3ef0:	0409a783          	lw	a5,64(s3)
    3ef4:	00050413          	mv	s0,a0
    3ef8:	00078463          	beqz	a5,3f00 <fl_readdir+0x70>
    3efc:	000780e7          	jalr	a5
    3f00:	01c12083          	lw	ra,28(sp)
    3f04:	00143513          	seqz	a0,s0
    3f08:	01812403          	lw	s0,24(sp)
    3f0c:	01412483          	lw	s1,20(sp)
    3f10:	01012903          	lw	s2,16(sp)
    3f14:	00c12983          	lw	s3,12(sp)
    3f18:	40a00533          	neg	a0,a0
    3f1c:	02010113          	addi	sp,sp,32
    3f20:	00008067          	ret

00003f24 <fl_listdirectory>:
    3f24:	000067b7          	lui	a5,0x6
    3f28:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    3f2c:	ed010113          	addi	sp,sp,-304
    3f30:	12912223          	sw	s1,292(sp)
    3f34:	12112623          	sw	ra,300(sp)
    3f38:	12812423          	sw	s0,296(sp)
    3f3c:	13212023          	sw	s2,288(sp)
    3f40:	00050493          	mv	s1,a0
    3f44:	00079663          	bnez	a5,3f50 <fl_listdirectory+0x2c>
    3f48:	ffffd097          	auipc	ra,0xffffd
    3f4c:	764080e7          	jalr	1892(ra) # 16ac <fl_init>
    3f50:	0000a7b7          	lui	a5,0xa
    3f54:	1c478713          	addi	a4,a5,452 # a1c4 <_fs>
    3f58:	03c72703          	lw	a4,60(a4)
    3f5c:	1c478413          	addi	s0,a5,452
    3f60:	00070463          	beqz	a4,3f68 <fl_listdirectory+0x44>
    3f64:	000700e7          	jalr	a4
    3f68:	00006537          	lui	a0,0x6
    3f6c:	00048593          	mv	a1,s1
    3f70:	e9c50513          	addi	a0,a0,-356 # 5e9c <font+0x338>
    3f74:	ffffd097          	auipc	ra,0xffffd
    3f78:	e68080e7          	jalr	-408(ra) # ddc <printf>
    3f7c:	00410593          	addi	a1,sp,4
    3f80:	00048513          	mv	a0,s1
    3f84:	fffff097          	auipc	ra,0xfffff
    3f88:	6e4080e7          	jalr	1764(ra) # 3668 <fl_opendir>
    3f8c:	02050063          	beqz	a0,3fac <fl_listdirectory+0x88>
    3f90:	000064b7          	lui	s1,0x6
    3f94:	00006937          	lui	s2,0x6
    3f98:	01010593          	addi	a1,sp,16
    3f9c:	00410513          	addi	a0,sp,4
    3fa0:	00000097          	auipc	ra,0x0
    3fa4:	ef0080e7          	jalr	-272(ra) # 3e90 <fl_readdir>
    3fa8:	02050263          	beqz	a0,3fcc <fl_listdirectory+0xa8>
    3fac:	04042783          	lw	a5,64(s0)
    3fb0:	04078863          	beqz	a5,4000 <fl_listdirectory+0xdc>
    3fb4:	12812403          	lw	s0,296(sp)
    3fb8:	12c12083          	lw	ra,300(sp)
    3fbc:	12412483          	lw	s1,292(sp)
    3fc0:	12012903          	lw	s2,288(sp)
    3fc4:	13010113          	addi	sp,sp,304
    3fc8:	00078067          	jr	a5
    3fcc:	11414783          	lbu	a5,276(sp)
    3fd0:	00078c63          	beqz	a5,3fe8 <fl_listdirectory+0xc4>
    3fd4:	01010593          	addi	a1,sp,16
    3fd8:	eb090513          	addi	a0,s2,-336 # 5eb0 <font+0x34c>
    3fdc:	ffffd097          	auipc	ra,0xffffd
    3fe0:	e00080e7          	jalr	-512(ra) # ddc <printf>
    3fe4:	fb5ff06f          	j	3f98 <fl_listdirectory+0x74>
    3fe8:	11c12603          	lw	a2,284(sp)
    3fec:	01010593          	addi	a1,sp,16
    3ff0:	ebc48513          	addi	a0,s1,-324 # 5ebc <font+0x358>
    3ff4:	ffffd097          	auipc	ra,0xffffd
    3ff8:	de8080e7          	jalr	-536(ra) # ddc <printf>
    3ffc:	f9dff06f          	j	3f98 <fl_listdirectory+0x74>
    4000:	12c12083          	lw	ra,300(sp)
    4004:	12812403          	lw	s0,296(sp)
    4008:	12412483          	lw	s1,292(sp)
    400c:	12012903          	lw	s2,288(sp)
    4010:	13010113          	addi	sp,sp,304
    4014:	00008067          	ret

00004018 <_read_sectors>:
    4018:	fd010113          	addi	sp,sp,-48
    401c:	01612823          	sw	s6,16(sp)
    4020:	0000ab37          	lui	s6,0xa
    4024:	01512a23          	sw	s5,20(sp)
    4028:	1c4b4a83          	lbu	s5,452(s6) # a1c4 <_fs>
    402c:	01412c23          	sw	s4,24(sp)
    4030:	00058a13          	mv	s4,a1
    4034:	02912223          	sw	s1,36(sp)
    4038:	000a8593          	mv	a1,s5
    403c:	00050493          	mv	s1,a0
    4040:	000a0513          	mv	a0,s4
    4044:	02112623          	sw	ra,44(sp)
    4048:	02812423          	sw	s0,40(sp)
    404c:	03212023          	sw	s2,32(sp)
    4050:	00068413          	mv	s0,a3
    4054:	01712623          	sw	s7,12(sp)
    4058:	01812423          	sw	s8,8(sp)
    405c:	01312e23          	sw	s3,28(sp)
    4060:	00060c13          	mv	s8,a2
    4064:	ffffc097          	auipc	ra,0xffffc
    4068:	5b0080e7          	jalr	1456(ra) # 614 <__udivsi3>
    406c:	00050913          	mv	s2,a0
    4070:	000a8593          	mv	a1,s5
    4074:	000a0513          	mv	a0,s4
    4078:	ffffc097          	auipc	ra,0xffffc
    407c:	5e4080e7          	jalr	1508(ra) # 65c <__umodsi3>
    4080:	00a407b3          	add	a5,s0,a0
    4084:	00050b93          	mv	s7,a0
    4088:	00fafe63          	bgeu	s5,a5,40a4 <_read_sectors+0x8c>
    408c:	00090593          	mv	a1,s2
    4090:	000a8513          	mv	a0,s5
    4094:	ffffd097          	auipc	ra,0xffffd
    4098:	e84080e7          	jalr	-380(ra) # f18 <__mulsi3>
    409c:	414a87b3          	sub	a5,s5,s4
    40a0:	00f50433          	add	s0,a0,a5
    40a4:	2284a983          	lw	s3,552(s1)
    40a8:	01299c63          	bne	s3,s2,40c0 <_read_sectors+0xa8>
    40ac:	22c4a583          	lw	a1,556(s1)
    40b0:	fff00793          	li	a5,-1
    40b4:	02f59863          	bne	a1,a5,40e4 <_read_sectors+0xcc>
    40b8:	00000413          	li	s0,0
    40bc:	0500006f          	j	410c <_read_sectors+0xf4>
    40c0:	095a6063          	bltu	s4,s5,4140 <_read_sectors+0x128>
    40c4:	00198793          	addi	a5,s3,1
    40c8:	07279c63          	bne	a5,s2,4140 <_read_sectors+0x128>
    40cc:	22c4a583          	lw	a1,556(s1)
    40d0:	0729ee63          	bltu	s3,s2,414c <_read_sectors+0x134>
    40d4:	fff00793          	li	a5,-1
    40d8:	fef580e3          	beq	a1,a5,40b8 <_read_sectors+0xa0>
    40dc:	22b4a623          	sw	a1,556(s1)
    40e0:	2324a423          	sw	s2,552(s1)
    40e4:	1c4b0513          	addi	a0,s6,452
    40e8:	ffffd097          	auipc	ra,0xffffd
    40ec:	308080e7          	jalr	776(ra) # 13f0 <fatfs_lba_of_cluster>
    40f0:	017505b3          	add	a1,a0,s7
    40f4:	00040693          	mv	a3,s0
    40f8:	000c0613          	mv	a2,s8
    40fc:	1c4b0513          	addi	a0,s6,452
    4100:	ffffd097          	auipc	ra,0xffffd
    4104:	340080e7          	jalr	832(ra) # 1440 <fatfs_sector_read>
    4108:	fa0508e3          	beqz	a0,40b8 <_read_sectors+0xa0>
    410c:	02c12083          	lw	ra,44(sp)
    4110:	00040513          	mv	a0,s0
    4114:	02812403          	lw	s0,40(sp)
    4118:	02412483          	lw	s1,36(sp)
    411c:	02012903          	lw	s2,32(sp)
    4120:	01c12983          	lw	s3,28(sp)
    4124:	01812a03          	lw	s4,24(sp)
    4128:	01412a83          	lw	s5,20(sp)
    412c:	01012b03          	lw	s6,16(sp)
    4130:	00c12b83          	lw	s7,12(sp)
    4134:	00812c03          	lw	s8,8(sp)
    4138:	03010113          	addi	sp,sp,48
    413c:	00008067          	ret
    4140:	0044a583          	lw	a1,4(s1)
    4144:	00000993          	li	s3,0
    4148:	f89ff06f          	j	40d0 <_read_sectors+0xb8>
    414c:	1c4b0513          	addi	a0,s6,452
    4150:	fffff097          	auipc	ra,0xfffff
    4154:	fd8080e7          	jalr	-40(ra) # 3128 <fatfs_find_next_cluster>
    4158:	00050593          	mv	a1,a0
    415c:	00198993          	addi	s3,s3,1
    4160:	f71ff06f          	j	40d0 <_read_sectors+0xb8>

00004164 <fatfs_set_fs_info_next_free_cluster>:
    4164:	03052783          	lw	a5,48(a0)
    4168:	0a078863          	beqz	a5,4218 <fatfs_set_fs_info_next_free_cluster+0xb4>
    416c:	ff010113          	addi	sp,sp,-16
    4170:	01c52783          	lw	a5,28(a0)
    4174:	01212023          	sw	s2,0(sp)
    4178:	00058913          	mv	s2,a1
    417c:	01855583          	lhu	a1,24(a0)
    4180:	00812423          	sw	s0,8(sp)
    4184:	00912223          	sw	s1,4(sp)
    4188:	00f585b3          	add	a1,a1,a5
    418c:	00112623          	sw	ra,12(sp)
    4190:	00050493          	mv	s1,a0
    4194:	ffffd097          	auipc	ra,0xffffd
    4198:	f3c080e7          	jalr	-196(ra) # 10d0 <fatfs_fat_read_sector>
    419c:	00050413          	mv	s0,a0
    41a0:	06050063          	beqz	a0,4200 <fatfs_set_fs_info_next_free_cluster+0x9c>
    41a4:	20852783          	lw	a5,520(a0)
    41a8:	00895713          	srli	a4,s2,0x8
    41ac:	1f278623          	sb	s2,492(a5)
    41b0:	20852783          	lw	a5,520(a0)
    41b4:	1ee786a3          	sb	a4,493(a5)
    41b8:	20852783          	lw	a5,520(a0)
    41bc:	01095713          	srli	a4,s2,0x10
    41c0:	1ee78723          	sb	a4,494(a5)
    41c4:	20852783          	lw	a5,520(a0)
    41c8:	01895713          	srli	a4,s2,0x18
    41cc:	1ee787a3          	sb	a4,495(a5)
    41d0:	00100793          	li	a5,1
    41d4:	20f52223          	sw	a5,516(a0)
    41d8:	0384a783          	lw	a5,56(s1)
    41dc:	0324a223          	sw	s2,36(s1)
    41e0:	00078a63          	beqz	a5,41f4 <fatfs_set_fs_info_next_free_cluster+0x90>
    41e4:	00050593          	mv	a1,a0
    41e8:	20052503          	lw	a0,512(a0)
    41ec:	00100613          	li	a2,1
    41f0:	000780e7          	jalr	a5
    41f4:	fff00793          	li	a5,-1
    41f8:	20f42023          	sw	a5,512(s0)
    41fc:	20042223          	sw	zero,516(s0)
    4200:	00c12083          	lw	ra,12(sp)
    4204:	00812403          	lw	s0,8(sp)
    4208:	00412483          	lw	s1,4(sp)
    420c:	00012903          	lw	s2,0(sp)
    4210:	01010113          	addi	sp,sp,16
    4214:	00008067          	ret
    4218:	00008067          	ret

0000421c <fatfs_find_blank_cluster>:
    421c:	fe010113          	addi	sp,sp,-32
    4220:	01312623          	sw	s3,12(sp)
    4224:	01512223          	sw	s5,4(sp)
    4228:	000109b7          	lui	s3,0x10
    422c:	10000ab7          	lui	s5,0x10000
    4230:	00912a23          	sw	s1,20(sp)
    4234:	01212823          	sw	s2,16(sp)
    4238:	01412423          	sw	s4,8(sp)
    423c:	00112e23          	sw	ra,28(sp)
    4240:	00812c23          	sw	s0,24(sp)
    4244:	00050913          	mv	s2,a0
    4248:	00058493          	mv	s1,a1
    424c:	00060a13          	mv	s4,a2
    4250:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x59d3>
    4254:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    4258:	03092783          	lw	a5,48(s2)
    425c:	0074d413          	srli	s0,s1,0x7
    4260:	00079463          	bnez	a5,4268 <fatfs_find_blank_cluster+0x4c>
    4264:	0084d413          	srli	s0,s1,0x8
    4268:	02092783          	lw	a5,32(s2)
    426c:	08f47e63          	bgeu	s0,a5,4308 <fatfs_find_blank_cluster+0xec>
    4270:	01492583          	lw	a1,20(s2)
    4274:	00090513          	mv	a0,s2
    4278:	00b405b3          	add	a1,s0,a1
    427c:	ffffd097          	auipc	ra,0xffffd
    4280:	e54080e7          	jalr	-428(ra) # 10d0 <fatfs_fat_read_sector>
    4284:	08050263          	beqz	a0,4308 <fatfs_find_blank_cluster+0xec>
    4288:	03092783          	lw	a5,48(s2)
    428c:	20852703          	lw	a4,520(a0)
    4290:	02079a63          	bnez	a5,42c4 <fatfs_find_blank_cluster+0xa8>
    4294:	00841413          	slli	s0,s0,0x8
    4298:	40848433          	sub	s0,s1,s0
    429c:	00141413          	slli	s0,s0,0x1
    42a0:	01347433          	and	s0,s0,s3
    42a4:	00870733          	add	a4,a4,s0
    42a8:	00174783          	lbu	a5,1(a4)
    42ac:	00074703          	lbu	a4,0(a4)
    42b0:	00879793          	slli	a5,a5,0x8
    42b4:	00e787b3          	add	a5,a5,a4
    42b8:	06078c63          	beqz	a5,4330 <fatfs_find_blank_cluster+0x114>
    42bc:	00148493          	addi	s1,s1,1
    42c0:	f99ff06f          	j	4258 <fatfs_find_blank_cluster+0x3c>
    42c4:	00741413          	slli	s0,s0,0x7
    42c8:	40848433          	sub	s0,s1,s0
    42cc:	00241413          	slli	s0,s0,0x2
    42d0:	01347433          	and	s0,s0,s3
    42d4:	00870733          	add	a4,a4,s0
    42d8:	00374783          	lbu	a5,3(a4)
    42dc:	00274683          	lbu	a3,2(a4)
    42e0:	01879793          	slli	a5,a5,0x18
    42e4:	01069693          	slli	a3,a3,0x10
    42e8:	00d787b3          	add	a5,a5,a3
    42ec:	00074683          	lbu	a3,0(a4)
    42f0:	00174703          	lbu	a4,1(a4)
    42f4:	00d787b3          	add	a5,a5,a3
    42f8:	00871713          	slli	a4,a4,0x8
    42fc:	00e787b3          	add	a5,a5,a4
    4300:	0157f7b3          	and	a5,a5,s5
    4304:	fb5ff06f          	j	42b8 <fatfs_find_blank_cluster+0x9c>
    4308:	00000513          	li	a0,0
    430c:	01c12083          	lw	ra,28(sp)
    4310:	01812403          	lw	s0,24(sp)
    4314:	01412483          	lw	s1,20(sp)
    4318:	01012903          	lw	s2,16(sp)
    431c:	00c12983          	lw	s3,12(sp)
    4320:	00812a03          	lw	s4,8(sp)
    4324:	00412a83          	lw	s5,4(sp)
    4328:	02010113          	addi	sp,sp,32
    432c:	00008067          	ret
    4330:	009a2023          	sw	s1,0(s4)
    4334:	00100513          	li	a0,1
    4338:	fd5ff06f          	j	430c <fatfs_find_blank_cluster+0xf0>

0000433c <fatfs_fat_set_cluster>:
    433c:	03052783          	lw	a5,48(a0)
    4340:	fe010113          	addi	sp,sp,-32
    4344:	00812c23          	sw	s0,24(sp)
    4348:	00912a23          	sw	s1,20(sp)
    434c:	01212823          	sw	s2,16(sp)
    4350:	01312623          	sw	s3,12(sp)
    4354:	00112e23          	sw	ra,28(sp)
    4358:	00050993          	mv	s3,a0
    435c:	00058413          	mv	s0,a1
    4360:	00060493          	mv	s1,a2
    4364:	0085d913          	srli	s2,a1,0x8
    4368:	00078463          	beqz	a5,4370 <fatfs_fat_set_cluster+0x34>
    436c:	0075d913          	srli	s2,a1,0x7
    4370:	0149a583          	lw	a1,20(s3)
    4374:	00098513          	mv	a0,s3
    4378:	00b905b3          	add	a1,s2,a1
    437c:	ffffd097          	auipc	ra,0xffffd
    4380:	d54080e7          	jalr	-684(ra) # 10d0 <fatfs_fat_read_sector>
    4384:	00050793          	mv	a5,a0
    4388:	00000513          	li	a0,0
    438c:	04078c63          	beqz	a5,43e4 <fatfs_fat_set_cluster+0xa8>
    4390:	0309a683          	lw	a3,48(s3)
    4394:	2087a703          	lw	a4,520(a5)
    4398:	0ff4f613          	zext.b	a2,s1
    439c:	06069263          	bnez	a3,4400 <fatfs_fat_set_cluster+0xc4>
    43a0:	00891913          	slli	s2,s2,0x8
    43a4:	41240433          	sub	s0,s0,s2
    43a8:	000106b7          	lui	a3,0x10
    43ac:	00141413          	slli	s0,s0,0x1
    43b0:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x59d3>
    43b4:	00d47433          	and	s0,s0,a3
    43b8:	00870733          	add	a4,a4,s0
    43bc:	00c70023          	sb	a2,0(a4)
    43c0:	2087a703          	lw	a4,520(a5)
    43c4:	01049493          	slli	s1,s1,0x10
    43c8:	0104d493          	srli	s1,s1,0x10
    43cc:	00870733          	add	a4,a4,s0
    43d0:	0084d493          	srli	s1,s1,0x8
    43d4:	009700a3          	sb	s1,1(a4)
    43d8:	00100713          	li	a4,1
    43dc:	20e7a223          	sw	a4,516(a5)
    43e0:	00100513          	li	a0,1
    43e4:	01c12083          	lw	ra,28(sp)
    43e8:	01812403          	lw	s0,24(sp)
    43ec:	01412483          	lw	s1,20(sp)
    43f0:	01012903          	lw	s2,16(sp)
    43f4:	00c12983          	lw	s3,12(sp)
    43f8:	02010113          	addi	sp,sp,32
    43fc:	00008067          	ret
    4400:	00791913          	slli	s2,s2,0x7
    4404:	41240433          	sub	s0,s0,s2
    4408:	000106b7          	lui	a3,0x10
    440c:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x59d3>
    4410:	00241413          	slli	s0,s0,0x2
    4414:	00d47433          	and	s0,s0,a3
    4418:	00870733          	add	a4,a4,s0
    441c:	00c70023          	sb	a2,0(a4)
    4420:	2087a703          	lw	a4,520(a5)
    4424:	0084d693          	srli	a3,s1,0x8
    4428:	00870733          	add	a4,a4,s0
    442c:	00d700a3          	sb	a3,1(a4)
    4430:	2087a703          	lw	a4,520(a5)
    4434:	0104d693          	srli	a3,s1,0x10
    4438:	0184d493          	srli	s1,s1,0x18
    443c:	00870733          	add	a4,a4,s0
    4440:	00d70123          	sb	a3,2(a4)
    4444:	2087a703          	lw	a4,520(a5)
    4448:	00870733          	add	a4,a4,s0
    444c:	009701a3          	sb	s1,3(a4)
    4450:	f89ff06f          	j	43d8 <fatfs_fat_set_cluster+0x9c>

00004454 <fatfs_free_cluster_chain>:
    4454:	fe010113          	addi	sp,sp,-32
    4458:	00812c23          	sw	s0,24(sp)
    445c:	01212823          	sw	s2,16(sp)
    4460:	00112e23          	sw	ra,28(sp)
    4464:	00912a23          	sw	s1,20(sp)
    4468:	00050413          	mv	s0,a0
    446c:	ffd00913          	li	s2,-3
    4470:	fff58793          	addi	a5,a1,-1
    4474:	02f97063          	bgeu	s2,a5,4494 <fatfs_free_cluster_chain+0x40>
    4478:	01c12083          	lw	ra,28(sp)
    447c:	01812403          	lw	s0,24(sp)
    4480:	01412483          	lw	s1,20(sp)
    4484:	01012903          	lw	s2,16(sp)
    4488:	00100513          	li	a0,1
    448c:	02010113          	addi	sp,sp,32
    4490:	00008067          	ret
    4494:	00040513          	mv	a0,s0
    4498:	00b12623          	sw	a1,12(sp)
    449c:	fffff097          	auipc	ra,0xfffff
    44a0:	c8c080e7          	jalr	-884(ra) # 3128 <fatfs_find_next_cluster>
    44a4:	00c12583          	lw	a1,12(sp)
    44a8:	00050493          	mv	s1,a0
    44ac:	00000613          	li	a2,0
    44b0:	00040513          	mv	a0,s0
    44b4:	00000097          	auipc	ra,0x0
    44b8:	e88080e7          	jalr	-376(ra) # 433c <fatfs_fat_set_cluster>
    44bc:	00048593          	mv	a1,s1
    44c0:	fb1ff06f          	j	4470 <fatfs_free_cluster_chain+0x1c>

000044c4 <fatfs_fat_add_cluster_to_chain>:
    44c4:	fff00793          	li	a5,-1
    44c8:	02f59463          	bne	a1,a5,44f0 <fatfs_fat_add_cluster_to_chain+0x2c>
    44cc:	00000513          	li	a0,0
    44d0:	00008067          	ret
    44d4:	00000513          	li	a0,0
    44d8:	01c12083          	lw	ra,28(sp)
    44dc:	01812403          	lw	s0,24(sp)
    44e0:	01412483          	lw	s1,20(sp)
    44e4:	01012903          	lw	s2,16(sp)
    44e8:	02010113          	addi	sp,sp,32
    44ec:	00008067          	ret
    44f0:	fe010113          	addi	sp,sp,-32
    44f4:	00812c23          	sw	s0,24(sp)
    44f8:	00912a23          	sw	s1,20(sp)
    44fc:	01212823          	sw	s2,16(sp)
    4500:	00050413          	mv	s0,a0
    4504:	00112e23          	sw	ra,28(sp)
    4508:	00058513          	mv	a0,a1
    450c:	00060493          	mv	s1,a2
    4510:	fff00913          	li	s2,-1
    4514:	00050593          	mv	a1,a0
    4518:	00a12623          	sw	a0,12(sp)
    451c:	00040513          	mv	a0,s0
    4520:	fffff097          	auipc	ra,0xfffff
    4524:	c08080e7          	jalr	-1016(ra) # 3128 <fatfs_find_next_cluster>
    4528:	fa0506e3          	beqz	a0,44d4 <fatfs_fat_add_cluster_to_chain+0x10>
    452c:	00c12583          	lw	a1,12(sp)
    4530:	ff2512e3          	bne	a0,s2,4514 <fatfs_fat_add_cluster_to_chain+0x50>
    4534:	00048613          	mv	a2,s1
    4538:	00040513          	mv	a0,s0
    453c:	00000097          	auipc	ra,0x0
    4540:	e00080e7          	jalr	-512(ra) # 433c <fatfs_fat_set_cluster>
    4544:	fff00613          	li	a2,-1
    4548:	00048593          	mv	a1,s1
    454c:	00040513          	mv	a0,s0
    4550:	00000097          	auipc	ra,0x0
    4554:	dec080e7          	jalr	-532(ra) # 433c <fatfs_fat_set_cluster>
    4558:	00100513          	li	a0,1
    455c:	f7dff06f          	j	44d8 <fatfs_fat_add_cluster_to_chain+0x14>

00004560 <fatfs_count_free_clusters>:
    4560:	fe010113          	addi	sp,sp,-32
    4564:	00812c23          	sw	s0,24(sp)
    4568:	00912a23          	sw	s1,20(sp)
    456c:	01212823          	sw	s2,16(sp)
    4570:	01312623          	sw	s3,12(sp)
    4574:	00112e23          	sw	ra,28(sp)
    4578:	00050413          	mv	s0,a0
    457c:	00000493          	li	s1,0
    4580:	00000913          	li	s2,0
    4584:	1ff00993          	li	s3,511
    4588:	02042783          	lw	a5,32(s0)
    458c:	02f96263          	bltu	s2,a5,45b0 <fatfs_count_free_clusters+0x50>
    4590:	01c12083          	lw	ra,28(sp)
    4594:	01812403          	lw	s0,24(sp)
    4598:	01012903          	lw	s2,16(sp)
    459c:	00c12983          	lw	s3,12(sp)
    45a0:	00048513          	mv	a0,s1
    45a4:	01412483          	lw	s1,20(sp)
    45a8:	02010113          	addi	sp,sp,32
    45ac:	00008067          	ret
    45b0:	01442583          	lw	a1,20(s0)
    45b4:	00040513          	mv	a0,s0
    45b8:	00b905b3          	add	a1,s2,a1
    45bc:	ffffd097          	auipc	ra,0xffffd
    45c0:	b14080e7          	jalr	-1260(ra) # 10d0 <fatfs_fat_read_sector>
    45c4:	fc0506e3          	beqz	a0,4590 <fatfs_count_free_clusters+0x30>
    45c8:	03042803          	lw	a6,48(s0)
    45cc:	20852583          	lw	a1,520(a0)
    45d0:	00000713          	li	a4,0
    45d4:	00e587b3          	add	a5,a1,a4
    45d8:	0017c683          	lbu	a3,1(a5)
    45dc:	0007c503          	lbu	a0,0(a5)
    45e0:	00270613          	addi	a2,a4,2
    45e4:	00869693          	slli	a3,a3,0x8
    45e8:	02081063          	bnez	a6,4608 <fatfs_count_free_clusters+0xa8>
    45ec:	00a686b3          	add	a3,a3,a0
    45f0:	00069463          	bnez	a3,45f8 <fatfs_count_free_clusters+0x98>
    45f4:	00148493          	addi	s1,s1,1
    45f8:	00060713          	mv	a4,a2
    45fc:	fce9fce3          	bgeu	s3,a4,45d4 <fatfs_count_free_clusters+0x74>
    4600:	00190913          	addi	s2,s2,1
    4604:	f85ff06f          	j	4588 <fatfs_count_free_clusters+0x28>
    4608:	00c58633          	add	a2,a1,a2
    460c:	0037c783          	lbu	a5,3(a5)
    4610:	00064603          	lbu	a2,0(a2)
    4614:	01879793          	slli	a5,a5,0x18
    4618:	01061613          	slli	a2,a2,0x10
    461c:	00c787b3          	add	a5,a5,a2
    4620:	00a787b3          	add	a5,a5,a0
    4624:	00d787b3          	add	a5,a5,a3
    4628:	00079463          	bnez	a5,4630 <fatfs_count_free_clusters+0xd0>
    462c:	00148493          	addi	s1,s1,1
    4630:	00470713          	addi	a4,a4,4
    4634:	fc9ff06f          	j	45fc <fatfs_count_free_clusters+0x9c>

00004638 <fatfs_add_free_space>:
    4638:	02452703          	lw	a4,36(a0)
    463c:	fd010113          	addi	sp,sp,-48
    4640:	02812423          	sw	s0,40(sp)
    4644:	03212023          	sw	s2,32(sp)
    4648:	01412c23          	sw	s4,24(sp)
    464c:	01512a23          	sw	s5,20(sp)
    4650:	02112623          	sw	ra,44(sp)
    4654:	02912223          	sw	s1,36(sp)
    4658:	01312e23          	sw	s3,28(sp)
    465c:	fff00793          	li	a5,-1
    4660:	0005aa83          	lw	s5,0(a1)
    4664:	00050413          	mv	s0,a0
    4668:	00058913          	mv	s2,a1
    466c:	00060a13          	mv	s4,a2
    4670:	00f70863          	beq	a4,a5,4680 <fatfs_add_free_space+0x48>
    4674:	fff00593          	li	a1,-1
    4678:	00000097          	auipc	ra,0x0
    467c:	aec080e7          	jalr	-1300(ra) # 4164 <fatfs_set_fs_info_next_free_cluster>
    4680:	00000493          	li	s1,0
    4684:	03449663          	bne	s1,s4,46b0 <fatfs_add_free_space+0x78>
    4688:	00100513          	li	a0,1
    468c:	02c12083          	lw	ra,44(sp)
    4690:	02812403          	lw	s0,40(sp)
    4694:	02412483          	lw	s1,36(sp)
    4698:	02012903          	lw	s2,32(sp)
    469c:	01c12983          	lw	s3,28(sp)
    46a0:	01812a03          	lw	s4,24(sp)
    46a4:	01412a83          	lw	s5,20(sp)
    46a8:	03010113          	addi	sp,sp,48
    46ac:	00008067          	ret
    46b0:	00842583          	lw	a1,8(s0)
    46b4:	00c10613          	addi	a2,sp,12
    46b8:	00040513          	mv	a0,s0
    46bc:	00000097          	auipc	ra,0x0
    46c0:	b60080e7          	jalr	-1184(ra) # 421c <fatfs_find_blank_cluster>
    46c4:	fc0504e3          	beqz	a0,468c <fatfs_add_free_space+0x54>
    46c8:	00c12983          	lw	s3,12(sp)
    46cc:	000a8593          	mv	a1,s5
    46d0:	00040513          	mv	a0,s0
    46d4:	00098613          	mv	a2,s3
    46d8:	00000097          	auipc	ra,0x0
    46dc:	c64080e7          	jalr	-924(ra) # 433c <fatfs_fat_set_cluster>
    46e0:	fff00613          	li	a2,-1
    46e4:	00098593          	mv	a1,s3
    46e8:	00040513          	mv	a0,s0
    46ec:	00000097          	auipc	ra,0x0
    46f0:	c50080e7          	jalr	-944(ra) # 433c <fatfs_fat_set_cluster>
    46f4:	00049463          	bnez	s1,46fc <fatfs_add_free_space+0xc4>
    46f8:	01392023          	sw	s3,0(s2)
    46fc:	00148493          	addi	s1,s1,1
    4700:	00098a93          	mv	s5,s3
    4704:	f81ff06f          	j	4684 <fatfs_add_free_space+0x4c>

00004708 <_write_sectors>:
    4708:	fb010113          	addi	sp,sp,-80
    470c:	03312e23          	sw	s3,60(sp)
    4710:	0000a9b7          	lui	s3,0xa
    4714:	03612823          	sw	s6,48(sp)
    4718:	1c49cb03          	lbu	s6,452(s3) # a1c4 <_fs>
    471c:	03512a23          	sw	s5,52(sp)
    4720:	00058a93          	mv	s5,a1
    4724:	fff00793          	li	a5,-1
    4728:	04812423          	sw	s0,72(sp)
    472c:	000b0593          	mv	a1,s6
    4730:	00050413          	mv	s0,a0
    4734:	000a8513          	mv	a0,s5
    4738:	00f12e23          	sw	a5,28(sp)
    473c:	04112623          	sw	ra,76(sp)
    4740:	04912223          	sw	s1,68(sp)
    4744:	05212023          	sw	s2,64(sp)
    4748:	03712623          	sw	s7,44(sp)
    474c:	03812423          	sw	s8,40(sp)
    4750:	00068b93          	mv	s7,a3
    4754:	03912223          	sw	s9,36(sp)
    4758:	03a12023          	sw	s10,32(sp)
    475c:	00060c93          	mv	s9,a2
    4760:	03412c23          	sw	s4,56(sp)
    4764:	ffffc097          	auipc	ra,0xffffc
    4768:	eb0080e7          	jalr	-336(ra) # 614 <__udivsi3>
    476c:	00050493          	mv	s1,a0
    4770:	000b0593          	mv	a1,s6
    4774:	000a8513          	mv	a0,s5
    4778:	ffffc097          	auipc	ra,0xffffc
    477c:	ee4080e7          	jalr	-284(ra) # 65c <__umodsi3>
    4780:	00ab87b3          	add	a5,s7,a0
    4784:	00050c13          	mv	s8,a0
    4788:	1c498d13          	addi	s10,s3,452
    478c:	000b8913          	mv	s2,s7
    4790:	00fb7e63          	bgeu	s6,a5,47ac <_write_sectors+0xa4>
    4794:	00048593          	mv	a1,s1
    4798:	000b0513          	mv	a0,s6
    479c:	ffffc097          	auipc	ra,0xffffc
    47a0:	77c080e7          	jalr	1916(ra) # f18 <__mulsi3>
    47a4:	415b07b3          	sub	a5,s6,s5
    47a8:	00f50933          	add	s2,a0,a5
    47ac:	22842a03          	lw	s4,552(s0)
    47b0:	069a1663          	bne	s4,s1,481c <_write_sectors+0x114>
    47b4:	22c42583          	lw	a1,556(s0)
    47b8:	1c498513          	addi	a0,s3,452
    47bc:	ffffd097          	auipc	ra,0xffffd
    47c0:	c34080e7          	jalr	-972(ra) # 13f0 <fatfs_lba_of_cluster>
    47c4:	018505b3          	add	a1,a0,s8
    47c8:	00090693          	mv	a3,s2
    47cc:	000c8613          	mv	a2,s9
    47d0:	1c498513          	addi	a0,s3,452
    47d4:	ffffd097          	auipc	ra,0xffffd
    47d8:	c84080e7          	jalr	-892(ra) # 1458 <fatfs_sector_write>
    47dc:	0c050063          	beqz	a0,489c <_write_sectors+0x194>
    47e0:	04c12083          	lw	ra,76(sp)
    47e4:	04812403          	lw	s0,72(sp)
    47e8:	04412483          	lw	s1,68(sp)
    47ec:	03c12983          	lw	s3,60(sp)
    47f0:	03812a03          	lw	s4,56(sp)
    47f4:	03412a83          	lw	s5,52(sp)
    47f8:	03012b03          	lw	s6,48(sp)
    47fc:	02c12b83          	lw	s7,44(sp)
    4800:	02812c03          	lw	s8,40(sp)
    4804:	02412c83          	lw	s9,36(sp)
    4808:	02012d03          	lw	s10,32(sp)
    480c:	00090513          	mv	a0,s2
    4810:	04012903          	lw	s2,64(sp)
    4814:	05010113          	addi	sp,sp,80
    4818:	00008067          	ret
    481c:	036ae663          	bltu	s5,s6,4848 <_write_sectors+0x140>
    4820:	001a0793          	addi	a5,s4,1
    4824:	02979263          	bne	a5,s1,4848 <_write_sectors+0x140>
    4828:	22c42583          	lw	a1,556(s0)
    482c:	fff00a93          	li	s5,-1
    4830:	029a6263          	bltu	s4,s1,4854 <_write_sectors+0x14c>
    4834:	fff00793          	li	a5,-1
    4838:	02f58c63          	beq	a1,a5,4870 <_write_sectors+0x168>
    483c:	22b42623          	sw	a1,556(s0)
    4840:	22942423          	sw	s1,552(s0)
    4844:	f75ff06f          	j	47b8 <_write_sectors+0xb0>
    4848:	00442583          	lw	a1,4(s0)
    484c:	00000a13          	li	s4,0
    4850:	fddff06f          	j	482c <_write_sectors+0x124>
    4854:	1c498513          	addi	a0,s3,452
    4858:	00b12623          	sw	a1,12(sp)
    485c:	fffff097          	auipc	ra,0xfffff
    4860:	8cc080e7          	jalr	-1844(ra) # 3128 <fatfs_find_next_cluster>
    4864:	00c12583          	lw	a1,12(sp)
    4868:	00b12e23          	sw	a1,28(sp)
    486c:	03551c63          	bne	a0,s5,48a4 <_write_sectors+0x19c>
    4870:	000d4583          	lbu	a1,0(s10)
    4874:	fff58513          	addi	a0,a1,-1
    4878:	01750533          	add	a0,a0,s7
    487c:	ffffc097          	auipc	ra,0xffffc
    4880:	d98080e7          	jalr	-616(ra) # 614 <__udivsi3>
    4884:	00050613          	mv	a2,a0
    4888:	01c10593          	addi	a1,sp,28
    488c:	1c498513          	addi	a0,s3,452
    4890:	00000097          	auipc	ra,0x0
    4894:	da8080e7          	jalr	-600(ra) # 4638 <fatfs_add_free_space>
    4898:	00051c63          	bnez	a0,48b0 <_write_sectors+0x1a8>
    489c:	00000913          	li	s2,0
    48a0:	f41ff06f          	j	47e0 <_write_sectors+0xd8>
    48a4:	001a0a13          	addi	s4,s4,1
    48a8:	00050593          	mv	a1,a0
    48ac:	f85ff06f          	j	4830 <_write_sectors+0x128>
    48b0:	01c12583          	lw	a1,28(sp)
    48b4:	f89ff06f          	j	483c <_write_sectors+0x134>

000048b8 <fl_fflush>:
    48b8:	000067b7          	lui	a5,0x6
    48bc:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    48c0:	ff010113          	addi	sp,sp,-16
    48c4:	00812423          	sw	s0,8(sp)
    48c8:	00112623          	sw	ra,12(sp)
    48cc:	00912223          	sw	s1,4(sp)
    48d0:	00050413          	mv	s0,a0
    48d4:	00079663          	bnez	a5,48e0 <fl_fflush+0x28>
    48d8:	ffffd097          	auipc	ra,0xffffd
    48dc:	dd4080e7          	jalr	-556(ra) # 16ac <fl_init>
    48e0:	04040863          	beqz	s0,4930 <fl_fflush+0x78>
    48e4:	0000a7b7          	lui	a5,0xa
    48e8:	1c478713          	addi	a4,a5,452 # a1c4 <_fs>
    48ec:	03c72703          	lw	a4,60(a4)
    48f0:	1c478493          	addi	s1,a5,452
    48f4:	00070463          	beqz	a4,48fc <fl_fflush+0x44>
    48f8:	000700e7          	jalr	a4
    48fc:	43442783          	lw	a5,1076(s0)
    4900:	02078263          	beqz	a5,4924 <fl_fflush+0x6c>
    4904:	43042583          	lw	a1,1072(s0)
    4908:	00100693          	li	a3,1
    490c:	23040613          	addi	a2,s0,560
    4910:	00040513          	mv	a0,s0
    4914:	00000097          	auipc	ra,0x0
    4918:	df4080e7          	jalr	-524(ra) # 4708 <_write_sectors>
    491c:	00050463          	beqz	a0,4924 <fl_fflush+0x6c>
    4920:	42042a23          	sw	zero,1076(s0)
    4924:	0404a783          	lw	a5,64(s1)
    4928:	00078463          	beqz	a5,4930 <fl_fflush+0x78>
    492c:	000780e7          	jalr	a5
    4930:	00c12083          	lw	ra,12(sp)
    4934:	00812403          	lw	s0,8(sp)
    4938:	00412483          	lw	s1,4(sp)
    493c:	00000513          	li	a0,0
    4940:	01010113          	addi	sp,sp,16
    4944:	00008067          	ret

00004948 <fl_fclose>:
    4948:	000067b7          	lui	a5,0x6
    494c:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    4950:	ff010113          	addi	sp,sp,-16
    4954:	00812423          	sw	s0,8(sp)
    4958:	00112623          	sw	ra,12(sp)
    495c:	00912223          	sw	s1,4(sp)
    4960:	01212023          	sw	s2,0(sp)
    4964:	00050413          	mv	s0,a0
    4968:	00079663          	bnez	a5,4974 <fl_fclose+0x2c>
    496c:	ffffd097          	auipc	ra,0xffffd
    4970:	d40080e7          	jalr	-704(ra) # 16ac <fl_init>
    4974:	08040e63          	beqz	s0,4a10 <fl_fclose+0xc8>
    4978:	0000a4b7          	lui	s1,0xa
    497c:	1c448793          	addi	a5,s1,452 # a1c4 <_fs>
    4980:	03c7a783          	lw	a5,60(a5)
    4984:	1c448913          	addi	s2,s1,452
    4988:	00078463          	beqz	a5,4990 <fl_fclose+0x48>
    498c:	000780e7          	jalr	a5
    4990:	00040513          	mv	a0,s0
    4994:	00000097          	auipc	ra,0x0
    4998:	f24080e7          	jalr	-220(ra) # 48b8 <fl_fflush>
    499c:	01042783          	lw	a5,16(s0)
    49a0:	00078e63          	beqz	a5,49bc <fl_fclose+0x74>
    49a4:	00c42683          	lw	a3,12(s0)
    49a8:	00042583          	lw	a1,0(s0)
    49ac:	21c40613          	addi	a2,s0,540
    49b0:	1c448513          	addi	a0,s1,452
    49b4:	fffff097          	auipc	ra,0xfffff
    49b8:	ff0080e7          	jalr	-16(ra) # 39a4 <fatfs_update_file_length>
    49bc:	fff00793          	li	a5,-1
    49c0:	42f42823          	sw	a5,1072(s0)
    49c4:	00040513          	mv	a0,s0
    49c8:	00042423          	sw	zero,8(s0)
    49cc:	00042623          	sw	zero,12(s0)
    49d0:	00042223          	sw	zero,4(s0)
    49d4:	42042a23          	sw	zero,1076(s0)
    49d8:	00042823          	sw	zero,16(s0)
    49dc:	ffffd097          	auipc	ra,0xffffd
    49e0:	9cc080e7          	jalr	-1588(ra) # 13a8 <_free_file>
    49e4:	1c448513          	addi	a0,s1,452
    49e8:	ffffe097          	auipc	ra,0xffffe
    49ec:	66c080e7          	jalr	1644(ra) # 3054 <fatfs_fat_purge>
    49f0:	04092783          	lw	a5,64(s2)
    49f4:	00078e63          	beqz	a5,4a10 <fl_fclose+0xc8>
    49f8:	00812403          	lw	s0,8(sp)
    49fc:	00c12083          	lw	ra,12(sp)
    4a00:	00412483          	lw	s1,4(sp)
    4a04:	00012903          	lw	s2,0(sp)
    4a08:	01010113          	addi	sp,sp,16
    4a0c:	00078067          	jr	a5
    4a10:	00c12083          	lw	ra,12(sp)
    4a14:	00812403          	lw	s0,8(sp)
    4a18:	00412483          	lw	s1,4(sp)
    4a1c:	00012903          	lw	s2,0(sp)
    4a20:	01010113          	addi	sp,sp,16
    4a24:	00008067          	ret

00004a28 <fl_fread>:
    4a28:	fd010113          	addi	sp,sp,-48
    4a2c:	01512a23          	sw	s5,20(sp)
    4a30:	00050a93          	mv	s5,a0
    4a34:	00058513          	mv	a0,a1
    4a38:	00060593          	mv	a1,a2
    4a3c:	02812423          	sw	s0,40(sp)
    4a40:	02912223          	sw	s1,36(sp)
    4a44:	02112623          	sw	ra,44(sp)
    4a48:	03212023          	sw	s2,32(sp)
    4a4c:	01312e23          	sw	s3,28(sp)
    4a50:	01412c23          	sw	s4,24(sp)
    4a54:	01612823          	sw	s6,16(sp)
    4a58:	01712623          	sw	s7,12(sp)
    4a5c:	01812423          	sw	s8,8(sp)
    4a60:	01912223          	sw	s9,4(sp)
    4a64:	00068493          	mv	s1,a3
    4a68:	ffffc097          	auipc	ra,0xffffc
    4a6c:	4b0080e7          	jalr	1200(ra) # f18 <__mulsi3>
    4a70:	000067b7          	lui	a5,0x6
    4a74:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    4a78:	00050413          	mv	s0,a0
    4a7c:	00079663          	bnez	a5,4a88 <fl_fread+0x60>
    4a80:	ffffd097          	auipc	ra,0xffffd
    4a84:	c2c080e7          	jalr	-980(ra) # 16ac <fl_init>
    4a88:	120a8e63          	beqz	s5,4bc4 <fl_fread+0x19c>
    4a8c:	12048c63          	beqz	s1,4bc4 <fl_fread+0x19c>
    4a90:	4384c783          	lbu	a5,1080(s1)
    4a94:	0017f793          	andi	a5,a5,1
    4a98:	12078663          	beqz	a5,4bc4 <fl_fread+0x19c>
    4a9c:	02040e63          	beqz	s0,4ad8 <fl_fread+0xb0>
    4aa0:	0084a583          	lw	a1,8(s1)
    4aa4:	00c4a783          	lw	a5,12(s1)
    4aa8:	10f5fe63          	bgeu	a1,a5,4bc4 <fl_fread+0x19c>
    4aac:	00b40733          	add	a4,s0,a1
    4ab0:	00040b13          	mv	s6,s0
    4ab4:	00e7f463          	bgeu	a5,a4,4abc <fl_fread+0x94>
    4ab8:	40b78b33          	sub	s6,a5,a1
    4abc:	0095d993          	srli	s3,a1,0x9
    4ac0:	1ff5f913          	andi	s2,a1,511
    4ac4:	00000413          	li	s0,0
    4ac8:	23048b93          	addi	s7,s1,560
    4acc:	20000c13          	li	s8,512
    4ad0:	1ff00c93          	li	s9,511
    4ad4:	03644e63          	blt	s0,s6,4b10 <fl_fread+0xe8>
    4ad8:	02c12083          	lw	ra,44(sp)
    4adc:	00040513          	mv	a0,s0
    4ae0:	02812403          	lw	s0,40(sp)
    4ae4:	02412483          	lw	s1,36(sp)
    4ae8:	02012903          	lw	s2,32(sp)
    4aec:	01c12983          	lw	s3,28(sp)
    4af0:	01812a03          	lw	s4,24(sp)
    4af4:	01412a83          	lw	s5,20(sp)
    4af8:	01012b03          	lw	s6,16(sp)
    4afc:	00c12b83          	lw	s7,12(sp)
    4b00:	00812c03          	lw	s8,8(sp)
    4b04:	00412c83          	lw	s9,4(sp)
    4b08:	03010113          	addi	sp,sp,48
    4b0c:	00008067          	ret
    4b10:	04091463          	bnez	s2,4b58 <fl_fread+0x130>
    4b14:	408b06b3          	sub	a3,s6,s0
    4b18:	04dcd063          	bge	s9,a3,4b58 <fl_fread+0x130>
    4b1c:	4096d693          	srai	a3,a3,0x9
    4b20:	008a8633          	add	a2,s5,s0
    4b24:	00098593          	mv	a1,s3
    4b28:	00048513          	mv	a0,s1
    4b2c:	fffff097          	auipc	ra,0xfffff
    4b30:	4ec080e7          	jalr	1260(ra) # 4018 <_read_sectors>
    4b34:	fa0502e3          	beqz	a0,4ad8 <fl_fread+0xb0>
    4b38:	00951a13          	slli	s4,a0,0x9
    4b3c:	00a989b3          	add	s3,s3,a0
    4b40:	0084a783          	lw	a5,8(s1)
    4b44:	01440433          	add	s0,s0,s4
    4b48:	00000913          	li	s2,0
    4b4c:	014787b3          	add	a5,a5,s4
    4b50:	00f4a423          	sw	a5,8(s1)
    4b54:	f81ff06f          	j	4ad4 <fl_fread+0xac>
    4b58:	4304a783          	lw	a5,1072(s1)
    4b5c:	03378e63          	beq	a5,s3,4b98 <fl_fread+0x170>
    4b60:	4344a783          	lw	a5,1076(s1)
    4b64:	00078863          	beqz	a5,4b74 <fl_fread+0x14c>
    4b68:	00048513          	mv	a0,s1
    4b6c:	00000097          	auipc	ra,0x0
    4b70:	d4c080e7          	jalr	-692(ra) # 48b8 <fl_fflush>
    4b74:	00100693          	li	a3,1
    4b78:	000b8613          	mv	a2,s7
    4b7c:	00098593          	mv	a1,s3
    4b80:	00048513          	mv	a0,s1
    4b84:	fffff097          	auipc	ra,0xfffff
    4b88:	494080e7          	jalr	1172(ra) # 4018 <_read_sectors>
    4b8c:	f40506e3          	beqz	a0,4ad8 <fl_fread+0xb0>
    4b90:	4334a823          	sw	s3,1072(s1)
    4b94:	4204aa23          	sw	zero,1076(s1)
    4b98:	412c07b3          	sub	a5,s8,s2
    4b9c:	408b0a33          	sub	s4,s6,s0
    4ba0:	0147d463          	bge	a5,s4,4ba8 <fl_fread+0x180>
    4ba4:	00078a13          	mv	s4,a5
    4ba8:	000a0613          	mv	a2,s4
    4bac:	012b85b3          	add	a1,s7,s2
    4bb0:	008a8533          	add	a0,s5,s0
    4bb4:	ffffc097          	auipc	ra,0xffffc
    4bb8:	b50080e7          	jalr	-1200(ra) # 704 <memcpy>
    4bbc:	00198993          	addi	s3,s3,1
    4bc0:	f81ff06f          	j	4b40 <fl_fread+0x118>
    4bc4:	fff00413          	li	s0,-1
    4bc8:	f11ff06f          	j	4ad8 <fl_fread+0xb0>

00004bcc <fl_fgetc>:
    4bcc:	fe010113          	addi	sp,sp,-32
    4bd0:	00050693          	mv	a3,a0
    4bd4:	00100613          	li	a2,1
    4bd8:	00100593          	li	a1,1
    4bdc:	00f10513          	addi	a0,sp,15
    4be0:	00112e23          	sw	ra,28(sp)
    4be4:	000107a3          	sb	zero,15(sp)
    4be8:	00000097          	auipc	ra,0x0
    4bec:	e40080e7          	jalr	-448(ra) # 4a28 <fl_fread>
    4bf0:	00100793          	li	a5,1
    4bf4:	00f51463          	bne	a0,a5,4bfc <fl_fgetc+0x30>
    4bf8:	00f14503          	lbu	a0,15(sp)
    4bfc:	01c12083          	lw	ra,28(sp)
    4c00:	02010113          	addi	sp,sp,32
    4c04:	00008067          	ret

00004c08 <fl_fgets>:
    4c08:	fe010113          	addi	sp,sp,-32
    4c0c:	00112e23          	sw	ra,28(sp)
    4c10:	00812c23          	sw	s0,24(sp)
    4c14:	00912a23          	sw	s1,20(sp)
    4c18:	01212823          	sw	s2,16(sp)
    4c1c:	01312623          	sw	s3,12(sp)
    4c20:	01412423          	sw	s4,8(sp)
    4c24:	02b05e63          	blez	a1,4c60 <fl_fgets+0x58>
    4c28:	00050493          	mv	s1,a0
    4c2c:	00060993          	mv	s3,a2
    4c30:	00000413          	li	s0,0
    4c34:	fff58913          	addi	s2,a1,-1
    4c38:	00a00a13          	li	s4,10
    4c3c:	01245a63          	bge	s0,s2,4c50 <fl_fgets+0x48>
    4c40:	00098513          	mv	a0,s3
    4c44:	00000097          	auipc	ra,0x0
    4c48:	f88080e7          	jalr	-120(ra) # 4bcc <fl_fgetc>
    4c4c:	02055e63          	bgez	a0,4c88 <fl_fgets+0x80>
    4c50:	00040863          	beqz	s0,4c60 <fl_fgets+0x58>
    4c54:	00848433          	add	s0,s1,s0
    4c58:	00040023          	sb	zero,0(s0)
    4c5c:	0080006f          	j	4c64 <fl_fgets+0x5c>
    4c60:	00000493          	li	s1,0
    4c64:	01c12083          	lw	ra,28(sp)
    4c68:	01812403          	lw	s0,24(sp)
    4c6c:	01012903          	lw	s2,16(sp)
    4c70:	00c12983          	lw	s3,12(sp)
    4c74:	00812a03          	lw	s4,8(sp)
    4c78:	00048513          	mv	a0,s1
    4c7c:	01412483          	lw	s1,20(sp)
    4c80:	02010113          	addi	sp,sp,32
    4c84:	00008067          	ret
    4c88:	00140413          	addi	s0,s0,1
    4c8c:	008487b3          	add	a5,s1,s0
    4c90:	fea78fa3          	sb	a0,-1(a5)
    4c94:	fb4514e3          	bne	a0,s4,4c3c <fl_fgets+0x34>
    4c98:	fbdff06f          	j	4c54 <fl_fgets+0x4c>

00004c9c <fl_fwrite>:
    4c9c:	fb010113          	addi	sp,sp,-80
    4ca0:	00a12423          	sw	a0,8(sp)
    4ca4:	00058513          	mv	a0,a1
    4ca8:	00060593          	mv	a1,a2
    4cac:	04912223          	sw	s1,68(sp)
    4cb0:	03a12023          	sw	s10,32(sp)
    4cb4:	04112623          	sw	ra,76(sp)
    4cb8:	04812423          	sw	s0,72(sp)
    4cbc:	05212023          	sw	s2,64(sp)
    4cc0:	03312e23          	sw	s3,60(sp)
    4cc4:	03412c23          	sw	s4,56(sp)
    4cc8:	03512a23          	sw	s5,52(sp)
    4ccc:	03612823          	sw	s6,48(sp)
    4cd0:	03712623          	sw	s7,44(sp)
    4cd4:	03812423          	sw	s8,40(sp)
    4cd8:	03912223          	sw	s9,36(sp)
    4cdc:	01b12e23          	sw	s11,28(sp)
    4ce0:	00068d13          	mv	s10,a3
    4ce4:	ffffc097          	auipc	ra,0xffffc
    4ce8:	234080e7          	jalr	564(ra) # f18 <__mulsi3>
    4cec:	00006737          	lui	a4,0x6
    4cf0:	f6c72703          	lw	a4,-148(a4) # 5f6c <_filelib_init>
    4cf4:	00050493          	mv	s1,a0
    4cf8:	00071663          	bnez	a4,4d04 <fl_fwrite+0x68>
    4cfc:	ffffd097          	auipc	ra,0xffffd
    4d00:	9b0080e7          	jalr	-1616(ra) # 16ac <fl_init>
    4d04:	040d1463          	bnez	s10,4d4c <fl_fwrite+0xb0>
    4d08:	fff00493          	li	s1,-1
    4d0c:	04c12083          	lw	ra,76(sp)
    4d10:	04812403          	lw	s0,72(sp)
    4d14:	04012903          	lw	s2,64(sp)
    4d18:	03c12983          	lw	s3,60(sp)
    4d1c:	03812a03          	lw	s4,56(sp)
    4d20:	03412a83          	lw	s5,52(sp)
    4d24:	03012b03          	lw	s6,48(sp)
    4d28:	02c12b83          	lw	s7,44(sp)
    4d2c:	02812c03          	lw	s8,40(sp)
    4d30:	02412c83          	lw	s9,36(sp)
    4d34:	02012d03          	lw	s10,32(sp)
    4d38:	01c12d83          	lw	s11,28(sp)
    4d3c:	00048513          	mv	a0,s1
    4d40:	04412483          	lw	s1,68(sp)
    4d44:	05010113          	addi	sp,sp,80
    4d48:	00008067          	ret
    4d4c:	0000aab7          	lui	s5,0xa
    4d50:	1c4a8713          	addi	a4,s5,452 # a1c4 <_fs>
    4d54:	03c72703          	lw	a4,60(a4)
    4d58:	1c4a8a93          	addi	s5,s5,452
    4d5c:	00070463          	beqz	a4,4d64 <fl_fwrite+0xc8>
    4d60:	000700e7          	jalr	a4
    4d64:	438d4703          	lbu	a4,1080(s10)
    4d68:	00277693          	andi	a3,a4,2
    4d6c:	00069a63          	bnez	a3,4d80 <fl_fwrite+0xe4>
    4d70:	040aa783          	lw	a5,64(s5)
    4d74:	f8078ae3          	beqz	a5,4d08 <fl_fwrite+0x6c>
    4d78:	000780e7          	jalr	a5
    4d7c:	f8dff06f          	j	4d08 <fl_fwrite+0x6c>
    4d80:	00477713          	andi	a4,a4,4
    4d84:	00070663          	beqz	a4,4d90 <fl_fwrite+0xf4>
    4d88:	00cd2703          	lw	a4,12(s10)
    4d8c:	00ed2423          	sw	a4,8(s10)
    4d90:	008d2983          	lw	s3,8(s10)
    4d94:	00000913          	li	s2,0
    4d98:	20000b93          	li	s7,512
    4d9c:	0099d413          	srli	s0,s3,0x9
    4da0:	230d0b13          	addi	s6,s10,560
    4da4:	1ff9f993          	andi	s3,s3,511
    4da8:	1ff00d93          	li	s11,511
    4dac:	fff00c13          	li	s8,-1
    4db0:	06997c63          	bgeu	s2,s1,4e28 <fl_fwrite+0x18c>
    4db4:	00812783          	lw	a5,8(sp)
    4db8:	430d2703          	lw	a4,1072(s10)
    4dbc:	412486b3          	sub	a3,s1,s2
    4dc0:	01278cb3          	add	s9,a5,s2
    4dc4:	08099063          	bnez	s3,4e44 <fl_fwrite+0x1a8>
    4dc8:	06ddfe63          	bgeu	s11,a3,4e44 <fl_fwrite+0x1a8>
    4dcc:	03870463          	beq	a4,s8,4df4 <fl_fwrite+0x158>
    4dd0:	434d2703          	lw	a4,1076(s10)
    4dd4:	00070c63          	beqz	a4,4dec <fl_fwrite+0x150>
    4dd8:	000d0513          	mv	a0,s10
    4ddc:	00d12623          	sw	a3,12(sp)
    4de0:	00000097          	auipc	ra,0x0
    4de4:	ad8080e7          	jalr	-1320(ra) # 48b8 <fl_fflush>
    4de8:	00c12683          	lw	a3,12(sp)
    4dec:	438d2823          	sw	s8,1072(s10)
    4df0:	420d2a23          	sw	zero,1076(s10)
    4df4:	0096d693          	srli	a3,a3,0x9
    4df8:	00040593          	mv	a1,s0
    4dfc:	000c8613          	mv	a2,s9
    4e00:	000d0513          	mv	a0,s10
    4e04:	00000097          	auipc	ra,0x0
    4e08:	904080e7          	jalr	-1788(ra) # 4708 <_write_sectors>
    4e0c:	008d2703          	lw	a4,8(s10)
    4e10:	00951693          	slli	a3,a0,0x9
    4e14:	00d90933          	add	s2,s2,a3
    4e18:	00d70733          	add	a4,a4,a3
    4e1c:	00ed2423          	sw	a4,8(s10)
    4e20:	00a40433          	add	s0,s0,a0
    4e24:	0a051863          	bnez	a0,4ed4 <fl_fwrite+0x238>
    4e28:	008d2703          	lw	a4,8(s10)
    4e2c:	00cd2683          	lw	a3,12(s10)
    4e30:	0ae6e663          	bltu	a3,a4,4edc <fl_fwrite+0x240>
    4e34:	040aa783          	lw	a5,64(s5)
    4e38:	ec078ae3          	beqz	a5,4d0c <fl_fwrite+0x70>
    4e3c:	000780e7          	jalr	a5
    4e40:	ecdff06f          	j	4d0c <fl_fwrite+0x70>
    4e44:	413b8a33          	sub	s4,s7,s3
    4e48:	0146f463          	bgeu	a3,s4,4e50 <fl_fwrite+0x1b4>
    4e4c:	00068a13          	mv	s4,a3
    4e50:	04e40a63          	beq	s0,a4,4ea4 <fl_fwrite+0x208>
    4e54:	434d2703          	lw	a4,1076(s10)
    4e58:	00070863          	beqz	a4,4e68 <fl_fwrite+0x1cc>
    4e5c:	000d0513          	mv	a0,s10
    4e60:	00000097          	auipc	ra,0x0
    4e64:	a58080e7          	jalr	-1448(ra) # 48b8 <fl_fflush>
    4e68:	037a0a63          	beq	s4,s7,4e9c <fl_fwrite+0x200>
    4e6c:	00100693          	li	a3,1
    4e70:	000b0613          	mv	a2,s6
    4e74:	00040593          	mv	a1,s0
    4e78:	000d0513          	mv	a0,s10
    4e7c:	fffff097          	auipc	ra,0xfffff
    4e80:	19c080e7          	jalr	412(ra) # 4018 <_read_sectors>
    4e84:	00051c63          	bnez	a0,4e9c <fl_fwrite+0x200>
    4e88:	20000613          	li	a2,512
    4e8c:	00000593          	li	a1,0
    4e90:	000b0513          	mv	a0,s6
    4e94:	ffffc097          	auipc	ra,0xffffc
    4e98:	854080e7          	jalr	-1964(ra) # 6e8 <memset>
    4e9c:	428d2823          	sw	s0,1072(s10)
    4ea0:	420d2a23          	sw	zero,1076(s10)
    4ea4:	000a0613          	mv	a2,s4
    4ea8:	000c8593          	mv	a1,s9
    4eac:	013b0533          	add	a0,s6,s3
    4eb0:	ffffc097          	auipc	ra,0xffffc
    4eb4:	854080e7          	jalr	-1964(ra) # 704 <memcpy>
    4eb8:	008d2703          	lw	a4,8(s10)
    4ebc:	00100793          	li	a5,1
    4ec0:	42fd2a23          	sw	a5,1076(s10)
    4ec4:	01470733          	add	a4,a4,s4
    4ec8:	01490933          	add	s2,s2,s4
    4ecc:	00ed2423          	sw	a4,8(s10)
    4ed0:	00140413          	addi	s0,s0,1
    4ed4:	00000993          	li	s3,0
    4ed8:	ed9ff06f          	j	4db0 <fl_fwrite+0x114>
    4edc:	00ed2623          	sw	a4,12(s10)
    4ee0:	00100713          	li	a4,1
    4ee4:	00ed2823          	sw	a4,16(s10)
    4ee8:	f4dff06f          	j	4e34 <fl_fwrite+0x198>

00004eec <fl_fputc>:
    4eec:	fe010113          	addi	sp,sp,-32
    4ef0:	00812c23          	sw	s0,24(sp)
    4ef4:	00058693          	mv	a3,a1
    4ef8:	00a107a3          	sb	a0,15(sp)
    4efc:	00050413          	mv	s0,a0
    4f00:	00100613          	li	a2,1
    4f04:	00100593          	li	a1,1
    4f08:	00f10513          	addi	a0,sp,15
    4f0c:	00112e23          	sw	ra,28(sp)
    4f10:	00000097          	auipc	ra,0x0
    4f14:	d8c080e7          	jalr	-628(ra) # 4c9c <fl_fwrite>
    4f18:	00100793          	li	a5,1
    4f1c:	00f50463          	beq	a0,a5,4f24 <fl_fputc+0x38>
    4f20:	00050413          	mv	s0,a0
    4f24:	01c12083          	lw	ra,28(sp)
    4f28:	00040513          	mv	a0,s0
    4f2c:	01812403          	lw	s0,24(sp)
    4f30:	02010113          	addi	sp,sp,32
    4f34:	00008067          	ret

00004f38 <fl_fputs>:
    4f38:	fe010113          	addi	sp,sp,-32
    4f3c:	00812c23          	sw	s0,24(sp)
    4f40:	00112e23          	sw	ra,28(sp)
    4f44:	00050413          	mv	s0,a0
    4f48:	00b12623          	sw	a1,12(sp)
    4f4c:	ffffb097          	auipc	ra,0xffffb
    4f50:	7dc080e7          	jalr	2012(ra) # 728 <strlen>
    4f54:	00050613          	mv	a2,a0
    4f58:	00040513          	mv	a0,s0
    4f5c:	01812403          	lw	s0,24(sp)
    4f60:	00c12683          	lw	a3,12(sp)
    4f64:	01c12083          	lw	ra,28(sp)
    4f68:	00100593          	li	a1,1
    4f6c:	02010113          	addi	sp,sp,32
    4f70:	00000317          	auipc	t1,0x0
    4f74:	d2c30067          	jr	-724(t1) # 4c9c <fl_fwrite>

00004f78 <fatfs_allocate_free_space.part.0>:
    4f78:	02452703          	lw	a4,36(a0)
    4f7c:	fd010113          	addi	sp,sp,-48
    4f80:	02812423          	sw	s0,40(sp)
    4f84:	03212023          	sw	s2,32(sp)
    4f88:	01312e23          	sw	s3,28(sp)
    4f8c:	01512a23          	sw	s5,20(sp)
    4f90:	02112623          	sw	ra,44(sp)
    4f94:	02912223          	sw	s1,36(sp)
    4f98:	01412c23          	sw	s4,24(sp)
    4f9c:	fff00793          	li	a5,-1
    4fa0:	00050413          	mv	s0,a0
    4fa4:	00058a93          	mv	s5,a1
    4fa8:	00060913          	mv	s2,a2
    4fac:	00068993          	mv	s3,a3
    4fb0:	00f70863          	beq	a4,a5,4fc0 <fatfs_allocate_free_space.part.0+0x48>
    4fb4:	fff00593          	li	a1,-1
    4fb8:	fffff097          	auipc	ra,0xfffff
    4fbc:	1ac080e7          	jalr	428(ra) # 4164 <fatfs_set_fs_info_next_free_cluster>
    4fc0:	00044a03          	lbu	s4,0(s0)
    4fc4:	00098513          	mv	a0,s3
    4fc8:	009a1a13          	slli	s4,s4,0x9
    4fcc:	000a0593          	mv	a1,s4
    4fd0:	ffffb097          	auipc	ra,0xffffb
    4fd4:	644080e7          	jalr	1604(ra) # 614 <__udivsi3>
    4fd8:	00050493          	mv	s1,a0
    4fdc:	00050593          	mv	a1,a0
    4fe0:	000a0513          	mv	a0,s4
    4fe4:	ffffc097          	auipc	ra,0xffffc
    4fe8:	f34080e7          	jalr	-204(ra) # f18 <__mulsi3>
    4fec:	00a98463          	beq	s3,a0,4ff4 <fatfs_allocate_free_space.part.0+0x7c>
    4ff0:	00148493          	addi	s1,s1,1
    4ff4:	060a8463          	beqz	s5,505c <fatfs_allocate_free_space.part.0+0xe4>
    4ff8:	00842583          	lw	a1,8(s0)
    4ffc:	00c10613          	addi	a2,sp,12
    5000:	00040513          	mv	a0,s0
    5004:	fffff097          	auipc	ra,0xfffff
    5008:	218080e7          	jalr	536(ra) # 421c <fatfs_find_blank_cluster>
    500c:	02050663          	beqz	a0,5038 <fatfs_allocate_free_space.part.0+0xc0>
    5010:	00100793          	li	a5,1
    5014:	04f49863          	bne	s1,a5,5064 <fatfs_allocate_free_space.part.0+0xec>
    5018:	00c12483          	lw	s1,12(sp)
    501c:	fff00613          	li	a2,-1
    5020:	00040513          	mv	a0,s0
    5024:	00048593          	mv	a1,s1
    5028:	fffff097          	auipc	ra,0xfffff
    502c:	314080e7          	jalr	788(ra) # 433c <fatfs_fat_set_cluster>
    5030:	00100513          	li	a0,1
    5034:	00992023          	sw	s1,0(s2)
    5038:	02c12083          	lw	ra,44(sp)
    503c:	02812403          	lw	s0,40(sp)
    5040:	02412483          	lw	s1,36(sp)
    5044:	02012903          	lw	s2,32(sp)
    5048:	01c12983          	lw	s3,28(sp)
    504c:	01812a03          	lw	s4,24(sp)
    5050:	01412a83          	lw	s5,20(sp)
    5054:	03010113          	addi	sp,sp,48
    5058:	00008067          	ret
    505c:	00092783          	lw	a5,0(s2)
    5060:	00f12623          	sw	a5,12(sp)
    5064:	00048613          	mv	a2,s1
    5068:	00c10593          	addi	a1,sp,12
    506c:	00040513          	mv	a0,s0
    5070:	fffff097          	auipc	ra,0xfffff
    5074:	5c8080e7          	jalr	1480(ra) # 4638 <fatfs_add_free_space>
    5078:	00a03533          	snez	a0,a0
    507c:	fbdff06f          	j	5038 <fatfs_allocate_free_space.part.0+0xc0>

00005080 <fatfs_allocate_free_space>:
    5080:	00068663          	beqz	a3,508c <fatfs_allocate_free_space+0xc>
    5084:	00000317          	auipc	t1,0x0
    5088:	ef430067          	jr	-268(t1) # 4f78 <fatfs_allocate_free_space.part.0>
    508c:	00000513          	li	a0,0
    5090:	00008067          	ret

00005094 <fatfs_add_file_entry>:
    5094:	f8010113          	addi	sp,sp,-128
    5098:	00f12823          	sw	a5,16(sp)
    509c:	03852783          	lw	a5,56(a0)
    50a0:	06112e23          	sw	ra,124(sp)
    50a4:	06812c23          	sw	s0,120(sp)
    50a8:	06912a23          	sw	s1,116(sp)
    50ac:	07212823          	sw	s2,112(sp)
    50b0:	07312623          	sw	s3,108(sp)
    50b4:	07412423          	sw	s4,104(sp)
    50b8:	07512223          	sw	s5,100(sp)
    50bc:	07612023          	sw	s6,96(sp)
    50c0:	05712e23          	sw	s7,92(sp)
    50c4:	05812c23          	sw	s8,88(sp)
    50c8:	05912a23          	sw	s9,84(sp)
    50cc:	05a12823          	sw	s10,80(sp)
    50d0:	05b12623          	sw	s11,76(sp)
    50d4:	00e12623          	sw	a4,12(sp)
    50d8:	01012a23          	sw	a6,20(sp)
    50dc:	04079463          	bnez	a5,5124 <fatfs_add_file_entry+0x90>
    50e0:	00000913          	li	s2,0
    50e4:	07c12083          	lw	ra,124(sp)
    50e8:	07812403          	lw	s0,120(sp)
    50ec:	07412483          	lw	s1,116(sp)
    50f0:	06c12983          	lw	s3,108(sp)
    50f4:	06812a03          	lw	s4,104(sp)
    50f8:	06412a83          	lw	s5,100(sp)
    50fc:	06012b03          	lw	s6,96(sp)
    5100:	05c12b83          	lw	s7,92(sp)
    5104:	05812c03          	lw	s8,88(sp)
    5108:	05412c83          	lw	s9,84(sp)
    510c:	05012d03          	lw	s10,80(sp)
    5110:	04c12d83          	lw	s11,76(sp)
    5114:	00090513          	mv	a0,s2
    5118:	07012903          	lw	s2,112(sp)
    511c:	08010113          	addi	sp,sp,128
    5120:	00008067          	ret
    5124:	00050413          	mv	s0,a0
    5128:	00060513          	mv	a0,a2
    512c:	00058b13          	mv	s6,a1
    5130:	00060c93          	mv	s9,a2
    5134:	00068b93          	mv	s7,a3
    5138:	ffffd097          	auipc	ra,0xffffd
    513c:	a74080e7          	jalr	-1420(ra) # 1bac <fatfs_lfn_entries_required>
    5140:	00150713          	addi	a4,a0,1
    5144:	00100793          	li	a5,1
    5148:	00050493          	mv	s1,a0
    514c:	f8e7fae3          	bgeu	a5,a4,50e0 <fatfs_add_file_entry+0x4c>
    5150:	00000993          	li	s3,0
    5154:	00000a93          	li	s5,0
    5158:	00000a13          	li	s4,0
    515c:	00000c13          	li	s8,0
    5160:	00000d13          	li	s10,0
    5164:	01000d93          	li	s11,16
    5168:	00000693          	li	a3,0
    516c:	00098613          	mv	a2,s3
    5170:	000b0593          	mv	a1,s6
    5174:	00040513          	mv	a0,s0
    5178:	ffffe097          	auipc	ra,0xffffe
    517c:	0c0080e7          	jalr	192(ra) # 3238 <fatfs_sector_reader>
    5180:	00050913          	mv	s2,a0
    5184:	14050a63          	beqz	a0,52d8 <fatfs_add_file_entry+0x244>
    5188:	04440693          	addi	a3,s0,68
    518c:	000d0913          	mv	s2,s10
    5190:	00000713          	li	a4,0
    5194:	00068513          	mv	a0,a3
    5198:	00e12e23          	sw	a4,28(sp)
    519c:	00d12c23          	sw	a3,24(sp)
    51a0:	ffffd097          	auipc	ra,0xffffd
    51a4:	91c080e7          	jalr	-1764(ra) # 1abc <fatfs_entry_lfn_text>
    51a8:	01812683          	lw	a3,24(sp)
    51ac:	01c12703          	lw	a4,28(sp)
    51b0:	00050d13          	mv	s10,a0
    51b4:	02050c63          	beqz	a0,51ec <fatfs_add_file_entry+0x158>
    51b8:	00091863          	bnez	s2,51c8 <fatfs_add_file_entry+0x134>
    51bc:	00070a93          	mv	s5,a4
    51c0:	00098a13          	mv	s4,s3
    51c4:	00100c13          	li	s8,1
    51c8:	00190d13          	addi	s10,s2,1
    51cc:	00170713          	addi	a4,a4,1
    51d0:	0ff77713          	zext.b	a4,a4
    51d4:	02068693          	addi	a3,a3,32
    51d8:	01b71663          	bne	a4,s11,51e4 <fatfs_add_file_entry+0x150>
    51dc:	00198993          	addi	s3,s3,1
    51e0:	f89ff06f          	j	5168 <fatfs_add_file_entry+0xd4>
    51e4:	000d0913          	mv	s2,s10
    51e8:	fadff06f          	j	5194 <fatfs_add_file_entry+0x100>
    51ec:	0006c603          	lbu	a2,0(a3)
    51f0:	0e500793          	li	a5,229
    51f4:	0cf61c63          	bne	a2,a5,52cc <fatfs_add_file_entry+0x238>
    51f8:	00091863          	bnez	s2,5208 <fatfs_add_file_entry+0x174>
    51fc:	00070a93          	mv	s5,a4
    5200:	00098a13          	mv	s4,s3
    5204:	00100c13          	li	s8,1
    5208:	00190d13          	addi	s10,s2,1
    520c:	fc9940e3          	blt	s2,s1,51cc <fatfs_add_file_entry+0x138>
    5210:	00bb8713          	addi	a4,s7,11
    5214:	000b8793          	mv	a5,s7
    5218:	00000913          	li	s2,0
    521c:	0007c603          	lbu	a2,0(a5)
    5220:	00791693          	slli	a3,s2,0x7
    5224:	00195913          	srli	s2,s2,0x1
    5228:	00c90933          	add	s2,s2,a2
    522c:	00178793          	addi	a5,a5,1
    5230:	00d90933          	add	s2,s2,a3
    5234:	0ff97913          	zext.b	s2,s2
    5238:	fee792e3          	bne	a5,a4,521c <fatfs_add_file_entry+0x188>
    523c:	000a0993          	mv	s3,s4
    5240:	00000d93          	li	s11,0
    5244:	00000693          	li	a3,0
    5248:	00098613          	mv	a2,s3
    524c:	000b0593          	mv	a1,s6
    5250:	00040513          	mv	a0,s0
    5254:	ffffe097          	auipc	ra,0xffffe
    5258:	fe4080e7          	jalr	-28(ra) # 3238 <fatfs_sector_reader>
    525c:	e80502e3          	beqz	a0,50e0 <fatfs_add_file_entry+0x4c>
    5260:	04440d13          	addi	s10,s0,68
    5264:	00000713          	li	a4,0
    5268:	00000793          	li	a5,0
    526c:	000d0c13          	mv	s8,s10
    5270:	000d9663          	bnez	s11,527c <fatfs_add_file_entry+0x1e8>
    5274:	11499e63          	bne	s3,s4,5390 <fatfs_add_file_entry+0x2fc>
    5278:	11579c63          	bne	a5,s5,5390 <fatfs_add_file_entry+0x2fc>
    527c:	0e049463          	bnez	s1,5364 <fatfs_add_file_entry+0x2d0>
    5280:	01412703          	lw	a4,20(sp)
    5284:	00c12603          	lw	a2,12(sp)
    5288:	01012583          	lw	a1,16(sp)
    528c:	02010693          	addi	a3,sp,32
    5290:	000b8513          	mv	a0,s7
    5294:	ffffd097          	auipc	ra,0xffffd
    5298:	a70080e7          	jalr	-1424(ra) # 1d04 <fatfs_sfn_create_entry>
    529c:	02000613          	li	a2,32
    52a0:	02010593          	addi	a1,sp,32
    52a4:	000d0513          	mv	a0,s10
    52a8:	ffffb097          	auipc	ra,0xffffb
    52ac:	45c080e7          	jalr	1116(ra) # 704 <memcpy>
    52b0:	03842783          	lw	a5,56(s0)
    52b4:	24442503          	lw	a0,580(s0)
    52b8:	00100613          	li	a2,1
    52bc:	000c0593          	mv	a1,s8
    52c0:	000780e7          	jalr	a5
    52c4:	00050913          	mv	s2,a0
    52c8:	e1dff06f          	j	50e4 <fatfs_add_file_entry+0x50>
    52cc:	f20606e3          	beqz	a2,51f8 <fatfs_add_file_entry+0x164>
    52d0:	00000c13          	li	s8,0
    52d4:	ef9ff06f          	j	51cc <fatfs_add_file_entry+0x138>
    52d8:	00842583          	lw	a1,8(s0)
    52dc:	02010613          	addi	a2,sp,32
    52e0:	00040513          	mv	a0,s0
    52e4:	fffff097          	auipc	ra,0xfffff
    52e8:	f38080e7          	jalr	-200(ra) # 421c <fatfs_find_blank_cluster>
    52ec:	de050ce3          	beqz	a0,50e4 <fatfs_add_file_entry+0x50>
    52f0:	02012d83          	lw	s11,32(sp)
    52f4:	000b0593          	mv	a1,s6
    52f8:	00040513          	mv	a0,s0
    52fc:	000d8613          	mv	a2,s11
    5300:	fffff097          	auipc	ra,0xfffff
    5304:	1c4080e7          	jalr	452(ra) # 44c4 <fatfs_fat_add_cluster_to_chain>
    5308:	dc050ee3          	beqz	a0,50e4 <fatfs_add_file_entry+0x50>
    530c:	20000613          	li	a2,512
    5310:	00000593          	li	a1,0
    5314:	04440513          	addi	a0,s0,68
    5318:	ffffb097          	auipc	ra,0xffffb
    531c:	3d0080e7          	jalr	976(ra) # 6e8 <memset>
    5320:	00000d13          	li	s10,0
    5324:	00044783          	lbu	a5,0(s0)
    5328:	00fd6a63          	bltu	s10,a5,533c <fatfs_add_file_entry+0x2a8>
    532c:	ee0c12e3          	bnez	s8,5210 <fatfs_add_file_entry+0x17c>
    5330:	00098a13          	mv	s4,s3
    5334:	00000a93          	li	s5,0
    5338:	ed9ff06f          	j	5210 <fatfs_add_file_entry+0x17c>
    533c:	00000693          	li	a3,0
    5340:	000d0613          	mv	a2,s10
    5344:	000d8593          	mv	a1,s11
    5348:	00040513          	mv	a0,s0
    534c:	ffffc097          	auipc	ra,0xffffc
    5350:	1c8080e7          	jalr	456(ra) # 1514 <fatfs_write_sector>
    5354:	d80508e3          	beqz	a0,50e4 <fatfs_add_file_entry+0x50>
    5358:	001d0613          	addi	a2,s10,1
    535c:	0ff67d13          	zext.b	s10,a2
    5360:	fc5ff06f          	j	5324 <fatfs_add_file_entry+0x290>
    5364:	fff48493          	addi	s1,s1,-1
    5368:	00090693          	mv	a3,s2
    536c:	00048613          	mv	a2,s1
    5370:	000d0593          	mv	a1,s10
    5374:	000c8513          	mv	a0,s9
    5378:	00f12c23          	sw	a5,24(sp)
    537c:	ffffd097          	auipc	ra,0xffffd
    5380:	860080e7          	jalr	-1952(ra) # 1bdc <fatfs_filename_to_lfn>
    5384:	01812783          	lw	a5,24(sp)
    5388:	00100d93          	li	s11,1
    538c:	00100713          	li	a4,1
    5390:	00178793          	addi	a5,a5,1
    5394:	0ff7f793          	zext.b	a5,a5
    5398:	01000693          	li	a3,16
    539c:	020d0d13          	addi	s10,s10,32
    53a0:	ecd798e3          	bne	a5,a3,5270 <fatfs_add_file_entry+0x1dc>
    53a4:	00070e63          	beqz	a4,53c0 <fatfs_add_file_entry+0x32c>
    53a8:	03842783          	lw	a5,56(s0)
    53ac:	24442503          	lw	a0,580(s0)
    53b0:	00100613          	li	a2,1
    53b4:	000c0593          	mv	a1,s8
    53b8:	000780e7          	jalr	a5
    53bc:	d20502e3          	beqz	a0,50e0 <fatfs_add_file_entry+0x4c>
    53c0:	00198993          	addi	s3,s3,1
    53c4:	e81ff06f          	j	5244 <fatfs_add_file_entry+0x1b0>

000053c8 <fl_fopen>:
    53c8:	000067b7          	lui	a5,0x6
    53cc:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    53d0:	fa010113          	addi	sp,sp,-96
    53d4:	04812c23          	sw	s0,88(sp)
    53d8:	05412423          	sw	s4,72(sp)
    53dc:	04112e23          	sw	ra,92(sp)
    53e0:	04912a23          	sw	s1,84(sp)
    53e4:	05212823          	sw	s2,80(sp)
    53e8:	05312623          	sw	s3,76(sp)
    53ec:	05512223          	sw	s5,68(sp)
    53f0:	05612023          	sw	s6,64(sp)
    53f4:	03712e23          	sw	s7,60(sp)
    53f8:	03812c23          	sw	s8,56(sp)
    53fc:	03912a23          	sw	s9,52(sp)
    5400:	00050a13          	mv	s4,a0
    5404:	00058413          	mv	s0,a1
    5408:	00079663          	bnez	a5,5414 <fl_fopen+0x4c>
    540c:	ffffc097          	auipc	ra,0xffffc
    5410:	2a0080e7          	jalr	672(ra) # 16ac <fl_init>
    5414:	000067b7          	lui	a5,0x6
    5418:	f687a783          	lw	a5,-152(a5) # 5f68 <_filelib_valid>
    541c:	30078263          	beqz	a5,5720 <fl_fopen+0x358>
    5420:	300a0063          	beqz	s4,5720 <fl_fopen+0x358>
    5424:	10040463          	beqz	s0,552c <fl_fopen+0x164>
    5428:	00040513          	mv	a0,s0
    542c:	ffffb097          	auipc	ra,0xffffb
    5430:	2fc080e7          	jalr	764(ra) # 728 <strlen>
    5434:	00000493          	li	s1,0
    5438:	00000713          	li	a4,0
    543c:	05700693          	li	a3,87
    5440:	07200613          	li	a2,114
    5444:	07700813          	li	a6,119
    5448:	06100893          	li	a7,97
    544c:	06200313          	li	t1,98
    5450:	04100593          	li	a1,65
    5454:	04200e13          	li	t3,66
    5458:	05200e93          	li	t4,82
    545c:	02b00f13          	li	t5,43
    5460:	10a74263          	blt	a4,a0,5564 <fl_fopen+0x19c>
    5464:	0000a937          	lui	s2,0xa
    5468:	1c490793          	addi	a5,s2,452 # a1c4 <_fs>
    546c:	0387a783          	lw	a5,56(a5)
    5470:	1c490b13          	addi	s6,s2,452
    5474:	00079463          	bnez	a5,547c <fl_fopen+0xb4>
    5478:	0d94f493          	andi	s1,s1,217
    547c:	03cb2783          	lw	a5,60(s6)
    5480:	00078463          	beqz	a5,5488 <fl_fopen+0xc0>
    5484:	000780e7          	jalr	a5
    5488:	0014fc13          	andi	s8,s1,1
    548c:	160c1463          	bnez	s8,55f4 <fl_fopen+0x22c>
    5490:	0204f793          	andi	a5,s1,32
    5494:	08078463          	beqz	a5,551c <fl_fopen+0x154>
    5498:	038b2783          	lw	a5,56(s6)
    549c:	06078a63          	beqz	a5,5510 <fl_fopen+0x148>
    54a0:	ffffc097          	auipc	ra,0xffffc
    54a4:	e94080e7          	jalr	-364(ra) # 1334 <_allocate_file>
    54a8:	00050413          	mv	s0,a0
    54ac:	06050263          	beqz	a0,5510 <fl_fopen+0x148>
    54b0:	01450b93          	addi	s7,a0,20
    54b4:	10400613          	li	a2,260
    54b8:	00000593          	li	a1,0
    54bc:	000b8513          	mv	a0,s7
    54c0:	ffffb097          	auipc	ra,0xffffb
    54c4:	228080e7          	jalr	552(ra) # 6e8 <memset>
    54c8:	11840a93          	addi	s5,s0,280
    54cc:	10400613          	li	a2,260
    54d0:	00000593          	li	a1,0
    54d4:	000a8513          	mv	a0,s5
    54d8:	ffffb097          	auipc	ra,0xffffb
    54dc:	210080e7          	jalr	528(ra) # 6e8 <memset>
    54e0:	10400713          	li	a4,260
    54e4:	000a8693          	mv	a3,s5
    54e8:	10400613          	li	a2,260
    54ec:	000b8593          	mv	a1,s7
    54f0:	000a0513          	mv	a0,s4
    54f4:	ffffd097          	auipc	ra,0xffffd
    54f8:	d04080e7          	jalr	-764(ra) # 21f8 <fatfs_split_path>
    54fc:	fff00793          	li	a5,-1
    5500:	10f51863          	bne	a0,a5,5610 <fl_fopen+0x248>
    5504:	00040513          	mv	a0,s0
    5508:	ffffc097          	auipc	ra,0xffffc
    550c:	ea0080e7          	jalr	-352(ra) # 13a8 <_free_file>
    5510:	000c1663          	bnez	s8,551c <fl_fopen+0x154>
    5514:	0064f793          	andi	a5,s1,6
    5518:	1e079a63          	bnez	a5,570c <fl_fopen+0x344>
    551c:	00000413          	li	s0,0
    5520:	040b2783          	lw	a5,64(s6)
    5524:	00078463          	beqz	a5,552c <fl_fopen+0x164>
    5528:	000780e7          	jalr	a5
    552c:	05c12083          	lw	ra,92(sp)
    5530:	00040513          	mv	a0,s0
    5534:	05812403          	lw	s0,88(sp)
    5538:	05412483          	lw	s1,84(sp)
    553c:	05012903          	lw	s2,80(sp)
    5540:	04c12983          	lw	s3,76(sp)
    5544:	04812a03          	lw	s4,72(sp)
    5548:	04412a83          	lw	s5,68(sp)
    554c:	04012b03          	lw	s6,64(sp)
    5550:	03c12b83          	lw	s7,60(sp)
    5554:	03812c03          	lw	s8,56(sp)
    5558:	03412c83          	lw	s9,52(sp)
    555c:	06010113          	addi	sp,sp,96
    5560:	00008067          	ret
    5564:	00e407b3          	add	a5,s0,a4
    5568:	0007c783          	lbu	a5,0(a5)
    556c:	04d78463          	beq	a5,a3,55b4 <fl_fopen+0x1ec>
    5570:	02f6e463          	bltu	a3,a5,5598 <fl_fopen+0x1d0>
    5574:	04b78463          	beq	a5,a1,55bc <fl_fopen+0x1f4>
    5578:	00f5e863          	bltu	a1,a5,5588 <fl_fopen+0x1c0>
    557c:	05e78463          	beq	a5,t5,55c4 <fl_fopen+0x1fc>
    5580:	00170713          	addi	a4,a4,1
    5584:	eddff06f          	j	5460 <fl_fopen+0x98>
    5588:	03c78063          	beq	a5,t3,55a8 <fl_fopen+0x1e0>
    558c:	ffd79ae3          	bne	a5,t4,5580 <fl_fopen+0x1b8>
    5590:	0014e493          	ori	s1,s1,1
    5594:	fedff06f          	j	5580 <fl_fopen+0x1b8>
    5598:	fec78ce3          	beq	a5,a2,5590 <fl_fopen+0x1c8>
    559c:	00f66a63          	bltu	a2,a5,55b0 <fl_fopen+0x1e8>
    55a0:	01178e63          	beq	a5,a7,55bc <fl_fopen+0x1f4>
    55a4:	fc679ee3          	bne	a5,t1,5580 <fl_fopen+0x1b8>
    55a8:	0084e493          	ori	s1,s1,8
    55ac:	fd5ff06f          	j	5580 <fl_fopen+0x1b8>
    55b0:	fd0798e3          	bne	a5,a6,5580 <fl_fopen+0x1b8>
    55b4:	0324e493          	ori	s1,s1,50
    55b8:	fc9ff06f          	j	5580 <fl_fopen+0x1b8>
    55bc:	0264e493          	ori	s1,s1,38
    55c0:	fc1ff06f          	j	5580 <fl_fopen+0x1b8>
    55c4:	0014f793          	andi	a5,s1,1
    55c8:	00078663          	beqz	a5,55d4 <fl_fopen+0x20c>
    55cc:	0024e493          	ori	s1,s1,2
    55d0:	fb1ff06f          	j	5580 <fl_fopen+0x1b8>
    55d4:	0024f793          	andi	a5,s1,2
    55d8:	00078663          	beqz	a5,55e4 <fl_fopen+0x21c>
    55dc:	0314e493          	ori	s1,s1,49
    55e0:	fa1ff06f          	j	5580 <fl_fopen+0x1b8>
    55e4:	0044f793          	andi	a5,s1,4
    55e8:	f8078ce3          	beqz	a5,5580 <fl_fopen+0x1b8>
    55ec:	0274e493          	ori	s1,s1,39
    55f0:	f91ff06f          	j	5580 <fl_fopen+0x1b8>
    55f4:	000a0513          	mv	a0,s4
    55f8:	ffffe097          	auipc	ra,0xffffe
    55fc:	160080e7          	jalr	352(ra) # 3758 <_open_file>
    5600:	00050413          	mv	s0,a0
    5604:	e80506e3          	beqz	a0,5490 <fl_fopen+0xc8>
    5608:	42940c23          	sb	s1,1080(s0)
    560c:	f15ff06f          	j	5520 <fl_fopen+0x158>
    5610:	00040513          	mv	a0,s0
    5614:	ffffd097          	auipc	ra,0xffffd
    5618:	e34080e7          	jalr	-460(ra) # 2448 <_check_file_open>
    561c:	00050993          	mv	s3,a0
    5620:	ee0512e3          	bnez	a0,5504 <fl_fopen+0x13c>
    5624:	01444783          	lbu	a5,20(s0)
    5628:	0a079a63          	bnez	a5,56dc <fl_fopen+0x314>
    562c:	008b2783          	lw	a5,8(s6)
    5630:	00f42023          	sw	a5,0(s0)
    5634:	00042583          	lw	a1,0(s0)
    5638:	01010693          	addi	a3,sp,16
    563c:	000a8613          	mv	a2,s5
    5640:	1c490513          	addi	a0,s2,452
    5644:	ffffe097          	auipc	ra,0xffffe
    5648:	d34080e7          	jalr	-716(ra) # 3378 <fatfs_get_file_entry>
    564c:	00100793          	li	a5,1
    5650:	eaf50ae3          	beq	a0,a5,5504 <fl_fopen+0x13c>
    5654:	00042223          	sw	zero,4(s0)
    5658:	00100693          	li	a3,1
    565c:	00440613          	addi	a2,s0,4
    5660:	00100593          	li	a1,1
    5664:	1c490513          	addi	a0,s2,452
    5668:	00000097          	auipc	ra,0x0
    566c:	910080e7          	jalr	-1776(ra) # 4f78 <fatfs_allocate_free_space.part.0>
    5670:	e8050ae3          	beqz	a0,5504 <fl_fopen+0x13c>
    5674:	00002cb7          	lui	s9,0x2
    5678:	21c40b93          	addi	s7,s0,540
    567c:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_fat_init+0x4f>
    5680:	000a8593          	mv	a1,s5
    5684:	00410513          	addi	a0,sp,4
    5688:	ffffc097          	auipc	ra,0xffffc
    568c:	720080e7          	jalr	1824(ra) # 1da8 <fatfs_lfn_create_sfn>
    5690:	06098263          	beqz	s3,56f4 <fl_fopen+0x32c>
    5694:	00098613          	mv	a2,s3
    5698:	00410593          	addi	a1,sp,4
    569c:	000b8513          	mv	a0,s7
    56a0:	ffffd097          	auipc	ra,0xffffd
    56a4:	880080e7          	jalr	-1920(ra) # 1f20 <fatfs_lfn_generate_tail>
    56a8:	00042583          	lw	a1,0(s0)
    56ac:	000b8613          	mv	a2,s7
    56b0:	1c490513          	addi	a0,s2,452
    56b4:	ffffe097          	auipc	ra,0xffffe
    56b8:	21c080e7          	jalr	540(ra) # 38d0 <fatfs_sfn_exists>
    56bc:	06050663          	beqz	a0,5728 <fl_fopen+0x360>
    56c0:	00198993          	addi	s3,s3,1
    56c4:	fb999ee3          	bne	s3,s9,5680 <fl_fopen+0x2b8>
    56c8:	00442583          	lw	a1,4(s0)
    56cc:	1c490513          	addi	a0,s2,452
    56d0:	fffff097          	auipc	ra,0xfffff
    56d4:	d84080e7          	jalr	-636(ra) # 4454 <fatfs_free_cluster_chain>
    56d8:	e2dff06f          	j	5504 <fl_fopen+0x13c>
    56dc:	00040593          	mv	a1,s0
    56e0:	000b8513          	mv	a0,s7
    56e4:	ffffe097          	auipc	ra,0xffffe
    56e8:	e9c080e7          	jalr	-356(ra) # 3580 <_open_directory>
    56ec:	f40514e3          	bnez	a0,5634 <fl_fopen+0x26c>
    56f0:	e15ff06f          	j	5504 <fl_fopen+0x13c>
    56f4:	00b00613          	li	a2,11
    56f8:	00410593          	addi	a1,sp,4
    56fc:	000b8513          	mv	a0,s7
    5700:	ffffb097          	auipc	ra,0xffffb
    5704:	004080e7          	jalr	4(ra) # 704 <memcpy>
    5708:	fa1ff06f          	j	56a8 <fl_fopen+0x2e0>
    570c:	000a0513          	mv	a0,s4
    5710:	ffffe097          	auipc	ra,0xffffe
    5714:	048080e7          	jalr	72(ra) # 3758 <_open_file>
    5718:	00050413          	mv	s0,a0
    571c:	0640006f          	j	5780 <fl_fopen+0x3b8>
    5720:	00000413          	li	s0,0
    5724:	e09ff06f          	j	552c <fl_fopen+0x164>
    5728:	00442703          	lw	a4,4(s0)
    572c:	00042583          	lw	a1,0(s0)
    5730:	00000813          	li	a6,0
    5734:	00000793          	li	a5,0
    5738:	000b8693          	mv	a3,s7
    573c:	000a8613          	mv	a2,s5
    5740:	1c490513          	addi	a0,s2,452
    5744:	00000097          	auipc	ra,0x0
    5748:	950080e7          	jalr	-1712(ra) # 5094 <fatfs_add_file_entry>
    574c:	f6050ee3          	beqz	a0,56c8 <fl_fopen+0x300>
    5750:	fff00793          	li	a5,-1
    5754:	00042623          	sw	zero,12(s0)
    5758:	00042423          	sw	zero,8(s0)
    575c:	42f42823          	sw	a5,1072(s0)
    5760:	42042a23          	sw	zero,1076(s0)
    5764:	00042823          	sw	zero,16(s0)
    5768:	22f42423          	sw	a5,552(s0)
    576c:	22f42623          	sw	a5,556(s0)
    5770:	1c490513          	addi	a0,s2,452
    5774:	ffffe097          	auipc	ra,0xffffe
    5778:	8e0080e7          	jalr	-1824(ra) # 3054 <fatfs_fat_purge>
    577c:	e80c06e3          	beqz	s8,5608 <fl_fopen+0x240>
    5780:	e80414e3          	bnez	s0,5608 <fl_fopen+0x240>
    5784:	d99ff06f          	j	551c <fl_fopen+0x154>

00005788 <fl_remove>:
    5788:	fe010113          	addi	sp,sp,-32
    578c:	00912a23          	sw	s1,20(sp)
    5790:	0000a4b7          	lui	s1,0xa
    5794:	1c448793          	addi	a5,s1,452 # a1c4 <_fs>
    5798:	03c7a783          	lw	a5,60(a5)
    579c:	01212823          	sw	s2,16(sp)
    57a0:	00112e23          	sw	ra,28(sp)
    57a4:	00812c23          	sw	s0,24(sp)
    57a8:	1c448913          	addi	s2,s1,452
    57ac:	00078863          	beqz	a5,57bc <fl_remove+0x34>
    57b0:	00a12623          	sw	a0,12(sp)
    57b4:	000780e7          	jalr	a5
    57b8:	00c12503          	lw	a0,12(sp)
    57bc:	000065b7          	lui	a1,0x6
    57c0:	ecc58593          	addi	a1,a1,-308 # 5ecc <font+0x368>
    57c4:	00000097          	auipc	ra,0x0
    57c8:	c04080e7          	jalr	-1020(ra) # 53c8 <fl_fopen>
    57cc:	00050413          	mv	s0,a0
    57d0:	02051a63          	bnez	a0,5804 <fl_remove+0x7c>
    57d4:	fff00513          	li	a0,-1
    57d8:	04092783          	lw	a5,64(s2)
    57dc:	00078863          	beqz	a5,57ec <fl_remove+0x64>
    57e0:	00a12623          	sw	a0,12(sp)
    57e4:	000780e7          	jalr	a5
    57e8:	00c12503          	lw	a0,12(sp)
    57ec:	01c12083          	lw	ra,28(sp)
    57f0:	01812403          	lw	s0,24(sp)
    57f4:	01412483          	lw	s1,20(sp)
    57f8:	01012903          	lw	s2,16(sp)
    57fc:	02010113          	addi	sp,sp,32
    5800:	00008067          	ret
    5804:	00452583          	lw	a1,4(a0)
    5808:	1c448513          	addi	a0,s1,452
    580c:	fffff097          	auipc	ra,0xfffff
    5810:	c48080e7          	jalr	-952(ra) # 4454 <fatfs_free_cluster_chain>
    5814:	fc0500e3          	beqz	a0,57d4 <fl_remove+0x4c>
    5818:	00042583          	lw	a1,0(s0)
    581c:	21c40613          	addi	a2,s0,540
    5820:	1c448513          	addi	a0,s1,452
    5824:	ffffe097          	auipc	ra,0xffffe
    5828:	2e8080e7          	jalr	744(ra) # 3b0c <fatfs_mark_file_deleted>
    582c:	fa0504e3          	beqz	a0,57d4 <fl_remove+0x4c>
    5830:	00040513          	mv	a0,s0
    5834:	fffff097          	auipc	ra,0xfffff
    5838:	114080e7          	jalr	276(ra) # 4948 <fl_fclose>
    583c:	00000513          	li	a0,0
    5840:	f99ff06f          	j	57d8 <fl_remove+0x50>

00005844 <fl_createdirectory>:
    5844:	000067b7          	lui	a5,0x6
    5848:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_init>
    584c:	fa010113          	addi	sp,sp,-96
    5850:	05512223          	sw	s5,68(sp)
    5854:	04112e23          	sw	ra,92(sp)
    5858:	04812c23          	sw	s0,88(sp)
    585c:	04912a23          	sw	s1,84(sp)
    5860:	05212823          	sw	s2,80(sp)
    5864:	05312623          	sw	s3,76(sp)
    5868:	05412423          	sw	s4,72(sp)
    586c:	05612023          	sw	s6,64(sp)
    5870:	03712e23          	sw	s7,60(sp)
    5874:	00050a93          	mv	s5,a0
    5878:	00079663          	bnez	a5,5884 <fl_createdirectory+0x40>
    587c:	ffffc097          	auipc	ra,0xffffc
    5880:	e30080e7          	jalr	-464(ra) # 16ac <fl_init>
    5884:	0000a937          	lui	s2,0xa
    5888:	1c490793          	addi	a5,s2,452 # a1c4 <_fs>
    588c:	03c7a783          	lw	a5,60(a5)
    5890:	1c490b13          	addi	s6,s2,452
    5894:	00078463          	beqz	a5,589c <fl_createdirectory+0x58>
    5898:	000780e7          	jalr	a5
    589c:	ffffc097          	auipc	ra,0xffffc
    58a0:	a98080e7          	jalr	-1384(ra) # 1334 <_allocate_file>
    58a4:	00050413          	mv	s0,a0
    58a8:	00000493          	li	s1,0
    58ac:	08050663          	beqz	a0,5938 <fl_createdirectory+0xf4>
    58b0:	01450a13          	addi	s4,a0,20
    58b4:	10400613          	li	a2,260
    58b8:	00000593          	li	a1,0
    58bc:	000a0513          	mv	a0,s4
    58c0:	ffffb097          	auipc	ra,0xffffb
    58c4:	e28080e7          	jalr	-472(ra) # 6e8 <memset>
    58c8:	11840993          	addi	s3,s0,280
    58cc:	10400613          	li	a2,260
    58d0:	00000593          	li	a1,0
    58d4:	00098513          	mv	a0,s3
    58d8:	ffffb097          	auipc	ra,0xffffb
    58dc:	e10080e7          	jalr	-496(ra) # 6e8 <memset>
    58e0:	10400713          	li	a4,260
    58e4:	00098693          	mv	a3,s3
    58e8:	10400613          	li	a2,260
    58ec:	000a0593          	mv	a1,s4
    58f0:	000a8513          	mv	a0,s5
    58f4:	ffffd097          	auipc	ra,0xffffd
    58f8:	904080e7          	jalr	-1788(ra) # 21f8 <fatfs_split_path>
    58fc:	fff00793          	li	a5,-1
    5900:	00f51a63          	bne	a0,a5,5914 <fl_createdirectory+0xd0>
    5904:	00040513          	mv	a0,s0
    5908:	ffffc097          	auipc	ra,0xffffc
    590c:	aa0080e7          	jalr	-1376(ra) # 13a8 <_free_file>
    5910:	0280006f          	j	5938 <fl_createdirectory+0xf4>
    5914:	00040513          	mv	a0,s0
    5918:	ffffd097          	auipc	ra,0xffffd
    591c:	b30080e7          	jalr	-1232(ra) # 2448 <_check_file_open>
    5920:	00050493          	mv	s1,a0
    5924:	04050863          	beqz	a0,5974 <fl_createdirectory+0x130>
    5928:	00040513          	mv	a0,s0
    592c:	ffffc097          	auipc	ra,0xffffc
    5930:	a7c080e7          	jalr	-1412(ra) # 13a8 <_free_file>
    5934:	00000493          	li	s1,0
    5938:	040b2783          	lw	a5,64(s6)
    593c:	00078463          	beqz	a5,5944 <fl_createdirectory+0x100>
    5940:	000780e7          	jalr	a5
    5944:	05c12083          	lw	ra,92(sp)
    5948:	05812403          	lw	s0,88(sp)
    594c:	05012903          	lw	s2,80(sp)
    5950:	04c12983          	lw	s3,76(sp)
    5954:	04812a03          	lw	s4,72(sp)
    5958:	04412a83          	lw	s5,68(sp)
    595c:	04012b03          	lw	s6,64(sp)
    5960:	03c12b83          	lw	s7,60(sp)
    5964:	00048513          	mv	a0,s1
    5968:	05412483          	lw	s1,84(sp)
    596c:	06010113          	addi	sp,sp,96
    5970:	00008067          	ret
    5974:	01444783          	lbu	a5,20(s0)
    5978:	0c079e63          	bnez	a5,5a54 <fl_createdirectory+0x210>
    597c:	008b2783          	lw	a5,8(s6)
    5980:	00f42023          	sw	a5,0(s0)
    5984:	00042583          	lw	a1,0(s0)
    5988:	01010693          	addi	a3,sp,16
    598c:	00098613          	mv	a2,s3
    5990:	1c490513          	addi	a0,s2,452
    5994:	ffffe097          	auipc	ra,0xffffe
    5998:	9e4080e7          	jalr	-1564(ra) # 3378 <fatfs_get_file_entry>
    599c:	00100793          	li	a5,1
    59a0:	f6f502e3          	beq	a0,a5,5904 <fl_createdirectory+0xc0>
    59a4:	00042223          	sw	zero,4(s0)
    59a8:	00100693          	li	a3,1
    59ac:	00440613          	addi	a2,s0,4
    59b0:	00100593          	li	a1,1
    59b4:	1c490513          	addi	a0,s2,452
    59b8:	fffff097          	auipc	ra,0xfffff
    59bc:	5c0080e7          	jalr	1472(ra) # 4f78 <fatfs_allocate_free_space.part.0>
    59c0:	f60504e3          	beqz	a0,5928 <fl_createdirectory+0xe4>
    59c4:	23040a93          	addi	s5,s0,560
    59c8:	20000613          	li	a2,512
    59cc:	00000593          	li	a1,0
    59d0:	000a8513          	mv	a0,s5
    59d4:	ffffb097          	auipc	ra,0xffffb
    59d8:	d14080e7          	jalr	-748(ra) # 6e8 <memset>
    59dc:	00000a13          	li	s4,0
    59e0:	000b4783          	lbu	a5,0(s6)
    59e4:	08fa4463          	blt	s4,a5,5a6c <fl_createdirectory+0x228>
    59e8:	00002bb7          	lui	s7,0x2
    59ec:	00000a13          	li	s4,0
    59f0:	21c40a93          	addi	s5,s0,540
    59f4:	70fb8b93          	addi	s7,s7,1807 # 270f <fatfs_fat_init+0x4f>
    59f8:	00098593          	mv	a1,s3
    59fc:	00410513          	addi	a0,sp,4
    5a00:	ffffc097          	auipc	ra,0xffffc
    5a04:	3a8080e7          	jalr	936(ra) # 1da8 <fatfs_lfn_create_sfn>
    5a08:	080a0463          	beqz	s4,5a90 <fl_createdirectory+0x24c>
    5a0c:	000a0613          	mv	a2,s4
    5a10:	00410593          	addi	a1,sp,4
    5a14:	000a8513          	mv	a0,s5
    5a18:	ffffc097          	auipc	ra,0xffffc
    5a1c:	508080e7          	jalr	1288(ra) # 1f20 <fatfs_lfn_generate_tail>
    5a20:	00042583          	lw	a1,0(s0)
    5a24:	000a8613          	mv	a2,s5
    5a28:	1c490513          	addi	a0,s2,452
    5a2c:	ffffe097          	auipc	ra,0xffffe
    5a30:	ea4080e7          	jalr	-348(ra) # 38d0 <fatfs_sfn_exists>
    5a34:	06050a63          	beqz	a0,5aa8 <fl_createdirectory+0x264>
    5a38:	001a0a13          	addi	s4,s4,1
    5a3c:	fb7a1ee3          	bne	s4,s7,59f8 <fl_createdirectory+0x1b4>
    5a40:	00442583          	lw	a1,4(s0)
    5a44:	1c490513          	addi	a0,s2,452
    5a48:	fffff097          	auipc	ra,0xfffff
    5a4c:	a0c080e7          	jalr	-1524(ra) # 4454 <fatfs_free_cluster_chain>
    5a50:	eb5ff06f          	j	5904 <fl_createdirectory+0xc0>
    5a54:	00040593          	mv	a1,s0
    5a58:	000a0513          	mv	a0,s4
    5a5c:	ffffe097          	auipc	ra,0xffffe
    5a60:	b24080e7          	jalr	-1244(ra) # 3580 <_open_directory>
    5a64:	f20510e3          	bnez	a0,5984 <fl_createdirectory+0x140>
    5a68:	e9dff06f          	j	5904 <fl_createdirectory+0xc0>
    5a6c:	00442583          	lw	a1,4(s0)
    5a70:	000a8693          	mv	a3,s5
    5a74:	000a0613          	mv	a2,s4
    5a78:	1c490513          	addi	a0,s2,452
    5a7c:	ffffc097          	auipc	ra,0xffffc
    5a80:	a98080e7          	jalr	-1384(ra) # 1514 <fatfs_write_sector>
    5a84:	ea0502e3          	beqz	a0,5928 <fl_createdirectory+0xe4>
    5a88:	001a0a13          	addi	s4,s4,1
    5a8c:	f55ff06f          	j	59e0 <fl_createdirectory+0x19c>
    5a90:	00b00613          	li	a2,11
    5a94:	00410593          	addi	a1,sp,4
    5a98:	000a8513          	mv	a0,s5
    5a9c:	ffffb097          	auipc	ra,0xffffb
    5aa0:	c68080e7          	jalr	-920(ra) # 704 <memcpy>
    5aa4:	f7dff06f          	j	5a20 <fl_createdirectory+0x1dc>
    5aa8:	00442703          	lw	a4,4(s0)
    5aac:	00042583          	lw	a1,0(s0)
    5ab0:	00100813          	li	a6,1
    5ab4:	00000793          	li	a5,0
    5ab8:	000a8693          	mv	a3,s5
    5abc:	00098613          	mv	a2,s3
    5ac0:	1c490513          	addi	a0,s2,452
    5ac4:	fffff097          	auipc	ra,0xfffff
    5ac8:	5d0080e7          	jalr	1488(ra) # 5094 <fatfs_add_file_entry>
    5acc:	00050493          	mv	s1,a0
    5ad0:	f60508e3          	beqz	a0,5a40 <fl_createdirectory+0x1fc>
    5ad4:	fff00793          	li	a5,-1
    5ad8:	42f42823          	sw	a5,1072(s0)
    5adc:	22f42423          	sw	a5,552(s0)
    5ae0:	22f42623          	sw	a5,556(s0)
    5ae4:	00042623          	sw	zero,12(s0)
    5ae8:	00042423          	sw	zero,8(s0)
    5aec:	42042a23          	sw	zero,1076(s0)
    5af0:	00042823          	sw	zero,16(s0)
    5af4:	1c490513          	addi	a0,s2,452
    5af8:	ffffd097          	auipc	ra,0xffffd
    5afc:	55c080e7          	jalr	1372(ra) # 3054 <fatfs_fat_purge>
    5b00:	00040513          	mv	a0,s0
    5b04:	ffffc097          	auipc	ra,0xffffc
    5b08:	8a4080e7          	jalr	-1884(ra) # 13a8 <_free_file>
    5b0c:	00100493          	li	s1,1
    5b10:	e29ff06f          	j	5938 <fl_createdirectory+0xf4>

00005b14 <cmd17>:
    5b14:	00000051 00005500                       Q....U..

00005b1c <cmd16>:
    5b1c:	02000050 00001500                       P.......

00005b24 <acmd41>:
    5b24:	00004069 00000100                       i@......

00005b2c <cmd55>:
    5b2c:	00000077 00000100                       w.......

00005b34 <cmd8>:
    5b34:	01000048 000087aa                       H.......

00005b3c <cmd0>:
    5b3c:	00000040 00009500                       @.......

00005b44 <AUDIO>:
    5b44:	00018000                                ....

00005b48 <DISPLAY>:
    5b48:	00014000                                .@..

00005b4c <BUTTONS>:
    5b4c:	00010100                                ....

00005b50 <SDCARD>:
    5b50:	00010080                                ....

00005b54 <UART>:
    5b54:	00010020                                 ...

00005b58 <OLED_RST>:
    5b58:	00010010                                ....

00005b5c <OLED>:
    5b5c:	00010008                                ....

00005b60 <LEDS>:
    5b60:	00010004                                ....

00005b64 <font>:
    5b64:	00000000 00002f00 00030000 14000003     ...../..........
    5b74:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5b84:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5b94:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5ba4:	00080800 00200000 20000000 02040810     ...... .... ....
    5bb4:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5bc4:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5bd4:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5be4:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5bf4:	00141400 0a110000 01000004 0007052d     ............-...
    5c04:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5c14:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5c24:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5c34:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5c44:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5c54:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5c64:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5c74:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5c84:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5c94:	003f2102 01020000 20000201 00000020     .!?........  ...
    5ca4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5cb4:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5cc4:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5cd4:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5ce4:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5cf4:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5d04:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5d14:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5d24:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5d34:	043f2100 02010000 00000102 00000000     .!?.............
    5d44:	00000001 00000003 00000005 00000007     ................
    5d54:	00000009 0000000e 00000010 00000012     ................
    5d64:	00000014 00000016 00000018 0000001c     ................
    5d74:	0000001e 0000002f 6d206f4e 63697375     ..../...No music
    5d84:	6c696620 66207365 646e756f 00000a21      files found!...
    5d94:	20202020 3d3d3d3d 6f73203d 2073676e         ===== songs 
    5da4:	3d3d3d3d 2020203d 000a0a20 203e6425     =====    ...%d> 
    5db4:	000a7325 33323130 37363534 42413938     %s..0123456789AB
    5dc4:	46454443 00000000 33544146 00000032     CDEF....FAT32...
    5dd4:	31544146 00000036 20544146 61746564     FAT16...FAT deta
    5de4:	3a736c69 00000a0d 70795420 253d2065     ils:.... Type =%
    5df4:	00000073 6f6f5220 69442074 69462072     s... Root Dir Fi
    5e04:	20747372 73756c43 20726574 7825203d     rst Cluster = %x
    5e14:	00000a0d 54414620 67654220 4c206e69     .... FAT Begin L
    5e24:	3d204142 25783020 000a0d78 756c4320     BA = 0x%x... Clu
    5e34:	72657473 67654220 4c206e69 3d204142     ster Begin LBA =
    5e44:	25783020 000a0d78 63655320 73726f74      0x%x... Sectors
    5e54:	72655020 756c4320 72657473 25203d20      Per Cluster = %
    5e64:	000a0d64 5f544146 203a5346 6f727245     d...FAT_FS: Erro
    5e74:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    5e84:	54414620 74656420 736c6961 64252820      FAT details (%d
    5e94:	0a0d2129 00000000 69440a0d 74636572     )!........Direct
    5ea4:	2079726f 0a0d7325 00000000 3c207325     ory %s......%s <
    5eb4:	3e524944 00000a0d 5b207325 62206425     DIR>....%s [%d b
    5ec4:	73657479 000a0d5d 00000072              ytes]...r...

00005ed0 <_cluster_size_table16>:
    5ed0:	00007fa8 00000002 00040000 00000004     ................
    5ee0:	00080000 00000008 00100000 00000010     ................
    5ef0:	00200000 00000020 00400000 00000040     .. . .....@.@...
    5f00:	00800000 00000080 00000000 00000000     ................

00005f10 <_cluster_size_table32>:
    5f10:	00082000 00000001 01000000 00000008     . ..............
    5f20:	02000000 00000010 04000000 00000020     ............ ...
    5f30:	ffffffff 00000040 00000000 00000000     ....@...........

00005f40 <item_count>:
    5f40:	00000000                                ....

00005f44 <sdcard_while_loading_callback>:
    5f44:	00000000                                ....

00005f48 <back_color>:
	...

00005f49 <front_color>:
    5f49:	                                         ...

00005f4c <cursor_y>:
    5f4c:	00000000                                ....

00005f50 <cursor_x>:
    5f50:	00000000                                ....

00005f54 <f_putchar>:
    5f54:	00000000                                ....

00005f58 <_free_file_list>:
	...

00005f60 <_open_file_list>:
	...

00005f68 <_filelib_valid>:
    5f68:	00000000                                ....

00005f6c <_filelib_init>:
    5f6c:	00000000                                ....

Déassemblage de la section .text.startup :

00005f70 <main>:
    5f70:	000067b7          	lui	a5,0x6
    5f74:	b607a783          	lw	a5,-1184(a5) # 5b60 <LEDS>
    5f78:	eb010113          	addi	sp,sp,-336
    5f7c:	14112623          	sw	ra,332(sp)
    5f80:	14812423          	sw	s0,328(sp)
    5f84:	14912223          	sw	s1,324(sp)
    5f88:	15212023          	sw	s2,320(sp)
    5f8c:	13312e23          	sw	s3,316(sp)
    5f90:	13412c23          	sw	s4,312(sp)
    5f94:	13512a23          	sw	s5,308(sp)
    5f98:	13612823          	sw	s6,304(sp)
    5f9c:	13712623          	sw	s7,300(sp)
    5fa0:	13812423          	sw	s8,296(sp)
    5fa4:	0007a023          	sw	zero,0(a5)
    5fa8:	000017b7          	lui	a5,0x1
    5fac:	00006737          	lui	a4,0x6
    5fb0:	a8c78793          	addi	a5,a5,-1396 # a8c <display_putchar>
    5fb4:	f4f72a23          	sw	a5,-172(a4) # 5f54 <f_putchar>
    5fb8:	ffffb097          	auipc	ra,0xffffb
    5fbc:	960080e7          	jalr	-1696(ra) # 918 <oled_init>
    5fc0:	ffffb097          	auipc	ra,0xffffb
    5fc4:	964080e7          	jalr	-1692(ra) # 924 <oled_fullscreen>
    5fc8:	00000513          	li	a0,0
    5fcc:	ffffb097          	auipc	ra,0xffffb
    5fd0:	9f0080e7          	jalr	-1552(ra) # 9bc <oled_clear>
    5fd4:	000004b7          	lui	s1,0x0
    5fd8:	ffffa097          	auipc	ra,0xffffa
    5fdc:	480080e7          	jalr	1152(ra) # 458 <sdcard_init>
    5fe0:	00000437          	lui	s0,0x0
    5fe4:	ffffb097          	auipc	ra,0xffffb
    5fe8:	6c8080e7          	jalr	1736(ra) # 16ac <fl_init>
    5fec:	60448593          	addi	a1,s1,1540 # 604 <sdcard_writesector>
    5ff0:	5ac40513          	addi	a0,s0,1452 # 5ac <sdcard_readsector>
    5ff4:	ffffd097          	auipc	ra,0xffffd
    5ff8:	a64080e7          	jalr	-1436(ra) # 2a58 <fl_attach_media>
    5ffc:	fe0518e3          	bnez	a0,5fec <main+0x7c>
    6000:	00006537          	lui	a0,0x6
    6004:	00410593          	addi	a1,sp,4
    6008:	d7850513          	addi	a0,a0,-648 # 5d78 <font+0x214>
    600c:	ffffd097          	auipc	ra,0xffffd
    6010:	65c080e7          	jalr	1628(ra) # 3668 <fl_opendir>
    6014:	02050c63          	beqz	a0,604c <main+0xdc>
    6018:	00006437          	lui	s0,0x6
    601c:	01010493          	addi	s1,sp,16
    6020:	00006937          	lui	s2,0x6
    6024:	00900993          	li	s3,9
    6028:	19c40413          	addi	s0,s0,412 # 619c <items>
    602c:	00048593          	mv	a1,s1
    6030:	00410513          	addi	a0,sp,4
    6034:	ffffe097          	auipc	ra,0xffffe
    6038:	e5c080e7          	jalr	-420(ra) # 3e90 <fl_readdir>
    603c:	04050c63          	beqz	a0,6094 <main+0x124>
    6040:	00410513          	addi	a0,sp,4
    6044:	ffffc097          	auipc	ra,0xffffc
    6048:	914080e7          	jalr	-1772(ra) # 1958 <fl_closedir>
    604c:	000069b7          	lui	s3,0x6
    6050:	f409a783          	lw	a5,-192(s3) # 5f40 <item_count>
    6054:	06079463          	bnez	a5,60bc <main+0x14c>
    6058:	00000593          	li	a1,0
    605c:	00000513          	li	a0,0
    6060:	ffffb097          	auipc	ra,0xffffb
    6064:	a04080e7          	jalr	-1532(ra) # a64 <display_set_cursor>
    6068:	00000593          	li	a1,0
    606c:	0ff00513          	li	a0,255
    6070:	ffffb097          	auipc	ra,0xffffb
    6074:	a08080e7          	jalr	-1528(ra) # a78 <display_set_front_back_color>
    6078:	00006537          	lui	a0,0x6
    607c:	d7c50513          	addi	a0,a0,-644 # 5d7c <font+0x218>
    6080:	ffffb097          	auipc	ra,0xffffb
    6084:	d5c080e7          	jalr	-676(ra) # ddc <printf>
    6088:	ffffb097          	auipc	ra,0xffffb
    608c:	b28080e7          	jalr	-1240(ra) # bb0 <display_refresh>
    6090:	0000006f          	j	6090 <main+0x120>
    6094:	11414783          	lbu	a5,276(sp)
    6098:	f8079ae3          	bnez	a5,602c <main+0xbc>
    609c:	f4092783          	lw	a5,-192(s2) # 5f40 <item_count>
    60a0:	f8f9c6e3          	blt	s3,a5,602c <main+0xbc>
    60a4:	00178713          	addi	a4,a5,1
    60a8:	00279793          	slli	a5,a5,0x2
    60ac:	00f407b3          	add	a5,s0,a5
    60b0:	f4e92023          	sw	a4,-192(s2)
    60b4:	0097a023          	sw	s1,0(a5)
    60b8:	f75ff06f          	j	602c <main+0xbc>
    60bc:	000067b7          	lui	a5,0x6
    60c0:	b4c7aa03          	lw	s4,-1204(a5) # 5b4c <BUTTONS>
    60c4:	00000913          	li	s2,0
    60c8:	00000413          	li	s0,0
    60cc:	00006ab7          	lui	s5,0x6
    60d0:	00006b37          	lui	s6,0x6
    60d4:	00006bb7          	lui	s7,0x6
    60d8:	00000593          	li	a1,0
    60dc:	00000513          	li	a0,0
    60e0:	ffffb097          	auipc	ra,0xffffb
    60e4:	984080e7          	jalr	-1660(ra) # a64 <display_set_cursor>
    60e8:	0ff97593          	zext.b	a1,s2
    60ec:	07f58513          	addi	a0,a1,127
    60f0:	0ff57513          	zext.b	a0,a0
    60f4:	ffffb097          	auipc	ra,0xffffb
    60f8:	984080e7          	jalr	-1660(ra) # a78 <display_set_front_back_color>
    60fc:	d94a8513          	addi	a0,s5,-620 # 5d94 <font+0x230>
    6100:	00790913          	addi	s2,s2,7
    6104:	ffffb097          	auipc	ra,0xffffb
    6108:	cd8080e7          	jalr	-808(ra) # ddc <printf>
    610c:	19cb0c13          	addi	s8,s6,412 # 619c <items>
    6110:	00000493          	li	s1,0
    6114:	f409a783          	lw	a5,-192(s3)
    6118:	04f4c263          	blt	s1,a5,615c <main+0x1ec>
    611c:	ffffb097          	auipc	ra,0xffffb
    6120:	a94080e7          	jalr	-1388(ra) # bb0 <display_refresh>
    6124:	000a2783          	lw	a5,0(s4)
    6128:	0087f793          	andi	a5,a5,8
    612c:	00078463          	beqz	a5,6134 <main+0x1c4>
    6130:	00140413          	addi	s0,s0,1
    6134:	000a2783          	lw	a5,0(s4)
    6138:	0107f793          	andi	a5,a5,16
    613c:	00078463          	beqz	a5,6144 <main+0x1d4>
    6140:	fff40413          	addi	s0,s0,-1
    6144:	f409a783          	lw	a5,-192(s3)
    6148:	00045463          	bgez	s0,6150 <main+0x1e0>
    614c:	fff78413          	addi	s0,a5,-1
    6150:	f8f444e3          	blt	s0,a5,60d8 <main+0x168>
    6154:	00000413          	li	s0,0
    6158:	f81ff06f          	j	60d8 <main+0x168>
    615c:	02941a63          	bne	s0,s1,6190 <main+0x220>
    6160:	0ff00593          	li	a1,255
    6164:	00000513          	li	a0,0
    6168:	ffffb097          	auipc	ra,0xffffb
    616c:	910080e7          	jalr	-1776(ra) # a78 <display_set_front_back_color>
    6170:	000c2603          	lw	a2,0(s8)
    6174:	00048593          	mv	a1,s1
    6178:	db0b8513          	addi	a0,s7,-592 # 5db0 <font+0x24c>
    617c:	ffffb097          	auipc	ra,0xffffb
    6180:	c60080e7          	jalr	-928(ra) # ddc <printf>
    6184:	00148493          	addi	s1,s1,1
    6188:	004c0c13          	addi	s8,s8,4
    618c:	f89ff06f          	j	6114 <main+0x1a4>
    6190:	00000593          	li	a1,0
    6194:	0ff00513          	li	a0,255
    6198:	fd1ff06f          	j	6168 <main+0x1f8>
