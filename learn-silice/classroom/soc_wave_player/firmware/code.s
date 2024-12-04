
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00006097          	auipc	ra,0x6
       8:	1f0080e7          	jalr	496(ra) # 61f4 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x55cc>
      20:	000067b7          	lui	a5,0x6
      24:	00812423          	sw	s0,8(sp)
      28:	d747a403          	lw	s0,-652(a5) # 5d74 <AUDIO>
      2c:	00112623          	sw	ra,12(sp)
      30:	00912223          	sw	s1,4(sp)
      34:	00042703          	lw	a4,0(s0)
      38:	00042783          	lw	a5,0(s0)
      3c:	fef70ee3          	beq	a4,a5,38 <clear_audio+0x1c>
      40:	00042483          	lw	s1,0(s0)
      44:	20000613          	li	a2,512
      48:	00000593          	li	a1,0
      4c:	00048513          	mv	a0,s1
      50:	00001097          	auipc	ra,0x1
      54:	8c8080e7          	jalr	-1848(ra) # 918 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	8a8080e7          	jalr	-1880(ra) # 918 <memset>
      78:	00042783          	lw	a5,0(s0)
      7c:	fef48ee3          	beq	s1,a5,78 <clear_audio+0x5c>
      80:	00c12083          	lw	ra,12(sp)
      84:	00812403          	lw	s0,8(sp)
      88:	00412483          	lw	s1,4(sp)
      8c:	01010113          	addi	sp,sp,16
      90:	00008067          	ret

00000094 <openMusic>:
      94:	f7010113          	addi	sp,sp,-144
      98:	000067b7          	lui	a5,0x6
      9c:	08812423          	sw	s0,136(sp)
      a0:	d907a403          	lw	s0,-624(a5) # 5d90 <LEDS>
      a4:	08112623          	sw	ra,140(sp)
      a8:	08912223          	sw	s1,132(sp)
      ac:	09212023          	sw	s2,128(sp)
      b0:	0ff00793          	li	a5,255
      b4:	00f42023          	sw	a5,0(s0)
      b8:	000017b7          	lui	a5,0x1
      bc:	00006737          	lui	a4,0x6
      c0:	cbc78793          	addi	a5,a5,-836 # cbc <display_putchar>
      c4:	1cf72c23          	sw	a5,472(a4) # 61d8 <f_putchar>
      c8:	00058493          	mv	s1,a1
      cc:	00050913          	mv	s2,a0
      d0:	00001097          	auipc	ra,0x1
      d4:	bb8080e7          	jalr	-1096(ra) # c88 <display_framebuffer>
      d8:	00004637          	lui	a2,0x4
      dc:	00000593          	li	a1,0
      e0:	00001097          	auipc	ra,0x1
      e4:	838080e7          	jalr	-1992(ra) # 918 <memset>
      e8:	00001097          	auipc	ra,0x1
      ec:	cf8080e7          	jalr	-776(ra) # de0 <display_refresh>
      f0:	00100793          	li	a5,1
      f4:	00f42023          	sw	a5,0(s0)
      f8:	00000593          	li	a1,0
      fc:	00000513          	li	a0,0
     100:	00001097          	auipc	ra,0x1
     104:	b94080e7          	jalr	-1132(ra) # c94 <display_set_cursor>
     108:	00000593          	li	a1,0
     10c:	0ff00513          	li	a0,255
     110:	00001097          	auipc	ra,0x1
     114:	b98080e7          	jalr	-1128(ra) # ca8 <display_set_front_back_color>
     118:	00001097          	auipc	ra,0x1
     11c:	cc8080e7          	jalr	-824(ra) # de0 <display_refresh>
     120:	00200793          	li	a5,2
     124:	00f42023          	sw	a5,0(s0)
     128:	00090593          	mv	a1,s2
     12c:	00010513          	mv	a0,sp
     130:	00010023          	sb	zero,0(sp)
     134:	00001097          	auipc	ra,0x1
     138:	8c8080e7          	jalr	-1848(ra) # 9fc <strcat>
     13c:	000065b7          	lui	a1,0x6
     140:	fa858593          	addi	a1,a1,-88 # 5fa8 <font+0x214>
     144:	00010513          	mv	a0,sp
     148:	00001097          	auipc	ra,0x1
     14c:	8b4080e7          	jalr	-1868(ra) # 9fc <strcat>
     150:	00048593          	mv	a1,s1
     154:	00010513          	mv	a0,sp
     158:	00001097          	auipc	ra,0x1
     15c:	8a4080e7          	jalr	-1884(ra) # 9fc <strcat>
     160:	00400793          	li	a5,4
     164:	00006537          	lui	a0,0x6
     168:	00010593          	mv	a1,sp
     16c:	00f42023          	sw	a5,0(s0)
     170:	fac50513          	addi	a0,a0,-84 # 5fac <font+0x218>
     174:	00001097          	auipc	ra,0x1
     178:	e98080e7          	jalr	-360(ra) # 100c <printf>
     17c:	00001097          	auipc	ra,0x1
     180:	c64080e7          	jalr	-924(ra) # de0 <display_refresh>
     184:	000065b7          	lui	a1,0x6
     188:	fb858593          	addi	a1,a1,-72 # 5fb8 <font+0x224>
     18c:	00010513          	mv	a0,sp
     190:	00005097          	auipc	ra,0x5
     194:	468080e7          	jalr	1128(ra) # 55f8 <fl_fopen>
     198:	04051063          	bnez	a0,1d8 <openMusic+0x144>
     19c:	00006537          	lui	a0,0x6
     1a0:	00010593          	mv	a1,sp
     1a4:	fbc50513          	addi	a0,a0,-68 # 5fbc <font+0x228>
     1a8:	00001097          	auipc	ra,0x1
     1ac:	e64080e7          	jalr	-412(ra) # 100c <printf>
     1b0:	00001097          	auipc	ra,0x1
     1b4:	c30080e7          	jalr	-976(ra) # de0 <display_refresh>
     1b8:	00800793          	li	a5,8
     1bc:	08c12083          	lw	ra,140(sp)
     1c0:	00f42023          	sw	a5,0(s0)
     1c4:	08812403          	lw	s0,136(sp)
     1c8:	08412483          	lw	s1,132(sp)
     1cc:	08012903          	lw	s2,128(sp)
     1d0:	09010113          	addi	sp,sp,144
     1d4:	00008067          	ret
     1d8:	00050493          	mv	s1,a0
     1dc:	0ff00593          	li	a1,255
     1e0:	00000513          	li	a0,0
     1e4:	00001097          	auipc	ra,0x1
     1e8:	ac4080e7          	jalr	-1340(ra) # ca8 <display_set_front_back_color>
     1ec:	00006537          	lui	a0,0x6
     1f0:	00010593          	mv	a1,sp
     1f4:	fd050513          	addi	a0,a0,-48 # 5fd0 <font+0x23c>
     1f8:	00001097          	auipc	ra,0x1
     1fc:	e14080e7          	jalr	-492(ra) # 100c <printf>
     200:	00001097          	auipc	ra,0x1
     204:	be0080e7          	jalr	-1056(ra) # de0 <display_refresh>
     208:	00000593          	li	a1,0
     20c:	0ff00513          	li	a0,255
     210:	00001097          	auipc	ra,0x1
     214:	a98080e7          	jalr	-1384(ra) # ca8 <display_set_front_back_color>
     218:	00006537          	lui	a0,0x6
     21c:	fe850513          	addi	a0,a0,-24 # 5fe8 <font+0x254>
     220:	00001097          	auipc	ra,0x1
     224:	dec080e7          	jalr	-532(ra) # 100c <printf>
     228:	00001097          	auipc	ra,0x1
     22c:	bb8080e7          	jalr	-1096(ra) # de0 <display_refresh>
     230:	01000793          	li	a5,16
     234:	00f42023          	sw	a5,0(s0)
     238:	00048513          	mv	a0,s1
     23c:	00005097          	auipc	ra,0x5
     240:	93c080e7          	jalr	-1732(ra) # 4b78 <fl_fclose>
     244:	02000793          	li	a5,32
     248:	f75ff06f          	j	1bc <openMusic+0x128>

0000024c <pause>:
     24c:	c0002773          	rdcycle	a4
     250:	c00027f3          	rdcycle	a5
     254:	40e787b3          	sub	a5,a5,a4
     258:	fea7ece3          	bltu	a5,a0,250 <pause+0x4>
     25c:	00008067          	ret

00000260 <sdcard_idle>:
     260:	00008067          	ret

00000264 <sdcard_select>:
     264:	000067b7          	lui	a5,0x6
     268:	d807a783          	lw	a5,-640(a5) # 5d80 <SDCARD>
     26c:	00200713          	li	a4,2
     270:	00e7a023          	sw	a4,0(a5)
     274:	00008067          	ret

00000278 <sdcard_ponder>:
     278:	000066b7          	lui	a3,0x6
     27c:	d806a603          	lw	a2,-640(a3) # 5d80 <SDCARD>
     280:	01000793          	li	a5,16
     284:	00000713          	li	a4,0
     288:	00100693          	li	a3,1
     28c:	00676593          	ori	a1,a4,6
     290:	00b62023          	sw	a1,0(a2) # 4000 <fatfs_list_directory_next+0x180>
     294:	40e68733          	sub	a4,a3,a4
     298:	00000013          	nop
     29c:	fff78793          	addi	a5,a5,-1
     2a0:	fe0796e3          	bnez	a5,28c <sdcard_ponder+0x14>
     2a4:	00008067          	ret

000002a8 <sdcard_unselect>:
     2a8:	000067b7          	lui	a5,0x6
     2ac:	d807a783          	lw	a5,-640(a5) # 5d80 <SDCARD>
     2b0:	00600713          	li	a4,6
     2b4:	00e7a023          	sw	a4,0(a5)
     2b8:	00008067          	ret

000002bc <sdcard_send>:
     2bc:	000067b7          	lui	a5,0x6
     2c0:	d807a783          	lw	a5,-640(a5) # 5d80 <SDCARD>
     2c4:	00655713          	srli	a4,a0,0x6
     2c8:	00277713          	andi	a4,a4,2
     2cc:	00e7a023          	sw	a4,0(a5)
     2d0:	00176713          	ori	a4,a4,1
     2d4:	00e7a023          	sw	a4,0(a5)
     2d8:	00555713          	srli	a4,a0,0x5
     2dc:	00277713          	andi	a4,a4,2
     2e0:	00e7a023          	sw	a4,0(a5)
     2e4:	00176713          	ori	a4,a4,1
     2e8:	00e7a023          	sw	a4,0(a5)
     2ec:	00455713          	srli	a4,a0,0x4
     2f0:	00277713          	andi	a4,a4,2
     2f4:	00e7a023          	sw	a4,0(a5)
     2f8:	00176713          	ori	a4,a4,1
     2fc:	00e7a023          	sw	a4,0(a5)
     300:	00355713          	srli	a4,a0,0x3
     304:	00277713          	andi	a4,a4,2
     308:	00e7a023          	sw	a4,0(a5)
     30c:	00176713          	ori	a4,a4,1
     310:	00e7a023          	sw	a4,0(a5)
     314:	00255713          	srli	a4,a0,0x2
     318:	00277713          	andi	a4,a4,2
     31c:	00e7a023          	sw	a4,0(a5)
     320:	00176713          	ori	a4,a4,1
     324:	00e7a023          	sw	a4,0(a5)
     328:	00155713          	srli	a4,a0,0x1
     32c:	00277713          	andi	a4,a4,2
     330:	00e7a023          	sw	a4,0(a5)
     334:	00176713          	ori	a4,a4,1
     338:	00e7a023          	sw	a4,0(a5)
     33c:	00257713          	andi	a4,a0,2
     340:	00e7a023          	sw	a4,0(a5)
     344:	00151513          	slli	a0,a0,0x1
     348:	00176713          	ori	a4,a4,1
     34c:	00e7a023          	sw	a4,0(a5)
     350:	00257513          	andi	a0,a0,2
     354:	00a7a023          	sw	a0,0(a5)
     358:	00156513          	ori	a0,a0,1
     35c:	00a7a023          	sw	a0,0(a5)
     360:	00200713          	li	a4,2
     364:	00e7a023          	sw	a4,0(a5)
     368:	000067b7          	lui	a5,0x6
     36c:	1c87a783          	lw	a5,456(a5) # 61c8 <sdcard_while_loading_callback>
     370:	00078067          	jr	a5

00000374 <sdcard_read>:
     374:	fd010113          	addi	sp,sp,-48
     378:	fff50793          	addi	a5,a0,-1
     37c:	01312e23          	sw	s3,28(sp)
     380:	00100993          	li	s3,1
     384:	00f999b3          	sll	s3,s3,a5
     388:	000067b7          	lui	a5,0x6
     38c:	01512a23          	sw	s5,20(sp)
     390:	d807aa83          	lw	s5,-640(a5) # 5d80 <SDCARD>
     394:	02812423          	sw	s0,40(sp)
     398:	02912223          	sw	s1,36(sp)
     39c:	03212023          	sw	s2,32(sp)
     3a0:	01412c23          	sw	s4,24(sp)
     3a4:	01612823          	sw	s6,16(sp)
     3a8:	01712623          	sw	s7,12(sp)
     3ac:	01812423          	sw	s8,8(sp)
     3b0:	02112623          	sw	ra,44(sp)
     3b4:	00050493          	mv	s1,a0
     3b8:	00058a13          	mv	s4,a1
     3bc:	0ff00413          	li	s0,255
     3c0:	00000913          	li	s2,0
     3c4:	00300b13          	li	s6,3
     3c8:	00200b93          	li	s7,2
     3cc:	00006c37          	lui	s8,0x6
     3d0:	040a0063          	beqz	s4,410 <sdcard_read+0x9c>
     3d4:	0089f7b3          	and	a5,s3,s0
     3d8:	02079e63          	bnez	a5,414 <sdcard_read+0xa0>
     3dc:	02c12083          	lw	ra,44(sp)
     3e0:	0ff47513          	zext.b	a0,s0
     3e4:	02812403          	lw	s0,40(sp)
     3e8:	02412483          	lw	s1,36(sp)
     3ec:	02012903          	lw	s2,32(sp)
     3f0:	01c12983          	lw	s3,28(sp)
     3f4:	01812a03          	lw	s4,24(sp)
     3f8:	01412a83          	lw	s5,20(sp)
     3fc:	01012b03          	lw	s6,16(sp)
     400:	00c12b83          	lw	s7,12(sp)
     404:	00812c03          	lw	s8,8(sp)
     408:	03010113          	addi	sp,sp,48
     40c:	00008067          	ret
     410:	fc9956e3          	bge	s2,s1,3dc <sdcard_read+0x68>
     414:	016aa023          	sw	s6,0(s5)
     418:	017aa023          	sw	s7,0(s5)
     41c:	000aa783          	lw	a5,0(s5)
     420:	00141413          	slli	s0,s0,0x1
     424:	00190913          	addi	s2,s2,1
     428:	00f46433          	or	s0,s0,a5
     42c:	1c8c2783          	lw	a5,456(s8) # 61c8 <sdcard_while_loading_callback>
     430:	000780e7          	jalr	a5
     434:	f9dff06f          	j	3d0 <sdcard_read+0x5c>

00000438 <sdcard_get>:
     438:	fe010113          	addi	sp,sp,-32
     43c:	00112e23          	sw	ra,28(sp)
     440:	00812c23          	sw	s0,24(sp)
     444:	00912a23          	sw	s1,20(sp)
     448:	00050413          	mv	s0,a0
     44c:	00b12623          	sw	a1,12(sp)
     450:	00000097          	auipc	ra,0x0
     454:	e14080e7          	jalr	-492(ra) # 264 <sdcard_select>
     458:	00c12583          	lw	a1,12(sp)
     45c:	00040513          	mv	a0,s0
     460:	00100493          	li	s1,1
     464:	00000097          	auipc	ra,0x0
     468:	f10080e7          	jalr	-240(ra) # 374 <sdcard_read>
     46c:	00345413          	srli	s0,s0,0x3
     470:	0284c463          	blt	s1,s0,498 <sdcard_get+0x60>
     474:	00a12623          	sw	a0,12(sp)
     478:	00000097          	auipc	ra,0x0
     47c:	e30080e7          	jalr	-464(ra) # 2a8 <sdcard_unselect>
     480:	01c12083          	lw	ra,28(sp)
     484:	01812403          	lw	s0,24(sp)
     488:	00c12503          	lw	a0,12(sp)
     48c:	01412483          	lw	s1,20(sp)
     490:	02010113          	addi	sp,sp,32
     494:	00008067          	ret
     498:	00000593          	li	a1,0
     49c:	00800513          	li	a0,8
     4a0:	00000097          	auipc	ra,0x0
     4a4:	ed4080e7          	jalr	-300(ra) # 374 <sdcard_read>
     4a8:	00148493          	addi	s1,s1,1
     4ac:	fc5ff06f          	j	470 <sdcard_get+0x38>

000004b0 <sdcard_cmd>:
     4b0:	ff010113          	addi	sp,sp,-16
     4b4:	00812423          	sw	s0,8(sp)
     4b8:	00912223          	sw	s1,4(sp)
     4bc:	01212023          	sw	s2,0(sp)
     4c0:	00112623          	sw	ra,12(sp)
     4c4:	00050493          	mv	s1,a0
     4c8:	00000413          	li	s0,0
     4cc:	00000097          	auipc	ra,0x0
     4d0:	d98080e7          	jalr	-616(ra) # 264 <sdcard_select>
     4d4:	00600913          	li	s2,6
     4d8:	008487b3          	add	a5,s1,s0
     4dc:	0007c503          	lbu	a0,0(a5)
     4e0:	00140413          	addi	s0,s0,1
     4e4:	00000097          	auipc	ra,0x0
     4e8:	dd8080e7          	jalr	-552(ra) # 2bc <sdcard_send>
     4ec:	ff2416e3          	bne	s0,s2,4d8 <sdcard_cmd+0x28>
     4f0:	00812403          	lw	s0,8(sp)
     4f4:	00c12083          	lw	ra,12(sp)
     4f8:	00412483          	lw	s1,4(sp)
     4fc:	00012903          	lw	s2,0(sp)
     500:	01010113          	addi	sp,sp,16
     504:	00000317          	auipc	t1,0x0
     508:	da430067          	jr	-604(t1) # 2a8 <sdcard_unselect>

0000050c <sdcard_start_sector>:
     50c:	ff010113          	addi	sp,sp,-16
     510:	00112623          	sw	ra,12(sp)
     514:	00812423          	sw	s0,8(sp)
     518:	00050413          	mv	s0,a0
     51c:	00000097          	auipc	ra,0x0
     520:	d48080e7          	jalr	-696(ra) # 264 <sdcard_select>
     524:	05100513          	li	a0,81
     528:	00000097          	auipc	ra,0x0
     52c:	d94080e7          	jalr	-620(ra) # 2bc <sdcard_send>
     530:	01845513          	srli	a0,s0,0x18
     534:	00000097          	auipc	ra,0x0
     538:	d88080e7          	jalr	-632(ra) # 2bc <sdcard_send>
     53c:	41045513          	srai	a0,s0,0x10
     540:	0ff57513          	zext.b	a0,a0
     544:	00000097          	auipc	ra,0x0
     548:	d78080e7          	jalr	-648(ra) # 2bc <sdcard_send>
     54c:	40845513          	srai	a0,s0,0x8
     550:	0ff57513          	zext.b	a0,a0
     554:	00000097          	auipc	ra,0x0
     558:	d68080e7          	jalr	-664(ra) # 2bc <sdcard_send>
     55c:	0ff47513          	zext.b	a0,s0
     560:	00000097          	auipc	ra,0x0
     564:	d5c080e7          	jalr	-676(ra) # 2bc <sdcard_send>
     568:	05500513          	li	a0,85
     56c:	00000097          	auipc	ra,0x0
     570:	d50080e7          	jalr	-688(ra) # 2bc <sdcard_send>
     574:	00000097          	auipc	ra,0x0
     578:	d34080e7          	jalr	-716(ra) # 2a8 <sdcard_unselect>
     57c:	00812403          	lw	s0,8(sp)
     580:	00c12083          	lw	ra,12(sp)
     584:	00100593          	li	a1,1
     588:	00800513          	li	a0,8
     58c:	01010113          	addi	sp,sp,16
     590:	00000317          	auipc	t1,0x0
     594:	ea830067          	jr	-344(t1) # 438 <sdcard_get>

00000598 <sdcard_read_sector>:
     598:	ff010113          	addi	sp,sp,-16
     59c:	00812423          	sw	s0,8(sp)
     5a0:	00112623          	sw	ra,12(sp)
     5a4:	00912223          	sw	s1,4(sp)
     5a8:	01212023          	sw	s2,0(sp)
     5ac:	00058413          	mv	s0,a1
     5b0:	00000097          	auipc	ra,0x0
     5b4:	f5c080e7          	jalr	-164(ra) # 50c <sdcard_start_sector>
     5b8:	04051863          	bnez	a0,608 <sdcard_read_sector+0x70>
     5bc:	00100593          	li	a1,1
     5c0:	00100513          	li	a0,1
     5c4:	00000097          	auipc	ra,0x0
     5c8:	e74080e7          	jalr	-396(ra) # 438 <sdcard_get>
     5cc:	00000493          	li	s1,0
     5d0:	20000913          	li	s2,512
     5d4:	00000593          	li	a1,0
     5d8:	00800513          	li	a0,8
     5dc:	00000097          	auipc	ra,0x0
     5e0:	e5c080e7          	jalr	-420(ra) # 438 <sdcard_get>
     5e4:	009407b3          	add	a5,s0,s1
     5e8:	00a78023          	sb	a0,0(a5)
     5ec:	00148493          	addi	s1,s1,1
     5f0:	ff2492e3          	bne	s1,s2,5d4 <sdcard_read_sector+0x3c>
     5f4:	00100593          	li	a1,1
     5f8:	01000513          	li	a0,16
     5fc:	20040413          	addi	s0,s0,512
     600:	00000097          	auipc	ra,0x0
     604:	e38080e7          	jalr	-456(ra) # 438 <sdcard_get>
     608:	00c12083          	lw	ra,12(sp)
     60c:	00040513          	mv	a0,s0
     610:	00812403          	lw	s0,8(sp)
     614:	00412483          	lw	s1,4(sp)
     618:	00012903          	lw	s2,0(sp)
     61c:	01010113          	addi	sp,sp,16
     620:	00008067          	ret

00000624 <sdcard_preinit>:
     624:	ff010113          	addi	sp,sp,-16
     628:	000067b7          	lui	a5,0x6
     62c:	00812423          	sw	s0,8(sp)
     630:	d807a403          	lw	s0,-640(a5) # 5d80 <SDCARD>
     634:	00112623          	sw	ra,12(sp)
     638:	00600793          	li	a5,6
     63c:	01313537          	lui	a0,0x1313
     640:	00f42023          	sw	a5,0(s0)
     644:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     648:	00000097          	auipc	ra,0x0
     64c:	c04080e7          	jalr	-1020(ra) # 24c <pause>
     650:	0a000793          	li	a5,160
     654:	00000713          	li	a4,0
     658:	00100693          	li	a3,1
     65c:	00676613          	ori	a2,a4,6
     660:	00c42023          	sw	a2,0(s0)
     664:	fff78793          	addi	a5,a5,-1
     668:	40e68733          	sub	a4,a3,a4
     66c:	fe0798e3          	bnez	a5,65c <sdcard_preinit+0x38>
     670:	00600793          	li	a5,6
     674:	00c12083          	lw	ra,12(sp)
     678:	00f42023          	sw	a5,0(s0)
     67c:	00812403          	lw	s0,8(sp)
     680:	01010113          	addi	sp,sp,16
     684:	00008067          	ret

00000688 <sdcard_init>:
     688:	fe010113          	addi	sp,sp,-32
     68c:	000007b7          	lui	a5,0x0
     690:	00812c23          	sw	s0,24(sp)
     694:	00006737          	lui	a4,0x6
     698:	26078793          	addi	a5,a5,608 # 260 <sdcard_idle>
     69c:	01313437          	lui	s0,0x1313
     6a0:	01212823          	sw	s2,16(sp)
     6a4:	01312623          	sw	s3,12(sp)
     6a8:	00112e23          	sw	ra,28(sp)
     6ac:	00912a23          	sw	s1,20(sp)
     6b0:	1cf72423          	sw	a5,456(a4) # 61c8 <sdcard_while_loading_callback>
     6b4:	00006937          	lui	s2,0x6
     6b8:	0ff00993          	li	s3,255
     6bc:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     6c0:	00000097          	auipc	ra,0x0
     6c4:	f64080e7          	jalr	-156(ra) # 624 <sdcard_preinit>
     6c8:	d6c90513          	addi	a0,s2,-660 # 5d6c <cmd0>
     6cc:	00000097          	auipc	ra,0x0
     6d0:	de4080e7          	jalr	-540(ra) # 4b0 <sdcard_cmd>
     6d4:	00100593          	li	a1,1
     6d8:	00800513          	li	a0,8
     6dc:	00000097          	auipc	ra,0x0
     6e0:	d5c080e7          	jalr	-676(ra) # 438 <sdcard_get>
     6e4:	00050493          	mv	s1,a0
     6e8:	00000097          	auipc	ra,0x0
     6ec:	b90080e7          	jalr	-1136(ra) # 278 <sdcard_ponder>
     6f0:	01349a63          	bne	s1,s3,704 <sdcard_init+0x7c>
     6f4:	00040513          	mv	a0,s0
     6f8:	00000097          	auipc	ra,0x0
     6fc:	b54080e7          	jalr	-1196(ra) # 24c <pause>
     700:	fc1ff06f          	j	6c0 <sdcard_init+0x38>
     704:	00006537          	lui	a0,0x6
     708:	d6450513          	addi	a0,a0,-668 # 5d64 <cmd8>
     70c:	00000097          	auipc	ra,0x0
     710:	da4080e7          	jalr	-604(ra) # 4b0 <sdcard_cmd>
     714:	00100593          	li	a1,1
     718:	02800513          	li	a0,40
     71c:	00000097          	auipc	ra,0x0
     720:	d1c080e7          	jalr	-740(ra) # 438 <sdcard_get>
     724:	001e8437          	lui	s0,0x1e8
     728:	00000097          	auipc	ra,0x0
     72c:	b50080e7          	jalr	-1200(ra) # 278 <sdcard_ponder>
     730:	00006937          	lui	s2,0x6
     734:	000069b7          	lui	s3,0x6
     738:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     73c:	d5c90513          	addi	a0,s2,-676 # 5d5c <cmd55>
     740:	00000097          	auipc	ra,0x0
     744:	d70080e7          	jalr	-656(ra) # 4b0 <sdcard_cmd>
     748:	00100593          	li	a1,1
     74c:	00800513          	li	a0,8
     750:	00000097          	auipc	ra,0x0
     754:	ce8080e7          	jalr	-792(ra) # 438 <sdcard_get>
     758:	00000097          	auipc	ra,0x0
     75c:	b20080e7          	jalr	-1248(ra) # 278 <sdcard_ponder>
     760:	d5498513          	addi	a0,s3,-684 # 5d54 <acmd41>
     764:	00000097          	auipc	ra,0x0
     768:	d4c080e7          	jalr	-692(ra) # 4b0 <sdcard_cmd>
     76c:	00100593          	li	a1,1
     770:	00800513          	li	a0,8
     774:	00000097          	auipc	ra,0x0
     778:	cc4080e7          	jalr	-828(ra) # 438 <sdcard_get>
     77c:	00050493          	mv	s1,a0
     780:	00000097          	auipc	ra,0x0
     784:	af8080e7          	jalr	-1288(ra) # 278 <sdcard_ponder>
     788:	00048a63          	beqz	s1,79c <sdcard_init+0x114>
     78c:	00040513          	mv	a0,s0
     790:	00000097          	auipc	ra,0x0
     794:	abc080e7          	jalr	-1348(ra) # 24c <pause>
     798:	fa5ff06f          	j	73c <sdcard_init+0xb4>
     79c:	00006537          	lui	a0,0x6
     7a0:	d4c50513          	addi	a0,a0,-692 # 5d4c <cmd16>
     7a4:	00000097          	auipc	ra,0x0
     7a8:	d0c080e7          	jalr	-756(ra) # 4b0 <sdcard_cmd>
     7ac:	00100593          	li	a1,1
     7b0:	00800513          	li	a0,8
     7b4:	00000097          	auipc	ra,0x0
     7b8:	c84080e7          	jalr	-892(ra) # 438 <sdcard_get>
     7bc:	01812403          	lw	s0,24(sp)
     7c0:	01c12083          	lw	ra,28(sp)
     7c4:	01412483          	lw	s1,20(sp)
     7c8:	01012903          	lw	s2,16(sp)
     7cc:	00c12983          	lw	s3,12(sp)
     7d0:	02010113          	addi	sp,sp,32
     7d4:	00000317          	auipc	t1,0x0
     7d8:	aa430067          	jr	-1372(t1) # 278 <sdcard_ponder>

000007dc <sdcard_readsector>:
     7dc:	04060863          	beqz	a2,82c <sdcard_readsector+0x50>
     7e0:	ff010113          	addi	sp,sp,-16
     7e4:	00812423          	sw	s0,8(sp)
     7e8:	00912223          	sw	s1,4(sp)
     7ec:	00112623          	sw	ra,12(sp)
     7f0:	00050413          	mv	s0,a0
     7f4:	00a604b3          	add	s1,a2,a0
     7f8:	00941e63          	bne	s0,s1,814 <sdcard_readsector+0x38>
     7fc:	00c12083          	lw	ra,12(sp)
     800:	00812403          	lw	s0,8(sp)
     804:	00412483          	lw	s1,4(sp)
     808:	00100513          	li	a0,1
     80c:	01010113          	addi	sp,sp,16
     810:	00008067          	ret
     814:	00040513          	mv	a0,s0
     818:	00000097          	auipc	ra,0x0
     81c:	d80080e7          	jalr	-640(ra) # 598 <sdcard_read_sector>
     820:	00050593          	mv	a1,a0
     824:	00140413          	addi	s0,s0,1
     828:	fd1ff06f          	j	7f8 <sdcard_readsector+0x1c>
     82c:	00000513          	li	a0,0
     830:	00008067          	ret

00000834 <sdcard_writesector>:
     834:	00000513          	li	a0,0
     838:	00008067          	ret

0000083c <__divsi3>:
     83c:	06054063          	bltz	a0,89c <__umodsi3+0x10>
     840:	0605c663          	bltz	a1,8ac <__umodsi3+0x20>

00000844 <__udivsi3>:
     844:	00058613          	mv	a2,a1
     848:	00050593          	mv	a1,a0
     84c:	fff00513          	li	a0,-1
     850:	02060c63          	beqz	a2,888 <__udivsi3+0x44>
     854:	00100693          	li	a3,1
     858:	00b67a63          	bgeu	a2,a1,86c <__udivsi3+0x28>
     85c:	00c05863          	blez	a2,86c <__udivsi3+0x28>
     860:	00161613          	slli	a2,a2,0x1
     864:	00169693          	slli	a3,a3,0x1
     868:	feb66ae3          	bltu	a2,a1,85c <__udivsi3+0x18>
     86c:	00000513          	li	a0,0
     870:	00c5e663          	bltu	a1,a2,87c <__udivsi3+0x38>
     874:	40c585b3          	sub	a1,a1,a2
     878:	00d56533          	or	a0,a0,a3
     87c:	0016d693          	srli	a3,a3,0x1
     880:	00165613          	srli	a2,a2,0x1
     884:	fe0696e3          	bnez	a3,870 <__udivsi3+0x2c>
     888:	00008067          	ret

0000088c <__umodsi3>:
     88c:	00008293          	mv	t0,ra
     890:	fb5ff0ef          	jal	ra,844 <__udivsi3>
     894:	00058513          	mv	a0,a1
     898:	00028067          	jr	t0
     89c:	40a00533          	neg	a0,a0
     8a0:	0005d863          	bgez	a1,8b0 <__umodsi3+0x24>
     8a4:	40b005b3          	neg	a1,a1
     8a8:	f95ff06f          	j	83c <__divsi3>
     8ac:	40b005b3          	neg	a1,a1
     8b0:	00008293          	mv	t0,ra
     8b4:	f89ff0ef          	jal	ra,83c <__divsi3>
     8b8:	40a00533          	neg	a0,a0
     8bc:	00028067          	jr	t0

000008c0 <__modsi3>:
     8c0:	00008293          	mv	t0,ra
     8c4:	0005ca63          	bltz	a1,8d8 <__modsi3+0x18>
     8c8:	00054c63          	bltz	a0,8e0 <__modsi3+0x20>
     8cc:	f79ff0ef          	jal	ra,844 <__udivsi3>
     8d0:	00058513          	mv	a0,a1
     8d4:	00028067          	jr	t0
     8d8:	40b005b3          	neg	a1,a1
     8dc:	fe0558e3          	bgez	a0,8cc <__modsi3+0xc>
     8e0:	40a00533          	neg	a0,a0
     8e4:	f61ff0ef          	jal	ra,844 <__udivsi3>
     8e8:	40b00533          	neg	a0,a1
     8ec:	00028067          	jr	t0

000008f0 <uart_putchar>:
     8f0:	000067b7          	lui	a5,0x6
     8f4:	d847a783          	lw	a5,-636(a5) # 5d84 <UART>
     8f8:	00a7a023          	sw	a0,0(a5)
     8fc:	c00026f3          	rdcycle	a3
     900:	000027b7          	lui	a5,0x2
     904:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_string_ends_with_slash+0x7>
     908:	c0002773          	rdcycle	a4
     90c:	40d70733          	sub	a4,a4,a3
     910:	fee7fce3          	bgeu	a5,a4,908 <uart_putchar+0x18>
     914:	00008067          	ret

00000918 <memset>:
     918:	00c50633          	add	a2,a0,a2
     91c:	00050793          	mv	a5,a0
     920:	00c79463          	bne	a5,a2,928 <memset+0x10>
     924:	00008067          	ret
     928:	00178793          	addi	a5,a5,1
     92c:	feb78fa3          	sb	a1,-1(a5)
     930:	ff1ff06f          	j	920 <memset+0x8>

00000934 <memcpy>:
     934:	00000793          	li	a5,0
     938:	00c79463          	bne	a5,a2,940 <memcpy+0xc>
     93c:	00008067          	ret
     940:	00f58733          	add	a4,a1,a5
     944:	00074683          	lbu	a3,0(a4)
     948:	00f50733          	add	a4,a0,a5
     94c:	00178793          	addi	a5,a5,1
     950:	00d70023          	sb	a3,0(a4)
     954:	fe5ff06f          	j	938 <memcpy+0x4>

00000958 <strlen>:
     958:	00050793          	mv	a5,a0
     95c:	00000513          	li	a0,0
     960:	00a78733          	add	a4,a5,a0
     964:	00074703          	lbu	a4,0(a4)
     968:	00071463          	bnez	a4,970 <strlen+0x18>
     96c:	00008067          	ret
     970:	00150513          	addi	a0,a0,1
     974:	fedff06f          	j	960 <strlen+0x8>

00000978 <strncmp>:
     978:	00000793          	li	a5,0
     97c:	00c79663          	bne	a5,a2,988 <strncmp+0x10>
     980:	00000513          	li	a0,0
     984:	00008067          	ret
     988:	00f50733          	add	a4,a0,a5
     98c:	00074683          	lbu	a3,0(a4)
     990:	00f58733          	add	a4,a1,a5
     994:	00074703          	lbu	a4,0(a4)
     998:	00e6e863          	bltu	a3,a4,9a8 <strncmp+0x30>
     99c:	00d76a63          	bltu	a4,a3,9b0 <strncmp+0x38>
     9a0:	00178793          	addi	a5,a5,1
     9a4:	fd9ff06f          	j	97c <strncmp+0x4>
     9a8:	fff00513          	li	a0,-1
     9ac:	00008067          	ret
     9b0:	00100513          	li	a0,1
     9b4:	00008067          	ret

000009b8 <strncpy>:
     9b8:	00000793          	li	a5,0
     9bc:	00f61463          	bne	a2,a5,9c4 <strncpy+0xc>
     9c0:	00008067          	ret
     9c4:	00f58733          	add	a4,a1,a5
     9c8:	00074683          	lbu	a3,0(a4)
     9cc:	00f50733          	add	a4,a0,a5
     9d0:	00178793          	addi	a5,a5,1
     9d4:	00d70023          	sb	a3,0(a4)
     9d8:	fe5ff06f          	j	9bc <strncpy+0x4>

000009dc <strcpy>:
     9dc:	0005c783          	lbu	a5,0(a1)
     9e0:	00079663          	bnez	a5,9ec <strcpy+0x10>
     9e4:	00050023          	sb	zero,0(a0)
     9e8:	00008067          	ret
     9ec:	00150513          	addi	a0,a0,1
     9f0:	00158593          	addi	a1,a1,1
     9f4:	fef50fa3          	sb	a5,-1(a0)
     9f8:	fe5ff06f          	j	9dc <strcpy>

000009fc <strcat>:
     9fc:	00050793          	mv	a5,a0
     a00:	0007c683          	lbu	a3,0(a5)
     a04:	00078713          	mv	a4,a5
     a08:	00178793          	addi	a5,a5,1
     a0c:	fe069ae3          	bnez	a3,a00 <strcat+0x4>
     a10:	0005c783          	lbu	a5,0(a1)
     a14:	00158593          	addi	a1,a1,1
     a18:	00170713          	addi	a4,a4,1
     a1c:	fef70fa3          	sb	a5,-1(a4)
     a20:	fe0798e3          	bnez	a5,a10 <strcat+0x14>
     a24:	00008067          	ret

00000a28 <oled_wait>:
     a28:	00000013          	nop
     a2c:	00000013          	nop
     a30:	00000013          	nop
     a34:	00000013          	nop
     a38:	00000013          	nop
     a3c:	00000013          	nop
     a40:	00000013          	nop
     a44:	00008067          	ret

00000a48 <oled_init_mode>:
     a48:	000067b7          	lui	a5,0x6
     a4c:	d887a703          	lw	a4,-632(a5) # 5d88 <OLED_RST>
     a50:	ff010113          	addi	sp,sp,-16
     a54:	00912223          	sw	s1,4(sp)
     a58:	00112623          	sw	ra,12(sp)
     a5c:	00812423          	sw	s0,8(sp)
     a60:	00072023          	sw	zero,0(a4)
     a64:	00050493          	mv	s1,a0
     a68:	00040737          	lui	a4,0x40
     a6c:	00000013          	nop
     a70:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     a74:	fe071ce3          	bnez	a4,a6c <oled_init_mode+0x24>
     a78:	d887a703          	lw	a4,-632(a5)
     a7c:	00100693          	li	a3,1
     a80:	00d72023          	sw	a3,0(a4)
     a84:	00040737          	lui	a4,0x40
     a88:	00000013          	nop
     a8c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     a90:	fe071ce3          	bnez	a4,a88 <oled_init_mode+0x40>
     a94:	d887a783          	lw	a5,-632(a5)
     a98:	0007a023          	sw	zero,0(a5)
     a9c:	000407b7          	lui	a5,0x40
     aa0:	00000013          	nop
     aa4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     aa8:	fe079ce3          	bnez	a5,aa0 <oled_init_mode+0x58>
     aac:	00006737          	lui	a4,0x6
     ab0:	d8c72783          	lw	a5,-628(a4) # 5d8c <OLED>
     ab4:	2af00693          	li	a3,687
     ab8:	00d7a023          	sw	a3,0(a5)
     abc:	000407b7          	lui	a5,0x40
     ac0:	00000013          	nop
     ac4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     ac8:	fe079ce3          	bnez	a5,ac0 <oled_init_mode+0x78>
     acc:	d8c72403          	lw	s0,-628(a4)
     ad0:	2a000793          	li	a5,672
     ad4:	00f42023          	sw	a5,0(s0)
     ad8:	00000097          	auipc	ra,0x0
     adc:	f50080e7          	jalr	-176(ra) # a28 <oled_wait>
     ae0:	4a000793          	li	a5,1184
     ae4:	00048463          	beqz	s1,aec <oled_init_mode+0xa4>
     ae8:	42000793          	li	a5,1056
     aec:	00f42023          	sw	a5,0(s0)
     af0:	00000097          	auipc	ra,0x0
     af4:	f38080e7          	jalr	-200(ra) # a28 <oled_wait>
     af8:	2fd00793          	li	a5,765
     afc:	00f42023          	sw	a5,0(s0)
     b00:	00000097          	auipc	ra,0x0
     b04:	f28080e7          	jalr	-216(ra) # a28 <oled_wait>
     b08:	4b100793          	li	a5,1201
     b0c:	00f42023          	sw	a5,0(s0)
     b10:	00000097          	auipc	ra,0x0
     b14:	f18080e7          	jalr	-232(ra) # a28 <oled_wait>
     b18:	2a200793          	li	a5,674
     b1c:	00f42023          	sw	a5,0(s0)
     b20:	00000097          	auipc	ra,0x0
     b24:	f08080e7          	jalr	-248(ra) # a28 <oled_wait>
     b28:	40000793          	li	a5,1024
     b2c:	00f42023          	sw	a5,0(s0)
     b30:	00812403          	lw	s0,8(sp)
     b34:	00c12083          	lw	ra,12(sp)
     b38:	00412483          	lw	s1,4(sp)
     b3c:	01010113          	addi	sp,sp,16
     b40:	00000317          	auipc	t1,0x0
     b44:	ee830067          	jr	-280(t1) # a28 <oled_wait>

00000b48 <oled_init>:
     b48:	00000513          	li	a0,0
     b4c:	00000317          	auipc	t1,0x0
     b50:	efc30067          	jr	-260(t1) # a48 <oled_init_mode>

00000b54 <oled_fullscreen>:
     b54:	ff010113          	addi	sp,sp,-16
     b58:	000067b7          	lui	a5,0x6
     b5c:	00812423          	sw	s0,8(sp)
     b60:	d8c7a403          	lw	s0,-628(a5) # 5d8c <OLED>
     b64:	00112623          	sw	ra,12(sp)
     b68:	00912223          	sw	s1,4(sp)
     b6c:	01212023          	sw	s2,0(sp)
     b70:	21500793          	li	a5,533
     b74:	00f42023          	sw	a5,0(s0)
     b78:	40000913          	li	s2,1024
     b7c:	00000097          	auipc	ra,0x0
     b80:	eac080e7          	jalr	-340(ra) # a28 <oled_wait>
     b84:	47f00493          	li	s1,1151
     b88:	01242023          	sw	s2,0(s0)
     b8c:	00000097          	auipc	ra,0x0
     b90:	e9c080e7          	jalr	-356(ra) # a28 <oled_wait>
     b94:	00942023          	sw	s1,0(s0)
     b98:	00000097          	auipc	ra,0x0
     b9c:	e90080e7          	jalr	-368(ra) # a28 <oled_wait>
     ba0:	27500793          	li	a5,629
     ba4:	00f42023          	sw	a5,0(s0)
     ba8:	00000097          	auipc	ra,0x0
     bac:	e80080e7          	jalr	-384(ra) # a28 <oled_wait>
     bb0:	01242023          	sw	s2,0(s0)
     bb4:	00000097          	auipc	ra,0x0
     bb8:	e74080e7          	jalr	-396(ra) # a28 <oled_wait>
     bbc:	00942023          	sw	s1,0(s0)
     bc0:	00000097          	auipc	ra,0x0
     bc4:	e68080e7          	jalr	-408(ra) # a28 <oled_wait>
     bc8:	25c00793          	li	a5,604
     bcc:	00f42023          	sw	a5,0(s0)
     bd0:	00812403          	lw	s0,8(sp)
     bd4:	00c12083          	lw	ra,12(sp)
     bd8:	00412483          	lw	s1,4(sp)
     bdc:	00012903          	lw	s2,0(sp)
     be0:	01010113          	addi	sp,sp,16
     be4:	00000317          	auipc	t1,0x0
     be8:	e4430067          	jr	-444(t1) # a28 <oled_wait>

00000bec <oled_clear>:
     bec:	fe010113          	addi	sp,sp,-32
     bf0:	000067b7          	lui	a5,0x6
     bf4:	01312623          	sw	s3,12(sp)
     bf8:	d8c7a983          	lw	s3,-628(a5) # 5d8c <OLED>
     bfc:	00812c23          	sw	s0,24(sp)
     c00:	01212823          	sw	s2,16(sp)
     c04:	00112e23          	sw	ra,28(sp)
     c08:	00912a23          	sw	s1,20(sp)
     c0c:	08000913          	li	s2,128
     c10:	40056413          	ori	s0,a0,1024
     c14:	08000493          	li	s1,128
     c18:	0089a023          	sw	s0,0(s3)
     c1c:	00000097          	auipc	ra,0x0
     c20:	e0c080e7          	jalr	-500(ra) # a28 <oled_wait>
     c24:	0089a023          	sw	s0,0(s3)
     c28:	00000097          	auipc	ra,0x0
     c2c:	e00080e7          	jalr	-512(ra) # a28 <oled_wait>
     c30:	fff48493          	addi	s1,s1,-1
     c34:	0089a023          	sw	s0,0(s3)
     c38:	00000097          	auipc	ra,0x0
     c3c:	df0080e7          	jalr	-528(ra) # a28 <oled_wait>
     c40:	fc049ce3          	bnez	s1,c18 <oled_clear+0x2c>
     c44:	fff90913          	addi	s2,s2,-1
     c48:	fc0916e3          	bnez	s2,c14 <oled_clear+0x28>
     c4c:	01c12083          	lw	ra,28(sp)
     c50:	01812403          	lw	s0,24(sp)
     c54:	01412483          	lw	s1,20(sp)
     c58:	01012903          	lw	s2,16(sp)
     c5c:	00c12983          	lw	s3,12(sp)
     c60:	02010113          	addi	sp,sp,32
     c64:	00008067          	ret

00000c68 <oled_wait>:
     c68:	00000013          	nop
     c6c:	00000013          	nop
     c70:	00000013          	nop
     c74:	00000013          	nop
     c78:	00000013          	nop
     c7c:	00000013          	nop
     c80:	00000013          	nop
     c84:	00008067          	ret

00000c88 <display_framebuffer>:
     c88:	00006537          	lui	a0,0x6
     c8c:	5bc50513          	addi	a0,a0,1468 # 65bc <framebuffer>
     c90:	00008067          	ret

00000c94 <display_set_cursor>:
     c94:	000067b7          	lui	a5,0x6
     c98:	1ca7aa23          	sw	a0,468(a5) # 61d4 <cursor_x>
     c9c:	000067b7          	lui	a5,0x6
     ca0:	1cb7a823          	sw	a1,464(a5) # 61d0 <cursor_y>
     ca4:	00008067          	ret

00000ca8 <display_set_front_back_color>:
     ca8:	000067b7          	lui	a5,0x6
     cac:	1ca786a3          	sb	a0,461(a5) # 61cd <front_color>
     cb0:	000067b7          	lui	a5,0x6
     cb4:	1cb78623          	sb	a1,460(a5) # 61cc <back_color>
     cb8:	00008067          	ret

00000cbc <display_putchar>:
     cbc:	00a00793          	li	a5,10
     cc0:	00006637          	lui	a2,0x6
     cc4:	02f51663          	bne	a0,a5,cf0 <display_putchar+0x34>
     cc8:	00006737          	lui	a4,0x6
     ccc:	1d072783          	lw	a5,464(a4) # 61d0 <cursor_y>
     cd0:	1c062a23          	sw	zero,468(a2) # 61d4 <cursor_x>
     cd4:	00878793          	addi	a5,a5,8
     cd8:	1cf72823          	sw	a5,464(a4)
     cdc:	07f00713          	li	a4,127
     ce0:	00f75663          	bge	a4,a5,cec <display_putchar+0x30>
     ce4:	000067b7          	lui	a5,0x6
     ce8:	1c07a823          	sw	zero,464(a5) # 61d0 <cursor_y>
     cec:	00008067          	ret
     cf0:	ff010113          	addi	sp,sp,-16
     cf4:	00812623          	sw	s0,12(sp)
     cf8:	00912423          	sw	s1,8(sp)
     cfc:	01212223          	sw	s2,4(sp)
     d00:	01f00713          	li	a4,31
     d04:	1d462783          	lw	a5,468(a2)
     d08:	08a75863          	bge	a4,a0,d98 <display_putchar+0xdc>
     d0c:	00006737          	lui	a4,0x6
     d10:	1cc74383          	lbu	t2,460(a4) # 61cc <back_color>
     d14:	00006737          	lui	a4,0x6
     d18:	1cd74403          	lbu	s0,461(a4) # 61cd <front_color>
     d1c:	00006737          	lui	a4,0x6
     d20:	1d072f03          	lw	t5,464(a4) # 61d0 <cursor_y>
     d24:	00251693          	slli	a3,a0,0x2
     d28:	00006737          	lui	a4,0x6
     d2c:	00a686b3          	add	a3,a3,a0
     d30:	d9470713          	addi	a4,a4,-620 # 5d94 <font>
     d34:	00779313          	slli	t1,a5,0x7
     d38:	00006837          	lui	a6,0x6
     d3c:	00d70733          	add	a4,a4,a3
     d40:	28030493          	addi	s1,t1,640
     d44:	00000693          	li	a3,0
     d48:	00100293          	li	t0,1
     d4c:	5bc80813          	addi	a6,a6,1468 # 65bc <framebuffer>
     d50:	00800913          	li	s2,8
     d54:	00d29fb3          	sll	t6,t0,a3
     d58:	00df0eb3          	add	t4,t5,a3
     d5c:	00030593          	mv	a1,t1
     d60:	00070513          	mv	a0,a4
     d64:	f6054883          	lbu	a7,-160(a0)
     d68:	00038e13          	mv	t3,t2
     d6c:	01f8f8b3          	and	a7,a7,t6
     d70:	00088463          	beqz	a7,d78 <display_putchar+0xbc>
     d74:	00040e13          	mv	t3,s0
     d78:	00b808b3          	add	a7,a6,a1
     d7c:	01d888b3          	add	a7,a7,t4
     d80:	01c88023          	sb	t3,0(a7)
     d84:	08058593          	addi	a1,a1,128
     d88:	00150513          	addi	a0,a0,1
     d8c:	fc959ce3          	bne	a1,s1,d64 <display_putchar+0xa8>
     d90:	00168693          	addi	a3,a3,1
     d94:	fd2690e3          	bne	a3,s2,d54 <display_putchar+0x98>
     d98:	00578793          	addi	a5,a5,5
     d9c:	07f00713          	li	a4,127
     da0:	00f74663          	blt	a4,a5,dac <display_putchar+0xf0>
     da4:	1cf62a23          	sw	a5,468(a2)
     da8:	0240006f          	j	dcc <display_putchar+0x110>
     dac:	000066b7          	lui	a3,0x6
     db0:	1d06a783          	lw	a5,464(a3) # 61d0 <cursor_y>
     db4:	1c062a23          	sw	zero,468(a2)
     db8:	00878793          	addi	a5,a5,8
     dbc:	1cf6a823          	sw	a5,464(a3)
     dc0:	00f75663          	bge	a4,a5,dcc <display_putchar+0x110>
     dc4:	000067b7          	lui	a5,0x6
     dc8:	1c07a823          	sw	zero,464(a5) # 61d0 <cursor_y>
     dcc:	00c12403          	lw	s0,12(sp)
     dd0:	00812483          	lw	s1,8(sp)
     dd4:	00412903          	lw	s2,4(sp)
     dd8:	01010113          	addi	sp,sp,16
     ddc:	00008067          	ret

00000de0 <display_refresh>:
     de0:	fe010113          	addi	sp,sp,-32
     de4:	000067b7          	lui	a5,0x6
     de8:	01212823          	sw	s2,16(sp)
     dec:	d8c7a903          	lw	s2,-628(a5) # 5d8c <OLED>
     df0:	01312623          	sw	s3,12(sp)
     df4:	000069b7          	lui	s3,0x6
     df8:	00912a23          	sw	s1,20(sp)
     dfc:	01412423          	sw	s4,8(sp)
     e00:	00112e23          	sw	ra,28(sp)
     e04:	00812c23          	sw	s0,24(sp)
     e08:	00000493          	li	s1,0
     e0c:	5bc98993          	addi	s3,s3,1468 # 65bc <framebuffer>
     e10:	00004a37          	lui	s4,0x4
     e14:	013487b3          	add	a5,s1,s3
     e18:	0007c403          	lbu	s0,0(a5)
     e1c:	00148493          	addi	s1,s1,1
     e20:	00245413          	srli	s0,s0,0x2
     e24:	40046413          	ori	s0,s0,1024
     e28:	00892023          	sw	s0,0(s2)
     e2c:	00000097          	auipc	ra,0x0
     e30:	e3c080e7          	jalr	-452(ra) # c68 <oled_wait>
     e34:	00892023          	sw	s0,0(s2)
     e38:	00000097          	auipc	ra,0x0
     e3c:	e30080e7          	jalr	-464(ra) # c68 <oled_wait>
     e40:	00892023          	sw	s0,0(s2)
     e44:	00000097          	auipc	ra,0x0
     e48:	e24080e7          	jalr	-476(ra) # c68 <oled_wait>
     e4c:	fd4494e3          	bne	s1,s4,e14 <display_refresh+0x34>
     e50:	01c12083          	lw	ra,28(sp)
     e54:	01812403          	lw	s0,24(sp)
     e58:	01412483          	lw	s1,20(sp)
     e5c:	01012903          	lw	s2,16(sp)
     e60:	00c12983          	lw	s3,12(sp)
     e64:	00812a03          	lw	s4,8(sp)
     e68:	02010113          	addi	sp,sp,32
     e6c:	00008067          	ret

00000e70 <dual_putchar>:
     e70:	ff010113          	addi	sp,sp,-16
     e74:	00812423          	sw	s0,8(sp)
     e78:	00112623          	sw	ra,12(sp)
     e7c:	00050413          	mv	s0,a0
     e80:	00000097          	auipc	ra,0x0
     e84:	e3c080e7          	jalr	-452(ra) # cbc <display_putchar>
     e88:	00040513          	mv	a0,s0
     e8c:	00812403          	lw	s0,8(sp)
     e90:	00c12083          	lw	ra,12(sp)
     e94:	01010113          	addi	sp,sp,16
     e98:	00000317          	auipc	t1,0x0
     e9c:	a5830067          	jr	-1448(t1) # 8f0 <uart_putchar>

00000ea0 <print_string>:
     ea0:	ff010113          	addi	sp,sp,-16
     ea4:	00812423          	sw	s0,8(sp)
     ea8:	00912223          	sw	s1,4(sp)
     eac:	00112623          	sw	ra,12(sp)
     eb0:	00050413          	mv	s0,a0
     eb4:	000064b7          	lui	s1,0x6
     eb8:	00044503          	lbu	a0,0(s0)
     ebc:	00051c63          	bnez	a0,ed4 <print_string+0x34>
     ec0:	00c12083          	lw	ra,12(sp)
     ec4:	00812403          	lw	s0,8(sp)
     ec8:	00412483          	lw	s1,4(sp)
     ecc:	01010113          	addi	sp,sp,16
     ed0:	00008067          	ret
     ed4:	1d84a783          	lw	a5,472(s1) # 61d8 <f_putchar>
     ed8:	00140413          	addi	s0,s0,1
     edc:	000780e7          	jalr	a5
     ee0:	fd9ff06f          	j	eb8 <print_string+0x18>

00000ee4 <print_dec>:
     ee4:	ee010113          	addi	sp,sp,-288
     ee8:	10812c23          	sw	s0,280(sp)
     eec:	11312623          	sw	s3,268(sp)
     ef0:	10112e23          	sw	ra,284(sp)
     ef4:	10912a23          	sw	s1,276(sp)
     ef8:	11212823          	sw	s2,272(sp)
     efc:	00050413          	mv	s0,a0
     f00:	000069b7          	lui	s3,0x6
     f04:	1d89a783          	lw	a5,472(s3) # 61d8 <f_putchar>
     f08:	06045e63          	bgez	s0,f84 <print_dec+0xa0>
     f0c:	02d00513          	li	a0,45
     f10:	000780e7          	jalr	a5
     f14:	40800433          	neg	s0,s0
     f18:	fedff06f          	j	f04 <print_dec+0x20>
     f1c:	00040513          	mv	a0,s0
     f20:	00a00593          	li	a1,10
     f24:	00000097          	auipc	ra,0x0
     f28:	918080e7          	jalr	-1768(ra) # 83c <__divsi3>
     f2c:	00251793          	slli	a5,a0,0x2
     f30:	00f507b3          	add	a5,a0,a5
     f34:	00179793          	slli	a5,a5,0x1
     f38:	40f40433          	sub	s0,s0,a5
     f3c:	00148493          	addi	s1,s1,1
     f40:	fe848fa3          	sb	s0,-1(s1)
     f44:	00050413          	mv	s0,a0
     f48:	fc041ae3          	bnez	s0,f1c <print_dec+0x38>
     f4c:	fd2488e3          	beq	s1,s2,f1c <print_dec+0x38>
     f50:	fff4c503          	lbu	a0,-1(s1)
     f54:	1d89a783          	lw	a5,472(s3)
     f58:	fff48493          	addi	s1,s1,-1
     f5c:	03050513          	addi	a0,a0,48
     f60:	000780e7          	jalr	a5
     f64:	ff2496e3          	bne	s1,s2,f50 <print_dec+0x6c>
     f68:	11c12083          	lw	ra,284(sp)
     f6c:	11812403          	lw	s0,280(sp)
     f70:	11412483          	lw	s1,276(sp)
     f74:	11012903          	lw	s2,272(sp)
     f78:	10c12983          	lw	s3,268(sp)
     f7c:	12010113          	addi	sp,sp,288
     f80:	00008067          	ret
     f84:	00010493          	mv	s1,sp
     f88:	00048913          	mv	s2,s1
     f8c:	fbdff06f          	j	f48 <print_dec+0x64>

00000f90 <print_hex_digits>:
     f90:	fe010113          	addi	sp,sp,-32
     f94:	00812c23          	sw	s0,24(sp)
     f98:	01212823          	sw	s2,16(sp)
     f9c:	fff58413          	addi	s0,a1,-1
     fa0:	00006937          	lui	s2,0x6
     fa4:	00912a23          	sw	s1,20(sp)
     fa8:	01312623          	sw	s3,12(sp)
     fac:	00112e23          	sw	ra,28(sp)
     fb0:	00050493          	mv	s1,a0
     fb4:	00241413          	slli	s0,s0,0x2
     fb8:	03c90913          	addi	s2,s2,60 # 603c <font+0x2a8>
     fbc:	000069b7          	lui	s3,0x6
     fc0:	02045063          	bgez	s0,fe0 <print_hex_digits+0x50>
     fc4:	01c12083          	lw	ra,28(sp)
     fc8:	01812403          	lw	s0,24(sp)
     fcc:	01412483          	lw	s1,20(sp)
     fd0:	01012903          	lw	s2,16(sp)
     fd4:	00c12983          	lw	s3,12(sp)
     fd8:	02010113          	addi	sp,sp,32
     fdc:	00008067          	ret
     fe0:	0084d7b3          	srl	a5,s1,s0
     fe4:	00f7f793          	andi	a5,a5,15
     fe8:	00f907b3          	add	a5,s2,a5
     fec:	1d89a703          	lw	a4,472(s3) # 61d8 <f_putchar>
     ff0:	0007c503          	lbu	a0,0(a5)
     ff4:	ffc40413          	addi	s0,s0,-4
     ff8:	000700e7          	jalr	a4
     ffc:	fc5ff06f          	j	fc0 <print_hex_digits+0x30>

00001000 <print_hex>:
    1000:	00800593          	li	a1,8
    1004:	00000317          	auipc	t1,0x0
    1008:	f8c30067          	jr	-116(t1) # f90 <print_hex_digits>

0000100c <printf>:
    100c:	fa010113          	addi	sp,sp,-96
    1010:	04f12a23          	sw	a5,84(sp)
    1014:	04410793          	addi	a5,sp,68
    1018:	02812c23          	sw	s0,56(sp)
    101c:	02912a23          	sw	s1,52(sp)
    1020:	03312623          	sw	s3,44(sp)
    1024:	03412423          	sw	s4,40(sp)
    1028:	03512223          	sw	s5,36(sp)
    102c:	03612023          	sw	s6,32(sp)
    1030:	01712e23          	sw	s7,28(sp)
    1034:	02112e23          	sw	ra,60(sp)
    1038:	03212823          	sw	s2,48(sp)
    103c:	00050413          	mv	s0,a0
    1040:	04b12223          	sw	a1,68(sp)
    1044:	04c12423          	sw	a2,72(sp)
    1048:	04d12623          	sw	a3,76(sp)
    104c:	04e12823          	sw	a4,80(sp)
    1050:	05012c23          	sw	a6,88(sp)
    1054:	05112e23          	sw	a7,92(sp)
    1058:	00f12623          	sw	a5,12(sp)
    105c:	02500993          	li	s3,37
    1060:	000064b7          	lui	s1,0x6
    1064:	07300a13          	li	s4,115
    1068:	07800a93          	li	s5,120
    106c:	06400b13          	li	s6,100
    1070:	06300b93          	li	s7,99
    1074:	00044503          	lbu	a0,0(s0)
    1078:	02051863          	bnez	a0,10a8 <printf+0x9c>
    107c:	03c12083          	lw	ra,60(sp)
    1080:	03812403          	lw	s0,56(sp)
    1084:	03412483          	lw	s1,52(sp)
    1088:	03012903          	lw	s2,48(sp)
    108c:	02c12983          	lw	s3,44(sp)
    1090:	02812a03          	lw	s4,40(sp)
    1094:	02412a83          	lw	s5,36(sp)
    1098:	02012b03          	lw	s6,32(sp)
    109c:	01c12b83          	lw	s7,28(sp)
    10a0:	06010113          	addi	sp,sp,96
    10a4:	00008067          	ret
    10a8:	00140913          	addi	s2,s0,1
    10ac:	09351663          	bne	a0,s3,1138 <printf+0x12c>
    10b0:	00144503          	lbu	a0,1(s0)
    10b4:	03451263          	bne	a0,s4,10d8 <printf+0xcc>
    10b8:	00c12783          	lw	a5,12(sp)
    10bc:	0007a503          	lw	a0,0(a5)
    10c0:	00478713          	addi	a4,a5,4
    10c4:	00e12623          	sw	a4,12(sp)
    10c8:	00000097          	auipc	ra,0x0
    10cc:	dd8080e7          	jalr	-552(ra) # ea0 <print_string>
    10d0:	00190413          	addi	s0,s2,1
    10d4:	fa1ff06f          	j	1074 <printf+0x68>
    10d8:	03551063          	bne	a0,s5,10f8 <printf+0xec>
    10dc:	00c12783          	lw	a5,12(sp)
    10e0:	0007a503          	lw	a0,0(a5)
    10e4:	00478713          	addi	a4,a5,4
    10e8:	00e12623          	sw	a4,12(sp)
    10ec:	00000097          	auipc	ra,0x0
    10f0:	f14080e7          	jalr	-236(ra) # 1000 <print_hex>
    10f4:	fddff06f          	j	10d0 <printf+0xc4>
    10f8:	03651063          	bne	a0,s6,1118 <printf+0x10c>
    10fc:	00c12783          	lw	a5,12(sp)
    1100:	0007a503          	lw	a0,0(a5)
    1104:	00478713          	addi	a4,a5,4
    1108:	00e12623          	sw	a4,12(sp)
    110c:	00000097          	auipc	ra,0x0
    1110:	dd8080e7          	jalr	-552(ra) # ee4 <print_dec>
    1114:	fbdff06f          	j	10d0 <printf+0xc4>
    1118:	1d84a783          	lw	a5,472(s1) # 61d8 <f_putchar>
    111c:	01751a63          	bne	a0,s7,1130 <printf+0x124>
    1120:	00c12703          	lw	a4,12(sp)
    1124:	00072503          	lw	a0,0(a4)
    1128:	00470693          	addi	a3,a4,4
    112c:	00d12623          	sw	a3,12(sp)
    1130:	000780e7          	jalr	a5
    1134:	f9dff06f          	j	10d0 <printf+0xc4>
    1138:	1d84a783          	lw	a5,472(s1)
    113c:	00040913          	mv	s2,s0
    1140:	000780e7          	jalr	a5
    1144:	f8dff06f          	j	10d0 <printf+0xc4>

00001148 <__mulsi3>:
    1148:	00050793          	mv	a5,a0
    114c:	00000513          	li	a0,0
    1150:	00079463          	bnez	a5,1158 <__mulsi3+0x10>
    1154:	00008067          	ret
    1158:	0017f713          	andi	a4,a5,1
    115c:	00070463          	beqz	a4,1164 <__mulsi3+0x1c>
    1160:	00b50533          	add	a0,a0,a1
    1164:	0017d793          	srli	a5,a5,0x1
    1168:	00159593          	slli	a1,a1,0x1
    116c:	fe5ff06f          	j	1150 <__mulsi3+0x8>

00001170 <fat_list_insert_last>:
    1170:	00452783          	lw	a5,4(a0)
    1174:	04079263          	bnez	a5,11b8 <fat_list_insert_last+0x48>
    1178:	00052783          	lw	a5,0(a0)
    117c:	00079c63          	bnez	a5,1194 <fat_list_insert_last+0x24>
    1180:	00b52023          	sw	a1,0(a0)
    1184:	00b52223          	sw	a1,4(a0)
    1188:	0005a023          	sw	zero,0(a1)
    118c:	0005a223          	sw	zero,4(a1)
    1190:	00008067          	ret
    1194:	0007a703          	lw	a4,0(a5)
    1198:	00f5a223          	sw	a5,4(a1)
    119c:	00e5a023          	sw	a4,0(a1)
    11a0:	00071863          	bnez	a4,11b0 <fat_list_insert_last+0x40>
    11a4:	00b52023          	sw	a1,0(a0)
    11a8:	00b7a023          	sw	a1,0(a5)
    11ac:	00008067          	ret
    11b0:	00b72223          	sw	a1,4(a4)
    11b4:	ff5ff06f          	j	11a8 <fat_list_insert_last+0x38>
    11b8:	0047a703          	lw	a4,4(a5)
    11bc:	00f5a023          	sw	a5,0(a1)
    11c0:	00e5a223          	sw	a4,4(a1)
    11c4:	0047a703          	lw	a4,4(a5)
    11c8:	00071863          	bnez	a4,11d8 <fat_list_insert_last+0x68>
    11cc:	00b52223          	sw	a1,4(a0)
    11d0:	00b7a223          	sw	a1,4(a5)
    11d4:	00008067          	ret
    11d8:	00b72023          	sw	a1,0(a4)
    11dc:	ff5ff06f          	j	11d0 <fat_list_insert_last+0x60>

000011e0 <FileString_StrCmpNoCase>:
    11e0:	00050313          	mv	t1,a0
    11e4:	00000793          	li	a5,0
    11e8:	01900e13          	li	t3,25
    11ec:	00f61663          	bne	a2,a5,11f8 <FileString_StrCmpNoCase+0x18>
    11f0:	00000513          	li	a0,0
    11f4:	0580006f          	j	124c <FileString_StrCmpNoCase+0x6c>
    11f8:	00f30733          	add	a4,t1,a5
    11fc:	00074883          	lbu	a7,0(a4)
    1200:	00f58733          	add	a4,a1,a5
    1204:	00074803          	lbu	a6,0(a4)
    1208:	fbf88713          	addi	a4,a7,-65
    120c:	0ff77713          	zext.b	a4,a4
    1210:	00088693          	mv	a3,a7
    1214:	00ee6663          	bltu	t3,a4,1220 <FileString_StrCmpNoCase+0x40>
    1218:	02088693          	addi	a3,a7,32
    121c:	0ff6f693          	zext.b	a3,a3
    1220:	fbf80513          	addi	a0,a6,-65
    1224:	0ff57513          	zext.b	a0,a0
    1228:	00080713          	mv	a4,a6
    122c:	00ae6663          	bltu	t3,a0,1238 <FileString_StrCmpNoCase+0x58>
    1230:	02080713          	addi	a4,a6,32
    1234:	0ff77713          	zext.b	a4,a4
    1238:	40e68533          	sub	a0,a3,a4
    123c:	00e69863          	bne	a3,a4,124c <FileString_StrCmpNoCase+0x6c>
    1240:	00088663          	beqz	a7,124c <FileString_StrCmpNoCase+0x6c>
    1244:	00178793          	addi	a5,a5,1
    1248:	fa0812e3          	bnez	a6,11ec <FileString_StrCmpNoCase+0xc>
    124c:	00008067          	ret

00001250 <FileString_GetExtension>:
    1250:	00050713          	mv	a4,a0
    1254:	00050793          	mv	a5,a0
    1258:	02e00613          	li	a2,46
    125c:	fff00513          	li	a0,-1
    1260:	0007c683          	lbu	a3,0(a5)
    1264:	00069463          	bnez	a3,126c <FileString_GetExtension+0x1c>
    1268:	00008067          	ret
    126c:	00c69463          	bne	a3,a2,1274 <FileString_GetExtension+0x24>
    1270:	40e78533          	sub	a0,a5,a4
    1274:	00178793          	addi	a5,a5,1
    1278:	fe9ff06f          	j	1260 <FileString_GetExtension+0x10>

0000127c <fatfs_fat_writeback>:
    127c:	00059663          	bnez	a1,1288 <fatfs_fat_writeback+0xc>
    1280:	00000513          	li	a0,0
    1284:	00008067          	ret
    1288:	2045a703          	lw	a4,516(a1)
    128c:	ff010113          	addi	sp,sp,-16
    1290:	00812423          	sw	s0,8(sp)
    1294:	00112623          	sw	ra,12(sp)
    1298:	00050793          	mv	a5,a0
    129c:	00058413          	mv	s0,a1
    12a0:	00100513          	li	a0,1
    12a4:	04070663          	beqz	a4,12f0 <fatfs_fat_writeback+0x74>
    12a8:	0387a683          	lw	a3,56(a5)
    12ac:	00069863          	bnez	a3,12bc <fatfs_fat_writeback+0x40>
    12b0:	20042223          	sw	zero,516(s0)
    12b4:	00100513          	li	a0,1
    12b8:	0380006f          	j	12f0 <fatfs_fat_writeback+0x74>
    12bc:	2005a503          	lw	a0,512(a1)
    12c0:	0147a703          	lw	a4,20(a5)
    12c4:	0207a583          	lw	a1,32(a5)
    12c8:	00100613          	li	a2,1
    12cc:	40e507b3          	sub	a5,a0,a4
    12d0:	00178793          	addi	a5,a5,1
    12d4:	00f5f663          	bgeu	a1,a5,12e0 <fatfs_fat_writeback+0x64>
    12d8:	00b70733          	add	a4,a4,a1
    12dc:	40a70633          	sub	a2,a4,a0
    12e0:	00040593          	mv	a1,s0
    12e4:	000680e7          	jalr	a3
    12e8:	fc0514e3          	bnez	a0,12b0 <fatfs_fat_writeback+0x34>
    12ec:	00000513          	li	a0,0
    12f0:	00c12083          	lw	ra,12(sp)
    12f4:	00812403          	lw	s0,8(sp)
    12f8:	01010113          	addi	sp,sp,16
    12fc:	00008067          	ret

00001300 <fatfs_fat_read_sector>:
    1300:	fe010113          	addi	sp,sp,-32
    1304:	01212823          	sw	s2,16(sp)
    1308:	25452903          	lw	s2,596(a0)
    130c:	00812c23          	sw	s0,24(sp)
    1310:	00912a23          	sw	s1,20(sp)
    1314:	01312623          	sw	s3,12(sp)
    1318:	00112e23          	sw	ra,28(sp)
    131c:	00050993          	mv	s3,a0
    1320:	00058493          	mv	s1,a1
    1324:	00000413          	li	s0,0
    1328:	06091863          	bnez	s2,1398 <fatfs_fat_read_sector+0x98>
    132c:	2549a783          	lw	a5,596(s3)
    1330:	20f42623          	sw	a5,524(s0)
    1334:	20442783          	lw	a5,516(s0)
    1338:	2489aa23          	sw	s0,596(s3)
    133c:	00078c63          	beqz	a5,1354 <fatfs_fat_read_sector+0x54>
    1340:	00040593          	mv	a1,s0
    1344:	00098513          	mv	a0,s3
    1348:	00000097          	auipc	ra,0x0
    134c:	f34080e7          	jalr	-204(ra) # 127c <fatfs_fat_writeback>
    1350:	02050463          	beqz	a0,1378 <fatfs_fat_read_sector+0x78>
    1354:	0349a783          	lw	a5,52(s3)
    1358:	20942023          	sw	s1,512(s0)
    135c:	00100613          	li	a2,1
    1360:	00040593          	mv	a1,s0
    1364:	00048513          	mv	a0,s1
    1368:	000780e7          	jalr	a5
    136c:	06051063          	bnez	a0,13cc <fatfs_fat_read_sector+0xcc>
    1370:	fff00793          	li	a5,-1
    1374:	20f42023          	sw	a5,512(s0)
    1378:	01c12083          	lw	ra,28(sp)
    137c:	01812403          	lw	s0,24(sp)
    1380:	01412483          	lw	s1,20(sp)
    1384:	00c12983          	lw	s3,12(sp)
    1388:	00090513          	mv	a0,s2
    138c:	01012903          	lw	s2,16(sp)
    1390:	02010113          	addi	sp,sp,32
    1394:	00008067          	ret
    1398:	20092783          	lw	a5,512(s2)
    139c:	00f4e663          	bltu	s1,a5,13a8 <fatfs_fat_read_sector+0xa8>
    13a0:	00178713          	addi	a4,a5,1
    13a4:	02e4ea63          	bltu	s1,a4,13d8 <fatfs_fat_read_sector+0xd8>
    13a8:	20c92783          	lw	a5,524(s2)
    13ac:	00079663          	bnez	a5,13b8 <fatfs_fat_read_sector+0xb8>
    13b0:	00040a63          	beqz	s0,13c4 <fatfs_fat_read_sector+0xc4>
    13b4:	20042623          	sw	zero,524(s0)
    13b8:	00090413          	mv	s0,s2
    13bc:	20c92903          	lw	s2,524(s2)
    13c0:	f69ff06f          	j	1328 <fatfs_fat_read_sector+0x28>
    13c4:	2409aa23          	sw	zero,596(s3)
    13c8:	ff1ff06f          	j	13b8 <fatfs_fat_read_sector+0xb8>
    13cc:	20842423          	sw	s0,520(s0)
    13d0:	00040913          	mv	s2,s0
    13d4:	fa5ff06f          	j	1378 <fatfs_fat_read_sector+0x78>
    13d8:	40f484b3          	sub	s1,s1,a5
    13dc:	00949493          	slli	s1,s1,0x9
    13e0:	009904b3          	add	s1,s2,s1
    13e4:	20992423          	sw	s1,520(s2)
    13e8:	f91ff06f          	j	1378 <fatfs_fat_read_sector+0x78>

000013ec <fatfs_erase_fat>:
    13ec:	ff010113          	addi	sp,sp,-16
    13f0:	01212023          	sw	s2,0(sp)
    13f4:	04450913          	addi	s2,a0,68
    13f8:	00812423          	sw	s0,8(sp)
    13fc:	00912223          	sw	s1,4(sp)
    1400:	00050413          	mv	s0,a0
    1404:	00058493          	mv	s1,a1
    1408:	20000613          	li	a2,512
    140c:	00000593          	li	a1,0
    1410:	00090513          	mv	a0,s2
    1414:	00112623          	sw	ra,12(sp)
    1418:	fffff097          	auipc	ra,0xfffff
    141c:	500080e7          	jalr	1280(ra) # 918 <memset>
    1420:	04049063          	bnez	s1,1460 <fatfs_erase_fat+0x74>
    1424:	ff800793          	li	a5,-8
    1428:	04f42223          	sw	a5,68(s0)
    142c:	03842783          	lw	a5,56(s0)
    1430:	01442503          	lw	a0,20(s0)
    1434:	00100613          	li	a2,1
    1438:	00090593          	mv	a1,s2
    143c:	000780e7          	jalr	a5
    1440:	04051063          	bnez	a0,1480 <fatfs_erase_fat+0x94>
    1444:	00000513          	li	a0,0
    1448:	00c12083          	lw	ra,12(sp)
    144c:	00812403          	lw	s0,8(sp)
    1450:	00412483          	lw	s1,4(sp)
    1454:	00012903          	lw	s2,0(sp)
    1458:	01010113          	addi	sp,sp,16
    145c:	00008067          	ret
    1460:	100007b7          	lui	a5,0x10000
    1464:	ff878713          	addi	a4,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    1468:	04e42223          	sw	a4,68(s0)
    146c:	fff78793          	addi	a5,a5,-1
    1470:	fff00713          	li	a4,-1
    1474:	04e42423          	sw	a4,72(s0)
    1478:	04f42623          	sw	a5,76(s0)
    147c:	fb1ff06f          	j	142c <fatfs_erase_fat+0x40>
    1480:	20000613          	li	a2,512
    1484:	00000593          	li	a1,0
    1488:	00090513          	mv	a0,s2
    148c:	fffff097          	auipc	ra,0xfffff
    1490:	48c080e7          	jalr	1164(ra) # 918 <memset>
    1494:	00100493          	li	s1,1
    1498:	02042583          	lw	a1,32(s0)
    149c:	02c44503          	lbu	a0,44(s0)
    14a0:	00000097          	auipc	ra,0x0
    14a4:	ca8080e7          	jalr	-856(ra) # 1148 <__mulsi3>
    14a8:	00a4e663          	bltu	s1,a0,14b4 <fatfs_erase_fat+0xc8>
    14ac:	00100513          	li	a0,1
    14b0:	f99ff06f          	j	1448 <fatfs_erase_fat+0x5c>
    14b4:	01442503          	lw	a0,20(s0)
    14b8:	03842783          	lw	a5,56(s0)
    14bc:	00100613          	li	a2,1
    14c0:	00090593          	mv	a1,s2
    14c4:	00a48533          	add	a0,s1,a0
    14c8:	000780e7          	jalr	a5
    14cc:	f6050ce3          	beqz	a0,1444 <fatfs_erase_fat+0x58>
    14d0:	00148493          	addi	s1,s1,1
    14d4:	fc5ff06f          	j	1498 <fatfs_erase_fat+0xac>

000014d8 <fatfs_erase_sectors>:
    14d8:	fe010113          	addi	sp,sp,-32
    14dc:	01412423          	sw	s4,8(sp)
    14e0:	04450a13          	addi	s4,a0,68
    14e4:	00912a23          	sw	s1,20(sp)
    14e8:	01212823          	sw	s2,16(sp)
    14ec:	01312623          	sw	s3,12(sp)
    14f0:	00050493          	mv	s1,a0
    14f4:	00058993          	mv	s3,a1
    14f8:	00060913          	mv	s2,a2
    14fc:	00000593          	li	a1,0
    1500:	20000613          	li	a2,512
    1504:	000a0513          	mv	a0,s4
    1508:	00812c23          	sw	s0,24(sp)
    150c:	00112e23          	sw	ra,28(sp)
    1510:	00000413          	li	s0,0
    1514:	fffff097          	auipc	ra,0xfffff
    1518:	404080e7          	jalr	1028(ra) # 918 <memset>
    151c:	03244463          	blt	s0,s2,1544 <fatfs_erase_sectors+0x6c>
    1520:	00100513          	li	a0,1
    1524:	01c12083          	lw	ra,28(sp)
    1528:	01812403          	lw	s0,24(sp)
    152c:	01412483          	lw	s1,20(sp)
    1530:	01012903          	lw	s2,16(sp)
    1534:	00c12983          	lw	s3,12(sp)
    1538:	00812a03          	lw	s4,8(sp)
    153c:	02010113          	addi	sp,sp,32
    1540:	00008067          	ret
    1544:	0384a783          	lw	a5,56(s1)
    1548:	00100613          	li	a2,1
    154c:	000a0593          	mv	a1,s4
    1550:	01340533          	add	a0,s0,s3
    1554:	000780e7          	jalr	a5
    1558:	fc0506e3          	beqz	a0,1524 <fatfs_erase_sectors+0x4c>
    155c:	00140413          	addi	s0,s0,1
    1560:	fbdff06f          	j	151c <fatfs_erase_sectors+0x44>

00001564 <_allocate_file>:
    1564:	ff010113          	addi	sp,sp,-16
    1568:	000067b7          	lui	a5,0x6
    156c:	00812423          	sw	s0,8(sp)
    1570:	1dc7a403          	lw	s0,476(a5) # 61dc <_free_file_list>
    1574:	00112623          	sw	ra,12(sp)
    1578:	02040e63          	beqz	s0,15b4 <_allocate_file+0x50>
    157c:	00042703          	lw	a4,0(s0)
    1580:	00442683          	lw	a3,4(s0)
    1584:	1dc78793          	addi	a5,a5,476
    1588:	04071063          	bnez	a4,15c8 <_allocate_file+0x64>
    158c:	00d7a023          	sw	a3,0(a5)
    1590:	00442683          	lw	a3,4(s0)
    1594:	02069e63          	bnez	a3,15d0 <_allocate_file+0x6c>
    1598:	00e7a223          	sw	a4,4(a5)
    159c:	00006537          	lui	a0,0x6
    15a0:	00040593          	mv	a1,s0
    15a4:	1e450513          	addi	a0,a0,484 # 61e4 <_open_file_list>
    15a8:	00000097          	auipc	ra,0x0
    15ac:	bc8080e7          	jalr	-1080(ra) # 1170 <fat_list_insert_last>
    15b0:	bc440413          	addi	s0,s0,-1084
    15b4:	00c12083          	lw	ra,12(sp)
    15b8:	00040513          	mv	a0,s0
    15bc:	00812403          	lw	s0,8(sp)
    15c0:	01010113          	addi	sp,sp,16
    15c4:	00008067          	ret
    15c8:	00d72223          	sw	a3,4(a4)
    15cc:	fc5ff06f          	j	1590 <_allocate_file+0x2c>
    15d0:	00e6a023          	sw	a4,0(a3)
    15d4:	fc9ff06f          	j	159c <_allocate_file+0x38>

000015d8 <_free_file>:
    15d8:	43c52783          	lw	a5,1084(a0)
    15dc:	44052703          	lw	a4,1088(a0)
    15e0:	43c50593          	addi	a1,a0,1084
    15e4:	02079663          	bnez	a5,1610 <_free_file+0x38>
    15e8:	000066b7          	lui	a3,0x6
    15ec:	1ee6a223          	sw	a4,484(a3) # 61e4 <_open_file_list>
    15f0:	44052703          	lw	a4,1088(a0)
    15f4:	02071263          	bnez	a4,1618 <_free_file+0x40>
    15f8:	00006737          	lui	a4,0x6
    15fc:	1ef72423          	sw	a5,488(a4) # 61e8 <_open_file_list+0x4>
    1600:	00006537          	lui	a0,0x6
    1604:	1dc50513          	addi	a0,a0,476 # 61dc <_free_file_list>
    1608:	00000317          	auipc	t1,0x0
    160c:	b6830067          	jr	-1176(t1) # 1170 <fat_list_insert_last>
    1610:	00e7a223          	sw	a4,4(a5)
    1614:	fddff06f          	j	15f0 <_free_file+0x18>
    1618:	00f72023          	sw	a5,0(a4)
    161c:	fe5ff06f          	j	1600 <_free_file+0x28>

00001620 <fatfs_lba_of_cluster>:
    1620:	ff010113          	addi	sp,sp,-16
    1624:	00812423          	sw	s0,8(sp)
    1628:	00050413          	mv	s0,a0
    162c:	00058513          	mv	a0,a1
    1630:	00044583          	lbu	a1,0(s0)
    1634:	ffe50513          	addi	a0,a0,-2
    1638:	00112623          	sw	ra,12(sp)
    163c:	00000097          	auipc	ra,0x0
    1640:	b0c080e7          	jalr	-1268(ra) # 1148 <__mulsi3>
    1644:	00442783          	lw	a5,4(s0)
    1648:	00f50533          	add	a0,a0,a5
    164c:	03042783          	lw	a5,48(s0)
    1650:	00079863          	bnez	a5,1660 <fatfs_lba_of_cluster+0x40>
    1654:	02845783          	lhu	a5,40(s0)
    1658:	4047d793          	srai	a5,a5,0x4
    165c:	00f50533          	add	a0,a0,a5
    1660:	00c12083          	lw	ra,12(sp)
    1664:	00812403          	lw	s0,8(sp)
    1668:	01010113          	addi	sp,sp,16
    166c:	00008067          	ret

00001670 <fatfs_sector_read>:
    1670:	03452783          	lw	a5,52(a0)
    1674:	00058713          	mv	a4,a1
    1678:	00070513          	mv	a0,a4
    167c:	00060593          	mv	a1,a2
    1680:	00068613          	mv	a2,a3
    1684:	00078067          	jr	a5

00001688 <fatfs_sector_write>:
    1688:	03852783          	lw	a5,56(a0)
    168c:	00058713          	mv	a4,a1
    1690:	00070513          	mv	a0,a4
    1694:	00060593          	mv	a1,a2
    1698:	00068613          	mv	a2,a3
    169c:	00078067          	jr	a5

000016a0 <fatfs_read_sector>:
    16a0:	03052783          	lw	a5,48(a0)
    16a4:	ff010113          	addi	sp,sp,-16
    16a8:	00812423          	sw	s0,8(sp)
    16ac:	00912223          	sw	s1,4(sp)
    16b0:	01212023          	sw	s2,0(sp)
    16b4:	00112623          	sw	ra,12(sp)
    16b8:	00f5e7b3          	or	a5,a1,a5
    16bc:	00050413          	mv	s0,a0
    16c0:	00060493          	mv	s1,a2
    16c4:	00068913          	mv	s2,a3
    16c8:	04079263          	bnez	a5,170c <fatfs_read_sector+0x6c>
    16cc:	01052783          	lw	a5,16(a0)
    16d0:	04f67c63          	bgeu	a2,a5,1728 <fatfs_read_sector+0x88>
    16d4:	01c52503          	lw	a0,28(a0)
    16d8:	00c42783          	lw	a5,12(s0)
    16dc:	00f50533          	add	a0,a0,a5
    16e0:	03442783          	lw	a5,52(s0)
    16e4:	00a48533          	add	a0,s1,a0
    16e8:	02090863          	beqz	s2,1718 <fatfs_read_sector+0x78>
    16ec:	00100613          	li	a2,1
    16f0:	00090593          	mv	a1,s2
    16f4:	00812403          	lw	s0,8(sp)
    16f8:	00c12083          	lw	ra,12(sp)
    16fc:	00412483          	lw	s1,4(sp)
    1700:	00012903          	lw	s2,0(sp)
    1704:	01010113          	addi	sp,sp,16
    1708:	00078067          	jr	a5
    170c:	00000097          	auipc	ra,0x0
    1710:	f14080e7          	jalr	-236(ra) # 1620 <fatfs_lba_of_cluster>
    1714:	fcdff06f          	j	16e0 <fatfs_read_sector+0x40>
    1718:	24a42223          	sw	a0,580(s0)
    171c:	00100613          	li	a2,1
    1720:	04440593          	addi	a1,s0,68
    1724:	fd1ff06f          	j	16f4 <fatfs_read_sector+0x54>
    1728:	00c12083          	lw	ra,12(sp)
    172c:	00812403          	lw	s0,8(sp)
    1730:	00412483          	lw	s1,4(sp)
    1734:	00012903          	lw	s2,0(sp)
    1738:	00000513          	li	a0,0
    173c:	01010113          	addi	sp,sp,16
    1740:	00008067          	ret

00001744 <fatfs_write_sector>:
    1744:	03852783          	lw	a5,56(a0)
    1748:	0a078863          	beqz	a5,17f8 <fatfs_write_sector+0xb4>
    174c:	fe010113          	addi	sp,sp,-32
    1750:	01212823          	sw	s2,16(sp)
    1754:	00068913          	mv	s2,a3
    1758:	03052683          	lw	a3,48(a0)
    175c:	00812c23          	sw	s0,24(sp)
    1760:	00912a23          	sw	s1,20(sp)
    1764:	00112e23          	sw	ra,28(sp)
    1768:	00d5e733          	or	a4,a1,a3
    176c:	00050413          	mv	s0,a0
    1770:	00060493          	mv	s1,a2
    1774:	04071063          	bnez	a4,17b4 <fatfs_write_sector+0x70>
    1778:	01052703          	lw	a4,16(a0)
    177c:	06e67063          	bgeu	a2,a4,17dc <fatfs_write_sector+0x98>
    1780:	01c52503          	lw	a0,28(a0)
    1784:	00c42703          	lw	a4,12(s0)
    1788:	00e50533          	add	a0,a0,a4
    178c:	00c50533          	add	a0,a0,a2
    1790:	02090e63          	beqz	s2,17cc <fatfs_write_sector+0x88>
    1794:	00100613          	li	a2,1
    1798:	00090593          	mv	a1,s2
    179c:	01812403          	lw	s0,24(sp)
    17a0:	01c12083          	lw	ra,28(sp)
    17a4:	01412483          	lw	s1,20(sp)
    17a8:	01012903          	lw	s2,16(sp)
    17ac:	02010113          	addi	sp,sp,32
    17b0:	00078067          	jr	a5
    17b4:	00f12623          	sw	a5,12(sp)
    17b8:	00000097          	auipc	ra,0x0
    17bc:	e68080e7          	jalr	-408(ra) # 1620 <fatfs_lba_of_cluster>
    17c0:	00c12783          	lw	a5,12(sp)
    17c4:	00a48533          	add	a0,s1,a0
    17c8:	fc9ff06f          	j	1790 <fatfs_write_sector+0x4c>
    17cc:	24a42223          	sw	a0,580(s0)
    17d0:	00100613          	li	a2,1
    17d4:	04440593          	addi	a1,s0,68
    17d8:	fc5ff06f          	j	179c <fatfs_write_sector+0x58>
    17dc:	01c12083          	lw	ra,28(sp)
    17e0:	01812403          	lw	s0,24(sp)
    17e4:	01412483          	lw	s1,20(sp)
    17e8:	01012903          	lw	s2,16(sp)
    17ec:	00000513          	li	a0,0
    17f0:	02010113          	addi	sp,sp,32
    17f4:	00008067          	ret
    17f8:	00000513          	li	a0,0
    17fc:	00008067          	ret

00001800 <fatfs_show_details>:
    1800:	ff010113          	addi	sp,sp,-16
    1804:	00812423          	sw	s0,8(sp)
    1808:	00050413          	mv	s0,a0
    180c:	00006537          	lui	a0,0x6
    1810:	06050513          	addi	a0,a0,96 # 6060 <font+0x2cc>
    1814:	00112623          	sw	ra,12(sp)
    1818:	fffff097          	auipc	ra,0xfffff
    181c:	7f4080e7          	jalr	2036(ra) # 100c <printf>
    1820:	03042703          	lw	a4,48(s0)
    1824:	00100793          	li	a5,1
    1828:	06f70c63          	beq	a4,a5,18a0 <fatfs_show_details+0xa0>
    182c:	000065b7          	lui	a1,0x6
    1830:	05858593          	addi	a1,a1,88 # 6058 <font+0x2c4>
    1834:	00006537          	lui	a0,0x6
    1838:	07050513          	addi	a0,a0,112 # 6070 <font+0x2dc>
    183c:	fffff097          	auipc	ra,0xfffff
    1840:	7d0080e7          	jalr	2000(ra) # 100c <printf>
    1844:	00842583          	lw	a1,8(s0)
    1848:	00006537          	lui	a0,0x6
    184c:	07c50513          	addi	a0,a0,124 # 607c <font+0x2e8>
    1850:	fffff097          	auipc	ra,0xfffff
    1854:	7bc080e7          	jalr	1980(ra) # 100c <printf>
    1858:	01442583          	lw	a1,20(s0)
    185c:	00006537          	lui	a0,0x6
    1860:	09c50513          	addi	a0,a0,156 # 609c <font+0x308>
    1864:	fffff097          	auipc	ra,0xfffff
    1868:	7a8080e7          	jalr	1960(ra) # 100c <printf>
    186c:	00442583          	lw	a1,4(s0)
    1870:	00006537          	lui	a0,0x6
    1874:	0b450513          	addi	a0,a0,180 # 60b4 <font+0x320>
    1878:	fffff097          	auipc	ra,0xfffff
    187c:	794080e7          	jalr	1940(ra) # 100c <printf>
    1880:	00044583          	lbu	a1,0(s0)
    1884:	00812403          	lw	s0,8(sp)
    1888:	00c12083          	lw	ra,12(sp)
    188c:	00006537          	lui	a0,0x6
    1890:	0d050513          	addi	a0,a0,208 # 60d0 <font+0x33c>
    1894:	01010113          	addi	sp,sp,16
    1898:	fffff317          	auipc	t1,0xfffff
    189c:	77430067          	jr	1908(t1) # 100c <printf>
    18a0:	000065b7          	lui	a1,0x6
    18a4:	05058593          	addi	a1,a1,80 # 6050 <font+0x2bc>
    18a8:	f8dff06f          	j	1834 <fatfs_show_details+0x34>

000018ac <fatfs_get_root_cluster>:
    18ac:	00852503          	lw	a0,8(a0)
    18b0:	00008067          	ret

000018b4 <fatfs_list_directory_start>:
    18b4:	00c5a223          	sw	a2,4(a1)
    18b8:	0005a023          	sw	zero,0(a1)
    18bc:	00058423          	sb	zero,8(a1)
    18c0:	00008067          	ret

000018c4 <fatfs_cache_init>:
    18c4:	00100513          	li	a0,1
    18c8:	00008067          	ret

000018cc <fatfs_cache_get_next_cluster>:
    18cc:	00000513          	li	a0,0
    18d0:	00008067          	ret

000018d4 <fatfs_cache_set_next_cluster>:
    18d4:	00100513          	li	a0,1
    18d8:	00008067          	ret

000018dc <fl_init>:
    18dc:	ff010113          	addi	sp,sp,-16
    18e0:	00812423          	sw	s0,8(sp)
    18e4:	00006437          	lui	s0,0x6
    18e8:	00112623          	sw	ra,12(sp)
    18ec:	1dc40793          	addi	a5,s0,476 # 61dc <_free_file_list>
    18f0:	0007a223          	sw	zero,4(a5)
    18f4:	0007a023          	sw	zero,0(a5)
    18f8:	0000b5b7          	lui	a1,0xb
    18fc:	000067b7          	lui	a5,0x6
    1900:	1e478793          	addi	a5,a5,484 # 61e4 <_open_file_list>
    1904:	1dc40513          	addi	a0,s0,476
    1908:	e6058593          	addi	a1,a1,-416 # ae60 <_files+0x43c>
    190c:	0007a223          	sw	zero,4(a5)
    1910:	0007a023          	sw	zero,0(a5)
    1914:	00000097          	auipc	ra,0x0
    1918:	85c080e7          	jalr	-1956(ra) # 1170 <fat_list_insert_last>
    191c:	0000b5b7          	lui	a1,0xb
    1920:	1dc40513          	addi	a0,s0,476
    1924:	2a458593          	addi	a1,a1,676 # b2a4 <_files+0x880>
    1928:	00000097          	auipc	ra,0x0
    192c:	848080e7          	jalr	-1976(ra) # 1170 <fat_list_insert_last>
    1930:	00c12083          	lw	ra,12(sp)
    1934:	00812403          	lw	s0,8(sp)
    1938:	000067b7          	lui	a5,0x6
    193c:	00100713          	li	a4,1
    1940:	1ee7a823          	sw	a4,496(a5) # 61f0 <_filelib_init>
    1944:	01010113          	addi	sp,sp,16
    1948:	00008067          	ret

0000194c <fl_attach_locks>:
    194c:	0000a7b7          	lui	a5,0xa
    1950:	5bc78793          	addi	a5,a5,1468 # a5bc <_fs>
    1954:	02a7ae23          	sw	a0,60(a5)
    1958:	04b7a023          	sw	a1,64(a5)
    195c:	00008067          	ret

00001960 <fl_fseek>:
    1960:	000067b7          	lui	a5,0x6
    1964:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    1968:	fe010113          	addi	sp,sp,-32
    196c:	00812c23          	sw	s0,24(sp)
    1970:	00912a23          	sw	s1,20(sp)
    1974:	01212823          	sw	s2,16(sp)
    1978:	00112e23          	sw	ra,28(sp)
    197c:	01312623          	sw	s3,12(sp)
    1980:	00050413          	mv	s0,a0
    1984:	00058913          	mv	s2,a1
    1988:	00060493          	mv	s1,a2
    198c:	00079663          	bnez	a5,1998 <fl_fseek+0x38>
    1990:	00000097          	auipc	ra,0x0
    1994:	f4c080e7          	jalr	-180(ra) # 18dc <fl_init>
    1998:	0c040c63          	beqz	s0,1a70 <fl_fseek+0x110>
    199c:	00200793          	li	a5,2
    19a0:	00f49463          	bne	s1,a5,19a8 <fl_fseek+0x48>
    19a4:	0c091663          	bnez	s2,1a70 <fl_fseek+0x110>
    19a8:	0000a7b7          	lui	a5,0xa
    19ac:	5bc78713          	addi	a4,a5,1468 # a5bc <_fs>
    19b0:	03c72703          	lw	a4,60(a4)
    19b4:	5bc78993          	addi	s3,a5,1468
    19b8:	00070463          	beqz	a4,19c0 <fl_fseek+0x60>
    19bc:	000700e7          	jalr	a4
    19c0:	fff00793          	li	a5,-1
    19c4:	42f42823          	sw	a5,1072(s0)
    19c8:	42042a23          	sw	zero,1076(s0)
    19cc:	04049463          	bnez	s1,1a14 <fl_fseek+0xb4>
    19d0:	00c42783          	lw	a5,12(s0)
    19d4:	01242423          	sw	s2,8(s0)
    19d8:	0127e663          	bltu	a5,s2,19e4 <fl_fseek+0x84>
    19dc:	00000493          	li	s1,0
    19e0:	0080006f          	j	19e8 <fl_fseek+0x88>
    19e4:	00f42423          	sw	a5,8(s0)
    19e8:	0409a783          	lw	a5,64(s3)
    19ec:	00078463          	beqz	a5,19f4 <fl_fseek+0x94>
    19f0:	000780e7          	jalr	a5
    19f4:	01c12083          	lw	ra,28(sp)
    19f8:	01812403          	lw	s0,24(sp)
    19fc:	01012903          	lw	s2,16(sp)
    1a00:	00c12983          	lw	s3,12(sp)
    1a04:	00048513          	mv	a0,s1
    1a08:	01412483          	lw	s1,20(sp)
    1a0c:	02010113          	addi	sp,sp,32
    1a10:	00008067          	ret
    1a14:	00100793          	li	a5,1
    1a18:	04f49063          	bne	s1,a5,1a58 <fl_fseek+0xf8>
    1a1c:	00842783          	lw	a5,8(s0)
    1a20:	00094e63          	bltz	s2,1a3c <fl_fseek+0xdc>
    1a24:	00f90933          	add	s2,s2,a5
    1a28:	00c42783          	lw	a5,12(s0)
    1a2c:	01242423          	sw	s2,8(s0)
    1a30:	fb27f6e3          	bgeu	a5,s2,19dc <fl_fseek+0x7c>
    1a34:	00f42423          	sw	a5,8(s0)
    1a38:	fa5ff06f          	j	19dc <fl_fseek+0x7c>
    1a3c:	41200733          	neg	a4,s2
    1a40:	00e7f663          	bgeu	a5,a4,1a4c <fl_fseek+0xec>
    1a44:	00042423          	sw	zero,8(s0)
    1a48:	f95ff06f          	j	19dc <fl_fseek+0x7c>
    1a4c:	00f90933          	add	s2,s2,a5
    1a50:	01242423          	sw	s2,8(s0)
    1a54:	f89ff06f          	j	19dc <fl_fseek+0x7c>
    1a58:	00200793          	li	a5,2
    1a5c:	00f49663          	bne	s1,a5,1a68 <fl_fseek+0x108>
    1a60:	00c42783          	lw	a5,12(s0)
    1a64:	fd1ff06f          	j	1a34 <fl_fseek+0xd4>
    1a68:	fff00493          	li	s1,-1
    1a6c:	f7dff06f          	j	19e8 <fl_fseek+0x88>
    1a70:	fff00493          	li	s1,-1
    1a74:	f81ff06f          	j	19f4 <fl_fseek+0x94>

00001a78 <fl_fgetpos>:
    1a78:	06050663          	beqz	a0,1ae4 <fl_fgetpos+0x6c>
    1a7c:	0000a7b7          	lui	a5,0xa
    1a80:	5bc78713          	addi	a4,a5,1468 # a5bc <_fs>
    1a84:	03c72703          	lw	a4,60(a4)
    1a88:	ff010113          	addi	sp,sp,-16
    1a8c:	00812423          	sw	s0,8(sp)
    1a90:	00912223          	sw	s1,4(sp)
    1a94:	01212023          	sw	s2,0(sp)
    1a98:	00112623          	sw	ra,12(sp)
    1a9c:	00050493          	mv	s1,a0
    1aa0:	00058913          	mv	s2,a1
    1aa4:	5bc78413          	addi	s0,a5,1468
    1aa8:	00070463          	beqz	a4,1ab0 <fl_fgetpos+0x38>
    1aac:	000700e7          	jalr	a4
    1ab0:	0084a783          	lw	a5,8(s1)
    1ab4:	00000513          	li	a0,0
    1ab8:	00f92023          	sw	a5,0(s2)
    1abc:	04042783          	lw	a5,64(s0)
    1ac0:	00078663          	beqz	a5,1acc <fl_fgetpos+0x54>
    1ac4:	000780e7          	jalr	a5
    1ac8:	00000513          	li	a0,0
    1acc:	00c12083          	lw	ra,12(sp)
    1ad0:	00812403          	lw	s0,8(sp)
    1ad4:	00412483          	lw	s1,4(sp)
    1ad8:	00012903          	lw	s2,0(sp)
    1adc:	01010113          	addi	sp,sp,16
    1ae0:	00008067          	ret
    1ae4:	fff00513          	li	a0,-1
    1ae8:	00008067          	ret

00001aec <fl_ftell>:
    1aec:	fe010113          	addi	sp,sp,-32
    1af0:	00c10593          	addi	a1,sp,12
    1af4:	00112e23          	sw	ra,28(sp)
    1af8:	00012623          	sw	zero,12(sp)
    1afc:	00000097          	auipc	ra,0x0
    1b00:	f7c080e7          	jalr	-132(ra) # 1a78 <fl_fgetpos>
    1b04:	01c12083          	lw	ra,28(sp)
    1b08:	00c12503          	lw	a0,12(sp)
    1b0c:	02010113          	addi	sp,sp,32
    1b10:	00008067          	ret

00001b14 <fl_feof>:
    1b14:	06050663          	beqz	a0,1b80 <fl_feof+0x6c>
    1b18:	0000a7b7          	lui	a5,0xa
    1b1c:	5bc78713          	addi	a4,a5,1468 # a5bc <_fs>
    1b20:	03c72703          	lw	a4,60(a4)
    1b24:	fe010113          	addi	sp,sp,-32
    1b28:	00812c23          	sw	s0,24(sp)
    1b2c:	00912a23          	sw	s1,20(sp)
    1b30:	00112e23          	sw	ra,28(sp)
    1b34:	00050413          	mv	s0,a0
    1b38:	5bc78493          	addi	s1,a5,1468
    1b3c:	00070463          	beqz	a4,1b44 <fl_feof+0x30>
    1b40:	000700e7          	jalr	a4
    1b44:	00842783          	lw	a5,8(s0)
    1b48:	00c42703          	lw	a4,12(s0)
    1b4c:	40e78533          	sub	a0,a5,a4
    1b50:	0404a783          	lw	a5,64(s1)
    1b54:	00153513          	seqz	a0,a0
    1b58:	40a00533          	neg	a0,a0
    1b5c:	00078863          	beqz	a5,1b6c <fl_feof+0x58>
    1b60:	00a12623          	sw	a0,12(sp)
    1b64:	000780e7          	jalr	a5
    1b68:	00c12503          	lw	a0,12(sp)
    1b6c:	01c12083          	lw	ra,28(sp)
    1b70:	01812403          	lw	s0,24(sp)
    1b74:	01412483          	lw	s1,20(sp)
    1b78:	02010113          	addi	sp,sp,32
    1b7c:	00008067          	ret
    1b80:	fff00513          	li	a0,-1
    1b84:	00008067          	ret

00001b88 <fl_closedir>:
    1b88:	00000513          	li	a0,0
    1b8c:	00008067          	ret

00001b90 <fatfs_lfn_cache_init>:
    1b90:	100502a3          	sb	zero,261(a0)
    1b94:	04058663          	beqz	a1,1be0 <fatfs_lfn_cache_init+0x50>
    1b98:	ff010113          	addi	sp,sp,-16
    1b9c:	00812423          	sw	s0,8(sp)
    1ba0:	00912223          	sw	s1,4(sp)
    1ba4:	00112623          	sw	ra,12(sp)
    1ba8:	00050413          	mv	s0,a0
    1bac:	10450493          	addi	s1,a0,260
    1bb0:	00040513          	mv	a0,s0
    1bb4:	00d00613          	li	a2,13
    1bb8:	00000593          	li	a1,0
    1bbc:	00d40413          	addi	s0,s0,13
    1bc0:	fffff097          	auipc	ra,0xfffff
    1bc4:	d58080e7          	jalr	-680(ra) # 918 <memset>
    1bc8:	fe9414e3          	bne	s0,s1,1bb0 <fatfs_lfn_cache_init+0x20>
    1bcc:	00c12083          	lw	ra,12(sp)
    1bd0:	00812403          	lw	s0,8(sp)
    1bd4:	00412483          	lw	s1,4(sp)
    1bd8:	01010113          	addi	sp,sp,16
    1bdc:	00008067          	ret
    1be0:	00008067          	ret

00001be4 <fatfs_lfn_cache_entry>:
    1be4:	0005c783          	lbu	a5,0(a1)
    1be8:	01300693          	li	a3,19
    1bec:	01f7f793          	andi	a5,a5,31
    1bf0:	fff78713          	addi	a4,a5,-1
    1bf4:	0ff77613          	zext.b	a2,a4
    1bf8:	0ac6ea63          	bltu	a3,a2,1cac <fatfs_lfn_cache_entry+0xc8>
    1bfc:	10554683          	lbu	a3,261(a0)
    1c00:	00069463          	bnez	a3,1c08 <fatfs_lfn_cache_entry+0x24>
    1c04:	10f502a3          	sb	a5,261(a0)
    1c08:	00171793          	slli	a5,a4,0x1
    1c0c:	00e787b3          	add	a5,a5,a4
    1c10:	0015c683          	lbu	a3,1(a1)
    1c14:	00279793          	slli	a5,a5,0x2
    1c18:	00e787b3          	add	a5,a5,a4
    1c1c:	00f50533          	add	a0,a0,a5
    1c20:	00d50023          	sb	a3,0(a0)
    1c24:	0035c783          	lbu	a5,3(a1)
    1c28:	0ff00713          	li	a4,255
    1c2c:	02000693          	li	a3,32
    1c30:	00f500a3          	sb	a5,1(a0)
    1c34:	0055c783          	lbu	a5,5(a1)
    1c38:	00f50123          	sb	a5,2(a0)
    1c3c:	0075c783          	lbu	a5,7(a1)
    1c40:	00f501a3          	sb	a5,3(a0)
    1c44:	0095c783          	lbu	a5,9(a1)
    1c48:	00f50223          	sb	a5,4(a0)
    1c4c:	00e5c783          	lbu	a5,14(a1)
    1c50:	00f502a3          	sb	a5,5(a0)
    1c54:	0105c783          	lbu	a5,16(a1)
    1c58:	00f50323          	sb	a5,6(a0)
    1c5c:	0125c783          	lbu	a5,18(a1)
    1c60:	00f503a3          	sb	a5,7(a0)
    1c64:	0145c783          	lbu	a5,20(a1)
    1c68:	00f50423          	sb	a5,8(a0)
    1c6c:	0165c783          	lbu	a5,22(a1)
    1c70:	00f504a3          	sb	a5,9(a0)
    1c74:	0185c783          	lbu	a5,24(a1)
    1c78:	00f50523          	sb	a5,10(a0)
    1c7c:	01c5c783          	lbu	a5,28(a1)
    1c80:	00f505a3          	sb	a5,11(a0)
    1c84:	01e5c783          	lbu	a5,30(a1)
    1c88:	00f50623          	sb	a5,12(a0)
    1c8c:	00d00793          	li	a5,13
    1c90:	00054603          	lbu	a2,0(a0)
    1c94:	00e61463          	bne	a2,a4,1c9c <fatfs_lfn_cache_entry+0xb8>
    1c98:	00d50023          	sb	a3,0(a0)
    1c9c:	fff78793          	addi	a5,a5,-1
    1ca0:	0ff7f793          	zext.b	a5,a5
    1ca4:	00150513          	addi	a0,a0,1
    1ca8:	fe0794e3          	bnez	a5,1c90 <fatfs_lfn_cache_entry+0xac>
    1cac:	00008067          	ret

00001cb0 <fatfs_lfn_cache_get>:
    1cb0:	10554703          	lbu	a4,261(a0)
    1cb4:	01400793          	li	a5,20
    1cb8:	00f71663          	bne	a4,a5,1cc4 <fatfs_lfn_cache_get+0x14>
    1cbc:	10050223          	sb	zero,260(a0)
    1cc0:	00008067          	ret
    1cc4:	02070063          	beqz	a4,1ce4 <fatfs_lfn_cache_get+0x34>
    1cc8:	00171793          	slli	a5,a4,0x1
    1ccc:	00e787b3          	add	a5,a5,a4
    1cd0:	00279793          	slli	a5,a5,0x2
    1cd4:	00e787b3          	add	a5,a5,a4
    1cd8:	00f507b3          	add	a5,a0,a5
    1cdc:	00078023          	sb	zero,0(a5)
    1ce0:	00008067          	ret
    1ce4:	00050023          	sb	zero,0(a0)
    1ce8:	00008067          	ret

00001cec <fatfs_entry_lfn_text>:
    1cec:	00b54503          	lbu	a0,11(a0)
    1cf0:	00f57513          	andi	a0,a0,15
    1cf4:	ff150513          	addi	a0,a0,-15
    1cf8:	00153513          	seqz	a0,a0
    1cfc:	00008067          	ret

00001d00 <fatfs_entry_lfn_invalid>:
    1d00:	00054703          	lbu	a4,0(a0)
    1d04:	00050793          	mv	a5,a0
    1d08:	02070463          	beqz	a4,1d30 <fatfs_entry_lfn_invalid+0x30>
    1d0c:	0e500693          	li	a3,229
    1d10:	00100513          	li	a0,1
    1d14:	02d70063          	beq	a4,a3,1d34 <fatfs_entry_lfn_invalid+0x34>
    1d18:	00b7c783          	lbu	a5,11(a5)
    1d1c:	00800713          	li	a4,8
    1d20:	00e78a63          	beq	a5,a4,1d34 <fatfs_entry_lfn_invalid+0x34>
    1d24:	0067f793          	andi	a5,a5,6
    1d28:	00f03533          	snez	a0,a5
    1d2c:	00008067          	ret
    1d30:	00100513          	li	a0,1
    1d34:	00008067          	ret

00001d38 <fatfs_entry_lfn_exists>:
    1d38:	00b5c783          	lbu	a5,11(a1)
    1d3c:	00f00693          	li	a3,15
    1d40:	00050713          	mv	a4,a0
    1d44:	02d78a63          	beq	a5,a3,1d78 <fatfs_entry_lfn_exists+0x40>
    1d48:	0005c683          	lbu	a3,0(a1)
    1d4c:	00000513          	li	a0,0
    1d50:	02068663          	beqz	a3,1d7c <fatfs_entry_lfn_exists+0x44>
    1d54:	0e500613          	li	a2,229
    1d58:	02c68263          	beq	a3,a2,1d7c <fatfs_entry_lfn_exists+0x44>
    1d5c:	00800693          	li	a3,8
    1d60:	00d78e63          	beq	a5,a3,1d7c <fatfs_entry_lfn_exists+0x44>
    1d64:	0067f793          	andi	a5,a5,6
    1d68:	00079a63          	bnez	a5,1d7c <fatfs_entry_lfn_exists+0x44>
    1d6c:	10574503          	lbu	a0,261(a4)
    1d70:	00a03533          	snez	a0,a0
    1d74:	00008067          	ret
    1d78:	00000513          	li	a0,0
    1d7c:	00008067          	ret

00001d80 <fatfs_entry_sfn_only>:
    1d80:	00b54783          	lbu	a5,11(a0)
    1d84:	00f00713          	li	a4,15
    1d88:	02e78663          	beq	a5,a4,1db4 <fatfs_entry_sfn_only+0x34>
    1d8c:	00054703          	lbu	a4,0(a0)
    1d90:	00000513          	li	a0,0
    1d94:	02070263          	beqz	a4,1db8 <fatfs_entry_sfn_only+0x38>
    1d98:	0e500693          	li	a3,229
    1d9c:	00d70e63          	beq	a4,a3,1db8 <fatfs_entry_sfn_only+0x38>
    1da0:	00800713          	li	a4,8
    1da4:	00e78a63          	beq	a5,a4,1db8 <fatfs_entry_sfn_only+0x38>
    1da8:	0067f793          	andi	a5,a5,6
    1dac:	0017b513          	seqz	a0,a5
    1db0:	00008067          	ret
    1db4:	00000513          	li	a0,0
    1db8:	00008067          	ret

00001dbc <fatfs_entry_is_dir>:
    1dbc:	00b54503          	lbu	a0,11(a0)
    1dc0:	00455513          	srli	a0,a0,0x4
    1dc4:	00157513          	andi	a0,a0,1
    1dc8:	00008067          	ret

00001dcc <fatfs_entry_is_file>:
    1dcc:	00b54503          	lbu	a0,11(a0)
    1dd0:	00555513          	srli	a0,a0,0x5
    1dd4:	00157513          	andi	a0,a0,1
    1dd8:	00008067          	ret

00001ddc <fatfs_lfn_entries_required>:
    1ddc:	ff010113          	addi	sp,sp,-16
    1de0:	00112623          	sw	ra,12(sp)
    1de4:	fffff097          	auipc	ra,0xfffff
    1de8:	b74080e7          	jalr	-1164(ra) # 958 <strlen>
    1dec:	00050a63          	beqz	a0,1e00 <fatfs_lfn_entries_required+0x24>
    1df0:	00d00593          	li	a1,13
    1df4:	00c50513          	addi	a0,a0,12
    1df8:	fffff097          	auipc	ra,0xfffff
    1dfc:	a44080e7          	jalr	-1468(ra) # 83c <__divsi3>
    1e00:	00c12083          	lw	ra,12(sp)
    1e04:	01010113          	addi	sp,sp,16
    1e08:	00008067          	ret

00001e0c <fatfs_filename_to_lfn>:
    1e0c:	fa010113          	addi	sp,sp,-96
    1e10:	04912a23          	sw	s1,84(sp)
    1e14:	00058493          	mv	s1,a1
    1e18:	000065b7          	lui	a1,0x6
    1e1c:	f7458593          	addi	a1,a1,-140 # 5f74 <font+0x1e0>
    1e20:	05212823          	sw	s2,80(sp)
    1e24:	05312623          	sw	s3,76(sp)
    1e28:	00060913          	mv	s2,a2
    1e2c:	00050993          	mv	s3,a0
    1e30:	03400613          	li	a2,52
    1e34:	00c10513          	addi	a0,sp,12
    1e38:	04112e23          	sw	ra,92(sp)
    1e3c:	04812c23          	sw	s0,88(sp)
    1e40:	05412423          	sw	s4,72(sp)
    1e44:	05512223          	sw	s5,68(sp)
    1e48:	05612023          	sw	s6,64(sp)
    1e4c:	00068b13          	mv	s6,a3
    1e50:	fffff097          	auipc	ra,0xfffff
    1e54:	ae4080e7          	jalr	-1308(ra) # 934 <memcpy>
    1e58:	00098513          	mv	a0,s3
    1e5c:	fffff097          	auipc	ra,0xfffff
    1e60:	afc080e7          	jalr	-1284(ra) # 958 <strlen>
    1e64:	00050a93          	mv	s5,a0
    1e68:	00098513          	mv	a0,s3
    1e6c:	00000097          	auipc	ra,0x0
    1e70:	f70080e7          	jalr	-144(ra) # 1ddc <fatfs_lfn_entries_required>
    1e74:	00191793          	slli	a5,s2,0x1
    1e78:	012787b3          	add	a5,a5,s2
    1e7c:	00279793          	slli	a5,a5,0x2
    1e80:	00050a13          	mv	s4,a0
    1e84:	02000613          	li	a2,32
    1e88:	00000593          	li	a1,0
    1e8c:	00048513          	mv	a0,s1
    1e90:	01278433          	add	s0,a5,s2
    1e94:	fffff097          	auipc	ra,0xfffff
    1e98:	a84080e7          	jalr	-1404(ra) # 918 <memset>
    1e9c:	00190793          	addi	a5,s2,1
    1ea0:	fffa0a13          	addi	s4,s4,-1 # 3fff <fatfs_list_directory_next+0x17f>
    1ea4:	0ff7f793          	zext.b	a5,a5
    1ea8:	012a1463          	bne	s4,s2,1eb0 <fatfs_filename_to_lfn+0xa4>
    1eac:	0407e793          	ori	a5,a5,64
    1eb0:	00f48023          	sb	a5,0(s1)
    1eb4:	00f00793          	li	a5,15
    1eb8:	00f485a3          	sb	a5,11(s1)
    1ebc:	016486a3          	sb	s6,13(s1)
    1ec0:	00c10713          	addi	a4,sp,12
    1ec4:	00040793          	mv	a5,s0
    1ec8:	00d40593          	addi	a1,s0,13
    1ecc:	fff00613          	li	a2,-1
    1ed0:	00072683          	lw	a3,0(a4)
    1ed4:	00d486b3          	add	a3,s1,a3
    1ed8:	0557d263          	bge	a5,s5,1f1c <fatfs_filename_to_lfn+0x110>
    1edc:	00f98533          	add	a0,s3,a5
    1ee0:	00054503          	lbu	a0,0(a0)
    1ee4:	00a68023          	sb	a0,0(a3)
    1ee8:	00178793          	addi	a5,a5,1
    1eec:	00470713          	addi	a4,a4,4
    1ef0:	feb790e3          	bne	a5,a1,1ed0 <fatfs_filename_to_lfn+0xc4>
    1ef4:	05c12083          	lw	ra,92(sp)
    1ef8:	05812403          	lw	s0,88(sp)
    1efc:	05412483          	lw	s1,84(sp)
    1f00:	05012903          	lw	s2,80(sp)
    1f04:	04c12983          	lw	s3,76(sp)
    1f08:	04812a03          	lw	s4,72(sp)
    1f0c:	04412a83          	lw	s5,68(sp)
    1f10:	04012b03          	lw	s6,64(sp)
    1f14:	06010113          	addi	sp,sp,96
    1f18:	00008067          	ret
    1f1c:	00fa9663          	bne	s5,a5,1f28 <fatfs_filename_to_lfn+0x11c>
    1f20:	00068023          	sb	zero,0(a3)
    1f24:	fc5ff06f          	j	1ee8 <fatfs_filename_to_lfn+0xdc>
    1f28:	00c68023          	sb	a2,0(a3)
    1f2c:	00c680a3          	sb	a2,1(a3)
    1f30:	fb9ff06f          	j	1ee8 <fatfs_filename_to_lfn+0xdc>

00001f34 <fatfs_sfn_create_entry>:
    1f34:	00000793          	li	a5,0
    1f38:	00b00813          	li	a6,11
    1f3c:	00f508b3          	add	a7,a0,a5
    1f40:	0008c303          	lbu	t1,0(a7)
    1f44:	00f688b3          	add	a7,a3,a5
    1f48:	00178793          	addi	a5,a5,1
    1f4c:	00688023          	sb	t1,0(a7)
    1f50:	ff0796e3          	bne	a5,a6,1f3c <fatfs_sfn_create_entry+0x8>
    1f54:	02000793          	li	a5,32
    1f58:	000686a3          	sb	zero,13(a3)
    1f5c:	00068723          	sb	zero,14(a3)
    1f60:	000687a3          	sb	zero,15(a3)
    1f64:	000688a3          	sb	zero,17(a3)
    1f68:	00f68823          	sb	a5,16(a3)
    1f6c:	000689a3          	sb	zero,19(a3)
    1f70:	00f68923          	sb	a5,18(a3)
    1f74:	00068b23          	sb	zero,22(a3)
    1f78:	00068ba3          	sb	zero,23(a3)
    1f7c:	00068ca3          	sb	zero,25(a3)
    1f80:	00f68c23          	sb	a5,24(a3)
    1f84:	00070463          	beqz	a4,1f8c <fatfs_sfn_create_entry+0x58>
    1f88:	01000793          	li	a5,16
    1f8c:	00f685a3          	sb	a5,11(a3)
    1f90:	01065793          	srli	a5,a2,0x10
    1f94:	00f68a23          	sb	a5,20(a3)
    1f98:	0087d793          	srli	a5,a5,0x8
    1f9c:	00f68aa3          	sb	a5,21(a3)
    1fa0:	01061793          	slli	a5,a2,0x10
    1fa4:	0107d793          	srli	a5,a5,0x10
    1fa8:	0087d793          	srli	a5,a5,0x8
    1fac:	00f68da3          	sb	a5,27(a3)
    1fb0:	0085d793          	srli	a5,a1,0x8
    1fb4:	00b68e23          	sb	a1,28(a3)
    1fb8:	00f68ea3          	sb	a5,29(a3)
    1fbc:	0105d793          	srli	a5,a1,0x10
    1fc0:	0185d593          	srli	a1,a1,0x18
    1fc4:	00068623          	sb	zero,12(a3)
    1fc8:	00c68d23          	sb	a2,26(a3)
    1fcc:	00f68f23          	sb	a5,30(a3)
    1fd0:	00b68fa3          	sb	a1,31(a3)
    1fd4:	00008067          	ret

00001fd8 <fatfs_lfn_create_sfn>:
    1fd8:	0005c703          	lbu	a4,0(a1)
    1fdc:	02e00793          	li	a5,46
    1fe0:	16f70463          	beq	a4,a5,2148 <fatfs_lfn_create_sfn+0x170>
    1fe4:	fe010113          	addi	sp,sp,-32
    1fe8:	00912a23          	sw	s1,20(sp)
    1fec:	00050493          	mv	s1,a0
    1ff0:	00058513          	mv	a0,a1
    1ff4:	00112e23          	sw	ra,28(sp)
    1ff8:	00812c23          	sw	s0,24(sp)
    1ffc:	01212823          	sw	s2,16(sp)
    2000:	00058413          	mv	s0,a1
    2004:	fffff097          	auipc	ra,0xfffff
    2008:	954080e7          	jalr	-1708(ra) # 958 <strlen>
    200c:	00b00613          	li	a2,11
    2010:	02000593          	li	a1,32
    2014:	00050913          	mv	s2,a0
    2018:	00048513          	mv	a0,s1
    201c:	fffff097          	auipc	ra,0xfffff
    2020:	8fc080e7          	jalr	-1796(ra) # 918 <memset>
    2024:	00300613          	li	a2,3
    2028:	02000593          	li	a1,32
    202c:	00c10513          	addi	a0,sp,12
    2030:	fffff097          	auipc	ra,0xfffff
    2034:	8e8080e7          	jalr	-1816(ra) # 918 <memset>
    2038:	fff00713          	li	a4,-1
    203c:	00000793          	li	a5,0
    2040:	02e00693          	li	a3,46
    2044:	0d27c063          	blt	a5,s2,2104 <fatfs_lfn_create_sfn+0x12c>
    2048:	fff00793          	li	a5,-1
    204c:	0ef70663          	beq	a4,a5,2138 <fatfs_lfn_create_sfn+0x160>
    2050:	00170793          	addi	a5,a4,1
    2054:	00c10693          	addi	a3,sp,12
    2058:	00470613          	addi	a2,a4,4
    205c:	0cf61063          	bne	a2,a5,211c <fatfs_lfn_create_sfn+0x144>
    2060:	00000613          	li	a2,0
    2064:	00000693          	li	a3,0
    2068:	02000813          	li	a6,32
    206c:	02e00893          	li	a7,46
    2070:	01900313          	li	t1,25
    2074:	00800e13          	li	t3,8
    2078:	02e6da63          	bge	a3,a4,20ac <fatfs_lfn_create_sfn+0xd4>
    207c:	00d407b3          	add	a5,s0,a3
    2080:	0007c783          	lbu	a5,0(a5)
    2084:	03078263          	beq	a5,a6,20a8 <fatfs_lfn_create_sfn+0xd0>
    2088:	03178063          	beq	a5,a7,20a8 <fatfs_lfn_create_sfn+0xd0>
    208c:	f9f78593          	addi	a1,a5,-97
    2090:	0ff5f593          	zext.b	a1,a1
    2094:	00c48533          	add	a0,s1,a2
    2098:	00160613          	addi	a2,a2,1
    209c:	00b36463          	bltu	t1,a1,20a4 <fatfs_lfn_create_sfn+0xcc>
    20a0:	fe078793          	addi	a5,a5,-32
    20a4:	00f50023          	sb	a5,0(a0)
    20a8:	09c61c63          	bne	a2,t3,2140 <fatfs_lfn_create_sfn+0x168>
    20ac:	00c10793          	addi	a5,sp,12
    20b0:	00800693          	li	a3,8
    20b4:	01900513          	li	a0,25
    20b8:	00b00593          	li	a1,11
    20bc:	0007c703          	lbu	a4,0(a5)
    20c0:	f9f70613          	addi	a2,a4,-97
    20c4:	0ff67613          	zext.b	a2,a2
    20c8:	00c56663          	bltu	a0,a2,20d4 <fatfs_lfn_create_sfn+0xfc>
    20cc:	fe070713          	addi	a4,a4,-32
    20d0:	0ff77713          	zext.b	a4,a4
    20d4:	00d48633          	add	a2,s1,a3
    20d8:	00e60023          	sb	a4,0(a2)
    20dc:	00168693          	addi	a3,a3,1
    20e0:	00178793          	addi	a5,a5,1
    20e4:	fcb69ce3          	bne	a3,a1,20bc <fatfs_lfn_create_sfn+0xe4>
    20e8:	01c12083          	lw	ra,28(sp)
    20ec:	01812403          	lw	s0,24(sp)
    20f0:	01412483          	lw	s1,20(sp)
    20f4:	01012903          	lw	s2,16(sp)
    20f8:	00100513          	li	a0,1
    20fc:	02010113          	addi	sp,sp,32
    2100:	00008067          	ret
    2104:	00f40633          	add	a2,s0,a5
    2108:	00064603          	lbu	a2,0(a2)
    210c:	00d61463          	bne	a2,a3,2114 <fatfs_lfn_create_sfn+0x13c>
    2110:	00078713          	mv	a4,a5
    2114:	00178793          	addi	a5,a5,1
    2118:	f2dff06f          	j	2044 <fatfs_lfn_create_sfn+0x6c>
    211c:	0127d863          	bge	a5,s2,212c <fatfs_lfn_create_sfn+0x154>
    2120:	00f405b3          	add	a1,s0,a5
    2124:	0005c583          	lbu	a1,0(a1)
    2128:	00b68023          	sb	a1,0(a3)
    212c:	00178793          	addi	a5,a5,1
    2130:	00168693          	addi	a3,a3,1
    2134:	f29ff06f          	j	205c <fatfs_lfn_create_sfn+0x84>
    2138:	00090713          	mv	a4,s2
    213c:	f25ff06f          	j	2060 <fatfs_lfn_create_sfn+0x88>
    2140:	00168693          	addi	a3,a3,1
    2144:	f35ff06f          	j	2078 <fatfs_lfn_create_sfn+0xa0>
    2148:	00000513          	li	a0,0
    214c:	00008067          	ret

00002150 <fatfs_lfn_generate_tail>:
    2150:	000187b7          	lui	a5,0x18
    2154:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2158:	16c7e063          	bltu	a5,a2,22b8 <fatfs_lfn_generate_tail+0x168>
    215c:	fa010113          	addi	sp,sp,-96
    2160:	04812c23          	sw	s0,88(sp)
    2164:	04912a23          	sw	s1,84(sp)
    2168:	05412423          	sw	s4,72(sp)
    216c:	00050493          	mv	s1,a0
    2170:	00058a13          	mv	s4,a1
    2174:	00060413          	mv	s0,a2
    2178:	00000593          	li	a1,0
    217c:	00c00613          	li	a2,12
    2180:	00410513          	addi	a0,sp,4
    2184:	04112e23          	sw	ra,92(sp)
    2188:	05212823          	sw	s2,80(sp)
    218c:	05512223          	sw	s5,68(sp)
    2190:	03712e23          	sw	s7,60(sp)
    2194:	05312623          	sw	s3,76(sp)
    2198:	05612023          	sw	s6,64(sp)
    219c:	ffffe097          	auipc	ra,0xffffe
    21a0:	77c080e7          	jalr	1916(ra) # 918 <memset>
    21a4:	000065b7          	lui	a1,0x6
    21a8:	07e00793          	li	a5,126
    21ac:	01100613          	li	a2,17
    21b0:	03c58593          	addi	a1,a1,60 # 603c <font+0x2a8>
    21b4:	01c10513          	addi	a0,sp,28
    21b8:	01010913          	addi	s2,sp,16
    21bc:	00f10223          	sb	a5,4(sp)
    21c0:	00090a93          	mv	s5,s2
    21c4:	ffffe097          	auipc	ra,0xffffe
    21c8:	770080e7          	jalr	1904(ra) # 934 <memcpy>
    21cc:	00900b93          	li	s7,9
    21d0:	00a00593          	li	a1,10
    21d4:	00040513          	mv	a0,s0
    21d8:	ffffe097          	auipc	ra,0xffffe
    21dc:	6b4080e7          	jalr	1716(ra) # 88c <__umodsi3>
    21e0:	03050793          	addi	a5,a0,48
    21e4:	00278533          	add	a0,a5,sp
    21e8:	fec54783          	lbu	a5,-20(a0)
    21ec:	00090993          	mv	s3,s2
    21f0:	00040513          	mv	a0,s0
    21f4:	00a00593          	li	a1,10
    21f8:	00f90023          	sb	a5,0(s2)
    21fc:	00040b13          	mv	s6,s0
    2200:	ffffe097          	auipc	ra,0xffffe
    2204:	644080e7          	jalr	1604(ra) # 844 <__udivsi3>
    2208:	00190913          	addi	s2,s2,1
    220c:	00050413          	mv	s0,a0
    2210:	fd6be0e3          	bltu	s7,s6,21d0 <fatfs_lfn_generate_tail+0x80>
    2214:	00090023          	sb	zero,0(s2)
    2218:	00410713          	addi	a4,sp,4
    221c:	00098793          	mv	a5,s3
    2220:	0007c683          	lbu	a3,0(a5)
    2224:	fff78793          	addi	a5,a5,-1
    2228:	00170713          	addi	a4,a4,1
    222c:	00d70023          	sb	a3,0(a4)
    2230:	ff57f8e3          	bgeu	a5,s5,2220 <fatfs_lfn_generate_tail+0xd0>
    2234:	00100793          	li	a5,1
    2238:	0159e663          	bltu	s3,s5,2244 <fatfs_lfn_generate_tail+0xf4>
    223c:	415787b3          	sub	a5,a5,s5
    2240:	00f987b3          	add	a5,s3,a5
    2244:	03078793          	addi	a5,a5,48
    2248:	002787b3          	add	a5,a5,sp
    224c:	000a0593          	mv	a1,s4
    2250:	fc078aa3          	sb	zero,-43(a5)
    2254:	00b00613          	li	a2,11
    2258:	00048513          	mv	a0,s1
    225c:	ffffe097          	auipc	ra,0xffffe
    2260:	6d8080e7          	jalr	1752(ra) # 934 <memcpy>
    2264:	00410513          	addi	a0,sp,4
    2268:	ffffe097          	auipc	ra,0xffffe
    226c:	6f0080e7          	jalr	1776(ra) # 958 <strlen>
    2270:	40a484b3          	sub	s1,s1,a0
    2274:	00050613          	mv	a2,a0
    2278:	00410593          	addi	a1,sp,4
    227c:	00848513          	addi	a0,s1,8
    2280:	ffffe097          	auipc	ra,0xffffe
    2284:	6b4080e7          	jalr	1716(ra) # 934 <memcpy>
    2288:	05c12083          	lw	ra,92(sp)
    228c:	05812403          	lw	s0,88(sp)
    2290:	05412483          	lw	s1,84(sp)
    2294:	05012903          	lw	s2,80(sp)
    2298:	04c12983          	lw	s3,76(sp)
    229c:	04812a03          	lw	s4,72(sp)
    22a0:	04412a83          	lw	s5,68(sp)
    22a4:	04012b03          	lw	s6,64(sp)
    22a8:	03c12b83          	lw	s7,60(sp)
    22ac:	00100513          	li	a0,1
    22b0:	06010113          	addi	sp,sp,96
    22b4:	00008067          	ret
    22b8:	00000513          	li	a0,0
    22bc:	00008067          	ret

000022c0 <fatfs_total_path_levels>:
    22c0:	00050793          	mv	a5,a0
    22c4:	06050463          	beqz	a0,232c <fatfs_total_path_levels+0x6c>
    22c8:	00054703          	lbu	a4,0(a0)
    22cc:	02f00693          	li	a3,47
    22d0:	00d71863          	bne	a4,a3,22e0 <fatfs_total_path_levels+0x20>
    22d4:	00150793          	addi	a5,a0,1
    22d8:	00000513          	li	a0,0
    22dc:	0400006f          	j	231c <fatfs_total_path_levels+0x5c>
    22e0:	00154683          	lbu	a3,1(a0)
    22e4:	03a00713          	li	a4,58
    22e8:	00e68a63          	beq	a3,a4,22fc <fatfs_total_path_levels+0x3c>
    22ec:	00254683          	lbu	a3,2(a0)
    22f0:	05c00713          	li	a4,92
    22f4:	fff00513          	li	a0,-1
    22f8:	02e69c63          	bne	a3,a4,2330 <fatfs_total_path_levels+0x70>
    22fc:	00378793          	addi	a5,a5,3
    2300:	05c00713          	li	a4,92
    2304:	fd5ff06f          	j	22d8 <fatfs_total_path_levels+0x18>
    2308:	00178793          	addi	a5,a5,1
    230c:	00e68663          	beq	a3,a4,2318 <fatfs_total_path_levels+0x58>
    2310:	0007c683          	lbu	a3,0(a5)
    2314:	fe069ae3          	bnez	a3,2308 <fatfs_total_path_levels+0x48>
    2318:	00150513          	addi	a0,a0,1
    231c:	0007c683          	lbu	a3,0(a5)
    2320:	fe0698e3          	bnez	a3,2310 <fatfs_total_path_levels+0x50>
    2324:	fff50513          	addi	a0,a0,-1
    2328:	00008067          	ret
    232c:	fff00513          	li	a0,-1
    2330:	00008067          	ret

00002334 <fatfs_get_substring>:
    2334:	0c050c63          	beqz	a0,240c <fatfs_get_substring+0xd8>
    2338:	fe010113          	addi	sp,sp,-32
    233c:	00912a23          	sw	s1,20(sp)
    2340:	00112e23          	sw	ra,28(sp)
    2344:	00812c23          	sw	s0,24(sp)
    2348:	01212823          	sw	s2,16(sp)
    234c:	01312623          	sw	s3,12(sp)
    2350:	01412423          	sw	s4,8(sp)
    2354:	00050793          	mv	a5,a0
    2358:	00068493          	mv	s1,a3
    235c:	fff00513          	li	a0,-1
    2360:	06d05a63          	blez	a3,23d4 <fatfs_get_substring+0xa0>
    2364:	0007c983          	lbu	s3,0(a5)
    2368:	02f00713          	li	a4,47
    236c:	00058a13          	mv	s4,a1
    2370:	00060913          	mv	s2,a2
    2374:	00178413          	addi	s0,a5,1
    2378:	02e98463          	beq	s3,a4,23a0 <fatfs_get_substring+0x6c>
    237c:	0017c683          	lbu	a3,1(a5)
    2380:	03a00713          	li	a4,58
    2384:	00e68a63          	beq	a3,a4,2398 <fatfs_get_substring+0x64>
    2388:	0027c683          	lbu	a3,2(a5)
    238c:	05c00713          	li	a4,92
    2390:	fff00513          	li	a0,-1
    2394:	04e69063          	bne	a3,a4,23d4 <fatfs_get_substring+0xa0>
    2398:	00378413          	addi	s0,a5,3
    239c:	05c00993          	li	s3,92
    23a0:	00040513          	mv	a0,s0
    23a4:	ffffe097          	auipc	ra,0xffffe
    23a8:	5b4080e7          	jalr	1460(ra) # 958 <strlen>
    23ac:	00000713          	li	a4,0
    23b0:	00000693          	li	a3,0
    23b4:	00000793          	li	a5,0
    23b8:	fff48493          	addi	s1,s1,-1
    23bc:	00e905b3          	add	a1,s2,a4
    23c0:	02a7ca63          	blt	a5,a0,23f4 <fatfs_get_substring+0xc0>
    23c4:	00058023          	sb	zero,0(a1)
    23c8:	00094503          	lbu	a0,0(s2)
    23cc:	00153513          	seqz	a0,a0
    23d0:	40a00533          	neg	a0,a0
    23d4:	01c12083          	lw	ra,28(sp)
    23d8:	01812403          	lw	s0,24(sp)
    23dc:	01412483          	lw	s1,20(sp)
    23e0:	01012903          	lw	s2,16(sp)
    23e4:	00c12983          	lw	s3,12(sp)
    23e8:	00812a03          	lw	s4,8(sp)
    23ec:	02010113          	addi	sp,sp,32
    23f0:	00008067          	ret
    23f4:	00f40633          	add	a2,s0,a5
    23f8:	00064603          	lbu	a2,0(a2)
    23fc:	01361c63          	bne	a2,s3,2414 <fatfs_get_substring+0xe0>
    2400:	00168693          	addi	a3,a3,1
    2404:	00178793          	addi	a5,a5,1
    2408:	fb5ff06f          	j	23bc <fatfs_get_substring+0x88>
    240c:	fff00513          	li	a0,-1
    2410:	00008067          	ret
    2414:	ff4698e3          	bne	a3,s4,2404 <fatfs_get_substring+0xd0>
    2418:	fe9756e3          	bge	a4,s1,2404 <fatfs_get_substring+0xd0>
    241c:	00170713          	addi	a4,a4,1
    2420:	00c58023          	sb	a2,0(a1)
    2424:	fe1ff06f          	j	2404 <fatfs_get_substring+0xd0>

00002428 <fatfs_split_path>:
    2428:	fd010113          	addi	sp,sp,-48
    242c:	02912223          	sw	s1,36(sp)
    2430:	03212023          	sw	s2,32(sp)
    2434:	01312e23          	sw	s3,28(sp)
    2438:	01412c23          	sw	s4,24(sp)
    243c:	02112623          	sw	ra,44(sp)
    2440:	00068a13          	mv	s4,a3
    2444:	02812423          	sw	s0,40(sp)
    2448:	00050913          	mv	s2,a0
    244c:	00058493          	mv	s1,a1
    2450:	00060993          	mv	s3,a2
    2454:	00e12623          	sw	a4,12(sp)
    2458:	00000097          	auipc	ra,0x0
    245c:	e68080e7          	jalr	-408(ra) # 22c0 <fatfs_total_path_levels>
    2460:	fff00793          	li	a5,-1
    2464:	00c12683          	lw	a3,12(sp)
    2468:	02f51663          	bne	a0,a5,2494 <fatfs_split_path+0x6c>
    246c:	fff00413          	li	s0,-1
    2470:	02c12083          	lw	ra,44(sp)
    2474:	00040513          	mv	a0,s0
    2478:	02812403          	lw	s0,40(sp)
    247c:	02412483          	lw	s1,36(sp)
    2480:	02012903          	lw	s2,32(sp)
    2484:	01c12983          	lw	s3,28(sp)
    2488:	01812a03          	lw	s4,24(sp)
    248c:	03010113          	addi	sp,sp,48
    2490:	00008067          	ret
    2494:	00050413          	mv	s0,a0
    2498:	00050593          	mv	a1,a0
    249c:	000a0613          	mv	a2,s4
    24a0:	00090513          	mv	a0,s2
    24a4:	00000097          	auipc	ra,0x0
    24a8:	e90080e7          	jalr	-368(ra) # 2334 <fatfs_get_substring>
    24ac:	fc0510e3          	bnez	a0,246c <fatfs_split_path+0x44>
    24b0:	00041663          	bnez	s0,24bc <fatfs_split_path+0x94>
    24b4:	00048023          	sb	zero,0(s1)
    24b8:	fb9ff06f          	j	2470 <fatfs_split_path+0x48>
    24bc:	00090513          	mv	a0,s2
    24c0:	ffffe097          	auipc	ra,0xffffe
    24c4:	498080e7          	jalr	1176(ra) # 958 <strlen>
    24c8:	00050413          	mv	s0,a0
    24cc:	000a0513          	mv	a0,s4
    24d0:	ffffe097          	auipc	ra,0xffffe
    24d4:	488080e7          	jalr	1160(ra) # 958 <strlen>
    24d8:	40a40433          	sub	s0,s0,a0
    24dc:	0089d463          	bge	s3,s0,24e4 <fatfs_split_path+0xbc>
    24e0:	00098413          	mv	s0,s3
    24e4:	00040613          	mv	a2,s0
    24e8:	00048513          	mv	a0,s1
    24ec:	00090593          	mv	a1,s2
    24f0:	008484b3          	add	s1,s1,s0
    24f4:	ffffe097          	auipc	ra,0xffffe
    24f8:	440080e7          	jalr	1088(ra) # 934 <memcpy>
    24fc:	00000413          	li	s0,0
    2500:	fe048fa3          	sb	zero,-1(s1)
    2504:	f6dff06f          	j	2470 <fatfs_split_path+0x48>

00002508 <fatfs_compare_names>:
    2508:	fd010113          	addi	sp,sp,-48
    250c:	02112623          	sw	ra,44(sp)
    2510:	02812423          	sw	s0,40(sp)
    2514:	02912223          	sw	s1,36(sp)
    2518:	03212023          	sw	s2,32(sp)
    251c:	01312e23          	sw	s3,28(sp)
    2520:	00058913          	mv	s2,a1
    2524:	01412c23          	sw	s4,24(sp)
    2528:	01512a23          	sw	s5,20(sp)
    252c:	01612823          	sw	s6,16(sp)
    2530:	00050a13          	mv	s4,a0
    2534:	fffff097          	auipc	ra,0xfffff
    2538:	d1c080e7          	jalr	-740(ra) # 1250 <FileString_GetExtension>
    253c:	00050493          	mv	s1,a0
    2540:	00090513          	mv	a0,s2
    2544:	fffff097          	auipc	ra,0xfffff
    2548:	d0c080e7          	jalr	-756(ra) # 1250 <FileString_GetExtension>
    254c:	fff00793          	li	a5,-1
    2550:	00050413          	mv	s0,a0
    2554:	00000993          	li	s3,0
    2558:	0af49263          	bne	s1,a5,25fc <fatfs_compare_names+0xf4>
    255c:	0e951863          	bne	a0,s1,264c <fatfs_compare_names+0x144>
    2560:	000a0513          	mv	a0,s4
    2564:	ffffe097          	auipc	ra,0xffffe
    2568:	3f4080e7          	jalr	1012(ra) # 958 <strlen>
    256c:	00050493          	mv	s1,a0
    2570:	00090513          	mv	a0,s2
    2574:	ffffe097          	auipc	ra,0xffffe
    2578:	3e4080e7          	jalr	996(ra) # 958 <strlen>
    257c:	00050413          	mv	s0,a0
    2580:	fff48793          	addi	a5,s1,-1
    2584:	00fa07b3          	add	a5,s4,a5
    2588:	40978733          	sub	a4,a5,s1
    258c:	02000613          	li	a2,32
    2590:	00078693          	mv	a3,a5
    2594:	00e78863          	beq	a5,a4,25a4 <fatfs_compare_names+0x9c>
    2598:	0007c583          	lbu	a1,0(a5)
    259c:	fff78793          	addi	a5,a5,-1
    25a0:	04c58663          	beq	a1,a2,25ec <fatfs_compare_names+0xe4>
    25a4:	fff40793          	addi	a5,s0,-1
    25a8:	00f907b3          	add	a5,s2,a5
    25ac:	40878733          	sub	a4,a5,s0
    25b0:	02000613          	li	a2,32
    25b4:	00078693          	mv	a3,a5
    25b8:	00e78863          	beq	a5,a4,25c8 <fatfs_compare_names+0xc0>
    25bc:	0007c583          	lbu	a1,0(a5)
    25c0:	fff78793          	addi	a5,a5,-1
    25c4:	02c58863          	beq	a1,a2,25f4 <fatfs_compare_names+0xec>
    25c8:	00000993          	li	s3,0
    25cc:	08941063          	bne	s0,s1,264c <fatfs_compare_names+0x144>
    25d0:	00040613          	mv	a2,s0
    25d4:	00090593          	mv	a1,s2
    25d8:	000a0513          	mv	a0,s4
    25dc:	fffff097          	auipc	ra,0xfffff
    25e0:	c04080e7          	jalr	-1020(ra) # 11e0 <FileString_StrCmpNoCase>
    25e4:	00153993          	seqz	s3,a0
    25e8:	0640006f          	j	264c <fatfs_compare_names+0x144>
    25ec:	414684b3          	sub	s1,a3,s4
    25f0:	fa1ff06f          	j	2590 <fatfs_compare_names+0x88>
    25f4:	41268433          	sub	s0,a3,s2
    25f8:	fbdff06f          	j	25b4 <fatfs_compare_names+0xac>
    25fc:	04f50863          	beq	a0,a5,264c <fatfs_compare_names+0x144>
    2600:	00148a93          	addi	s5,s1,1
    2604:	015a0ab3          	add	s5,s4,s5
    2608:	00140b13          	addi	s6,s0,1
    260c:	000a8513          	mv	a0,s5
    2610:	ffffe097          	auipc	ra,0xffffe
    2614:	348080e7          	jalr	840(ra) # 958 <strlen>
    2618:	01690b33          	add	s6,s2,s6
    261c:	00a12623          	sw	a0,12(sp)
    2620:	000b0513          	mv	a0,s6
    2624:	ffffe097          	auipc	ra,0xffffe
    2628:	334080e7          	jalr	820(ra) # 958 <strlen>
    262c:	00c12603          	lw	a2,12(sp)
    2630:	00000993          	li	s3,0
    2634:	00a61c63          	bne	a2,a0,264c <fatfs_compare_names+0x144>
    2638:	000b0593          	mv	a1,s6
    263c:	000a8513          	mv	a0,s5
    2640:	fffff097          	auipc	ra,0xfffff
    2644:	ba0080e7          	jalr	-1120(ra) # 11e0 <FileString_StrCmpNoCase>
    2648:	f2050ce3          	beqz	a0,2580 <fatfs_compare_names+0x78>
    264c:	02c12083          	lw	ra,44(sp)
    2650:	02812403          	lw	s0,40(sp)
    2654:	02412483          	lw	s1,36(sp)
    2658:	02012903          	lw	s2,32(sp)
    265c:	01812a03          	lw	s4,24(sp)
    2660:	01412a83          	lw	s5,20(sp)
    2664:	01012b03          	lw	s6,16(sp)
    2668:	00098513          	mv	a0,s3
    266c:	01c12983          	lw	s3,28(sp)
    2670:	03010113          	addi	sp,sp,48
    2674:	00008067          	ret

00002678 <_check_file_open>:
    2678:	fe010113          	addi	sp,sp,-32
    267c:	000067b7          	lui	a5,0x6
    2680:	00812c23          	sw	s0,24(sp)
    2684:	1e47a403          	lw	s0,484(a5) # 61e4 <_open_file_list>
    2688:	00912a23          	sw	s1,20(sp)
    268c:	01212823          	sw	s2,16(sp)
    2690:	01312623          	sw	s3,12(sp)
    2694:	00112e23          	sw	ra,28(sp)
    2698:	00050493          	mv	s1,a0
    269c:	01450913          	addi	s2,a0,20
    26a0:	11850993          	addi	s3,a0,280
    26a4:	02041263          	bnez	s0,26c8 <_check_file_open+0x50>
    26a8:	00000513          	li	a0,0
    26ac:	01c12083          	lw	ra,28(sp)
    26b0:	01812403          	lw	s0,24(sp)
    26b4:	01412483          	lw	s1,20(sp)
    26b8:	01012903          	lw	s2,16(sp)
    26bc:	00c12983          	lw	s3,12(sp)
    26c0:	02010113          	addi	sp,sp,32
    26c4:	00008067          	ret
    26c8:	bc440793          	addi	a5,s0,-1084
    26cc:	02f48663          	beq	s1,a5,26f8 <_check_file_open+0x80>
    26d0:	00090593          	mv	a1,s2
    26d4:	bd840513          	addi	a0,s0,-1064
    26d8:	00000097          	auipc	ra,0x0
    26dc:	e30080e7          	jalr	-464(ra) # 2508 <fatfs_compare_names>
    26e0:	00050c63          	beqz	a0,26f8 <_check_file_open+0x80>
    26e4:	00098593          	mv	a1,s3
    26e8:	cdc40513          	addi	a0,s0,-804
    26ec:	00000097          	auipc	ra,0x0
    26f0:	e1c080e7          	jalr	-484(ra) # 2508 <fatfs_compare_names>
    26f4:	00051663          	bnez	a0,2700 <_check_file_open+0x88>
    26f8:	00442403          	lw	s0,4(s0)
    26fc:	fa9ff06f          	j	26a4 <_check_file_open+0x2c>
    2700:	00100513          	li	a0,1
    2704:	fa9ff06f          	j	26ac <_check_file_open+0x34>

00002708 <fatfs_string_ends_with_slash>:
    2708:	00050a63          	beqz	a0,271c <fatfs_string_ends_with_slash+0x14>
    270c:	05c00713          	li	a4,92
    2710:	02f00693          	li	a3,47
    2714:	00054783          	lbu	a5,0(a0)
    2718:	00079663          	bnez	a5,2724 <fatfs_string_ends_with_slash+0x1c>
    271c:	00000513          	li	a0,0
    2720:	00008067          	ret
    2724:	00154603          	lbu	a2,1(a0)
    2728:	00061663          	bnez	a2,2734 <fatfs_string_ends_with_slash+0x2c>
    272c:	00e78863          	beq	a5,a4,273c <fatfs_string_ends_with_slash+0x34>
    2730:	00d78663          	beq	a5,a3,273c <fatfs_string_ends_with_slash+0x34>
    2734:	00150513          	addi	a0,a0,1
    2738:	fddff06f          	j	2714 <fatfs_string_ends_with_slash+0xc>
    273c:	00100513          	li	a0,1
    2740:	00008067          	ret

00002744 <fatfs_get_sfn_display_name>:
    2744:	00000713          	li	a4,0
    2748:	00c00613          	li	a2,12
    274c:	02000813          	li	a6,32
    2750:	01900893          	li	a7,25
    2754:	0005c783          	lbu	a5,0(a1)
    2758:	00078463          	beqz	a5,2760 <fatfs_get_sfn_display_name+0x1c>
    275c:	00c71863          	bne	a4,a2,276c <fatfs_get_sfn_display_name+0x28>
    2760:	00050023          	sb	zero,0(a0)
    2764:	00100513          	li	a0,1
    2768:	00008067          	ret
    276c:	00158593          	addi	a1,a1,1
    2770:	ff0782e3          	beq	a5,a6,2754 <fatfs_get_sfn_display_name+0x10>
    2774:	fbf78693          	addi	a3,a5,-65
    2778:	0ff6f693          	zext.b	a3,a3
    277c:	00d8e663          	bltu	a7,a3,2788 <fatfs_get_sfn_display_name+0x44>
    2780:	02078793          	addi	a5,a5,32
    2784:	0ff7f793          	zext.b	a5,a5
    2788:	00f50023          	sb	a5,0(a0)
    278c:	00170713          	addi	a4,a4,1
    2790:	00150513          	addi	a0,a0,1
    2794:	fc1ff06f          	j	2754 <fatfs_get_sfn_display_name+0x10>

00002798 <fatfs_get_extension>:
    2798:	ff010113          	addi	sp,sp,-16
    279c:	00812423          	sw	s0,8(sp)
    27a0:	00912223          	sw	s1,4(sp)
    27a4:	01212023          	sw	s2,0(sp)
    27a8:	00112623          	sw	ra,12(sp)
    27ac:	00050913          	mv	s2,a0
    27b0:	00058493          	mv	s1,a1
    27b4:	00060413          	mv	s0,a2
    27b8:	fffff097          	auipc	ra,0xfffff
    27bc:	a98080e7          	jalr	-1384(ra) # 1250 <FileString_GetExtension>
    27c0:	06a05c63          	blez	a0,2838 <fatfs_get_extension+0xa0>
    27c4:	06048a63          	beqz	s1,2838 <fatfs_get_extension+0xa0>
    27c8:	02040863          	beqz	s0,27f8 <fatfs_get_extension+0x60>
    27cc:	00150513          	addi	a0,a0,1
    27d0:	00000713          	li	a4,0
    27d4:	fff40413          	addi	s0,s0,-1
    27d8:	01900593          	li	a1,25
    27dc:	00e507b3          	add	a5,a0,a4
    27e0:	00f907b3          	add	a5,s2,a5
    27e4:	0007c783          	lbu	a5,0(a5)
    27e8:	00e48633          	add	a2,s1,a4
    27ec:	02079463          	bnez	a5,2814 <fatfs_get_extension+0x7c>
    27f0:	00060023          	sb	zero,0(a2)
    27f4:	00100413          	li	s0,1
    27f8:	00c12083          	lw	ra,12(sp)
    27fc:	00040513          	mv	a0,s0
    2800:	00812403          	lw	s0,8(sp)
    2804:	00412483          	lw	s1,4(sp)
    2808:	00012903          	lw	s2,0(sp)
    280c:	01010113          	addi	sp,sp,16
    2810:	00008067          	ret
    2814:	fc875ee3          	bge	a4,s0,27f0 <fatfs_get_extension+0x58>
    2818:	fbf78693          	addi	a3,a5,-65
    281c:	0ff6f693          	zext.b	a3,a3
    2820:	00d5e663          	bltu	a1,a3,282c <fatfs_get_extension+0x94>
    2824:	02078793          	addi	a5,a5,32
    2828:	0ff7f793          	zext.b	a5,a5
    282c:	00f60023          	sb	a5,0(a2)
    2830:	00170713          	addi	a4,a4,1
    2834:	fa9ff06f          	j	27dc <fatfs_get_extension+0x44>
    2838:	00000413          	li	s0,0
    283c:	fbdff06f          	j	27f8 <fatfs_get_extension+0x60>

00002840 <fatfs_create_path_string>:
    2840:	00050893          	mv	a7,a0
    2844:	00000513          	li	a0,0
    2848:	0a088263          	beqz	a7,28ec <fatfs_create_path_string+0xac>
    284c:	0a058063          	beqz	a1,28ec <fatfs_create_path_string+0xac>
    2850:	08060e63          	beqz	a2,28ec <fatfs_create_path_string+0xac>
    2854:	00d04463          	bgtz	a3,285c <fatfs_create_path_string+0x1c>
    2858:	00008067          	ret
    285c:	02f00313          	li	t1,47
    2860:	00000513          	li	a0,0
    2864:	00000713          	li	a4,0
    2868:	ffe68e13          	addi	t3,a3,-2
    286c:	05c00e93          	li	t4,92
    2870:	01c0006f          	j	288c <fatfs_create_path_string+0x4c>
    2874:	03c75463          	bge	a4,t3,289c <fatfs_create_path_string+0x5c>
    2878:	01d81463          	bne	a6,t4,2880 <fatfs_create_path_string+0x40>
    287c:	05c00313          	li	t1,92
    2880:	01078023          	sb	a6,0(a5)
    2884:	00170713          	addi	a4,a4,1
    2888:	00080513          	mv	a0,a6
    288c:	00e88833          	add	a6,a7,a4
    2890:	00084803          	lbu	a6,0(a6)
    2894:	00e607b3          	add	a5,a2,a4
    2898:	fc081ee3          	bnez	a6,2874 <fatfs_create_path_string+0x34>
    289c:	05c00613          	li	a2,92
    28a0:	02c51063          	bne	a0,a2,28c0 <fatfs_create_path_string+0x80>
    28a4:	fff68693          	addi	a3,a3,-1
    28a8:	40b70733          	sub	a4,a4,a1
    28ac:	0005c603          	lbu	a2,0(a1)
    28b0:	02061263          	bnez	a2,28d4 <fatfs_create_path_string+0x94>
    28b4:	00078023          	sb	zero,0(a5)
    28b8:	00100513          	li	a0,1
    28bc:	00008067          	ret
    28c0:	02f00613          	li	a2,47
    28c4:	fec500e3          	beq	a0,a2,28a4 <fatfs_create_path_string+0x64>
    28c8:	00678023          	sb	t1,0(a5)
    28cc:	00178793          	addi	a5,a5,1
    28d0:	fd5ff06f          	j	28a4 <fatfs_create_path_string+0x64>
    28d4:	00e58533          	add	a0,a1,a4
    28d8:	fcd55ee3          	bge	a0,a3,28b4 <fatfs_create_path_string+0x74>
    28dc:	00178793          	addi	a5,a5,1
    28e0:	00158593          	addi	a1,a1,1
    28e4:	fec78fa3          	sb	a2,-1(a5)
    28e8:	fc5ff06f          	j	28ac <fatfs_create_path_string+0x6c>
    28ec:	00008067          	ret

000028f0 <fatfs_fat_init>:
    28f0:	ff010113          	addi	sp,sp,-16
    28f4:	00812423          	sw	s0,8(sp)
    28f8:	00912223          	sw	s1,4(sp)
    28fc:	00112623          	sw	ra,12(sp)
    2900:	fff00793          	li	a5,-1
    2904:	25850493          	addi	s1,a0,600
    2908:	00050413          	mv	s0,a0
    290c:	44f52c23          	sw	a5,1112(a0)
    2910:	24052a23          	sw	zero,596(a0)
    2914:	44052e23          	sw	zero,1116(a0)
    2918:	20000613          	li	a2,512
    291c:	00048513          	mv	a0,s1
    2920:	00000593          	li	a1,0
    2924:	ffffe097          	auipc	ra,0xffffe
    2928:	ff4080e7          	jalr	-12(ra) # 918 <memset>
    292c:	25442783          	lw	a5,596(s0)
    2930:	00c12083          	lw	ra,12(sp)
    2934:	24942a23          	sw	s1,596(s0)
    2938:	46042023          	sw	zero,1120(s0)
    293c:	46f42223          	sw	a5,1124(s0)
    2940:	00812403          	lw	s0,8(sp)
    2944:	00412483          	lw	s1,4(sp)
    2948:	01010113          	addi	sp,sp,16
    294c:	00008067          	ret

00002950 <fatfs_init>:
    2950:	fc010113          	addi	sp,sp,-64
    2954:	02812c23          	sw	s0,56(sp)
    2958:	02112e23          	sw	ra,60(sp)
    295c:	02912a23          	sw	s1,52(sp)
    2960:	03212823          	sw	s2,48(sp)
    2964:	03312623          	sw	s3,44(sp)
    2968:	03412423          	sw	s4,40(sp)
    296c:	03512223          	sw	s5,36(sp)
    2970:	03612023          	sw	s6,32(sp)
    2974:	01712e23          	sw	s7,28(sp)
    2978:	fff00793          	li	a5,-1
    297c:	24f52223          	sw	a5,580(a0)
    2980:	24052423          	sw	zero,584(a0)
    2984:	02052223          	sw	zero,36(a0)
    2988:	00050413          	mv	s0,a0
    298c:	00000097          	auipc	ra,0x0
    2990:	f64080e7          	jalr	-156(ra) # 28f0 <fatfs_fat_init>
    2994:	03442783          	lw	a5,52(s0)
    2998:	02079a63          	bnez	a5,29cc <fatfs_init+0x7c>
    299c:	fff00513          	li	a0,-1
    29a0:	03c12083          	lw	ra,60(sp)
    29a4:	03812403          	lw	s0,56(sp)
    29a8:	03412483          	lw	s1,52(sp)
    29ac:	03012903          	lw	s2,48(sp)
    29b0:	02c12983          	lw	s3,44(sp)
    29b4:	02812a03          	lw	s4,40(sp)
    29b8:	02412a83          	lw	s5,36(sp)
    29bc:	02012b03          	lw	s6,32(sp)
    29c0:	01c12b83          	lw	s7,28(sp)
    29c4:	04010113          	addi	sp,sp,64
    29c8:	00008067          	ret
    29cc:	04440593          	addi	a1,s0,68
    29d0:	00100613          	li	a2,1
    29d4:	00000513          	li	a0,0
    29d8:	00b12623          	sw	a1,12(sp)
    29dc:	000780e7          	jalr	a5
    29e0:	fa050ee3          	beqz	a0,299c <fatfs_init+0x4c>
    29e4:	24042703          	lw	a4,576(s0)
    29e8:	ffff07b7          	lui	a5,0xffff0
    29ec:	00c12583          	lw	a1,12(sp)
    29f0:	00e7f7b3          	and	a5,a5,a4
    29f4:	aa550737          	lui	a4,0xaa550
    29f8:	00e78663          	beq	a5,a4,2a04 <fatfs_init+0xb4>
    29fc:	ffd00513          	li	a0,-3
    2a00:	fa1ff06f          	j	29a0 <fatfs_init+0x50>
    2a04:	24344783          	lbu	a5,579(s0)
    2a08:	24244703          	lbu	a4,578(s0)
    2a0c:	ffc00513          	li	a0,-4
    2a10:	00879793          	slli	a5,a5,0x8
    2a14:	00e787b3          	add	a5,a5,a4
    2a18:	0000b737          	lui	a4,0xb
    2a1c:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x31>
    2a20:	f8e790e3          	bne	a5,a4,29a0 <fatfs_init+0x50>
    2a24:	20644783          	lbu	a5,518(s0)
    2a28:	00600713          	li	a4,6
    2a2c:	04f76063          	bltu	a4,a5,2a6c <fatfs_init+0x11c>
    2a30:	00400713          	li	a4,4
    2a34:	00f76663          	bltu	a4,a5,2a40 <fatfs_init+0xf0>
    2a38:	00000513          	li	a0,0
    2a3c:	04078263          	beqz	a5,2a80 <fatfs_init+0x130>
    2a40:	20d44503          	lbu	a0,525(s0)
    2a44:	20c44783          	lbu	a5,524(s0)
    2a48:	01851513          	slli	a0,a0,0x18
    2a4c:	01079793          	slli	a5,a5,0x10
    2a50:	00f50533          	add	a0,a0,a5
    2a54:	20a44783          	lbu	a5,522(s0)
    2a58:	00f50533          	add	a0,a0,a5
    2a5c:	20b44783          	lbu	a5,523(s0)
    2a60:	00879793          	slli	a5,a5,0x8
    2a64:	00f50533          	add	a0,a0,a5
    2a68:	0180006f          	j	2a80 <fatfs_init+0x130>
    2a6c:	00c00713          	li	a4,12
    2a70:	1ef76a63          	bltu	a4,a5,2c64 <fatfs_init+0x314>
    2a74:	00a00713          	li	a4,10
    2a78:	00000513          	li	a0,0
    2a7c:	fcf762e3          	bltu	a4,a5,2a40 <fatfs_init+0xf0>
    2a80:	03442783          	lw	a5,52(s0)
    2a84:	00a42e23          	sw	a0,28(s0)
    2a88:	00100613          	li	a2,1
    2a8c:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2a90:	f00506e3          	beqz	a0,299c <fatfs_init+0x4c>
    2a94:	05044783          	lbu	a5,80(s0)
    2a98:	04f44703          	lbu	a4,79(s0)
    2a9c:	ffe00513          	li	a0,-2
    2aa0:	00879793          	slli	a5,a5,0x8
    2aa4:	00e787b3          	add	a5,a5,a4
    2aa8:	20000713          	li	a4,512
    2aac:	eee79ae3          	bne	a5,a4,29a0 <fatfs_init+0x50>
    2ab0:	05644483          	lbu	s1,86(s0)
    2ab4:	05544b83          	lbu	s7,85(s0)
    2ab8:	05344903          	lbu	s2,83(s0)
    2abc:	05244a03          	lbu	s4,82(s0)
    2ac0:	05b44583          	lbu	a1,91(s0)
    2ac4:	00849493          	slli	s1,s1,0x8
    2ac8:	05144983          	lbu	s3,81(s0)
    2acc:	05a44783          	lbu	a5,90(s0)
    2ad0:	01748ab3          	add	s5,s1,s7
    2ad4:	00891913          	slli	s2,s2,0x8
    2ad8:	010a9a93          	slli	s5,s5,0x10
    2adc:	01490b33          	add	s6,s2,s4
    2ae0:	010ada93          	srli	s5,s5,0x10
    2ae4:	00859593          	slli	a1,a1,0x8
    2ae8:	010b1b13          	slli	s6,s6,0x10
    2aec:	01340023          	sb	s3,0(s0)
    2af0:	03541423          	sh	s5,40(s0)
    2af4:	00f585b3          	add	a1,a1,a5
    2af8:	05444503          	lbu	a0,84(s0)
    2afc:	010b5b13          	srli	s6,s6,0x10
    2b00:	02059663          	bnez	a1,2b2c <fatfs_init+0x1dc>
    2b04:	06b44583          	lbu	a1,107(s0)
    2b08:	06a44783          	lbu	a5,106(s0)
    2b0c:	01859593          	slli	a1,a1,0x18
    2b10:	01079793          	slli	a5,a5,0x10
    2b14:	00f585b3          	add	a1,a1,a5
    2b18:	06844783          	lbu	a5,104(s0)
    2b1c:	00f585b3          	add	a1,a1,a5
    2b20:	06944783          	lbu	a5,105(s0)
    2b24:	00879793          	slli	a5,a5,0x8
    2b28:	00f585b3          	add	a1,a1,a5
    2b2c:	07344783          	lbu	a5,115(s0)
    2b30:	07244703          	lbu	a4,114(s0)
    2b34:	02b42023          	sw	a1,32(s0)
    2b38:	01879793          	slli	a5,a5,0x18
    2b3c:	01071713          	slli	a4,a4,0x10
    2b40:	00e787b3          	add	a5,a5,a4
    2b44:	07044703          	lbu	a4,112(s0)
    2b48:	005a9a93          	slli	s5,s5,0x5
    2b4c:	1ffa8a93          	addi	s5,s5,511
    2b50:	00e787b3          	add	a5,a5,a4
    2b54:	07144703          	lbu	a4,113(s0)
    2b58:	409ada93          	srai	s5,s5,0x9
    2b5c:	00871713          	slli	a4,a4,0x8
    2b60:	00e787b3          	add	a5,a5,a4
    2b64:	00f42423          	sw	a5,8(s0)
    2b68:	07544783          	lbu	a5,117(s0)
    2b6c:	07444703          	lbu	a4,116(s0)
    2b70:	00879793          	slli	a5,a5,0x8
    2b74:	00e787b3          	add	a5,a5,a4
    2b78:	00f41c23          	sh	a5,24(s0)
    2b7c:	ffffe097          	auipc	ra,0xffffe
    2b80:	5cc080e7          	jalr	1484(ra) # 1148 <__mulsi3>
    2b84:	00ab07b3          	add	a5,s6,a0
    2b88:	00f42623          	sw	a5,12(s0)
    2b8c:	01c42783          	lw	a5,28(s0)
    2b90:	24244703          	lbu	a4,578(s0)
    2b94:	01542823          	sw	s5,16(s0)
    2b98:	00fb0b33          	add	s6,s6,a5
    2b9c:	24344783          	lbu	a5,579(s0)
    2ba0:	01642a23          	sw	s6,20(s0)
    2ba4:	01650b33          	add	s6,a0,s6
    2ba8:	00879793          	slli	a5,a5,0x8
    2bac:	00e787b3          	add	a5,a5,a4
    2bb0:	0000b737          	lui	a4,0xb
    2bb4:	01642223          	sw	s6,4(s0)
    2bb8:	a5570713          	addi	a4,a4,-1451 # aa55 <_files+0x31>
    2bbc:	e4e790e3          	bne	a5,a4,29fc <fatfs_init+0xac>
    2bc0:	05844783          	lbu	a5,88(s0)
    2bc4:	05744703          	lbu	a4,87(s0)
    2bc8:	017484b3          	add	s1,s1,s7
    2bcc:	00549493          	slli	s1,s1,0x5
    2bd0:	00879793          	slli	a5,a5,0x8
    2bd4:	1ff48493          	addi	s1,s1,511
    2bd8:	00e787b3          	add	a5,a5,a4
    2bdc:	4094d493          	srai	s1,s1,0x9
    2be0:	02079663          	bnez	a5,2c0c <fatfs_init+0x2bc>
    2be4:	06744783          	lbu	a5,103(s0)
    2be8:	06644703          	lbu	a4,102(s0)
    2bec:	01879793          	slli	a5,a5,0x18
    2bf0:	01071713          	slli	a4,a4,0x10
    2bf4:	00e787b3          	add	a5,a5,a4
    2bf8:	06444703          	lbu	a4,100(s0)
    2bfc:	00e787b3          	add	a5,a5,a4
    2c00:	06544703          	lbu	a4,101(s0)
    2c04:	00871713          	slli	a4,a4,0x8
    2c08:	00e787b3          	add	a5,a5,a4
    2c0c:	01490933          	add	s2,s2,s4
    2c10:	00990933          	add	s2,s2,s1
    2c14:	00a90533          	add	a0,s2,a0
    2c18:	40a787b3          	sub	a5,a5,a0
    2c1c:	ffb00513          	li	a0,-5
    2c20:	d80980e3          	beqz	s3,29a0 <fatfs_init+0x50>
    2c24:	00078513          	mv	a0,a5
    2c28:	00098593          	mv	a1,s3
    2c2c:	ffffe097          	auipc	ra,0xffffe
    2c30:	c18080e7          	jalr	-1000(ra) # 844 <__udivsi3>
    2c34:	00001737          	lui	a4,0x1
    2c38:	00050793          	mv	a5,a0
    2c3c:	ff470713          	addi	a4,a4,-12 # ff4 <print_hex_digits+0x64>
    2c40:	ffb00513          	li	a0,-5
    2c44:	d4f77ee3          	bgeu	a4,a5,29a0 <fatfs_init+0x50>
    2c48:	00010737          	lui	a4,0x10
    2c4c:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x55d0>
    2c50:	02f76663          	bltu	a4,a5,2c7c <fatfs_init+0x32c>
    2c54:	00042423          	sw	zero,8(s0)
    2c58:	02042823          	sw	zero,48(s0)
    2c5c:	00000513          	li	a0,0
    2c60:	d41ff06f          	j	29a0 <fatfs_init+0x50>
    2c64:	ff278793          	addi	a5,a5,-14
    2c68:	0ff7f793          	zext.b	a5,a5
    2c6c:	00100713          	li	a4,1
    2c70:	00000513          	li	a0,0
    2c74:	dcf776e3          	bgeu	a4,a5,2a40 <fatfs_init+0xf0>
    2c78:	e09ff06f          	j	2a80 <fatfs_init+0x130>
    2c7c:	00100793          	li	a5,1
    2c80:	02f42823          	sw	a5,48(s0)
    2c84:	fd9ff06f          	j	2c5c <fatfs_init+0x30c>

00002c88 <fl_attach_media>:
    2c88:	000067b7          	lui	a5,0x6
    2c8c:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    2c90:	ff010113          	addi	sp,sp,-16
    2c94:	00812423          	sw	s0,8(sp)
    2c98:	00912223          	sw	s1,4(sp)
    2c9c:	00112623          	sw	ra,12(sp)
    2ca0:	00050493          	mv	s1,a0
    2ca4:	00058413          	mv	s0,a1
    2ca8:	00079663          	bnez	a5,2cb4 <fl_attach_media+0x2c>
    2cac:	fffff097          	auipc	ra,0xfffff
    2cb0:	c30080e7          	jalr	-976(ra) # 18dc <fl_init>
    2cb4:	0000a537          	lui	a0,0xa
    2cb8:	5bc50793          	addi	a5,a0,1468 # a5bc <_fs>
    2cbc:	5bc50513          	addi	a0,a0,1468
    2cc0:	0287ac23          	sw	s0,56(a5)
    2cc4:	0297aa23          	sw	s1,52(a5)
    2cc8:	00000097          	auipc	ra,0x0
    2ccc:	c88080e7          	jalr	-888(ra) # 2950 <fatfs_init>
    2cd0:	00050413          	mv	s0,a0
    2cd4:	02050863          	beqz	a0,2d04 <fl_attach_media+0x7c>
    2cd8:	00050593          	mv	a1,a0
    2cdc:	00006537          	lui	a0,0x6
    2ce0:	0ec50513          	addi	a0,a0,236 # 60ec <font+0x358>
    2ce4:	ffffe097          	auipc	ra,0xffffe
    2ce8:	328080e7          	jalr	808(ra) # 100c <printf>
    2cec:	00c12083          	lw	ra,12(sp)
    2cf0:	00040513          	mv	a0,s0
    2cf4:	00812403          	lw	s0,8(sp)
    2cf8:	00412483          	lw	s1,4(sp)
    2cfc:	01010113          	addi	sp,sp,16
    2d00:	00008067          	ret
    2d04:	000067b7          	lui	a5,0x6
    2d08:	00100713          	li	a4,1
    2d0c:	1ee7a623          	sw	a4,492(a5) # 61ec <_filelib_valid>
    2d10:	fddff06f          	j	2cec <fl_attach_media+0x64>

00002d14 <fatfs_format_fat16>:
    2d14:	fe010113          	addi	sp,sp,-32
    2d18:	00812c23          	sw	s0,24(sp)
    2d1c:	00912a23          	sw	s1,20(sp)
    2d20:	01212823          	sw	s2,16(sp)
    2d24:	00112e23          	sw	ra,28(sp)
    2d28:	01312623          	sw	s3,12(sp)
    2d2c:	01412423          	sw	s4,8(sp)
    2d30:	fff00793          	li	a5,-1
    2d34:	24f52223          	sw	a5,580(a0)
    2d38:	24052423          	sw	zero,584(a0)
    2d3c:	02052223          	sw	zero,36(a0)
    2d40:	00050413          	mv	s0,a0
    2d44:	00058493          	mv	s1,a1
    2d48:	00060913          	mv	s2,a2
    2d4c:	00000097          	auipc	ra,0x0
    2d50:	ba4080e7          	jalr	-1116(ra) # 28f0 <fatfs_fat_init>
    2d54:	03442783          	lw	a5,52(s0)
    2d58:	fff00513          	li	a0,-1
    2d5c:	08078663          	beqz	a5,2de8 <fatfs_format_fat16+0xd4>
    2d60:	03842783          	lw	a5,56(s0)
    2d64:	fff00513          	li	a0,-1
    2d68:	08078063          	beqz	a5,2de8 <fatfs_format_fat16+0xd4>
    2d6c:	04440993          	addi	s3,s0,68
    2d70:	02042823          	sw	zero,48(s0)
    2d74:	00041c23          	sh	zero,24(s0)
    2d78:	00042423          	sw	zero,8(s0)
    2d7c:	00042e23          	sw	zero,28(s0)
    2d80:	20000613          	li	a2,512
    2d84:	00000593          	li	a1,0
    2d88:	00098513          	mv	a0,s3
    2d8c:	ffffe097          	auipc	ra,0xffffe
    2d90:	b8c080e7          	jalr	-1140(ra) # 918 <memset>
    2d94:	4d9047b7          	lui	a5,0x4d904
    2d98:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2d9c:	04f42223          	sw	a5,68(s0)
    2da0:	534f47b7          	lui	a5,0x534f4
    2da4:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2da8:	04f42423          	sw	a5,72(s0)
    2dac:	003037b7          	lui	a5,0x303
    2db0:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2db4:	04f42623          	sw	a5,76(s0)
    2db8:	00200793          	li	a5,2
    2dbc:	04f40823          	sb	a5,80(s0)
    2dc0:	000067b7          	lui	a5,0x6
    2dc4:	15478793          	addi	a5,a5,340 # 6154 <_cluster_size_table16>
    2dc8:	0047c583          	lbu	a1,4(a5)
    2dcc:	00058863          	beqz	a1,2ddc <fatfs_format_fat16+0xc8>
    2dd0:	0007a703          	lw	a4,0(a5)
    2dd4:	00878793          	addi	a5,a5,8
    2dd8:	fe9768e3          	bltu	a4,s1,2dc8 <fatfs_format_fat16+0xb4>
    2ddc:	00b40023          	sb	a1,0(s0)
    2de0:	02059463          	bnez	a1,2e08 <fatfs_format_fat16+0xf4>
    2de4:	00000513          	li	a0,0
    2de8:	01c12083          	lw	ra,28(sp)
    2dec:	01812403          	lw	s0,24(sp)
    2df0:	01412483          	lw	s1,20(sp)
    2df4:	01012903          	lw	s2,16(sp)
    2df8:	00c12983          	lw	s3,12(sp)
    2dfc:	00812a03          	lw	s4,8(sp)
    2e00:	02010113          	addi	sp,sp,32
    2e04:	00008067          	ret
    2e08:	000807b7          	lui	a5,0x80
    2e0c:	20078793          	addi	a5,a5,512 # 80200 <__stacktop+0x70200>
    2e10:	02f42423          	sw	a5,40(s0)
    2e14:	00200793          	li	a5,2
    2e18:	02f40623          	sb	a5,44(s0)
    2e1c:	00800793          	li	a5,8
    2e20:	04f41923          	sh	a5,82(s0)
    2e24:	000207b7          	lui	a5,0x20
    2e28:	00278793          	addi	a5,a5,2 # 20002 <__stacktop+0x10002>
    2e2c:	04f42a23          	sw	a5,84(s0)
    2e30:	80000793          	li	a5,-2048
    2e34:	04f41c23          	sh	a5,88(s0)
    2e38:	00048513          	mv	a0,s1
    2e3c:	04b408a3          	sb	a1,81(s0)
    2e40:	ffffe097          	auipc	ra,0xffffe
    2e44:	a04080e7          	jalr	-1532(ra) # 844 <__udivsi3>
    2e48:	00150793          	addi	a5,a0,1
    2e4c:	0087d793          	srli	a5,a5,0x8
    2e50:	00178793          	addi	a5,a5,1
    2e54:	02f42023          	sw	a5,32(s0)
    2e58:	04f41d23          	sh	a5,90(s0)
    2e5c:	02000793          	li	a5,32
    2e60:	06f42023          	sw	a5,96(s0)
    2e64:	122907b7          	lui	a5,0x12290
    2e68:	06f42423          	sw	a5,104(s0)
    2e6c:	000057b7          	lui	a5,0x5
    2e70:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x3c>
    2e74:	06f41623          	sh	a5,108(s0)
    2e78:	07800793          	li	a5,120
    2e7c:	06942223          	sw	s1,100(s0)
    2e80:	04042e23          	sw	zero,92(s0)
    2e84:	06f40723          	sb	a5,110(s0)
    2e88:	00000493          	li	s1,0
    2e8c:	00b00a13          	li	s4,11
    2e90:	00090513          	mv	a0,s2
    2e94:	ffffe097          	auipc	ra,0xffffe
    2e98:	ac4080e7          	jalr	-1340(ra) # 958 <strlen>
    2e9c:	02000793          	li	a5,32
    2ea0:	00a4d663          	bge	s1,a0,2eac <fatfs_format_fat16+0x198>
    2ea4:	009907b3          	add	a5,s2,s1
    2ea8:	0007c783          	lbu	a5,0(a5)
    2eac:	00940733          	add	a4,s0,s1
    2eb0:	06f707a3          	sb	a5,111(a4)
    2eb4:	00148493          	addi	s1,s1,1
    2eb8:	fd449ce3          	bne	s1,s4,2e90 <fatfs_format_fat16+0x17c>
    2ebc:	000047b7          	lui	a5,0x4
    2ec0:	14678793          	addi	a5,a5,326 # 4146 <fl_readdir+0x86>
    2ec4:	06f41d23          	sh	a5,122(s0)
    2ec8:	203637b7          	lui	a5,0x20363
    2ecc:	15478793          	addi	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2ed0:	06f42e23          	sw	a5,124(s0)
    2ed4:	000027b7          	lui	a5,0x2
    2ed8:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_create_sfn+0x48>
    2edc:	08f41023          	sh	a5,128(s0)
    2ee0:	ffffb7b7          	lui	a5,0xffffb
    2ee4:	a5578793          	addi	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2ee8:	24f41123          	sh	a5,578(s0)
    2eec:	03842783          	lw	a5,56(s0)
    2ef0:	00100613          	li	a2,1
    2ef4:	00098593          	mv	a1,s3
    2ef8:	00000513          	li	a0,0
    2efc:	000780e7          	jalr	a5
    2f00:	ee0502e3          	beqz	a0,2de4 <fatfs_format_fat16+0xd0>
    2f04:	02042583          	lw	a1,32(s0)
    2f08:	02c44503          	lbu	a0,44(s0)
    2f0c:	02a45483          	lhu	s1,42(s0)
    2f10:	ffffe097          	auipc	ra,0xffffe
    2f14:	238080e7          	jalr	568(ra) # 1148 <__mulsi3>
    2f18:	00a487b3          	add	a5,s1,a0
    2f1c:	00f42623          	sw	a5,12(s0)
    2f20:	02845783          	lhu	a5,40(s0)
    2f24:	00000593          	li	a1,0
    2f28:	00579793          	slli	a5,a5,0x5
    2f2c:	1ff78793          	addi	a5,a5,511
    2f30:	4097d793          	srai	a5,a5,0x9
    2f34:	00f42823          	sw	a5,16(s0)
    2f38:	01c42783          	lw	a5,28(s0)
    2f3c:	00f484b3          	add	s1,s1,a5
    2f40:	00950533          	add	a0,a0,s1
    2f44:	00a42223          	sw	a0,4(s0)
    2f48:	00942a23          	sw	s1,20(s0)
    2f4c:	00040513          	mv	a0,s0
    2f50:	ffffe097          	auipc	ra,0xffffe
    2f54:	49c080e7          	jalr	1180(ra) # 13ec <fatfs_erase_fat>
    2f58:	e80506e3          	beqz	a0,2de4 <fatfs_format_fat16+0xd0>
    2f5c:	01c42583          	lw	a1,28(s0)
    2f60:	00c42783          	lw	a5,12(s0)
    2f64:	01042603          	lw	a2,16(s0)
    2f68:	00040513          	mv	a0,s0
    2f6c:	00f585b3          	add	a1,a1,a5
    2f70:	ffffe097          	auipc	ra,0xffffe
    2f74:	568080e7          	jalr	1384(ra) # 14d8 <fatfs_erase_sectors>
    2f78:	00a03533          	snez	a0,a0
    2f7c:	e6dff06f          	j	2de8 <fatfs_format_fat16+0xd4>

00002f80 <fatfs_format_fat32>:
    2f80:	fe010113          	addi	sp,sp,-32
    2f84:	00812c23          	sw	s0,24(sp)
    2f88:	00912a23          	sw	s1,20(sp)
    2f8c:	01212823          	sw	s2,16(sp)
    2f90:	00112e23          	sw	ra,28(sp)
    2f94:	01312623          	sw	s3,12(sp)
    2f98:	01412423          	sw	s4,8(sp)
    2f9c:	fff00793          	li	a5,-1
    2fa0:	24f52223          	sw	a5,580(a0)
    2fa4:	24052423          	sw	zero,584(a0)
    2fa8:	02052223          	sw	zero,36(a0)
    2fac:	00050413          	mv	s0,a0
    2fb0:	00058493          	mv	s1,a1
    2fb4:	00060913          	mv	s2,a2
    2fb8:	00000097          	auipc	ra,0x0
    2fbc:	938080e7          	jalr	-1736(ra) # 28f0 <fatfs_fat_init>
    2fc0:	03442783          	lw	a5,52(s0)
    2fc4:	fff00513          	li	a0,-1
    2fc8:	08078863          	beqz	a5,3058 <fatfs_format_fat32+0xd8>
    2fcc:	03842783          	lw	a5,56(s0)
    2fd0:	fff00513          	li	a0,-1
    2fd4:	08078263          	beqz	a5,3058 <fatfs_format_fat32+0xd8>
    2fd8:	00100793          	li	a5,1
    2fdc:	00200a13          	li	s4,2
    2fe0:	04440993          	addi	s3,s0,68
    2fe4:	02f42823          	sw	a5,48(s0)
    2fe8:	00f41c23          	sh	a5,24(s0)
    2fec:	01442423          	sw	s4,8(s0)
    2ff0:	00042e23          	sw	zero,28(s0)
    2ff4:	20000613          	li	a2,512
    2ff8:	00000593          	li	a1,0
    2ffc:	00098513          	mv	a0,s3
    3000:	ffffe097          	auipc	ra,0xffffe
    3004:	918080e7          	jalr	-1768(ra) # 918 <memset>
    3008:	4d9047b7          	lui	a5,0x4d904
    300c:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    3010:	04f42223          	sw	a5,68(s0)
    3014:	534f47b7          	lui	a5,0x534f4
    3018:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    301c:	04f42423          	sw	a5,72(s0)
    3020:	003037b7          	lui	a5,0x303
    3024:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    3028:	04f42623          	sw	a5,76(s0)
    302c:	000067b7          	lui	a5,0x6
    3030:	05440823          	sb	s4,80(s0)
    3034:	19478793          	addi	a5,a5,404 # 6194 <_cluster_size_table32>
    3038:	0047c583          	lbu	a1,4(a5)
    303c:	00058863          	beqz	a1,304c <fatfs_format_fat32+0xcc>
    3040:	0007a703          	lw	a4,0(a5)
    3044:	00878793          	addi	a5,a5,8
    3048:	fe9768e3          	bltu	a4,s1,3038 <fatfs_format_fat32+0xb8>
    304c:	00b40023          	sb	a1,0(s0)
    3050:	02059463          	bnez	a1,3078 <fatfs_format_fat32+0xf8>
    3054:	00000513          	li	a0,0
    3058:	01c12083          	lw	ra,28(sp)
    305c:	01812403          	lw	s0,24(sp)
    3060:	01412483          	lw	s1,20(sp)
    3064:	01012903          	lw	s2,16(sp)
    3068:	00c12983          	lw	s3,12(sp)
    306c:	00812a03          	lw	s4,8(sp)
    3070:	02010113          	addi	sp,sp,32
    3074:	00008067          	ret
    3078:	002007b7          	lui	a5,0x200
    307c:	02f42423          	sw	a5,40(s0)
    3080:	00200793          	li	a5,2
    3084:	02f40623          	sb	a5,44(s0)
    3088:	04f42a23          	sw	a5,84(s0)
    308c:	000107b7          	lui	a5,0x10
    3090:	80078793          	addi	a5,a5,-2048 # f800 <_files+0x4ddc>
    3094:	04f42c23          	sw	a5,88(s0)
    3098:	00ff07b7          	lui	a5,0xff0
    309c:	03f78793          	addi	a5,a5,63 # ff003f <__stacktop+0xfe003f>
    30a0:	02000713          	li	a4,32
    30a4:	04f42e23          	sw	a5,92(s0)
    30a8:	06942223          	sw	s1,100(s0)
    30ac:	00048513          	mv	a0,s1
    30b0:	04b408a3          	sb	a1,81(s0)
    30b4:	04e41923          	sh	a4,82(s0)
    30b8:	06042023          	sw	zero,96(s0)
    30bc:	ffffd097          	auipc	ra,0xffffd
    30c0:	788080e7          	jalr	1928(ra) # 844 <__udivsi3>
    30c4:	00150793          	addi	a5,a0,1
    30c8:	0077d793          	srli	a5,a5,0x7
    30cc:	00178793          	addi	a5,a5,1
    30d0:	02f42023          	sw	a5,32(s0)
    30d4:	06f42423          	sw	a5,104(s0)
    30d8:	00842783          	lw	a5,8(s0)
    30dc:	06042623          	sw	zero,108(s0)
    30e0:	08040223          	sb	zero,132(s0)
    30e4:	06f42823          	sw	a5,112(s0)
    30e8:	01845783          	lhu	a5,24(s0)
    30ec:	00000493          	li	s1,0
    30f0:	00b00a13          	li	s4,11
    30f4:	06f41a23          	sh	a5,116(s0)
    30f8:	00600793          	li	a5,6
    30fc:	06f41b23          	sh	a5,118(s0)
    3100:	000017b7          	lui	a5,0x1
    3104:	22978793          	addi	a5,a5,553 # 1229 <FileString_StrCmpNoCase+0x49>
    3108:	08f41323          	sh	a5,134(s0)
    310c:	000057b7          	lui	a5,0x5
    3110:	63478793          	addi	a5,a5,1588 # 5634 <fl_fopen+0x3c>
    3114:	08f41423          	sh	a5,136(s0)
    3118:	07800793          	li	a5,120
    311c:	08f40523          	sb	a5,138(s0)
    3120:	00090513          	mv	a0,s2
    3124:	ffffe097          	auipc	ra,0xffffe
    3128:	834080e7          	jalr	-1996(ra) # 958 <strlen>
    312c:	02000793          	li	a5,32
    3130:	00a4d663          	bge	s1,a0,313c <fatfs_format_fat32+0x1bc>
    3134:	009907b3          	add	a5,s2,s1
    3138:	0007c783          	lbu	a5,0(a5)
    313c:	00940733          	add	a4,s0,s1
    3140:	08f705a3          	sb	a5,139(a4)
    3144:	00148493          	addi	s1,s1,1
    3148:	fd449ce3          	bne	s1,s4,3120 <fatfs_format_fat32+0x1a0>
    314c:	000047b7          	lui	a5,0x4
    3150:	14678793          	addi	a5,a5,326 # 4146 <fl_readdir+0x86>
    3154:	08f41b23          	sh	a5,150(s0)
    3158:	203237b7          	lui	a5,0x20323
    315c:	35478793          	addi	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    3160:	08f42c23          	sw	a5,152(s0)
    3164:	000027b7          	lui	a5,0x2
    3168:	02078793          	addi	a5,a5,32 # 2020 <fatfs_lfn_create_sfn+0x48>
    316c:	08f41e23          	sh	a5,156(s0)
    3170:	ffffb4b7          	lui	s1,0xffffb
    3174:	03842783          	lw	a5,56(s0)
    3178:	a5548493          	addi	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    317c:	24941123          	sh	s1,578(s0)
    3180:	00100613          	li	a2,1
    3184:	00098593          	mv	a1,s3
    3188:	00000513          	li	a0,0
    318c:	000780e7          	jalr	a5
    3190:	ec0502e3          	beqz	a0,3054 <fatfs_format_fat32+0xd4>
    3194:	01c42783          	lw	a5,28(s0)
    3198:	02a45903          	lhu	s2,42(s0)
    319c:	02042583          	lw	a1,32(s0)
    31a0:	02c44503          	lbu	a0,44(s0)
    31a4:	00f90933          	add	s2,s2,a5
    31a8:	01242a23          	sw	s2,20(s0)
    31ac:	ffffe097          	auipc	ra,0xffffe
    31b0:	f9c080e7          	jalr	-100(ra) # 1148 <__mulsi3>
    31b4:	01250533          	add	a0,a0,s2
    31b8:	00a42223          	sw	a0,4(s0)
    31bc:	20000613          	li	a2,512
    31c0:	00000593          	li	a1,0
    31c4:	00098513          	mv	a0,s3
    31c8:	01845903          	lhu	s2,24(s0)
    31cc:	ffffd097          	auipc	ra,0xffffd
    31d0:	74c080e7          	jalr	1868(ra) # 918 <memset>
    31d4:	416157b7          	lui	a5,0x41615
    31d8:	25278793          	addi	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    31dc:	04f42223          	sw	a5,68(s0)
    31e0:	614177b7          	lui	a5,0x61417
    31e4:	27278793          	addi	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    31e8:	22f42423          	sw	a5,552(s0)
    31ec:	fff00793          	li	a5,-1
    31f0:	22f42623          	sw	a5,556(s0)
    31f4:	22f42823          	sw	a5,560(s0)
    31f8:	03842783          	lw	a5,56(s0)
    31fc:	24941123          	sh	s1,578(s0)
    3200:	00100613          	li	a2,1
    3204:	00098593          	mv	a1,s3
    3208:	00090513          	mv	a0,s2
    320c:	000780e7          	jalr	a5
    3210:	e40502e3          	beqz	a0,3054 <fatfs_format_fat32+0xd4>
    3214:	00100593          	li	a1,1
    3218:	00040513          	mv	a0,s0
    321c:	ffffe097          	auipc	ra,0xffffe
    3220:	1d0080e7          	jalr	464(ra) # 13ec <fatfs_erase_fat>
    3224:	e20508e3          	beqz	a0,3054 <fatfs_format_fat32+0xd4>
    3228:	00842583          	lw	a1,8(s0)
    322c:	00040513          	mv	a0,s0
    3230:	ffffe097          	auipc	ra,0xffffe
    3234:	3f0080e7          	jalr	1008(ra) # 1620 <fatfs_lba_of_cluster>
    3238:	00044603          	lbu	a2,0(s0)
    323c:	00050593          	mv	a1,a0
    3240:	00040513          	mv	a0,s0
    3244:	ffffe097          	auipc	ra,0xffffe
    3248:	294080e7          	jalr	660(ra) # 14d8 <fatfs_erase_sectors>
    324c:	00a03533          	snez	a0,a0
    3250:	e09ff06f          	j	3058 <fatfs_format_fat32+0xd8>

00003254 <fatfs_format>:
    3254:	004007b7          	lui	a5,0x400
    3258:	00b7e663          	bltu	a5,a1,3264 <fatfs_format+0x10>
    325c:	00000317          	auipc	t1,0x0
    3260:	ab830067          	jr	-1352(t1) # 2d14 <fatfs_format_fat16>
    3264:	00000317          	auipc	t1,0x0
    3268:	d1c30067          	jr	-740(t1) # 2f80 <fatfs_format_fat32>

0000326c <fl_format>:
    326c:	00058613          	mv	a2,a1
    3270:	00050593          	mv	a1,a0
    3274:	0000a537          	lui	a0,0xa
    3278:	5bc50513          	addi	a0,a0,1468 # a5bc <_fs>
    327c:	00000317          	auipc	t1,0x0
    3280:	fd830067          	jr	-40(t1) # 3254 <fatfs_format>

00003284 <fatfs_fat_purge>:
    3284:	ff010113          	addi	sp,sp,-16
    3288:	00812423          	sw	s0,8(sp)
    328c:	25452403          	lw	s0,596(a0)
    3290:	00912223          	sw	s1,4(sp)
    3294:	00112623          	sw	ra,12(sp)
    3298:	00050493          	mv	s1,a0
    329c:	00041663          	bnez	s0,32a8 <fatfs_fat_purge+0x24>
    32a0:	00100513          	li	a0,1
    32a4:	0280006f          	j	32cc <fatfs_fat_purge+0x48>
    32a8:	20442783          	lw	a5,516(s0)
    32ac:	00079663          	bnez	a5,32b8 <fatfs_fat_purge+0x34>
    32b0:	20c42403          	lw	s0,524(s0)
    32b4:	fe9ff06f          	j	329c <fatfs_fat_purge+0x18>
    32b8:	00040593          	mv	a1,s0
    32bc:	00048513          	mv	a0,s1
    32c0:	ffffe097          	auipc	ra,0xffffe
    32c4:	fbc080e7          	jalr	-68(ra) # 127c <fatfs_fat_writeback>
    32c8:	fe0514e3          	bnez	a0,32b0 <fatfs_fat_purge+0x2c>
    32cc:	00c12083          	lw	ra,12(sp)
    32d0:	00812403          	lw	s0,8(sp)
    32d4:	00412483          	lw	s1,4(sp)
    32d8:	01010113          	addi	sp,sp,16
    32dc:	00008067          	ret

000032e0 <fl_shutdown>:
    32e0:	000067b7          	lui	a5,0x6
    32e4:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    32e8:	ff010113          	addi	sp,sp,-16
    32ec:	00112623          	sw	ra,12(sp)
    32f0:	00812423          	sw	s0,8(sp)
    32f4:	00912223          	sw	s1,4(sp)
    32f8:	00079663          	bnez	a5,3304 <fl_shutdown+0x24>
    32fc:	ffffe097          	auipc	ra,0xffffe
    3300:	5e0080e7          	jalr	1504(ra) # 18dc <fl_init>
    3304:	0000a437          	lui	s0,0xa
    3308:	5bc40793          	addi	a5,s0,1468 # a5bc <_fs>
    330c:	03c7a783          	lw	a5,60(a5)
    3310:	5bc40493          	addi	s1,s0,1468
    3314:	00078463          	beqz	a5,331c <fl_shutdown+0x3c>
    3318:	000780e7          	jalr	a5
    331c:	5bc40513          	addi	a0,s0,1468
    3320:	00000097          	auipc	ra,0x0
    3324:	f64080e7          	jalr	-156(ra) # 3284 <fatfs_fat_purge>
    3328:	0404a783          	lw	a5,64(s1)
    332c:	00078c63          	beqz	a5,3344 <fl_shutdown+0x64>
    3330:	00812403          	lw	s0,8(sp)
    3334:	00c12083          	lw	ra,12(sp)
    3338:	00412483          	lw	s1,4(sp)
    333c:	01010113          	addi	sp,sp,16
    3340:	00078067          	jr	a5
    3344:	00c12083          	lw	ra,12(sp)
    3348:	00812403          	lw	s0,8(sp)
    334c:	00412483          	lw	s1,4(sp)
    3350:	01010113          	addi	sp,sp,16
    3354:	00008067          	ret

00003358 <fatfs_find_next_cluster>:
    3358:	ff010113          	addi	sp,sp,-16
    335c:	00812423          	sw	s0,8(sp)
    3360:	01212023          	sw	s2,0(sp)
    3364:	00112623          	sw	ra,12(sp)
    3368:	00912223          	sw	s1,4(sp)
    336c:	00050913          	mv	s2,a0
    3370:	00200413          	li	s0,2
    3374:	00058463          	beqz	a1,337c <fatfs_find_next_cluster+0x24>
    3378:	00058413          	mv	s0,a1
    337c:	03092783          	lw	a5,48(s2)
    3380:	00745493          	srli	s1,s0,0x7
    3384:	00079463          	bnez	a5,338c <fatfs_find_next_cluster+0x34>
    3388:	00845493          	srli	s1,s0,0x8
    338c:	01492583          	lw	a1,20(s2)
    3390:	00090513          	mv	a0,s2
    3394:	00b485b3          	add	a1,s1,a1
    3398:	ffffe097          	auipc	ra,0xffffe
    339c:	f68080e7          	jalr	-152(ra) # 1300 <fatfs_fat_read_sector>
    33a0:	00050793          	mv	a5,a0
    33a4:	fff00513          	li	a0,-1
    33a8:	04078a63          	beqz	a5,33fc <fatfs_find_next_cluster+0xa4>
    33ac:	03092703          	lw	a4,48(s2)
    33b0:	2087a783          	lw	a5,520(a5)
    33b4:	06071063          	bnez	a4,3414 <fatfs_find_next_cluster+0xbc>
    33b8:	00849493          	slli	s1,s1,0x8
    33bc:	40940433          	sub	s0,s0,s1
    33c0:	00010737          	lui	a4,0x10
    33c4:	00141413          	slli	s0,s0,0x1
    33c8:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x55db>
    33cc:	00e47433          	and	s0,s0,a4
    33d0:	008787b3          	add	a5,a5,s0
    33d4:	0017c503          	lbu	a0,1(a5)
    33d8:	0007c783          	lbu	a5,0(a5)
    33dc:	00851513          	slli	a0,a0,0x8
    33e0:	00f50533          	add	a0,a0,a5
    33e4:	ffff07b7          	lui	a5,0xffff0
    33e8:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    33ec:	00f507b3          	add	a5,a0,a5
    33f0:	00700713          	li	a4,7
    33f4:	00f76463          	bltu	a4,a5,33fc <fatfs_find_next_cluster+0xa4>
    33f8:	fff00513          	li	a0,-1
    33fc:	00c12083          	lw	ra,12(sp)
    3400:	00812403          	lw	s0,8(sp)
    3404:	00412483          	lw	s1,4(sp)
    3408:	00012903          	lw	s2,0(sp)
    340c:	01010113          	addi	sp,sp,16
    3410:	00008067          	ret
    3414:	00749493          	slli	s1,s1,0x7
    3418:	40940433          	sub	s0,s0,s1
    341c:	00010737          	lui	a4,0x10
    3420:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x55db>
    3424:	00241413          	slli	s0,s0,0x2
    3428:	00e47433          	and	s0,s0,a4
    342c:	008787b3          	add	a5,a5,s0
    3430:	0037c503          	lbu	a0,3(a5)
    3434:	0027c703          	lbu	a4,2(a5)
    3438:	01851513          	slli	a0,a0,0x18
    343c:	01071713          	slli	a4,a4,0x10
    3440:	00e50533          	add	a0,a0,a4
    3444:	0007c703          	lbu	a4,0(a5)
    3448:	0017c783          	lbu	a5,1(a5)
    344c:	00e50533          	add	a0,a0,a4
    3450:	00879793          	slli	a5,a5,0x8
    3454:	00f50533          	add	a0,a0,a5
    3458:	00451513          	slli	a0,a0,0x4
    345c:	00455513          	srli	a0,a0,0x4
    3460:	f00007b7          	lui	a5,0xf0000
    3464:	f85ff06f          	j	33e8 <fatfs_find_next_cluster+0x90>

00003468 <fatfs_sector_reader>:
    3468:	03052783          	lw	a5,48(a0)
    346c:	fd010113          	addi	sp,sp,-48
    3470:	02812423          	sw	s0,40(sp)
    3474:	03212023          	sw	s2,32(sp)
    3478:	01312e23          	sw	s3,28(sp)
    347c:	02112623          	sw	ra,44(sp)
    3480:	02912223          	sw	s1,36(sp)
    3484:	01412c23          	sw	s4,24(sp)
    3488:	01512a23          	sw	s5,20(sp)
    348c:	00f5e7b3          	or	a5,a1,a5
    3490:	00050413          	mv	s0,a0
    3494:	00060913          	mv	s2,a2
    3498:	00068993          	mv	s3,a3
    349c:	06079c63          	bnez	a5,3514 <fatfs_sector_reader+0xac>
    34a0:	01052783          	lw	a5,16(a0)
    34a4:	02f66663          	bltu	a2,a5,34d0 <fatfs_sector_reader+0x68>
    34a8:	00000513          	li	a0,0
    34ac:	02c12083          	lw	ra,44(sp)
    34b0:	02812403          	lw	s0,40(sp)
    34b4:	02412483          	lw	s1,36(sp)
    34b8:	02012903          	lw	s2,32(sp)
    34bc:	01c12983          	lw	s3,28(sp)
    34c0:	01812a03          	lw	s4,24(sp)
    34c4:	01412a83          	lw	s5,20(sp)
    34c8:	03010113          	addi	sp,sp,48
    34cc:	00008067          	ret
    34d0:	01c52503          	lw	a0,28(a0)
    34d4:	00c42783          	lw	a5,12(s0)
    34d8:	00f50533          	add	a0,a0,a5
    34dc:	01250533          	add	a0,a0,s2
    34e0:	0a098263          	beqz	s3,3584 <fatfs_sector_reader+0x11c>
    34e4:	03442783          	lw	a5,52(s0)
    34e8:	00100613          	li	a2,1
    34ec:	00098593          	mv	a1,s3
    34f0:	02812403          	lw	s0,40(sp)
    34f4:	02c12083          	lw	ra,44(sp)
    34f8:	02412483          	lw	s1,36(sp)
    34fc:	02012903          	lw	s2,32(sp)
    3500:	01c12983          	lw	s3,28(sp)
    3504:	01812a03          	lw	s4,24(sp)
    3508:	01412a83          	lw	s5,20(sp)
    350c:	03010113          	addi	sp,sp,48
    3510:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    3514:	00058493          	mv	s1,a1
    3518:	00054583          	lbu	a1,0(a0)
    351c:	00060513          	mv	a0,a2
    3520:	00000a93          	li	s5,0
    3524:	00b12623          	sw	a1,12(sp)
    3528:	ffffd097          	auipc	ra,0xffffd
    352c:	31c080e7          	jalr	796(ra) # 844 <__udivsi3>
    3530:	00c12583          	lw	a1,12(sp)
    3534:	00050a13          	mv	s4,a0
    3538:	00090513          	mv	a0,s2
    353c:	ffffd097          	auipc	ra,0xffffd
    3540:	350080e7          	jalr	848(ra) # 88c <__umodsi3>
    3544:	00050913          	mv	s2,a0
    3548:	034a9063          	bne	s5,s4,3568 <fatfs_sector_reader+0x100>
    354c:	fff00793          	li	a5,-1
    3550:	f4f48ce3          	beq	s1,a5,34a8 <fatfs_sector_reader+0x40>
    3554:	00048593          	mv	a1,s1
    3558:	00040513          	mv	a0,s0
    355c:	ffffe097          	auipc	ra,0xffffe
    3560:	0c4080e7          	jalr	196(ra) # 1620 <fatfs_lba_of_cluster>
    3564:	f79ff06f          	j	34dc <fatfs_sector_reader+0x74>
    3568:	00048593          	mv	a1,s1
    356c:	00040513          	mv	a0,s0
    3570:	00000097          	auipc	ra,0x0
    3574:	de8080e7          	jalr	-536(ra) # 3358 <fatfs_find_next_cluster>
    3578:	00050493          	mv	s1,a0
    357c:	001a8a93          	addi	s5,s5,1
    3580:	fc9ff06f          	j	3548 <fatfs_sector_reader+0xe0>
    3584:	24442783          	lw	a5,580(s0)
    3588:	00a78c63          	beq	a5,a0,35a0 <fatfs_sector_reader+0x138>
    358c:	03442783          	lw	a5,52(s0)
    3590:	24a42223          	sw	a0,580(s0)
    3594:	00100613          	li	a2,1
    3598:	04440593          	addi	a1,s0,68
    359c:	f55ff06f          	j	34f0 <fatfs_sector_reader+0x88>
    35a0:	00100513          	li	a0,1
    35a4:	f09ff06f          	j	34ac <fatfs_sector_reader+0x44>

000035a8 <fatfs_get_file_entry>:
    35a8:	eb010113          	addi	sp,sp,-336
    35ac:	14812423          	sw	s0,328(sp)
    35b0:	01810413          	addi	s0,sp,24
    35b4:	14912223          	sw	s1,324(sp)
    35b8:	15212023          	sw	s2,320(sp)
    35bc:	13312e23          	sw	s3,316(sp)
    35c0:	13412c23          	sw	s4,312(sp)
    35c4:	13512a23          	sw	s5,308(sp)
    35c8:	13612823          	sw	s6,304(sp)
    35cc:	14112623          	sw	ra,332(sp)
    35d0:	13712623          	sw	s7,300(sp)
    35d4:	13812423          	sw	s8,296(sp)
    35d8:	13912223          	sw	s9,292(sp)
    35dc:	13a12023          	sw	s10,288(sp)
    35e0:	00050493          	mv	s1,a0
    35e4:	00058a93          	mv	s5,a1
    35e8:	00060913          	mv	s2,a2
    35ec:	00068993          	mv	s3,a3
    35f0:	10010ea3          	sb	zero,285(sp)
    35f4:	11c10a13          	addi	s4,sp,284
    35f8:	00040b13          	mv	s6,s0
    35fc:	00040513          	mv	a0,s0
    3600:	00d00613          	li	a2,13
    3604:	00000593          	li	a1,0
    3608:	00d40413          	addi	s0,s0,13
    360c:	ffffd097          	auipc	ra,0xffffd
    3610:	30c080e7          	jalr	780(ra) # 918 <memset>
    3614:	ff4414e3          	bne	s0,s4,35fc <fatfs_get_file_entry+0x54>
    3618:	00000a13          	li	s4,0
    361c:	24448c13          	addi	s8,s1,580
    3620:	00800c93          	li	s9,8
    3624:	02000b93          	li	s7,32
    3628:	00000693          	li	a3,0
    362c:	000a0613          	mv	a2,s4
    3630:	000a8593          	mv	a1,s5
    3634:	00048513          	mv	a0,s1
    3638:	00000097          	auipc	ra,0x0
    363c:	e30080e7          	jalr	-464(ra) # 3468 <fatfs_sector_reader>
    3640:	16050463          	beqz	a0,37a8 <fatfs_get_file_entry+0x200>
    3644:	04448413          	addi	s0,s1,68
    3648:	02e00d13          	li	s10,46
    364c:	00040513          	mv	a0,s0
    3650:	ffffe097          	auipc	ra,0xffffe
    3654:	69c080e7          	jalr	1692(ra) # 1cec <fatfs_entry_lfn_text>
    3658:	02050263          	beqz	a0,367c <fatfs_get_file_entry+0xd4>
    365c:	00040593          	mv	a1,s0
    3660:	000b0513          	mv	a0,s6
    3664:	ffffe097          	auipc	ra,0xffffe
    3668:	580080e7          	jalr	1408(ra) # 1be4 <fatfs_lfn_cache_entry>
    366c:	02040413          	addi	s0,s0,32
    3670:	fd841ee3          	bne	s0,s8,364c <fatfs_get_file_entry+0xa4>
    3674:	001a0a13          	addi	s4,s4,1
    3678:	fb1ff06f          	j	3628 <fatfs_get_file_entry+0x80>
    367c:	00040513          	mv	a0,s0
    3680:	ffffe097          	auipc	ra,0xffffe
    3684:	680080e7          	jalr	1664(ra) # 1d00 <fatfs_entry_lfn_invalid>
    3688:	00050663          	beqz	a0,3694 <fatfs_get_file_entry+0xec>
    368c:	10010ea3          	sb	zero,285(sp)
    3690:	fddff06f          	j	366c <fatfs_get_file_entry+0xc4>
    3694:	00040593          	mv	a1,s0
    3698:	000b0513          	mv	a0,s6
    369c:	ffffe097          	auipc	ra,0xffffe
    36a0:	69c080e7          	jalr	1692(ra) # 1d38 <fatfs_entry_lfn_exists>
    36a4:	06050863          	beqz	a0,3714 <fatfs_get_file_entry+0x16c>
    36a8:	000b0513          	mv	a0,s6
    36ac:	ffffe097          	auipc	ra,0xffffe
    36b0:	604080e7          	jalr	1540(ra) # 1cb0 <fatfs_lfn_cache_get>
    36b4:	00090593          	mv	a1,s2
    36b8:	fffff097          	auipc	ra,0xfffff
    36bc:	e50080e7          	jalr	-432(ra) # 2508 <fatfs_compare_names>
    36c0:	fc0506e3          	beqz	a0,368c <fatfs_get_file_entry+0xe4>
    36c4:	02000613          	li	a2,32
    36c8:	00040593          	mv	a1,s0
    36cc:	00098513          	mv	a0,s3
    36d0:	ffffd097          	auipc	ra,0xffffd
    36d4:	264080e7          	jalr	612(ra) # 934 <memcpy>
    36d8:	00100513          	li	a0,1
    36dc:	14c12083          	lw	ra,332(sp)
    36e0:	14812403          	lw	s0,328(sp)
    36e4:	14412483          	lw	s1,324(sp)
    36e8:	14012903          	lw	s2,320(sp)
    36ec:	13c12983          	lw	s3,316(sp)
    36f0:	13812a03          	lw	s4,312(sp)
    36f4:	13412a83          	lw	s5,308(sp)
    36f8:	13012b03          	lw	s6,304(sp)
    36fc:	12c12b83          	lw	s7,300(sp)
    3700:	12812c03          	lw	s8,296(sp)
    3704:	12412c83          	lw	s9,292(sp)
    3708:	12012d03          	lw	s10,288(sp)
    370c:	15010113          	addi	sp,sp,336
    3710:	00008067          	ret
    3714:	00040513          	mv	a0,s0
    3718:	ffffe097          	auipc	ra,0xffffe
    371c:	668080e7          	jalr	1640(ra) # 1d80 <fatfs_entry_sfn_only>
    3720:	f40506e3          	beqz	a0,366c <fatfs_get_file_entry+0xc4>
    3724:	00d00613          	li	a2,13
    3728:	00000593          	li	a1,0
    372c:	00810513          	addi	a0,sp,8
    3730:	ffffd097          	auipc	ra,0xffffd
    3734:	1e8080e7          	jalr	488(ra) # 918 <memset>
    3738:	00000793          	li	a5,0
    373c:	00f406b3          	add	a3,s0,a5
    3740:	0006c683          	lbu	a3,0(a3)
    3744:	00810713          	addi	a4,sp,8
    3748:	00f70733          	add	a4,a4,a5
    374c:	00d70023          	sb	a3,0(a4)
    3750:	00178793          	addi	a5,a5,1
    3754:	ff9794e3          	bne	a5,s9,373c <fatfs_get_file_entry+0x194>
    3758:	00844783          	lbu	a5,8(s0)
    375c:	00944683          	lbu	a3,9(s0)
    3760:	00100713          	li	a4,1
    3764:	00f108a3          	sb	a5,17(sp)
    3768:	00d10923          	sb	a3,18(sp)
    376c:	01769663          	bne	a3,s7,3778 <fatfs_get_file_entry+0x1d0>
    3770:	fe078793          	addi	a5,a5,-32
    3774:	00f03733          	snez	a4,a5
    3778:	00a44783          	lbu	a5,10(s0)
    377c:	00f109a3          	sb	a5,19(sp)
    3780:	01779463          	bne	a5,s7,3788 <fatfs_get_file_entry+0x1e0>
    3784:	00070a63          	beqz	a4,3798 <fatfs_get_file_entry+0x1f0>
    3788:	00814703          	lbu	a4,8(sp)
    378c:	02000793          	li	a5,32
    3790:	01a70463          	beq	a4,s10,3798 <fatfs_get_file_entry+0x1f0>
    3794:	02e00793          	li	a5,46
    3798:	00f10823          	sb	a5,16(sp)
    379c:	00090593          	mv	a1,s2
    37a0:	00810513          	addi	a0,sp,8
    37a4:	f15ff06f          	j	36b8 <fatfs_get_file_entry+0x110>
    37a8:	00000513          	li	a0,0
    37ac:	f31ff06f          	j	36dc <fatfs_get_file_entry+0x134>

000037b0 <_open_directory>:
    37b0:	eb010113          	addi	sp,sp,-336
    37b4:	13512a23          	sw	s5,308(sp)
    37b8:	0000aab7          	lui	s5,0xa
    37bc:	5bca8793          	addi	a5,s5,1468 # a5bc <_fs>
    37c0:	14812423          	sw	s0,328(sp)
    37c4:	14912223          	sw	s1,324(sp)
    37c8:	15212023          	sw	s2,320(sp)
    37cc:	13312e23          	sw	s3,316(sp)
    37d0:	13412c23          	sw	s4,312(sp)
    37d4:	13612823          	sw	s6,304(sp)
    37d8:	0087a403          	lw	s0,8(a5)
    37dc:	14112623          	sw	ra,332(sp)
    37e0:	00050a13          	mv	s4,a0
    37e4:	00058913          	mv	s2,a1
    37e8:	fffff097          	auipc	ra,0xfffff
    37ec:	ad8080e7          	jalr	-1320(ra) # 22c0 <fatfs_total_path_levels>
    37f0:	00050993          	mv	s3,a0
    37f4:	00000493          	li	s1,0
    37f8:	fff00b13          	li	s6,-1
    37fc:	0099d863          	bge	s3,s1,380c <_open_directory+0x5c>
    3800:	00892023          	sw	s0,0(s2)
    3804:	00100513          	li	a0,1
    3808:	0240006f          	j	382c <_open_directory+0x7c>
    380c:	10400693          	li	a3,260
    3810:	02c10613          	addi	a2,sp,44
    3814:	00048593          	mv	a1,s1
    3818:	000a0513          	mv	a0,s4
    381c:	fffff097          	auipc	ra,0xfffff
    3820:	b18080e7          	jalr	-1256(ra) # 2334 <fatfs_get_substring>
    3824:	03651863          	bne	a0,s6,3854 <_open_directory+0xa4>
    3828:	00000513          	li	a0,0
    382c:	14c12083          	lw	ra,332(sp)
    3830:	14812403          	lw	s0,328(sp)
    3834:	14412483          	lw	s1,324(sp)
    3838:	14012903          	lw	s2,320(sp)
    383c:	13c12983          	lw	s3,316(sp)
    3840:	13812a03          	lw	s4,312(sp)
    3844:	13412a83          	lw	s5,308(sp)
    3848:	13012b03          	lw	s6,304(sp)
    384c:	15010113          	addi	sp,sp,336
    3850:	00008067          	ret
    3854:	00c10693          	addi	a3,sp,12
    3858:	02c10613          	addi	a2,sp,44
    385c:	00040593          	mv	a1,s0
    3860:	5bca8513          	addi	a0,s5,1468
    3864:	00000097          	auipc	ra,0x0
    3868:	d44080e7          	jalr	-700(ra) # 35a8 <fatfs_get_file_entry>
    386c:	fa050ee3          	beqz	a0,3828 <_open_directory+0x78>
    3870:	00c10513          	addi	a0,sp,12
    3874:	ffffe097          	auipc	ra,0xffffe
    3878:	548080e7          	jalr	1352(ra) # 1dbc <fatfs_entry_is_dir>
    387c:	fa0506e3          	beqz	a0,3828 <_open_directory+0x78>
    3880:	02015403          	lhu	s0,32(sp)
    3884:	02615783          	lhu	a5,38(sp)
    3888:	00148493          	addi	s1,s1,1
    388c:	01041413          	slli	s0,s0,0x10
    3890:	00f40433          	add	s0,s0,a5
    3894:	f69ff06f          	j	37fc <_open_directory+0x4c>

00003898 <fl_opendir>:
    3898:	fe010113          	addi	sp,sp,-32
    389c:	fff00793          	li	a5,-1
    38a0:	00f12623          	sw	a5,12(sp)
    38a4:	000067b7          	lui	a5,0x6
    38a8:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    38ac:	00812c23          	sw	s0,24(sp)
    38b0:	01212823          	sw	s2,16(sp)
    38b4:	00112e23          	sw	ra,28(sp)
    38b8:	00912a23          	sw	s1,20(sp)
    38bc:	00050913          	mv	s2,a0
    38c0:	00058413          	mv	s0,a1
    38c4:	00079663          	bnez	a5,38d0 <fl_opendir+0x38>
    38c8:	ffffe097          	auipc	ra,0xffffe
    38cc:	014080e7          	jalr	20(ra) # 18dc <fl_init>
    38d0:	0000a4b7          	lui	s1,0xa
    38d4:	5bc48793          	addi	a5,s1,1468 # a5bc <_fs>
    38d8:	03c7a783          	lw	a5,60(a5)
    38dc:	5bc48493          	addi	s1,s1,1468
    38e0:	00078463          	beqz	a5,38e8 <fl_opendir+0x50>
    38e4:	000780e7          	jalr	a5
    38e8:	00090513          	mv	a0,s2
    38ec:	fffff097          	auipc	ra,0xfffff
    38f0:	9d4080e7          	jalr	-1580(ra) # 22c0 <fatfs_total_path_levels>
    38f4:	fff00793          	li	a5,-1
    38f8:	02f51063          	bne	a0,a5,3918 <fl_opendir+0x80>
    38fc:	0084a783          	lw	a5,8(s1)
    3900:	00f12623          	sw	a5,12(sp)
    3904:	00c12783          	lw	a5,12(sp)
    3908:	00042023          	sw	zero,0(s0)
    390c:	00040423          	sb	zero,8(s0)
    3910:	00f42223          	sw	a5,4(s0)
    3914:	0180006f          	j	392c <fl_opendir+0x94>
    3918:	00c10593          	addi	a1,sp,12
    391c:	00090513          	mv	a0,s2
    3920:	00000097          	auipc	ra,0x0
    3924:	e90080e7          	jalr	-368(ra) # 37b0 <_open_directory>
    3928:	fc051ee3          	bnez	a0,3904 <fl_opendir+0x6c>
    392c:	0404a783          	lw	a5,64(s1)
    3930:	00078463          	beqz	a5,3938 <fl_opendir+0xa0>
    3934:	000780e7          	jalr	a5
    3938:	00c12703          	lw	a4,12(sp)
    393c:	fff00793          	li	a5,-1
    3940:	00f71463          	bne	a4,a5,3948 <fl_opendir+0xb0>
    3944:	00000413          	li	s0,0
    3948:	01c12083          	lw	ra,28(sp)
    394c:	00040513          	mv	a0,s0
    3950:	01812403          	lw	s0,24(sp)
    3954:	01412483          	lw	s1,20(sp)
    3958:	01012903          	lw	s2,16(sp)
    395c:	02010113          	addi	sp,sp,32
    3960:	00008067          	ret

00003964 <fl_is_dir>:
    3964:	fe010113          	addi	sp,sp,-32
    3968:	00410593          	addi	a1,sp,4
    396c:	00112e23          	sw	ra,28(sp)
    3970:	00000097          	auipc	ra,0x0
    3974:	f28080e7          	jalr	-216(ra) # 3898 <fl_opendir>
    3978:	01c12083          	lw	ra,28(sp)
    397c:	00a03533          	snez	a0,a0
    3980:	02010113          	addi	sp,sp,32
    3984:	00008067          	ret

00003988 <_open_file>:
    3988:	fc010113          	addi	sp,sp,-64
    398c:	02812c23          	sw	s0,56(sp)
    3990:	03312623          	sw	s3,44(sp)
    3994:	02112e23          	sw	ra,60(sp)
    3998:	02912a23          	sw	s1,52(sp)
    399c:	03212823          	sw	s2,48(sp)
    39a0:	00050993          	mv	s3,a0
    39a4:	ffffe097          	auipc	ra,0xffffe
    39a8:	bc0080e7          	jalr	-1088(ra) # 1564 <_allocate_file>
    39ac:	00050413          	mv	s0,a0
    39b0:	10050c63          	beqz	a0,3ac8 <_open_file+0x140>
    39b4:	01450913          	addi	s2,a0,20
    39b8:	10400613          	li	a2,260
    39bc:	00000593          	li	a1,0
    39c0:	00090513          	mv	a0,s2
    39c4:	ffffd097          	auipc	ra,0xffffd
    39c8:	f54080e7          	jalr	-172(ra) # 918 <memset>
    39cc:	11840493          	addi	s1,s0,280
    39d0:	10400613          	li	a2,260
    39d4:	00000593          	li	a1,0
    39d8:	00048513          	mv	a0,s1
    39dc:	ffffd097          	auipc	ra,0xffffd
    39e0:	f3c080e7          	jalr	-196(ra) # 918 <memset>
    39e4:	10400713          	li	a4,260
    39e8:	00048693          	mv	a3,s1
    39ec:	10400613          	li	a2,260
    39f0:	00090593          	mv	a1,s2
    39f4:	00098513          	mv	a0,s3
    39f8:	fffff097          	auipc	ra,0xfffff
    39fc:	a30080e7          	jalr	-1488(ra) # 2428 <fatfs_split_path>
    3a00:	fff00793          	li	a5,-1
    3a04:	00f51c63          	bne	a0,a5,3a1c <_open_file+0x94>
    3a08:	00040513          	mv	a0,s0
    3a0c:	ffffe097          	auipc	ra,0xffffe
    3a10:	bcc080e7          	jalr	-1076(ra) # 15d8 <_free_file>
    3a14:	00000413          	li	s0,0
    3a18:	0b00006f          	j	3ac8 <_open_file+0x140>
    3a1c:	00040513          	mv	a0,s0
    3a20:	fffff097          	auipc	ra,0xfffff
    3a24:	c58080e7          	jalr	-936(ra) # 2678 <_check_file_open>
    3a28:	fe0510e3          	bnez	a0,3a08 <_open_file+0x80>
    3a2c:	01444783          	lbu	a5,20(s0)
    3a30:	0a079c63          	bnez	a5,3ae8 <_open_file+0x160>
    3a34:	0000a7b7          	lui	a5,0xa
    3a38:	5c47a783          	lw	a5,1476(a5) # a5c4 <_fs+0x8>
    3a3c:	00f42023          	sw	a5,0(s0)
    3a40:	00042583          	lw	a1,0(s0)
    3a44:	0000a937          	lui	s2,0xa
    3a48:	00010693          	mv	a3,sp
    3a4c:	00048613          	mv	a2,s1
    3a50:	5bc90513          	addi	a0,s2,1468 # a5bc <_fs>
    3a54:	00000097          	auipc	ra,0x0
    3a58:	b54080e7          	jalr	-1196(ra) # 35a8 <fatfs_get_file_entry>
    3a5c:	fa0506e3          	beqz	a0,3a08 <_open_file+0x80>
    3a60:	00010513          	mv	a0,sp
    3a64:	ffffe097          	auipc	ra,0xffffe
    3a68:	368080e7          	jalr	872(ra) # 1dcc <fatfs_entry_is_file>
    3a6c:	f8050ee3          	beqz	a0,3a08 <_open_file+0x80>
    3a70:	00b00613          	li	a2,11
    3a74:	00010593          	mv	a1,sp
    3a78:	21c40513          	addi	a0,s0,540
    3a7c:	ffffd097          	auipc	ra,0xffffd
    3a80:	eb8080e7          	jalr	-328(ra) # 934 <memcpy>
    3a84:	01c12783          	lw	a5,28(sp)
    3a88:	01a15703          	lhu	a4,26(sp)
    3a8c:	00042423          	sw	zero,8(s0)
    3a90:	00f42623          	sw	a5,12(s0)
    3a94:	01415783          	lhu	a5,20(sp)
    3a98:	42042a23          	sw	zero,1076(s0)
    3a9c:	00042823          	sw	zero,16(s0)
    3aa0:	01079793          	slli	a5,a5,0x10
    3aa4:	00e787b3          	add	a5,a5,a4
    3aa8:	00f42223          	sw	a5,4(s0)
    3aac:	fff00793          	li	a5,-1
    3ab0:	42f42823          	sw	a5,1072(s0)
    3ab4:	22f42423          	sw	a5,552(s0)
    3ab8:	22f42623          	sw	a5,556(s0)
    3abc:	5bc90513          	addi	a0,s2,1468
    3ac0:	fffff097          	auipc	ra,0xfffff
    3ac4:	7c4080e7          	jalr	1988(ra) # 3284 <fatfs_fat_purge>
    3ac8:	03c12083          	lw	ra,60(sp)
    3acc:	00040513          	mv	a0,s0
    3ad0:	03812403          	lw	s0,56(sp)
    3ad4:	03412483          	lw	s1,52(sp)
    3ad8:	03012903          	lw	s2,48(sp)
    3adc:	02c12983          	lw	s3,44(sp)
    3ae0:	04010113          	addi	sp,sp,64
    3ae4:	00008067          	ret
    3ae8:	00040593          	mv	a1,s0
    3aec:	00090513          	mv	a0,s2
    3af0:	00000097          	auipc	ra,0x0
    3af4:	cc0080e7          	jalr	-832(ra) # 37b0 <_open_directory>
    3af8:	f40514e3          	bnez	a0,3a40 <_open_file+0xb8>
    3afc:	f0dff06f          	j	3a08 <_open_file+0x80>

00003b00 <fatfs_sfn_exists>:
    3b00:	fe010113          	addi	sp,sp,-32
    3b04:	00912a23          	sw	s1,20(sp)
    3b08:	01212823          	sw	s2,16(sp)
    3b0c:	01312623          	sw	s3,12(sp)
    3b10:	01412423          	sw	s4,8(sp)
    3b14:	01512223          	sw	s5,4(sp)
    3b18:	00112e23          	sw	ra,28(sp)
    3b1c:	00812c23          	sw	s0,24(sp)
    3b20:	00050493          	mv	s1,a0
    3b24:	00058993          	mv	s3,a1
    3b28:	00060a13          	mv	s4,a2
    3b2c:	00000913          	li	s2,0
    3b30:	24450a93          	addi	s5,a0,580
    3b34:	00000693          	li	a3,0
    3b38:	00090613          	mv	a2,s2
    3b3c:	00098593          	mv	a1,s3
    3b40:	00048513          	mv	a0,s1
    3b44:	00000097          	auipc	ra,0x0
    3b48:	924080e7          	jalr	-1756(ra) # 3468 <fatfs_sector_reader>
    3b4c:	06050263          	beqz	a0,3bb0 <fatfs_sfn_exists+0xb0>
    3b50:	04448413          	addi	s0,s1,68
    3b54:	00040513          	mv	a0,s0
    3b58:	ffffe097          	auipc	ra,0xffffe
    3b5c:	194080e7          	jalr	404(ra) # 1cec <fatfs_entry_lfn_text>
    3b60:	02051e63          	bnez	a0,3b9c <fatfs_sfn_exists+0x9c>
    3b64:	00040513          	mv	a0,s0
    3b68:	ffffe097          	auipc	ra,0xffffe
    3b6c:	198080e7          	jalr	408(ra) # 1d00 <fatfs_entry_lfn_invalid>
    3b70:	02051663          	bnez	a0,3b9c <fatfs_sfn_exists+0x9c>
    3b74:	00040513          	mv	a0,s0
    3b78:	ffffe097          	auipc	ra,0xffffe
    3b7c:	208080e7          	jalr	520(ra) # 1d80 <fatfs_entry_sfn_only>
    3b80:	00050e63          	beqz	a0,3b9c <fatfs_sfn_exists+0x9c>
    3b84:	00b00613          	li	a2,11
    3b88:	000a0593          	mv	a1,s4
    3b8c:	00040513          	mv	a0,s0
    3b90:	ffffd097          	auipc	ra,0xffffd
    3b94:	de8080e7          	jalr	-536(ra) # 978 <strncmp>
    3b98:	00050a63          	beqz	a0,3bac <fatfs_sfn_exists+0xac>
    3b9c:	02040413          	addi	s0,s0,32
    3ba0:	fb541ae3          	bne	s0,s5,3b54 <fatfs_sfn_exists+0x54>
    3ba4:	00190913          	addi	s2,s2,1
    3ba8:	f8dff06f          	j	3b34 <fatfs_sfn_exists+0x34>
    3bac:	00100513          	li	a0,1
    3bb0:	01c12083          	lw	ra,28(sp)
    3bb4:	01812403          	lw	s0,24(sp)
    3bb8:	01412483          	lw	s1,20(sp)
    3bbc:	01012903          	lw	s2,16(sp)
    3bc0:	00c12983          	lw	s3,12(sp)
    3bc4:	00812a03          	lw	s4,8(sp)
    3bc8:	00412a83          	lw	s5,4(sp)
    3bcc:	02010113          	addi	sp,sp,32
    3bd0:	00008067          	ret

00003bd4 <fatfs_update_file_length>:
    3bd4:	03852783          	lw	a5,56(a0)
    3bd8:	14078e63          	beqz	a5,3d34 <fatfs_update_file_length+0x160>
    3bdc:	fd010113          	addi	sp,sp,-48
    3be0:	02912223          	sw	s1,36(sp)
    3be4:	03212023          	sw	s2,32(sp)
    3be8:	01312e23          	sw	s3,28(sp)
    3bec:	01412c23          	sw	s4,24(sp)
    3bf0:	01512a23          	sw	s5,20(sp)
    3bf4:	01612823          	sw	s6,16(sp)
    3bf8:	02112623          	sw	ra,44(sp)
    3bfc:	02812423          	sw	s0,40(sp)
    3c00:	01712623          	sw	s7,12(sp)
    3c04:	00050493          	mv	s1,a0
    3c08:	00058a13          	mv	s4,a1
    3c0c:	00060a93          	mv	s5,a2
    3c10:	00068913          	mv	s2,a3
    3c14:	00000993          	li	s3,0
    3c18:	24450b13          	addi	s6,a0,580
    3c1c:	00000693          	li	a3,0
    3c20:	00098613          	mv	a2,s3
    3c24:	000a0593          	mv	a1,s4
    3c28:	00048513          	mv	a0,s1
    3c2c:	00000097          	auipc	ra,0x0
    3c30:	83c080e7          	jalr	-1988(ra) # 3468 <fatfs_sector_reader>
    3c34:	0c050863          	beqz	a0,3d04 <fatfs_update_file_length+0x130>
    3c38:	04448413          	addi	s0,s1,68
    3c3c:	00040b93          	mv	s7,s0
    3c40:	00040513          	mv	a0,s0
    3c44:	ffffe097          	auipc	ra,0xffffe
    3c48:	0a8080e7          	jalr	168(ra) # 1cec <fatfs_entry_lfn_text>
    3c4c:	0a051463          	bnez	a0,3cf4 <fatfs_update_file_length+0x120>
    3c50:	00040513          	mv	a0,s0
    3c54:	ffffe097          	auipc	ra,0xffffe
    3c58:	0ac080e7          	jalr	172(ra) # 1d00 <fatfs_entry_lfn_invalid>
    3c5c:	08051c63          	bnez	a0,3cf4 <fatfs_update_file_length+0x120>
    3c60:	00040513          	mv	a0,s0
    3c64:	ffffe097          	auipc	ra,0xffffe
    3c68:	11c080e7          	jalr	284(ra) # 1d80 <fatfs_entry_sfn_only>
    3c6c:	08050463          	beqz	a0,3cf4 <fatfs_update_file_length+0x120>
    3c70:	00b00613          	li	a2,11
    3c74:	000a8593          	mv	a1,s5
    3c78:	00040513          	mv	a0,s0
    3c7c:	ffffd097          	auipc	ra,0xffffd
    3c80:	cfc080e7          	jalr	-772(ra) # 978 <strncmp>
    3c84:	06051863          	bnez	a0,3cf4 <fatfs_update_file_length+0x120>
    3c88:	00895793          	srli	a5,s2,0x8
    3c8c:	01240e23          	sb	s2,28(s0)
    3c90:	00f40ea3          	sb	a5,29(s0)
    3c94:	01095793          	srli	a5,s2,0x10
    3c98:	01895913          	srli	s2,s2,0x18
    3c9c:	00f40f23          	sb	a5,30(s0)
    3ca0:	01240fa3          	sb	s2,31(s0)
    3ca4:	00040593          	mv	a1,s0
    3ca8:	02000613          	li	a2,32
    3cac:	00040513          	mv	a0,s0
    3cb0:	ffffd097          	auipc	ra,0xffffd
    3cb4:	c84080e7          	jalr	-892(ra) # 934 <memcpy>
    3cb8:	02812403          	lw	s0,40(sp)
    3cbc:	0384a783          	lw	a5,56(s1)
    3cc0:	2444a503          	lw	a0,580(s1)
    3cc4:	02c12083          	lw	ra,44(sp)
    3cc8:	02412483          	lw	s1,36(sp)
    3ccc:	02012903          	lw	s2,32(sp)
    3cd0:	01c12983          	lw	s3,28(sp)
    3cd4:	01812a03          	lw	s4,24(sp)
    3cd8:	01412a83          	lw	s5,20(sp)
    3cdc:	01012b03          	lw	s6,16(sp)
    3ce0:	000b8593          	mv	a1,s7
    3ce4:	00c12b83          	lw	s7,12(sp)
    3ce8:	00100613          	li	a2,1
    3cec:	03010113          	addi	sp,sp,48
    3cf0:	00078067          	jr	a5
    3cf4:	02040413          	addi	s0,s0,32
    3cf8:	f56414e3          	bne	s0,s6,3c40 <fatfs_update_file_length+0x6c>
    3cfc:	00198993          	addi	s3,s3,1
    3d00:	f1dff06f          	j	3c1c <fatfs_update_file_length+0x48>
    3d04:	02c12083          	lw	ra,44(sp)
    3d08:	02812403          	lw	s0,40(sp)
    3d0c:	02412483          	lw	s1,36(sp)
    3d10:	02012903          	lw	s2,32(sp)
    3d14:	01c12983          	lw	s3,28(sp)
    3d18:	01812a03          	lw	s4,24(sp)
    3d1c:	01412a83          	lw	s5,20(sp)
    3d20:	01012b03          	lw	s6,16(sp)
    3d24:	00c12b83          	lw	s7,12(sp)
    3d28:	00000513          	li	a0,0
    3d2c:	03010113          	addi	sp,sp,48
    3d30:	00008067          	ret
    3d34:	00000513          	li	a0,0
    3d38:	00008067          	ret

00003d3c <fatfs_mark_file_deleted>:
    3d3c:	03852783          	lw	a5,56(a0)
    3d40:	12078c63          	beqz	a5,3e78 <fatfs_mark_file_deleted+0x13c>
    3d44:	fe010113          	addi	sp,sp,-32
    3d48:	00912a23          	sw	s1,20(sp)
    3d4c:	01212823          	sw	s2,16(sp)
    3d50:	01312623          	sw	s3,12(sp)
    3d54:	01412423          	sw	s4,8(sp)
    3d58:	01512223          	sw	s5,4(sp)
    3d5c:	00112e23          	sw	ra,28(sp)
    3d60:	00812c23          	sw	s0,24(sp)
    3d64:	01612023          	sw	s6,0(sp)
    3d68:	00050493          	mv	s1,a0
    3d6c:	00058993          	mv	s3,a1
    3d70:	00060a13          	mv	s4,a2
    3d74:	00000913          	li	s2,0
    3d78:	24450a93          	addi	s5,a0,580
    3d7c:	00000693          	li	a3,0
    3d80:	00090613          	mv	a2,s2
    3d84:	00098593          	mv	a1,s3
    3d88:	00048513          	mv	a0,s1
    3d8c:	fffff097          	auipc	ra,0xfffff
    3d90:	6dc080e7          	jalr	1756(ra) # 3468 <fatfs_sector_reader>
    3d94:	0a050c63          	beqz	a0,3e4c <fatfs_mark_file_deleted+0x110>
    3d98:	04448413          	addi	s0,s1,68
    3d9c:	00040b13          	mv	s6,s0
    3da0:	00040513          	mv	a0,s0
    3da4:	ffffe097          	auipc	ra,0xffffe
    3da8:	f48080e7          	jalr	-184(ra) # 1cec <fatfs_entry_lfn_text>
    3dac:	08051863          	bnez	a0,3e3c <fatfs_mark_file_deleted+0x100>
    3db0:	00040513          	mv	a0,s0
    3db4:	ffffe097          	auipc	ra,0xffffe
    3db8:	f4c080e7          	jalr	-180(ra) # 1d00 <fatfs_entry_lfn_invalid>
    3dbc:	08051063          	bnez	a0,3e3c <fatfs_mark_file_deleted+0x100>
    3dc0:	00040513          	mv	a0,s0
    3dc4:	ffffe097          	auipc	ra,0xffffe
    3dc8:	fbc080e7          	jalr	-68(ra) # 1d80 <fatfs_entry_sfn_only>
    3dcc:	06050863          	beqz	a0,3e3c <fatfs_mark_file_deleted+0x100>
    3dd0:	00b00613          	li	a2,11
    3dd4:	000a0593          	mv	a1,s4
    3dd8:	00040513          	mv	a0,s0
    3ddc:	ffffd097          	auipc	ra,0xffffd
    3de0:	b9c080e7          	jalr	-1124(ra) # 978 <strncmp>
    3de4:	04051c63          	bnez	a0,3e3c <fatfs_mark_file_deleted+0x100>
    3de8:	fe500793          	li	a5,-27
    3dec:	00f40023          	sb	a5,0(s0)
    3df0:	00040593          	mv	a1,s0
    3df4:	02000613          	li	a2,32
    3df8:	00040513          	mv	a0,s0
    3dfc:	ffffd097          	auipc	ra,0xffffd
    3e00:	b38080e7          	jalr	-1224(ra) # 934 <memcpy>
    3e04:	01812403          	lw	s0,24(sp)
    3e08:	0384a783          	lw	a5,56(s1)
    3e0c:	2444a503          	lw	a0,580(s1)
    3e10:	01c12083          	lw	ra,28(sp)
    3e14:	01412483          	lw	s1,20(sp)
    3e18:	01012903          	lw	s2,16(sp)
    3e1c:	00c12983          	lw	s3,12(sp)
    3e20:	00812a03          	lw	s4,8(sp)
    3e24:	00412a83          	lw	s5,4(sp)
    3e28:	000b0593          	mv	a1,s6
    3e2c:	00012b03          	lw	s6,0(sp)
    3e30:	00100613          	li	a2,1
    3e34:	02010113          	addi	sp,sp,32
    3e38:	00078067          	jr	a5
    3e3c:	02040413          	addi	s0,s0,32
    3e40:	f75410e3          	bne	s0,s5,3da0 <fatfs_mark_file_deleted+0x64>
    3e44:	00190913          	addi	s2,s2,1
    3e48:	f35ff06f          	j	3d7c <fatfs_mark_file_deleted+0x40>
    3e4c:	01c12083          	lw	ra,28(sp)
    3e50:	01812403          	lw	s0,24(sp)
    3e54:	01412483          	lw	s1,20(sp)
    3e58:	01012903          	lw	s2,16(sp)
    3e5c:	00c12983          	lw	s3,12(sp)
    3e60:	00812a03          	lw	s4,8(sp)
    3e64:	00412a83          	lw	s5,4(sp)
    3e68:	00012b03          	lw	s6,0(sp)
    3e6c:	00000513          	li	a0,0
    3e70:	02010113          	addi	sp,sp,32
    3e74:	00008067          	ret
    3e78:	00000513          	li	a0,0
    3e7c:	00008067          	ret

00003e80 <fatfs_list_directory_next>:
    3e80:	ec010113          	addi	sp,sp,-320
    3e84:	13212823          	sw	s2,304(sp)
    3e88:	13312623          	sw	s3,300(sp)
    3e8c:	13412423          	sw	s4,296(sp)
    3e90:	13512223          	sw	s5,292(sp)
    3e94:	12112e23          	sw	ra,316(sp)
    3e98:	12812c23          	sw	s0,312(sp)
    3e9c:	12912a23          	sw	s1,308(sp)
    3ea0:	00050a13          	mv	s4,a0
    3ea4:	00058913          	mv	s2,a1
    3ea8:	00060993          	mv	s3,a2
    3eac:	10010ea3          	sb	zero,285(sp)
    3eb0:	00f00a93          	li	s5,15
    3eb4:	00092603          	lw	a2,0(s2)
    3eb8:	00492583          	lw	a1,4(s2)
    3ebc:	00000693          	li	a3,0
    3ec0:	000a0513          	mv	a0,s4
    3ec4:	fffff097          	auipc	ra,0xfffff
    3ec8:	5a4080e7          	jalr	1444(ra) # 3468 <fatfs_sector_reader>
    3ecc:	12050063          	beqz	a0,3fec <fatfs_list_directory_next+0x16c>
    3ed0:	00894483          	lbu	s1,8(s2)
    3ed4:	00549413          	slli	s0,s1,0x5
    3ed8:	04440413          	addi	s0,s0,68
    3edc:	008a0433          	add	s0,s4,s0
    3ee0:	009afc63          	bgeu	s5,s1,3ef8 <fatfs_list_directory_next+0x78>
    3ee4:	00092783          	lw	a5,0(s2)
    3ee8:	00090423          	sb	zero,8(s2)
    3eec:	00178793          	addi	a5,a5,1
    3ef0:	00f92023          	sw	a5,0(s2)
    3ef4:	fc1ff06f          	j	3eb4 <fatfs_list_directory_next+0x34>
    3ef8:	00040513          	mv	a0,s0
    3efc:	ffffe097          	auipc	ra,0xffffe
    3f00:	df0080e7          	jalr	-528(ra) # 1cec <fatfs_entry_lfn_text>
    3f04:	02050263          	beqz	a0,3f28 <fatfs_list_directory_next+0xa8>
    3f08:	00040593          	mv	a1,s0
    3f0c:	01810513          	addi	a0,sp,24
    3f10:	ffffe097          	auipc	ra,0xffffe
    3f14:	cd4080e7          	jalr	-812(ra) # 1be4 <fatfs_lfn_cache_entry>
    3f18:	00148493          	addi	s1,s1,1
    3f1c:	0ff4f493          	zext.b	s1,s1
    3f20:	02040413          	addi	s0,s0,32
    3f24:	fbdff06f          	j	3ee0 <fatfs_list_directory_next+0x60>
    3f28:	00040513          	mv	a0,s0
    3f2c:	ffffe097          	auipc	ra,0xffffe
    3f30:	dd4080e7          	jalr	-556(ra) # 1d00 <fatfs_entry_lfn_invalid>
    3f34:	00050663          	beqz	a0,3f40 <fatfs_list_directory_next+0xc0>
    3f38:	10010ea3          	sb	zero,285(sp)
    3f3c:	fddff06f          	j	3f18 <fatfs_list_directory_next+0x98>
    3f40:	00040593          	mv	a1,s0
    3f44:	01810513          	addi	a0,sp,24
    3f48:	ffffe097          	auipc	ra,0xffffe
    3f4c:	df0080e7          	jalr	-528(ra) # 1d38 <fatfs_entry_lfn_exists>
    3f50:	0c050063          	beqz	a0,4010 <fatfs_list_directory_next+0x190>
    3f54:	01810513          	addi	a0,sp,24
    3f58:	ffffe097          	auipc	ra,0xffffe
    3f5c:	d58080e7          	jalr	-680(ra) # 1cb0 <fatfs_lfn_cache_get>
    3f60:	00050593          	mv	a1,a0
    3f64:	10300613          	li	a2,259
    3f68:	00098513          	mv	a0,s3
    3f6c:	ffffd097          	auipc	ra,0xffffd
    3f70:	a4c080e7          	jalr	-1460(ra) # 9b8 <strncpy>
    3f74:	00040513          	mv	a0,s0
    3f78:	ffffe097          	auipc	ra,0xffffe
    3f7c:	e44080e7          	jalr	-444(ra) # 1dbc <fatfs_entry_is_dir>
    3f80:	00a03533          	snez	a0,a0
    3f84:	10a98223          	sb	a0,260(s3)
    3f88:	01d44783          	lbu	a5,29(s0)
    3f8c:	01c44703          	lbu	a4,28(s0)
    3f90:	00148493          	addi	s1,s1,1
    3f94:	00879793          	slli	a5,a5,0x8
    3f98:	00e7e7b3          	or	a5,a5,a4
    3f9c:	01e44703          	lbu	a4,30(s0)
    3fa0:	00100513          	li	a0,1
    3fa4:	01071713          	slli	a4,a4,0x10
    3fa8:	00f76733          	or	a4,a4,a5
    3fac:	01f44783          	lbu	a5,31(s0)
    3fb0:	01879793          	slli	a5,a5,0x18
    3fb4:	00e7e7b3          	or	a5,a5,a4
    3fb8:	10f9a623          	sw	a5,268(s3)
    3fbc:	01544783          	lbu	a5,21(s0)
    3fc0:	01444703          	lbu	a4,20(s0)
    3fc4:	01a44683          	lbu	a3,26(s0)
    3fc8:	00879793          	slli	a5,a5,0x8
    3fcc:	00e7e7b3          	or	a5,a5,a4
    3fd0:	01b44703          	lbu	a4,27(s0)
    3fd4:	01079793          	slli	a5,a5,0x10
    3fd8:	00871713          	slli	a4,a4,0x8
    3fdc:	00d76733          	or	a4,a4,a3
    3fe0:	00e7e7b3          	or	a5,a5,a4
    3fe4:	10f9a423          	sw	a5,264(s3)
    3fe8:	00990423          	sb	s1,8(s2)
    3fec:	13c12083          	lw	ra,316(sp)
    3ff0:	13812403          	lw	s0,312(sp)
    3ff4:	13412483          	lw	s1,308(sp)
    3ff8:	13012903          	lw	s2,304(sp)
    3ffc:	12c12983          	lw	s3,300(sp)
    4000:	12812a03          	lw	s4,296(sp)
    4004:	12412a83          	lw	s5,292(sp)
    4008:	14010113          	addi	sp,sp,320
    400c:	00008067          	ret
    4010:	00040513          	mv	a0,s0
    4014:	ffffe097          	auipc	ra,0xffffe
    4018:	d6c080e7          	jalr	-660(ra) # 1d80 <fatfs_entry_sfn_only>
    401c:	ee050ee3          	beqz	a0,3f18 <fatfs_list_directory_next+0x98>
    4020:	00d00613          	li	a2,13
    4024:	00000593          	li	a1,0
    4028:	00810513          	addi	a0,sp,8
    402c:	10010ea3          	sb	zero,285(sp)
    4030:	ffffd097          	auipc	ra,0xffffd
    4034:	8e8080e7          	jalr	-1816(ra) # 918 <memset>
    4038:	00000793          	li	a5,0
    403c:	00800713          	li	a4,8
    4040:	00f40633          	add	a2,s0,a5
    4044:	00064603          	lbu	a2,0(a2)
    4048:	00810693          	addi	a3,sp,8
    404c:	00f686b3          	add	a3,a3,a5
    4050:	00c68023          	sb	a2,0(a3)
    4054:	00178793          	addi	a5,a5,1
    4058:	fee794e3          	bne	a5,a4,4040 <fatfs_list_directory_next+0x1c0>
    405c:	00844783          	lbu	a5,8(s0)
    4060:	00944683          	lbu	a3,9(s0)
    4064:	02000613          	li	a2,32
    4068:	00f108a3          	sb	a5,17(sp)
    406c:	00d10923          	sb	a3,18(sp)
    4070:	00100713          	li	a4,1
    4074:	00c69663          	bne	a3,a2,4080 <fatfs_list_directory_next+0x200>
    4078:	fe078793          	addi	a5,a5,-32
    407c:	00f03733          	snez	a4,a5
    4080:	00a44783          	lbu	a5,10(s0)
    4084:	02000693          	li	a3,32
    4088:	00f109a3          	sb	a5,19(sp)
    408c:	00d79463          	bne	a5,a3,4094 <fatfs_list_directory_next+0x214>
    4090:	00070c63          	beqz	a4,40a8 <fatfs_list_directory_next+0x228>
    4094:	00814683          	lbu	a3,8(sp)
    4098:	02e00713          	li	a4,46
    409c:	02000793          	li	a5,32
    40a0:	00e68463          	beq	a3,a4,40a8 <fatfs_list_directory_next+0x228>
    40a4:	02e00793          	li	a5,46
    40a8:	00810593          	addi	a1,sp,8
    40ac:	00098513          	mv	a0,s3
    40b0:	00f10823          	sb	a5,16(sp)
    40b4:	ffffe097          	auipc	ra,0xffffe
    40b8:	690080e7          	jalr	1680(ra) # 2744 <fatfs_get_sfn_display_name>
    40bc:	eb9ff06f          	j	3f74 <fatfs_list_directory_next+0xf4>

000040c0 <fl_readdir>:
    40c0:	000067b7          	lui	a5,0x6
    40c4:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    40c8:	fe010113          	addi	sp,sp,-32
    40cc:	00912a23          	sw	s1,20(sp)
    40d0:	01212823          	sw	s2,16(sp)
    40d4:	00112e23          	sw	ra,28(sp)
    40d8:	00812c23          	sw	s0,24(sp)
    40dc:	01312623          	sw	s3,12(sp)
    40e0:	00050493          	mv	s1,a0
    40e4:	00058913          	mv	s2,a1
    40e8:	00079663          	bnez	a5,40f4 <fl_readdir+0x34>
    40ec:	ffffd097          	auipc	ra,0xffffd
    40f0:	7f0080e7          	jalr	2032(ra) # 18dc <fl_init>
    40f4:	0000a437          	lui	s0,0xa
    40f8:	5bc40793          	addi	a5,s0,1468 # a5bc <_fs>
    40fc:	03c7a783          	lw	a5,60(a5)
    4100:	5bc40993          	addi	s3,s0,1468
    4104:	00078463          	beqz	a5,410c <fl_readdir+0x4c>
    4108:	000780e7          	jalr	a5
    410c:	5bc40513          	addi	a0,s0,1468
    4110:	00090613          	mv	a2,s2
    4114:	00048593          	mv	a1,s1
    4118:	00000097          	auipc	ra,0x0
    411c:	d68080e7          	jalr	-664(ra) # 3e80 <fatfs_list_directory_next>
    4120:	0409a783          	lw	a5,64(s3)
    4124:	00050413          	mv	s0,a0
    4128:	00078463          	beqz	a5,4130 <fl_readdir+0x70>
    412c:	000780e7          	jalr	a5
    4130:	01c12083          	lw	ra,28(sp)
    4134:	00143513          	seqz	a0,s0
    4138:	01812403          	lw	s0,24(sp)
    413c:	01412483          	lw	s1,20(sp)
    4140:	01012903          	lw	s2,16(sp)
    4144:	00c12983          	lw	s3,12(sp)
    4148:	40a00533          	neg	a0,a0
    414c:	02010113          	addi	sp,sp,32
    4150:	00008067          	ret

00004154 <fl_listdirectory>:
    4154:	000067b7          	lui	a5,0x6
    4158:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    415c:	ed010113          	addi	sp,sp,-304
    4160:	12912223          	sw	s1,292(sp)
    4164:	12112623          	sw	ra,300(sp)
    4168:	12812423          	sw	s0,296(sp)
    416c:	13212023          	sw	s2,288(sp)
    4170:	00050493          	mv	s1,a0
    4174:	00079663          	bnez	a5,4180 <fl_listdirectory+0x2c>
    4178:	ffffd097          	auipc	ra,0xffffd
    417c:	764080e7          	jalr	1892(ra) # 18dc <fl_init>
    4180:	0000a7b7          	lui	a5,0xa
    4184:	5bc78713          	addi	a4,a5,1468 # a5bc <_fs>
    4188:	03c72703          	lw	a4,60(a4)
    418c:	5bc78413          	addi	s0,a5,1468
    4190:	00070463          	beqz	a4,4198 <fl_listdirectory+0x44>
    4194:	000700e7          	jalr	a4
    4198:	00006537          	lui	a0,0x6
    419c:	00048593          	mv	a1,s1
    41a0:	12050513          	addi	a0,a0,288 # 6120 <font+0x38c>
    41a4:	ffffd097          	auipc	ra,0xffffd
    41a8:	e68080e7          	jalr	-408(ra) # 100c <printf>
    41ac:	00410593          	addi	a1,sp,4
    41b0:	00048513          	mv	a0,s1
    41b4:	fffff097          	auipc	ra,0xfffff
    41b8:	6e4080e7          	jalr	1764(ra) # 3898 <fl_opendir>
    41bc:	02050063          	beqz	a0,41dc <fl_listdirectory+0x88>
    41c0:	000064b7          	lui	s1,0x6
    41c4:	00006937          	lui	s2,0x6
    41c8:	01010593          	addi	a1,sp,16
    41cc:	00410513          	addi	a0,sp,4
    41d0:	00000097          	auipc	ra,0x0
    41d4:	ef0080e7          	jalr	-272(ra) # 40c0 <fl_readdir>
    41d8:	02050263          	beqz	a0,41fc <fl_listdirectory+0xa8>
    41dc:	04042783          	lw	a5,64(s0)
    41e0:	04078863          	beqz	a5,4230 <fl_listdirectory+0xdc>
    41e4:	12812403          	lw	s0,296(sp)
    41e8:	12c12083          	lw	ra,300(sp)
    41ec:	12412483          	lw	s1,292(sp)
    41f0:	12012903          	lw	s2,288(sp)
    41f4:	13010113          	addi	sp,sp,304
    41f8:	00078067          	jr	a5
    41fc:	11414783          	lbu	a5,276(sp)
    4200:	00078c63          	beqz	a5,4218 <fl_listdirectory+0xc4>
    4204:	01010593          	addi	a1,sp,16
    4208:	13490513          	addi	a0,s2,308 # 6134 <font+0x3a0>
    420c:	ffffd097          	auipc	ra,0xffffd
    4210:	e00080e7          	jalr	-512(ra) # 100c <printf>
    4214:	fb5ff06f          	j	41c8 <fl_listdirectory+0x74>
    4218:	11c12603          	lw	a2,284(sp)
    421c:	01010593          	addi	a1,sp,16
    4220:	14048513          	addi	a0,s1,320 # 6140 <font+0x3ac>
    4224:	ffffd097          	auipc	ra,0xffffd
    4228:	de8080e7          	jalr	-536(ra) # 100c <printf>
    422c:	f9dff06f          	j	41c8 <fl_listdirectory+0x74>
    4230:	12c12083          	lw	ra,300(sp)
    4234:	12812403          	lw	s0,296(sp)
    4238:	12412483          	lw	s1,292(sp)
    423c:	12012903          	lw	s2,288(sp)
    4240:	13010113          	addi	sp,sp,304
    4244:	00008067          	ret

00004248 <_read_sectors>:
    4248:	fd010113          	addi	sp,sp,-48
    424c:	01612823          	sw	s6,16(sp)
    4250:	0000ab37          	lui	s6,0xa
    4254:	01512a23          	sw	s5,20(sp)
    4258:	5bcb4a83          	lbu	s5,1468(s6) # a5bc <_fs>
    425c:	01412c23          	sw	s4,24(sp)
    4260:	00058a13          	mv	s4,a1
    4264:	02912223          	sw	s1,36(sp)
    4268:	000a8593          	mv	a1,s5
    426c:	00050493          	mv	s1,a0
    4270:	000a0513          	mv	a0,s4
    4274:	02112623          	sw	ra,44(sp)
    4278:	02812423          	sw	s0,40(sp)
    427c:	03212023          	sw	s2,32(sp)
    4280:	00068413          	mv	s0,a3
    4284:	01712623          	sw	s7,12(sp)
    4288:	01812423          	sw	s8,8(sp)
    428c:	01312e23          	sw	s3,28(sp)
    4290:	00060c13          	mv	s8,a2
    4294:	ffffc097          	auipc	ra,0xffffc
    4298:	5b0080e7          	jalr	1456(ra) # 844 <__udivsi3>
    429c:	00050913          	mv	s2,a0
    42a0:	000a8593          	mv	a1,s5
    42a4:	000a0513          	mv	a0,s4
    42a8:	ffffc097          	auipc	ra,0xffffc
    42ac:	5e4080e7          	jalr	1508(ra) # 88c <__umodsi3>
    42b0:	00a407b3          	add	a5,s0,a0
    42b4:	00050b93          	mv	s7,a0
    42b8:	00fafe63          	bgeu	s5,a5,42d4 <_read_sectors+0x8c>
    42bc:	00090593          	mv	a1,s2
    42c0:	000a8513          	mv	a0,s5
    42c4:	ffffd097          	auipc	ra,0xffffd
    42c8:	e84080e7          	jalr	-380(ra) # 1148 <__mulsi3>
    42cc:	414a87b3          	sub	a5,s5,s4
    42d0:	00f50433          	add	s0,a0,a5
    42d4:	2284a983          	lw	s3,552(s1)
    42d8:	01299c63          	bne	s3,s2,42f0 <_read_sectors+0xa8>
    42dc:	22c4a583          	lw	a1,556(s1)
    42e0:	fff00793          	li	a5,-1
    42e4:	02f59863          	bne	a1,a5,4314 <_read_sectors+0xcc>
    42e8:	00000413          	li	s0,0
    42ec:	0500006f          	j	433c <_read_sectors+0xf4>
    42f0:	095a6063          	bltu	s4,s5,4370 <_read_sectors+0x128>
    42f4:	00198793          	addi	a5,s3,1
    42f8:	07279c63          	bne	a5,s2,4370 <_read_sectors+0x128>
    42fc:	22c4a583          	lw	a1,556(s1)
    4300:	0729ee63          	bltu	s3,s2,437c <_read_sectors+0x134>
    4304:	fff00793          	li	a5,-1
    4308:	fef580e3          	beq	a1,a5,42e8 <_read_sectors+0xa0>
    430c:	22b4a623          	sw	a1,556(s1)
    4310:	2324a423          	sw	s2,552(s1)
    4314:	5bcb0513          	addi	a0,s6,1468
    4318:	ffffd097          	auipc	ra,0xffffd
    431c:	308080e7          	jalr	776(ra) # 1620 <fatfs_lba_of_cluster>
    4320:	017505b3          	add	a1,a0,s7
    4324:	00040693          	mv	a3,s0
    4328:	000c0613          	mv	a2,s8
    432c:	5bcb0513          	addi	a0,s6,1468
    4330:	ffffd097          	auipc	ra,0xffffd
    4334:	340080e7          	jalr	832(ra) # 1670 <fatfs_sector_read>
    4338:	fa0508e3          	beqz	a0,42e8 <_read_sectors+0xa0>
    433c:	02c12083          	lw	ra,44(sp)
    4340:	00040513          	mv	a0,s0
    4344:	02812403          	lw	s0,40(sp)
    4348:	02412483          	lw	s1,36(sp)
    434c:	02012903          	lw	s2,32(sp)
    4350:	01c12983          	lw	s3,28(sp)
    4354:	01812a03          	lw	s4,24(sp)
    4358:	01412a83          	lw	s5,20(sp)
    435c:	01012b03          	lw	s6,16(sp)
    4360:	00c12b83          	lw	s7,12(sp)
    4364:	00812c03          	lw	s8,8(sp)
    4368:	03010113          	addi	sp,sp,48
    436c:	00008067          	ret
    4370:	0044a583          	lw	a1,4(s1)
    4374:	00000993          	li	s3,0
    4378:	f89ff06f          	j	4300 <_read_sectors+0xb8>
    437c:	5bcb0513          	addi	a0,s6,1468
    4380:	fffff097          	auipc	ra,0xfffff
    4384:	fd8080e7          	jalr	-40(ra) # 3358 <fatfs_find_next_cluster>
    4388:	00050593          	mv	a1,a0
    438c:	00198993          	addi	s3,s3,1
    4390:	f71ff06f          	j	4300 <_read_sectors+0xb8>

00004394 <fatfs_set_fs_info_next_free_cluster>:
    4394:	03052783          	lw	a5,48(a0)
    4398:	0a078863          	beqz	a5,4448 <fatfs_set_fs_info_next_free_cluster+0xb4>
    439c:	ff010113          	addi	sp,sp,-16
    43a0:	01c52783          	lw	a5,28(a0)
    43a4:	01212023          	sw	s2,0(sp)
    43a8:	00058913          	mv	s2,a1
    43ac:	01855583          	lhu	a1,24(a0)
    43b0:	00812423          	sw	s0,8(sp)
    43b4:	00912223          	sw	s1,4(sp)
    43b8:	00f585b3          	add	a1,a1,a5
    43bc:	00112623          	sw	ra,12(sp)
    43c0:	00050493          	mv	s1,a0
    43c4:	ffffd097          	auipc	ra,0xffffd
    43c8:	f3c080e7          	jalr	-196(ra) # 1300 <fatfs_fat_read_sector>
    43cc:	00050413          	mv	s0,a0
    43d0:	06050063          	beqz	a0,4430 <fatfs_set_fs_info_next_free_cluster+0x9c>
    43d4:	20852783          	lw	a5,520(a0)
    43d8:	00895713          	srli	a4,s2,0x8
    43dc:	1f278623          	sb	s2,492(a5)
    43e0:	20852783          	lw	a5,520(a0)
    43e4:	1ee786a3          	sb	a4,493(a5)
    43e8:	20852783          	lw	a5,520(a0)
    43ec:	01095713          	srli	a4,s2,0x10
    43f0:	1ee78723          	sb	a4,494(a5)
    43f4:	20852783          	lw	a5,520(a0)
    43f8:	01895713          	srli	a4,s2,0x18
    43fc:	1ee787a3          	sb	a4,495(a5)
    4400:	00100793          	li	a5,1
    4404:	20f52223          	sw	a5,516(a0)
    4408:	0384a783          	lw	a5,56(s1)
    440c:	0324a223          	sw	s2,36(s1)
    4410:	00078a63          	beqz	a5,4424 <fatfs_set_fs_info_next_free_cluster+0x90>
    4414:	00050593          	mv	a1,a0
    4418:	20052503          	lw	a0,512(a0)
    441c:	00100613          	li	a2,1
    4420:	000780e7          	jalr	a5
    4424:	fff00793          	li	a5,-1
    4428:	20f42023          	sw	a5,512(s0)
    442c:	20042223          	sw	zero,516(s0)
    4430:	00c12083          	lw	ra,12(sp)
    4434:	00812403          	lw	s0,8(sp)
    4438:	00412483          	lw	s1,4(sp)
    443c:	00012903          	lw	s2,0(sp)
    4440:	01010113          	addi	sp,sp,16
    4444:	00008067          	ret
    4448:	00008067          	ret

0000444c <fatfs_find_blank_cluster>:
    444c:	fe010113          	addi	sp,sp,-32
    4450:	01312623          	sw	s3,12(sp)
    4454:	01512223          	sw	s5,4(sp)
    4458:	000109b7          	lui	s3,0x10
    445c:	10000ab7          	lui	s5,0x10000
    4460:	00912a23          	sw	s1,20(sp)
    4464:	01212823          	sw	s2,16(sp)
    4468:	01412423          	sw	s4,8(sp)
    446c:	00112e23          	sw	ra,28(sp)
    4470:	00812c23          	sw	s0,24(sp)
    4474:	00050913          	mv	s2,a0
    4478:	00058493          	mv	s1,a1
    447c:	00060a13          	mv	s4,a2
    4480:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x55db>
    4484:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    4488:	03092783          	lw	a5,48(s2)
    448c:	0074d413          	srli	s0,s1,0x7
    4490:	00079463          	bnez	a5,4498 <fatfs_find_blank_cluster+0x4c>
    4494:	0084d413          	srli	s0,s1,0x8
    4498:	02092783          	lw	a5,32(s2)
    449c:	08f47e63          	bgeu	s0,a5,4538 <fatfs_find_blank_cluster+0xec>
    44a0:	01492583          	lw	a1,20(s2)
    44a4:	00090513          	mv	a0,s2
    44a8:	00b405b3          	add	a1,s0,a1
    44ac:	ffffd097          	auipc	ra,0xffffd
    44b0:	e54080e7          	jalr	-428(ra) # 1300 <fatfs_fat_read_sector>
    44b4:	08050263          	beqz	a0,4538 <fatfs_find_blank_cluster+0xec>
    44b8:	03092783          	lw	a5,48(s2)
    44bc:	20852703          	lw	a4,520(a0)
    44c0:	02079a63          	bnez	a5,44f4 <fatfs_find_blank_cluster+0xa8>
    44c4:	00841413          	slli	s0,s0,0x8
    44c8:	40848433          	sub	s0,s1,s0
    44cc:	00141413          	slli	s0,s0,0x1
    44d0:	01347433          	and	s0,s0,s3
    44d4:	00870733          	add	a4,a4,s0
    44d8:	00174783          	lbu	a5,1(a4)
    44dc:	00074703          	lbu	a4,0(a4)
    44e0:	00879793          	slli	a5,a5,0x8
    44e4:	00e787b3          	add	a5,a5,a4
    44e8:	06078c63          	beqz	a5,4560 <fatfs_find_blank_cluster+0x114>
    44ec:	00148493          	addi	s1,s1,1
    44f0:	f99ff06f          	j	4488 <fatfs_find_blank_cluster+0x3c>
    44f4:	00741413          	slli	s0,s0,0x7
    44f8:	40848433          	sub	s0,s1,s0
    44fc:	00241413          	slli	s0,s0,0x2
    4500:	01347433          	and	s0,s0,s3
    4504:	00870733          	add	a4,a4,s0
    4508:	00374783          	lbu	a5,3(a4)
    450c:	00274683          	lbu	a3,2(a4)
    4510:	01879793          	slli	a5,a5,0x18
    4514:	01069693          	slli	a3,a3,0x10
    4518:	00d787b3          	add	a5,a5,a3
    451c:	00074683          	lbu	a3,0(a4)
    4520:	00174703          	lbu	a4,1(a4)
    4524:	00d787b3          	add	a5,a5,a3
    4528:	00871713          	slli	a4,a4,0x8
    452c:	00e787b3          	add	a5,a5,a4
    4530:	0157f7b3          	and	a5,a5,s5
    4534:	fb5ff06f          	j	44e8 <fatfs_find_blank_cluster+0x9c>
    4538:	00000513          	li	a0,0
    453c:	01c12083          	lw	ra,28(sp)
    4540:	01812403          	lw	s0,24(sp)
    4544:	01412483          	lw	s1,20(sp)
    4548:	01012903          	lw	s2,16(sp)
    454c:	00c12983          	lw	s3,12(sp)
    4550:	00812a03          	lw	s4,8(sp)
    4554:	00412a83          	lw	s5,4(sp)
    4558:	02010113          	addi	sp,sp,32
    455c:	00008067          	ret
    4560:	009a2023          	sw	s1,0(s4)
    4564:	00100513          	li	a0,1
    4568:	fd5ff06f          	j	453c <fatfs_find_blank_cluster+0xf0>

0000456c <fatfs_fat_set_cluster>:
    456c:	03052783          	lw	a5,48(a0)
    4570:	fe010113          	addi	sp,sp,-32
    4574:	00812c23          	sw	s0,24(sp)
    4578:	00912a23          	sw	s1,20(sp)
    457c:	01212823          	sw	s2,16(sp)
    4580:	01312623          	sw	s3,12(sp)
    4584:	00112e23          	sw	ra,28(sp)
    4588:	00050993          	mv	s3,a0
    458c:	00058413          	mv	s0,a1
    4590:	00060493          	mv	s1,a2
    4594:	0085d913          	srli	s2,a1,0x8
    4598:	00078463          	beqz	a5,45a0 <fatfs_fat_set_cluster+0x34>
    459c:	0075d913          	srli	s2,a1,0x7
    45a0:	0149a583          	lw	a1,20(s3)
    45a4:	00098513          	mv	a0,s3
    45a8:	00b905b3          	add	a1,s2,a1
    45ac:	ffffd097          	auipc	ra,0xffffd
    45b0:	d54080e7          	jalr	-684(ra) # 1300 <fatfs_fat_read_sector>
    45b4:	00050793          	mv	a5,a0
    45b8:	00000513          	li	a0,0
    45bc:	04078c63          	beqz	a5,4614 <fatfs_fat_set_cluster+0xa8>
    45c0:	0309a683          	lw	a3,48(s3)
    45c4:	2087a703          	lw	a4,520(a5)
    45c8:	0ff4f613          	zext.b	a2,s1
    45cc:	06069263          	bnez	a3,4630 <fatfs_fat_set_cluster+0xc4>
    45d0:	00891913          	slli	s2,s2,0x8
    45d4:	41240433          	sub	s0,s0,s2
    45d8:	000106b7          	lui	a3,0x10
    45dc:	00141413          	slli	s0,s0,0x1
    45e0:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x55db>
    45e4:	00d47433          	and	s0,s0,a3
    45e8:	00870733          	add	a4,a4,s0
    45ec:	00c70023          	sb	a2,0(a4)
    45f0:	2087a703          	lw	a4,520(a5)
    45f4:	01049493          	slli	s1,s1,0x10
    45f8:	0104d493          	srli	s1,s1,0x10
    45fc:	00870733          	add	a4,a4,s0
    4600:	0084d493          	srli	s1,s1,0x8
    4604:	009700a3          	sb	s1,1(a4)
    4608:	00100713          	li	a4,1
    460c:	20e7a223          	sw	a4,516(a5)
    4610:	00100513          	li	a0,1
    4614:	01c12083          	lw	ra,28(sp)
    4618:	01812403          	lw	s0,24(sp)
    461c:	01412483          	lw	s1,20(sp)
    4620:	01012903          	lw	s2,16(sp)
    4624:	00c12983          	lw	s3,12(sp)
    4628:	02010113          	addi	sp,sp,32
    462c:	00008067          	ret
    4630:	00791913          	slli	s2,s2,0x7
    4634:	41240433          	sub	s0,s0,s2
    4638:	000106b7          	lui	a3,0x10
    463c:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x55db>
    4640:	00241413          	slli	s0,s0,0x2
    4644:	00d47433          	and	s0,s0,a3
    4648:	00870733          	add	a4,a4,s0
    464c:	00c70023          	sb	a2,0(a4)
    4650:	2087a703          	lw	a4,520(a5)
    4654:	0084d693          	srli	a3,s1,0x8
    4658:	00870733          	add	a4,a4,s0
    465c:	00d700a3          	sb	a3,1(a4)
    4660:	2087a703          	lw	a4,520(a5)
    4664:	0104d693          	srli	a3,s1,0x10
    4668:	0184d493          	srli	s1,s1,0x18
    466c:	00870733          	add	a4,a4,s0
    4670:	00d70123          	sb	a3,2(a4)
    4674:	2087a703          	lw	a4,520(a5)
    4678:	00870733          	add	a4,a4,s0
    467c:	009701a3          	sb	s1,3(a4)
    4680:	f89ff06f          	j	4608 <fatfs_fat_set_cluster+0x9c>

00004684 <fatfs_free_cluster_chain>:
    4684:	fe010113          	addi	sp,sp,-32
    4688:	00812c23          	sw	s0,24(sp)
    468c:	01212823          	sw	s2,16(sp)
    4690:	00112e23          	sw	ra,28(sp)
    4694:	00912a23          	sw	s1,20(sp)
    4698:	00050413          	mv	s0,a0
    469c:	ffd00913          	li	s2,-3
    46a0:	fff58793          	addi	a5,a1,-1
    46a4:	02f97063          	bgeu	s2,a5,46c4 <fatfs_free_cluster_chain+0x40>
    46a8:	01c12083          	lw	ra,28(sp)
    46ac:	01812403          	lw	s0,24(sp)
    46b0:	01412483          	lw	s1,20(sp)
    46b4:	01012903          	lw	s2,16(sp)
    46b8:	00100513          	li	a0,1
    46bc:	02010113          	addi	sp,sp,32
    46c0:	00008067          	ret
    46c4:	00040513          	mv	a0,s0
    46c8:	00b12623          	sw	a1,12(sp)
    46cc:	fffff097          	auipc	ra,0xfffff
    46d0:	c8c080e7          	jalr	-884(ra) # 3358 <fatfs_find_next_cluster>
    46d4:	00c12583          	lw	a1,12(sp)
    46d8:	00050493          	mv	s1,a0
    46dc:	00000613          	li	a2,0
    46e0:	00040513          	mv	a0,s0
    46e4:	00000097          	auipc	ra,0x0
    46e8:	e88080e7          	jalr	-376(ra) # 456c <fatfs_fat_set_cluster>
    46ec:	00048593          	mv	a1,s1
    46f0:	fb1ff06f          	j	46a0 <fatfs_free_cluster_chain+0x1c>

000046f4 <fatfs_fat_add_cluster_to_chain>:
    46f4:	fff00793          	li	a5,-1
    46f8:	02f59463          	bne	a1,a5,4720 <fatfs_fat_add_cluster_to_chain+0x2c>
    46fc:	00000513          	li	a0,0
    4700:	00008067          	ret
    4704:	00000513          	li	a0,0
    4708:	01c12083          	lw	ra,28(sp)
    470c:	01812403          	lw	s0,24(sp)
    4710:	01412483          	lw	s1,20(sp)
    4714:	01012903          	lw	s2,16(sp)
    4718:	02010113          	addi	sp,sp,32
    471c:	00008067          	ret
    4720:	fe010113          	addi	sp,sp,-32
    4724:	00812c23          	sw	s0,24(sp)
    4728:	00912a23          	sw	s1,20(sp)
    472c:	01212823          	sw	s2,16(sp)
    4730:	00050413          	mv	s0,a0
    4734:	00112e23          	sw	ra,28(sp)
    4738:	00058513          	mv	a0,a1
    473c:	00060493          	mv	s1,a2
    4740:	fff00913          	li	s2,-1
    4744:	00050593          	mv	a1,a0
    4748:	00a12623          	sw	a0,12(sp)
    474c:	00040513          	mv	a0,s0
    4750:	fffff097          	auipc	ra,0xfffff
    4754:	c08080e7          	jalr	-1016(ra) # 3358 <fatfs_find_next_cluster>
    4758:	fa0506e3          	beqz	a0,4704 <fatfs_fat_add_cluster_to_chain+0x10>
    475c:	00c12583          	lw	a1,12(sp)
    4760:	ff2512e3          	bne	a0,s2,4744 <fatfs_fat_add_cluster_to_chain+0x50>
    4764:	00048613          	mv	a2,s1
    4768:	00040513          	mv	a0,s0
    476c:	00000097          	auipc	ra,0x0
    4770:	e00080e7          	jalr	-512(ra) # 456c <fatfs_fat_set_cluster>
    4774:	fff00613          	li	a2,-1
    4778:	00048593          	mv	a1,s1
    477c:	00040513          	mv	a0,s0
    4780:	00000097          	auipc	ra,0x0
    4784:	dec080e7          	jalr	-532(ra) # 456c <fatfs_fat_set_cluster>
    4788:	00100513          	li	a0,1
    478c:	f7dff06f          	j	4708 <fatfs_fat_add_cluster_to_chain+0x14>

00004790 <fatfs_count_free_clusters>:
    4790:	fe010113          	addi	sp,sp,-32
    4794:	00812c23          	sw	s0,24(sp)
    4798:	00912a23          	sw	s1,20(sp)
    479c:	01212823          	sw	s2,16(sp)
    47a0:	01312623          	sw	s3,12(sp)
    47a4:	00112e23          	sw	ra,28(sp)
    47a8:	00050413          	mv	s0,a0
    47ac:	00000493          	li	s1,0
    47b0:	00000913          	li	s2,0
    47b4:	1ff00993          	li	s3,511
    47b8:	02042783          	lw	a5,32(s0)
    47bc:	02f96263          	bltu	s2,a5,47e0 <fatfs_count_free_clusters+0x50>
    47c0:	01c12083          	lw	ra,28(sp)
    47c4:	01812403          	lw	s0,24(sp)
    47c8:	01012903          	lw	s2,16(sp)
    47cc:	00c12983          	lw	s3,12(sp)
    47d0:	00048513          	mv	a0,s1
    47d4:	01412483          	lw	s1,20(sp)
    47d8:	02010113          	addi	sp,sp,32
    47dc:	00008067          	ret
    47e0:	01442583          	lw	a1,20(s0)
    47e4:	00040513          	mv	a0,s0
    47e8:	00b905b3          	add	a1,s2,a1
    47ec:	ffffd097          	auipc	ra,0xffffd
    47f0:	b14080e7          	jalr	-1260(ra) # 1300 <fatfs_fat_read_sector>
    47f4:	fc0506e3          	beqz	a0,47c0 <fatfs_count_free_clusters+0x30>
    47f8:	03042803          	lw	a6,48(s0)
    47fc:	20852583          	lw	a1,520(a0)
    4800:	00000713          	li	a4,0
    4804:	00e587b3          	add	a5,a1,a4
    4808:	0017c683          	lbu	a3,1(a5)
    480c:	0007c503          	lbu	a0,0(a5)
    4810:	00270613          	addi	a2,a4,2
    4814:	00869693          	slli	a3,a3,0x8
    4818:	02081063          	bnez	a6,4838 <fatfs_count_free_clusters+0xa8>
    481c:	00a686b3          	add	a3,a3,a0
    4820:	00069463          	bnez	a3,4828 <fatfs_count_free_clusters+0x98>
    4824:	00148493          	addi	s1,s1,1
    4828:	00060713          	mv	a4,a2
    482c:	fce9fce3          	bgeu	s3,a4,4804 <fatfs_count_free_clusters+0x74>
    4830:	00190913          	addi	s2,s2,1
    4834:	f85ff06f          	j	47b8 <fatfs_count_free_clusters+0x28>
    4838:	00c58633          	add	a2,a1,a2
    483c:	0037c783          	lbu	a5,3(a5)
    4840:	00064603          	lbu	a2,0(a2)
    4844:	01879793          	slli	a5,a5,0x18
    4848:	01061613          	slli	a2,a2,0x10
    484c:	00c787b3          	add	a5,a5,a2
    4850:	00a787b3          	add	a5,a5,a0
    4854:	00d787b3          	add	a5,a5,a3
    4858:	00079463          	bnez	a5,4860 <fatfs_count_free_clusters+0xd0>
    485c:	00148493          	addi	s1,s1,1
    4860:	00470713          	addi	a4,a4,4
    4864:	fc9ff06f          	j	482c <fatfs_count_free_clusters+0x9c>

00004868 <fatfs_add_free_space>:
    4868:	02452703          	lw	a4,36(a0)
    486c:	fd010113          	addi	sp,sp,-48
    4870:	02812423          	sw	s0,40(sp)
    4874:	03212023          	sw	s2,32(sp)
    4878:	01412c23          	sw	s4,24(sp)
    487c:	01512a23          	sw	s5,20(sp)
    4880:	02112623          	sw	ra,44(sp)
    4884:	02912223          	sw	s1,36(sp)
    4888:	01312e23          	sw	s3,28(sp)
    488c:	fff00793          	li	a5,-1
    4890:	0005aa83          	lw	s5,0(a1)
    4894:	00050413          	mv	s0,a0
    4898:	00058913          	mv	s2,a1
    489c:	00060a13          	mv	s4,a2
    48a0:	00f70863          	beq	a4,a5,48b0 <fatfs_add_free_space+0x48>
    48a4:	fff00593          	li	a1,-1
    48a8:	00000097          	auipc	ra,0x0
    48ac:	aec080e7          	jalr	-1300(ra) # 4394 <fatfs_set_fs_info_next_free_cluster>
    48b0:	00000493          	li	s1,0
    48b4:	03449663          	bne	s1,s4,48e0 <fatfs_add_free_space+0x78>
    48b8:	00100513          	li	a0,1
    48bc:	02c12083          	lw	ra,44(sp)
    48c0:	02812403          	lw	s0,40(sp)
    48c4:	02412483          	lw	s1,36(sp)
    48c8:	02012903          	lw	s2,32(sp)
    48cc:	01c12983          	lw	s3,28(sp)
    48d0:	01812a03          	lw	s4,24(sp)
    48d4:	01412a83          	lw	s5,20(sp)
    48d8:	03010113          	addi	sp,sp,48
    48dc:	00008067          	ret
    48e0:	00842583          	lw	a1,8(s0)
    48e4:	00c10613          	addi	a2,sp,12
    48e8:	00040513          	mv	a0,s0
    48ec:	00000097          	auipc	ra,0x0
    48f0:	b60080e7          	jalr	-1184(ra) # 444c <fatfs_find_blank_cluster>
    48f4:	fc0504e3          	beqz	a0,48bc <fatfs_add_free_space+0x54>
    48f8:	00c12983          	lw	s3,12(sp)
    48fc:	000a8593          	mv	a1,s5
    4900:	00040513          	mv	a0,s0
    4904:	00098613          	mv	a2,s3
    4908:	00000097          	auipc	ra,0x0
    490c:	c64080e7          	jalr	-924(ra) # 456c <fatfs_fat_set_cluster>
    4910:	fff00613          	li	a2,-1
    4914:	00098593          	mv	a1,s3
    4918:	00040513          	mv	a0,s0
    491c:	00000097          	auipc	ra,0x0
    4920:	c50080e7          	jalr	-944(ra) # 456c <fatfs_fat_set_cluster>
    4924:	00049463          	bnez	s1,492c <fatfs_add_free_space+0xc4>
    4928:	01392023          	sw	s3,0(s2)
    492c:	00148493          	addi	s1,s1,1
    4930:	00098a93          	mv	s5,s3
    4934:	f81ff06f          	j	48b4 <fatfs_add_free_space+0x4c>

00004938 <_write_sectors>:
    4938:	fb010113          	addi	sp,sp,-80
    493c:	03312e23          	sw	s3,60(sp)
    4940:	0000a9b7          	lui	s3,0xa
    4944:	03612823          	sw	s6,48(sp)
    4948:	5bc9cb03          	lbu	s6,1468(s3) # a5bc <_fs>
    494c:	03512a23          	sw	s5,52(sp)
    4950:	00058a93          	mv	s5,a1
    4954:	fff00793          	li	a5,-1
    4958:	04812423          	sw	s0,72(sp)
    495c:	000b0593          	mv	a1,s6
    4960:	00050413          	mv	s0,a0
    4964:	000a8513          	mv	a0,s5
    4968:	00f12e23          	sw	a5,28(sp)
    496c:	04112623          	sw	ra,76(sp)
    4970:	04912223          	sw	s1,68(sp)
    4974:	05212023          	sw	s2,64(sp)
    4978:	03712623          	sw	s7,44(sp)
    497c:	03812423          	sw	s8,40(sp)
    4980:	00068b93          	mv	s7,a3
    4984:	03912223          	sw	s9,36(sp)
    4988:	03a12023          	sw	s10,32(sp)
    498c:	00060c93          	mv	s9,a2
    4990:	03412c23          	sw	s4,56(sp)
    4994:	ffffc097          	auipc	ra,0xffffc
    4998:	eb0080e7          	jalr	-336(ra) # 844 <__udivsi3>
    499c:	00050493          	mv	s1,a0
    49a0:	000b0593          	mv	a1,s6
    49a4:	000a8513          	mv	a0,s5
    49a8:	ffffc097          	auipc	ra,0xffffc
    49ac:	ee4080e7          	jalr	-284(ra) # 88c <__umodsi3>
    49b0:	00ab87b3          	add	a5,s7,a0
    49b4:	00050c13          	mv	s8,a0
    49b8:	5bc98d13          	addi	s10,s3,1468
    49bc:	000b8913          	mv	s2,s7
    49c0:	00fb7e63          	bgeu	s6,a5,49dc <_write_sectors+0xa4>
    49c4:	00048593          	mv	a1,s1
    49c8:	000b0513          	mv	a0,s6
    49cc:	ffffc097          	auipc	ra,0xffffc
    49d0:	77c080e7          	jalr	1916(ra) # 1148 <__mulsi3>
    49d4:	415b07b3          	sub	a5,s6,s5
    49d8:	00f50933          	add	s2,a0,a5
    49dc:	22842a03          	lw	s4,552(s0)
    49e0:	069a1663          	bne	s4,s1,4a4c <_write_sectors+0x114>
    49e4:	22c42583          	lw	a1,556(s0)
    49e8:	5bc98513          	addi	a0,s3,1468
    49ec:	ffffd097          	auipc	ra,0xffffd
    49f0:	c34080e7          	jalr	-972(ra) # 1620 <fatfs_lba_of_cluster>
    49f4:	018505b3          	add	a1,a0,s8
    49f8:	00090693          	mv	a3,s2
    49fc:	000c8613          	mv	a2,s9
    4a00:	5bc98513          	addi	a0,s3,1468
    4a04:	ffffd097          	auipc	ra,0xffffd
    4a08:	c84080e7          	jalr	-892(ra) # 1688 <fatfs_sector_write>
    4a0c:	0c050063          	beqz	a0,4acc <_write_sectors+0x194>
    4a10:	04c12083          	lw	ra,76(sp)
    4a14:	04812403          	lw	s0,72(sp)
    4a18:	04412483          	lw	s1,68(sp)
    4a1c:	03c12983          	lw	s3,60(sp)
    4a20:	03812a03          	lw	s4,56(sp)
    4a24:	03412a83          	lw	s5,52(sp)
    4a28:	03012b03          	lw	s6,48(sp)
    4a2c:	02c12b83          	lw	s7,44(sp)
    4a30:	02812c03          	lw	s8,40(sp)
    4a34:	02412c83          	lw	s9,36(sp)
    4a38:	02012d03          	lw	s10,32(sp)
    4a3c:	00090513          	mv	a0,s2
    4a40:	04012903          	lw	s2,64(sp)
    4a44:	05010113          	addi	sp,sp,80
    4a48:	00008067          	ret
    4a4c:	036ae663          	bltu	s5,s6,4a78 <_write_sectors+0x140>
    4a50:	001a0793          	addi	a5,s4,1
    4a54:	02979263          	bne	a5,s1,4a78 <_write_sectors+0x140>
    4a58:	22c42583          	lw	a1,556(s0)
    4a5c:	fff00a93          	li	s5,-1
    4a60:	029a6263          	bltu	s4,s1,4a84 <_write_sectors+0x14c>
    4a64:	fff00793          	li	a5,-1
    4a68:	02f58c63          	beq	a1,a5,4aa0 <_write_sectors+0x168>
    4a6c:	22b42623          	sw	a1,556(s0)
    4a70:	22942423          	sw	s1,552(s0)
    4a74:	f75ff06f          	j	49e8 <_write_sectors+0xb0>
    4a78:	00442583          	lw	a1,4(s0)
    4a7c:	00000a13          	li	s4,0
    4a80:	fddff06f          	j	4a5c <_write_sectors+0x124>
    4a84:	5bc98513          	addi	a0,s3,1468
    4a88:	00b12623          	sw	a1,12(sp)
    4a8c:	fffff097          	auipc	ra,0xfffff
    4a90:	8cc080e7          	jalr	-1844(ra) # 3358 <fatfs_find_next_cluster>
    4a94:	00c12583          	lw	a1,12(sp)
    4a98:	00b12e23          	sw	a1,28(sp)
    4a9c:	03551c63          	bne	a0,s5,4ad4 <_write_sectors+0x19c>
    4aa0:	000d4583          	lbu	a1,0(s10)
    4aa4:	fff58513          	addi	a0,a1,-1
    4aa8:	01750533          	add	a0,a0,s7
    4aac:	ffffc097          	auipc	ra,0xffffc
    4ab0:	d98080e7          	jalr	-616(ra) # 844 <__udivsi3>
    4ab4:	00050613          	mv	a2,a0
    4ab8:	01c10593          	addi	a1,sp,28
    4abc:	5bc98513          	addi	a0,s3,1468
    4ac0:	00000097          	auipc	ra,0x0
    4ac4:	da8080e7          	jalr	-600(ra) # 4868 <fatfs_add_free_space>
    4ac8:	00051c63          	bnez	a0,4ae0 <_write_sectors+0x1a8>
    4acc:	00000913          	li	s2,0
    4ad0:	f41ff06f          	j	4a10 <_write_sectors+0xd8>
    4ad4:	001a0a13          	addi	s4,s4,1
    4ad8:	00050593          	mv	a1,a0
    4adc:	f85ff06f          	j	4a60 <_write_sectors+0x128>
    4ae0:	01c12583          	lw	a1,28(sp)
    4ae4:	f89ff06f          	j	4a6c <_write_sectors+0x134>

00004ae8 <fl_fflush>:
    4ae8:	000067b7          	lui	a5,0x6
    4aec:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    4af0:	ff010113          	addi	sp,sp,-16
    4af4:	00812423          	sw	s0,8(sp)
    4af8:	00112623          	sw	ra,12(sp)
    4afc:	00912223          	sw	s1,4(sp)
    4b00:	00050413          	mv	s0,a0
    4b04:	00079663          	bnez	a5,4b10 <fl_fflush+0x28>
    4b08:	ffffd097          	auipc	ra,0xffffd
    4b0c:	dd4080e7          	jalr	-556(ra) # 18dc <fl_init>
    4b10:	04040863          	beqz	s0,4b60 <fl_fflush+0x78>
    4b14:	0000a7b7          	lui	a5,0xa
    4b18:	5bc78713          	addi	a4,a5,1468 # a5bc <_fs>
    4b1c:	03c72703          	lw	a4,60(a4)
    4b20:	5bc78493          	addi	s1,a5,1468
    4b24:	00070463          	beqz	a4,4b2c <fl_fflush+0x44>
    4b28:	000700e7          	jalr	a4
    4b2c:	43442783          	lw	a5,1076(s0)
    4b30:	02078263          	beqz	a5,4b54 <fl_fflush+0x6c>
    4b34:	43042583          	lw	a1,1072(s0)
    4b38:	00100693          	li	a3,1
    4b3c:	23040613          	addi	a2,s0,560
    4b40:	00040513          	mv	a0,s0
    4b44:	00000097          	auipc	ra,0x0
    4b48:	df4080e7          	jalr	-524(ra) # 4938 <_write_sectors>
    4b4c:	00050463          	beqz	a0,4b54 <fl_fflush+0x6c>
    4b50:	42042a23          	sw	zero,1076(s0)
    4b54:	0404a783          	lw	a5,64(s1)
    4b58:	00078463          	beqz	a5,4b60 <fl_fflush+0x78>
    4b5c:	000780e7          	jalr	a5
    4b60:	00c12083          	lw	ra,12(sp)
    4b64:	00812403          	lw	s0,8(sp)
    4b68:	00412483          	lw	s1,4(sp)
    4b6c:	00000513          	li	a0,0
    4b70:	01010113          	addi	sp,sp,16
    4b74:	00008067          	ret

00004b78 <fl_fclose>:
    4b78:	000067b7          	lui	a5,0x6
    4b7c:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    4b80:	ff010113          	addi	sp,sp,-16
    4b84:	00812423          	sw	s0,8(sp)
    4b88:	00112623          	sw	ra,12(sp)
    4b8c:	00912223          	sw	s1,4(sp)
    4b90:	01212023          	sw	s2,0(sp)
    4b94:	00050413          	mv	s0,a0
    4b98:	00079663          	bnez	a5,4ba4 <fl_fclose+0x2c>
    4b9c:	ffffd097          	auipc	ra,0xffffd
    4ba0:	d40080e7          	jalr	-704(ra) # 18dc <fl_init>
    4ba4:	08040e63          	beqz	s0,4c40 <fl_fclose+0xc8>
    4ba8:	0000a4b7          	lui	s1,0xa
    4bac:	5bc48793          	addi	a5,s1,1468 # a5bc <_fs>
    4bb0:	03c7a783          	lw	a5,60(a5)
    4bb4:	5bc48913          	addi	s2,s1,1468
    4bb8:	00078463          	beqz	a5,4bc0 <fl_fclose+0x48>
    4bbc:	000780e7          	jalr	a5
    4bc0:	00040513          	mv	a0,s0
    4bc4:	00000097          	auipc	ra,0x0
    4bc8:	f24080e7          	jalr	-220(ra) # 4ae8 <fl_fflush>
    4bcc:	01042783          	lw	a5,16(s0)
    4bd0:	00078e63          	beqz	a5,4bec <fl_fclose+0x74>
    4bd4:	00c42683          	lw	a3,12(s0)
    4bd8:	00042583          	lw	a1,0(s0)
    4bdc:	21c40613          	addi	a2,s0,540
    4be0:	5bc48513          	addi	a0,s1,1468
    4be4:	fffff097          	auipc	ra,0xfffff
    4be8:	ff0080e7          	jalr	-16(ra) # 3bd4 <fatfs_update_file_length>
    4bec:	fff00793          	li	a5,-1
    4bf0:	42f42823          	sw	a5,1072(s0)
    4bf4:	00040513          	mv	a0,s0
    4bf8:	00042423          	sw	zero,8(s0)
    4bfc:	00042623          	sw	zero,12(s0)
    4c00:	00042223          	sw	zero,4(s0)
    4c04:	42042a23          	sw	zero,1076(s0)
    4c08:	00042823          	sw	zero,16(s0)
    4c0c:	ffffd097          	auipc	ra,0xffffd
    4c10:	9cc080e7          	jalr	-1588(ra) # 15d8 <_free_file>
    4c14:	5bc48513          	addi	a0,s1,1468
    4c18:	ffffe097          	auipc	ra,0xffffe
    4c1c:	66c080e7          	jalr	1644(ra) # 3284 <fatfs_fat_purge>
    4c20:	04092783          	lw	a5,64(s2)
    4c24:	00078e63          	beqz	a5,4c40 <fl_fclose+0xc8>
    4c28:	00812403          	lw	s0,8(sp)
    4c2c:	00c12083          	lw	ra,12(sp)
    4c30:	00412483          	lw	s1,4(sp)
    4c34:	00012903          	lw	s2,0(sp)
    4c38:	01010113          	addi	sp,sp,16
    4c3c:	00078067          	jr	a5
    4c40:	00c12083          	lw	ra,12(sp)
    4c44:	00812403          	lw	s0,8(sp)
    4c48:	00412483          	lw	s1,4(sp)
    4c4c:	00012903          	lw	s2,0(sp)
    4c50:	01010113          	addi	sp,sp,16
    4c54:	00008067          	ret

00004c58 <fl_fread>:
    4c58:	fd010113          	addi	sp,sp,-48
    4c5c:	01512a23          	sw	s5,20(sp)
    4c60:	00050a93          	mv	s5,a0
    4c64:	00058513          	mv	a0,a1
    4c68:	00060593          	mv	a1,a2
    4c6c:	02812423          	sw	s0,40(sp)
    4c70:	02912223          	sw	s1,36(sp)
    4c74:	02112623          	sw	ra,44(sp)
    4c78:	03212023          	sw	s2,32(sp)
    4c7c:	01312e23          	sw	s3,28(sp)
    4c80:	01412c23          	sw	s4,24(sp)
    4c84:	01612823          	sw	s6,16(sp)
    4c88:	01712623          	sw	s7,12(sp)
    4c8c:	01812423          	sw	s8,8(sp)
    4c90:	01912223          	sw	s9,4(sp)
    4c94:	00068493          	mv	s1,a3
    4c98:	ffffc097          	auipc	ra,0xffffc
    4c9c:	4b0080e7          	jalr	1200(ra) # 1148 <__mulsi3>
    4ca0:	000067b7          	lui	a5,0x6
    4ca4:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    4ca8:	00050413          	mv	s0,a0
    4cac:	00079663          	bnez	a5,4cb8 <fl_fread+0x60>
    4cb0:	ffffd097          	auipc	ra,0xffffd
    4cb4:	c2c080e7          	jalr	-980(ra) # 18dc <fl_init>
    4cb8:	120a8e63          	beqz	s5,4df4 <fl_fread+0x19c>
    4cbc:	12048c63          	beqz	s1,4df4 <fl_fread+0x19c>
    4cc0:	4384c783          	lbu	a5,1080(s1)
    4cc4:	0017f793          	andi	a5,a5,1
    4cc8:	12078663          	beqz	a5,4df4 <fl_fread+0x19c>
    4ccc:	02040e63          	beqz	s0,4d08 <fl_fread+0xb0>
    4cd0:	0084a583          	lw	a1,8(s1)
    4cd4:	00c4a783          	lw	a5,12(s1)
    4cd8:	10f5fe63          	bgeu	a1,a5,4df4 <fl_fread+0x19c>
    4cdc:	00b40733          	add	a4,s0,a1
    4ce0:	00040b13          	mv	s6,s0
    4ce4:	00e7f463          	bgeu	a5,a4,4cec <fl_fread+0x94>
    4ce8:	40b78b33          	sub	s6,a5,a1
    4cec:	0095d993          	srli	s3,a1,0x9
    4cf0:	1ff5f913          	andi	s2,a1,511
    4cf4:	00000413          	li	s0,0
    4cf8:	23048b93          	addi	s7,s1,560
    4cfc:	20000c13          	li	s8,512
    4d00:	1ff00c93          	li	s9,511
    4d04:	03644e63          	blt	s0,s6,4d40 <fl_fread+0xe8>
    4d08:	02c12083          	lw	ra,44(sp)
    4d0c:	00040513          	mv	a0,s0
    4d10:	02812403          	lw	s0,40(sp)
    4d14:	02412483          	lw	s1,36(sp)
    4d18:	02012903          	lw	s2,32(sp)
    4d1c:	01c12983          	lw	s3,28(sp)
    4d20:	01812a03          	lw	s4,24(sp)
    4d24:	01412a83          	lw	s5,20(sp)
    4d28:	01012b03          	lw	s6,16(sp)
    4d2c:	00c12b83          	lw	s7,12(sp)
    4d30:	00812c03          	lw	s8,8(sp)
    4d34:	00412c83          	lw	s9,4(sp)
    4d38:	03010113          	addi	sp,sp,48
    4d3c:	00008067          	ret
    4d40:	04091463          	bnez	s2,4d88 <fl_fread+0x130>
    4d44:	408b06b3          	sub	a3,s6,s0
    4d48:	04dcd063          	bge	s9,a3,4d88 <fl_fread+0x130>
    4d4c:	4096d693          	srai	a3,a3,0x9
    4d50:	008a8633          	add	a2,s5,s0
    4d54:	00098593          	mv	a1,s3
    4d58:	00048513          	mv	a0,s1
    4d5c:	fffff097          	auipc	ra,0xfffff
    4d60:	4ec080e7          	jalr	1260(ra) # 4248 <_read_sectors>
    4d64:	fa0502e3          	beqz	a0,4d08 <fl_fread+0xb0>
    4d68:	00951a13          	slli	s4,a0,0x9
    4d6c:	00a989b3          	add	s3,s3,a0
    4d70:	0084a783          	lw	a5,8(s1)
    4d74:	01440433          	add	s0,s0,s4
    4d78:	00000913          	li	s2,0
    4d7c:	014787b3          	add	a5,a5,s4
    4d80:	00f4a423          	sw	a5,8(s1)
    4d84:	f81ff06f          	j	4d04 <fl_fread+0xac>
    4d88:	4304a783          	lw	a5,1072(s1)
    4d8c:	03378e63          	beq	a5,s3,4dc8 <fl_fread+0x170>
    4d90:	4344a783          	lw	a5,1076(s1)
    4d94:	00078863          	beqz	a5,4da4 <fl_fread+0x14c>
    4d98:	00048513          	mv	a0,s1
    4d9c:	00000097          	auipc	ra,0x0
    4da0:	d4c080e7          	jalr	-692(ra) # 4ae8 <fl_fflush>
    4da4:	00100693          	li	a3,1
    4da8:	000b8613          	mv	a2,s7
    4dac:	00098593          	mv	a1,s3
    4db0:	00048513          	mv	a0,s1
    4db4:	fffff097          	auipc	ra,0xfffff
    4db8:	494080e7          	jalr	1172(ra) # 4248 <_read_sectors>
    4dbc:	f40506e3          	beqz	a0,4d08 <fl_fread+0xb0>
    4dc0:	4334a823          	sw	s3,1072(s1)
    4dc4:	4204aa23          	sw	zero,1076(s1)
    4dc8:	412c07b3          	sub	a5,s8,s2
    4dcc:	408b0a33          	sub	s4,s6,s0
    4dd0:	0147d463          	bge	a5,s4,4dd8 <fl_fread+0x180>
    4dd4:	00078a13          	mv	s4,a5
    4dd8:	000a0613          	mv	a2,s4
    4ddc:	012b85b3          	add	a1,s7,s2
    4de0:	008a8533          	add	a0,s5,s0
    4de4:	ffffc097          	auipc	ra,0xffffc
    4de8:	b50080e7          	jalr	-1200(ra) # 934 <memcpy>
    4dec:	00198993          	addi	s3,s3,1
    4df0:	f81ff06f          	j	4d70 <fl_fread+0x118>
    4df4:	fff00413          	li	s0,-1
    4df8:	f11ff06f          	j	4d08 <fl_fread+0xb0>

00004dfc <fl_fgetc>:
    4dfc:	fe010113          	addi	sp,sp,-32
    4e00:	00050693          	mv	a3,a0
    4e04:	00100613          	li	a2,1
    4e08:	00100593          	li	a1,1
    4e0c:	00f10513          	addi	a0,sp,15
    4e10:	00112e23          	sw	ra,28(sp)
    4e14:	000107a3          	sb	zero,15(sp)
    4e18:	00000097          	auipc	ra,0x0
    4e1c:	e40080e7          	jalr	-448(ra) # 4c58 <fl_fread>
    4e20:	00100793          	li	a5,1
    4e24:	00f51463          	bne	a0,a5,4e2c <fl_fgetc+0x30>
    4e28:	00f14503          	lbu	a0,15(sp)
    4e2c:	01c12083          	lw	ra,28(sp)
    4e30:	02010113          	addi	sp,sp,32
    4e34:	00008067          	ret

00004e38 <fl_fgets>:
    4e38:	fe010113          	addi	sp,sp,-32
    4e3c:	00112e23          	sw	ra,28(sp)
    4e40:	00812c23          	sw	s0,24(sp)
    4e44:	00912a23          	sw	s1,20(sp)
    4e48:	01212823          	sw	s2,16(sp)
    4e4c:	01312623          	sw	s3,12(sp)
    4e50:	01412423          	sw	s4,8(sp)
    4e54:	02b05e63          	blez	a1,4e90 <fl_fgets+0x58>
    4e58:	00050493          	mv	s1,a0
    4e5c:	00060993          	mv	s3,a2
    4e60:	00000413          	li	s0,0
    4e64:	fff58913          	addi	s2,a1,-1
    4e68:	00a00a13          	li	s4,10
    4e6c:	01245a63          	bge	s0,s2,4e80 <fl_fgets+0x48>
    4e70:	00098513          	mv	a0,s3
    4e74:	00000097          	auipc	ra,0x0
    4e78:	f88080e7          	jalr	-120(ra) # 4dfc <fl_fgetc>
    4e7c:	02055e63          	bgez	a0,4eb8 <fl_fgets+0x80>
    4e80:	00040863          	beqz	s0,4e90 <fl_fgets+0x58>
    4e84:	00848433          	add	s0,s1,s0
    4e88:	00040023          	sb	zero,0(s0)
    4e8c:	0080006f          	j	4e94 <fl_fgets+0x5c>
    4e90:	00000493          	li	s1,0
    4e94:	01c12083          	lw	ra,28(sp)
    4e98:	01812403          	lw	s0,24(sp)
    4e9c:	01012903          	lw	s2,16(sp)
    4ea0:	00c12983          	lw	s3,12(sp)
    4ea4:	00812a03          	lw	s4,8(sp)
    4ea8:	00048513          	mv	a0,s1
    4eac:	01412483          	lw	s1,20(sp)
    4eb0:	02010113          	addi	sp,sp,32
    4eb4:	00008067          	ret
    4eb8:	00140413          	addi	s0,s0,1
    4ebc:	008487b3          	add	a5,s1,s0
    4ec0:	fea78fa3          	sb	a0,-1(a5)
    4ec4:	fb4514e3          	bne	a0,s4,4e6c <fl_fgets+0x34>
    4ec8:	fbdff06f          	j	4e84 <fl_fgets+0x4c>

00004ecc <fl_fwrite>:
    4ecc:	fb010113          	addi	sp,sp,-80
    4ed0:	00a12423          	sw	a0,8(sp)
    4ed4:	00058513          	mv	a0,a1
    4ed8:	00060593          	mv	a1,a2
    4edc:	04912223          	sw	s1,68(sp)
    4ee0:	03a12023          	sw	s10,32(sp)
    4ee4:	04112623          	sw	ra,76(sp)
    4ee8:	04812423          	sw	s0,72(sp)
    4eec:	05212023          	sw	s2,64(sp)
    4ef0:	03312e23          	sw	s3,60(sp)
    4ef4:	03412c23          	sw	s4,56(sp)
    4ef8:	03512a23          	sw	s5,52(sp)
    4efc:	03612823          	sw	s6,48(sp)
    4f00:	03712623          	sw	s7,44(sp)
    4f04:	03812423          	sw	s8,40(sp)
    4f08:	03912223          	sw	s9,36(sp)
    4f0c:	01b12e23          	sw	s11,28(sp)
    4f10:	00068d13          	mv	s10,a3
    4f14:	ffffc097          	auipc	ra,0xffffc
    4f18:	234080e7          	jalr	564(ra) # 1148 <__mulsi3>
    4f1c:	00006737          	lui	a4,0x6
    4f20:	1f072703          	lw	a4,496(a4) # 61f0 <_filelib_init>
    4f24:	00050493          	mv	s1,a0
    4f28:	00071663          	bnez	a4,4f34 <fl_fwrite+0x68>
    4f2c:	ffffd097          	auipc	ra,0xffffd
    4f30:	9b0080e7          	jalr	-1616(ra) # 18dc <fl_init>
    4f34:	040d1463          	bnez	s10,4f7c <fl_fwrite+0xb0>
    4f38:	fff00493          	li	s1,-1
    4f3c:	04c12083          	lw	ra,76(sp)
    4f40:	04812403          	lw	s0,72(sp)
    4f44:	04012903          	lw	s2,64(sp)
    4f48:	03c12983          	lw	s3,60(sp)
    4f4c:	03812a03          	lw	s4,56(sp)
    4f50:	03412a83          	lw	s5,52(sp)
    4f54:	03012b03          	lw	s6,48(sp)
    4f58:	02c12b83          	lw	s7,44(sp)
    4f5c:	02812c03          	lw	s8,40(sp)
    4f60:	02412c83          	lw	s9,36(sp)
    4f64:	02012d03          	lw	s10,32(sp)
    4f68:	01c12d83          	lw	s11,28(sp)
    4f6c:	00048513          	mv	a0,s1
    4f70:	04412483          	lw	s1,68(sp)
    4f74:	05010113          	addi	sp,sp,80
    4f78:	00008067          	ret
    4f7c:	0000aab7          	lui	s5,0xa
    4f80:	5bca8713          	addi	a4,s5,1468 # a5bc <_fs>
    4f84:	03c72703          	lw	a4,60(a4)
    4f88:	5bca8a93          	addi	s5,s5,1468
    4f8c:	00070463          	beqz	a4,4f94 <fl_fwrite+0xc8>
    4f90:	000700e7          	jalr	a4
    4f94:	438d4703          	lbu	a4,1080(s10)
    4f98:	00277693          	andi	a3,a4,2
    4f9c:	00069a63          	bnez	a3,4fb0 <fl_fwrite+0xe4>
    4fa0:	040aa783          	lw	a5,64(s5)
    4fa4:	f8078ae3          	beqz	a5,4f38 <fl_fwrite+0x6c>
    4fa8:	000780e7          	jalr	a5
    4fac:	f8dff06f          	j	4f38 <fl_fwrite+0x6c>
    4fb0:	00477713          	andi	a4,a4,4
    4fb4:	00070663          	beqz	a4,4fc0 <fl_fwrite+0xf4>
    4fb8:	00cd2703          	lw	a4,12(s10)
    4fbc:	00ed2423          	sw	a4,8(s10)
    4fc0:	008d2983          	lw	s3,8(s10)
    4fc4:	00000913          	li	s2,0
    4fc8:	20000b93          	li	s7,512
    4fcc:	0099d413          	srli	s0,s3,0x9
    4fd0:	230d0b13          	addi	s6,s10,560
    4fd4:	1ff9f993          	andi	s3,s3,511
    4fd8:	1ff00d93          	li	s11,511
    4fdc:	fff00c13          	li	s8,-1
    4fe0:	06997c63          	bgeu	s2,s1,5058 <fl_fwrite+0x18c>
    4fe4:	00812783          	lw	a5,8(sp)
    4fe8:	430d2703          	lw	a4,1072(s10)
    4fec:	412486b3          	sub	a3,s1,s2
    4ff0:	01278cb3          	add	s9,a5,s2
    4ff4:	08099063          	bnez	s3,5074 <fl_fwrite+0x1a8>
    4ff8:	06ddfe63          	bgeu	s11,a3,5074 <fl_fwrite+0x1a8>
    4ffc:	03870463          	beq	a4,s8,5024 <fl_fwrite+0x158>
    5000:	434d2703          	lw	a4,1076(s10)
    5004:	00070c63          	beqz	a4,501c <fl_fwrite+0x150>
    5008:	000d0513          	mv	a0,s10
    500c:	00d12623          	sw	a3,12(sp)
    5010:	00000097          	auipc	ra,0x0
    5014:	ad8080e7          	jalr	-1320(ra) # 4ae8 <fl_fflush>
    5018:	00c12683          	lw	a3,12(sp)
    501c:	438d2823          	sw	s8,1072(s10)
    5020:	420d2a23          	sw	zero,1076(s10)
    5024:	0096d693          	srli	a3,a3,0x9
    5028:	00040593          	mv	a1,s0
    502c:	000c8613          	mv	a2,s9
    5030:	000d0513          	mv	a0,s10
    5034:	00000097          	auipc	ra,0x0
    5038:	904080e7          	jalr	-1788(ra) # 4938 <_write_sectors>
    503c:	008d2703          	lw	a4,8(s10)
    5040:	00951693          	slli	a3,a0,0x9
    5044:	00d90933          	add	s2,s2,a3
    5048:	00d70733          	add	a4,a4,a3
    504c:	00ed2423          	sw	a4,8(s10)
    5050:	00a40433          	add	s0,s0,a0
    5054:	0a051863          	bnez	a0,5104 <fl_fwrite+0x238>
    5058:	008d2703          	lw	a4,8(s10)
    505c:	00cd2683          	lw	a3,12(s10)
    5060:	0ae6e663          	bltu	a3,a4,510c <fl_fwrite+0x240>
    5064:	040aa783          	lw	a5,64(s5)
    5068:	ec078ae3          	beqz	a5,4f3c <fl_fwrite+0x70>
    506c:	000780e7          	jalr	a5
    5070:	ecdff06f          	j	4f3c <fl_fwrite+0x70>
    5074:	413b8a33          	sub	s4,s7,s3
    5078:	0146f463          	bgeu	a3,s4,5080 <fl_fwrite+0x1b4>
    507c:	00068a13          	mv	s4,a3
    5080:	04e40a63          	beq	s0,a4,50d4 <fl_fwrite+0x208>
    5084:	434d2703          	lw	a4,1076(s10)
    5088:	00070863          	beqz	a4,5098 <fl_fwrite+0x1cc>
    508c:	000d0513          	mv	a0,s10
    5090:	00000097          	auipc	ra,0x0
    5094:	a58080e7          	jalr	-1448(ra) # 4ae8 <fl_fflush>
    5098:	037a0a63          	beq	s4,s7,50cc <fl_fwrite+0x200>
    509c:	00100693          	li	a3,1
    50a0:	000b0613          	mv	a2,s6
    50a4:	00040593          	mv	a1,s0
    50a8:	000d0513          	mv	a0,s10
    50ac:	fffff097          	auipc	ra,0xfffff
    50b0:	19c080e7          	jalr	412(ra) # 4248 <_read_sectors>
    50b4:	00051c63          	bnez	a0,50cc <fl_fwrite+0x200>
    50b8:	20000613          	li	a2,512
    50bc:	00000593          	li	a1,0
    50c0:	000b0513          	mv	a0,s6
    50c4:	ffffc097          	auipc	ra,0xffffc
    50c8:	854080e7          	jalr	-1964(ra) # 918 <memset>
    50cc:	428d2823          	sw	s0,1072(s10)
    50d0:	420d2a23          	sw	zero,1076(s10)
    50d4:	000a0613          	mv	a2,s4
    50d8:	000c8593          	mv	a1,s9
    50dc:	013b0533          	add	a0,s6,s3
    50e0:	ffffc097          	auipc	ra,0xffffc
    50e4:	854080e7          	jalr	-1964(ra) # 934 <memcpy>
    50e8:	008d2703          	lw	a4,8(s10)
    50ec:	00100793          	li	a5,1
    50f0:	42fd2a23          	sw	a5,1076(s10)
    50f4:	01470733          	add	a4,a4,s4
    50f8:	01490933          	add	s2,s2,s4
    50fc:	00ed2423          	sw	a4,8(s10)
    5100:	00140413          	addi	s0,s0,1
    5104:	00000993          	li	s3,0
    5108:	ed9ff06f          	j	4fe0 <fl_fwrite+0x114>
    510c:	00ed2623          	sw	a4,12(s10)
    5110:	00100713          	li	a4,1
    5114:	00ed2823          	sw	a4,16(s10)
    5118:	f4dff06f          	j	5064 <fl_fwrite+0x198>

0000511c <fl_fputc>:
    511c:	fe010113          	addi	sp,sp,-32
    5120:	00812c23          	sw	s0,24(sp)
    5124:	00058693          	mv	a3,a1
    5128:	00a107a3          	sb	a0,15(sp)
    512c:	00050413          	mv	s0,a0
    5130:	00100613          	li	a2,1
    5134:	00100593          	li	a1,1
    5138:	00f10513          	addi	a0,sp,15
    513c:	00112e23          	sw	ra,28(sp)
    5140:	00000097          	auipc	ra,0x0
    5144:	d8c080e7          	jalr	-628(ra) # 4ecc <fl_fwrite>
    5148:	00100793          	li	a5,1
    514c:	00f50463          	beq	a0,a5,5154 <fl_fputc+0x38>
    5150:	00050413          	mv	s0,a0
    5154:	01c12083          	lw	ra,28(sp)
    5158:	00040513          	mv	a0,s0
    515c:	01812403          	lw	s0,24(sp)
    5160:	02010113          	addi	sp,sp,32
    5164:	00008067          	ret

00005168 <fl_fputs>:
    5168:	fe010113          	addi	sp,sp,-32
    516c:	00812c23          	sw	s0,24(sp)
    5170:	00112e23          	sw	ra,28(sp)
    5174:	00050413          	mv	s0,a0
    5178:	00b12623          	sw	a1,12(sp)
    517c:	ffffb097          	auipc	ra,0xffffb
    5180:	7dc080e7          	jalr	2012(ra) # 958 <strlen>
    5184:	00050613          	mv	a2,a0
    5188:	00040513          	mv	a0,s0
    518c:	01812403          	lw	s0,24(sp)
    5190:	00c12683          	lw	a3,12(sp)
    5194:	01c12083          	lw	ra,28(sp)
    5198:	00100593          	li	a1,1
    519c:	02010113          	addi	sp,sp,32
    51a0:	00000317          	auipc	t1,0x0
    51a4:	d2c30067          	jr	-724(t1) # 4ecc <fl_fwrite>

000051a8 <fatfs_allocate_free_space.part.0>:
    51a8:	02452703          	lw	a4,36(a0)
    51ac:	fd010113          	addi	sp,sp,-48
    51b0:	02812423          	sw	s0,40(sp)
    51b4:	03212023          	sw	s2,32(sp)
    51b8:	01312e23          	sw	s3,28(sp)
    51bc:	01512a23          	sw	s5,20(sp)
    51c0:	02112623          	sw	ra,44(sp)
    51c4:	02912223          	sw	s1,36(sp)
    51c8:	01412c23          	sw	s4,24(sp)
    51cc:	fff00793          	li	a5,-1
    51d0:	00050413          	mv	s0,a0
    51d4:	00058a93          	mv	s5,a1
    51d8:	00060913          	mv	s2,a2
    51dc:	00068993          	mv	s3,a3
    51e0:	00f70863          	beq	a4,a5,51f0 <fatfs_allocate_free_space.part.0+0x48>
    51e4:	fff00593          	li	a1,-1
    51e8:	fffff097          	auipc	ra,0xfffff
    51ec:	1ac080e7          	jalr	428(ra) # 4394 <fatfs_set_fs_info_next_free_cluster>
    51f0:	00044a03          	lbu	s4,0(s0)
    51f4:	00098513          	mv	a0,s3
    51f8:	009a1a13          	slli	s4,s4,0x9
    51fc:	000a0593          	mv	a1,s4
    5200:	ffffb097          	auipc	ra,0xffffb
    5204:	644080e7          	jalr	1604(ra) # 844 <__udivsi3>
    5208:	00050493          	mv	s1,a0
    520c:	00050593          	mv	a1,a0
    5210:	000a0513          	mv	a0,s4
    5214:	ffffc097          	auipc	ra,0xffffc
    5218:	f34080e7          	jalr	-204(ra) # 1148 <__mulsi3>
    521c:	00a98463          	beq	s3,a0,5224 <fatfs_allocate_free_space.part.0+0x7c>
    5220:	00148493          	addi	s1,s1,1
    5224:	060a8463          	beqz	s5,528c <fatfs_allocate_free_space.part.0+0xe4>
    5228:	00842583          	lw	a1,8(s0)
    522c:	00c10613          	addi	a2,sp,12
    5230:	00040513          	mv	a0,s0
    5234:	fffff097          	auipc	ra,0xfffff
    5238:	218080e7          	jalr	536(ra) # 444c <fatfs_find_blank_cluster>
    523c:	02050663          	beqz	a0,5268 <fatfs_allocate_free_space.part.0+0xc0>
    5240:	00100793          	li	a5,1
    5244:	04f49863          	bne	s1,a5,5294 <fatfs_allocate_free_space.part.0+0xec>
    5248:	00c12483          	lw	s1,12(sp)
    524c:	fff00613          	li	a2,-1
    5250:	00040513          	mv	a0,s0
    5254:	00048593          	mv	a1,s1
    5258:	fffff097          	auipc	ra,0xfffff
    525c:	314080e7          	jalr	788(ra) # 456c <fatfs_fat_set_cluster>
    5260:	00100513          	li	a0,1
    5264:	00992023          	sw	s1,0(s2)
    5268:	02c12083          	lw	ra,44(sp)
    526c:	02812403          	lw	s0,40(sp)
    5270:	02412483          	lw	s1,36(sp)
    5274:	02012903          	lw	s2,32(sp)
    5278:	01c12983          	lw	s3,28(sp)
    527c:	01812a03          	lw	s4,24(sp)
    5280:	01412a83          	lw	s5,20(sp)
    5284:	03010113          	addi	sp,sp,48
    5288:	00008067          	ret
    528c:	00092783          	lw	a5,0(s2)
    5290:	00f12623          	sw	a5,12(sp)
    5294:	00048613          	mv	a2,s1
    5298:	00c10593          	addi	a1,sp,12
    529c:	00040513          	mv	a0,s0
    52a0:	fffff097          	auipc	ra,0xfffff
    52a4:	5c8080e7          	jalr	1480(ra) # 4868 <fatfs_add_free_space>
    52a8:	00a03533          	snez	a0,a0
    52ac:	fbdff06f          	j	5268 <fatfs_allocate_free_space.part.0+0xc0>

000052b0 <fatfs_allocate_free_space>:
    52b0:	00068663          	beqz	a3,52bc <fatfs_allocate_free_space+0xc>
    52b4:	00000317          	auipc	t1,0x0
    52b8:	ef430067          	jr	-268(t1) # 51a8 <fatfs_allocate_free_space.part.0>
    52bc:	00000513          	li	a0,0
    52c0:	00008067          	ret

000052c4 <fatfs_add_file_entry>:
    52c4:	f8010113          	addi	sp,sp,-128
    52c8:	00f12823          	sw	a5,16(sp)
    52cc:	03852783          	lw	a5,56(a0)
    52d0:	06112e23          	sw	ra,124(sp)
    52d4:	06812c23          	sw	s0,120(sp)
    52d8:	06912a23          	sw	s1,116(sp)
    52dc:	07212823          	sw	s2,112(sp)
    52e0:	07312623          	sw	s3,108(sp)
    52e4:	07412423          	sw	s4,104(sp)
    52e8:	07512223          	sw	s5,100(sp)
    52ec:	07612023          	sw	s6,96(sp)
    52f0:	05712e23          	sw	s7,92(sp)
    52f4:	05812c23          	sw	s8,88(sp)
    52f8:	05912a23          	sw	s9,84(sp)
    52fc:	05a12823          	sw	s10,80(sp)
    5300:	05b12623          	sw	s11,76(sp)
    5304:	00e12623          	sw	a4,12(sp)
    5308:	01012a23          	sw	a6,20(sp)
    530c:	04079463          	bnez	a5,5354 <fatfs_add_file_entry+0x90>
    5310:	00000913          	li	s2,0
    5314:	07c12083          	lw	ra,124(sp)
    5318:	07812403          	lw	s0,120(sp)
    531c:	07412483          	lw	s1,116(sp)
    5320:	06c12983          	lw	s3,108(sp)
    5324:	06812a03          	lw	s4,104(sp)
    5328:	06412a83          	lw	s5,100(sp)
    532c:	06012b03          	lw	s6,96(sp)
    5330:	05c12b83          	lw	s7,92(sp)
    5334:	05812c03          	lw	s8,88(sp)
    5338:	05412c83          	lw	s9,84(sp)
    533c:	05012d03          	lw	s10,80(sp)
    5340:	04c12d83          	lw	s11,76(sp)
    5344:	00090513          	mv	a0,s2
    5348:	07012903          	lw	s2,112(sp)
    534c:	08010113          	addi	sp,sp,128
    5350:	00008067          	ret
    5354:	00050413          	mv	s0,a0
    5358:	00060513          	mv	a0,a2
    535c:	00058b13          	mv	s6,a1
    5360:	00060c93          	mv	s9,a2
    5364:	00068b93          	mv	s7,a3
    5368:	ffffd097          	auipc	ra,0xffffd
    536c:	a74080e7          	jalr	-1420(ra) # 1ddc <fatfs_lfn_entries_required>
    5370:	00150713          	addi	a4,a0,1
    5374:	00100793          	li	a5,1
    5378:	00050493          	mv	s1,a0
    537c:	f8e7fae3          	bgeu	a5,a4,5310 <fatfs_add_file_entry+0x4c>
    5380:	00000993          	li	s3,0
    5384:	00000a93          	li	s5,0
    5388:	00000a13          	li	s4,0
    538c:	00000c13          	li	s8,0
    5390:	00000d13          	li	s10,0
    5394:	01000d93          	li	s11,16
    5398:	00000693          	li	a3,0
    539c:	00098613          	mv	a2,s3
    53a0:	000b0593          	mv	a1,s6
    53a4:	00040513          	mv	a0,s0
    53a8:	ffffe097          	auipc	ra,0xffffe
    53ac:	0c0080e7          	jalr	192(ra) # 3468 <fatfs_sector_reader>
    53b0:	00050913          	mv	s2,a0
    53b4:	14050a63          	beqz	a0,5508 <fatfs_add_file_entry+0x244>
    53b8:	04440693          	addi	a3,s0,68
    53bc:	000d0913          	mv	s2,s10
    53c0:	00000713          	li	a4,0
    53c4:	00068513          	mv	a0,a3
    53c8:	00e12e23          	sw	a4,28(sp)
    53cc:	00d12c23          	sw	a3,24(sp)
    53d0:	ffffd097          	auipc	ra,0xffffd
    53d4:	91c080e7          	jalr	-1764(ra) # 1cec <fatfs_entry_lfn_text>
    53d8:	01812683          	lw	a3,24(sp)
    53dc:	01c12703          	lw	a4,28(sp)
    53e0:	00050d13          	mv	s10,a0
    53e4:	02050c63          	beqz	a0,541c <fatfs_add_file_entry+0x158>
    53e8:	00091863          	bnez	s2,53f8 <fatfs_add_file_entry+0x134>
    53ec:	00070a93          	mv	s5,a4
    53f0:	00098a13          	mv	s4,s3
    53f4:	00100c13          	li	s8,1
    53f8:	00190d13          	addi	s10,s2,1
    53fc:	00170713          	addi	a4,a4,1
    5400:	0ff77713          	zext.b	a4,a4
    5404:	02068693          	addi	a3,a3,32
    5408:	01b71663          	bne	a4,s11,5414 <fatfs_add_file_entry+0x150>
    540c:	00198993          	addi	s3,s3,1
    5410:	f89ff06f          	j	5398 <fatfs_add_file_entry+0xd4>
    5414:	000d0913          	mv	s2,s10
    5418:	fadff06f          	j	53c4 <fatfs_add_file_entry+0x100>
    541c:	0006c603          	lbu	a2,0(a3)
    5420:	0e500793          	li	a5,229
    5424:	0cf61c63          	bne	a2,a5,54fc <fatfs_add_file_entry+0x238>
    5428:	00091863          	bnez	s2,5438 <fatfs_add_file_entry+0x174>
    542c:	00070a93          	mv	s5,a4
    5430:	00098a13          	mv	s4,s3
    5434:	00100c13          	li	s8,1
    5438:	00190d13          	addi	s10,s2,1
    543c:	fc9940e3          	blt	s2,s1,53fc <fatfs_add_file_entry+0x138>
    5440:	00bb8713          	addi	a4,s7,11
    5444:	000b8793          	mv	a5,s7
    5448:	00000913          	li	s2,0
    544c:	0007c603          	lbu	a2,0(a5)
    5450:	00791693          	slli	a3,s2,0x7
    5454:	00195913          	srli	s2,s2,0x1
    5458:	00c90933          	add	s2,s2,a2
    545c:	00178793          	addi	a5,a5,1
    5460:	00d90933          	add	s2,s2,a3
    5464:	0ff97913          	zext.b	s2,s2
    5468:	fee792e3          	bne	a5,a4,544c <fatfs_add_file_entry+0x188>
    546c:	000a0993          	mv	s3,s4
    5470:	00000d93          	li	s11,0
    5474:	00000693          	li	a3,0
    5478:	00098613          	mv	a2,s3
    547c:	000b0593          	mv	a1,s6
    5480:	00040513          	mv	a0,s0
    5484:	ffffe097          	auipc	ra,0xffffe
    5488:	fe4080e7          	jalr	-28(ra) # 3468 <fatfs_sector_reader>
    548c:	e80502e3          	beqz	a0,5310 <fatfs_add_file_entry+0x4c>
    5490:	04440d13          	addi	s10,s0,68
    5494:	00000713          	li	a4,0
    5498:	00000793          	li	a5,0
    549c:	000d0c13          	mv	s8,s10
    54a0:	000d9663          	bnez	s11,54ac <fatfs_add_file_entry+0x1e8>
    54a4:	11499e63          	bne	s3,s4,55c0 <fatfs_add_file_entry+0x2fc>
    54a8:	11579c63          	bne	a5,s5,55c0 <fatfs_add_file_entry+0x2fc>
    54ac:	0e049463          	bnez	s1,5594 <fatfs_add_file_entry+0x2d0>
    54b0:	01412703          	lw	a4,20(sp)
    54b4:	00c12603          	lw	a2,12(sp)
    54b8:	01012583          	lw	a1,16(sp)
    54bc:	02010693          	addi	a3,sp,32
    54c0:	000b8513          	mv	a0,s7
    54c4:	ffffd097          	auipc	ra,0xffffd
    54c8:	a70080e7          	jalr	-1424(ra) # 1f34 <fatfs_sfn_create_entry>
    54cc:	02000613          	li	a2,32
    54d0:	02010593          	addi	a1,sp,32
    54d4:	000d0513          	mv	a0,s10
    54d8:	ffffb097          	auipc	ra,0xffffb
    54dc:	45c080e7          	jalr	1116(ra) # 934 <memcpy>
    54e0:	03842783          	lw	a5,56(s0)
    54e4:	24442503          	lw	a0,580(s0)
    54e8:	00100613          	li	a2,1
    54ec:	000c0593          	mv	a1,s8
    54f0:	000780e7          	jalr	a5
    54f4:	00050913          	mv	s2,a0
    54f8:	e1dff06f          	j	5314 <fatfs_add_file_entry+0x50>
    54fc:	f20606e3          	beqz	a2,5428 <fatfs_add_file_entry+0x164>
    5500:	00000c13          	li	s8,0
    5504:	ef9ff06f          	j	53fc <fatfs_add_file_entry+0x138>
    5508:	00842583          	lw	a1,8(s0)
    550c:	02010613          	addi	a2,sp,32
    5510:	00040513          	mv	a0,s0
    5514:	fffff097          	auipc	ra,0xfffff
    5518:	f38080e7          	jalr	-200(ra) # 444c <fatfs_find_blank_cluster>
    551c:	de050ce3          	beqz	a0,5314 <fatfs_add_file_entry+0x50>
    5520:	02012d83          	lw	s11,32(sp)
    5524:	000b0593          	mv	a1,s6
    5528:	00040513          	mv	a0,s0
    552c:	000d8613          	mv	a2,s11
    5530:	fffff097          	auipc	ra,0xfffff
    5534:	1c4080e7          	jalr	452(ra) # 46f4 <fatfs_fat_add_cluster_to_chain>
    5538:	dc050ee3          	beqz	a0,5314 <fatfs_add_file_entry+0x50>
    553c:	20000613          	li	a2,512
    5540:	00000593          	li	a1,0
    5544:	04440513          	addi	a0,s0,68
    5548:	ffffb097          	auipc	ra,0xffffb
    554c:	3d0080e7          	jalr	976(ra) # 918 <memset>
    5550:	00000d13          	li	s10,0
    5554:	00044783          	lbu	a5,0(s0)
    5558:	00fd6a63          	bltu	s10,a5,556c <fatfs_add_file_entry+0x2a8>
    555c:	ee0c12e3          	bnez	s8,5440 <fatfs_add_file_entry+0x17c>
    5560:	00098a13          	mv	s4,s3
    5564:	00000a93          	li	s5,0
    5568:	ed9ff06f          	j	5440 <fatfs_add_file_entry+0x17c>
    556c:	00000693          	li	a3,0
    5570:	000d0613          	mv	a2,s10
    5574:	000d8593          	mv	a1,s11
    5578:	00040513          	mv	a0,s0
    557c:	ffffc097          	auipc	ra,0xffffc
    5580:	1c8080e7          	jalr	456(ra) # 1744 <fatfs_write_sector>
    5584:	d80508e3          	beqz	a0,5314 <fatfs_add_file_entry+0x50>
    5588:	001d0613          	addi	a2,s10,1
    558c:	0ff67d13          	zext.b	s10,a2
    5590:	fc5ff06f          	j	5554 <fatfs_add_file_entry+0x290>
    5594:	fff48493          	addi	s1,s1,-1
    5598:	00090693          	mv	a3,s2
    559c:	00048613          	mv	a2,s1
    55a0:	000d0593          	mv	a1,s10
    55a4:	000c8513          	mv	a0,s9
    55a8:	00f12c23          	sw	a5,24(sp)
    55ac:	ffffd097          	auipc	ra,0xffffd
    55b0:	860080e7          	jalr	-1952(ra) # 1e0c <fatfs_filename_to_lfn>
    55b4:	01812783          	lw	a5,24(sp)
    55b8:	00100d93          	li	s11,1
    55bc:	00100713          	li	a4,1
    55c0:	00178793          	addi	a5,a5,1
    55c4:	0ff7f793          	zext.b	a5,a5
    55c8:	01000693          	li	a3,16
    55cc:	020d0d13          	addi	s10,s10,32
    55d0:	ecd798e3          	bne	a5,a3,54a0 <fatfs_add_file_entry+0x1dc>
    55d4:	00070e63          	beqz	a4,55f0 <fatfs_add_file_entry+0x32c>
    55d8:	03842783          	lw	a5,56(s0)
    55dc:	24442503          	lw	a0,580(s0)
    55e0:	00100613          	li	a2,1
    55e4:	000c0593          	mv	a1,s8
    55e8:	000780e7          	jalr	a5
    55ec:	d20502e3          	beqz	a0,5310 <fatfs_add_file_entry+0x4c>
    55f0:	00198993          	addi	s3,s3,1
    55f4:	e81ff06f          	j	5474 <fatfs_add_file_entry+0x1b0>

000055f8 <fl_fopen>:
    55f8:	000067b7          	lui	a5,0x6
    55fc:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    5600:	fa010113          	addi	sp,sp,-96
    5604:	04812c23          	sw	s0,88(sp)
    5608:	05412423          	sw	s4,72(sp)
    560c:	04112e23          	sw	ra,92(sp)
    5610:	04912a23          	sw	s1,84(sp)
    5614:	05212823          	sw	s2,80(sp)
    5618:	05312623          	sw	s3,76(sp)
    561c:	05512223          	sw	s5,68(sp)
    5620:	05612023          	sw	s6,64(sp)
    5624:	03712e23          	sw	s7,60(sp)
    5628:	03812c23          	sw	s8,56(sp)
    562c:	03912a23          	sw	s9,52(sp)
    5630:	00050a13          	mv	s4,a0
    5634:	00058413          	mv	s0,a1
    5638:	00079663          	bnez	a5,5644 <fl_fopen+0x4c>
    563c:	ffffc097          	auipc	ra,0xffffc
    5640:	2a0080e7          	jalr	672(ra) # 18dc <fl_init>
    5644:	000067b7          	lui	a5,0x6
    5648:	1ec7a783          	lw	a5,492(a5) # 61ec <_filelib_valid>
    564c:	30078263          	beqz	a5,5950 <fl_fopen+0x358>
    5650:	300a0063          	beqz	s4,5950 <fl_fopen+0x358>
    5654:	10040463          	beqz	s0,575c <fl_fopen+0x164>
    5658:	00040513          	mv	a0,s0
    565c:	ffffb097          	auipc	ra,0xffffb
    5660:	2fc080e7          	jalr	764(ra) # 958 <strlen>
    5664:	00000493          	li	s1,0
    5668:	00000713          	li	a4,0
    566c:	05700693          	li	a3,87
    5670:	07200613          	li	a2,114
    5674:	07700813          	li	a6,119
    5678:	06100893          	li	a7,97
    567c:	06200313          	li	t1,98
    5680:	04100593          	li	a1,65
    5684:	04200e13          	li	t3,66
    5688:	05200e93          	li	t4,82
    568c:	02b00f13          	li	t5,43
    5690:	10a74263          	blt	a4,a0,5794 <fl_fopen+0x19c>
    5694:	0000a937          	lui	s2,0xa
    5698:	5bc90793          	addi	a5,s2,1468 # a5bc <_fs>
    569c:	0387a783          	lw	a5,56(a5)
    56a0:	5bc90b13          	addi	s6,s2,1468
    56a4:	00079463          	bnez	a5,56ac <fl_fopen+0xb4>
    56a8:	0d94f493          	andi	s1,s1,217
    56ac:	03cb2783          	lw	a5,60(s6)
    56b0:	00078463          	beqz	a5,56b8 <fl_fopen+0xc0>
    56b4:	000780e7          	jalr	a5
    56b8:	0014fc13          	andi	s8,s1,1
    56bc:	160c1463          	bnez	s8,5824 <fl_fopen+0x22c>
    56c0:	0204f793          	andi	a5,s1,32
    56c4:	08078463          	beqz	a5,574c <fl_fopen+0x154>
    56c8:	038b2783          	lw	a5,56(s6)
    56cc:	06078a63          	beqz	a5,5740 <fl_fopen+0x148>
    56d0:	ffffc097          	auipc	ra,0xffffc
    56d4:	e94080e7          	jalr	-364(ra) # 1564 <_allocate_file>
    56d8:	00050413          	mv	s0,a0
    56dc:	06050263          	beqz	a0,5740 <fl_fopen+0x148>
    56e0:	01450b93          	addi	s7,a0,20
    56e4:	10400613          	li	a2,260
    56e8:	00000593          	li	a1,0
    56ec:	000b8513          	mv	a0,s7
    56f0:	ffffb097          	auipc	ra,0xffffb
    56f4:	228080e7          	jalr	552(ra) # 918 <memset>
    56f8:	11840a93          	addi	s5,s0,280
    56fc:	10400613          	li	a2,260
    5700:	00000593          	li	a1,0
    5704:	000a8513          	mv	a0,s5
    5708:	ffffb097          	auipc	ra,0xffffb
    570c:	210080e7          	jalr	528(ra) # 918 <memset>
    5710:	10400713          	li	a4,260
    5714:	000a8693          	mv	a3,s5
    5718:	10400613          	li	a2,260
    571c:	000b8593          	mv	a1,s7
    5720:	000a0513          	mv	a0,s4
    5724:	ffffd097          	auipc	ra,0xffffd
    5728:	d04080e7          	jalr	-764(ra) # 2428 <fatfs_split_path>
    572c:	fff00793          	li	a5,-1
    5730:	10f51863          	bne	a0,a5,5840 <fl_fopen+0x248>
    5734:	00040513          	mv	a0,s0
    5738:	ffffc097          	auipc	ra,0xffffc
    573c:	ea0080e7          	jalr	-352(ra) # 15d8 <_free_file>
    5740:	000c1663          	bnez	s8,574c <fl_fopen+0x154>
    5744:	0064f793          	andi	a5,s1,6
    5748:	1e079a63          	bnez	a5,593c <fl_fopen+0x344>
    574c:	00000413          	li	s0,0
    5750:	040b2783          	lw	a5,64(s6)
    5754:	00078463          	beqz	a5,575c <fl_fopen+0x164>
    5758:	000780e7          	jalr	a5
    575c:	05c12083          	lw	ra,92(sp)
    5760:	00040513          	mv	a0,s0
    5764:	05812403          	lw	s0,88(sp)
    5768:	05412483          	lw	s1,84(sp)
    576c:	05012903          	lw	s2,80(sp)
    5770:	04c12983          	lw	s3,76(sp)
    5774:	04812a03          	lw	s4,72(sp)
    5778:	04412a83          	lw	s5,68(sp)
    577c:	04012b03          	lw	s6,64(sp)
    5780:	03c12b83          	lw	s7,60(sp)
    5784:	03812c03          	lw	s8,56(sp)
    5788:	03412c83          	lw	s9,52(sp)
    578c:	06010113          	addi	sp,sp,96
    5790:	00008067          	ret
    5794:	00e407b3          	add	a5,s0,a4
    5798:	0007c783          	lbu	a5,0(a5)
    579c:	04d78463          	beq	a5,a3,57e4 <fl_fopen+0x1ec>
    57a0:	02f6e463          	bltu	a3,a5,57c8 <fl_fopen+0x1d0>
    57a4:	04b78463          	beq	a5,a1,57ec <fl_fopen+0x1f4>
    57a8:	00f5e863          	bltu	a1,a5,57b8 <fl_fopen+0x1c0>
    57ac:	05e78463          	beq	a5,t5,57f4 <fl_fopen+0x1fc>
    57b0:	00170713          	addi	a4,a4,1
    57b4:	eddff06f          	j	5690 <fl_fopen+0x98>
    57b8:	03c78063          	beq	a5,t3,57d8 <fl_fopen+0x1e0>
    57bc:	ffd79ae3          	bne	a5,t4,57b0 <fl_fopen+0x1b8>
    57c0:	0014e493          	ori	s1,s1,1
    57c4:	fedff06f          	j	57b0 <fl_fopen+0x1b8>
    57c8:	fec78ce3          	beq	a5,a2,57c0 <fl_fopen+0x1c8>
    57cc:	00f66a63          	bltu	a2,a5,57e0 <fl_fopen+0x1e8>
    57d0:	01178e63          	beq	a5,a7,57ec <fl_fopen+0x1f4>
    57d4:	fc679ee3          	bne	a5,t1,57b0 <fl_fopen+0x1b8>
    57d8:	0084e493          	ori	s1,s1,8
    57dc:	fd5ff06f          	j	57b0 <fl_fopen+0x1b8>
    57e0:	fd0798e3          	bne	a5,a6,57b0 <fl_fopen+0x1b8>
    57e4:	0324e493          	ori	s1,s1,50
    57e8:	fc9ff06f          	j	57b0 <fl_fopen+0x1b8>
    57ec:	0264e493          	ori	s1,s1,38
    57f0:	fc1ff06f          	j	57b0 <fl_fopen+0x1b8>
    57f4:	0014f793          	andi	a5,s1,1
    57f8:	00078663          	beqz	a5,5804 <fl_fopen+0x20c>
    57fc:	0024e493          	ori	s1,s1,2
    5800:	fb1ff06f          	j	57b0 <fl_fopen+0x1b8>
    5804:	0024f793          	andi	a5,s1,2
    5808:	00078663          	beqz	a5,5814 <fl_fopen+0x21c>
    580c:	0314e493          	ori	s1,s1,49
    5810:	fa1ff06f          	j	57b0 <fl_fopen+0x1b8>
    5814:	0044f793          	andi	a5,s1,4
    5818:	f8078ce3          	beqz	a5,57b0 <fl_fopen+0x1b8>
    581c:	0274e493          	ori	s1,s1,39
    5820:	f91ff06f          	j	57b0 <fl_fopen+0x1b8>
    5824:	000a0513          	mv	a0,s4
    5828:	ffffe097          	auipc	ra,0xffffe
    582c:	160080e7          	jalr	352(ra) # 3988 <_open_file>
    5830:	00050413          	mv	s0,a0
    5834:	e80506e3          	beqz	a0,56c0 <fl_fopen+0xc8>
    5838:	42940c23          	sb	s1,1080(s0)
    583c:	f15ff06f          	j	5750 <fl_fopen+0x158>
    5840:	00040513          	mv	a0,s0
    5844:	ffffd097          	auipc	ra,0xffffd
    5848:	e34080e7          	jalr	-460(ra) # 2678 <_check_file_open>
    584c:	00050993          	mv	s3,a0
    5850:	ee0512e3          	bnez	a0,5734 <fl_fopen+0x13c>
    5854:	01444783          	lbu	a5,20(s0)
    5858:	0a079a63          	bnez	a5,590c <fl_fopen+0x314>
    585c:	008b2783          	lw	a5,8(s6)
    5860:	00f42023          	sw	a5,0(s0)
    5864:	00042583          	lw	a1,0(s0)
    5868:	01010693          	addi	a3,sp,16
    586c:	000a8613          	mv	a2,s5
    5870:	5bc90513          	addi	a0,s2,1468
    5874:	ffffe097          	auipc	ra,0xffffe
    5878:	d34080e7          	jalr	-716(ra) # 35a8 <fatfs_get_file_entry>
    587c:	00100793          	li	a5,1
    5880:	eaf50ae3          	beq	a0,a5,5734 <fl_fopen+0x13c>
    5884:	00042223          	sw	zero,4(s0)
    5888:	00100693          	li	a3,1
    588c:	00440613          	addi	a2,s0,4
    5890:	00100593          	li	a1,1
    5894:	5bc90513          	addi	a0,s2,1468
    5898:	00000097          	auipc	ra,0x0
    589c:	910080e7          	jalr	-1776(ra) # 51a8 <fatfs_allocate_free_space.part.0>
    58a0:	e8050ae3          	beqz	a0,5734 <fl_fopen+0x13c>
    58a4:	00002cb7          	lui	s9,0x2
    58a8:	21c40b93          	addi	s7,s0,540
    58ac:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_string_ends_with_slash+0x7>
    58b0:	000a8593          	mv	a1,s5
    58b4:	00410513          	addi	a0,sp,4
    58b8:	ffffc097          	auipc	ra,0xffffc
    58bc:	720080e7          	jalr	1824(ra) # 1fd8 <fatfs_lfn_create_sfn>
    58c0:	06098263          	beqz	s3,5924 <fl_fopen+0x32c>
    58c4:	00098613          	mv	a2,s3
    58c8:	00410593          	addi	a1,sp,4
    58cc:	000b8513          	mv	a0,s7
    58d0:	ffffd097          	auipc	ra,0xffffd
    58d4:	880080e7          	jalr	-1920(ra) # 2150 <fatfs_lfn_generate_tail>
    58d8:	00042583          	lw	a1,0(s0)
    58dc:	000b8613          	mv	a2,s7
    58e0:	5bc90513          	addi	a0,s2,1468
    58e4:	ffffe097          	auipc	ra,0xffffe
    58e8:	21c080e7          	jalr	540(ra) # 3b00 <fatfs_sfn_exists>
    58ec:	06050663          	beqz	a0,5958 <fl_fopen+0x360>
    58f0:	00198993          	addi	s3,s3,1
    58f4:	fb999ee3          	bne	s3,s9,58b0 <fl_fopen+0x2b8>
    58f8:	00442583          	lw	a1,4(s0)
    58fc:	5bc90513          	addi	a0,s2,1468
    5900:	fffff097          	auipc	ra,0xfffff
    5904:	d84080e7          	jalr	-636(ra) # 4684 <fatfs_free_cluster_chain>
    5908:	e2dff06f          	j	5734 <fl_fopen+0x13c>
    590c:	00040593          	mv	a1,s0
    5910:	000b8513          	mv	a0,s7
    5914:	ffffe097          	auipc	ra,0xffffe
    5918:	e9c080e7          	jalr	-356(ra) # 37b0 <_open_directory>
    591c:	f40514e3          	bnez	a0,5864 <fl_fopen+0x26c>
    5920:	e15ff06f          	j	5734 <fl_fopen+0x13c>
    5924:	00b00613          	li	a2,11
    5928:	00410593          	addi	a1,sp,4
    592c:	000b8513          	mv	a0,s7
    5930:	ffffb097          	auipc	ra,0xffffb
    5934:	004080e7          	jalr	4(ra) # 934 <memcpy>
    5938:	fa1ff06f          	j	58d8 <fl_fopen+0x2e0>
    593c:	000a0513          	mv	a0,s4
    5940:	ffffe097          	auipc	ra,0xffffe
    5944:	048080e7          	jalr	72(ra) # 3988 <_open_file>
    5948:	00050413          	mv	s0,a0
    594c:	0640006f          	j	59b0 <fl_fopen+0x3b8>
    5950:	00000413          	li	s0,0
    5954:	e09ff06f          	j	575c <fl_fopen+0x164>
    5958:	00442703          	lw	a4,4(s0)
    595c:	00042583          	lw	a1,0(s0)
    5960:	00000813          	li	a6,0
    5964:	00000793          	li	a5,0
    5968:	000b8693          	mv	a3,s7
    596c:	000a8613          	mv	a2,s5
    5970:	5bc90513          	addi	a0,s2,1468
    5974:	00000097          	auipc	ra,0x0
    5978:	950080e7          	jalr	-1712(ra) # 52c4 <fatfs_add_file_entry>
    597c:	f6050ee3          	beqz	a0,58f8 <fl_fopen+0x300>
    5980:	fff00793          	li	a5,-1
    5984:	00042623          	sw	zero,12(s0)
    5988:	00042423          	sw	zero,8(s0)
    598c:	42f42823          	sw	a5,1072(s0)
    5990:	42042a23          	sw	zero,1076(s0)
    5994:	00042823          	sw	zero,16(s0)
    5998:	22f42423          	sw	a5,552(s0)
    599c:	22f42623          	sw	a5,556(s0)
    59a0:	5bc90513          	addi	a0,s2,1468
    59a4:	ffffe097          	auipc	ra,0xffffe
    59a8:	8e0080e7          	jalr	-1824(ra) # 3284 <fatfs_fat_purge>
    59ac:	e80c06e3          	beqz	s8,5838 <fl_fopen+0x240>
    59b0:	e80414e3          	bnez	s0,5838 <fl_fopen+0x240>
    59b4:	d99ff06f          	j	574c <fl_fopen+0x154>

000059b8 <fl_remove>:
    59b8:	fe010113          	addi	sp,sp,-32
    59bc:	00912a23          	sw	s1,20(sp)
    59c0:	0000a4b7          	lui	s1,0xa
    59c4:	5bc48793          	addi	a5,s1,1468 # a5bc <_fs>
    59c8:	03c7a783          	lw	a5,60(a5)
    59cc:	01212823          	sw	s2,16(sp)
    59d0:	00112e23          	sw	ra,28(sp)
    59d4:	00812c23          	sw	s0,24(sp)
    59d8:	5bc48913          	addi	s2,s1,1468
    59dc:	00078863          	beqz	a5,59ec <fl_remove+0x34>
    59e0:	00a12623          	sw	a0,12(sp)
    59e4:	000780e7          	jalr	a5
    59e8:	00c12503          	lw	a0,12(sp)
    59ec:	000065b7          	lui	a1,0x6
    59f0:	15058593          	addi	a1,a1,336 # 6150 <font+0x3bc>
    59f4:	00000097          	auipc	ra,0x0
    59f8:	c04080e7          	jalr	-1020(ra) # 55f8 <fl_fopen>
    59fc:	00050413          	mv	s0,a0
    5a00:	02051a63          	bnez	a0,5a34 <fl_remove+0x7c>
    5a04:	fff00513          	li	a0,-1
    5a08:	04092783          	lw	a5,64(s2)
    5a0c:	00078863          	beqz	a5,5a1c <fl_remove+0x64>
    5a10:	00a12623          	sw	a0,12(sp)
    5a14:	000780e7          	jalr	a5
    5a18:	00c12503          	lw	a0,12(sp)
    5a1c:	01c12083          	lw	ra,28(sp)
    5a20:	01812403          	lw	s0,24(sp)
    5a24:	01412483          	lw	s1,20(sp)
    5a28:	01012903          	lw	s2,16(sp)
    5a2c:	02010113          	addi	sp,sp,32
    5a30:	00008067          	ret
    5a34:	00452583          	lw	a1,4(a0)
    5a38:	5bc48513          	addi	a0,s1,1468
    5a3c:	fffff097          	auipc	ra,0xfffff
    5a40:	c48080e7          	jalr	-952(ra) # 4684 <fatfs_free_cluster_chain>
    5a44:	fc0500e3          	beqz	a0,5a04 <fl_remove+0x4c>
    5a48:	00042583          	lw	a1,0(s0)
    5a4c:	21c40613          	addi	a2,s0,540
    5a50:	5bc48513          	addi	a0,s1,1468
    5a54:	ffffe097          	auipc	ra,0xffffe
    5a58:	2e8080e7          	jalr	744(ra) # 3d3c <fatfs_mark_file_deleted>
    5a5c:	fa0504e3          	beqz	a0,5a04 <fl_remove+0x4c>
    5a60:	00040513          	mv	a0,s0
    5a64:	fffff097          	auipc	ra,0xfffff
    5a68:	114080e7          	jalr	276(ra) # 4b78 <fl_fclose>
    5a6c:	00000513          	li	a0,0
    5a70:	f99ff06f          	j	5a08 <fl_remove+0x50>

00005a74 <fl_createdirectory>:
    5a74:	000067b7          	lui	a5,0x6
    5a78:	1f07a783          	lw	a5,496(a5) # 61f0 <_filelib_init>
    5a7c:	fa010113          	addi	sp,sp,-96
    5a80:	05512223          	sw	s5,68(sp)
    5a84:	04112e23          	sw	ra,92(sp)
    5a88:	04812c23          	sw	s0,88(sp)
    5a8c:	04912a23          	sw	s1,84(sp)
    5a90:	05212823          	sw	s2,80(sp)
    5a94:	05312623          	sw	s3,76(sp)
    5a98:	05412423          	sw	s4,72(sp)
    5a9c:	05612023          	sw	s6,64(sp)
    5aa0:	03712e23          	sw	s7,60(sp)
    5aa4:	00050a93          	mv	s5,a0
    5aa8:	00079663          	bnez	a5,5ab4 <fl_createdirectory+0x40>
    5aac:	ffffc097          	auipc	ra,0xffffc
    5ab0:	e30080e7          	jalr	-464(ra) # 18dc <fl_init>
    5ab4:	0000a937          	lui	s2,0xa
    5ab8:	5bc90793          	addi	a5,s2,1468 # a5bc <_fs>
    5abc:	03c7a783          	lw	a5,60(a5)
    5ac0:	5bc90b13          	addi	s6,s2,1468
    5ac4:	00078463          	beqz	a5,5acc <fl_createdirectory+0x58>
    5ac8:	000780e7          	jalr	a5
    5acc:	ffffc097          	auipc	ra,0xffffc
    5ad0:	a98080e7          	jalr	-1384(ra) # 1564 <_allocate_file>
    5ad4:	00050413          	mv	s0,a0
    5ad8:	00000493          	li	s1,0
    5adc:	08050663          	beqz	a0,5b68 <fl_createdirectory+0xf4>
    5ae0:	01450a13          	addi	s4,a0,20
    5ae4:	10400613          	li	a2,260
    5ae8:	00000593          	li	a1,0
    5aec:	000a0513          	mv	a0,s4
    5af0:	ffffb097          	auipc	ra,0xffffb
    5af4:	e28080e7          	jalr	-472(ra) # 918 <memset>
    5af8:	11840993          	addi	s3,s0,280
    5afc:	10400613          	li	a2,260
    5b00:	00000593          	li	a1,0
    5b04:	00098513          	mv	a0,s3
    5b08:	ffffb097          	auipc	ra,0xffffb
    5b0c:	e10080e7          	jalr	-496(ra) # 918 <memset>
    5b10:	10400713          	li	a4,260
    5b14:	00098693          	mv	a3,s3
    5b18:	10400613          	li	a2,260
    5b1c:	000a0593          	mv	a1,s4
    5b20:	000a8513          	mv	a0,s5
    5b24:	ffffd097          	auipc	ra,0xffffd
    5b28:	904080e7          	jalr	-1788(ra) # 2428 <fatfs_split_path>
    5b2c:	fff00793          	li	a5,-1
    5b30:	00f51a63          	bne	a0,a5,5b44 <fl_createdirectory+0xd0>
    5b34:	00040513          	mv	a0,s0
    5b38:	ffffc097          	auipc	ra,0xffffc
    5b3c:	aa0080e7          	jalr	-1376(ra) # 15d8 <_free_file>
    5b40:	0280006f          	j	5b68 <fl_createdirectory+0xf4>
    5b44:	00040513          	mv	a0,s0
    5b48:	ffffd097          	auipc	ra,0xffffd
    5b4c:	b30080e7          	jalr	-1232(ra) # 2678 <_check_file_open>
    5b50:	00050493          	mv	s1,a0
    5b54:	04050863          	beqz	a0,5ba4 <fl_createdirectory+0x130>
    5b58:	00040513          	mv	a0,s0
    5b5c:	ffffc097          	auipc	ra,0xffffc
    5b60:	a7c080e7          	jalr	-1412(ra) # 15d8 <_free_file>
    5b64:	00000493          	li	s1,0
    5b68:	040b2783          	lw	a5,64(s6)
    5b6c:	00078463          	beqz	a5,5b74 <fl_createdirectory+0x100>
    5b70:	000780e7          	jalr	a5
    5b74:	05c12083          	lw	ra,92(sp)
    5b78:	05812403          	lw	s0,88(sp)
    5b7c:	05012903          	lw	s2,80(sp)
    5b80:	04c12983          	lw	s3,76(sp)
    5b84:	04812a03          	lw	s4,72(sp)
    5b88:	04412a83          	lw	s5,68(sp)
    5b8c:	04012b03          	lw	s6,64(sp)
    5b90:	03c12b83          	lw	s7,60(sp)
    5b94:	00048513          	mv	a0,s1
    5b98:	05412483          	lw	s1,84(sp)
    5b9c:	06010113          	addi	sp,sp,96
    5ba0:	00008067          	ret
    5ba4:	01444783          	lbu	a5,20(s0)
    5ba8:	0c079e63          	bnez	a5,5c84 <fl_createdirectory+0x210>
    5bac:	008b2783          	lw	a5,8(s6)
    5bb0:	00f42023          	sw	a5,0(s0)
    5bb4:	00042583          	lw	a1,0(s0)
    5bb8:	01010693          	addi	a3,sp,16
    5bbc:	00098613          	mv	a2,s3
    5bc0:	5bc90513          	addi	a0,s2,1468
    5bc4:	ffffe097          	auipc	ra,0xffffe
    5bc8:	9e4080e7          	jalr	-1564(ra) # 35a8 <fatfs_get_file_entry>
    5bcc:	00100793          	li	a5,1
    5bd0:	f6f502e3          	beq	a0,a5,5b34 <fl_createdirectory+0xc0>
    5bd4:	00042223          	sw	zero,4(s0)
    5bd8:	00100693          	li	a3,1
    5bdc:	00440613          	addi	a2,s0,4
    5be0:	00100593          	li	a1,1
    5be4:	5bc90513          	addi	a0,s2,1468
    5be8:	fffff097          	auipc	ra,0xfffff
    5bec:	5c0080e7          	jalr	1472(ra) # 51a8 <fatfs_allocate_free_space.part.0>
    5bf0:	f60504e3          	beqz	a0,5b58 <fl_createdirectory+0xe4>
    5bf4:	23040a93          	addi	s5,s0,560
    5bf8:	20000613          	li	a2,512
    5bfc:	00000593          	li	a1,0
    5c00:	000a8513          	mv	a0,s5
    5c04:	ffffb097          	auipc	ra,0xffffb
    5c08:	d14080e7          	jalr	-748(ra) # 918 <memset>
    5c0c:	00000a13          	li	s4,0
    5c10:	000b4783          	lbu	a5,0(s6)
    5c14:	08fa4463          	blt	s4,a5,5c9c <fl_createdirectory+0x228>
    5c18:	00002bb7          	lui	s7,0x2
    5c1c:	00000a13          	li	s4,0
    5c20:	21c40a93          	addi	s5,s0,540
    5c24:	70fb8b93          	addi	s7,s7,1807 # 270f <fatfs_string_ends_with_slash+0x7>
    5c28:	00098593          	mv	a1,s3
    5c2c:	00410513          	addi	a0,sp,4
    5c30:	ffffc097          	auipc	ra,0xffffc
    5c34:	3a8080e7          	jalr	936(ra) # 1fd8 <fatfs_lfn_create_sfn>
    5c38:	080a0463          	beqz	s4,5cc0 <fl_createdirectory+0x24c>
    5c3c:	000a0613          	mv	a2,s4
    5c40:	00410593          	addi	a1,sp,4
    5c44:	000a8513          	mv	a0,s5
    5c48:	ffffc097          	auipc	ra,0xffffc
    5c4c:	508080e7          	jalr	1288(ra) # 2150 <fatfs_lfn_generate_tail>
    5c50:	00042583          	lw	a1,0(s0)
    5c54:	000a8613          	mv	a2,s5
    5c58:	5bc90513          	addi	a0,s2,1468
    5c5c:	ffffe097          	auipc	ra,0xffffe
    5c60:	ea4080e7          	jalr	-348(ra) # 3b00 <fatfs_sfn_exists>
    5c64:	06050a63          	beqz	a0,5cd8 <fl_createdirectory+0x264>
    5c68:	001a0a13          	addi	s4,s4,1
    5c6c:	fb7a1ee3          	bne	s4,s7,5c28 <fl_createdirectory+0x1b4>
    5c70:	00442583          	lw	a1,4(s0)
    5c74:	5bc90513          	addi	a0,s2,1468
    5c78:	fffff097          	auipc	ra,0xfffff
    5c7c:	a0c080e7          	jalr	-1524(ra) # 4684 <fatfs_free_cluster_chain>
    5c80:	eb5ff06f          	j	5b34 <fl_createdirectory+0xc0>
    5c84:	00040593          	mv	a1,s0
    5c88:	000a0513          	mv	a0,s4
    5c8c:	ffffe097          	auipc	ra,0xffffe
    5c90:	b24080e7          	jalr	-1244(ra) # 37b0 <_open_directory>
    5c94:	f20510e3          	bnez	a0,5bb4 <fl_createdirectory+0x140>
    5c98:	e9dff06f          	j	5b34 <fl_createdirectory+0xc0>
    5c9c:	00442583          	lw	a1,4(s0)
    5ca0:	000a8693          	mv	a3,s5
    5ca4:	000a0613          	mv	a2,s4
    5ca8:	5bc90513          	addi	a0,s2,1468
    5cac:	ffffc097          	auipc	ra,0xffffc
    5cb0:	a98080e7          	jalr	-1384(ra) # 1744 <fatfs_write_sector>
    5cb4:	ea0502e3          	beqz	a0,5b58 <fl_createdirectory+0xe4>
    5cb8:	001a0a13          	addi	s4,s4,1
    5cbc:	f55ff06f          	j	5c10 <fl_createdirectory+0x19c>
    5cc0:	00b00613          	li	a2,11
    5cc4:	00410593          	addi	a1,sp,4
    5cc8:	000a8513          	mv	a0,s5
    5ccc:	ffffb097          	auipc	ra,0xffffb
    5cd0:	c68080e7          	jalr	-920(ra) # 934 <memcpy>
    5cd4:	f7dff06f          	j	5c50 <fl_createdirectory+0x1dc>
    5cd8:	00442703          	lw	a4,4(s0)
    5cdc:	00042583          	lw	a1,0(s0)
    5ce0:	00100813          	li	a6,1
    5ce4:	00000793          	li	a5,0
    5ce8:	000a8693          	mv	a3,s5
    5cec:	00098613          	mv	a2,s3
    5cf0:	5bc90513          	addi	a0,s2,1468
    5cf4:	fffff097          	auipc	ra,0xfffff
    5cf8:	5d0080e7          	jalr	1488(ra) # 52c4 <fatfs_add_file_entry>
    5cfc:	00050493          	mv	s1,a0
    5d00:	f60508e3          	beqz	a0,5c70 <fl_createdirectory+0x1fc>
    5d04:	fff00793          	li	a5,-1
    5d08:	42f42823          	sw	a5,1072(s0)
    5d0c:	22f42423          	sw	a5,552(s0)
    5d10:	22f42623          	sw	a5,556(s0)
    5d14:	00042623          	sw	zero,12(s0)
    5d18:	00042423          	sw	zero,8(s0)
    5d1c:	42042a23          	sw	zero,1076(s0)
    5d20:	00042823          	sw	zero,16(s0)
    5d24:	5bc90513          	addi	a0,s2,1468
    5d28:	ffffd097          	auipc	ra,0xffffd
    5d2c:	55c080e7          	jalr	1372(ra) # 3284 <fatfs_fat_purge>
    5d30:	00040513          	mv	a0,s0
    5d34:	ffffc097          	auipc	ra,0xffffc
    5d38:	8a4080e7          	jalr	-1884(ra) # 15d8 <_free_file>
    5d3c:	00100493          	li	s1,1
    5d40:	e29ff06f          	j	5b68 <fl_createdirectory+0xf4>

00005d44 <cmd17>:
    5d44:	00000051 00005500                       Q....U..

00005d4c <cmd16>:
    5d4c:	02000050 00001500                       P.......

00005d54 <acmd41>:
    5d54:	00004069 00000100                       i@......

00005d5c <cmd55>:
    5d5c:	00000077 00000100                       w.......

00005d64 <cmd8>:
    5d64:	01000048 000087aa                       H.......

00005d6c <cmd0>:
    5d6c:	00000040 00009500                       @.......

00005d74 <AUDIO>:
    5d74:	00018000                                ....

00005d78 <DISPLAY>:
    5d78:	00014000                                .@..

00005d7c <BUTTONS>:
    5d7c:	00010100                                ....

00005d80 <SDCARD>:
    5d80:	00010080                                ....

00005d84 <UART>:
    5d84:	00010020                                 ...

00005d88 <OLED_RST>:
    5d88:	00010010                                ....

00005d8c <OLED>:
    5d8c:	00010008                                ....

00005d90 <LEDS>:
    5d90:	00010004                                ....

00005d94 <font>:
    5d94:	00000000 00002f00 00030000 14000003     ...../..........
    5da4:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5db4:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5dc4:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5dd4:	00080800 00200000 20000000 02040810     ...... .... ....
    5de4:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5df4:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5e04:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5e14:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5e24:	00141400 0a110000 01000004 0007052d     ............-...
    5e34:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5e44:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5e54:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5e64:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5e74:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5e84:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5e94:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5ea4:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5eb4:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5ec4:	003f2102 01020000 20000201 00000020     .!?........  ...
    5ed4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5ee4:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5ef4:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5f04:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5f14:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5f24:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5f34:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5f44:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5f54:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5f64:	043f2100 02010000 00000102 00000000     .!?.............
    5f74:	00000001 00000003 00000005 00000007     ................
    5f84:	00000009 0000000e 00000010 00000012     ................
    5f94:	00000014 00000016 00000018 0000001c     ................
    5fa4:	0000001e 0000002f 656c6966 7325203a     ..../...file: %s
    5fb4:	0000000a 00006272 656c6966 746f6e20     ....rb..file not
    5fc4:	756f6620 203a646e 000a7325 6973756d      found: %s..musi
    5fd4:	69662063 6620656c 646e756f 7325203a     c file found: %s
    5fe4:	0000000a 79616c70 20676e69 202e2e2e     ....playing ... 
    5ff4:	00000000 706f502f 00000000 6d206f4e     ..../Pop....No m
    6004:	63697375 6c696620 66207365 646e756f     usic files found
    6014:	00000a21 20202020 3d3d3d3d 6f73203d     !...    ===== so
    6024:	2073676e 3d3d3d3d 2020203d 000a0a20     ngs =====    ...
    6034:	203e6425 000a7325 33323130 37363534     %d> %s..01234567
    6044:	42413938 46454443 00000000 33544146     89ABCDEF....FAT3
    6054:	00000032 31544146 00000036 20544146     2...FAT16...FAT 
    6064:	61746564 3a736c69 00000a0d 70795420     details:.... Typ
    6074:	253d2065 00000073 6f6f5220 69442074     e =%s... Root Di
    6084:	69462072 20747372 73756c43 20726574     r First Cluster 
    6094:	7825203d 00000a0d 54414620 67654220     = %x.... FAT Beg
    60a4:	4c206e69 3d204142 25783020 000a0d78     in LBA = 0x%x...
    60b4:	756c4320 72657473 67654220 4c206e69      Cluster Begin L
    60c4:	3d204142 25783020 000a0d78 63655320     BA = 0x%x... Sec
    60d4:	73726f74 72655020 756c4320 72657473     tors Per Cluster
    60e4:	25203d20 000a0d64 5f544146 203a5346      = %d...FAT_FS: 
    60f4:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    6104:	64616f6c 54414620 74656420 736c6961     load FAT details
    6114:	64252820 0a0d2129 00000000 69440a0d      (%d)!........Di
    6124:	74636572 2079726f 0a0d7325 00000000     rectory %s......
    6134:	3c207325 3e524944 00000a0d 5b207325     %s <DIR>....%s [
    6144:	62206425 73657479 000a0d5d 00000072     %d bytes]...r...

00006154 <_cluster_size_table16>:
    6154:	00007fa8 00000002 00040000 00000004     ................
    6164:	00080000 00000008 00100000 00000010     ................
    6174:	00200000 00000020 00400000 00000040     .. . .....@.@...
    6184:	00800000 00000080 00000000 00000000     ................

00006194 <_cluster_size_table32>:
    6194:	00082000 00000001 01000000 00000008     . ..............
    61a4:	02000000 00000010 04000000 00000020     ............ ...
    61b4:	ffffffff 00000040 00000000 00000000     ....@...........

000061c4 <item_count>:
    61c4:	00000000                                ....

000061c8 <sdcard_while_loading_callback>:
    61c8:	00000000                                ....

000061cc <back_color>:
	...

000061cd <front_color>:
    61cd:	                                         ...

000061d0 <cursor_y>:
    61d0:	00000000                                ....

000061d4 <cursor_x>:
    61d4:	00000000                                ....

000061d8 <f_putchar>:
    61d8:	00000000                                ....

000061dc <_free_file_list>:
	...

000061e4 <_open_file_list>:
	...

000061ec <_filelib_valid>:
    61ec:	00000000                                ....

000061f0 <_filelib_init>:
    61f0:	00000000                                ....

Déassemblage de la section .text.startup :

000061f4 <main>:
    61f4:	000017b7          	lui	a5,0x1
    61f8:	ea010113          	addi	sp,sp,-352
    61fc:	00006737          	lui	a4,0x6
    6200:	cbc78793          	addi	a5,a5,-836 # cbc <display_putchar>
    6204:	14112e23          	sw	ra,348(sp)
    6208:	1cf72c23          	sw	a5,472(a4) # 61d8 <f_putchar>
    620c:	14812c23          	sw	s0,344(sp)
    6210:	14912a23          	sw	s1,340(sp)
    6214:	15212823          	sw	s2,336(sp)
    6218:	15312623          	sw	s3,332(sp)
    621c:	15412423          	sw	s4,328(sp)
    6220:	15512223          	sw	s5,324(sp)
    6224:	15612023          	sw	s6,320(sp)
    6228:	13712e23          	sw	s7,316(sp)
    622c:	13812c23          	sw	s8,312(sp)
    6230:	13912a23          	sw	s9,308(sp)
    6234:	13a12823          	sw	s10,304(sp)
    6238:	13b12623          	sw	s11,300(sp)
    623c:	ffffb097          	auipc	ra,0xffffb
    6240:	90c080e7          	jalr	-1780(ra) # b48 <oled_init>
    6244:	ffffb097          	auipc	ra,0xffffb
    6248:	910080e7          	jalr	-1776(ra) # b54 <oled_fullscreen>
    624c:	ffffb097          	auipc	ra,0xffffb
    6250:	a3c080e7          	jalr	-1476(ra) # c88 <display_framebuffer>
    6254:	00004637          	lui	a2,0x4
    6258:	00000593          	li	a1,0
    625c:	ffffa097          	auipc	ra,0xffffa
    6260:	6bc080e7          	jalr	1724(ra) # 918 <memset>
    6264:	00000513          	li	a0,0
    6268:	ffffb097          	auipc	ra,0xffffb
    626c:	984080e7          	jalr	-1660(ra) # bec <oled_clear>
    6270:	000014b7          	lui	s1,0x1
    6274:	ffffa097          	auipc	ra,0xffffa
    6278:	414080e7          	jalr	1044(ra) # 688 <sdcard_init>
    627c:	00000437          	lui	s0,0x0
    6280:	ffffb097          	auipc	ra,0xffffb
    6284:	65c080e7          	jalr	1628(ra) # 18dc <fl_init>
    6288:	83448593          	addi	a1,s1,-1996 # 834 <sdcard_writesector>
    628c:	7dc40513          	addi	a0,s0,2012 # 7dc <sdcard_readsector>
    6290:	ffffd097          	auipc	ra,0xffffd
    6294:	9f8080e7          	jalr	-1544(ra) # 2c88 <fl_attach_media>
    6298:	fe0518e3          	bnez	a0,6288 <main+0x94>
    629c:	00006a37          	lui	s4,0x6
    62a0:	00410593          	addi	a1,sp,4
    62a4:	ff8a0513          	addi	a0,s4,-8 # 5ff8 <font+0x264>
    62a8:	ffffd097          	auipc	ra,0xffffd
    62ac:	5f0080e7          	jalr	1520(ra) # 3898 <fl_opendir>
    62b0:	02050863          	beqz	a0,62e0 <main+0xec>
    62b4:	00006437          	lui	s0,0x6
    62b8:	000064b7          	lui	s1,0x6
    62bc:	47c40413          	addi	s0,s0,1148 # 647c <items>
    62c0:	01010593          	addi	a1,sp,16
    62c4:	00410513          	addi	a0,sp,4
    62c8:	ffffe097          	auipc	ra,0xffffe
    62cc:	df8080e7          	jalr	-520(ra) # 40c0 <fl_readdir>
    62d0:	04050c63          	beqz	a0,6328 <main+0x134>
    62d4:	00410513          	addi	a0,sp,4
    62d8:	ffffc097          	auipc	ra,0xffffc
    62dc:	8b0080e7          	jalr	-1872(ra) # 1b88 <fl_closedir>
    62e0:	000069b7          	lui	s3,0x6
    62e4:	1c49a783          	lw	a5,452(s3) # 61c4 <item_count>
    62e8:	06079c63          	bnez	a5,6360 <main+0x16c>
    62ec:	00000593          	li	a1,0
    62f0:	00000513          	li	a0,0
    62f4:	ffffb097          	auipc	ra,0xffffb
    62f8:	9a0080e7          	jalr	-1632(ra) # c94 <display_set_cursor>
    62fc:	00000593          	li	a1,0
    6300:	0ff00513          	li	a0,255
    6304:	ffffb097          	auipc	ra,0xffffb
    6308:	9a4080e7          	jalr	-1628(ra) # ca8 <display_set_front_back_color>
    630c:	00006537          	lui	a0,0x6
    6310:	00050513          	mv	a0,a0
    6314:	ffffb097          	auipc	ra,0xffffb
    6318:	cf8080e7          	jalr	-776(ra) # 100c <printf>
    631c:	ffffb097          	auipc	ra,0xffffb
    6320:	ac4080e7          	jalr	-1340(ra) # de0 <display_refresh>
    6324:	0000006f          	j	6324 <main+0x130>
    6328:	11414783          	lbu	a5,276(sp)
    632c:	f8079ae3          	bnez	a5,62c0 <main+0xcc>
    6330:	1c44a783          	lw	a5,452(s1) # 61c4 <item_count>
    6334:	01400613          	li	a2,20
    6338:	01010593          	addi	a1,sp,16
    633c:	00279513          	slli	a0,a5,0x2
    6340:	00f50533          	add	a0,a0,a5
    6344:	00451513          	slli	a0,a0,0x4
    6348:	00178713          	addi	a4,a5,1
    634c:	00a40533          	add	a0,s0,a0
    6350:	1ce4a223          	sw	a4,452(s1)
    6354:	ffffa097          	auipc	ra,0xffffa
    6358:	5e0080e7          	jalr	1504(ra) # 934 <memcpy>
    635c:	f65ff06f          	j	62c0 <main+0xcc>
    6360:	000067b7          	lui	a5,0x6
    6364:	d7c7a483          	lw	s1,-644(a5) # 5d7c <BUTTONS>
    6368:	000067b7          	lui	a5,0x6
    636c:	d907a783          	lw	a5,-624(a5) # 5d90 <LEDS>
    6370:	00006ab7          	lui	s5,0x6
    6374:	00000913          	li	s2,0
    6378:	00000413          	li	s0,0
    637c:	00006b37          	lui	s6,0x6
    6380:	47ca8b93          	addi	s7,s5,1148 # 647c <items>
    6384:	00006c37          	lui	s8,0x6
    6388:	00078d93          	mv	s11,a5
    638c:	00000593          	li	a1,0
    6390:	00000513          	li	a0,0
    6394:	ffffb097          	auipc	ra,0xffffb
    6398:	900080e7          	jalr	-1792(ra) # c94 <display_set_cursor>
    639c:	0ff97593          	zext.b	a1,s2
    63a0:	07f58513          	addi	a0,a1,127
    63a4:	0ff57513          	zext.b	a0,a0
    63a8:	ffffb097          	auipc	ra,0xffffb
    63ac:	900080e7          	jalr	-1792(ra) # ca8 <display_set_front_back_color>
    63b0:	018b0513          	addi	a0,s6,24 # 6018 <font+0x284>
    63b4:	00790913          	addi	s2,s2,7
    63b8:	ffffb097          	auipc	ra,0xffffb
    63bc:	c54080e7          	jalr	-940(ra) # 100c <printf>
    63c0:	47ca8d13          	addi	s10,s5,1148
    63c4:	00000c93          	li	s9,0
    63c8:	1c49a783          	lw	a5,452(s3)
    63cc:	06fcc863          	blt	s9,a5,643c <main+0x248>
    63d0:	ffffb097          	auipc	ra,0xffffb
    63d4:	a10080e7          	jalr	-1520(ra) # de0 <display_refresh>
    63d8:	0004a783          	lw	a5,0(s1)
    63dc:	0087f793          	andi	a5,a5,8
    63e0:	00078463          	beqz	a5,63e8 <main+0x1f4>
    63e4:	00140413          	addi	s0,s0,1
    63e8:	0004a783          	lw	a5,0(s1)
    63ec:	0107f793          	andi	a5,a5,16
    63f0:	00078463          	beqz	a5,63f8 <main+0x204>
    63f4:	fff40413          	addi	s0,s0,-1
    63f8:	0004a783          	lw	a5,0(s1)
    63fc:	0407f793          	andi	a5,a5,64
    6400:	02078263          	beqz	a5,6424 <main+0x230>
    6404:	00241593          	slli	a1,s0,0x2
    6408:	008585b3          	add	a1,a1,s0
    640c:	00459593          	slli	a1,a1,0x4
    6410:	00bb85b3          	add	a1,s7,a1
    6414:	ff8a0513          	addi	a0,s4,-8
    6418:	ffffa097          	auipc	ra,0xffffa
    641c:	c7c080e7          	jalr	-900(ra) # 94 <openMusic>
    6420:	000da023          	sw	zero,0(s11)
    6424:	1c49a783          	lw	a5,452(s3)
    6428:	00045463          	bgez	s0,6430 <main+0x23c>
    642c:	fff78413          	addi	s0,a5,-1
    6430:	f4f44ee3          	blt	s0,a5,638c <main+0x198>
    6434:	00000413          	li	s0,0
    6438:	f55ff06f          	j	638c <main+0x198>
    643c:	03941a63          	bne	s0,s9,6470 <main+0x27c>
    6440:	0ff00593          	li	a1,255
    6444:	00000513          	li	a0,0
    6448:	ffffb097          	auipc	ra,0xffffb
    644c:	860080e7          	jalr	-1952(ra) # ca8 <display_set_front_back_color>
    6450:	000d0613          	mv	a2,s10
    6454:	000c8593          	mv	a1,s9
    6458:	034c0513          	addi	a0,s8,52 # 6034 <font+0x2a0>
    645c:	ffffb097          	auipc	ra,0xffffb
    6460:	bb0080e7          	jalr	-1104(ra) # 100c <printf>
    6464:	001c8c93          	addi	s9,s9,1
    6468:	050d0d13          	addi	s10,s10,80
    646c:	f5dff06f          	j	63c8 <main+0x1d4>
    6470:	00000593          	li	a1,0
    6474:	0ff00513          	li	a0,255
    6478:	fd1ff06f          	j	6448 <main+0x254>
