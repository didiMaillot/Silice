
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00006097          	auipc	ra,0x6
       8:	f84080e7          	jalr	-124(ra) # 5f88 <main>
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
      38:	b187a783          	lw	a5,-1256(a5) # 5b18 <SDCARD>
      3c:	00200713          	li	a4,2
      40:	00e7a023          	sw	a4,0(a5)
      44:	00008067          	ret

00000048 <sdcard_ponder>:
      48:	000066b7          	lui	a3,0x6
      4c:	b186a603          	lw	a2,-1256(a3) # 5b18 <SDCARD>
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
      7c:	b187a783          	lw	a5,-1256(a5) # 5b18 <SDCARD>
      80:	00600713          	li	a4,6
      84:	00e7a023          	sw	a4,0(a5)
      88:	00008067          	ret

0000008c <sdcard_send>:
      8c:	000067b7          	lui	a5,0x6
      90:	b187a783          	lw	a5,-1256(a5) # 5b18 <SDCARD>
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
     13c:	f5c7a783          	lw	a5,-164(a5) # 5f5c <sdcard_while_loading_callback>
     140:	00078067          	jr	a5

00000144 <sdcard_read>:
     144:	fd010113          	addi	sp,sp,-48 # ffd0 <_files+0x5a98>
     148:	fff50793          	addi	a5,a0,-1
     14c:	01312e23          	sw	s3,28(sp)
     150:	00100993          	li	s3,1
     154:	00f999b3          	sll	s3,s3,a5
     158:	000067b7          	lui	a5,0x6
     15c:	01512a23          	sw	s5,20(sp)
     160:	b187aa83          	lw	s5,-1256(a5) # 5b18 <SDCARD>
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
     1fc:	f5cc2783          	lw	a5,-164(s8) # 5f5c <sdcard_while_loading_callback>
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
     400:	b187a403          	lw	s0,-1256(a5) # 5b18 <SDCARD>
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
     480:	f4f72e23          	sw	a5,-164(a4) # 5f5c <sdcard_while_loading_callback>
     484:	00006937          	lui	s2,0x6
     488:	0ff00993          	li	s3,255
     48c:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     490:	00000097          	auipc	ra,0x0
     494:	f64080e7          	jalr	-156(ra) # 3f4 <sdcard_preinit>
     498:	b0490513          	addi	a0,s2,-1276 # 5b04 <cmd0>
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
     4d8:	afc50513          	addi	a0,a0,-1284 # 5afc <cmd8>
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
     50c:	af490513          	addi	a0,s2,-1292 # 5af4 <cmd55>
     510:	00000097          	auipc	ra,0x0
     514:	d70080e7          	jalr	-656(ra) # 280 <sdcard_cmd>
     518:	00100593          	li	a1,1
     51c:	00800513          	li	a0,8
     520:	00000097          	auipc	ra,0x0
     524:	ce8080e7          	jalr	-792(ra) # 208 <sdcard_get>
     528:	00000097          	auipc	ra,0x0
     52c:	b20080e7          	jalr	-1248(ra) # 48 <sdcard_ponder>
     530:	aec98513          	addi	a0,s3,-1300 # 5aec <acmd41>
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
     570:	ae450513          	addi	a0,a0,-1308 # 5ae4 <cmd16>
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
     6c4:	b1c7a783          	lw	a5,-1252(a5) # 5b1c <UART>
     6c8:	00a7a023          	sw	a0,0(a5)
     6cc:	c00026f3          	rdcycle	a3
     6d0:	000027b7          	lui	a5,0x2
     6d4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_init+0x7>
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
     81c:	b207a703          	lw	a4,-1248(a5) # 5b20 <OLED_RST>
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
     848:	b207a703          	lw	a4,-1248(a5)
     84c:	00100693          	li	a3,1
     850:	00d72023          	sw	a3,0(a4)
     854:	00040737          	lui	a4,0x40
     858:	00000013          	nop
     85c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     860:	fe071ce3          	bnez	a4,858 <oled_init_mode+0x40>
     864:	b207a783          	lw	a5,-1248(a5)
     868:	0007a023          	sw	zero,0(a5)
     86c:	000407b7          	lui	a5,0x40
     870:	00000013          	nop
     874:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     878:	fe079ce3          	bnez	a5,870 <oled_init_mode+0x58>
     87c:	00006737          	lui	a4,0x6
     880:	b2472783          	lw	a5,-1244(a4) # 5b24 <OLED>
     884:	2af00693          	li	a3,687
     888:	00d7a023          	sw	a3,0(a5)
     88c:	000407b7          	lui	a5,0x40
     890:	00000013          	nop
     894:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     898:	fe079ce3          	bnez	a5,890 <oled_init_mode+0x78>
     89c:	b2472403          	lw	s0,-1244(a4)
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
     930:	b247a403          	lw	s0,-1244(a5) # 5b24 <OLED>
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
     9c8:	b247a983          	lw	s3,-1244(a5) # 5b24 <OLED>
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
     a5c:	0d050513          	addi	a0,a0,208 # 60d0 <framebuffer>
     a60:	00008067          	ret

00000a64 <display_set_cursor>:
     a64:	000067b7          	lui	a5,0x6
     a68:	f6a7a423          	sw	a0,-152(a5) # 5f68 <cursor_x>
     a6c:	000067b7          	lui	a5,0x6
     a70:	f6b7a223          	sw	a1,-156(a5) # 5f64 <cursor_y>
     a74:	00008067          	ret

00000a78 <display_set_front_back_color>:
     a78:	000067b7          	lui	a5,0x6
     a7c:	f6a780a3          	sb	a0,-159(a5) # 5f61 <front_color>
     a80:	000067b7          	lui	a5,0x6
     a84:	f6b78023          	sb	a1,-160(a5) # 5f60 <back_color>
     a88:	00008067          	ret

00000a8c <display_putchar>:
     a8c:	00a00793          	li	a5,10
     a90:	00006637          	lui	a2,0x6
     a94:	02f51663          	bne	a0,a5,ac0 <display_putchar+0x34>
     a98:	00006737          	lui	a4,0x6
     a9c:	f6472783          	lw	a5,-156(a4) # 5f64 <cursor_y>
     aa0:	f6062423          	sw	zero,-152(a2) # 5f68 <cursor_x>
     aa4:	00878793          	addi	a5,a5,8
     aa8:	f6f72223          	sw	a5,-156(a4)
     aac:	07f00713          	li	a4,127
     ab0:	00f75663          	bge	a4,a5,abc <display_putchar+0x30>
     ab4:	000067b7          	lui	a5,0x6
     ab8:	f607a223          	sw	zero,-156(a5) # 5f64 <cursor_y>
     abc:	00008067          	ret
     ac0:	ff010113          	addi	sp,sp,-16
     ac4:	00812623          	sw	s0,12(sp)
     ac8:	00912423          	sw	s1,8(sp)
     acc:	01212223          	sw	s2,4(sp)
     ad0:	01f00713          	li	a4,31
     ad4:	f6862783          	lw	a5,-152(a2)
     ad8:	08a75863          	bge	a4,a0,b68 <display_putchar+0xdc>
     adc:	00006737          	lui	a4,0x6
     ae0:	f6074383          	lbu	t2,-160(a4) # 5f60 <back_color>
     ae4:	00006737          	lui	a4,0x6
     ae8:	f6174403          	lbu	s0,-159(a4) # 5f61 <front_color>
     aec:	00006737          	lui	a4,0x6
     af0:	f6472f03          	lw	t5,-156(a4) # 5f64 <cursor_y>
     af4:	00251693          	slli	a3,a0,0x2
     af8:	00006737          	lui	a4,0x6
     afc:	00a686b3          	add	a3,a3,a0
     b00:	b2c70713          	addi	a4,a4,-1236 # 5b2c <font>
     b04:	00779313          	slli	t1,a5,0x7
     b08:	00006837          	lui	a6,0x6
     b0c:	00d70733          	add	a4,a4,a3
     b10:	28030493          	addi	s1,t1,640
     b14:	00000693          	li	a3,0
     b18:	00100293          	li	t0,1
     b1c:	0d080813          	addi	a6,a6,208 # 60d0 <framebuffer>
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
     b74:	f6f62423          	sw	a5,-152(a2)
     b78:	0240006f          	j	b9c <display_putchar+0x110>
     b7c:	000066b7          	lui	a3,0x6
     b80:	f646a783          	lw	a5,-156(a3) # 5f64 <cursor_y>
     b84:	f6062423          	sw	zero,-152(a2)
     b88:	00878793          	addi	a5,a5,8
     b8c:	f6f6a223          	sw	a5,-156(a3)
     b90:	00f75663          	bge	a4,a5,b9c <display_putchar+0x110>
     b94:	000067b7          	lui	a5,0x6
     b98:	f607a223          	sw	zero,-156(a5) # 5f64 <cursor_y>
     b9c:	00c12403          	lw	s0,12(sp)
     ba0:	00812483          	lw	s1,8(sp)
     ba4:	00412903          	lw	s2,4(sp)
     ba8:	01010113          	addi	sp,sp,16
     bac:	00008067          	ret

00000bb0 <display_refresh>:
     bb0:	fe010113          	addi	sp,sp,-32
     bb4:	000067b7          	lui	a5,0x6
     bb8:	01212823          	sw	s2,16(sp)
     bbc:	b247a903          	lw	s2,-1244(a5) # 5b24 <OLED>
     bc0:	01312623          	sw	s3,12(sp)
     bc4:	000069b7          	lui	s3,0x6
     bc8:	00912a23          	sw	s1,20(sp)
     bcc:	01412423          	sw	s4,8(sp)
     bd0:	00112e23          	sw	ra,28(sp)
     bd4:	00812c23          	sw	s0,24(sp)
     bd8:	00000493          	li	s1,0
     bdc:	0d098993          	addi	s3,s3,208 # 60d0 <framebuffer>
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
     ca4:	f6c4a783          	lw	a5,-148(s1) # 5f6c <f_putchar>
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
     cd4:	f6c9a783          	lw	a5,-148(s3) # 5f6c <f_putchar>
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
     d24:	f6c9a783          	lw	a5,-148(s3)
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
     d88:	dc090913          	addi	s2,s2,-576 # 5dc0 <font+0x294>
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
     dbc:	f6c9a703          	lw	a4,-148(s3) # 5f6c <f_putchar>
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
     ee8:	f6c4a783          	lw	a5,-148(s1) # 5f6c <f_putchar>
     eec:	01751a63          	bne	a0,s7,f00 <printf+0x124>
     ef0:	00c12703          	lw	a4,12(sp)
     ef4:	00072503          	lw	a0,0(a4)
     ef8:	00470693          	addi	a3,a4,4
     efc:	00d12623          	sw	a3,12(sp)
     f00:	000780e7          	jalr	a5
     f04:	f9dff06f          	j	ea0 <printf+0xc4>
     f08:	f6c4a783          	lw	a5,-148(s1)
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

000011bc <fatfs_erase_sectors>:
    11bc:	fe010113          	addi	sp,sp,-32
    11c0:	01412423          	sw	s4,8(sp)
    11c4:	04450a13          	addi	s4,a0,68
    11c8:	00912a23          	sw	s1,20(sp)
    11cc:	01212823          	sw	s2,16(sp)
    11d0:	01312623          	sw	s3,12(sp)
    11d4:	00050493          	mv	s1,a0
    11d8:	00058993          	mv	s3,a1
    11dc:	00060913          	mv	s2,a2
    11e0:	00000593          	li	a1,0
    11e4:	20000613          	li	a2,512
    11e8:	000a0513          	mv	a0,s4
    11ec:	00812c23          	sw	s0,24(sp)
    11f0:	00112e23          	sw	ra,28(sp)
    11f4:	00000413          	li	s0,0
    11f8:	fffff097          	auipc	ra,0xfffff
    11fc:	4f0080e7          	jalr	1264(ra) # 6e8 <memset>
    1200:	03244463          	blt	s0,s2,1228 <fatfs_erase_sectors+0x6c>
    1204:	00100513          	li	a0,1
    1208:	01c12083          	lw	ra,28(sp)
    120c:	01812403          	lw	s0,24(sp)
    1210:	01412483          	lw	s1,20(sp)
    1214:	01012903          	lw	s2,16(sp)
    1218:	00c12983          	lw	s3,12(sp)
    121c:	00812a03          	lw	s4,8(sp)
    1220:	02010113          	addi	sp,sp,32
    1224:	00008067          	ret
    1228:	0384a783          	lw	a5,56(s1)
    122c:	00100613          	li	a2,1
    1230:	000a0593          	mv	a1,s4
    1234:	01340533          	add	a0,s0,s3
    1238:	000780e7          	jalr	a5
    123c:	fc0506e3          	beqz	a0,1208 <fatfs_erase_sectors+0x4c>
    1240:	00140413          	addi	s0,s0,1
    1244:	fbdff06f          	j	1200 <fatfs_erase_sectors+0x44>

00001248 <fatfs_erase_fat>:
    1248:	ff010113          	addi	sp,sp,-16
    124c:	01212023          	sw	s2,0(sp)
    1250:	04450913          	addi	s2,a0,68
    1254:	00812423          	sw	s0,8(sp)
    1258:	00912223          	sw	s1,4(sp)
    125c:	00050413          	mv	s0,a0
    1260:	00058493          	mv	s1,a1
    1264:	20000613          	li	a2,512
    1268:	00000593          	li	a1,0
    126c:	00090513          	mv	a0,s2
    1270:	00112623          	sw	ra,12(sp)
    1274:	fffff097          	auipc	ra,0xfffff
    1278:	474080e7          	jalr	1140(ra) # 6e8 <memset>
    127c:	04049063          	bnez	s1,12bc <fatfs_erase_fat+0x74>
    1280:	ff800793          	li	a5,-8
    1284:	04f42223          	sw	a5,68(s0)
    1288:	03842783          	lw	a5,56(s0)
    128c:	01442503          	lw	a0,20(s0)
    1290:	00100613          	li	a2,1
    1294:	00090593          	mv	a1,s2
    1298:	000780e7          	jalr	a5
    129c:	04051063          	bnez	a0,12dc <fatfs_erase_fat+0x94>
    12a0:	00000513          	li	a0,0
    12a4:	00c12083          	lw	ra,12(sp)
    12a8:	00812403          	lw	s0,8(sp)
    12ac:	00412483          	lw	s1,4(sp)
    12b0:	00012903          	lw	s2,0(sp)
    12b4:	01010113          	addi	sp,sp,16
    12b8:	00008067          	ret
    12bc:	100007b7          	lui	a5,0x10000
    12c0:	ff878713          	addi	a4,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    12c4:	04e42223          	sw	a4,68(s0)
    12c8:	fff78793          	addi	a5,a5,-1
    12cc:	fff00713          	li	a4,-1
    12d0:	04e42423          	sw	a4,72(s0)
    12d4:	04f42623          	sw	a5,76(s0)
    12d8:	fb1ff06f          	j	1288 <fatfs_erase_fat+0x40>
    12dc:	20000613          	li	a2,512
    12e0:	00000593          	li	a1,0
    12e4:	00090513          	mv	a0,s2
    12e8:	fffff097          	auipc	ra,0xfffff
    12ec:	400080e7          	jalr	1024(ra) # 6e8 <memset>
    12f0:	00100493          	li	s1,1
    12f4:	02042583          	lw	a1,32(s0)
    12f8:	02c44503          	lbu	a0,44(s0)
    12fc:	00000097          	auipc	ra,0x0
    1300:	c1c080e7          	jalr	-996(ra) # f18 <__mulsi3>
    1304:	00a4e663          	bltu	s1,a0,1310 <fatfs_erase_fat+0xc8>
    1308:	00100513          	li	a0,1
    130c:	f99ff06f          	j	12a4 <fatfs_erase_fat+0x5c>
    1310:	01442503          	lw	a0,20(s0)
    1314:	03842783          	lw	a5,56(s0)
    1318:	00100613          	li	a2,1
    131c:	00090593          	mv	a1,s2
    1320:	00a48533          	add	a0,s1,a0
    1324:	000780e7          	jalr	a5
    1328:	f6050ce3          	beqz	a0,12a0 <fatfs_erase_fat+0x58>
    132c:	00148493          	addi	s1,s1,1
    1330:	fc5ff06f          	j	12f4 <fatfs_erase_fat+0xac>

00001334 <_allocate_file>:
    1334:	ff010113          	addi	sp,sp,-16
    1338:	000067b7          	lui	a5,0x6
    133c:	00812423          	sw	s0,8(sp)
    1340:	f707a403          	lw	s0,-144(a5) # 5f70 <_free_file_list>
    1344:	00112623          	sw	ra,12(sp)
    1348:	02040e63          	beqz	s0,1384 <_allocate_file+0x50>
    134c:	00042703          	lw	a4,0(s0)
    1350:	00442683          	lw	a3,4(s0)
    1354:	f7078793          	addi	a5,a5,-144
    1358:	04071063          	bnez	a4,1398 <_allocate_file+0x64>
    135c:	00d7a023          	sw	a3,0(a5)
    1360:	00442683          	lw	a3,4(s0)
    1364:	02069e63          	bnez	a3,13a0 <_allocate_file+0x6c>
    1368:	00e7a223          	sw	a4,4(a5)
    136c:	00006537          	lui	a0,0x6
    1370:	00040593          	mv	a1,s0
    1374:	f7850513          	addi	a0,a0,-136 # 5f78 <_open_file_list>
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

000013a8 <fatfs_lfn_cache_init.part.0.constprop.0>:
    13a8:	ff010113          	addi	sp,sp,-16
    13ac:	00812423          	sw	s0,8(sp)
    13b0:	00112623          	sw	ra,12(sp)
    13b4:	00050793          	mv	a5,a0
    13b8:	10450413          	addi	s0,a0,260
    13bc:	00078513          	mv	a0,a5
    13c0:	00d00613          	li	a2,13
    13c4:	00000593          	li	a1,0
    13c8:	fffff097          	auipc	ra,0xfffff
    13cc:	320080e7          	jalr	800(ra) # 6e8 <memset>
    13d0:	00d50793          	addi	a5,a0,13
    13d4:	fe8794e3          	bne	a5,s0,13bc <fatfs_lfn_cache_init.part.0.constprop.0+0x14>
    13d8:	00c12083          	lw	ra,12(sp)
    13dc:	00812403          	lw	s0,8(sp)
    13e0:	01010113          	addi	sp,sp,16
    13e4:	00008067          	ret

000013e8 <_free_file>:
    13e8:	43c52783          	lw	a5,1084(a0)
    13ec:	44052703          	lw	a4,1088(a0)
    13f0:	43c50593          	addi	a1,a0,1084
    13f4:	02079663          	bnez	a5,1420 <_free_file+0x38>
    13f8:	000066b7          	lui	a3,0x6
    13fc:	f6e6ac23          	sw	a4,-136(a3) # 5f78 <_open_file_list>
    1400:	44052703          	lw	a4,1088(a0)
    1404:	02071263          	bnez	a4,1428 <_free_file+0x40>
    1408:	00006737          	lui	a4,0x6
    140c:	f6f72e23          	sw	a5,-132(a4) # 5f7c <_open_file_list+0x4>
    1410:	00006537          	lui	a0,0x6
    1414:	f7050513          	addi	a0,a0,-144 # 5f70 <_free_file_list>
    1418:	00000317          	auipc	t1,0x0
    141c:	b2830067          	jr	-1240(t1) # f40 <fat_list_insert_last>
    1420:	00e7a223          	sw	a4,4(a5)
    1424:	fddff06f          	j	1400 <_free_file+0x18>
    1428:	00f72023          	sw	a5,0(a4)
    142c:	fe5ff06f          	j	1410 <_free_file+0x28>

00001430 <fatfs_lba_of_cluster>:
    1430:	ff010113          	addi	sp,sp,-16
    1434:	00812423          	sw	s0,8(sp)
    1438:	00050413          	mv	s0,a0
    143c:	00058513          	mv	a0,a1
    1440:	00044583          	lbu	a1,0(s0)
    1444:	ffe50513          	addi	a0,a0,-2
    1448:	00112623          	sw	ra,12(sp)
    144c:	00000097          	auipc	ra,0x0
    1450:	acc080e7          	jalr	-1332(ra) # f18 <__mulsi3>
    1454:	00442783          	lw	a5,4(s0)
    1458:	00f50533          	add	a0,a0,a5
    145c:	03042783          	lw	a5,48(s0)
    1460:	00079863          	bnez	a5,1470 <fatfs_lba_of_cluster+0x40>
    1464:	02845783          	lhu	a5,40(s0)
    1468:	4047d793          	srai	a5,a5,0x4
    146c:	00f50533          	add	a0,a0,a5
    1470:	00c12083          	lw	ra,12(sp)
    1474:	00812403          	lw	s0,8(sp)
    1478:	01010113          	addi	sp,sp,16
    147c:	00008067          	ret

00001480 <fatfs_sector_read>:
    1480:	03452783          	lw	a5,52(a0)
    1484:	00058713          	mv	a4,a1
    1488:	00070513          	mv	a0,a4
    148c:	00060593          	mv	a1,a2
    1490:	00068613          	mv	a2,a3
    1494:	00078067          	jr	a5

00001498 <fatfs_sector_write>:
    1498:	03852783          	lw	a5,56(a0)
    149c:	00058713          	mv	a4,a1
    14a0:	00070513          	mv	a0,a4
    14a4:	00060593          	mv	a1,a2
    14a8:	00068613          	mv	a2,a3
    14ac:	00078067          	jr	a5

000014b0 <fatfs_read_sector>:
    14b0:	03052783          	lw	a5,48(a0)
    14b4:	ff010113          	addi	sp,sp,-16
    14b8:	00812423          	sw	s0,8(sp)
    14bc:	00912223          	sw	s1,4(sp)
    14c0:	01212023          	sw	s2,0(sp)
    14c4:	00112623          	sw	ra,12(sp)
    14c8:	00f5e7b3          	or	a5,a1,a5
    14cc:	00050413          	mv	s0,a0
    14d0:	00060493          	mv	s1,a2
    14d4:	00068913          	mv	s2,a3
    14d8:	04079263          	bnez	a5,151c <fatfs_read_sector+0x6c>
    14dc:	01052783          	lw	a5,16(a0)
    14e0:	04f67c63          	bgeu	a2,a5,1538 <fatfs_read_sector+0x88>
    14e4:	01c52503          	lw	a0,28(a0)
    14e8:	00c42783          	lw	a5,12(s0)
    14ec:	00f50533          	add	a0,a0,a5
    14f0:	03442783          	lw	a5,52(s0)
    14f4:	00a48533          	add	a0,s1,a0
    14f8:	02090863          	beqz	s2,1528 <fatfs_read_sector+0x78>
    14fc:	00100613          	li	a2,1
    1500:	00090593          	mv	a1,s2
    1504:	00812403          	lw	s0,8(sp)
    1508:	00c12083          	lw	ra,12(sp)
    150c:	00412483          	lw	s1,4(sp)
    1510:	00012903          	lw	s2,0(sp)
    1514:	01010113          	addi	sp,sp,16
    1518:	00078067          	jr	a5
    151c:	00000097          	auipc	ra,0x0
    1520:	f14080e7          	jalr	-236(ra) # 1430 <fatfs_lba_of_cluster>
    1524:	fcdff06f          	j	14f0 <fatfs_read_sector+0x40>
    1528:	24a42223          	sw	a0,580(s0)
    152c:	00100613          	li	a2,1
    1530:	04440593          	addi	a1,s0,68
    1534:	fd1ff06f          	j	1504 <fatfs_read_sector+0x54>
    1538:	00c12083          	lw	ra,12(sp)
    153c:	00812403          	lw	s0,8(sp)
    1540:	00412483          	lw	s1,4(sp)
    1544:	00012903          	lw	s2,0(sp)
    1548:	00000513          	li	a0,0
    154c:	01010113          	addi	sp,sp,16
    1550:	00008067          	ret

00001554 <fatfs_write_sector>:
    1554:	03852783          	lw	a5,56(a0)
    1558:	0a078863          	beqz	a5,1608 <fatfs_write_sector+0xb4>
    155c:	fe010113          	addi	sp,sp,-32
    1560:	01212823          	sw	s2,16(sp)
    1564:	00068913          	mv	s2,a3
    1568:	03052683          	lw	a3,48(a0)
    156c:	00812c23          	sw	s0,24(sp)
    1570:	00912a23          	sw	s1,20(sp)
    1574:	00112e23          	sw	ra,28(sp)
    1578:	00d5e733          	or	a4,a1,a3
    157c:	00050413          	mv	s0,a0
    1580:	00060493          	mv	s1,a2
    1584:	04071063          	bnez	a4,15c4 <fatfs_write_sector+0x70>
    1588:	01052703          	lw	a4,16(a0)
    158c:	06e67063          	bgeu	a2,a4,15ec <fatfs_write_sector+0x98>
    1590:	01c52503          	lw	a0,28(a0)
    1594:	00c42703          	lw	a4,12(s0)
    1598:	00e50533          	add	a0,a0,a4
    159c:	00c50533          	add	a0,a0,a2
    15a0:	02090e63          	beqz	s2,15dc <fatfs_write_sector+0x88>
    15a4:	00100613          	li	a2,1
    15a8:	00090593          	mv	a1,s2
    15ac:	01812403          	lw	s0,24(sp)
    15b0:	01c12083          	lw	ra,28(sp)
    15b4:	01412483          	lw	s1,20(sp)
    15b8:	01012903          	lw	s2,16(sp)
    15bc:	02010113          	addi	sp,sp,32
    15c0:	00078067          	jr	a5
    15c4:	00f12623          	sw	a5,12(sp)
    15c8:	00000097          	auipc	ra,0x0
    15cc:	e68080e7          	jalr	-408(ra) # 1430 <fatfs_lba_of_cluster>
    15d0:	00c12783          	lw	a5,12(sp)
    15d4:	00a48533          	add	a0,s1,a0
    15d8:	fc9ff06f          	j	15a0 <fatfs_write_sector+0x4c>
    15dc:	24a42223          	sw	a0,580(s0)
    15e0:	00100613          	li	a2,1
    15e4:	04440593          	addi	a1,s0,68
    15e8:	fc5ff06f          	j	15ac <fatfs_write_sector+0x58>
    15ec:	01c12083          	lw	ra,28(sp)
    15f0:	01812403          	lw	s0,24(sp)
    15f4:	01412483          	lw	s1,20(sp)
    15f8:	01012903          	lw	s2,16(sp)
    15fc:	00000513          	li	a0,0
    1600:	02010113          	addi	sp,sp,32
    1604:	00008067          	ret
    1608:	00000513          	li	a0,0
    160c:	00008067          	ret

00001610 <fatfs_show_details>:
    1610:	ff010113          	addi	sp,sp,-16
    1614:	00812423          	sw	s0,8(sp)
    1618:	00050413          	mv	s0,a0
    161c:	00006537          	lui	a0,0x6
    1620:	de450513          	addi	a0,a0,-540 # 5de4 <font+0x2b8>
    1624:	00112623          	sw	ra,12(sp)
    1628:	fffff097          	auipc	ra,0xfffff
    162c:	7b4080e7          	jalr	1972(ra) # ddc <printf>
    1630:	03042703          	lw	a4,48(s0)
    1634:	00100793          	li	a5,1
    1638:	06f70c63          	beq	a4,a5,16b0 <fatfs_show_details+0xa0>
    163c:	000065b7          	lui	a1,0x6
    1640:	ddc58593          	addi	a1,a1,-548 # 5ddc <font+0x2b0>
    1644:	00006537          	lui	a0,0x6
    1648:	df450513          	addi	a0,a0,-524 # 5df4 <font+0x2c8>
    164c:	fffff097          	auipc	ra,0xfffff
    1650:	790080e7          	jalr	1936(ra) # ddc <printf>
    1654:	00842583          	lw	a1,8(s0)
    1658:	00006537          	lui	a0,0x6
    165c:	e0050513          	addi	a0,a0,-512 # 5e00 <font+0x2d4>
    1660:	fffff097          	auipc	ra,0xfffff
    1664:	77c080e7          	jalr	1916(ra) # ddc <printf>
    1668:	01442583          	lw	a1,20(s0)
    166c:	00006537          	lui	a0,0x6
    1670:	e2050513          	addi	a0,a0,-480 # 5e20 <font+0x2f4>
    1674:	fffff097          	auipc	ra,0xfffff
    1678:	768080e7          	jalr	1896(ra) # ddc <printf>
    167c:	00442583          	lw	a1,4(s0)
    1680:	00006537          	lui	a0,0x6
    1684:	e3850513          	addi	a0,a0,-456 # 5e38 <font+0x30c>
    1688:	fffff097          	auipc	ra,0xfffff
    168c:	754080e7          	jalr	1876(ra) # ddc <printf>
    1690:	00044583          	lbu	a1,0(s0)
    1694:	00812403          	lw	s0,8(sp)
    1698:	00c12083          	lw	ra,12(sp)
    169c:	00006537          	lui	a0,0x6
    16a0:	e5450513          	addi	a0,a0,-428 # 5e54 <font+0x328>
    16a4:	01010113          	addi	sp,sp,16
    16a8:	fffff317          	auipc	t1,0xfffff
    16ac:	73430067          	jr	1844(t1) # ddc <printf>
    16b0:	000065b7          	lui	a1,0x6
    16b4:	dd458593          	addi	a1,a1,-556 # 5dd4 <font+0x2a8>
    16b8:	f8dff06f          	j	1644 <fatfs_show_details+0x34>

000016bc <fatfs_get_root_cluster>:
    16bc:	00852503          	lw	a0,8(a0)
    16c0:	00008067          	ret

000016c4 <fatfs_list_directory_start>:
    16c4:	00c5a223          	sw	a2,4(a1)
    16c8:	0005a023          	sw	zero,0(a1)
    16cc:	00058423          	sb	zero,8(a1)
    16d0:	00008067          	ret

000016d4 <fatfs_cache_init>:
    16d4:	00100513          	li	a0,1
    16d8:	00008067          	ret

000016dc <fatfs_cache_get_next_cluster>:
    16dc:	00000513          	li	a0,0
    16e0:	00008067          	ret

000016e4 <fatfs_cache_set_next_cluster>:
    16e4:	00100513          	li	a0,1
    16e8:	00008067          	ret

000016ec <fl_init>:
    16ec:	ff010113          	addi	sp,sp,-16
    16f0:	00812423          	sw	s0,8(sp)
    16f4:	00006437          	lui	s0,0x6
    16f8:	00112623          	sw	ra,12(sp)
    16fc:	f7040793          	addi	a5,s0,-144 # 5f70 <_free_file_list>
    1700:	0007a223          	sw	zero,4(a5)
    1704:	0007a023          	sw	zero,0(a5)
    1708:	0000b5b7          	lui	a1,0xb
    170c:	000067b7          	lui	a5,0x6
    1710:	f7878793          	addi	a5,a5,-136 # 5f78 <_open_file_list>
    1714:	f7040513          	addi	a0,s0,-144
    1718:	97458593          	addi	a1,a1,-1676 # a974 <_files+0x43c>
    171c:	0007a223          	sw	zero,4(a5)
    1720:	0007a023          	sw	zero,0(a5)
    1724:	00000097          	auipc	ra,0x0
    1728:	81c080e7          	jalr	-2020(ra) # f40 <fat_list_insert_last>
    172c:	0000b5b7          	lui	a1,0xb
    1730:	f7040513          	addi	a0,s0,-144
    1734:	db858593          	addi	a1,a1,-584 # adb8 <_files+0x880>
    1738:	00000097          	auipc	ra,0x0
    173c:	808080e7          	jalr	-2040(ra) # f40 <fat_list_insert_last>
    1740:	00c12083          	lw	ra,12(sp)
    1744:	00812403          	lw	s0,8(sp)
    1748:	000067b7          	lui	a5,0x6
    174c:	00100713          	li	a4,1
    1750:	f8e7a223          	sw	a4,-124(a5) # 5f84 <_filelib_init>
    1754:	01010113          	addi	sp,sp,16
    1758:	00008067          	ret

0000175c <fl_attach_locks>:
    175c:	0000a7b7          	lui	a5,0xa
    1760:	0d078793          	addi	a5,a5,208 # a0d0 <_fs>
    1764:	02a7ae23          	sw	a0,60(a5)
    1768:	04b7a023          	sw	a1,64(a5)
    176c:	00008067          	ret

00001770 <fl_fseek>:
    1770:	000067b7          	lui	a5,0x6
    1774:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    1778:	fe010113          	addi	sp,sp,-32
    177c:	00812c23          	sw	s0,24(sp)
    1780:	00912a23          	sw	s1,20(sp)
    1784:	01212823          	sw	s2,16(sp)
    1788:	00112e23          	sw	ra,28(sp)
    178c:	01312623          	sw	s3,12(sp)
    1790:	00050413          	mv	s0,a0
    1794:	00058913          	mv	s2,a1
    1798:	00060493          	mv	s1,a2
    179c:	00079663          	bnez	a5,17a8 <fl_fseek+0x38>
    17a0:	00000097          	auipc	ra,0x0
    17a4:	f4c080e7          	jalr	-180(ra) # 16ec <fl_init>
    17a8:	0c040c63          	beqz	s0,1880 <fl_fseek+0x110>
    17ac:	00200793          	li	a5,2
    17b0:	00f49463          	bne	s1,a5,17b8 <fl_fseek+0x48>
    17b4:	0c091663          	bnez	s2,1880 <fl_fseek+0x110>
    17b8:	0000a7b7          	lui	a5,0xa
    17bc:	0d078713          	addi	a4,a5,208 # a0d0 <_fs>
    17c0:	03c72703          	lw	a4,60(a4)
    17c4:	0d078993          	addi	s3,a5,208
    17c8:	00070463          	beqz	a4,17d0 <fl_fseek+0x60>
    17cc:	000700e7          	jalr	a4
    17d0:	fff00793          	li	a5,-1
    17d4:	42f42823          	sw	a5,1072(s0)
    17d8:	42042a23          	sw	zero,1076(s0)
    17dc:	04049463          	bnez	s1,1824 <fl_fseek+0xb4>
    17e0:	00c42783          	lw	a5,12(s0)
    17e4:	01242423          	sw	s2,8(s0)
    17e8:	0127e663          	bltu	a5,s2,17f4 <fl_fseek+0x84>
    17ec:	00000493          	li	s1,0
    17f0:	0080006f          	j	17f8 <fl_fseek+0x88>
    17f4:	00f42423          	sw	a5,8(s0)
    17f8:	0409a783          	lw	a5,64(s3)
    17fc:	00078463          	beqz	a5,1804 <fl_fseek+0x94>
    1800:	000780e7          	jalr	a5
    1804:	01c12083          	lw	ra,28(sp)
    1808:	01812403          	lw	s0,24(sp)
    180c:	01012903          	lw	s2,16(sp)
    1810:	00c12983          	lw	s3,12(sp)
    1814:	00048513          	mv	a0,s1
    1818:	01412483          	lw	s1,20(sp)
    181c:	02010113          	addi	sp,sp,32
    1820:	00008067          	ret
    1824:	00100793          	li	a5,1
    1828:	04f49063          	bne	s1,a5,1868 <fl_fseek+0xf8>
    182c:	00842783          	lw	a5,8(s0)
    1830:	00094e63          	bltz	s2,184c <fl_fseek+0xdc>
    1834:	00f90933          	add	s2,s2,a5
    1838:	00c42783          	lw	a5,12(s0)
    183c:	01242423          	sw	s2,8(s0)
    1840:	fb27f6e3          	bgeu	a5,s2,17ec <fl_fseek+0x7c>
    1844:	00f42423          	sw	a5,8(s0)
    1848:	fa5ff06f          	j	17ec <fl_fseek+0x7c>
    184c:	41200733          	neg	a4,s2
    1850:	00e7f663          	bgeu	a5,a4,185c <fl_fseek+0xec>
    1854:	00042423          	sw	zero,8(s0)
    1858:	f95ff06f          	j	17ec <fl_fseek+0x7c>
    185c:	00f90933          	add	s2,s2,a5
    1860:	01242423          	sw	s2,8(s0)
    1864:	f89ff06f          	j	17ec <fl_fseek+0x7c>
    1868:	00200793          	li	a5,2
    186c:	00f49663          	bne	s1,a5,1878 <fl_fseek+0x108>
    1870:	00c42783          	lw	a5,12(s0)
    1874:	fd1ff06f          	j	1844 <fl_fseek+0xd4>
    1878:	fff00493          	li	s1,-1
    187c:	f7dff06f          	j	17f8 <fl_fseek+0x88>
    1880:	fff00493          	li	s1,-1
    1884:	f81ff06f          	j	1804 <fl_fseek+0x94>

00001888 <fl_fgetpos>:
    1888:	06050663          	beqz	a0,18f4 <fl_fgetpos+0x6c>
    188c:	0000a7b7          	lui	a5,0xa
    1890:	0d078713          	addi	a4,a5,208 # a0d0 <_fs>
    1894:	03c72703          	lw	a4,60(a4)
    1898:	ff010113          	addi	sp,sp,-16
    189c:	00812423          	sw	s0,8(sp)
    18a0:	00912223          	sw	s1,4(sp)
    18a4:	01212023          	sw	s2,0(sp)
    18a8:	00112623          	sw	ra,12(sp)
    18ac:	00050493          	mv	s1,a0
    18b0:	00058913          	mv	s2,a1
    18b4:	0d078413          	addi	s0,a5,208
    18b8:	00070463          	beqz	a4,18c0 <fl_fgetpos+0x38>
    18bc:	000700e7          	jalr	a4
    18c0:	0084a783          	lw	a5,8(s1)
    18c4:	00000513          	li	a0,0
    18c8:	00f92023          	sw	a5,0(s2)
    18cc:	04042783          	lw	a5,64(s0)
    18d0:	00078663          	beqz	a5,18dc <fl_fgetpos+0x54>
    18d4:	000780e7          	jalr	a5
    18d8:	00000513          	li	a0,0
    18dc:	00c12083          	lw	ra,12(sp)
    18e0:	00812403          	lw	s0,8(sp)
    18e4:	00412483          	lw	s1,4(sp)
    18e8:	00012903          	lw	s2,0(sp)
    18ec:	01010113          	addi	sp,sp,16
    18f0:	00008067          	ret
    18f4:	fff00513          	li	a0,-1
    18f8:	00008067          	ret

000018fc <fl_ftell>:
    18fc:	fe010113          	addi	sp,sp,-32
    1900:	00c10593          	addi	a1,sp,12
    1904:	00112e23          	sw	ra,28(sp)
    1908:	00012623          	sw	zero,12(sp)
    190c:	00000097          	auipc	ra,0x0
    1910:	f7c080e7          	jalr	-132(ra) # 1888 <fl_fgetpos>
    1914:	01c12083          	lw	ra,28(sp)
    1918:	00c12503          	lw	a0,12(sp)
    191c:	02010113          	addi	sp,sp,32
    1920:	00008067          	ret

00001924 <fl_feof>:
    1924:	06050663          	beqz	a0,1990 <fl_feof+0x6c>
    1928:	0000a7b7          	lui	a5,0xa
    192c:	0d078713          	addi	a4,a5,208 # a0d0 <_fs>
    1930:	03c72703          	lw	a4,60(a4)
    1934:	fe010113          	addi	sp,sp,-32
    1938:	00812c23          	sw	s0,24(sp)
    193c:	00912a23          	sw	s1,20(sp)
    1940:	00112e23          	sw	ra,28(sp)
    1944:	00050413          	mv	s0,a0
    1948:	0d078493          	addi	s1,a5,208
    194c:	00070463          	beqz	a4,1954 <fl_feof+0x30>
    1950:	000700e7          	jalr	a4
    1954:	00842783          	lw	a5,8(s0)
    1958:	00c42703          	lw	a4,12(s0)
    195c:	40e78533          	sub	a0,a5,a4
    1960:	0404a783          	lw	a5,64(s1)
    1964:	00153513          	seqz	a0,a0
    1968:	40a00533          	neg	a0,a0
    196c:	00078863          	beqz	a5,197c <fl_feof+0x58>
    1970:	00a12623          	sw	a0,12(sp)
    1974:	000780e7          	jalr	a5
    1978:	00c12503          	lw	a0,12(sp)
    197c:	01c12083          	lw	ra,28(sp)
    1980:	01812403          	lw	s0,24(sp)
    1984:	01412483          	lw	s1,20(sp)
    1988:	02010113          	addi	sp,sp,32
    198c:	00008067          	ret
    1990:	fff00513          	li	a0,-1
    1994:	00008067          	ret

00001998 <fl_closedir>:
    1998:	00000513          	li	a0,0
    199c:	00008067          	ret

000019a0 <fatfs_lfn_cache_init>:
    19a0:	100502a3          	sb	zero,261(a0)
    19a4:	00058663          	beqz	a1,19b0 <fatfs_lfn_cache_init+0x10>
    19a8:	00000317          	auipc	t1,0x0
    19ac:	a0030067          	jr	-1536(t1) # 13a8 <fatfs_lfn_cache_init.part.0.constprop.0>
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
    1bec:	d0c58593          	addi	a1,a1,-756 # 5d0c <font+0x1e0>
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
    1c70:	fffa0a13          	addi	s4,s4,-1 # 3fff <_read_sectors+0x4f>
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
    1ddc:	00050913          	mv	s2,a0
    1de0:	00b00613          	li	a2,11
    1de4:	02000593          	li	a1,32
    1de8:	00048513          	mv	a0,s1
    1dec:	fffff097          	auipc	ra,0xfffff
    1df0:	8fc080e7          	jalr	-1796(ra) # 6e8 <memset>
    1df4:	000027b7          	lui	a5,0x2
    1df8:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x100>
    1dfc:	00f11623          	sh	a5,12(sp)
    1e00:	02000793          	li	a5,32
    1e04:	00f10723          	sb	a5,14(sp)
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
    1f28:	14c7ec63          	bltu	a5,a2,2080 <fatfs_lfn_generate_tail+0x160>
    1f2c:	fa010113          	addi	sp,sp,-96
    1f30:	05412423          	sw	s4,72(sp)
    1f34:	00058a13          	mv	s4,a1
    1f38:	000065b7          	lui	a1,0x6
    1f3c:	04812c23          	sw	s0,88(sp)
    1f40:	04912a23          	sw	s1,84(sp)
    1f44:	05212823          	sw	s2,80(sp)
    1f48:	00012223          	sw	zero,4(sp)
    1f4c:	07e00793          	li	a5,126
    1f50:	00050493          	mv	s1,a0
    1f54:	00060413          	mv	s0,a2
    1f58:	dc058593          	addi	a1,a1,-576 # 5dc0 <font+0x294>
    1f5c:	01100613          	li	a2,17
    1f60:	01c10513          	addi	a0,sp,28
    1f64:	01010913          	addi	s2,sp,16
    1f68:	05512223          	sw	s5,68(sp)
    1f6c:	03712e23          	sw	s7,60(sp)
    1f70:	04112e23          	sw	ra,92(sp)
    1f74:	05312623          	sw	s3,76(sp)
    1f78:	05612023          	sw	s6,64(sp)
    1f7c:	00012423          	sw	zero,8(sp)
    1f80:	00012623          	sw	zero,12(sp)
    1f84:	00f10223          	sb	a5,4(sp)
    1f88:	00090a93          	mv	s5,s2
    1f8c:	ffffe097          	auipc	ra,0xffffe
    1f90:	778080e7          	jalr	1912(ra) # 704 <memcpy>
    1f94:	00900b93          	li	s7,9
    1f98:	00a00593          	li	a1,10
    1f9c:	00040513          	mv	a0,s0
    1fa0:	ffffe097          	auipc	ra,0xffffe
    1fa4:	6bc080e7          	jalr	1724(ra) # 65c <__umodsi3>
    1fa8:	03050793          	addi	a5,a0,48
    1fac:	00278533          	add	a0,a5,sp
    1fb0:	fec54783          	lbu	a5,-20(a0)
    1fb4:	00090993          	mv	s3,s2
    1fb8:	00040513          	mv	a0,s0
    1fbc:	00a00593          	li	a1,10
    1fc0:	00f90023          	sb	a5,0(s2)
    1fc4:	00040b13          	mv	s6,s0
    1fc8:	ffffe097          	auipc	ra,0xffffe
    1fcc:	64c080e7          	jalr	1612(ra) # 614 <__udivsi3>
    1fd0:	00190913          	addi	s2,s2,1
    1fd4:	00050413          	mv	s0,a0
    1fd8:	fd6be0e3          	bltu	s7,s6,1f98 <fatfs_lfn_generate_tail+0x78>
    1fdc:	00090023          	sb	zero,0(s2)
    1fe0:	00410713          	addi	a4,sp,4
    1fe4:	00098793          	mv	a5,s3
    1fe8:	0007c683          	lbu	a3,0(a5)
    1fec:	fff78793          	addi	a5,a5,-1
    1ff0:	00170713          	addi	a4,a4,1
    1ff4:	00d70023          	sb	a3,0(a4)
    1ff8:	ff57f8e3          	bgeu	a5,s5,1fe8 <fatfs_lfn_generate_tail+0xc8>
    1ffc:	00100793          	li	a5,1
    2000:	0159e663          	bltu	s3,s5,200c <fatfs_lfn_generate_tail+0xec>
    2004:	415787b3          	sub	a5,a5,s5
    2008:	00f987b3          	add	a5,s3,a5
    200c:	03078793          	addi	a5,a5,48
    2010:	002787b3          	add	a5,a5,sp
    2014:	000a0593          	mv	a1,s4
    2018:	fc078aa3          	sb	zero,-43(a5)
    201c:	00b00613          	li	a2,11
    2020:	00048513          	mv	a0,s1
    2024:	ffffe097          	auipc	ra,0xffffe
    2028:	6e0080e7          	jalr	1760(ra) # 704 <memcpy>
    202c:	00410513          	addi	a0,sp,4
    2030:	ffffe097          	auipc	ra,0xffffe
    2034:	6f8080e7          	jalr	1784(ra) # 728 <strlen>
    2038:	40a484b3          	sub	s1,s1,a0
    203c:	00050613          	mv	a2,a0
    2040:	00410593          	addi	a1,sp,4
    2044:	00848513          	addi	a0,s1,8
    2048:	ffffe097          	auipc	ra,0xffffe
    204c:	6bc080e7          	jalr	1724(ra) # 704 <memcpy>
    2050:	05c12083          	lw	ra,92(sp)
    2054:	05812403          	lw	s0,88(sp)
    2058:	05412483          	lw	s1,84(sp)
    205c:	05012903          	lw	s2,80(sp)
    2060:	04c12983          	lw	s3,76(sp)
    2064:	04812a03          	lw	s4,72(sp)
    2068:	04412a83          	lw	s5,68(sp)
    206c:	04012b03          	lw	s6,64(sp)
    2070:	03c12b83          	lw	s7,60(sp)
    2074:	00100513          	li	a0,1
    2078:	06010113          	addi	sp,sp,96
    207c:	00008067          	ret
    2080:	00000513          	li	a0,0
    2084:	00008067          	ret

00002088 <fatfs_total_path_levels>:
    2088:	00050793          	mv	a5,a0
    208c:	06050463          	beqz	a0,20f4 <fatfs_total_path_levels+0x6c>
    2090:	00054703          	lbu	a4,0(a0)
    2094:	02f00693          	li	a3,47
    2098:	00d71863          	bne	a4,a3,20a8 <fatfs_total_path_levels+0x20>
    209c:	00150793          	addi	a5,a0,1
    20a0:	00000513          	li	a0,0
    20a4:	0400006f          	j	20e4 <fatfs_total_path_levels+0x5c>
    20a8:	00154683          	lbu	a3,1(a0)
    20ac:	03a00713          	li	a4,58
    20b0:	00e68a63          	beq	a3,a4,20c4 <fatfs_total_path_levels+0x3c>
    20b4:	00254683          	lbu	a3,2(a0)
    20b8:	05c00713          	li	a4,92
    20bc:	fff00513          	li	a0,-1
    20c0:	02e69c63          	bne	a3,a4,20f8 <fatfs_total_path_levels+0x70>
    20c4:	00378793          	addi	a5,a5,3
    20c8:	05c00713          	li	a4,92
    20cc:	fd5ff06f          	j	20a0 <fatfs_total_path_levels+0x18>
    20d0:	00178793          	addi	a5,a5,1
    20d4:	00e68663          	beq	a3,a4,20e0 <fatfs_total_path_levels+0x58>
    20d8:	0007c683          	lbu	a3,0(a5)
    20dc:	fe069ae3          	bnez	a3,20d0 <fatfs_total_path_levels+0x48>
    20e0:	00150513          	addi	a0,a0,1
    20e4:	0007c683          	lbu	a3,0(a5)
    20e8:	fe0698e3          	bnez	a3,20d8 <fatfs_total_path_levels+0x50>
    20ec:	fff50513          	addi	a0,a0,-1
    20f0:	00008067          	ret
    20f4:	fff00513          	li	a0,-1
    20f8:	00008067          	ret

000020fc <fatfs_get_substring>:
    20fc:	0c050c63          	beqz	a0,21d4 <fatfs_get_substring+0xd8>
    2100:	fe010113          	addi	sp,sp,-32
    2104:	00912a23          	sw	s1,20(sp)
    2108:	00112e23          	sw	ra,28(sp)
    210c:	00812c23          	sw	s0,24(sp)
    2110:	01212823          	sw	s2,16(sp)
    2114:	01312623          	sw	s3,12(sp)
    2118:	01412423          	sw	s4,8(sp)
    211c:	00050793          	mv	a5,a0
    2120:	00068493          	mv	s1,a3
    2124:	fff00513          	li	a0,-1
    2128:	06d05a63          	blez	a3,219c <fatfs_get_substring+0xa0>
    212c:	0007c983          	lbu	s3,0(a5)
    2130:	02f00713          	li	a4,47
    2134:	00058a13          	mv	s4,a1
    2138:	00060913          	mv	s2,a2
    213c:	00178413          	addi	s0,a5,1
    2140:	02e98463          	beq	s3,a4,2168 <fatfs_get_substring+0x6c>
    2144:	0017c683          	lbu	a3,1(a5)
    2148:	03a00713          	li	a4,58
    214c:	00e68a63          	beq	a3,a4,2160 <fatfs_get_substring+0x64>
    2150:	0027c683          	lbu	a3,2(a5)
    2154:	05c00713          	li	a4,92
    2158:	fff00513          	li	a0,-1
    215c:	04e69063          	bne	a3,a4,219c <fatfs_get_substring+0xa0>
    2160:	00378413          	addi	s0,a5,3
    2164:	05c00993          	li	s3,92
    2168:	00040513          	mv	a0,s0
    216c:	ffffe097          	auipc	ra,0xffffe
    2170:	5bc080e7          	jalr	1468(ra) # 728 <strlen>
    2174:	00000713          	li	a4,0
    2178:	00000693          	li	a3,0
    217c:	00000793          	li	a5,0
    2180:	fff48493          	addi	s1,s1,-1
    2184:	00e905b3          	add	a1,s2,a4
    2188:	02a7ca63          	blt	a5,a0,21bc <fatfs_get_substring+0xc0>
    218c:	00058023          	sb	zero,0(a1)
    2190:	00094503          	lbu	a0,0(s2)
    2194:	00153513          	seqz	a0,a0
    2198:	40a00533          	neg	a0,a0
    219c:	01c12083          	lw	ra,28(sp)
    21a0:	01812403          	lw	s0,24(sp)
    21a4:	01412483          	lw	s1,20(sp)
    21a8:	01012903          	lw	s2,16(sp)
    21ac:	00c12983          	lw	s3,12(sp)
    21b0:	00812a03          	lw	s4,8(sp)
    21b4:	02010113          	addi	sp,sp,32
    21b8:	00008067          	ret
    21bc:	00f40633          	add	a2,s0,a5
    21c0:	00064603          	lbu	a2,0(a2)
    21c4:	01361c63          	bne	a2,s3,21dc <fatfs_get_substring+0xe0>
    21c8:	00168693          	addi	a3,a3,1
    21cc:	00178793          	addi	a5,a5,1
    21d0:	fb5ff06f          	j	2184 <fatfs_get_substring+0x88>
    21d4:	fff00513          	li	a0,-1
    21d8:	00008067          	ret
    21dc:	ff4698e3          	bne	a3,s4,21cc <fatfs_get_substring+0xd0>
    21e0:	fe9756e3          	bge	a4,s1,21cc <fatfs_get_substring+0xd0>
    21e4:	00170713          	addi	a4,a4,1
    21e8:	00c58023          	sb	a2,0(a1)
    21ec:	fe1ff06f          	j	21cc <fatfs_get_substring+0xd0>

000021f0 <fatfs_split_path>:
    21f0:	fd010113          	addi	sp,sp,-48
    21f4:	02912223          	sw	s1,36(sp)
    21f8:	03212023          	sw	s2,32(sp)
    21fc:	01312e23          	sw	s3,28(sp)
    2200:	01412c23          	sw	s4,24(sp)
    2204:	02112623          	sw	ra,44(sp)
    2208:	00068a13          	mv	s4,a3
    220c:	02812423          	sw	s0,40(sp)
    2210:	00050913          	mv	s2,a0
    2214:	00058493          	mv	s1,a1
    2218:	00060993          	mv	s3,a2
    221c:	00e12623          	sw	a4,12(sp)
    2220:	00000097          	auipc	ra,0x0
    2224:	e68080e7          	jalr	-408(ra) # 2088 <fatfs_total_path_levels>
    2228:	fff00793          	li	a5,-1
    222c:	00c12683          	lw	a3,12(sp)
    2230:	02f51663          	bne	a0,a5,225c <fatfs_split_path+0x6c>
    2234:	fff00413          	li	s0,-1
    2238:	02c12083          	lw	ra,44(sp)
    223c:	00040513          	mv	a0,s0
    2240:	02812403          	lw	s0,40(sp)
    2244:	02412483          	lw	s1,36(sp)
    2248:	02012903          	lw	s2,32(sp)
    224c:	01c12983          	lw	s3,28(sp)
    2250:	01812a03          	lw	s4,24(sp)
    2254:	03010113          	addi	sp,sp,48
    2258:	00008067          	ret
    225c:	00050413          	mv	s0,a0
    2260:	00050593          	mv	a1,a0
    2264:	000a0613          	mv	a2,s4
    2268:	00090513          	mv	a0,s2
    226c:	00000097          	auipc	ra,0x0
    2270:	e90080e7          	jalr	-368(ra) # 20fc <fatfs_get_substring>
    2274:	fc0510e3          	bnez	a0,2234 <fatfs_split_path+0x44>
    2278:	00041663          	bnez	s0,2284 <fatfs_split_path+0x94>
    227c:	00048023          	sb	zero,0(s1)
    2280:	fb9ff06f          	j	2238 <fatfs_split_path+0x48>
    2284:	00090513          	mv	a0,s2
    2288:	ffffe097          	auipc	ra,0xffffe
    228c:	4a0080e7          	jalr	1184(ra) # 728 <strlen>
    2290:	00050413          	mv	s0,a0
    2294:	000a0513          	mv	a0,s4
    2298:	ffffe097          	auipc	ra,0xffffe
    229c:	490080e7          	jalr	1168(ra) # 728 <strlen>
    22a0:	40a40433          	sub	s0,s0,a0
    22a4:	0089d463          	bge	s3,s0,22ac <fatfs_split_path+0xbc>
    22a8:	00098413          	mv	s0,s3
    22ac:	00040613          	mv	a2,s0
    22b0:	00048513          	mv	a0,s1
    22b4:	00090593          	mv	a1,s2
    22b8:	008484b3          	add	s1,s1,s0
    22bc:	ffffe097          	auipc	ra,0xffffe
    22c0:	448080e7          	jalr	1096(ra) # 704 <memcpy>
    22c4:	00000413          	li	s0,0
    22c8:	fe048fa3          	sb	zero,-1(s1)
    22cc:	f6dff06f          	j	2238 <fatfs_split_path+0x48>

000022d0 <fatfs_compare_names>:
    22d0:	fd010113          	addi	sp,sp,-48
    22d4:	02112623          	sw	ra,44(sp)
    22d8:	02812423          	sw	s0,40(sp)
    22dc:	02912223          	sw	s1,36(sp)
    22e0:	03212023          	sw	s2,32(sp)
    22e4:	01312e23          	sw	s3,28(sp)
    22e8:	00058913          	mv	s2,a1
    22ec:	01412c23          	sw	s4,24(sp)
    22f0:	01512a23          	sw	s5,20(sp)
    22f4:	01612823          	sw	s6,16(sp)
    22f8:	00050a13          	mv	s4,a0
    22fc:	fffff097          	auipc	ra,0xfffff
    2300:	d24080e7          	jalr	-732(ra) # 1020 <FileString_GetExtension>
    2304:	00050493          	mv	s1,a0
    2308:	00090513          	mv	a0,s2
    230c:	fffff097          	auipc	ra,0xfffff
    2310:	d14080e7          	jalr	-748(ra) # 1020 <FileString_GetExtension>
    2314:	fff00793          	li	a5,-1
    2318:	00050413          	mv	s0,a0
    231c:	00000993          	li	s3,0
    2320:	0af49263          	bne	s1,a5,23c4 <fatfs_compare_names+0xf4>
    2324:	0e951863          	bne	a0,s1,2414 <fatfs_compare_names+0x144>
    2328:	000a0513          	mv	a0,s4
    232c:	ffffe097          	auipc	ra,0xffffe
    2330:	3fc080e7          	jalr	1020(ra) # 728 <strlen>
    2334:	00050493          	mv	s1,a0
    2338:	00090513          	mv	a0,s2
    233c:	ffffe097          	auipc	ra,0xffffe
    2340:	3ec080e7          	jalr	1004(ra) # 728 <strlen>
    2344:	00050413          	mv	s0,a0
    2348:	fff48793          	addi	a5,s1,-1
    234c:	00fa07b3          	add	a5,s4,a5
    2350:	40978733          	sub	a4,a5,s1
    2354:	02000613          	li	a2,32
    2358:	00078693          	mv	a3,a5
    235c:	00e78863          	beq	a5,a4,236c <fatfs_compare_names+0x9c>
    2360:	0007c583          	lbu	a1,0(a5)
    2364:	fff78793          	addi	a5,a5,-1
    2368:	04c58663          	beq	a1,a2,23b4 <fatfs_compare_names+0xe4>
    236c:	fff40793          	addi	a5,s0,-1
    2370:	00f907b3          	add	a5,s2,a5
    2374:	40878733          	sub	a4,a5,s0
    2378:	02000613          	li	a2,32
    237c:	00078693          	mv	a3,a5
    2380:	00e78863          	beq	a5,a4,2390 <fatfs_compare_names+0xc0>
    2384:	0007c583          	lbu	a1,0(a5)
    2388:	fff78793          	addi	a5,a5,-1
    238c:	02c58863          	beq	a1,a2,23bc <fatfs_compare_names+0xec>
    2390:	00000993          	li	s3,0
    2394:	08941063          	bne	s0,s1,2414 <fatfs_compare_names+0x144>
    2398:	00040613          	mv	a2,s0
    239c:	00090593          	mv	a1,s2
    23a0:	000a0513          	mv	a0,s4
    23a4:	fffff097          	auipc	ra,0xfffff
    23a8:	c0c080e7          	jalr	-1012(ra) # fb0 <FileString_StrCmpNoCase>
    23ac:	00153993          	seqz	s3,a0
    23b0:	0640006f          	j	2414 <fatfs_compare_names+0x144>
    23b4:	414684b3          	sub	s1,a3,s4
    23b8:	fa1ff06f          	j	2358 <fatfs_compare_names+0x88>
    23bc:	41268433          	sub	s0,a3,s2
    23c0:	fbdff06f          	j	237c <fatfs_compare_names+0xac>
    23c4:	04f50863          	beq	a0,a5,2414 <fatfs_compare_names+0x144>
    23c8:	00148a93          	addi	s5,s1,1
    23cc:	015a0ab3          	add	s5,s4,s5
    23d0:	00140b13          	addi	s6,s0,1
    23d4:	000a8513          	mv	a0,s5
    23d8:	ffffe097          	auipc	ra,0xffffe
    23dc:	350080e7          	jalr	848(ra) # 728 <strlen>
    23e0:	01690b33          	add	s6,s2,s6
    23e4:	00a12623          	sw	a0,12(sp)
    23e8:	000b0513          	mv	a0,s6
    23ec:	ffffe097          	auipc	ra,0xffffe
    23f0:	33c080e7          	jalr	828(ra) # 728 <strlen>
    23f4:	00c12603          	lw	a2,12(sp)
    23f8:	00000993          	li	s3,0
    23fc:	00a61c63          	bne	a2,a0,2414 <fatfs_compare_names+0x144>
    2400:	000b0593          	mv	a1,s6
    2404:	000a8513          	mv	a0,s5
    2408:	fffff097          	auipc	ra,0xfffff
    240c:	ba8080e7          	jalr	-1112(ra) # fb0 <FileString_StrCmpNoCase>
    2410:	f2050ce3          	beqz	a0,2348 <fatfs_compare_names+0x78>
    2414:	02c12083          	lw	ra,44(sp)
    2418:	02812403          	lw	s0,40(sp)
    241c:	02412483          	lw	s1,36(sp)
    2420:	02012903          	lw	s2,32(sp)
    2424:	01812a03          	lw	s4,24(sp)
    2428:	01412a83          	lw	s5,20(sp)
    242c:	01012b03          	lw	s6,16(sp)
    2430:	00098513          	mv	a0,s3
    2434:	01c12983          	lw	s3,28(sp)
    2438:	03010113          	addi	sp,sp,48
    243c:	00008067          	ret

00002440 <_check_file_open>:
    2440:	fe010113          	addi	sp,sp,-32
    2444:	000067b7          	lui	a5,0x6
    2448:	00812c23          	sw	s0,24(sp)
    244c:	f787a403          	lw	s0,-136(a5) # 5f78 <_open_file_list>
    2450:	00912a23          	sw	s1,20(sp)
    2454:	01212823          	sw	s2,16(sp)
    2458:	01312623          	sw	s3,12(sp)
    245c:	00112e23          	sw	ra,28(sp)
    2460:	00050493          	mv	s1,a0
    2464:	01450913          	addi	s2,a0,20
    2468:	11850993          	addi	s3,a0,280
    246c:	02041263          	bnez	s0,2490 <_check_file_open+0x50>
    2470:	00000513          	li	a0,0
    2474:	01c12083          	lw	ra,28(sp)
    2478:	01812403          	lw	s0,24(sp)
    247c:	01412483          	lw	s1,20(sp)
    2480:	01012903          	lw	s2,16(sp)
    2484:	00c12983          	lw	s3,12(sp)
    2488:	02010113          	addi	sp,sp,32
    248c:	00008067          	ret
    2490:	bc440793          	addi	a5,s0,-1084
    2494:	02f48663          	beq	s1,a5,24c0 <_check_file_open+0x80>
    2498:	00090593          	mv	a1,s2
    249c:	bd840513          	addi	a0,s0,-1064
    24a0:	00000097          	auipc	ra,0x0
    24a4:	e30080e7          	jalr	-464(ra) # 22d0 <fatfs_compare_names>
    24a8:	00050c63          	beqz	a0,24c0 <_check_file_open+0x80>
    24ac:	00098593          	mv	a1,s3
    24b0:	cdc40513          	addi	a0,s0,-804
    24b4:	00000097          	auipc	ra,0x0
    24b8:	e1c080e7          	jalr	-484(ra) # 22d0 <fatfs_compare_names>
    24bc:	00051663          	bnez	a0,24c8 <_check_file_open+0x88>
    24c0:	00442403          	lw	s0,4(s0)
    24c4:	fa9ff06f          	j	246c <_check_file_open+0x2c>
    24c8:	00100513          	li	a0,1
    24cc:	fa9ff06f          	j	2474 <_check_file_open+0x34>

000024d0 <fatfs_string_ends_with_slash>:
    24d0:	00050a63          	beqz	a0,24e4 <fatfs_string_ends_with_slash+0x14>
    24d4:	05c00713          	li	a4,92
    24d8:	02f00693          	li	a3,47
    24dc:	00054783          	lbu	a5,0(a0)
    24e0:	00079663          	bnez	a5,24ec <fatfs_string_ends_with_slash+0x1c>
    24e4:	00000513          	li	a0,0
    24e8:	00008067          	ret
    24ec:	00154603          	lbu	a2,1(a0)
    24f0:	00061663          	bnez	a2,24fc <fatfs_string_ends_with_slash+0x2c>
    24f4:	00e78863          	beq	a5,a4,2504 <fatfs_string_ends_with_slash+0x34>
    24f8:	00d78663          	beq	a5,a3,2504 <fatfs_string_ends_with_slash+0x34>
    24fc:	00150513          	addi	a0,a0,1
    2500:	fddff06f          	j	24dc <fatfs_string_ends_with_slash+0xc>
    2504:	00100513          	li	a0,1
    2508:	00008067          	ret

0000250c <fatfs_get_sfn_display_name>:
    250c:	00000713          	li	a4,0
    2510:	00c00613          	li	a2,12
    2514:	02000813          	li	a6,32
    2518:	01900893          	li	a7,25
    251c:	0005c783          	lbu	a5,0(a1)
    2520:	00078463          	beqz	a5,2528 <fatfs_get_sfn_display_name+0x1c>
    2524:	00c71863          	bne	a4,a2,2534 <fatfs_get_sfn_display_name+0x28>
    2528:	00050023          	sb	zero,0(a0)
    252c:	00100513          	li	a0,1
    2530:	00008067          	ret
    2534:	00158593          	addi	a1,a1,1
    2538:	ff0782e3          	beq	a5,a6,251c <fatfs_get_sfn_display_name+0x10>
    253c:	fbf78693          	addi	a3,a5,-65
    2540:	0ff6f693          	zext.b	a3,a3
    2544:	00d8e663          	bltu	a7,a3,2550 <fatfs_get_sfn_display_name+0x44>
    2548:	02078793          	addi	a5,a5,32
    254c:	0ff7f793          	zext.b	a5,a5
    2550:	00f50023          	sb	a5,0(a0)
    2554:	00170713          	addi	a4,a4,1
    2558:	00150513          	addi	a0,a0,1
    255c:	fc1ff06f          	j	251c <fatfs_get_sfn_display_name+0x10>

00002560 <fatfs_get_extension>:
    2560:	ff010113          	addi	sp,sp,-16
    2564:	00812423          	sw	s0,8(sp)
    2568:	00912223          	sw	s1,4(sp)
    256c:	01212023          	sw	s2,0(sp)
    2570:	00112623          	sw	ra,12(sp)
    2574:	00050913          	mv	s2,a0
    2578:	00058493          	mv	s1,a1
    257c:	00060413          	mv	s0,a2
    2580:	fffff097          	auipc	ra,0xfffff
    2584:	aa0080e7          	jalr	-1376(ra) # 1020 <FileString_GetExtension>
    2588:	06a05c63          	blez	a0,2600 <fatfs_get_extension+0xa0>
    258c:	06048a63          	beqz	s1,2600 <fatfs_get_extension+0xa0>
    2590:	02040863          	beqz	s0,25c0 <fatfs_get_extension+0x60>
    2594:	00150513          	addi	a0,a0,1
    2598:	00000713          	li	a4,0
    259c:	fff40413          	addi	s0,s0,-1
    25a0:	01900593          	li	a1,25
    25a4:	00e507b3          	add	a5,a0,a4
    25a8:	00f907b3          	add	a5,s2,a5
    25ac:	0007c783          	lbu	a5,0(a5)
    25b0:	00e48633          	add	a2,s1,a4
    25b4:	02079463          	bnez	a5,25dc <fatfs_get_extension+0x7c>
    25b8:	00060023          	sb	zero,0(a2)
    25bc:	00100413          	li	s0,1
    25c0:	00c12083          	lw	ra,12(sp)
    25c4:	00040513          	mv	a0,s0
    25c8:	00812403          	lw	s0,8(sp)
    25cc:	00412483          	lw	s1,4(sp)
    25d0:	00012903          	lw	s2,0(sp)
    25d4:	01010113          	addi	sp,sp,16
    25d8:	00008067          	ret
    25dc:	fc875ee3          	bge	a4,s0,25b8 <fatfs_get_extension+0x58>
    25e0:	fbf78693          	addi	a3,a5,-65
    25e4:	0ff6f693          	zext.b	a3,a3
    25e8:	00d5e663          	bltu	a1,a3,25f4 <fatfs_get_extension+0x94>
    25ec:	02078793          	addi	a5,a5,32
    25f0:	0ff7f793          	zext.b	a5,a5
    25f4:	00f60023          	sb	a5,0(a2)
    25f8:	00170713          	addi	a4,a4,1
    25fc:	fa9ff06f          	j	25a4 <fatfs_get_extension+0x44>
    2600:	00000413          	li	s0,0
    2604:	fbdff06f          	j	25c0 <fatfs_get_extension+0x60>

00002608 <fatfs_create_path_string>:
    2608:	00050893          	mv	a7,a0
    260c:	00000513          	li	a0,0
    2610:	0a088263          	beqz	a7,26b4 <fatfs_create_path_string+0xac>
    2614:	0a058063          	beqz	a1,26b4 <fatfs_create_path_string+0xac>
    2618:	08060e63          	beqz	a2,26b4 <fatfs_create_path_string+0xac>
    261c:	00d04463          	bgtz	a3,2624 <fatfs_create_path_string+0x1c>
    2620:	00008067          	ret
    2624:	02f00313          	li	t1,47
    2628:	00000513          	li	a0,0
    262c:	00000713          	li	a4,0
    2630:	ffe68e13          	addi	t3,a3,-2
    2634:	05c00e93          	li	t4,92
    2638:	01c0006f          	j	2654 <fatfs_create_path_string+0x4c>
    263c:	03c75463          	bge	a4,t3,2664 <fatfs_create_path_string+0x5c>
    2640:	01d81463          	bne	a6,t4,2648 <fatfs_create_path_string+0x40>
    2644:	05c00313          	li	t1,92
    2648:	01078023          	sb	a6,0(a5)
    264c:	00170713          	addi	a4,a4,1
    2650:	00080513          	mv	a0,a6
    2654:	00e88833          	add	a6,a7,a4
    2658:	00084803          	lbu	a6,0(a6)
    265c:	00e607b3          	add	a5,a2,a4
    2660:	fc081ee3          	bnez	a6,263c <fatfs_create_path_string+0x34>
    2664:	05c00613          	li	a2,92
    2668:	02c51063          	bne	a0,a2,2688 <fatfs_create_path_string+0x80>
    266c:	fff68693          	addi	a3,a3,-1
    2670:	40b70733          	sub	a4,a4,a1
    2674:	0005c603          	lbu	a2,0(a1)
    2678:	02061263          	bnez	a2,269c <fatfs_create_path_string+0x94>
    267c:	00078023          	sb	zero,0(a5)
    2680:	00100513          	li	a0,1
    2684:	00008067          	ret
    2688:	02f00613          	li	a2,47
    268c:	fec500e3          	beq	a0,a2,266c <fatfs_create_path_string+0x64>
    2690:	00678023          	sb	t1,0(a5)
    2694:	00178793          	addi	a5,a5,1
    2698:	fd5ff06f          	j	266c <fatfs_create_path_string+0x64>
    269c:	00e58533          	add	a0,a1,a4
    26a0:	fcd55ee3          	bge	a0,a3,267c <fatfs_create_path_string+0x74>
    26a4:	00178793          	addi	a5,a5,1
    26a8:	00158593          	addi	a1,a1,1
    26ac:	fec78fa3          	sb	a2,-1(a5)
    26b0:	fc5ff06f          	j	2674 <fatfs_create_path_string+0x6c>
    26b4:	00008067          	ret

000026b8 <fatfs_fat_init>:
    26b8:	ff010113          	addi	sp,sp,-16
    26bc:	00812423          	sw	s0,8(sp)
    26c0:	00112623          	sw	ra,12(sp)
    26c4:	fff00793          	li	a5,-1
    26c8:	44f52c23          	sw	a5,1112(a0)
    26cc:	25850793          	addi	a5,a0,600
    26d0:	00050413          	mv	s0,a0
    26d4:	44052e23          	sw	zero,1116(a0)
    26d8:	20000613          	li	a2,512
    26dc:	00000593          	li	a1,0
    26e0:	00078513          	mv	a0,a5
    26e4:	ffffe097          	auipc	ra,0xffffe
    26e8:	004080e7          	jalr	4(ra) # 6e8 <memset>
    26ec:	00c12083          	lw	ra,12(sp)
    26f0:	46042023          	sw	zero,1120(s0)
    26f4:	46042223          	sw	zero,1124(s0)
    26f8:	24a42a23          	sw	a0,596(s0)
    26fc:	00812403          	lw	s0,8(sp)
    2700:	01010113          	addi	sp,sp,16
    2704:	00008067          	ret

00002708 <fatfs_init>:
    2708:	fc010113          	addi	sp,sp,-64
    270c:	02812c23          	sw	s0,56(sp)
    2710:	02112e23          	sw	ra,60(sp)
    2714:	02912a23          	sw	s1,52(sp)
    2718:	03212823          	sw	s2,48(sp)
    271c:	03312623          	sw	s3,44(sp)
    2720:	03412423          	sw	s4,40(sp)
    2724:	03512223          	sw	s5,36(sp)
    2728:	03612023          	sw	s6,32(sp)
    272c:	01712e23          	sw	s7,28(sp)
    2730:	fff00793          	li	a5,-1
    2734:	24f52223          	sw	a5,580(a0)
    2738:	24052423          	sw	zero,584(a0)
    273c:	02052223          	sw	zero,36(a0)
    2740:	00050413          	mv	s0,a0
    2744:	00000097          	auipc	ra,0x0
    2748:	f74080e7          	jalr	-140(ra) # 26b8 <fatfs_fat_init>
    274c:	03442783          	lw	a5,52(s0)
    2750:	02079a63          	bnez	a5,2784 <fatfs_init+0x7c>
    2754:	fff00513          	li	a0,-1
    2758:	03c12083          	lw	ra,60(sp)
    275c:	03812403          	lw	s0,56(sp)
    2760:	03412483          	lw	s1,52(sp)
    2764:	03012903          	lw	s2,48(sp)
    2768:	02c12983          	lw	s3,44(sp)
    276c:	02812a03          	lw	s4,40(sp)
    2770:	02412a83          	lw	s5,36(sp)
    2774:	02012b03          	lw	s6,32(sp)
    2778:	01c12b83          	lw	s7,28(sp)
    277c:	04010113          	addi	sp,sp,64
    2780:	00008067          	ret
    2784:	04440593          	addi	a1,s0,68
    2788:	00100613          	li	a2,1
    278c:	00000513          	li	a0,0
    2790:	00b12623          	sw	a1,12(sp)
    2794:	000780e7          	jalr	a5
    2798:	fa050ee3          	beqz	a0,2754 <fatfs_init+0x4c>
    279c:	24042703          	lw	a4,576(s0)
    27a0:	ffff07b7          	lui	a5,0xffff0
    27a4:	00c12583          	lw	a1,12(sp)
    27a8:	00e7f7b3          	and	a5,a5,a4
    27ac:	aa550737          	lui	a4,0xaa550
    27b0:	00e78663          	beq	a5,a4,27bc <fatfs_init+0xb4>
    27b4:	ffd00513          	li	a0,-3
    27b8:	fa1ff06f          	j	2758 <fatfs_init+0x50>
    27bc:	24344783          	lbu	a5,579(s0)
    27c0:	24244703          	lbu	a4,578(s0)
    27c4:	ffc00513          	li	a0,-4
    27c8:	00879793          	slli	a5,a5,0x8
    27cc:	00e787b3          	add	a5,a5,a4
    27d0:	0000b737          	lui	a4,0xb
    27d4:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x51d>
    27d8:	f8e790e3          	bne	a5,a4,2758 <fatfs_init+0x50>
    27dc:	20644783          	lbu	a5,518(s0)
    27e0:	00600713          	li	a4,6
    27e4:	04f76063          	bltu	a4,a5,2824 <fatfs_init+0x11c>
    27e8:	00400713          	li	a4,4
    27ec:	00f76663          	bltu	a4,a5,27f8 <fatfs_init+0xf0>
    27f0:	00000513          	li	a0,0
    27f4:	04078263          	beqz	a5,2838 <fatfs_init+0x130>
    27f8:	20d44503          	lbu	a0,525(s0)
    27fc:	20c44783          	lbu	a5,524(s0)
    2800:	01851513          	slli	a0,a0,0x18
    2804:	01079793          	slli	a5,a5,0x10
    2808:	00f50533          	add	a0,a0,a5
    280c:	20a44783          	lbu	a5,522(s0)
    2810:	00f50533          	add	a0,a0,a5
    2814:	20b44783          	lbu	a5,523(s0)
    2818:	00879793          	slli	a5,a5,0x8
    281c:	00f50533          	add	a0,a0,a5
    2820:	0180006f          	j	2838 <fatfs_init+0x130>
    2824:	00c00713          	li	a4,12
    2828:	1ef76a63          	bltu	a4,a5,2a1c <fatfs_init+0x314>
    282c:	00a00713          	li	a4,10
    2830:	00000513          	li	a0,0
    2834:	fcf762e3          	bltu	a4,a5,27f8 <fatfs_init+0xf0>
    2838:	03442783          	lw	a5,52(s0)
    283c:	00a42e23          	sw	a0,28(s0)
    2840:	00100613          	li	a2,1
    2844:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2848:	f00506e3          	beqz	a0,2754 <fatfs_init+0x4c>
    284c:	05044783          	lbu	a5,80(s0)
    2850:	04f44703          	lbu	a4,79(s0)
    2854:	ffe00513          	li	a0,-2
    2858:	00879793          	slli	a5,a5,0x8
    285c:	00e787b3          	add	a5,a5,a4
    2860:	20000713          	li	a4,512
    2864:	eee79ae3          	bne	a5,a4,2758 <fatfs_init+0x50>
    2868:	05644483          	lbu	s1,86(s0)
    286c:	05544b83          	lbu	s7,85(s0)
    2870:	05344903          	lbu	s2,83(s0)
    2874:	05244a03          	lbu	s4,82(s0)
    2878:	05b44583          	lbu	a1,91(s0)
    287c:	00849493          	slli	s1,s1,0x8
    2880:	05144983          	lbu	s3,81(s0)
    2884:	05a44783          	lbu	a5,90(s0)
    2888:	01748ab3          	add	s5,s1,s7
    288c:	00891913          	slli	s2,s2,0x8
    2890:	010a9a93          	slli	s5,s5,0x10
    2894:	01490b33          	add	s6,s2,s4
    2898:	010ada93          	srli	s5,s5,0x10
    289c:	00859593          	slli	a1,a1,0x8
    28a0:	010b1b13          	slli	s6,s6,0x10
    28a4:	01340023          	sb	s3,0(s0)
    28a8:	03541423          	sh	s5,40(s0)
    28ac:	00f585b3          	add	a1,a1,a5
    28b0:	05444503          	lbu	a0,84(s0)
    28b4:	010b5b13          	srli	s6,s6,0x10
    28b8:	02059663          	bnez	a1,28e4 <fatfs_init+0x1dc>
    28bc:	06b44583          	lbu	a1,107(s0)
    28c0:	06a44783          	lbu	a5,106(s0)
    28c4:	01859593          	slli	a1,a1,0x18
    28c8:	01079793          	slli	a5,a5,0x10
    28cc:	00f585b3          	add	a1,a1,a5
    28d0:	06844783          	lbu	a5,104(s0)
    28d4:	00f585b3          	add	a1,a1,a5
    28d8:	06944783          	lbu	a5,105(s0)
    28dc:	00879793          	slli	a5,a5,0x8
    28e0:	00f585b3          	add	a1,a1,a5
    28e4:	07344783          	lbu	a5,115(s0)
    28e8:	07244703          	lbu	a4,114(s0)
    28ec:	02b42023          	sw	a1,32(s0)
    28f0:	01879793          	slli	a5,a5,0x18
    28f4:	01071713          	slli	a4,a4,0x10
    28f8:	00e787b3          	add	a5,a5,a4
    28fc:	07044703          	lbu	a4,112(s0)
    2900:	005a9a93          	slli	s5,s5,0x5
    2904:	1ffa8a93          	addi	s5,s5,511
    2908:	00e787b3          	add	a5,a5,a4
    290c:	07144703          	lbu	a4,113(s0)
    2910:	409ada93          	srai	s5,s5,0x9
    2914:	00871713          	slli	a4,a4,0x8
    2918:	00e787b3          	add	a5,a5,a4
    291c:	00f42423          	sw	a5,8(s0)
    2920:	07544783          	lbu	a5,117(s0)
    2924:	07444703          	lbu	a4,116(s0)
    2928:	00879793          	slli	a5,a5,0x8
    292c:	00e787b3          	add	a5,a5,a4
    2930:	00f41c23          	sh	a5,24(s0)
    2934:	ffffe097          	auipc	ra,0xffffe
    2938:	5e4080e7          	jalr	1508(ra) # f18 <__mulsi3>
    293c:	00ab07b3          	add	a5,s6,a0
    2940:	00f42623          	sw	a5,12(s0)
    2944:	01c42783          	lw	a5,28(s0)
    2948:	24244703          	lbu	a4,578(s0)
    294c:	01542823          	sw	s5,16(s0)
    2950:	00fb0b33          	add	s6,s6,a5
    2954:	24344783          	lbu	a5,579(s0)
    2958:	01642a23          	sw	s6,20(s0)
    295c:	01650b33          	add	s6,a0,s6
    2960:	00879793          	slli	a5,a5,0x8
    2964:	00e787b3          	add	a5,a5,a4
    2968:	0000b737          	lui	a4,0xb
    296c:	01642223          	sw	s6,4(s0)
    2970:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x51d>
    2974:	e4e790e3          	bne	a5,a4,27b4 <fatfs_init+0xac>
    2978:	05844783          	lbu	a5,88(s0)
    297c:	05744703          	lbu	a4,87(s0)
    2980:	017484b3          	add	s1,s1,s7
    2984:	00549493          	slli	s1,s1,0x5
    2988:	00879793          	slli	a5,a5,0x8
    298c:	1ff48493          	addi	s1,s1,511
    2990:	00e787b3          	add	a5,a5,a4
    2994:	4094d493          	srai	s1,s1,0x9
    2998:	02079663          	bnez	a5,29c4 <fatfs_init+0x2bc>
    299c:	06744783          	lbu	a5,103(s0)
    29a0:	06644703          	lbu	a4,102(s0)
    29a4:	01879793          	slli	a5,a5,0x18
    29a8:	01071713          	slli	a4,a4,0x10
    29ac:	00e787b3          	add	a5,a5,a4
    29b0:	06444703          	lbu	a4,100(s0)
    29b4:	00e787b3          	add	a5,a5,a4
    29b8:	06544703          	lbu	a4,101(s0)
    29bc:	00871713          	slli	a4,a4,0x8
    29c0:	00e787b3          	add	a5,a5,a4
    29c4:	01490933          	add	s2,s2,s4
    29c8:	00990933          	add	s2,s2,s1
    29cc:	00a90533          	add	a0,s2,a0
    29d0:	40a787b3          	sub	a5,a5,a0
    29d4:	ffb00513          	li	a0,-5
    29d8:	d80980e3          	beqz	s3,2758 <fatfs_init+0x50>
    29dc:	00078513          	mv	a0,a5
    29e0:	00098593          	mv	a1,s3
    29e4:	ffffe097          	auipc	ra,0xffffe
    29e8:	c30080e7          	jalr	-976(ra) # 614 <__udivsi3>
    29ec:	00001737          	lui	a4,0x1
    29f0:	00050793          	mv	a5,a0
    29f4:	ff470713          	addi	a4,a4,-12 # ff4 <FileString_StrCmpNoCase+0x44>
    29f8:	ffb00513          	li	a0,-5
    29fc:	d4f77ee3          	bgeu	a4,a5,2758 <fatfs_init+0x50>
    2a00:	00010737          	lui	a4,0x10
    2a04:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x5abc>
    2a08:	02f76663          	bltu	a4,a5,2a34 <fatfs_init+0x32c>
    2a0c:	00042423          	sw	zero,8(s0)
    2a10:	02042823          	sw	zero,48(s0)
    2a14:	00000513          	li	a0,0
    2a18:	d41ff06f          	j	2758 <fatfs_init+0x50>
    2a1c:	ff278793          	addi	a5,a5,-14
    2a20:	0ff7f793          	zext.b	a5,a5
    2a24:	00100713          	li	a4,1
    2a28:	00000513          	li	a0,0
    2a2c:	dcf776e3          	bgeu	a4,a5,27f8 <fatfs_init+0xf0>
    2a30:	e09ff06f          	j	2838 <fatfs_init+0x130>
    2a34:	00100793          	li	a5,1
    2a38:	02f42823          	sw	a5,48(s0)
    2a3c:	fd9ff06f          	j	2a14 <fatfs_init+0x30c>

00002a40 <fl_attach_media>:
    2a40:	000067b7          	lui	a5,0x6
    2a44:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    2a48:	ff010113          	addi	sp,sp,-16
    2a4c:	00812423          	sw	s0,8(sp)
    2a50:	00912223          	sw	s1,4(sp)
    2a54:	00112623          	sw	ra,12(sp)
    2a58:	00050493          	mv	s1,a0
    2a5c:	00058413          	mv	s0,a1
    2a60:	00079663          	bnez	a5,2a6c <fl_attach_media+0x2c>
    2a64:	fffff097          	auipc	ra,0xfffff
    2a68:	c88080e7          	jalr	-888(ra) # 16ec <fl_init>
    2a6c:	0000a537          	lui	a0,0xa
    2a70:	0d050793          	addi	a5,a0,208 # a0d0 <_fs>
    2a74:	0d050513          	addi	a0,a0,208
    2a78:	0287ac23          	sw	s0,56(a5)
    2a7c:	0297aa23          	sw	s1,52(a5)
    2a80:	00000097          	auipc	ra,0x0
    2a84:	c88080e7          	jalr	-888(ra) # 2708 <fatfs_init>
    2a88:	00050413          	mv	s0,a0
    2a8c:	02050863          	beqz	a0,2abc <fl_attach_media+0x7c>
    2a90:	00050593          	mv	a1,a0
    2a94:	00006537          	lui	a0,0x6
    2a98:	e7050513          	addi	a0,a0,-400 # 5e70 <font+0x344>
    2a9c:	ffffe097          	auipc	ra,0xffffe
    2aa0:	340080e7          	jalr	832(ra) # ddc <printf>
    2aa4:	00c12083          	lw	ra,12(sp)
    2aa8:	00040513          	mv	a0,s0
    2aac:	00812403          	lw	s0,8(sp)
    2ab0:	00412483          	lw	s1,4(sp)
    2ab4:	01010113          	addi	sp,sp,16
    2ab8:	00008067          	ret
    2abc:	000067b7          	lui	a5,0x6
    2ac0:	00100713          	li	a4,1
    2ac4:	f8e7a023          	sw	a4,-128(a5) # 5f80 <_filelib_valid>
    2ac8:	fddff06f          	j	2aa4 <fl_attach_media+0x64>

00002acc <fatfs_format_fat16>:
    2acc:	fe010113          	addi	sp,sp,-32
    2ad0:	00812c23          	sw	s0,24(sp)
    2ad4:	00912a23          	sw	s1,20(sp)
    2ad8:	01212823          	sw	s2,16(sp)
    2adc:	00112e23          	sw	ra,28(sp)
    2ae0:	01312623          	sw	s3,12(sp)
    2ae4:	01412423          	sw	s4,8(sp)
    2ae8:	01512223          	sw	s5,4(sp)
    2aec:	fff00793          	li	a5,-1
    2af0:	24f52223          	sw	a5,580(a0)
    2af4:	24052423          	sw	zero,584(a0)
    2af8:	02052223          	sw	zero,36(a0)
    2afc:	00050413          	mv	s0,a0
    2b00:	00058493          	mv	s1,a1
    2b04:	00060913          	mv	s2,a2
    2b08:	00000097          	auipc	ra,0x0
    2b0c:	bb0080e7          	jalr	-1104(ra) # 26b8 <fatfs_fat_init>
    2b10:	03442783          	lw	a5,52(s0)
    2b14:	fff00513          	li	a0,-1
    2b18:	08078a63          	beqz	a5,2bac <fatfs_format_fat16+0xe0>
    2b1c:	03842983          	lw	s3,56(s0)
    2b20:	fff00513          	li	a0,-1
    2b24:	08098463          	beqz	s3,2bac <fatfs_format_fat16+0xe0>
    2b28:	04440a13          	addi	s4,s0,68
    2b2c:	02042823          	sw	zero,48(s0)
    2b30:	00041c23          	sh	zero,24(s0)
    2b34:	00042423          	sw	zero,8(s0)
    2b38:	00042e23          	sw	zero,28(s0)
    2b3c:	20000613          	li	a2,512
    2b40:	00000593          	li	a1,0
    2b44:	000a0513          	mv	a0,s4
    2b48:	ffffe097          	auipc	ra,0xffffe
    2b4c:	ba0080e7          	jalr	-1120(ra) # 6e8 <memset>
    2b50:	4d9047b7          	lui	a5,0x4d904
    2b54:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2b58:	04f42223          	sw	a5,68(s0)
    2b5c:	534f47b7          	lui	a5,0x534f4
    2b60:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2b64:	04f42423          	sw	a5,72(s0)
    2b68:	000037b7          	lui	a5,0x3
    2b6c:	e3578793          	addi	a5,a5,-459 # 2e35 <fatfs_format_fat32+0xf5>
    2b70:	04f41623          	sh	a5,76(s0)
    2b74:	03000793          	li	a5,48
    2b78:	04f40723          	sb	a5,78(s0)
    2b7c:	00200793          	li	a5,2
    2b80:	04f40823          	sb	a5,80(s0)
    2b84:	000067b7          	lui	a5,0x6
    2b88:	eec78793          	addi	a5,a5,-276 # 5eec <_cluster_size_table16>
    2b8c:	0047c583          	lbu	a1,4(a5)
    2b90:	00058863          	beqz	a1,2ba0 <fatfs_format_fat16+0xd4>
    2b94:	0007a703          	lw	a4,0(a5)
    2b98:	00878793          	addi	a5,a5,8
    2b9c:	fe9768e3          	bltu	a4,s1,2b8c <fatfs_format_fat16+0xc0>
    2ba0:	00b40023          	sb	a1,0(s0)
    2ba4:	02059663          	bnez	a1,2bd0 <fatfs_format_fat16+0x104>
    2ba8:	00000513          	li	a0,0
    2bac:	01c12083          	lw	ra,28(sp)
    2bb0:	01812403          	lw	s0,24(sp)
    2bb4:	01412483          	lw	s1,20(sp)
    2bb8:	01012903          	lw	s2,16(sp)
    2bbc:	00c12983          	lw	s3,12(sp)
    2bc0:	00812a03          	lw	s4,8(sp)
    2bc4:	00412a83          	lw	s5,4(sp)
    2bc8:	02010113          	addi	sp,sp,32
    2bcc:	00008067          	ret
    2bd0:	00800793          	li	a5,8
    2bd4:	04f40923          	sb	a5,82(s0)
    2bd8:	00080737          	lui	a4,0x80
    2bdc:	00200793          	li	a5,2
    2be0:	04f40a23          	sb	a5,84(s0)
    2be4:	20070713          	addi	a4,a4,512 # 80200 <__stacktop+0x70200>
    2be8:	02f40623          	sb	a5,44(s0)
    2bec:	04f40b23          	sb	a5,86(s0)
    2bf0:	ff800793          	li	a5,-8
    2bf4:	04f40ca3          	sb	a5,89(s0)
    2bf8:	00048513          	mv	a0,s1
    2bfc:	04b408a3          	sb	a1,81(s0)
    2c00:	02e42423          	sw	a4,40(s0)
    2c04:	ffffe097          	auipc	ra,0xffffe
    2c08:	a10080e7          	jalr	-1520(ra) # 614 <__udivsi3>
    2c0c:	00150793          	addi	a5,a0,1
    2c10:	0087d793          	srli	a5,a5,0x8
    2c14:	00178793          	addi	a5,a5,1
    2c18:	02f42023          	sw	a5,32(s0)
    2c1c:	04f41d23          	sh	a5,90(s0)
    2c20:	02000793          	li	a5,32
    2c24:	06f40023          	sb	a5,96(s0)
    2c28:	000017b7          	lui	a5,0x1
    2c2c:	22978793          	addi	a5,a5,553 # 1229 <fatfs_erase_sectors+0x6d>
    2c30:	06f41523          	sh	a5,106(s0)
    2c34:	000057b7          	lui	a5,0x5
    2c38:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x2a4>
    2c3c:	06f41623          	sh	a5,108(s0)
    2c40:	07800793          	li	a5,120
    2c44:	06942223          	sw	s1,100(s0)
    2c48:	06f40723          	sb	a5,110(s0)
    2c4c:	00000493          	li	s1,0
    2c50:	00b00a93          	li	s5,11
    2c54:	00090513          	mv	a0,s2
    2c58:	ffffe097          	auipc	ra,0xffffe
    2c5c:	ad0080e7          	jalr	-1328(ra) # 728 <strlen>
    2c60:	02000793          	li	a5,32
    2c64:	00a4d663          	bge	s1,a0,2c70 <fatfs_format_fat16+0x1a4>
    2c68:	009907b3          	add	a5,s2,s1
    2c6c:	0007c783          	lbu	a5,0(a5)
    2c70:	00940733          	add	a4,s0,s1
    2c74:	06f707a3          	sb	a5,111(a4)
    2c78:	00148493          	addi	s1,s1,1
    2c7c:	fd549ce3          	bne	s1,s5,2c54 <fatfs_format_fat16+0x188>
    2c80:	000047b7          	lui	a5,0x4
    2c84:	14678793          	addi	a5,a5,326 # 4146 <fatfs_set_fs_info_next_free_cluster+0x4a>
    2c88:	06f41d23          	sh	a5,122(s0)
    2c8c:	203637b7          	lui	a5,0x20363
    2c90:	15478793          	addi	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2c94:	06f42e23          	sw	a5,124(s0)
    2c98:	000027b7          	lui	a5,0x2
    2c9c:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x100>
    2ca0:	08f41023          	sh	a5,128(s0)
    2ca4:	ffffb7b7          	lui	a5,0xffffb
    2ca8:	a5578793          	addi	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2cac:	24f41123          	sh	a5,578(s0)
    2cb0:	00100613          	li	a2,1
    2cb4:	000a0593          	mv	a1,s4
    2cb8:	00000513          	li	a0,0
    2cbc:	000980e7          	jalr	s3
    2cc0:	ee0504e3          	beqz	a0,2ba8 <fatfs_format_fat16+0xdc>
    2cc4:	02042583          	lw	a1,32(s0)
    2cc8:	02c44503          	lbu	a0,44(s0)
    2ccc:	02a45483          	lhu	s1,42(s0)
    2cd0:	ffffe097          	auipc	ra,0xffffe
    2cd4:	248080e7          	jalr	584(ra) # f18 <__mulsi3>
    2cd8:	00a487b3          	add	a5,s1,a0
    2cdc:	00f42623          	sw	a5,12(s0)
    2ce0:	02845783          	lhu	a5,40(s0)
    2ce4:	00000593          	li	a1,0
    2ce8:	00579793          	slli	a5,a5,0x5
    2cec:	1ff78793          	addi	a5,a5,511
    2cf0:	4097d793          	srai	a5,a5,0x9
    2cf4:	00f42823          	sw	a5,16(s0)
    2cf8:	01c42783          	lw	a5,28(s0)
    2cfc:	00f484b3          	add	s1,s1,a5
    2d00:	00950533          	add	a0,a0,s1
    2d04:	00a42223          	sw	a0,4(s0)
    2d08:	00942a23          	sw	s1,20(s0)
    2d0c:	00040513          	mv	a0,s0
    2d10:	ffffe097          	auipc	ra,0xffffe
    2d14:	538080e7          	jalr	1336(ra) # 1248 <fatfs_erase_fat>
    2d18:	e80508e3          	beqz	a0,2ba8 <fatfs_format_fat16+0xdc>
    2d1c:	01c42583          	lw	a1,28(s0)
    2d20:	00c42783          	lw	a5,12(s0)
    2d24:	01042603          	lw	a2,16(s0)
    2d28:	00040513          	mv	a0,s0
    2d2c:	00f585b3          	add	a1,a1,a5
    2d30:	ffffe097          	auipc	ra,0xffffe
    2d34:	48c080e7          	jalr	1164(ra) # 11bc <fatfs_erase_sectors>
    2d38:	00a03533          	snez	a0,a0
    2d3c:	e71ff06f          	j	2bac <fatfs_format_fat16+0xe0>

00002d40 <fatfs_format_fat32>:
    2d40:	fe010113          	addi	sp,sp,-32
    2d44:	00812c23          	sw	s0,24(sp)
    2d48:	00912a23          	sw	s1,20(sp)
    2d4c:	01212823          	sw	s2,16(sp)
    2d50:	00112e23          	sw	ra,28(sp)
    2d54:	01312623          	sw	s3,12(sp)
    2d58:	01412423          	sw	s4,8(sp)
    2d5c:	01512223          	sw	s5,4(sp)
    2d60:	fff00793          	li	a5,-1
    2d64:	24f52223          	sw	a5,580(a0)
    2d68:	24052423          	sw	zero,584(a0)
    2d6c:	02052223          	sw	zero,36(a0)
    2d70:	00050413          	mv	s0,a0
    2d74:	00058493          	mv	s1,a1
    2d78:	00060913          	mv	s2,a2
    2d7c:	00000097          	auipc	ra,0x0
    2d80:	93c080e7          	jalr	-1732(ra) # 26b8 <fatfs_fat_init>
    2d84:	03442783          	lw	a5,52(s0)
    2d88:	fff00513          	li	a0,-1
    2d8c:	08078c63          	beqz	a5,2e24 <fatfs_format_fat32+0xe4>
    2d90:	03842983          	lw	s3,56(s0)
    2d94:	fff00513          	li	a0,-1
    2d98:	08098663          	beqz	s3,2e24 <fatfs_format_fat32+0xe4>
    2d9c:	00100793          	li	a5,1
    2da0:	00200a93          	li	s5,2
    2da4:	04440a13          	addi	s4,s0,68
    2da8:	02f42823          	sw	a5,48(s0)
    2dac:	00f41c23          	sh	a5,24(s0)
    2db0:	01542423          	sw	s5,8(s0)
    2db4:	00042e23          	sw	zero,28(s0)
    2db8:	20000613          	li	a2,512
    2dbc:	00000593          	li	a1,0
    2dc0:	000a0513          	mv	a0,s4
    2dc4:	ffffe097          	auipc	ra,0xffffe
    2dc8:	924080e7          	jalr	-1756(ra) # 6e8 <memset>
    2dcc:	4d9047b7          	lui	a5,0x4d904
    2dd0:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2dd4:	04f42223          	sw	a5,68(s0)
    2dd8:	534f47b7          	lui	a5,0x534f4
    2ddc:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2de0:	04f42423          	sw	a5,72(s0)
    2de4:	000037b7          	lui	a5,0x3
    2de8:	e3578793          	addi	a5,a5,-459 # 2e35 <fatfs_format_fat32+0xf5>
    2dec:	04f41623          	sh	a5,76(s0)
    2df0:	03000793          	li	a5,48
    2df4:	04f40723          	sb	a5,78(s0)
    2df8:	000067b7          	lui	a5,0x6
    2dfc:	05540823          	sb	s5,80(s0)
    2e00:	f2c78793          	addi	a5,a5,-212 # 5f2c <_cluster_size_table32>
    2e04:	0047c583          	lbu	a1,4(a5)
    2e08:	00058863          	beqz	a1,2e18 <fatfs_format_fat32+0xd8>
    2e0c:	0007a703          	lw	a4,0(a5)
    2e10:	00878793          	addi	a5,a5,8
    2e14:	fe9768e3          	bltu	a4,s1,2e04 <fatfs_format_fat32+0xc4>
    2e18:	00b40023          	sb	a1,0(s0)
    2e1c:	02059663          	bnez	a1,2e48 <fatfs_format_fat32+0x108>
    2e20:	00000513          	li	a0,0
    2e24:	01c12083          	lw	ra,28(sp)
    2e28:	01812403          	lw	s0,24(sp)
    2e2c:	01412483          	lw	s1,20(sp)
    2e30:	01012903          	lw	s2,16(sp)
    2e34:	00c12983          	lw	s3,12(sp)
    2e38:	00812a03          	lw	s4,8(sp)
    2e3c:	00412a83          	lw	s5,4(sp)
    2e40:	02010113          	addi	sp,sp,32
    2e44:	00008067          	ret
    2e48:	02000793          	li	a5,32
    2e4c:	04f40923          	sb	a5,82(s0)
    2e50:	002007b7          	lui	a5,0x200
    2e54:	02f42423          	sw	a5,40(s0)
    2e58:	ff800793          	li	a5,-8
    2e5c:	04f40ca3          	sb	a5,89(s0)
    2e60:	03f00793          	li	a5,63
    2e64:	00200a93          	li	s5,2
    2e68:	04f40e23          	sb	a5,92(s0)
    2e6c:	fff00793          	li	a5,-1
    2e70:	05540a23          	sb	s5,84(s0)
    2e74:	03540623          	sb	s5,44(s0)
    2e78:	04f40f23          	sb	a5,94(s0)
    2e7c:	06942223          	sw	s1,100(s0)
    2e80:	00048513          	mv	a0,s1
    2e84:	04b408a3          	sb	a1,81(s0)
    2e88:	ffffd097          	auipc	ra,0xffffd
    2e8c:	78c080e7          	jalr	1932(ra) # 614 <__udivsi3>
    2e90:	00150793          	addi	a5,a0,1
    2e94:	0077d793          	srli	a5,a5,0x7
    2e98:	00178793          	addi	a5,a5,1 # 200001 <__stacktop+0x1f0001>
    2e9c:	02f42023          	sw	a5,32(s0)
    2ea0:	06f42423          	sw	a5,104(s0)
    2ea4:	00100793          	li	a5,1
    2ea8:	06f40a23          	sb	a5,116(s0)
    2eac:	00600793          	li	a5,6
    2eb0:	06f40b23          	sb	a5,118(s0)
    2eb4:	000017b7          	lui	a5,0x1
    2eb8:	22978793          	addi	a5,a5,553 # 1229 <fatfs_erase_sectors+0x6d>
    2ebc:	08f41323          	sh	a5,134(s0)
    2ec0:	000057b7          	lui	a5,0x5
    2ec4:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x2a4>
    2ec8:	08f41423          	sh	a5,136(s0)
    2ecc:	07800793          	li	a5,120
    2ed0:	07540823          	sb	s5,112(s0)
    2ed4:	08f40523          	sb	a5,138(s0)
    2ed8:	00000493          	li	s1,0
    2edc:	00b00a93          	li	s5,11
    2ee0:	00090513          	mv	a0,s2
    2ee4:	ffffe097          	auipc	ra,0xffffe
    2ee8:	844080e7          	jalr	-1980(ra) # 728 <strlen>
    2eec:	02000793          	li	a5,32
    2ef0:	00a4d663          	bge	s1,a0,2efc <fatfs_format_fat32+0x1bc>
    2ef4:	009907b3          	add	a5,s2,s1
    2ef8:	0007c783          	lbu	a5,0(a5)
    2efc:	00940733          	add	a4,s0,s1
    2f00:	08f705a3          	sb	a5,139(a4)
    2f04:	00148493          	addi	s1,s1,1
    2f08:	fd549ce3          	bne	s1,s5,2ee0 <fatfs_format_fat32+0x1a0>
    2f0c:	000047b7          	lui	a5,0x4
    2f10:	14678793          	addi	a5,a5,326 # 4146 <fatfs_set_fs_info_next_free_cluster+0x4a>
    2f14:	08f41b23          	sh	a5,150(s0)
    2f18:	203237b7          	lui	a5,0x20323
    2f1c:	35478793          	addi	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    2f20:	08f42c23          	sw	a5,152(s0)
    2f24:	ffffb4b7          	lui	s1,0xffffb
    2f28:	000027b7          	lui	a5,0x2
    2f2c:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_generate_tail+0x100>
    2f30:	a5548493          	addi	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2f34:	08f41e23          	sh	a5,156(s0)
    2f38:	24941123          	sh	s1,578(s0)
    2f3c:	00100613          	li	a2,1
    2f40:	000a0593          	mv	a1,s4
    2f44:	00000513          	li	a0,0
    2f48:	000980e7          	jalr	s3
    2f4c:	ec050ae3          	beqz	a0,2e20 <fatfs_format_fat32+0xe0>
    2f50:	01c42783          	lw	a5,28(s0)
    2f54:	02a45903          	lhu	s2,42(s0)
    2f58:	02042583          	lw	a1,32(s0)
    2f5c:	02c44503          	lbu	a0,44(s0)
    2f60:	00f90933          	add	s2,s2,a5
    2f64:	01242a23          	sw	s2,20(s0)
    2f68:	ffffe097          	auipc	ra,0xffffe
    2f6c:	fb0080e7          	jalr	-80(ra) # f18 <__mulsi3>
    2f70:	01250533          	add	a0,a0,s2
    2f74:	00a42223          	sw	a0,4(s0)
    2f78:	20000613          	li	a2,512
    2f7c:	00000593          	li	a1,0
    2f80:	000a0513          	mv	a0,s4
    2f84:	01845903          	lhu	s2,24(s0)
    2f88:	ffffd097          	auipc	ra,0xffffd
    2f8c:	760080e7          	jalr	1888(ra) # 6e8 <memset>
    2f90:	416157b7          	lui	a5,0x41615
    2f94:	25278793          	addi	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    2f98:	04f42223          	sw	a5,68(s0)
    2f9c:	614177b7          	lui	a5,0x61417
    2fa0:	27278793          	addi	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    2fa4:	22f42423          	sw	a5,552(s0)
    2fa8:	fff00793          	li	a5,-1
    2fac:	22f42623          	sw	a5,556(s0)
    2fb0:	22f42823          	sw	a5,560(s0)
    2fb4:	03842783          	lw	a5,56(s0)
    2fb8:	24941123          	sh	s1,578(s0)
    2fbc:	00100613          	li	a2,1
    2fc0:	000a0593          	mv	a1,s4
    2fc4:	00090513          	mv	a0,s2
    2fc8:	000780e7          	jalr	a5
    2fcc:	e4050ae3          	beqz	a0,2e20 <fatfs_format_fat32+0xe0>
    2fd0:	00100593          	li	a1,1
    2fd4:	00040513          	mv	a0,s0
    2fd8:	ffffe097          	auipc	ra,0xffffe
    2fdc:	270080e7          	jalr	624(ra) # 1248 <fatfs_erase_fat>
    2fe0:	e40500e3          	beqz	a0,2e20 <fatfs_format_fat32+0xe0>
    2fe4:	00842583          	lw	a1,8(s0)
    2fe8:	00040513          	mv	a0,s0
    2fec:	ffffe097          	auipc	ra,0xffffe
    2ff0:	444080e7          	jalr	1092(ra) # 1430 <fatfs_lba_of_cluster>
    2ff4:	00044603          	lbu	a2,0(s0)
    2ff8:	00050593          	mv	a1,a0
    2ffc:	00040513          	mv	a0,s0
    3000:	ffffe097          	auipc	ra,0xffffe
    3004:	1bc080e7          	jalr	444(ra) # 11bc <fatfs_erase_sectors>
    3008:	00a03533          	snez	a0,a0
    300c:	e19ff06f          	j	2e24 <fatfs_format_fat32+0xe4>

00003010 <fatfs_format>:
    3010:	004007b7          	lui	a5,0x400
    3014:	00b7e663          	bltu	a5,a1,3020 <fatfs_format+0x10>
    3018:	00000317          	auipc	t1,0x0
    301c:	ab430067          	jr	-1356(t1) # 2acc <fatfs_format_fat16>
    3020:	00000317          	auipc	t1,0x0
    3024:	d2030067          	jr	-736(t1) # 2d40 <fatfs_format_fat32>

00003028 <fl_format>:
    3028:	00058613          	mv	a2,a1
    302c:	00050593          	mv	a1,a0
    3030:	0000a537          	lui	a0,0xa
    3034:	0d050513          	addi	a0,a0,208 # a0d0 <_fs>
    3038:	00000317          	auipc	t1,0x0
    303c:	fd830067          	jr	-40(t1) # 3010 <fatfs_format>

00003040 <fatfs_fat_purge>:
    3040:	ff010113          	addi	sp,sp,-16
    3044:	00812423          	sw	s0,8(sp)
    3048:	25452403          	lw	s0,596(a0)
    304c:	00912223          	sw	s1,4(sp)
    3050:	00112623          	sw	ra,12(sp)
    3054:	00050493          	mv	s1,a0
    3058:	00041663          	bnez	s0,3064 <fatfs_fat_purge+0x24>
    305c:	00100513          	li	a0,1
    3060:	0280006f          	j	3088 <fatfs_fat_purge+0x48>
    3064:	20442783          	lw	a5,516(s0)
    3068:	00079663          	bnez	a5,3074 <fatfs_fat_purge+0x34>
    306c:	20c42403          	lw	s0,524(s0)
    3070:	fe9ff06f          	j	3058 <fatfs_fat_purge+0x18>
    3074:	00040593          	mv	a1,s0
    3078:	00048513          	mv	a0,s1
    307c:	ffffe097          	auipc	ra,0xffffe
    3080:	fd0080e7          	jalr	-48(ra) # 104c <fatfs_fat_writeback>
    3084:	fe0514e3          	bnez	a0,306c <fatfs_fat_purge+0x2c>
    3088:	00c12083          	lw	ra,12(sp)
    308c:	00812403          	lw	s0,8(sp)
    3090:	00412483          	lw	s1,4(sp)
    3094:	01010113          	addi	sp,sp,16
    3098:	00008067          	ret

0000309c <fl_shutdown>:
    309c:	000067b7          	lui	a5,0x6
    30a0:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    30a4:	ff010113          	addi	sp,sp,-16
    30a8:	00112623          	sw	ra,12(sp)
    30ac:	00812423          	sw	s0,8(sp)
    30b0:	00912223          	sw	s1,4(sp)
    30b4:	00079663          	bnez	a5,30c0 <fl_shutdown+0x24>
    30b8:	ffffe097          	auipc	ra,0xffffe
    30bc:	634080e7          	jalr	1588(ra) # 16ec <fl_init>
    30c0:	0000a437          	lui	s0,0xa
    30c4:	0d040793          	addi	a5,s0,208 # a0d0 <_fs>
    30c8:	03c7a783          	lw	a5,60(a5)
    30cc:	0d040493          	addi	s1,s0,208
    30d0:	00078463          	beqz	a5,30d8 <fl_shutdown+0x3c>
    30d4:	000780e7          	jalr	a5
    30d8:	0d040513          	addi	a0,s0,208
    30dc:	00000097          	auipc	ra,0x0
    30e0:	f64080e7          	jalr	-156(ra) # 3040 <fatfs_fat_purge>
    30e4:	0404a783          	lw	a5,64(s1)
    30e8:	00078c63          	beqz	a5,3100 <fl_shutdown+0x64>
    30ec:	00812403          	lw	s0,8(sp)
    30f0:	00c12083          	lw	ra,12(sp)
    30f4:	00412483          	lw	s1,4(sp)
    30f8:	01010113          	addi	sp,sp,16
    30fc:	00078067          	jr	a5
    3100:	00c12083          	lw	ra,12(sp)
    3104:	00812403          	lw	s0,8(sp)
    3108:	00412483          	lw	s1,4(sp)
    310c:	01010113          	addi	sp,sp,16
    3110:	00008067          	ret

00003114 <fatfs_find_next_cluster>:
    3114:	ff010113          	addi	sp,sp,-16
    3118:	00812423          	sw	s0,8(sp)
    311c:	01212023          	sw	s2,0(sp)
    3120:	00112623          	sw	ra,12(sp)
    3124:	00912223          	sw	s1,4(sp)
    3128:	00050913          	mv	s2,a0
    312c:	00200413          	li	s0,2
    3130:	00058463          	beqz	a1,3138 <fatfs_find_next_cluster+0x24>
    3134:	00058413          	mv	s0,a1
    3138:	03092783          	lw	a5,48(s2)
    313c:	00745493          	srli	s1,s0,0x7
    3140:	00079463          	bnez	a5,3148 <fatfs_find_next_cluster+0x34>
    3144:	00845493          	srli	s1,s0,0x8
    3148:	01492583          	lw	a1,20(s2)
    314c:	00090513          	mv	a0,s2
    3150:	00b485b3          	add	a1,s1,a1
    3154:	ffffe097          	auipc	ra,0xffffe
    3158:	f7c080e7          	jalr	-132(ra) # 10d0 <fatfs_fat_read_sector>
    315c:	00050793          	mv	a5,a0
    3160:	fff00513          	li	a0,-1
    3164:	04078a63          	beqz	a5,31b8 <fatfs_find_next_cluster+0xa4>
    3168:	03092703          	lw	a4,48(s2)
    316c:	2087a783          	lw	a5,520(a5)
    3170:	06071063          	bnez	a4,31d0 <fatfs_find_next_cluster+0xbc>
    3174:	00849493          	slli	s1,s1,0x8
    3178:	40940433          	sub	s0,s0,s1
    317c:	00010737          	lui	a4,0x10
    3180:	00141413          	slli	s0,s0,0x1
    3184:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x5ac7>
    3188:	00e47433          	and	s0,s0,a4
    318c:	008787b3          	add	a5,a5,s0
    3190:	0017c503          	lbu	a0,1(a5)
    3194:	0007c783          	lbu	a5,0(a5)
    3198:	00851513          	slli	a0,a0,0x8
    319c:	00f50533          	add	a0,a0,a5
    31a0:	ffff07b7          	lui	a5,0xffff0
    31a4:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    31a8:	00f507b3          	add	a5,a0,a5
    31ac:	00700713          	li	a4,7
    31b0:	00f76463          	bltu	a4,a5,31b8 <fatfs_find_next_cluster+0xa4>
    31b4:	fff00513          	li	a0,-1
    31b8:	00c12083          	lw	ra,12(sp)
    31bc:	00812403          	lw	s0,8(sp)
    31c0:	00412483          	lw	s1,4(sp)
    31c4:	00012903          	lw	s2,0(sp)
    31c8:	01010113          	addi	sp,sp,16
    31cc:	00008067          	ret
    31d0:	00749493          	slli	s1,s1,0x7
    31d4:	40940433          	sub	s0,s0,s1
    31d8:	00010737          	lui	a4,0x10
    31dc:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x5ac7>
    31e0:	00241413          	slli	s0,s0,0x2
    31e4:	00e47433          	and	s0,s0,a4
    31e8:	008787b3          	add	a5,a5,s0
    31ec:	0037c503          	lbu	a0,3(a5)
    31f0:	0027c703          	lbu	a4,2(a5)
    31f4:	01851513          	slli	a0,a0,0x18
    31f8:	01071713          	slli	a4,a4,0x10
    31fc:	00e50533          	add	a0,a0,a4
    3200:	0007c703          	lbu	a4,0(a5)
    3204:	0017c783          	lbu	a5,1(a5)
    3208:	00e50533          	add	a0,a0,a4
    320c:	00879793          	slli	a5,a5,0x8
    3210:	00f50533          	add	a0,a0,a5
    3214:	00451513          	slli	a0,a0,0x4
    3218:	00455513          	srli	a0,a0,0x4
    321c:	f00007b7          	lui	a5,0xf0000
    3220:	f85ff06f          	j	31a4 <fatfs_find_next_cluster+0x90>

00003224 <fatfs_sector_reader>:
    3224:	03052783          	lw	a5,48(a0)
    3228:	fd010113          	addi	sp,sp,-48
    322c:	02812423          	sw	s0,40(sp)
    3230:	03212023          	sw	s2,32(sp)
    3234:	01312e23          	sw	s3,28(sp)
    3238:	02112623          	sw	ra,44(sp)
    323c:	02912223          	sw	s1,36(sp)
    3240:	01412c23          	sw	s4,24(sp)
    3244:	01512a23          	sw	s5,20(sp)
    3248:	00f5e7b3          	or	a5,a1,a5
    324c:	00050413          	mv	s0,a0
    3250:	00060913          	mv	s2,a2
    3254:	00068993          	mv	s3,a3
    3258:	06079c63          	bnez	a5,32d0 <fatfs_sector_reader+0xac>
    325c:	01052783          	lw	a5,16(a0)
    3260:	02f66663          	bltu	a2,a5,328c <fatfs_sector_reader+0x68>
    3264:	00000513          	li	a0,0
    3268:	02c12083          	lw	ra,44(sp)
    326c:	02812403          	lw	s0,40(sp)
    3270:	02412483          	lw	s1,36(sp)
    3274:	02012903          	lw	s2,32(sp)
    3278:	01c12983          	lw	s3,28(sp)
    327c:	01812a03          	lw	s4,24(sp)
    3280:	01412a83          	lw	s5,20(sp)
    3284:	03010113          	addi	sp,sp,48
    3288:	00008067          	ret
    328c:	01c52503          	lw	a0,28(a0)
    3290:	00c42783          	lw	a5,12(s0)
    3294:	00f50533          	add	a0,a0,a5
    3298:	01250533          	add	a0,a0,s2
    329c:	0a098263          	beqz	s3,3340 <fatfs_sector_reader+0x11c>
    32a0:	03442783          	lw	a5,52(s0)
    32a4:	00100613          	li	a2,1
    32a8:	00098593          	mv	a1,s3
    32ac:	02812403          	lw	s0,40(sp)
    32b0:	02c12083          	lw	ra,44(sp)
    32b4:	02412483          	lw	s1,36(sp)
    32b8:	02012903          	lw	s2,32(sp)
    32bc:	01c12983          	lw	s3,28(sp)
    32c0:	01812a03          	lw	s4,24(sp)
    32c4:	01412a83          	lw	s5,20(sp)
    32c8:	03010113          	addi	sp,sp,48
    32cc:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    32d0:	00058493          	mv	s1,a1
    32d4:	00054583          	lbu	a1,0(a0)
    32d8:	00060513          	mv	a0,a2
    32dc:	00000a93          	li	s5,0
    32e0:	00b12623          	sw	a1,12(sp)
    32e4:	ffffd097          	auipc	ra,0xffffd
    32e8:	330080e7          	jalr	816(ra) # 614 <__udivsi3>
    32ec:	00c12583          	lw	a1,12(sp)
    32f0:	00050a13          	mv	s4,a0
    32f4:	00090513          	mv	a0,s2
    32f8:	ffffd097          	auipc	ra,0xffffd
    32fc:	364080e7          	jalr	868(ra) # 65c <__umodsi3>
    3300:	00050913          	mv	s2,a0
    3304:	034a9063          	bne	s5,s4,3324 <fatfs_sector_reader+0x100>
    3308:	fff00793          	li	a5,-1
    330c:	f4f48ce3          	beq	s1,a5,3264 <fatfs_sector_reader+0x40>
    3310:	00048593          	mv	a1,s1
    3314:	00040513          	mv	a0,s0
    3318:	ffffe097          	auipc	ra,0xffffe
    331c:	118080e7          	jalr	280(ra) # 1430 <fatfs_lba_of_cluster>
    3320:	f79ff06f          	j	3298 <fatfs_sector_reader+0x74>
    3324:	00048593          	mv	a1,s1
    3328:	00040513          	mv	a0,s0
    332c:	00000097          	auipc	ra,0x0
    3330:	de8080e7          	jalr	-536(ra) # 3114 <fatfs_find_next_cluster>
    3334:	00050493          	mv	s1,a0
    3338:	001a8a93          	addi	s5,s5,1
    333c:	fc9ff06f          	j	3304 <fatfs_sector_reader+0xe0>
    3340:	24442783          	lw	a5,580(s0)
    3344:	00a78c63          	beq	a5,a0,335c <fatfs_sector_reader+0x138>
    3348:	03442783          	lw	a5,52(s0)
    334c:	24a42223          	sw	a0,580(s0)
    3350:	00100613          	li	a2,1
    3354:	04440593          	addi	a1,s0,68
    3358:	f55ff06f          	j	32ac <fatfs_sector_reader+0x88>
    335c:	00100513          	li	a0,1
    3360:	f09ff06f          	j	3268 <fatfs_sector_reader+0x44>

00003364 <fatfs_get_file_entry>:
    3364:	eb010113          	addi	sp,sp,-336
    3368:	14912223          	sw	s1,324(sp)
    336c:	00050493          	mv	s1,a0
    3370:	01810513          	addi	a0,sp,24
    3374:	15212023          	sw	s2,320(sp)
    3378:	13312e23          	sw	s3,316(sp)
    337c:	13412c23          	sw	s4,312(sp)
    3380:	13512a23          	sw	s5,308(sp)
    3384:	13612823          	sw	s6,304(sp)
    3388:	13712623          	sw	s7,300(sp)
    338c:	13812423          	sw	s8,296(sp)
    3390:	14112623          	sw	ra,332(sp)
    3394:	14812423          	sw	s0,328(sp)
    3398:	13912223          	sw	s9,292(sp)
    339c:	00058a93          	mv	s5,a1
    33a0:	00060913          	mv	s2,a2
    33a4:	00068993          	mv	s3,a3
    33a8:	10010ea3          	sb	zero,285(sp)
    33ac:	00000a13          	li	s4,0
    33b0:	ffffe097          	auipc	ra,0xffffe
    33b4:	ff8080e7          	jalr	-8(ra) # 13a8 <fatfs_lfn_cache_init.part.0.constprop.0>
    33b8:	24448b93          	addi	s7,s1,580
    33bc:	00800c13          	li	s8,8
    33c0:	02000b13          	li	s6,32
    33c4:	00000693          	li	a3,0
    33c8:	000a0613          	mv	a2,s4
    33cc:	000a8593          	mv	a1,s5
    33d0:	00048513          	mv	a0,s1
    33d4:	00000097          	auipc	ra,0x0
    33d8:	e50080e7          	jalr	-432(ra) # 3224 <fatfs_sector_reader>
    33dc:	16050063          	beqz	a0,353c <fatfs_get_file_entry+0x1d8>
    33e0:	04448413          	addi	s0,s1,68
    33e4:	02e00c93          	li	s9,46
    33e8:	00040513          	mv	a0,s0
    33ec:	ffffe097          	auipc	ra,0xffffe
    33f0:	6d0080e7          	jalr	1744(ra) # 1abc <fatfs_entry_lfn_text>
    33f4:	02050263          	beqz	a0,3418 <fatfs_get_file_entry+0xb4>
    33f8:	00040593          	mv	a1,s0
    33fc:	01810513          	addi	a0,sp,24
    3400:	ffffe097          	auipc	ra,0xffffe
    3404:	5b4080e7          	jalr	1460(ra) # 19b4 <fatfs_lfn_cache_entry>
    3408:	02040413          	addi	s0,s0,32
    340c:	fd741ee3          	bne	s0,s7,33e8 <fatfs_get_file_entry+0x84>
    3410:	001a0a13          	addi	s4,s4,1
    3414:	fb1ff06f          	j	33c4 <fatfs_get_file_entry+0x60>
    3418:	00040513          	mv	a0,s0
    341c:	ffffe097          	auipc	ra,0xffffe
    3420:	6b4080e7          	jalr	1716(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3424:	00050663          	beqz	a0,3430 <fatfs_get_file_entry+0xcc>
    3428:	10010ea3          	sb	zero,285(sp)
    342c:	fddff06f          	j	3408 <fatfs_get_file_entry+0xa4>
    3430:	00040593          	mv	a1,s0
    3434:	01810513          	addi	a0,sp,24
    3438:	ffffe097          	auipc	ra,0xffffe
    343c:	6d0080e7          	jalr	1744(ra) # 1b08 <fatfs_entry_lfn_exists>
    3440:	06050663          	beqz	a0,34ac <fatfs_get_file_entry+0x148>
    3444:	01810513          	addi	a0,sp,24
    3448:	ffffe097          	auipc	ra,0xffffe
    344c:	638080e7          	jalr	1592(ra) # 1a80 <fatfs_lfn_cache_get>
    3450:	00090593          	mv	a1,s2
    3454:	fffff097          	auipc	ra,0xfffff
    3458:	e7c080e7          	jalr	-388(ra) # 22d0 <fatfs_compare_names>
    345c:	fc0506e3          	beqz	a0,3428 <fatfs_get_file_entry+0xc4>
    3460:	02000613          	li	a2,32
    3464:	00040593          	mv	a1,s0
    3468:	00098513          	mv	a0,s3
    346c:	ffffd097          	auipc	ra,0xffffd
    3470:	298080e7          	jalr	664(ra) # 704 <memcpy>
    3474:	00100513          	li	a0,1
    3478:	14c12083          	lw	ra,332(sp)
    347c:	14812403          	lw	s0,328(sp)
    3480:	14412483          	lw	s1,324(sp)
    3484:	14012903          	lw	s2,320(sp)
    3488:	13c12983          	lw	s3,316(sp)
    348c:	13812a03          	lw	s4,312(sp)
    3490:	13412a83          	lw	s5,308(sp)
    3494:	13012b03          	lw	s6,304(sp)
    3498:	12c12b83          	lw	s7,300(sp)
    349c:	12812c03          	lw	s8,296(sp)
    34a0:	12412c83          	lw	s9,292(sp)
    34a4:	15010113          	addi	sp,sp,336
    34a8:	00008067          	ret
    34ac:	00040513          	mv	a0,s0
    34b0:	ffffe097          	auipc	ra,0xffffe
    34b4:	6a0080e7          	jalr	1696(ra) # 1b50 <fatfs_entry_sfn_only>
    34b8:	f40508e3          	beqz	a0,3408 <fatfs_get_file_entry+0xa4>
    34bc:	00012423          	sw	zero,8(sp)
    34c0:	00012623          	sw	zero,12(sp)
    34c4:	00012823          	sw	zero,16(sp)
    34c8:	00010a23          	sb	zero,20(sp)
    34cc:	00000793          	li	a5,0
    34d0:	00f406b3          	add	a3,s0,a5
    34d4:	0006c683          	lbu	a3,0(a3)
    34d8:	00810713          	addi	a4,sp,8
    34dc:	00f70733          	add	a4,a4,a5
    34e0:	00d70023          	sb	a3,0(a4)
    34e4:	00178793          	addi	a5,a5,1
    34e8:	ff8794e3          	bne	a5,s8,34d0 <fatfs_get_file_entry+0x16c>
    34ec:	00844783          	lbu	a5,8(s0)
    34f0:	00944683          	lbu	a3,9(s0)
    34f4:	00100713          	li	a4,1
    34f8:	00f108a3          	sb	a5,17(sp)
    34fc:	00d10923          	sb	a3,18(sp)
    3500:	01669663          	bne	a3,s6,350c <fatfs_get_file_entry+0x1a8>
    3504:	fe078793          	addi	a5,a5,-32
    3508:	00f03733          	snez	a4,a5
    350c:	00a44783          	lbu	a5,10(s0)
    3510:	00f109a3          	sb	a5,19(sp)
    3514:	01679463          	bne	a5,s6,351c <fatfs_get_file_entry+0x1b8>
    3518:	00070a63          	beqz	a4,352c <fatfs_get_file_entry+0x1c8>
    351c:	00814703          	lbu	a4,8(sp)
    3520:	02000793          	li	a5,32
    3524:	01970463          	beq	a4,s9,352c <fatfs_get_file_entry+0x1c8>
    3528:	02e00793          	li	a5,46
    352c:	00f10823          	sb	a5,16(sp)
    3530:	00090593          	mv	a1,s2
    3534:	00810513          	addi	a0,sp,8
    3538:	f1dff06f          	j	3454 <fatfs_get_file_entry+0xf0>
    353c:	00000513          	li	a0,0
    3540:	f39ff06f          	j	3478 <fatfs_get_file_entry+0x114>

00003544 <_open_directory>:
    3544:	eb010113          	addi	sp,sp,-336
    3548:	13512a23          	sw	s5,308(sp)
    354c:	0000aab7          	lui	s5,0xa
    3550:	0d0a8793          	addi	a5,s5,208 # a0d0 <_fs>
    3554:	14812423          	sw	s0,328(sp)
    3558:	14912223          	sw	s1,324(sp)
    355c:	15212023          	sw	s2,320(sp)
    3560:	13312e23          	sw	s3,316(sp)
    3564:	13412c23          	sw	s4,312(sp)
    3568:	13612823          	sw	s6,304(sp)
    356c:	0087a403          	lw	s0,8(a5)
    3570:	14112623          	sw	ra,332(sp)
    3574:	00050a13          	mv	s4,a0
    3578:	00058913          	mv	s2,a1
    357c:	fffff097          	auipc	ra,0xfffff
    3580:	b0c080e7          	jalr	-1268(ra) # 2088 <fatfs_total_path_levels>
    3584:	00050993          	mv	s3,a0
    3588:	00000493          	li	s1,0
    358c:	fff00b13          	li	s6,-1
    3590:	0099d863          	bge	s3,s1,35a0 <_open_directory+0x5c>
    3594:	00892023          	sw	s0,0(s2)
    3598:	00100513          	li	a0,1
    359c:	0240006f          	j	35c0 <_open_directory+0x7c>
    35a0:	10400693          	li	a3,260
    35a4:	02c10613          	addi	a2,sp,44
    35a8:	00048593          	mv	a1,s1
    35ac:	000a0513          	mv	a0,s4
    35b0:	fffff097          	auipc	ra,0xfffff
    35b4:	b4c080e7          	jalr	-1204(ra) # 20fc <fatfs_get_substring>
    35b8:	03651863          	bne	a0,s6,35e8 <_open_directory+0xa4>
    35bc:	00000513          	li	a0,0
    35c0:	14c12083          	lw	ra,332(sp)
    35c4:	14812403          	lw	s0,328(sp)
    35c8:	14412483          	lw	s1,324(sp)
    35cc:	14012903          	lw	s2,320(sp)
    35d0:	13c12983          	lw	s3,316(sp)
    35d4:	13812a03          	lw	s4,312(sp)
    35d8:	13412a83          	lw	s5,308(sp)
    35dc:	13012b03          	lw	s6,304(sp)
    35e0:	15010113          	addi	sp,sp,336
    35e4:	00008067          	ret
    35e8:	00c10693          	addi	a3,sp,12
    35ec:	02c10613          	addi	a2,sp,44
    35f0:	00040593          	mv	a1,s0
    35f4:	0d0a8513          	addi	a0,s5,208
    35f8:	00000097          	auipc	ra,0x0
    35fc:	d6c080e7          	jalr	-660(ra) # 3364 <fatfs_get_file_entry>
    3600:	fa050ee3          	beqz	a0,35bc <_open_directory+0x78>
    3604:	00c10513          	addi	a0,sp,12
    3608:	ffffe097          	auipc	ra,0xffffe
    360c:	584080e7          	jalr	1412(ra) # 1b8c <fatfs_entry_is_dir>
    3610:	fa0506e3          	beqz	a0,35bc <_open_directory+0x78>
    3614:	02015403          	lhu	s0,32(sp)
    3618:	02615783          	lhu	a5,38(sp)
    361c:	00148493          	addi	s1,s1,1
    3620:	01041413          	slli	s0,s0,0x10
    3624:	00f40433          	add	s0,s0,a5
    3628:	f69ff06f          	j	3590 <_open_directory+0x4c>

0000362c <fl_opendir>:
    362c:	fe010113          	addi	sp,sp,-32
    3630:	fff00793          	li	a5,-1
    3634:	00f12623          	sw	a5,12(sp)
    3638:	000067b7          	lui	a5,0x6
    363c:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    3640:	00812c23          	sw	s0,24(sp)
    3644:	01212823          	sw	s2,16(sp)
    3648:	00112e23          	sw	ra,28(sp)
    364c:	00912a23          	sw	s1,20(sp)
    3650:	00050913          	mv	s2,a0
    3654:	00058413          	mv	s0,a1
    3658:	00079663          	bnez	a5,3664 <fl_opendir+0x38>
    365c:	ffffe097          	auipc	ra,0xffffe
    3660:	090080e7          	jalr	144(ra) # 16ec <fl_init>
    3664:	0000a4b7          	lui	s1,0xa
    3668:	0d048793          	addi	a5,s1,208 # a0d0 <_fs>
    366c:	03c7a783          	lw	a5,60(a5)
    3670:	0d048493          	addi	s1,s1,208
    3674:	00078463          	beqz	a5,367c <fl_opendir+0x50>
    3678:	000780e7          	jalr	a5
    367c:	00090513          	mv	a0,s2
    3680:	fffff097          	auipc	ra,0xfffff
    3684:	a08080e7          	jalr	-1528(ra) # 2088 <fatfs_total_path_levels>
    3688:	fff00793          	li	a5,-1
    368c:	02f51063          	bne	a0,a5,36ac <fl_opendir+0x80>
    3690:	0084a783          	lw	a5,8(s1)
    3694:	00f12623          	sw	a5,12(sp)
    3698:	00c12783          	lw	a5,12(sp)
    369c:	00042023          	sw	zero,0(s0)
    36a0:	00040423          	sb	zero,8(s0)
    36a4:	00f42223          	sw	a5,4(s0)
    36a8:	0180006f          	j	36c0 <fl_opendir+0x94>
    36ac:	00c10593          	addi	a1,sp,12
    36b0:	00090513          	mv	a0,s2
    36b4:	00000097          	auipc	ra,0x0
    36b8:	e90080e7          	jalr	-368(ra) # 3544 <_open_directory>
    36bc:	fc051ee3          	bnez	a0,3698 <fl_opendir+0x6c>
    36c0:	0404a783          	lw	a5,64(s1)
    36c4:	00078463          	beqz	a5,36cc <fl_opendir+0xa0>
    36c8:	000780e7          	jalr	a5
    36cc:	00c12703          	lw	a4,12(sp)
    36d0:	fff00793          	li	a5,-1
    36d4:	00f71463          	bne	a4,a5,36dc <fl_opendir+0xb0>
    36d8:	00000413          	li	s0,0
    36dc:	01c12083          	lw	ra,28(sp)
    36e0:	00040513          	mv	a0,s0
    36e4:	01812403          	lw	s0,24(sp)
    36e8:	01412483          	lw	s1,20(sp)
    36ec:	01012903          	lw	s2,16(sp)
    36f0:	02010113          	addi	sp,sp,32
    36f4:	00008067          	ret

000036f8 <fl_is_dir>:
    36f8:	fe010113          	addi	sp,sp,-32
    36fc:	00410593          	addi	a1,sp,4
    3700:	00112e23          	sw	ra,28(sp)
    3704:	00000097          	auipc	ra,0x0
    3708:	f28080e7          	jalr	-216(ra) # 362c <fl_opendir>
    370c:	01c12083          	lw	ra,28(sp)
    3710:	00a03533          	snez	a0,a0
    3714:	02010113          	addi	sp,sp,32
    3718:	00008067          	ret

0000371c <_open_file>:
    371c:	fc010113          	addi	sp,sp,-64
    3720:	02812c23          	sw	s0,56(sp)
    3724:	03312623          	sw	s3,44(sp)
    3728:	02112e23          	sw	ra,60(sp)
    372c:	02912a23          	sw	s1,52(sp)
    3730:	03212823          	sw	s2,48(sp)
    3734:	00050993          	mv	s3,a0
    3738:	ffffe097          	auipc	ra,0xffffe
    373c:	bfc080e7          	jalr	-1028(ra) # 1334 <_allocate_file>
    3740:	00050413          	mv	s0,a0
    3744:	10050c63          	beqz	a0,385c <_open_file+0x140>
    3748:	01450913          	addi	s2,a0,20
    374c:	10400613          	li	a2,260
    3750:	00000593          	li	a1,0
    3754:	00090513          	mv	a0,s2
    3758:	ffffd097          	auipc	ra,0xffffd
    375c:	f90080e7          	jalr	-112(ra) # 6e8 <memset>
    3760:	11840493          	addi	s1,s0,280
    3764:	10400613          	li	a2,260
    3768:	00000593          	li	a1,0
    376c:	00048513          	mv	a0,s1
    3770:	ffffd097          	auipc	ra,0xffffd
    3774:	f78080e7          	jalr	-136(ra) # 6e8 <memset>
    3778:	10400713          	li	a4,260
    377c:	00048693          	mv	a3,s1
    3780:	10400613          	li	a2,260
    3784:	00090593          	mv	a1,s2
    3788:	00098513          	mv	a0,s3
    378c:	fffff097          	auipc	ra,0xfffff
    3790:	a64080e7          	jalr	-1436(ra) # 21f0 <fatfs_split_path>
    3794:	fff00793          	li	a5,-1
    3798:	00f51c63          	bne	a0,a5,37b0 <_open_file+0x94>
    379c:	00040513          	mv	a0,s0
    37a0:	ffffe097          	auipc	ra,0xffffe
    37a4:	c48080e7          	jalr	-952(ra) # 13e8 <_free_file>
    37a8:	00000413          	li	s0,0
    37ac:	0b00006f          	j	385c <_open_file+0x140>
    37b0:	00040513          	mv	a0,s0
    37b4:	fffff097          	auipc	ra,0xfffff
    37b8:	c8c080e7          	jalr	-884(ra) # 2440 <_check_file_open>
    37bc:	fe0510e3          	bnez	a0,379c <_open_file+0x80>
    37c0:	01444783          	lbu	a5,20(s0)
    37c4:	0a079c63          	bnez	a5,387c <_open_file+0x160>
    37c8:	0000a7b7          	lui	a5,0xa
    37cc:	0d87a783          	lw	a5,216(a5) # a0d8 <_fs+0x8>
    37d0:	00f42023          	sw	a5,0(s0)
    37d4:	00042583          	lw	a1,0(s0)
    37d8:	0000a937          	lui	s2,0xa
    37dc:	00010693          	mv	a3,sp
    37e0:	00048613          	mv	a2,s1
    37e4:	0d090513          	addi	a0,s2,208 # a0d0 <_fs>
    37e8:	00000097          	auipc	ra,0x0
    37ec:	b7c080e7          	jalr	-1156(ra) # 3364 <fatfs_get_file_entry>
    37f0:	fa0506e3          	beqz	a0,379c <_open_file+0x80>
    37f4:	00010513          	mv	a0,sp
    37f8:	ffffe097          	auipc	ra,0xffffe
    37fc:	3a4080e7          	jalr	932(ra) # 1b9c <fatfs_entry_is_file>
    3800:	f8050ee3          	beqz	a0,379c <_open_file+0x80>
    3804:	00b00613          	li	a2,11
    3808:	00010593          	mv	a1,sp
    380c:	21c40513          	addi	a0,s0,540
    3810:	ffffd097          	auipc	ra,0xffffd
    3814:	ef4080e7          	jalr	-268(ra) # 704 <memcpy>
    3818:	01c12783          	lw	a5,28(sp)
    381c:	01a15703          	lhu	a4,26(sp)
    3820:	00042423          	sw	zero,8(s0)
    3824:	00f42623          	sw	a5,12(s0)
    3828:	01415783          	lhu	a5,20(sp)
    382c:	42042a23          	sw	zero,1076(s0)
    3830:	00042823          	sw	zero,16(s0)
    3834:	01079793          	slli	a5,a5,0x10
    3838:	00e787b3          	add	a5,a5,a4
    383c:	00f42223          	sw	a5,4(s0)
    3840:	fff00793          	li	a5,-1
    3844:	42f42823          	sw	a5,1072(s0)
    3848:	22f42423          	sw	a5,552(s0)
    384c:	22f42623          	sw	a5,556(s0)
    3850:	0d090513          	addi	a0,s2,208
    3854:	fffff097          	auipc	ra,0xfffff
    3858:	7ec080e7          	jalr	2028(ra) # 3040 <fatfs_fat_purge>
    385c:	03c12083          	lw	ra,60(sp)
    3860:	00040513          	mv	a0,s0
    3864:	03812403          	lw	s0,56(sp)
    3868:	03412483          	lw	s1,52(sp)
    386c:	03012903          	lw	s2,48(sp)
    3870:	02c12983          	lw	s3,44(sp)
    3874:	04010113          	addi	sp,sp,64
    3878:	00008067          	ret
    387c:	00040593          	mv	a1,s0
    3880:	00090513          	mv	a0,s2
    3884:	00000097          	auipc	ra,0x0
    3888:	cc0080e7          	jalr	-832(ra) # 3544 <_open_directory>
    388c:	f40514e3          	bnez	a0,37d4 <_open_file+0xb8>
    3890:	f0dff06f          	j	379c <_open_file+0x80>

00003894 <fatfs_sfn_exists>:
    3894:	fe010113          	addi	sp,sp,-32
    3898:	00912a23          	sw	s1,20(sp)
    389c:	01212823          	sw	s2,16(sp)
    38a0:	01312623          	sw	s3,12(sp)
    38a4:	01412423          	sw	s4,8(sp)
    38a8:	01512223          	sw	s5,4(sp)
    38ac:	00112e23          	sw	ra,28(sp)
    38b0:	00812c23          	sw	s0,24(sp)
    38b4:	00050493          	mv	s1,a0
    38b8:	00058993          	mv	s3,a1
    38bc:	00060a13          	mv	s4,a2
    38c0:	00000913          	li	s2,0
    38c4:	24450a93          	addi	s5,a0,580
    38c8:	00000693          	li	a3,0
    38cc:	00090613          	mv	a2,s2
    38d0:	00098593          	mv	a1,s3
    38d4:	00048513          	mv	a0,s1
    38d8:	00000097          	auipc	ra,0x0
    38dc:	94c080e7          	jalr	-1716(ra) # 3224 <fatfs_sector_reader>
    38e0:	06050263          	beqz	a0,3944 <fatfs_sfn_exists+0xb0>
    38e4:	04448413          	addi	s0,s1,68
    38e8:	00040513          	mv	a0,s0
    38ec:	ffffe097          	auipc	ra,0xffffe
    38f0:	1d0080e7          	jalr	464(ra) # 1abc <fatfs_entry_lfn_text>
    38f4:	02051e63          	bnez	a0,3930 <fatfs_sfn_exists+0x9c>
    38f8:	00040513          	mv	a0,s0
    38fc:	ffffe097          	auipc	ra,0xffffe
    3900:	1d4080e7          	jalr	468(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3904:	02051663          	bnez	a0,3930 <fatfs_sfn_exists+0x9c>
    3908:	00040513          	mv	a0,s0
    390c:	ffffe097          	auipc	ra,0xffffe
    3910:	244080e7          	jalr	580(ra) # 1b50 <fatfs_entry_sfn_only>
    3914:	00050e63          	beqz	a0,3930 <fatfs_sfn_exists+0x9c>
    3918:	00b00613          	li	a2,11
    391c:	000a0593          	mv	a1,s4
    3920:	00040513          	mv	a0,s0
    3924:	ffffd097          	auipc	ra,0xffffd
    3928:	e24080e7          	jalr	-476(ra) # 748 <strncmp>
    392c:	00050a63          	beqz	a0,3940 <fatfs_sfn_exists+0xac>
    3930:	02040413          	addi	s0,s0,32
    3934:	fb541ae3          	bne	s0,s5,38e8 <fatfs_sfn_exists+0x54>
    3938:	00190913          	addi	s2,s2,1
    393c:	f8dff06f          	j	38c8 <fatfs_sfn_exists+0x34>
    3940:	00100513          	li	a0,1
    3944:	01c12083          	lw	ra,28(sp)
    3948:	01812403          	lw	s0,24(sp)
    394c:	01412483          	lw	s1,20(sp)
    3950:	01012903          	lw	s2,16(sp)
    3954:	00c12983          	lw	s3,12(sp)
    3958:	00812a03          	lw	s4,8(sp)
    395c:	00412a83          	lw	s5,4(sp)
    3960:	02010113          	addi	sp,sp,32
    3964:	00008067          	ret

00003968 <fatfs_update_file_length>:
    3968:	03852783          	lw	a5,56(a0)
    396c:	14078463          	beqz	a5,3ab4 <fatfs_update_file_length+0x14c>
    3970:	fd010113          	addi	sp,sp,-48
    3974:	02912223          	sw	s1,36(sp)
    3978:	03212023          	sw	s2,32(sp)
    397c:	01312e23          	sw	s3,28(sp)
    3980:	01412c23          	sw	s4,24(sp)
    3984:	01512a23          	sw	s5,20(sp)
    3988:	01612823          	sw	s6,16(sp)
    398c:	02112623          	sw	ra,44(sp)
    3990:	02812423          	sw	s0,40(sp)
    3994:	01712623          	sw	s7,12(sp)
    3998:	00050493          	mv	s1,a0
    399c:	00058a13          	mv	s4,a1
    39a0:	00060a93          	mv	s5,a2
    39a4:	00068913          	mv	s2,a3
    39a8:	00000993          	li	s3,0
    39ac:	24450b13          	addi	s6,a0,580
    39b0:	00000693          	li	a3,0
    39b4:	00098613          	mv	a2,s3
    39b8:	000a0593          	mv	a1,s4
    39bc:	00048513          	mv	a0,s1
    39c0:	00000097          	auipc	ra,0x0
    39c4:	864080e7          	jalr	-1948(ra) # 3224 <fatfs_sector_reader>
    39c8:	0a050e63          	beqz	a0,3a84 <fatfs_update_file_length+0x11c>
    39cc:	04448413          	addi	s0,s1,68
    39d0:	00040b93          	mv	s7,s0
    39d4:	00040513          	mv	a0,s0
    39d8:	ffffe097          	auipc	ra,0xffffe
    39dc:	0e4080e7          	jalr	228(ra) # 1abc <fatfs_entry_lfn_text>
    39e0:	08051a63          	bnez	a0,3a74 <fatfs_update_file_length+0x10c>
    39e4:	00040513          	mv	a0,s0
    39e8:	ffffe097          	auipc	ra,0xffffe
    39ec:	0e8080e7          	jalr	232(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    39f0:	08051263          	bnez	a0,3a74 <fatfs_update_file_length+0x10c>
    39f4:	00040513          	mv	a0,s0
    39f8:	ffffe097          	auipc	ra,0xffffe
    39fc:	158080e7          	jalr	344(ra) # 1b50 <fatfs_entry_sfn_only>
    3a00:	06050a63          	beqz	a0,3a74 <fatfs_update_file_length+0x10c>
    3a04:	00b00613          	li	a2,11
    3a08:	000a8593          	mv	a1,s5
    3a0c:	00040513          	mv	a0,s0
    3a10:	ffffd097          	auipc	ra,0xffffd
    3a14:	d38080e7          	jalr	-712(ra) # 748 <strncmp>
    3a18:	04051e63          	bnez	a0,3a74 <fatfs_update_file_length+0x10c>
    3a1c:	00895793          	srli	a5,s2,0x8
    3a20:	01240e23          	sb	s2,28(s0)
    3a24:	00f40ea3          	sb	a5,29(s0)
    3a28:	01095793          	srli	a5,s2,0x10
    3a2c:	01895913          	srli	s2,s2,0x18
    3a30:	00f40f23          	sb	a5,30(s0)
    3a34:	01240fa3          	sb	s2,31(s0)
    3a38:	02812403          	lw	s0,40(sp)
    3a3c:	0384a783          	lw	a5,56(s1)
    3a40:	2444a503          	lw	a0,580(s1)
    3a44:	02c12083          	lw	ra,44(sp)
    3a48:	02412483          	lw	s1,36(sp)
    3a4c:	02012903          	lw	s2,32(sp)
    3a50:	01c12983          	lw	s3,28(sp)
    3a54:	01812a03          	lw	s4,24(sp)
    3a58:	01412a83          	lw	s5,20(sp)
    3a5c:	01012b03          	lw	s6,16(sp)
    3a60:	000b8593          	mv	a1,s7
    3a64:	00c12b83          	lw	s7,12(sp)
    3a68:	00100613          	li	a2,1
    3a6c:	03010113          	addi	sp,sp,48
    3a70:	00078067          	jr	a5
    3a74:	02040413          	addi	s0,s0,32
    3a78:	f5641ee3          	bne	s0,s6,39d4 <fatfs_update_file_length+0x6c>
    3a7c:	00198993          	addi	s3,s3,1
    3a80:	f31ff06f          	j	39b0 <fatfs_update_file_length+0x48>
    3a84:	02c12083          	lw	ra,44(sp)
    3a88:	02812403          	lw	s0,40(sp)
    3a8c:	02412483          	lw	s1,36(sp)
    3a90:	02012903          	lw	s2,32(sp)
    3a94:	01c12983          	lw	s3,28(sp)
    3a98:	01812a03          	lw	s4,24(sp)
    3a9c:	01412a83          	lw	s5,20(sp)
    3aa0:	01012b03          	lw	s6,16(sp)
    3aa4:	00c12b83          	lw	s7,12(sp)
    3aa8:	00000513          	li	a0,0
    3aac:	03010113          	addi	sp,sp,48
    3ab0:	00008067          	ret
    3ab4:	00000513          	li	a0,0
    3ab8:	00008067          	ret

00003abc <fatfs_mark_file_deleted>:
    3abc:	03852783          	lw	a5,56(a0)
    3ac0:	12078263          	beqz	a5,3be4 <fatfs_mark_file_deleted+0x128>
    3ac4:	fe010113          	addi	sp,sp,-32
    3ac8:	00912a23          	sw	s1,20(sp)
    3acc:	01212823          	sw	s2,16(sp)
    3ad0:	01312623          	sw	s3,12(sp)
    3ad4:	01412423          	sw	s4,8(sp)
    3ad8:	01512223          	sw	s5,4(sp)
    3adc:	00112e23          	sw	ra,28(sp)
    3ae0:	00812c23          	sw	s0,24(sp)
    3ae4:	01612023          	sw	s6,0(sp)
    3ae8:	00050493          	mv	s1,a0
    3aec:	00058993          	mv	s3,a1
    3af0:	00060a13          	mv	s4,a2
    3af4:	00000913          	li	s2,0
    3af8:	24450a93          	addi	s5,a0,580
    3afc:	00000693          	li	a3,0
    3b00:	00090613          	mv	a2,s2
    3b04:	00098593          	mv	a1,s3
    3b08:	00048513          	mv	a0,s1
    3b0c:	fffff097          	auipc	ra,0xfffff
    3b10:	718080e7          	jalr	1816(ra) # 3224 <fatfs_sector_reader>
    3b14:	0a050263          	beqz	a0,3bb8 <fatfs_mark_file_deleted+0xfc>
    3b18:	04448413          	addi	s0,s1,68
    3b1c:	00040b13          	mv	s6,s0
    3b20:	00040513          	mv	a0,s0
    3b24:	ffffe097          	auipc	ra,0xffffe
    3b28:	f98080e7          	jalr	-104(ra) # 1abc <fatfs_entry_lfn_text>
    3b2c:	06051e63          	bnez	a0,3ba8 <fatfs_mark_file_deleted+0xec>
    3b30:	00040513          	mv	a0,s0
    3b34:	ffffe097          	auipc	ra,0xffffe
    3b38:	f9c080e7          	jalr	-100(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3b3c:	06051663          	bnez	a0,3ba8 <fatfs_mark_file_deleted+0xec>
    3b40:	00040513          	mv	a0,s0
    3b44:	ffffe097          	auipc	ra,0xffffe
    3b48:	00c080e7          	jalr	12(ra) # 1b50 <fatfs_entry_sfn_only>
    3b4c:	04050e63          	beqz	a0,3ba8 <fatfs_mark_file_deleted+0xec>
    3b50:	00b00613          	li	a2,11
    3b54:	000a0593          	mv	a1,s4
    3b58:	00040513          	mv	a0,s0
    3b5c:	ffffd097          	auipc	ra,0xffffd
    3b60:	bec080e7          	jalr	-1044(ra) # 748 <strncmp>
    3b64:	04051263          	bnez	a0,3ba8 <fatfs_mark_file_deleted+0xec>
    3b68:	fe500793          	li	a5,-27
    3b6c:	00f40023          	sb	a5,0(s0)
    3b70:	01812403          	lw	s0,24(sp)
    3b74:	0384a783          	lw	a5,56(s1)
    3b78:	2444a503          	lw	a0,580(s1)
    3b7c:	01c12083          	lw	ra,28(sp)
    3b80:	01412483          	lw	s1,20(sp)
    3b84:	01012903          	lw	s2,16(sp)
    3b88:	00c12983          	lw	s3,12(sp)
    3b8c:	00812a03          	lw	s4,8(sp)
    3b90:	00412a83          	lw	s5,4(sp)
    3b94:	000b0593          	mv	a1,s6
    3b98:	00012b03          	lw	s6,0(sp)
    3b9c:	00100613          	li	a2,1
    3ba0:	02010113          	addi	sp,sp,32
    3ba4:	00078067          	jr	a5
    3ba8:	02040413          	addi	s0,s0,32
    3bac:	f7541ae3          	bne	s0,s5,3b20 <fatfs_mark_file_deleted+0x64>
    3bb0:	00190913          	addi	s2,s2,1
    3bb4:	f49ff06f          	j	3afc <fatfs_mark_file_deleted+0x40>
    3bb8:	01c12083          	lw	ra,28(sp)
    3bbc:	01812403          	lw	s0,24(sp)
    3bc0:	01412483          	lw	s1,20(sp)
    3bc4:	01012903          	lw	s2,16(sp)
    3bc8:	00c12983          	lw	s3,12(sp)
    3bcc:	00812a03          	lw	s4,8(sp)
    3bd0:	00412a83          	lw	s5,4(sp)
    3bd4:	00012b03          	lw	s6,0(sp)
    3bd8:	00000513          	li	a0,0
    3bdc:	02010113          	addi	sp,sp,32
    3be0:	00008067          	ret
    3be4:	00000513          	li	a0,0
    3be8:	00008067          	ret

00003bec <fatfs_list_directory_next>:
    3bec:	ec010113          	addi	sp,sp,-320
    3bf0:	13212823          	sw	s2,304(sp)
    3bf4:	13312623          	sw	s3,300(sp)
    3bf8:	13412423          	sw	s4,296(sp)
    3bfc:	13512223          	sw	s5,292(sp)
    3c00:	12112e23          	sw	ra,316(sp)
    3c04:	12812c23          	sw	s0,312(sp)
    3c08:	12912a23          	sw	s1,308(sp)
    3c0c:	00050a13          	mv	s4,a0
    3c10:	00058913          	mv	s2,a1
    3c14:	00060993          	mv	s3,a2
    3c18:	10010ea3          	sb	zero,285(sp)
    3c1c:	00f00a93          	li	s5,15
    3c20:	00092603          	lw	a2,0(s2)
    3c24:	00492583          	lw	a1,4(s2)
    3c28:	00000693          	li	a3,0
    3c2c:	000a0513          	mv	a0,s4
    3c30:	fffff097          	auipc	ra,0xfffff
    3c34:	5f4080e7          	jalr	1524(ra) # 3224 <fatfs_sector_reader>
    3c38:	12050063          	beqz	a0,3d58 <fatfs_list_directory_next+0x16c>
    3c3c:	00894483          	lbu	s1,8(s2)
    3c40:	00549413          	slli	s0,s1,0x5
    3c44:	04440413          	addi	s0,s0,68
    3c48:	008a0433          	add	s0,s4,s0
    3c4c:	009afc63          	bgeu	s5,s1,3c64 <fatfs_list_directory_next+0x78>
    3c50:	00092783          	lw	a5,0(s2)
    3c54:	00090423          	sb	zero,8(s2)
    3c58:	00178793          	addi	a5,a5,1
    3c5c:	00f92023          	sw	a5,0(s2)
    3c60:	fc1ff06f          	j	3c20 <fatfs_list_directory_next+0x34>
    3c64:	00040513          	mv	a0,s0
    3c68:	ffffe097          	auipc	ra,0xffffe
    3c6c:	e54080e7          	jalr	-428(ra) # 1abc <fatfs_entry_lfn_text>
    3c70:	02050263          	beqz	a0,3c94 <fatfs_list_directory_next+0xa8>
    3c74:	00040593          	mv	a1,s0
    3c78:	01810513          	addi	a0,sp,24
    3c7c:	ffffe097          	auipc	ra,0xffffe
    3c80:	d38080e7          	jalr	-712(ra) # 19b4 <fatfs_lfn_cache_entry>
    3c84:	00148493          	addi	s1,s1,1
    3c88:	0ff4f493          	zext.b	s1,s1
    3c8c:	02040413          	addi	s0,s0,32
    3c90:	fbdff06f          	j	3c4c <fatfs_list_directory_next+0x60>
    3c94:	00040513          	mv	a0,s0
    3c98:	ffffe097          	auipc	ra,0xffffe
    3c9c:	e38080e7          	jalr	-456(ra) # 1ad0 <fatfs_entry_lfn_invalid>
    3ca0:	00050663          	beqz	a0,3cac <fatfs_list_directory_next+0xc0>
    3ca4:	10010ea3          	sb	zero,285(sp)
    3ca8:	fddff06f          	j	3c84 <fatfs_list_directory_next+0x98>
    3cac:	00040593          	mv	a1,s0
    3cb0:	01810513          	addi	a0,sp,24
    3cb4:	ffffe097          	auipc	ra,0xffffe
    3cb8:	e54080e7          	jalr	-428(ra) # 1b08 <fatfs_entry_lfn_exists>
    3cbc:	0c050063          	beqz	a0,3d7c <fatfs_list_directory_next+0x190>
    3cc0:	01810513          	addi	a0,sp,24
    3cc4:	ffffe097          	auipc	ra,0xffffe
    3cc8:	dbc080e7          	jalr	-580(ra) # 1a80 <fatfs_lfn_cache_get>
    3ccc:	00050593          	mv	a1,a0
    3cd0:	10300613          	li	a2,259
    3cd4:	00098513          	mv	a0,s3
    3cd8:	ffffd097          	auipc	ra,0xffffd
    3cdc:	ab0080e7          	jalr	-1360(ra) # 788 <strncpy>
    3ce0:	00040513          	mv	a0,s0
    3ce4:	ffffe097          	auipc	ra,0xffffe
    3ce8:	ea8080e7          	jalr	-344(ra) # 1b8c <fatfs_entry_is_dir>
    3cec:	00a03533          	snez	a0,a0
    3cf0:	10a98223          	sb	a0,260(s3)
    3cf4:	01d44783          	lbu	a5,29(s0)
    3cf8:	01c44703          	lbu	a4,28(s0)
    3cfc:	00148493          	addi	s1,s1,1
    3d00:	00879793          	slli	a5,a5,0x8
    3d04:	00e7e7b3          	or	a5,a5,a4
    3d08:	01e44703          	lbu	a4,30(s0)
    3d0c:	00100513          	li	a0,1
    3d10:	01071713          	slli	a4,a4,0x10
    3d14:	00f76733          	or	a4,a4,a5
    3d18:	01f44783          	lbu	a5,31(s0)
    3d1c:	01879793          	slli	a5,a5,0x18
    3d20:	00e7e7b3          	or	a5,a5,a4
    3d24:	10f9a623          	sw	a5,268(s3)
    3d28:	01544783          	lbu	a5,21(s0)
    3d2c:	01444703          	lbu	a4,20(s0)
    3d30:	01a44683          	lbu	a3,26(s0)
    3d34:	00879793          	slli	a5,a5,0x8
    3d38:	00e7e7b3          	or	a5,a5,a4
    3d3c:	01b44703          	lbu	a4,27(s0)
    3d40:	01079793          	slli	a5,a5,0x10
    3d44:	00871713          	slli	a4,a4,0x8
    3d48:	00d76733          	or	a4,a4,a3
    3d4c:	00e7e7b3          	or	a5,a5,a4
    3d50:	10f9a423          	sw	a5,264(s3)
    3d54:	00990423          	sb	s1,8(s2)
    3d58:	13c12083          	lw	ra,316(sp)
    3d5c:	13812403          	lw	s0,312(sp)
    3d60:	13412483          	lw	s1,308(sp)
    3d64:	13012903          	lw	s2,304(sp)
    3d68:	12c12983          	lw	s3,300(sp)
    3d6c:	12812a03          	lw	s4,296(sp)
    3d70:	12412a83          	lw	s5,292(sp)
    3d74:	14010113          	addi	sp,sp,320
    3d78:	00008067          	ret
    3d7c:	00040513          	mv	a0,s0
    3d80:	ffffe097          	auipc	ra,0xffffe
    3d84:	dd0080e7          	jalr	-560(ra) # 1b50 <fatfs_entry_sfn_only>
    3d88:	ee050ee3          	beqz	a0,3c84 <fatfs_list_directory_next+0x98>
    3d8c:	10010ea3          	sb	zero,285(sp)
    3d90:	00012423          	sw	zero,8(sp)
    3d94:	00012623          	sw	zero,12(sp)
    3d98:	00012823          	sw	zero,16(sp)
    3d9c:	00010a23          	sb	zero,20(sp)
    3da0:	00000793          	li	a5,0
    3da4:	00800713          	li	a4,8
    3da8:	00f40633          	add	a2,s0,a5
    3dac:	00064603          	lbu	a2,0(a2)
    3db0:	00810693          	addi	a3,sp,8
    3db4:	00f686b3          	add	a3,a3,a5
    3db8:	00c68023          	sb	a2,0(a3)
    3dbc:	00178793          	addi	a5,a5,1
    3dc0:	fee794e3          	bne	a5,a4,3da8 <fatfs_list_directory_next+0x1bc>
    3dc4:	00844783          	lbu	a5,8(s0)
    3dc8:	00944683          	lbu	a3,9(s0)
    3dcc:	02000613          	li	a2,32
    3dd0:	00f108a3          	sb	a5,17(sp)
    3dd4:	00d10923          	sb	a3,18(sp)
    3dd8:	00100713          	li	a4,1
    3ddc:	00c69663          	bne	a3,a2,3de8 <fatfs_list_directory_next+0x1fc>
    3de0:	fe078793          	addi	a5,a5,-32
    3de4:	00f03733          	snez	a4,a5
    3de8:	00a44783          	lbu	a5,10(s0)
    3dec:	02000693          	li	a3,32
    3df0:	00f109a3          	sb	a5,19(sp)
    3df4:	00d79463          	bne	a5,a3,3dfc <fatfs_list_directory_next+0x210>
    3df8:	00070c63          	beqz	a4,3e10 <fatfs_list_directory_next+0x224>
    3dfc:	00814683          	lbu	a3,8(sp)
    3e00:	02e00713          	li	a4,46
    3e04:	02000793          	li	a5,32
    3e08:	00e68463          	beq	a3,a4,3e10 <fatfs_list_directory_next+0x224>
    3e0c:	02e00793          	li	a5,46
    3e10:	00810593          	addi	a1,sp,8
    3e14:	00098513          	mv	a0,s3
    3e18:	00f10823          	sb	a5,16(sp)
    3e1c:	ffffe097          	auipc	ra,0xffffe
    3e20:	6f0080e7          	jalr	1776(ra) # 250c <fatfs_get_sfn_display_name>
    3e24:	ebdff06f          	j	3ce0 <fatfs_list_directory_next+0xf4>

00003e28 <fl_readdir>:
    3e28:	000067b7          	lui	a5,0x6
    3e2c:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    3e30:	fe010113          	addi	sp,sp,-32
    3e34:	00912a23          	sw	s1,20(sp)
    3e38:	01212823          	sw	s2,16(sp)
    3e3c:	00112e23          	sw	ra,28(sp)
    3e40:	00812c23          	sw	s0,24(sp)
    3e44:	01312623          	sw	s3,12(sp)
    3e48:	00050493          	mv	s1,a0
    3e4c:	00058913          	mv	s2,a1
    3e50:	00079663          	bnez	a5,3e5c <fl_readdir+0x34>
    3e54:	ffffe097          	auipc	ra,0xffffe
    3e58:	898080e7          	jalr	-1896(ra) # 16ec <fl_init>
    3e5c:	0000a437          	lui	s0,0xa
    3e60:	0d040793          	addi	a5,s0,208 # a0d0 <_fs>
    3e64:	03c7a783          	lw	a5,60(a5)
    3e68:	0d040993          	addi	s3,s0,208
    3e6c:	00078463          	beqz	a5,3e74 <fl_readdir+0x4c>
    3e70:	000780e7          	jalr	a5
    3e74:	0d040513          	addi	a0,s0,208
    3e78:	00090613          	mv	a2,s2
    3e7c:	00048593          	mv	a1,s1
    3e80:	00000097          	auipc	ra,0x0
    3e84:	d6c080e7          	jalr	-660(ra) # 3bec <fatfs_list_directory_next>
    3e88:	0409a783          	lw	a5,64(s3)
    3e8c:	00050413          	mv	s0,a0
    3e90:	00078463          	beqz	a5,3e98 <fl_readdir+0x70>
    3e94:	000780e7          	jalr	a5
    3e98:	01c12083          	lw	ra,28(sp)
    3e9c:	00143513          	seqz	a0,s0
    3ea0:	01812403          	lw	s0,24(sp)
    3ea4:	01412483          	lw	s1,20(sp)
    3ea8:	01012903          	lw	s2,16(sp)
    3eac:	00c12983          	lw	s3,12(sp)
    3eb0:	40a00533          	neg	a0,a0
    3eb4:	02010113          	addi	sp,sp,32
    3eb8:	00008067          	ret

00003ebc <fl_listdirectory>:
    3ebc:	000067b7          	lui	a5,0x6
    3ec0:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    3ec4:	ed010113          	addi	sp,sp,-304
    3ec8:	12912223          	sw	s1,292(sp)
    3ecc:	12112623          	sw	ra,300(sp)
    3ed0:	12812423          	sw	s0,296(sp)
    3ed4:	13212023          	sw	s2,288(sp)
    3ed8:	00050493          	mv	s1,a0
    3edc:	00079663          	bnez	a5,3ee8 <fl_listdirectory+0x2c>
    3ee0:	ffffe097          	auipc	ra,0xffffe
    3ee4:	80c080e7          	jalr	-2036(ra) # 16ec <fl_init>
    3ee8:	0000a7b7          	lui	a5,0xa
    3eec:	0d078713          	addi	a4,a5,208 # a0d0 <_fs>
    3ef0:	03c72703          	lw	a4,60(a4)
    3ef4:	0d078413          	addi	s0,a5,208
    3ef8:	00070463          	beqz	a4,3f00 <fl_listdirectory+0x44>
    3efc:	000700e7          	jalr	a4
    3f00:	00006537          	lui	a0,0x6
    3f04:	00048593          	mv	a1,s1
    3f08:	ea450513          	addi	a0,a0,-348 # 5ea4 <font+0x378>
    3f0c:	ffffd097          	auipc	ra,0xffffd
    3f10:	ed0080e7          	jalr	-304(ra) # ddc <printf>
    3f14:	00410593          	addi	a1,sp,4
    3f18:	00048513          	mv	a0,s1
    3f1c:	fffff097          	auipc	ra,0xfffff
    3f20:	710080e7          	jalr	1808(ra) # 362c <fl_opendir>
    3f24:	02050063          	beqz	a0,3f44 <fl_listdirectory+0x88>
    3f28:	000064b7          	lui	s1,0x6
    3f2c:	00006937          	lui	s2,0x6
    3f30:	01010593          	addi	a1,sp,16
    3f34:	00410513          	addi	a0,sp,4
    3f38:	00000097          	auipc	ra,0x0
    3f3c:	ef0080e7          	jalr	-272(ra) # 3e28 <fl_readdir>
    3f40:	02050263          	beqz	a0,3f64 <fl_listdirectory+0xa8>
    3f44:	04042783          	lw	a5,64(s0)
    3f48:	04078863          	beqz	a5,3f98 <fl_listdirectory+0xdc>
    3f4c:	12812403          	lw	s0,296(sp)
    3f50:	12c12083          	lw	ra,300(sp)
    3f54:	12412483          	lw	s1,292(sp)
    3f58:	12012903          	lw	s2,288(sp)
    3f5c:	13010113          	addi	sp,sp,304
    3f60:	00078067          	jr	a5
    3f64:	11414783          	lbu	a5,276(sp)
    3f68:	00078c63          	beqz	a5,3f80 <fl_listdirectory+0xc4>
    3f6c:	01010593          	addi	a1,sp,16
    3f70:	eb890513          	addi	a0,s2,-328 # 5eb8 <font+0x38c>
    3f74:	ffffd097          	auipc	ra,0xffffd
    3f78:	e68080e7          	jalr	-408(ra) # ddc <printf>
    3f7c:	fb5ff06f          	j	3f30 <fl_listdirectory+0x74>
    3f80:	11c12603          	lw	a2,284(sp)
    3f84:	01010593          	addi	a1,sp,16
    3f88:	ec448513          	addi	a0,s1,-316 # 5ec4 <font+0x398>
    3f8c:	ffffd097          	auipc	ra,0xffffd
    3f90:	e50080e7          	jalr	-432(ra) # ddc <printf>
    3f94:	f9dff06f          	j	3f30 <fl_listdirectory+0x74>
    3f98:	12c12083          	lw	ra,300(sp)
    3f9c:	12812403          	lw	s0,296(sp)
    3fa0:	12412483          	lw	s1,292(sp)
    3fa4:	12012903          	lw	s2,288(sp)
    3fa8:	13010113          	addi	sp,sp,304
    3fac:	00008067          	ret

00003fb0 <_read_sectors>:
    3fb0:	fd010113          	addi	sp,sp,-48
    3fb4:	01612823          	sw	s6,16(sp)
    3fb8:	0000ab37          	lui	s6,0xa
    3fbc:	01512a23          	sw	s5,20(sp)
    3fc0:	0d0b4a83          	lbu	s5,208(s6) # a0d0 <_fs>
    3fc4:	01412c23          	sw	s4,24(sp)
    3fc8:	00058a13          	mv	s4,a1
    3fcc:	02912223          	sw	s1,36(sp)
    3fd0:	000a8593          	mv	a1,s5
    3fd4:	00050493          	mv	s1,a0
    3fd8:	000a0513          	mv	a0,s4
    3fdc:	02112623          	sw	ra,44(sp)
    3fe0:	02812423          	sw	s0,40(sp)
    3fe4:	03212023          	sw	s2,32(sp)
    3fe8:	00068413          	mv	s0,a3
    3fec:	01712623          	sw	s7,12(sp)
    3ff0:	01812423          	sw	s8,8(sp)
    3ff4:	01312e23          	sw	s3,28(sp)
    3ff8:	00060c13          	mv	s8,a2
    3ffc:	ffffc097          	auipc	ra,0xffffc
    4000:	618080e7          	jalr	1560(ra) # 614 <__udivsi3>
    4004:	00050913          	mv	s2,a0
    4008:	000a8593          	mv	a1,s5
    400c:	000a0513          	mv	a0,s4
    4010:	ffffc097          	auipc	ra,0xffffc
    4014:	64c080e7          	jalr	1612(ra) # 65c <__umodsi3>
    4018:	00a407b3          	add	a5,s0,a0
    401c:	00050b93          	mv	s7,a0
    4020:	00fafe63          	bgeu	s5,a5,403c <_read_sectors+0x8c>
    4024:	00090593          	mv	a1,s2
    4028:	000a8513          	mv	a0,s5
    402c:	ffffd097          	auipc	ra,0xffffd
    4030:	eec080e7          	jalr	-276(ra) # f18 <__mulsi3>
    4034:	414a87b3          	sub	a5,s5,s4
    4038:	00f50433          	add	s0,a0,a5
    403c:	2284a983          	lw	s3,552(s1)
    4040:	01299c63          	bne	s3,s2,4058 <_read_sectors+0xa8>
    4044:	22c4a583          	lw	a1,556(s1)
    4048:	fff00793          	li	a5,-1
    404c:	02f59863          	bne	a1,a5,407c <_read_sectors+0xcc>
    4050:	00000413          	li	s0,0
    4054:	0500006f          	j	40a4 <_read_sectors+0xf4>
    4058:	095a6063          	bltu	s4,s5,40d8 <_read_sectors+0x128>
    405c:	00198793          	addi	a5,s3,1
    4060:	07279c63          	bne	a5,s2,40d8 <_read_sectors+0x128>
    4064:	22c4a583          	lw	a1,556(s1)
    4068:	0729ee63          	bltu	s3,s2,40e4 <_read_sectors+0x134>
    406c:	fff00793          	li	a5,-1
    4070:	fef580e3          	beq	a1,a5,4050 <_read_sectors+0xa0>
    4074:	22b4a623          	sw	a1,556(s1)
    4078:	2324a423          	sw	s2,552(s1)
    407c:	0d0b0513          	addi	a0,s6,208
    4080:	ffffd097          	auipc	ra,0xffffd
    4084:	3b0080e7          	jalr	944(ra) # 1430 <fatfs_lba_of_cluster>
    4088:	017505b3          	add	a1,a0,s7
    408c:	00040693          	mv	a3,s0
    4090:	000c0613          	mv	a2,s8
    4094:	0d0b0513          	addi	a0,s6,208
    4098:	ffffd097          	auipc	ra,0xffffd
    409c:	3e8080e7          	jalr	1000(ra) # 1480 <fatfs_sector_read>
    40a0:	fa0508e3          	beqz	a0,4050 <_read_sectors+0xa0>
    40a4:	02c12083          	lw	ra,44(sp)
    40a8:	00040513          	mv	a0,s0
    40ac:	02812403          	lw	s0,40(sp)
    40b0:	02412483          	lw	s1,36(sp)
    40b4:	02012903          	lw	s2,32(sp)
    40b8:	01c12983          	lw	s3,28(sp)
    40bc:	01812a03          	lw	s4,24(sp)
    40c0:	01412a83          	lw	s5,20(sp)
    40c4:	01012b03          	lw	s6,16(sp)
    40c8:	00c12b83          	lw	s7,12(sp)
    40cc:	00812c03          	lw	s8,8(sp)
    40d0:	03010113          	addi	sp,sp,48
    40d4:	00008067          	ret
    40d8:	0044a583          	lw	a1,4(s1)
    40dc:	00000993          	li	s3,0
    40e0:	f89ff06f          	j	4068 <_read_sectors+0xb8>
    40e4:	0d0b0513          	addi	a0,s6,208
    40e8:	fffff097          	auipc	ra,0xfffff
    40ec:	02c080e7          	jalr	44(ra) # 3114 <fatfs_find_next_cluster>
    40f0:	00050593          	mv	a1,a0
    40f4:	00198993          	addi	s3,s3,1
    40f8:	f71ff06f          	j	4068 <_read_sectors+0xb8>

000040fc <fatfs_set_fs_info_next_free_cluster>:
    40fc:	03052783          	lw	a5,48(a0)
    4100:	0a078863          	beqz	a5,41b0 <fatfs_set_fs_info_next_free_cluster+0xb4>
    4104:	ff010113          	addi	sp,sp,-16
    4108:	01c52783          	lw	a5,28(a0)
    410c:	01212023          	sw	s2,0(sp)
    4110:	00058913          	mv	s2,a1
    4114:	01855583          	lhu	a1,24(a0)
    4118:	00812423          	sw	s0,8(sp)
    411c:	00912223          	sw	s1,4(sp)
    4120:	00f585b3          	add	a1,a1,a5
    4124:	00112623          	sw	ra,12(sp)
    4128:	00050493          	mv	s1,a0
    412c:	ffffd097          	auipc	ra,0xffffd
    4130:	fa4080e7          	jalr	-92(ra) # 10d0 <fatfs_fat_read_sector>
    4134:	00050413          	mv	s0,a0
    4138:	06050063          	beqz	a0,4198 <fatfs_set_fs_info_next_free_cluster+0x9c>
    413c:	20852783          	lw	a5,520(a0)
    4140:	00895713          	srli	a4,s2,0x8
    4144:	1f278623          	sb	s2,492(a5)
    4148:	20852783          	lw	a5,520(a0)
    414c:	1ee786a3          	sb	a4,493(a5)
    4150:	20852783          	lw	a5,520(a0)
    4154:	01095713          	srli	a4,s2,0x10
    4158:	1ee78723          	sb	a4,494(a5)
    415c:	20852783          	lw	a5,520(a0)
    4160:	01895713          	srli	a4,s2,0x18
    4164:	1ee787a3          	sb	a4,495(a5)
    4168:	00100793          	li	a5,1
    416c:	20f52223          	sw	a5,516(a0)
    4170:	0384a783          	lw	a5,56(s1)
    4174:	0324a223          	sw	s2,36(s1)
    4178:	00078a63          	beqz	a5,418c <fatfs_set_fs_info_next_free_cluster+0x90>
    417c:	00050593          	mv	a1,a0
    4180:	20052503          	lw	a0,512(a0)
    4184:	00100613          	li	a2,1
    4188:	000780e7          	jalr	a5
    418c:	fff00793          	li	a5,-1
    4190:	20f42023          	sw	a5,512(s0)
    4194:	20042223          	sw	zero,516(s0)
    4198:	00c12083          	lw	ra,12(sp)
    419c:	00812403          	lw	s0,8(sp)
    41a0:	00412483          	lw	s1,4(sp)
    41a4:	00012903          	lw	s2,0(sp)
    41a8:	01010113          	addi	sp,sp,16
    41ac:	00008067          	ret
    41b0:	00008067          	ret

000041b4 <fatfs_find_blank_cluster>:
    41b4:	fe010113          	addi	sp,sp,-32
    41b8:	01312623          	sw	s3,12(sp)
    41bc:	01512223          	sw	s5,4(sp)
    41c0:	000109b7          	lui	s3,0x10
    41c4:	10000ab7          	lui	s5,0x10000
    41c8:	00912a23          	sw	s1,20(sp)
    41cc:	01212823          	sw	s2,16(sp)
    41d0:	01412423          	sw	s4,8(sp)
    41d4:	00112e23          	sw	ra,28(sp)
    41d8:	00812c23          	sw	s0,24(sp)
    41dc:	00050913          	mv	s2,a0
    41e0:	00058493          	mv	s1,a1
    41e4:	00060a13          	mv	s4,a2
    41e8:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x5ac7>
    41ec:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    41f0:	03092783          	lw	a5,48(s2)
    41f4:	0074d413          	srli	s0,s1,0x7
    41f8:	00079463          	bnez	a5,4200 <fatfs_find_blank_cluster+0x4c>
    41fc:	0084d413          	srli	s0,s1,0x8
    4200:	02092783          	lw	a5,32(s2)
    4204:	08f47e63          	bgeu	s0,a5,42a0 <fatfs_find_blank_cluster+0xec>
    4208:	01492583          	lw	a1,20(s2)
    420c:	00090513          	mv	a0,s2
    4210:	00b405b3          	add	a1,s0,a1
    4214:	ffffd097          	auipc	ra,0xffffd
    4218:	ebc080e7          	jalr	-324(ra) # 10d0 <fatfs_fat_read_sector>
    421c:	08050263          	beqz	a0,42a0 <fatfs_find_blank_cluster+0xec>
    4220:	03092783          	lw	a5,48(s2)
    4224:	20852703          	lw	a4,520(a0)
    4228:	02079a63          	bnez	a5,425c <fatfs_find_blank_cluster+0xa8>
    422c:	00841413          	slli	s0,s0,0x8
    4230:	40848433          	sub	s0,s1,s0
    4234:	00141413          	slli	s0,s0,0x1
    4238:	01347433          	and	s0,s0,s3
    423c:	00870733          	add	a4,a4,s0
    4240:	00174783          	lbu	a5,1(a4)
    4244:	00074703          	lbu	a4,0(a4)
    4248:	00879793          	slli	a5,a5,0x8
    424c:	00e787b3          	add	a5,a5,a4
    4250:	06078c63          	beqz	a5,42c8 <fatfs_find_blank_cluster+0x114>
    4254:	00148493          	addi	s1,s1,1
    4258:	f99ff06f          	j	41f0 <fatfs_find_blank_cluster+0x3c>
    425c:	00741413          	slli	s0,s0,0x7
    4260:	40848433          	sub	s0,s1,s0
    4264:	00241413          	slli	s0,s0,0x2
    4268:	01347433          	and	s0,s0,s3
    426c:	00870733          	add	a4,a4,s0
    4270:	00374783          	lbu	a5,3(a4)
    4274:	00274683          	lbu	a3,2(a4)
    4278:	01879793          	slli	a5,a5,0x18
    427c:	01069693          	slli	a3,a3,0x10
    4280:	00d787b3          	add	a5,a5,a3
    4284:	00074683          	lbu	a3,0(a4)
    4288:	00174703          	lbu	a4,1(a4)
    428c:	00d787b3          	add	a5,a5,a3
    4290:	00871713          	slli	a4,a4,0x8
    4294:	00e787b3          	add	a5,a5,a4
    4298:	0157f7b3          	and	a5,a5,s5
    429c:	fb5ff06f          	j	4250 <fatfs_find_blank_cluster+0x9c>
    42a0:	00000513          	li	a0,0
    42a4:	01c12083          	lw	ra,28(sp)
    42a8:	01812403          	lw	s0,24(sp)
    42ac:	01412483          	lw	s1,20(sp)
    42b0:	01012903          	lw	s2,16(sp)
    42b4:	00c12983          	lw	s3,12(sp)
    42b8:	00812a03          	lw	s4,8(sp)
    42bc:	00412a83          	lw	s5,4(sp)
    42c0:	02010113          	addi	sp,sp,32
    42c4:	00008067          	ret
    42c8:	009a2023          	sw	s1,0(s4)
    42cc:	00100513          	li	a0,1
    42d0:	fd5ff06f          	j	42a4 <fatfs_find_blank_cluster+0xf0>

000042d4 <fatfs_fat_set_cluster>:
    42d4:	03052783          	lw	a5,48(a0)
    42d8:	fe010113          	addi	sp,sp,-32
    42dc:	00812c23          	sw	s0,24(sp)
    42e0:	00912a23          	sw	s1,20(sp)
    42e4:	01212823          	sw	s2,16(sp)
    42e8:	01312623          	sw	s3,12(sp)
    42ec:	00112e23          	sw	ra,28(sp)
    42f0:	00050993          	mv	s3,a0
    42f4:	00058413          	mv	s0,a1
    42f8:	00060493          	mv	s1,a2
    42fc:	0085d913          	srli	s2,a1,0x8
    4300:	00078463          	beqz	a5,4308 <fatfs_fat_set_cluster+0x34>
    4304:	0075d913          	srli	s2,a1,0x7
    4308:	0149a583          	lw	a1,20(s3)
    430c:	00098513          	mv	a0,s3
    4310:	00b905b3          	add	a1,s2,a1
    4314:	ffffd097          	auipc	ra,0xffffd
    4318:	dbc080e7          	jalr	-580(ra) # 10d0 <fatfs_fat_read_sector>
    431c:	00050793          	mv	a5,a0
    4320:	00000513          	li	a0,0
    4324:	04078c63          	beqz	a5,437c <fatfs_fat_set_cluster+0xa8>
    4328:	0309a683          	lw	a3,48(s3)
    432c:	2087a703          	lw	a4,520(a5)
    4330:	0ff4f613          	zext.b	a2,s1
    4334:	06069263          	bnez	a3,4398 <fatfs_fat_set_cluster+0xc4>
    4338:	00891913          	slli	s2,s2,0x8
    433c:	41240433          	sub	s0,s0,s2
    4340:	000106b7          	lui	a3,0x10
    4344:	00141413          	slli	s0,s0,0x1
    4348:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x5ac7>
    434c:	00d47433          	and	s0,s0,a3
    4350:	00870733          	add	a4,a4,s0
    4354:	00c70023          	sb	a2,0(a4)
    4358:	2087a703          	lw	a4,520(a5)
    435c:	01049493          	slli	s1,s1,0x10
    4360:	0104d493          	srli	s1,s1,0x10
    4364:	00870733          	add	a4,a4,s0
    4368:	0084d493          	srli	s1,s1,0x8
    436c:	009700a3          	sb	s1,1(a4)
    4370:	00100713          	li	a4,1
    4374:	20e7a223          	sw	a4,516(a5)
    4378:	00100513          	li	a0,1
    437c:	01c12083          	lw	ra,28(sp)
    4380:	01812403          	lw	s0,24(sp)
    4384:	01412483          	lw	s1,20(sp)
    4388:	01012903          	lw	s2,16(sp)
    438c:	00c12983          	lw	s3,12(sp)
    4390:	02010113          	addi	sp,sp,32
    4394:	00008067          	ret
    4398:	00791913          	slli	s2,s2,0x7
    439c:	41240433          	sub	s0,s0,s2
    43a0:	000106b7          	lui	a3,0x10
    43a4:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x5ac7>
    43a8:	00241413          	slli	s0,s0,0x2
    43ac:	00d47433          	and	s0,s0,a3
    43b0:	00870733          	add	a4,a4,s0
    43b4:	00c70023          	sb	a2,0(a4)
    43b8:	2087a703          	lw	a4,520(a5)
    43bc:	0084d693          	srli	a3,s1,0x8
    43c0:	00870733          	add	a4,a4,s0
    43c4:	00d700a3          	sb	a3,1(a4)
    43c8:	2087a703          	lw	a4,520(a5)
    43cc:	0104d693          	srli	a3,s1,0x10
    43d0:	0184d493          	srli	s1,s1,0x18
    43d4:	00870733          	add	a4,a4,s0
    43d8:	00d70123          	sb	a3,2(a4)
    43dc:	2087a703          	lw	a4,520(a5)
    43e0:	00870733          	add	a4,a4,s0
    43e4:	009701a3          	sb	s1,3(a4)
    43e8:	f89ff06f          	j	4370 <fatfs_fat_set_cluster+0x9c>

000043ec <fatfs_free_cluster_chain>:
    43ec:	fe010113          	addi	sp,sp,-32
    43f0:	00812c23          	sw	s0,24(sp)
    43f4:	01212823          	sw	s2,16(sp)
    43f8:	00112e23          	sw	ra,28(sp)
    43fc:	00912a23          	sw	s1,20(sp)
    4400:	00050413          	mv	s0,a0
    4404:	ffd00913          	li	s2,-3
    4408:	fff58793          	addi	a5,a1,-1
    440c:	02f97063          	bgeu	s2,a5,442c <fatfs_free_cluster_chain+0x40>
    4410:	01c12083          	lw	ra,28(sp)
    4414:	01812403          	lw	s0,24(sp)
    4418:	01412483          	lw	s1,20(sp)
    441c:	01012903          	lw	s2,16(sp)
    4420:	00100513          	li	a0,1
    4424:	02010113          	addi	sp,sp,32
    4428:	00008067          	ret
    442c:	00040513          	mv	a0,s0
    4430:	00b12623          	sw	a1,12(sp)
    4434:	fffff097          	auipc	ra,0xfffff
    4438:	ce0080e7          	jalr	-800(ra) # 3114 <fatfs_find_next_cluster>
    443c:	00c12583          	lw	a1,12(sp)
    4440:	00050493          	mv	s1,a0
    4444:	00000613          	li	a2,0
    4448:	00040513          	mv	a0,s0
    444c:	00000097          	auipc	ra,0x0
    4450:	e88080e7          	jalr	-376(ra) # 42d4 <fatfs_fat_set_cluster>
    4454:	00048593          	mv	a1,s1
    4458:	fb1ff06f          	j	4408 <fatfs_free_cluster_chain+0x1c>

0000445c <fatfs_fat_add_cluster_to_chain>:
    445c:	fff00793          	li	a5,-1
    4460:	02f59463          	bne	a1,a5,4488 <fatfs_fat_add_cluster_to_chain+0x2c>
    4464:	00000513          	li	a0,0
    4468:	00008067          	ret
    446c:	00000513          	li	a0,0
    4470:	01c12083          	lw	ra,28(sp)
    4474:	01812403          	lw	s0,24(sp)
    4478:	01412483          	lw	s1,20(sp)
    447c:	01012903          	lw	s2,16(sp)
    4480:	02010113          	addi	sp,sp,32
    4484:	00008067          	ret
    4488:	fe010113          	addi	sp,sp,-32
    448c:	00812c23          	sw	s0,24(sp)
    4490:	00912a23          	sw	s1,20(sp)
    4494:	01212823          	sw	s2,16(sp)
    4498:	00050413          	mv	s0,a0
    449c:	00112e23          	sw	ra,28(sp)
    44a0:	00058513          	mv	a0,a1
    44a4:	00060493          	mv	s1,a2
    44a8:	fff00913          	li	s2,-1
    44ac:	00050593          	mv	a1,a0
    44b0:	00a12623          	sw	a0,12(sp)
    44b4:	00040513          	mv	a0,s0
    44b8:	fffff097          	auipc	ra,0xfffff
    44bc:	c5c080e7          	jalr	-932(ra) # 3114 <fatfs_find_next_cluster>
    44c0:	fa0506e3          	beqz	a0,446c <fatfs_fat_add_cluster_to_chain+0x10>
    44c4:	00c12583          	lw	a1,12(sp)
    44c8:	ff2512e3          	bne	a0,s2,44ac <fatfs_fat_add_cluster_to_chain+0x50>
    44cc:	00048613          	mv	a2,s1
    44d0:	00040513          	mv	a0,s0
    44d4:	00000097          	auipc	ra,0x0
    44d8:	e00080e7          	jalr	-512(ra) # 42d4 <fatfs_fat_set_cluster>
    44dc:	fff00613          	li	a2,-1
    44e0:	00048593          	mv	a1,s1
    44e4:	00040513          	mv	a0,s0
    44e8:	00000097          	auipc	ra,0x0
    44ec:	dec080e7          	jalr	-532(ra) # 42d4 <fatfs_fat_set_cluster>
    44f0:	00100513          	li	a0,1
    44f4:	f7dff06f          	j	4470 <fatfs_fat_add_cluster_to_chain+0x14>

000044f8 <fatfs_count_free_clusters>:
    44f8:	fe010113          	addi	sp,sp,-32
    44fc:	00812c23          	sw	s0,24(sp)
    4500:	00912a23          	sw	s1,20(sp)
    4504:	01212823          	sw	s2,16(sp)
    4508:	01312623          	sw	s3,12(sp)
    450c:	00112e23          	sw	ra,28(sp)
    4510:	00050413          	mv	s0,a0
    4514:	00000493          	li	s1,0
    4518:	00000913          	li	s2,0
    451c:	1ff00993          	li	s3,511
    4520:	02042783          	lw	a5,32(s0)
    4524:	02f96263          	bltu	s2,a5,4548 <fatfs_count_free_clusters+0x50>
    4528:	01c12083          	lw	ra,28(sp)
    452c:	01812403          	lw	s0,24(sp)
    4530:	01012903          	lw	s2,16(sp)
    4534:	00c12983          	lw	s3,12(sp)
    4538:	00048513          	mv	a0,s1
    453c:	01412483          	lw	s1,20(sp)
    4540:	02010113          	addi	sp,sp,32
    4544:	00008067          	ret
    4548:	01442583          	lw	a1,20(s0)
    454c:	00040513          	mv	a0,s0
    4550:	00b905b3          	add	a1,s2,a1
    4554:	ffffd097          	auipc	ra,0xffffd
    4558:	b7c080e7          	jalr	-1156(ra) # 10d0 <fatfs_fat_read_sector>
    455c:	fc0506e3          	beqz	a0,4528 <fatfs_count_free_clusters+0x30>
    4560:	03042803          	lw	a6,48(s0)
    4564:	20852583          	lw	a1,520(a0)
    4568:	00000713          	li	a4,0
    456c:	00e587b3          	add	a5,a1,a4
    4570:	0017c683          	lbu	a3,1(a5)
    4574:	0007c503          	lbu	a0,0(a5)
    4578:	00270613          	addi	a2,a4,2
    457c:	00869693          	slli	a3,a3,0x8
    4580:	02081063          	bnez	a6,45a0 <fatfs_count_free_clusters+0xa8>
    4584:	00a686b3          	add	a3,a3,a0
    4588:	00069463          	bnez	a3,4590 <fatfs_count_free_clusters+0x98>
    458c:	00148493          	addi	s1,s1,1
    4590:	00060713          	mv	a4,a2
    4594:	fce9fce3          	bgeu	s3,a4,456c <fatfs_count_free_clusters+0x74>
    4598:	00190913          	addi	s2,s2,1
    459c:	f85ff06f          	j	4520 <fatfs_count_free_clusters+0x28>
    45a0:	00c58633          	add	a2,a1,a2
    45a4:	0037c783          	lbu	a5,3(a5)
    45a8:	00064603          	lbu	a2,0(a2)
    45ac:	01879793          	slli	a5,a5,0x18
    45b0:	01061613          	slli	a2,a2,0x10
    45b4:	00c787b3          	add	a5,a5,a2
    45b8:	00a787b3          	add	a5,a5,a0
    45bc:	00d787b3          	add	a5,a5,a3
    45c0:	00079463          	bnez	a5,45c8 <fatfs_count_free_clusters+0xd0>
    45c4:	00148493          	addi	s1,s1,1
    45c8:	00470713          	addi	a4,a4,4
    45cc:	fc9ff06f          	j	4594 <fatfs_count_free_clusters+0x9c>

000045d0 <fatfs_add_free_space>:
    45d0:	02452703          	lw	a4,36(a0)
    45d4:	fd010113          	addi	sp,sp,-48
    45d8:	02812423          	sw	s0,40(sp)
    45dc:	03212023          	sw	s2,32(sp)
    45e0:	01412c23          	sw	s4,24(sp)
    45e4:	01512a23          	sw	s5,20(sp)
    45e8:	02112623          	sw	ra,44(sp)
    45ec:	02912223          	sw	s1,36(sp)
    45f0:	01312e23          	sw	s3,28(sp)
    45f4:	fff00793          	li	a5,-1
    45f8:	0005aa83          	lw	s5,0(a1)
    45fc:	00050413          	mv	s0,a0
    4600:	00058913          	mv	s2,a1
    4604:	00060a13          	mv	s4,a2
    4608:	00f70863          	beq	a4,a5,4618 <fatfs_add_free_space+0x48>
    460c:	fff00593          	li	a1,-1
    4610:	00000097          	auipc	ra,0x0
    4614:	aec080e7          	jalr	-1300(ra) # 40fc <fatfs_set_fs_info_next_free_cluster>
    4618:	00000493          	li	s1,0
    461c:	03449663          	bne	s1,s4,4648 <fatfs_add_free_space+0x78>
    4620:	00100513          	li	a0,1
    4624:	02c12083          	lw	ra,44(sp)
    4628:	02812403          	lw	s0,40(sp)
    462c:	02412483          	lw	s1,36(sp)
    4630:	02012903          	lw	s2,32(sp)
    4634:	01c12983          	lw	s3,28(sp)
    4638:	01812a03          	lw	s4,24(sp)
    463c:	01412a83          	lw	s5,20(sp)
    4640:	03010113          	addi	sp,sp,48
    4644:	00008067          	ret
    4648:	00842583          	lw	a1,8(s0)
    464c:	00c10613          	addi	a2,sp,12
    4650:	00040513          	mv	a0,s0
    4654:	00000097          	auipc	ra,0x0
    4658:	b60080e7          	jalr	-1184(ra) # 41b4 <fatfs_find_blank_cluster>
    465c:	fc0504e3          	beqz	a0,4624 <fatfs_add_free_space+0x54>
    4660:	00c12983          	lw	s3,12(sp)
    4664:	000a8593          	mv	a1,s5
    4668:	00040513          	mv	a0,s0
    466c:	00098613          	mv	a2,s3
    4670:	00000097          	auipc	ra,0x0
    4674:	c64080e7          	jalr	-924(ra) # 42d4 <fatfs_fat_set_cluster>
    4678:	fff00613          	li	a2,-1
    467c:	00098593          	mv	a1,s3
    4680:	00040513          	mv	a0,s0
    4684:	00000097          	auipc	ra,0x0
    4688:	c50080e7          	jalr	-944(ra) # 42d4 <fatfs_fat_set_cluster>
    468c:	00049463          	bnez	s1,4694 <fatfs_add_free_space+0xc4>
    4690:	01392023          	sw	s3,0(s2)
    4694:	00148493          	addi	s1,s1,1
    4698:	00098a93          	mv	s5,s3
    469c:	f81ff06f          	j	461c <fatfs_add_free_space+0x4c>

000046a0 <_write_sectors>:
    46a0:	fb010113          	addi	sp,sp,-80
    46a4:	03312e23          	sw	s3,60(sp)
    46a8:	0000a9b7          	lui	s3,0xa
    46ac:	03612823          	sw	s6,48(sp)
    46b0:	0d09cb03          	lbu	s6,208(s3) # a0d0 <_fs>
    46b4:	03512a23          	sw	s5,52(sp)
    46b8:	00058a93          	mv	s5,a1
    46bc:	fff00793          	li	a5,-1
    46c0:	04812423          	sw	s0,72(sp)
    46c4:	000b0593          	mv	a1,s6
    46c8:	00050413          	mv	s0,a0
    46cc:	000a8513          	mv	a0,s5
    46d0:	00f12e23          	sw	a5,28(sp)
    46d4:	04112623          	sw	ra,76(sp)
    46d8:	04912223          	sw	s1,68(sp)
    46dc:	05212023          	sw	s2,64(sp)
    46e0:	03712623          	sw	s7,44(sp)
    46e4:	03812423          	sw	s8,40(sp)
    46e8:	00068b93          	mv	s7,a3
    46ec:	03912223          	sw	s9,36(sp)
    46f0:	03a12023          	sw	s10,32(sp)
    46f4:	00060c93          	mv	s9,a2
    46f8:	03412c23          	sw	s4,56(sp)
    46fc:	ffffc097          	auipc	ra,0xffffc
    4700:	f18080e7          	jalr	-232(ra) # 614 <__udivsi3>
    4704:	00050493          	mv	s1,a0
    4708:	000b0593          	mv	a1,s6
    470c:	000a8513          	mv	a0,s5
    4710:	ffffc097          	auipc	ra,0xffffc
    4714:	f4c080e7          	jalr	-180(ra) # 65c <__umodsi3>
    4718:	00ab87b3          	add	a5,s7,a0
    471c:	00050c13          	mv	s8,a0
    4720:	0d098d13          	addi	s10,s3,208
    4724:	000b8913          	mv	s2,s7
    4728:	00fb7e63          	bgeu	s6,a5,4744 <_write_sectors+0xa4>
    472c:	00048593          	mv	a1,s1
    4730:	000b0513          	mv	a0,s6
    4734:	ffffc097          	auipc	ra,0xffffc
    4738:	7e4080e7          	jalr	2020(ra) # f18 <__mulsi3>
    473c:	415b07b3          	sub	a5,s6,s5
    4740:	00f50933          	add	s2,a0,a5
    4744:	22842a03          	lw	s4,552(s0)
    4748:	069a1663          	bne	s4,s1,47b4 <_write_sectors+0x114>
    474c:	22c42583          	lw	a1,556(s0)
    4750:	0d098513          	addi	a0,s3,208
    4754:	ffffd097          	auipc	ra,0xffffd
    4758:	cdc080e7          	jalr	-804(ra) # 1430 <fatfs_lba_of_cluster>
    475c:	018505b3          	add	a1,a0,s8
    4760:	00090693          	mv	a3,s2
    4764:	000c8613          	mv	a2,s9
    4768:	0d098513          	addi	a0,s3,208
    476c:	ffffd097          	auipc	ra,0xffffd
    4770:	d2c080e7          	jalr	-724(ra) # 1498 <fatfs_sector_write>
    4774:	0c050063          	beqz	a0,4834 <_write_sectors+0x194>
    4778:	04c12083          	lw	ra,76(sp)
    477c:	04812403          	lw	s0,72(sp)
    4780:	04412483          	lw	s1,68(sp)
    4784:	03c12983          	lw	s3,60(sp)
    4788:	03812a03          	lw	s4,56(sp)
    478c:	03412a83          	lw	s5,52(sp)
    4790:	03012b03          	lw	s6,48(sp)
    4794:	02c12b83          	lw	s7,44(sp)
    4798:	02812c03          	lw	s8,40(sp)
    479c:	02412c83          	lw	s9,36(sp)
    47a0:	02012d03          	lw	s10,32(sp)
    47a4:	00090513          	mv	a0,s2
    47a8:	04012903          	lw	s2,64(sp)
    47ac:	05010113          	addi	sp,sp,80
    47b0:	00008067          	ret
    47b4:	036ae663          	bltu	s5,s6,47e0 <_write_sectors+0x140>
    47b8:	001a0793          	addi	a5,s4,1
    47bc:	02979263          	bne	a5,s1,47e0 <_write_sectors+0x140>
    47c0:	22c42583          	lw	a1,556(s0)
    47c4:	fff00a93          	li	s5,-1
    47c8:	029a6263          	bltu	s4,s1,47ec <_write_sectors+0x14c>
    47cc:	fff00793          	li	a5,-1
    47d0:	02f58c63          	beq	a1,a5,4808 <_write_sectors+0x168>
    47d4:	22b42623          	sw	a1,556(s0)
    47d8:	22942423          	sw	s1,552(s0)
    47dc:	f75ff06f          	j	4750 <_write_sectors+0xb0>
    47e0:	00442583          	lw	a1,4(s0)
    47e4:	00000a13          	li	s4,0
    47e8:	fddff06f          	j	47c4 <_write_sectors+0x124>
    47ec:	0d098513          	addi	a0,s3,208
    47f0:	00b12623          	sw	a1,12(sp)
    47f4:	fffff097          	auipc	ra,0xfffff
    47f8:	920080e7          	jalr	-1760(ra) # 3114 <fatfs_find_next_cluster>
    47fc:	00c12583          	lw	a1,12(sp)
    4800:	00b12e23          	sw	a1,28(sp)
    4804:	03551c63          	bne	a0,s5,483c <_write_sectors+0x19c>
    4808:	000d4583          	lbu	a1,0(s10)
    480c:	fff58513          	addi	a0,a1,-1
    4810:	01750533          	add	a0,a0,s7
    4814:	ffffc097          	auipc	ra,0xffffc
    4818:	e00080e7          	jalr	-512(ra) # 614 <__udivsi3>
    481c:	00050613          	mv	a2,a0
    4820:	01c10593          	addi	a1,sp,28
    4824:	0d098513          	addi	a0,s3,208
    4828:	00000097          	auipc	ra,0x0
    482c:	da8080e7          	jalr	-600(ra) # 45d0 <fatfs_add_free_space>
    4830:	00051c63          	bnez	a0,4848 <_write_sectors+0x1a8>
    4834:	00000913          	li	s2,0
    4838:	f41ff06f          	j	4778 <_write_sectors+0xd8>
    483c:	001a0a13          	addi	s4,s4,1
    4840:	00050593          	mv	a1,a0
    4844:	f85ff06f          	j	47c8 <_write_sectors+0x128>
    4848:	01c12583          	lw	a1,28(sp)
    484c:	f89ff06f          	j	47d4 <_write_sectors+0x134>

00004850 <fl_fflush>:
    4850:	000067b7          	lui	a5,0x6
    4854:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    4858:	ff010113          	addi	sp,sp,-16
    485c:	00812423          	sw	s0,8(sp)
    4860:	00112623          	sw	ra,12(sp)
    4864:	00912223          	sw	s1,4(sp)
    4868:	00050413          	mv	s0,a0
    486c:	00079663          	bnez	a5,4878 <fl_fflush+0x28>
    4870:	ffffd097          	auipc	ra,0xffffd
    4874:	e7c080e7          	jalr	-388(ra) # 16ec <fl_init>
    4878:	04040863          	beqz	s0,48c8 <fl_fflush+0x78>
    487c:	0000a7b7          	lui	a5,0xa
    4880:	0d078713          	addi	a4,a5,208 # a0d0 <_fs>
    4884:	03c72703          	lw	a4,60(a4)
    4888:	0d078493          	addi	s1,a5,208
    488c:	00070463          	beqz	a4,4894 <fl_fflush+0x44>
    4890:	000700e7          	jalr	a4
    4894:	43442783          	lw	a5,1076(s0)
    4898:	02078263          	beqz	a5,48bc <fl_fflush+0x6c>
    489c:	43042583          	lw	a1,1072(s0)
    48a0:	00100693          	li	a3,1
    48a4:	23040613          	addi	a2,s0,560
    48a8:	00040513          	mv	a0,s0
    48ac:	00000097          	auipc	ra,0x0
    48b0:	df4080e7          	jalr	-524(ra) # 46a0 <_write_sectors>
    48b4:	00050463          	beqz	a0,48bc <fl_fflush+0x6c>
    48b8:	42042a23          	sw	zero,1076(s0)
    48bc:	0404a783          	lw	a5,64(s1)
    48c0:	00078463          	beqz	a5,48c8 <fl_fflush+0x78>
    48c4:	000780e7          	jalr	a5
    48c8:	00c12083          	lw	ra,12(sp)
    48cc:	00812403          	lw	s0,8(sp)
    48d0:	00412483          	lw	s1,4(sp)
    48d4:	00000513          	li	a0,0
    48d8:	01010113          	addi	sp,sp,16
    48dc:	00008067          	ret

000048e0 <fl_fclose>:
    48e0:	000067b7          	lui	a5,0x6
    48e4:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    48e8:	ff010113          	addi	sp,sp,-16
    48ec:	00812423          	sw	s0,8(sp)
    48f0:	00112623          	sw	ra,12(sp)
    48f4:	00912223          	sw	s1,4(sp)
    48f8:	01212023          	sw	s2,0(sp)
    48fc:	00050413          	mv	s0,a0
    4900:	00079663          	bnez	a5,490c <fl_fclose+0x2c>
    4904:	ffffd097          	auipc	ra,0xffffd
    4908:	de8080e7          	jalr	-536(ra) # 16ec <fl_init>
    490c:	08040e63          	beqz	s0,49a8 <fl_fclose+0xc8>
    4910:	0000a4b7          	lui	s1,0xa
    4914:	0d048793          	addi	a5,s1,208 # a0d0 <_fs>
    4918:	03c7a783          	lw	a5,60(a5)
    491c:	0d048913          	addi	s2,s1,208
    4920:	00078463          	beqz	a5,4928 <fl_fclose+0x48>
    4924:	000780e7          	jalr	a5
    4928:	00040513          	mv	a0,s0
    492c:	00000097          	auipc	ra,0x0
    4930:	f24080e7          	jalr	-220(ra) # 4850 <fl_fflush>
    4934:	01042783          	lw	a5,16(s0)
    4938:	00078e63          	beqz	a5,4954 <fl_fclose+0x74>
    493c:	00c42683          	lw	a3,12(s0)
    4940:	00042583          	lw	a1,0(s0)
    4944:	21c40613          	addi	a2,s0,540
    4948:	0d048513          	addi	a0,s1,208
    494c:	fffff097          	auipc	ra,0xfffff
    4950:	01c080e7          	jalr	28(ra) # 3968 <fatfs_update_file_length>
    4954:	fff00793          	li	a5,-1
    4958:	42f42823          	sw	a5,1072(s0)
    495c:	00040513          	mv	a0,s0
    4960:	00042423          	sw	zero,8(s0)
    4964:	00042623          	sw	zero,12(s0)
    4968:	00042223          	sw	zero,4(s0)
    496c:	42042a23          	sw	zero,1076(s0)
    4970:	00042823          	sw	zero,16(s0)
    4974:	ffffd097          	auipc	ra,0xffffd
    4978:	a74080e7          	jalr	-1420(ra) # 13e8 <_free_file>
    497c:	0d048513          	addi	a0,s1,208
    4980:	ffffe097          	auipc	ra,0xffffe
    4984:	6c0080e7          	jalr	1728(ra) # 3040 <fatfs_fat_purge>
    4988:	04092783          	lw	a5,64(s2)
    498c:	00078e63          	beqz	a5,49a8 <fl_fclose+0xc8>
    4990:	00812403          	lw	s0,8(sp)
    4994:	00c12083          	lw	ra,12(sp)
    4998:	00412483          	lw	s1,4(sp)
    499c:	00012903          	lw	s2,0(sp)
    49a0:	01010113          	addi	sp,sp,16
    49a4:	00078067          	jr	a5
    49a8:	00c12083          	lw	ra,12(sp)
    49ac:	00812403          	lw	s0,8(sp)
    49b0:	00412483          	lw	s1,4(sp)
    49b4:	00012903          	lw	s2,0(sp)
    49b8:	01010113          	addi	sp,sp,16
    49bc:	00008067          	ret

000049c0 <fl_fread>:
    49c0:	fd010113          	addi	sp,sp,-48
    49c4:	01512a23          	sw	s5,20(sp)
    49c8:	00050a93          	mv	s5,a0
    49cc:	00058513          	mv	a0,a1
    49d0:	00060593          	mv	a1,a2
    49d4:	02812423          	sw	s0,40(sp)
    49d8:	02912223          	sw	s1,36(sp)
    49dc:	02112623          	sw	ra,44(sp)
    49e0:	03212023          	sw	s2,32(sp)
    49e4:	01312e23          	sw	s3,28(sp)
    49e8:	01412c23          	sw	s4,24(sp)
    49ec:	01612823          	sw	s6,16(sp)
    49f0:	01712623          	sw	s7,12(sp)
    49f4:	01812423          	sw	s8,8(sp)
    49f8:	01912223          	sw	s9,4(sp)
    49fc:	00068493          	mv	s1,a3
    4a00:	ffffc097          	auipc	ra,0xffffc
    4a04:	518080e7          	jalr	1304(ra) # f18 <__mulsi3>
    4a08:	000067b7          	lui	a5,0x6
    4a0c:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    4a10:	00050413          	mv	s0,a0
    4a14:	00079663          	bnez	a5,4a20 <fl_fread+0x60>
    4a18:	ffffd097          	auipc	ra,0xffffd
    4a1c:	cd4080e7          	jalr	-812(ra) # 16ec <fl_init>
    4a20:	120a8e63          	beqz	s5,4b5c <fl_fread+0x19c>
    4a24:	12048c63          	beqz	s1,4b5c <fl_fread+0x19c>
    4a28:	4384c783          	lbu	a5,1080(s1)
    4a2c:	0017f793          	andi	a5,a5,1
    4a30:	12078663          	beqz	a5,4b5c <fl_fread+0x19c>
    4a34:	02040e63          	beqz	s0,4a70 <fl_fread+0xb0>
    4a38:	0084a583          	lw	a1,8(s1)
    4a3c:	00c4a783          	lw	a5,12(s1)
    4a40:	10f5fe63          	bgeu	a1,a5,4b5c <fl_fread+0x19c>
    4a44:	00b40733          	add	a4,s0,a1
    4a48:	00040b13          	mv	s6,s0
    4a4c:	00e7f463          	bgeu	a5,a4,4a54 <fl_fread+0x94>
    4a50:	40b78b33          	sub	s6,a5,a1
    4a54:	0095d993          	srli	s3,a1,0x9
    4a58:	1ff5f913          	andi	s2,a1,511
    4a5c:	00000413          	li	s0,0
    4a60:	23048b93          	addi	s7,s1,560
    4a64:	20000c13          	li	s8,512
    4a68:	1ff00c93          	li	s9,511
    4a6c:	03644e63          	blt	s0,s6,4aa8 <fl_fread+0xe8>
    4a70:	02c12083          	lw	ra,44(sp)
    4a74:	00040513          	mv	a0,s0
    4a78:	02812403          	lw	s0,40(sp)
    4a7c:	02412483          	lw	s1,36(sp)
    4a80:	02012903          	lw	s2,32(sp)
    4a84:	01c12983          	lw	s3,28(sp)
    4a88:	01812a03          	lw	s4,24(sp)
    4a8c:	01412a83          	lw	s5,20(sp)
    4a90:	01012b03          	lw	s6,16(sp)
    4a94:	00c12b83          	lw	s7,12(sp)
    4a98:	00812c03          	lw	s8,8(sp)
    4a9c:	00412c83          	lw	s9,4(sp)
    4aa0:	03010113          	addi	sp,sp,48
    4aa4:	00008067          	ret
    4aa8:	04091463          	bnez	s2,4af0 <fl_fread+0x130>
    4aac:	408b06b3          	sub	a3,s6,s0
    4ab0:	04dcd063          	bge	s9,a3,4af0 <fl_fread+0x130>
    4ab4:	4096d693          	srai	a3,a3,0x9
    4ab8:	008a8633          	add	a2,s5,s0
    4abc:	00098593          	mv	a1,s3
    4ac0:	00048513          	mv	a0,s1
    4ac4:	fffff097          	auipc	ra,0xfffff
    4ac8:	4ec080e7          	jalr	1260(ra) # 3fb0 <_read_sectors>
    4acc:	fa0502e3          	beqz	a0,4a70 <fl_fread+0xb0>
    4ad0:	00951a13          	slli	s4,a0,0x9
    4ad4:	00a989b3          	add	s3,s3,a0
    4ad8:	0084a783          	lw	a5,8(s1)
    4adc:	01440433          	add	s0,s0,s4
    4ae0:	00000913          	li	s2,0
    4ae4:	014787b3          	add	a5,a5,s4
    4ae8:	00f4a423          	sw	a5,8(s1)
    4aec:	f81ff06f          	j	4a6c <fl_fread+0xac>
    4af0:	4304a783          	lw	a5,1072(s1)
    4af4:	03378e63          	beq	a5,s3,4b30 <fl_fread+0x170>
    4af8:	4344a783          	lw	a5,1076(s1)
    4afc:	00078863          	beqz	a5,4b0c <fl_fread+0x14c>
    4b00:	00048513          	mv	a0,s1
    4b04:	00000097          	auipc	ra,0x0
    4b08:	d4c080e7          	jalr	-692(ra) # 4850 <fl_fflush>
    4b0c:	00100693          	li	a3,1
    4b10:	000b8613          	mv	a2,s7
    4b14:	00098593          	mv	a1,s3
    4b18:	00048513          	mv	a0,s1
    4b1c:	fffff097          	auipc	ra,0xfffff
    4b20:	494080e7          	jalr	1172(ra) # 3fb0 <_read_sectors>
    4b24:	f40506e3          	beqz	a0,4a70 <fl_fread+0xb0>
    4b28:	4334a823          	sw	s3,1072(s1)
    4b2c:	4204aa23          	sw	zero,1076(s1)
    4b30:	412c07b3          	sub	a5,s8,s2
    4b34:	408b0a33          	sub	s4,s6,s0
    4b38:	0147d463          	bge	a5,s4,4b40 <fl_fread+0x180>
    4b3c:	00078a13          	mv	s4,a5
    4b40:	000a0613          	mv	a2,s4
    4b44:	012b85b3          	add	a1,s7,s2
    4b48:	008a8533          	add	a0,s5,s0
    4b4c:	ffffc097          	auipc	ra,0xffffc
    4b50:	bb8080e7          	jalr	-1096(ra) # 704 <memcpy>
    4b54:	00198993          	addi	s3,s3,1
    4b58:	f81ff06f          	j	4ad8 <fl_fread+0x118>
    4b5c:	fff00413          	li	s0,-1
    4b60:	f11ff06f          	j	4a70 <fl_fread+0xb0>

00004b64 <fl_fgetc>:
    4b64:	fe010113          	addi	sp,sp,-32
    4b68:	00050693          	mv	a3,a0
    4b6c:	00100613          	li	a2,1
    4b70:	00100593          	li	a1,1
    4b74:	00f10513          	addi	a0,sp,15
    4b78:	00112e23          	sw	ra,28(sp)
    4b7c:	000107a3          	sb	zero,15(sp)
    4b80:	00000097          	auipc	ra,0x0
    4b84:	e40080e7          	jalr	-448(ra) # 49c0 <fl_fread>
    4b88:	00100793          	li	a5,1
    4b8c:	00f51463          	bne	a0,a5,4b94 <fl_fgetc+0x30>
    4b90:	00f14503          	lbu	a0,15(sp)
    4b94:	01c12083          	lw	ra,28(sp)
    4b98:	02010113          	addi	sp,sp,32
    4b9c:	00008067          	ret

00004ba0 <fl_fgets>:
    4ba0:	fe010113          	addi	sp,sp,-32
    4ba4:	00112e23          	sw	ra,28(sp)
    4ba8:	00812c23          	sw	s0,24(sp)
    4bac:	00912a23          	sw	s1,20(sp)
    4bb0:	01212823          	sw	s2,16(sp)
    4bb4:	01312623          	sw	s3,12(sp)
    4bb8:	01412423          	sw	s4,8(sp)
    4bbc:	02b05e63          	blez	a1,4bf8 <fl_fgets+0x58>
    4bc0:	00050493          	mv	s1,a0
    4bc4:	00060993          	mv	s3,a2
    4bc8:	00000413          	li	s0,0
    4bcc:	fff58913          	addi	s2,a1,-1
    4bd0:	00a00a13          	li	s4,10
    4bd4:	01245a63          	bge	s0,s2,4be8 <fl_fgets+0x48>
    4bd8:	00098513          	mv	a0,s3
    4bdc:	00000097          	auipc	ra,0x0
    4be0:	f88080e7          	jalr	-120(ra) # 4b64 <fl_fgetc>
    4be4:	02055e63          	bgez	a0,4c20 <fl_fgets+0x80>
    4be8:	00040863          	beqz	s0,4bf8 <fl_fgets+0x58>
    4bec:	00848433          	add	s0,s1,s0
    4bf0:	00040023          	sb	zero,0(s0)
    4bf4:	0080006f          	j	4bfc <fl_fgets+0x5c>
    4bf8:	00000493          	li	s1,0
    4bfc:	01c12083          	lw	ra,28(sp)
    4c00:	01812403          	lw	s0,24(sp)
    4c04:	01012903          	lw	s2,16(sp)
    4c08:	00c12983          	lw	s3,12(sp)
    4c0c:	00812a03          	lw	s4,8(sp)
    4c10:	00048513          	mv	a0,s1
    4c14:	01412483          	lw	s1,20(sp)
    4c18:	02010113          	addi	sp,sp,32
    4c1c:	00008067          	ret
    4c20:	00140413          	addi	s0,s0,1
    4c24:	008487b3          	add	a5,s1,s0
    4c28:	fea78fa3          	sb	a0,-1(a5)
    4c2c:	fb4514e3          	bne	a0,s4,4bd4 <fl_fgets+0x34>
    4c30:	fbdff06f          	j	4bec <fl_fgets+0x4c>

00004c34 <fl_fwrite>:
    4c34:	fb010113          	addi	sp,sp,-80
    4c38:	00a12423          	sw	a0,8(sp)
    4c3c:	00058513          	mv	a0,a1
    4c40:	00060593          	mv	a1,a2
    4c44:	04912223          	sw	s1,68(sp)
    4c48:	03a12023          	sw	s10,32(sp)
    4c4c:	04112623          	sw	ra,76(sp)
    4c50:	04812423          	sw	s0,72(sp)
    4c54:	05212023          	sw	s2,64(sp)
    4c58:	03312e23          	sw	s3,60(sp)
    4c5c:	03412c23          	sw	s4,56(sp)
    4c60:	03512a23          	sw	s5,52(sp)
    4c64:	03612823          	sw	s6,48(sp)
    4c68:	03712623          	sw	s7,44(sp)
    4c6c:	03812423          	sw	s8,40(sp)
    4c70:	03912223          	sw	s9,36(sp)
    4c74:	01b12e23          	sw	s11,28(sp)
    4c78:	00068d13          	mv	s10,a3
    4c7c:	ffffc097          	auipc	ra,0xffffc
    4c80:	29c080e7          	jalr	668(ra) # f18 <__mulsi3>
    4c84:	00006737          	lui	a4,0x6
    4c88:	f8472703          	lw	a4,-124(a4) # 5f84 <_filelib_init>
    4c8c:	00050493          	mv	s1,a0
    4c90:	00071663          	bnez	a4,4c9c <fl_fwrite+0x68>
    4c94:	ffffd097          	auipc	ra,0xffffd
    4c98:	a58080e7          	jalr	-1448(ra) # 16ec <fl_init>
    4c9c:	040d1463          	bnez	s10,4ce4 <fl_fwrite+0xb0>
    4ca0:	fff00493          	li	s1,-1
    4ca4:	04c12083          	lw	ra,76(sp)
    4ca8:	04812403          	lw	s0,72(sp)
    4cac:	04012903          	lw	s2,64(sp)
    4cb0:	03c12983          	lw	s3,60(sp)
    4cb4:	03812a03          	lw	s4,56(sp)
    4cb8:	03412a83          	lw	s5,52(sp)
    4cbc:	03012b03          	lw	s6,48(sp)
    4cc0:	02c12b83          	lw	s7,44(sp)
    4cc4:	02812c03          	lw	s8,40(sp)
    4cc8:	02412c83          	lw	s9,36(sp)
    4ccc:	02012d03          	lw	s10,32(sp)
    4cd0:	01c12d83          	lw	s11,28(sp)
    4cd4:	00048513          	mv	a0,s1
    4cd8:	04412483          	lw	s1,68(sp)
    4cdc:	05010113          	addi	sp,sp,80
    4ce0:	00008067          	ret
    4ce4:	0000aab7          	lui	s5,0xa
    4ce8:	0d0a8713          	addi	a4,s5,208 # a0d0 <_fs>
    4cec:	03c72703          	lw	a4,60(a4)
    4cf0:	0d0a8a93          	addi	s5,s5,208
    4cf4:	00070463          	beqz	a4,4cfc <fl_fwrite+0xc8>
    4cf8:	000700e7          	jalr	a4
    4cfc:	438d4703          	lbu	a4,1080(s10)
    4d00:	00277693          	andi	a3,a4,2
    4d04:	00069a63          	bnez	a3,4d18 <fl_fwrite+0xe4>
    4d08:	040aa783          	lw	a5,64(s5)
    4d0c:	f8078ae3          	beqz	a5,4ca0 <fl_fwrite+0x6c>
    4d10:	000780e7          	jalr	a5
    4d14:	f8dff06f          	j	4ca0 <fl_fwrite+0x6c>
    4d18:	00477713          	andi	a4,a4,4
    4d1c:	00070663          	beqz	a4,4d28 <fl_fwrite+0xf4>
    4d20:	00cd2703          	lw	a4,12(s10)
    4d24:	00ed2423          	sw	a4,8(s10)
    4d28:	008d2983          	lw	s3,8(s10)
    4d2c:	00000913          	li	s2,0
    4d30:	20000b93          	li	s7,512
    4d34:	0099d413          	srli	s0,s3,0x9
    4d38:	230d0b13          	addi	s6,s10,560
    4d3c:	1ff9f993          	andi	s3,s3,511
    4d40:	1ff00d93          	li	s11,511
    4d44:	fff00c13          	li	s8,-1
    4d48:	06997c63          	bgeu	s2,s1,4dc0 <fl_fwrite+0x18c>
    4d4c:	00812783          	lw	a5,8(sp)
    4d50:	430d2703          	lw	a4,1072(s10)
    4d54:	412486b3          	sub	a3,s1,s2
    4d58:	01278cb3          	add	s9,a5,s2
    4d5c:	08099063          	bnez	s3,4ddc <fl_fwrite+0x1a8>
    4d60:	06ddfe63          	bgeu	s11,a3,4ddc <fl_fwrite+0x1a8>
    4d64:	03870463          	beq	a4,s8,4d8c <fl_fwrite+0x158>
    4d68:	434d2703          	lw	a4,1076(s10)
    4d6c:	00070c63          	beqz	a4,4d84 <fl_fwrite+0x150>
    4d70:	000d0513          	mv	a0,s10
    4d74:	00d12623          	sw	a3,12(sp)
    4d78:	00000097          	auipc	ra,0x0
    4d7c:	ad8080e7          	jalr	-1320(ra) # 4850 <fl_fflush>
    4d80:	00c12683          	lw	a3,12(sp)
    4d84:	438d2823          	sw	s8,1072(s10)
    4d88:	420d2a23          	sw	zero,1076(s10)
    4d8c:	0096d693          	srli	a3,a3,0x9
    4d90:	00040593          	mv	a1,s0
    4d94:	000c8613          	mv	a2,s9
    4d98:	000d0513          	mv	a0,s10
    4d9c:	00000097          	auipc	ra,0x0
    4da0:	904080e7          	jalr	-1788(ra) # 46a0 <_write_sectors>
    4da4:	008d2703          	lw	a4,8(s10)
    4da8:	00951693          	slli	a3,a0,0x9
    4dac:	00d90933          	add	s2,s2,a3
    4db0:	00d70733          	add	a4,a4,a3
    4db4:	00ed2423          	sw	a4,8(s10)
    4db8:	00a40433          	add	s0,s0,a0
    4dbc:	0a051863          	bnez	a0,4e6c <fl_fwrite+0x238>
    4dc0:	008d2703          	lw	a4,8(s10)
    4dc4:	00cd2683          	lw	a3,12(s10)
    4dc8:	0ae6e663          	bltu	a3,a4,4e74 <fl_fwrite+0x240>
    4dcc:	040aa783          	lw	a5,64(s5)
    4dd0:	ec078ae3          	beqz	a5,4ca4 <fl_fwrite+0x70>
    4dd4:	000780e7          	jalr	a5
    4dd8:	ecdff06f          	j	4ca4 <fl_fwrite+0x70>
    4ddc:	413b8a33          	sub	s4,s7,s3
    4de0:	0146f463          	bgeu	a3,s4,4de8 <fl_fwrite+0x1b4>
    4de4:	00068a13          	mv	s4,a3
    4de8:	04e40a63          	beq	s0,a4,4e3c <fl_fwrite+0x208>
    4dec:	434d2703          	lw	a4,1076(s10)
    4df0:	00070863          	beqz	a4,4e00 <fl_fwrite+0x1cc>
    4df4:	000d0513          	mv	a0,s10
    4df8:	00000097          	auipc	ra,0x0
    4dfc:	a58080e7          	jalr	-1448(ra) # 4850 <fl_fflush>
    4e00:	037a0a63          	beq	s4,s7,4e34 <fl_fwrite+0x200>
    4e04:	00100693          	li	a3,1
    4e08:	000b0613          	mv	a2,s6
    4e0c:	00040593          	mv	a1,s0
    4e10:	000d0513          	mv	a0,s10
    4e14:	fffff097          	auipc	ra,0xfffff
    4e18:	19c080e7          	jalr	412(ra) # 3fb0 <_read_sectors>
    4e1c:	00051c63          	bnez	a0,4e34 <fl_fwrite+0x200>
    4e20:	20000613          	li	a2,512
    4e24:	00000593          	li	a1,0
    4e28:	000b0513          	mv	a0,s6
    4e2c:	ffffc097          	auipc	ra,0xffffc
    4e30:	8bc080e7          	jalr	-1860(ra) # 6e8 <memset>
    4e34:	428d2823          	sw	s0,1072(s10)
    4e38:	420d2a23          	sw	zero,1076(s10)
    4e3c:	000a0613          	mv	a2,s4
    4e40:	000c8593          	mv	a1,s9
    4e44:	013b0533          	add	a0,s6,s3
    4e48:	ffffc097          	auipc	ra,0xffffc
    4e4c:	8bc080e7          	jalr	-1860(ra) # 704 <memcpy>
    4e50:	008d2703          	lw	a4,8(s10)
    4e54:	00100793          	li	a5,1
    4e58:	42fd2a23          	sw	a5,1076(s10)
    4e5c:	01470733          	add	a4,a4,s4
    4e60:	01490933          	add	s2,s2,s4
    4e64:	00ed2423          	sw	a4,8(s10)
    4e68:	00140413          	addi	s0,s0,1
    4e6c:	00000993          	li	s3,0
    4e70:	ed9ff06f          	j	4d48 <fl_fwrite+0x114>
    4e74:	00ed2623          	sw	a4,12(s10)
    4e78:	00100713          	li	a4,1
    4e7c:	00ed2823          	sw	a4,16(s10)
    4e80:	f4dff06f          	j	4dcc <fl_fwrite+0x198>

00004e84 <fl_fputc>:
    4e84:	fe010113          	addi	sp,sp,-32
    4e88:	00812c23          	sw	s0,24(sp)
    4e8c:	00058693          	mv	a3,a1
    4e90:	00a107a3          	sb	a0,15(sp)
    4e94:	00050413          	mv	s0,a0
    4e98:	00100613          	li	a2,1
    4e9c:	00100593          	li	a1,1
    4ea0:	00f10513          	addi	a0,sp,15
    4ea4:	00112e23          	sw	ra,28(sp)
    4ea8:	00000097          	auipc	ra,0x0
    4eac:	d8c080e7          	jalr	-628(ra) # 4c34 <fl_fwrite>
    4eb0:	00100793          	li	a5,1
    4eb4:	00f50463          	beq	a0,a5,4ebc <fl_fputc+0x38>
    4eb8:	00050413          	mv	s0,a0
    4ebc:	01c12083          	lw	ra,28(sp)
    4ec0:	00040513          	mv	a0,s0
    4ec4:	01812403          	lw	s0,24(sp)
    4ec8:	02010113          	addi	sp,sp,32
    4ecc:	00008067          	ret

00004ed0 <fl_fputs>:
    4ed0:	fe010113          	addi	sp,sp,-32
    4ed4:	00812c23          	sw	s0,24(sp)
    4ed8:	00112e23          	sw	ra,28(sp)
    4edc:	00050413          	mv	s0,a0
    4ee0:	00b12623          	sw	a1,12(sp)
    4ee4:	ffffc097          	auipc	ra,0xffffc
    4ee8:	844080e7          	jalr	-1980(ra) # 728 <strlen>
    4eec:	00050613          	mv	a2,a0
    4ef0:	00040513          	mv	a0,s0
    4ef4:	01812403          	lw	s0,24(sp)
    4ef8:	00c12683          	lw	a3,12(sp)
    4efc:	01c12083          	lw	ra,28(sp)
    4f00:	00100593          	li	a1,1
    4f04:	02010113          	addi	sp,sp,32
    4f08:	00000317          	auipc	t1,0x0
    4f0c:	d2c30067          	jr	-724(t1) # 4c34 <fl_fwrite>

00004f10 <fatfs_allocate_free_space.part.0>:
    4f10:	02452703          	lw	a4,36(a0)
    4f14:	fd010113          	addi	sp,sp,-48
    4f18:	02812423          	sw	s0,40(sp)
    4f1c:	03212023          	sw	s2,32(sp)
    4f20:	01312e23          	sw	s3,28(sp)
    4f24:	01512a23          	sw	s5,20(sp)
    4f28:	02112623          	sw	ra,44(sp)
    4f2c:	02912223          	sw	s1,36(sp)
    4f30:	01412c23          	sw	s4,24(sp)
    4f34:	fff00793          	li	a5,-1
    4f38:	00050413          	mv	s0,a0
    4f3c:	00058a93          	mv	s5,a1
    4f40:	00060913          	mv	s2,a2
    4f44:	00068993          	mv	s3,a3
    4f48:	00f70863          	beq	a4,a5,4f58 <fatfs_allocate_free_space.part.0+0x48>
    4f4c:	fff00593          	li	a1,-1
    4f50:	fffff097          	auipc	ra,0xfffff
    4f54:	1ac080e7          	jalr	428(ra) # 40fc <fatfs_set_fs_info_next_free_cluster>
    4f58:	00044a03          	lbu	s4,0(s0)
    4f5c:	00098513          	mv	a0,s3
    4f60:	009a1a13          	slli	s4,s4,0x9
    4f64:	000a0593          	mv	a1,s4
    4f68:	ffffb097          	auipc	ra,0xffffb
    4f6c:	6ac080e7          	jalr	1708(ra) # 614 <__udivsi3>
    4f70:	00050493          	mv	s1,a0
    4f74:	00050593          	mv	a1,a0
    4f78:	000a0513          	mv	a0,s4
    4f7c:	ffffc097          	auipc	ra,0xffffc
    4f80:	f9c080e7          	jalr	-100(ra) # f18 <__mulsi3>
    4f84:	00a98463          	beq	s3,a0,4f8c <fatfs_allocate_free_space.part.0+0x7c>
    4f88:	00148493          	addi	s1,s1,1
    4f8c:	060a8463          	beqz	s5,4ff4 <fatfs_allocate_free_space.part.0+0xe4>
    4f90:	00842583          	lw	a1,8(s0)
    4f94:	00c10613          	addi	a2,sp,12
    4f98:	00040513          	mv	a0,s0
    4f9c:	fffff097          	auipc	ra,0xfffff
    4fa0:	218080e7          	jalr	536(ra) # 41b4 <fatfs_find_blank_cluster>
    4fa4:	02050663          	beqz	a0,4fd0 <fatfs_allocate_free_space.part.0+0xc0>
    4fa8:	00100793          	li	a5,1
    4fac:	04f49863          	bne	s1,a5,4ffc <fatfs_allocate_free_space.part.0+0xec>
    4fb0:	00c12483          	lw	s1,12(sp)
    4fb4:	fff00613          	li	a2,-1
    4fb8:	00040513          	mv	a0,s0
    4fbc:	00048593          	mv	a1,s1
    4fc0:	fffff097          	auipc	ra,0xfffff
    4fc4:	314080e7          	jalr	788(ra) # 42d4 <fatfs_fat_set_cluster>
    4fc8:	00100513          	li	a0,1
    4fcc:	00992023          	sw	s1,0(s2)
    4fd0:	02c12083          	lw	ra,44(sp)
    4fd4:	02812403          	lw	s0,40(sp)
    4fd8:	02412483          	lw	s1,36(sp)
    4fdc:	02012903          	lw	s2,32(sp)
    4fe0:	01c12983          	lw	s3,28(sp)
    4fe4:	01812a03          	lw	s4,24(sp)
    4fe8:	01412a83          	lw	s5,20(sp)
    4fec:	03010113          	addi	sp,sp,48
    4ff0:	00008067          	ret
    4ff4:	00092783          	lw	a5,0(s2)
    4ff8:	00f12623          	sw	a5,12(sp)
    4ffc:	00048613          	mv	a2,s1
    5000:	00c10593          	addi	a1,sp,12
    5004:	00040513          	mv	a0,s0
    5008:	fffff097          	auipc	ra,0xfffff
    500c:	5c8080e7          	jalr	1480(ra) # 45d0 <fatfs_add_free_space>
    5010:	00a03533          	snez	a0,a0
    5014:	fbdff06f          	j	4fd0 <fatfs_allocate_free_space.part.0+0xc0>

00005018 <fatfs_allocate_free_space>:
    5018:	00068663          	beqz	a3,5024 <fatfs_allocate_free_space+0xc>
    501c:	00000317          	auipc	t1,0x0
    5020:	ef430067          	jr	-268(t1) # 4f10 <fatfs_allocate_free_space.part.0>
    5024:	00000513          	li	a0,0
    5028:	00008067          	ret

0000502c <fatfs_add_file_entry>:
    502c:	f8010113          	addi	sp,sp,-128
    5030:	00f12623          	sw	a5,12(sp)
    5034:	03852783          	lw	a5,56(a0)
    5038:	06112e23          	sw	ra,124(sp)
    503c:	06812c23          	sw	s0,120(sp)
    5040:	06912a23          	sw	s1,116(sp)
    5044:	07212823          	sw	s2,112(sp)
    5048:	07312623          	sw	s3,108(sp)
    504c:	07412423          	sw	s4,104(sp)
    5050:	07512223          	sw	s5,100(sp)
    5054:	07612023          	sw	s6,96(sp)
    5058:	05712e23          	sw	s7,92(sp)
    505c:	05812c23          	sw	s8,88(sp)
    5060:	05912a23          	sw	s9,84(sp)
    5064:	05a12823          	sw	s10,80(sp)
    5068:	05b12623          	sw	s11,76(sp)
    506c:	00e12423          	sw	a4,8(sp)
    5070:	01012823          	sw	a6,16(sp)
    5074:	2c078e63          	beqz	a5,5350 <fatfs_add_file_entry+0x324>
    5078:	00050413          	mv	s0,a0
    507c:	00060513          	mv	a0,a2
    5080:	00058a93          	mv	s5,a1
    5084:	00060c13          	mv	s8,a2
    5088:	00068b13          	mv	s6,a3
    508c:	ffffd097          	auipc	ra,0xffffd
    5090:	b20080e7          	jalr	-1248(ra) # 1bac <fatfs_lfn_entries_required>
    5094:	00150713          	addi	a4,a0,1
    5098:	00100793          	li	a5,1
    509c:	00050913          	mv	s2,a0
    50a0:	2ae7f863          	bgeu	a5,a4,5350 <fatfs_add_file_entry+0x324>
    50a4:	00000493          	li	s1,0
    50a8:	00000a13          	li	s4,0
    50ac:	00000993          	li	s3,0
    50b0:	00000b93          	li	s7,0
    50b4:	00000c93          	li	s9,0
    50b8:	0e500d13          	li	s10,229
    50bc:	01000d93          	li	s11,16
    50c0:	00000693          	li	a3,0
    50c4:	00048613          	mv	a2,s1
    50c8:	000a8593          	mv	a1,s5
    50cc:	00040513          	mv	a0,s0
    50d0:	ffffe097          	auipc	ra,0xffffe
    50d4:	154080e7          	jalr	340(ra) # 3224 <fatfs_sector_reader>
    50d8:	18050463          	beqz	a0,5260 <fatfs_add_file_entry+0x234>
    50dc:	04440613          	addi	a2,s0,68
    50e0:	000c8713          	mv	a4,s9
    50e4:	00000693          	li	a3,0
    50e8:	00060513          	mv	a0,a2
    50ec:	00e12e23          	sw	a4,28(sp)
    50f0:	00d12c23          	sw	a3,24(sp)
    50f4:	00c12a23          	sw	a2,20(sp)
    50f8:	ffffd097          	auipc	ra,0xffffd
    50fc:	9c4080e7          	jalr	-1596(ra) # 1abc <fatfs_entry_lfn_text>
    5100:	01412603          	lw	a2,20(sp)
    5104:	01812683          	lw	a3,24(sp)
    5108:	01c12703          	lw	a4,28(sp)
    510c:	00050c93          	mv	s9,a0
    5110:	02050c63          	beqz	a0,5148 <fatfs_add_file_entry+0x11c>
    5114:	00071863          	bnez	a4,5124 <fatfs_add_file_entry+0xf8>
    5118:	00068a13          	mv	s4,a3
    511c:	00048993          	mv	s3,s1
    5120:	00100b93          	li	s7,1
    5124:	00170c93          	addi	s9,a4,1
    5128:	00168693          	addi	a3,a3,1
    512c:	0ff6f693          	zext.b	a3,a3
    5130:	02060613          	addi	a2,a2,32
    5134:	01b69663          	bne	a3,s11,5140 <fatfs_add_file_entry+0x114>
    5138:	00148493          	addi	s1,s1,1
    513c:	f85ff06f          	j	50c0 <fatfs_add_file_entry+0x94>
    5140:	000c8713          	mv	a4,s9
    5144:	fa5ff06f          	j	50e8 <fatfs_add_file_entry+0xbc>
    5148:	00064583          	lbu	a1,0(a2)
    514c:	11a59463          	bne	a1,s10,5254 <fatfs_add_file_entry+0x228>
    5150:	00071863          	bnez	a4,5160 <fatfs_add_file_entry+0x134>
    5154:	00068a13          	mv	s4,a3
    5158:	00048993          	mv	s3,s1
    515c:	00100b93          	li	s7,1
    5160:	00170c93          	addi	s9,a4,1
    5164:	fd2742e3          	blt	a4,s2,5128 <fatfs_add_file_entry+0xfc>
    5168:	00bb0713          	addi	a4,s6,11
    516c:	000b0793          	mv	a5,s6
    5170:	00000493          	li	s1,0
    5174:	0007c603          	lbu	a2,0(a5)
    5178:	00749693          	slli	a3,s1,0x7
    517c:	0014d493          	srli	s1,s1,0x1
    5180:	00c484b3          	add	s1,s1,a2
    5184:	00178793          	addi	a5,a5,1
    5188:	00d484b3          	add	s1,s1,a3
    518c:	0ff4f493          	zext.b	s1,s1
    5190:	fee792e3          	bne	a5,a4,5174 <fatfs_add_file_entry+0x148>
    5194:	00098b93          	mv	s7,s3
    5198:	00000c93          	li	s9,0
    519c:	00000693          	li	a3,0
    51a0:	000b8613          	mv	a2,s7
    51a4:	000a8593          	mv	a1,s5
    51a8:	00040513          	mv	a0,s0
    51ac:	ffffe097          	auipc	ra,0xffffe
    51b0:	078080e7          	jalr	120(ra) # 3224 <fatfs_sector_reader>
    51b4:	18050e63          	beqz	a0,5350 <fatfs_add_file_entry+0x324>
    51b8:	04440d13          	addi	s10,s0,68
    51bc:	00000713          	li	a4,0
    51c0:	00000793          	li	a5,0
    51c4:	000d0d93          	mv	s11,s10
    51c8:	000c9663          	bnez	s9,51d4 <fatfs_add_file_entry+0x1a8>
    51cc:	153b9a63          	bne	s7,s3,5320 <fatfs_add_file_entry+0x2f4>
    51d0:	15479863          	bne	a5,s4,5320 <fatfs_add_file_entry+0x2f4>
    51d4:	12091063          	bnez	s2,52f4 <fatfs_add_file_entry+0x2c8>
    51d8:	01012703          	lw	a4,16(sp)
    51dc:	00812603          	lw	a2,8(sp)
    51e0:	00c12583          	lw	a1,12(sp)
    51e4:	02010693          	addi	a3,sp,32
    51e8:	000b0513          	mv	a0,s6
    51ec:	ffffd097          	auipc	ra,0xffffd
    51f0:	b18080e7          	jalr	-1256(ra) # 1d04 <fatfs_sfn_create_entry>
    51f4:	02010593          	addi	a1,sp,32
    51f8:	02000613          	li	a2,32
    51fc:	000d0513          	mv	a0,s10
    5200:	ffffb097          	auipc	ra,0xffffb
    5204:	504080e7          	jalr	1284(ra) # 704 <memcpy>
    5208:	03842783          	lw	a5,56(s0)
    520c:	24442503          	lw	a0,580(s0)
    5210:	07812403          	lw	s0,120(sp)
    5214:	07c12083          	lw	ra,124(sp)
    5218:	07412483          	lw	s1,116(sp)
    521c:	07012903          	lw	s2,112(sp)
    5220:	06c12983          	lw	s3,108(sp)
    5224:	06812a03          	lw	s4,104(sp)
    5228:	06412a83          	lw	s5,100(sp)
    522c:	06012b03          	lw	s6,96(sp)
    5230:	05c12b83          	lw	s7,92(sp)
    5234:	05812c03          	lw	s8,88(sp)
    5238:	05412c83          	lw	s9,84(sp)
    523c:	05012d03          	lw	s10,80(sp)
    5240:	000d8593          	mv	a1,s11
    5244:	04c12d83          	lw	s11,76(sp)
    5248:	00100613          	li	a2,1
    524c:	08010113          	addi	sp,sp,128
    5250:	00078067          	jr	a5
    5254:	ee058ee3          	beqz	a1,5150 <fatfs_add_file_entry+0x124>
    5258:	00000b93          	li	s7,0
    525c:	ecdff06f          	j	5128 <fatfs_add_file_entry+0xfc>
    5260:	00842583          	lw	a1,8(s0)
    5264:	02010613          	addi	a2,sp,32
    5268:	00040513          	mv	a0,s0
    526c:	fffff097          	auipc	ra,0xfffff
    5270:	f48080e7          	jalr	-184(ra) # 41b4 <fatfs_find_blank_cluster>
    5274:	0c050e63          	beqz	a0,5350 <fatfs_add_file_entry+0x324>
    5278:	02012d83          	lw	s11,32(sp)
    527c:	000a8593          	mv	a1,s5
    5280:	00040513          	mv	a0,s0
    5284:	000d8613          	mv	a2,s11
    5288:	fffff097          	auipc	ra,0xfffff
    528c:	1d4080e7          	jalr	468(ra) # 445c <fatfs_fat_add_cluster_to_chain>
    5290:	0c050063          	beqz	a0,5350 <fatfs_add_file_entry+0x324>
    5294:	20000613          	li	a2,512
    5298:	00000593          	li	a1,0
    529c:	04440513          	addi	a0,s0,68
    52a0:	ffffb097          	auipc	ra,0xffffb
    52a4:	448080e7          	jalr	1096(ra) # 6e8 <memset>
    52a8:	00000c93          	li	s9,0
    52ac:	00044783          	lbu	a5,0(s0)
    52b0:	00fcea63          	bltu	s9,a5,52c4 <fatfs_add_file_entry+0x298>
    52b4:	ea0b9ae3          	bnez	s7,5168 <fatfs_add_file_entry+0x13c>
    52b8:	00048993          	mv	s3,s1
    52bc:	00000a13          	li	s4,0
    52c0:	ea9ff06f          	j	5168 <fatfs_add_file_entry+0x13c>
    52c4:	00000693          	li	a3,0
    52c8:	000c8613          	mv	a2,s9
    52cc:	000d8593          	mv	a1,s11
    52d0:	00040513          	mv	a0,s0
    52d4:	ffffc097          	auipc	ra,0xffffc
    52d8:	280080e7          	jalr	640(ra) # 1554 <fatfs_write_sector>
    52dc:	06050a63          	beqz	a0,5350 <fatfs_add_file_entry+0x324>
    52e0:	001c8613          	addi	a2,s9,1
    52e4:	0ff67c93          	zext.b	s9,a2
    52e8:	fc5ff06f          	j	52ac <fatfs_add_file_entry+0x280>
    52ec:	001b8b93          	addi	s7,s7,1
    52f0:	eadff06f          	j	519c <fatfs_add_file_entry+0x170>
    52f4:	fff90913          	addi	s2,s2,-1
    52f8:	00048693          	mv	a3,s1
    52fc:	00090613          	mv	a2,s2
    5300:	000d0593          	mv	a1,s10
    5304:	000c0513          	mv	a0,s8
    5308:	00f12a23          	sw	a5,20(sp)
    530c:	ffffd097          	auipc	ra,0xffffd
    5310:	8d0080e7          	jalr	-1840(ra) # 1bdc <fatfs_filename_to_lfn>
    5314:	01412783          	lw	a5,20(sp)
    5318:	00100c93          	li	s9,1
    531c:	00100713          	li	a4,1
    5320:	00178793          	addi	a5,a5,1
    5324:	0ff7f793          	zext.b	a5,a5
    5328:	01000693          	li	a3,16
    532c:	020d0d13          	addi	s10,s10,32
    5330:	e8d79ce3          	bne	a5,a3,51c8 <fatfs_add_file_entry+0x19c>
    5334:	fa070ce3          	beqz	a4,52ec <fatfs_add_file_entry+0x2c0>
    5338:	03842783          	lw	a5,56(s0)
    533c:	24442503          	lw	a0,580(s0)
    5340:	00100613          	li	a2,1
    5344:	000d8593          	mv	a1,s11
    5348:	000780e7          	jalr	a5
    534c:	fa0510e3          	bnez	a0,52ec <fatfs_add_file_entry+0x2c0>
    5350:	07c12083          	lw	ra,124(sp)
    5354:	07812403          	lw	s0,120(sp)
    5358:	07412483          	lw	s1,116(sp)
    535c:	07012903          	lw	s2,112(sp)
    5360:	06c12983          	lw	s3,108(sp)
    5364:	06812a03          	lw	s4,104(sp)
    5368:	06412a83          	lw	s5,100(sp)
    536c:	06012b03          	lw	s6,96(sp)
    5370:	05c12b83          	lw	s7,92(sp)
    5374:	05812c03          	lw	s8,88(sp)
    5378:	05412c83          	lw	s9,84(sp)
    537c:	05012d03          	lw	s10,80(sp)
    5380:	04c12d83          	lw	s11,76(sp)
    5384:	00000513          	li	a0,0
    5388:	08010113          	addi	sp,sp,128
    538c:	00008067          	ret

00005390 <fl_fopen>:
    5390:	000067b7          	lui	a5,0x6
    5394:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    5398:	fa010113          	addi	sp,sp,-96
    539c:	04812c23          	sw	s0,88(sp)
    53a0:	05412423          	sw	s4,72(sp)
    53a4:	04112e23          	sw	ra,92(sp)
    53a8:	04912a23          	sw	s1,84(sp)
    53ac:	05212823          	sw	s2,80(sp)
    53b0:	05312623          	sw	s3,76(sp)
    53b4:	05512223          	sw	s5,68(sp)
    53b8:	05612023          	sw	s6,64(sp)
    53bc:	03712e23          	sw	s7,60(sp)
    53c0:	03812c23          	sw	s8,56(sp)
    53c4:	03912a23          	sw	s9,52(sp)
    53c8:	00050a13          	mv	s4,a0
    53cc:	00058413          	mv	s0,a1
    53d0:	00079663          	bnez	a5,53dc <fl_fopen+0x4c>
    53d4:	ffffc097          	auipc	ra,0xffffc
    53d8:	318080e7          	jalr	792(ra) # 16ec <fl_init>
    53dc:	000067b7          	lui	a5,0x6
    53e0:	f807a783          	lw	a5,-128(a5) # 5f80 <_filelib_valid>
    53e4:	30078263          	beqz	a5,56e8 <fl_fopen+0x358>
    53e8:	300a0063          	beqz	s4,56e8 <fl_fopen+0x358>
    53ec:	10040463          	beqz	s0,54f4 <fl_fopen+0x164>
    53f0:	00040513          	mv	a0,s0
    53f4:	ffffb097          	auipc	ra,0xffffb
    53f8:	334080e7          	jalr	820(ra) # 728 <strlen>
    53fc:	00000493          	li	s1,0
    5400:	00000713          	li	a4,0
    5404:	05700693          	li	a3,87
    5408:	07200613          	li	a2,114
    540c:	07700813          	li	a6,119
    5410:	06100893          	li	a7,97
    5414:	06200313          	li	t1,98
    5418:	04100593          	li	a1,65
    541c:	04200e13          	li	t3,66
    5420:	05200e93          	li	t4,82
    5424:	02b00f13          	li	t5,43
    5428:	10a74263          	blt	a4,a0,552c <fl_fopen+0x19c>
    542c:	0000a937          	lui	s2,0xa
    5430:	0d090793          	addi	a5,s2,208 # a0d0 <_fs>
    5434:	0387a783          	lw	a5,56(a5)
    5438:	0d090b13          	addi	s6,s2,208
    543c:	00079463          	bnez	a5,5444 <fl_fopen+0xb4>
    5440:	0d94f493          	andi	s1,s1,217
    5444:	03cb2783          	lw	a5,60(s6)
    5448:	00078463          	beqz	a5,5450 <fl_fopen+0xc0>
    544c:	000780e7          	jalr	a5
    5450:	0014fc13          	andi	s8,s1,1
    5454:	160c1463          	bnez	s8,55bc <fl_fopen+0x22c>
    5458:	0204f793          	andi	a5,s1,32
    545c:	08078463          	beqz	a5,54e4 <fl_fopen+0x154>
    5460:	038b2783          	lw	a5,56(s6)
    5464:	06078a63          	beqz	a5,54d8 <fl_fopen+0x148>
    5468:	ffffc097          	auipc	ra,0xffffc
    546c:	ecc080e7          	jalr	-308(ra) # 1334 <_allocate_file>
    5470:	00050413          	mv	s0,a0
    5474:	06050263          	beqz	a0,54d8 <fl_fopen+0x148>
    5478:	01450b93          	addi	s7,a0,20
    547c:	10400613          	li	a2,260
    5480:	00000593          	li	a1,0
    5484:	000b8513          	mv	a0,s7
    5488:	ffffb097          	auipc	ra,0xffffb
    548c:	260080e7          	jalr	608(ra) # 6e8 <memset>
    5490:	11840a93          	addi	s5,s0,280
    5494:	10400613          	li	a2,260
    5498:	00000593          	li	a1,0
    549c:	000a8513          	mv	a0,s5
    54a0:	ffffb097          	auipc	ra,0xffffb
    54a4:	248080e7          	jalr	584(ra) # 6e8 <memset>
    54a8:	10400713          	li	a4,260
    54ac:	000a8693          	mv	a3,s5
    54b0:	10400613          	li	a2,260
    54b4:	000b8593          	mv	a1,s7
    54b8:	000a0513          	mv	a0,s4
    54bc:	ffffd097          	auipc	ra,0xffffd
    54c0:	d34080e7          	jalr	-716(ra) # 21f0 <fatfs_split_path>
    54c4:	fff00793          	li	a5,-1
    54c8:	10f51863          	bne	a0,a5,55d8 <fl_fopen+0x248>
    54cc:	00040513          	mv	a0,s0
    54d0:	ffffc097          	auipc	ra,0xffffc
    54d4:	f18080e7          	jalr	-232(ra) # 13e8 <_free_file>
    54d8:	000c1663          	bnez	s8,54e4 <fl_fopen+0x154>
    54dc:	0064f793          	andi	a5,s1,6
    54e0:	1e079a63          	bnez	a5,56d4 <fl_fopen+0x344>
    54e4:	00000413          	li	s0,0
    54e8:	040b2783          	lw	a5,64(s6)
    54ec:	00078463          	beqz	a5,54f4 <fl_fopen+0x164>
    54f0:	000780e7          	jalr	a5
    54f4:	05c12083          	lw	ra,92(sp)
    54f8:	00040513          	mv	a0,s0
    54fc:	05812403          	lw	s0,88(sp)
    5500:	05412483          	lw	s1,84(sp)
    5504:	05012903          	lw	s2,80(sp)
    5508:	04c12983          	lw	s3,76(sp)
    550c:	04812a03          	lw	s4,72(sp)
    5510:	04412a83          	lw	s5,68(sp)
    5514:	04012b03          	lw	s6,64(sp)
    5518:	03c12b83          	lw	s7,60(sp)
    551c:	03812c03          	lw	s8,56(sp)
    5520:	03412c83          	lw	s9,52(sp)
    5524:	06010113          	addi	sp,sp,96
    5528:	00008067          	ret
    552c:	00e407b3          	add	a5,s0,a4
    5530:	0007c783          	lbu	a5,0(a5)
    5534:	04d78463          	beq	a5,a3,557c <fl_fopen+0x1ec>
    5538:	02f6e463          	bltu	a3,a5,5560 <fl_fopen+0x1d0>
    553c:	04b78463          	beq	a5,a1,5584 <fl_fopen+0x1f4>
    5540:	00f5e863          	bltu	a1,a5,5550 <fl_fopen+0x1c0>
    5544:	05e78463          	beq	a5,t5,558c <fl_fopen+0x1fc>
    5548:	00170713          	addi	a4,a4,1
    554c:	eddff06f          	j	5428 <fl_fopen+0x98>
    5550:	03c78063          	beq	a5,t3,5570 <fl_fopen+0x1e0>
    5554:	ffd79ae3          	bne	a5,t4,5548 <fl_fopen+0x1b8>
    5558:	0014e493          	ori	s1,s1,1
    555c:	fedff06f          	j	5548 <fl_fopen+0x1b8>
    5560:	fec78ce3          	beq	a5,a2,5558 <fl_fopen+0x1c8>
    5564:	00f66a63          	bltu	a2,a5,5578 <fl_fopen+0x1e8>
    5568:	01178e63          	beq	a5,a7,5584 <fl_fopen+0x1f4>
    556c:	fc679ee3          	bne	a5,t1,5548 <fl_fopen+0x1b8>
    5570:	0084e493          	ori	s1,s1,8
    5574:	fd5ff06f          	j	5548 <fl_fopen+0x1b8>
    5578:	fd0798e3          	bne	a5,a6,5548 <fl_fopen+0x1b8>
    557c:	0324e493          	ori	s1,s1,50
    5580:	fc9ff06f          	j	5548 <fl_fopen+0x1b8>
    5584:	0264e493          	ori	s1,s1,38
    5588:	fc1ff06f          	j	5548 <fl_fopen+0x1b8>
    558c:	0014f793          	andi	a5,s1,1
    5590:	00078663          	beqz	a5,559c <fl_fopen+0x20c>
    5594:	0024e493          	ori	s1,s1,2
    5598:	fb1ff06f          	j	5548 <fl_fopen+0x1b8>
    559c:	0024f793          	andi	a5,s1,2
    55a0:	00078663          	beqz	a5,55ac <fl_fopen+0x21c>
    55a4:	0314e493          	ori	s1,s1,49
    55a8:	fa1ff06f          	j	5548 <fl_fopen+0x1b8>
    55ac:	0044f793          	andi	a5,s1,4
    55b0:	f8078ce3          	beqz	a5,5548 <fl_fopen+0x1b8>
    55b4:	0274e493          	ori	s1,s1,39
    55b8:	f91ff06f          	j	5548 <fl_fopen+0x1b8>
    55bc:	000a0513          	mv	a0,s4
    55c0:	ffffe097          	auipc	ra,0xffffe
    55c4:	15c080e7          	jalr	348(ra) # 371c <_open_file>
    55c8:	00050413          	mv	s0,a0
    55cc:	e80506e3          	beqz	a0,5458 <fl_fopen+0xc8>
    55d0:	42940c23          	sb	s1,1080(s0)
    55d4:	f15ff06f          	j	54e8 <fl_fopen+0x158>
    55d8:	00040513          	mv	a0,s0
    55dc:	ffffd097          	auipc	ra,0xffffd
    55e0:	e64080e7          	jalr	-412(ra) # 2440 <_check_file_open>
    55e4:	00050993          	mv	s3,a0
    55e8:	ee0512e3          	bnez	a0,54cc <fl_fopen+0x13c>
    55ec:	01444783          	lbu	a5,20(s0)
    55f0:	0a079a63          	bnez	a5,56a4 <fl_fopen+0x314>
    55f4:	008b2783          	lw	a5,8(s6)
    55f8:	00f42023          	sw	a5,0(s0)
    55fc:	00042583          	lw	a1,0(s0)
    5600:	01010693          	addi	a3,sp,16
    5604:	000a8613          	mv	a2,s5
    5608:	0d090513          	addi	a0,s2,208
    560c:	ffffe097          	auipc	ra,0xffffe
    5610:	d58080e7          	jalr	-680(ra) # 3364 <fatfs_get_file_entry>
    5614:	00100793          	li	a5,1
    5618:	eaf50ae3          	beq	a0,a5,54cc <fl_fopen+0x13c>
    561c:	00042223          	sw	zero,4(s0)
    5620:	00100693          	li	a3,1
    5624:	00440613          	addi	a2,s0,4
    5628:	00100593          	li	a1,1
    562c:	0d090513          	addi	a0,s2,208
    5630:	00000097          	auipc	ra,0x0
    5634:	8e0080e7          	jalr	-1824(ra) # 4f10 <fatfs_allocate_free_space.part.0>
    5638:	e8050ae3          	beqz	a0,54cc <fl_fopen+0x13c>
    563c:	00002cb7          	lui	s9,0x2
    5640:	21c40b93          	addi	s7,s0,540
    5644:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_init+0x7>
    5648:	000a8593          	mv	a1,s5
    564c:	00410513          	addi	a0,sp,4
    5650:	ffffc097          	auipc	ra,0xffffc
    5654:	758080e7          	jalr	1880(ra) # 1da8 <fatfs_lfn_create_sfn>
    5658:	06098263          	beqz	s3,56bc <fl_fopen+0x32c>
    565c:	00098613          	mv	a2,s3
    5660:	00410593          	addi	a1,sp,4
    5664:	000b8513          	mv	a0,s7
    5668:	ffffd097          	auipc	ra,0xffffd
    566c:	8b8080e7          	jalr	-1864(ra) # 1f20 <fatfs_lfn_generate_tail>
    5670:	00042583          	lw	a1,0(s0)
    5674:	000b8613          	mv	a2,s7
    5678:	0d090513          	addi	a0,s2,208
    567c:	ffffe097          	auipc	ra,0xffffe
    5680:	218080e7          	jalr	536(ra) # 3894 <fatfs_sfn_exists>
    5684:	06050663          	beqz	a0,56f0 <fl_fopen+0x360>
    5688:	00198993          	addi	s3,s3,1
    568c:	fb999ee3          	bne	s3,s9,5648 <fl_fopen+0x2b8>
    5690:	00442583          	lw	a1,4(s0)
    5694:	0d090513          	addi	a0,s2,208
    5698:	fffff097          	auipc	ra,0xfffff
    569c:	d54080e7          	jalr	-684(ra) # 43ec <fatfs_free_cluster_chain>
    56a0:	e2dff06f          	j	54cc <fl_fopen+0x13c>
    56a4:	00040593          	mv	a1,s0
    56a8:	000b8513          	mv	a0,s7
    56ac:	ffffe097          	auipc	ra,0xffffe
    56b0:	e98080e7          	jalr	-360(ra) # 3544 <_open_directory>
    56b4:	f40514e3          	bnez	a0,55fc <fl_fopen+0x26c>
    56b8:	e15ff06f          	j	54cc <fl_fopen+0x13c>
    56bc:	00b00613          	li	a2,11
    56c0:	00410593          	addi	a1,sp,4
    56c4:	000b8513          	mv	a0,s7
    56c8:	ffffb097          	auipc	ra,0xffffb
    56cc:	03c080e7          	jalr	60(ra) # 704 <memcpy>
    56d0:	fa1ff06f          	j	5670 <fl_fopen+0x2e0>
    56d4:	000a0513          	mv	a0,s4
    56d8:	ffffe097          	auipc	ra,0xffffe
    56dc:	044080e7          	jalr	68(ra) # 371c <_open_file>
    56e0:	00050413          	mv	s0,a0
    56e4:	0640006f          	j	5748 <fl_fopen+0x3b8>
    56e8:	00000413          	li	s0,0
    56ec:	e09ff06f          	j	54f4 <fl_fopen+0x164>
    56f0:	00442703          	lw	a4,4(s0)
    56f4:	00042583          	lw	a1,0(s0)
    56f8:	00000813          	li	a6,0
    56fc:	00000793          	li	a5,0
    5700:	000b8693          	mv	a3,s7
    5704:	000a8613          	mv	a2,s5
    5708:	0d090513          	addi	a0,s2,208
    570c:	00000097          	auipc	ra,0x0
    5710:	920080e7          	jalr	-1760(ra) # 502c <fatfs_add_file_entry>
    5714:	f6050ee3          	beqz	a0,5690 <fl_fopen+0x300>
    5718:	fff00793          	li	a5,-1
    571c:	00042623          	sw	zero,12(s0)
    5720:	00042423          	sw	zero,8(s0)
    5724:	42f42823          	sw	a5,1072(s0)
    5728:	42042a23          	sw	zero,1076(s0)
    572c:	00042823          	sw	zero,16(s0)
    5730:	22f42423          	sw	a5,552(s0)
    5734:	22f42623          	sw	a5,556(s0)
    5738:	0d090513          	addi	a0,s2,208
    573c:	ffffe097          	auipc	ra,0xffffe
    5740:	904080e7          	jalr	-1788(ra) # 3040 <fatfs_fat_purge>
    5744:	e80c06e3          	beqz	s8,55d0 <fl_fopen+0x240>
    5748:	e80414e3          	bnez	s0,55d0 <fl_fopen+0x240>
    574c:	d99ff06f          	j	54e4 <fl_fopen+0x154>

00005750 <fl_remove>:
    5750:	fe010113          	addi	sp,sp,-32
    5754:	00912a23          	sw	s1,20(sp)
    5758:	0000a4b7          	lui	s1,0xa
    575c:	0d048793          	addi	a5,s1,208 # a0d0 <_fs>
    5760:	03c7a783          	lw	a5,60(a5)
    5764:	01212823          	sw	s2,16(sp)
    5768:	00112e23          	sw	ra,28(sp)
    576c:	00812c23          	sw	s0,24(sp)
    5770:	0d048913          	addi	s2,s1,208
    5774:	00078863          	beqz	a5,5784 <fl_remove+0x34>
    5778:	00a12623          	sw	a0,12(sp)
    577c:	000780e7          	jalr	a5
    5780:	00c12503          	lw	a0,12(sp)
    5784:	000065b7          	lui	a1,0x6
    5788:	ed458593          	addi	a1,a1,-300 # 5ed4 <font+0x3a8>
    578c:	00000097          	auipc	ra,0x0
    5790:	c04080e7          	jalr	-1020(ra) # 5390 <fl_fopen>
    5794:	00050413          	mv	s0,a0
    5798:	02051a63          	bnez	a0,57cc <fl_remove+0x7c>
    579c:	fff00513          	li	a0,-1
    57a0:	04092783          	lw	a5,64(s2)
    57a4:	00078863          	beqz	a5,57b4 <fl_remove+0x64>
    57a8:	00a12623          	sw	a0,12(sp)
    57ac:	000780e7          	jalr	a5
    57b0:	00c12503          	lw	a0,12(sp)
    57b4:	01c12083          	lw	ra,28(sp)
    57b8:	01812403          	lw	s0,24(sp)
    57bc:	01412483          	lw	s1,20(sp)
    57c0:	01012903          	lw	s2,16(sp)
    57c4:	02010113          	addi	sp,sp,32
    57c8:	00008067          	ret
    57cc:	00452583          	lw	a1,4(a0)
    57d0:	0d048513          	addi	a0,s1,208
    57d4:	fffff097          	auipc	ra,0xfffff
    57d8:	c18080e7          	jalr	-1000(ra) # 43ec <fatfs_free_cluster_chain>
    57dc:	fc0500e3          	beqz	a0,579c <fl_remove+0x4c>
    57e0:	00042583          	lw	a1,0(s0)
    57e4:	21c40613          	addi	a2,s0,540
    57e8:	0d048513          	addi	a0,s1,208
    57ec:	ffffe097          	auipc	ra,0xffffe
    57f0:	2d0080e7          	jalr	720(ra) # 3abc <fatfs_mark_file_deleted>
    57f4:	fa0504e3          	beqz	a0,579c <fl_remove+0x4c>
    57f8:	00040513          	mv	a0,s0
    57fc:	fffff097          	auipc	ra,0xfffff
    5800:	0e4080e7          	jalr	228(ra) # 48e0 <fl_fclose>
    5804:	00000513          	li	a0,0
    5808:	f99ff06f          	j	57a0 <fl_remove+0x50>

0000580c <fl_createdirectory>:
    580c:	000067b7          	lui	a5,0x6
    5810:	f847a783          	lw	a5,-124(a5) # 5f84 <_filelib_init>
    5814:	fa010113          	addi	sp,sp,-96
    5818:	05512223          	sw	s5,68(sp)
    581c:	04112e23          	sw	ra,92(sp)
    5820:	04812c23          	sw	s0,88(sp)
    5824:	04912a23          	sw	s1,84(sp)
    5828:	05212823          	sw	s2,80(sp)
    582c:	05312623          	sw	s3,76(sp)
    5830:	05412423          	sw	s4,72(sp)
    5834:	05612023          	sw	s6,64(sp)
    5838:	03712e23          	sw	s7,60(sp)
    583c:	00050a93          	mv	s5,a0
    5840:	00079663          	bnez	a5,584c <fl_createdirectory+0x40>
    5844:	ffffc097          	auipc	ra,0xffffc
    5848:	ea8080e7          	jalr	-344(ra) # 16ec <fl_init>
    584c:	0000a937          	lui	s2,0xa
    5850:	0d090793          	addi	a5,s2,208 # a0d0 <_fs>
    5854:	03c7a783          	lw	a5,60(a5)
    5858:	0d090b13          	addi	s6,s2,208
    585c:	00078463          	beqz	a5,5864 <fl_createdirectory+0x58>
    5860:	000780e7          	jalr	a5
    5864:	ffffc097          	auipc	ra,0xffffc
    5868:	ad0080e7          	jalr	-1328(ra) # 1334 <_allocate_file>
    586c:	00050413          	mv	s0,a0
    5870:	00000493          	li	s1,0
    5874:	08050663          	beqz	a0,5900 <fl_createdirectory+0xf4>
    5878:	01450a13          	addi	s4,a0,20
    587c:	10400613          	li	a2,260
    5880:	00000593          	li	a1,0
    5884:	000a0513          	mv	a0,s4
    5888:	ffffb097          	auipc	ra,0xffffb
    588c:	e60080e7          	jalr	-416(ra) # 6e8 <memset>
    5890:	11840993          	addi	s3,s0,280
    5894:	10400613          	li	a2,260
    5898:	00000593          	li	a1,0
    589c:	00098513          	mv	a0,s3
    58a0:	ffffb097          	auipc	ra,0xffffb
    58a4:	e48080e7          	jalr	-440(ra) # 6e8 <memset>
    58a8:	10400713          	li	a4,260
    58ac:	00098693          	mv	a3,s3
    58b0:	10400613          	li	a2,260
    58b4:	000a0593          	mv	a1,s4
    58b8:	000a8513          	mv	a0,s5
    58bc:	ffffd097          	auipc	ra,0xffffd
    58c0:	934080e7          	jalr	-1740(ra) # 21f0 <fatfs_split_path>
    58c4:	fff00793          	li	a5,-1
    58c8:	00f51a63          	bne	a0,a5,58dc <fl_createdirectory+0xd0>
    58cc:	00040513          	mv	a0,s0
    58d0:	ffffc097          	auipc	ra,0xffffc
    58d4:	b18080e7          	jalr	-1256(ra) # 13e8 <_free_file>
    58d8:	0280006f          	j	5900 <fl_createdirectory+0xf4>
    58dc:	00040513          	mv	a0,s0
    58e0:	ffffd097          	auipc	ra,0xffffd
    58e4:	b60080e7          	jalr	-1184(ra) # 2440 <_check_file_open>
    58e8:	00050493          	mv	s1,a0
    58ec:	04050863          	beqz	a0,593c <fl_createdirectory+0x130>
    58f0:	00040513          	mv	a0,s0
    58f4:	ffffc097          	auipc	ra,0xffffc
    58f8:	af4080e7          	jalr	-1292(ra) # 13e8 <_free_file>
    58fc:	00000493          	li	s1,0
    5900:	040b2783          	lw	a5,64(s6)
    5904:	00078463          	beqz	a5,590c <fl_createdirectory+0x100>
    5908:	000780e7          	jalr	a5
    590c:	05c12083          	lw	ra,92(sp)
    5910:	05812403          	lw	s0,88(sp)
    5914:	05012903          	lw	s2,80(sp)
    5918:	04c12983          	lw	s3,76(sp)
    591c:	04812a03          	lw	s4,72(sp)
    5920:	04412a83          	lw	s5,68(sp)
    5924:	04012b03          	lw	s6,64(sp)
    5928:	03c12b83          	lw	s7,60(sp)
    592c:	00048513          	mv	a0,s1
    5930:	05412483          	lw	s1,84(sp)
    5934:	06010113          	addi	sp,sp,96
    5938:	00008067          	ret
    593c:	01444783          	lbu	a5,20(s0)
    5940:	0c079e63          	bnez	a5,5a1c <fl_createdirectory+0x210>
    5944:	008b2783          	lw	a5,8(s6)
    5948:	00f42023          	sw	a5,0(s0)
    594c:	00042583          	lw	a1,0(s0)
    5950:	01010693          	addi	a3,sp,16
    5954:	00098613          	mv	a2,s3
    5958:	0d090513          	addi	a0,s2,208
    595c:	ffffe097          	auipc	ra,0xffffe
    5960:	a08080e7          	jalr	-1528(ra) # 3364 <fatfs_get_file_entry>
    5964:	00100793          	li	a5,1
    5968:	f6f502e3          	beq	a0,a5,58cc <fl_createdirectory+0xc0>
    596c:	00042223          	sw	zero,4(s0)
    5970:	00100693          	li	a3,1
    5974:	00440613          	addi	a2,s0,4
    5978:	00100593          	li	a1,1
    597c:	0d090513          	addi	a0,s2,208
    5980:	fffff097          	auipc	ra,0xfffff
    5984:	590080e7          	jalr	1424(ra) # 4f10 <fatfs_allocate_free_space.part.0>
    5988:	f60504e3          	beqz	a0,58f0 <fl_createdirectory+0xe4>
    598c:	23040a93          	addi	s5,s0,560
    5990:	20000613          	li	a2,512
    5994:	00000593          	li	a1,0
    5998:	000a8513          	mv	a0,s5
    599c:	ffffb097          	auipc	ra,0xffffb
    59a0:	d4c080e7          	jalr	-692(ra) # 6e8 <memset>
    59a4:	00000a13          	li	s4,0
    59a8:	000b4783          	lbu	a5,0(s6)
    59ac:	08fa4463          	blt	s4,a5,5a34 <fl_createdirectory+0x228>
    59b0:	00002bb7          	lui	s7,0x2
    59b4:	00000a13          	li	s4,0
    59b8:	21c40a93          	addi	s5,s0,540
    59bc:	70fb8b93          	addi	s7,s7,1807 # 270f <fatfs_init+0x7>
    59c0:	00098593          	mv	a1,s3
    59c4:	00410513          	addi	a0,sp,4
    59c8:	ffffc097          	auipc	ra,0xffffc
    59cc:	3e0080e7          	jalr	992(ra) # 1da8 <fatfs_lfn_create_sfn>
    59d0:	080a0463          	beqz	s4,5a58 <fl_createdirectory+0x24c>
    59d4:	000a0613          	mv	a2,s4
    59d8:	00410593          	addi	a1,sp,4
    59dc:	000a8513          	mv	a0,s5
    59e0:	ffffc097          	auipc	ra,0xffffc
    59e4:	540080e7          	jalr	1344(ra) # 1f20 <fatfs_lfn_generate_tail>
    59e8:	00042583          	lw	a1,0(s0)
    59ec:	000a8613          	mv	a2,s5
    59f0:	0d090513          	addi	a0,s2,208
    59f4:	ffffe097          	auipc	ra,0xffffe
    59f8:	ea0080e7          	jalr	-352(ra) # 3894 <fatfs_sfn_exists>
    59fc:	06050a63          	beqz	a0,5a70 <fl_createdirectory+0x264>
    5a00:	001a0a13          	addi	s4,s4,1
    5a04:	fb7a1ee3          	bne	s4,s7,59c0 <fl_createdirectory+0x1b4>
    5a08:	00442583          	lw	a1,4(s0)
    5a0c:	0d090513          	addi	a0,s2,208
    5a10:	fffff097          	auipc	ra,0xfffff
    5a14:	9dc080e7          	jalr	-1572(ra) # 43ec <fatfs_free_cluster_chain>
    5a18:	eb5ff06f          	j	58cc <fl_createdirectory+0xc0>
    5a1c:	00040593          	mv	a1,s0
    5a20:	000a0513          	mv	a0,s4
    5a24:	ffffe097          	auipc	ra,0xffffe
    5a28:	b20080e7          	jalr	-1248(ra) # 3544 <_open_directory>
    5a2c:	f20510e3          	bnez	a0,594c <fl_createdirectory+0x140>
    5a30:	e9dff06f          	j	58cc <fl_createdirectory+0xc0>
    5a34:	00442583          	lw	a1,4(s0)
    5a38:	000a8693          	mv	a3,s5
    5a3c:	000a0613          	mv	a2,s4
    5a40:	0d090513          	addi	a0,s2,208
    5a44:	ffffc097          	auipc	ra,0xffffc
    5a48:	b10080e7          	jalr	-1264(ra) # 1554 <fatfs_write_sector>
    5a4c:	ea0502e3          	beqz	a0,58f0 <fl_createdirectory+0xe4>
    5a50:	001a0a13          	addi	s4,s4,1
    5a54:	f55ff06f          	j	59a8 <fl_createdirectory+0x19c>
    5a58:	00b00613          	li	a2,11
    5a5c:	00410593          	addi	a1,sp,4
    5a60:	000a8513          	mv	a0,s5
    5a64:	ffffb097          	auipc	ra,0xffffb
    5a68:	ca0080e7          	jalr	-864(ra) # 704 <memcpy>
    5a6c:	f7dff06f          	j	59e8 <fl_createdirectory+0x1dc>
    5a70:	00442703          	lw	a4,4(s0)
    5a74:	00042583          	lw	a1,0(s0)
    5a78:	00100813          	li	a6,1
    5a7c:	00000793          	li	a5,0
    5a80:	000a8693          	mv	a3,s5
    5a84:	00098613          	mv	a2,s3
    5a88:	0d090513          	addi	a0,s2,208
    5a8c:	fffff097          	auipc	ra,0xfffff
    5a90:	5a0080e7          	jalr	1440(ra) # 502c <fatfs_add_file_entry>
    5a94:	00050493          	mv	s1,a0
    5a98:	f60508e3          	beqz	a0,5a08 <fl_createdirectory+0x1fc>
    5a9c:	fff00793          	li	a5,-1
    5aa0:	42f42823          	sw	a5,1072(s0)
    5aa4:	22f42423          	sw	a5,552(s0)
    5aa8:	22f42623          	sw	a5,556(s0)
    5aac:	00042623          	sw	zero,12(s0)
    5ab0:	00042423          	sw	zero,8(s0)
    5ab4:	42042a23          	sw	zero,1076(s0)
    5ab8:	00042823          	sw	zero,16(s0)
    5abc:	0d090513          	addi	a0,s2,208
    5ac0:	ffffd097          	auipc	ra,0xffffd
    5ac4:	580080e7          	jalr	1408(ra) # 3040 <fatfs_fat_purge>
    5ac8:	00040513          	mv	a0,s0
    5acc:	ffffc097          	auipc	ra,0xffffc
    5ad0:	91c080e7          	jalr	-1764(ra) # 13e8 <_free_file>
    5ad4:	00100493          	li	s1,1
    5ad8:	e29ff06f          	j	5900 <fl_createdirectory+0xf4>

00005adc <cmd17>:
    5adc:	00000051 00005500                       Q....U..

00005ae4 <cmd16>:
    5ae4:	02000050 00001500                       P.......

00005aec <acmd41>:
    5aec:	00004069 00000100                       i@......

00005af4 <cmd55>:
    5af4:	00000077 00000100                       w.......

00005afc <cmd8>:
    5afc:	01000048 000087aa                       H.......

00005b04 <cmd0>:
    5b04:	00000040 00009500                       @.......

00005b0c <AUDIO>:
    5b0c:	00018000                                ....

00005b10 <DISPLAY>:
    5b10:	00014000                                .@..

00005b14 <BUTTONS>:
    5b14:	00010100                                ....

00005b18 <SDCARD>:
    5b18:	00010080                                ....

00005b1c <UART>:
    5b1c:	00010020                                 ...

00005b20 <OLED_RST>:
    5b20:	00010010                                ....

00005b24 <OLED>:
    5b24:	00010008                                ....

00005b28 <LEDS>:
    5b28:	00010004                                ....

00005b2c <font>:
    5b2c:	00000000 00002f00 00030000 14000003     ...../..........
    5b3c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5b4c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5b5c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5b6c:	00080800 00200000 20000000 02040810     ...... .... ....
    5b7c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5b8c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5b9c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5bac:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5bbc:	00141400 0a110000 01000004 0007052d     ............-...
    5bcc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5bdc:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5bec:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5bfc:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5c0c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5c1c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5c2c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5c3c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5c4c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5c5c:	003f2102 01020000 20000201 00000020     .!?........  ...
    5c6c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5c7c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5c8c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5c9c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5cac:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5cbc:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5ccc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5cdc:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5cec:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5cfc:	043f2100 02010000 00000102 00000000     .!?.............
    5d0c:	00000001 00000003 00000005 00000007     ................
    5d1c:	00000009 0000000e 00000010 00000012     ................
    5d2c:	00000014 00000016 00000018 0000001c     ................
    5d3c:	0000001e 20202020 3d3d3d3d 6f73203d     ....    ===== so
    5d4c:	2073676e 3d3d3d3d 2020203d 000a0a20     ngs =====    ...
    5d5c:	203e6425 000a7325 20656874 6e756f73     %d> %s..the soun
    5d6c:	666f2064 6c697320 65636e65 00000000     d of silence....
    5d7c:	646e7573 62207961 646f6f6c 75732079     sunday bloody su
    5d8c:	7961646e 00000000 6f766e65 6d2d656c     nday....envole-m
    5d9c:	0000696f 73796f62 6e6f6420 63207427     oi..boys don't c
    5dac:	00007972 756f6c62 206e6f73 72696f6e     ry..blouson noir
    5dbc:	00000000 33323130 37363534 42413938     ....0123456789AB
    5dcc:	46454443 00000000 33544146 00000032     CDEF....FAT32...
    5ddc:	31544146 00000036 20544146 61746564     FAT16...FAT deta
    5dec:	3a736c69 00000a0d 70795420 253d2065     ils:.... Type =%
    5dfc:	00000073 6f6f5220 69442074 69462072     s... Root Dir Fi
    5e0c:	20747372 73756c43 20726574 7825203d     rst Cluster = %x
    5e1c:	00000a0d 54414620 67654220 4c206e69     .... FAT Begin L
    5e2c:	3d204142 25783020 000a0d78 756c4320     BA = 0x%x... Clu
    5e3c:	72657473 67654220 4c206e69 3d204142     ster Begin LBA =
    5e4c:	25783020 000a0d78 63655320 73726f74      0x%x... Sectors
    5e5c:	72655020 756c4320 72657473 25203d20      Per Cluster = %
    5e6c:	000a0d64 5f544146 203a5346 6f727245     d...FAT_FS: Erro
    5e7c:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    5e8c:	54414620 74656420 736c6961 64252820      FAT details (%d
    5e9c:	0a0d2129 00000000 69440a0d 74636572     )!........Direct
    5eac:	2079726f 0a0d7325 00000000 3c207325     ory %s......%s <
    5ebc:	3e524944 00000a0d 5b207325 62206425     DIR>....%s [%d b
    5ecc:	73657479 000a0d5d 00000072              ytes]...r...

00005ed8 <items>:
    5ed8:	00005d64 00005d7c 00005d94 00005da0     d]..|]...]...]..
    5ee8:	00005db0                                .]..

00005eec <_cluster_size_table16>:
    5eec:	00007fa8 00000002 00040000 00000004     ................
    5efc:	00080000 00000008 00100000 00000010     ................
    5f0c:	00200000 00000020 00400000 00000040     .. . .....@.@...
    5f1c:	00800000 00000080 00000000 00000000     ................

00005f2c <_cluster_size_table32>:
    5f2c:	00082000 00000001 01000000 00000008     . ..............
    5f3c:	02000000 00000010 04000000 00000020     ............ ...
    5f4c:	ffffffff 00000040 00000000 00000000     ....@...........

00005f5c <sdcard_while_loading_callback>:
    5f5c:	00000000                                ....

00005f60 <back_color>:
	...

00005f61 <front_color>:
    5f61:	                                         ...

00005f64 <cursor_y>:
    5f64:	00000000                                ....

00005f68 <cursor_x>:
    5f68:	00000000                                ....

00005f6c <f_putchar>:
    5f6c:	00000000                                ....

00005f70 <_free_file_list>:
	...

00005f78 <_open_file_list>:
	...

00005f80 <_filelib_valid>:
    5f80:	00000000                                ....

00005f84 <_filelib_init>:
    5f84:	00000000                                ....

Déassemblage de la section .text.startup :

00005f88 <main>:
    5f88:	000067b7          	lui	a5,0x6
    5f8c:	b287a783          	lw	a5,-1240(a5) # 5b28 <LEDS>
    5f90:	fd010113          	addi	sp,sp,-48
    5f94:	02112623          	sw	ra,44(sp)
    5f98:	02812423          	sw	s0,40(sp)
    5f9c:	03212023          	sw	s2,32(sp)
    5fa0:	01312e23          	sw	s3,28(sp)
    5fa4:	01412c23          	sw	s4,24(sp)
    5fa8:	01512a23          	sw	s5,20(sp)
    5fac:	01612823          	sw	s6,16(sp)
    5fb0:	01712623          	sw	s7,12(sp)
    5fb4:	01812423          	sw	s8,8(sp)
    5fb8:	02912223          	sw	s1,36(sp)
    5fbc:	01912223          	sw	s9,4(sp)
    5fc0:	0007a023          	sw	zero,0(a5)
    5fc4:	000017b7          	lui	a5,0x1
    5fc8:	a8c78793          	addi	a5,a5,-1396 # a8c <display_putchar>
    5fcc:	00006737          	lui	a4,0x6
    5fd0:	f6f72623          	sw	a5,-148(a4) # 5f6c <f_putchar>
    5fd4:	ffffb097          	auipc	ra,0xffffb
    5fd8:	944080e7          	jalr	-1724(ra) # 918 <oled_init>
    5fdc:	ffffb097          	auipc	ra,0xffffb
    5fe0:	948080e7          	jalr	-1720(ra) # 924 <oled_fullscreen>
    5fe4:	00000513          	li	a0,0
    5fe8:	ffffb097          	auipc	ra,0xffffb
    5fec:	9d4080e7          	jalr	-1580(ra) # 9bc <oled_clear>
    5ff0:	000067b7          	lui	a5,0x6
    5ff4:	b147a983          	lw	s3,-1260(a5) # 5b14 <BUTTONS>
    5ff8:	00000913          	li	s2,0
    5ffc:	00000413          	li	s0,0
    6000:	00006ab7          	lui	s5,0x6
    6004:	00006b37          	lui	s6,0x6
    6008:	00006bb7          	lui	s7,0x6
    600c:	00500a13          	li	s4,5
    6010:	fff00c13          	li	s8,-1
    6014:	00000593          	li	a1,0
    6018:	00000513          	li	a0,0
    601c:	ffffb097          	auipc	ra,0xffffb
    6020:	a48080e7          	jalr	-1464(ra) # a64 <display_set_cursor>
    6024:	0ff97593          	zext.b	a1,s2
    6028:	07f58513          	addi	a0,a1,127
    602c:	0ff57513          	zext.b	a0,a0
    6030:	ffffb097          	auipc	ra,0xffffb
    6034:	a48080e7          	jalr	-1464(ra) # a78 <display_set_front_back_color>
    6038:	d40a8513          	addi	a0,s5,-704 # 5d40 <font+0x214>
    603c:	00790913          	addi	s2,s2,7
    6040:	ffffb097          	auipc	ra,0xffffb
    6044:	d9c080e7          	jalr	-612(ra) # ddc <printf>
    6048:	ed8b0c93          	addi	s9,s6,-296 # 5ed8 <items>
    604c:	00000493          	li	s1,0
    6050:	06941463          	bne	s0,s1,60b8 <main+0x130>
    6054:	0ff00593          	li	a1,255
    6058:	00000513          	li	a0,0
    605c:	ffffb097          	auipc	ra,0xffffb
    6060:	a1c080e7          	jalr	-1508(ra) # a78 <display_set_front_back_color>
    6064:	000ca603          	lw	a2,0(s9)
    6068:	00048593          	mv	a1,s1
    606c:	d5cb8513          	addi	a0,s7,-676 # 5d5c <font+0x230>
    6070:	00148493          	addi	s1,s1,1
    6074:	ffffb097          	auipc	ra,0xffffb
    6078:	d68080e7          	jalr	-664(ra) # ddc <printf>
    607c:	004c8c93          	addi	s9,s9,4
    6080:	fd4498e3          	bne	s1,s4,6050 <main+0xc8>
    6084:	ffffb097          	auipc	ra,0xffffb
    6088:	b2c080e7          	jalr	-1236(ra) # bb0 <display_refresh>
    608c:	0009a783          	lw	a5,0(s3)
    6090:	0087f793          	andi	a5,a5,8
    6094:	00078463          	beqz	a5,609c <main+0x114>
    6098:	00140413          	addi	s0,s0,1
    609c:	0009a783          	lw	a5,0(s3)
    60a0:	0107f793          	andi	a5,a5,16
    60a4:	02078063          	beqz	a5,60c4 <main+0x13c>
    60a8:	fff40413          	addi	s0,s0,-1
    60ac:	f78414e3          	bne	s0,s8,6014 <main+0x8c>
    60b0:	00400413          	li	s0,4
    60b4:	f61ff06f          	j	6014 <main+0x8c>
    60b8:	00000593          	li	a1,0
    60bc:	0ff00513          	li	a0,255
    60c0:	f9dff06f          	j	605c <main+0xd4>
    60c4:	f54418e3          	bne	s0,s4,6014 <main+0x8c>
    60c8:	00000413          	li	s0,0
    60cc:	f49ff06f          	j	6014 <main+0x8c>
