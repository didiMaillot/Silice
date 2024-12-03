
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00006097          	auipc	ra,0x6
       8:	e70080e7          	jalr	-400(ra) # 5e74 <main>
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
      38:	a987a783          	lw	a5,-1384(a5) # 5a98 <SDCARD>
      3c:	00200713          	li	a4,2
      40:	00e7a023          	sw	a4,0(a5)
      44:	00008067          	ret

00000048 <sdcard_ponder>:
      48:	000066b7          	lui	a3,0x6
      4c:	a986a603          	lw	a2,-1384(a3) # 5a98 <SDCARD>
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
      7c:	a987a783          	lw	a5,-1384(a5) # 5a98 <SDCARD>
      80:	00600713          	li	a4,6
      84:	00e7a023          	sw	a4,0(a5)
      88:	00008067          	ret

0000008c <sdcard_send>:
      8c:	000067b7          	lui	a5,0x6
      90:	a987a783          	lw	a5,-1384(a5) # 5a98 <SDCARD>
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
     13c:	e487a783          	lw	a5,-440(a5) # 5e48 <sdcard_while_loading_callback>
     140:	00078067          	jr	a5

00000144 <sdcard_read>:
     144:	fd010113          	addi	sp,sp,-48 # ffd0 <_files+0x9ca0>
     148:	fff50793          	addi	a5,a0,-1
     14c:	01312e23          	sw	s3,28(sp)
     150:	00100993          	li	s3,1
     154:	00f999b3          	sll	s3,s3,a5
     158:	000067b7          	lui	a5,0x6
     15c:	01512a23          	sw	s5,20(sp)
     160:	a987aa83          	lw	s5,-1384(a5) # 5a98 <SDCARD>
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
     1fc:	e48c2783          	lw	a5,-440(s8) # 5e48 <sdcard_while_loading_callback>
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
     400:	a987a403          	lw	s0,-1384(a5) # 5a98 <SDCARD>
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
     480:	e4f72423          	sw	a5,-440(a4) # 5e48 <sdcard_while_loading_callback>
     484:	00006937          	lui	s2,0x6
     488:	0ff00993          	li	s3,255
     48c:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     490:	00000097          	auipc	ra,0x0
     494:	f64080e7          	jalr	-156(ra) # 3f4 <sdcard_preinit>
     498:	a8490513          	addi	a0,s2,-1404 # 5a84 <cmd0>
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
     4d8:	a7c50513          	addi	a0,a0,-1412 # 5a7c <cmd8>
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
     50c:	a7490513          	addi	a0,s2,-1420 # 5a74 <cmd55>
     510:	00000097          	auipc	ra,0x0
     514:	d70080e7          	jalr	-656(ra) # 280 <sdcard_cmd>
     518:	00100593          	li	a1,1
     51c:	00800513          	li	a0,8
     520:	00000097          	auipc	ra,0x0
     524:	ce8080e7          	jalr	-792(ra) # 208 <sdcard_get>
     528:	00000097          	auipc	ra,0x0
     52c:	b20080e7          	jalr	-1248(ra) # 48 <sdcard_ponder>
     530:	a6c98513          	addi	a0,s3,-1428 # 5a6c <acmd41>
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
     570:	a6450513          	addi	a0,a0,-1436 # 5a64 <cmd16>
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
     6c4:	a9c7a783          	lw	a5,-1380(a5) # 5a9c <UART>
     6c8:	00a7a023          	sw	a0,0(a5)
     6cc:	c00026f3          	rdcycle	a3
     6d0:	000027b7          	lui	a5,0x2
     6d4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_init+0xa7>
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
     81c:	aa07a703          	lw	a4,-1376(a5) # 5aa0 <OLED_RST>
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
     848:	aa07a703          	lw	a4,-1376(a5)
     84c:	00100693          	li	a3,1
     850:	00d72023          	sw	a3,0(a4)
     854:	00040737          	lui	a4,0x40
     858:	00000013          	nop
     85c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     860:	fe071ce3          	bnez	a4,858 <oled_init_mode+0x40>
     864:	aa07a783          	lw	a5,-1376(a5)
     868:	0007a023          	sw	zero,0(a5)
     86c:	000407b7          	lui	a5,0x40
     870:	00000013          	nop
     874:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     878:	fe079ce3          	bnez	a5,870 <oled_init_mode+0x58>
     87c:	00006737          	lui	a4,0x6
     880:	aa472783          	lw	a5,-1372(a4) # 5aa4 <OLED>
     884:	2af00693          	li	a3,687
     888:	00d7a023          	sw	a3,0(a5)
     88c:	000407b7          	lui	a5,0x40
     890:	00000013          	nop
     894:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     898:	fe079ce3          	bnez	a5,890 <oled_init_mode+0x78>
     89c:	aa472403          	lw	s0,-1372(a4)
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
     930:	aa47a403          	lw	s0,-1372(a5) # 5aa4 <OLED>
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
     9c8:	aa47a983          	lw	s3,-1372(a5) # 5aa4 <OLED>
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

00000a38 <display_framebuffer>:
     a38:	000067b7          	lui	a5,0x6
     a3c:	a907a503          	lw	a0,-1392(a5) # 5a90 <DISPLAY>
     a40:	00008067          	ret

00000a44 <display_set_cursor>:
     a44:	000067b7          	lui	a5,0x6
     a48:	e4a7aa23          	sw	a0,-428(a5) # 5e54 <cursor_x>
     a4c:	000067b7          	lui	a5,0x6
     a50:	e4b7a823          	sw	a1,-432(a5) # 5e50 <cursor_y>
     a54:	00008067          	ret

00000a58 <display_set_front_back_color>:
     a58:	000067b7          	lui	a5,0x6
     a5c:	e4a786a3          	sb	a0,-435(a5) # 5e4d <front_color>
     a60:	000067b7          	lui	a5,0x6
     a64:	e4b78623          	sb	a1,-436(a5) # 5e4c <back_color>
     a68:	00008067          	ret

00000a6c <display_putchar>:
     a6c:	00a00793          	li	a5,10
     a70:	00006737          	lui	a4,0x6
     a74:	02f51663          	bne	a0,a5,aa0 <display_putchar+0x34>
     a78:	e4072a23          	sw	zero,-428(a4) # 5e54 <cursor_x>
     a7c:	00006737          	lui	a4,0x6
     a80:	e5072783          	lw	a5,-432(a4) # 5e50 <cursor_y>
     a84:	00878793          	addi	a5,a5,8
     a88:	e4f72823          	sw	a5,-432(a4)
     a8c:	07f00713          	li	a4,127
     a90:	00f75663          	bge	a4,a5,a9c <display_putchar+0x30>
     a94:	000067b7          	lui	a5,0x6
     a98:	e407a823          	sw	zero,-432(a5) # 5e50 <cursor_y>
     a9c:	00008067          	ret
     aa0:	ff010113          	addi	sp,sp,-16
     aa4:	00812623          	sw	s0,12(sp)
     aa8:	01f00793          	li	a5,31
     aac:	08a7d663          	bge	a5,a0,b38 <display_putchar+0xcc>
     ab0:	000067b7          	lui	a5,0x6
     ab4:	a907ae83          	lw	t4,-1392(a5) # 5a90 <DISPLAY>
     ab8:	000066b7          	lui	a3,0x6
     abc:	00251793          	slli	a5,a0,0x2
     ac0:	00a787b3          	add	a5,a5,a0
     ac4:	aac68693          	addi	a3,a3,-1364 # 5aac <font>
     ac8:	00f686b3          	add	a3,a3,a5
     acc:	00000613          	li	a2,0
     ad0:	00100e13          	li	t3,1
     ad4:	000063b7          	lui	t2,0x6
     ad8:	00006437          	lui	s0,0x6
     adc:	00006f37          	lui	t5,0x6
     ae0:	00500f93          	li	t6,5
     ae4:	00800293          	li	t0,8
     ae8:	00ce1333          	sll	t1,t3,a2
     aec:	00068513          	mv	a0,a3
     af0:	00000593          	li	a1,0
     af4:	f6054783          	lbu	a5,-160(a0)
     af8:	0067f7b3          	and	a5,a5,t1
     afc:	04078a63          	beqz	a5,b50 <display_putchar+0xe4>
     b00:	e4d44883          	lbu	a7,-435(s0) # 5e4d <front_color>
     b04:	e5472783          	lw	a5,-428(a4)
     b08:	e50f2803          	lw	a6,-432(t5) # 5e50 <cursor_y>
     b0c:	00150513          	addi	a0,a0,1
     b10:	00f587b3          	add	a5,a1,a5
     b14:	00779793          	slli	a5,a5,0x7
     b18:	01060833          	add	a6,a2,a6
     b1c:	010787b3          	add	a5,a5,a6
     b20:	00fe87b3          	add	a5,t4,a5
     b24:	01178023          	sb	a7,0(a5)
     b28:	00158593          	addi	a1,a1,1
     b2c:	fdf594e3          	bne	a1,t6,af4 <display_putchar+0x88>
     b30:	00160613          	addi	a2,a2,1
     b34:	fa561ae3          	bne	a2,t0,ae8 <display_putchar+0x7c>
     b38:	e5472783          	lw	a5,-428(a4)
     b3c:	07f00693          	li	a3,127
     b40:	00578793          	addi	a5,a5,5
     b44:	00f6ca63          	blt	a3,a5,b58 <display_putchar+0xec>
     b48:	e4f72a23          	sw	a5,-428(a4)
     b4c:	02c0006f          	j	b78 <display_putchar+0x10c>
     b50:	e4c3c883          	lbu	a7,-436(t2) # 5e4c <back_color>
     b54:	fb1ff06f          	j	b04 <display_putchar+0x98>
     b58:	e4072a23          	sw	zero,-428(a4)
     b5c:	00006737          	lui	a4,0x6
     b60:	e5072783          	lw	a5,-432(a4) # 5e50 <cursor_y>
     b64:	00878793          	addi	a5,a5,8
     b68:	e4f72823          	sw	a5,-432(a4)
     b6c:	00f6d663          	bge	a3,a5,b78 <display_putchar+0x10c>
     b70:	000067b7          	lui	a5,0x6
     b74:	e407a823          	sw	zero,-432(a5) # 5e50 <cursor_y>
     b78:	00c12403          	lw	s0,12(sp)
     b7c:	01010113          	addi	sp,sp,16
     b80:	00008067          	ret

00000b84 <display_refresh>:
     b84:	00008067          	ret

00000b88 <dual_putchar>:
     b88:	ff010113          	addi	sp,sp,-16
     b8c:	00812423          	sw	s0,8(sp)
     b90:	00112623          	sw	ra,12(sp)
     b94:	00050413          	mv	s0,a0
     b98:	00000097          	auipc	ra,0x0
     b9c:	ed4080e7          	jalr	-300(ra) # a6c <display_putchar>
     ba0:	00040513          	mv	a0,s0
     ba4:	00812403          	lw	s0,8(sp)
     ba8:	00c12083          	lw	ra,12(sp)
     bac:	01010113          	addi	sp,sp,16
     bb0:	00000317          	auipc	t1,0x0
     bb4:	b1030067          	jr	-1264(t1) # 6c0 <uart_putchar>

00000bb8 <print_string>:
     bb8:	ff010113          	addi	sp,sp,-16
     bbc:	00812423          	sw	s0,8(sp)
     bc0:	00912223          	sw	s1,4(sp)
     bc4:	00112623          	sw	ra,12(sp)
     bc8:	00050413          	mv	s0,a0
     bcc:	000064b7          	lui	s1,0x6
     bd0:	00044503          	lbu	a0,0(s0)
     bd4:	00051c63          	bnez	a0,bec <print_string+0x34>
     bd8:	00c12083          	lw	ra,12(sp)
     bdc:	00812403          	lw	s0,8(sp)
     be0:	00412483          	lw	s1,4(sp)
     be4:	01010113          	addi	sp,sp,16
     be8:	00008067          	ret
     bec:	e584a783          	lw	a5,-424(s1) # 5e58 <f_putchar>
     bf0:	00140413          	addi	s0,s0,1
     bf4:	000780e7          	jalr	a5
     bf8:	fd9ff06f          	j	bd0 <print_string+0x18>

00000bfc <print_dec>:
     bfc:	ee010113          	addi	sp,sp,-288
     c00:	10812c23          	sw	s0,280(sp)
     c04:	11312623          	sw	s3,268(sp)
     c08:	10112e23          	sw	ra,284(sp)
     c0c:	10912a23          	sw	s1,276(sp)
     c10:	11212823          	sw	s2,272(sp)
     c14:	00050413          	mv	s0,a0
     c18:	000069b7          	lui	s3,0x6
     c1c:	e589a783          	lw	a5,-424(s3) # 5e58 <f_putchar>
     c20:	06045e63          	bgez	s0,c9c <print_dec+0xa0>
     c24:	02d00513          	li	a0,45
     c28:	000780e7          	jalr	a5
     c2c:	40800433          	neg	s0,s0
     c30:	fedff06f          	j	c1c <print_dec+0x20>
     c34:	00040513          	mv	a0,s0
     c38:	00a00593          	li	a1,10
     c3c:	00000097          	auipc	ra,0x0
     c40:	9d0080e7          	jalr	-1584(ra) # 60c <__divsi3>
     c44:	00251793          	slli	a5,a0,0x2
     c48:	00f507b3          	add	a5,a0,a5
     c4c:	00179793          	slli	a5,a5,0x1
     c50:	40f40433          	sub	s0,s0,a5
     c54:	00148493          	addi	s1,s1,1
     c58:	fe848fa3          	sb	s0,-1(s1)
     c5c:	00050413          	mv	s0,a0
     c60:	fc041ae3          	bnez	s0,c34 <print_dec+0x38>
     c64:	fd2488e3          	beq	s1,s2,c34 <print_dec+0x38>
     c68:	fff4c503          	lbu	a0,-1(s1)
     c6c:	e589a783          	lw	a5,-424(s3)
     c70:	fff48493          	addi	s1,s1,-1
     c74:	03050513          	addi	a0,a0,48
     c78:	000780e7          	jalr	a5
     c7c:	ff2496e3          	bne	s1,s2,c68 <print_dec+0x6c>
     c80:	11c12083          	lw	ra,284(sp)
     c84:	11812403          	lw	s0,280(sp)
     c88:	11412483          	lw	s1,276(sp)
     c8c:	11012903          	lw	s2,272(sp)
     c90:	10c12983          	lw	s3,268(sp)
     c94:	12010113          	addi	sp,sp,288
     c98:	00008067          	ret
     c9c:	00010493          	mv	s1,sp
     ca0:	00048913          	mv	s2,s1
     ca4:	fbdff06f          	j	c60 <print_dec+0x64>

00000ca8 <print_hex_digits>:
     ca8:	fe010113          	addi	sp,sp,-32
     cac:	00812c23          	sw	s0,24(sp)
     cb0:	01212823          	sw	s2,16(sp)
     cb4:	fff58413          	addi	s0,a1,-1
     cb8:	00006937          	lui	s2,0x6
     cbc:	00912a23          	sw	s1,20(sp)
     cc0:	01312623          	sw	s3,12(sp)
     cc4:	00112e23          	sw	ra,28(sp)
     cc8:	00050493          	mv	s1,a0
     ccc:	00241413          	slli	s0,s0,0x2
     cd0:	cc090913          	addi	s2,s2,-832 # 5cc0 <font+0x214>
     cd4:	000069b7          	lui	s3,0x6
     cd8:	02045063          	bgez	s0,cf8 <print_hex_digits+0x50>
     cdc:	01c12083          	lw	ra,28(sp)
     ce0:	01812403          	lw	s0,24(sp)
     ce4:	01412483          	lw	s1,20(sp)
     ce8:	01012903          	lw	s2,16(sp)
     cec:	00c12983          	lw	s3,12(sp)
     cf0:	02010113          	addi	sp,sp,32
     cf4:	00008067          	ret
     cf8:	0084d7b3          	srl	a5,s1,s0
     cfc:	00f7f793          	andi	a5,a5,15
     d00:	00f907b3          	add	a5,s2,a5
     d04:	e589a703          	lw	a4,-424(s3) # 5e58 <f_putchar>
     d08:	0007c503          	lbu	a0,0(a5)
     d0c:	ffc40413          	addi	s0,s0,-4
     d10:	000700e7          	jalr	a4
     d14:	fc5ff06f          	j	cd8 <print_hex_digits+0x30>

00000d18 <print_hex>:
     d18:	00800593          	li	a1,8
     d1c:	00000317          	auipc	t1,0x0
     d20:	f8c30067          	jr	-116(t1) # ca8 <print_hex_digits>

00000d24 <printf>:
     d24:	fa010113          	addi	sp,sp,-96
     d28:	04f12a23          	sw	a5,84(sp)
     d2c:	04410793          	addi	a5,sp,68
     d30:	02812c23          	sw	s0,56(sp)
     d34:	02912a23          	sw	s1,52(sp)
     d38:	03312623          	sw	s3,44(sp)
     d3c:	03412423          	sw	s4,40(sp)
     d40:	03512223          	sw	s5,36(sp)
     d44:	03612023          	sw	s6,32(sp)
     d48:	01712e23          	sw	s7,28(sp)
     d4c:	02112e23          	sw	ra,60(sp)
     d50:	03212823          	sw	s2,48(sp)
     d54:	00050413          	mv	s0,a0
     d58:	04b12223          	sw	a1,68(sp)
     d5c:	04c12423          	sw	a2,72(sp)
     d60:	04d12623          	sw	a3,76(sp)
     d64:	04e12823          	sw	a4,80(sp)
     d68:	05012c23          	sw	a6,88(sp)
     d6c:	05112e23          	sw	a7,92(sp)
     d70:	00f12623          	sw	a5,12(sp)
     d74:	02500993          	li	s3,37
     d78:	000064b7          	lui	s1,0x6
     d7c:	07300a13          	li	s4,115
     d80:	07800a93          	li	s5,120
     d84:	06400b13          	li	s6,100
     d88:	06300b93          	li	s7,99
     d8c:	00044503          	lbu	a0,0(s0)
     d90:	02051863          	bnez	a0,dc0 <printf+0x9c>
     d94:	03c12083          	lw	ra,60(sp)
     d98:	03812403          	lw	s0,56(sp)
     d9c:	03412483          	lw	s1,52(sp)
     da0:	03012903          	lw	s2,48(sp)
     da4:	02c12983          	lw	s3,44(sp)
     da8:	02812a03          	lw	s4,40(sp)
     dac:	02412a83          	lw	s5,36(sp)
     db0:	02012b03          	lw	s6,32(sp)
     db4:	01c12b83          	lw	s7,28(sp)
     db8:	06010113          	addi	sp,sp,96
     dbc:	00008067          	ret
     dc0:	00140913          	addi	s2,s0,1
     dc4:	09351663          	bne	a0,s3,e50 <printf+0x12c>
     dc8:	00144503          	lbu	a0,1(s0)
     dcc:	03451263          	bne	a0,s4,df0 <printf+0xcc>
     dd0:	00c12783          	lw	a5,12(sp)
     dd4:	0007a503          	lw	a0,0(a5)
     dd8:	00478713          	addi	a4,a5,4
     ddc:	00e12623          	sw	a4,12(sp)
     de0:	00000097          	auipc	ra,0x0
     de4:	dd8080e7          	jalr	-552(ra) # bb8 <print_string>
     de8:	00190413          	addi	s0,s2,1
     dec:	fa1ff06f          	j	d8c <printf+0x68>
     df0:	03551063          	bne	a0,s5,e10 <printf+0xec>
     df4:	00c12783          	lw	a5,12(sp)
     df8:	0007a503          	lw	a0,0(a5)
     dfc:	00478713          	addi	a4,a5,4
     e00:	00e12623          	sw	a4,12(sp)
     e04:	00000097          	auipc	ra,0x0
     e08:	f14080e7          	jalr	-236(ra) # d18 <print_hex>
     e0c:	fddff06f          	j	de8 <printf+0xc4>
     e10:	03651063          	bne	a0,s6,e30 <printf+0x10c>
     e14:	00c12783          	lw	a5,12(sp)
     e18:	0007a503          	lw	a0,0(a5)
     e1c:	00478713          	addi	a4,a5,4
     e20:	00e12623          	sw	a4,12(sp)
     e24:	00000097          	auipc	ra,0x0
     e28:	dd8080e7          	jalr	-552(ra) # bfc <print_dec>
     e2c:	fbdff06f          	j	de8 <printf+0xc4>
     e30:	e584a783          	lw	a5,-424(s1) # 5e58 <f_putchar>
     e34:	01751a63          	bne	a0,s7,e48 <printf+0x124>
     e38:	00c12703          	lw	a4,12(sp)
     e3c:	00072503          	lw	a0,0(a4)
     e40:	00470693          	addi	a3,a4,4
     e44:	00d12623          	sw	a3,12(sp)
     e48:	000780e7          	jalr	a5
     e4c:	f9dff06f          	j	de8 <printf+0xc4>
     e50:	e584a783          	lw	a5,-424(s1)
     e54:	00040913          	mv	s2,s0
     e58:	000780e7          	jalr	a5
     e5c:	f8dff06f          	j	de8 <printf+0xc4>

00000e60 <__mulsi3>:
     e60:	00050793          	mv	a5,a0
     e64:	00000513          	li	a0,0
     e68:	00079463          	bnez	a5,e70 <__mulsi3+0x10>
     e6c:	00008067          	ret
     e70:	0017f713          	andi	a4,a5,1
     e74:	00070463          	beqz	a4,e7c <__mulsi3+0x1c>
     e78:	00b50533          	add	a0,a0,a1
     e7c:	0017d793          	srli	a5,a5,0x1
     e80:	00159593          	slli	a1,a1,0x1
     e84:	fe5ff06f          	j	e68 <__mulsi3+0x8>

00000e88 <fat_list_insert_last>:
     e88:	00452783          	lw	a5,4(a0)
     e8c:	04079263          	bnez	a5,ed0 <fat_list_insert_last+0x48>
     e90:	00052783          	lw	a5,0(a0)
     e94:	00079c63          	bnez	a5,eac <fat_list_insert_last+0x24>
     e98:	00b52023          	sw	a1,0(a0)
     e9c:	00b52223          	sw	a1,4(a0)
     ea0:	0005a023          	sw	zero,0(a1)
     ea4:	0005a223          	sw	zero,4(a1)
     ea8:	00008067          	ret
     eac:	0007a703          	lw	a4,0(a5)
     eb0:	00f5a223          	sw	a5,4(a1)
     eb4:	00e5a023          	sw	a4,0(a1)
     eb8:	00071863          	bnez	a4,ec8 <fat_list_insert_last+0x40>
     ebc:	00b52023          	sw	a1,0(a0)
     ec0:	00b7a023          	sw	a1,0(a5)
     ec4:	00008067          	ret
     ec8:	00b72223          	sw	a1,4(a4)
     ecc:	ff5ff06f          	j	ec0 <fat_list_insert_last+0x38>
     ed0:	0047a703          	lw	a4,4(a5)
     ed4:	00f5a023          	sw	a5,0(a1)
     ed8:	00e5a223          	sw	a4,4(a1)
     edc:	0047a703          	lw	a4,4(a5)
     ee0:	00071863          	bnez	a4,ef0 <fat_list_insert_last+0x68>
     ee4:	00b52223          	sw	a1,4(a0)
     ee8:	00b7a223          	sw	a1,4(a5)
     eec:	00008067          	ret
     ef0:	00b72023          	sw	a1,0(a4)
     ef4:	ff5ff06f          	j	ee8 <fat_list_insert_last+0x60>

00000ef8 <FileString_StrCmpNoCase>:
     ef8:	00050313          	mv	t1,a0
     efc:	00000793          	li	a5,0
     f00:	01900e13          	li	t3,25
     f04:	00f61663          	bne	a2,a5,f10 <FileString_StrCmpNoCase+0x18>
     f08:	00000513          	li	a0,0
     f0c:	0580006f          	j	f64 <FileString_StrCmpNoCase+0x6c>
     f10:	00f30733          	add	a4,t1,a5
     f14:	00074883          	lbu	a7,0(a4)
     f18:	00f58733          	add	a4,a1,a5
     f1c:	00074803          	lbu	a6,0(a4)
     f20:	fbf88713          	addi	a4,a7,-65
     f24:	0ff77713          	zext.b	a4,a4
     f28:	00088693          	mv	a3,a7
     f2c:	00ee6663          	bltu	t3,a4,f38 <FileString_StrCmpNoCase+0x40>
     f30:	02088693          	addi	a3,a7,32
     f34:	0ff6f693          	zext.b	a3,a3
     f38:	fbf80513          	addi	a0,a6,-65
     f3c:	0ff57513          	zext.b	a0,a0
     f40:	00080713          	mv	a4,a6
     f44:	00ae6663          	bltu	t3,a0,f50 <FileString_StrCmpNoCase+0x58>
     f48:	02080713          	addi	a4,a6,32
     f4c:	0ff77713          	zext.b	a4,a4
     f50:	40e68533          	sub	a0,a3,a4
     f54:	00e69863          	bne	a3,a4,f64 <FileString_StrCmpNoCase+0x6c>
     f58:	00088663          	beqz	a7,f64 <FileString_StrCmpNoCase+0x6c>
     f5c:	00178793          	addi	a5,a5,1
     f60:	fa0812e3          	bnez	a6,f04 <FileString_StrCmpNoCase+0xc>
     f64:	00008067          	ret

00000f68 <FileString_GetExtension>:
     f68:	00050713          	mv	a4,a0
     f6c:	00050793          	mv	a5,a0
     f70:	02e00613          	li	a2,46
     f74:	fff00513          	li	a0,-1
     f78:	0007c683          	lbu	a3,0(a5)
     f7c:	00069463          	bnez	a3,f84 <FileString_GetExtension+0x1c>
     f80:	00008067          	ret
     f84:	00c69463          	bne	a3,a2,f8c <FileString_GetExtension+0x24>
     f88:	40e78533          	sub	a0,a5,a4
     f8c:	00178793          	addi	a5,a5,1
     f90:	fe9ff06f          	j	f78 <FileString_GetExtension+0x10>

00000f94 <fatfs_fat_writeback>:
     f94:	00059663          	bnez	a1,fa0 <fatfs_fat_writeback+0xc>
     f98:	00000513          	li	a0,0
     f9c:	00008067          	ret
     fa0:	2045a703          	lw	a4,516(a1)
     fa4:	ff010113          	addi	sp,sp,-16
     fa8:	00812423          	sw	s0,8(sp)
     fac:	00112623          	sw	ra,12(sp)
     fb0:	00050793          	mv	a5,a0
     fb4:	00058413          	mv	s0,a1
     fb8:	00100513          	li	a0,1
     fbc:	04070663          	beqz	a4,1008 <fatfs_fat_writeback+0x74>
     fc0:	0387a683          	lw	a3,56(a5)
     fc4:	00069863          	bnez	a3,fd4 <fatfs_fat_writeback+0x40>
     fc8:	20042223          	sw	zero,516(s0)
     fcc:	00100513          	li	a0,1
     fd0:	0380006f          	j	1008 <fatfs_fat_writeback+0x74>
     fd4:	2005a503          	lw	a0,512(a1)
     fd8:	0147a703          	lw	a4,20(a5)
     fdc:	0207a583          	lw	a1,32(a5)
     fe0:	00100613          	li	a2,1
     fe4:	40e507b3          	sub	a5,a0,a4
     fe8:	00178793          	addi	a5,a5,1
     fec:	00f5f663          	bgeu	a1,a5,ff8 <fatfs_fat_writeback+0x64>
     ff0:	00b70733          	add	a4,a4,a1
     ff4:	40a70633          	sub	a2,a4,a0
     ff8:	00040593          	mv	a1,s0
     ffc:	000680e7          	jalr	a3
    1000:	fc0514e3          	bnez	a0,fc8 <fatfs_fat_writeback+0x34>
    1004:	00000513          	li	a0,0
    1008:	00c12083          	lw	ra,12(sp)
    100c:	00812403          	lw	s0,8(sp)
    1010:	01010113          	addi	sp,sp,16
    1014:	00008067          	ret

00001018 <fatfs_fat_read_sector>:
    1018:	fe010113          	addi	sp,sp,-32
    101c:	01212823          	sw	s2,16(sp)
    1020:	25452903          	lw	s2,596(a0)
    1024:	00812c23          	sw	s0,24(sp)
    1028:	00912a23          	sw	s1,20(sp)
    102c:	01312623          	sw	s3,12(sp)
    1030:	00112e23          	sw	ra,28(sp)
    1034:	00050993          	mv	s3,a0
    1038:	00058493          	mv	s1,a1
    103c:	00000413          	li	s0,0
    1040:	06091863          	bnez	s2,10b0 <fatfs_fat_read_sector+0x98>
    1044:	2549a783          	lw	a5,596(s3)
    1048:	20f42623          	sw	a5,524(s0)
    104c:	20442783          	lw	a5,516(s0)
    1050:	2489aa23          	sw	s0,596(s3)
    1054:	00078c63          	beqz	a5,106c <fatfs_fat_read_sector+0x54>
    1058:	00040593          	mv	a1,s0
    105c:	00098513          	mv	a0,s3
    1060:	00000097          	auipc	ra,0x0
    1064:	f34080e7          	jalr	-204(ra) # f94 <fatfs_fat_writeback>
    1068:	02050463          	beqz	a0,1090 <fatfs_fat_read_sector+0x78>
    106c:	0349a783          	lw	a5,52(s3)
    1070:	20942023          	sw	s1,512(s0)
    1074:	00100613          	li	a2,1
    1078:	00040593          	mv	a1,s0
    107c:	00048513          	mv	a0,s1
    1080:	000780e7          	jalr	a5
    1084:	06051063          	bnez	a0,10e4 <fatfs_fat_read_sector+0xcc>
    1088:	fff00793          	li	a5,-1
    108c:	20f42023          	sw	a5,512(s0)
    1090:	01c12083          	lw	ra,28(sp)
    1094:	01812403          	lw	s0,24(sp)
    1098:	01412483          	lw	s1,20(sp)
    109c:	00c12983          	lw	s3,12(sp)
    10a0:	00090513          	mv	a0,s2
    10a4:	01012903          	lw	s2,16(sp)
    10a8:	02010113          	addi	sp,sp,32
    10ac:	00008067          	ret
    10b0:	20092783          	lw	a5,512(s2)
    10b4:	00f4e663          	bltu	s1,a5,10c0 <fatfs_fat_read_sector+0xa8>
    10b8:	00178713          	addi	a4,a5,1
    10bc:	02e4ea63          	bltu	s1,a4,10f0 <fatfs_fat_read_sector+0xd8>
    10c0:	20c92783          	lw	a5,524(s2)
    10c4:	00079663          	bnez	a5,10d0 <fatfs_fat_read_sector+0xb8>
    10c8:	00040a63          	beqz	s0,10dc <fatfs_fat_read_sector+0xc4>
    10cc:	20042623          	sw	zero,524(s0)
    10d0:	00090413          	mv	s0,s2
    10d4:	20c92903          	lw	s2,524(s2)
    10d8:	f69ff06f          	j	1040 <fatfs_fat_read_sector+0x28>
    10dc:	2409aa23          	sw	zero,596(s3)
    10e0:	ff1ff06f          	j	10d0 <fatfs_fat_read_sector+0xb8>
    10e4:	20842423          	sw	s0,520(s0)
    10e8:	00040913          	mv	s2,s0
    10ec:	fa5ff06f          	j	1090 <fatfs_fat_read_sector+0x78>
    10f0:	40f484b3          	sub	s1,s1,a5
    10f4:	00949493          	slli	s1,s1,0x9
    10f8:	009904b3          	add	s1,s2,s1
    10fc:	20992423          	sw	s1,520(s2)
    1100:	f91ff06f          	j	1090 <fatfs_fat_read_sector+0x78>

00001104 <fatfs_erase_fat>:
    1104:	ff010113          	addi	sp,sp,-16
    1108:	01212023          	sw	s2,0(sp)
    110c:	04450913          	addi	s2,a0,68
    1110:	00812423          	sw	s0,8(sp)
    1114:	00912223          	sw	s1,4(sp)
    1118:	00050413          	mv	s0,a0
    111c:	00058493          	mv	s1,a1
    1120:	20000613          	li	a2,512
    1124:	00000593          	li	a1,0
    1128:	00090513          	mv	a0,s2
    112c:	00112623          	sw	ra,12(sp)
    1130:	fffff097          	auipc	ra,0xfffff
    1134:	5b8080e7          	jalr	1464(ra) # 6e8 <memset>
    1138:	04049063          	bnez	s1,1178 <fatfs_erase_fat+0x74>
    113c:	ff800793          	li	a5,-8
    1140:	04f42223          	sw	a5,68(s0)
    1144:	03842783          	lw	a5,56(s0)
    1148:	01442503          	lw	a0,20(s0)
    114c:	00100613          	li	a2,1
    1150:	00090593          	mv	a1,s2
    1154:	000780e7          	jalr	a5
    1158:	04051063          	bnez	a0,1198 <fatfs_erase_fat+0x94>
    115c:	00000513          	li	a0,0
    1160:	00c12083          	lw	ra,12(sp)
    1164:	00812403          	lw	s0,8(sp)
    1168:	00412483          	lw	s1,4(sp)
    116c:	00012903          	lw	s2,0(sp)
    1170:	01010113          	addi	sp,sp,16
    1174:	00008067          	ret
    1178:	100007b7          	lui	a5,0x10000
    117c:	ff878713          	addi	a4,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    1180:	04e42223          	sw	a4,68(s0)
    1184:	fff78793          	addi	a5,a5,-1
    1188:	fff00713          	li	a4,-1
    118c:	04e42423          	sw	a4,72(s0)
    1190:	04f42623          	sw	a5,76(s0)
    1194:	fb1ff06f          	j	1144 <fatfs_erase_fat+0x40>
    1198:	20000613          	li	a2,512
    119c:	00000593          	li	a1,0
    11a0:	00090513          	mv	a0,s2
    11a4:	fffff097          	auipc	ra,0xfffff
    11a8:	544080e7          	jalr	1348(ra) # 6e8 <memset>
    11ac:	00100493          	li	s1,1
    11b0:	02042583          	lw	a1,32(s0)
    11b4:	02c44503          	lbu	a0,44(s0)
    11b8:	00000097          	auipc	ra,0x0
    11bc:	ca8080e7          	jalr	-856(ra) # e60 <__mulsi3>
    11c0:	00a4e663          	bltu	s1,a0,11cc <fatfs_erase_fat+0xc8>
    11c4:	00100513          	li	a0,1
    11c8:	f99ff06f          	j	1160 <fatfs_erase_fat+0x5c>
    11cc:	01442503          	lw	a0,20(s0)
    11d0:	03842783          	lw	a5,56(s0)
    11d4:	00100613          	li	a2,1
    11d8:	00090593          	mv	a1,s2
    11dc:	00a48533          	add	a0,s1,a0
    11e0:	000780e7          	jalr	a5
    11e4:	f6050ce3          	beqz	a0,115c <fatfs_erase_fat+0x58>
    11e8:	00148493          	addi	s1,s1,1
    11ec:	fc5ff06f          	j	11b0 <fatfs_erase_fat+0xac>

000011f0 <fatfs_erase_sectors>:
    11f0:	fe010113          	addi	sp,sp,-32
    11f4:	01412423          	sw	s4,8(sp)
    11f8:	04450a13          	addi	s4,a0,68
    11fc:	00912a23          	sw	s1,20(sp)
    1200:	01212823          	sw	s2,16(sp)
    1204:	01312623          	sw	s3,12(sp)
    1208:	00050493          	mv	s1,a0
    120c:	00058993          	mv	s3,a1
    1210:	00060913          	mv	s2,a2
    1214:	00000593          	li	a1,0
    1218:	20000613          	li	a2,512
    121c:	000a0513          	mv	a0,s4
    1220:	00812c23          	sw	s0,24(sp)
    1224:	00112e23          	sw	ra,28(sp)
    1228:	00000413          	li	s0,0
    122c:	fffff097          	auipc	ra,0xfffff
    1230:	4bc080e7          	jalr	1212(ra) # 6e8 <memset>
    1234:	03244463          	blt	s0,s2,125c <fatfs_erase_sectors+0x6c>
    1238:	00100513          	li	a0,1
    123c:	01c12083          	lw	ra,28(sp)
    1240:	01812403          	lw	s0,24(sp)
    1244:	01412483          	lw	s1,20(sp)
    1248:	01012903          	lw	s2,16(sp)
    124c:	00c12983          	lw	s3,12(sp)
    1250:	00812a03          	lw	s4,8(sp)
    1254:	02010113          	addi	sp,sp,32
    1258:	00008067          	ret
    125c:	0384a783          	lw	a5,56(s1)
    1260:	00100613          	li	a2,1
    1264:	000a0593          	mv	a1,s4
    1268:	01340533          	add	a0,s0,s3
    126c:	000780e7          	jalr	a5
    1270:	fc0506e3          	beqz	a0,123c <fatfs_erase_sectors+0x4c>
    1274:	00140413          	addi	s0,s0,1
    1278:	fbdff06f          	j	1234 <fatfs_erase_sectors+0x44>

0000127c <_allocate_file>:
    127c:	ff010113          	addi	sp,sp,-16
    1280:	000067b7          	lui	a5,0x6
    1284:	00812423          	sw	s0,8(sp)
    1288:	e5c7a403          	lw	s0,-420(a5) # 5e5c <_free_file_list>
    128c:	00112623          	sw	ra,12(sp)
    1290:	02040e63          	beqz	s0,12cc <_allocate_file+0x50>
    1294:	00042703          	lw	a4,0(s0)
    1298:	00442683          	lw	a3,4(s0)
    129c:	e5c78793          	addi	a5,a5,-420
    12a0:	04071063          	bnez	a4,12e0 <_allocate_file+0x64>
    12a4:	00d7a023          	sw	a3,0(a5)
    12a8:	00442683          	lw	a3,4(s0)
    12ac:	02069e63          	bnez	a3,12e8 <_allocate_file+0x6c>
    12b0:	00e7a223          	sw	a4,4(a5)
    12b4:	00006537          	lui	a0,0x6
    12b8:	00040593          	mv	a1,s0
    12bc:	e6450513          	addi	a0,a0,-412 # 5e64 <_open_file_list>
    12c0:	00000097          	auipc	ra,0x0
    12c4:	bc8080e7          	jalr	-1080(ra) # e88 <fat_list_insert_last>
    12c8:	bc440413          	addi	s0,s0,-1084
    12cc:	00c12083          	lw	ra,12(sp)
    12d0:	00040513          	mv	a0,s0
    12d4:	00812403          	lw	s0,8(sp)
    12d8:	01010113          	addi	sp,sp,16
    12dc:	00008067          	ret
    12e0:	00d72223          	sw	a3,4(a4)
    12e4:	fc5ff06f          	j	12a8 <_allocate_file+0x2c>
    12e8:	00e6a023          	sw	a4,0(a3)
    12ec:	fc9ff06f          	j	12b4 <_allocate_file+0x38>

000012f0 <_free_file>:
    12f0:	43c52783          	lw	a5,1084(a0)
    12f4:	44052703          	lw	a4,1088(a0)
    12f8:	43c50593          	addi	a1,a0,1084
    12fc:	02079663          	bnez	a5,1328 <_free_file+0x38>
    1300:	000066b7          	lui	a3,0x6
    1304:	e6e6a223          	sw	a4,-412(a3) # 5e64 <_open_file_list>
    1308:	44052703          	lw	a4,1088(a0)
    130c:	02071263          	bnez	a4,1330 <_free_file+0x40>
    1310:	00006737          	lui	a4,0x6
    1314:	e6f72423          	sw	a5,-408(a4) # 5e68 <_open_file_list+0x4>
    1318:	00006537          	lui	a0,0x6
    131c:	e5c50513          	addi	a0,a0,-420 # 5e5c <_free_file_list>
    1320:	00000317          	auipc	t1,0x0
    1324:	b6830067          	jr	-1176(t1) # e88 <fat_list_insert_last>
    1328:	00e7a223          	sw	a4,4(a5)
    132c:	fddff06f          	j	1308 <_free_file+0x18>
    1330:	00f72023          	sw	a5,0(a4)
    1334:	fe5ff06f          	j	1318 <_free_file+0x28>

00001338 <fatfs_lba_of_cluster>:
    1338:	ff010113          	addi	sp,sp,-16
    133c:	00812423          	sw	s0,8(sp)
    1340:	00050413          	mv	s0,a0
    1344:	00058513          	mv	a0,a1
    1348:	00044583          	lbu	a1,0(s0)
    134c:	ffe50513          	addi	a0,a0,-2
    1350:	00112623          	sw	ra,12(sp)
    1354:	00000097          	auipc	ra,0x0
    1358:	b0c080e7          	jalr	-1268(ra) # e60 <__mulsi3>
    135c:	00442783          	lw	a5,4(s0)
    1360:	00f50533          	add	a0,a0,a5
    1364:	03042783          	lw	a5,48(s0)
    1368:	00079863          	bnez	a5,1378 <fatfs_lba_of_cluster+0x40>
    136c:	02845783          	lhu	a5,40(s0)
    1370:	4047d793          	srai	a5,a5,0x4
    1374:	00f50533          	add	a0,a0,a5
    1378:	00c12083          	lw	ra,12(sp)
    137c:	00812403          	lw	s0,8(sp)
    1380:	01010113          	addi	sp,sp,16
    1384:	00008067          	ret

00001388 <fatfs_sector_read>:
    1388:	03452783          	lw	a5,52(a0)
    138c:	00058713          	mv	a4,a1
    1390:	00070513          	mv	a0,a4
    1394:	00060593          	mv	a1,a2
    1398:	00068613          	mv	a2,a3
    139c:	00078067          	jr	a5

000013a0 <fatfs_sector_write>:
    13a0:	03852783          	lw	a5,56(a0)
    13a4:	00058713          	mv	a4,a1
    13a8:	00070513          	mv	a0,a4
    13ac:	00060593          	mv	a1,a2
    13b0:	00068613          	mv	a2,a3
    13b4:	00078067          	jr	a5

000013b8 <fatfs_read_sector>:
    13b8:	03052783          	lw	a5,48(a0)
    13bc:	ff010113          	addi	sp,sp,-16
    13c0:	00812423          	sw	s0,8(sp)
    13c4:	00912223          	sw	s1,4(sp)
    13c8:	01212023          	sw	s2,0(sp)
    13cc:	00112623          	sw	ra,12(sp)
    13d0:	00f5e7b3          	or	a5,a1,a5
    13d4:	00050413          	mv	s0,a0
    13d8:	00060493          	mv	s1,a2
    13dc:	00068913          	mv	s2,a3
    13e0:	04079263          	bnez	a5,1424 <fatfs_read_sector+0x6c>
    13e4:	01052783          	lw	a5,16(a0)
    13e8:	04f67c63          	bgeu	a2,a5,1440 <fatfs_read_sector+0x88>
    13ec:	01c52503          	lw	a0,28(a0)
    13f0:	00c42783          	lw	a5,12(s0)
    13f4:	00f50533          	add	a0,a0,a5
    13f8:	03442783          	lw	a5,52(s0)
    13fc:	00a48533          	add	a0,s1,a0
    1400:	02090863          	beqz	s2,1430 <fatfs_read_sector+0x78>
    1404:	00100613          	li	a2,1
    1408:	00090593          	mv	a1,s2
    140c:	00812403          	lw	s0,8(sp)
    1410:	00c12083          	lw	ra,12(sp)
    1414:	00412483          	lw	s1,4(sp)
    1418:	00012903          	lw	s2,0(sp)
    141c:	01010113          	addi	sp,sp,16
    1420:	00078067          	jr	a5
    1424:	00000097          	auipc	ra,0x0
    1428:	f14080e7          	jalr	-236(ra) # 1338 <fatfs_lba_of_cluster>
    142c:	fcdff06f          	j	13f8 <fatfs_read_sector+0x40>
    1430:	24a42223          	sw	a0,580(s0)
    1434:	00100613          	li	a2,1
    1438:	04440593          	addi	a1,s0,68
    143c:	fd1ff06f          	j	140c <fatfs_read_sector+0x54>
    1440:	00c12083          	lw	ra,12(sp)
    1444:	00812403          	lw	s0,8(sp)
    1448:	00412483          	lw	s1,4(sp)
    144c:	00012903          	lw	s2,0(sp)
    1450:	00000513          	li	a0,0
    1454:	01010113          	addi	sp,sp,16
    1458:	00008067          	ret

0000145c <fatfs_write_sector>:
    145c:	03852783          	lw	a5,56(a0)
    1460:	0a078863          	beqz	a5,1510 <fatfs_write_sector+0xb4>
    1464:	fe010113          	addi	sp,sp,-32
    1468:	01212823          	sw	s2,16(sp)
    146c:	00068913          	mv	s2,a3
    1470:	03052683          	lw	a3,48(a0)
    1474:	00812c23          	sw	s0,24(sp)
    1478:	00912a23          	sw	s1,20(sp)
    147c:	00112e23          	sw	ra,28(sp)
    1480:	00d5e733          	or	a4,a1,a3
    1484:	00050413          	mv	s0,a0
    1488:	00060493          	mv	s1,a2
    148c:	04071063          	bnez	a4,14cc <fatfs_write_sector+0x70>
    1490:	01052703          	lw	a4,16(a0)
    1494:	06e67063          	bgeu	a2,a4,14f4 <fatfs_write_sector+0x98>
    1498:	01c52503          	lw	a0,28(a0)
    149c:	00c42703          	lw	a4,12(s0)
    14a0:	00e50533          	add	a0,a0,a4
    14a4:	00c50533          	add	a0,a0,a2
    14a8:	02090e63          	beqz	s2,14e4 <fatfs_write_sector+0x88>
    14ac:	00100613          	li	a2,1
    14b0:	00090593          	mv	a1,s2
    14b4:	01812403          	lw	s0,24(sp)
    14b8:	01c12083          	lw	ra,28(sp)
    14bc:	01412483          	lw	s1,20(sp)
    14c0:	01012903          	lw	s2,16(sp)
    14c4:	02010113          	addi	sp,sp,32
    14c8:	00078067          	jr	a5
    14cc:	00f12623          	sw	a5,12(sp)
    14d0:	00000097          	auipc	ra,0x0
    14d4:	e68080e7          	jalr	-408(ra) # 1338 <fatfs_lba_of_cluster>
    14d8:	00c12783          	lw	a5,12(sp)
    14dc:	00a48533          	add	a0,s1,a0
    14e0:	fc9ff06f          	j	14a8 <fatfs_write_sector+0x4c>
    14e4:	24a42223          	sw	a0,580(s0)
    14e8:	00100613          	li	a2,1
    14ec:	04440593          	addi	a1,s0,68
    14f0:	fc5ff06f          	j	14b4 <fatfs_write_sector+0x58>
    14f4:	01c12083          	lw	ra,28(sp)
    14f8:	01812403          	lw	s0,24(sp)
    14fc:	01412483          	lw	s1,20(sp)
    1500:	01012903          	lw	s2,16(sp)
    1504:	00000513          	li	a0,0
    1508:	02010113          	addi	sp,sp,32
    150c:	00008067          	ret
    1510:	00000513          	li	a0,0
    1514:	00008067          	ret

00001518 <fatfs_show_details>:
    1518:	ff010113          	addi	sp,sp,-16
    151c:	00812423          	sw	s0,8(sp)
    1520:	00050413          	mv	s0,a0
    1524:	00006537          	lui	a0,0x6
    1528:	ce450513          	addi	a0,a0,-796 # 5ce4 <font+0x238>
    152c:	00112623          	sw	ra,12(sp)
    1530:	fffff097          	auipc	ra,0xfffff
    1534:	7f4080e7          	jalr	2036(ra) # d24 <printf>
    1538:	03042703          	lw	a4,48(s0)
    153c:	00100793          	li	a5,1
    1540:	06f70c63          	beq	a4,a5,15b8 <fatfs_show_details+0xa0>
    1544:	000065b7          	lui	a1,0x6
    1548:	cdc58593          	addi	a1,a1,-804 # 5cdc <font+0x230>
    154c:	00006537          	lui	a0,0x6
    1550:	cf450513          	addi	a0,a0,-780 # 5cf4 <font+0x248>
    1554:	fffff097          	auipc	ra,0xfffff
    1558:	7d0080e7          	jalr	2000(ra) # d24 <printf>
    155c:	00842583          	lw	a1,8(s0)
    1560:	00006537          	lui	a0,0x6
    1564:	d0050513          	addi	a0,a0,-768 # 5d00 <font+0x254>
    1568:	fffff097          	auipc	ra,0xfffff
    156c:	7bc080e7          	jalr	1980(ra) # d24 <printf>
    1570:	01442583          	lw	a1,20(s0)
    1574:	00006537          	lui	a0,0x6
    1578:	d2050513          	addi	a0,a0,-736 # 5d20 <font+0x274>
    157c:	fffff097          	auipc	ra,0xfffff
    1580:	7a8080e7          	jalr	1960(ra) # d24 <printf>
    1584:	00442583          	lw	a1,4(s0)
    1588:	00006537          	lui	a0,0x6
    158c:	d3850513          	addi	a0,a0,-712 # 5d38 <font+0x28c>
    1590:	fffff097          	auipc	ra,0xfffff
    1594:	794080e7          	jalr	1940(ra) # d24 <printf>
    1598:	00044583          	lbu	a1,0(s0)
    159c:	00812403          	lw	s0,8(sp)
    15a0:	00c12083          	lw	ra,12(sp)
    15a4:	00006537          	lui	a0,0x6
    15a8:	d5450513          	addi	a0,a0,-684 # 5d54 <font+0x2a8>
    15ac:	01010113          	addi	sp,sp,16
    15b0:	fffff317          	auipc	t1,0xfffff
    15b4:	77430067          	jr	1908(t1) # d24 <printf>
    15b8:	000065b7          	lui	a1,0x6
    15bc:	cd458593          	addi	a1,a1,-812 # 5cd4 <font+0x228>
    15c0:	f8dff06f          	j	154c <fatfs_show_details+0x34>

000015c4 <fatfs_get_root_cluster>:
    15c4:	00852503          	lw	a0,8(a0)
    15c8:	00008067          	ret

000015cc <fatfs_list_directory_start>:
    15cc:	00c5a223          	sw	a2,4(a1)
    15d0:	0005a023          	sw	zero,0(a1)
    15d4:	00058423          	sb	zero,8(a1)
    15d8:	00008067          	ret

000015dc <fatfs_cache_init>:
    15dc:	00100513          	li	a0,1
    15e0:	00008067          	ret

000015e4 <fatfs_cache_get_next_cluster>:
    15e4:	00000513          	li	a0,0
    15e8:	00008067          	ret

000015ec <fatfs_cache_set_next_cluster>:
    15ec:	00100513          	li	a0,1
    15f0:	00008067          	ret

000015f4 <fl_init>:
    15f4:	ff010113          	addi	sp,sp,-16
    15f8:	00812423          	sw	s0,8(sp)
    15fc:	00006437          	lui	s0,0x6
    1600:	00112623          	sw	ra,12(sp)
    1604:	e5c40793          	addi	a5,s0,-420 # 5e5c <_free_file_list>
    1608:	0007a223          	sw	zero,4(a5)
    160c:	0007a023          	sw	zero,0(a5)
    1610:	000065b7          	lui	a1,0x6
    1614:	000067b7          	lui	a5,0x6
    1618:	e6478793          	addi	a5,a5,-412 # 5e64 <_open_file_list>
    161c:	e5c40513          	addi	a0,s0,-420
    1620:	76c58593          	addi	a1,a1,1900 # 676c <_files+0x43c>
    1624:	0007a223          	sw	zero,4(a5)
    1628:	0007a023          	sw	zero,0(a5)
    162c:	00000097          	auipc	ra,0x0
    1630:	85c080e7          	jalr	-1956(ra) # e88 <fat_list_insert_last>
    1634:	000075b7          	lui	a1,0x7
    1638:	e5c40513          	addi	a0,s0,-420
    163c:	bb058593          	addi	a1,a1,-1104 # 6bb0 <_files+0x880>
    1640:	00000097          	auipc	ra,0x0
    1644:	848080e7          	jalr	-1976(ra) # e88 <fat_list_insert_last>
    1648:	00c12083          	lw	ra,12(sp)
    164c:	00812403          	lw	s0,8(sp)
    1650:	000067b7          	lui	a5,0x6
    1654:	00100713          	li	a4,1
    1658:	e6e7a823          	sw	a4,-400(a5) # 5e70 <_filelib_init>
    165c:	01010113          	addi	sp,sp,16
    1660:	00008067          	ret

00001664 <fl_attach_locks>:
    1664:	000067b7          	lui	a5,0x6
    1668:	ec878793          	addi	a5,a5,-312 # 5ec8 <_fs>
    166c:	02a7ae23          	sw	a0,60(a5)
    1670:	04b7a023          	sw	a1,64(a5)
    1674:	00008067          	ret

00001678 <fl_fseek>:
    1678:	000067b7          	lui	a5,0x6
    167c:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    1680:	fe010113          	addi	sp,sp,-32
    1684:	00812c23          	sw	s0,24(sp)
    1688:	00912a23          	sw	s1,20(sp)
    168c:	01212823          	sw	s2,16(sp)
    1690:	00112e23          	sw	ra,28(sp)
    1694:	01312623          	sw	s3,12(sp)
    1698:	00050413          	mv	s0,a0
    169c:	00058913          	mv	s2,a1
    16a0:	00060493          	mv	s1,a2
    16a4:	00079663          	bnez	a5,16b0 <fl_fseek+0x38>
    16a8:	00000097          	auipc	ra,0x0
    16ac:	f4c080e7          	jalr	-180(ra) # 15f4 <fl_init>
    16b0:	0c040c63          	beqz	s0,1788 <fl_fseek+0x110>
    16b4:	00200793          	li	a5,2
    16b8:	00f49463          	bne	s1,a5,16c0 <fl_fseek+0x48>
    16bc:	0c091663          	bnez	s2,1788 <fl_fseek+0x110>
    16c0:	000067b7          	lui	a5,0x6
    16c4:	ec878713          	addi	a4,a5,-312 # 5ec8 <_fs>
    16c8:	03c72703          	lw	a4,60(a4)
    16cc:	ec878993          	addi	s3,a5,-312
    16d0:	00070463          	beqz	a4,16d8 <fl_fseek+0x60>
    16d4:	000700e7          	jalr	a4
    16d8:	fff00793          	li	a5,-1
    16dc:	42f42823          	sw	a5,1072(s0)
    16e0:	42042a23          	sw	zero,1076(s0)
    16e4:	04049463          	bnez	s1,172c <fl_fseek+0xb4>
    16e8:	00c42783          	lw	a5,12(s0)
    16ec:	01242423          	sw	s2,8(s0)
    16f0:	0127e663          	bltu	a5,s2,16fc <fl_fseek+0x84>
    16f4:	00000493          	li	s1,0
    16f8:	0080006f          	j	1700 <fl_fseek+0x88>
    16fc:	00f42423          	sw	a5,8(s0)
    1700:	0409a783          	lw	a5,64(s3)
    1704:	00078463          	beqz	a5,170c <fl_fseek+0x94>
    1708:	000780e7          	jalr	a5
    170c:	01c12083          	lw	ra,28(sp)
    1710:	01812403          	lw	s0,24(sp)
    1714:	01012903          	lw	s2,16(sp)
    1718:	00c12983          	lw	s3,12(sp)
    171c:	00048513          	mv	a0,s1
    1720:	01412483          	lw	s1,20(sp)
    1724:	02010113          	addi	sp,sp,32
    1728:	00008067          	ret
    172c:	00100793          	li	a5,1
    1730:	04f49063          	bne	s1,a5,1770 <fl_fseek+0xf8>
    1734:	00842783          	lw	a5,8(s0)
    1738:	00094e63          	bltz	s2,1754 <fl_fseek+0xdc>
    173c:	00f90933          	add	s2,s2,a5
    1740:	00c42783          	lw	a5,12(s0)
    1744:	01242423          	sw	s2,8(s0)
    1748:	fb27f6e3          	bgeu	a5,s2,16f4 <fl_fseek+0x7c>
    174c:	00f42423          	sw	a5,8(s0)
    1750:	fa5ff06f          	j	16f4 <fl_fseek+0x7c>
    1754:	41200733          	neg	a4,s2
    1758:	00e7f663          	bgeu	a5,a4,1764 <fl_fseek+0xec>
    175c:	00042423          	sw	zero,8(s0)
    1760:	f95ff06f          	j	16f4 <fl_fseek+0x7c>
    1764:	00f90933          	add	s2,s2,a5
    1768:	01242423          	sw	s2,8(s0)
    176c:	f89ff06f          	j	16f4 <fl_fseek+0x7c>
    1770:	00200793          	li	a5,2
    1774:	00f49663          	bne	s1,a5,1780 <fl_fseek+0x108>
    1778:	00c42783          	lw	a5,12(s0)
    177c:	fd1ff06f          	j	174c <fl_fseek+0xd4>
    1780:	fff00493          	li	s1,-1
    1784:	f7dff06f          	j	1700 <fl_fseek+0x88>
    1788:	fff00493          	li	s1,-1
    178c:	f81ff06f          	j	170c <fl_fseek+0x94>

00001790 <fl_fgetpos>:
    1790:	06050663          	beqz	a0,17fc <fl_fgetpos+0x6c>
    1794:	000067b7          	lui	a5,0x6
    1798:	ec878713          	addi	a4,a5,-312 # 5ec8 <_fs>
    179c:	03c72703          	lw	a4,60(a4)
    17a0:	ff010113          	addi	sp,sp,-16
    17a4:	00812423          	sw	s0,8(sp)
    17a8:	00912223          	sw	s1,4(sp)
    17ac:	01212023          	sw	s2,0(sp)
    17b0:	00112623          	sw	ra,12(sp)
    17b4:	00050493          	mv	s1,a0
    17b8:	00058913          	mv	s2,a1
    17bc:	ec878413          	addi	s0,a5,-312
    17c0:	00070463          	beqz	a4,17c8 <fl_fgetpos+0x38>
    17c4:	000700e7          	jalr	a4
    17c8:	0084a783          	lw	a5,8(s1)
    17cc:	00000513          	li	a0,0
    17d0:	00f92023          	sw	a5,0(s2)
    17d4:	04042783          	lw	a5,64(s0)
    17d8:	00078663          	beqz	a5,17e4 <fl_fgetpos+0x54>
    17dc:	000780e7          	jalr	a5
    17e0:	00000513          	li	a0,0
    17e4:	00c12083          	lw	ra,12(sp)
    17e8:	00812403          	lw	s0,8(sp)
    17ec:	00412483          	lw	s1,4(sp)
    17f0:	00012903          	lw	s2,0(sp)
    17f4:	01010113          	addi	sp,sp,16
    17f8:	00008067          	ret
    17fc:	fff00513          	li	a0,-1
    1800:	00008067          	ret

00001804 <fl_ftell>:
    1804:	fe010113          	addi	sp,sp,-32
    1808:	00c10593          	addi	a1,sp,12
    180c:	00112e23          	sw	ra,28(sp)
    1810:	00012623          	sw	zero,12(sp)
    1814:	00000097          	auipc	ra,0x0
    1818:	f7c080e7          	jalr	-132(ra) # 1790 <fl_fgetpos>
    181c:	01c12083          	lw	ra,28(sp)
    1820:	00c12503          	lw	a0,12(sp)
    1824:	02010113          	addi	sp,sp,32
    1828:	00008067          	ret

0000182c <fl_feof>:
    182c:	06050663          	beqz	a0,1898 <fl_feof+0x6c>
    1830:	000067b7          	lui	a5,0x6
    1834:	ec878713          	addi	a4,a5,-312 # 5ec8 <_fs>
    1838:	03c72703          	lw	a4,60(a4)
    183c:	fe010113          	addi	sp,sp,-32
    1840:	00812c23          	sw	s0,24(sp)
    1844:	00912a23          	sw	s1,20(sp)
    1848:	00112e23          	sw	ra,28(sp)
    184c:	00050413          	mv	s0,a0
    1850:	ec878493          	addi	s1,a5,-312
    1854:	00070463          	beqz	a4,185c <fl_feof+0x30>
    1858:	000700e7          	jalr	a4
    185c:	00842783          	lw	a5,8(s0)
    1860:	00c42703          	lw	a4,12(s0)
    1864:	40e78533          	sub	a0,a5,a4
    1868:	0404a783          	lw	a5,64(s1)
    186c:	00153513          	seqz	a0,a0
    1870:	40a00533          	neg	a0,a0
    1874:	00078863          	beqz	a5,1884 <fl_feof+0x58>
    1878:	00a12623          	sw	a0,12(sp)
    187c:	000780e7          	jalr	a5
    1880:	00c12503          	lw	a0,12(sp)
    1884:	01c12083          	lw	ra,28(sp)
    1888:	01812403          	lw	s0,24(sp)
    188c:	01412483          	lw	s1,20(sp)
    1890:	02010113          	addi	sp,sp,32
    1894:	00008067          	ret
    1898:	fff00513          	li	a0,-1
    189c:	00008067          	ret

000018a0 <fl_closedir>:
    18a0:	00000513          	li	a0,0
    18a4:	00008067          	ret

000018a8 <fatfs_lfn_cache_init>:
    18a8:	100502a3          	sb	zero,261(a0)
    18ac:	04058663          	beqz	a1,18f8 <fatfs_lfn_cache_init+0x50>
    18b0:	ff010113          	addi	sp,sp,-16
    18b4:	00812423          	sw	s0,8(sp)
    18b8:	00912223          	sw	s1,4(sp)
    18bc:	00112623          	sw	ra,12(sp)
    18c0:	00050413          	mv	s0,a0
    18c4:	10450493          	addi	s1,a0,260
    18c8:	00040513          	mv	a0,s0
    18cc:	00d00613          	li	a2,13
    18d0:	00000593          	li	a1,0
    18d4:	00d40413          	addi	s0,s0,13
    18d8:	fffff097          	auipc	ra,0xfffff
    18dc:	e10080e7          	jalr	-496(ra) # 6e8 <memset>
    18e0:	fe9414e3          	bne	s0,s1,18c8 <fatfs_lfn_cache_init+0x20>
    18e4:	00c12083          	lw	ra,12(sp)
    18e8:	00812403          	lw	s0,8(sp)
    18ec:	00412483          	lw	s1,4(sp)
    18f0:	01010113          	addi	sp,sp,16
    18f4:	00008067          	ret
    18f8:	00008067          	ret

000018fc <fatfs_lfn_cache_entry>:
    18fc:	0005c783          	lbu	a5,0(a1)
    1900:	01300693          	li	a3,19
    1904:	01f7f793          	andi	a5,a5,31
    1908:	fff78713          	addi	a4,a5,-1
    190c:	0ff77613          	zext.b	a2,a4
    1910:	0ac6ea63          	bltu	a3,a2,19c4 <fatfs_lfn_cache_entry+0xc8>
    1914:	10554683          	lbu	a3,261(a0)
    1918:	00069463          	bnez	a3,1920 <fatfs_lfn_cache_entry+0x24>
    191c:	10f502a3          	sb	a5,261(a0)
    1920:	00171793          	slli	a5,a4,0x1
    1924:	00e787b3          	add	a5,a5,a4
    1928:	0015c683          	lbu	a3,1(a1)
    192c:	00279793          	slli	a5,a5,0x2
    1930:	00e787b3          	add	a5,a5,a4
    1934:	00f50533          	add	a0,a0,a5
    1938:	00d50023          	sb	a3,0(a0)
    193c:	0035c783          	lbu	a5,3(a1)
    1940:	0ff00713          	li	a4,255
    1944:	02000693          	li	a3,32
    1948:	00f500a3          	sb	a5,1(a0)
    194c:	0055c783          	lbu	a5,5(a1)
    1950:	00f50123          	sb	a5,2(a0)
    1954:	0075c783          	lbu	a5,7(a1)
    1958:	00f501a3          	sb	a5,3(a0)
    195c:	0095c783          	lbu	a5,9(a1)
    1960:	00f50223          	sb	a5,4(a0)
    1964:	00e5c783          	lbu	a5,14(a1)
    1968:	00f502a3          	sb	a5,5(a0)
    196c:	0105c783          	lbu	a5,16(a1)
    1970:	00f50323          	sb	a5,6(a0)
    1974:	0125c783          	lbu	a5,18(a1)
    1978:	00f503a3          	sb	a5,7(a0)
    197c:	0145c783          	lbu	a5,20(a1)
    1980:	00f50423          	sb	a5,8(a0)
    1984:	0165c783          	lbu	a5,22(a1)
    1988:	00f504a3          	sb	a5,9(a0)
    198c:	0185c783          	lbu	a5,24(a1)
    1990:	00f50523          	sb	a5,10(a0)
    1994:	01c5c783          	lbu	a5,28(a1)
    1998:	00f505a3          	sb	a5,11(a0)
    199c:	01e5c783          	lbu	a5,30(a1)
    19a0:	00f50623          	sb	a5,12(a0)
    19a4:	00d00793          	li	a5,13
    19a8:	00054603          	lbu	a2,0(a0)
    19ac:	00e61463          	bne	a2,a4,19b4 <fatfs_lfn_cache_entry+0xb8>
    19b0:	00d50023          	sb	a3,0(a0)
    19b4:	fff78793          	addi	a5,a5,-1
    19b8:	0ff7f793          	zext.b	a5,a5
    19bc:	00150513          	addi	a0,a0,1
    19c0:	fe0794e3          	bnez	a5,19a8 <fatfs_lfn_cache_entry+0xac>
    19c4:	00008067          	ret

000019c8 <fatfs_lfn_cache_get>:
    19c8:	10554703          	lbu	a4,261(a0)
    19cc:	01400793          	li	a5,20
    19d0:	00f71663          	bne	a4,a5,19dc <fatfs_lfn_cache_get+0x14>
    19d4:	10050223          	sb	zero,260(a0)
    19d8:	00008067          	ret
    19dc:	02070063          	beqz	a4,19fc <fatfs_lfn_cache_get+0x34>
    19e0:	00171793          	slli	a5,a4,0x1
    19e4:	00e787b3          	add	a5,a5,a4
    19e8:	00279793          	slli	a5,a5,0x2
    19ec:	00e787b3          	add	a5,a5,a4
    19f0:	00f507b3          	add	a5,a0,a5
    19f4:	00078023          	sb	zero,0(a5)
    19f8:	00008067          	ret
    19fc:	00050023          	sb	zero,0(a0)
    1a00:	00008067          	ret

00001a04 <fatfs_entry_lfn_text>:
    1a04:	00b54503          	lbu	a0,11(a0)
    1a08:	00f57513          	andi	a0,a0,15
    1a0c:	ff150513          	addi	a0,a0,-15
    1a10:	00153513          	seqz	a0,a0
    1a14:	00008067          	ret

00001a18 <fatfs_entry_lfn_invalid>:
    1a18:	00054703          	lbu	a4,0(a0)
    1a1c:	00050793          	mv	a5,a0
    1a20:	02070463          	beqz	a4,1a48 <fatfs_entry_lfn_invalid+0x30>
    1a24:	0e500693          	li	a3,229
    1a28:	00100513          	li	a0,1
    1a2c:	02d70063          	beq	a4,a3,1a4c <fatfs_entry_lfn_invalid+0x34>
    1a30:	00b7c783          	lbu	a5,11(a5)
    1a34:	00800713          	li	a4,8
    1a38:	00e78a63          	beq	a5,a4,1a4c <fatfs_entry_lfn_invalid+0x34>
    1a3c:	0067f793          	andi	a5,a5,6
    1a40:	00f03533          	snez	a0,a5
    1a44:	00008067          	ret
    1a48:	00100513          	li	a0,1
    1a4c:	00008067          	ret

00001a50 <fatfs_entry_lfn_exists>:
    1a50:	00b5c783          	lbu	a5,11(a1)
    1a54:	00f00693          	li	a3,15
    1a58:	00050713          	mv	a4,a0
    1a5c:	02d78a63          	beq	a5,a3,1a90 <fatfs_entry_lfn_exists+0x40>
    1a60:	0005c683          	lbu	a3,0(a1)
    1a64:	00000513          	li	a0,0
    1a68:	02068663          	beqz	a3,1a94 <fatfs_entry_lfn_exists+0x44>
    1a6c:	0e500613          	li	a2,229
    1a70:	02c68263          	beq	a3,a2,1a94 <fatfs_entry_lfn_exists+0x44>
    1a74:	00800693          	li	a3,8
    1a78:	00d78e63          	beq	a5,a3,1a94 <fatfs_entry_lfn_exists+0x44>
    1a7c:	0067f793          	andi	a5,a5,6
    1a80:	00079a63          	bnez	a5,1a94 <fatfs_entry_lfn_exists+0x44>
    1a84:	10574503          	lbu	a0,261(a4)
    1a88:	00a03533          	snez	a0,a0
    1a8c:	00008067          	ret
    1a90:	00000513          	li	a0,0
    1a94:	00008067          	ret

00001a98 <fatfs_entry_sfn_only>:
    1a98:	00b54783          	lbu	a5,11(a0)
    1a9c:	00f00713          	li	a4,15
    1aa0:	02e78663          	beq	a5,a4,1acc <fatfs_entry_sfn_only+0x34>
    1aa4:	00054703          	lbu	a4,0(a0)
    1aa8:	00000513          	li	a0,0
    1aac:	02070263          	beqz	a4,1ad0 <fatfs_entry_sfn_only+0x38>
    1ab0:	0e500693          	li	a3,229
    1ab4:	00d70e63          	beq	a4,a3,1ad0 <fatfs_entry_sfn_only+0x38>
    1ab8:	00800713          	li	a4,8
    1abc:	00e78a63          	beq	a5,a4,1ad0 <fatfs_entry_sfn_only+0x38>
    1ac0:	0067f793          	andi	a5,a5,6
    1ac4:	0017b513          	seqz	a0,a5
    1ac8:	00008067          	ret
    1acc:	00000513          	li	a0,0
    1ad0:	00008067          	ret

00001ad4 <fatfs_entry_is_dir>:
    1ad4:	00b54503          	lbu	a0,11(a0)
    1ad8:	00455513          	srli	a0,a0,0x4
    1adc:	00157513          	andi	a0,a0,1
    1ae0:	00008067          	ret

00001ae4 <fatfs_entry_is_file>:
    1ae4:	00b54503          	lbu	a0,11(a0)
    1ae8:	00555513          	srli	a0,a0,0x5
    1aec:	00157513          	andi	a0,a0,1
    1af0:	00008067          	ret

00001af4 <fatfs_lfn_entries_required>:
    1af4:	ff010113          	addi	sp,sp,-16
    1af8:	00112623          	sw	ra,12(sp)
    1afc:	fffff097          	auipc	ra,0xfffff
    1b00:	c2c080e7          	jalr	-980(ra) # 728 <strlen>
    1b04:	00050a63          	beqz	a0,1b18 <fatfs_lfn_entries_required+0x24>
    1b08:	00d00593          	li	a1,13
    1b0c:	00c50513          	addi	a0,a0,12
    1b10:	fffff097          	auipc	ra,0xfffff
    1b14:	afc080e7          	jalr	-1284(ra) # 60c <__divsi3>
    1b18:	00c12083          	lw	ra,12(sp)
    1b1c:	01010113          	addi	sp,sp,16
    1b20:	00008067          	ret

00001b24 <fatfs_filename_to_lfn>:
    1b24:	fa010113          	addi	sp,sp,-96
    1b28:	04912a23          	sw	s1,84(sp)
    1b2c:	00058493          	mv	s1,a1
    1b30:	000065b7          	lui	a1,0x6
    1b34:	c8c58593          	addi	a1,a1,-884 # 5c8c <font+0x1e0>
    1b38:	05212823          	sw	s2,80(sp)
    1b3c:	05312623          	sw	s3,76(sp)
    1b40:	00060913          	mv	s2,a2
    1b44:	00050993          	mv	s3,a0
    1b48:	03400613          	li	a2,52
    1b4c:	00c10513          	addi	a0,sp,12
    1b50:	04112e23          	sw	ra,92(sp)
    1b54:	04812c23          	sw	s0,88(sp)
    1b58:	05412423          	sw	s4,72(sp)
    1b5c:	05512223          	sw	s5,68(sp)
    1b60:	05612023          	sw	s6,64(sp)
    1b64:	00068b13          	mv	s6,a3
    1b68:	fffff097          	auipc	ra,0xfffff
    1b6c:	b9c080e7          	jalr	-1124(ra) # 704 <memcpy>
    1b70:	00098513          	mv	a0,s3
    1b74:	fffff097          	auipc	ra,0xfffff
    1b78:	bb4080e7          	jalr	-1100(ra) # 728 <strlen>
    1b7c:	00050a93          	mv	s5,a0
    1b80:	00098513          	mv	a0,s3
    1b84:	00000097          	auipc	ra,0x0
    1b88:	f70080e7          	jalr	-144(ra) # 1af4 <fatfs_lfn_entries_required>
    1b8c:	00191793          	slli	a5,s2,0x1
    1b90:	012787b3          	add	a5,a5,s2
    1b94:	00279793          	slli	a5,a5,0x2
    1b98:	00050a13          	mv	s4,a0
    1b9c:	02000613          	li	a2,32
    1ba0:	00000593          	li	a1,0
    1ba4:	00048513          	mv	a0,s1
    1ba8:	01278433          	add	s0,a5,s2
    1bac:	fffff097          	auipc	ra,0xfffff
    1bb0:	b3c080e7          	jalr	-1220(ra) # 6e8 <memset>
    1bb4:	00190793          	addi	a5,s2,1
    1bb8:	fffa0a13          	addi	s4,s4,-1
    1bbc:	0ff7f793          	zext.b	a5,a5
    1bc0:	012a1463          	bne	s4,s2,1bc8 <fatfs_filename_to_lfn+0xa4>
    1bc4:	0407e793          	ori	a5,a5,64
    1bc8:	00f48023          	sb	a5,0(s1)
    1bcc:	00f00793          	li	a5,15
    1bd0:	00f485a3          	sb	a5,11(s1)
    1bd4:	016486a3          	sb	s6,13(s1)
    1bd8:	00c10713          	addi	a4,sp,12
    1bdc:	00040793          	mv	a5,s0
    1be0:	00d40593          	addi	a1,s0,13
    1be4:	fff00613          	li	a2,-1
    1be8:	00072683          	lw	a3,0(a4)
    1bec:	00d486b3          	add	a3,s1,a3
    1bf0:	0557d263          	bge	a5,s5,1c34 <fatfs_filename_to_lfn+0x110>
    1bf4:	00f98533          	add	a0,s3,a5
    1bf8:	00054503          	lbu	a0,0(a0)
    1bfc:	00a68023          	sb	a0,0(a3)
    1c00:	00178793          	addi	a5,a5,1
    1c04:	00470713          	addi	a4,a4,4
    1c08:	feb790e3          	bne	a5,a1,1be8 <fatfs_filename_to_lfn+0xc4>
    1c0c:	05c12083          	lw	ra,92(sp)
    1c10:	05812403          	lw	s0,88(sp)
    1c14:	05412483          	lw	s1,84(sp)
    1c18:	05012903          	lw	s2,80(sp)
    1c1c:	04c12983          	lw	s3,76(sp)
    1c20:	04812a03          	lw	s4,72(sp)
    1c24:	04412a83          	lw	s5,68(sp)
    1c28:	04012b03          	lw	s6,64(sp)
    1c2c:	06010113          	addi	sp,sp,96
    1c30:	00008067          	ret
    1c34:	00fa9663          	bne	s5,a5,1c40 <fatfs_filename_to_lfn+0x11c>
    1c38:	00068023          	sb	zero,0(a3)
    1c3c:	fc5ff06f          	j	1c00 <fatfs_filename_to_lfn+0xdc>
    1c40:	00c68023          	sb	a2,0(a3)
    1c44:	00c680a3          	sb	a2,1(a3)
    1c48:	fb9ff06f          	j	1c00 <fatfs_filename_to_lfn+0xdc>

00001c4c <fatfs_sfn_create_entry>:
    1c4c:	00000793          	li	a5,0
    1c50:	00b00813          	li	a6,11
    1c54:	00f508b3          	add	a7,a0,a5
    1c58:	0008c303          	lbu	t1,0(a7)
    1c5c:	00f688b3          	add	a7,a3,a5
    1c60:	00178793          	addi	a5,a5,1
    1c64:	00688023          	sb	t1,0(a7)
    1c68:	ff0796e3          	bne	a5,a6,1c54 <fatfs_sfn_create_entry+0x8>
    1c6c:	02000793          	li	a5,32
    1c70:	000686a3          	sb	zero,13(a3)
    1c74:	00068723          	sb	zero,14(a3)
    1c78:	000687a3          	sb	zero,15(a3)
    1c7c:	000688a3          	sb	zero,17(a3)
    1c80:	00f68823          	sb	a5,16(a3)
    1c84:	000689a3          	sb	zero,19(a3)
    1c88:	00f68923          	sb	a5,18(a3)
    1c8c:	00068b23          	sb	zero,22(a3)
    1c90:	00068ba3          	sb	zero,23(a3)
    1c94:	00068ca3          	sb	zero,25(a3)
    1c98:	00f68c23          	sb	a5,24(a3)
    1c9c:	00070463          	beqz	a4,1ca4 <fatfs_sfn_create_entry+0x58>
    1ca0:	01000793          	li	a5,16
    1ca4:	00f685a3          	sb	a5,11(a3)
    1ca8:	01065793          	srli	a5,a2,0x10
    1cac:	00f68a23          	sb	a5,20(a3)
    1cb0:	0087d793          	srli	a5,a5,0x8
    1cb4:	00f68aa3          	sb	a5,21(a3)
    1cb8:	01061793          	slli	a5,a2,0x10
    1cbc:	0107d793          	srli	a5,a5,0x10
    1cc0:	0087d793          	srli	a5,a5,0x8
    1cc4:	00f68da3          	sb	a5,27(a3)
    1cc8:	0085d793          	srli	a5,a1,0x8
    1ccc:	00b68e23          	sb	a1,28(a3)
    1cd0:	00f68ea3          	sb	a5,29(a3)
    1cd4:	0105d793          	srli	a5,a1,0x10
    1cd8:	0185d593          	srli	a1,a1,0x18
    1cdc:	00068623          	sb	zero,12(a3)
    1ce0:	00c68d23          	sb	a2,26(a3)
    1ce4:	00f68f23          	sb	a5,30(a3)
    1ce8:	00b68fa3          	sb	a1,31(a3)
    1cec:	00008067          	ret

00001cf0 <fatfs_lfn_create_sfn>:
    1cf0:	0005c703          	lbu	a4,0(a1)
    1cf4:	02e00793          	li	a5,46
    1cf8:	16f70463          	beq	a4,a5,1e60 <fatfs_lfn_create_sfn+0x170>
    1cfc:	fe010113          	addi	sp,sp,-32
    1d00:	00912a23          	sw	s1,20(sp)
    1d04:	00050493          	mv	s1,a0
    1d08:	00058513          	mv	a0,a1
    1d0c:	00112e23          	sw	ra,28(sp)
    1d10:	00812c23          	sw	s0,24(sp)
    1d14:	01212823          	sw	s2,16(sp)
    1d18:	00058413          	mv	s0,a1
    1d1c:	fffff097          	auipc	ra,0xfffff
    1d20:	a0c080e7          	jalr	-1524(ra) # 728 <strlen>
    1d24:	00b00613          	li	a2,11
    1d28:	02000593          	li	a1,32
    1d2c:	00050913          	mv	s2,a0
    1d30:	00048513          	mv	a0,s1
    1d34:	fffff097          	auipc	ra,0xfffff
    1d38:	9b4080e7          	jalr	-1612(ra) # 6e8 <memset>
    1d3c:	00300613          	li	a2,3
    1d40:	02000593          	li	a1,32
    1d44:	00c10513          	addi	a0,sp,12
    1d48:	fffff097          	auipc	ra,0xfffff
    1d4c:	9a0080e7          	jalr	-1632(ra) # 6e8 <memset>
    1d50:	fff00713          	li	a4,-1
    1d54:	00000793          	li	a5,0
    1d58:	02e00693          	li	a3,46
    1d5c:	0d27c063          	blt	a5,s2,1e1c <fatfs_lfn_create_sfn+0x12c>
    1d60:	fff00793          	li	a5,-1
    1d64:	0ef70663          	beq	a4,a5,1e50 <fatfs_lfn_create_sfn+0x160>
    1d68:	00170793          	addi	a5,a4,1
    1d6c:	00c10693          	addi	a3,sp,12
    1d70:	00470613          	addi	a2,a4,4
    1d74:	0cf61063          	bne	a2,a5,1e34 <fatfs_lfn_create_sfn+0x144>
    1d78:	00000613          	li	a2,0
    1d7c:	00000693          	li	a3,0
    1d80:	02000813          	li	a6,32
    1d84:	02e00893          	li	a7,46
    1d88:	01900313          	li	t1,25
    1d8c:	00800e13          	li	t3,8
    1d90:	02e6da63          	bge	a3,a4,1dc4 <fatfs_lfn_create_sfn+0xd4>
    1d94:	00d407b3          	add	a5,s0,a3
    1d98:	0007c783          	lbu	a5,0(a5)
    1d9c:	03078263          	beq	a5,a6,1dc0 <fatfs_lfn_create_sfn+0xd0>
    1da0:	03178063          	beq	a5,a7,1dc0 <fatfs_lfn_create_sfn+0xd0>
    1da4:	f9f78593          	addi	a1,a5,-97
    1da8:	0ff5f593          	zext.b	a1,a1
    1dac:	00c48533          	add	a0,s1,a2
    1db0:	00160613          	addi	a2,a2,1
    1db4:	00b36463          	bltu	t1,a1,1dbc <fatfs_lfn_create_sfn+0xcc>
    1db8:	fe078793          	addi	a5,a5,-32
    1dbc:	00f50023          	sb	a5,0(a0)
    1dc0:	09c61c63          	bne	a2,t3,1e58 <fatfs_lfn_create_sfn+0x168>
    1dc4:	00c10793          	addi	a5,sp,12
    1dc8:	00800693          	li	a3,8
    1dcc:	01900513          	li	a0,25
    1dd0:	00b00593          	li	a1,11
    1dd4:	0007c703          	lbu	a4,0(a5)
    1dd8:	f9f70613          	addi	a2,a4,-97
    1ddc:	0ff67613          	zext.b	a2,a2
    1de0:	00c56663          	bltu	a0,a2,1dec <fatfs_lfn_create_sfn+0xfc>
    1de4:	fe070713          	addi	a4,a4,-32
    1de8:	0ff77713          	zext.b	a4,a4
    1dec:	00d48633          	add	a2,s1,a3
    1df0:	00e60023          	sb	a4,0(a2)
    1df4:	00168693          	addi	a3,a3,1
    1df8:	00178793          	addi	a5,a5,1
    1dfc:	fcb69ce3          	bne	a3,a1,1dd4 <fatfs_lfn_create_sfn+0xe4>
    1e00:	01c12083          	lw	ra,28(sp)
    1e04:	01812403          	lw	s0,24(sp)
    1e08:	01412483          	lw	s1,20(sp)
    1e0c:	01012903          	lw	s2,16(sp)
    1e10:	00100513          	li	a0,1
    1e14:	02010113          	addi	sp,sp,32
    1e18:	00008067          	ret
    1e1c:	00f40633          	add	a2,s0,a5
    1e20:	00064603          	lbu	a2,0(a2)
    1e24:	00d61463          	bne	a2,a3,1e2c <fatfs_lfn_create_sfn+0x13c>
    1e28:	00078713          	mv	a4,a5
    1e2c:	00178793          	addi	a5,a5,1
    1e30:	f2dff06f          	j	1d5c <fatfs_lfn_create_sfn+0x6c>
    1e34:	0127d863          	bge	a5,s2,1e44 <fatfs_lfn_create_sfn+0x154>
    1e38:	00f405b3          	add	a1,s0,a5
    1e3c:	0005c583          	lbu	a1,0(a1)
    1e40:	00b68023          	sb	a1,0(a3)
    1e44:	00178793          	addi	a5,a5,1
    1e48:	00168693          	addi	a3,a3,1
    1e4c:	f29ff06f          	j	1d74 <fatfs_lfn_create_sfn+0x84>
    1e50:	00090713          	mv	a4,s2
    1e54:	f25ff06f          	j	1d78 <fatfs_lfn_create_sfn+0x88>
    1e58:	00168693          	addi	a3,a3,1
    1e5c:	f35ff06f          	j	1d90 <fatfs_lfn_create_sfn+0xa0>
    1e60:	00000513          	li	a0,0
    1e64:	00008067          	ret

00001e68 <fatfs_lfn_generate_tail>:
    1e68:	000187b7          	lui	a5,0x18
    1e6c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1e70:	16c7e063          	bltu	a5,a2,1fd0 <fatfs_lfn_generate_tail+0x168>
    1e74:	fa010113          	addi	sp,sp,-96
    1e78:	04812c23          	sw	s0,88(sp)
    1e7c:	04912a23          	sw	s1,84(sp)
    1e80:	05412423          	sw	s4,72(sp)
    1e84:	00050493          	mv	s1,a0
    1e88:	00058a13          	mv	s4,a1
    1e8c:	00060413          	mv	s0,a2
    1e90:	00000593          	li	a1,0
    1e94:	00c00613          	li	a2,12
    1e98:	00410513          	addi	a0,sp,4
    1e9c:	04112e23          	sw	ra,92(sp)
    1ea0:	05212823          	sw	s2,80(sp)
    1ea4:	05512223          	sw	s5,68(sp)
    1ea8:	03712e23          	sw	s7,60(sp)
    1eac:	05312623          	sw	s3,76(sp)
    1eb0:	05612023          	sw	s6,64(sp)
    1eb4:	fffff097          	auipc	ra,0xfffff
    1eb8:	834080e7          	jalr	-1996(ra) # 6e8 <memset>
    1ebc:	000065b7          	lui	a1,0x6
    1ec0:	07e00793          	li	a5,126
    1ec4:	01100613          	li	a2,17
    1ec8:	cc058593          	addi	a1,a1,-832 # 5cc0 <font+0x214>
    1ecc:	01c10513          	addi	a0,sp,28
    1ed0:	01010913          	addi	s2,sp,16
    1ed4:	00f10223          	sb	a5,4(sp)
    1ed8:	00090a93          	mv	s5,s2
    1edc:	fffff097          	auipc	ra,0xfffff
    1ee0:	828080e7          	jalr	-2008(ra) # 704 <memcpy>
    1ee4:	00900b93          	li	s7,9
    1ee8:	00a00593          	li	a1,10
    1eec:	00040513          	mv	a0,s0
    1ef0:	ffffe097          	auipc	ra,0xffffe
    1ef4:	76c080e7          	jalr	1900(ra) # 65c <__umodsi3>
    1ef8:	03050793          	addi	a5,a0,48
    1efc:	00278533          	add	a0,a5,sp
    1f00:	fec54783          	lbu	a5,-20(a0)
    1f04:	00090993          	mv	s3,s2
    1f08:	00040513          	mv	a0,s0
    1f0c:	00a00593          	li	a1,10
    1f10:	00f90023          	sb	a5,0(s2)
    1f14:	00040b13          	mv	s6,s0
    1f18:	ffffe097          	auipc	ra,0xffffe
    1f1c:	6fc080e7          	jalr	1788(ra) # 614 <__udivsi3>
    1f20:	00190913          	addi	s2,s2,1
    1f24:	00050413          	mv	s0,a0
    1f28:	fd6be0e3          	bltu	s7,s6,1ee8 <fatfs_lfn_generate_tail+0x80>
    1f2c:	00090023          	sb	zero,0(s2)
    1f30:	00410713          	addi	a4,sp,4
    1f34:	00098793          	mv	a5,s3
    1f38:	0007c683          	lbu	a3,0(a5)
    1f3c:	fff78793          	addi	a5,a5,-1
    1f40:	00170713          	addi	a4,a4,1
    1f44:	00d70023          	sb	a3,0(a4)
    1f48:	ff57f8e3          	bgeu	a5,s5,1f38 <fatfs_lfn_generate_tail+0xd0>
    1f4c:	00100793          	li	a5,1
    1f50:	0159e663          	bltu	s3,s5,1f5c <fatfs_lfn_generate_tail+0xf4>
    1f54:	415787b3          	sub	a5,a5,s5
    1f58:	00f987b3          	add	a5,s3,a5
    1f5c:	03078793          	addi	a5,a5,48
    1f60:	002787b3          	add	a5,a5,sp
    1f64:	000a0593          	mv	a1,s4
    1f68:	fc078aa3          	sb	zero,-43(a5)
    1f6c:	00b00613          	li	a2,11
    1f70:	00048513          	mv	a0,s1
    1f74:	ffffe097          	auipc	ra,0xffffe
    1f78:	790080e7          	jalr	1936(ra) # 704 <memcpy>
    1f7c:	00410513          	addi	a0,sp,4
    1f80:	ffffe097          	auipc	ra,0xffffe
    1f84:	7a8080e7          	jalr	1960(ra) # 728 <strlen>
    1f88:	40a484b3          	sub	s1,s1,a0
    1f8c:	00050613          	mv	a2,a0
    1f90:	00410593          	addi	a1,sp,4
    1f94:	00848513          	addi	a0,s1,8
    1f98:	ffffe097          	auipc	ra,0xffffe
    1f9c:	76c080e7          	jalr	1900(ra) # 704 <memcpy>
    1fa0:	05c12083          	lw	ra,92(sp)
    1fa4:	05812403          	lw	s0,88(sp)
    1fa8:	05412483          	lw	s1,84(sp)
    1fac:	05012903          	lw	s2,80(sp)
    1fb0:	04c12983          	lw	s3,76(sp)
    1fb4:	04812a03          	lw	s4,72(sp)
    1fb8:	04412a83          	lw	s5,68(sp)
    1fbc:	04012b03          	lw	s6,64(sp)
    1fc0:	03c12b83          	lw	s7,60(sp)
    1fc4:	00100513          	li	a0,1
    1fc8:	06010113          	addi	sp,sp,96
    1fcc:	00008067          	ret
    1fd0:	00000513          	li	a0,0
    1fd4:	00008067          	ret

00001fd8 <fatfs_total_path_levels>:
    1fd8:	00050793          	mv	a5,a0
    1fdc:	06050463          	beqz	a0,2044 <fatfs_total_path_levels+0x6c>
    1fe0:	00054703          	lbu	a4,0(a0)
    1fe4:	02f00693          	li	a3,47
    1fe8:	00d71863          	bne	a4,a3,1ff8 <fatfs_total_path_levels+0x20>
    1fec:	00150793          	addi	a5,a0,1
    1ff0:	00000513          	li	a0,0
    1ff4:	0400006f          	j	2034 <fatfs_total_path_levels+0x5c>
    1ff8:	00154683          	lbu	a3,1(a0)
    1ffc:	03a00713          	li	a4,58
    2000:	00e68a63          	beq	a3,a4,2014 <fatfs_total_path_levels+0x3c>
    2004:	00254683          	lbu	a3,2(a0)
    2008:	05c00713          	li	a4,92
    200c:	fff00513          	li	a0,-1
    2010:	02e69c63          	bne	a3,a4,2048 <fatfs_total_path_levels+0x70>
    2014:	00378793          	addi	a5,a5,3
    2018:	05c00713          	li	a4,92
    201c:	fd5ff06f          	j	1ff0 <fatfs_total_path_levels+0x18>
    2020:	00178793          	addi	a5,a5,1
    2024:	00e68663          	beq	a3,a4,2030 <fatfs_total_path_levels+0x58>
    2028:	0007c683          	lbu	a3,0(a5)
    202c:	fe069ae3          	bnez	a3,2020 <fatfs_total_path_levels+0x48>
    2030:	00150513          	addi	a0,a0,1
    2034:	0007c683          	lbu	a3,0(a5)
    2038:	fe0698e3          	bnez	a3,2028 <fatfs_total_path_levels+0x50>
    203c:	fff50513          	addi	a0,a0,-1
    2040:	00008067          	ret
    2044:	fff00513          	li	a0,-1
    2048:	00008067          	ret

0000204c <fatfs_get_substring>:
    204c:	0c050c63          	beqz	a0,2124 <fatfs_get_substring+0xd8>
    2050:	fe010113          	addi	sp,sp,-32
    2054:	00912a23          	sw	s1,20(sp)
    2058:	00112e23          	sw	ra,28(sp)
    205c:	00812c23          	sw	s0,24(sp)
    2060:	01212823          	sw	s2,16(sp)
    2064:	01312623          	sw	s3,12(sp)
    2068:	01412423          	sw	s4,8(sp)
    206c:	00050793          	mv	a5,a0
    2070:	00068493          	mv	s1,a3
    2074:	fff00513          	li	a0,-1
    2078:	06d05a63          	blez	a3,20ec <fatfs_get_substring+0xa0>
    207c:	0007c983          	lbu	s3,0(a5)
    2080:	02f00713          	li	a4,47
    2084:	00058a13          	mv	s4,a1
    2088:	00060913          	mv	s2,a2
    208c:	00178413          	addi	s0,a5,1
    2090:	02e98463          	beq	s3,a4,20b8 <fatfs_get_substring+0x6c>
    2094:	0017c683          	lbu	a3,1(a5)
    2098:	03a00713          	li	a4,58
    209c:	00e68a63          	beq	a3,a4,20b0 <fatfs_get_substring+0x64>
    20a0:	0027c683          	lbu	a3,2(a5)
    20a4:	05c00713          	li	a4,92
    20a8:	fff00513          	li	a0,-1
    20ac:	04e69063          	bne	a3,a4,20ec <fatfs_get_substring+0xa0>
    20b0:	00378413          	addi	s0,a5,3
    20b4:	05c00993          	li	s3,92
    20b8:	00040513          	mv	a0,s0
    20bc:	ffffe097          	auipc	ra,0xffffe
    20c0:	66c080e7          	jalr	1644(ra) # 728 <strlen>
    20c4:	00000713          	li	a4,0
    20c8:	00000693          	li	a3,0
    20cc:	00000793          	li	a5,0
    20d0:	fff48493          	addi	s1,s1,-1
    20d4:	00e905b3          	add	a1,s2,a4
    20d8:	02a7ca63          	blt	a5,a0,210c <fatfs_get_substring+0xc0>
    20dc:	00058023          	sb	zero,0(a1)
    20e0:	00094503          	lbu	a0,0(s2)
    20e4:	00153513          	seqz	a0,a0
    20e8:	40a00533          	neg	a0,a0
    20ec:	01c12083          	lw	ra,28(sp)
    20f0:	01812403          	lw	s0,24(sp)
    20f4:	01412483          	lw	s1,20(sp)
    20f8:	01012903          	lw	s2,16(sp)
    20fc:	00c12983          	lw	s3,12(sp)
    2100:	00812a03          	lw	s4,8(sp)
    2104:	02010113          	addi	sp,sp,32
    2108:	00008067          	ret
    210c:	00f40633          	add	a2,s0,a5
    2110:	00064603          	lbu	a2,0(a2)
    2114:	01361c63          	bne	a2,s3,212c <fatfs_get_substring+0xe0>
    2118:	00168693          	addi	a3,a3,1
    211c:	00178793          	addi	a5,a5,1
    2120:	fb5ff06f          	j	20d4 <fatfs_get_substring+0x88>
    2124:	fff00513          	li	a0,-1
    2128:	00008067          	ret
    212c:	ff4698e3          	bne	a3,s4,211c <fatfs_get_substring+0xd0>
    2130:	fe9756e3          	bge	a4,s1,211c <fatfs_get_substring+0xd0>
    2134:	00170713          	addi	a4,a4,1
    2138:	00c58023          	sb	a2,0(a1)
    213c:	fe1ff06f          	j	211c <fatfs_get_substring+0xd0>

00002140 <fatfs_split_path>:
    2140:	fd010113          	addi	sp,sp,-48
    2144:	02912223          	sw	s1,36(sp)
    2148:	03212023          	sw	s2,32(sp)
    214c:	01312e23          	sw	s3,28(sp)
    2150:	01412c23          	sw	s4,24(sp)
    2154:	02112623          	sw	ra,44(sp)
    2158:	00068a13          	mv	s4,a3
    215c:	02812423          	sw	s0,40(sp)
    2160:	00050913          	mv	s2,a0
    2164:	00058493          	mv	s1,a1
    2168:	00060993          	mv	s3,a2
    216c:	00e12623          	sw	a4,12(sp)
    2170:	00000097          	auipc	ra,0x0
    2174:	e68080e7          	jalr	-408(ra) # 1fd8 <fatfs_total_path_levels>
    2178:	fff00793          	li	a5,-1
    217c:	00c12683          	lw	a3,12(sp)
    2180:	02f51663          	bne	a0,a5,21ac <fatfs_split_path+0x6c>
    2184:	fff00413          	li	s0,-1
    2188:	02c12083          	lw	ra,44(sp)
    218c:	00040513          	mv	a0,s0
    2190:	02812403          	lw	s0,40(sp)
    2194:	02412483          	lw	s1,36(sp)
    2198:	02012903          	lw	s2,32(sp)
    219c:	01c12983          	lw	s3,28(sp)
    21a0:	01812a03          	lw	s4,24(sp)
    21a4:	03010113          	addi	sp,sp,48
    21a8:	00008067          	ret
    21ac:	00050413          	mv	s0,a0
    21b0:	00050593          	mv	a1,a0
    21b4:	000a0613          	mv	a2,s4
    21b8:	00090513          	mv	a0,s2
    21bc:	00000097          	auipc	ra,0x0
    21c0:	e90080e7          	jalr	-368(ra) # 204c <fatfs_get_substring>
    21c4:	fc0510e3          	bnez	a0,2184 <fatfs_split_path+0x44>
    21c8:	00041663          	bnez	s0,21d4 <fatfs_split_path+0x94>
    21cc:	00048023          	sb	zero,0(s1)
    21d0:	fb9ff06f          	j	2188 <fatfs_split_path+0x48>
    21d4:	00090513          	mv	a0,s2
    21d8:	ffffe097          	auipc	ra,0xffffe
    21dc:	550080e7          	jalr	1360(ra) # 728 <strlen>
    21e0:	00050413          	mv	s0,a0
    21e4:	000a0513          	mv	a0,s4
    21e8:	ffffe097          	auipc	ra,0xffffe
    21ec:	540080e7          	jalr	1344(ra) # 728 <strlen>
    21f0:	40a40433          	sub	s0,s0,a0
    21f4:	0089d463          	bge	s3,s0,21fc <fatfs_split_path+0xbc>
    21f8:	00098413          	mv	s0,s3
    21fc:	00040613          	mv	a2,s0
    2200:	00048513          	mv	a0,s1
    2204:	00090593          	mv	a1,s2
    2208:	008484b3          	add	s1,s1,s0
    220c:	ffffe097          	auipc	ra,0xffffe
    2210:	4f8080e7          	jalr	1272(ra) # 704 <memcpy>
    2214:	00000413          	li	s0,0
    2218:	fe048fa3          	sb	zero,-1(s1)
    221c:	f6dff06f          	j	2188 <fatfs_split_path+0x48>

00002220 <fatfs_compare_names>:
    2220:	fd010113          	addi	sp,sp,-48
    2224:	02112623          	sw	ra,44(sp)
    2228:	02812423          	sw	s0,40(sp)
    222c:	02912223          	sw	s1,36(sp)
    2230:	03212023          	sw	s2,32(sp)
    2234:	01312e23          	sw	s3,28(sp)
    2238:	00058913          	mv	s2,a1
    223c:	01412c23          	sw	s4,24(sp)
    2240:	01512a23          	sw	s5,20(sp)
    2244:	01612823          	sw	s6,16(sp)
    2248:	00050a13          	mv	s4,a0
    224c:	fffff097          	auipc	ra,0xfffff
    2250:	d1c080e7          	jalr	-740(ra) # f68 <FileString_GetExtension>
    2254:	00050493          	mv	s1,a0
    2258:	00090513          	mv	a0,s2
    225c:	fffff097          	auipc	ra,0xfffff
    2260:	d0c080e7          	jalr	-756(ra) # f68 <FileString_GetExtension>
    2264:	fff00793          	li	a5,-1
    2268:	00050413          	mv	s0,a0
    226c:	00000993          	li	s3,0
    2270:	0af49263          	bne	s1,a5,2314 <fatfs_compare_names+0xf4>
    2274:	0e951863          	bne	a0,s1,2364 <fatfs_compare_names+0x144>
    2278:	000a0513          	mv	a0,s4
    227c:	ffffe097          	auipc	ra,0xffffe
    2280:	4ac080e7          	jalr	1196(ra) # 728 <strlen>
    2284:	00050493          	mv	s1,a0
    2288:	00090513          	mv	a0,s2
    228c:	ffffe097          	auipc	ra,0xffffe
    2290:	49c080e7          	jalr	1180(ra) # 728 <strlen>
    2294:	00050413          	mv	s0,a0
    2298:	fff48793          	addi	a5,s1,-1
    229c:	00fa07b3          	add	a5,s4,a5
    22a0:	40978733          	sub	a4,a5,s1
    22a4:	02000613          	li	a2,32
    22a8:	00078693          	mv	a3,a5
    22ac:	00e78863          	beq	a5,a4,22bc <fatfs_compare_names+0x9c>
    22b0:	0007c583          	lbu	a1,0(a5)
    22b4:	fff78793          	addi	a5,a5,-1
    22b8:	04c58663          	beq	a1,a2,2304 <fatfs_compare_names+0xe4>
    22bc:	fff40793          	addi	a5,s0,-1
    22c0:	00f907b3          	add	a5,s2,a5
    22c4:	40878733          	sub	a4,a5,s0
    22c8:	02000613          	li	a2,32
    22cc:	00078693          	mv	a3,a5
    22d0:	00e78863          	beq	a5,a4,22e0 <fatfs_compare_names+0xc0>
    22d4:	0007c583          	lbu	a1,0(a5)
    22d8:	fff78793          	addi	a5,a5,-1
    22dc:	02c58863          	beq	a1,a2,230c <fatfs_compare_names+0xec>
    22e0:	00000993          	li	s3,0
    22e4:	08941063          	bne	s0,s1,2364 <fatfs_compare_names+0x144>
    22e8:	00040613          	mv	a2,s0
    22ec:	00090593          	mv	a1,s2
    22f0:	000a0513          	mv	a0,s4
    22f4:	fffff097          	auipc	ra,0xfffff
    22f8:	c04080e7          	jalr	-1020(ra) # ef8 <FileString_StrCmpNoCase>
    22fc:	00153993          	seqz	s3,a0
    2300:	0640006f          	j	2364 <fatfs_compare_names+0x144>
    2304:	414684b3          	sub	s1,a3,s4
    2308:	fa1ff06f          	j	22a8 <fatfs_compare_names+0x88>
    230c:	41268433          	sub	s0,a3,s2
    2310:	fbdff06f          	j	22cc <fatfs_compare_names+0xac>
    2314:	04f50863          	beq	a0,a5,2364 <fatfs_compare_names+0x144>
    2318:	00148a93          	addi	s5,s1,1
    231c:	015a0ab3          	add	s5,s4,s5
    2320:	00140b13          	addi	s6,s0,1
    2324:	000a8513          	mv	a0,s5
    2328:	ffffe097          	auipc	ra,0xffffe
    232c:	400080e7          	jalr	1024(ra) # 728 <strlen>
    2330:	01690b33          	add	s6,s2,s6
    2334:	00a12623          	sw	a0,12(sp)
    2338:	000b0513          	mv	a0,s6
    233c:	ffffe097          	auipc	ra,0xffffe
    2340:	3ec080e7          	jalr	1004(ra) # 728 <strlen>
    2344:	00c12603          	lw	a2,12(sp)
    2348:	00000993          	li	s3,0
    234c:	00a61c63          	bne	a2,a0,2364 <fatfs_compare_names+0x144>
    2350:	000b0593          	mv	a1,s6
    2354:	000a8513          	mv	a0,s5
    2358:	fffff097          	auipc	ra,0xfffff
    235c:	ba0080e7          	jalr	-1120(ra) # ef8 <FileString_StrCmpNoCase>
    2360:	f2050ce3          	beqz	a0,2298 <fatfs_compare_names+0x78>
    2364:	02c12083          	lw	ra,44(sp)
    2368:	02812403          	lw	s0,40(sp)
    236c:	02412483          	lw	s1,36(sp)
    2370:	02012903          	lw	s2,32(sp)
    2374:	01812a03          	lw	s4,24(sp)
    2378:	01412a83          	lw	s5,20(sp)
    237c:	01012b03          	lw	s6,16(sp)
    2380:	00098513          	mv	a0,s3
    2384:	01c12983          	lw	s3,28(sp)
    2388:	03010113          	addi	sp,sp,48
    238c:	00008067          	ret

00002390 <_check_file_open>:
    2390:	fe010113          	addi	sp,sp,-32
    2394:	000067b7          	lui	a5,0x6
    2398:	00812c23          	sw	s0,24(sp)
    239c:	e647a403          	lw	s0,-412(a5) # 5e64 <_open_file_list>
    23a0:	00912a23          	sw	s1,20(sp)
    23a4:	01212823          	sw	s2,16(sp)
    23a8:	01312623          	sw	s3,12(sp)
    23ac:	00112e23          	sw	ra,28(sp)
    23b0:	00050493          	mv	s1,a0
    23b4:	01450913          	addi	s2,a0,20
    23b8:	11850993          	addi	s3,a0,280
    23bc:	02041263          	bnez	s0,23e0 <_check_file_open+0x50>
    23c0:	00000513          	li	a0,0
    23c4:	01c12083          	lw	ra,28(sp)
    23c8:	01812403          	lw	s0,24(sp)
    23cc:	01412483          	lw	s1,20(sp)
    23d0:	01012903          	lw	s2,16(sp)
    23d4:	00c12983          	lw	s3,12(sp)
    23d8:	02010113          	addi	sp,sp,32
    23dc:	00008067          	ret
    23e0:	bc440793          	addi	a5,s0,-1084
    23e4:	02f48663          	beq	s1,a5,2410 <_check_file_open+0x80>
    23e8:	00090593          	mv	a1,s2
    23ec:	bd840513          	addi	a0,s0,-1064
    23f0:	00000097          	auipc	ra,0x0
    23f4:	e30080e7          	jalr	-464(ra) # 2220 <fatfs_compare_names>
    23f8:	00050c63          	beqz	a0,2410 <_check_file_open+0x80>
    23fc:	00098593          	mv	a1,s3
    2400:	cdc40513          	addi	a0,s0,-804
    2404:	00000097          	auipc	ra,0x0
    2408:	e1c080e7          	jalr	-484(ra) # 2220 <fatfs_compare_names>
    240c:	00051663          	bnez	a0,2418 <_check_file_open+0x88>
    2410:	00442403          	lw	s0,4(s0)
    2414:	fa9ff06f          	j	23bc <_check_file_open+0x2c>
    2418:	00100513          	li	a0,1
    241c:	fa9ff06f          	j	23c4 <_check_file_open+0x34>

00002420 <fatfs_string_ends_with_slash>:
    2420:	00050a63          	beqz	a0,2434 <fatfs_string_ends_with_slash+0x14>
    2424:	05c00713          	li	a4,92
    2428:	02f00693          	li	a3,47
    242c:	00054783          	lbu	a5,0(a0)
    2430:	00079663          	bnez	a5,243c <fatfs_string_ends_with_slash+0x1c>
    2434:	00000513          	li	a0,0
    2438:	00008067          	ret
    243c:	00154603          	lbu	a2,1(a0)
    2440:	00061663          	bnez	a2,244c <fatfs_string_ends_with_slash+0x2c>
    2444:	00e78863          	beq	a5,a4,2454 <fatfs_string_ends_with_slash+0x34>
    2448:	00d78663          	beq	a5,a3,2454 <fatfs_string_ends_with_slash+0x34>
    244c:	00150513          	addi	a0,a0,1
    2450:	fddff06f          	j	242c <fatfs_string_ends_with_slash+0xc>
    2454:	00100513          	li	a0,1
    2458:	00008067          	ret

0000245c <fatfs_get_sfn_display_name>:
    245c:	00000713          	li	a4,0
    2460:	00c00613          	li	a2,12
    2464:	02000813          	li	a6,32
    2468:	01900893          	li	a7,25
    246c:	0005c783          	lbu	a5,0(a1)
    2470:	00078463          	beqz	a5,2478 <fatfs_get_sfn_display_name+0x1c>
    2474:	00c71863          	bne	a4,a2,2484 <fatfs_get_sfn_display_name+0x28>
    2478:	00050023          	sb	zero,0(a0)
    247c:	00100513          	li	a0,1
    2480:	00008067          	ret
    2484:	00158593          	addi	a1,a1,1
    2488:	ff0782e3          	beq	a5,a6,246c <fatfs_get_sfn_display_name+0x10>
    248c:	fbf78693          	addi	a3,a5,-65
    2490:	0ff6f693          	zext.b	a3,a3
    2494:	00d8e663          	bltu	a7,a3,24a0 <fatfs_get_sfn_display_name+0x44>
    2498:	02078793          	addi	a5,a5,32
    249c:	0ff7f793          	zext.b	a5,a5
    24a0:	00f50023          	sb	a5,0(a0)
    24a4:	00170713          	addi	a4,a4,1
    24a8:	00150513          	addi	a0,a0,1
    24ac:	fc1ff06f          	j	246c <fatfs_get_sfn_display_name+0x10>

000024b0 <fatfs_get_extension>:
    24b0:	ff010113          	addi	sp,sp,-16
    24b4:	00812423          	sw	s0,8(sp)
    24b8:	00912223          	sw	s1,4(sp)
    24bc:	01212023          	sw	s2,0(sp)
    24c0:	00112623          	sw	ra,12(sp)
    24c4:	00050913          	mv	s2,a0
    24c8:	00058493          	mv	s1,a1
    24cc:	00060413          	mv	s0,a2
    24d0:	fffff097          	auipc	ra,0xfffff
    24d4:	a98080e7          	jalr	-1384(ra) # f68 <FileString_GetExtension>
    24d8:	06a05c63          	blez	a0,2550 <fatfs_get_extension+0xa0>
    24dc:	06048a63          	beqz	s1,2550 <fatfs_get_extension+0xa0>
    24e0:	02040863          	beqz	s0,2510 <fatfs_get_extension+0x60>
    24e4:	00150513          	addi	a0,a0,1
    24e8:	00000713          	li	a4,0
    24ec:	fff40413          	addi	s0,s0,-1
    24f0:	01900593          	li	a1,25
    24f4:	00e507b3          	add	a5,a0,a4
    24f8:	00f907b3          	add	a5,s2,a5
    24fc:	0007c783          	lbu	a5,0(a5)
    2500:	00e48633          	add	a2,s1,a4
    2504:	02079463          	bnez	a5,252c <fatfs_get_extension+0x7c>
    2508:	00060023          	sb	zero,0(a2)
    250c:	00100413          	li	s0,1
    2510:	00c12083          	lw	ra,12(sp)
    2514:	00040513          	mv	a0,s0
    2518:	00812403          	lw	s0,8(sp)
    251c:	00412483          	lw	s1,4(sp)
    2520:	00012903          	lw	s2,0(sp)
    2524:	01010113          	addi	sp,sp,16
    2528:	00008067          	ret
    252c:	fc875ee3          	bge	a4,s0,2508 <fatfs_get_extension+0x58>
    2530:	fbf78693          	addi	a3,a5,-65
    2534:	0ff6f693          	zext.b	a3,a3
    2538:	00d5e663          	bltu	a1,a3,2544 <fatfs_get_extension+0x94>
    253c:	02078793          	addi	a5,a5,32
    2540:	0ff7f793          	zext.b	a5,a5
    2544:	00f60023          	sb	a5,0(a2)
    2548:	00170713          	addi	a4,a4,1
    254c:	fa9ff06f          	j	24f4 <fatfs_get_extension+0x44>
    2550:	00000413          	li	s0,0
    2554:	fbdff06f          	j	2510 <fatfs_get_extension+0x60>

00002558 <fatfs_create_path_string>:
    2558:	00050893          	mv	a7,a0
    255c:	00000513          	li	a0,0
    2560:	0a088263          	beqz	a7,2604 <fatfs_create_path_string+0xac>
    2564:	0a058063          	beqz	a1,2604 <fatfs_create_path_string+0xac>
    2568:	08060e63          	beqz	a2,2604 <fatfs_create_path_string+0xac>
    256c:	00d04463          	bgtz	a3,2574 <fatfs_create_path_string+0x1c>
    2570:	00008067          	ret
    2574:	02f00313          	li	t1,47
    2578:	00000513          	li	a0,0
    257c:	00000713          	li	a4,0
    2580:	ffe68e13          	addi	t3,a3,-2
    2584:	05c00e93          	li	t4,92
    2588:	01c0006f          	j	25a4 <fatfs_create_path_string+0x4c>
    258c:	03c75463          	bge	a4,t3,25b4 <fatfs_create_path_string+0x5c>
    2590:	01d81463          	bne	a6,t4,2598 <fatfs_create_path_string+0x40>
    2594:	05c00313          	li	t1,92
    2598:	01078023          	sb	a6,0(a5)
    259c:	00170713          	addi	a4,a4,1
    25a0:	00080513          	mv	a0,a6
    25a4:	00e88833          	add	a6,a7,a4
    25a8:	00084803          	lbu	a6,0(a6)
    25ac:	00e607b3          	add	a5,a2,a4
    25b0:	fc081ee3          	bnez	a6,258c <fatfs_create_path_string+0x34>
    25b4:	05c00613          	li	a2,92
    25b8:	02c51063          	bne	a0,a2,25d8 <fatfs_create_path_string+0x80>
    25bc:	fff68693          	addi	a3,a3,-1
    25c0:	40b70733          	sub	a4,a4,a1
    25c4:	0005c603          	lbu	a2,0(a1)
    25c8:	02061263          	bnez	a2,25ec <fatfs_create_path_string+0x94>
    25cc:	00078023          	sb	zero,0(a5)
    25d0:	00100513          	li	a0,1
    25d4:	00008067          	ret
    25d8:	02f00613          	li	a2,47
    25dc:	fec500e3          	beq	a0,a2,25bc <fatfs_create_path_string+0x64>
    25e0:	00678023          	sb	t1,0(a5)
    25e4:	00178793          	addi	a5,a5,1
    25e8:	fd5ff06f          	j	25bc <fatfs_create_path_string+0x64>
    25ec:	00e58533          	add	a0,a1,a4
    25f0:	fcd55ee3          	bge	a0,a3,25cc <fatfs_create_path_string+0x74>
    25f4:	00178793          	addi	a5,a5,1
    25f8:	00158593          	addi	a1,a1,1
    25fc:	fec78fa3          	sb	a2,-1(a5)
    2600:	fc5ff06f          	j	25c4 <fatfs_create_path_string+0x6c>
    2604:	00008067          	ret

00002608 <fatfs_fat_init>:
    2608:	ff010113          	addi	sp,sp,-16
    260c:	00812423          	sw	s0,8(sp)
    2610:	00912223          	sw	s1,4(sp)
    2614:	00112623          	sw	ra,12(sp)
    2618:	fff00793          	li	a5,-1
    261c:	25850493          	addi	s1,a0,600
    2620:	00050413          	mv	s0,a0
    2624:	44f52c23          	sw	a5,1112(a0)
    2628:	24052a23          	sw	zero,596(a0)
    262c:	44052e23          	sw	zero,1116(a0)
    2630:	20000613          	li	a2,512
    2634:	00048513          	mv	a0,s1
    2638:	00000593          	li	a1,0
    263c:	ffffe097          	auipc	ra,0xffffe
    2640:	0ac080e7          	jalr	172(ra) # 6e8 <memset>
    2644:	25442783          	lw	a5,596(s0)
    2648:	00c12083          	lw	ra,12(sp)
    264c:	24942a23          	sw	s1,596(s0)
    2650:	46042023          	sw	zero,1120(s0)
    2654:	46f42223          	sw	a5,1124(s0)
    2658:	00812403          	lw	s0,8(sp)
    265c:	00412483          	lw	s1,4(sp)
    2660:	01010113          	addi	sp,sp,16
    2664:	00008067          	ret

00002668 <fatfs_init>:
    2668:	fc010113          	addi	sp,sp,-64
    266c:	02812c23          	sw	s0,56(sp)
    2670:	02112e23          	sw	ra,60(sp)
    2674:	02912a23          	sw	s1,52(sp)
    2678:	03212823          	sw	s2,48(sp)
    267c:	03312623          	sw	s3,44(sp)
    2680:	03412423          	sw	s4,40(sp)
    2684:	03512223          	sw	s5,36(sp)
    2688:	03612023          	sw	s6,32(sp)
    268c:	01712e23          	sw	s7,28(sp)
    2690:	fff00793          	li	a5,-1
    2694:	24f52223          	sw	a5,580(a0)
    2698:	24052423          	sw	zero,584(a0)
    269c:	02052223          	sw	zero,36(a0)
    26a0:	00050413          	mv	s0,a0
    26a4:	00000097          	auipc	ra,0x0
    26a8:	f64080e7          	jalr	-156(ra) # 2608 <fatfs_fat_init>
    26ac:	03442783          	lw	a5,52(s0)
    26b0:	02079a63          	bnez	a5,26e4 <fatfs_init+0x7c>
    26b4:	fff00513          	li	a0,-1
    26b8:	03c12083          	lw	ra,60(sp)
    26bc:	03812403          	lw	s0,56(sp)
    26c0:	03412483          	lw	s1,52(sp)
    26c4:	03012903          	lw	s2,48(sp)
    26c8:	02c12983          	lw	s3,44(sp)
    26cc:	02812a03          	lw	s4,40(sp)
    26d0:	02412a83          	lw	s5,36(sp)
    26d4:	02012b03          	lw	s6,32(sp)
    26d8:	01c12b83          	lw	s7,28(sp)
    26dc:	04010113          	addi	sp,sp,64
    26e0:	00008067          	ret
    26e4:	04440593          	addi	a1,s0,68
    26e8:	00100613          	li	a2,1
    26ec:	00000513          	li	a0,0
    26f0:	00b12623          	sw	a1,12(sp)
    26f4:	000780e7          	jalr	a5
    26f8:	fa050ee3          	beqz	a0,26b4 <fatfs_init+0x4c>
    26fc:	24042703          	lw	a4,576(s0)
    2700:	ffff07b7          	lui	a5,0xffff0
    2704:	00c12583          	lw	a1,12(sp)
    2708:	00e7f7b3          	and	a5,a5,a4
    270c:	aa550737          	lui	a4,0xaa550
    2710:	00e78663          	beq	a5,a4,271c <fatfs_init+0xb4>
    2714:	ffd00513          	li	a0,-3
    2718:	fa1ff06f          	j	26b8 <fatfs_init+0x50>
    271c:	24344783          	lbu	a5,579(s0)
    2720:	24244703          	lbu	a4,578(s0)
    2724:	ffc00513          	li	a0,-4
    2728:	00879793          	slli	a5,a5,0x8
    272c:	00e787b3          	add	a5,a5,a4
    2730:	0000b737          	lui	a4,0xb
    2734:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x4725>
    2738:	f8e790e3          	bne	a5,a4,26b8 <fatfs_init+0x50>
    273c:	20644783          	lbu	a5,518(s0)
    2740:	00600713          	li	a4,6
    2744:	04f76063          	bltu	a4,a5,2784 <fatfs_init+0x11c>
    2748:	00400713          	li	a4,4
    274c:	00f76663          	bltu	a4,a5,2758 <fatfs_init+0xf0>
    2750:	00000513          	li	a0,0
    2754:	04078263          	beqz	a5,2798 <fatfs_init+0x130>
    2758:	20d44503          	lbu	a0,525(s0)
    275c:	20c44783          	lbu	a5,524(s0)
    2760:	01851513          	slli	a0,a0,0x18
    2764:	01079793          	slli	a5,a5,0x10
    2768:	00f50533          	add	a0,a0,a5
    276c:	20a44783          	lbu	a5,522(s0)
    2770:	00f50533          	add	a0,a0,a5
    2774:	20b44783          	lbu	a5,523(s0)
    2778:	00879793          	slli	a5,a5,0x8
    277c:	00f50533          	add	a0,a0,a5
    2780:	0180006f          	j	2798 <fatfs_init+0x130>
    2784:	00c00713          	li	a4,12
    2788:	1ef76a63          	bltu	a4,a5,297c <fatfs_init+0x314>
    278c:	00a00713          	li	a4,10
    2790:	00000513          	li	a0,0
    2794:	fcf762e3          	bltu	a4,a5,2758 <fatfs_init+0xf0>
    2798:	03442783          	lw	a5,52(s0)
    279c:	00a42e23          	sw	a0,28(s0)
    27a0:	00100613          	li	a2,1
    27a4:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    27a8:	f00506e3          	beqz	a0,26b4 <fatfs_init+0x4c>
    27ac:	05044783          	lbu	a5,80(s0)
    27b0:	04f44703          	lbu	a4,79(s0)
    27b4:	ffe00513          	li	a0,-2
    27b8:	00879793          	slli	a5,a5,0x8
    27bc:	00e787b3          	add	a5,a5,a4
    27c0:	20000713          	li	a4,512
    27c4:	eee79ae3          	bne	a5,a4,26b8 <fatfs_init+0x50>
    27c8:	05644483          	lbu	s1,86(s0)
    27cc:	05544b83          	lbu	s7,85(s0)
    27d0:	05344903          	lbu	s2,83(s0)
    27d4:	05244a03          	lbu	s4,82(s0)
    27d8:	05b44583          	lbu	a1,91(s0)
    27dc:	00849493          	slli	s1,s1,0x8
    27e0:	05144983          	lbu	s3,81(s0)
    27e4:	05a44783          	lbu	a5,90(s0)
    27e8:	01748ab3          	add	s5,s1,s7
    27ec:	00891913          	slli	s2,s2,0x8
    27f0:	010a9a93          	slli	s5,s5,0x10
    27f4:	01490b33          	add	s6,s2,s4
    27f8:	010ada93          	srli	s5,s5,0x10
    27fc:	00859593          	slli	a1,a1,0x8
    2800:	010b1b13          	slli	s6,s6,0x10
    2804:	01340023          	sb	s3,0(s0)
    2808:	03541423          	sh	s5,40(s0)
    280c:	00f585b3          	add	a1,a1,a5
    2810:	05444503          	lbu	a0,84(s0)
    2814:	010b5b13          	srli	s6,s6,0x10
    2818:	02059663          	bnez	a1,2844 <fatfs_init+0x1dc>
    281c:	06b44583          	lbu	a1,107(s0)
    2820:	06a44783          	lbu	a5,106(s0)
    2824:	01859593          	slli	a1,a1,0x18
    2828:	01079793          	slli	a5,a5,0x10
    282c:	00f585b3          	add	a1,a1,a5
    2830:	06844783          	lbu	a5,104(s0)
    2834:	00f585b3          	add	a1,a1,a5
    2838:	06944783          	lbu	a5,105(s0)
    283c:	00879793          	slli	a5,a5,0x8
    2840:	00f585b3          	add	a1,a1,a5
    2844:	07344783          	lbu	a5,115(s0)
    2848:	07244703          	lbu	a4,114(s0)
    284c:	02b42023          	sw	a1,32(s0)
    2850:	01879793          	slli	a5,a5,0x18
    2854:	01071713          	slli	a4,a4,0x10
    2858:	00e787b3          	add	a5,a5,a4
    285c:	07044703          	lbu	a4,112(s0)
    2860:	005a9a93          	slli	s5,s5,0x5
    2864:	1ffa8a93          	addi	s5,s5,511
    2868:	00e787b3          	add	a5,a5,a4
    286c:	07144703          	lbu	a4,113(s0)
    2870:	409ada93          	srai	s5,s5,0x9
    2874:	00871713          	slli	a4,a4,0x8
    2878:	00e787b3          	add	a5,a5,a4
    287c:	00f42423          	sw	a5,8(s0)
    2880:	07544783          	lbu	a5,117(s0)
    2884:	07444703          	lbu	a4,116(s0)
    2888:	00879793          	slli	a5,a5,0x8
    288c:	00e787b3          	add	a5,a5,a4
    2890:	00f41c23          	sh	a5,24(s0)
    2894:	ffffe097          	auipc	ra,0xffffe
    2898:	5cc080e7          	jalr	1484(ra) # e60 <__mulsi3>
    289c:	00ab07b3          	add	a5,s6,a0
    28a0:	00f42623          	sw	a5,12(s0)
    28a4:	01c42783          	lw	a5,28(s0)
    28a8:	24244703          	lbu	a4,578(s0)
    28ac:	01542823          	sw	s5,16(s0)
    28b0:	00fb0b33          	add	s6,s6,a5
    28b4:	24344783          	lbu	a5,579(s0)
    28b8:	01642a23          	sw	s6,20(s0)
    28bc:	01650b33          	add	s6,a0,s6
    28c0:	00879793          	slli	a5,a5,0x8
    28c4:	00e787b3          	add	a5,a5,a4
    28c8:	0000b737          	lui	a4,0xb
    28cc:	01642223          	sw	s6,4(s0)
    28d0:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x4725>
    28d4:	e4e790e3          	bne	a5,a4,2714 <fatfs_init+0xac>
    28d8:	05844783          	lbu	a5,88(s0)
    28dc:	05744703          	lbu	a4,87(s0)
    28e0:	017484b3          	add	s1,s1,s7
    28e4:	00549493          	slli	s1,s1,0x5
    28e8:	00879793          	slli	a5,a5,0x8
    28ec:	1ff48493          	addi	s1,s1,511
    28f0:	00e787b3          	add	a5,a5,a4
    28f4:	4094d493          	srai	s1,s1,0x9
    28f8:	02079663          	bnez	a5,2924 <fatfs_init+0x2bc>
    28fc:	06744783          	lbu	a5,103(s0)
    2900:	06644703          	lbu	a4,102(s0)
    2904:	01879793          	slli	a5,a5,0x18
    2908:	01071713          	slli	a4,a4,0x10
    290c:	00e787b3          	add	a5,a5,a4
    2910:	06444703          	lbu	a4,100(s0)
    2914:	00e787b3          	add	a5,a5,a4
    2918:	06544703          	lbu	a4,101(s0)
    291c:	00871713          	slli	a4,a4,0x8
    2920:	00e787b3          	add	a5,a5,a4
    2924:	01490933          	add	s2,s2,s4
    2928:	00990933          	add	s2,s2,s1
    292c:	00a90533          	add	a0,s2,a0
    2930:	40a787b3          	sub	a5,a5,a0
    2934:	ffb00513          	li	a0,-5
    2938:	d80980e3          	beqz	s3,26b8 <fatfs_init+0x50>
    293c:	00078513          	mv	a0,a5
    2940:	00098593          	mv	a1,s3
    2944:	ffffe097          	auipc	ra,0xffffe
    2948:	cd0080e7          	jalr	-816(ra) # 614 <__udivsi3>
    294c:	00001737          	lui	a4,0x1
    2950:	00050793          	mv	a5,a0
    2954:	ff470713          	addi	a4,a4,-12 # ff4 <fatfs_fat_writeback+0x60>
    2958:	ffb00513          	li	a0,-5
    295c:	d4f77ee3          	bgeu	a4,a5,26b8 <fatfs_init+0x50>
    2960:	00010737          	lui	a4,0x10
    2964:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x9cc4>
    2968:	02f76663          	bltu	a4,a5,2994 <fatfs_init+0x32c>
    296c:	00042423          	sw	zero,8(s0)
    2970:	02042823          	sw	zero,48(s0)
    2974:	00000513          	li	a0,0
    2978:	d41ff06f          	j	26b8 <fatfs_init+0x50>
    297c:	ff278793          	addi	a5,a5,-14
    2980:	0ff7f793          	zext.b	a5,a5
    2984:	00100713          	li	a4,1
    2988:	00000513          	li	a0,0
    298c:	dcf776e3          	bgeu	a4,a5,2758 <fatfs_init+0xf0>
    2990:	e09ff06f          	j	2798 <fatfs_init+0x130>
    2994:	00100793          	li	a5,1
    2998:	02f42823          	sw	a5,48(s0)
    299c:	fd9ff06f          	j	2974 <fatfs_init+0x30c>

000029a0 <fl_attach_media>:
    29a0:	000067b7          	lui	a5,0x6
    29a4:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    29a8:	ff010113          	addi	sp,sp,-16
    29ac:	00812423          	sw	s0,8(sp)
    29b0:	00912223          	sw	s1,4(sp)
    29b4:	00112623          	sw	ra,12(sp)
    29b8:	00050493          	mv	s1,a0
    29bc:	00058413          	mv	s0,a1
    29c0:	00079663          	bnez	a5,29cc <fl_attach_media+0x2c>
    29c4:	fffff097          	auipc	ra,0xfffff
    29c8:	c30080e7          	jalr	-976(ra) # 15f4 <fl_init>
    29cc:	00006537          	lui	a0,0x6
    29d0:	ec850793          	addi	a5,a0,-312 # 5ec8 <_fs>
    29d4:	ec850513          	addi	a0,a0,-312
    29d8:	0287ac23          	sw	s0,56(a5)
    29dc:	0297aa23          	sw	s1,52(a5)
    29e0:	00000097          	auipc	ra,0x0
    29e4:	c88080e7          	jalr	-888(ra) # 2668 <fatfs_init>
    29e8:	00050413          	mv	s0,a0
    29ec:	02050863          	beqz	a0,2a1c <fl_attach_media+0x7c>
    29f0:	00050593          	mv	a1,a0
    29f4:	00006537          	lui	a0,0x6
    29f8:	d7050513          	addi	a0,a0,-656 # 5d70 <font+0x2c4>
    29fc:	ffffe097          	auipc	ra,0xffffe
    2a00:	328080e7          	jalr	808(ra) # d24 <printf>
    2a04:	00c12083          	lw	ra,12(sp)
    2a08:	00040513          	mv	a0,s0
    2a0c:	00812403          	lw	s0,8(sp)
    2a10:	00412483          	lw	s1,4(sp)
    2a14:	01010113          	addi	sp,sp,16
    2a18:	00008067          	ret
    2a1c:	000067b7          	lui	a5,0x6
    2a20:	00100713          	li	a4,1
    2a24:	e6e7a623          	sw	a4,-404(a5) # 5e6c <_filelib_valid>
    2a28:	fddff06f          	j	2a04 <fl_attach_media+0x64>

00002a2c <fatfs_format_fat16>:
    2a2c:	fe010113          	addi	sp,sp,-32
    2a30:	00812c23          	sw	s0,24(sp)
    2a34:	00912a23          	sw	s1,20(sp)
    2a38:	01212823          	sw	s2,16(sp)
    2a3c:	00112e23          	sw	ra,28(sp)
    2a40:	01312623          	sw	s3,12(sp)
    2a44:	01412423          	sw	s4,8(sp)
    2a48:	fff00793          	li	a5,-1
    2a4c:	24f52223          	sw	a5,580(a0)
    2a50:	24052423          	sw	zero,584(a0)
    2a54:	02052223          	sw	zero,36(a0)
    2a58:	00050413          	mv	s0,a0
    2a5c:	00058493          	mv	s1,a1
    2a60:	00060913          	mv	s2,a2
    2a64:	00000097          	auipc	ra,0x0
    2a68:	ba4080e7          	jalr	-1116(ra) # 2608 <fatfs_fat_init>
    2a6c:	03442783          	lw	a5,52(s0)
    2a70:	fff00513          	li	a0,-1
    2a74:	08078663          	beqz	a5,2b00 <fatfs_format_fat16+0xd4>
    2a78:	03842783          	lw	a5,56(s0)
    2a7c:	fff00513          	li	a0,-1
    2a80:	08078063          	beqz	a5,2b00 <fatfs_format_fat16+0xd4>
    2a84:	04440993          	addi	s3,s0,68
    2a88:	02042823          	sw	zero,48(s0)
    2a8c:	00041c23          	sh	zero,24(s0)
    2a90:	00042423          	sw	zero,8(s0)
    2a94:	00042e23          	sw	zero,28(s0)
    2a98:	20000613          	li	a2,512
    2a9c:	00000593          	li	a1,0
    2aa0:	00098513          	mv	a0,s3
    2aa4:	ffffe097          	auipc	ra,0xffffe
    2aa8:	c44080e7          	jalr	-956(ra) # 6e8 <memset>
    2aac:	4d9047b7          	lui	a5,0x4d904
    2ab0:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2ab4:	04f42223          	sw	a5,68(s0)
    2ab8:	534f47b7          	lui	a5,0x534f4
    2abc:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2ac0:	04f42423          	sw	a5,72(s0)
    2ac4:	003037b7          	lui	a5,0x303
    2ac8:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2acc:	04f42623          	sw	a5,76(s0)
    2ad0:	00200793          	li	a5,2
    2ad4:	04f40823          	sb	a5,80(s0)
    2ad8:	000067b7          	lui	a5,0x6
    2adc:	dd878793          	addi	a5,a5,-552 # 5dd8 <_cluster_size_table16>
    2ae0:	0047c583          	lbu	a1,4(a5)
    2ae4:	00058863          	beqz	a1,2af4 <fatfs_format_fat16+0xc8>
    2ae8:	0007a703          	lw	a4,0(a5)
    2aec:	00878793          	addi	a5,a5,8
    2af0:	fe9768e3          	bltu	a4,s1,2ae0 <fatfs_format_fat16+0xb4>
    2af4:	00b40023          	sb	a1,0(s0)
    2af8:	02059463          	bnez	a1,2b20 <fatfs_format_fat16+0xf4>
    2afc:	00000513          	li	a0,0
    2b00:	01c12083          	lw	ra,28(sp)
    2b04:	01812403          	lw	s0,24(sp)
    2b08:	01412483          	lw	s1,20(sp)
    2b0c:	01012903          	lw	s2,16(sp)
    2b10:	00c12983          	lw	s3,12(sp)
    2b14:	00812a03          	lw	s4,8(sp)
    2b18:	02010113          	addi	sp,sp,32
    2b1c:	00008067          	ret
    2b20:	000807b7          	lui	a5,0x80
    2b24:	20078793          	addi	a5,a5,512 # 80200 <__stacktop+0x70200>
    2b28:	02f42423          	sw	a5,40(s0)
    2b2c:	00200793          	li	a5,2
    2b30:	02f40623          	sb	a5,44(s0)
    2b34:	00800793          	li	a5,8
    2b38:	04f41923          	sh	a5,82(s0)
    2b3c:	000207b7          	lui	a5,0x20
    2b40:	00278793          	addi	a5,a5,2 # 20002 <__stacktop+0x10002>
    2b44:	04f42a23          	sw	a5,84(s0)
    2b48:	80000793          	li	a5,-2048
    2b4c:	04f41c23          	sh	a5,88(s0)
    2b50:	00048513          	mv	a0,s1
    2b54:	04b408a3          	sb	a1,81(s0)
    2b58:	ffffe097          	auipc	ra,0xffffe
    2b5c:	abc080e7          	jalr	-1348(ra) # 614 <__udivsi3>
    2b60:	00150793          	addi	a5,a0,1
    2b64:	0087d793          	srli	a5,a5,0x8
    2b68:	00178793          	addi	a5,a5,1
    2b6c:	02f42023          	sw	a5,32(s0)
    2b70:	04f41d23          	sh	a5,90(s0)
    2b74:	02000793          	li	a5,32
    2b78:	06f42023          	sw	a5,96(s0)
    2b7c:	122907b7          	lui	a5,0x12290
    2b80:	06f42423          	sw	a5,104(s0)
    2b84:	000057b7          	lui	a5,0x5
    2b88:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x324>
    2b8c:	06f41623          	sh	a5,108(s0)
    2b90:	07800793          	li	a5,120
    2b94:	06942223          	sw	s1,100(s0)
    2b98:	04042e23          	sw	zero,92(s0)
    2b9c:	06f40723          	sb	a5,110(s0)
    2ba0:	00000493          	li	s1,0
    2ba4:	00b00a13          	li	s4,11
    2ba8:	00090513          	mv	a0,s2
    2bac:	ffffe097          	auipc	ra,0xffffe
    2bb0:	b7c080e7          	jalr	-1156(ra) # 728 <strlen>
    2bb4:	02000793          	li	a5,32
    2bb8:	00a4d663          	bge	s1,a0,2bc4 <fatfs_format_fat16+0x198>
    2bbc:	009907b3          	add	a5,s2,s1
    2bc0:	0007c783          	lbu	a5,0(a5)
    2bc4:	00940733          	add	a4,s0,s1
    2bc8:	06f707a3          	sb	a5,111(a4)
    2bcc:	00148493          	addi	s1,s1,1
    2bd0:	fd449ce3          	bne	s1,s4,2ba8 <fatfs_format_fat16+0x17c>
    2bd4:	000047b7          	lui	a5,0x4
    2bd8:	14678793          	addi	a5,a5,326 # 4146 <fatfs_set_fs_info_next_free_cluster+0x9a>
    2bdc:	06f41d23          	sh	a5,122(s0)
    2be0:	203637b7          	lui	a5,0x20363
    2be4:	15478793          	addi	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2be8:	06f42e23          	sw	a5,124(s0)
    2bec:	000027b7          	lui	a5,0x2
    2bf0:	02078793          	addi	a5,a5,32 # 2020 <fatfs_total_path_levels+0x48>
    2bf4:	08f41023          	sh	a5,128(s0)
    2bf8:	ffffb7b7          	lui	a5,0xffffb
    2bfc:	a5578793          	addi	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2c00:	24f41123          	sh	a5,578(s0)
    2c04:	03842783          	lw	a5,56(s0)
    2c08:	00100613          	li	a2,1
    2c0c:	00098593          	mv	a1,s3
    2c10:	00000513          	li	a0,0
    2c14:	000780e7          	jalr	a5
    2c18:	ee0502e3          	beqz	a0,2afc <fatfs_format_fat16+0xd0>
    2c1c:	02042583          	lw	a1,32(s0)
    2c20:	02c44503          	lbu	a0,44(s0)
    2c24:	02a45483          	lhu	s1,42(s0)
    2c28:	ffffe097          	auipc	ra,0xffffe
    2c2c:	238080e7          	jalr	568(ra) # e60 <__mulsi3>
    2c30:	00a487b3          	add	a5,s1,a0
    2c34:	00f42623          	sw	a5,12(s0)
    2c38:	02845783          	lhu	a5,40(s0)
    2c3c:	00000593          	li	a1,0
    2c40:	00579793          	slli	a5,a5,0x5
    2c44:	1ff78793          	addi	a5,a5,511
    2c48:	4097d793          	srai	a5,a5,0x9
    2c4c:	00f42823          	sw	a5,16(s0)
    2c50:	01c42783          	lw	a5,28(s0)
    2c54:	00f484b3          	add	s1,s1,a5
    2c58:	00950533          	add	a0,a0,s1
    2c5c:	00a42223          	sw	a0,4(s0)
    2c60:	00942a23          	sw	s1,20(s0)
    2c64:	00040513          	mv	a0,s0
    2c68:	ffffe097          	auipc	ra,0xffffe
    2c6c:	49c080e7          	jalr	1180(ra) # 1104 <fatfs_erase_fat>
    2c70:	e80506e3          	beqz	a0,2afc <fatfs_format_fat16+0xd0>
    2c74:	01c42583          	lw	a1,28(s0)
    2c78:	00c42783          	lw	a5,12(s0)
    2c7c:	01042603          	lw	a2,16(s0)
    2c80:	00040513          	mv	a0,s0
    2c84:	00f585b3          	add	a1,a1,a5
    2c88:	ffffe097          	auipc	ra,0xffffe
    2c8c:	568080e7          	jalr	1384(ra) # 11f0 <fatfs_erase_sectors>
    2c90:	00a03533          	snez	a0,a0
    2c94:	e6dff06f          	j	2b00 <fatfs_format_fat16+0xd4>

00002c98 <fatfs_format_fat32>:
    2c98:	fe010113          	addi	sp,sp,-32
    2c9c:	00812c23          	sw	s0,24(sp)
    2ca0:	00912a23          	sw	s1,20(sp)
    2ca4:	01212823          	sw	s2,16(sp)
    2ca8:	00112e23          	sw	ra,28(sp)
    2cac:	01312623          	sw	s3,12(sp)
    2cb0:	01412423          	sw	s4,8(sp)
    2cb4:	fff00793          	li	a5,-1
    2cb8:	24f52223          	sw	a5,580(a0)
    2cbc:	24052423          	sw	zero,584(a0)
    2cc0:	02052223          	sw	zero,36(a0)
    2cc4:	00050413          	mv	s0,a0
    2cc8:	00058493          	mv	s1,a1
    2ccc:	00060913          	mv	s2,a2
    2cd0:	00000097          	auipc	ra,0x0
    2cd4:	938080e7          	jalr	-1736(ra) # 2608 <fatfs_fat_init>
    2cd8:	03442783          	lw	a5,52(s0)
    2cdc:	fff00513          	li	a0,-1
    2ce0:	08078863          	beqz	a5,2d70 <fatfs_format_fat32+0xd8>
    2ce4:	03842783          	lw	a5,56(s0)
    2ce8:	fff00513          	li	a0,-1
    2cec:	08078263          	beqz	a5,2d70 <fatfs_format_fat32+0xd8>
    2cf0:	00100793          	li	a5,1
    2cf4:	00200a13          	li	s4,2
    2cf8:	04440993          	addi	s3,s0,68
    2cfc:	02f42823          	sw	a5,48(s0)
    2d00:	00f41c23          	sh	a5,24(s0)
    2d04:	01442423          	sw	s4,8(s0)
    2d08:	00042e23          	sw	zero,28(s0)
    2d0c:	20000613          	li	a2,512
    2d10:	00000593          	li	a1,0
    2d14:	00098513          	mv	a0,s3
    2d18:	ffffe097          	auipc	ra,0xffffe
    2d1c:	9d0080e7          	jalr	-1584(ra) # 6e8 <memset>
    2d20:	4d9047b7          	lui	a5,0x4d904
    2d24:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2d28:	04f42223          	sw	a5,68(s0)
    2d2c:	534f47b7          	lui	a5,0x534f4
    2d30:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2d34:	04f42423          	sw	a5,72(s0)
    2d38:	003037b7          	lui	a5,0x303
    2d3c:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2d40:	04f42623          	sw	a5,76(s0)
    2d44:	000067b7          	lui	a5,0x6
    2d48:	05440823          	sb	s4,80(s0)
    2d4c:	e1878793          	addi	a5,a5,-488 # 5e18 <_cluster_size_table32>
    2d50:	0047c583          	lbu	a1,4(a5)
    2d54:	00058863          	beqz	a1,2d64 <fatfs_format_fat32+0xcc>
    2d58:	0007a703          	lw	a4,0(a5)
    2d5c:	00878793          	addi	a5,a5,8
    2d60:	fe9768e3          	bltu	a4,s1,2d50 <fatfs_format_fat32+0xb8>
    2d64:	00b40023          	sb	a1,0(s0)
    2d68:	02059463          	bnez	a1,2d90 <fatfs_format_fat32+0xf8>
    2d6c:	00000513          	li	a0,0
    2d70:	01c12083          	lw	ra,28(sp)
    2d74:	01812403          	lw	s0,24(sp)
    2d78:	01412483          	lw	s1,20(sp)
    2d7c:	01012903          	lw	s2,16(sp)
    2d80:	00c12983          	lw	s3,12(sp)
    2d84:	00812a03          	lw	s4,8(sp)
    2d88:	02010113          	addi	sp,sp,32
    2d8c:	00008067          	ret
    2d90:	002007b7          	lui	a5,0x200
    2d94:	02f42423          	sw	a5,40(s0)
    2d98:	00200793          	li	a5,2
    2d9c:	02f40623          	sb	a5,44(s0)
    2da0:	04f42a23          	sw	a5,84(s0)
    2da4:	000107b7          	lui	a5,0x10
    2da8:	80078793          	addi	a5,a5,-2048 # f800 <_files+0x94d0>
    2dac:	04f42c23          	sw	a5,88(s0)
    2db0:	00ff07b7          	lui	a5,0xff0
    2db4:	03f78793          	addi	a5,a5,63 # ff003f <__stacktop+0xfe003f>
    2db8:	02000713          	li	a4,32
    2dbc:	04f42e23          	sw	a5,92(s0)
    2dc0:	06942223          	sw	s1,100(s0)
    2dc4:	00048513          	mv	a0,s1
    2dc8:	04b408a3          	sb	a1,81(s0)
    2dcc:	04e41923          	sh	a4,82(s0)
    2dd0:	06042023          	sw	zero,96(s0)
    2dd4:	ffffe097          	auipc	ra,0xffffe
    2dd8:	840080e7          	jalr	-1984(ra) # 614 <__udivsi3>
    2ddc:	00150793          	addi	a5,a0,1
    2de0:	0077d793          	srli	a5,a5,0x7
    2de4:	00178793          	addi	a5,a5,1
    2de8:	02f42023          	sw	a5,32(s0)
    2dec:	06f42423          	sw	a5,104(s0)
    2df0:	00842783          	lw	a5,8(s0)
    2df4:	06042623          	sw	zero,108(s0)
    2df8:	08040223          	sb	zero,132(s0)
    2dfc:	06f42823          	sw	a5,112(s0)
    2e00:	01845783          	lhu	a5,24(s0)
    2e04:	00000493          	li	s1,0
    2e08:	00b00a13          	li	s4,11
    2e0c:	06f41a23          	sh	a5,116(s0)
    2e10:	00600793          	li	a5,6
    2e14:	06f41b23          	sh	a5,118(s0)
    2e18:	000017b7          	lui	a5,0x1
    2e1c:	22978793          	addi	a5,a5,553 # 1229 <fatfs_erase_sectors+0x39>
    2e20:	08f41323          	sh	a5,134(s0)
    2e24:	000057b7          	lui	a5,0x5
    2e28:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x324>
    2e2c:	08f41423          	sh	a5,136(s0)
    2e30:	07800793          	li	a5,120
    2e34:	08f40523          	sb	a5,138(s0)
    2e38:	00090513          	mv	a0,s2
    2e3c:	ffffe097          	auipc	ra,0xffffe
    2e40:	8ec080e7          	jalr	-1812(ra) # 728 <strlen>
    2e44:	02000793          	li	a5,32
    2e48:	00a4d663          	bge	s1,a0,2e54 <fatfs_format_fat32+0x1bc>
    2e4c:	009907b3          	add	a5,s2,s1
    2e50:	0007c783          	lbu	a5,0(a5)
    2e54:	00940733          	add	a4,s0,s1
    2e58:	08f705a3          	sb	a5,139(a4)
    2e5c:	00148493          	addi	s1,s1,1
    2e60:	fd449ce3          	bne	s1,s4,2e38 <fatfs_format_fat32+0x1a0>
    2e64:	000047b7          	lui	a5,0x4
    2e68:	14678793          	addi	a5,a5,326 # 4146 <fatfs_set_fs_info_next_free_cluster+0x9a>
    2e6c:	08f41b23          	sh	a5,150(s0)
    2e70:	203237b7          	lui	a5,0x20323
    2e74:	35478793          	addi	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    2e78:	08f42c23          	sw	a5,152(s0)
    2e7c:	000027b7          	lui	a5,0x2
    2e80:	02078793          	addi	a5,a5,32 # 2020 <fatfs_total_path_levels+0x48>
    2e84:	08f41e23          	sh	a5,156(s0)
    2e88:	ffffb4b7          	lui	s1,0xffffb
    2e8c:	03842783          	lw	a5,56(s0)
    2e90:	a5548493          	addi	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2e94:	24941123          	sh	s1,578(s0)
    2e98:	00100613          	li	a2,1
    2e9c:	00098593          	mv	a1,s3
    2ea0:	00000513          	li	a0,0
    2ea4:	000780e7          	jalr	a5
    2ea8:	ec0502e3          	beqz	a0,2d6c <fatfs_format_fat32+0xd4>
    2eac:	01c42783          	lw	a5,28(s0)
    2eb0:	02a45903          	lhu	s2,42(s0)
    2eb4:	02042583          	lw	a1,32(s0)
    2eb8:	02c44503          	lbu	a0,44(s0)
    2ebc:	00f90933          	add	s2,s2,a5
    2ec0:	01242a23          	sw	s2,20(s0)
    2ec4:	ffffe097          	auipc	ra,0xffffe
    2ec8:	f9c080e7          	jalr	-100(ra) # e60 <__mulsi3>
    2ecc:	01250533          	add	a0,a0,s2
    2ed0:	00a42223          	sw	a0,4(s0)
    2ed4:	20000613          	li	a2,512
    2ed8:	00000593          	li	a1,0
    2edc:	00098513          	mv	a0,s3
    2ee0:	01845903          	lhu	s2,24(s0)
    2ee4:	ffffe097          	auipc	ra,0xffffe
    2ee8:	804080e7          	jalr	-2044(ra) # 6e8 <memset>
    2eec:	416157b7          	lui	a5,0x41615
    2ef0:	25278793          	addi	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    2ef4:	04f42223          	sw	a5,68(s0)
    2ef8:	614177b7          	lui	a5,0x61417
    2efc:	27278793          	addi	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    2f00:	22f42423          	sw	a5,552(s0)
    2f04:	fff00793          	li	a5,-1
    2f08:	22f42623          	sw	a5,556(s0)
    2f0c:	22f42823          	sw	a5,560(s0)
    2f10:	03842783          	lw	a5,56(s0)
    2f14:	24941123          	sh	s1,578(s0)
    2f18:	00100613          	li	a2,1
    2f1c:	00098593          	mv	a1,s3
    2f20:	00090513          	mv	a0,s2
    2f24:	000780e7          	jalr	a5
    2f28:	e40502e3          	beqz	a0,2d6c <fatfs_format_fat32+0xd4>
    2f2c:	00100593          	li	a1,1
    2f30:	00040513          	mv	a0,s0
    2f34:	ffffe097          	auipc	ra,0xffffe
    2f38:	1d0080e7          	jalr	464(ra) # 1104 <fatfs_erase_fat>
    2f3c:	e20508e3          	beqz	a0,2d6c <fatfs_format_fat32+0xd4>
    2f40:	00842583          	lw	a1,8(s0)
    2f44:	00040513          	mv	a0,s0
    2f48:	ffffe097          	auipc	ra,0xffffe
    2f4c:	3f0080e7          	jalr	1008(ra) # 1338 <fatfs_lba_of_cluster>
    2f50:	00044603          	lbu	a2,0(s0)
    2f54:	00050593          	mv	a1,a0
    2f58:	00040513          	mv	a0,s0
    2f5c:	ffffe097          	auipc	ra,0xffffe
    2f60:	294080e7          	jalr	660(ra) # 11f0 <fatfs_erase_sectors>
    2f64:	00a03533          	snez	a0,a0
    2f68:	e09ff06f          	j	2d70 <fatfs_format_fat32+0xd8>

00002f6c <fatfs_format>:
    2f6c:	004007b7          	lui	a5,0x400
    2f70:	00b7e663          	bltu	a5,a1,2f7c <fatfs_format+0x10>
    2f74:	00000317          	auipc	t1,0x0
    2f78:	ab830067          	jr	-1352(t1) # 2a2c <fatfs_format_fat16>
    2f7c:	00000317          	auipc	t1,0x0
    2f80:	d1c30067          	jr	-740(t1) # 2c98 <fatfs_format_fat32>

00002f84 <fl_format>:
    2f84:	00058613          	mv	a2,a1
    2f88:	00050593          	mv	a1,a0
    2f8c:	00006537          	lui	a0,0x6
    2f90:	ec850513          	addi	a0,a0,-312 # 5ec8 <_fs>
    2f94:	00000317          	auipc	t1,0x0
    2f98:	fd830067          	jr	-40(t1) # 2f6c <fatfs_format>

00002f9c <fatfs_fat_purge>:
    2f9c:	ff010113          	addi	sp,sp,-16
    2fa0:	00812423          	sw	s0,8(sp)
    2fa4:	25452403          	lw	s0,596(a0)
    2fa8:	00912223          	sw	s1,4(sp)
    2fac:	00112623          	sw	ra,12(sp)
    2fb0:	00050493          	mv	s1,a0
    2fb4:	00041663          	bnez	s0,2fc0 <fatfs_fat_purge+0x24>
    2fb8:	00100513          	li	a0,1
    2fbc:	0280006f          	j	2fe4 <fatfs_fat_purge+0x48>
    2fc0:	20442783          	lw	a5,516(s0)
    2fc4:	00079663          	bnez	a5,2fd0 <fatfs_fat_purge+0x34>
    2fc8:	20c42403          	lw	s0,524(s0)
    2fcc:	fe9ff06f          	j	2fb4 <fatfs_fat_purge+0x18>
    2fd0:	00040593          	mv	a1,s0
    2fd4:	00048513          	mv	a0,s1
    2fd8:	ffffe097          	auipc	ra,0xffffe
    2fdc:	fbc080e7          	jalr	-68(ra) # f94 <fatfs_fat_writeback>
    2fe0:	fe0514e3          	bnez	a0,2fc8 <fatfs_fat_purge+0x2c>
    2fe4:	00c12083          	lw	ra,12(sp)
    2fe8:	00812403          	lw	s0,8(sp)
    2fec:	00412483          	lw	s1,4(sp)
    2ff0:	01010113          	addi	sp,sp,16
    2ff4:	00008067          	ret

00002ff8 <fl_shutdown>:
    2ff8:	000067b7          	lui	a5,0x6
    2ffc:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    3000:	ff010113          	addi	sp,sp,-16
    3004:	00112623          	sw	ra,12(sp)
    3008:	00812423          	sw	s0,8(sp)
    300c:	00912223          	sw	s1,4(sp)
    3010:	00079663          	bnez	a5,301c <fl_shutdown+0x24>
    3014:	ffffe097          	auipc	ra,0xffffe
    3018:	5e0080e7          	jalr	1504(ra) # 15f4 <fl_init>
    301c:	00006437          	lui	s0,0x6
    3020:	ec840793          	addi	a5,s0,-312 # 5ec8 <_fs>
    3024:	03c7a783          	lw	a5,60(a5)
    3028:	ec840493          	addi	s1,s0,-312
    302c:	00078463          	beqz	a5,3034 <fl_shutdown+0x3c>
    3030:	000780e7          	jalr	a5
    3034:	ec840513          	addi	a0,s0,-312
    3038:	00000097          	auipc	ra,0x0
    303c:	f64080e7          	jalr	-156(ra) # 2f9c <fatfs_fat_purge>
    3040:	0404a783          	lw	a5,64(s1)
    3044:	00078c63          	beqz	a5,305c <fl_shutdown+0x64>
    3048:	00812403          	lw	s0,8(sp)
    304c:	00c12083          	lw	ra,12(sp)
    3050:	00412483          	lw	s1,4(sp)
    3054:	01010113          	addi	sp,sp,16
    3058:	00078067          	jr	a5
    305c:	00c12083          	lw	ra,12(sp)
    3060:	00812403          	lw	s0,8(sp)
    3064:	00412483          	lw	s1,4(sp)
    3068:	01010113          	addi	sp,sp,16
    306c:	00008067          	ret

00003070 <fatfs_find_next_cluster>:
    3070:	ff010113          	addi	sp,sp,-16
    3074:	00812423          	sw	s0,8(sp)
    3078:	01212023          	sw	s2,0(sp)
    307c:	00112623          	sw	ra,12(sp)
    3080:	00912223          	sw	s1,4(sp)
    3084:	00050913          	mv	s2,a0
    3088:	00200413          	li	s0,2
    308c:	00058463          	beqz	a1,3094 <fatfs_find_next_cluster+0x24>
    3090:	00058413          	mv	s0,a1
    3094:	03092783          	lw	a5,48(s2)
    3098:	00745493          	srli	s1,s0,0x7
    309c:	00079463          	bnez	a5,30a4 <fatfs_find_next_cluster+0x34>
    30a0:	00845493          	srli	s1,s0,0x8
    30a4:	01492583          	lw	a1,20(s2)
    30a8:	00090513          	mv	a0,s2
    30ac:	00b485b3          	add	a1,s1,a1
    30b0:	ffffe097          	auipc	ra,0xffffe
    30b4:	f68080e7          	jalr	-152(ra) # 1018 <fatfs_fat_read_sector>
    30b8:	00050793          	mv	a5,a0
    30bc:	fff00513          	li	a0,-1
    30c0:	04078a63          	beqz	a5,3114 <fatfs_find_next_cluster+0xa4>
    30c4:	03092703          	lw	a4,48(s2)
    30c8:	2087a783          	lw	a5,520(a5)
    30cc:	06071063          	bnez	a4,312c <fatfs_find_next_cluster+0xbc>
    30d0:	00849493          	slli	s1,s1,0x8
    30d4:	40940433          	sub	s0,s0,s1
    30d8:	00010737          	lui	a4,0x10
    30dc:	00141413          	slli	s0,s0,0x1
    30e0:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x9ccf>
    30e4:	00e47433          	and	s0,s0,a4
    30e8:	008787b3          	add	a5,a5,s0
    30ec:	0017c503          	lbu	a0,1(a5)
    30f0:	0007c783          	lbu	a5,0(a5)
    30f4:	00851513          	slli	a0,a0,0x8
    30f8:	00f50533          	add	a0,a0,a5
    30fc:	ffff07b7          	lui	a5,0xffff0
    3100:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3104:	00f507b3          	add	a5,a0,a5
    3108:	00700713          	li	a4,7
    310c:	00f76463          	bltu	a4,a5,3114 <fatfs_find_next_cluster+0xa4>
    3110:	fff00513          	li	a0,-1
    3114:	00c12083          	lw	ra,12(sp)
    3118:	00812403          	lw	s0,8(sp)
    311c:	00412483          	lw	s1,4(sp)
    3120:	00012903          	lw	s2,0(sp)
    3124:	01010113          	addi	sp,sp,16
    3128:	00008067          	ret
    312c:	00749493          	slli	s1,s1,0x7
    3130:	40940433          	sub	s0,s0,s1
    3134:	00010737          	lui	a4,0x10
    3138:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x9ccf>
    313c:	00241413          	slli	s0,s0,0x2
    3140:	00e47433          	and	s0,s0,a4
    3144:	008787b3          	add	a5,a5,s0
    3148:	0037c503          	lbu	a0,3(a5)
    314c:	0027c703          	lbu	a4,2(a5)
    3150:	01851513          	slli	a0,a0,0x18
    3154:	01071713          	slli	a4,a4,0x10
    3158:	00e50533          	add	a0,a0,a4
    315c:	0007c703          	lbu	a4,0(a5)
    3160:	0017c783          	lbu	a5,1(a5)
    3164:	00e50533          	add	a0,a0,a4
    3168:	00879793          	slli	a5,a5,0x8
    316c:	00f50533          	add	a0,a0,a5
    3170:	00451513          	slli	a0,a0,0x4
    3174:	00455513          	srli	a0,a0,0x4
    3178:	f00007b7          	lui	a5,0xf0000
    317c:	f85ff06f          	j	3100 <fatfs_find_next_cluster+0x90>

00003180 <fatfs_sector_reader>:
    3180:	03052783          	lw	a5,48(a0)
    3184:	fd010113          	addi	sp,sp,-48
    3188:	02812423          	sw	s0,40(sp)
    318c:	03212023          	sw	s2,32(sp)
    3190:	01312e23          	sw	s3,28(sp)
    3194:	02112623          	sw	ra,44(sp)
    3198:	02912223          	sw	s1,36(sp)
    319c:	01412c23          	sw	s4,24(sp)
    31a0:	01512a23          	sw	s5,20(sp)
    31a4:	00f5e7b3          	or	a5,a1,a5
    31a8:	00050413          	mv	s0,a0
    31ac:	00060913          	mv	s2,a2
    31b0:	00068993          	mv	s3,a3
    31b4:	06079c63          	bnez	a5,322c <fatfs_sector_reader+0xac>
    31b8:	01052783          	lw	a5,16(a0)
    31bc:	02f66663          	bltu	a2,a5,31e8 <fatfs_sector_reader+0x68>
    31c0:	00000513          	li	a0,0
    31c4:	02c12083          	lw	ra,44(sp)
    31c8:	02812403          	lw	s0,40(sp)
    31cc:	02412483          	lw	s1,36(sp)
    31d0:	02012903          	lw	s2,32(sp)
    31d4:	01c12983          	lw	s3,28(sp)
    31d8:	01812a03          	lw	s4,24(sp)
    31dc:	01412a83          	lw	s5,20(sp)
    31e0:	03010113          	addi	sp,sp,48
    31e4:	00008067          	ret
    31e8:	01c52503          	lw	a0,28(a0)
    31ec:	00c42783          	lw	a5,12(s0)
    31f0:	00f50533          	add	a0,a0,a5
    31f4:	01250533          	add	a0,a0,s2
    31f8:	0a098263          	beqz	s3,329c <fatfs_sector_reader+0x11c>
    31fc:	03442783          	lw	a5,52(s0)
    3200:	00100613          	li	a2,1
    3204:	00098593          	mv	a1,s3
    3208:	02812403          	lw	s0,40(sp)
    320c:	02c12083          	lw	ra,44(sp)
    3210:	02412483          	lw	s1,36(sp)
    3214:	02012903          	lw	s2,32(sp)
    3218:	01c12983          	lw	s3,28(sp)
    321c:	01812a03          	lw	s4,24(sp)
    3220:	01412a83          	lw	s5,20(sp)
    3224:	03010113          	addi	sp,sp,48
    3228:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    322c:	00058493          	mv	s1,a1
    3230:	00054583          	lbu	a1,0(a0)
    3234:	00060513          	mv	a0,a2
    3238:	00000a93          	li	s5,0
    323c:	00b12623          	sw	a1,12(sp)
    3240:	ffffd097          	auipc	ra,0xffffd
    3244:	3d4080e7          	jalr	980(ra) # 614 <__udivsi3>
    3248:	00c12583          	lw	a1,12(sp)
    324c:	00050a13          	mv	s4,a0
    3250:	00090513          	mv	a0,s2
    3254:	ffffd097          	auipc	ra,0xffffd
    3258:	408080e7          	jalr	1032(ra) # 65c <__umodsi3>
    325c:	00050913          	mv	s2,a0
    3260:	034a9063          	bne	s5,s4,3280 <fatfs_sector_reader+0x100>
    3264:	fff00793          	li	a5,-1
    3268:	f4f48ce3          	beq	s1,a5,31c0 <fatfs_sector_reader+0x40>
    326c:	00048593          	mv	a1,s1
    3270:	00040513          	mv	a0,s0
    3274:	ffffe097          	auipc	ra,0xffffe
    3278:	0c4080e7          	jalr	196(ra) # 1338 <fatfs_lba_of_cluster>
    327c:	f79ff06f          	j	31f4 <fatfs_sector_reader+0x74>
    3280:	00048593          	mv	a1,s1
    3284:	00040513          	mv	a0,s0
    3288:	00000097          	auipc	ra,0x0
    328c:	de8080e7          	jalr	-536(ra) # 3070 <fatfs_find_next_cluster>
    3290:	00050493          	mv	s1,a0
    3294:	001a8a93          	addi	s5,s5,1
    3298:	fc9ff06f          	j	3260 <fatfs_sector_reader+0xe0>
    329c:	24442783          	lw	a5,580(s0)
    32a0:	00a78c63          	beq	a5,a0,32b8 <fatfs_sector_reader+0x138>
    32a4:	03442783          	lw	a5,52(s0)
    32a8:	24a42223          	sw	a0,580(s0)
    32ac:	00100613          	li	a2,1
    32b0:	04440593          	addi	a1,s0,68
    32b4:	f55ff06f          	j	3208 <fatfs_sector_reader+0x88>
    32b8:	00100513          	li	a0,1
    32bc:	f09ff06f          	j	31c4 <fatfs_sector_reader+0x44>

000032c0 <fatfs_get_file_entry>:
    32c0:	eb010113          	addi	sp,sp,-336
    32c4:	14812423          	sw	s0,328(sp)
    32c8:	01810413          	addi	s0,sp,24
    32cc:	14912223          	sw	s1,324(sp)
    32d0:	15212023          	sw	s2,320(sp)
    32d4:	13312e23          	sw	s3,316(sp)
    32d8:	13412c23          	sw	s4,312(sp)
    32dc:	13512a23          	sw	s5,308(sp)
    32e0:	13612823          	sw	s6,304(sp)
    32e4:	14112623          	sw	ra,332(sp)
    32e8:	13712623          	sw	s7,300(sp)
    32ec:	13812423          	sw	s8,296(sp)
    32f0:	13912223          	sw	s9,292(sp)
    32f4:	13a12023          	sw	s10,288(sp)
    32f8:	00050493          	mv	s1,a0
    32fc:	00058a93          	mv	s5,a1
    3300:	00060913          	mv	s2,a2
    3304:	00068993          	mv	s3,a3
    3308:	10010ea3          	sb	zero,285(sp)
    330c:	11c10a13          	addi	s4,sp,284
    3310:	00040b13          	mv	s6,s0
    3314:	00040513          	mv	a0,s0
    3318:	00d00613          	li	a2,13
    331c:	00000593          	li	a1,0
    3320:	00d40413          	addi	s0,s0,13
    3324:	ffffd097          	auipc	ra,0xffffd
    3328:	3c4080e7          	jalr	964(ra) # 6e8 <memset>
    332c:	ff4414e3          	bne	s0,s4,3314 <fatfs_get_file_entry+0x54>
    3330:	00000a13          	li	s4,0
    3334:	24448c13          	addi	s8,s1,580
    3338:	00800c93          	li	s9,8
    333c:	02000b93          	li	s7,32
    3340:	00000693          	li	a3,0
    3344:	000a0613          	mv	a2,s4
    3348:	000a8593          	mv	a1,s5
    334c:	00048513          	mv	a0,s1
    3350:	00000097          	auipc	ra,0x0
    3354:	e30080e7          	jalr	-464(ra) # 3180 <fatfs_sector_reader>
    3358:	16050463          	beqz	a0,34c0 <fatfs_get_file_entry+0x200>
    335c:	04448413          	addi	s0,s1,68
    3360:	02e00d13          	li	s10,46
    3364:	00040513          	mv	a0,s0
    3368:	ffffe097          	auipc	ra,0xffffe
    336c:	69c080e7          	jalr	1692(ra) # 1a04 <fatfs_entry_lfn_text>
    3370:	02050263          	beqz	a0,3394 <fatfs_get_file_entry+0xd4>
    3374:	00040593          	mv	a1,s0
    3378:	000b0513          	mv	a0,s6
    337c:	ffffe097          	auipc	ra,0xffffe
    3380:	580080e7          	jalr	1408(ra) # 18fc <fatfs_lfn_cache_entry>
    3384:	02040413          	addi	s0,s0,32
    3388:	fd841ee3          	bne	s0,s8,3364 <fatfs_get_file_entry+0xa4>
    338c:	001a0a13          	addi	s4,s4,1
    3390:	fb1ff06f          	j	3340 <fatfs_get_file_entry+0x80>
    3394:	00040513          	mv	a0,s0
    3398:	ffffe097          	auipc	ra,0xffffe
    339c:	680080e7          	jalr	1664(ra) # 1a18 <fatfs_entry_lfn_invalid>
    33a0:	00050663          	beqz	a0,33ac <fatfs_get_file_entry+0xec>
    33a4:	10010ea3          	sb	zero,285(sp)
    33a8:	fddff06f          	j	3384 <fatfs_get_file_entry+0xc4>
    33ac:	00040593          	mv	a1,s0
    33b0:	000b0513          	mv	a0,s6
    33b4:	ffffe097          	auipc	ra,0xffffe
    33b8:	69c080e7          	jalr	1692(ra) # 1a50 <fatfs_entry_lfn_exists>
    33bc:	06050863          	beqz	a0,342c <fatfs_get_file_entry+0x16c>
    33c0:	000b0513          	mv	a0,s6
    33c4:	ffffe097          	auipc	ra,0xffffe
    33c8:	604080e7          	jalr	1540(ra) # 19c8 <fatfs_lfn_cache_get>
    33cc:	00090593          	mv	a1,s2
    33d0:	fffff097          	auipc	ra,0xfffff
    33d4:	e50080e7          	jalr	-432(ra) # 2220 <fatfs_compare_names>
    33d8:	fc0506e3          	beqz	a0,33a4 <fatfs_get_file_entry+0xe4>
    33dc:	02000613          	li	a2,32
    33e0:	00040593          	mv	a1,s0
    33e4:	00098513          	mv	a0,s3
    33e8:	ffffd097          	auipc	ra,0xffffd
    33ec:	31c080e7          	jalr	796(ra) # 704 <memcpy>
    33f0:	00100513          	li	a0,1
    33f4:	14c12083          	lw	ra,332(sp)
    33f8:	14812403          	lw	s0,328(sp)
    33fc:	14412483          	lw	s1,324(sp)
    3400:	14012903          	lw	s2,320(sp)
    3404:	13c12983          	lw	s3,316(sp)
    3408:	13812a03          	lw	s4,312(sp)
    340c:	13412a83          	lw	s5,308(sp)
    3410:	13012b03          	lw	s6,304(sp)
    3414:	12c12b83          	lw	s7,300(sp)
    3418:	12812c03          	lw	s8,296(sp)
    341c:	12412c83          	lw	s9,292(sp)
    3420:	12012d03          	lw	s10,288(sp)
    3424:	15010113          	addi	sp,sp,336
    3428:	00008067          	ret
    342c:	00040513          	mv	a0,s0
    3430:	ffffe097          	auipc	ra,0xffffe
    3434:	668080e7          	jalr	1640(ra) # 1a98 <fatfs_entry_sfn_only>
    3438:	f40506e3          	beqz	a0,3384 <fatfs_get_file_entry+0xc4>
    343c:	00d00613          	li	a2,13
    3440:	00000593          	li	a1,0
    3444:	00810513          	addi	a0,sp,8
    3448:	ffffd097          	auipc	ra,0xffffd
    344c:	2a0080e7          	jalr	672(ra) # 6e8 <memset>
    3450:	00000793          	li	a5,0
    3454:	00f406b3          	add	a3,s0,a5
    3458:	0006c683          	lbu	a3,0(a3)
    345c:	00810713          	addi	a4,sp,8
    3460:	00f70733          	add	a4,a4,a5
    3464:	00d70023          	sb	a3,0(a4)
    3468:	00178793          	addi	a5,a5,1
    346c:	ff9794e3          	bne	a5,s9,3454 <fatfs_get_file_entry+0x194>
    3470:	00844783          	lbu	a5,8(s0)
    3474:	00944683          	lbu	a3,9(s0)
    3478:	00100713          	li	a4,1
    347c:	00f108a3          	sb	a5,17(sp)
    3480:	00d10923          	sb	a3,18(sp)
    3484:	01769663          	bne	a3,s7,3490 <fatfs_get_file_entry+0x1d0>
    3488:	fe078793          	addi	a5,a5,-32
    348c:	00f03733          	snez	a4,a5
    3490:	00a44783          	lbu	a5,10(s0)
    3494:	00f109a3          	sb	a5,19(sp)
    3498:	01779463          	bne	a5,s7,34a0 <fatfs_get_file_entry+0x1e0>
    349c:	00070a63          	beqz	a4,34b0 <fatfs_get_file_entry+0x1f0>
    34a0:	00814703          	lbu	a4,8(sp)
    34a4:	02000793          	li	a5,32
    34a8:	01a70463          	beq	a4,s10,34b0 <fatfs_get_file_entry+0x1f0>
    34ac:	02e00793          	li	a5,46
    34b0:	00f10823          	sb	a5,16(sp)
    34b4:	00090593          	mv	a1,s2
    34b8:	00810513          	addi	a0,sp,8
    34bc:	f15ff06f          	j	33d0 <fatfs_get_file_entry+0x110>
    34c0:	00000513          	li	a0,0
    34c4:	f31ff06f          	j	33f4 <fatfs_get_file_entry+0x134>

000034c8 <_open_directory>:
    34c8:	eb010113          	addi	sp,sp,-336
    34cc:	13512a23          	sw	s5,308(sp)
    34d0:	00006ab7          	lui	s5,0x6
    34d4:	ec8a8793          	addi	a5,s5,-312 # 5ec8 <_fs>
    34d8:	14812423          	sw	s0,328(sp)
    34dc:	14912223          	sw	s1,324(sp)
    34e0:	15212023          	sw	s2,320(sp)
    34e4:	13312e23          	sw	s3,316(sp)
    34e8:	13412c23          	sw	s4,312(sp)
    34ec:	13612823          	sw	s6,304(sp)
    34f0:	0087a403          	lw	s0,8(a5)
    34f4:	14112623          	sw	ra,332(sp)
    34f8:	00050a13          	mv	s4,a0
    34fc:	00058913          	mv	s2,a1
    3500:	fffff097          	auipc	ra,0xfffff
    3504:	ad8080e7          	jalr	-1320(ra) # 1fd8 <fatfs_total_path_levels>
    3508:	00050993          	mv	s3,a0
    350c:	00000493          	li	s1,0
    3510:	fff00b13          	li	s6,-1
    3514:	0099d863          	bge	s3,s1,3524 <_open_directory+0x5c>
    3518:	00892023          	sw	s0,0(s2)
    351c:	00100513          	li	a0,1
    3520:	0240006f          	j	3544 <_open_directory+0x7c>
    3524:	10400693          	li	a3,260
    3528:	02c10613          	addi	a2,sp,44
    352c:	00048593          	mv	a1,s1
    3530:	000a0513          	mv	a0,s4
    3534:	fffff097          	auipc	ra,0xfffff
    3538:	b18080e7          	jalr	-1256(ra) # 204c <fatfs_get_substring>
    353c:	03651863          	bne	a0,s6,356c <_open_directory+0xa4>
    3540:	00000513          	li	a0,0
    3544:	14c12083          	lw	ra,332(sp)
    3548:	14812403          	lw	s0,328(sp)
    354c:	14412483          	lw	s1,324(sp)
    3550:	14012903          	lw	s2,320(sp)
    3554:	13c12983          	lw	s3,316(sp)
    3558:	13812a03          	lw	s4,312(sp)
    355c:	13412a83          	lw	s5,308(sp)
    3560:	13012b03          	lw	s6,304(sp)
    3564:	15010113          	addi	sp,sp,336
    3568:	00008067          	ret
    356c:	00c10693          	addi	a3,sp,12
    3570:	02c10613          	addi	a2,sp,44
    3574:	00040593          	mv	a1,s0
    3578:	ec8a8513          	addi	a0,s5,-312
    357c:	00000097          	auipc	ra,0x0
    3580:	d44080e7          	jalr	-700(ra) # 32c0 <fatfs_get_file_entry>
    3584:	fa050ee3          	beqz	a0,3540 <_open_directory+0x78>
    3588:	00c10513          	addi	a0,sp,12
    358c:	ffffe097          	auipc	ra,0xffffe
    3590:	548080e7          	jalr	1352(ra) # 1ad4 <fatfs_entry_is_dir>
    3594:	fa0506e3          	beqz	a0,3540 <_open_directory+0x78>
    3598:	02015403          	lhu	s0,32(sp)
    359c:	02615783          	lhu	a5,38(sp)
    35a0:	00148493          	addi	s1,s1,1
    35a4:	01041413          	slli	s0,s0,0x10
    35a8:	00f40433          	add	s0,s0,a5
    35ac:	f69ff06f          	j	3514 <_open_directory+0x4c>

000035b0 <fl_opendir>:
    35b0:	fe010113          	addi	sp,sp,-32
    35b4:	fff00793          	li	a5,-1
    35b8:	00f12623          	sw	a5,12(sp)
    35bc:	000067b7          	lui	a5,0x6
    35c0:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    35c4:	00812c23          	sw	s0,24(sp)
    35c8:	01212823          	sw	s2,16(sp)
    35cc:	00112e23          	sw	ra,28(sp)
    35d0:	00912a23          	sw	s1,20(sp)
    35d4:	00050913          	mv	s2,a0
    35d8:	00058413          	mv	s0,a1
    35dc:	00079663          	bnez	a5,35e8 <fl_opendir+0x38>
    35e0:	ffffe097          	auipc	ra,0xffffe
    35e4:	014080e7          	jalr	20(ra) # 15f4 <fl_init>
    35e8:	000064b7          	lui	s1,0x6
    35ec:	ec848793          	addi	a5,s1,-312 # 5ec8 <_fs>
    35f0:	03c7a783          	lw	a5,60(a5)
    35f4:	ec848493          	addi	s1,s1,-312
    35f8:	00078463          	beqz	a5,3600 <fl_opendir+0x50>
    35fc:	000780e7          	jalr	a5
    3600:	00090513          	mv	a0,s2
    3604:	fffff097          	auipc	ra,0xfffff
    3608:	9d4080e7          	jalr	-1580(ra) # 1fd8 <fatfs_total_path_levels>
    360c:	fff00793          	li	a5,-1
    3610:	02f51063          	bne	a0,a5,3630 <fl_opendir+0x80>
    3614:	0084a783          	lw	a5,8(s1)
    3618:	00f12623          	sw	a5,12(sp)
    361c:	00c12783          	lw	a5,12(sp)
    3620:	00042023          	sw	zero,0(s0)
    3624:	00040423          	sb	zero,8(s0)
    3628:	00f42223          	sw	a5,4(s0)
    362c:	0180006f          	j	3644 <fl_opendir+0x94>
    3630:	00c10593          	addi	a1,sp,12
    3634:	00090513          	mv	a0,s2
    3638:	00000097          	auipc	ra,0x0
    363c:	e90080e7          	jalr	-368(ra) # 34c8 <_open_directory>
    3640:	fc051ee3          	bnez	a0,361c <fl_opendir+0x6c>
    3644:	0404a783          	lw	a5,64(s1)
    3648:	00078463          	beqz	a5,3650 <fl_opendir+0xa0>
    364c:	000780e7          	jalr	a5
    3650:	00c12703          	lw	a4,12(sp)
    3654:	fff00793          	li	a5,-1
    3658:	00f71463          	bne	a4,a5,3660 <fl_opendir+0xb0>
    365c:	00000413          	li	s0,0
    3660:	01c12083          	lw	ra,28(sp)
    3664:	00040513          	mv	a0,s0
    3668:	01812403          	lw	s0,24(sp)
    366c:	01412483          	lw	s1,20(sp)
    3670:	01012903          	lw	s2,16(sp)
    3674:	02010113          	addi	sp,sp,32
    3678:	00008067          	ret

0000367c <fl_is_dir>:
    367c:	fe010113          	addi	sp,sp,-32
    3680:	00410593          	addi	a1,sp,4
    3684:	00112e23          	sw	ra,28(sp)
    3688:	00000097          	auipc	ra,0x0
    368c:	f28080e7          	jalr	-216(ra) # 35b0 <fl_opendir>
    3690:	01c12083          	lw	ra,28(sp)
    3694:	00a03533          	snez	a0,a0
    3698:	02010113          	addi	sp,sp,32
    369c:	00008067          	ret

000036a0 <_open_file>:
    36a0:	fc010113          	addi	sp,sp,-64
    36a4:	02812c23          	sw	s0,56(sp)
    36a8:	03312623          	sw	s3,44(sp)
    36ac:	02112e23          	sw	ra,60(sp)
    36b0:	02912a23          	sw	s1,52(sp)
    36b4:	03212823          	sw	s2,48(sp)
    36b8:	00050993          	mv	s3,a0
    36bc:	ffffe097          	auipc	ra,0xffffe
    36c0:	bc0080e7          	jalr	-1088(ra) # 127c <_allocate_file>
    36c4:	00050413          	mv	s0,a0
    36c8:	10050c63          	beqz	a0,37e0 <_open_file+0x140>
    36cc:	01450913          	addi	s2,a0,20
    36d0:	10400613          	li	a2,260
    36d4:	00000593          	li	a1,0
    36d8:	00090513          	mv	a0,s2
    36dc:	ffffd097          	auipc	ra,0xffffd
    36e0:	00c080e7          	jalr	12(ra) # 6e8 <memset>
    36e4:	11840493          	addi	s1,s0,280
    36e8:	10400613          	li	a2,260
    36ec:	00000593          	li	a1,0
    36f0:	00048513          	mv	a0,s1
    36f4:	ffffd097          	auipc	ra,0xffffd
    36f8:	ff4080e7          	jalr	-12(ra) # 6e8 <memset>
    36fc:	10400713          	li	a4,260
    3700:	00048693          	mv	a3,s1
    3704:	10400613          	li	a2,260
    3708:	00090593          	mv	a1,s2
    370c:	00098513          	mv	a0,s3
    3710:	fffff097          	auipc	ra,0xfffff
    3714:	a30080e7          	jalr	-1488(ra) # 2140 <fatfs_split_path>
    3718:	fff00793          	li	a5,-1
    371c:	00f51c63          	bne	a0,a5,3734 <_open_file+0x94>
    3720:	00040513          	mv	a0,s0
    3724:	ffffe097          	auipc	ra,0xffffe
    3728:	bcc080e7          	jalr	-1076(ra) # 12f0 <_free_file>
    372c:	00000413          	li	s0,0
    3730:	0b00006f          	j	37e0 <_open_file+0x140>
    3734:	00040513          	mv	a0,s0
    3738:	fffff097          	auipc	ra,0xfffff
    373c:	c58080e7          	jalr	-936(ra) # 2390 <_check_file_open>
    3740:	fe0510e3          	bnez	a0,3720 <_open_file+0x80>
    3744:	01444783          	lbu	a5,20(s0)
    3748:	0a079c63          	bnez	a5,3800 <_open_file+0x160>
    374c:	000067b7          	lui	a5,0x6
    3750:	ed07a783          	lw	a5,-304(a5) # 5ed0 <_fs+0x8>
    3754:	00f42023          	sw	a5,0(s0)
    3758:	00042583          	lw	a1,0(s0)
    375c:	00006937          	lui	s2,0x6
    3760:	00010693          	mv	a3,sp
    3764:	00048613          	mv	a2,s1
    3768:	ec890513          	addi	a0,s2,-312 # 5ec8 <_fs>
    376c:	00000097          	auipc	ra,0x0
    3770:	b54080e7          	jalr	-1196(ra) # 32c0 <fatfs_get_file_entry>
    3774:	fa0506e3          	beqz	a0,3720 <_open_file+0x80>
    3778:	00010513          	mv	a0,sp
    377c:	ffffe097          	auipc	ra,0xffffe
    3780:	368080e7          	jalr	872(ra) # 1ae4 <fatfs_entry_is_file>
    3784:	f8050ee3          	beqz	a0,3720 <_open_file+0x80>
    3788:	00b00613          	li	a2,11
    378c:	00010593          	mv	a1,sp
    3790:	21c40513          	addi	a0,s0,540
    3794:	ffffd097          	auipc	ra,0xffffd
    3798:	f70080e7          	jalr	-144(ra) # 704 <memcpy>
    379c:	01c12783          	lw	a5,28(sp)
    37a0:	01a15703          	lhu	a4,26(sp)
    37a4:	00042423          	sw	zero,8(s0)
    37a8:	00f42623          	sw	a5,12(s0)
    37ac:	01415783          	lhu	a5,20(sp)
    37b0:	42042a23          	sw	zero,1076(s0)
    37b4:	00042823          	sw	zero,16(s0)
    37b8:	01079793          	slli	a5,a5,0x10
    37bc:	00e787b3          	add	a5,a5,a4
    37c0:	00f42223          	sw	a5,4(s0)
    37c4:	fff00793          	li	a5,-1
    37c8:	42f42823          	sw	a5,1072(s0)
    37cc:	22f42423          	sw	a5,552(s0)
    37d0:	22f42623          	sw	a5,556(s0)
    37d4:	ec890513          	addi	a0,s2,-312
    37d8:	fffff097          	auipc	ra,0xfffff
    37dc:	7c4080e7          	jalr	1988(ra) # 2f9c <fatfs_fat_purge>
    37e0:	03c12083          	lw	ra,60(sp)
    37e4:	00040513          	mv	a0,s0
    37e8:	03812403          	lw	s0,56(sp)
    37ec:	03412483          	lw	s1,52(sp)
    37f0:	03012903          	lw	s2,48(sp)
    37f4:	02c12983          	lw	s3,44(sp)
    37f8:	04010113          	addi	sp,sp,64
    37fc:	00008067          	ret
    3800:	00040593          	mv	a1,s0
    3804:	00090513          	mv	a0,s2
    3808:	00000097          	auipc	ra,0x0
    380c:	cc0080e7          	jalr	-832(ra) # 34c8 <_open_directory>
    3810:	f40514e3          	bnez	a0,3758 <_open_file+0xb8>
    3814:	f0dff06f          	j	3720 <_open_file+0x80>

00003818 <fatfs_sfn_exists>:
    3818:	fe010113          	addi	sp,sp,-32
    381c:	00912a23          	sw	s1,20(sp)
    3820:	01212823          	sw	s2,16(sp)
    3824:	01312623          	sw	s3,12(sp)
    3828:	01412423          	sw	s4,8(sp)
    382c:	01512223          	sw	s5,4(sp)
    3830:	00112e23          	sw	ra,28(sp)
    3834:	00812c23          	sw	s0,24(sp)
    3838:	00050493          	mv	s1,a0
    383c:	00058993          	mv	s3,a1
    3840:	00060a13          	mv	s4,a2
    3844:	00000913          	li	s2,0
    3848:	24450a93          	addi	s5,a0,580
    384c:	00000693          	li	a3,0
    3850:	00090613          	mv	a2,s2
    3854:	00098593          	mv	a1,s3
    3858:	00048513          	mv	a0,s1
    385c:	00000097          	auipc	ra,0x0
    3860:	924080e7          	jalr	-1756(ra) # 3180 <fatfs_sector_reader>
    3864:	06050263          	beqz	a0,38c8 <fatfs_sfn_exists+0xb0>
    3868:	04448413          	addi	s0,s1,68
    386c:	00040513          	mv	a0,s0
    3870:	ffffe097          	auipc	ra,0xffffe
    3874:	194080e7          	jalr	404(ra) # 1a04 <fatfs_entry_lfn_text>
    3878:	02051e63          	bnez	a0,38b4 <fatfs_sfn_exists+0x9c>
    387c:	00040513          	mv	a0,s0
    3880:	ffffe097          	auipc	ra,0xffffe
    3884:	198080e7          	jalr	408(ra) # 1a18 <fatfs_entry_lfn_invalid>
    3888:	02051663          	bnez	a0,38b4 <fatfs_sfn_exists+0x9c>
    388c:	00040513          	mv	a0,s0
    3890:	ffffe097          	auipc	ra,0xffffe
    3894:	208080e7          	jalr	520(ra) # 1a98 <fatfs_entry_sfn_only>
    3898:	00050e63          	beqz	a0,38b4 <fatfs_sfn_exists+0x9c>
    389c:	00b00613          	li	a2,11
    38a0:	000a0593          	mv	a1,s4
    38a4:	00040513          	mv	a0,s0
    38a8:	ffffd097          	auipc	ra,0xffffd
    38ac:	ea0080e7          	jalr	-352(ra) # 748 <strncmp>
    38b0:	00050a63          	beqz	a0,38c4 <fatfs_sfn_exists+0xac>
    38b4:	02040413          	addi	s0,s0,32
    38b8:	fb541ae3          	bne	s0,s5,386c <fatfs_sfn_exists+0x54>
    38bc:	00190913          	addi	s2,s2,1
    38c0:	f8dff06f          	j	384c <fatfs_sfn_exists+0x34>
    38c4:	00100513          	li	a0,1
    38c8:	01c12083          	lw	ra,28(sp)
    38cc:	01812403          	lw	s0,24(sp)
    38d0:	01412483          	lw	s1,20(sp)
    38d4:	01012903          	lw	s2,16(sp)
    38d8:	00c12983          	lw	s3,12(sp)
    38dc:	00812a03          	lw	s4,8(sp)
    38e0:	00412a83          	lw	s5,4(sp)
    38e4:	02010113          	addi	sp,sp,32
    38e8:	00008067          	ret

000038ec <fatfs_update_file_length>:
    38ec:	03852783          	lw	a5,56(a0)
    38f0:	14078e63          	beqz	a5,3a4c <fatfs_update_file_length+0x160>
    38f4:	fd010113          	addi	sp,sp,-48
    38f8:	02912223          	sw	s1,36(sp)
    38fc:	03212023          	sw	s2,32(sp)
    3900:	01312e23          	sw	s3,28(sp)
    3904:	01412c23          	sw	s4,24(sp)
    3908:	01512a23          	sw	s5,20(sp)
    390c:	01612823          	sw	s6,16(sp)
    3910:	02112623          	sw	ra,44(sp)
    3914:	02812423          	sw	s0,40(sp)
    3918:	01712623          	sw	s7,12(sp)
    391c:	00050493          	mv	s1,a0
    3920:	00058a13          	mv	s4,a1
    3924:	00060a93          	mv	s5,a2
    3928:	00068913          	mv	s2,a3
    392c:	00000993          	li	s3,0
    3930:	24450b13          	addi	s6,a0,580
    3934:	00000693          	li	a3,0
    3938:	00098613          	mv	a2,s3
    393c:	000a0593          	mv	a1,s4
    3940:	00048513          	mv	a0,s1
    3944:	00000097          	auipc	ra,0x0
    3948:	83c080e7          	jalr	-1988(ra) # 3180 <fatfs_sector_reader>
    394c:	0c050863          	beqz	a0,3a1c <fatfs_update_file_length+0x130>
    3950:	04448413          	addi	s0,s1,68
    3954:	00040b93          	mv	s7,s0
    3958:	00040513          	mv	a0,s0
    395c:	ffffe097          	auipc	ra,0xffffe
    3960:	0a8080e7          	jalr	168(ra) # 1a04 <fatfs_entry_lfn_text>
    3964:	0a051463          	bnez	a0,3a0c <fatfs_update_file_length+0x120>
    3968:	00040513          	mv	a0,s0
    396c:	ffffe097          	auipc	ra,0xffffe
    3970:	0ac080e7          	jalr	172(ra) # 1a18 <fatfs_entry_lfn_invalid>
    3974:	08051c63          	bnez	a0,3a0c <fatfs_update_file_length+0x120>
    3978:	00040513          	mv	a0,s0
    397c:	ffffe097          	auipc	ra,0xffffe
    3980:	11c080e7          	jalr	284(ra) # 1a98 <fatfs_entry_sfn_only>
    3984:	08050463          	beqz	a0,3a0c <fatfs_update_file_length+0x120>
    3988:	00b00613          	li	a2,11
    398c:	000a8593          	mv	a1,s5
    3990:	00040513          	mv	a0,s0
    3994:	ffffd097          	auipc	ra,0xffffd
    3998:	db4080e7          	jalr	-588(ra) # 748 <strncmp>
    399c:	06051863          	bnez	a0,3a0c <fatfs_update_file_length+0x120>
    39a0:	00895793          	srli	a5,s2,0x8
    39a4:	01240e23          	sb	s2,28(s0)
    39a8:	00f40ea3          	sb	a5,29(s0)
    39ac:	01095793          	srli	a5,s2,0x10
    39b0:	01895913          	srli	s2,s2,0x18
    39b4:	00f40f23          	sb	a5,30(s0)
    39b8:	01240fa3          	sb	s2,31(s0)
    39bc:	00040593          	mv	a1,s0
    39c0:	02000613          	li	a2,32
    39c4:	00040513          	mv	a0,s0
    39c8:	ffffd097          	auipc	ra,0xffffd
    39cc:	d3c080e7          	jalr	-708(ra) # 704 <memcpy>
    39d0:	02812403          	lw	s0,40(sp)
    39d4:	0384a783          	lw	a5,56(s1)
    39d8:	2444a503          	lw	a0,580(s1)
    39dc:	02c12083          	lw	ra,44(sp)
    39e0:	02412483          	lw	s1,36(sp)
    39e4:	02012903          	lw	s2,32(sp)
    39e8:	01c12983          	lw	s3,28(sp)
    39ec:	01812a03          	lw	s4,24(sp)
    39f0:	01412a83          	lw	s5,20(sp)
    39f4:	01012b03          	lw	s6,16(sp)
    39f8:	000b8593          	mv	a1,s7
    39fc:	00c12b83          	lw	s7,12(sp)
    3a00:	00100613          	li	a2,1
    3a04:	03010113          	addi	sp,sp,48
    3a08:	00078067          	jr	a5
    3a0c:	02040413          	addi	s0,s0,32
    3a10:	f56414e3          	bne	s0,s6,3958 <fatfs_update_file_length+0x6c>
    3a14:	00198993          	addi	s3,s3,1
    3a18:	f1dff06f          	j	3934 <fatfs_update_file_length+0x48>
    3a1c:	02c12083          	lw	ra,44(sp)
    3a20:	02812403          	lw	s0,40(sp)
    3a24:	02412483          	lw	s1,36(sp)
    3a28:	02012903          	lw	s2,32(sp)
    3a2c:	01c12983          	lw	s3,28(sp)
    3a30:	01812a03          	lw	s4,24(sp)
    3a34:	01412a83          	lw	s5,20(sp)
    3a38:	01012b03          	lw	s6,16(sp)
    3a3c:	00c12b83          	lw	s7,12(sp)
    3a40:	00000513          	li	a0,0
    3a44:	03010113          	addi	sp,sp,48
    3a48:	00008067          	ret
    3a4c:	00000513          	li	a0,0
    3a50:	00008067          	ret

00003a54 <fatfs_mark_file_deleted>:
    3a54:	03852783          	lw	a5,56(a0)
    3a58:	12078c63          	beqz	a5,3b90 <fatfs_mark_file_deleted+0x13c>
    3a5c:	fe010113          	addi	sp,sp,-32
    3a60:	00912a23          	sw	s1,20(sp)
    3a64:	01212823          	sw	s2,16(sp)
    3a68:	01312623          	sw	s3,12(sp)
    3a6c:	01412423          	sw	s4,8(sp)
    3a70:	01512223          	sw	s5,4(sp)
    3a74:	00112e23          	sw	ra,28(sp)
    3a78:	00812c23          	sw	s0,24(sp)
    3a7c:	01612023          	sw	s6,0(sp)
    3a80:	00050493          	mv	s1,a0
    3a84:	00058993          	mv	s3,a1
    3a88:	00060a13          	mv	s4,a2
    3a8c:	00000913          	li	s2,0
    3a90:	24450a93          	addi	s5,a0,580
    3a94:	00000693          	li	a3,0
    3a98:	00090613          	mv	a2,s2
    3a9c:	00098593          	mv	a1,s3
    3aa0:	00048513          	mv	a0,s1
    3aa4:	fffff097          	auipc	ra,0xfffff
    3aa8:	6dc080e7          	jalr	1756(ra) # 3180 <fatfs_sector_reader>
    3aac:	0a050c63          	beqz	a0,3b64 <fatfs_mark_file_deleted+0x110>
    3ab0:	04448413          	addi	s0,s1,68
    3ab4:	00040b13          	mv	s6,s0
    3ab8:	00040513          	mv	a0,s0
    3abc:	ffffe097          	auipc	ra,0xffffe
    3ac0:	f48080e7          	jalr	-184(ra) # 1a04 <fatfs_entry_lfn_text>
    3ac4:	08051863          	bnez	a0,3b54 <fatfs_mark_file_deleted+0x100>
    3ac8:	00040513          	mv	a0,s0
    3acc:	ffffe097          	auipc	ra,0xffffe
    3ad0:	f4c080e7          	jalr	-180(ra) # 1a18 <fatfs_entry_lfn_invalid>
    3ad4:	08051063          	bnez	a0,3b54 <fatfs_mark_file_deleted+0x100>
    3ad8:	00040513          	mv	a0,s0
    3adc:	ffffe097          	auipc	ra,0xffffe
    3ae0:	fbc080e7          	jalr	-68(ra) # 1a98 <fatfs_entry_sfn_only>
    3ae4:	06050863          	beqz	a0,3b54 <fatfs_mark_file_deleted+0x100>
    3ae8:	00b00613          	li	a2,11
    3aec:	000a0593          	mv	a1,s4
    3af0:	00040513          	mv	a0,s0
    3af4:	ffffd097          	auipc	ra,0xffffd
    3af8:	c54080e7          	jalr	-940(ra) # 748 <strncmp>
    3afc:	04051c63          	bnez	a0,3b54 <fatfs_mark_file_deleted+0x100>
    3b00:	fe500793          	li	a5,-27
    3b04:	00f40023          	sb	a5,0(s0)
    3b08:	00040593          	mv	a1,s0
    3b0c:	02000613          	li	a2,32
    3b10:	00040513          	mv	a0,s0
    3b14:	ffffd097          	auipc	ra,0xffffd
    3b18:	bf0080e7          	jalr	-1040(ra) # 704 <memcpy>
    3b1c:	01812403          	lw	s0,24(sp)
    3b20:	0384a783          	lw	a5,56(s1)
    3b24:	2444a503          	lw	a0,580(s1)
    3b28:	01c12083          	lw	ra,28(sp)
    3b2c:	01412483          	lw	s1,20(sp)
    3b30:	01012903          	lw	s2,16(sp)
    3b34:	00c12983          	lw	s3,12(sp)
    3b38:	00812a03          	lw	s4,8(sp)
    3b3c:	00412a83          	lw	s5,4(sp)
    3b40:	000b0593          	mv	a1,s6
    3b44:	00012b03          	lw	s6,0(sp)
    3b48:	00100613          	li	a2,1
    3b4c:	02010113          	addi	sp,sp,32
    3b50:	00078067          	jr	a5
    3b54:	02040413          	addi	s0,s0,32
    3b58:	f75410e3          	bne	s0,s5,3ab8 <fatfs_mark_file_deleted+0x64>
    3b5c:	00190913          	addi	s2,s2,1
    3b60:	f35ff06f          	j	3a94 <fatfs_mark_file_deleted+0x40>
    3b64:	01c12083          	lw	ra,28(sp)
    3b68:	01812403          	lw	s0,24(sp)
    3b6c:	01412483          	lw	s1,20(sp)
    3b70:	01012903          	lw	s2,16(sp)
    3b74:	00c12983          	lw	s3,12(sp)
    3b78:	00812a03          	lw	s4,8(sp)
    3b7c:	00412a83          	lw	s5,4(sp)
    3b80:	00012b03          	lw	s6,0(sp)
    3b84:	00000513          	li	a0,0
    3b88:	02010113          	addi	sp,sp,32
    3b8c:	00008067          	ret
    3b90:	00000513          	li	a0,0
    3b94:	00008067          	ret

00003b98 <fatfs_list_directory_next>:
    3b98:	ec010113          	addi	sp,sp,-320
    3b9c:	13212823          	sw	s2,304(sp)
    3ba0:	13312623          	sw	s3,300(sp)
    3ba4:	13412423          	sw	s4,296(sp)
    3ba8:	13512223          	sw	s5,292(sp)
    3bac:	12112e23          	sw	ra,316(sp)
    3bb0:	12812c23          	sw	s0,312(sp)
    3bb4:	12912a23          	sw	s1,308(sp)
    3bb8:	00050a13          	mv	s4,a0
    3bbc:	00058913          	mv	s2,a1
    3bc0:	00060993          	mv	s3,a2
    3bc4:	10010ea3          	sb	zero,285(sp)
    3bc8:	00f00a93          	li	s5,15
    3bcc:	00092603          	lw	a2,0(s2)
    3bd0:	00492583          	lw	a1,4(s2)
    3bd4:	00000693          	li	a3,0
    3bd8:	000a0513          	mv	a0,s4
    3bdc:	fffff097          	auipc	ra,0xfffff
    3be0:	5a4080e7          	jalr	1444(ra) # 3180 <fatfs_sector_reader>
    3be4:	12050063          	beqz	a0,3d04 <fatfs_list_directory_next+0x16c>
    3be8:	00894483          	lbu	s1,8(s2)
    3bec:	00549413          	slli	s0,s1,0x5
    3bf0:	04440413          	addi	s0,s0,68
    3bf4:	008a0433          	add	s0,s4,s0
    3bf8:	009afc63          	bgeu	s5,s1,3c10 <fatfs_list_directory_next+0x78>
    3bfc:	00092783          	lw	a5,0(s2)
    3c00:	00090423          	sb	zero,8(s2)
    3c04:	00178793          	addi	a5,a5,1
    3c08:	00f92023          	sw	a5,0(s2)
    3c0c:	fc1ff06f          	j	3bcc <fatfs_list_directory_next+0x34>
    3c10:	00040513          	mv	a0,s0
    3c14:	ffffe097          	auipc	ra,0xffffe
    3c18:	df0080e7          	jalr	-528(ra) # 1a04 <fatfs_entry_lfn_text>
    3c1c:	02050263          	beqz	a0,3c40 <fatfs_list_directory_next+0xa8>
    3c20:	00040593          	mv	a1,s0
    3c24:	01810513          	addi	a0,sp,24
    3c28:	ffffe097          	auipc	ra,0xffffe
    3c2c:	cd4080e7          	jalr	-812(ra) # 18fc <fatfs_lfn_cache_entry>
    3c30:	00148493          	addi	s1,s1,1
    3c34:	0ff4f493          	zext.b	s1,s1
    3c38:	02040413          	addi	s0,s0,32
    3c3c:	fbdff06f          	j	3bf8 <fatfs_list_directory_next+0x60>
    3c40:	00040513          	mv	a0,s0
    3c44:	ffffe097          	auipc	ra,0xffffe
    3c48:	dd4080e7          	jalr	-556(ra) # 1a18 <fatfs_entry_lfn_invalid>
    3c4c:	00050663          	beqz	a0,3c58 <fatfs_list_directory_next+0xc0>
    3c50:	10010ea3          	sb	zero,285(sp)
    3c54:	fddff06f          	j	3c30 <fatfs_list_directory_next+0x98>
    3c58:	00040593          	mv	a1,s0
    3c5c:	01810513          	addi	a0,sp,24
    3c60:	ffffe097          	auipc	ra,0xffffe
    3c64:	df0080e7          	jalr	-528(ra) # 1a50 <fatfs_entry_lfn_exists>
    3c68:	0c050063          	beqz	a0,3d28 <fatfs_list_directory_next+0x190>
    3c6c:	01810513          	addi	a0,sp,24
    3c70:	ffffe097          	auipc	ra,0xffffe
    3c74:	d58080e7          	jalr	-680(ra) # 19c8 <fatfs_lfn_cache_get>
    3c78:	00050593          	mv	a1,a0
    3c7c:	10300613          	li	a2,259
    3c80:	00098513          	mv	a0,s3
    3c84:	ffffd097          	auipc	ra,0xffffd
    3c88:	b04080e7          	jalr	-1276(ra) # 788 <strncpy>
    3c8c:	00040513          	mv	a0,s0
    3c90:	ffffe097          	auipc	ra,0xffffe
    3c94:	e44080e7          	jalr	-444(ra) # 1ad4 <fatfs_entry_is_dir>
    3c98:	00a03533          	snez	a0,a0
    3c9c:	10a98223          	sb	a0,260(s3)
    3ca0:	01d44783          	lbu	a5,29(s0)
    3ca4:	01c44703          	lbu	a4,28(s0)
    3ca8:	00148493          	addi	s1,s1,1
    3cac:	00879793          	slli	a5,a5,0x8
    3cb0:	00e7e7b3          	or	a5,a5,a4
    3cb4:	01e44703          	lbu	a4,30(s0)
    3cb8:	00100513          	li	a0,1
    3cbc:	01071713          	slli	a4,a4,0x10
    3cc0:	00f76733          	or	a4,a4,a5
    3cc4:	01f44783          	lbu	a5,31(s0)
    3cc8:	01879793          	slli	a5,a5,0x18
    3ccc:	00e7e7b3          	or	a5,a5,a4
    3cd0:	10f9a623          	sw	a5,268(s3)
    3cd4:	01544783          	lbu	a5,21(s0)
    3cd8:	01444703          	lbu	a4,20(s0)
    3cdc:	01a44683          	lbu	a3,26(s0)
    3ce0:	00879793          	slli	a5,a5,0x8
    3ce4:	00e7e7b3          	or	a5,a5,a4
    3ce8:	01b44703          	lbu	a4,27(s0)
    3cec:	01079793          	slli	a5,a5,0x10
    3cf0:	00871713          	slli	a4,a4,0x8
    3cf4:	00d76733          	or	a4,a4,a3
    3cf8:	00e7e7b3          	or	a5,a5,a4
    3cfc:	10f9a423          	sw	a5,264(s3)
    3d00:	00990423          	sb	s1,8(s2)
    3d04:	13c12083          	lw	ra,316(sp)
    3d08:	13812403          	lw	s0,312(sp)
    3d0c:	13412483          	lw	s1,308(sp)
    3d10:	13012903          	lw	s2,304(sp)
    3d14:	12c12983          	lw	s3,300(sp)
    3d18:	12812a03          	lw	s4,296(sp)
    3d1c:	12412a83          	lw	s5,292(sp)
    3d20:	14010113          	addi	sp,sp,320
    3d24:	00008067          	ret
    3d28:	00040513          	mv	a0,s0
    3d2c:	ffffe097          	auipc	ra,0xffffe
    3d30:	d6c080e7          	jalr	-660(ra) # 1a98 <fatfs_entry_sfn_only>
    3d34:	ee050ee3          	beqz	a0,3c30 <fatfs_list_directory_next+0x98>
    3d38:	00d00613          	li	a2,13
    3d3c:	00000593          	li	a1,0
    3d40:	00810513          	addi	a0,sp,8
    3d44:	10010ea3          	sb	zero,285(sp)
    3d48:	ffffd097          	auipc	ra,0xffffd
    3d4c:	9a0080e7          	jalr	-1632(ra) # 6e8 <memset>
    3d50:	00000793          	li	a5,0
    3d54:	00800713          	li	a4,8
    3d58:	00f40633          	add	a2,s0,a5
    3d5c:	00064603          	lbu	a2,0(a2)
    3d60:	00810693          	addi	a3,sp,8
    3d64:	00f686b3          	add	a3,a3,a5
    3d68:	00c68023          	sb	a2,0(a3)
    3d6c:	00178793          	addi	a5,a5,1
    3d70:	fee794e3          	bne	a5,a4,3d58 <fatfs_list_directory_next+0x1c0>
    3d74:	00844783          	lbu	a5,8(s0)
    3d78:	00944683          	lbu	a3,9(s0)
    3d7c:	02000613          	li	a2,32
    3d80:	00f108a3          	sb	a5,17(sp)
    3d84:	00d10923          	sb	a3,18(sp)
    3d88:	00100713          	li	a4,1
    3d8c:	00c69663          	bne	a3,a2,3d98 <fatfs_list_directory_next+0x200>
    3d90:	fe078793          	addi	a5,a5,-32
    3d94:	00f03733          	snez	a4,a5
    3d98:	00a44783          	lbu	a5,10(s0)
    3d9c:	02000693          	li	a3,32
    3da0:	00f109a3          	sb	a5,19(sp)
    3da4:	00d79463          	bne	a5,a3,3dac <fatfs_list_directory_next+0x214>
    3da8:	00070c63          	beqz	a4,3dc0 <fatfs_list_directory_next+0x228>
    3dac:	00814683          	lbu	a3,8(sp)
    3db0:	02e00713          	li	a4,46
    3db4:	02000793          	li	a5,32
    3db8:	00e68463          	beq	a3,a4,3dc0 <fatfs_list_directory_next+0x228>
    3dbc:	02e00793          	li	a5,46
    3dc0:	00810593          	addi	a1,sp,8
    3dc4:	00098513          	mv	a0,s3
    3dc8:	00f10823          	sb	a5,16(sp)
    3dcc:	ffffe097          	auipc	ra,0xffffe
    3dd0:	690080e7          	jalr	1680(ra) # 245c <fatfs_get_sfn_display_name>
    3dd4:	eb9ff06f          	j	3c8c <fatfs_list_directory_next+0xf4>

00003dd8 <fl_readdir>:
    3dd8:	000067b7          	lui	a5,0x6
    3ddc:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    3de0:	fe010113          	addi	sp,sp,-32
    3de4:	00912a23          	sw	s1,20(sp)
    3de8:	01212823          	sw	s2,16(sp)
    3dec:	00112e23          	sw	ra,28(sp)
    3df0:	00812c23          	sw	s0,24(sp)
    3df4:	01312623          	sw	s3,12(sp)
    3df8:	00050493          	mv	s1,a0
    3dfc:	00058913          	mv	s2,a1
    3e00:	00079663          	bnez	a5,3e0c <fl_readdir+0x34>
    3e04:	ffffd097          	auipc	ra,0xffffd
    3e08:	7f0080e7          	jalr	2032(ra) # 15f4 <fl_init>
    3e0c:	00006437          	lui	s0,0x6
    3e10:	ec840793          	addi	a5,s0,-312 # 5ec8 <_fs>
    3e14:	03c7a783          	lw	a5,60(a5)
    3e18:	ec840993          	addi	s3,s0,-312
    3e1c:	00078463          	beqz	a5,3e24 <fl_readdir+0x4c>
    3e20:	000780e7          	jalr	a5
    3e24:	ec840513          	addi	a0,s0,-312
    3e28:	00090613          	mv	a2,s2
    3e2c:	00048593          	mv	a1,s1
    3e30:	00000097          	auipc	ra,0x0
    3e34:	d68080e7          	jalr	-664(ra) # 3b98 <fatfs_list_directory_next>
    3e38:	0409a783          	lw	a5,64(s3)
    3e3c:	00050413          	mv	s0,a0
    3e40:	00078463          	beqz	a5,3e48 <fl_readdir+0x70>
    3e44:	000780e7          	jalr	a5
    3e48:	01c12083          	lw	ra,28(sp)
    3e4c:	00143513          	seqz	a0,s0
    3e50:	01812403          	lw	s0,24(sp)
    3e54:	01412483          	lw	s1,20(sp)
    3e58:	01012903          	lw	s2,16(sp)
    3e5c:	00c12983          	lw	s3,12(sp)
    3e60:	40a00533          	neg	a0,a0
    3e64:	02010113          	addi	sp,sp,32
    3e68:	00008067          	ret

00003e6c <fl_listdirectory>:
    3e6c:	000067b7          	lui	a5,0x6
    3e70:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    3e74:	ed010113          	addi	sp,sp,-304
    3e78:	12912223          	sw	s1,292(sp)
    3e7c:	12112623          	sw	ra,300(sp)
    3e80:	12812423          	sw	s0,296(sp)
    3e84:	13212023          	sw	s2,288(sp)
    3e88:	00050493          	mv	s1,a0
    3e8c:	00079663          	bnez	a5,3e98 <fl_listdirectory+0x2c>
    3e90:	ffffd097          	auipc	ra,0xffffd
    3e94:	764080e7          	jalr	1892(ra) # 15f4 <fl_init>
    3e98:	000067b7          	lui	a5,0x6
    3e9c:	ec878713          	addi	a4,a5,-312 # 5ec8 <_fs>
    3ea0:	03c72703          	lw	a4,60(a4)
    3ea4:	ec878413          	addi	s0,a5,-312
    3ea8:	00070463          	beqz	a4,3eb0 <fl_listdirectory+0x44>
    3eac:	000700e7          	jalr	a4
    3eb0:	00006537          	lui	a0,0x6
    3eb4:	00048593          	mv	a1,s1
    3eb8:	da450513          	addi	a0,a0,-604 # 5da4 <font+0x2f8>
    3ebc:	ffffd097          	auipc	ra,0xffffd
    3ec0:	e68080e7          	jalr	-408(ra) # d24 <printf>
    3ec4:	00410593          	addi	a1,sp,4
    3ec8:	00048513          	mv	a0,s1
    3ecc:	fffff097          	auipc	ra,0xfffff
    3ed0:	6e4080e7          	jalr	1764(ra) # 35b0 <fl_opendir>
    3ed4:	02050063          	beqz	a0,3ef4 <fl_listdirectory+0x88>
    3ed8:	000064b7          	lui	s1,0x6
    3edc:	00006937          	lui	s2,0x6
    3ee0:	01010593          	addi	a1,sp,16
    3ee4:	00410513          	addi	a0,sp,4
    3ee8:	00000097          	auipc	ra,0x0
    3eec:	ef0080e7          	jalr	-272(ra) # 3dd8 <fl_readdir>
    3ef0:	02050263          	beqz	a0,3f14 <fl_listdirectory+0xa8>
    3ef4:	04042783          	lw	a5,64(s0)
    3ef8:	04078863          	beqz	a5,3f48 <fl_listdirectory+0xdc>
    3efc:	12812403          	lw	s0,296(sp)
    3f00:	12c12083          	lw	ra,300(sp)
    3f04:	12412483          	lw	s1,292(sp)
    3f08:	12012903          	lw	s2,288(sp)
    3f0c:	13010113          	addi	sp,sp,304
    3f10:	00078067          	jr	a5
    3f14:	11414783          	lbu	a5,276(sp)
    3f18:	00078c63          	beqz	a5,3f30 <fl_listdirectory+0xc4>
    3f1c:	01010593          	addi	a1,sp,16
    3f20:	db890513          	addi	a0,s2,-584 # 5db8 <font+0x30c>
    3f24:	ffffd097          	auipc	ra,0xffffd
    3f28:	e00080e7          	jalr	-512(ra) # d24 <printf>
    3f2c:	fb5ff06f          	j	3ee0 <fl_listdirectory+0x74>
    3f30:	11c12603          	lw	a2,284(sp)
    3f34:	01010593          	addi	a1,sp,16
    3f38:	dc448513          	addi	a0,s1,-572 # 5dc4 <font+0x318>
    3f3c:	ffffd097          	auipc	ra,0xffffd
    3f40:	de8080e7          	jalr	-536(ra) # d24 <printf>
    3f44:	f9dff06f          	j	3ee0 <fl_listdirectory+0x74>
    3f48:	12c12083          	lw	ra,300(sp)
    3f4c:	12812403          	lw	s0,296(sp)
    3f50:	12412483          	lw	s1,292(sp)
    3f54:	12012903          	lw	s2,288(sp)
    3f58:	13010113          	addi	sp,sp,304
    3f5c:	00008067          	ret

00003f60 <_read_sectors>:
    3f60:	fd010113          	addi	sp,sp,-48
    3f64:	01612823          	sw	s6,16(sp)
    3f68:	00006b37          	lui	s6,0x6
    3f6c:	01512a23          	sw	s5,20(sp)
    3f70:	ec8b4a83          	lbu	s5,-312(s6) # 5ec8 <_fs>
    3f74:	01412c23          	sw	s4,24(sp)
    3f78:	00058a13          	mv	s4,a1
    3f7c:	02912223          	sw	s1,36(sp)
    3f80:	000a8593          	mv	a1,s5
    3f84:	00050493          	mv	s1,a0
    3f88:	000a0513          	mv	a0,s4
    3f8c:	02112623          	sw	ra,44(sp)
    3f90:	02812423          	sw	s0,40(sp)
    3f94:	03212023          	sw	s2,32(sp)
    3f98:	00068413          	mv	s0,a3
    3f9c:	01712623          	sw	s7,12(sp)
    3fa0:	01812423          	sw	s8,8(sp)
    3fa4:	01312e23          	sw	s3,28(sp)
    3fa8:	00060c13          	mv	s8,a2
    3fac:	ffffc097          	auipc	ra,0xffffc
    3fb0:	668080e7          	jalr	1640(ra) # 614 <__udivsi3>
    3fb4:	00050913          	mv	s2,a0
    3fb8:	000a8593          	mv	a1,s5
    3fbc:	000a0513          	mv	a0,s4
    3fc0:	ffffc097          	auipc	ra,0xffffc
    3fc4:	69c080e7          	jalr	1692(ra) # 65c <__umodsi3>
    3fc8:	00a407b3          	add	a5,s0,a0
    3fcc:	00050b93          	mv	s7,a0
    3fd0:	00fafe63          	bgeu	s5,a5,3fec <_read_sectors+0x8c>
    3fd4:	00090593          	mv	a1,s2
    3fd8:	000a8513          	mv	a0,s5
    3fdc:	ffffd097          	auipc	ra,0xffffd
    3fe0:	e84080e7          	jalr	-380(ra) # e60 <__mulsi3>
    3fe4:	414a87b3          	sub	a5,s5,s4
    3fe8:	00f50433          	add	s0,a0,a5
    3fec:	2284a983          	lw	s3,552(s1)
    3ff0:	01299c63          	bne	s3,s2,4008 <_read_sectors+0xa8>
    3ff4:	22c4a583          	lw	a1,556(s1)
    3ff8:	fff00793          	li	a5,-1
    3ffc:	02f59863          	bne	a1,a5,402c <_read_sectors+0xcc>
    4000:	00000413          	li	s0,0
    4004:	0500006f          	j	4054 <_read_sectors+0xf4>
    4008:	095a6063          	bltu	s4,s5,4088 <_read_sectors+0x128>
    400c:	00198793          	addi	a5,s3,1
    4010:	07279c63          	bne	a5,s2,4088 <_read_sectors+0x128>
    4014:	22c4a583          	lw	a1,556(s1)
    4018:	0729ee63          	bltu	s3,s2,4094 <_read_sectors+0x134>
    401c:	fff00793          	li	a5,-1
    4020:	fef580e3          	beq	a1,a5,4000 <_read_sectors+0xa0>
    4024:	22b4a623          	sw	a1,556(s1)
    4028:	2324a423          	sw	s2,552(s1)
    402c:	ec8b0513          	addi	a0,s6,-312
    4030:	ffffd097          	auipc	ra,0xffffd
    4034:	308080e7          	jalr	776(ra) # 1338 <fatfs_lba_of_cluster>
    4038:	017505b3          	add	a1,a0,s7
    403c:	00040693          	mv	a3,s0
    4040:	000c0613          	mv	a2,s8
    4044:	ec8b0513          	addi	a0,s6,-312
    4048:	ffffd097          	auipc	ra,0xffffd
    404c:	340080e7          	jalr	832(ra) # 1388 <fatfs_sector_read>
    4050:	fa0508e3          	beqz	a0,4000 <_read_sectors+0xa0>
    4054:	02c12083          	lw	ra,44(sp)
    4058:	00040513          	mv	a0,s0
    405c:	02812403          	lw	s0,40(sp)
    4060:	02412483          	lw	s1,36(sp)
    4064:	02012903          	lw	s2,32(sp)
    4068:	01c12983          	lw	s3,28(sp)
    406c:	01812a03          	lw	s4,24(sp)
    4070:	01412a83          	lw	s5,20(sp)
    4074:	01012b03          	lw	s6,16(sp)
    4078:	00c12b83          	lw	s7,12(sp)
    407c:	00812c03          	lw	s8,8(sp)
    4080:	03010113          	addi	sp,sp,48
    4084:	00008067          	ret
    4088:	0044a583          	lw	a1,4(s1)
    408c:	00000993          	li	s3,0
    4090:	f89ff06f          	j	4018 <_read_sectors+0xb8>
    4094:	ec8b0513          	addi	a0,s6,-312
    4098:	fffff097          	auipc	ra,0xfffff
    409c:	fd8080e7          	jalr	-40(ra) # 3070 <fatfs_find_next_cluster>
    40a0:	00050593          	mv	a1,a0
    40a4:	00198993          	addi	s3,s3,1
    40a8:	f71ff06f          	j	4018 <_read_sectors+0xb8>

000040ac <fatfs_set_fs_info_next_free_cluster>:
    40ac:	03052783          	lw	a5,48(a0)
    40b0:	0a078863          	beqz	a5,4160 <fatfs_set_fs_info_next_free_cluster+0xb4>
    40b4:	ff010113          	addi	sp,sp,-16
    40b8:	01c52783          	lw	a5,28(a0)
    40bc:	01212023          	sw	s2,0(sp)
    40c0:	00058913          	mv	s2,a1
    40c4:	01855583          	lhu	a1,24(a0)
    40c8:	00812423          	sw	s0,8(sp)
    40cc:	00912223          	sw	s1,4(sp)
    40d0:	00f585b3          	add	a1,a1,a5
    40d4:	00112623          	sw	ra,12(sp)
    40d8:	00050493          	mv	s1,a0
    40dc:	ffffd097          	auipc	ra,0xffffd
    40e0:	f3c080e7          	jalr	-196(ra) # 1018 <fatfs_fat_read_sector>
    40e4:	00050413          	mv	s0,a0
    40e8:	06050063          	beqz	a0,4148 <fatfs_set_fs_info_next_free_cluster+0x9c>
    40ec:	20852783          	lw	a5,520(a0)
    40f0:	00895713          	srli	a4,s2,0x8
    40f4:	1f278623          	sb	s2,492(a5)
    40f8:	20852783          	lw	a5,520(a0)
    40fc:	1ee786a3          	sb	a4,493(a5)
    4100:	20852783          	lw	a5,520(a0)
    4104:	01095713          	srli	a4,s2,0x10
    4108:	1ee78723          	sb	a4,494(a5)
    410c:	20852783          	lw	a5,520(a0)
    4110:	01895713          	srli	a4,s2,0x18
    4114:	1ee787a3          	sb	a4,495(a5)
    4118:	00100793          	li	a5,1
    411c:	20f52223          	sw	a5,516(a0)
    4120:	0384a783          	lw	a5,56(s1)
    4124:	0324a223          	sw	s2,36(s1)
    4128:	00078a63          	beqz	a5,413c <fatfs_set_fs_info_next_free_cluster+0x90>
    412c:	00050593          	mv	a1,a0
    4130:	20052503          	lw	a0,512(a0)
    4134:	00100613          	li	a2,1
    4138:	000780e7          	jalr	a5
    413c:	fff00793          	li	a5,-1
    4140:	20f42023          	sw	a5,512(s0)
    4144:	20042223          	sw	zero,516(s0)
    4148:	00c12083          	lw	ra,12(sp)
    414c:	00812403          	lw	s0,8(sp)
    4150:	00412483          	lw	s1,4(sp)
    4154:	00012903          	lw	s2,0(sp)
    4158:	01010113          	addi	sp,sp,16
    415c:	00008067          	ret
    4160:	00008067          	ret

00004164 <fatfs_find_blank_cluster>:
    4164:	fe010113          	addi	sp,sp,-32
    4168:	01312623          	sw	s3,12(sp)
    416c:	01512223          	sw	s5,4(sp)
    4170:	000109b7          	lui	s3,0x10
    4174:	10000ab7          	lui	s5,0x10000
    4178:	00912a23          	sw	s1,20(sp)
    417c:	01212823          	sw	s2,16(sp)
    4180:	01412423          	sw	s4,8(sp)
    4184:	00112e23          	sw	ra,28(sp)
    4188:	00812c23          	sw	s0,24(sp)
    418c:	00050913          	mv	s2,a0
    4190:	00058493          	mv	s1,a1
    4194:	00060a13          	mv	s4,a2
    4198:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x9ccf>
    419c:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    41a0:	03092783          	lw	a5,48(s2)
    41a4:	0074d413          	srli	s0,s1,0x7
    41a8:	00079463          	bnez	a5,41b0 <fatfs_find_blank_cluster+0x4c>
    41ac:	0084d413          	srli	s0,s1,0x8
    41b0:	02092783          	lw	a5,32(s2)
    41b4:	08f47e63          	bgeu	s0,a5,4250 <fatfs_find_blank_cluster+0xec>
    41b8:	01492583          	lw	a1,20(s2)
    41bc:	00090513          	mv	a0,s2
    41c0:	00b405b3          	add	a1,s0,a1
    41c4:	ffffd097          	auipc	ra,0xffffd
    41c8:	e54080e7          	jalr	-428(ra) # 1018 <fatfs_fat_read_sector>
    41cc:	08050263          	beqz	a0,4250 <fatfs_find_blank_cluster+0xec>
    41d0:	03092783          	lw	a5,48(s2)
    41d4:	20852703          	lw	a4,520(a0)
    41d8:	02079a63          	bnez	a5,420c <fatfs_find_blank_cluster+0xa8>
    41dc:	00841413          	slli	s0,s0,0x8
    41e0:	40848433          	sub	s0,s1,s0
    41e4:	00141413          	slli	s0,s0,0x1
    41e8:	01347433          	and	s0,s0,s3
    41ec:	00870733          	add	a4,a4,s0
    41f0:	00174783          	lbu	a5,1(a4)
    41f4:	00074703          	lbu	a4,0(a4)
    41f8:	00879793          	slli	a5,a5,0x8
    41fc:	00e787b3          	add	a5,a5,a4
    4200:	06078c63          	beqz	a5,4278 <fatfs_find_blank_cluster+0x114>
    4204:	00148493          	addi	s1,s1,1
    4208:	f99ff06f          	j	41a0 <fatfs_find_blank_cluster+0x3c>
    420c:	00741413          	slli	s0,s0,0x7
    4210:	40848433          	sub	s0,s1,s0
    4214:	00241413          	slli	s0,s0,0x2
    4218:	01347433          	and	s0,s0,s3
    421c:	00870733          	add	a4,a4,s0
    4220:	00374783          	lbu	a5,3(a4)
    4224:	00274683          	lbu	a3,2(a4)
    4228:	01879793          	slli	a5,a5,0x18
    422c:	01069693          	slli	a3,a3,0x10
    4230:	00d787b3          	add	a5,a5,a3
    4234:	00074683          	lbu	a3,0(a4)
    4238:	00174703          	lbu	a4,1(a4)
    423c:	00d787b3          	add	a5,a5,a3
    4240:	00871713          	slli	a4,a4,0x8
    4244:	00e787b3          	add	a5,a5,a4
    4248:	0157f7b3          	and	a5,a5,s5
    424c:	fb5ff06f          	j	4200 <fatfs_find_blank_cluster+0x9c>
    4250:	00000513          	li	a0,0
    4254:	01c12083          	lw	ra,28(sp)
    4258:	01812403          	lw	s0,24(sp)
    425c:	01412483          	lw	s1,20(sp)
    4260:	01012903          	lw	s2,16(sp)
    4264:	00c12983          	lw	s3,12(sp)
    4268:	00812a03          	lw	s4,8(sp)
    426c:	00412a83          	lw	s5,4(sp)
    4270:	02010113          	addi	sp,sp,32
    4274:	00008067          	ret
    4278:	009a2023          	sw	s1,0(s4)
    427c:	00100513          	li	a0,1
    4280:	fd5ff06f          	j	4254 <fatfs_find_blank_cluster+0xf0>

00004284 <fatfs_fat_set_cluster>:
    4284:	03052783          	lw	a5,48(a0)
    4288:	fe010113          	addi	sp,sp,-32
    428c:	00812c23          	sw	s0,24(sp)
    4290:	00912a23          	sw	s1,20(sp)
    4294:	01212823          	sw	s2,16(sp)
    4298:	01312623          	sw	s3,12(sp)
    429c:	00112e23          	sw	ra,28(sp)
    42a0:	00050993          	mv	s3,a0
    42a4:	00058413          	mv	s0,a1
    42a8:	00060493          	mv	s1,a2
    42ac:	0085d913          	srli	s2,a1,0x8
    42b0:	00078463          	beqz	a5,42b8 <fatfs_fat_set_cluster+0x34>
    42b4:	0075d913          	srli	s2,a1,0x7
    42b8:	0149a583          	lw	a1,20(s3)
    42bc:	00098513          	mv	a0,s3
    42c0:	00b905b3          	add	a1,s2,a1
    42c4:	ffffd097          	auipc	ra,0xffffd
    42c8:	d54080e7          	jalr	-684(ra) # 1018 <fatfs_fat_read_sector>
    42cc:	00050793          	mv	a5,a0
    42d0:	00000513          	li	a0,0
    42d4:	04078c63          	beqz	a5,432c <fatfs_fat_set_cluster+0xa8>
    42d8:	0309a683          	lw	a3,48(s3)
    42dc:	2087a703          	lw	a4,520(a5)
    42e0:	0ff4f613          	zext.b	a2,s1
    42e4:	06069263          	bnez	a3,4348 <fatfs_fat_set_cluster+0xc4>
    42e8:	00891913          	slli	s2,s2,0x8
    42ec:	41240433          	sub	s0,s0,s2
    42f0:	000106b7          	lui	a3,0x10
    42f4:	00141413          	slli	s0,s0,0x1
    42f8:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x9ccf>
    42fc:	00d47433          	and	s0,s0,a3
    4300:	00870733          	add	a4,a4,s0
    4304:	00c70023          	sb	a2,0(a4)
    4308:	2087a703          	lw	a4,520(a5)
    430c:	01049493          	slli	s1,s1,0x10
    4310:	0104d493          	srli	s1,s1,0x10
    4314:	00870733          	add	a4,a4,s0
    4318:	0084d493          	srli	s1,s1,0x8
    431c:	009700a3          	sb	s1,1(a4)
    4320:	00100713          	li	a4,1
    4324:	20e7a223          	sw	a4,516(a5)
    4328:	00100513          	li	a0,1
    432c:	01c12083          	lw	ra,28(sp)
    4330:	01812403          	lw	s0,24(sp)
    4334:	01412483          	lw	s1,20(sp)
    4338:	01012903          	lw	s2,16(sp)
    433c:	00c12983          	lw	s3,12(sp)
    4340:	02010113          	addi	sp,sp,32
    4344:	00008067          	ret
    4348:	00791913          	slli	s2,s2,0x7
    434c:	41240433          	sub	s0,s0,s2
    4350:	000106b7          	lui	a3,0x10
    4354:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x9ccf>
    4358:	00241413          	slli	s0,s0,0x2
    435c:	00d47433          	and	s0,s0,a3
    4360:	00870733          	add	a4,a4,s0
    4364:	00c70023          	sb	a2,0(a4)
    4368:	2087a703          	lw	a4,520(a5)
    436c:	0084d693          	srli	a3,s1,0x8
    4370:	00870733          	add	a4,a4,s0
    4374:	00d700a3          	sb	a3,1(a4)
    4378:	2087a703          	lw	a4,520(a5)
    437c:	0104d693          	srli	a3,s1,0x10
    4380:	0184d493          	srli	s1,s1,0x18
    4384:	00870733          	add	a4,a4,s0
    4388:	00d70123          	sb	a3,2(a4)
    438c:	2087a703          	lw	a4,520(a5)
    4390:	00870733          	add	a4,a4,s0
    4394:	009701a3          	sb	s1,3(a4)
    4398:	f89ff06f          	j	4320 <fatfs_fat_set_cluster+0x9c>

0000439c <fatfs_free_cluster_chain>:
    439c:	fe010113          	addi	sp,sp,-32
    43a0:	00812c23          	sw	s0,24(sp)
    43a4:	01212823          	sw	s2,16(sp)
    43a8:	00112e23          	sw	ra,28(sp)
    43ac:	00912a23          	sw	s1,20(sp)
    43b0:	00050413          	mv	s0,a0
    43b4:	ffd00913          	li	s2,-3
    43b8:	fff58793          	addi	a5,a1,-1
    43bc:	02f97063          	bgeu	s2,a5,43dc <fatfs_free_cluster_chain+0x40>
    43c0:	01c12083          	lw	ra,28(sp)
    43c4:	01812403          	lw	s0,24(sp)
    43c8:	01412483          	lw	s1,20(sp)
    43cc:	01012903          	lw	s2,16(sp)
    43d0:	00100513          	li	a0,1
    43d4:	02010113          	addi	sp,sp,32
    43d8:	00008067          	ret
    43dc:	00040513          	mv	a0,s0
    43e0:	00b12623          	sw	a1,12(sp)
    43e4:	fffff097          	auipc	ra,0xfffff
    43e8:	c8c080e7          	jalr	-884(ra) # 3070 <fatfs_find_next_cluster>
    43ec:	00c12583          	lw	a1,12(sp)
    43f0:	00050493          	mv	s1,a0
    43f4:	00000613          	li	a2,0
    43f8:	00040513          	mv	a0,s0
    43fc:	00000097          	auipc	ra,0x0
    4400:	e88080e7          	jalr	-376(ra) # 4284 <fatfs_fat_set_cluster>
    4404:	00048593          	mv	a1,s1
    4408:	fb1ff06f          	j	43b8 <fatfs_free_cluster_chain+0x1c>

0000440c <fatfs_fat_add_cluster_to_chain>:
    440c:	fff00793          	li	a5,-1
    4410:	02f59463          	bne	a1,a5,4438 <fatfs_fat_add_cluster_to_chain+0x2c>
    4414:	00000513          	li	a0,0
    4418:	00008067          	ret
    441c:	00000513          	li	a0,0
    4420:	01c12083          	lw	ra,28(sp)
    4424:	01812403          	lw	s0,24(sp)
    4428:	01412483          	lw	s1,20(sp)
    442c:	01012903          	lw	s2,16(sp)
    4430:	02010113          	addi	sp,sp,32
    4434:	00008067          	ret
    4438:	fe010113          	addi	sp,sp,-32
    443c:	00812c23          	sw	s0,24(sp)
    4440:	00912a23          	sw	s1,20(sp)
    4444:	01212823          	sw	s2,16(sp)
    4448:	00050413          	mv	s0,a0
    444c:	00112e23          	sw	ra,28(sp)
    4450:	00058513          	mv	a0,a1
    4454:	00060493          	mv	s1,a2
    4458:	fff00913          	li	s2,-1
    445c:	00050593          	mv	a1,a0
    4460:	00a12623          	sw	a0,12(sp)
    4464:	00040513          	mv	a0,s0
    4468:	fffff097          	auipc	ra,0xfffff
    446c:	c08080e7          	jalr	-1016(ra) # 3070 <fatfs_find_next_cluster>
    4470:	fa0506e3          	beqz	a0,441c <fatfs_fat_add_cluster_to_chain+0x10>
    4474:	00c12583          	lw	a1,12(sp)
    4478:	ff2512e3          	bne	a0,s2,445c <fatfs_fat_add_cluster_to_chain+0x50>
    447c:	00048613          	mv	a2,s1
    4480:	00040513          	mv	a0,s0
    4484:	00000097          	auipc	ra,0x0
    4488:	e00080e7          	jalr	-512(ra) # 4284 <fatfs_fat_set_cluster>
    448c:	fff00613          	li	a2,-1
    4490:	00048593          	mv	a1,s1
    4494:	00040513          	mv	a0,s0
    4498:	00000097          	auipc	ra,0x0
    449c:	dec080e7          	jalr	-532(ra) # 4284 <fatfs_fat_set_cluster>
    44a0:	00100513          	li	a0,1
    44a4:	f7dff06f          	j	4420 <fatfs_fat_add_cluster_to_chain+0x14>

000044a8 <fatfs_count_free_clusters>:
    44a8:	fe010113          	addi	sp,sp,-32
    44ac:	00812c23          	sw	s0,24(sp)
    44b0:	00912a23          	sw	s1,20(sp)
    44b4:	01212823          	sw	s2,16(sp)
    44b8:	01312623          	sw	s3,12(sp)
    44bc:	00112e23          	sw	ra,28(sp)
    44c0:	00050413          	mv	s0,a0
    44c4:	00000493          	li	s1,0
    44c8:	00000913          	li	s2,0
    44cc:	1ff00993          	li	s3,511
    44d0:	02042783          	lw	a5,32(s0)
    44d4:	02f96263          	bltu	s2,a5,44f8 <fatfs_count_free_clusters+0x50>
    44d8:	01c12083          	lw	ra,28(sp)
    44dc:	01812403          	lw	s0,24(sp)
    44e0:	01012903          	lw	s2,16(sp)
    44e4:	00c12983          	lw	s3,12(sp)
    44e8:	00048513          	mv	a0,s1
    44ec:	01412483          	lw	s1,20(sp)
    44f0:	02010113          	addi	sp,sp,32
    44f4:	00008067          	ret
    44f8:	01442583          	lw	a1,20(s0)
    44fc:	00040513          	mv	a0,s0
    4500:	00b905b3          	add	a1,s2,a1
    4504:	ffffd097          	auipc	ra,0xffffd
    4508:	b14080e7          	jalr	-1260(ra) # 1018 <fatfs_fat_read_sector>
    450c:	fc0506e3          	beqz	a0,44d8 <fatfs_count_free_clusters+0x30>
    4510:	03042803          	lw	a6,48(s0)
    4514:	20852583          	lw	a1,520(a0)
    4518:	00000713          	li	a4,0
    451c:	00e587b3          	add	a5,a1,a4
    4520:	0017c683          	lbu	a3,1(a5)
    4524:	0007c503          	lbu	a0,0(a5)
    4528:	00270613          	addi	a2,a4,2
    452c:	00869693          	slli	a3,a3,0x8
    4530:	02081063          	bnez	a6,4550 <fatfs_count_free_clusters+0xa8>
    4534:	00a686b3          	add	a3,a3,a0
    4538:	00069463          	bnez	a3,4540 <fatfs_count_free_clusters+0x98>
    453c:	00148493          	addi	s1,s1,1
    4540:	00060713          	mv	a4,a2
    4544:	fce9fce3          	bgeu	s3,a4,451c <fatfs_count_free_clusters+0x74>
    4548:	00190913          	addi	s2,s2,1
    454c:	f85ff06f          	j	44d0 <fatfs_count_free_clusters+0x28>
    4550:	00c58633          	add	a2,a1,a2
    4554:	0037c783          	lbu	a5,3(a5)
    4558:	00064603          	lbu	a2,0(a2)
    455c:	01879793          	slli	a5,a5,0x18
    4560:	01061613          	slli	a2,a2,0x10
    4564:	00c787b3          	add	a5,a5,a2
    4568:	00a787b3          	add	a5,a5,a0
    456c:	00d787b3          	add	a5,a5,a3
    4570:	00079463          	bnez	a5,4578 <fatfs_count_free_clusters+0xd0>
    4574:	00148493          	addi	s1,s1,1
    4578:	00470713          	addi	a4,a4,4
    457c:	fc9ff06f          	j	4544 <fatfs_count_free_clusters+0x9c>

00004580 <fatfs_add_free_space>:
    4580:	02452703          	lw	a4,36(a0)
    4584:	fd010113          	addi	sp,sp,-48
    4588:	02812423          	sw	s0,40(sp)
    458c:	03212023          	sw	s2,32(sp)
    4590:	01412c23          	sw	s4,24(sp)
    4594:	01512a23          	sw	s5,20(sp)
    4598:	02112623          	sw	ra,44(sp)
    459c:	02912223          	sw	s1,36(sp)
    45a0:	01312e23          	sw	s3,28(sp)
    45a4:	fff00793          	li	a5,-1
    45a8:	0005aa83          	lw	s5,0(a1)
    45ac:	00050413          	mv	s0,a0
    45b0:	00058913          	mv	s2,a1
    45b4:	00060a13          	mv	s4,a2
    45b8:	00f70863          	beq	a4,a5,45c8 <fatfs_add_free_space+0x48>
    45bc:	fff00593          	li	a1,-1
    45c0:	00000097          	auipc	ra,0x0
    45c4:	aec080e7          	jalr	-1300(ra) # 40ac <fatfs_set_fs_info_next_free_cluster>
    45c8:	00000493          	li	s1,0
    45cc:	03449663          	bne	s1,s4,45f8 <fatfs_add_free_space+0x78>
    45d0:	00100513          	li	a0,1
    45d4:	02c12083          	lw	ra,44(sp)
    45d8:	02812403          	lw	s0,40(sp)
    45dc:	02412483          	lw	s1,36(sp)
    45e0:	02012903          	lw	s2,32(sp)
    45e4:	01c12983          	lw	s3,28(sp)
    45e8:	01812a03          	lw	s4,24(sp)
    45ec:	01412a83          	lw	s5,20(sp)
    45f0:	03010113          	addi	sp,sp,48
    45f4:	00008067          	ret
    45f8:	00842583          	lw	a1,8(s0)
    45fc:	00c10613          	addi	a2,sp,12
    4600:	00040513          	mv	a0,s0
    4604:	00000097          	auipc	ra,0x0
    4608:	b60080e7          	jalr	-1184(ra) # 4164 <fatfs_find_blank_cluster>
    460c:	fc0504e3          	beqz	a0,45d4 <fatfs_add_free_space+0x54>
    4610:	00c12983          	lw	s3,12(sp)
    4614:	000a8593          	mv	a1,s5
    4618:	00040513          	mv	a0,s0
    461c:	00098613          	mv	a2,s3
    4620:	00000097          	auipc	ra,0x0
    4624:	c64080e7          	jalr	-924(ra) # 4284 <fatfs_fat_set_cluster>
    4628:	fff00613          	li	a2,-1
    462c:	00098593          	mv	a1,s3
    4630:	00040513          	mv	a0,s0
    4634:	00000097          	auipc	ra,0x0
    4638:	c50080e7          	jalr	-944(ra) # 4284 <fatfs_fat_set_cluster>
    463c:	00049463          	bnez	s1,4644 <fatfs_add_free_space+0xc4>
    4640:	01392023          	sw	s3,0(s2)
    4644:	00148493          	addi	s1,s1,1
    4648:	00098a93          	mv	s5,s3
    464c:	f81ff06f          	j	45cc <fatfs_add_free_space+0x4c>

00004650 <_write_sectors>:
    4650:	fb010113          	addi	sp,sp,-80
    4654:	03312e23          	sw	s3,60(sp)
    4658:	000069b7          	lui	s3,0x6
    465c:	03612823          	sw	s6,48(sp)
    4660:	ec89cb03          	lbu	s6,-312(s3) # 5ec8 <_fs>
    4664:	03512a23          	sw	s5,52(sp)
    4668:	00058a93          	mv	s5,a1
    466c:	fff00793          	li	a5,-1
    4670:	04812423          	sw	s0,72(sp)
    4674:	000b0593          	mv	a1,s6
    4678:	00050413          	mv	s0,a0
    467c:	000a8513          	mv	a0,s5
    4680:	00f12e23          	sw	a5,28(sp)
    4684:	04112623          	sw	ra,76(sp)
    4688:	04912223          	sw	s1,68(sp)
    468c:	05212023          	sw	s2,64(sp)
    4690:	03712623          	sw	s7,44(sp)
    4694:	03812423          	sw	s8,40(sp)
    4698:	00068b93          	mv	s7,a3
    469c:	03912223          	sw	s9,36(sp)
    46a0:	03a12023          	sw	s10,32(sp)
    46a4:	00060c93          	mv	s9,a2
    46a8:	03412c23          	sw	s4,56(sp)
    46ac:	ffffc097          	auipc	ra,0xffffc
    46b0:	f68080e7          	jalr	-152(ra) # 614 <__udivsi3>
    46b4:	00050493          	mv	s1,a0
    46b8:	000b0593          	mv	a1,s6
    46bc:	000a8513          	mv	a0,s5
    46c0:	ffffc097          	auipc	ra,0xffffc
    46c4:	f9c080e7          	jalr	-100(ra) # 65c <__umodsi3>
    46c8:	00ab87b3          	add	a5,s7,a0
    46cc:	00050c13          	mv	s8,a0
    46d0:	ec898d13          	addi	s10,s3,-312
    46d4:	000b8913          	mv	s2,s7
    46d8:	00fb7e63          	bgeu	s6,a5,46f4 <_write_sectors+0xa4>
    46dc:	00048593          	mv	a1,s1
    46e0:	000b0513          	mv	a0,s6
    46e4:	ffffc097          	auipc	ra,0xffffc
    46e8:	77c080e7          	jalr	1916(ra) # e60 <__mulsi3>
    46ec:	415b07b3          	sub	a5,s6,s5
    46f0:	00f50933          	add	s2,a0,a5
    46f4:	22842a03          	lw	s4,552(s0)
    46f8:	069a1663          	bne	s4,s1,4764 <_write_sectors+0x114>
    46fc:	22c42583          	lw	a1,556(s0)
    4700:	ec898513          	addi	a0,s3,-312
    4704:	ffffd097          	auipc	ra,0xffffd
    4708:	c34080e7          	jalr	-972(ra) # 1338 <fatfs_lba_of_cluster>
    470c:	018505b3          	add	a1,a0,s8
    4710:	00090693          	mv	a3,s2
    4714:	000c8613          	mv	a2,s9
    4718:	ec898513          	addi	a0,s3,-312
    471c:	ffffd097          	auipc	ra,0xffffd
    4720:	c84080e7          	jalr	-892(ra) # 13a0 <fatfs_sector_write>
    4724:	0c050063          	beqz	a0,47e4 <_write_sectors+0x194>
    4728:	04c12083          	lw	ra,76(sp)
    472c:	04812403          	lw	s0,72(sp)
    4730:	04412483          	lw	s1,68(sp)
    4734:	03c12983          	lw	s3,60(sp)
    4738:	03812a03          	lw	s4,56(sp)
    473c:	03412a83          	lw	s5,52(sp)
    4740:	03012b03          	lw	s6,48(sp)
    4744:	02c12b83          	lw	s7,44(sp)
    4748:	02812c03          	lw	s8,40(sp)
    474c:	02412c83          	lw	s9,36(sp)
    4750:	02012d03          	lw	s10,32(sp)
    4754:	00090513          	mv	a0,s2
    4758:	04012903          	lw	s2,64(sp)
    475c:	05010113          	addi	sp,sp,80
    4760:	00008067          	ret
    4764:	036ae663          	bltu	s5,s6,4790 <_write_sectors+0x140>
    4768:	001a0793          	addi	a5,s4,1
    476c:	02979263          	bne	a5,s1,4790 <_write_sectors+0x140>
    4770:	22c42583          	lw	a1,556(s0)
    4774:	fff00a93          	li	s5,-1
    4778:	029a6263          	bltu	s4,s1,479c <_write_sectors+0x14c>
    477c:	fff00793          	li	a5,-1
    4780:	02f58c63          	beq	a1,a5,47b8 <_write_sectors+0x168>
    4784:	22b42623          	sw	a1,556(s0)
    4788:	22942423          	sw	s1,552(s0)
    478c:	f75ff06f          	j	4700 <_write_sectors+0xb0>
    4790:	00442583          	lw	a1,4(s0)
    4794:	00000a13          	li	s4,0
    4798:	fddff06f          	j	4774 <_write_sectors+0x124>
    479c:	ec898513          	addi	a0,s3,-312
    47a0:	00b12623          	sw	a1,12(sp)
    47a4:	fffff097          	auipc	ra,0xfffff
    47a8:	8cc080e7          	jalr	-1844(ra) # 3070 <fatfs_find_next_cluster>
    47ac:	00c12583          	lw	a1,12(sp)
    47b0:	00b12e23          	sw	a1,28(sp)
    47b4:	03551c63          	bne	a0,s5,47ec <_write_sectors+0x19c>
    47b8:	000d4583          	lbu	a1,0(s10)
    47bc:	fff58513          	addi	a0,a1,-1
    47c0:	01750533          	add	a0,a0,s7
    47c4:	ffffc097          	auipc	ra,0xffffc
    47c8:	e50080e7          	jalr	-432(ra) # 614 <__udivsi3>
    47cc:	00050613          	mv	a2,a0
    47d0:	01c10593          	addi	a1,sp,28
    47d4:	ec898513          	addi	a0,s3,-312
    47d8:	00000097          	auipc	ra,0x0
    47dc:	da8080e7          	jalr	-600(ra) # 4580 <fatfs_add_free_space>
    47e0:	00051c63          	bnez	a0,47f8 <_write_sectors+0x1a8>
    47e4:	00000913          	li	s2,0
    47e8:	f41ff06f          	j	4728 <_write_sectors+0xd8>
    47ec:	001a0a13          	addi	s4,s4,1
    47f0:	00050593          	mv	a1,a0
    47f4:	f85ff06f          	j	4778 <_write_sectors+0x128>
    47f8:	01c12583          	lw	a1,28(sp)
    47fc:	f89ff06f          	j	4784 <_write_sectors+0x134>

00004800 <fl_fflush>:
    4800:	000067b7          	lui	a5,0x6
    4804:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    4808:	ff010113          	addi	sp,sp,-16
    480c:	00812423          	sw	s0,8(sp)
    4810:	00112623          	sw	ra,12(sp)
    4814:	00912223          	sw	s1,4(sp)
    4818:	00050413          	mv	s0,a0
    481c:	00079663          	bnez	a5,4828 <fl_fflush+0x28>
    4820:	ffffd097          	auipc	ra,0xffffd
    4824:	dd4080e7          	jalr	-556(ra) # 15f4 <fl_init>
    4828:	04040863          	beqz	s0,4878 <fl_fflush+0x78>
    482c:	000067b7          	lui	a5,0x6
    4830:	ec878713          	addi	a4,a5,-312 # 5ec8 <_fs>
    4834:	03c72703          	lw	a4,60(a4)
    4838:	ec878493          	addi	s1,a5,-312
    483c:	00070463          	beqz	a4,4844 <fl_fflush+0x44>
    4840:	000700e7          	jalr	a4
    4844:	43442783          	lw	a5,1076(s0)
    4848:	02078263          	beqz	a5,486c <fl_fflush+0x6c>
    484c:	43042583          	lw	a1,1072(s0)
    4850:	00100693          	li	a3,1
    4854:	23040613          	addi	a2,s0,560
    4858:	00040513          	mv	a0,s0
    485c:	00000097          	auipc	ra,0x0
    4860:	df4080e7          	jalr	-524(ra) # 4650 <_write_sectors>
    4864:	00050463          	beqz	a0,486c <fl_fflush+0x6c>
    4868:	42042a23          	sw	zero,1076(s0)
    486c:	0404a783          	lw	a5,64(s1)
    4870:	00078463          	beqz	a5,4878 <fl_fflush+0x78>
    4874:	000780e7          	jalr	a5
    4878:	00c12083          	lw	ra,12(sp)
    487c:	00812403          	lw	s0,8(sp)
    4880:	00412483          	lw	s1,4(sp)
    4884:	00000513          	li	a0,0
    4888:	01010113          	addi	sp,sp,16
    488c:	00008067          	ret

00004890 <fl_fclose>:
    4890:	000067b7          	lui	a5,0x6
    4894:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    4898:	ff010113          	addi	sp,sp,-16
    489c:	00812423          	sw	s0,8(sp)
    48a0:	00112623          	sw	ra,12(sp)
    48a4:	00912223          	sw	s1,4(sp)
    48a8:	01212023          	sw	s2,0(sp)
    48ac:	00050413          	mv	s0,a0
    48b0:	00079663          	bnez	a5,48bc <fl_fclose+0x2c>
    48b4:	ffffd097          	auipc	ra,0xffffd
    48b8:	d40080e7          	jalr	-704(ra) # 15f4 <fl_init>
    48bc:	08040e63          	beqz	s0,4958 <fl_fclose+0xc8>
    48c0:	000064b7          	lui	s1,0x6
    48c4:	ec848793          	addi	a5,s1,-312 # 5ec8 <_fs>
    48c8:	03c7a783          	lw	a5,60(a5)
    48cc:	ec848913          	addi	s2,s1,-312
    48d0:	00078463          	beqz	a5,48d8 <fl_fclose+0x48>
    48d4:	000780e7          	jalr	a5
    48d8:	00040513          	mv	a0,s0
    48dc:	00000097          	auipc	ra,0x0
    48e0:	f24080e7          	jalr	-220(ra) # 4800 <fl_fflush>
    48e4:	01042783          	lw	a5,16(s0)
    48e8:	00078e63          	beqz	a5,4904 <fl_fclose+0x74>
    48ec:	00c42683          	lw	a3,12(s0)
    48f0:	00042583          	lw	a1,0(s0)
    48f4:	21c40613          	addi	a2,s0,540
    48f8:	ec848513          	addi	a0,s1,-312
    48fc:	fffff097          	auipc	ra,0xfffff
    4900:	ff0080e7          	jalr	-16(ra) # 38ec <fatfs_update_file_length>
    4904:	fff00793          	li	a5,-1
    4908:	42f42823          	sw	a5,1072(s0)
    490c:	00040513          	mv	a0,s0
    4910:	00042423          	sw	zero,8(s0)
    4914:	00042623          	sw	zero,12(s0)
    4918:	00042223          	sw	zero,4(s0)
    491c:	42042a23          	sw	zero,1076(s0)
    4920:	00042823          	sw	zero,16(s0)
    4924:	ffffd097          	auipc	ra,0xffffd
    4928:	9cc080e7          	jalr	-1588(ra) # 12f0 <_free_file>
    492c:	ec848513          	addi	a0,s1,-312
    4930:	ffffe097          	auipc	ra,0xffffe
    4934:	66c080e7          	jalr	1644(ra) # 2f9c <fatfs_fat_purge>
    4938:	04092783          	lw	a5,64(s2)
    493c:	00078e63          	beqz	a5,4958 <fl_fclose+0xc8>
    4940:	00812403          	lw	s0,8(sp)
    4944:	00c12083          	lw	ra,12(sp)
    4948:	00412483          	lw	s1,4(sp)
    494c:	00012903          	lw	s2,0(sp)
    4950:	01010113          	addi	sp,sp,16
    4954:	00078067          	jr	a5
    4958:	00c12083          	lw	ra,12(sp)
    495c:	00812403          	lw	s0,8(sp)
    4960:	00412483          	lw	s1,4(sp)
    4964:	00012903          	lw	s2,0(sp)
    4968:	01010113          	addi	sp,sp,16
    496c:	00008067          	ret

00004970 <fl_fread>:
    4970:	fd010113          	addi	sp,sp,-48
    4974:	01512a23          	sw	s5,20(sp)
    4978:	00050a93          	mv	s5,a0
    497c:	00058513          	mv	a0,a1
    4980:	00060593          	mv	a1,a2
    4984:	02812423          	sw	s0,40(sp)
    4988:	02912223          	sw	s1,36(sp)
    498c:	02112623          	sw	ra,44(sp)
    4990:	03212023          	sw	s2,32(sp)
    4994:	01312e23          	sw	s3,28(sp)
    4998:	01412c23          	sw	s4,24(sp)
    499c:	01612823          	sw	s6,16(sp)
    49a0:	01712623          	sw	s7,12(sp)
    49a4:	01812423          	sw	s8,8(sp)
    49a8:	01912223          	sw	s9,4(sp)
    49ac:	00068493          	mv	s1,a3
    49b0:	ffffc097          	auipc	ra,0xffffc
    49b4:	4b0080e7          	jalr	1200(ra) # e60 <__mulsi3>
    49b8:	000067b7          	lui	a5,0x6
    49bc:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    49c0:	00050413          	mv	s0,a0
    49c4:	00079663          	bnez	a5,49d0 <fl_fread+0x60>
    49c8:	ffffd097          	auipc	ra,0xffffd
    49cc:	c2c080e7          	jalr	-980(ra) # 15f4 <fl_init>
    49d0:	120a8e63          	beqz	s5,4b0c <fl_fread+0x19c>
    49d4:	12048c63          	beqz	s1,4b0c <fl_fread+0x19c>
    49d8:	4384c783          	lbu	a5,1080(s1)
    49dc:	0017f793          	andi	a5,a5,1
    49e0:	12078663          	beqz	a5,4b0c <fl_fread+0x19c>
    49e4:	02040e63          	beqz	s0,4a20 <fl_fread+0xb0>
    49e8:	0084a583          	lw	a1,8(s1)
    49ec:	00c4a783          	lw	a5,12(s1)
    49f0:	10f5fe63          	bgeu	a1,a5,4b0c <fl_fread+0x19c>
    49f4:	00b40733          	add	a4,s0,a1
    49f8:	00040b13          	mv	s6,s0
    49fc:	00e7f463          	bgeu	a5,a4,4a04 <fl_fread+0x94>
    4a00:	40b78b33          	sub	s6,a5,a1
    4a04:	0095d993          	srli	s3,a1,0x9
    4a08:	1ff5f913          	andi	s2,a1,511
    4a0c:	00000413          	li	s0,0
    4a10:	23048b93          	addi	s7,s1,560
    4a14:	20000c13          	li	s8,512
    4a18:	1ff00c93          	li	s9,511
    4a1c:	03644e63          	blt	s0,s6,4a58 <fl_fread+0xe8>
    4a20:	02c12083          	lw	ra,44(sp)
    4a24:	00040513          	mv	a0,s0
    4a28:	02812403          	lw	s0,40(sp)
    4a2c:	02412483          	lw	s1,36(sp)
    4a30:	02012903          	lw	s2,32(sp)
    4a34:	01c12983          	lw	s3,28(sp)
    4a38:	01812a03          	lw	s4,24(sp)
    4a3c:	01412a83          	lw	s5,20(sp)
    4a40:	01012b03          	lw	s6,16(sp)
    4a44:	00c12b83          	lw	s7,12(sp)
    4a48:	00812c03          	lw	s8,8(sp)
    4a4c:	00412c83          	lw	s9,4(sp)
    4a50:	03010113          	addi	sp,sp,48
    4a54:	00008067          	ret
    4a58:	04091463          	bnez	s2,4aa0 <fl_fread+0x130>
    4a5c:	408b06b3          	sub	a3,s6,s0
    4a60:	04dcd063          	bge	s9,a3,4aa0 <fl_fread+0x130>
    4a64:	4096d693          	srai	a3,a3,0x9
    4a68:	008a8633          	add	a2,s5,s0
    4a6c:	00098593          	mv	a1,s3
    4a70:	00048513          	mv	a0,s1
    4a74:	fffff097          	auipc	ra,0xfffff
    4a78:	4ec080e7          	jalr	1260(ra) # 3f60 <_read_sectors>
    4a7c:	fa0502e3          	beqz	a0,4a20 <fl_fread+0xb0>
    4a80:	00951a13          	slli	s4,a0,0x9
    4a84:	00a989b3          	add	s3,s3,a0
    4a88:	0084a783          	lw	a5,8(s1)
    4a8c:	01440433          	add	s0,s0,s4
    4a90:	00000913          	li	s2,0
    4a94:	014787b3          	add	a5,a5,s4
    4a98:	00f4a423          	sw	a5,8(s1)
    4a9c:	f81ff06f          	j	4a1c <fl_fread+0xac>
    4aa0:	4304a783          	lw	a5,1072(s1)
    4aa4:	03378e63          	beq	a5,s3,4ae0 <fl_fread+0x170>
    4aa8:	4344a783          	lw	a5,1076(s1)
    4aac:	00078863          	beqz	a5,4abc <fl_fread+0x14c>
    4ab0:	00048513          	mv	a0,s1
    4ab4:	00000097          	auipc	ra,0x0
    4ab8:	d4c080e7          	jalr	-692(ra) # 4800 <fl_fflush>
    4abc:	00100693          	li	a3,1
    4ac0:	000b8613          	mv	a2,s7
    4ac4:	00098593          	mv	a1,s3
    4ac8:	00048513          	mv	a0,s1
    4acc:	fffff097          	auipc	ra,0xfffff
    4ad0:	494080e7          	jalr	1172(ra) # 3f60 <_read_sectors>
    4ad4:	f40506e3          	beqz	a0,4a20 <fl_fread+0xb0>
    4ad8:	4334a823          	sw	s3,1072(s1)
    4adc:	4204aa23          	sw	zero,1076(s1)
    4ae0:	412c07b3          	sub	a5,s8,s2
    4ae4:	408b0a33          	sub	s4,s6,s0
    4ae8:	0147d463          	bge	a5,s4,4af0 <fl_fread+0x180>
    4aec:	00078a13          	mv	s4,a5
    4af0:	000a0613          	mv	a2,s4
    4af4:	012b85b3          	add	a1,s7,s2
    4af8:	008a8533          	add	a0,s5,s0
    4afc:	ffffc097          	auipc	ra,0xffffc
    4b00:	c08080e7          	jalr	-1016(ra) # 704 <memcpy>
    4b04:	00198993          	addi	s3,s3,1
    4b08:	f81ff06f          	j	4a88 <fl_fread+0x118>
    4b0c:	fff00413          	li	s0,-1
    4b10:	f11ff06f          	j	4a20 <fl_fread+0xb0>

00004b14 <fl_fgetc>:
    4b14:	fe010113          	addi	sp,sp,-32
    4b18:	00050693          	mv	a3,a0
    4b1c:	00100613          	li	a2,1
    4b20:	00100593          	li	a1,1
    4b24:	00f10513          	addi	a0,sp,15
    4b28:	00112e23          	sw	ra,28(sp)
    4b2c:	000107a3          	sb	zero,15(sp)
    4b30:	00000097          	auipc	ra,0x0
    4b34:	e40080e7          	jalr	-448(ra) # 4970 <fl_fread>
    4b38:	00100793          	li	a5,1
    4b3c:	00f51463          	bne	a0,a5,4b44 <fl_fgetc+0x30>
    4b40:	00f14503          	lbu	a0,15(sp)
    4b44:	01c12083          	lw	ra,28(sp)
    4b48:	02010113          	addi	sp,sp,32
    4b4c:	00008067          	ret

00004b50 <fl_fgets>:
    4b50:	fe010113          	addi	sp,sp,-32
    4b54:	00112e23          	sw	ra,28(sp)
    4b58:	00812c23          	sw	s0,24(sp)
    4b5c:	00912a23          	sw	s1,20(sp)
    4b60:	01212823          	sw	s2,16(sp)
    4b64:	01312623          	sw	s3,12(sp)
    4b68:	01412423          	sw	s4,8(sp)
    4b6c:	02b05e63          	blez	a1,4ba8 <fl_fgets+0x58>
    4b70:	00050493          	mv	s1,a0
    4b74:	00060993          	mv	s3,a2
    4b78:	00000413          	li	s0,0
    4b7c:	fff58913          	addi	s2,a1,-1
    4b80:	00a00a13          	li	s4,10
    4b84:	01245a63          	bge	s0,s2,4b98 <fl_fgets+0x48>
    4b88:	00098513          	mv	a0,s3
    4b8c:	00000097          	auipc	ra,0x0
    4b90:	f88080e7          	jalr	-120(ra) # 4b14 <fl_fgetc>
    4b94:	02055e63          	bgez	a0,4bd0 <fl_fgets+0x80>
    4b98:	00040863          	beqz	s0,4ba8 <fl_fgets+0x58>
    4b9c:	00848433          	add	s0,s1,s0
    4ba0:	00040023          	sb	zero,0(s0)
    4ba4:	0080006f          	j	4bac <fl_fgets+0x5c>
    4ba8:	00000493          	li	s1,0
    4bac:	01c12083          	lw	ra,28(sp)
    4bb0:	01812403          	lw	s0,24(sp)
    4bb4:	01012903          	lw	s2,16(sp)
    4bb8:	00c12983          	lw	s3,12(sp)
    4bbc:	00812a03          	lw	s4,8(sp)
    4bc0:	00048513          	mv	a0,s1
    4bc4:	01412483          	lw	s1,20(sp)
    4bc8:	02010113          	addi	sp,sp,32
    4bcc:	00008067          	ret
    4bd0:	00140413          	addi	s0,s0,1
    4bd4:	008487b3          	add	a5,s1,s0
    4bd8:	fea78fa3          	sb	a0,-1(a5)
    4bdc:	fb4514e3          	bne	a0,s4,4b84 <fl_fgets+0x34>
    4be0:	fbdff06f          	j	4b9c <fl_fgets+0x4c>

00004be4 <fl_fwrite>:
    4be4:	fb010113          	addi	sp,sp,-80
    4be8:	00a12423          	sw	a0,8(sp)
    4bec:	00058513          	mv	a0,a1
    4bf0:	00060593          	mv	a1,a2
    4bf4:	04912223          	sw	s1,68(sp)
    4bf8:	03a12023          	sw	s10,32(sp)
    4bfc:	04112623          	sw	ra,76(sp)
    4c00:	04812423          	sw	s0,72(sp)
    4c04:	05212023          	sw	s2,64(sp)
    4c08:	03312e23          	sw	s3,60(sp)
    4c0c:	03412c23          	sw	s4,56(sp)
    4c10:	03512a23          	sw	s5,52(sp)
    4c14:	03612823          	sw	s6,48(sp)
    4c18:	03712623          	sw	s7,44(sp)
    4c1c:	03812423          	sw	s8,40(sp)
    4c20:	03912223          	sw	s9,36(sp)
    4c24:	01b12e23          	sw	s11,28(sp)
    4c28:	00068d13          	mv	s10,a3
    4c2c:	ffffc097          	auipc	ra,0xffffc
    4c30:	234080e7          	jalr	564(ra) # e60 <__mulsi3>
    4c34:	00006737          	lui	a4,0x6
    4c38:	e7072703          	lw	a4,-400(a4) # 5e70 <_filelib_init>
    4c3c:	00050493          	mv	s1,a0
    4c40:	00071663          	bnez	a4,4c4c <fl_fwrite+0x68>
    4c44:	ffffd097          	auipc	ra,0xffffd
    4c48:	9b0080e7          	jalr	-1616(ra) # 15f4 <fl_init>
    4c4c:	040d1463          	bnez	s10,4c94 <fl_fwrite+0xb0>
    4c50:	fff00493          	li	s1,-1
    4c54:	04c12083          	lw	ra,76(sp)
    4c58:	04812403          	lw	s0,72(sp)
    4c5c:	04012903          	lw	s2,64(sp)
    4c60:	03c12983          	lw	s3,60(sp)
    4c64:	03812a03          	lw	s4,56(sp)
    4c68:	03412a83          	lw	s5,52(sp)
    4c6c:	03012b03          	lw	s6,48(sp)
    4c70:	02c12b83          	lw	s7,44(sp)
    4c74:	02812c03          	lw	s8,40(sp)
    4c78:	02412c83          	lw	s9,36(sp)
    4c7c:	02012d03          	lw	s10,32(sp)
    4c80:	01c12d83          	lw	s11,28(sp)
    4c84:	00048513          	mv	a0,s1
    4c88:	04412483          	lw	s1,68(sp)
    4c8c:	05010113          	addi	sp,sp,80
    4c90:	00008067          	ret
    4c94:	00006ab7          	lui	s5,0x6
    4c98:	ec8a8713          	addi	a4,s5,-312 # 5ec8 <_fs>
    4c9c:	03c72703          	lw	a4,60(a4)
    4ca0:	ec8a8a93          	addi	s5,s5,-312
    4ca4:	00070463          	beqz	a4,4cac <fl_fwrite+0xc8>
    4ca8:	000700e7          	jalr	a4
    4cac:	438d4703          	lbu	a4,1080(s10)
    4cb0:	00277693          	andi	a3,a4,2
    4cb4:	00069a63          	bnez	a3,4cc8 <fl_fwrite+0xe4>
    4cb8:	040aa783          	lw	a5,64(s5)
    4cbc:	f8078ae3          	beqz	a5,4c50 <fl_fwrite+0x6c>
    4cc0:	000780e7          	jalr	a5
    4cc4:	f8dff06f          	j	4c50 <fl_fwrite+0x6c>
    4cc8:	00477713          	andi	a4,a4,4
    4ccc:	00070663          	beqz	a4,4cd8 <fl_fwrite+0xf4>
    4cd0:	00cd2703          	lw	a4,12(s10)
    4cd4:	00ed2423          	sw	a4,8(s10)
    4cd8:	008d2983          	lw	s3,8(s10)
    4cdc:	00000913          	li	s2,0
    4ce0:	20000b93          	li	s7,512
    4ce4:	0099d413          	srli	s0,s3,0x9
    4ce8:	230d0b13          	addi	s6,s10,560
    4cec:	1ff9f993          	andi	s3,s3,511
    4cf0:	1ff00d93          	li	s11,511
    4cf4:	fff00c13          	li	s8,-1
    4cf8:	06997c63          	bgeu	s2,s1,4d70 <fl_fwrite+0x18c>
    4cfc:	00812783          	lw	a5,8(sp)
    4d00:	430d2703          	lw	a4,1072(s10)
    4d04:	412486b3          	sub	a3,s1,s2
    4d08:	01278cb3          	add	s9,a5,s2
    4d0c:	08099063          	bnez	s3,4d8c <fl_fwrite+0x1a8>
    4d10:	06ddfe63          	bgeu	s11,a3,4d8c <fl_fwrite+0x1a8>
    4d14:	03870463          	beq	a4,s8,4d3c <fl_fwrite+0x158>
    4d18:	434d2703          	lw	a4,1076(s10)
    4d1c:	00070c63          	beqz	a4,4d34 <fl_fwrite+0x150>
    4d20:	000d0513          	mv	a0,s10
    4d24:	00d12623          	sw	a3,12(sp)
    4d28:	00000097          	auipc	ra,0x0
    4d2c:	ad8080e7          	jalr	-1320(ra) # 4800 <fl_fflush>
    4d30:	00c12683          	lw	a3,12(sp)
    4d34:	438d2823          	sw	s8,1072(s10)
    4d38:	420d2a23          	sw	zero,1076(s10)
    4d3c:	0096d693          	srli	a3,a3,0x9
    4d40:	00040593          	mv	a1,s0
    4d44:	000c8613          	mv	a2,s9
    4d48:	000d0513          	mv	a0,s10
    4d4c:	00000097          	auipc	ra,0x0
    4d50:	904080e7          	jalr	-1788(ra) # 4650 <_write_sectors>
    4d54:	008d2703          	lw	a4,8(s10)
    4d58:	00951693          	slli	a3,a0,0x9
    4d5c:	00d90933          	add	s2,s2,a3
    4d60:	00d70733          	add	a4,a4,a3
    4d64:	00ed2423          	sw	a4,8(s10)
    4d68:	00a40433          	add	s0,s0,a0
    4d6c:	0a051863          	bnez	a0,4e1c <fl_fwrite+0x238>
    4d70:	008d2703          	lw	a4,8(s10)
    4d74:	00cd2683          	lw	a3,12(s10)
    4d78:	0ae6e663          	bltu	a3,a4,4e24 <fl_fwrite+0x240>
    4d7c:	040aa783          	lw	a5,64(s5)
    4d80:	ec078ae3          	beqz	a5,4c54 <fl_fwrite+0x70>
    4d84:	000780e7          	jalr	a5
    4d88:	ecdff06f          	j	4c54 <fl_fwrite+0x70>
    4d8c:	413b8a33          	sub	s4,s7,s3
    4d90:	0146f463          	bgeu	a3,s4,4d98 <fl_fwrite+0x1b4>
    4d94:	00068a13          	mv	s4,a3
    4d98:	04e40a63          	beq	s0,a4,4dec <fl_fwrite+0x208>
    4d9c:	434d2703          	lw	a4,1076(s10)
    4da0:	00070863          	beqz	a4,4db0 <fl_fwrite+0x1cc>
    4da4:	000d0513          	mv	a0,s10
    4da8:	00000097          	auipc	ra,0x0
    4dac:	a58080e7          	jalr	-1448(ra) # 4800 <fl_fflush>
    4db0:	037a0a63          	beq	s4,s7,4de4 <fl_fwrite+0x200>
    4db4:	00100693          	li	a3,1
    4db8:	000b0613          	mv	a2,s6
    4dbc:	00040593          	mv	a1,s0
    4dc0:	000d0513          	mv	a0,s10
    4dc4:	fffff097          	auipc	ra,0xfffff
    4dc8:	19c080e7          	jalr	412(ra) # 3f60 <_read_sectors>
    4dcc:	00051c63          	bnez	a0,4de4 <fl_fwrite+0x200>
    4dd0:	20000613          	li	a2,512
    4dd4:	00000593          	li	a1,0
    4dd8:	000b0513          	mv	a0,s6
    4ddc:	ffffc097          	auipc	ra,0xffffc
    4de0:	90c080e7          	jalr	-1780(ra) # 6e8 <memset>
    4de4:	428d2823          	sw	s0,1072(s10)
    4de8:	420d2a23          	sw	zero,1076(s10)
    4dec:	000a0613          	mv	a2,s4
    4df0:	000c8593          	mv	a1,s9
    4df4:	013b0533          	add	a0,s6,s3
    4df8:	ffffc097          	auipc	ra,0xffffc
    4dfc:	90c080e7          	jalr	-1780(ra) # 704 <memcpy>
    4e00:	008d2703          	lw	a4,8(s10)
    4e04:	00100793          	li	a5,1
    4e08:	42fd2a23          	sw	a5,1076(s10)
    4e0c:	01470733          	add	a4,a4,s4
    4e10:	01490933          	add	s2,s2,s4
    4e14:	00ed2423          	sw	a4,8(s10)
    4e18:	00140413          	addi	s0,s0,1
    4e1c:	00000993          	li	s3,0
    4e20:	ed9ff06f          	j	4cf8 <fl_fwrite+0x114>
    4e24:	00ed2623          	sw	a4,12(s10)
    4e28:	00100713          	li	a4,1
    4e2c:	00ed2823          	sw	a4,16(s10)
    4e30:	f4dff06f          	j	4d7c <fl_fwrite+0x198>

00004e34 <fl_fputc>:
    4e34:	fe010113          	addi	sp,sp,-32
    4e38:	00812c23          	sw	s0,24(sp)
    4e3c:	00058693          	mv	a3,a1
    4e40:	00a107a3          	sb	a0,15(sp)
    4e44:	00050413          	mv	s0,a0
    4e48:	00100613          	li	a2,1
    4e4c:	00100593          	li	a1,1
    4e50:	00f10513          	addi	a0,sp,15
    4e54:	00112e23          	sw	ra,28(sp)
    4e58:	00000097          	auipc	ra,0x0
    4e5c:	d8c080e7          	jalr	-628(ra) # 4be4 <fl_fwrite>
    4e60:	00100793          	li	a5,1
    4e64:	00f50463          	beq	a0,a5,4e6c <fl_fputc+0x38>
    4e68:	00050413          	mv	s0,a0
    4e6c:	01c12083          	lw	ra,28(sp)
    4e70:	00040513          	mv	a0,s0
    4e74:	01812403          	lw	s0,24(sp)
    4e78:	02010113          	addi	sp,sp,32
    4e7c:	00008067          	ret

00004e80 <fl_fputs>:
    4e80:	fe010113          	addi	sp,sp,-32
    4e84:	00812c23          	sw	s0,24(sp)
    4e88:	00112e23          	sw	ra,28(sp)
    4e8c:	00050413          	mv	s0,a0
    4e90:	00b12623          	sw	a1,12(sp)
    4e94:	ffffc097          	auipc	ra,0xffffc
    4e98:	894080e7          	jalr	-1900(ra) # 728 <strlen>
    4e9c:	00050613          	mv	a2,a0
    4ea0:	00040513          	mv	a0,s0
    4ea4:	01812403          	lw	s0,24(sp)
    4ea8:	00c12683          	lw	a3,12(sp)
    4eac:	01c12083          	lw	ra,28(sp)
    4eb0:	00100593          	li	a1,1
    4eb4:	02010113          	addi	sp,sp,32
    4eb8:	00000317          	auipc	t1,0x0
    4ebc:	d2c30067          	jr	-724(t1) # 4be4 <fl_fwrite>

00004ec0 <fatfs_allocate_free_space.part.0>:
    4ec0:	02452703          	lw	a4,36(a0)
    4ec4:	fd010113          	addi	sp,sp,-48
    4ec8:	02812423          	sw	s0,40(sp)
    4ecc:	03212023          	sw	s2,32(sp)
    4ed0:	01312e23          	sw	s3,28(sp)
    4ed4:	01512a23          	sw	s5,20(sp)
    4ed8:	02112623          	sw	ra,44(sp)
    4edc:	02912223          	sw	s1,36(sp)
    4ee0:	01412c23          	sw	s4,24(sp)
    4ee4:	fff00793          	li	a5,-1
    4ee8:	00050413          	mv	s0,a0
    4eec:	00058a93          	mv	s5,a1
    4ef0:	00060913          	mv	s2,a2
    4ef4:	00068993          	mv	s3,a3
    4ef8:	00f70863          	beq	a4,a5,4f08 <fatfs_allocate_free_space.part.0+0x48>
    4efc:	fff00593          	li	a1,-1
    4f00:	fffff097          	auipc	ra,0xfffff
    4f04:	1ac080e7          	jalr	428(ra) # 40ac <fatfs_set_fs_info_next_free_cluster>
    4f08:	00044a03          	lbu	s4,0(s0)
    4f0c:	00098513          	mv	a0,s3
    4f10:	009a1a13          	slli	s4,s4,0x9
    4f14:	000a0593          	mv	a1,s4
    4f18:	ffffb097          	auipc	ra,0xffffb
    4f1c:	6fc080e7          	jalr	1788(ra) # 614 <__udivsi3>
    4f20:	00050493          	mv	s1,a0
    4f24:	00050593          	mv	a1,a0
    4f28:	000a0513          	mv	a0,s4
    4f2c:	ffffc097          	auipc	ra,0xffffc
    4f30:	f34080e7          	jalr	-204(ra) # e60 <__mulsi3>
    4f34:	00a98463          	beq	s3,a0,4f3c <fatfs_allocate_free_space.part.0+0x7c>
    4f38:	00148493          	addi	s1,s1,1
    4f3c:	060a8463          	beqz	s5,4fa4 <fatfs_allocate_free_space.part.0+0xe4>
    4f40:	00842583          	lw	a1,8(s0)
    4f44:	00c10613          	addi	a2,sp,12
    4f48:	00040513          	mv	a0,s0
    4f4c:	fffff097          	auipc	ra,0xfffff
    4f50:	218080e7          	jalr	536(ra) # 4164 <fatfs_find_blank_cluster>
    4f54:	02050663          	beqz	a0,4f80 <fatfs_allocate_free_space.part.0+0xc0>
    4f58:	00100793          	li	a5,1
    4f5c:	04f49863          	bne	s1,a5,4fac <fatfs_allocate_free_space.part.0+0xec>
    4f60:	00c12483          	lw	s1,12(sp)
    4f64:	fff00613          	li	a2,-1
    4f68:	00040513          	mv	a0,s0
    4f6c:	00048593          	mv	a1,s1
    4f70:	fffff097          	auipc	ra,0xfffff
    4f74:	314080e7          	jalr	788(ra) # 4284 <fatfs_fat_set_cluster>
    4f78:	00100513          	li	a0,1
    4f7c:	00992023          	sw	s1,0(s2)
    4f80:	02c12083          	lw	ra,44(sp)
    4f84:	02812403          	lw	s0,40(sp)
    4f88:	02412483          	lw	s1,36(sp)
    4f8c:	02012903          	lw	s2,32(sp)
    4f90:	01c12983          	lw	s3,28(sp)
    4f94:	01812a03          	lw	s4,24(sp)
    4f98:	01412a83          	lw	s5,20(sp)
    4f9c:	03010113          	addi	sp,sp,48
    4fa0:	00008067          	ret
    4fa4:	00092783          	lw	a5,0(s2)
    4fa8:	00f12623          	sw	a5,12(sp)
    4fac:	00048613          	mv	a2,s1
    4fb0:	00c10593          	addi	a1,sp,12
    4fb4:	00040513          	mv	a0,s0
    4fb8:	fffff097          	auipc	ra,0xfffff
    4fbc:	5c8080e7          	jalr	1480(ra) # 4580 <fatfs_add_free_space>
    4fc0:	00a03533          	snez	a0,a0
    4fc4:	fbdff06f          	j	4f80 <fatfs_allocate_free_space.part.0+0xc0>

00004fc8 <fatfs_allocate_free_space>:
    4fc8:	00068663          	beqz	a3,4fd4 <fatfs_allocate_free_space+0xc>
    4fcc:	00000317          	auipc	t1,0x0
    4fd0:	ef430067          	jr	-268(t1) # 4ec0 <fatfs_allocate_free_space.part.0>
    4fd4:	00000513          	li	a0,0
    4fd8:	00008067          	ret

00004fdc <fatfs_add_file_entry>:
    4fdc:	f8010113          	addi	sp,sp,-128
    4fe0:	00f12823          	sw	a5,16(sp)
    4fe4:	03852783          	lw	a5,56(a0)
    4fe8:	06112e23          	sw	ra,124(sp)
    4fec:	06812c23          	sw	s0,120(sp)
    4ff0:	06912a23          	sw	s1,116(sp)
    4ff4:	07212823          	sw	s2,112(sp)
    4ff8:	07312623          	sw	s3,108(sp)
    4ffc:	07412423          	sw	s4,104(sp)
    5000:	07512223          	sw	s5,100(sp)
    5004:	07612023          	sw	s6,96(sp)
    5008:	05712e23          	sw	s7,92(sp)
    500c:	05812c23          	sw	s8,88(sp)
    5010:	05912a23          	sw	s9,84(sp)
    5014:	05a12823          	sw	s10,80(sp)
    5018:	05b12623          	sw	s11,76(sp)
    501c:	00e12623          	sw	a4,12(sp)
    5020:	01012a23          	sw	a6,20(sp)
    5024:	04079463          	bnez	a5,506c <fatfs_add_file_entry+0x90>
    5028:	00000913          	li	s2,0
    502c:	07c12083          	lw	ra,124(sp)
    5030:	07812403          	lw	s0,120(sp)
    5034:	07412483          	lw	s1,116(sp)
    5038:	06c12983          	lw	s3,108(sp)
    503c:	06812a03          	lw	s4,104(sp)
    5040:	06412a83          	lw	s5,100(sp)
    5044:	06012b03          	lw	s6,96(sp)
    5048:	05c12b83          	lw	s7,92(sp)
    504c:	05812c03          	lw	s8,88(sp)
    5050:	05412c83          	lw	s9,84(sp)
    5054:	05012d03          	lw	s10,80(sp)
    5058:	04c12d83          	lw	s11,76(sp)
    505c:	00090513          	mv	a0,s2
    5060:	07012903          	lw	s2,112(sp)
    5064:	08010113          	addi	sp,sp,128
    5068:	00008067          	ret
    506c:	00050413          	mv	s0,a0
    5070:	00060513          	mv	a0,a2
    5074:	00058b13          	mv	s6,a1
    5078:	00060c93          	mv	s9,a2
    507c:	00068b93          	mv	s7,a3
    5080:	ffffd097          	auipc	ra,0xffffd
    5084:	a74080e7          	jalr	-1420(ra) # 1af4 <fatfs_lfn_entries_required>
    5088:	00150713          	addi	a4,a0,1
    508c:	00100793          	li	a5,1
    5090:	00050493          	mv	s1,a0
    5094:	f8e7fae3          	bgeu	a5,a4,5028 <fatfs_add_file_entry+0x4c>
    5098:	00000993          	li	s3,0
    509c:	00000a93          	li	s5,0
    50a0:	00000a13          	li	s4,0
    50a4:	00000c13          	li	s8,0
    50a8:	00000d13          	li	s10,0
    50ac:	01000d93          	li	s11,16
    50b0:	00000693          	li	a3,0
    50b4:	00098613          	mv	a2,s3
    50b8:	000b0593          	mv	a1,s6
    50bc:	00040513          	mv	a0,s0
    50c0:	ffffe097          	auipc	ra,0xffffe
    50c4:	0c0080e7          	jalr	192(ra) # 3180 <fatfs_sector_reader>
    50c8:	00050913          	mv	s2,a0
    50cc:	14050a63          	beqz	a0,5220 <fatfs_add_file_entry+0x244>
    50d0:	04440693          	addi	a3,s0,68
    50d4:	000d0913          	mv	s2,s10
    50d8:	00000713          	li	a4,0
    50dc:	00068513          	mv	a0,a3
    50e0:	00e12e23          	sw	a4,28(sp)
    50e4:	00d12c23          	sw	a3,24(sp)
    50e8:	ffffd097          	auipc	ra,0xffffd
    50ec:	91c080e7          	jalr	-1764(ra) # 1a04 <fatfs_entry_lfn_text>
    50f0:	01812683          	lw	a3,24(sp)
    50f4:	01c12703          	lw	a4,28(sp)
    50f8:	00050d13          	mv	s10,a0
    50fc:	02050c63          	beqz	a0,5134 <fatfs_add_file_entry+0x158>
    5100:	00091863          	bnez	s2,5110 <fatfs_add_file_entry+0x134>
    5104:	00070a93          	mv	s5,a4
    5108:	00098a13          	mv	s4,s3
    510c:	00100c13          	li	s8,1
    5110:	00190d13          	addi	s10,s2,1
    5114:	00170713          	addi	a4,a4,1
    5118:	0ff77713          	zext.b	a4,a4
    511c:	02068693          	addi	a3,a3,32
    5120:	01b71663          	bne	a4,s11,512c <fatfs_add_file_entry+0x150>
    5124:	00198993          	addi	s3,s3,1
    5128:	f89ff06f          	j	50b0 <fatfs_add_file_entry+0xd4>
    512c:	000d0913          	mv	s2,s10
    5130:	fadff06f          	j	50dc <fatfs_add_file_entry+0x100>
    5134:	0006c603          	lbu	a2,0(a3)
    5138:	0e500793          	li	a5,229
    513c:	0cf61c63          	bne	a2,a5,5214 <fatfs_add_file_entry+0x238>
    5140:	00091863          	bnez	s2,5150 <fatfs_add_file_entry+0x174>
    5144:	00070a93          	mv	s5,a4
    5148:	00098a13          	mv	s4,s3
    514c:	00100c13          	li	s8,1
    5150:	00190d13          	addi	s10,s2,1
    5154:	fc9940e3          	blt	s2,s1,5114 <fatfs_add_file_entry+0x138>
    5158:	00bb8713          	addi	a4,s7,11
    515c:	000b8793          	mv	a5,s7
    5160:	00000913          	li	s2,0
    5164:	0007c603          	lbu	a2,0(a5)
    5168:	00791693          	slli	a3,s2,0x7
    516c:	00195913          	srli	s2,s2,0x1
    5170:	00c90933          	add	s2,s2,a2
    5174:	00178793          	addi	a5,a5,1
    5178:	00d90933          	add	s2,s2,a3
    517c:	0ff97913          	zext.b	s2,s2
    5180:	fee792e3          	bne	a5,a4,5164 <fatfs_add_file_entry+0x188>
    5184:	000a0993          	mv	s3,s4
    5188:	00000d93          	li	s11,0
    518c:	00000693          	li	a3,0
    5190:	00098613          	mv	a2,s3
    5194:	000b0593          	mv	a1,s6
    5198:	00040513          	mv	a0,s0
    519c:	ffffe097          	auipc	ra,0xffffe
    51a0:	fe4080e7          	jalr	-28(ra) # 3180 <fatfs_sector_reader>
    51a4:	e80502e3          	beqz	a0,5028 <fatfs_add_file_entry+0x4c>
    51a8:	04440d13          	addi	s10,s0,68
    51ac:	00000713          	li	a4,0
    51b0:	00000793          	li	a5,0
    51b4:	000d0c13          	mv	s8,s10
    51b8:	000d9663          	bnez	s11,51c4 <fatfs_add_file_entry+0x1e8>
    51bc:	11499e63          	bne	s3,s4,52d8 <fatfs_add_file_entry+0x2fc>
    51c0:	11579c63          	bne	a5,s5,52d8 <fatfs_add_file_entry+0x2fc>
    51c4:	0e049463          	bnez	s1,52ac <fatfs_add_file_entry+0x2d0>
    51c8:	01412703          	lw	a4,20(sp)
    51cc:	00c12603          	lw	a2,12(sp)
    51d0:	01012583          	lw	a1,16(sp)
    51d4:	02010693          	addi	a3,sp,32
    51d8:	000b8513          	mv	a0,s7
    51dc:	ffffd097          	auipc	ra,0xffffd
    51e0:	a70080e7          	jalr	-1424(ra) # 1c4c <fatfs_sfn_create_entry>
    51e4:	02000613          	li	a2,32
    51e8:	02010593          	addi	a1,sp,32
    51ec:	000d0513          	mv	a0,s10
    51f0:	ffffb097          	auipc	ra,0xffffb
    51f4:	514080e7          	jalr	1300(ra) # 704 <memcpy>
    51f8:	03842783          	lw	a5,56(s0)
    51fc:	24442503          	lw	a0,580(s0)
    5200:	00100613          	li	a2,1
    5204:	000c0593          	mv	a1,s8
    5208:	000780e7          	jalr	a5
    520c:	00050913          	mv	s2,a0
    5210:	e1dff06f          	j	502c <fatfs_add_file_entry+0x50>
    5214:	f20606e3          	beqz	a2,5140 <fatfs_add_file_entry+0x164>
    5218:	00000c13          	li	s8,0
    521c:	ef9ff06f          	j	5114 <fatfs_add_file_entry+0x138>
    5220:	00842583          	lw	a1,8(s0)
    5224:	02010613          	addi	a2,sp,32
    5228:	00040513          	mv	a0,s0
    522c:	fffff097          	auipc	ra,0xfffff
    5230:	f38080e7          	jalr	-200(ra) # 4164 <fatfs_find_blank_cluster>
    5234:	de050ce3          	beqz	a0,502c <fatfs_add_file_entry+0x50>
    5238:	02012d83          	lw	s11,32(sp)
    523c:	000b0593          	mv	a1,s6
    5240:	00040513          	mv	a0,s0
    5244:	000d8613          	mv	a2,s11
    5248:	fffff097          	auipc	ra,0xfffff
    524c:	1c4080e7          	jalr	452(ra) # 440c <fatfs_fat_add_cluster_to_chain>
    5250:	dc050ee3          	beqz	a0,502c <fatfs_add_file_entry+0x50>
    5254:	20000613          	li	a2,512
    5258:	00000593          	li	a1,0
    525c:	04440513          	addi	a0,s0,68
    5260:	ffffb097          	auipc	ra,0xffffb
    5264:	488080e7          	jalr	1160(ra) # 6e8 <memset>
    5268:	00000d13          	li	s10,0
    526c:	00044783          	lbu	a5,0(s0)
    5270:	00fd6a63          	bltu	s10,a5,5284 <fatfs_add_file_entry+0x2a8>
    5274:	ee0c12e3          	bnez	s8,5158 <fatfs_add_file_entry+0x17c>
    5278:	00098a13          	mv	s4,s3
    527c:	00000a93          	li	s5,0
    5280:	ed9ff06f          	j	5158 <fatfs_add_file_entry+0x17c>
    5284:	00000693          	li	a3,0
    5288:	000d0613          	mv	a2,s10
    528c:	000d8593          	mv	a1,s11
    5290:	00040513          	mv	a0,s0
    5294:	ffffc097          	auipc	ra,0xffffc
    5298:	1c8080e7          	jalr	456(ra) # 145c <fatfs_write_sector>
    529c:	d80508e3          	beqz	a0,502c <fatfs_add_file_entry+0x50>
    52a0:	001d0613          	addi	a2,s10,1
    52a4:	0ff67d13          	zext.b	s10,a2
    52a8:	fc5ff06f          	j	526c <fatfs_add_file_entry+0x290>
    52ac:	fff48493          	addi	s1,s1,-1
    52b0:	00090693          	mv	a3,s2
    52b4:	00048613          	mv	a2,s1
    52b8:	000d0593          	mv	a1,s10
    52bc:	000c8513          	mv	a0,s9
    52c0:	00f12c23          	sw	a5,24(sp)
    52c4:	ffffd097          	auipc	ra,0xffffd
    52c8:	860080e7          	jalr	-1952(ra) # 1b24 <fatfs_filename_to_lfn>
    52cc:	01812783          	lw	a5,24(sp)
    52d0:	00100d93          	li	s11,1
    52d4:	00100713          	li	a4,1
    52d8:	00178793          	addi	a5,a5,1
    52dc:	0ff7f793          	zext.b	a5,a5
    52e0:	01000693          	li	a3,16
    52e4:	020d0d13          	addi	s10,s10,32
    52e8:	ecd798e3          	bne	a5,a3,51b8 <fatfs_add_file_entry+0x1dc>
    52ec:	00070e63          	beqz	a4,5308 <fatfs_add_file_entry+0x32c>
    52f0:	03842783          	lw	a5,56(s0)
    52f4:	24442503          	lw	a0,580(s0)
    52f8:	00100613          	li	a2,1
    52fc:	000c0593          	mv	a1,s8
    5300:	000780e7          	jalr	a5
    5304:	d20502e3          	beqz	a0,5028 <fatfs_add_file_entry+0x4c>
    5308:	00198993          	addi	s3,s3,1
    530c:	e81ff06f          	j	518c <fatfs_add_file_entry+0x1b0>

00005310 <fl_fopen>:
    5310:	000067b7          	lui	a5,0x6
    5314:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    5318:	fa010113          	addi	sp,sp,-96
    531c:	04812c23          	sw	s0,88(sp)
    5320:	05412423          	sw	s4,72(sp)
    5324:	04112e23          	sw	ra,92(sp)
    5328:	04912a23          	sw	s1,84(sp)
    532c:	05212823          	sw	s2,80(sp)
    5330:	05312623          	sw	s3,76(sp)
    5334:	05512223          	sw	s5,68(sp)
    5338:	05612023          	sw	s6,64(sp)
    533c:	03712e23          	sw	s7,60(sp)
    5340:	03812c23          	sw	s8,56(sp)
    5344:	03912a23          	sw	s9,52(sp)
    5348:	00050a13          	mv	s4,a0
    534c:	00058413          	mv	s0,a1
    5350:	00079663          	bnez	a5,535c <fl_fopen+0x4c>
    5354:	ffffc097          	auipc	ra,0xffffc
    5358:	2a0080e7          	jalr	672(ra) # 15f4 <fl_init>
    535c:	000067b7          	lui	a5,0x6
    5360:	e6c7a783          	lw	a5,-404(a5) # 5e6c <_filelib_valid>
    5364:	30078263          	beqz	a5,5668 <fl_fopen+0x358>
    5368:	300a0063          	beqz	s4,5668 <fl_fopen+0x358>
    536c:	10040463          	beqz	s0,5474 <fl_fopen+0x164>
    5370:	00040513          	mv	a0,s0
    5374:	ffffb097          	auipc	ra,0xffffb
    5378:	3b4080e7          	jalr	948(ra) # 728 <strlen>
    537c:	00000493          	li	s1,0
    5380:	00000713          	li	a4,0
    5384:	05700693          	li	a3,87
    5388:	07200613          	li	a2,114
    538c:	07700813          	li	a6,119
    5390:	06100893          	li	a7,97
    5394:	06200313          	li	t1,98
    5398:	04100593          	li	a1,65
    539c:	04200e13          	li	t3,66
    53a0:	05200e93          	li	t4,82
    53a4:	02b00f13          	li	t5,43
    53a8:	10a74263          	blt	a4,a0,54ac <fl_fopen+0x19c>
    53ac:	00006937          	lui	s2,0x6
    53b0:	ec890793          	addi	a5,s2,-312 # 5ec8 <_fs>
    53b4:	0387a783          	lw	a5,56(a5)
    53b8:	ec890b13          	addi	s6,s2,-312
    53bc:	00079463          	bnez	a5,53c4 <fl_fopen+0xb4>
    53c0:	0d94f493          	andi	s1,s1,217
    53c4:	03cb2783          	lw	a5,60(s6)
    53c8:	00078463          	beqz	a5,53d0 <fl_fopen+0xc0>
    53cc:	000780e7          	jalr	a5
    53d0:	0014fc13          	andi	s8,s1,1
    53d4:	160c1463          	bnez	s8,553c <fl_fopen+0x22c>
    53d8:	0204f793          	andi	a5,s1,32
    53dc:	08078463          	beqz	a5,5464 <fl_fopen+0x154>
    53e0:	038b2783          	lw	a5,56(s6)
    53e4:	06078a63          	beqz	a5,5458 <fl_fopen+0x148>
    53e8:	ffffc097          	auipc	ra,0xffffc
    53ec:	e94080e7          	jalr	-364(ra) # 127c <_allocate_file>
    53f0:	00050413          	mv	s0,a0
    53f4:	06050263          	beqz	a0,5458 <fl_fopen+0x148>
    53f8:	01450b93          	addi	s7,a0,20
    53fc:	10400613          	li	a2,260
    5400:	00000593          	li	a1,0
    5404:	000b8513          	mv	a0,s7
    5408:	ffffb097          	auipc	ra,0xffffb
    540c:	2e0080e7          	jalr	736(ra) # 6e8 <memset>
    5410:	11840a93          	addi	s5,s0,280
    5414:	10400613          	li	a2,260
    5418:	00000593          	li	a1,0
    541c:	000a8513          	mv	a0,s5
    5420:	ffffb097          	auipc	ra,0xffffb
    5424:	2c8080e7          	jalr	712(ra) # 6e8 <memset>
    5428:	10400713          	li	a4,260
    542c:	000a8693          	mv	a3,s5
    5430:	10400613          	li	a2,260
    5434:	000b8593          	mv	a1,s7
    5438:	000a0513          	mv	a0,s4
    543c:	ffffd097          	auipc	ra,0xffffd
    5440:	d04080e7          	jalr	-764(ra) # 2140 <fatfs_split_path>
    5444:	fff00793          	li	a5,-1
    5448:	10f51863          	bne	a0,a5,5558 <fl_fopen+0x248>
    544c:	00040513          	mv	a0,s0
    5450:	ffffc097          	auipc	ra,0xffffc
    5454:	ea0080e7          	jalr	-352(ra) # 12f0 <_free_file>
    5458:	000c1663          	bnez	s8,5464 <fl_fopen+0x154>
    545c:	0064f793          	andi	a5,s1,6
    5460:	1e079a63          	bnez	a5,5654 <fl_fopen+0x344>
    5464:	00000413          	li	s0,0
    5468:	040b2783          	lw	a5,64(s6)
    546c:	00078463          	beqz	a5,5474 <fl_fopen+0x164>
    5470:	000780e7          	jalr	a5
    5474:	05c12083          	lw	ra,92(sp)
    5478:	00040513          	mv	a0,s0
    547c:	05812403          	lw	s0,88(sp)
    5480:	05412483          	lw	s1,84(sp)
    5484:	05012903          	lw	s2,80(sp)
    5488:	04c12983          	lw	s3,76(sp)
    548c:	04812a03          	lw	s4,72(sp)
    5490:	04412a83          	lw	s5,68(sp)
    5494:	04012b03          	lw	s6,64(sp)
    5498:	03c12b83          	lw	s7,60(sp)
    549c:	03812c03          	lw	s8,56(sp)
    54a0:	03412c83          	lw	s9,52(sp)
    54a4:	06010113          	addi	sp,sp,96
    54a8:	00008067          	ret
    54ac:	00e407b3          	add	a5,s0,a4
    54b0:	0007c783          	lbu	a5,0(a5)
    54b4:	04d78463          	beq	a5,a3,54fc <fl_fopen+0x1ec>
    54b8:	02f6e463          	bltu	a3,a5,54e0 <fl_fopen+0x1d0>
    54bc:	04b78463          	beq	a5,a1,5504 <fl_fopen+0x1f4>
    54c0:	00f5e863          	bltu	a1,a5,54d0 <fl_fopen+0x1c0>
    54c4:	05e78463          	beq	a5,t5,550c <fl_fopen+0x1fc>
    54c8:	00170713          	addi	a4,a4,1
    54cc:	eddff06f          	j	53a8 <fl_fopen+0x98>
    54d0:	03c78063          	beq	a5,t3,54f0 <fl_fopen+0x1e0>
    54d4:	ffd79ae3          	bne	a5,t4,54c8 <fl_fopen+0x1b8>
    54d8:	0014e493          	ori	s1,s1,1
    54dc:	fedff06f          	j	54c8 <fl_fopen+0x1b8>
    54e0:	fec78ce3          	beq	a5,a2,54d8 <fl_fopen+0x1c8>
    54e4:	00f66a63          	bltu	a2,a5,54f8 <fl_fopen+0x1e8>
    54e8:	01178e63          	beq	a5,a7,5504 <fl_fopen+0x1f4>
    54ec:	fc679ee3          	bne	a5,t1,54c8 <fl_fopen+0x1b8>
    54f0:	0084e493          	ori	s1,s1,8
    54f4:	fd5ff06f          	j	54c8 <fl_fopen+0x1b8>
    54f8:	fd0798e3          	bne	a5,a6,54c8 <fl_fopen+0x1b8>
    54fc:	0324e493          	ori	s1,s1,50
    5500:	fc9ff06f          	j	54c8 <fl_fopen+0x1b8>
    5504:	0264e493          	ori	s1,s1,38
    5508:	fc1ff06f          	j	54c8 <fl_fopen+0x1b8>
    550c:	0014f793          	andi	a5,s1,1
    5510:	00078663          	beqz	a5,551c <fl_fopen+0x20c>
    5514:	0024e493          	ori	s1,s1,2
    5518:	fb1ff06f          	j	54c8 <fl_fopen+0x1b8>
    551c:	0024f793          	andi	a5,s1,2
    5520:	00078663          	beqz	a5,552c <fl_fopen+0x21c>
    5524:	0314e493          	ori	s1,s1,49
    5528:	fa1ff06f          	j	54c8 <fl_fopen+0x1b8>
    552c:	0044f793          	andi	a5,s1,4
    5530:	f8078ce3          	beqz	a5,54c8 <fl_fopen+0x1b8>
    5534:	0274e493          	ori	s1,s1,39
    5538:	f91ff06f          	j	54c8 <fl_fopen+0x1b8>
    553c:	000a0513          	mv	a0,s4
    5540:	ffffe097          	auipc	ra,0xffffe
    5544:	160080e7          	jalr	352(ra) # 36a0 <_open_file>
    5548:	00050413          	mv	s0,a0
    554c:	e80506e3          	beqz	a0,53d8 <fl_fopen+0xc8>
    5550:	42940c23          	sb	s1,1080(s0)
    5554:	f15ff06f          	j	5468 <fl_fopen+0x158>
    5558:	00040513          	mv	a0,s0
    555c:	ffffd097          	auipc	ra,0xffffd
    5560:	e34080e7          	jalr	-460(ra) # 2390 <_check_file_open>
    5564:	00050993          	mv	s3,a0
    5568:	ee0512e3          	bnez	a0,544c <fl_fopen+0x13c>
    556c:	01444783          	lbu	a5,20(s0)
    5570:	0a079a63          	bnez	a5,5624 <fl_fopen+0x314>
    5574:	008b2783          	lw	a5,8(s6)
    5578:	00f42023          	sw	a5,0(s0)
    557c:	00042583          	lw	a1,0(s0)
    5580:	01010693          	addi	a3,sp,16
    5584:	000a8613          	mv	a2,s5
    5588:	ec890513          	addi	a0,s2,-312
    558c:	ffffe097          	auipc	ra,0xffffe
    5590:	d34080e7          	jalr	-716(ra) # 32c0 <fatfs_get_file_entry>
    5594:	00100793          	li	a5,1
    5598:	eaf50ae3          	beq	a0,a5,544c <fl_fopen+0x13c>
    559c:	00042223          	sw	zero,4(s0)
    55a0:	00100693          	li	a3,1
    55a4:	00440613          	addi	a2,s0,4
    55a8:	00100593          	li	a1,1
    55ac:	ec890513          	addi	a0,s2,-312
    55b0:	00000097          	auipc	ra,0x0
    55b4:	910080e7          	jalr	-1776(ra) # 4ec0 <fatfs_allocate_free_space.part.0>
    55b8:	e8050ae3          	beqz	a0,544c <fl_fopen+0x13c>
    55bc:	00002cb7          	lui	s9,0x2
    55c0:	21c40b93          	addi	s7,s0,540
    55c4:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_init+0xa7>
    55c8:	000a8593          	mv	a1,s5
    55cc:	00410513          	addi	a0,sp,4
    55d0:	ffffc097          	auipc	ra,0xffffc
    55d4:	720080e7          	jalr	1824(ra) # 1cf0 <fatfs_lfn_create_sfn>
    55d8:	06098263          	beqz	s3,563c <fl_fopen+0x32c>
    55dc:	00098613          	mv	a2,s3
    55e0:	00410593          	addi	a1,sp,4
    55e4:	000b8513          	mv	a0,s7
    55e8:	ffffd097          	auipc	ra,0xffffd
    55ec:	880080e7          	jalr	-1920(ra) # 1e68 <fatfs_lfn_generate_tail>
    55f0:	00042583          	lw	a1,0(s0)
    55f4:	000b8613          	mv	a2,s7
    55f8:	ec890513          	addi	a0,s2,-312
    55fc:	ffffe097          	auipc	ra,0xffffe
    5600:	21c080e7          	jalr	540(ra) # 3818 <fatfs_sfn_exists>
    5604:	06050663          	beqz	a0,5670 <fl_fopen+0x360>
    5608:	00198993          	addi	s3,s3,1
    560c:	fb999ee3          	bne	s3,s9,55c8 <fl_fopen+0x2b8>
    5610:	00442583          	lw	a1,4(s0)
    5614:	ec890513          	addi	a0,s2,-312
    5618:	fffff097          	auipc	ra,0xfffff
    561c:	d84080e7          	jalr	-636(ra) # 439c <fatfs_free_cluster_chain>
    5620:	e2dff06f          	j	544c <fl_fopen+0x13c>
    5624:	00040593          	mv	a1,s0
    5628:	000b8513          	mv	a0,s7
    562c:	ffffe097          	auipc	ra,0xffffe
    5630:	e9c080e7          	jalr	-356(ra) # 34c8 <_open_directory>
    5634:	f40514e3          	bnez	a0,557c <fl_fopen+0x26c>
    5638:	e15ff06f          	j	544c <fl_fopen+0x13c>
    563c:	00b00613          	li	a2,11
    5640:	00410593          	addi	a1,sp,4
    5644:	000b8513          	mv	a0,s7
    5648:	ffffb097          	auipc	ra,0xffffb
    564c:	0bc080e7          	jalr	188(ra) # 704 <memcpy>
    5650:	fa1ff06f          	j	55f0 <fl_fopen+0x2e0>
    5654:	000a0513          	mv	a0,s4
    5658:	ffffe097          	auipc	ra,0xffffe
    565c:	048080e7          	jalr	72(ra) # 36a0 <_open_file>
    5660:	00050413          	mv	s0,a0
    5664:	0640006f          	j	56c8 <fl_fopen+0x3b8>
    5668:	00000413          	li	s0,0
    566c:	e09ff06f          	j	5474 <fl_fopen+0x164>
    5670:	00442703          	lw	a4,4(s0)
    5674:	00042583          	lw	a1,0(s0)
    5678:	00000813          	li	a6,0
    567c:	00000793          	li	a5,0
    5680:	000b8693          	mv	a3,s7
    5684:	000a8613          	mv	a2,s5
    5688:	ec890513          	addi	a0,s2,-312
    568c:	00000097          	auipc	ra,0x0
    5690:	950080e7          	jalr	-1712(ra) # 4fdc <fatfs_add_file_entry>
    5694:	f6050ee3          	beqz	a0,5610 <fl_fopen+0x300>
    5698:	fff00793          	li	a5,-1
    569c:	00042623          	sw	zero,12(s0)
    56a0:	00042423          	sw	zero,8(s0)
    56a4:	42f42823          	sw	a5,1072(s0)
    56a8:	42042a23          	sw	zero,1076(s0)
    56ac:	00042823          	sw	zero,16(s0)
    56b0:	22f42423          	sw	a5,552(s0)
    56b4:	22f42623          	sw	a5,556(s0)
    56b8:	ec890513          	addi	a0,s2,-312
    56bc:	ffffe097          	auipc	ra,0xffffe
    56c0:	8e0080e7          	jalr	-1824(ra) # 2f9c <fatfs_fat_purge>
    56c4:	e80c06e3          	beqz	s8,5550 <fl_fopen+0x240>
    56c8:	e80414e3          	bnez	s0,5550 <fl_fopen+0x240>
    56cc:	d99ff06f          	j	5464 <fl_fopen+0x154>

000056d0 <fl_remove>:
    56d0:	fe010113          	addi	sp,sp,-32
    56d4:	00912a23          	sw	s1,20(sp)
    56d8:	000064b7          	lui	s1,0x6
    56dc:	ec848793          	addi	a5,s1,-312 # 5ec8 <_fs>
    56e0:	03c7a783          	lw	a5,60(a5)
    56e4:	01212823          	sw	s2,16(sp)
    56e8:	00112e23          	sw	ra,28(sp)
    56ec:	00812c23          	sw	s0,24(sp)
    56f0:	ec848913          	addi	s2,s1,-312
    56f4:	00078863          	beqz	a5,5704 <fl_remove+0x34>
    56f8:	00a12623          	sw	a0,12(sp)
    56fc:	000780e7          	jalr	a5
    5700:	00c12503          	lw	a0,12(sp)
    5704:	000065b7          	lui	a1,0x6
    5708:	dd458593          	addi	a1,a1,-556 # 5dd4 <font+0x328>
    570c:	00000097          	auipc	ra,0x0
    5710:	c04080e7          	jalr	-1020(ra) # 5310 <fl_fopen>
    5714:	00050413          	mv	s0,a0
    5718:	02051a63          	bnez	a0,574c <fl_remove+0x7c>
    571c:	fff00513          	li	a0,-1
    5720:	04092783          	lw	a5,64(s2)
    5724:	00078863          	beqz	a5,5734 <fl_remove+0x64>
    5728:	00a12623          	sw	a0,12(sp)
    572c:	000780e7          	jalr	a5
    5730:	00c12503          	lw	a0,12(sp)
    5734:	01c12083          	lw	ra,28(sp)
    5738:	01812403          	lw	s0,24(sp)
    573c:	01412483          	lw	s1,20(sp)
    5740:	01012903          	lw	s2,16(sp)
    5744:	02010113          	addi	sp,sp,32
    5748:	00008067          	ret
    574c:	00452583          	lw	a1,4(a0)
    5750:	ec848513          	addi	a0,s1,-312
    5754:	fffff097          	auipc	ra,0xfffff
    5758:	c48080e7          	jalr	-952(ra) # 439c <fatfs_free_cluster_chain>
    575c:	fc0500e3          	beqz	a0,571c <fl_remove+0x4c>
    5760:	00042583          	lw	a1,0(s0)
    5764:	21c40613          	addi	a2,s0,540
    5768:	ec848513          	addi	a0,s1,-312
    576c:	ffffe097          	auipc	ra,0xffffe
    5770:	2e8080e7          	jalr	744(ra) # 3a54 <fatfs_mark_file_deleted>
    5774:	fa0504e3          	beqz	a0,571c <fl_remove+0x4c>
    5778:	00040513          	mv	a0,s0
    577c:	fffff097          	auipc	ra,0xfffff
    5780:	114080e7          	jalr	276(ra) # 4890 <fl_fclose>
    5784:	00000513          	li	a0,0
    5788:	f99ff06f          	j	5720 <fl_remove+0x50>

0000578c <fl_createdirectory>:
    578c:	000067b7          	lui	a5,0x6
    5790:	e707a783          	lw	a5,-400(a5) # 5e70 <_filelib_init>
    5794:	fa010113          	addi	sp,sp,-96
    5798:	05512223          	sw	s5,68(sp)
    579c:	04112e23          	sw	ra,92(sp)
    57a0:	04812c23          	sw	s0,88(sp)
    57a4:	04912a23          	sw	s1,84(sp)
    57a8:	05212823          	sw	s2,80(sp)
    57ac:	05312623          	sw	s3,76(sp)
    57b0:	05412423          	sw	s4,72(sp)
    57b4:	05612023          	sw	s6,64(sp)
    57b8:	03712e23          	sw	s7,60(sp)
    57bc:	00050a93          	mv	s5,a0
    57c0:	00079663          	bnez	a5,57cc <fl_createdirectory+0x40>
    57c4:	ffffc097          	auipc	ra,0xffffc
    57c8:	e30080e7          	jalr	-464(ra) # 15f4 <fl_init>
    57cc:	00006937          	lui	s2,0x6
    57d0:	ec890793          	addi	a5,s2,-312 # 5ec8 <_fs>
    57d4:	03c7a783          	lw	a5,60(a5)
    57d8:	ec890b13          	addi	s6,s2,-312
    57dc:	00078463          	beqz	a5,57e4 <fl_createdirectory+0x58>
    57e0:	000780e7          	jalr	a5
    57e4:	ffffc097          	auipc	ra,0xffffc
    57e8:	a98080e7          	jalr	-1384(ra) # 127c <_allocate_file>
    57ec:	00050413          	mv	s0,a0
    57f0:	00000493          	li	s1,0
    57f4:	08050663          	beqz	a0,5880 <fl_createdirectory+0xf4>
    57f8:	01450a13          	addi	s4,a0,20
    57fc:	10400613          	li	a2,260
    5800:	00000593          	li	a1,0
    5804:	000a0513          	mv	a0,s4
    5808:	ffffb097          	auipc	ra,0xffffb
    580c:	ee0080e7          	jalr	-288(ra) # 6e8 <memset>
    5810:	11840993          	addi	s3,s0,280
    5814:	10400613          	li	a2,260
    5818:	00000593          	li	a1,0
    581c:	00098513          	mv	a0,s3
    5820:	ffffb097          	auipc	ra,0xffffb
    5824:	ec8080e7          	jalr	-312(ra) # 6e8 <memset>
    5828:	10400713          	li	a4,260
    582c:	00098693          	mv	a3,s3
    5830:	10400613          	li	a2,260
    5834:	000a0593          	mv	a1,s4
    5838:	000a8513          	mv	a0,s5
    583c:	ffffd097          	auipc	ra,0xffffd
    5840:	904080e7          	jalr	-1788(ra) # 2140 <fatfs_split_path>
    5844:	fff00793          	li	a5,-1
    5848:	00f51a63          	bne	a0,a5,585c <fl_createdirectory+0xd0>
    584c:	00040513          	mv	a0,s0
    5850:	ffffc097          	auipc	ra,0xffffc
    5854:	aa0080e7          	jalr	-1376(ra) # 12f0 <_free_file>
    5858:	0280006f          	j	5880 <fl_createdirectory+0xf4>
    585c:	00040513          	mv	a0,s0
    5860:	ffffd097          	auipc	ra,0xffffd
    5864:	b30080e7          	jalr	-1232(ra) # 2390 <_check_file_open>
    5868:	00050493          	mv	s1,a0
    586c:	04050863          	beqz	a0,58bc <fl_createdirectory+0x130>
    5870:	00040513          	mv	a0,s0
    5874:	ffffc097          	auipc	ra,0xffffc
    5878:	a7c080e7          	jalr	-1412(ra) # 12f0 <_free_file>
    587c:	00000493          	li	s1,0
    5880:	040b2783          	lw	a5,64(s6)
    5884:	00078463          	beqz	a5,588c <fl_createdirectory+0x100>
    5888:	000780e7          	jalr	a5
    588c:	05c12083          	lw	ra,92(sp)
    5890:	05812403          	lw	s0,88(sp)
    5894:	05012903          	lw	s2,80(sp)
    5898:	04c12983          	lw	s3,76(sp)
    589c:	04812a03          	lw	s4,72(sp)
    58a0:	04412a83          	lw	s5,68(sp)
    58a4:	04012b03          	lw	s6,64(sp)
    58a8:	03c12b83          	lw	s7,60(sp)
    58ac:	00048513          	mv	a0,s1
    58b0:	05412483          	lw	s1,84(sp)
    58b4:	06010113          	addi	sp,sp,96
    58b8:	00008067          	ret
    58bc:	01444783          	lbu	a5,20(s0)
    58c0:	0c079e63          	bnez	a5,599c <fl_createdirectory+0x210>
    58c4:	008b2783          	lw	a5,8(s6)
    58c8:	00f42023          	sw	a5,0(s0)
    58cc:	00042583          	lw	a1,0(s0)
    58d0:	01010693          	addi	a3,sp,16
    58d4:	00098613          	mv	a2,s3
    58d8:	ec890513          	addi	a0,s2,-312
    58dc:	ffffe097          	auipc	ra,0xffffe
    58e0:	9e4080e7          	jalr	-1564(ra) # 32c0 <fatfs_get_file_entry>
    58e4:	00100793          	li	a5,1
    58e8:	f6f502e3          	beq	a0,a5,584c <fl_createdirectory+0xc0>
    58ec:	00042223          	sw	zero,4(s0)
    58f0:	00100693          	li	a3,1
    58f4:	00440613          	addi	a2,s0,4
    58f8:	00100593          	li	a1,1
    58fc:	ec890513          	addi	a0,s2,-312
    5900:	fffff097          	auipc	ra,0xfffff
    5904:	5c0080e7          	jalr	1472(ra) # 4ec0 <fatfs_allocate_free_space.part.0>
    5908:	f60504e3          	beqz	a0,5870 <fl_createdirectory+0xe4>
    590c:	23040a93          	addi	s5,s0,560
    5910:	20000613          	li	a2,512
    5914:	00000593          	li	a1,0
    5918:	000a8513          	mv	a0,s5
    591c:	ffffb097          	auipc	ra,0xffffb
    5920:	dcc080e7          	jalr	-564(ra) # 6e8 <memset>
    5924:	00000a13          	li	s4,0
    5928:	000b4783          	lbu	a5,0(s6)
    592c:	08fa4463          	blt	s4,a5,59b4 <fl_createdirectory+0x228>
    5930:	00002bb7          	lui	s7,0x2
    5934:	00000a13          	li	s4,0
    5938:	21c40a93          	addi	s5,s0,540
    593c:	70fb8b93          	addi	s7,s7,1807 # 270f <fatfs_init+0xa7>
    5940:	00098593          	mv	a1,s3
    5944:	00410513          	addi	a0,sp,4
    5948:	ffffc097          	auipc	ra,0xffffc
    594c:	3a8080e7          	jalr	936(ra) # 1cf0 <fatfs_lfn_create_sfn>
    5950:	080a0463          	beqz	s4,59d8 <fl_createdirectory+0x24c>
    5954:	000a0613          	mv	a2,s4
    5958:	00410593          	addi	a1,sp,4
    595c:	000a8513          	mv	a0,s5
    5960:	ffffc097          	auipc	ra,0xffffc
    5964:	508080e7          	jalr	1288(ra) # 1e68 <fatfs_lfn_generate_tail>
    5968:	00042583          	lw	a1,0(s0)
    596c:	000a8613          	mv	a2,s5
    5970:	ec890513          	addi	a0,s2,-312
    5974:	ffffe097          	auipc	ra,0xffffe
    5978:	ea4080e7          	jalr	-348(ra) # 3818 <fatfs_sfn_exists>
    597c:	06050a63          	beqz	a0,59f0 <fl_createdirectory+0x264>
    5980:	001a0a13          	addi	s4,s4,1
    5984:	fb7a1ee3          	bne	s4,s7,5940 <fl_createdirectory+0x1b4>
    5988:	00442583          	lw	a1,4(s0)
    598c:	ec890513          	addi	a0,s2,-312
    5990:	fffff097          	auipc	ra,0xfffff
    5994:	a0c080e7          	jalr	-1524(ra) # 439c <fatfs_free_cluster_chain>
    5998:	eb5ff06f          	j	584c <fl_createdirectory+0xc0>
    599c:	00040593          	mv	a1,s0
    59a0:	000a0513          	mv	a0,s4
    59a4:	ffffe097          	auipc	ra,0xffffe
    59a8:	b24080e7          	jalr	-1244(ra) # 34c8 <_open_directory>
    59ac:	f20510e3          	bnez	a0,58cc <fl_createdirectory+0x140>
    59b0:	e9dff06f          	j	584c <fl_createdirectory+0xc0>
    59b4:	00442583          	lw	a1,4(s0)
    59b8:	000a8693          	mv	a3,s5
    59bc:	000a0613          	mv	a2,s4
    59c0:	ec890513          	addi	a0,s2,-312
    59c4:	ffffc097          	auipc	ra,0xffffc
    59c8:	a98080e7          	jalr	-1384(ra) # 145c <fatfs_write_sector>
    59cc:	ea0502e3          	beqz	a0,5870 <fl_createdirectory+0xe4>
    59d0:	001a0a13          	addi	s4,s4,1
    59d4:	f55ff06f          	j	5928 <fl_createdirectory+0x19c>
    59d8:	00b00613          	li	a2,11
    59dc:	00410593          	addi	a1,sp,4
    59e0:	000a8513          	mv	a0,s5
    59e4:	ffffb097          	auipc	ra,0xffffb
    59e8:	d20080e7          	jalr	-736(ra) # 704 <memcpy>
    59ec:	f7dff06f          	j	5968 <fl_createdirectory+0x1dc>
    59f0:	00442703          	lw	a4,4(s0)
    59f4:	00042583          	lw	a1,0(s0)
    59f8:	00100813          	li	a6,1
    59fc:	00000793          	li	a5,0
    5a00:	000a8693          	mv	a3,s5
    5a04:	00098613          	mv	a2,s3
    5a08:	ec890513          	addi	a0,s2,-312
    5a0c:	fffff097          	auipc	ra,0xfffff
    5a10:	5d0080e7          	jalr	1488(ra) # 4fdc <fatfs_add_file_entry>
    5a14:	00050493          	mv	s1,a0
    5a18:	f60508e3          	beqz	a0,5988 <fl_createdirectory+0x1fc>
    5a1c:	fff00793          	li	a5,-1
    5a20:	42f42823          	sw	a5,1072(s0)
    5a24:	22f42423          	sw	a5,552(s0)
    5a28:	22f42623          	sw	a5,556(s0)
    5a2c:	00042623          	sw	zero,12(s0)
    5a30:	00042423          	sw	zero,8(s0)
    5a34:	42042a23          	sw	zero,1076(s0)
    5a38:	00042823          	sw	zero,16(s0)
    5a3c:	ec890513          	addi	a0,s2,-312
    5a40:	ffffd097          	auipc	ra,0xffffd
    5a44:	55c080e7          	jalr	1372(ra) # 2f9c <fatfs_fat_purge>
    5a48:	00040513          	mv	a0,s0
    5a4c:	ffffc097          	auipc	ra,0xffffc
    5a50:	8a4080e7          	jalr	-1884(ra) # 12f0 <_free_file>
    5a54:	00100493          	li	s1,1
    5a58:	e29ff06f          	j	5880 <fl_createdirectory+0xf4>

00005a5c <cmd17>:
    5a5c:	00000051 00005500                       Q....U..

00005a64 <cmd16>:
    5a64:	02000050 00001500                       P.......

00005a6c <acmd41>:
    5a6c:	00004069 00000100                       i@......

00005a74 <cmd55>:
    5a74:	00000077 00000100                       w.......

00005a7c <cmd8>:
    5a7c:	01000048 000087aa                       H.......

00005a84 <cmd0>:
    5a84:	00000040 00009500                       @.......

00005a8c <AUDIO>:
    5a8c:	00018000                                ....

00005a90 <DISPLAY>:
    5a90:	00014000                                .@..

00005a94 <BUTTONS>:
    5a94:	00010100                                ....

00005a98 <SDCARD>:
    5a98:	00010080                                ....

00005a9c <UART>:
    5a9c:	00010020                                 ...

00005aa0 <OLED_RST>:
    5aa0:	00010010                                ....

00005aa4 <OLED>:
    5aa4:	00010008                                ....

00005aa8 <LEDS>:
    5aa8:	00010004                                ....

00005aac <font>:
    5aac:	00000000 00002f00 00030000 14000003     ...../..........
    5abc:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5acc:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5adc:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5aec:	00080800 00200000 20000000 02040810     ...... .... ....
    5afc:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5b0c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5b1c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5b2c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5b3c:	00141400 0a110000 01000004 0007052d     ............-...
    5b4c:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5b5c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5b6c:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5b7c:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5b8c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5b9c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5bac:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5bbc:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5bcc:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5bdc:	003f2102 01020000 20000201 00000020     .!?........  ...
    5bec:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5bfc:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5c0c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5c1c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5c2c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5c3c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5c4c:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5c5c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5c6c:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5c7c:	043f2100 02010000 00000102 00000000     .!?.............
    5c8c:	00000001 00000003 00000005 00000007     ................
    5c9c:	00000009 0000000e 00000010 00000012     ................
    5cac:	00000014 00000016 00000018 0000001c     ................
    5cbc:	0000001e 33323130 37363534 42413938     ....0123456789AB
    5ccc:	46454443 00000000 33544146 00000032     CDEF....FAT32...
    5cdc:	31544146 00000036 20544146 61746564     FAT16...FAT deta
    5cec:	3a736c69 00000a0d 70795420 253d2065     ils:.... Type =%
    5cfc:	00000073 6f6f5220 69442074 69462072     s... Root Dir Fi
    5d0c:	20747372 73756c43 20726574 7825203d     rst Cluster = %x
    5d1c:	00000a0d 54414620 67654220 4c206e69     .... FAT Begin L
    5d2c:	3d204142 25783020 000a0d78 756c4320     BA = 0x%x... Clu
    5d3c:	72657473 67654220 4c206e69 3d204142     ster Begin LBA =
    5d4c:	25783020 000a0d78 63655320 73726f74      0x%x... Sectors
    5d5c:	72655020 756c4320 72657473 25203d20      Per Cluster = %
    5d6c:	000a0d64 5f544146 203a5346 6f727245     d...FAT_FS: Erro
    5d7c:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    5d8c:	54414620 74656420 736c6961 64252820      FAT details (%d
    5d9c:	0a0d2129 00000000 69440a0d 74636572     )!........Direct
    5dac:	2079726f 0a0d7325 00000000 3c207325     ory %s......%s <
    5dbc:	3e524944 00000a0d 5b207325 62206425     DIR>....%s [%d b
    5dcc:	73657479 000a0d5d 00000072              ytes]...r...

00005dd8 <_cluster_size_table16>:
    5dd8:	00007fa8 00000002 00040000 00000004     ................
    5de8:	00080000 00000008 00100000 00000010     ................
    5df8:	00200000 00000020 00400000 00000040     .. . .....@.@...
    5e08:	00800000 00000080 00000000 00000000     ................

00005e18 <_cluster_size_table32>:
    5e18:	00082000 00000001 01000000 00000008     . ..............
    5e28:	02000000 00000010 04000000 00000020     ............ ...
    5e38:	ffffffff 00000040 00000000 00000000     ....@...........

00005e48 <sdcard_while_loading_callback>:
    5e48:	00000000                                ....

00005e4c <back_color>:
	...

00005e4d <front_color>:
    5e4d:	                                         ...

00005e50 <cursor_y>:
    5e50:	00000000                                ....

00005e54 <cursor_x>:
    5e54:	00000000                                ....

00005e58 <f_putchar>:
    5e58:	00000000                                ....

00005e5c <_free_file_list>:
	...

00005e64 <_open_file_list>:
	...

00005e6c <_filelib_valid>:
    5e6c:	00000000                                ....

00005e70 <_filelib_init>:
    5e70:	00000000                                ....

Déassemblage de la section .text.startup :

00005e74 <main>:
    5e74:	000067b7          	lui	a5,0x6
    5e78:	000f46b7          	lui	a3,0xf4
    5e7c:	aa87a503          	lw	a0,-1368(a5) # 5aa8 <LEDS>
    5e80:	00000713          	li	a4,0
    5e84:	00100793          	li	a5,1
    5e88:	23f68693          	addi	a3,a3,575 # f423f <__stacktop+0xe423f>
    5e8c:	08000813          	li	a6,128
    5e90:	00100593          	li	a1,1
    5e94:	c00028f3          	rdcycle	a7
    5e98:	c0002673          	rdcycle	a2
    5e9c:	41160633          	sub	a2,a2,a7
    5ea0:	fec6fce3          	bgeu	a3,a2,5e98 <main+0x24>
    5ea4:	01078463          	beq	a5,a6,5eac <main+0x38>
    5ea8:	00b79463          	bne	a5,a1,5eb0 <main+0x3c>
    5eac:	40e58733          	sub	a4,a1,a4
    5eb0:	00070863          	beqz	a4,5ec0 <main+0x4c>
    5eb4:	00179793          	slli	a5,a5,0x1
    5eb8:	00f52023          	sw	a5,0(a0)
    5ebc:	fd9ff06f          	j	5e94 <main+0x20>
    5ec0:	4017d793          	srai	a5,a5,0x1
    5ec4:	ff5ff06f          	j	5eb8 <main+0x44>
