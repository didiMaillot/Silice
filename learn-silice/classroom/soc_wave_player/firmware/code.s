
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00006097          	auipc	ra,0x6
       8:	284080e7          	jalr	644(ra) # 6288 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x5538>
      20:	000067b7          	lui	a5,0x6
      24:	00812423          	sw	s0,8(sp)
      28:	e087a403          	lw	s0,-504(a5) # 5e08 <AUDIO>
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
      54:	95c080e7          	jalr	-1700(ra) # 9ac <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	93c080e7          	jalr	-1732(ra) # 9ac <memset>
      78:	00042783          	lw	a5,0(s0)
      7c:	fef48ee3          	beq	s1,a5,78 <clear_audio+0x5c>
      80:	00c12083          	lw	ra,12(sp)
      84:	00812403          	lw	s0,8(sp)
      88:	00412483          	lw	s1,4(sp)
      8c:	01010113          	addi	sp,sp,16
      90:	00008067          	ret

00000094 <openMusic>:
      94:	f5010113          	addi	sp,sp,-176
      98:	000067b7          	lui	a5,0x6
      9c:	0a812423          	sw	s0,168(sp)
      a0:	e247a403          	lw	s0,-476(a5) # 5e24 <LEDS>
      a4:	0a112623          	sw	ra,172(sp)
      a8:	0a912223          	sw	s1,164(sp)
      ac:	0b212023          	sw	s2,160(sp)
      b0:	09312e23          	sw	s3,156(sp)
      b4:	09412c23          	sw	s4,152(sp)
      b8:	09512a23          	sw	s5,148(sp)
      bc:	09612823          	sw	s6,144(sp)
      c0:	09712623          	sw	s7,140(sp)
      c4:	0ff00793          	li	a5,255
      c8:	00f42023          	sw	a5,0(s0)
      cc:	000017b7          	lui	a5,0x1
      d0:	00006737          	lui	a4,0x6
      d4:	d5078793          	addi	a5,a5,-688 # d50 <display_putchar>
      d8:	26f72623          	sw	a5,620(a4) # 626c <f_putchar>
      dc:	00058493          	mv	s1,a1
      e0:	00050913          	mv	s2,a0
      e4:	00001097          	auipc	ra,0x1
      e8:	c38080e7          	jalr	-968(ra) # d1c <display_framebuffer>
      ec:	00004637          	lui	a2,0x4
      f0:	00000593          	li	a1,0
      f4:	00001097          	auipc	ra,0x1
      f8:	8b8080e7          	jalr	-1864(ra) # 9ac <memset>
      fc:	00001097          	auipc	ra,0x1
     100:	d78080e7          	jalr	-648(ra) # e74 <display_refresh>
     104:	00100793          	li	a5,1
     108:	00f42023          	sw	a5,0(s0)
     10c:	00000593          	li	a1,0
     110:	00000513          	li	a0,0
     114:	00001097          	auipc	ra,0x1
     118:	c14080e7          	jalr	-1004(ra) # d28 <display_set_cursor>
     11c:	00000593          	li	a1,0
     120:	0ff00513          	li	a0,255
     124:	00001097          	auipc	ra,0x1
     128:	c18080e7          	jalr	-1000(ra) # d3c <display_set_front_back_color>
     12c:	00001097          	auipc	ra,0x1
     130:	d48080e7          	jalr	-696(ra) # e74 <display_refresh>
     134:	00200793          	li	a5,2
     138:	00f42023          	sw	a5,0(s0)
     13c:	00090593          	mv	a1,s2
     140:	00010513          	mv	a0,sp
     144:	00010023          	sb	zero,0(sp)
     148:	00001097          	auipc	ra,0x1
     14c:	948080e7          	jalr	-1720(ra) # a90 <strcat>
     150:	000065b7          	lui	a1,0x6
     154:	03c58593          	addi	a1,a1,60 # 603c <font+0x214>
     158:	00010513          	mv	a0,sp
     15c:	00001097          	auipc	ra,0x1
     160:	934080e7          	jalr	-1740(ra) # a90 <strcat>
     164:	00048593          	mv	a1,s1
     168:	00010513          	mv	a0,sp
     16c:	00001097          	auipc	ra,0x1
     170:	924080e7          	jalr	-1756(ra) # a90 <strcat>
     174:	00400793          	li	a5,4
     178:	00006537          	lui	a0,0x6
     17c:	00010593          	mv	a1,sp
     180:	00f42023          	sw	a5,0(s0)
     184:	04050513          	addi	a0,a0,64 # 6040 <font+0x218>
     188:	00001097          	auipc	ra,0x1
     18c:	f18080e7          	jalr	-232(ra) # 10a0 <printf>
     190:	00001097          	auipc	ra,0x1
     194:	ce4080e7          	jalr	-796(ra) # e74 <display_refresh>
     198:	000065b7          	lui	a1,0x6
     19c:	04c58593          	addi	a1,a1,76 # 604c <font+0x224>
     1a0:	00010513          	mv	a0,sp
     1a4:	00005097          	auipc	ra,0x5
     1a8:	4e8080e7          	jalr	1256(ra) # 568c <fl_fopen>
     1ac:	04051a63          	bnez	a0,200 <openMusic+0x16c>
     1b0:	00006537          	lui	a0,0x6
     1b4:	00010593          	mv	a1,sp
     1b8:	05050513          	addi	a0,a0,80 # 6050 <font+0x228>
     1bc:	00001097          	auipc	ra,0x1
     1c0:	ee4080e7          	jalr	-284(ra) # 10a0 <printf>
     1c4:	00001097          	auipc	ra,0x1
     1c8:	cb0080e7          	jalr	-848(ra) # e74 <display_refresh>
     1cc:	00800793          	li	a5,8
     1d0:	0ac12083          	lw	ra,172(sp)
     1d4:	00f42023          	sw	a5,0(s0)
     1d8:	0a812403          	lw	s0,168(sp)
     1dc:	0a412483          	lw	s1,164(sp)
     1e0:	0a012903          	lw	s2,160(sp)
     1e4:	09c12983          	lw	s3,156(sp)
     1e8:	09812a03          	lw	s4,152(sp)
     1ec:	09412a83          	lw	s5,148(sp)
     1f0:	09012b03          	lw	s6,144(sp)
     1f4:	08c12b83          	lw	s7,140(sp)
     1f8:	0b010113          	addi	sp,sp,176
     1fc:	00008067          	ret
     200:	0ff00593          	li	a1,255
     204:	00050913          	mv	s2,a0
     208:	00000513          	li	a0,0
     20c:	00001097          	auipc	ra,0x1
     210:	b30080e7          	jalr	-1232(ra) # d3c <display_set_front_back_color>
     214:	00006537          	lui	a0,0x6
     218:	00010593          	mv	a1,sp
     21c:	06450513          	addi	a0,a0,100 # 6064 <font+0x23c>
     220:	00001097          	auipc	ra,0x1
     224:	e80080e7          	jalr	-384(ra) # 10a0 <printf>
     228:	00001097          	auipc	ra,0x1
     22c:	c4c080e7          	jalr	-948(ra) # e74 <display_refresh>
     230:	00000593          	li	a1,0
     234:	0ff00513          	li	a0,255
     238:	00001097          	auipc	ra,0x1
     23c:	b04080e7          	jalr	-1276(ra) # d3c <display_set_front_back_color>
     240:	00006537          	lui	a0,0x6
     244:	07c50513          	addi	a0,a0,124 # 607c <font+0x254>
     248:	00001097          	auipc	ra,0x1
     24c:	e58080e7          	jalr	-424(ra) # 10a0 <printf>
     250:	00001097          	auipc	ra,0x1
     254:	c24080e7          	jalr	-988(ra) # e74 <display_refresh>
     258:	01000793          	li	a5,16
     25c:	00f42023          	sw	a5,0(s0)
     260:	000067b7          	lui	a5,0x6
     264:	e087aa03          	lw	s4,-504(a5) # 5e08 <AUDIO>
     268:	00000993          	li	s3,0
     26c:	00100493          	li	s1,1
     270:	1ff00b13          	li	s6,511
     274:	08000b93          	li	s7,128
     278:	000a2a83          	lw	s5,0(s4)
     27c:	00090693          	mv	a3,s2
     280:	20000613          	li	a2,512
     284:	00100593          	li	a1,1
     288:	000a8513          	mv	a0,s5
     28c:	00005097          	auipc	ra,0x5
     290:	a60080e7          	jalr	-1440(ra) # 4cec <fl_fread>
     294:	02ab5c63          	bge	s6,a0,2cc <openMusic+0x238>
     298:	000a2783          	lw	a5,0(s4)
     29c:	fefa8ee3          	beq	s5,a5,298 <openMusic+0x204>
     2a0:	01748663          	beq	s1,s7,2ac <openMusic+0x218>
     2a4:	00100793          	li	a5,1
     2a8:	00f49663          	bne	s1,a5,2b4 <openMusic+0x220>
     2ac:	00100793          	li	a5,1
     2b0:	413789b3          	sub	s3,a5,s3
     2b4:	00098863          	beqz	s3,2c4 <openMusic+0x230>
     2b8:	00149493          	slli	s1,s1,0x1
     2bc:	00942023          	sw	s1,0(s0)
     2c0:	fb9ff06f          	j	278 <openMusic+0x1e4>
     2c4:	4014d493          	srai	s1,s1,0x1
     2c8:	ff5ff06f          	j	2bc <openMusic+0x228>
     2cc:	00090513          	mv	a0,s2
     2d0:	00005097          	auipc	ra,0x5
     2d4:	93c080e7          	jalr	-1732(ra) # 4c0c <fl_fclose>
     2d8:	02000793          	li	a5,32
     2dc:	ef5ff06f          	j	1d0 <openMusic+0x13c>

000002e0 <pause>:
     2e0:	c0002773          	rdcycle	a4
     2e4:	c00027f3          	rdcycle	a5
     2e8:	40e787b3          	sub	a5,a5,a4
     2ec:	fea7ece3          	bltu	a5,a0,2e4 <pause+0x4>
     2f0:	00008067          	ret

000002f4 <sdcard_idle>:
     2f4:	00008067          	ret

000002f8 <sdcard_select>:
     2f8:	000067b7          	lui	a5,0x6
     2fc:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
     300:	00200713          	li	a4,2
     304:	00e7a023          	sw	a4,0(a5)
     308:	00008067          	ret

0000030c <sdcard_ponder>:
     30c:	000066b7          	lui	a3,0x6
     310:	e146a603          	lw	a2,-492(a3) # 5e14 <SDCARD>
     314:	01000793          	li	a5,16
     318:	00000713          	li	a4,0
     31c:	00100693          	li	a3,1
     320:	00676593          	ori	a1,a4,6
     324:	00b62023          	sw	a1,0(a2) # 4000 <fatfs_list_directory_next+0xec>
     328:	40e68733          	sub	a4,a3,a4
     32c:	00000013          	nop
     330:	fff78793          	addi	a5,a5,-1
     334:	fe0796e3          	bnez	a5,320 <sdcard_ponder+0x14>
     338:	00008067          	ret

0000033c <sdcard_unselect>:
     33c:	000067b7          	lui	a5,0x6
     340:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
     344:	00600713          	li	a4,6
     348:	00e7a023          	sw	a4,0(a5)
     34c:	00008067          	ret

00000350 <sdcard_send>:
     350:	000067b7          	lui	a5,0x6
     354:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
     358:	00655713          	srli	a4,a0,0x6
     35c:	00277713          	andi	a4,a4,2
     360:	00e7a023          	sw	a4,0(a5)
     364:	00176713          	ori	a4,a4,1
     368:	00e7a023          	sw	a4,0(a5)
     36c:	00555713          	srli	a4,a0,0x5
     370:	00277713          	andi	a4,a4,2
     374:	00e7a023          	sw	a4,0(a5)
     378:	00176713          	ori	a4,a4,1
     37c:	00e7a023          	sw	a4,0(a5)
     380:	00455713          	srli	a4,a0,0x4
     384:	00277713          	andi	a4,a4,2
     388:	00e7a023          	sw	a4,0(a5)
     38c:	00176713          	ori	a4,a4,1
     390:	00e7a023          	sw	a4,0(a5)
     394:	00355713          	srli	a4,a0,0x3
     398:	00277713          	andi	a4,a4,2
     39c:	00e7a023          	sw	a4,0(a5)
     3a0:	00176713          	ori	a4,a4,1
     3a4:	00e7a023          	sw	a4,0(a5)
     3a8:	00255713          	srli	a4,a0,0x2
     3ac:	00277713          	andi	a4,a4,2
     3b0:	00e7a023          	sw	a4,0(a5)
     3b4:	00176713          	ori	a4,a4,1
     3b8:	00e7a023          	sw	a4,0(a5)
     3bc:	00155713          	srli	a4,a0,0x1
     3c0:	00277713          	andi	a4,a4,2
     3c4:	00e7a023          	sw	a4,0(a5)
     3c8:	00176713          	ori	a4,a4,1
     3cc:	00e7a023          	sw	a4,0(a5)
     3d0:	00257713          	andi	a4,a0,2
     3d4:	00e7a023          	sw	a4,0(a5)
     3d8:	00151513          	slli	a0,a0,0x1
     3dc:	00176713          	ori	a4,a4,1
     3e0:	00e7a023          	sw	a4,0(a5)
     3e4:	00257513          	andi	a0,a0,2
     3e8:	00a7a023          	sw	a0,0(a5)
     3ec:	00156513          	ori	a0,a0,1
     3f0:	00a7a023          	sw	a0,0(a5)
     3f4:	00200713          	li	a4,2
     3f8:	00e7a023          	sw	a4,0(a5)
     3fc:	000067b7          	lui	a5,0x6
     400:	25c7a783          	lw	a5,604(a5) # 625c <sdcard_while_loading_callback>
     404:	00078067          	jr	a5

00000408 <sdcard_read>:
     408:	fd010113          	addi	sp,sp,-48
     40c:	fff50793          	addi	a5,a0,-1
     410:	01312e23          	sw	s3,28(sp)
     414:	00100993          	li	s3,1
     418:	00f999b3          	sll	s3,s3,a5
     41c:	000067b7          	lui	a5,0x6
     420:	01512a23          	sw	s5,20(sp)
     424:	e147aa83          	lw	s5,-492(a5) # 5e14 <SDCARD>
     428:	02812423          	sw	s0,40(sp)
     42c:	02912223          	sw	s1,36(sp)
     430:	03212023          	sw	s2,32(sp)
     434:	01412c23          	sw	s4,24(sp)
     438:	01612823          	sw	s6,16(sp)
     43c:	01712623          	sw	s7,12(sp)
     440:	01812423          	sw	s8,8(sp)
     444:	02112623          	sw	ra,44(sp)
     448:	00050493          	mv	s1,a0
     44c:	00058a13          	mv	s4,a1
     450:	0ff00413          	li	s0,255
     454:	00000913          	li	s2,0
     458:	00300b13          	li	s6,3
     45c:	00200b93          	li	s7,2
     460:	00006c37          	lui	s8,0x6
     464:	040a0063          	beqz	s4,4a4 <sdcard_read+0x9c>
     468:	0089f7b3          	and	a5,s3,s0
     46c:	02079e63          	bnez	a5,4a8 <sdcard_read+0xa0>
     470:	02c12083          	lw	ra,44(sp)
     474:	0ff47513          	zext.b	a0,s0
     478:	02812403          	lw	s0,40(sp)
     47c:	02412483          	lw	s1,36(sp)
     480:	02012903          	lw	s2,32(sp)
     484:	01c12983          	lw	s3,28(sp)
     488:	01812a03          	lw	s4,24(sp)
     48c:	01412a83          	lw	s5,20(sp)
     490:	01012b03          	lw	s6,16(sp)
     494:	00c12b83          	lw	s7,12(sp)
     498:	00812c03          	lw	s8,8(sp)
     49c:	03010113          	addi	sp,sp,48
     4a0:	00008067          	ret
     4a4:	fc9956e3          	bge	s2,s1,470 <sdcard_read+0x68>
     4a8:	016aa023          	sw	s6,0(s5)
     4ac:	017aa023          	sw	s7,0(s5)
     4b0:	000aa783          	lw	a5,0(s5)
     4b4:	00141413          	slli	s0,s0,0x1
     4b8:	00190913          	addi	s2,s2,1
     4bc:	00f46433          	or	s0,s0,a5
     4c0:	25cc2783          	lw	a5,604(s8) # 625c <sdcard_while_loading_callback>
     4c4:	000780e7          	jalr	a5
     4c8:	f9dff06f          	j	464 <sdcard_read+0x5c>

000004cc <sdcard_get>:
     4cc:	fe010113          	addi	sp,sp,-32
     4d0:	00112e23          	sw	ra,28(sp)
     4d4:	00812c23          	sw	s0,24(sp)
     4d8:	00912a23          	sw	s1,20(sp)
     4dc:	00050413          	mv	s0,a0
     4e0:	00b12623          	sw	a1,12(sp)
     4e4:	00000097          	auipc	ra,0x0
     4e8:	e14080e7          	jalr	-492(ra) # 2f8 <sdcard_select>
     4ec:	00c12583          	lw	a1,12(sp)
     4f0:	00040513          	mv	a0,s0
     4f4:	00100493          	li	s1,1
     4f8:	00000097          	auipc	ra,0x0
     4fc:	f10080e7          	jalr	-240(ra) # 408 <sdcard_read>
     500:	00345413          	srli	s0,s0,0x3
     504:	0284c463          	blt	s1,s0,52c <sdcard_get+0x60>
     508:	00a12623          	sw	a0,12(sp)
     50c:	00000097          	auipc	ra,0x0
     510:	e30080e7          	jalr	-464(ra) # 33c <sdcard_unselect>
     514:	01c12083          	lw	ra,28(sp)
     518:	01812403          	lw	s0,24(sp)
     51c:	00c12503          	lw	a0,12(sp)
     520:	01412483          	lw	s1,20(sp)
     524:	02010113          	addi	sp,sp,32
     528:	00008067          	ret
     52c:	00000593          	li	a1,0
     530:	00800513          	li	a0,8
     534:	00000097          	auipc	ra,0x0
     538:	ed4080e7          	jalr	-300(ra) # 408 <sdcard_read>
     53c:	00148493          	addi	s1,s1,1
     540:	fc5ff06f          	j	504 <sdcard_get+0x38>

00000544 <sdcard_cmd>:
     544:	ff010113          	addi	sp,sp,-16
     548:	00812423          	sw	s0,8(sp)
     54c:	00912223          	sw	s1,4(sp)
     550:	01212023          	sw	s2,0(sp)
     554:	00112623          	sw	ra,12(sp)
     558:	00050493          	mv	s1,a0
     55c:	00000413          	li	s0,0
     560:	00000097          	auipc	ra,0x0
     564:	d98080e7          	jalr	-616(ra) # 2f8 <sdcard_select>
     568:	00600913          	li	s2,6
     56c:	008487b3          	add	a5,s1,s0
     570:	0007c503          	lbu	a0,0(a5)
     574:	00140413          	addi	s0,s0,1
     578:	00000097          	auipc	ra,0x0
     57c:	dd8080e7          	jalr	-552(ra) # 350 <sdcard_send>
     580:	ff2416e3          	bne	s0,s2,56c <sdcard_cmd+0x28>
     584:	00812403          	lw	s0,8(sp)
     588:	00c12083          	lw	ra,12(sp)
     58c:	00412483          	lw	s1,4(sp)
     590:	00012903          	lw	s2,0(sp)
     594:	01010113          	addi	sp,sp,16
     598:	00000317          	auipc	t1,0x0
     59c:	da430067          	jr	-604(t1) # 33c <sdcard_unselect>

000005a0 <sdcard_start_sector>:
     5a0:	ff010113          	addi	sp,sp,-16
     5a4:	00112623          	sw	ra,12(sp)
     5a8:	00812423          	sw	s0,8(sp)
     5ac:	00050413          	mv	s0,a0
     5b0:	00000097          	auipc	ra,0x0
     5b4:	d48080e7          	jalr	-696(ra) # 2f8 <sdcard_select>
     5b8:	05100513          	li	a0,81
     5bc:	00000097          	auipc	ra,0x0
     5c0:	d94080e7          	jalr	-620(ra) # 350 <sdcard_send>
     5c4:	01845513          	srli	a0,s0,0x18
     5c8:	00000097          	auipc	ra,0x0
     5cc:	d88080e7          	jalr	-632(ra) # 350 <sdcard_send>
     5d0:	41045513          	srai	a0,s0,0x10
     5d4:	0ff57513          	zext.b	a0,a0
     5d8:	00000097          	auipc	ra,0x0
     5dc:	d78080e7          	jalr	-648(ra) # 350 <sdcard_send>
     5e0:	40845513          	srai	a0,s0,0x8
     5e4:	0ff57513          	zext.b	a0,a0
     5e8:	00000097          	auipc	ra,0x0
     5ec:	d68080e7          	jalr	-664(ra) # 350 <sdcard_send>
     5f0:	0ff47513          	zext.b	a0,s0
     5f4:	00000097          	auipc	ra,0x0
     5f8:	d5c080e7          	jalr	-676(ra) # 350 <sdcard_send>
     5fc:	05500513          	li	a0,85
     600:	00000097          	auipc	ra,0x0
     604:	d50080e7          	jalr	-688(ra) # 350 <sdcard_send>
     608:	00000097          	auipc	ra,0x0
     60c:	d34080e7          	jalr	-716(ra) # 33c <sdcard_unselect>
     610:	00812403          	lw	s0,8(sp)
     614:	00c12083          	lw	ra,12(sp)
     618:	00100593          	li	a1,1
     61c:	00800513          	li	a0,8
     620:	01010113          	addi	sp,sp,16
     624:	00000317          	auipc	t1,0x0
     628:	ea830067          	jr	-344(t1) # 4cc <sdcard_get>

0000062c <sdcard_read_sector>:
     62c:	ff010113          	addi	sp,sp,-16
     630:	00812423          	sw	s0,8(sp)
     634:	00112623          	sw	ra,12(sp)
     638:	00912223          	sw	s1,4(sp)
     63c:	01212023          	sw	s2,0(sp)
     640:	00058413          	mv	s0,a1
     644:	00000097          	auipc	ra,0x0
     648:	f5c080e7          	jalr	-164(ra) # 5a0 <sdcard_start_sector>
     64c:	04051863          	bnez	a0,69c <sdcard_read_sector+0x70>
     650:	00100593          	li	a1,1
     654:	00100513          	li	a0,1
     658:	00000097          	auipc	ra,0x0
     65c:	e74080e7          	jalr	-396(ra) # 4cc <sdcard_get>
     660:	00000493          	li	s1,0
     664:	20000913          	li	s2,512
     668:	00000593          	li	a1,0
     66c:	00800513          	li	a0,8
     670:	00000097          	auipc	ra,0x0
     674:	e5c080e7          	jalr	-420(ra) # 4cc <sdcard_get>
     678:	009407b3          	add	a5,s0,s1
     67c:	00a78023          	sb	a0,0(a5)
     680:	00148493          	addi	s1,s1,1
     684:	ff2492e3          	bne	s1,s2,668 <sdcard_read_sector+0x3c>
     688:	00100593          	li	a1,1
     68c:	01000513          	li	a0,16
     690:	20040413          	addi	s0,s0,512
     694:	00000097          	auipc	ra,0x0
     698:	e38080e7          	jalr	-456(ra) # 4cc <sdcard_get>
     69c:	00c12083          	lw	ra,12(sp)
     6a0:	00040513          	mv	a0,s0
     6a4:	00812403          	lw	s0,8(sp)
     6a8:	00412483          	lw	s1,4(sp)
     6ac:	00012903          	lw	s2,0(sp)
     6b0:	01010113          	addi	sp,sp,16
     6b4:	00008067          	ret

000006b8 <sdcard_preinit>:
     6b8:	ff010113          	addi	sp,sp,-16
     6bc:	000067b7          	lui	a5,0x6
     6c0:	00812423          	sw	s0,8(sp)
     6c4:	e147a403          	lw	s0,-492(a5) # 5e14 <SDCARD>
     6c8:	00112623          	sw	ra,12(sp)
     6cc:	00600793          	li	a5,6
     6d0:	01313537          	lui	a0,0x1313
     6d4:	00f42023          	sw	a5,0(s0)
     6d8:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     6dc:	00000097          	auipc	ra,0x0
     6e0:	c04080e7          	jalr	-1020(ra) # 2e0 <pause>
     6e4:	0a000793          	li	a5,160
     6e8:	00000713          	li	a4,0
     6ec:	00100693          	li	a3,1
     6f0:	00676613          	ori	a2,a4,6
     6f4:	00c42023          	sw	a2,0(s0)
     6f8:	fff78793          	addi	a5,a5,-1
     6fc:	40e68733          	sub	a4,a3,a4
     700:	fe0798e3          	bnez	a5,6f0 <sdcard_preinit+0x38>
     704:	00600793          	li	a5,6
     708:	00c12083          	lw	ra,12(sp)
     70c:	00f42023          	sw	a5,0(s0)
     710:	00812403          	lw	s0,8(sp)
     714:	01010113          	addi	sp,sp,16
     718:	00008067          	ret

0000071c <sdcard_init>:
     71c:	fe010113          	addi	sp,sp,-32
     720:	000007b7          	lui	a5,0x0
     724:	00812c23          	sw	s0,24(sp)
     728:	00006737          	lui	a4,0x6
     72c:	2f478793          	addi	a5,a5,756 # 2f4 <sdcard_idle>
     730:	01313437          	lui	s0,0x1313
     734:	01212823          	sw	s2,16(sp)
     738:	01312623          	sw	s3,12(sp)
     73c:	00112e23          	sw	ra,28(sp)
     740:	00912a23          	sw	s1,20(sp)
     744:	24f72e23          	sw	a5,604(a4) # 625c <sdcard_while_loading_callback>
     748:	00006937          	lui	s2,0x6
     74c:	0ff00993          	li	s3,255
     750:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     754:	00000097          	auipc	ra,0x0
     758:	f64080e7          	jalr	-156(ra) # 6b8 <sdcard_preinit>
     75c:	e0090513          	addi	a0,s2,-512 # 5e00 <cmd0>
     760:	00000097          	auipc	ra,0x0
     764:	de4080e7          	jalr	-540(ra) # 544 <sdcard_cmd>
     768:	00100593          	li	a1,1
     76c:	00800513          	li	a0,8
     770:	00000097          	auipc	ra,0x0
     774:	d5c080e7          	jalr	-676(ra) # 4cc <sdcard_get>
     778:	00050493          	mv	s1,a0
     77c:	00000097          	auipc	ra,0x0
     780:	b90080e7          	jalr	-1136(ra) # 30c <sdcard_ponder>
     784:	01349a63          	bne	s1,s3,798 <sdcard_init+0x7c>
     788:	00040513          	mv	a0,s0
     78c:	00000097          	auipc	ra,0x0
     790:	b54080e7          	jalr	-1196(ra) # 2e0 <pause>
     794:	fc1ff06f          	j	754 <sdcard_init+0x38>
     798:	00006537          	lui	a0,0x6
     79c:	df850513          	addi	a0,a0,-520 # 5df8 <cmd8>
     7a0:	00000097          	auipc	ra,0x0
     7a4:	da4080e7          	jalr	-604(ra) # 544 <sdcard_cmd>
     7a8:	00100593          	li	a1,1
     7ac:	02800513          	li	a0,40
     7b0:	00000097          	auipc	ra,0x0
     7b4:	d1c080e7          	jalr	-740(ra) # 4cc <sdcard_get>
     7b8:	001e8437          	lui	s0,0x1e8
     7bc:	00000097          	auipc	ra,0x0
     7c0:	b50080e7          	jalr	-1200(ra) # 30c <sdcard_ponder>
     7c4:	00006937          	lui	s2,0x6
     7c8:	000069b7          	lui	s3,0x6
     7cc:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     7d0:	df090513          	addi	a0,s2,-528 # 5df0 <cmd55>
     7d4:	00000097          	auipc	ra,0x0
     7d8:	d70080e7          	jalr	-656(ra) # 544 <sdcard_cmd>
     7dc:	00100593          	li	a1,1
     7e0:	00800513          	li	a0,8
     7e4:	00000097          	auipc	ra,0x0
     7e8:	ce8080e7          	jalr	-792(ra) # 4cc <sdcard_get>
     7ec:	00000097          	auipc	ra,0x0
     7f0:	b20080e7          	jalr	-1248(ra) # 30c <sdcard_ponder>
     7f4:	de898513          	addi	a0,s3,-536 # 5de8 <acmd41>
     7f8:	00000097          	auipc	ra,0x0
     7fc:	d4c080e7          	jalr	-692(ra) # 544 <sdcard_cmd>
     800:	00100593          	li	a1,1
     804:	00800513          	li	a0,8
     808:	00000097          	auipc	ra,0x0
     80c:	cc4080e7          	jalr	-828(ra) # 4cc <sdcard_get>
     810:	00050493          	mv	s1,a0
     814:	00000097          	auipc	ra,0x0
     818:	af8080e7          	jalr	-1288(ra) # 30c <sdcard_ponder>
     81c:	00048a63          	beqz	s1,830 <sdcard_init+0x114>
     820:	00040513          	mv	a0,s0
     824:	00000097          	auipc	ra,0x0
     828:	abc080e7          	jalr	-1348(ra) # 2e0 <pause>
     82c:	fa5ff06f          	j	7d0 <sdcard_init+0xb4>
     830:	00006537          	lui	a0,0x6
     834:	de050513          	addi	a0,a0,-544 # 5de0 <cmd16>
     838:	00000097          	auipc	ra,0x0
     83c:	d0c080e7          	jalr	-756(ra) # 544 <sdcard_cmd>
     840:	00100593          	li	a1,1
     844:	00800513          	li	a0,8
     848:	00000097          	auipc	ra,0x0
     84c:	c84080e7          	jalr	-892(ra) # 4cc <sdcard_get>
     850:	01812403          	lw	s0,24(sp)
     854:	01c12083          	lw	ra,28(sp)
     858:	01412483          	lw	s1,20(sp)
     85c:	01012903          	lw	s2,16(sp)
     860:	00c12983          	lw	s3,12(sp)
     864:	02010113          	addi	sp,sp,32
     868:	00000317          	auipc	t1,0x0
     86c:	aa430067          	jr	-1372(t1) # 30c <sdcard_ponder>

00000870 <sdcard_readsector>:
     870:	04060863          	beqz	a2,8c0 <sdcard_readsector+0x50>
     874:	ff010113          	addi	sp,sp,-16
     878:	00812423          	sw	s0,8(sp)
     87c:	00912223          	sw	s1,4(sp)
     880:	00112623          	sw	ra,12(sp)
     884:	00050413          	mv	s0,a0
     888:	00a604b3          	add	s1,a2,a0
     88c:	00941e63          	bne	s0,s1,8a8 <sdcard_readsector+0x38>
     890:	00c12083          	lw	ra,12(sp)
     894:	00812403          	lw	s0,8(sp)
     898:	00412483          	lw	s1,4(sp)
     89c:	00100513          	li	a0,1
     8a0:	01010113          	addi	sp,sp,16
     8a4:	00008067          	ret
     8a8:	00040513          	mv	a0,s0
     8ac:	00000097          	auipc	ra,0x0
     8b0:	d80080e7          	jalr	-640(ra) # 62c <sdcard_read_sector>
     8b4:	00050593          	mv	a1,a0
     8b8:	00140413          	addi	s0,s0,1
     8bc:	fd1ff06f          	j	88c <sdcard_readsector+0x1c>
     8c0:	00000513          	li	a0,0
     8c4:	00008067          	ret

000008c8 <sdcard_writesector>:
     8c8:	00000513          	li	a0,0
     8cc:	00008067          	ret

000008d0 <__divsi3>:
     8d0:	06054063          	bltz	a0,930 <__umodsi3+0x10>
     8d4:	0605c663          	bltz	a1,940 <__umodsi3+0x20>

000008d8 <__udivsi3>:
     8d8:	00058613          	mv	a2,a1
     8dc:	00050593          	mv	a1,a0
     8e0:	fff00513          	li	a0,-1
     8e4:	02060c63          	beqz	a2,91c <__udivsi3+0x44>
     8e8:	00100693          	li	a3,1
     8ec:	00b67a63          	bgeu	a2,a1,900 <__udivsi3+0x28>
     8f0:	00c05863          	blez	a2,900 <__udivsi3+0x28>
     8f4:	00161613          	slli	a2,a2,0x1
     8f8:	00169693          	slli	a3,a3,0x1
     8fc:	feb66ae3          	bltu	a2,a1,8f0 <__udivsi3+0x18>
     900:	00000513          	li	a0,0
     904:	00c5e663          	bltu	a1,a2,910 <__udivsi3+0x38>
     908:	40c585b3          	sub	a1,a1,a2
     90c:	00d56533          	or	a0,a0,a3
     910:	0016d693          	srli	a3,a3,0x1
     914:	00165613          	srli	a2,a2,0x1
     918:	fe0696e3          	bnez	a3,904 <__udivsi3+0x2c>
     91c:	00008067          	ret

00000920 <__umodsi3>:
     920:	00008293          	mv	t0,ra
     924:	fb5ff0ef          	jal	ra,8d8 <__udivsi3>
     928:	00058513          	mv	a0,a1
     92c:	00028067          	jr	t0
     930:	40a00533          	neg	a0,a0
     934:	0005d863          	bgez	a1,944 <__umodsi3+0x24>
     938:	40b005b3          	neg	a1,a1
     93c:	f95ff06f          	j	8d0 <__divsi3>
     940:	40b005b3          	neg	a1,a1
     944:	00008293          	mv	t0,ra
     948:	f89ff0ef          	jal	ra,8d0 <__divsi3>
     94c:	40a00533          	neg	a0,a0
     950:	00028067          	jr	t0

00000954 <__modsi3>:
     954:	00008293          	mv	t0,ra
     958:	0005ca63          	bltz	a1,96c <__modsi3+0x18>
     95c:	00054c63          	bltz	a0,974 <__modsi3+0x20>
     960:	f79ff0ef          	jal	ra,8d8 <__udivsi3>
     964:	00058513          	mv	a0,a1
     968:	00028067          	jr	t0
     96c:	40b005b3          	neg	a1,a1
     970:	fe0558e3          	bgez	a0,960 <__modsi3+0xc>
     974:	40a00533          	neg	a0,a0
     978:	f61ff0ef          	jal	ra,8d8 <__udivsi3>
     97c:	40b00533          	neg	a0,a1
     980:	00028067          	jr	t0

00000984 <uart_putchar>:
     984:	000067b7          	lui	a5,0x6
     988:	e187a783          	lw	a5,-488(a5) # 5e18 <UART>
     98c:	00a7a023          	sw	a0,0(a5)
     990:	c00026f3          	rdcycle	a3
     994:	000027b7          	lui	a5,0x2
     998:	70f78793          	addi	a5,a5,1807 # 270f <_check_file_open+0x3>
     99c:	c0002773          	rdcycle	a4
     9a0:	40d70733          	sub	a4,a4,a3
     9a4:	fee7fce3          	bgeu	a5,a4,99c <uart_putchar+0x18>
     9a8:	00008067          	ret

000009ac <memset>:
     9ac:	00c50633          	add	a2,a0,a2
     9b0:	00050793          	mv	a5,a0
     9b4:	00c79463          	bne	a5,a2,9bc <memset+0x10>
     9b8:	00008067          	ret
     9bc:	00178793          	addi	a5,a5,1
     9c0:	feb78fa3          	sb	a1,-1(a5)
     9c4:	ff1ff06f          	j	9b4 <memset+0x8>

000009c8 <memcpy>:
     9c8:	00000793          	li	a5,0
     9cc:	00c79463          	bne	a5,a2,9d4 <memcpy+0xc>
     9d0:	00008067          	ret
     9d4:	00f58733          	add	a4,a1,a5
     9d8:	00074683          	lbu	a3,0(a4)
     9dc:	00f50733          	add	a4,a0,a5
     9e0:	00178793          	addi	a5,a5,1
     9e4:	00d70023          	sb	a3,0(a4)
     9e8:	fe5ff06f          	j	9cc <memcpy+0x4>

000009ec <strlen>:
     9ec:	00050793          	mv	a5,a0
     9f0:	00000513          	li	a0,0
     9f4:	00a78733          	add	a4,a5,a0
     9f8:	00074703          	lbu	a4,0(a4)
     9fc:	00071463          	bnez	a4,a04 <strlen+0x18>
     a00:	00008067          	ret
     a04:	00150513          	addi	a0,a0,1
     a08:	fedff06f          	j	9f4 <strlen+0x8>

00000a0c <strncmp>:
     a0c:	00000793          	li	a5,0
     a10:	00c79663          	bne	a5,a2,a1c <strncmp+0x10>
     a14:	00000513          	li	a0,0
     a18:	00008067          	ret
     a1c:	00f50733          	add	a4,a0,a5
     a20:	00074683          	lbu	a3,0(a4)
     a24:	00f58733          	add	a4,a1,a5
     a28:	00074703          	lbu	a4,0(a4)
     a2c:	00e6e863          	bltu	a3,a4,a3c <strncmp+0x30>
     a30:	00d76a63          	bltu	a4,a3,a44 <strncmp+0x38>
     a34:	00178793          	addi	a5,a5,1
     a38:	fd9ff06f          	j	a10 <strncmp+0x4>
     a3c:	fff00513          	li	a0,-1
     a40:	00008067          	ret
     a44:	00100513          	li	a0,1
     a48:	00008067          	ret

00000a4c <strncpy>:
     a4c:	00000793          	li	a5,0
     a50:	00f61463          	bne	a2,a5,a58 <strncpy+0xc>
     a54:	00008067          	ret
     a58:	00f58733          	add	a4,a1,a5
     a5c:	00074683          	lbu	a3,0(a4)
     a60:	00f50733          	add	a4,a0,a5
     a64:	00178793          	addi	a5,a5,1
     a68:	00d70023          	sb	a3,0(a4)
     a6c:	fe5ff06f          	j	a50 <strncpy+0x4>

00000a70 <strcpy>:
     a70:	0005c783          	lbu	a5,0(a1)
     a74:	00079663          	bnez	a5,a80 <strcpy+0x10>
     a78:	00050023          	sb	zero,0(a0)
     a7c:	00008067          	ret
     a80:	00150513          	addi	a0,a0,1
     a84:	00158593          	addi	a1,a1,1
     a88:	fef50fa3          	sb	a5,-1(a0)
     a8c:	fe5ff06f          	j	a70 <strcpy>

00000a90 <strcat>:
     a90:	00050793          	mv	a5,a0
     a94:	0007c683          	lbu	a3,0(a5)
     a98:	00078713          	mv	a4,a5
     a9c:	00178793          	addi	a5,a5,1
     aa0:	fe069ae3          	bnez	a3,a94 <strcat+0x4>
     aa4:	0005c783          	lbu	a5,0(a1)
     aa8:	00158593          	addi	a1,a1,1
     aac:	00170713          	addi	a4,a4,1
     ab0:	fef70fa3          	sb	a5,-1(a4)
     ab4:	fe0798e3          	bnez	a5,aa4 <strcat+0x14>
     ab8:	00008067          	ret

00000abc <oled_wait>:
     abc:	00000013          	nop
     ac0:	00000013          	nop
     ac4:	00000013          	nop
     ac8:	00000013          	nop
     acc:	00000013          	nop
     ad0:	00000013          	nop
     ad4:	00000013          	nop
     ad8:	00008067          	ret

00000adc <oled_init_mode>:
     adc:	000067b7          	lui	a5,0x6
     ae0:	e1c7a703          	lw	a4,-484(a5) # 5e1c <OLED_RST>
     ae4:	ff010113          	addi	sp,sp,-16
     ae8:	00912223          	sw	s1,4(sp)
     aec:	00112623          	sw	ra,12(sp)
     af0:	00812423          	sw	s0,8(sp)
     af4:	00072023          	sw	zero,0(a4)
     af8:	00050493          	mv	s1,a0
     afc:	00040737          	lui	a4,0x40
     b00:	00000013          	nop
     b04:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     b08:	fe071ce3          	bnez	a4,b00 <oled_init_mode+0x24>
     b0c:	e1c7a703          	lw	a4,-484(a5)
     b10:	00100693          	li	a3,1
     b14:	00d72023          	sw	a3,0(a4)
     b18:	00040737          	lui	a4,0x40
     b1c:	00000013          	nop
     b20:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     b24:	fe071ce3          	bnez	a4,b1c <oled_init_mode+0x40>
     b28:	e1c7a783          	lw	a5,-484(a5)
     b2c:	0007a023          	sw	zero,0(a5)
     b30:	000407b7          	lui	a5,0x40
     b34:	00000013          	nop
     b38:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     b3c:	fe079ce3          	bnez	a5,b34 <oled_init_mode+0x58>
     b40:	00006737          	lui	a4,0x6
     b44:	e2072783          	lw	a5,-480(a4) # 5e20 <OLED>
     b48:	2af00693          	li	a3,687
     b4c:	00d7a023          	sw	a3,0(a5)
     b50:	000407b7          	lui	a5,0x40
     b54:	00000013          	nop
     b58:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     b5c:	fe079ce3          	bnez	a5,b54 <oled_init_mode+0x78>
     b60:	e2072403          	lw	s0,-480(a4)
     b64:	2a000793          	li	a5,672
     b68:	00f42023          	sw	a5,0(s0)
     b6c:	00000097          	auipc	ra,0x0
     b70:	f50080e7          	jalr	-176(ra) # abc <oled_wait>
     b74:	4a000793          	li	a5,1184
     b78:	00048463          	beqz	s1,b80 <oled_init_mode+0xa4>
     b7c:	42000793          	li	a5,1056
     b80:	00f42023          	sw	a5,0(s0)
     b84:	00000097          	auipc	ra,0x0
     b88:	f38080e7          	jalr	-200(ra) # abc <oled_wait>
     b8c:	2fd00793          	li	a5,765
     b90:	00f42023          	sw	a5,0(s0)
     b94:	00000097          	auipc	ra,0x0
     b98:	f28080e7          	jalr	-216(ra) # abc <oled_wait>
     b9c:	4b100793          	li	a5,1201
     ba0:	00f42023          	sw	a5,0(s0)
     ba4:	00000097          	auipc	ra,0x0
     ba8:	f18080e7          	jalr	-232(ra) # abc <oled_wait>
     bac:	2a200793          	li	a5,674
     bb0:	00f42023          	sw	a5,0(s0)
     bb4:	00000097          	auipc	ra,0x0
     bb8:	f08080e7          	jalr	-248(ra) # abc <oled_wait>
     bbc:	40000793          	li	a5,1024
     bc0:	00f42023          	sw	a5,0(s0)
     bc4:	00812403          	lw	s0,8(sp)
     bc8:	00c12083          	lw	ra,12(sp)
     bcc:	00412483          	lw	s1,4(sp)
     bd0:	01010113          	addi	sp,sp,16
     bd4:	00000317          	auipc	t1,0x0
     bd8:	ee830067          	jr	-280(t1) # abc <oled_wait>

00000bdc <oled_init>:
     bdc:	00000513          	li	a0,0
     be0:	00000317          	auipc	t1,0x0
     be4:	efc30067          	jr	-260(t1) # adc <oled_init_mode>

00000be8 <oled_fullscreen>:
     be8:	ff010113          	addi	sp,sp,-16
     bec:	000067b7          	lui	a5,0x6
     bf0:	00812423          	sw	s0,8(sp)
     bf4:	e207a403          	lw	s0,-480(a5) # 5e20 <OLED>
     bf8:	00112623          	sw	ra,12(sp)
     bfc:	00912223          	sw	s1,4(sp)
     c00:	01212023          	sw	s2,0(sp)
     c04:	21500793          	li	a5,533
     c08:	00f42023          	sw	a5,0(s0)
     c0c:	40000913          	li	s2,1024
     c10:	00000097          	auipc	ra,0x0
     c14:	eac080e7          	jalr	-340(ra) # abc <oled_wait>
     c18:	47f00493          	li	s1,1151
     c1c:	01242023          	sw	s2,0(s0)
     c20:	00000097          	auipc	ra,0x0
     c24:	e9c080e7          	jalr	-356(ra) # abc <oled_wait>
     c28:	00942023          	sw	s1,0(s0)
     c2c:	00000097          	auipc	ra,0x0
     c30:	e90080e7          	jalr	-368(ra) # abc <oled_wait>
     c34:	27500793          	li	a5,629
     c38:	00f42023          	sw	a5,0(s0)
     c3c:	00000097          	auipc	ra,0x0
     c40:	e80080e7          	jalr	-384(ra) # abc <oled_wait>
     c44:	01242023          	sw	s2,0(s0)
     c48:	00000097          	auipc	ra,0x0
     c4c:	e74080e7          	jalr	-396(ra) # abc <oled_wait>
     c50:	00942023          	sw	s1,0(s0)
     c54:	00000097          	auipc	ra,0x0
     c58:	e68080e7          	jalr	-408(ra) # abc <oled_wait>
     c5c:	25c00793          	li	a5,604
     c60:	00f42023          	sw	a5,0(s0)
     c64:	00812403          	lw	s0,8(sp)
     c68:	00c12083          	lw	ra,12(sp)
     c6c:	00412483          	lw	s1,4(sp)
     c70:	00012903          	lw	s2,0(sp)
     c74:	01010113          	addi	sp,sp,16
     c78:	00000317          	auipc	t1,0x0
     c7c:	e4430067          	jr	-444(t1) # abc <oled_wait>

00000c80 <oled_clear>:
     c80:	fe010113          	addi	sp,sp,-32
     c84:	000067b7          	lui	a5,0x6
     c88:	01312623          	sw	s3,12(sp)
     c8c:	e207a983          	lw	s3,-480(a5) # 5e20 <OLED>
     c90:	00812c23          	sw	s0,24(sp)
     c94:	01212823          	sw	s2,16(sp)
     c98:	00112e23          	sw	ra,28(sp)
     c9c:	00912a23          	sw	s1,20(sp)
     ca0:	08000913          	li	s2,128
     ca4:	40056413          	ori	s0,a0,1024
     ca8:	08000493          	li	s1,128
     cac:	0089a023          	sw	s0,0(s3)
     cb0:	00000097          	auipc	ra,0x0
     cb4:	e0c080e7          	jalr	-500(ra) # abc <oled_wait>
     cb8:	0089a023          	sw	s0,0(s3)
     cbc:	00000097          	auipc	ra,0x0
     cc0:	e00080e7          	jalr	-512(ra) # abc <oled_wait>
     cc4:	fff48493          	addi	s1,s1,-1
     cc8:	0089a023          	sw	s0,0(s3)
     ccc:	00000097          	auipc	ra,0x0
     cd0:	df0080e7          	jalr	-528(ra) # abc <oled_wait>
     cd4:	fc049ce3          	bnez	s1,cac <oled_clear+0x2c>
     cd8:	fff90913          	addi	s2,s2,-1
     cdc:	fc0916e3          	bnez	s2,ca8 <oled_clear+0x28>
     ce0:	01c12083          	lw	ra,28(sp)
     ce4:	01812403          	lw	s0,24(sp)
     ce8:	01412483          	lw	s1,20(sp)
     cec:	01012903          	lw	s2,16(sp)
     cf0:	00c12983          	lw	s3,12(sp)
     cf4:	02010113          	addi	sp,sp,32
     cf8:	00008067          	ret

00000cfc <oled_wait>:
     cfc:	00000013          	nop
     d00:	00000013          	nop
     d04:	00000013          	nop
     d08:	00000013          	nop
     d0c:	00000013          	nop
     d10:	00000013          	nop
     d14:	00000013          	nop
     d18:	00008067          	ret

00000d1c <display_framebuffer>:
     d1c:	00006537          	lui	a0,0x6
     d20:	65050513          	addi	a0,a0,1616 # 6650 <framebuffer>
     d24:	00008067          	ret

00000d28 <display_set_cursor>:
     d28:	000067b7          	lui	a5,0x6
     d2c:	26a7a423          	sw	a0,616(a5) # 6268 <cursor_x>
     d30:	000067b7          	lui	a5,0x6
     d34:	26b7a223          	sw	a1,612(a5) # 6264 <cursor_y>
     d38:	00008067          	ret

00000d3c <display_set_front_back_color>:
     d3c:	000067b7          	lui	a5,0x6
     d40:	26a780a3          	sb	a0,609(a5) # 6261 <front_color>
     d44:	000067b7          	lui	a5,0x6
     d48:	26b78023          	sb	a1,608(a5) # 6260 <back_color>
     d4c:	00008067          	ret

00000d50 <display_putchar>:
     d50:	00a00793          	li	a5,10
     d54:	00006637          	lui	a2,0x6
     d58:	02f51663          	bne	a0,a5,d84 <display_putchar+0x34>
     d5c:	00006737          	lui	a4,0x6
     d60:	26472783          	lw	a5,612(a4) # 6264 <cursor_y>
     d64:	26062423          	sw	zero,616(a2) # 6268 <cursor_x>
     d68:	00878793          	addi	a5,a5,8
     d6c:	26f72223          	sw	a5,612(a4)
     d70:	07f00713          	li	a4,127
     d74:	00f75663          	bge	a4,a5,d80 <display_putchar+0x30>
     d78:	000067b7          	lui	a5,0x6
     d7c:	2607a223          	sw	zero,612(a5) # 6264 <cursor_y>
     d80:	00008067          	ret
     d84:	ff010113          	addi	sp,sp,-16
     d88:	00812623          	sw	s0,12(sp)
     d8c:	00912423          	sw	s1,8(sp)
     d90:	01212223          	sw	s2,4(sp)
     d94:	01f00713          	li	a4,31
     d98:	26862783          	lw	a5,616(a2)
     d9c:	08a75863          	bge	a4,a0,e2c <display_putchar+0xdc>
     da0:	00006737          	lui	a4,0x6
     da4:	26074383          	lbu	t2,608(a4) # 6260 <back_color>
     da8:	00006737          	lui	a4,0x6
     dac:	26174403          	lbu	s0,609(a4) # 6261 <front_color>
     db0:	00006737          	lui	a4,0x6
     db4:	26472f03          	lw	t5,612(a4) # 6264 <cursor_y>
     db8:	00251693          	slli	a3,a0,0x2
     dbc:	00006737          	lui	a4,0x6
     dc0:	00a686b3          	add	a3,a3,a0
     dc4:	e2870713          	addi	a4,a4,-472 # 5e28 <font>
     dc8:	00779313          	slli	t1,a5,0x7
     dcc:	00006837          	lui	a6,0x6
     dd0:	00d70733          	add	a4,a4,a3
     dd4:	28030493          	addi	s1,t1,640
     dd8:	00000693          	li	a3,0
     ddc:	00100293          	li	t0,1
     de0:	65080813          	addi	a6,a6,1616 # 6650 <framebuffer>
     de4:	00800913          	li	s2,8
     de8:	00d29fb3          	sll	t6,t0,a3
     dec:	00df0eb3          	add	t4,t5,a3
     df0:	00030593          	mv	a1,t1
     df4:	00070513          	mv	a0,a4
     df8:	f6054883          	lbu	a7,-160(a0)
     dfc:	00038e13          	mv	t3,t2
     e00:	01f8f8b3          	and	a7,a7,t6
     e04:	00088463          	beqz	a7,e0c <display_putchar+0xbc>
     e08:	00040e13          	mv	t3,s0
     e0c:	00b808b3          	add	a7,a6,a1
     e10:	01d888b3          	add	a7,a7,t4
     e14:	01c88023          	sb	t3,0(a7)
     e18:	08058593          	addi	a1,a1,128
     e1c:	00150513          	addi	a0,a0,1
     e20:	fc959ce3          	bne	a1,s1,df8 <display_putchar+0xa8>
     e24:	00168693          	addi	a3,a3,1
     e28:	fd2690e3          	bne	a3,s2,de8 <display_putchar+0x98>
     e2c:	00578793          	addi	a5,a5,5
     e30:	07f00713          	li	a4,127
     e34:	00f74663          	blt	a4,a5,e40 <display_putchar+0xf0>
     e38:	26f62423          	sw	a5,616(a2)
     e3c:	0240006f          	j	e60 <display_putchar+0x110>
     e40:	000066b7          	lui	a3,0x6
     e44:	2646a783          	lw	a5,612(a3) # 6264 <cursor_y>
     e48:	26062423          	sw	zero,616(a2)
     e4c:	00878793          	addi	a5,a5,8
     e50:	26f6a223          	sw	a5,612(a3)
     e54:	00f75663          	bge	a4,a5,e60 <display_putchar+0x110>
     e58:	000067b7          	lui	a5,0x6
     e5c:	2607a223          	sw	zero,612(a5) # 6264 <cursor_y>
     e60:	00c12403          	lw	s0,12(sp)
     e64:	00812483          	lw	s1,8(sp)
     e68:	00412903          	lw	s2,4(sp)
     e6c:	01010113          	addi	sp,sp,16
     e70:	00008067          	ret

00000e74 <display_refresh>:
     e74:	fe010113          	addi	sp,sp,-32
     e78:	000067b7          	lui	a5,0x6
     e7c:	01212823          	sw	s2,16(sp)
     e80:	e207a903          	lw	s2,-480(a5) # 5e20 <OLED>
     e84:	01312623          	sw	s3,12(sp)
     e88:	000069b7          	lui	s3,0x6
     e8c:	00912a23          	sw	s1,20(sp)
     e90:	01412423          	sw	s4,8(sp)
     e94:	00112e23          	sw	ra,28(sp)
     e98:	00812c23          	sw	s0,24(sp)
     e9c:	00000493          	li	s1,0
     ea0:	65098993          	addi	s3,s3,1616 # 6650 <framebuffer>
     ea4:	00004a37          	lui	s4,0x4
     ea8:	013487b3          	add	a5,s1,s3
     eac:	0007c403          	lbu	s0,0(a5)
     eb0:	00148493          	addi	s1,s1,1
     eb4:	00245413          	srli	s0,s0,0x2
     eb8:	40046413          	ori	s0,s0,1024
     ebc:	00892023          	sw	s0,0(s2)
     ec0:	00000097          	auipc	ra,0x0
     ec4:	e3c080e7          	jalr	-452(ra) # cfc <oled_wait>
     ec8:	00892023          	sw	s0,0(s2)
     ecc:	00000097          	auipc	ra,0x0
     ed0:	e30080e7          	jalr	-464(ra) # cfc <oled_wait>
     ed4:	00892023          	sw	s0,0(s2)
     ed8:	00000097          	auipc	ra,0x0
     edc:	e24080e7          	jalr	-476(ra) # cfc <oled_wait>
     ee0:	fd4494e3          	bne	s1,s4,ea8 <display_refresh+0x34>
     ee4:	01c12083          	lw	ra,28(sp)
     ee8:	01812403          	lw	s0,24(sp)
     eec:	01412483          	lw	s1,20(sp)
     ef0:	01012903          	lw	s2,16(sp)
     ef4:	00c12983          	lw	s3,12(sp)
     ef8:	00812a03          	lw	s4,8(sp)
     efc:	02010113          	addi	sp,sp,32
     f00:	00008067          	ret

00000f04 <dual_putchar>:
     f04:	ff010113          	addi	sp,sp,-16
     f08:	00812423          	sw	s0,8(sp)
     f0c:	00112623          	sw	ra,12(sp)
     f10:	00050413          	mv	s0,a0
     f14:	00000097          	auipc	ra,0x0
     f18:	e3c080e7          	jalr	-452(ra) # d50 <display_putchar>
     f1c:	00040513          	mv	a0,s0
     f20:	00812403          	lw	s0,8(sp)
     f24:	00c12083          	lw	ra,12(sp)
     f28:	01010113          	addi	sp,sp,16
     f2c:	00000317          	auipc	t1,0x0
     f30:	a5830067          	jr	-1448(t1) # 984 <uart_putchar>

00000f34 <print_string>:
     f34:	ff010113          	addi	sp,sp,-16
     f38:	00812423          	sw	s0,8(sp)
     f3c:	00912223          	sw	s1,4(sp)
     f40:	00112623          	sw	ra,12(sp)
     f44:	00050413          	mv	s0,a0
     f48:	000064b7          	lui	s1,0x6
     f4c:	00044503          	lbu	a0,0(s0)
     f50:	00051c63          	bnez	a0,f68 <print_string+0x34>
     f54:	00c12083          	lw	ra,12(sp)
     f58:	00812403          	lw	s0,8(sp)
     f5c:	00412483          	lw	s1,4(sp)
     f60:	01010113          	addi	sp,sp,16
     f64:	00008067          	ret
     f68:	26c4a783          	lw	a5,620(s1) # 626c <f_putchar>
     f6c:	00140413          	addi	s0,s0,1
     f70:	000780e7          	jalr	a5
     f74:	fd9ff06f          	j	f4c <print_string+0x18>

00000f78 <print_dec>:
     f78:	ee010113          	addi	sp,sp,-288
     f7c:	10812c23          	sw	s0,280(sp)
     f80:	11312623          	sw	s3,268(sp)
     f84:	10112e23          	sw	ra,284(sp)
     f88:	10912a23          	sw	s1,276(sp)
     f8c:	11212823          	sw	s2,272(sp)
     f90:	00050413          	mv	s0,a0
     f94:	000069b7          	lui	s3,0x6
     f98:	26c9a783          	lw	a5,620(s3) # 626c <f_putchar>
     f9c:	06045e63          	bgez	s0,1018 <print_dec+0xa0>
     fa0:	02d00513          	li	a0,45
     fa4:	000780e7          	jalr	a5
     fa8:	40800433          	neg	s0,s0
     fac:	fedff06f          	j	f98 <print_dec+0x20>
     fb0:	00040513          	mv	a0,s0
     fb4:	00a00593          	li	a1,10
     fb8:	00000097          	auipc	ra,0x0
     fbc:	918080e7          	jalr	-1768(ra) # 8d0 <__divsi3>
     fc0:	00251793          	slli	a5,a0,0x2
     fc4:	00f507b3          	add	a5,a0,a5
     fc8:	00179793          	slli	a5,a5,0x1
     fcc:	40f40433          	sub	s0,s0,a5
     fd0:	00148493          	addi	s1,s1,1
     fd4:	fe848fa3          	sb	s0,-1(s1)
     fd8:	00050413          	mv	s0,a0
     fdc:	fc041ae3          	bnez	s0,fb0 <print_dec+0x38>
     fe0:	fd2488e3          	beq	s1,s2,fb0 <print_dec+0x38>
     fe4:	fff4c503          	lbu	a0,-1(s1)
     fe8:	26c9a783          	lw	a5,620(s3)
     fec:	fff48493          	addi	s1,s1,-1
     ff0:	03050513          	addi	a0,a0,48
     ff4:	000780e7          	jalr	a5
     ff8:	ff2496e3          	bne	s1,s2,fe4 <print_dec+0x6c>
     ffc:	11c12083          	lw	ra,284(sp)
    1000:	11812403          	lw	s0,280(sp)
    1004:	11412483          	lw	s1,276(sp)
    1008:	11012903          	lw	s2,272(sp)
    100c:	10c12983          	lw	s3,268(sp)
    1010:	12010113          	addi	sp,sp,288
    1014:	00008067          	ret
    1018:	00010493          	mv	s1,sp
    101c:	00048913          	mv	s2,s1
    1020:	fbdff06f          	j	fdc <print_dec+0x64>

00001024 <print_hex_digits>:
    1024:	fe010113          	addi	sp,sp,-32
    1028:	00812c23          	sw	s0,24(sp)
    102c:	01212823          	sw	s2,16(sp)
    1030:	fff58413          	addi	s0,a1,-1
    1034:	00006937          	lui	s2,0x6
    1038:	00912a23          	sw	s1,20(sp)
    103c:	01312623          	sw	s3,12(sp)
    1040:	00112e23          	sw	ra,28(sp)
    1044:	00050493          	mv	s1,a0
    1048:	00241413          	slli	s0,s0,0x2
    104c:	0d090913          	addi	s2,s2,208 # 60d0 <font+0x2a8>
    1050:	000069b7          	lui	s3,0x6
    1054:	02045063          	bgez	s0,1074 <print_hex_digits+0x50>
    1058:	01c12083          	lw	ra,28(sp)
    105c:	01812403          	lw	s0,24(sp)
    1060:	01412483          	lw	s1,20(sp)
    1064:	01012903          	lw	s2,16(sp)
    1068:	00c12983          	lw	s3,12(sp)
    106c:	02010113          	addi	sp,sp,32
    1070:	00008067          	ret
    1074:	0084d7b3          	srl	a5,s1,s0
    1078:	00f7f793          	andi	a5,a5,15
    107c:	00f907b3          	add	a5,s2,a5
    1080:	26c9a703          	lw	a4,620(s3) # 626c <f_putchar>
    1084:	0007c503          	lbu	a0,0(a5)
    1088:	ffc40413          	addi	s0,s0,-4
    108c:	000700e7          	jalr	a4
    1090:	fc5ff06f          	j	1054 <print_hex_digits+0x30>

00001094 <print_hex>:
    1094:	00800593          	li	a1,8
    1098:	00000317          	auipc	t1,0x0
    109c:	f8c30067          	jr	-116(t1) # 1024 <print_hex_digits>

000010a0 <printf>:
    10a0:	fa010113          	addi	sp,sp,-96
    10a4:	04f12a23          	sw	a5,84(sp)
    10a8:	04410793          	addi	a5,sp,68
    10ac:	02812c23          	sw	s0,56(sp)
    10b0:	02912a23          	sw	s1,52(sp)
    10b4:	03312623          	sw	s3,44(sp)
    10b8:	03412423          	sw	s4,40(sp)
    10bc:	03512223          	sw	s5,36(sp)
    10c0:	03612023          	sw	s6,32(sp)
    10c4:	01712e23          	sw	s7,28(sp)
    10c8:	02112e23          	sw	ra,60(sp)
    10cc:	03212823          	sw	s2,48(sp)
    10d0:	00050413          	mv	s0,a0
    10d4:	04b12223          	sw	a1,68(sp)
    10d8:	04c12423          	sw	a2,72(sp)
    10dc:	04d12623          	sw	a3,76(sp)
    10e0:	04e12823          	sw	a4,80(sp)
    10e4:	05012c23          	sw	a6,88(sp)
    10e8:	05112e23          	sw	a7,92(sp)
    10ec:	00f12623          	sw	a5,12(sp)
    10f0:	02500993          	li	s3,37
    10f4:	000064b7          	lui	s1,0x6
    10f8:	07300a13          	li	s4,115
    10fc:	07800a93          	li	s5,120
    1100:	06400b13          	li	s6,100
    1104:	06300b93          	li	s7,99
    1108:	00044503          	lbu	a0,0(s0)
    110c:	02051863          	bnez	a0,113c <printf+0x9c>
    1110:	03c12083          	lw	ra,60(sp)
    1114:	03812403          	lw	s0,56(sp)
    1118:	03412483          	lw	s1,52(sp)
    111c:	03012903          	lw	s2,48(sp)
    1120:	02c12983          	lw	s3,44(sp)
    1124:	02812a03          	lw	s4,40(sp)
    1128:	02412a83          	lw	s5,36(sp)
    112c:	02012b03          	lw	s6,32(sp)
    1130:	01c12b83          	lw	s7,28(sp)
    1134:	06010113          	addi	sp,sp,96
    1138:	00008067          	ret
    113c:	00140913          	addi	s2,s0,1
    1140:	09351663          	bne	a0,s3,11cc <printf+0x12c>
    1144:	00144503          	lbu	a0,1(s0)
    1148:	03451263          	bne	a0,s4,116c <printf+0xcc>
    114c:	00c12783          	lw	a5,12(sp)
    1150:	0007a503          	lw	a0,0(a5)
    1154:	00478713          	addi	a4,a5,4
    1158:	00e12623          	sw	a4,12(sp)
    115c:	00000097          	auipc	ra,0x0
    1160:	dd8080e7          	jalr	-552(ra) # f34 <print_string>
    1164:	00190413          	addi	s0,s2,1
    1168:	fa1ff06f          	j	1108 <printf+0x68>
    116c:	03551063          	bne	a0,s5,118c <printf+0xec>
    1170:	00c12783          	lw	a5,12(sp)
    1174:	0007a503          	lw	a0,0(a5)
    1178:	00478713          	addi	a4,a5,4
    117c:	00e12623          	sw	a4,12(sp)
    1180:	00000097          	auipc	ra,0x0
    1184:	f14080e7          	jalr	-236(ra) # 1094 <print_hex>
    1188:	fddff06f          	j	1164 <printf+0xc4>
    118c:	03651063          	bne	a0,s6,11ac <printf+0x10c>
    1190:	00c12783          	lw	a5,12(sp)
    1194:	0007a503          	lw	a0,0(a5)
    1198:	00478713          	addi	a4,a5,4
    119c:	00e12623          	sw	a4,12(sp)
    11a0:	00000097          	auipc	ra,0x0
    11a4:	dd8080e7          	jalr	-552(ra) # f78 <print_dec>
    11a8:	fbdff06f          	j	1164 <printf+0xc4>
    11ac:	26c4a783          	lw	a5,620(s1) # 626c <f_putchar>
    11b0:	01751a63          	bne	a0,s7,11c4 <printf+0x124>
    11b4:	00c12703          	lw	a4,12(sp)
    11b8:	00072503          	lw	a0,0(a4)
    11bc:	00470693          	addi	a3,a4,4
    11c0:	00d12623          	sw	a3,12(sp)
    11c4:	000780e7          	jalr	a5
    11c8:	f9dff06f          	j	1164 <printf+0xc4>
    11cc:	26c4a783          	lw	a5,620(s1)
    11d0:	00040913          	mv	s2,s0
    11d4:	000780e7          	jalr	a5
    11d8:	f8dff06f          	j	1164 <printf+0xc4>

000011dc <__mulsi3>:
    11dc:	00050793          	mv	a5,a0
    11e0:	00000513          	li	a0,0
    11e4:	00079463          	bnez	a5,11ec <__mulsi3+0x10>
    11e8:	00008067          	ret
    11ec:	0017f713          	andi	a4,a5,1
    11f0:	00070463          	beqz	a4,11f8 <__mulsi3+0x1c>
    11f4:	00b50533          	add	a0,a0,a1
    11f8:	0017d793          	srli	a5,a5,0x1
    11fc:	00159593          	slli	a1,a1,0x1
    1200:	fe5ff06f          	j	11e4 <__mulsi3+0x8>

00001204 <fat_list_insert_last>:
    1204:	00452783          	lw	a5,4(a0)
    1208:	04079263          	bnez	a5,124c <fat_list_insert_last+0x48>
    120c:	00052783          	lw	a5,0(a0)
    1210:	00079c63          	bnez	a5,1228 <fat_list_insert_last+0x24>
    1214:	00b52023          	sw	a1,0(a0)
    1218:	00b52223          	sw	a1,4(a0)
    121c:	0005a023          	sw	zero,0(a1)
    1220:	0005a223          	sw	zero,4(a1)
    1224:	00008067          	ret
    1228:	0007a703          	lw	a4,0(a5)
    122c:	00f5a223          	sw	a5,4(a1)
    1230:	00e5a023          	sw	a4,0(a1)
    1234:	00071863          	bnez	a4,1244 <fat_list_insert_last+0x40>
    1238:	00b52023          	sw	a1,0(a0)
    123c:	00b7a023          	sw	a1,0(a5)
    1240:	00008067          	ret
    1244:	00b72223          	sw	a1,4(a4)
    1248:	ff5ff06f          	j	123c <fat_list_insert_last+0x38>
    124c:	0047a703          	lw	a4,4(a5)
    1250:	00f5a023          	sw	a5,0(a1)
    1254:	00e5a223          	sw	a4,4(a1)
    1258:	0047a703          	lw	a4,4(a5)
    125c:	00071863          	bnez	a4,126c <fat_list_insert_last+0x68>
    1260:	00b52223          	sw	a1,4(a0)
    1264:	00b7a223          	sw	a1,4(a5)
    1268:	00008067          	ret
    126c:	00b72023          	sw	a1,0(a4)
    1270:	ff5ff06f          	j	1264 <fat_list_insert_last+0x60>

00001274 <FileString_StrCmpNoCase>:
    1274:	00050313          	mv	t1,a0
    1278:	00000793          	li	a5,0
    127c:	01900e13          	li	t3,25
    1280:	00f61663          	bne	a2,a5,128c <FileString_StrCmpNoCase+0x18>
    1284:	00000513          	li	a0,0
    1288:	0580006f          	j	12e0 <FileString_StrCmpNoCase+0x6c>
    128c:	00f30733          	add	a4,t1,a5
    1290:	00074883          	lbu	a7,0(a4)
    1294:	00f58733          	add	a4,a1,a5
    1298:	00074803          	lbu	a6,0(a4)
    129c:	fbf88713          	addi	a4,a7,-65
    12a0:	0ff77713          	zext.b	a4,a4
    12a4:	00088693          	mv	a3,a7
    12a8:	00ee6663          	bltu	t3,a4,12b4 <FileString_StrCmpNoCase+0x40>
    12ac:	02088693          	addi	a3,a7,32
    12b0:	0ff6f693          	zext.b	a3,a3
    12b4:	fbf80513          	addi	a0,a6,-65
    12b8:	0ff57513          	zext.b	a0,a0
    12bc:	00080713          	mv	a4,a6
    12c0:	00ae6663          	bltu	t3,a0,12cc <FileString_StrCmpNoCase+0x58>
    12c4:	02080713          	addi	a4,a6,32
    12c8:	0ff77713          	zext.b	a4,a4
    12cc:	40e68533          	sub	a0,a3,a4
    12d0:	00e69863          	bne	a3,a4,12e0 <FileString_StrCmpNoCase+0x6c>
    12d4:	00088663          	beqz	a7,12e0 <FileString_StrCmpNoCase+0x6c>
    12d8:	00178793          	addi	a5,a5,1
    12dc:	fa0812e3          	bnez	a6,1280 <FileString_StrCmpNoCase+0xc>
    12e0:	00008067          	ret

000012e4 <FileString_GetExtension>:
    12e4:	00050713          	mv	a4,a0
    12e8:	00050793          	mv	a5,a0
    12ec:	02e00613          	li	a2,46
    12f0:	fff00513          	li	a0,-1
    12f4:	0007c683          	lbu	a3,0(a5)
    12f8:	00069463          	bnez	a3,1300 <FileString_GetExtension+0x1c>
    12fc:	00008067          	ret
    1300:	00c69463          	bne	a3,a2,1308 <FileString_GetExtension+0x24>
    1304:	40e78533          	sub	a0,a5,a4
    1308:	00178793          	addi	a5,a5,1
    130c:	fe9ff06f          	j	12f4 <FileString_GetExtension+0x10>

00001310 <fatfs_fat_writeback>:
    1310:	00059663          	bnez	a1,131c <fatfs_fat_writeback+0xc>
    1314:	00000513          	li	a0,0
    1318:	00008067          	ret
    131c:	2045a703          	lw	a4,516(a1)
    1320:	ff010113          	addi	sp,sp,-16
    1324:	00812423          	sw	s0,8(sp)
    1328:	00112623          	sw	ra,12(sp)
    132c:	00050793          	mv	a5,a0
    1330:	00058413          	mv	s0,a1
    1334:	00100513          	li	a0,1
    1338:	04070663          	beqz	a4,1384 <fatfs_fat_writeback+0x74>
    133c:	0387a683          	lw	a3,56(a5)
    1340:	00069863          	bnez	a3,1350 <fatfs_fat_writeback+0x40>
    1344:	20042223          	sw	zero,516(s0)
    1348:	00100513          	li	a0,1
    134c:	0380006f          	j	1384 <fatfs_fat_writeback+0x74>
    1350:	2005a503          	lw	a0,512(a1)
    1354:	0147a703          	lw	a4,20(a5)
    1358:	0207a583          	lw	a1,32(a5)
    135c:	00100613          	li	a2,1
    1360:	40e507b3          	sub	a5,a0,a4
    1364:	00178793          	addi	a5,a5,1
    1368:	00f5f663          	bgeu	a1,a5,1374 <fatfs_fat_writeback+0x64>
    136c:	00b70733          	add	a4,a4,a1
    1370:	40a70633          	sub	a2,a4,a0
    1374:	00040593          	mv	a1,s0
    1378:	000680e7          	jalr	a3
    137c:	fc0514e3          	bnez	a0,1344 <fatfs_fat_writeback+0x34>
    1380:	00000513          	li	a0,0
    1384:	00c12083          	lw	ra,12(sp)
    1388:	00812403          	lw	s0,8(sp)
    138c:	01010113          	addi	sp,sp,16
    1390:	00008067          	ret

00001394 <fatfs_fat_read_sector>:
    1394:	fe010113          	addi	sp,sp,-32
    1398:	01212823          	sw	s2,16(sp)
    139c:	25452903          	lw	s2,596(a0)
    13a0:	00812c23          	sw	s0,24(sp)
    13a4:	00912a23          	sw	s1,20(sp)
    13a8:	01312623          	sw	s3,12(sp)
    13ac:	00112e23          	sw	ra,28(sp)
    13b0:	00050993          	mv	s3,a0
    13b4:	00058493          	mv	s1,a1
    13b8:	00000413          	li	s0,0
    13bc:	06091863          	bnez	s2,142c <fatfs_fat_read_sector+0x98>
    13c0:	2549a783          	lw	a5,596(s3)
    13c4:	20f42623          	sw	a5,524(s0)
    13c8:	20442783          	lw	a5,516(s0)
    13cc:	2489aa23          	sw	s0,596(s3)
    13d0:	00078c63          	beqz	a5,13e8 <fatfs_fat_read_sector+0x54>
    13d4:	00040593          	mv	a1,s0
    13d8:	00098513          	mv	a0,s3
    13dc:	00000097          	auipc	ra,0x0
    13e0:	f34080e7          	jalr	-204(ra) # 1310 <fatfs_fat_writeback>
    13e4:	02050463          	beqz	a0,140c <fatfs_fat_read_sector+0x78>
    13e8:	0349a783          	lw	a5,52(s3)
    13ec:	20942023          	sw	s1,512(s0)
    13f0:	00100613          	li	a2,1
    13f4:	00040593          	mv	a1,s0
    13f8:	00048513          	mv	a0,s1
    13fc:	000780e7          	jalr	a5
    1400:	06051063          	bnez	a0,1460 <fatfs_fat_read_sector+0xcc>
    1404:	fff00793          	li	a5,-1
    1408:	20f42023          	sw	a5,512(s0)
    140c:	01c12083          	lw	ra,28(sp)
    1410:	01812403          	lw	s0,24(sp)
    1414:	01412483          	lw	s1,20(sp)
    1418:	00c12983          	lw	s3,12(sp)
    141c:	00090513          	mv	a0,s2
    1420:	01012903          	lw	s2,16(sp)
    1424:	02010113          	addi	sp,sp,32
    1428:	00008067          	ret
    142c:	20092783          	lw	a5,512(s2)
    1430:	00f4e663          	bltu	s1,a5,143c <fatfs_fat_read_sector+0xa8>
    1434:	00178713          	addi	a4,a5,1
    1438:	02e4ea63          	bltu	s1,a4,146c <fatfs_fat_read_sector+0xd8>
    143c:	20c92783          	lw	a5,524(s2)
    1440:	00079663          	bnez	a5,144c <fatfs_fat_read_sector+0xb8>
    1444:	00040a63          	beqz	s0,1458 <fatfs_fat_read_sector+0xc4>
    1448:	20042623          	sw	zero,524(s0)
    144c:	00090413          	mv	s0,s2
    1450:	20c92903          	lw	s2,524(s2)
    1454:	f69ff06f          	j	13bc <fatfs_fat_read_sector+0x28>
    1458:	2409aa23          	sw	zero,596(s3)
    145c:	ff1ff06f          	j	144c <fatfs_fat_read_sector+0xb8>
    1460:	20842423          	sw	s0,520(s0)
    1464:	00040913          	mv	s2,s0
    1468:	fa5ff06f          	j	140c <fatfs_fat_read_sector+0x78>
    146c:	40f484b3          	sub	s1,s1,a5
    1470:	00949493          	slli	s1,s1,0x9
    1474:	009904b3          	add	s1,s2,s1
    1478:	20992423          	sw	s1,520(s2)
    147c:	f91ff06f          	j	140c <fatfs_fat_read_sector+0x78>

00001480 <fatfs_erase_fat>:
    1480:	ff010113          	addi	sp,sp,-16
    1484:	01212023          	sw	s2,0(sp)
    1488:	04450913          	addi	s2,a0,68
    148c:	00812423          	sw	s0,8(sp)
    1490:	00912223          	sw	s1,4(sp)
    1494:	00050413          	mv	s0,a0
    1498:	00058493          	mv	s1,a1
    149c:	20000613          	li	a2,512
    14a0:	00000593          	li	a1,0
    14a4:	00090513          	mv	a0,s2
    14a8:	00112623          	sw	ra,12(sp)
    14ac:	fffff097          	auipc	ra,0xfffff
    14b0:	500080e7          	jalr	1280(ra) # 9ac <memset>
    14b4:	04049063          	bnez	s1,14f4 <fatfs_erase_fat+0x74>
    14b8:	ff800793          	li	a5,-8
    14bc:	04f42223          	sw	a5,68(s0)
    14c0:	03842783          	lw	a5,56(s0)
    14c4:	01442503          	lw	a0,20(s0)
    14c8:	00100613          	li	a2,1
    14cc:	00090593          	mv	a1,s2
    14d0:	000780e7          	jalr	a5
    14d4:	04051063          	bnez	a0,1514 <fatfs_erase_fat+0x94>
    14d8:	00000513          	li	a0,0
    14dc:	00c12083          	lw	ra,12(sp)
    14e0:	00812403          	lw	s0,8(sp)
    14e4:	00412483          	lw	s1,4(sp)
    14e8:	00012903          	lw	s2,0(sp)
    14ec:	01010113          	addi	sp,sp,16
    14f0:	00008067          	ret
    14f4:	100007b7          	lui	a5,0x10000
    14f8:	ff878713          	addi	a4,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    14fc:	04e42223          	sw	a4,68(s0)
    1500:	fff78793          	addi	a5,a5,-1
    1504:	fff00713          	li	a4,-1
    1508:	04e42423          	sw	a4,72(s0)
    150c:	04f42623          	sw	a5,76(s0)
    1510:	fb1ff06f          	j	14c0 <fatfs_erase_fat+0x40>
    1514:	20000613          	li	a2,512
    1518:	00000593          	li	a1,0
    151c:	00090513          	mv	a0,s2
    1520:	fffff097          	auipc	ra,0xfffff
    1524:	48c080e7          	jalr	1164(ra) # 9ac <memset>
    1528:	00100493          	li	s1,1
    152c:	02042583          	lw	a1,32(s0)
    1530:	02c44503          	lbu	a0,44(s0)
    1534:	00000097          	auipc	ra,0x0
    1538:	ca8080e7          	jalr	-856(ra) # 11dc <__mulsi3>
    153c:	00a4e663          	bltu	s1,a0,1548 <fatfs_erase_fat+0xc8>
    1540:	00100513          	li	a0,1
    1544:	f99ff06f          	j	14dc <fatfs_erase_fat+0x5c>
    1548:	01442503          	lw	a0,20(s0)
    154c:	03842783          	lw	a5,56(s0)
    1550:	00100613          	li	a2,1
    1554:	00090593          	mv	a1,s2
    1558:	00a48533          	add	a0,s1,a0
    155c:	000780e7          	jalr	a5
    1560:	f6050ce3          	beqz	a0,14d8 <fatfs_erase_fat+0x58>
    1564:	00148493          	addi	s1,s1,1
    1568:	fc5ff06f          	j	152c <fatfs_erase_fat+0xac>

0000156c <fatfs_erase_sectors>:
    156c:	fe010113          	addi	sp,sp,-32
    1570:	01412423          	sw	s4,8(sp)
    1574:	04450a13          	addi	s4,a0,68
    1578:	00912a23          	sw	s1,20(sp)
    157c:	01212823          	sw	s2,16(sp)
    1580:	01312623          	sw	s3,12(sp)
    1584:	00050493          	mv	s1,a0
    1588:	00058993          	mv	s3,a1
    158c:	00060913          	mv	s2,a2
    1590:	00000593          	li	a1,0
    1594:	20000613          	li	a2,512
    1598:	000a0513          	mv	a0,s4
    159c:	00812c23          	sw	s0,24(sp)
    15a0:	00112e23          	sw	ra,28(sp)
    15a4:	00000413          	li	s0,0
    15a8:	fffff097          	auipc	ra,0xfffff
    15ac:	404080e7          	jalr	1028(ra) # 9ac <memset>
    15b0:	03244463          	blt	s0,s2,15d8 <fatfs_erase_sectors+0x6c>
    15b4:	00100513          	li	a0,1
    15b8:	01c12083          	lw	ra,28(sp)
    15bc:	01812403          	lw	s0,24(sp)
    15c0:	01412483          	lw	s1,20(sp)
    15c4:	01012903          	lw	s2,16(sp)
    15c8:	00c12983          	lw	s3,12(sp)
    15cc:	00812a03          	lw	s4,8(sp)
    15d0:	02010113          	addi	sp,sp,32
    15d4:	00008067          	ret
    15d8:	0384a783          	lw	a5,56(s1)
    15dc:	00100613          	li	a2,1
    15e0:	000a0593          	mv	a1,s4
    15e4:	01340533          	add	a0,s0,s3
    15e8:	000780e7          	jalr	a5
    15ec:	fc0506e3          	beqz	a0,15b8 <fatfs_erase_sectors+0x4c>
    15f0:	00140413          	addi	s0,s0,1
    15f4:	fbdff06f          	j	15b0 <fatfs_erase_sectors+0x44>

000015f8 <_allocate_file>:
    15f8:	ff010113          	addi	sp,sp,-16
    15fc:	000067b7          	lui	a5,0x6
    1600:	00812423          	sw	s0,8(sp)
    1604:	2707a403          	lw	s0,624(a5) # 6270 <_free_file_list>
    1608:	00112623          	sw	ra,12(sp)
    160c:	02040e63          	beqz	s0,1648 <_allocate_file+0x50>
    1610:	00042703          	lw	a4,0(s0)
    1614:	00442683          	lw	a3,4(s0)
    1618:	27078793          	addi	a5,a5,624
    161c:	04071063          	bnez	a4,165c <_allocate_file+0x64>
    1620:	00d7a023          	sw	a3,0(a5)
    1624:	00442683          	lw	a3,4(s0)
    1628:	02069e63          	bnez	a3,1664 <_allocate_file+0x6c>
    162c:	00e7a223          	sw	a4,4(a5)
    1630:	00006537          	lui	a0,0x6
    1634:	00040593          	mv	a1,s0
    1638:	27850513          	addi	a0,a0,632 # 6278 <_open_file_list>
    163c:	00000097          	auipc	ra,0x0
    1640:	bc8080e7          	jalr	-1080(ra) # 1204 <fat_list_insert_last>
    1644:	bc440413          	addi	s0,s0,-1084
    1648:	00c12083          	lw	ra,12(sp)
    164c:	00040513          	mv	a0,s0
    1650:	00812403          	lw	s0,8(sp)
    1654:	01010113          	addi	sp,sp,16
    1658:	00008067          	ret
    165c:	00d72223          	sw	a3,4(a4)
    1660:	fc5ff06f          	j	1624 <_allocate_file+0x2c>
    1664:	00e6a023          	sw	a4,0(a3)
    1668:	fc9ff06f          	j	1630 <_allocate_file+0x38>

0000166c <_free_file>:
    166c:	43c52783          	lw	a5,1084(a0)
    1670:	44052703          	lw	a4,1088(a0)
    1674:	43c50593          	addi	a1,a0,1084
    1678:	02079663          	bnez	a5,16a4 <_free_file+0x38>
    167c:	000066b7          	lui	a3,0x6
    1680:	26e6ac23          	sw	a4,632(a3) # 6278 <_open_file_list>
    1684:	44052703          	lw	a4,1088(a0)
    1688:	02071263          	bnez	a4,16ac <_free_file+0x40>
    168c:	00006737          	lui	a4,0x6
    1690:	26f72e23          	sw	a5,636(a4) # 627c <_open_file_list+0x4>
    1694:	00006537          	lui	a0,0x6
    1698:	27050513          	addi	a0,a0,624 # 6270 <_free_file_list>
    169c:	00000317          	auipc	t1,0x0
    16a0:	b6830067          	jr	-1176(t1) # 1204 <fat_list_insert_last>
    16a4:	00e7a223          	sw	a4,4(a5)
    16a8:	fddff06f          	j	1684 <_free_file+0x18>
    16ac:	00f72023          	sw	a5,0(a4)
    16b0:	fe5ff06f          	j	1694 <_free_file+0x28>

000016b4 <fatfs_lba_of_cluster>:
    16b4:	ff010113          	addi	sp,sp,-16
    16b8:	00812423          	sw	s0,8(sp)
    16bc:	00050413          	mv	s0,a0
    16c0:	00058513          	mv	a0,a1
    16c4:	00044583          	lbu	a1,0(s0)
    16c8:	ffe50513          	addi	a0,a0,-2
    16cc:	00112623          	sw	ra,12(sp)
    16d0:	00000097          	auipc	ra,0x0
    16d4:	b0c080e7          	jalr	-1268(ra) # 11dc <__mulsi3>
    16d8:	00442783          	lw	a5,4(s0)
    16dc:	00f50533          	add	a0,a0,a5
    16e0:	03042783          	lw	a5,48(s0)
    16e4:	00079863          	bnez	a5,16f4 <fatfs_lba_of_cluster+0x40>
    16e8:	02845783          	lhu	a5,40(s0)
    16ec:	4047d793          	srai	a5,a5,0x4
    16f0:	00f50533          	add	a0,a0,a5
    16f4:	00c12083          	lw	ra,12(sp)
    16f8:	00812403          	lw	s0,8(sp)
    16fc:	01010113          	addi	sp,sp,16
    1700:	00008067          	ret

00001704 <fatfs_sector_read>:
    1704:	03452783          	lw	a5,52(a0)
    1708:	00058713          	mv	a4,a1
    170c:	00070513          	mv	a0,a4
    1710:	00060593          	mv	a1,a2
    1714:	00068613          	mv	a2,a3
    1718:	00078067          	jr	a5

0000171c <fatfs_sector_write>:
    171c:	03852783          	lw	a5,56(a0)
    1720:	00058713          	mv	a4,a1
    1724:	00070513          	mv	a0,a4
    1728:	00060593          	mv	a1,a2
    172c:	00068613          	mv	a2,a3
    1730:	00078067          	jr	a5

00001734 <fatfs_read_sector>:
    1734:	03052783          	lw	a5,48(a0)
    1738:	ff010113          	addi	sp,sp,-16
    173c:	00812423          	sw	s0,8(sp)
    1740:	00912223          	sw	s1,4(sp)
    1744:	01212023          	sw	s2,0(sp)
    1748:	00112623          	sw	ra,12(sp)
    174c:	00f5e7b3          	or	a5,a1,a5
    1750:	00050413          	mv	s0,a0
    1754:	00060493          	mv	s1,a2
    1758:	00068913          	mv	s2,a3
    175c:	04079263          	bnez	a5,17a0 <fatfs_read_sector+0x6c>
    1760:	01052783          	lw	a5,16(a0)
    1764:	04f67c63          	bgeu	a2,a5,17bc <fatfs_read_sector+0x88>
    1768:	01c52503          	lw	a0,28(a0)
    176c:	00c42783          	lw	a5,12(s0)
    1770:	00f50533          	add	a0,a0,a5
    1774:	03442783          	lw	a5,52(s0)
    1778:	00a48533          	add	a0,s1,a0
    177c:	02090863          	beqz	s2,17ac <fatfs_read_sector+0x78>
    1780:	00100613          	li	a2,1
    1784:	00090593          	mv	a1,s2
    1788:	00812403          	lw	s0,8(sp)
    178c:	00c12083          	lw	ra,12(sp)
    1790:	00412483          	lw	s1,4(sp)
    1794:	00012903          	lw	s2,0(sp)
    1798:	01010113          	addi	sp,sp,16
    179c:	00078067          	jr	a5
    17a0:	00000097          	auipc	ra,0x0
    17a4:	f14080e7          	jalr	-236(ra) # 16b4 <fatfs_lba_of_cluster>
    17a8:	fcdff06f          	j	1774 <fatfs_read_sector+0x40>
    17ac:	24a42223          	sw	a0,580(s0)
    17b0:	00100613          	li	a2,1
    17b4:	04440593          	addi	a1,s0,68
    17b8:	fd1ff06f          	j	1788 <fatfs_read_sector+0x54>
    17bc:	00c12083          	lw	ra,12(sp)
    17c0:	00812403          	lw	s0,8(sp)
    17c4:	00412483          	lw	s1,4(sp)
    17c8:	00012903          	lw	s2,0(sp)
    17cc:	00000513          	li	a0,0
    17d0:	01010113          	addi	sp,sp,16
    17d4:	00008067          	ret

000017d8 <fatfs_write_sector>:
    17d8:	03852783          	lw	a5,56(a0)
    17dc:	0a078863          	beqz	a5,188c <fatfs_write_sector+0xb4>
    17e0:	fe010113          	addi	sp,sp,-32
    17e4:	01212823          	sw	s2,16(sp)
    17e8:	00068913          	mv	s2,a3
    17ec:	03052683          	lw	a3,48(a0)
    17f0:	00812c23          	sw	s0,24(sp)
    17f4:	00912a23          	sw	s1,20(sp)
    17f8:	00112e23          	sw	ra,28(sp)
    17fc:	00d5e733          	or	a4,a1,a3
    1800:	00050413          	mv	s0,a0
    1804:	00060493          	mv	s1,a2
    1808:	04071063          	bnez	a4,1848 <fatfs_write_sector+0x70>
    180c:	01052703          	lw	a4,16(a0)
    1810:	06e67063          	bgeu	a2,a4,1870 <fatfs_write_sector+0x98>
    1814:	01c52503          	lw	a0,28(a0)
    1818:	00c42703          	lw	a4,12(s0)
    181c:	00e50533          	add	a0,a0,a4
    1820:	00c50533          	add	a0,a0,a2
    1824:	02090e63          	beqz	s2,1860 <fatfs_write_sector+0x88>
    1828:	00100613          	li	a2,1
    182c:	00090593          	mv	a1,s2
    1830:	01812403          	lw	s0,24(sp)
    1834:	01c12083          	lw	ra,28(sp)
    1838:	01412483          	lw	s1,20(sp)
    183c:	01012903          	lw	s2,16(sp)
    1840:	02010113          	addi	sp,sp,32
    1844:	00078067          	jr	a5
    1848:	00f12623          	sw	a5,12(sp)
    184c:	00000097          	auipc	ra,0x0
    1850:	e68080e7          	jalr	-408(ra) # 16b4 <fatfs_lba_of_cluster>
    1854:	00c12783          	lw	a5,12(sp)
    1858:	00a48533          	add	a0,s1,a0
    185c:	fc9ff06f          	j	1824 <fatfs_write_sector+0x4c>
    1860:	24a42223          	sw	a0,580(s0)
    1864:	00100613          	li	a2,1
    1868:	04440593          	addi	a1,s0,68
    186c:	fc5ff06f          	j	1830 <fatfs_write_sector+0x58>
    1870:	01c12083          	lw	ra,28(sp)
    1874:	01812403          	lw	s0,24(sp)
    1878:	01412483          	lw	s1,20(sp)
    187c:	01012903          	lw	s2,16(sp)
    1880:	00000513          	li	a0,0
    1884:	02010113          	addi	sp,sp,32
    1888:	00008067          	ret
    188c:	00000513          	li	a0,0
    1890:	00008067          	ret

00001894 <fatfs_show_details>:
    1894:	ff010113          	addi	sp,sp,-16
    1898:	00812423          	sw	s0,8(sp)
    189c:	00050413          	mv	s0,a0
    18a0:	00006537          	lui	a0,0x6
    18a4:	0f450513          	addi	a0,a0,244 # 60f4 <font+0x2cc>
    18a8:	00112623          	sw	ra,12(sp)
    18ac:	fffff097          	auipc	ra,0xfffff
    18b0:	7f4080e7          	jalr	2036(ra) # 10a0 <printf>
    18b4:	03042703          	lw	a4,48(s0)
    18b8:	00100793          	li	a5,1
    18bc:	06f70c63          	beq	a4,a5,1934 <fatfs_show_details+0xa0>
    18c0:	000065b7          	lui	a1,0x6
    18c4:	0ec58593          	addi	a1,a1,236 # 60ec <font+0x2c4>
    18c8:	00006537          	lui	a0,0x6
    18cc:	10450513          	addi	a0,a0,260 # 6104 <font+0x2dc>
    18d0:	fffff097          	auipc	ra,0xfffff
    18d4:	7d0080e7          	jalr	2000(ra) # 10a0 <printf>
    18d8:	00842583          	lw	a1,8(s0)
    18dc:	00006537          	lui	a0,0x6
    18e0:	11050513          	addi	a0,a0,272 # 6110 <font+0x2e8>
    18e4:	fffff097          	auipc	ra,0xfffff
    18e8:	7bc080e7          	jalr	1980(ra) # 10a0 <printf>
    18ec:	01442583          	lw	a1,20(s0)
    18f0:	00006537          	lui	a0,0x6
    18f4:	13050513          	addi	a0,a0,304 # 6130 <font+0x308>
    18f8:	fffff097          	auipc	ra,0xfffff
    18fc:	7a8080e7          	jalr	1960(ra) # 10a0 <printf>
    1900:	00442583          	lw	a1,4(s0)
    1904:	00006537          	lui	a0,0x6
    1908:	14850513          	addi	a0,a0,328 # 6148 <font+0x320>
    190c:	fffff097          	auipc	ra,0xfffff
    1910:	794080e7          	jalr	1940(ra) # 10a0 <printf>
    1914:	00044583          	lbu	a1,0(s0)
    1918:	00812403          	lw	s0,8(sp)
    191c:	00c12083          	lw	ra,12(sp)
    1920:	00006537          	lui	a0,0x6
    1924:	16450513          	addi	a0,a0,356 # 6164 <font+0x33c>
    1928:	01010113          	addi	sp,sp,16
    192c:	fffff317          	auipc	t1,0xfffff
    1930:	77430067          	jr	1908(t1) # 10a0 <printf>
    1934:	000065b7          	lui	a1,0x6
    1938:	0e458593          	addi	a1,a1,228 # 60e4 <font+0x2bc>
    193c:	f8dff06f          	j	18c8 <fatfs_show_details+0x34>

00001940 <fatfs_get_root_cluster>:
    1940:	00852503          	lw	a0,8(a0)
    1944:	00008067          	ret

00001948 <fatfs_list_directory_start>:
    1948:	00c5a223          	sw	a2,4(a1)
    194c:	0005a023          	sw	zero,0(a1)
    1950:	00058423          	sb	zero,8(a1)
    1954:	00008067          	ret

00001958 <fatfs_cache_init>:
    1958:	00100513          	li	a0,1
    195c:	00008067          	ret

00001960 <fatfs_cache_get_next_cluster>:
    1960:	00000513          	li	a0,0
    1964:	00008067          	ret

00001968 <fatfs_cache_set_next_cluster>:
    1968:	00100513          	li	a0,1
    196c:	00008067          	ret

00001970 <fl_init>:
    1970:	ff010113          	addi	sp,sp,-16
    1974:	00812423          	sw	s0,8(sp)
    1978:	00006437          	lui	s0,0x6
    197c:	00112623          	sw	ra,12(sp)
    1980:	27040793          	addi	a5,s0,624 # 6270 <_free_file_list>
    1984:	0007a223          	sw	zero,4(a5)
    1988:	0007a023          	sw	zero,0(a5)
    198c:	0000b5b7          	lui	a1,0xb
    1990:	000067b7          	lui	a5,0x6
    1994:	27878793          	addi	a5,a5,632 # 6278 <_open_file_list>
    1998:	27040513          	addi	a0,s0,624
    199c:	ef458593          	addi	a1,a1,-268 # aef4 <_files+0x43c>
    19a0:	0007a223          	sw	zero,4(a5)
    19a4:	0007a023          	sw	zero,0(a5)
    19a8:	00000097          	auipc	ra,0x0
    19ac:	85c080e7          	jalr	-1956(ra) # 1204 <fat_list_insert_last>
    19b0:	0000b5b7          	lui	a1,0xb
    19b4:	27040513          	addi	a0,s0,624
    19b8:	33858593          	addi	a1,a1,824 # b338 <_files+0x880>
    19bc:	00000097          	auipc	ra,0x0
    19c0:	848080e7          	jalr	-1976(ra) # 1204 <fat_list_insert_last>
    19c4:	00c12083          	lw	ra,12(sp)
    19c8:	00812403          	lw	s0,8(sp)
    19cc:	000067b7          	lui	a5,0x6
    19d0:	00100713          	li	a4,1
    19d4:	28e7a223          	sw	a4,644(a5) # 6284 <_filelib_init>
    19d8:	01010113          	addi	sp,sp,16
    19dc:	00008067          	ret

000019e0 <fl_attach_locks>:
    19e0:	0000a7b7          	lui	a5,0xa
    19e4:	65078793          	addi	a5,a5,1616 # a650 <_fs>
    19e8:	02a7ae23          	sw	a0,60(a5)
    19ec:	04b7a023          	sw	a1,64(a5)
    19f0:	00008067          	ret

000019f4 <fl_fseek>:
    19f4:	000067b7          	lui	a5,0x6
    19f8:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    19fc:	fe010113          	addi	sp,sp,-32
    1a00:	00812c23          	sw	s0,24(sp)
    1a04:	00912a23          	sw	s1,20(sp)
    1a08:	01212823          	sw	s2,16(sp)
    1a0c:	00112e23          	sw	ra,28(sp)
    1a10:	01312623          	sw	s3,12(sp)
    1a14:	00050413          	mv	s0,a0
    1a18:	00058913          	mv	s2,a1
    1a1c:	00060493          	mv	s1,a2
    1a20:	00079663          	bnez	a5,1a2c <fl_fseek+0x38>
    1a24:	00000097          	auipc	ra,0x0
    1a28:	f4c080e7          	jalr	-180(ra) # 1970 <fl_init>
    1a2c:	0c040c63          	beqz	s0,1b04 <fl_fseek+0x110>
    1a30:	00200793          	li	a5,2
    1a34:	00f49463          	bne	s1,a5,1a3c <fl_fseek+0x48>
    1a38:	0c091663          	bnez	s2,1b04 <fl_fseek+0x110>
    1a3c:	0000a7b7          	lui	a5,0xa
    1a40:	65078713          	addi	a4,a5,1616 # a650 <_fs>
    1a44:	03c72703          	lw	a4,60(a4)
    1a48:	65078993          	addi	s3,a5,1616
    1a4c:	00070463          	beqz	a4,1a54 <fl_fseek+0x60>
    1a50:	000700e7          	jalr	a4
    1a54:	fff00793          	li	a5,-1
    1a58:	42f42823          	sw	a5,1072(s0)
    1a5c:	42042a23          	sw	zero,1076(s0)
    1a60:	04049463          	bnez	s1,1aa8 <fl_fseek+0xb4>
    1a64:	00c42783          	lw	a5,12(s0)
    1a68:	01242423          	sw	s2,8(s0)
    1a6c:	0127e663          	bltu	a5,s2,1a78 <fl_fseek+0x84>
    1a70:	00000493          	li	s1,0
    1a74:	0080006f          	j	1a7c <fl_fseek+0x88>
    1a78:	00f42423          	sw	a5,8(s0)
    1a7c:	0409a783          	lw	a5,64(s3)
    1a80:	00078463          	beqz	a5,1a88 <fl_fseek+0x94>
    1a84:	000780e7          	jalr	a5
    1a88:	01c12083          	lw	ra,28(sp)
    1a8c:	01812403          	lw	s0,24(sp)
    1a90:	01012903          	lw	s2,16(sp)
    1a94:	00c12983          	lw	s3,12(sp)
    1a98:	00048513          	mv	a0,s1
    1a9c:	01412483          	lw	s1,20(sp)
    1aa0:	02010113          	addi	sp,sp,32
    1aa4:	00008067          	ret
    1aa8:	00100793          	li	a5,1
    1aac:	04f49063          	bne	s1,a5,1aec <fl_fseek+0xf8>
    1ab0:	00842783          	lw	a5,8(s0)
    1ab4:	00094e63          	bltz	s2,1ad0 <fl_fseek+0xdc>
    1ab8:	00f90933          	add	s2,s2,a5
    1abc:	00c42783          	lw	a5,12(s0)
    1ac0:	01242423          	sw	s2,8(s0)
    1ac4:	fb27f6e3          	bgeu	a5,s2,1a70 <fl_fseek+0x7c>
    1ac8:	00f42423          	sw	a5,8(s0)
    1acc:	fa5ff06f          	j	1a70 <fl_fseek+0x7c>
    1ad0:	41200733          	neg	a4,s2
    1ad4:	00e7f663          	bgeu	a5,a4,1ae0 <fl_fseek+0xec>
    1ad8:	00042423          	sw	zero,8(s0)
    1adc:	f95ff06f          	j	1a70 <fl_fseek+0x7c>
    1ae0:	00f90933          	add	s2,s2,a5
    1ae4:	01242423          	sw	s2,8(s0)
    1ae8:	f89ff06f          	j	1a70 <fl_fseek+0x7c>
    1aec:	00200793          	li	a5,2
    1af0:	00f49663          	bne	s1,a5,1afc <fl_fseek+0x108>
    1af4:	00c42783          	lw	a5,12(s0)
    1af8:	fd1ff06f          	j	1ac8 <fl_fseek+0xd4>
    1afc:	fff00493          	li	s1,-1
    1b00:	f7dff06f          	j	1a7c <fl_fseek+0x88>
    1b04:	fff00493          	li	s1,-1
    1b08:	f81ff06f          	j	1a88 <fl_fseek+0x94>

00001b0c <fl_fgetpos>:
    1b0c:	06050663          	beqz	a0,1b78 <fl_fgetpos+0x6c>
    1b10:	0000a7b7          	lui	a5,0xa
    1b14:	65078713          	addi	a4,a5,1616 # a650 <_fs>
    1b18:	03c72703          	lw	a4,60(a4)
    1b1c:	ff010113          	addi	sp,sp,-16
    1b20:	00812423          	sw	s0,8(sp)
    1b24:	00912223          	sw	s1,4(sp)
    1b28:	01212023          	sw	s2,0(sp)
    1b2c:	00112623          	sw	ra,12(sp)
    1b30:	00050493          	mv	s1,a0
    1b34:	00058913          	mv	s2,a1
    1b38:	65078413          	addi	s0,a5,1616
    1b3c:	00070463          	beqz	a4,1b44 <fl_fgetpos+0x38>
    1b40:	000700e7          	jalr	a4
    1b44:	0084a783          	lw	a5,8(s1)
    1b48:	00000513          	li	a0,0
    1b4c:	00f92023          	sw	a5,0(s2)
    1b50:	04042783          	lw	a5,64(s0)
    1b54:	00078663          	beqz	a5,1b60 <fl_fgetpos+0x54>
    1b58:	000780e7          	jalr	a5
    1b5c:	00000513          	li	a0,0
    1b60:	00c12083          	lw	ra,12(sp)
    1b64:	00812403          	lw	s0,8(sp)
    1b68:	00412483          	lw	s1,4(sp)
    1b6c:	00012903          	lw	s2,0(sp)
    1b70:	01010113          	addi	sp,sp,16
    1b74:	00008067          	ret
    1b78:	fff00513          	li	a0,-1
    1b7c:	00008067          	ret

00001b80 <fl_ftell>:
    1b80:	fe010113          	addi	sp,sp,-32
    1b84:	00c10593          	addi	a1,sp,12
    1b88:	00112e23          	sw	ra,28(sp)
    1b8c:	00012623          	sw	zero,12(sp)
    1b90:	00000097          	auipc	ra,0x0
    1b94:	f7c080e7          	jalr	-132(ra) # 1b0c <fl_fgetpos>
    1b98:	01c12083          	lw	ra,28(sp)
    1b9c:	00c12503          	lw	a0,12(sp)
    1ba0:	02010113          	addi	sp,sp,32
    1ba4:	00008067          	ret

00001ba8 <fl_feof>:
    1ba8:	06050663          	beqz	a0,1c14 <fl_feof+0x6c>
    1bac:	0000a7b7          	lui	a5,0xa
    1bb0:	65078713          	addi	a4,a5,1616 # a650 <_fs>
    1bb4:	03c72703          	lw	a4,60(a4)
    1bb8:	fe010113          	addi	sp,sp,-32
    1bbc:	00812c23          	sw	s0,24(sp)
    1bc0:	00912a23          	sw	s1,20(sp)
    1bc4:	00112e23          	sw	ra,28(sp)
    1bc8:	00050413          	mv	s0,a0
    1bcc:	65078493          	addi	s1,a5,1616
    1bd0:	00070463          	beqz	a4,1bd8 <fl_feof+0x30>
    1bd4:	000700e7          	jalr	a4
    1bd8:	00842783          	lw	a5,8(s0)
    1bdc:	00c42703          	lw	a4,12(s0)
    1be0:	40e78533          	sub	a0,a5,a4
    1be4:	0404a783          	lw	a5,64(s1)
    1be8:	00153513          	seqz	a0,a0
    1bec:	40a00533          	neg	a0,a0
    1bf0:	00078863          	beqz	a5,1c00 <fl_feof+0x58>
    1bf4:	00a12623          	sw	a0,12(sp)
    1bf8:	000780e7          	jalr	a5
    1bfc:	00c12503          	lw	a0,12(sp)
    1c00:	01c12083          	lw	ra,28(sp)
    1c04:	01812403          	lw	s0,24(sp)
    1c08:	01412483          	lw	s1,20(sp)
    1c0c:	02010113          	addi	sp,sp,32
    1c10:	00008067          	ret
    1c14:	fff00513          	li	a0,-1
    1c18:	00008067          	ret

00001c1c <fl_closedir>:
    1c1c:	00000513          	li	a0,0
    1c20:	00008067          	ret

00001c24 <fatfs_lfn_cache_init>:
    1c24:	100502a3          	sb	zero,261(a0)
    1c28:	04058663          	beqz	a1,1c74 <fatfs_lfn_cache_init+0x50>
    1c2c:	ff010113          	addi	sp,sp,-16
    1c30:	00812423          	sw	s0,8(sp)
    1c34:	00912223          	sw	s1,4(sp)
    1c38:	00112623          	sw	ra,12(sp)
    1c3c:	00050413          	mv	s0,a0
    1c40:	10450493          	addi	s1,a0,260
    1c44:	00040513          	mv	a0,s0
    1c48:	00d00613          	li	a2,13
    1c4c:	00000593          	li	a1,0
    1c50:	00d40413          	addi	s0,s0,13
    1c54:	fffff097          	auipc	ra,0xfffff
    1c58:	d58080e7          	jalr	-680(ra) # 9ac <memset>
    1c5c:	fe9414e3          	bne	s0,s1,1c44 <fatfs_lfn_cache_init+0x20>
    1c60:	00c12083          	lw	ra,12(sp)
    1c64:	00812403          	lw	s0,8(sp)
    1c68:	00412483          	lw	s1,4(sp)
    1c6c:	01010113          	addi	sp,sp,16
    1c70:	00008067          	ret
    1c74:	00008067          	ret

00001c78 <fatfs_lfn_cache_entry>:
    1c78:	0005c783          	lbu	a5,0(a1)
    1c7c:	01300693          	li	a3,19
    1c80:	01f7f793          	andi	a5,a5,31
    1c84:	fff78713          	addi	a4,a5,-1
    1c88:	0ff77613          	zext.b	a2,a4
    1c8c:	0ac6ea63          	bltu	a3,a2,1d40 <fatfs_lfn_cache_entry+0xc8>
    1c90:	10554683          	lbu	a3,261(a0)
    1c94:	00069463          	bnez	a3,1c9c <fatfs_lfn_cache_entry+0x24>
    1c98:	10f502a3          	sb	a5,261(a0)
    1c9c:	00171793          	slli	a5,a4,0x1
    1ca0:	00e787b3          	add	a5,a5,a4
    1ca4:	0015c683          	lbu	a3,1(a1)
    1ca8:	00279793          	slli	a5,a5,0x2
    1cac:	00e787b3          	add	a5,a5,a4
    1cb0:	00f50533          	add	a0,a0,a5
    1cb4:	00d50023          	sb	a3,0(a0)
    1cb8:	0035c783          	lbu	a5,3(a1)
    1cbc:	0ff00713          	li	a4,255
    1cc0:	02000693          	li	a3,32
    1cc4:	00f500a3          	sb	a5,1(a0)
    1cc8:	0055c783          	lbu	a5,5(a1)
    1ccc:	00f50123          	sb	a5,2(a0)
    1cd0:	0075c783          	lbu	a5,7(a1)
    1cd4:	00f501a3          	sb	a5,3(a0)
    1cd8:	0095c783          	lbu	a5,9(a1)
    1cdc:	00f50223          	sb	a5,4(a0)
    1ce0:	00e5c783          	lbu	a5,14(a1)
    1ce4:	00f502a3          	sb	a5,5(a0)
    1ce8:	0105c783          	lbu	a5,16(a1)
    1cec:	00f50323          	sb	a5,6(a0)
    1cf0:	0125c783          	lbu	a5,18(a1)
    1cf4:	00f503a3          	sb	a5,7(a0)
    1cf8:	0145c783          	lbu	a5,20(a1)
    1cfc:	00f50423          	sb	a5,8(a0)
    1d00:	0165c783          	lbu	a5,22(a1)
    1d04:	00f504a3          	sb	a5,9(a0)
    1d08:	0185c783          	lbu	a5,24(a1)
    1d0c:	00f50523          	sb	a5,10(a0)
    1d10:	01c5c783          	lbu	a5,28(a1)
    1d14:	00f505a3          	sb	a5,11(a0)
    1d18:	01e5c783          	lbu	a5,30(a1)
    1d1c:	00f50623          	sb	a5,12(a0)
    1d20:	00d00793          	li	a5,13
    1d24:	00054603          	lbu	a2,0(a0)
    1d28:	00e61463          	bne	a2,a4,1d30 <fatfs_lfn_cache_entry+0xb8>
    1d2c:	00d50023          	sb	a3,0(a0)
    1d30:	fff78793          	addi	a5,a5,-1
    1d34:	0ff7f793          	zext.b	a5,a5
    1d38:	00150513          	addi	a0,a0,1
    1d3c:	fe0794e3          	bnez	a5,1d24 <fatfs_lfn_cache_entry+0xac>
    1d40:	00008067          	ret

00001d44 <fatfs_lfn_cache_get>:
    1d44:	10554703          	lbu	a4,261(a0)
    1d48:	01400793          	li	a5,20
    1d4c:	00f71663          	bne	a4,a5,1d58 <fatfs_lfn_cache_get+0x14>
    1d50:	10050223          	sb	zero,260(a0)
    1d54:	00008067          	ret
    1d58:	02070063          	beqz	a4,1d78 <fatfs_lfn_cache_get+0x34>
    1d5c:	00171793          	slli	a5,a4,0x1
    1d60:	00e787b3          	add	a5,a5,a4
    1d64:	00279793          	slli	a5,a5,0x2
    1d68:	00e787b3          	add	a5,a5,a4
    1d6c:	00f507b3          	add	a5,a0,a5
    1d70:	00078023          	sb	zero,0(a5)
    1d74:	00008067          	ret
    1d78:	00050023          	sb	zero,0(a0)
    1d7c:	00008067          	ret

00001d80 <fatfs_entry_lfn_text>:
    1d80:	00b54503          	lbu	a0,11(a0)
    1d84:	00f57513          	andi	a0,a0,15
    1d88:	ff150513          	addi	a0,a0,-15
    1d8c:	00153513          	seqz	a0,a0
    1d90:	00008067          	ret

00001d94 <fatfs_entry_lfn_invalid>:
    1d94:	00054703          	lbu	a4,0(a0)
    1d98:	00050793          	mv	a5,a0
    1d9c:	02070463          	beqz	a4,1dc4 <fatfs_entry_lfn_invalid+0x30>
    1da0:	0e500693          	li	a3,229
    1da4:	00100513          	li	a0,1
    1da8:	02d70063          	beq	a4,a3,1dc8 <fatfs_entry_lfn_invalid+0x34>
    1dac:	00b7c783          	lbu	a5,11(a5)
    1db0:	00800713          	li	a4,8
    1db4:	00e78a63          	beq	a5,a4,1dc8 <fatfs_entry_lfn_invalid+0x34>
    1db8:	0067f793          	andi	a5,a5,6
    1dbc:	00f03533          	snez	a0,a5
    1dc0:	00008067          	ret
    1dc4:	00100513          	li	a0,1
    1dc8:	00008067          	ret

00001dcc <fatfs_entry_lfn_exists>:
    1dcc:	00b5c783          	lbu	a5,11(a1)
    1dd0:	00f00693          	li	a3,15
    1dd4:	00050713          	mv	a4,a0
    1dd8:	02d78a63          	beq	a5,a3,1e0c <fatfs_entry_lfn_exists+0x40>
    1ddc:	0005c683          	lbu	a3,0(a1)
    1de0:	00000513          	li	a0,0
    1de4:	02068663          	beqz	a3,1e10 <fatfs_entry_lfn_exists+0x44>
    1de8:	0e500613          	li	a2,229
    1dec:	02c68263          	beq	a3,a2,1e10 <fatfs_entry_lfn_exists+0x44>
    1df0:	00800693          	li	a3,8
    1df4:	00d78e63          	beq	a5,a3,1e10 <fatfs_entry_lfn_exists+0x44>
    1df8:	0067f793          	andi	a5,a5,6
    1dfc:	00079a63          	bnez	a5,1e10 <fatfs_entry_lfn_exists+0x44>
    1e00:	10574503          	lbu	a0,261(a4)
    1e04:	00a03533          	snez	a0,a0
    1e08:	00008067          	ret
    1e0c:	00000513          	li	a0,0
    1e10:	00008067          	ret

00001e14 <fatfs_entry_sfn_only>:
    1e14:	00b54783          	lbu	a5,11(a0)
    1e18:	00f00713          	li	a4,15
    1e1c:	02e78663          	beq	a5,a4,1e48 <fatfs_entry_sfn_only+0x34>
    1e20:	00054703          	lbu	a4,0(a0)
    1e24:	00000513          	li	a0,0
    1e28:	02070263          	beqz	a4,1e4c <fatfs_entry_sfn_only+0x38>
    1e2c:	0e500693          	li	a3,229
    1e30:	00d70e63          	beq	a4,a3,1e4c <fatfs_entry_sfn_only+0x38>
    1e34:	00800713          	li	a4,8
    1e38:	00e78a63          	beq	a5,a4,1e4c <fatfs_entry_sfn_only+0x38>
    1e3c:	0067f793          	andi	a5,a5,6
    1e40:	0017b513          	seqz	a0,a5
    1e44:	00008067          	ret
    1e48:	00000513          	li	a0,0
    1e4c:	00008067          	ret

00001e50 <fatfs_entry_is_dir>:
    1e50:	00b54503          	lbu	a0,11(a0)
    1e54:	00455513          	srli	a0,a0,0x4
    1e58:	00157513          	andi	a0,a0,1
    1e5c:	00008067          	ret

00001e60 <fatfs_entry_is_file>:
    1e60:	00b54503          	lbu	a0,11(a0)
    1e64:	00555513          	srli	a0,a0,0x5
    1e68:	00157513          	andi	a0,a0,1
    1e6c:	00008067          	ret

00001e70 <fatfs_lfn_entries_required>:
    1e70:	ff010113          	addi	sp,sp,-16
    1e74:	00112623          	sw	ra,12(sp)
    1e78:	fffff097          	auipc	ra,0xfffff
    1e7c:	b74080e7          	jalr	-1164(ra) # 9ec <strlen>
    1e80:	00050a63          	beqz	a0,1e94 <fatfs_lfn_entries_required+0x24>
    1e84:	00d00593          	li	a1,13
    1e88:	00c50513          	addi	a0,a0,12
    1e8c:	fffff097          	auipc	ra,0xfffff
    1e90:	a44080e7          	jalr	-1468(ra) # 8d0 <__divsi3>
    1e94:	00c12083          	lw	ra,12(sp)
    1e98:	01010113          	addi	sp,sp,16
    1e9c:	00008067          	ret

00001ea0 <fatfs_filename_to_lfn>:
    1ea0:	fa010113          	addi	sp,sp,-96
    1ea4:	04912a23          	sw	s1,84(sp)
    1ea8:	00058493          	mv	s1,a1
    1eac:	000065b7          	lui	a1,0x6
    1eb0:	00858593          	addi	a1,a1,8 # 6008 <font+0x1e0>
    1eb4:	05212823          	sw	s2,80(sp)
    1eb8:	05312623          	sw	s3,76(sp)
    1ebc:	00060913          	mv	s2,a2
    1ec0:	00050993          	mv	s3,a0
    1ec4:	03400613          	li	a2,52
    1ec8:	00c10513          	addi	a0,sp,12
    1ecc:	04112e23          	sw	ra,92(sp)
    1ed0:	04812c23          	sw	s0,88(sp)
    1ed4:	05412423          	sw	s4,72(sp)
    1ed8:	05512223          	sw	s5,68(sp)
    1edc:	05612023          	sw	s6,64(sp)
    1ee0:	00068b13          	mv	s6,a3
    1ee4:	fffff097          	auipc	ra,0xfffff
    1ee8:	ae4080e7          	jalr	-1308(ra) # 9c8 <memcpy>
    1eec:	00098513          	mv	a0,s3
    1ef0:	fffff097          	auipc	ra,0xfffff
    1ef4:	afc080e7          	jalr	-1284(ra) # 9ec <strlen>
    1ef8:	00050a93          	mv	s5,a0
    1efc:	00098513          	mv	a0,s3
    1f00:	00000097          	auipc	ra,0x0
    1f04:	f70080e7          	jalr	-144(ra) # 1e70 <fatfs_lfn_entries_required>
    1f08:	00191793          	slli	a5,s2,0x1
    1f0c:	012787b3          	add	a5,a5,s2
    1f10:	00279793          	slli	a5,a5,0x2
    1f14:	00050a13          	mv	s4,a0
    1f18:	02000613          	li	a2,32
    1f1c:	00000593          	li	a1,0
    1f20:	00048513          	mv	a0,s1
    1f24:	01278433          	add	s0,a5,s2
    1f28:	fffff097          	auipc	ra,0xfffff
    1f2c:	a84080e7          	jalr	-1404(ra) # 9ac <memset>
    1f30:	00190793          	addi	a5,s2,1
    1f34:	fffa0a13          	addi	s4,s4,-1 # 3fff <fatfs_list_directory_next+0xeb>
    1f38:	0ff7f793          	zext.b	a5,a5
    1f3c:	012a1463          	bne	s4,s2,1f44 <fatfs_filename_to_lfn+0xa4>
    1f40:	0407e793          	ori	a5,a5,64
    1f44:	00f48023          	sb	a5,0(s1)
    1f48:	00f00793          	li	a5,15
    1f4c:	00f485a3          	sb	a5,11(s1)
    1f50:	016486a3          	sb	s6,13(s1)
    1f54:	00c10713          	addi	a4,sp,12
    1f58:	00040793          	mv	a5,s0
    1f5c:	00d40593          	addi	a1,s0,13
    1f60:	fff00613          	li	a2,-1
    1f64:	00072683          	lw	a3,0(a4)
    1f68:	00d486b3          	add	a3,s1,a3
    1f6c:	0557d263          	bge	a5,s5,1fb0 <fatfs_filename_to_lfn+0x110>
    1f70:	00f98533          	add	a0,s3,a5
    1f74:	00054503          	lbu	a0,0(a0)
    1f78:	00a68023          	sb	a0,0(a3)
    1f7c:	00178793          	addi	a5,a5,1
    1f80:	00470713          	addi	a4,a4,4
    1f84:	feb790e3          	bne	a5,a1,1f64 <fatfs_filename_to_lfn+0xc4>
    1f88:	05c12083          	lw	ra,92(sp)
    1f8c:	05812403          	lw	s0,88(sp)
    1f90:	05412483          	lw	s1,84(sp)
    1f94:	05012903          	lw	s2,80(sp)
    1f98:	04c12983          	lw	s3,76(sp)
    1f9c:	04812a03          	lw	s4,72(sp)
    1fa0:	04412a83          	lw	s5,68(sp)
    1fa4:	04012b03          	lw	s6,64(sp)
    1fa8:	06010113          	addi	sp,sp,96
    1fac:	00008067          	ret
    1fb0:	00fa9663          	bne	s5,a5,1fbc <fatfs_filename_to_lfn+0x11c>
    1fb4:	00068023          	sb	zero,0(a3)
    1fb8:	fc5ff06f          	j	1f7c <fatfs_filename_to_lfn+0xdc>
    1fbc:	00c68023          	sb	a2,0(a3)
    1fc0:	00c680a3          	sb	a2,1(a3)
    1fc4:	fb9ff06f          	j	1f7c <fatfs_filename_to_lfn+0xdc>

00001fc8 <fatfs_sfn_create_entry>:
    1fc8:	00000793          	li	a5,0
    1fcc:	00b00813          	li	a6,11
    1fd0:	00f508b3          	add	a7,a0,a5
    1fd4:	0008c303          	lbu	t1,0(a7)
    1fd8:	00f688b3          	add	a7,a3,a5
    1fdc:	00178793          	addi	a5,a5,1
    1fe0:	00688023          	sb	t1,0(a7)
    1fe4:	ff0796e3          	bne	a5,a6,1fd0 <fatfs_sfn_create_entry+0x8>
    1fe8:	02000793          	li	a5,32
    1fec:	000686a3          	sb	zero,13(a3)
    1ff0:	00068723          	sb	zero,14(a3)
    1ff4:	000687a3          	sb	zero,15(a3)
    1ff8:	000688a3          	sb	zero,17(a3)
    1ffc:	00f68823          	sb	a5,16(a3)
    2000:	000689a3          	sb	zero,19(a3)
    2004:	00f68923          	sb	a5,18(a3)
    2008:	00068b23          	sb	zero,22(a3)
    200c:	00068ba3          	sb	zero,23(a3)
    2010:	00068ca3          	sb	zero,25(a3)
    2014:	00f68c23          	sb	a5,24(a3)
    2018:	00070463          	beqz	a4,2020 <fatfs_sfn_create_entry+0x58>
    201c:	01000793          	li	a5,16
    2020:	00f685a3          	sb	a5,11(a3)
    2024:	01065793          	srli	a5,a2,0x10
    2028:	00f68a23          	sb	a5,20(a3)
    202c:	0087d793          	srli	a5,a5,0x8
    2030:	00f68aa3          	sb	a5,21(a3)
    2034:	01061793          	slli	a5,a2,0x10
    2038:	0107d793          	srli	a5,a5,0x10
    203c:	0087d793          	srli	a5,a5,0x8
    2040:	00f68da3          	sb	a5,27(a3)
    2044:	0085d793          	srli	a5,a1,0x8
    2048:	00b68e23          	sb	a1,28(a3)
    204c:	00f68ea3          	sb	a5,29(a3)
    2050:	0105d793          	srli	a5,a1,0x10
    2054:	0185d593          	srli	a1,a1,0x18
    2058:	00068623          	sb	zero,12(a3)
    205c:	00c68d23          	sb	a2,26(a3)
    2060:	00f68f23          	sb	a5,30(a3)
    2064:	00b68fa3          	sb	a1,31(a3)
    2068:	00008067          	ret

0000206c <fatfs_lfn_create_sfn>:
    206c:	0005c703          	lbu	a4,0(a1)
    2070:	02e00793          	li	a5,46
    2074:	16f70463          	beq	a4,a5,21dc <fatfs_lfn_create_sfn+0x170>
    2078:	fe010113          	addi	sp,sp,-32
    207c:	00912a23          	sw	s1,20(sp)
    2080:	00050493          	mv	s1,a0
    2084:	00058513          	mv	a0,a1
    2088:	00112e23          	sw	ra,28(sp)
    208c:	00812c23          	sw	s0,24(sp)
    2090:	01212823          	sw	s2,16(sp)
    2094:	00058413          	mv	s0,a1
    2098:	fffff097          	auipc	ra,0xfffff
    209c:	954080e7          	jalr	-1708(ra) # 9ec <strlen>
    20a0:	00b00613          	li	a2,11
    20a4:	02000593          	li	a1,32
    20a8:	00050913          	mv	s2,a0
    20ac:	00048513          	mv	a0,s1
    20b0:	fffff097          	auipc	ra,0xfffff
    20b4:	8fc080e7          	jalr	-1796(ra) # 9ac <memset>
    20b8:	00300613          	li	a2,3
    20bc:	02000593          	li	a1,32
    20c0:	00c10513          	addi	a0,sp,12
    20c4:	fffff097          	auipc	ra,0xfffff
    20c8:	8e8080e7          	jalr	-1816(ra) # 9ac <memset>
    20cc:	fff00713          	li	a4,-1
    20d0:	00000793          	li	a5,0
    20d4:	02e00693          	li	a3,46
    20d8:	0d27c063          	blt	a5,s2,2198 <fatfs_lfn_create_sfn+0x12c>
    20dc:	fff00793          	li	a5,-1
    20e0:	0ef70663          	beq	a4,a5,21cc <fatfs_lfn_create_sfn+0x160>
    20e4:	00170793          	addi	a5,a4,1
    20e8:	00c10693          	addi	a3,sp,12
    20ec:	00470613          	addi	a2,a4,4
    20f0:	0cf61063          	bne	a2,a5,21b0 <fatfs_lfn_create_sfn+0x144>
    20f4:	00000613          	li	a2,0
    20f8:	00000693          	li	a3,0
    20fc:	02000813          	li	a6,32
    2100:	02e00893          	li	a7,46
    2104:	01900313          	li	t1,25
    2108:	00800e13          	li	t3,8
    210c:	02e6da63          	bge	a3,a4,2140 <fatfs_lfn_create_sfn+0xd4>
    2110:	00d407b3          	add	a5,s0,a3
    2114:	0007c783          	lbu	a5,0(a5)
    2118:	03078263          	beq	a5,a6,213c <fatfs_lfn_create_sfn+0xd0>
    211c:	03178063          	beq	a5,a7,213c <fatfs_lfn_create_sfn+0xd0>
    2120:	f9f78593          	addi	a1,a5,-97
    2124:	0ff5f593          	zext.b	a1,a1
    2128:	00c48533          	add	a0,s1,a2
    212c:	00160613          	addi	a2,a2,1
    2130:	00b36463          	bltu	t1,a1,2138 <fatfs_lfn_create_sfn+0xcc>
    2134:	fe078793          	addi	a5,a5,-32
    2138:	00f50023          	sb	a5,0(a0)
    213c:	09c61c63          	bne	a2,t3,21d4 <fatfs_lfn_create_sfn+0x168>
    2140:	00c10793          	addi	a5,sp,12
    2144:	00800693          	li	a3,8
    2148:	01900513          	li	a0,25
    214c:	00b00593          	li	a1,11
    2150:	0007c703          	lbu	a4,0(a5)
    2154:	f9f70613          	addi	a2,a4,-97
    2158:	0ff67613          	zext.b	a2,a2
    215c:	00c56663          	bltu	a0,a2,2168 <fatfs_lfn_create_sfn+0xfc>
    2160:	fe070713          	addi	a4,a4,-32
    2164:	0ff77713          	zext.b	a4,a4
    2168:	00d48633          	add	a2,s1,a3
    216c:	00e60023          	sb	a4,0(a2)
    2170:	00168693          	addi	a3,a3,1
    2174:	00178793          	addi	a5,a5,1
    2178:	fcb69ce3          	bne	a3,a1,2150 <fatfs_lfn_create_sfn+0xe4>
    217c:	01c12083          	lw	ra,28(sp)
    2180:	01812403          	lw	s0,24(sp)
    2184:	01412483          	lw	s1,20(sp)
    2188:	01012903          	lw	s2,16(sp)
    218c:	00100513          	li	a0,1
    2190:	02010113          	addi	sp,sp,32
    2194:	00008067          	ret
    2198:	00f40633          	add	a2,s0,a5
    219c:	00064603          	lbu	a2,0(a2)
    21a0:	00d61463          	bne	a2,a3,21a8 <fatfs_lfn_create_sfn+0x13c>
    21a4:	00078713          	mv	a4,a5
    21a8:	00178793          	addi	a5,a5,1
    21ac:	f2dff06f          	j	20d8 <fatfs_lfn_create_sfn+0x6c>
    21b0:	0127d863          	bge	a5,s2,21c0 <fatfs_lfn_create_sfn+0x154>
    21b4:	00f405b3          	add	a1,s0,a5
    21b8:	0005c583          	lbu	a1,0(a1)
    21bc:	00b68023          	sb	a1,0(a3)
    21c0:	00178793          	addi	a5,a5,1
    21c4:	00168693          	addi	a3,a3,1
    21c8:	f29ff06f          	j	20f0 <fatfs_lfn_create_sfn+0x84>
    21cc:	00090713          	mv	a4,s2
    21d0:	f25ff06f          	j	20f4 <fatfs_lfn_create_sfn+0x88>
    21d4:	00168693          	addi	a3,a3,1
    21d8:	f35ff06f          	j	210c <fatfs_lfn_create_sfn+0xa0>
    21dc:	00000513          	li	a0,0
    21e0:	00008067          	ret

000021e4 <fatfs_lfn_generate_tail>:
    21e4:	000187b7          	lui	a5,0x18
    21e8:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    21ec:	16c7e063          	bltu	a5,a2,234c <fatfs_lfn_generate_tail+0x168>
    21f0:	fa010113          	addi	sp,sp,-96
    21f4:	04812c23          	sw	s0,88(sp)
    21f8:	04912a23          	sw	s1,84(sp)
    21fc:	05412423          	sw	s4,72(sp)
    2200:	00050493          	mv	s1,a0
    2204:	00058a13          	mv	s4,a1
    2208:	00060413          	mv	s0,a2
    220c:	00000593          	li	a1,0
    2210:	00c00613          	li	a2,12
    2214:	00410513          	addi	a0,sp,4
    2218:	04112e23          	sw	ra,92(sp)
    221c:	05212823          	sw	s2,80(sp)
    2220:	05512223          	sw	s5,68(sp)
    2224:	03712e23          	sw	s7,60(sp)
    2228:	05312623          	sw	s3,76(sp)
    222c:	05612023          	sw	s6,64(sp)
    2230:	ffffe097          	auipc	ra,0xffffe
    2234:	77c080e7          	jalr	1916(ra) # 9ac <memset>
    2238:	000065b7          	lui	a1,0x6
    223c:	07e00793          	li	a5,126
    2240:	01100613          	li	a2,17
    2244:	0d058593          	addi	a1,a1,208 # 60d0 <font+0x2a8>
    2248:	01c10513          	addi	a0,sp,28
    224c:	01010913          	addi	s2,sp,16
    2250:	00f10223          	sb	a5,4(sp)
    2254:	00090a93          	mv	s5,s2
    2258:	ffffe097          	auipc	ra,0xffffe
    225c:	770080e7          	jalr	1904(ra) # 9c8 <memcpy>
    2260:	00900b93          	li	s7,9
    2264:	00a00593          	li	a1,10
    2268:	00040513          	mv	a0,s0
    226c:	ffffe097          	auipc	ra,0xffffe
    2270:	6b4080e7          	jalr	1716(ra) # 920 <__umodsi3>
    2274:	03050793          	addi	a5,a0,48
    2278:	00278533          	add	a0,a5,sp
    227c:	fec54783          	lbu	a5,-20(a0)
    2280:	00090993          	mv	s3,s2
    2284:	00040513          	mv	a0,s0
    2288:	00a00593          	li	a1,10
    228c:	00f90023          	sb	a5,0(s2)
    2290:	00040b13          	mv	s6,s0
    2294:	ffffe097          	auipc	ra,0xffffe
    2298:	644080e7          	jalr	1604(ra) # 8d8 <__udivsi3>
    229c:	00190913          	addi	s2,s2,1
    22a0:	00050413          	mv	s0,a0
    22a4:	fd6be0e3          	bltu	s7,s6,2264 <fatfs_lfn_generate_tail+0x80>
    22a8:	00090023          	sb	zero,0(s2)
    22ac:	00410713          	addi	a4,sp,4
    22b0:	00098793          	mv	a5,s3
    22b4:	0007c683          	lbu	a3,0(a5)
    22b8:	fff78793          	addi	a5,a5,-1
    22bc:	00170713          	addi	a4,a4,1
    22c0:	00d70023          	sb	a3,0(a4)
    22c4:	ff57f8e3          	bgeu	a5,s5,22b4 <fatfs_lfn_generate_tail+0xd0>
    22c8:	00100793          	li	a5,1
    22cc:	0159e663          	bltu	s3,s5,22d8 <fatfs_lfn_generate_tail+0xf4>
    22d0:	415787b3          	sub	a5,a5,s5
    22d4:	00f987b3          	add	a5,s3,a5
    22d8:	03078793          	addi	a5,a5,48
    22dc:	002787b3          	add	a5,a5,sp
    22e0:	000a0593          	mv	a1,s4
    22e4:	fc078aa3          	sb	zero,-43(a5)
    22e8:	00b00613          	li	a2,11
    22ec:	00048513          	mv	a0,s1
    22f0:	ffffe097          	auipc	ra,0xffffe
    22f4:	6d8080e7          	jalr	1752(ra) # 9c8 <memcpy>
    22f8:	00410513          	addi	a0,sp,4
    22fc:	ffffe097          	auipc	ra,0xffffe
    2300:	6f0080e7          	jalr	1776(ra) # 9ec <strlen>
    2304:	40a484b3          	sub	s1,s1,a0
    2308:	00050613          	mv	a2,a0
    230c:	00410593          	addi	a1,sp,4
    2310:	00848513          	addi	a0,s1,8
    2314:	ffffe097          	auipc	ra,0xffffe
    2318:	6b4080e7          	jalr	1716(ra) # 9c8 <memcpy>
    231c:	05c12083          	lw	ra,92(sp)
    2320:	05812403          	lw	s0,88(sp)
    2324:	05412483          	lw	s1,84(sp)
    2328:	05012903          	lw	s2,80(sp)
    232c:	04c12983          	lw	s3,76(sp)
    2330:	04812a03          	lw	s4,72(sp)
    2334:	04412a83          	lw	s5,68(sp)
    2338:	04012b03          	lw	s6,64(sp)
    233c:	03c12b83          	lw	s7,60(sp)
    2340:	00100513          	li	a0,1
    2344:	06010113          	addi	sp,sp,96
    2348:	00008067          	ret
    234c:	00000513          	li	a0,0
    2350:	00008067          	ret

00002354 <fatfs_total_path_levels>:
    2354:	00050793          	mv	a5,a0
    2358:	06050463          	beqz	a0,23c0 <fatfs_total_path_levels+0x6c>
    235c:	00054703          	lbu	a4,0(a0)
    2360:	02f00693          	li	a3,47
    2364:	00d71863          	bne	a4,a3,2374 <fatfs_total_path_levels+0x20>
    2368:	00150793          	addi	a5,a0,1
    236c:	00000513          	li	a0,0
    2370:	0400006f          	j	23b0 <fatfs_total_path_levels+0x5c>
    2374:	00154683          	lbu	a3,1(a0)
    2378:	03a00713          	li	a4,58
    237c:	00e68a63          	beq	a3,a4,2390 <fatfs_total_path_levels+0x3c>
    2380:	00254683          	lbu	a3,2(a0)
    2384:	05c00713          	li	a4,92
    2388:	fff00513          	li	a0,-1
    238c:	02e69c63          	bne	a3,a4,23c4 <fatfs_total_path_levels+0x70>
    2390:	00378793          	addi	a5,a5,3
    2394:	05c00713          	li	a4,92
    2398:	fd5ff06f          	j	236c <fatfs_total_path_levels+0x18>
    239c:	00178793          	addi	a5,a5,1
    23a0:	00e68663          	beq	a3,a4,23ac <fatfs_total_path_levels+0x58>
    23a4:	0007c683          	lbu	a3,0(a5)
    23a8:	fe069ae3          	bnez	a3,239c <fatfs_total_path_levels+0x48>
    23ac:	00150513          	addi	a0,a0,1
    23b0:	0007c683          	lbu	a3,0(a5)
    23b4:	fe0698e3          	bnez	a3,23a4 <fatfs_total_path_levels+0x50>
    23b8:	fff50513          	addi	a0,a0,-1
    23bc:	00008067          	ret
    23c0:	fff00513          	li	a0,-1
    23c4:	00008067          	ret

000023c8 <fatfs_get_substring>:
    23c8:	0c050c63          	beqz	a0,24a0 <fatfs_get_substring+0xd8>
    23cc:	fe010113          	addi	sp,sp,-32
    23d0:	00912a23          	sw	s1,20(sp)
    23d4:	00112e23          	sw	ra,28(sp)
    23d8:	00812c23          	sw	s0,24(sp)
    23dc:	01212823          	sw	s2,16(sp)
    23e0:	01312623          	sw	s3,12(sp)
    23e4:	01412423          	sw	s4,8(sp)
    23e8:	00050793          	mv	a5,a0
    23ec:	00068493          	mv	s1,a3
    23f0:	fff00513          	li	a0,-1
    23f4:	06d05a63          	blez	a3,2468 <fatfs_get_substring+0xa0>
    23f8:	0007c983          	lbu	s3,0(a5)
    23fc:	02f00713          	li	a4,47
    2400:	00058a13          	mv	s4,a1
    2404:	00060913          	mv	s2,a2
    2408:	00178413          	addi	s0,a5,1
    240c:	02e98463          	beq	s3,a4,2434 <fatfs_get_substring+0x6c>
    2410:	0017c683          	lbu	a3,1(a5)
    2414:	03a00713          	li	a4,58
    2418:	00e68a63          	beq	a3,a4,242c <fatfs_get_substring+0x64>
    241c:	0027c683          	lbu	a3,2(a5)
    2420:	05c00713          	li	a4,92
    2424:	fff00513          	li	a0,-1
    2428:	04e69063          	bne	a3,a4,2468 <fatfs_get_substring+0xa0>
    242c:	00378413          	addi	s0,a5,3
    2430:	05c00993          	li	s3,92
    2434:	00040513          	mv	a0,s0
    2438:	ffffe097          	auipc	ra,0xffffe
    243c:	5b4080e7          	jalr	1460(ra) # 9ec <strlen>
    2440:	00000713          	li	a4,0
    2444:	00000693          	li	a3,0
    2448:	00000793          	li	a5,0
    244c:	fff48493          	addi	s1,s1,-1
    2450:	00e905b3          	add	a1,s2,a4
    2454:	02a7ca63          	blt	a5,a0,2488 <fatfs_get_substring+0xc0>
    2458:	00058023          	sb	zero,0(a1)
    245c:	00094503          	lbu	a0,0(s2)
    2460:	00153513          	seqz	a0,a0
    2464:	40a00533          	neg	a0,a0
    2468:	01c12083          	lw	ra,28(sp)
    246c:	01812403          	lw	s0,24(sp)
    2470:	01412483          	lw	s1,20(sp)
    2474:	01012903          	lw	s2,16(sp)
    2478:	00c12983          	lw	s3,12(sp)
    247c:	00812a03          	lw	s4,8(sp)
    2480:	02010113          	addi	sp,sp,32
    2484:	00008067          	ret
    2488:	00f40633          	add	a2,s0,a5
    248c:	00064603          	lbu	a2,0(a2)
    2490:	01361c63          	bne	a2,s3,24a8 <fatfs_get_substring+0xe0>
    2494:	00168693          	addi	a3,a3,1
    2498:	00178793          	addi	a5,a5,1
    249c:	fb5ff06f          	j	2450 <fatfs_get_substring+0x88>
    24a0:	fff00513          	li	a0,-1
    24a4:	00008067          	ret
    24a8:	ff4698e3          	bne	a3,s4,2498 <fatfs_get_substring+0xd0>
    24ac:	fe9756e3          	bge	a4,s1,2498 <fatfs_get_substring+0xd0>
    24b0:	00170713          	addi	a4,a4,1
    24b4:	00c58023          	sb	a2,0(a1)
    24b8:	fe1ff06f          	j	2498 <fatfs_get_substring+0xd0>

000024bc <fatfs_split_path>:
    24bc:	fd010113          	addi	sp,sp,-48
    24c0:	02912223          	sw	s1,36(sp)
    24c4:	03212023          	sw	s2,32(sp)
    24c8:	01312e23          	sw	s3,28(sp)
    24cc:	01412c23          	sw	s4,24(sp)
    24d0:	02112623          	sw	ra,44(sp)
    24d4:	00068a13          	mv	s4,a3
    24d8:	02812423          	sw	s0,40(sp)
    24dc:	00050913          	mv	s2,a0
    24e0:	00058493          	mv	s1,a1
    24e4:	00060993          	mv	s3,a2
    24e8:	00e12623          	sw	a4,12(sp)
    24ec:	00000097          	auipc	ra,0x0
    24f0:	e68080e7          	jalr	-408(ra) # 2354 <fatfs_total_path_levels>
    24f4:	fff00793          	li	a5,-1
    24f8:	00c12683          	lw	a3,12(sp)
    24fc:	02f51663          	bne	a0,a5,2528 <fatfs_split_path+0x6c>
    2500:	fff00413          	li	s0,-1
    2504:	02c12083          	lw	ra,44(sp)
    2508:	00040513          	mv	a0,s0
    250c:	02812403          	lw	s0,40(sp)
    2510:	02412483          	lw	s1,36(sp)
    2514:	02012903          	lw	s2,32(sp)
    2518:	01c12983          	lw	s3,28(sp)
    251c:	01812a03          	lw	s4,24(sp)
    2520:	03010113          	addi	sp,sp,48
    2524:	00008067          	ret
    2528:	00050413          	mv	s0,a0
    252c:	00050593          	mv	a1,a0
    2530:	000a0613          	mv	a2,s4
    2534:	00090513          	mv	a0,s2
    2538:	00000097          	auipc	ra,0x0
    253c:	e90080e7          	jalr	-368(ra) # 23c8 <fatfs_get_substring>
    2540:	fc0510e3          	bnez	a0,2500 <fatfs_split_path+0x44>
    2544:	00041663          	bnez	s0,2550 <fatfs_split_path+0x94>
    2548:	00048023          	sb	zero,0(s1)
    254c:	fb9ff06f          	j	2504 <fatfs_split_path+0x48>
    2550:	00090513          	mv	a0,s2
    2554:	ffffe097          	auipc	ra,0xffffe
    2558:	498080e7          	jalr	1176(ra) # 9ec <strlen>
    255c:	00050413          	mv	s0,a0
    2560:	000a0513          	mv	a0,s4
    2564:	ffffe097          	auipc	ra,0xffffe
    2568:	488080e7          	jalr	1160(ra) # 9ec <strlen>
    256c:	40a40433          	sub	s0,s0,a0
    2570:	0089d463          	bge	s3,s0,2578 <fatfs_split_path+0xbc>
    2574:	00098413          	mv	s0,s3
    2578:	00040613          	mv	a2,s0
    257c:	00048513          	mv	a0,s1
    2580:	00090593          	mv	a1,s2
    2584:	008484b3          	add	s1,s1,s0
    2588:	ffffe097          	auipc	ra,0xffffe
    258c:	440080e7          	jalr	1088(ra) # 9c8 <memcpy>
    2590:	00000413          	li	s0,0
    2594:	fe048fa3          	sb	zero,-1(s1)
    2598:	f6dff06f          	j	2504 <fatfs_split_path+0x48>

0000259c <fatfs_compare_names>:
    259c:	fd010113          	addi	sp,sp,-48
    25a0:	02112623          	sw	ra,44(sp)
    25a4:	02812423          	sw	s0,40(sp)
    25a8:	02912223          	sw	s1,36(sp)
    25ac:	03212023          	sw	s2,32(sp)
    25b0:	01312e23          	sw	s3,28(sp)
    25b4:	00058913          	mv	s2,a1
    25b8:	01412c23          	sw	s4,24(sp)
    25bc:	01512a23          	sw	s5,20(sp)
    25c0:	01612823          	sw	s6,16(sp)
    25c4:	00050a13          	mv	s4,a0
    25c8:	fffff097          	auipc	ra,0xfffff
    25cc:	d1c080e7          	jalr	-740(ra) # 12e4 <FileString_GetExtension>
    25d0:	00050493          	mv	s1,a0
    25d4:	00090513          	mv	a0,s2
    25d8:	fffff097          	auipc	ra,0xfffff
    25dc:	d0c080e7          	jalr	-756(ra) # 12e4 <FileString_GetExtension>
    25e0:	fff00793          	li	a5,-1
    25e4:	00050413          	mv	s0,a0
    25e8:	00000993          	li	s3,0
    25ec:	0af49263          	bne	s1,a5,2690 <fatfs_compare_names+0xf4>
    25f0:	0e951863          	bne	a0,s1,26e0 <fatfs_compare_names+0x144>
    25f4:	000a0513          	mv	a0,s4
    25f8:	ffffe097          	auipc	ra,0xffffe
    25fc:	3f4080e7          	jalr	1012(ra) # 9ec <strlen>
    2600:	00050493          	mv	s1,a0
    2604:	00090513          	mv	a0,s2
    2608:	ffffe097          	auipc	ra,0xffffe
    260c:	3e4080e7          	jalr	996(ra) # 9ec <strlen>
    2610:	00050413          	mv	s0,a0
    2614:	fff48793          	addi	a5,s1,-1
    2618:	00fa07b3          	add	a5,s4,a5
    261c:	40978733          	sub	a4,a5,s1
    2620:	02000613          	li	a2,32
    2624:	00078693          	mv	a3,a5
    2628:	00e78863          	beq	a5,a4,2638 <fatfs_compare_names+0x9c>
    262c:	0007c583          	lbu	a1,0(a5)
    2630:	fff78793          	addi	a5,a5,-1
    2634:	04c58663          	beq	a1,a2,2680 <fatfs_compare_names+0xe4>
    2638:	fff40793          	addi	a5,s0,-1
    263c:	00f907b3          	add	a5,s2,a5
    2640:	40878733          	sub	a4,a5,s0
    2644:	02000613          	li	a2,32
    2648:	00078693          	mv	a3,a5
    264c:	00e78863          	beq	a5,a4,265c <fatfs_compare_names+0xc0>
    2650:	0007c583          	lbu	a1,0(a5)
    2654:	fff78793          	addi	a5,a5,-1
    2658:	02c58863          	beq	a1,a2,2688 <fatfs_compare_names+0xec>
    265c:	00000993          	li	s3,0
    2660:	08941063          	bne	s0,s1,26e0 <fatfs_compare_names+0x144>
    2664:	00040613          	mv	a2,s0
    2668:	00090593          	mv	a1,s2
    266c:	000a0513          	mv	a0,s4
    2670:	fffff097          	auipc	ra,0xfffff
    2674:	c04080e7          	jalr	-1020(ra) # 1274 <FileString_StrCmpNoCase>
    2678:	00153993          	seqz	s3,a0
    267c:	0640006f          	j	26e0 <fatfs_compare_names+0x144>
    2680:	414684b3          	sub	s1,a3,s4
    2684:	fa1ff06f          	j	2624 <fatfs_compare_names+0x88>
    2688:	41268433          	sub	s0,a3,s2
    268c:	fbdff06f          	j	2648 <fatfs_compare_names+0xac>
    2690:	04f50863          	beq	a0,a5,26e0 <fatfs_compare_names+0x144>
    2694:	00148a93          	addi	s5,s1,1
    2698:	015a0ab3          	add	s5,s4,s5
    269c:	00140b13          	addi	s6,s0,1
    26a0:	000a8513          	mv	a0,s5
    26a4:	ffffe097          	auipc	ra,0xffffe
    26a8:	348080e7          	jalr	840(ra) # 9ec <strlen>
    26ac:	01690b33          	add	s6,s2,s6
    26b0:	00a12623          	sw	a0,12(sp)
    26b4:	000b0513          	mv	a0,s6
    26b8:	ffffe097          	auipc	ra,0xffffe
    26bc:	334080e7          	jalr	820(ra) # 9ec <strlen>
    26c0:	00c12603          	lw	a2,12(sp)
    26c4:	00000993          	li	s3,0
    26c8:	00a61c63          	bne	a2,a0,26e0 <fatfs_compare_names+0x144>
    26cc:	000b0593          	mv	a1,s6
    26d0:	000a8513          	mv	a0,s5
    26d4:	fffff097          	auipc	ra,0xfffff
    26d8:	ba0080e7          	jalr	-1120(ra) # 1274 <FileString_StrCmpNoCase>
    26dc:	f2050ce3          	beqz	a0,2614 <fatfs_compare_names+0x78>
    26e0:	02c12083          	lw	ra,44(sp)
    26e4:	02812403          	lw	s0,40(sp)
    26e8:	02412483          	lw	s1,36(sp)
    26ec:	02012903          	lw	s2,32(sp)
    26f0:	01812a03          	lw	s4,24(sp)
    26f4:	01412a83          	lw	s5,20(sp)
    26f8:	01012b03          	lw	s6,16(sp)
    26fc:	00098513          	mv	a0,s3
    2700:	01c12983          	lw	s3,28(sp)
    2704:	03010113          	addi	sp,sp,48
    2708:	00008067          	ret

0000270c <_check_file_open>:
    270c:	fe010113          	addi	sp,sp,-32
    2710:	000067b7          	lui	a5,0x6
    2714:	00812c23          	sw	s0,24(sp)
    2718:	2787a403          	lw	s0,632(a5) # 6278 <_open_file_list>
    271c:	00912a23          	sw	s1,20(sp)
    2720:	01212823          	sw	s2,16(sp)
    2724:	01312623          	sw	s3,12(sp)
    2728:	00112e23          	sw	ra,28(sp)
    272c:	00050493          	mv	s1,a0
    2730:	01450913          	addi	s2,a0,20
    2734:	11850993          	addi	s3,a0,280
    2738:	02041263          	bnez	s0,275c <_check_file_open+0x50>
    273c:	00000513          	li	a0,0
    2740:	01c12083          	lw	ra,28(sp)
    2744:	01812403          	lw	s0,24(sp)
    2748:	01412483          	lw	s1,20(sp)
    274c:	01012903          	lw	s2,16(sp)
    2750:	00c12983          	lw	s3,12(sp)
    2754:	02010113          	addi	sp,sp,32
    2758:	00008067          	ret
    275c:	bc440793          	addi	a5,s0,-1084
    2760:	02f48663          	beq	s1,a5,278c <_check_file_open+0x80>
    2764:	00090593          	mv	a1,s2
    2768:	bd840513          	addi	a0,s0,-1064
    276c:	00000097          	auipc	ra,0x0
    2770:	e30080e7          	jalr	-464(ra) # 259c <fatfs_compare_names>
    2774:	00050c63          	beqz	a0,278c <_check_file_open+0x80>
    2778:	00098593          	mv	a1,s3
    277c:	cdc40513          	addi	a0,s0,-804
    2780:	00000097          	auipc	ra,0x0
    2784:	e1c080e7          	jalr	-484(ra) # 259c <fatfs_compare_names>
    2788:	00051663          	bnez	a0,2794 <_check_file_open+0x88>
    278c:	00442403          	lw	s0,4(s0)
    2790:	fa9ff06f          	j	2738 <_check_file_open+0x2c>
    2794:	00100513          	li	a0,1
    2798:	fa9ff06f          	j	2740 <_check_file_open+0x34>

0000279c <fatfs_string_ends_with_slash>:
    279c:	00050a63          	beqz	a0,27b0 <fatfs_string_ends_with_slash+0x14>
    27a0:	05c00713          	li	a4,92
    27a4:	02f00693          	li	a3,47
    27a8:	00054783          	lbu	a5,0(a0)
    27ac:	00079663          	bnez	a5,27b8 <fatfs_string_ends_with_slash+0x1c>
    27b0:	00000513          	li	a0,0
    27b4:	00008067          	ret
    27b8:	00154603          	lbu	a2,1(a0)
    27bc:	00061663          	bnez	a2,27c8 <fatfs_string_ends_with_slash+0x2c>
    27c0:	00e78863          	beq	a5,a4,27d0 <fatfs_string_ends_with_slash+0x34>
    27c4:	00d78663          	beq	a5,a3,27d0 <fatfs_string_ends_with_slash+0x34>
    27c8:	00150513          	addi	a0,a0,1
    27cc:	fddff06f          	j	27a8 <fatfs_string_ends_with_slash+0xc>
    27d0:	00100513          	li	a0,1
    27d4:	00008067          	ret

000027d8 <fatfs_get_sfn_display_name>:
    27d8:	00000713          	li	a4,0
    27dc:	00c00613          	li	a2,12
    27e0:	02000813          	li	a6,32
    27e4:	01900893          	li	a7,25
    27e8:	0005c783          	lbu	a5,0(a1)
    27ec:	00078463          	beqz	a5,27f4 <fatfs_get_sfn_display_name+0x1c>
    27f0:	00c71863          	bne	a4,a2,2800 <fatfs_get_sfn_display_name+0x28>
    27f4:	00050023          	sb	zero,0(a0)
    27f8:	00100513          	li	a0,1
    27fc:	00008067          	ret
    2800:	00158593          	addi	a1,a1,1
    2804:	ff0782e3          	beq	a5,a6,27e8 <fatfs_get_sfn_display_name+0x10>
    2808:	fbf78693          	addi	a3,a5,-65
    280c:	0ff6f693          	zext.b	a3,a3
    2810:	00d8e663          	bltu	a7,a3,281c <fatfs_get_sfn_display_name+0x44>
    2814:	02078793          	addi	a5,a5,32
    2818:	0ff7f793          	zext.b	a5,a5
    281c:	00f50023          	sb	a5,0(a0)
    2820:	00170713          	addi	a4,a4,1
    2824:	00150513          	addi	a0,a0,1
    2828:	fc1ff06f          	j	27e8 <fatfs_get_sfn_display_name+0x10>

0000282c <fatfs_get_extension>:
    282c:	ff010113          	addi	sp,sp,-16
    2830:	00812423          	sw	s0,8(sp)
    2834:	00912223          	sw	s1,4(sp)
    2838:	01212023          	sw	s2,0(sp)
    283c:	00112623          	sw	ra,12(sp)
    2840:	00050913          	mv	s2,a0
    2844:	00058493          	mv	s1,a1
    2848:	00060413          	mv	s0,a2
    284c:	fffff097          	auipc	ra,0xfffff
    2850:	a98080e7          	jalr	-1384(ra) # 12e4 <FileString_GetExtension>
    2854:	06a05c63          	blez	a0,28cc <fatfs_get_extension+0xa0>
    2858:	06048a63          	beqz	s1,28cc <fatfs_get_extension+0xa0>
    285c:	02040863          	beqz	s0,288c <fatfs_get_extension+0x60>
    2860:	00150513          	addi	a0,a0,1
    2864:	00000713          	li	a4,0
    2868:	fff40413          	addi	s0,s0,-1
    286c:	01900593          	li	a1,25
    2870:	00e507b3          	add	a5,a0,a4
    2874:	00f907b3          	add	a5,s2,a5
    2878:	0007c783          	lbu	a5,0(a5)
    287c:	00e48633          	add	a2,s1,a4
    2880:	02079463          	bnez	a5,28a8 <fatfs_get_extension+0x7c>
    2884:	00060023          	sb	zero,0(a2)
    2888:	00100413          	li	s0,1
    288c:	00c12083          	lw	ra,12(sp)
    2890:	00040513          	mv	a0,s0
    2894:	00812403          	lw	s0,8(sp)
    2898:	00412483          	lw	s1,4(sp)
    289c:	00012903          	lw	s2,0(sp)
    28a0:	01010113          	addi	sp,sp,16
    28a4:	00008067          	ret
    28a8:	fc875ee3          	bge	a4,s0,2884 <fatfs_get_extension+0x58>
    28ac:	fbf78693          	addi	a3,a5,-65
    28b0:	0ff6f693          	zext.b	a3,a3
    28b4:	00d5e663          	bltu	a1,a3,28c0 <fatfs_get_extension+0x94>
    28b8:	02078793          	addi	a5,a5,32
    28bc:	0ff7f793          	zext.b	a5,a5
    28c0:	00f60023          	sb	a5,0(a2)
    28c4:	00170713          	addi	a4,a4,1
    28c8:	fa9ff06f          	j	2870 <fatfs_get_extension+0x44>
    28cc:	00000413          	li	s0,0
    28d0:	fbdff06f          	j	288c <fatfs_get_extension+0x60>

000028d4 <fatfs_create_path_string>:
    28d4:	00050893          	mv	a7,a0
    28d8:	00000513          	li	a0,0
    28dc:	0a088263          	beqz	a7,2980 <fatfs_create_path_string+0xac>
    28e0:	0a058063          	beqz	a1,2980 <fatfs_create_path_string+0xac>
    28e4:	08060e63          	beqz	a2,2980 <fatfs_create_path_string+0xac>
    28e8:	00d04463          	bgtz	a3,28f0 <fatfs_create_path_string+0x1c>
    28ec:	00008067          	ret
    28f0:	02f00313          	li	t1,47
    28f4:	00000513          	li	a0,0
    28f8:	00000713          	li	a4,0
    28fc:	ffe68e13          	addi	t3,a3,-2
    2900:	05c00e93          	li	t4,92
    2904:	01c0006f          	j	2920 <fatfs_create_path_string+0x4c>
    2908:	03c75463          	bge	a4,t3,2930 <fatfs_create_path_string+0x5c>
    290c:	01d81463          	bne	a6,t4,2914 <fatfs_create_path_string+0x40>
    2910:	05c00313          	li	t1,92
    2914:	01078023          	sb	a6,0(a5)
    2918:	00170713          	addi	a4,a4,1
    291c:	00080513          	mv	a0,a6
    2920:	00e88833          	add	a6,a7,a4
    2924:	00084803          	lbu	a6,0(a6)
    2928:	00e607b3          	add	a5,a2,a4
    292c:	fc081ee3          	bnez	a6,2908 <fatfs_create_path_string+0x34>
    2930:	05c00613          	li	a2,92
    2934:	02c51063          	bne	a0,a2,2954 <fatfs_create_path_string+0x80>
    2938:	fff68693          	addi	a3,a3,-1
    293c:	40b70733          	sub	a4,a4,a1
    2940:	0005c603          	lbu	a2,0(a1)
    2944:	02061263          	bnez	a2,2968 <fatfs_create_path_string+0x94>
    2948:	00078023          	sb	zero,0(a5)
    294c:	00100513          	li	a0,1
    2950:	00008067          	ret
    2954:	02f00613          	li	a2,47
    2958:	fec500e3          	beq	a0,a2,2938 <fatfs_create_path_string+0x64>
    295c:	00678023          	sb	t1,0(a5)
    2960:	00178793          	addi	a5,a5,1
    2964:	fd5ff06f          	j	2938 <fatfs_create_path_string+0x64>
    2968:	00e58533          	add	a0,a1,a4
    296c:	fcd55ee3          	bge	a0,a3,2948 <fatfs_create_path_string+0x74>
    2970:	00178793          	addi	a5,a5,1
    2974:	00158593          	addi	a1,a1,1
    2978:	fec78fa3          	sb	a2,-1(a5)
    297c:	fc5ff06f          	j	2940 <fatfs_create_path_string+0x6c>
    2980:	00008067          	ret

00002984 <fatfs_fat_init>:
    2984:	ff010113          	addi	sp,sp,-16
    2988:	00812423          	sw	s0,8(sp)
    298c:	00912223          	sw	s1,4(sp)
    2990:	00112623          	sw	ra,12(sp)
    2994:	fff00793          	li	a5,-1
    2998:	25850493          	addi	s1,a0,600
    299c:	00050413          	mv	s0,a0
    29a0:	44f52c23          	sw	a5,1112(a0)
    29a4:	24052a23          	sw	zero,596(a0)
    29a8:	44052e23          	sw	zero,1116(a0)
    29ac:	20000613          	li	a2,512
    29b0:	00048513          	mv	a0,s1
    29b4:	00000593          	li	a1,0
    29b8:	ffffe097          	auipc	ra,0xffffe
    29bc:	ff4080e7          	jalr	-12(ra) # 9ac <memset>
    29c0:	25442783          	lw	a5,596(s0)
    29c4:	00c12083          	lw	ra,12(sp)
    29c8:	24942a23          	sw	s1,596(s0)
    29cc:	46042023          	sw	zero,1120(s0)
    29d0:	46f42223          	sw	a5,1124(s0)
    29d4:	00812403          	lw	s0,8(sp)
    29d8:	00412483          	lw	s1,4(sp)
    29dc:	01010113          	addi	sp,sp,16
    29e0:	00008067          	ret

000029e4 <fatfs_init>:
    29e4:	fc010113          	addi	sp,sp,-64
    29e8:	02812c23          	sw	s0,56(sp)
    29ec:	02112e23          	sw	ra,60(sp)
    29f0:	02912a23          	sw	s1,52(sp)
    29f4:	03212823          	sw	s2,48(sp)
    29f8:	03312623          	sw	s3,44(sp)
    29fc:	03412423          	sw	s4,40(sp)
    2a00:	03512223          	sw	s5,36(sp)
    2a04:	03612023          	sw	s6,32(sp)
    2a08:	01712e23          	sw	s7,28(sp)
    2a0c:	fff00793          	li	a5,-1
    2a10:	24f52223          	sw	a5,580(a0)
    2a14:	24052423          	sw	zero,584(a0)
    2a18:	02052223          	sw	zero,36(a0)
    2a1c:	00050413          	mv	s0,a0
    2a20:	00000097          	auipc	ra,0x0
    2a24:	f64080e7          	jalr	-156(ra) # 2984 <fatfs_fat_init>
    2a28:	03442783          	lw	a5,52(s0)
    2a2c:	02079a63          	bnez	a5,2a60 <fatfs_init+0x7c>
    2a30:	fff00513          	li	a0,-1
    2a34:	03c12083          	lw	ra,60(sp)
    2a38:	03812403          	lw	s0,56(sp)
    2a3c:	03412483          	lw	s1,52(sp)
    2a40:	03012903          	lw	s2,48(sp)
    2a44:	02c12983          	lw	s3,44(sp)
    2a48:	02812a03          	lw	s4,40(sp)
    2a4c:	02412a83          	lw	s5,36(sp)
    2a50:	02012b03          	lw	s6,32(sp)
    2a54:	01c12b83          	lw	s7,28(sp)
    2a58:	04010113          	addi	sp,sp,64
    2a5c:	00008067          	ret
    2a60:	04440593          	addi	a1,s0,68
    2a64:	00100613          	li	a2,1
    2a68:	00000513          	li	a0,0
    2a6c:	00b12623          	sw	a1,12(sp)
    2a70:	000780e7          	jalr	a5
    2a74:	fa050ee3          	beqz	a0,2a30 <fatfs_init+0x4c>
    2a78:	24042703          	lw	a4,576(s0)
    2a7c:	ffff07b7          	lui	a5,0xffff0
    2a80:	00c12583          	lw	a1,12(sp)
    2a84:	00e7f7b3          	and	a5,a5,a4
    2a88:	aa550737          	lui	a4,0xaa550
    2a8c:	00e78663          	beq	a5,a4,2a98 <fatfs_init+0xb4>
    2a90:	ffd00513          	li	a0,-3
    2a94:	fa1ff06f          	j	2a34 <fatfs_init+0x50>
    2a98:	24344783          	lbu	a5,579(s0)
    2a9c:	24244703          	lbu	a4,578(s0)
    2aa0:	ffc00513          	li	a0,-4
    2aa4:	00879793          	slli	a5,a5,0x8
    2aa8:	00e787b3          	add	a5,a5,a4
    2aac:	0000b737          	lui	a4,0xb
    2ab0:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0x405>
    2ab4:	f8e790e3          	bne	a5,a4,2a34 <fatfs_init+0x50>
    2ab8:	20644783          	lbu	a5,518(s0)
    2abc:	00600713          	li	a4,6
    2ac0:	04f76063          	bltu	a4,a5,2b00 <fatfs_init+0x11c>
    2ac4:	00400713          	li	a4,4
    2ac8:	00f76663          	bltu	a4,a5,2ad4 <fatfs_init+0xf0>
    2acc:	00000513          	li	a0,0
    2ad0:	04078263          	beqz	a5,2b14 <fatfs_init+0x130>
    2ad4:	20d44503          	lbu	a0,525(s0)
    2ad8:	20c44783          	lbu	a5,524(s0)
    2adc:	01851513          	slli	a0,a0,0x18
    2ae0:	01079793          	slli	a5,a5,0x10
    2ae4:	00f50533          	add	a0,a0,a5
    2ae8:	20a44783          	lbu	a5,522(s0)
    2aec:	00f50533          	add	a0,a0,a5
    2af0:	20b44783          	lbu	a5,523(s0)
    2af4:	00879793          	slli	a5,a5,0x8
    2af8:	00f50533          	add	a0,a0,a5
    2afc:	0180006f          	j	2b14 <fatfs_init+0x130>
    2b00:	00c00713          	li	a4,12
    2b04:	1ef76a63          	bltu	a4,a5,2cf8 <fatfs_init+0x314>
    2b08:	00a00713          	li	a4,10
    2b0c:	00000513          	li	a0,0
    2b10:	fcf762e3          	bltu	a4,a5,2ad4 <fatfs_init+0xf0>
    2b14:	03442783          	lw	a5,52(s0)
    2b18:	00a42e23          	sw	a0,28(s0)
    2b1c:	00100613          	li	a2,1
    2b20:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2b24:	f00506e3          	beqz	a0,2a30 <fatfs_init+0x4c>
    2b28:	05044783          	lbu	a5,80(s0)
    2b2c:	04f44703          	lbu	a4,79(s0)
    2b30:	ffe00513          	li	a0,-2
    2b34:	00879793          	slli	a5,a5,0x8
    2b38:	00e787b3          	add	a5,a5,a4
    2b3c:	20000713          	li	a4,512
    2b40:	eee79ae3          	bne	a5,a4,2a34 <fatfs_init+0x50>
    2b44:	05644483          	lbu	s1,86(s0)
    2b48:	05544b83          	lbu	s7,85(s0)
    2b4c:	05344903          	lbu	s2,83(s0)
    2b50:	05244a03          	lbu	s4,82(s0)
    2b54:	05b44583          	lbu	a1,91(s0)
    2b58:	00849493          	slli	s1,s1,0x8
    2b5c:	05144983          	lbu	s3,81(s0)
    2b60:	05a44783          	lbu	a5,90(s0)
    2b64:	01748ab3          	add	s5,s1,s7
    2b68:	00891913          	slli	s2,s2,0x8
    2b6c:	010a9a93          	slli	s5,s5,0x10
    2b70:	01490b33          	add	s6,s2,s4
    2b74:	010ada93          	srli	s5,s5,0x10
    2b78:	00859593          	slli	a1,a1,0x8
    2b7c:	010b1b13          	slli	s6,s6,0x10
    2b80:	01340023          	sb	s3,0(s0)
    2b84:	03541423          	sh	s5,40(s0)
    2b88:	00f585b3          	add	a1,a1,a5
    2b8c:	05444503          	lbu	a0,84(s0)
    2b90:	010b5b13          	srli	s6,s6,0x10
    2b94:	02059663          	bnez	a1,2bc0 <fatfs_init+0x1dc>
    2b98:	06b44583          	lbu	a1,107(s0)
    2b9c:	06a44783          	lbu	a5,106(s0)
    2ba0:	01859593          	slli	a1,a1,0x18
    2ba4:	01079793          	slli	a5,a5,0x10
    2ba8:	00f585b3          	add	a1,a1,a5
    2bac:	06844783          	lbu	a5,104(s0)
    2bb0:	00f585b3          	add	a1,a1,a5
    2bb4:	06944783          	lbu	a5,105(s0)
    2bb8:	00879793          	slli	a5,a5,0x8
    2bbc:	00f585b3          	add	a1,a1,a5
    2bc0:	07344783          	lbu	a5,115(s0)
    2bc4:	07244703          	lbu	a4,114(s0)
    2bc8:	02b42023          	sw	a1,32(s0)
    2bcc:	01879793          	slli	a5,a5,0x18
    2bd0:	01071713          	slli	a4,a4,0x10
    2bd4:	00e787b3          	add	a5,a5,a4
    2bd8:	07044703          	lbu	a4,112(s0)
    2bdc:	005a9a93          	slli	s5,s5,0x5
    2be0:	1ffa8a93          	addi	s5,s5,511
    2be4:	00e787b3          	add	a5,a5,a4
    2be8:	07144703          	lbu	a4,113(s0)
    2bec:	409ada93          	srai	s5,s5,0x9
    2bf0:	00871713          	slli	a4,a4,0x8
    2bf4:	00e787b3          	add	a5,a5,a4
    2bf8:	00f42423          	sw	a5,8(s0)
    2bfc:	07544783          	lbu	a5,117(s0)
    2c00:	07444703          	lbu	a4,116(s0)
    2c04:	00879793          	slli	a5,a5,0x8
    2c08:	00e787b3          	add	a5,a5,a4
    2c0c:	00f41c23          	sh	a5,24(s0)
    2c10:	ffffe097          	auipc	ra,0xffffe
    2c14:	5cc080e7          	jalr	1484(ra) # 11dc <__mulsi3>
    2c18:	00ab07b3          	add	a5,s6,a0
    2c1c:	00f42623          	sw	a5,12(s0)
    2c20:	01c42783          	lw	a5,28(s0)
    2c24:	24244703          	lbu	a4,578(s0)
    2c28:	01542823          	sw	s5,16(s0)
    2c2c:	00fb0b33          	add	s6,s6,a5
    2c30:	24344783          	lbu	a5,579(s0)
    2c34:	01642a23          	sw	s6,20(s0)
    2c38:	01650b33          	add	s6,a0,s6
    2c3c:	00879793          	slli	a5,a5,0x8
    2c40:	00e787b3          	add	a5,a5,a4
    2c44:	0000b737          	lui	a4,0xb
    2c48:	01642223          	sw	s6,4(s0)
    2c4c:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0x405>
    2c50:	e4e790e3          	bne	a5,a4,2a90 <fatfs_init+0xac>
    2c54:	05844783          	lbu	a5,88(s0)
    2c58:	05744703          	lbu	a4,87(s0)
    2c5c:	017484b3          	add	s1,s1,s7
    2c60:	00549493          	slli	s1,s1,0x5
    2c64:	00879793          	slli	a5,a5,0x8
    2c68:	1ff48493          	addi	s1,s1,511
    2c6c:	00e787b3          	add	a5,a5,a4
    2c70:	4094d493          	srai	s1,s1,0x9
    2c74:	02079663          	bnez	a5,2ca0 <fatfs_init+0x2bc>
    2c78:	06744783          	lbu	a5,103(s0)
    2c7c:	06644703          	lbu	a4,102(s0)
    2c80:	01879793          	slli	a5,a5,0x18
    2c84:	01071713          	slli	a4,a4,0x10
    2c88:	00e787b3          	add	a5,a5,a4
    2c8c:	06444703          	lbu	a4,100(s0)
    2c90:	00e787b3          	add	a5,a5,a4
    2c94:	06544703          	lbu	a4,101(s0)
    2c98:	00871713          	slli	a4,a4,0x8
    2c9c:	00e787b3          	add	a5,a5,a4
    2ca0:	01490933          	add	s2,s2,s4
    2ca4:	00990933          	add	s2,s2,s1
    2ca8:	00a90533          	add	a0,s2,a0
    2cac:	40a787b3          	sub	a5,a5,a0
    2cb0:	ffb00513          	li	a0,-5
    2cb4:	d80980e3          	beqz	s3,2a34 <fatfs_init+0x50>
    2cb8:	00078513          	mv	a0,a5
    2cbc:	00098593          	mv	a1,s3
    2cc0:	ffffe097          	auipc	ra,0xffffe
    2cc4:	c18080e7          	jalr	-1000(ra) # 8d8 <__udivsi3>
    2cc8:	00001737          	lui	a4,0x1
    2ccc:	00050793          	mv	a5,a0
    2cd0:	ff470713          	addi	a4,a4,-12 # ff4 <print_dec+0x7c>
    2cd4:	ffb00513          	li	a0,-5
    2cd8:	d4f77ee3          	bgeu	a4,a5,2a34 <fatfs_init+0x50>
    2cdc:	00010737          	lui	a4,0x10
    2ce0:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x553c>
    2ce4:	02f76663          	bltu	a4,a5,2d10 <fatfs_init+0x32c>
    2ce8:	00042423          	sw	zero,8(s0)
    2cec:	02042823          	sw	zero,48(s0)
    2cf0:	00000513          	li	a0,0
    2cf4:	d41ff06f          	j	2a34 <fatfs_init+0x50>
    2cf8:	ff278793          	addi	a5,a5,-14
    2cfc:	0ff7f793          	zext.b	a5,a5
    2d00:	00100713          	li	a4,1
    2d04:	00000513          	li	a0,0
    2d08:	dcf776e3          	bgeu	a4,a5,2ad4 <fatfs_init+0xf0>
    2d0c:	e09ff06f          	j	2b14 <fatfs_init+0x130>
    2d10:	00100793          	li	a5,1
    2d14:	02f42823          	sw	a5,48(s0)
    2d18:	fd9ff06f          	j	2cf0 <fatfs_init+0x30c>

00002d1c <fl_attach_media>:
    2d1c:	000067b7          	lui	a5,0x6
    2d20:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    2d24:	ff010113          	addi	sp,sp,-16
    2d28:	00812423          	sw	s0,8(sp)
    2d2c:	00912223          	sw	s1,4(sp)
    2d30:	00112623          	sw	ra,12(sp)
    2d34:	00050493          	mv	s1,a0
    2d38:	00058413          	mv	s0,a1
    2d3c:	00079663          	bnez	a5,2d48 <fl_attach_media+0x2c>
    2d40:	fffff097          	auipc	ra,0xfffff
    2d44:	c30080e7          	jalr	-976(ra) # 1970 <fl_init>
    2d48:	0000a537          	lui	a0,0xa
    2d4c:	65050793          	addi	a5,a0,1616 # a650 <_fs>
    2d50:	65050513          	addi	a0,a0,1616
    2d54:	0287ac23          	sw	s0,56(a5)
    2d58:	0297aa23          	sw	s1,52(a5)
    2d5c:	00000097          	auipc	ra,0x0
    2d60:	c88080e7          	jalr	-888(ra) # 29e4 <fatfs_init>
    2d64:	00050413          	mv	s0,a0
    2d68:	02050863          	beqz	a0,2d98 <fl_attach_media+0x7c>
    2d6c:	00050593          	mv	a1,a0
    2d70:	00006537          	lui	a0,0x6
    2d74:	18050513          	addi	a0,a0,384 # 6180 <font+0x358>
    2d78:	ffffe097          	auipc	ra,0xffffe
    2d7c:	328080e7          	jalr	808(ra) # 10a0 <printf>
    2d80:	00c12083          	lw	ra,12(sp)
    2d84:	00040513          	mv	a0,s0
    2d88:	00812403          	lw	s0,8(sp)
    2d8c:	00412483          	lw	s1,4(sp)
    2d90:	01010113          	addi	sp,sp,16
    2d94:	00008067          	ret
    2d98:	000067b7          	lui	a5,0x6
    2d9c:	00100713          	li	a4,1
    2da0:	28e7a023          	sw	a4,640(a5) # 6280 <_filelib_valid>
    2da4:	fddff06f          	j	2d80 <fl_attach_media+0x64>

00002da8 <fatfs_format_fat16>:
    2da8:	fe010113          	addi	sp,sp,-32
    2dac:	00812c23          	sw	s0,24(sp)
    2db0:	00912a23          	sw	s1,20(sp)
    2db4:	01212823          	sw	s2,16(sp)
    2db8:	00112e23          	sw	ra,28(sp)
    2dbc:	01312623          	sw	s3,12(sp)
    2dc0:	01412423          	sw	s4,8(sp)
    2dc4:	fff00793          	li	a5,-1
    2dc8:	24f52223          	sw	a5,580(a0)
    2dcc:	24052423          	sw	zero,584(a0)
    2dd0:	02052223          	sw	zero,36(a0)
    2dd4:	00050413          	mv	s0,a0
    2dd8:	00058493          	mv	s1,a1
    2ddc:	00060913          	mv	s2,a2
    2de0:	00000097          	auipc	ra,0x0
    2de4:	ba4080e7          	jalr	-1116(ra) # 2984 <fatfs_fat_init>
    2de8:	03442783          	lw	a5,52(s0)
    2dec:	fff00513          	li	a0,-1
    2df0:	08078663          	beqz	a5,2e7c <fatfs_format_fat16+0xd4>
    2df4:	03842783          	lw	a5,56(s0)
    2df8:	fff00513          	li	a0,-1
    2dfc:	08078063          	beqz	a5,2e7c <fatfs_format_fat16+0xd4>
    2e00:	04440993          	addi	s3,s0,68
    2e04:	02042823          	sw	zero,48(s0)
    2e08:	00041c23          	sh	zero,24(s0)
    2e0c:	00042423          	sw	zero,8(s0)
    2e10:	00042e23          	sw	zero,28(s0)
    2e14:	20000613          	li	a2,512
    2e18:	00000593          	li	a1,0
    2e1c:	00098513          	mv	a0,s3
    2e20:	ffffe097          	auipc	ra,0xffffe
    2e24:	b8c080e7          	jalr	-1140(ra) # 9ac <memset>
    2e28:	4d9047b7          	lui	a5,0x4d904
    2e2c:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2e30:	04f42223          	sw	a5,68(s0)
    2e34:	534f47b7          	lui	a5,0x534f4
    2e38:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2e3c:	04f42423          	sw	a5,72(s0)
    2e40:	003037b7          	lui	a5,0x303
    2e44:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2e48:	04f42623          	sw	a5,76(s0)
    2e4c:	00200793          	li	a5,2
    2e50:	04f40823          	sb	a5,80(s0)
    2e54:	000067b7          	lui	a5,0x6
    2e58:	1e878793          	addi	a5,a5,488 # 61e8 <_cluster_size_table16>
    2e5c:	0047c583          	lbu	a1,4(a5)
    2e60:	00058863          	beqz	a1,2e70 <fatfs_format_fat16+0xc8>
    2e64:	0007a703          	lw	a4,0(a5)
    2e68:	00878793          	addi	a5,a5,8
    2e6c:	fe9768e3          	bltu	a4,s1,2e5c <fatfs_format_fat16+0xb4>
    2e70:	00b40023          	sb	a1,0(s0)
    2e74:	02059463          	bnez	a1,2e9c <fatfs_format_fat16+0xf4>
    2e78:	00000513          	li	a0,0
    2e7c:	01c12083          	lw	ra,28(sp)
    2e80:	01812403          	lw	s0,24(sp)
    2e84:	01412483          	lw	s1,20(sp)
    2e88:	01012903          	lw	s2,16(sp)
    2e8c:	00c12983          	lw	s3,12(sp)
    2e90:	00812a03          	lw	s4,8(sp)
    2e94:	02010113          	addi	sp,sp,32
    2e98:	00008067          	ret
    2e9c:	000807b7          	lui	a5,0x80
    2ea0:	20078793          	addi	a5,a5,512 # 80200 <__stacktop+0x70200>
    2ea4:	02f42423          	sw	a5,40(s0)
    2ea8:	00200793          	li	a5,2
    2eac:	02f40623          	sb	a5,44(s0)
    2eb0:	00800793          	li	a5,8
    2eb4:	04f41923          	sh	a5,82(s0)
    2eb8:	000207b7          	lui	a5,0x20
    2ebc:	00278793          	addi	a5,a5,2 # 20002 <__stacktop+0x10002>
    2ec0:	04f42a23          	sw	a5,84(s0)
    2ec4:	80000793          	li	a5,-2048
    2ec8:	04f41c23          	sh	a5,88(s0)
    2ecc:	00048513          	mv	a0,s1
    2ed0:	04b408a3          	sb	a1,81(s0)
    2ed4:	ffffe097          	auipc	ra,0xffffe
    2ed8:	a04080e7          	jalr	-1532(ra) # 8d8 <__udivsi3>
    2edc:	00150793          	addi	a5,a0,1
    2ee0:	0087d793          	srli	a5,a5,0x8
    2ee4:	00178793          	addi	a5,a5,1
    2ee8:	02f42023          	sw	a5,32(s0)
    2eec:	04f41d23          	sh	a5,90(s0)
    2ef0:	02000793          	li	a5,32
    2ef4:	06f42023          	sw	a5,96(s0)
    2ef8:	122907b7          	lui	a5,0x12290
    2efc:	06f42423          	sw	a5,104(s0)
    2f00:	000057b7          	lui	a5,0x5
    2f04:	63478793          	addi	a5,a5,1588 # 5634 <fatfs_add_file_entry+0x2dc>
    2f08:	06f41623          	sh	a5,108(s0)
    2f0c:	07800793          	li	a5,120
    2f10:	06942223          	sw	s1,100(s0)
    2f14:	04042e23          	sw	zero,92(s0)
    2f18:	06f40723          	sb	a5,110(s0)
    2f1c:	00000493          	li	s1,0
    2f20:	00b00a13          	li	s4,11
    2f24:	00090513          	mv	a0,s2
    2f28:	ffffe097          	auipc	ra,0xffffe
    2f2c:	ac4080e7          	jalr	-1340(ra) # 9ec <strlen>
    2f30:	02000793          	li	a5,32
    2f34:	00a4d663          	bge	s1,a0,2f40 <fatfs_format_fat16+0x198>
    2f38:	009907b3          	add	a5,s2,s1
    2f3c:	0007c783          	lbu	a5,0(a5)
    2f40:	00940733          	add	a4,s0,s1
    2f44:	06f707a3          	sb	a5,111(a4)
    2f48:	00148493          	addi	s1,s1,1
    2f4c:	fd449ce3          	bne	s1,s4,2f24 <fatfs_format_fat16+0x17c>
    2f50:	000047b7          	lui	a5,0x4
    2f54:	14678793          	addi	a5,a5,326 # 4146 <fatfs_list_directory_next+0x232>
    2f58:	06f41d23          	sh	a5,122(s0)
    2f5c:	203637b7          	lui	a5,0x20363
    2f60:	15478793          	addi	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2f64:	06f42e23          	sw	a5,124(s0)
    2f68:	000027b7          	lui	a5,0x2
    2f6c:	02078793          	addi	a5,a5,32 # 2020 <fatfs_sfn_create_entry+0x58>
    2f70:	08f41023          	sh	a5,128(s0)
    2f74:	ffffb7b7          	lui	a5,0xffffb
    2f78:	a5578793          	addi	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2f7c:	24f41123          	sh	a5,578(s0)
    2f80:	03842783          	lw	a5,56(s0)
    2f84:	00100613          	li	a2,1
    2f88:	00098593          	mv	a1,s3
    2f8c:	00000513          	li	a0,0
    2f90:	000780e7          	jalr	a5
    2f94:	ee0502e3          	beqz	a0,2e78 <fatfs_format_fat16+0xd0>
    2f98:	02042583          	lw	a1,32(s0)
    2f9c:	02c44503          	lbu	a0,44(s0)
    2fa0:	02a45483          	lhu	s1,42(s0)
    2fa4:	ffffe097          	auipc	ra,0xffffe
    2fa8:	238080e7          	jalr	568(ra) # 11dc <__mulsi3>
    2fac:	00a487b3          	add	a5,s1,a0
    2fb0:	00f42623          	sw	a5,12(s0)
    2fb4:	02845783          	lhu	a5,40(s0)
    2fb8:	00000593          	li	a1,0
    2fbc:	00579793          	slli	a5,a5,0x5
    2fc0:	1ff78793          	addi	a5,a5,511
    2fc4:	4097d793          	srai	a5,a5,0x9
    2fc8:	00f42823          	sw	a5,16(s0)
    2fcc:	01c42783          	lw	a5,28(s0)
    2fd0:	00f484b3          	add	s1,s1,a5
    2fd4:	00950533          	add	a0,a0,s1
    2fd8:	00a42223          	sw	a0,4(s0)
    2fdc:	00942a23          	sw	s1,20(s0)
    2fe0:	00040513          	mv	a0,s0
    2fe4:	ffffe097          	auipc	ra,0xffffe
    2fe8:	49c080e7          	jalr	1180(ra) # 1480 <fatfs_erase_fat>
    2fec:	e80506e3          	beqz	a0,2e78 <fatfs_format_fat16+0xd0>
    2ff0:	01c42583          	lw	a1,28(s0)
    2ff4:	00c42783          	lw	a5,12(s0)
    2ff8:	01042603          	lw	a2,16(s0)
    2ffc:	00040513          	mv	a0,s0
    3000:	00f585b3          	add	a1,a1,a5
    3004:	ffffe097          	auipc	ra,0xffffe
    3008:	568080e7          	jalr	1384(ra) # 156c <fatfs_erase_sectors>
    300c:	00a03533          	snez	a0,a0
    3010:	e6dff06f          	j	2e7c <fatfs_format_fat16+0xd4>

00003014 <fatfs_format_fat32>:
    3014:	fe010113          	addi	sp,sp,-32
    3018:	00812c23          	sw	s0,24(sp)
    301c:	00912a23          	sw	s1,20(sp)
    3020:	01212823          	sw	s2,16(sp)
    3024:	00112e23          	sw	ra,28(sp)
    3028:	01312623          	sw	s3,12(sp)
    302c:	01412423          	sw	s4,8(sp)
    3030:	fff00793          	li	a5,-1
    3034:	24f52223          	sw	a5,580(a0)
    3038:	24052423          	sw	zero,584(a0)
    303c:	02052223          	sw	zero,36(a0)
    3040:	00050413          	mv	s0,a0
    3044:	00058493          	mv	s1,a1
    3048:	00060913          	mv	s2,a2
    304c:	00000097          	auipc	ra,0x0
    3050:	938080e7          	jalr	-1736(ra) # 2984 <fatfs_fat_init>
    3054:	03442783          	lw	a5,52(s0)
    3058:	fff00513          	li	a0,-1
    305c:	08078863          	beqz	a5,30ec <fatfs_format_fat32+0xd8>
    3060:	03842783          	lw	a5,56(s0)
    3064:	fff00513          	li	a0,-1
    3068:	08078263          	beqz	a5,30ec <fatfs_format_fat32+0xd8>
    306c:	00100793          	li	a5,1
    3070:	00200a13          	li	s4,2
    3074:	04440993          	addi	s3,s0,68
    3078:	02f42823          	sw	a5,48(s0)
    307c:	00f41c23          	sh	a5,24(s0)
    3080:	01442423          	sw	s4,8(s0)
    3084:	00042e23          	sw	zero,28(s0)
    3088:	20000613          	li	a2,512
    308c:	00000593          	li	a1,0
    3090:	00098513          	mv	a0,s3
    3094:	ffffe097          	auipc	ra,0xffffe
    3098:	918080e7          	jalr	-1768(ra) # 9ac <memset>
    309c:	4d9047b7          	lui	a5,0x4d904
    30a0:	ceb78793          	addi	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    30a4:	04f42223          	sw	a5,68(s0)
    30a8:	534f47b7          	lui	a5,0x534f4
    30ac:	45378793          	addi	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    30b0:	04f42423          	sw	a5,72(s0)
    30b4:	003037b7          	lui	a5,0x303
    30b8:	e3578793          	addi	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    30bc:	04f42623          	sw	a5,76(s0)
    30c0:	000067b7          	lui	a5,0x6
    30c4:	05440823          	sb	s4,80(s0)
    30c8:	22878793          	addi	a5,a5,552 # 6228 <_cluster_size_table32>
    30cc:	0047c583          	lbu	a1,4(a5)
    30d0:	00058863          	beqz	a1,30e0 <fatfs_format_fat32+0xcc>
    30d4:	0007a703          	lw	a4,0(a5)
    30d8:	00878793          	addi	a5,a5,8
    30dc:	fe9768e3          	bltu	a4,s1,30cc <fatfs_format_fat32+0xb8>
    30e0:	00b40023          	sb	a1,0(s0)
    30e4:	02059463          	bnez	a1,310c <fatfs_format_fat32+0xf8>
    30e8:	00000513          	li	a0,0
    30ec:	01c12083          	lw	ra,28(sp)
    30f0:	01812403          	lw	s0,24(sp)
    30f4:	01412483          	lw	s1,20(sp)
    30f8:	01012903          	lw	s2,16(sp)
    30fc:	00c12983          	lw	s3,12(sp)
    3100:	00812a03          	lw	s4,8(sp)
    3104:	02010113          	addi	sp,sp,32
    3108:	00008067          	ret
    310c:	002007b7          	lui	a5,0x200
    3110:	02f42423          	sw	a5,40(s0)
    3114:	00200793          	li	a5,2
    3118:	02f40623          	sb	a5,44(s0)
    311c:	04f42a23          	sw	a5,84(s0)
    3120:	000107b7          	lui	a5,0x10
    3124:	80078793          	addi	a5,a5,-2048 # f800 <_files+0x4d48>
    3128:	04f42c23          	sw	a5,88(s0)
    312c:	00ff07b7          	lui	a5,0xff0
    3130:	03f78793          	addi	a5,a5,63 # ff003f <__stacktop+0xfe003f>
    3134:	02000713          	li	a4,32
    3138:	04f42e23          	sw	a5,92(s0)
    313c:	06942223          	sw	s1,100(s0)
    3140:	00048513          	mv	a0,s1
    3144:	04b408a3          	sb	a1,81(s0)
    3148:	04e41923          	sh	a4,82(s0)
    314c:	06042023          	sw	zero,96(s0)
    3150:	ffffd097          	auipc	ra,0xffffd
    3154:	788080e7          	jalr	1928(ra) # 8d8 <__udivsi3>
    3158:	00150793          	addi	a5,a0,1
    315c:	0077d793          	srli	a5,a5,0x7
    3160:	00178793          	addi	a5,a5,1
    3164:	02f42023          	sw	a5,32(s0)
    3168:	06f42423          	sw	a5,104(s0)
    316c:	00842783          	lw	a5,8(s0)
    3170:	06042623          	sw	zero,108(s0)
    3174:	08040223          	sb	zero,132(s0)
    3178:	06f42823          	sw	a5,112(s0)
    317c:	01845783          	lhu	a5,24(s0)
    3180:	00000493          	li	s1,0
    3184:	00b00a13          	li	s4,11
    3188:	06f41a23          	sh	a5,116(s0)
    318c:	00600793          	li	a5,6
    3190:	06f41b23          	sh	a5,118(s0)
    3194:	000017b7          	lui	a5,0x1
    3198:	22978793          	addi	a5,a5,553 # 1229 <fat_list_insert_last+0x25>
    319c:	08f41323          	sh	a5,134(s0)
    31a0:	000057b7          	lui	a5,0x5
    31a4:	63478793          	addi	a5,a5,1588 # 5634 <fatfs_add_file_entry+0x2dc>
    31a8:	08f41423          	sh	a5,136(s0)
    31ac:	07800793          	li	a5,120
    31b0:	08f40523          	sb	a5,138(s0)
    31b4:	00090513          	mv	a0,s2
    31b8:	ffffe097          	auipc	ra,0xffffe
    31bc:	834080e7          	jalr	-1996(ra) # 9ec <strlen>
    31c0:	02000793          	li	a5,32
    31c4:	00a4d663          	bge	s1,a0,31d0 <fatfs_format_fat32+0x1bc>
    31c8:	009907b3          	add	a5,s2,s1
    31cc:	0007c783          	lbu	a5,0(a5)
    31d0:	00940733          	add	a4,s0,s1
    31d4:	08f705a3          	sb	a5,139(a4)
    31d8:	00148493          	addi	s1,s1,1
    31dc:	fd449ce3          	bne	s1,s4,31b4 <fatfs_format_fat32+0x1a0>
    31e0:	000047b7          	lui	a5,0x4
    31e4:	14678793          	addi	a5,a5,326 # 4146 <fatfs_list_directory_next+0x232>
    31e8:	08f41b23          	sh	a5,150(s0)
    31ec:	203237b7          	lui	a5,0x20323
    31f0:	35478793          	addi	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    31f4:	08f42c23          	sw	a5,152(s0)
    31f8:	000027b7          	lui	a5,0x2
    31fc:	02078793          	addi	a5,a5,32 # 2020 <fatfs_sfn_create_entry+0x58>
    3200:	08f41e23          	sh	a5,156(s0)
    3204:	ffffb4b7          	lui	s1,0xffffb
    3208:	03842783          	lw	a5,56(s0)
    320c:	a5548493          	addi	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    3210:	24941123          	sh	s1,578(s0)
    3214:	00100613          	li	a2,1
    3218:	00098593          	mv	a1,s3
    321c:	00000513          	li	a0,0
    3220:	000780e7          	jalr	a5
    3224:	ec0502e3          	beqz	a0,30e8 <fatfs_format_fat32+0xd4>
    3228:	01c42783          	lw	a5,28(s0)
    322c:	02a45903          	lhu	s2,42(s0)
    3230:	02042583          	lw	a1,32(s0)
    3234:	02c44503          	lbu	a0,44(s0)
    3238:	00f90933          	add	s2,s2,a5
    323c:	01242a23          	sw	s2,20(s0)
    3240:	ffffe097          	auipc	ra,0xffffe
    3244:	f9c080e7          	jalr	-100(ra) # 11dc <__mulsi3>
    3248:	01250533          	add	a0,a0,s2
    324c:	00a42223          	sw	a0,4(s0)
    3250:	20000613          	li	a2,512
    3254:	00000593          	li	a1,0
    3258:	00098513          	mv	a0,s3
    325c:	01845903          	lhu	s2,24(s0)
    3260:	ffffd097          	auipc	ra,0xffffd
    3264:	74c080e7          	jalr	1868(ra) # 9ac <memset>
    3268:	416157b7          	lui	a5,0x41615
    326c:	25278793          	addi	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    3270:	04f42223          	sw	a5,68(s0)
    3274:	614177b7          	lui	a5,0x61417
    3278:	27278793          	addi	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    327c:	22f42423          	sw	a5,552(s0)
    3280:	fff00793          	li	a5,-1
    3284:	22f42623          	sw	a5,556(s0)
    3288:	22f42823          	sw	a5,560(s0)
    328c:	03842783          	lw	a5,56(s0)
    3290:	24941123          	sh	s1,578(s0)
    3294:	00100613          	li	a2,1
    3298:	00098593          	mv	a1,s3
    329c:	00090513          	mv	a0,s2
    32a0:	000780e7          	jalr	a5
    32a4:	e40502e3          	beqz	a0,30e8 <fatfs_format_fat32+0xd4>
    32a8:	00100593          	li	a1,1
    32ac:	00040513          	mv	a0,s0
    32b0:	ffffe097          	auipc	ra,0xffffe
    32b4:	1d0080e7          	jalr	464(ra) # 1480 <fatfs_erase_fat>
    32b8:	e20508e3          	beqz	a0,30e8 <fatfs_format_fat32+0xd4>
    32bc:	00842583          	lw	a1,8(s0)
    32c0:	00040513          	mv	a0,s0
    32c4:	ffffe097          	auipc	ra,0xffffe
    32c8:	3f0080e7          	jalr	1008(ra) # 16b4 <fatfs_lba_of_cluster>
    32cc:	00044603          	lbu	a2,0(s0)
    32d0:	00050593          	mv	a1,a0
    32d4:	00040513          	mv	a0,s0
    32d8:	ffffe097          	auipc	ra,0xffffe
    32dc:	294080e7          	jalr	660(ra) # 156c <fatfs_erase_sectors>
    32e0:	00a03533          	snez	a0,a0
    32e4:	e09ff06f          	j	30ec <fatfs_format_fat32+0xd8>

000032e8 <fatfs_format>:
    32e8:	004007b7          	lui	a5,0x400
    32ec:	00b7e663          	bltu	a5,a1,32f8 <fatfs_format+0x10>
    32f0:	00000317          	auipc	t1,0x0
    32f4:	ab830067          	jr	-1352(t1) # 2da8 <fatfs_format_fat16>
    32f8:	00000317          	auipc	t1,0x0
    32fc:	d1c30067          	jr	-740(t1) # 3014 <fatfs_format_fat32>

00003300 <fl_format>:
    3300:	00058613          	mv	a2,a1
    3304:	00050593          	mv	a1,a0
    3308:	0000a537          	lui	a0,0xa
    330c:	65050513          	addi	a0,a0,1616 # a650 <_fs>
    3310:	00000317          	auipc	t1,0x0
    3314:	fd830067          	jr	-40(t1) # 32e8 <fatfs_format>

00003318 <fatfs_fat_purge>:
    3318:	ff010113          	addi	sp,sp,-16
    331c:	00812423          	sw	s0,8(sp)
    3320:	25452403          	lw	s0,596(a0)
    3324:	00912223          	sw	s1,4(sp)
    3328:	00112623          	sw	ra,12(sp)
    332c:	00050493          	mv	s1,a0
    3330:	00041663          	bnez	s0,333c <fatfs_fat_purge+0x24>
    3334:	00100513          	li	a0,1
    3338:	0280006f          	j	3360 <fatfs_fat_purge+0x48>
    333c:	20442783          	lw	a5,516(s0)
    3340:	00079663          	bnez	a5,334c <fatfs_fat_purge+0x34>
    3344:	20c42403          	lw	s0,524(s0)
    3348:	fe9ff06f          	j	3330 <fatfs_fat_purge+0x18>
    334c:	00040593          	mv	a1,s0
    3350:	00048513          	mv	a0,s1
    3354:	ffffe097          	auipc	ra,0xffffe
    3358:	fbc080e7          	jalr	-68(ra) # 1310 <fatfs_fat_writeback>
    335c:	fe0514e3          	bnez	a0,3344 <fatfs_fat_purge+0x2c>
    3360:	00c12083          	lw	ra,12(sp)
    3364:	00812403          	lw	s0,8(sp)
    3368:	00412483          	lw	s1,4(sp)
    336c:	01010113          	addi	sp,sp,16
    3370:	00008067          	ret

00003374 <fl_shutdown>:
    3374:	000067b7          	lui	a5,0x6
    3378:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    337c:	ff010113          	addi	sp,sp,-16
    3380:	00112623          	sw	ra,12(sp)
    3384:	00812423          	sw	s0,8(sp)
    3388:	00912223          	sw	s1,4(sp)
    338c:	00079663          	bnez	a5,3398 <fl_shutdown+0x24>
    3390:	ffffe097          	auipc	ra,0xffffe
    3394:	5e0080e7          	jalr	1504(ra) # 1970 <fl_init>
    3398:	0000a437          	lui	s0,0xa
    339c:	65040793          	addi	a5,s0,1616 # a650 <_fs>
    33a0:	03c7a783          	lw	a5,60(a5)
    33a4:	65040493          	addi	s1,s0,1616
    33a8:	00078463          	beqz	a5,33b0 <fl_shutdown+0x3c>
    33ac:	000780e7          	jalr	a5
    33b0:	65040513          	addi	a0,s0,1616
    33b4:	00000097          	auipc	ra,0x0
    33b8:	f64080e7          	jalr	-156(ra) # 3318 <fatfs_fat_purge>
    33bc:	0404a783          	lw	a5,64(s1)
    33c0:	00078c63          	beqz	a5,33d8 <fl_shutdown+0x64>
    33c4:	00812403          	lw	s0,8(sp)
    33c8:	00c12083          	lw	ra,12(sp)
    33cc:	00412483          	lw	s1,4(sp)
    33d0:	01010113          	addi	sp,sp,16
    33d4:	00078067          	jr	a5
    33d8:	00c12083          	lw	ra,12(sp)
    33dc:	00812403          	lw	s0,8(sp)
    33e0:	00412483          	lw	s1,4(sp)
    33e4:	01010113          	addi	sp,sp,16
    33e8:	00008067          	ret

000033ec <fatfs_find_next_cluster>:
    33ec:	ff010113          	addi	sp,sp,-16
    33f0:	00812423          	sw	s0,8(sp)
    33f4:	01212023          	sw	s2,0(sp)
    33f8:	00112623          	sw	ra,12(sp)
    33fc:	00912223          	sw	s1,4(sp)
    3400:	00050913          	mv	s2,a0
    3404:	00200413          	li	s0,2
    3408:	00058463          	beqz	a1,3410 <fatfs_find_next_cluster+0x24>
    340c:	00058413          	mv	s0,a1
    3410:	03092783          	lw	a5,48(s2)
    3414:	00745493          	srli	s1,s0,0x7
    3418:	00079463          	bnez	a5,3420 <fatfs_find_next_cluster+0x34>
    341c:	00845493          	srli	s1,s0,0x8
    3420:	01492583          	lw	a1,20(s2)
    3424:	00090513          	mv	a0,s2
    3428:	00b485b3          	add	a1,s1,a1
    342c:	ffffe097          	auipc	ra,0xffffe
    3430:	f68080e7          	jalr	-152(ra) # 1394 <fatfs_fat_read_sector>
    3434:	00050793          	mv	a5,a0
    3438:	fff00513          	li	a0,-1
    343c:	04078a63          	beqz	a5,3490 <fatfs_find_next_cluster+0xa4>
    3440:	03092703          	lw	a4,48(s2)
    3444:	2087a783          	lw	a5,520(a5)
    3448:	06071063          	bnez	a4,34a8 <fatfs_find_next_cluster+0xbc>
    344c:	00849493          	slli	s1,s1,0x8
    3450:	40940433          	sub	s0,s0,s1
    3454:	00010737          	lui	a4,0x10
    3458:	00141413          	slli	s0,s0,0x1
    345c:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x5547>
    3460:	00e47433          	and	s0,s0,a4
    3464:	008787b3          	add	a5,a5,s0
    3468:	0017c503          	lbu	a0,1(a5)
    346c:	0007c783          	lbu	a5,0(a5)
    3470:	00851513          	slli	a0,a0,0x8
    3474:	00f50533          	add	a0,a0,a5
    3478:	ffff07b7          	lui	a5,0xffff0
    347c:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3480:	00f507b3          	add	a5,a0,a5
    3484:	00700713          	li	a4,7
    3488:	00f76463          	bltu	a4,a5,3490 <fatfs_find_next_cluster+0xa4>
    348c:	fff00513          	li	a0,-1
    3490:	00c12083          	lw	ra,12(sp)
    3494:	00812403          	lw	s0,8(sp)
    3498:	00412483          	lw	s1,4(sp)
    349c:	00012903          	lw	s2,0(sp)
    34a0:	01010113          	addi	sp,sp,16
    34a4:	00008067          	ret
    34a8:	00749493          	slli	s1,s1,0x7
    34ac:	40940433          	sub	s0,s0,s1
    34b0:	00010737          	lui	a4,0x10
    34b4:	fff70713          	addi	a4,a4,-1 # ffff <_files+0x5547>
    34b8:	00241413          	slli	s0,s0,0x2
    34bc:	00e47433          	and	s0,s0,a4
    34c0:	008787b3          	add	a5,a5,s0
    34c4:	0037c503          	lbu	a0,3(a5)
    34c8:	0027c703          	lbu	a4,2(a5)
    34cc:	01851513          	slli	a0,a0,0x18
    34d0:	01071713          	slli	a4,a4,0x10
    34d4:	00e50533          	add	a0,a0,a4
    34d8:	0007c703          	lbu	a4,0(a5)
    34dc:	0017c783          	lbu	a5,1(a5)
    34e0:	00e50533          	add	a0,a0,a4
    34e4:	00879793          	slli	a5,a5,0x8
    34e8:	00f50533          	add	a0,a0,a5
    34ec:	00451513          	slli	a0,a0,0x4
    34f0:	00455513          	srli	a0,a0,0x4
    34f4:	f00007b7          	lui	a5,0xf0000
    34f8:	f85ff06f          	j	347c <fatfs_find_next_cluster+0x90>

000034fc <fatfs_sector_reader>:
    34fc:	03052783          	lw	a5,48(a0)
    3500:	fd010113          	addi	sp,sp,-48
    3504:	02812423          	sw	s0,40(sp)
    3508:	03212023          	sw	s2,32(sp)
    350c:	01312e23          	sw	s3,28(sp)
    3510:	02112623          	sw	ra,44(sp)
    3514:	02912223          	sw	s1,36(sp)
    3518:	01412c23          	sw	s4,24(sp)
    351c:	01512a23          	sw	s5,20(sp)
    3520:	00f5e7b3          	or	a5,a1,a5
    3524:	00050413          	mv	s0,a0
    3528:	00060913          	mv	s2,a2
    352c:	00068993          	mv	s3,a3
    3530:	06079c63          	bnez	a5,35a8 <fatfs_sector_reader+0xac>
    3534:	01052783          	lw	a5,16(a0)
    3538:	02f66663          	bltu	a2,a5,3564 <fatfs_sector_reader+0x68>
    353c:	00000513          	li	a0,0
    3540:	02c12083          	lw	ra,44(sp)
    3544:	02812403          	lw	s0,40(sp)
    3548:	02412483          	lw	s1,36(sp)
    354c:	02012903          	lw	s2,32(sp)
    3550:	01c12983          	lw	s3,28(sp)
    3554:	01812a03          	lw	s4,24(sp)
    3558:	01412a83          	lw	s5,20(sp)
    355c:	03010113          	addi	sp,sp,48
    3560:	00008067          	ret
    3564:	01c52503          	lw	a0,28(a0)
    3568:	00c42783          	lw	a5,12(s0)
    356c:	00f50533          	add	a0,a0,a5
    3570:	01250533          	add	a0,a0,s2
    3574:	0a098263          	beqz	s3,3618 <fatfs_sector_reader+0x11c>
    3578:	03442783          	lw	a5,52(s0)
    357c:	00100613          	li	a2,1
    3580:	00098593          	mv	a1,s3
    3584:	02812403          	lw	s0,40(sp)
    3588:	02c12083          	lw	ra,44(sp)
    358c:	02412483          	lw	s1,36(sp)
    3590:	02012903          	lw	s2,32(sp)
    3594:	01c12983          	lw	s3,28(sp)
    3598:	01812a03          	lw	s4,24(sp)
    359c:	01412a83          	lw	s5,20(sp)
    35a0:	03010113          	addi	sp,sp,48
    35a4:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    35a8:	00058493          	mv	s1,a1
    35ac:	00054583          	lbu	a1,0(a0)
    35b0:	00060513          	mv	a0,a2
    35b4:	00000a93          	li	s5,0
    35b8:	00b12623          	sw	a1,12(sp)
    35bc:	ffffd097          	auipc	ra,0xffffd
    35c0:	31c080e7          	jalr	796(ra) # 8d8 <__udivsi3>
    35c4:	00c12583          	lw	a1,12(sp)
    35c8:	00050a13          	mv	s4,a0
    35cc:	00090513          	mv	a0,s2
    35d0:	ffffd097          	auipc	ra,0xffffd
    35d4:	350080e7          	jalr	848(ra) # 920 <__umodsi3>
    35d8:	00050913          	mv	s2,a0
    35dc:	034a9063          	bne	s5,s4,35fc <fatfs_sector_reader+0x100>
    35e0:	fff00793          	li	a5,-1
    35e4:	f4f48ce3          	beq	s1,a5,353c <fatfs_sector_reader+0x40>
    35e8:	00048593          	mv	a1,s1
    35ec:	00040513          	mv	a0,s0
    35f0:	ffffe097          	auipc	ra,0xffffe
    35f4:	0c4080e7          	jalr	196(ra) # 16b4 <fatfs_lba_of_cluster>
    35f8:	f79ff06f          	j	3570 <fatfs_sector_reader+0x74>
    35fc:	00048593          	mv	a1,s1
    3600:	00040513          	mv	a0,s0
    3604:	00000097          	auipc	ra,0x0
    3608:	de8080e7          	jalr	-536(ra) # 33ec <fatfs_find_next_cluster>
    360c:	00050493          	mv	s1,a0
    3610:	001a8a93          	addi	s5,s5,1
    3614:	fc9ff06f          	j	35dc <fatfs_sector_reader+0xe0>
    3618:	24442783          	lw	a5,580(s0)
    361c:	00a78c63          	beq	a5,a0,3634 <fatfs_sector_reader+0x138>
    3620:	03442783          	lw	a5,52(s0)
    3624:	24a42223          	sw	a0,580(s0)
    3628:	00100613          	li	a2,1
    362c:	04440593          	addi	a1,s0,68
    3630:	f55ff06f          	j	3584 <fatfs_sector_reader+0x88>
    3634:	00100513          	li	a0,1
    3638:	f09ff06f          	j	3540 <fatfs_sector_reader+0x44>

0000363c <fatfs_get_file_entry>:
    363c:	eb010113          	addi	sp,sp,-336
    3640:	14812423          	sw	s0,328(sp)
    3644:	01810413          	addi	s0,sp,24
    3648:	14912223          	sw	s1,324(sp)
    364c:	15212023          	sw	s2,320(sp)
    3650:	13312e23          	sw	s3,316(sp)
    3654:	13412c23          	sw	s4,312(sp)
    3658:	13512a23          	sw	s5,308(sp)
    365c:	13612823          	sw	s6,304(sp)
    3660:	14112623          	sw	ra,332(sp)
    3664:	13712623          	sw	s7,300(sp)
    3668:	13812423          	sw	s8,296(sp)
    366c:	13912223          	sw	s9,292(sp)
    3670:	13a12023          	sw	s10,288(sp)
    3674:	00050493          	mv	s1,a0
    3678:	00058a93          	mv	s5,a1
    367c:	00060913          	mv	s2,a2
    3680:	00068993          	mv	s3,a3
    3684:	10010ea3          	sb	zero,285(sp)
    3688:	11c10a13          	addi	s4,sp,284
    368c:	00040b13          	mv	s6,s0
    3690:	00040513          	mv	a0,s0
    3694:	00d00613          	li	a2,13
    3698:	00000593          	li	a1,0
    369c:	00d40413          	addi	s0,s0,13
    36a0:	ffffd097          	auipc	ra,0xffffd
    36a4:	30c080e7          	jalr	780(ra) # 9ac <memset>
    36a8:	ff4414e3          	bne	s0,s4,3690 <fatfs_get_file_entry+0x54>
    36ac:	00000a13          	li	s4,0
    36b0:	24448c13          	addi	s8,s1,580
    36b4:	00800c93          	li	s9,8
    36b8:	02000b93          	li	s7,32
    36bc:	00000693          	li	a3,0
    36c0:	000a0613          	mv	a2,s4
    36c4:	000a8593          	mv	a1,s5
    36c8:	00048513          	mv	a0,s1
    36cc:	00000097          	auipc	ra,0x0
    36d0:	e30080e7          	jalr	-464(ra) # 34fc <fatfs_sector_reader>
    36d4:	16050463          	beqz	a0,383c <fatfs_get_file_entry+0x200>
    36d8:	04448413          	addi	s0,s1,68
    36dc:	02e00d13          	li	s10,46
    36e0:	00040513          	mv	a0,s0
    36e4:	ffffe097          	auipc	ra,0xffffe
    36e8:	69c080e7          	jalr	1692(ra) # 1d80 <fatfs_entry_lfn_text>
    36ec:	02050263          	beqz	a0,3710 <fatfs_get_file_entry+0xd4>
    36f0:	00040593          	mv	a1,s0
    36f4:	000b0513          	mv	a0,s6
    36f8:	ffffe097          	auipc	ra,0xffffe
    36fc:	580080e7          	jalr	1408(ra) # 1c78 <fatfs_lfn_cache_entry>
    3700:	02040413          	addi	s0,s0,32
    3704:	fd841ee3          	bne	s0,s8,36e0 <fatfs_get_file_entry+0xa4>
    3708:	001a0a13          	addi	s4,s4,1
    370c:	fb1ff06f          	j	36bc <fatfs_get_file_entry+0x80>
    3710:	00040513          	mv	a0,s0
    3714:	ffffe097          	auipc	ra,0xffffe
    3718:	680080e7          	jalr	1664(ra) # 1d94 <fatfs_entry_lfn_invalid>
    371c:	00050663          	beqz	a0,3728 <fatfs_get_file_entry+0xec>
    3720:	10010ea3          	sb	zero,285(sp)
    3724:	fddff06f          	j	3700 <fatfs_get_file_entry+0xc4>
    3728:	00040593          	mv	a1,s0
    372c:	000b0513          	mv	a0,s6
    3730:	ffffe097          	auipc	ra,0xffffe
    3734:	69c080e7          	jalr	1692(ra) # 1dcc <fatfs_entry_lfn_exists>
    3738:	06050863          	beqz	a0,37a8 <fatfs_get_file_entry+0x16c>
    373c:	000b0513          	mv	a0,s6
    3740:	ffffe097          	auipc	ra,0xffffe
    3744:	604080e7          	jalr	1540(ra) # 1d44 <fatfs_lfn_cache_get>
    3748:	00090593          	mv	a1,s2
    374c:	fffff097          	auipc	ra,0xfffff
    3750:	e50080e7          	jalr	-432(ra) # 259c <fatfs_compare_names>
    3754:	fc0506e3          	beqz	a0,3720 <fatfs_get_file_entry+0xe4>
    3758:	02000613          	li	a2,32
    375c:	00040593          	mv	a1,s0
    3760:	00098513          	mv	a0,s3
    3764:	ffffd097          	auipc	ra,0xffffd
    3768:	264080e7          	jalr	612(ra) # 9c8 <memcpy>
    376c:	00100513          	li	a0,1
    3770:	14c12083          	lw	ra,332(sp)
    3774:	14812403          	lw	s0,328(sp)
    3778:	14412483          	lw	s1,324(sp)
    377c:	14012903          	lw	s2,320(sp)
    3780:	13c12983          	lw	s3,316(sp)
    3784:	13812a03          	lw	s4,312(sp)
    3788:	13412a83          	lw	s5,308(sp)
    378c:	13012b03          	lw	s6,304(sp)
    3790:	12c12b83          	lw	s7,300(sp)
    3794:	12812c03          	lw	s8,296(sp)
    3798:	12412c83          	lw	s9,292(sp)
    379c:	12012d03          	lw	s10,288(sp)
    37a0:	15010113          	addi	sp,sp,336
    37a4:	00008067          	ret
    37a8:	00040513          	mv	a0,s0
    37ac:	ffffe097          	auipc	ra,0xffffe
    37b0:	668080e7          	jalr	1640(ra) # 1e14 <fatfs_entry_sfn_only>
    37b4:	f40506e3          	beqz	a0,3700 <fatfs_get_file_entry+0xc4>
    37b8:	00d00613          	li	a2,13
    37bc:	00000593          	li	a1,0
    37c0:	00810513          	addi	a0,sp,8
    37c4:	ffffd097          	auipc	ra,0xffffd
    37c8:	1e8080e7          	jalr	488(ra) # 9ac <memset>
    37cc:	00000793          	li	a5,0
    37d0:	00f406b3          	add	a3,s0,a5
    37d4:	0006c683          	lbu	a3,0(a3)
    37d8:	00810713          	addi	a4,sp,8
    37dc:	00f70733          	add	a4,a4,a5
    37e0:	00d70023          	sb	a3,0(a4)
    37e4:	00178793          	addi	a5,a5,1
    37e8:	ff9794e3          	bne	a5,s9,37d0 <fatfs_get_file_entry+0x194>
    37ec:	00844783          	lbu	a5,8(s0)
    37f0:	00944683          	lbu	a3,9(s0)
    37f4:	00100713          	li	a4,1
    37f8:	00f108a3          	sb	a5,17(sp)
    37fc:	00d10923          	sb	a3,18(sp)
    3800:	01769663          	bne	a3,s7,380c <fatfs_get_file_entry+0x1d0>
    3804:	fe078793          	addi	a5,a5,-32
    3808:	00f03733          	snez	a4,a5
    380c:	00a44783          	lbu	a5,10(s0)
    3810:	00f109a3          	sb	a5,19(sp)
    3814:	01779463          	bne	a5,s7,381c <fatfs_get_file_entry+0x1e0>
    3818:	00070a63          	beqz	a4,382c <fatfs_get_file_entry+0x1f0>
    381c:	00814703          	lbu	a4,8(sp)
    3820:	02000793          	li	a5,32
    3824:	01a70463          	beq	a4,s10,382c <fatfs_get_file_entry+0x1f0>
    3828:	02e00793          	li	a5,46
    382c:	00f10823          	sb	a5,16(sp)
    3830:	00090593          	mv	a1,s2
    3834:	00810513          	addi	a0,sp,8
    3838:	f15ff06f          	j	374c <fatfs_get_file_entry+0x110>
    383c:	00000513          	li	a0,0
    3840:	f31ff06f          	j	3770 <fatfs_get_file_entry+0x134>

00003844 <_open_directory>:
    3844:	eb010113          	addi	sp,sp,-336
    3848:	13512a23          	sw	s5,308(sp)
    384c:	0000aab7          	lui	s5,0xa
    3850:	650a8793          	addi	a5,s5,1616 # a650 <_fs>
    3854:	14812423          	sw	s0,328(sp)
    3858:	14912223          	sw	s1,324(sp)
    385c:	15212023          	sw	s2,320(sp)
    3860:	13312e23          	sw	s3,316(sp)
    3864:	13412c23          	sw	s4,312(sp)
    3868:	13612823          	sw	s6,304(sp)
    386c:	0087a403          	lw	s0,8(a5)
    3870:	14112623          	sw	ra,332(sp)
    3874:	00050a13          	mv	s4,a0
    3878:	00058913          	mv	s2,a1
    387c:	fffff097          	auipc	ra,0xfffff
    3880:	ad8080e7          	jalr	-1320(ra) # 2354 <fatfs_total_path_levels>
    3884:	00050993          	mv	s3,a0
    3888:	00000493          	li	s1,0
    388c:	fff00b13          	li	s6,-1
    3890:	0099d863          	bge	s3,s1,38a0 <_open_directory+0x5c>
    3894:	00892023          	sw	s0,0(s2)
    3898:	00100513          	li	a0,1
    389c:	0240006f          	j	38c0 <_open_directory+0x7c>
    38a0:	10400693          	li	a3,260
    38a4:	02c10613          	addi	a2,sp,44
    38a8:	00048593          	mv	a1,s1
    38ac:	000a0513          	mv	a0,s4
    38b0:	fffff097          	auipc	ra,0xfffff
    38b4:	b18080e7          	jalr	-1256(ra) # 23c8 <fatfs_get_substring>
    38b8:	03651863          	bne	a0,s6,38e8 <_open_directory+0xa4>
    38bc:	00000513          	li	a0,0
    38c0:	14c12083          	lw	ra,332(sp)
    38c4:	14812403          	lw	s0,328(sp)
    38c8:	14412483          	lw	s1,324(sp)
    38cc:	14012903          	lw	s2,320(sp)
    38d0:	13c12983          	lw	s3,316(sp)
    38d4:	13812a03          	lw	s4,312(sp)
    38d8:	13412a83          	lw	s5,308(sp)
    38dc:	13012b03          	lw	s6,304(sp)
    38e0:	15010113          	addi	sp,sp,336
    38e4:	00008067          	ret
    38e8:	00c10693          	addi	a3,sp,12
    38ec:	02c10613          	addi	a2,sp,44
    38f0:	00040593          	mv	a1,s0
    38f4:	650a8513          	addi	a0,s5,1616
    38f8:	00000097          	auipc	ra,0x0
    38fc:	d44080e7          	jalr	-700(ra) # 363c <fatfs_get_file_entry>
    3900:	fa050ee3          	beqz	a0,38bc <_open_directory+0x78>
    3904:	00c10513          	addi	a0,sp,12
    3908:	ffffe097          	auipc	ra,0xffffe
    390c:	548080e7          	jalr	1352(ra) # 1e50 <fatfs_entry_is_dir>
    3910:	fa0506e3          	beqz	a0,38bc <_open_directory+0x78>
    3914:	02015403          	lhu	s0,32(sp)
    3918:	02615783          	lhu	a5,38(sp)
    391c:	00148493          	addi	s1,s1,1
    3920:	01041413          	slli	s0,s0,0x10
    3924:	00f40433          	add	s0,s0,a5
    3928:	f69ff06f          	j	3890 <_open_directory+0x4c>

0000392c <fl_opendir>:
    392c:	fe010113          	addi	sp,sp,-32
    3930:	fff00793          	li	a5,-1
    3934:	00f12623          	sw	a5,12(sp)
    3938:	000067b7          	lui	a5,0x6
    393c:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    3940:	00812c23          	sw	s0,24(sp)
    3944:	01212823          	sw	s2,16(sp)
    3948:	00112e23          	sw	ra,28(sp)
    394c:	00912a23          	sw	s1,20(sp)
    3950:	00050913          	mv	s2,a0
    3954:	00058413          	mv	s0,a1
    3958:	00079663          	bnez	a5,3964 <fl_opendir+0x38>
    395c:	ffffe097          	auipc	ra,0xffffe
    3960:	014080e7          	jalr	20(ra) # 1970 <fl_init>
    3964:	0000a4b7          	lui	s1,0xa
    3968:	65048793          	addi	a5,s1,1616 # a650 <_fs>
    396c:	03c7a783          	lw	a5,60(a5)
    3970:	65048493          	addi	s1,s1,1616
    3974:	00078463          	beqz	a5,397c <fl_opendir+0x50>
    3978:	000780e7          	jalr	a5
    397c:	00090513          	mv	a0,s2
    3980:	fffff097          	auipc	ra,0xfffff
    3984:	9d4080e7          	jalr	-1580(ra) # 2354 <fatfs_total_path_levels>
    3988:	fff00793          	li	a5,-1
    398c:	02f51063          	bne	a0,a5,39ac <fl_opendir+0x80>
    3990:	0084a783          	lw	a5,8(s1)
    3994:	00f12623          	sw	a5,12(sp)
    3998:	00c12783          	lw	a5,12(sp)
    399c:	00042023          	sw	zero,0(s0)
    39a0:	00040423          	sb	zero,8(s0)
    39a4:	00f42223          	sw	a5,4(s0)
    39a8:	0180006f          	j	39c0 <fl_opendir+0x94>
    39ac:	00c10593          	addi	a1,sp,12
    39b0:	00090513          	mv	a0,s2
    39b4:	00000097          	auipc	ra,0x0
    39b8:	e90080e7          	jalr	-368(ra) # 3844 <_open_directory>
    39bc:	fc051ee3          	bnez	a0,3998 <fl_opendir+0x6c>
    39c0:	0404a783          	lw	a5,64(s1)
    39c4:	00078463          	beqz	a5,39cc <fl_opendir+0xa0>
    39c8:	000780e7          	jalr	a5
    39cc:	00c12703          	lw	a4,12(sp)
    39d0:	fff00793          	li	a5,-1
    39d4:	00f71463          	bne	a4,a5,39dc <fl_opendir+0xb0>
    39d8:	00000413          	li	s0,0
    39dc:	01c12083          	lw	ra,28(sp)
    39e0:	00040513          	mv	a0,s0
    39e4:	01812403          	lw	s0,24(sp)
    39e8:	01412483          	lw	s1,20(sp)
    39ec:	01012903          	lw	s2,16(sp)
    39f0:	02010113          	addi	sp,sp,32
    39f4:	00008067          	ret

000039f8 <fl_is_dir>:
    39f8:	fe010113          	addi	sp,sp,-32
    39fc:	00410593          	addi	a1,sp,4
    3a00:	00112e23          	sw	ra,28(sp)
    3a04:	00000097          	auipc	ra,0x0
    3a08:	f28080e7          	jalr	-216(ra) # 392c <fl_opendir>
    3a0c:	01c12083          	lw	ra,28(sp)
    3a10:	00a03533          	snez	a0,a0
    3a14:	02010113          	addi	sp,sp,32
    3a18:	00008067          	ret

00003a1c <_open_file>:
    3a1c:	fc010113          	addi	sp,sp,-64
    3a20:	02812c23          	sw	s0,56(sp)
    3a24:	03312623          	sw	s3,44(sp)
    3a28:	02112e23          	sw	ra,60(sp)
    3a2c:	02912a23          	sw	s1,52(sp)
    3a30:	03212823          	sw	s2,48(sp)
    3a34:	00050993          	mv	s3,a0
    3a38:	ffffe097          	auipc	ra,0xffffe
    3a3c:	bc0080e7          	jalr	-1088(ra) # 15f8 <_allocate_file>
    3a40:	00050413          	mv	s0,a0
    3a44:	10050c63          	beqz	a0,3b5c <_open_file+0x140>
    3a48:	01450913          	addi	s2,a0,20
    3a4c:	10400613          	li	a2,260
    3a50:	00000593          	li	a1,0
    3a54:	00090513          	mv	a0,s2
    3a58:	ffffd097          	auipc	ra,0xffffd
    3a5c:	f54080e7          	jalr	-172(ra) # 9ac <memset>
    3a60:	11840493          	addi	s1,s0,280
    3a64:	10400613          	li	a2,260
    3a68:	00000593          	li	a1,0
    3a6c:	00048513          	mv	a0,s1
    3a70:	ffffd097          	auipc	ra,0xffffd
    3a74:	f3c080e7          	jalr	-196(ra) # 9ac <memset>
    3a78:	10400713          	li	a4,260
    3a7c:	00048693          	mv	a3,s1
    3a80:	10400613          	li	a2,260
    3a84:	00090593          	mv	a1,s2
    3a88:	00098513          	mv	a0,s3
    3a8c:	fffff097          	auipc	ra,0xfffff
    3a90:	a30080e7          	jalr	-1488(ra) # 24bc <fatfs_split_path>
    3a94:	fff00793          	li	a5,-1
    3a98:	00f51c63          	bne	a0,a5,3ab0 <_open_file+0x94>
    3a9c:	00040513          	mv	a0,s0
    3aa0:	ffffe097          	auipc	ra,0xffffe
    3aa4:	bcc080e7          	jalr	-1076(ra) # 166c <_free_file>
    3aa8:	00000413          	li	s0,0
    3aac:	0b00006f          	j	3b5c <_open_file+0x140>
    3ab0:	00040513          	mv	a0,s0
    3ab4:	fffff097          	auipc	ra,0xfffff
    3ab8:	c58080e7          	jalr	-936(ra) # 270c <_check_file_open>
    3abc:	fe0510e3          	bnez	a0,3a9c <_open_file+0x80>
    3ac0:	01444783          	lbu	a5,20(s0)
    3ac4:	0a079c63          	bnez	a5,3b7c <_open_file+0x160>
    3ac8:	0000a7b7          	lui	a5,0xa
    3acc:	6587a783          	lw	a5,1624(a5) # a658 <_fs+0x8>
    3ad0:	00f42023          	sw	a5,0(s0)
    3ad4:	00042583          	lw	a1,0(s0)
    3ad8:	0000a937          	lui	s2,0xa
    3adc:	00010693          	mv	a3,sp
    3ae0:	00048613          	mv	a2,s1
    3ae4:	65090513          	addi	a0,s2,1616 # a650 <_fs>
    3ae8:	00000097          	auipc	ra,0x0
    3aec:	b54080e7          	jalr	-1196(ra) # 363c <fatfs_get_file_entry>
    3af0:	fa0506e3          	beqz	a0,3a9c <_open_file+0x80>
    3af4:	00010513          	mv	a0,sp
    3af8:	ffffe097          	auipc	ra,0xffffe
    3afc:	368080e7          	jalr	872(ra) # 1e60 <fatfs_entry_is_file>
    3b00:	f8050ee3          	beqz	a0,3a9c <_open_file+0x80>
    3b04:	00b00613          	li	a2,11
    3b08:	00010593          	mv	a1,sp
    3b0c:	21c40513          	addi	a0,s0,540
    3b10:	ffffd097          	auipc	ra,0xffffd
    3b14:	eb8080e7          	jalr	-328(ra) # 9c8 <memcpy>
    3b18:	01c12783          	lw	a5,28(sp)
    3b1c:	01a15703          	lhu	a4,26(sp)
    3b20:	00042423          	sw	zero,8(s0)
    3b24:	00f42623          	sw	a5,12(s0)
    3b28:	01415783          	lhu	a5,20(sp)
    3b2c:	42042a23          	sw	zero,1076(s0)
    3b30:	00042823          	sw	zero,16(s0)
    3b34:	01079793          	slli	a5,a5,0x10
    3b38:	00e787b3          	add	a5,a5,a4
    3b3c:	00f42223          	sw	a5,4(s0)
    3b40:	fff00793          	li	a5,-1
    3b44:	42f42823          	sw	a5,1072(s0)
    3b48:	22f42423          	sw	a5,552(s0)
    3b4c:	22f42623          	sw	a5,556(s0)
    3b50:	65090513          	addi	a0,s2,1616
    3b54:	fffff097          	auipc	ra,0xfffff
    3b58:	7c4080e7          	jalr	1988(ra) # 3318 <fatfs_fat_purge>
    3b5c:	03c12083          	lw	ra,60(sp)
    3b60:	00040513          	mv	a0,s0
    3b64:	03812403          	lw	s0,56(sp)
    3b68:	03412483          	lw	s1,52(sp)
    3b6c:	03012903          	lw	s2,48(sp)
    3b70:	02c12983          	lw	s3,44(sp)
    3b74:	04010113          	addi	sp,sp,64
    3b78:	00008067          	ret
    3b7c:	00040593          	mv	a1,s0
    3b80:	00090513          	mv	a0,s2
    3b84:	00000097          	auipc	ra,0x0
    3b88:	cc0080e7          	jalr	-832(ra) # 3844 <_open_directory>
    3b8c:	f40514e3          	bnez	a0,3ad4 <_open_file+0xb8>
    3b90:	f0dff06f          	j	3a9c <_open_file+0x80>

00003b94 <fatfs_sfn_exists>:
    3b94:	fe010113          	addi	sp,sp,-32
    3b98:	00912a23          	sw	s1,20(sp)
    3b9c:	01212823          	sw	s2,16(sp)
    3ba0:	01312623          	sw	s3,12(sp)
    3ba4:	01412423          	sw	s4,8(sp)
    3ba8:	01512223          	sw	s5,4(sp)
    3bac:	00112e23          	sw	ra,28(sp)
    3bb0:	00812c23          	sw	s0,24(sp)
    3bb4:	00050493          	mv	s1,a0
    3bb8:	00058993          	mv	s3,a1
    3bbc:	00060a13          	mv	s4,a2
    3bc0:	00000913          	li	s2,0
    3bc4:	24450a93          	addi	s5,a0,580
    3bc8:	00000693          	li	a3,0
    3bcc:	00090613          	mv	a2,s2
    3bd0:	00098593          	mv	a1,s3
    3bd4:	00048513          	mv	a0,s1
    3bd8:	00000097          	auipc	ra,0x0
    3bdc:	924080e7          	jalr	-1756(ra) # 34fc <fatfs_sector_reader>
    3be0:	06050263          	beqz	a0,3c44 <fatfs_sfn_exists+0xb0>
    3be4:	04448413          	addi	s0,s1,68
    3be8:	00040513          	mv	a0,s0
    3bec:	ffffe097          	auipc	ra,0xffffe
    3bf0:	194080e7          	jalr	404(ra) # 1d80 <fatfs_entry_lfn_text>
    3bf4:	02051e63          	bnez	a0,3c30 <fatfs_sfn_exists+0x9c>
    3bf8:	00040513          	mv	a0,s0
    3bfc:	ffffe097          	auipc	ra,0xffffe
    3c00:	198080e7          	jalr	408(ra) # 1d94 <fatfs_entry_lfn_invalid>
    3c04:	02051663          	bnez	a0,3c30 <fatfs_sfn_exists+0x9c>
    3c08:	00040513          	mv	a0,s0
    3c0c:	ffffe097          	auipc	ra,0xffffe
    3c10:	208080e7          	jalr	520(ra) # 1e14 <fatfs_entry_sfn_only>
    3c14:	00050e63          	beqz	a0,3c30 <fatfs_sfn_exists+0x9c>
    3c18:	00b00613          	li	a2,11
    3c1c:	000a0593          	mv	a1,s4
    3c20:	00040513          	mv	a0,s0
    3c24:	ffffd097          	auipc	ra,0xffffd
    3c28:	de8080e7          	jalr	-536(ra) # a0c <strncmp>
    3c2c:	00050a63          	beqz	a0,3c40 <fatfs_sfn_exists+0xac>
    3c30:	02040413          	addi	s0,s0,32
    3c34:	fb541ae3          	bne	s0,s5,3be8 <fatfs_sfn_exists+0x54>
    3c38:	00190913          	addi	s2,s2,1
    3c3c:	f8dff06f          	j	3bc8 <fatfs_sfn_exists+0x34>
    3c40:	00100513          	li	a0,1
    3c44:	01c12083          	lw	ra,28(sp)
    3c48:	01812403          	lw	s0,24(sp)
    3c4c:	01412483          	lw	s1,20(sp)
    3c50:	01012903          	lw	s2,16(sp)
    3c54:	00c12983          	lw	s3,12(sp)
    3c58:	00812a03          	lw	s4,8(sp)
    3c5c:	00412a83          	lw	s5,4(sp)
    3c60:	02010113          	addi	sp,sp,32
    3c64:	00008067          	ret

00003c68 <fatfs_update_file_length>:
    3c68:	03852783          	lw	a5,56(a0)
    3c6c:	14078e63          	beqz	a5,3dc8 <fatfs_update_file_length+0x160>
    3c70:	fd010113          	addi	sp,sp,-48
    3c74:	02912223          	sw	s1,36(sp)
    3c78:	03212023          	sw	s2,32(sp)
    3c7c:	01312e23          	sw	s3,28(sp)
    3c80:	01412c23          	sw	s4,24(sp)
    3c84:	01512a23          	sw	s5,20(sp)
    3c88:	01612823          	sw	s6,16(sp)
    3c8c:	02112623          	sw	ra,44(sp)
    3c90:	02812423          	sw	s0,40(sp)
    3c94:	01712623          	sw	s7,12(sp)
    3c98:	00050493          	mv	s1,a0
    3c9c:	00058a13          	mv	s4,a1
    3ca0:	00060a93          	mv	s5,a2
    3ca4:	00068913          	mv	s2,a3
    3ca8:	00000993          	li	s3,0
    3cac:	24450b13          	addi	s6,a0,580
    3cb0:	00000693          	li	a3,0
    3cb4:	00098613          	mv	a2,s3
    3cb8:	000a0593          	mv	a1,s4
    3cbc:	00048513          	mv	a0,s1
    3cc0:	00000097          	auipc	ra,0x0
    3cc4:	83c080e7          	jalr	-1988(ra) # 34fc <fatfs_sector_reader>
    3cc8:	0c050863          	beqz	a0,3d98 <fatfs_update_file_length+0x130>
    3ccc:	04448413          	addi	s0,s1,68
    3cd0:	00040b93          	mv	s7,s0
    3cd4:	00040513          	mv	a0,s0
    3cd8:	ffffe097          	auipc	ra,0xffffe
    3cdc:	0a8080e7          	jalr	168(ra) # 1d80 <fatfs_entry_lfn_text>
    3ce0:	0a051463          	bnez	a0,3d88 <fatfs_update_file_length+0x120>
    3ce4:	00040513          	mv	a0,s0
    3ce8:	ffffe097          	auipc	ra,0xffffe
    3cec:	0ac080e7          	jalr	172(ra) # 1d94 <fatfs_entry_lfn_invalid>
    3cf0:	08051c63          	bnez	a0,3d88 <fatfs_update_file_length+0x120>
    3cf4:	00040513          	mv	a0,s0
    3cf8:	ffffe097          	auipc	ra,0xffffe
    3cfc:	11c080e7          	jalr	284(ra) # 1e14 <fatfs_entry_sfn_only>
    3d00:	08050463          	beqz	a0,3d88 <fatfs_update_file_length+0x120>
    3d04:	00b00613          	li	a2,11
    3d08:	000a8593          	mv	a1,s5
    3d0c:	00040513          	mv	a0,s0
    3d10:	ffffd097          	auipc	ra,0xffffd
    3d14:	cfc080e7          	jalr	-772(ra) # a0c <strncmp>
    3d18:	06051863          	bnez	a0,3d88 <fatfs_update_file_length+0x120>
    3d1c:	00895793          	srli	a5,s2,0x8
    3d20:	01240e23          	sb	s2,28(s0)
    3d24:	00f40ea3          	sb	a5,29(s0)
    3d28:	01095793          	srli	a5,s2,0x10
    3d2c:	01895913          	srli	s2,s2,0x18
    3d30:	00f40f23          	sb	a5,30(s0)
    3d34:	01240fa3          	sb	s2,31(s0)
    3d38:	00040593          	mv	a1,s0
    3d3c:	02000613          	li	a2,32
    3d40:	00040513          	mv	a0,s0
    3d44:	ffffd097          	auipc	ra,0xffffd
    3d48:	c84080e7          	jalr	-892(ra) # 9c8 <memcpy>
    3d4c:	02812403          	lw	s0,40(sp)
    3d50:	0384a783          	lw	a5,56(s1)
    3d54:	2444a503          	lw	a0,580(s1)
    3d58:	02c12083          	lw	ra,44(sp)
    3d5c:	02412483          	lw	s1,36(sp)
    3d60:	02012903          	lw	s2,32(sp)
    3d64:	01c12983          	lw	s3,28(sp)
    3d68:	01812a03          	lw	s4,24(sp)
    3d6c:	01412a83          	lw	s5,20(sp)
    3d70:	01012b03          	lw	s6,16(sp)
    3d74:	000b8593          	mv	a1,s7
    3d78:	00c12b83          	lw	s7,12(sp)
    3d7c:	00100613          	li	a2,1
    3d80:	03010113          	addi	sp,sp,48
    3d84:	00078067          	jr	a5
    3d88:	02040413          	addi	s0,s0,32
    3d8c:	f56414e3          	bne	s0,s6,3cd4 <fatfs_update_file_length+0x6c>
    3d90:	00198993          	addi	s3,s3,1
    3d94:	f1dff06f          	j	3cb0 <fatfs_update_file_length+0x48>
    3d98:	02c12083          	lw	ra,44(sp)
    3d9c:	02812403          	lw	s0,40(sp)
    3da0:	02412483          	lw	s1,36(sp)
    3da4:	02012903          	lw	s2,32(sp)
    3da8:	01c12983          	lw	s3,28(sp)
    3dac:	01812a03          	lw	s4,24(sp)
    3db0:	01412a83          	lw	s5,20(sp)
    3db4:	01012b03          	lw	s6,16(sp)
    3db8:	00c12b83          	lw	s7,12(sp)
    3dbc:	00000513          	li	a0,0
    3dc0:	03010113          	addi	sp,sp,48
    3dc4:	00008067          	ret
    3dc8:	00000513          	li	a0,0
    3dcc:	00008067          	ret

00003dd0 <fatfs_mark_file_deleted>:
    3dd0:	03852783          	lw	a5,56(a0)
    3dd4:	12078c63          	beqz	a5,3f0c <fatfs_mark_file_deleted+0x13c>
    3dd8:	fe010113          	addi	sp,sp,-32
    3ddc:	00912a23          	sw	s1,20(sp)
    3de0:	01212823          	sw	s2,16(sp)
    3de4:	01312623          	sw	s3,12(sp)
    3de8:	01412423          	sw	s4,8(sp)
    3dec:	01512223          	sw	s5,4(sp)
    3df0:	00112e23          	sw	ra,28(sp)
    3df4:	00812c23          	sw	s0,24(sp)
    3df8:	01612023          	sw	s6,0(sp)
    3dfc:	00050493          	mv	s1,a0
    3e00:	00058993          	mv	s3,a1
    3e04:	00060a13          	mv	s4,a2
    3e08:	00000913          	li	s2,0
    3e0c:	24450a93          	addi	s5,a0,580
    3e10:	00000693          	li	a3,0
    3e14:	00090613          	mv	a2,s2
    3e18:	00098593          	mv	a1,s3
    3e1c:	00048513          	mv	a0,s1
    3e20:	fffff097          	auipc	ra,0xfffff
    3e24:	6dc080e7          	jalr	1756(ra) # 34fc <fatfs_sector_reader>
    3e28:	0a050c63          	beqz	a0,3ee0 <fatfs_mark_file_deleted+0x110>
    3e2c:	04448413          	addi	s0,s1,68
    3e30:	00040b13          	mv	s6,s0
    3e34:	00040513          	mv	a0,s0
    3e38:	ffffe097          	auipc	ra,0xffffe
    3e3c:	f48080e7          	jalr	-184(ra) # 1d80 <fatfs_entry_lfn_text>
    3e40:	08051863          	bnez	a0,3ed0 <fatfs_mark_file_deleted+0x100>
    3e44:	00040513          	mv	a0,s0
    3e48:	ffffe097          	auipc	ra,0xffffe
    3e4c:	f4c080e7          	jalr	-180(ra) # 1d94 <fatfs_entry_lfn_invalid>
    3e50:	08051063          	bnez	a0,3ed0 <fatfs_mark_file_deleted+0x100>
    3e54:	00040513          	mv	a0,s0
    3e58:	ffffe097          	auipc	ra,0xffffe
    3e5c:	fbc080e7          	jalr	-68(ra) # 1e14 <fatfs_entry_sfn_only>
    3e60:	06050863          	beqz	a0,3ed0 <fatfs_mark_file_deleted+0x100>
    3e64:	00b00613          	li	a2,11
    3e68:	000a0593          	mv	a1,s4
    3e6c:	00040513          	mv	a0,s0
    3e70:	ffffd097          	auipc	ra,0xffffd
    3e74:	b9c080e7          	jalr	-1124(ra) # a0c <strncmp>
    3e78:	04051c63          	bnez	a0,3ed0 <fatfs_mark_file_deleted+0x100>
    3e7c:	fe500793          	li	a5,-27
    3e80:	00f40023          	sb	a5,0(s0)
    3e84:	00040593          	mv	a1,s0
    3e88:	02000613          	li	a2,32
    3e8c:	00040513          	mv	a0,s0
    3e90:	ffffd097          	auipc	ra,0xffffd
    3e94:	b38080e7          	jalr	-1224(ra) # 9c8 <memcpy>
    3e98:	01812403          	lw	s0,24(sp)
    3e9c:	0384a783          	lw	a5,56(s1)
    3ea0:	2444a503          	lw	a0,580(s1)
    3ea4:	01c12083          	lw	ra,28(sp)
    3ea8:	01412483          	lw	s1,20(sp)
    3eac:	01012903          	lw	s2,16(sp)
    3eb0:	00c12983          	lw	s3,12(sp)
    3eb4:	00812a03          	lw	s4,8(sp)
    3eb8:	00412a83          	lw	s5,4(sp)
    3ebc:	000b0593          	mv	a1,s6
    3ec0:	00012b03          	lw	s6,0(sp)
    3ec4:	00100613          	li	a2,1
    3ec8:	02010113          	addi	sp,sp,32
    3ecc:	00078067          	jr	a5
    3ed0:	02040413          	addi	s0,s0,32
    3ed4:	f75410e3          	bne	s0,s5,3e34 <fatfs_mark_file_deleted+0x64>
    3ed8:	00190913          	addi	s2,s2,1
    3edc:	f35ff06f          	j	3e10 <fatfs_mark_file_deleted+0x40>
    3ee0:	01c12083          	lw	ra,28(sp)
    3ee4:	01812403          	lw	s0,24(sp)
    3ee8:	01412483          	lw	s1,20(sp)
    3eec:	01012903          	lw	s2,16(sp)
    3ef0:	00c12983          	lw	s3,12(sp)
    3ef4:	00812a03          	lw	s4,8(sp)
    3ef8:	00412a83          	lw	s5,4(sp)
    3efc:	00012b03          	lw	s6,0(sp)
    3f00:	00000513          	li	a0,0
    3f04:	02010113          	addi	sp,sp,32
    3f08:	00008067          	ret
    3f0c:	00000513          	li	a0,0
    3f10:	00008067          	ret

00003f14 <fatfs_list_directory_next>:
    3f14:	ec010113          	addi	sp,sp,-320
    3f18:	13212823          	sw	s2,304(sp)
    3f1c:	13312623          	sw	s3,300(sp)
    3f20:	13412423          	sw	s4,296(sp)
    3f24:	13512223          	sw	s5,292(sp)
    3f28:	12112e23          	sw	ra,316(sp)
    3f2c:	12812c23          	sw	s0,312(sp)
    3f30:	12912a23          	sw	s1,308(sp)
    3f34:	00050a13          	mv	s4,a0
    3f38:	00058913          	mv	s2,a1
    3f3c:	00060993          	mv	s3,a2
    3f40:	10010ea3          	sb	zero,285(sp)
    3f44:	00f00a93          	li	s5,15
    3f48:	00092603          	lw	a2,0(s2)
    3f4c:	00492583          	lw	a1,4(s2)
    3f50:	00000693          	li	a3,0
    3f54:	000a0513          	mv	a0,s4
    3f58:	fffff097          	auipc	ra,0xfffff
    3f5c:	5a4080e7          	jalr	1444(ra) # 34fc <fatfs_sector_reader>
    3f60:	12050063          	beqz	a0,4080 <fatfs_list_directory_next+0x16c>
    3f64:	00894483          	lbu	s1,8(s2)
    3f68:	00549413          	slli	s0,s1,0x5
    3f6c:	04440413          	addi	s0,s0,68
    3f70:	008a0433          	add	s0,s4,s0
    3f74:	009afc63          	bgeu	s5,s1,3f8c <fatfs_list_directory_next+0x78>
    3f78:	00092783          	lw	a5,0(s2)
    3f7c:	00090423          	sb	zero,8(s2)
    3f80:	00178793          	addi	a5,a5,1
    3f84:	00f92023          	sw	a5,0(s2)
    3f88:	fc1ff06f          	j	3f48 <fatfs_list_directory_next+0x34>
    3f8c:	00040513          	mv	a0,s0
    3f90:	ffffe097          	auipc	ra,0xffffe
    3f94:	df0080e7          	jalr	-528(ra) # 1d80 <fatfs_entry_lfn_text>
    3f98:	02050263          	beqz	a0,3fbc <fatfs_list_directory_next+0xa8>
    3f9c:	00040593          	mv	a1,s0
    3fa0:	01810513          	addi	a0,sp,24
    3fa4:	ffffe097          	auipc	ra,0xffffe
    3fa8:	cd4080e7          	jalr	-812(ra) # 1c78 <fatfs_lfn_cache_entry>
    3fac:	00148493          	addi	s1,s1,1
    3fb0:	0ff4f493          	zext.b	s1,s1
    3fb4:	02040413          	addi	s0,s0,32
    3fb8:	fbdff06f          	j	3f74 <fatfs_list_directory_next+0x60>
    3fbc:	00040513          	mv	a0,s0
    3fc0:	ffffe097          	auipc	ra,0xffffe
    3fc4:	dd4080e7          	jalr	-556(ra) # 1d94 <fatfs_entry_lfn_invalid>
    3fc8:	00050663          	beqz	a0,3fd4 <fatfs_list_directory_next+0xc0>
    3fcc:	10010ea3          	sb	zero,285(sp)
    3fd0:	fddff06f          	j	3fac <fatfs_list_directory_next+0x98>
    3fd4:	00040593          	mv	a1,s0
    3fd8:	01810513          	addi	a0,sp,24
    3fdc:	ffffe097          	auipc	ra,0xffffe
    3fe0:	df0080e7          	jalr	-528(ra) # 1dcc <fatfs_entry_lfn_exists>
    3fe4:	0c050063          	beqz	a0,40a4 <fatfs_list_directory_next+0x190>
    3fe8:	01810513          	addi	a0,sp,24
    3fec:	ffffe097          	auipc	ra,0xffffe
    3ff0:	d58080e7          	jalr	-680(ra) # 1d44 <fatfs_lfn_cache_get>
    3ff4:	00050593          	mv	a1,a0
    3ff8:	10300613          	li	a2,259
    3ffc:	00098513          	mv	a0,s3
    4000:	ffffd097          	auipc	ra,0xffffd
    4004:	a4c080e7          	jalr	-1460(ra) # a4c <strncpy>
    4008:	00040513          	mv	a0,s0
    400c:	ffffe097          	auipc	ra,0xffffe
    4010:	e44080e7          	jalr	-444(ra) # 1e50 <fatfs_entry_is_dir>
    4014:	00a03533          	snez	a0,a0
    4018:	10a98223          	sb	a0,260(s3)
    401c:	01d44783          	lbu	a5,29(s0)
    4020:	01c44703          	lbu	a4,28(s0)
    4024:	00148493          	addi	s1,s1,1
    4028:	00879793          	slli	a5,a5,0x8
    402c:	00e7e7b3          	or	a5,a5,a4
    4030:	01e44703          	lbu	a4,30(s0)
    4034:	00100513          	li	a0,1
    4038:	01071713          	slli	a4,a4,0x10
    403c:	00f76733          	or	a4,a4,a5
    4040:	01f44783          	lbu	a5,31(s0)
    4044:	01879793          	slli	a5,a5,0x18
    4048:	00e7e7b3          	or	a5,a5,a4
    404c:	10f9a623          	sw	a5,268(s3)
    4050:	01544783          	lbu	a5,21(s0)
    4054:	01444703          	lbu	a4,20(s0)
    4058:	01a44683          	lbu	a3,26(s0)
    405c:	00879793          	slli	a5,a5,0x8
    4060:	00e7e7b3          	or	a5,a5,a4
    4064:	01b44703          	lbu	a4,27(s0)
    4068:	01079793          	slli	a5,a5,0x10
    406c:	00871713          	slli	a4,a4,0x8
    4070:	00d76733          	or	a4,a4,a3
    4074:	00e7e7b3          	or	a5,a5,a4
    4078:	10f9a423          	sw	a5,264(s3)
    407c:	00990423          	sb	s1,8(s2)
    4080:	13c12083          	lw	ra,316(sp)
    4084:	13812403          	lw	s0,312(sp)
    4088:	13412483          	lw	s1,308(sp)
    408c:	13012903          	lw	s2,304(sp)
    4090:	12c12983          	lw	s3,300(sp)
    4094:	12812a03          	lw	s4,296(sp)
    4098:	12412a83          	lw	s5,292(sp)
    409c:	14010113          	addi	sp,sp,320
    40a0:	00008067          	ret
    40a4:	00040513          	mv	a0,s0
    40a8:	ffffe097          	auipc	ra,0xffffe
    40ac:	d6c080e7          	jalr	-660(ra) # 1e14 <fatfs_entry_sfn_only>
    40b0:	ee050ee3          	beqz	a0,3fac <fatfs_list_directory_next+0x98>
    40b4:	00d00613          	li	a2,13
    40b8:	00000593          	li	a1,0
    40bc:	00810513          	addi	a0,sp,8
    40c0:	10010ea3          	sb	zero,285(sp)
    40c4:	ffffd097          	auipc	ra,0xffffd
    40c8:	8e8080e7          	jalr	-1816(ra) # 9ac <memset>
    40cc:	00000793          	li	a5,0
    40d0:	00800713          	li	a4,8
    40d4:	00f40633          	add	a2,s0,a5
    40d8:	00064603          	lbu	a2,0(a2)
    40dc:	00810693          	addi	a3,sp,8
    40e0:	00f686b3          	add	a3,a3,a5
    40e4:	00c68023          	sb	a2,0(a3)
    40e8:	00178793          	addi	a5,a5,1
    40ec:	fee794e3          	bne	a5,a4,40d4 <fatfs_list_directory_next+0x1c0>
    40f0:	00844783          	lbu	a5,8(s0)
    40f4:	00944683          	lbu	a3,9(s0)
    40f8:	02000613          	li	a2,32
    40fc:	00f108a3          	sb	a5,17(sp)
    4100:	00d10923          	sb	a3,18(sp)
    4104:	00100713          	li	a4,1
    4108:	00c69663          	bne	a3,a2,4114 <fatfs_list_directory_next+0x200>
    410c:	fe078793          	addi	a5,a5,-32
    4110:	00f03733          	snez	a4,a5
    4114:	00a44783          	lbu	a5,10(s0)
    4118:	02000693          	li	a3,32
    411c:	00f109a3          	sb	a5,19(sp)
    4120:	00d79463          	bne	a5,a3,4128 <fatfs_list_directory_next+0x214>
    4124:	00070c63          	beqz	a4,413c <fatfs_list_directory_next+0x228>
    4128:	00814683          	lbu	a3,8(sp)
    412c:	02e00713          	li	a4,46
    4130:	02000793          	li	a5,32
    4134:	00e68463          	beq	a3,a4,413c <fatfs_list_directory_next+0x228>
    4138:	02e00793          	li	a5,46
    413c:	00810593          	addi	a1,sp,8
    4140:	00098513          	mv	a0,s3
    4144:	00f10823          	sb	a5,16(sp)
    4148:	ffffe097          	auipc	ra,0xffffe
    414c:	690080e7          	jalr	1680(ra) # 27d8 <fatfs_get_sfn_display_name>
    4150:	eb9ff06f          	j	4008 <fatfs_list_directory_next+0xf4>

00004154 <fl_readdir>:
    4154:	000067b7          	lui	a5,0x6
    4158:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    415c:	fe010113          	addi	sp,sp,-32
    4160:	00912a23          	sw	s1,20(sp)
    4164:	01212823          	sw	s2,16(sp)
    4168:	00112e23          	sw	ra,28(sp)
    416c:	00812c23          	sw	s0,24(sp)
    4170:	01312623          	sw	s3,12(sp)
    4174:	00050493          	mv	s1,a0
    4178:	00058913          	mv	s2,a1
    417c:	00079663          	bnez	a5,4188 <fl_readdir+0x34>
    4180:	ffffd097          	auipc	ra,0xffffd
    4184:	7f0080e7          	jalr	2032(ra) # 1970 <fl_init>
    4188:	0000a437          	lui	s0,0xa
    418c:	65040793          	addi	a5,s0,1616 # a650 <_fs>
    4190:	03c7a783          	lw	a5,60(a5)
    4194:	65040993          	addi	s3,s0,1616
    4198:	00078463          	beqz	a5,41a0 <fl_readdir+0x4c>
    419c:	000780e7          	jalr	a5
    41a0:	65040513          	addi	a0,s0,1616
    41a4:	00090613          	mv	a2,s2
    41a8:	00048593          	mv	a1,s1
    41ac:	00000097          	auipc	ra,0x0
    41b0:	d68080e7          	jalr	-664(ra) # 3f14 <fatfs_list_directory_next>
    41b4:	0409a783          	lw	a5,64(s3)
    41b8:	00050413          	mv	s0,a0
    41bc:	00078463          	beqz	a5,41c4 <fl_readdir+0x70>
    41c0:	000780e7          	jalr	a5
    41c4:	01c12083          	lw	ra,28(sp)
    41c8:	00143513          	seqz	a0,s0
    41cc:	01812403          	lw	s0,24(sp)
    41d0:	01412483          	lw	s1,20(sp)
    41d4:	01012903          	lw	s2,16(sp)
    41d8:	00c12983          	lw	s3,12(sp)
    41dc:	40a00533          	neg	a0,a0
    41e0:	02010113          	addi	sp,sp,32
    41e4:	00008067          	ret

000041e8 <fl_listdirectory>:
    41e8:	000067b7          	lui	a5,0x6
    41ec:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    41f0:	ed010113          	addi	sp,sp,-304
    41f4:	12912223          	sw	s1,292(sp)
    41f8:	12112623          	sw	ra,300(sp)
    41fc:	12812423          	sw	s0,296(sp)
    4200:	13212023          	sw	s2,288(sp)
    4204:	00050493          	mv	s1,a0
    4208:	00079663          	bnez	a5,4214 <fl_listdirectory+0x2c>
    420c:	ffffd097          	auipc	ra,0xffffd
    4210:	764080e7          	jalr	1892(ra) # 1970 <fl_init>
    4214:	0000a7b7          	lui	a5,0xa
    4218:	65078713          	addi	a4,a5,1616 # a650 <_fs>
    421c:	03c72703          	lw	a4,60(a4)
    4220:	65078413          	addi	s0,a5,1616
    4224:	00070463          	beqz	a4,422c <fl_listdirectory+0x44>
    4228:	000700e7          	jalr	a4
    422c:	00006537          	lui	a0,0x6
    4230:	00048593          	mv	a1,s1
    4234:	1b450513          	addi	a0,a0,436 # 61b4 <font+0x38c>
    4238:	ffffd097          	auipc	ra,0xffffd
    423c:	e68080e7          	jalr	-408(ra) # 10a0 <printf>
    4240:	00410593          	addi	a1,sp,4
    4244:	00048513          	mv	a0,s1
    4248:	fffff097          	auipc	ra,0xfffff
    424c:	6e4080e7          	jalr	1764(ra) # 392c <fl_opendir>
    4250:	02050063          	beqz	a0,4270 <fl_listdirectory+0x88>
    4254:	000064b7          	lui	s1,0x6
    4258:	00006937          	lui	s2,0x6
    425c:	01010593          	addi	a1,sp,16
    4260:	00410513          	addi	a0,sp,4
    4264:	00000097          	auipc	ra,0x0
    4268:	ef0080e7          	jalr	-272(ra) # 4154 <fl_readdir>
    426c:	02050263          	beqz	a0,4290 <fl_listdirectory+0xa8>
    4270:	04042783          	lw	a5,64(s0)
    4274:	04078863          	beqz	a5,42c4 <fl_listdirectory+0xdc>
    4278:	12812403          	lw	s0,296(sp)
    427c:	12c12083          	lw	ra,300(sp)
    4280:	12412483          	lw	s1,292(sp)
    4284:	12012903          	lw	s2,288(sp)
    4288:	13010113          	addi	sp,sp,304
    428c:	00078067          	jr	a5
    4290:	11414783          	lbu	a5,276(sp)
    4294:	00078c63          	beqz	a5,42ac <fl_listdirectory+0xc4>
    4298:	01010593          	addi	a1,sp,16
    429c:	1c890513          	addi	a0,s2,456 # 61c8 <font+0x3a0>
    42a0:	ffffd097          	auipc	ra,0xffffd
    42a4:	e00080e7          	jalr	-512(ra) # 10a0 <printf>
    42a8:	fb5ff06f          	j	425c <fl_listdirectory+0x74>
    42ac:	11c12603          	lw	a2,284(sp)
    42b0:	01010593          	addi	a1,sp,16
    42b4:	1d448513          	addi	a0,s1,468 # 61d4 <font+0x3ac>
    42b8:	ffffd097          	auipc	ra,0xffffd
    42bc:	de8080e7          	jalr	-536(ra) # 10a0 <printf>
    42c0:	f9dff06f          	j	425c <fl_listdirectory+0x74>
    42c4:	12c12083          	lw	ra,300(sp)
    42c8:	12812403          	lw	s0,296(sp)
    42cc:	12412483          	lw	s1,292(sp)
    42d0:	12012903          	lw	s2,288(sp)
    42d4:	13010113          	addi	sp,sp,304
    42d8:	00008067          	ret

000042dc <_read_sectors>:
    42dc:	fd010113          	addi	sp,sp,-48
    42e0:	01612823          	sw	s6,16(sp)
    42e4:	0000ab37          	lui	s6,0xa
    42e8:	01512a23          	sw	s5,20(sp)
    42ec:	650b4a83          	lbu	s5,1616(s6) # a650 <_fs>
    42f0:	01412c23          	sw	s4,24(sp)
    42f4:	00058a13          	mv	s4,a1
    42f8:	02912223          	sw	s1,36(sp)
    42fc:	000a8593          	mv	a1,s5
    4300:	00050493          	mv	s1,a0
    4304:	000a0513          	mv	a0,s4
    4308:	02112623          	sw	ra,44(sp)
    430c:	02812423          	sw	s0,40(sp)
    4310:	03212023          	sw	s2,32(sp)
    4314:	00068413          	mv	s0,a3
    4318:	01712623          	sw	s7,12(sp)
    431c:	01812423          	sw	s8,8(sp)
    4320:	01312e23          	sw	s3,28(sp)
    4324:	00060c13          	mv	s8,a2
    4328:	ffffc097          	auipc	ra,0xffffc
    432c:	5b0080e7          	jalr	1456(ra) # 8d8 <__udivsi3>
    4330:	00050913          	mv	s2,a0
    4334:	000a8593          	mv	a1,s5
    4338:	000a0513          	mv	a0,s4
    433c:	ffffc097          	auipc	ra,0xffffc
    4340:	5e4080e7          	jalr	1508(ra) # 920 <__umodsi3>
    4344:	00a407b3          	add	a5,s0,a0
    4348:	00050b93          	mv	s7,a0
    434c:	00fafe63          	bgeu	s5,a5,4368 <_read_sectors+0x8c>
    4350:	00090593          	mv	a1,s2
    4354:	000a8513          	mv	a0,s5
    4358:	ffffd097          	auipc	ra,0xffffd
    435c:	e84080e7          	jalr	-380(ra) # 11dc <__mulsi3>
    4360:	414a87b3          	sub	a5,s5,s4
    4364:	00f50433          	add	s0,a0,a5
    4368:	2284a983          	lw	s3,552(s1)
    436c:	01299c63          	bne	s3,s2,4384 <_read_sectors+0xa8>
    4370:	22c4a583          	lw	a1,556(s1)
    4374:	fff00793          	li	a5,-1
    4378:	02f59863          	bne	a1,a5,43a8 <_read_sectors+0xcc>
    437c:	00000413          	li	s0,0
    4380:	0500006f          	j	43d0 <_read_sectors+0xf4>
    4384:	095a6063          	bltu	s4,s5,4404 <_read_sectors+0x128>
    4388:	00198793          	addi	a5,s3,1
    438c:	07279c63          	bne	a5,s2,4404 <_read_sectors+0x128>
    4390:	22c4a583          	lw	a1,556(s1)
    4394:	0729ee63          	bltu	s3,s2,4410 <_read_sectors+0x134>
    4398:	fff00793          	li	a5,-1
    439c:	fef580e3          	beq	a1,a5,437c <_read_sectors+0xa0>
    43a0:	22b4a623          	sw	a1,556(s1)
    43a4:	2324a423          	sw	s2,552(s1)
    43a8:	650b0513          	addi	a0,s6,1616
    43ac:	ffffd097          	auipc	ra,0xffffd
    43b0:	308080e7          	jalr	776(ra) # 16b4 <fatfs_lba_of_cluster>
    43b4:	017505b3          	add	a1,a0,s7
    43b8:	00040693          	mv	a3,s0
    43bc:	000c0613          	mv	a2,s8
    43c0:	650b0513          	addi	a0,s6,1616
    43c4:	ffffd097          	auipc	ra,0xffffd
    43c8:	340080e7          	jalr	832(ra) # 1704 <fatfs_sector_read>
    43cc:	fa0508e3          	beqz	a0,437c <_read_sectors+0xa0>
    43d0:	02c12083          	lw	ra,44(sp)
    43d4:	00040513          	mv	a0,s0
    43d8:	02812403          	lw	s0,40(sp)
    43dc:	02412483          	lw	s1,36(sp)
    43e0:	02012903          	lw	s2,32(sp)
    43e4:	01c12983          	lw	s3,28(sp)
    43e8:	01812a03          	lw	s4,24(sp)
    43ec:	01412a83          	lw	s5,20(sp)
    43f0:	01012b03          	lw	s6,16(sp)
    43f4:	00c12b83          	lw	s7,12(sp)
    43f8:	00812c03          	lw	s8,8(sp)
    43fc:	03010113          	addi	sp,sp,48
    4400:	00008067          	ret
    4404:	0044a583          	lw	a1,4(s1)
    4408:	00000993          	li	s3,0
    440c:	f89ff06f          	j	4394 <_read_sectors+0xb8>
    4410:	650b0513          	addi	a0,s6,1616
    4414:	fffff097          	auipc	ra,0xfffff
    4418:	fd8080e7          	jalr	-40(ra) # 33ec <fatfs_find_next_cluster>
    441c:	00050593          	mv	a1,a0
    4420:	00198993          	addi	s3,s3,1
    4424:	f71ff06f          	j	4394 <_read_sectors+0xb8>

00004428 <fatfs_set_fs_info_next_free_cluster>:
    4428:	03052783          	lw	a5,48(a0)
    442c:	0a078863          	beqz	a5,44dc <fatfs_set_fs_info_next_free_cluster+0xb4>
    4430:	ff010113          	addi	sp,sp,-16
    4434:	01c52783          	lw	a5,28(a0)
    4438:	01212023          	sw	s2,0(sp)
    443c:	00058913          	mv	s2,a1
    4440:	01855583          	lhu	a1,24(a0)
    4444:	00812423          	sw	s0,8(sp)
    4448:	00912223          	sw	s1,4(sp)
    444c:	00f585b3          	add	a1,a1,a5
    4450:	00112623          	sw	ra,12(sp)
    4454:	00050493          	mv	s1,a0
    4458:	ffffd097          	auipc	ra,0xffffd
    445c:	f3c080e7          	jalr	-196(ra) # 1394 <fatfs_fat_read_sector>
    4460:	00050413          	mv	s0,a0
    4464:	06050063          	beqz	a0,44c4 <fatfs_set_fs_info_next_free_cluster+0x9c>
    4468:	20852783          	lw	a5,520(a0)
    446c:	00895713          	srli	a4,s2,0x8
    4470:	1f278623          	sb	s2,492(a5)
    4474:	20852783          	lw	a5,520(a0)
    4478:	1ee786a3          	sb	a4,493(a5)
    447c:	20852783          	lw	a5,520(a0)
    4480:	01095713          	srli	a4,s2,0x10
    4484:	1ee78723          	sb	a4,494(a5)
    4488:	20852783          	lw	a5,520(a0)
    448c:	01895713          	srli	a4,s2,0x18
    4490:	1ee787a3          	sb	a4,495(a5)
    4494:	00100793          	li	a5,1
    4498:	20f52223          	sw	a5,516(a0)
    449c:	0384a783          	lw	a5,56(s1)
    44a0:	0324a223          	sw	s2,36(s1)
    44a4:	00078a63          	beqz	a5,44b8 <fatfs_set_fs_info_next_free_cluster+0x90>
    44a8:	00050593          	mv	a1,a0
    44ac:	20052503          	lw	a0,512(a0)
    44b0:	00100613          	li	a2,1
    44b4:	000780e7          	jalr	a5
    44b8:	fff00793          	li	a5,-1
    44bc:	20f42023          	sw	a5,512(s0)
    44c0:	20042223          	sw	zero,516(s0)
    44c4:	00c12083          	lw	ra,12(sp)
    44c8:	00812403          	lw	s0,8(sp)
    44cc:	00412483          	lw	s1,4(sp)
    44d0:	00012903          	lw	s2,0(sp)
    44d4:	01010113          	addi	sp,sp,16
    44d8:	00008067          	ret
    44dc:	00008067          	ret

000044e0 <fatfs_find_blank_cluster>:
    44e0:	fe010113          	addi	sp,sp,-32
    44e4:	01312623          	sw	s3,12(sp)
    44e8:	01512223          	sw	s5,4(sp)
    44ec:	000109b7          	lui	s3,0x10
    44f0:	10000ab7          	lui	s5,0x10000
    44f4:	00912a23          	sw	s1,20(sp)
    44f8:	01212823          	sw	s2,16(sp)
    44fc:	01412423          	sw	s4,8(sp)
    4500:	00112e23          	sw	ra,28(sp)
    4504:	00812c23          	sw	s0,24(sp)
    4508:	00050913          	mv	s2,a0
    450c:	00058493          	mv	s1,a1
    4510:	00060a13          	mv	s4,a2
    4514:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x5547>
    4518:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    451c:	03092783          	lw	a5,48(s2)
    4520:	0074d413          	srli	s0,s1,0x7
    4524:	00079463          	bnez	a5,452c <fatfs_find_blank_cluster+0x4c>
    4528:	0084d413          	srli	s0,s1,0x8
    452c:	02092783          	lw	a5,32(s2)
    4530:	08f47e63          	bgeu	s0,a5,45cc <fatfs_find_blank_cluster+0xec>
    4534:	01492583          	lw	a1,20(s2)
    4538:	00090513          	mv	a0,s2
    453c:	00b405b3          	add	a1,s0,a1
    4540:	ffffd097          	auipc	ra,0xffffd
    4544:	e54080e7          	jalr	-428(ra) # 1394 <fatfs_fat_read_sector>
    4548:	08050263          	beqz	a0,45cc <fatfs_find_blank_cluster+0xec>
    454c:	03092783          	lw	a5,48(s2)
    4550:	20852703          	lw	a4,520(a0)
    4554:	02079a63          	bnez	a5,4588 <fatfs_find_blank_cluster+0xa8>
    4558:	00841413          	slli	s0,s0,0x8
    455c:	40848433          	sub	s0,s1,s0
    4560:	00141413          	slli	s0,s0,0x1
    4564:	01347433          	and	s0,s0,s3
    4568:	00870733          	add	a4,a4,s0
    456c:	00174783          	lbu	a5,1(a4)
    4570:	00074703          	lbu	a4,0(a4)
    4574:	00879793          	slli	a5,a5,0x8
    4578:	00e787b3          	add	a5,a5,a4
    457c:	06078c63          	beqz	a5,45f4 <fatfs_find_blank_cluster+0x114>
    4580:	00148493          	addi	s1,s1,1
    4584:	f99ff06f          	j	451c <fatfs_find_blank_cluster+0x3c>
    4588:	00741413          	slli	s0,s0,0x7
    458c:	40848433          	sub	s0,s1,s0
    4590:	00241413          	slli	s0,s0,0x2
    4594:	01347433          	and	s0,s0,s3
    4598:	00870733          	add	a4,a4,s0
    459c:	00374783          	lbu	a5,3(a4)
    45a0:	00274683          	lbu	a3,2(a4)
    45a4:	01879793          	slli	a5,a5,0x18
    45a8:	01069693          	slli	a3,a3,0x10
    45ac:	00d787b3          	add	a5,a5,a3
    45b0:	00074683          	lbu	a3,0(a4)
    45b4:	00174703          	lbu	a4,1(a4)
    45b8:	00d787b3          	add	a5,a5,a3
    45bc:	00871713          	slli	a4,a4,0x8
    45c0:	00e787b3          	add	a5,a5,a4
    45c4:	0157f7b3          	and	a5,a5,s5
    45c8:	fb5ff06f          	j	457c <fatfs_find_blank_cluster+0x9c>
    45cc:	00000513          	li	a0,0
    45d0:	01c12083          	lw	ra,28(sp)
    45d4:	01812403          	lw	s0,24(sp)
    45d8:	01412483          	lw	s1,20(sp)
    45dc:	01012903          	lw	s2,16(sp)
    45e0:	00c12983          	lw	s3,12(sp)
    45e4:	00812a03          	lw	s4,8(sp)
    45e8:	00412a83          	lw	s5,4(sp)
    45ec:	02010113          	addi	sp,sp,32
    45f0:	00008067          	ret
    45f4:	009a2023          	sw	s1,0(s4)
    45f8:	00100513          	li	a0,1
    45fc:	fd5ff06f          	j	45d0 <fatfs_find_blank_cluster+0xf0>

00004600 <fatfs_fat_set_cluster>:
    4600:	03052783          	lw	a5,48(a0)
    4604:	fe010113          	addi	sp,sp,-32
    4608:	00812c23          	sw	s0,24(sp)
    460c:	00912a23          	sw	s1,20(sp)
    4610:	01212823          	sw	s2,16(sp)
    4614:	01312623          	sw	s3,12(sp)
    4618:	00112e23          	sw	ra,28(sp)
    461c:	00050993          	mv	s3,a0
    4620:	00058413          	mv	s0,a1
    4624:	00060493          	mv	s1,a2
    4628:	0085d913          	srli	s2,a1,0x8
    462c:	00078463          	beqz	a5,4634 <fatfs_fat_set_cluster+0x34>
    4630:	0075d913          	srli	s2,a1,0x7
    4634:	0149a583          	lw	a1,20(s3)
    4638:	00098513          	mv	a0,s3
    463c:	00b905b3          	add	a1,s2,a1
    4640:	ffffd097          	auipc	ra,0xffffd
    4644:	d54080e7          	jalr	-684(ra) # 1394 <fatfs_fat_read_sector>
    4648:	00050793          	mv	a5,a0
    464c:	00000513          	li	a0,0
    4650:	04078c63          	beqz	a5,46a8 <fatfs_fat_set_cluster+0xa8>
    4654:	0309a683          	lw	a3,48(s3)
    4658:	2087a703          	lw	a4,520(a5)
    465c:	0ff4f613          	zext.b	a2,s1
    4660:	06069263          	bnez	a3,46c4 <fatfs_fat_set_cluster+0xc4>
    4664:	00891913          	slli	s2,s2,0x8
    4668:	41240433          	sub	s0,s0,s2
    466c:	000106b7          	lui	a3,0x10
    4670:	00141413          	slli	s0,s0,0x1
    4674:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x5547>
    4678:	00d47433          	and	s0,s0,a3
    467c:	00870733          	add	a4,a4,s0
    4680:	00c70023          	sb	a2,0(a4)
    4684:	2087a703          	lw	a4,520(a5)
    4688:	01049493          	slli	s1,s1,0x10
    468c:	0104d493          	srli	s1,s1,0x10
    4690:	00870733          	add	a4,a4,s0
    4694:	0084d493          	srli	s1,s1,0x8
    4698:	009700a3          	sb	s1,1(a4)
    469c:	00100713          	li	a4,1
    46a0:	20e7a223          	sw	a4,516(a5)
    46a4:	00100513          	li	a0,1
    46a8:	01c12083          	lw	ra,28(sp)
    46ac:	01812403          	lw	s0,24(sp)
    46b0:	01412483          	lw	s1,20(sp)
    46b4:	01012903          	lw	s2,16(sp)
    46b8:	00c12983          	lw	s3,12(sp)
    46bc:	02010113          	addi	sp,sp,32
    46c0:	00008067          	ret
    46c4:	00791913          	slli	s2,s2,0x7
    46c8:	41240433          	sub	s0,s0,s2
    46cc:	000106b7          	lui	a3,0x10
    46d0:	fff68693          	addi	a3,a3,-1 # ffff <_files+0x5547>
    46d4:	00241413          	slli	s0,s0,0x2
    46d8:	00d47433          	and	s0,s0,a3
    46dc:	00870733          	add	a4,a4,s0
    46e0:	00c70023          	sb	a2,0(a4)
    46e4:	2087a703          	lw	a4,520(a5)
    46e8:	0084d693          	srli	a3,s1,0x8
    46ec:	00870733          	add	a4,a4,s0
    46f0:	00d700a3          	sb	a3,1(a4)
    46f4:	2087a703          	lw	a4,520(a5)
    46f8:	0104d693          	srli	a3,s1,0x10
    46fc:	0184d493          	srli	s1,s1,0x18
    4700:	00870733          	add	a4,a4,s0
    4704:	00d70123          	sb	a3,2(a4)
    4708:	2087a703          	lw	a4,520(a5)
    470c:	00870733          	add	a4,a4,s0
    4710:	009701a3          	sb	s1,3(a4)
    4714:	f89ff06f          	j	469c <fatfs_fat_set_cluster+0x9c>

00004718 <fatfs_free_cluster_chain>:
    4718:	fe010113          	addi	sp,sp,-32
    471c:	00812c23          	sw	s0,24(sp)
    4720:	01212823          	sw	s2,16(sp)
    4724:	00112e23          	sw	ra,28(sp)
    4728:	00912a23          	sw	s1,20(sp)
    472c:	00050413          	mv	s0,a0
    4730:	ffd00913          	li	s2,-3
    4734:	fff58793          	addi	a5,a1,-1
    4738:	02f97063          	bgeu	s2,a5,4758 <fatfs_free_cluster_chain+0x40>
    473c:	01c12083          	lw	ra,28(sp)
    4740:	01812403          	lw	s0,24(sp)
    4744:	01412483          	lw	s1,20(sp)
    4748:	01012903          	lw	s2,16(sp)
    474c:	00100513          	li	a0,1
    4750:	02010113          	addi	sp,sp,32
    4754:	00008067          	ret
    4758:	00040513          	mv	a0,s0
    475c:	00b12623          	sw	a1,12(sp)
    4760:	fffff097          	auipc	ra,0xfffff
    4764:	c8c080e7          	jalr	-884(ra) # 33ec <fatfs_find_next_cluster>
    4768:	00c12583          	lw	a1,12(sp)
    476c:	00050493          	mv	s1,a0
    4770:	00000613          	li	a2,0
    4774:	00040513          	mv	a0,s0
    4778:	00000097          	auipc	ra,0x0
    477c:	e88080e7          	jalr	-376(ra) # 4600 <fatfs_fat_set_cluster>
    4780:	00048593          	mv	a1,s1
    4784:	fb1ff06f          	j	4734 <fatfs_free_cluster_chain+0x1c>

00004788 <fatfs_fat_add_cluster_to_chain>:
    4788:	fff00793          	li	a5,-1
    478c:	02f59463          	bne	a1,a5,47b4 <fatfs_fat_add_cluster_to_chain+0x2c>
    4790:	00000513          	li	a0,0
    4794:	00008067          	ret
    4798:	00000513          	li	a0,0
    479c:	01c12083          	lw	ra,28(sp)
    47a0:	01812403          	lw	s0,24(sp)
    47a4:	01412483          	lw	s1,20(sp)
    47a8:	01012903          	lw	s2,16(sp)
    47ac:	02010113          	addi	sp,sp,32
    47b0:	00008067          	ret
    47b4:	fe010113          	addi	sp,sp,-32
    47b8:	00812c23          	sw	s0,24(sp)
    47bc:	00912a23          	sw	s1,20(sp)
    47c0:	01212823          	sw	s2,16(sp)
    47c4:	00050413          	mv	s0,a0
    47c8:	00112e23          	sw	ra,28(sp)
    47cc:	00058513          	mv	a0,a1
    47d0:	00060493          	mv	s1,a2
    47d4:	fff00913          	li	s2,-1
    47d8:	00050593          	mv	a1,a0
    47dc:	00a12623          	sw	a0,12(sp)
    47e0:	00040513          	mv	a0,s0
    47e4:	fffff097          	auipc	ra,0xfffff
    47e8:	c08080e7          	jalr	-1016(ra) # 33ec <fatfs_find_next_cluster>
    47ec:	fa0506e3          	beqz	a0,4798 <fatfs_fat_add_cluster_to_chain+0x10>
    47f0:	00c12583          	lw	a1,12(sp)
    47f4:	ff2512e3          	bne	a0,s2,47d8 <fatfs_fat_add_cluster_to_chain+0x50>
    47f8:	00048613          	mv	a2,s1
    47fc:	00040513          	mv	a0,s0
    4800:	00000097          	auipc	ra,0x0
    4804:	e00080e7          	jalr	-512(ra) # 4600 <fatfs_fat_set_cluster>
    4808:	fff00613          	li	a2,-1
    480c:	00048593          	mv	a1,s1
    4810:	00040513          	mv	a0,s0
    4814:	00000097          	auipc	ra,0x0
    4818:	dec080e7          	jalr	-532(ra) # 4600 <fatfs_fat_set_cluster>
    481c:	00100513          	li	a0,1
    4820:	f7dff06f          	j	479c <fatfs_fat_add_cluster_to_chain+0x14>

00004824 <fatfs_count_free_clusters>:
    4824:	fe010113          	addi	sp,sp,-32
    4828:	00812c23          	sw	s0,24(sp)
    482c:	00912a23          	sw	s1,20(sp)
    4830:	01212823          	sw	s2,16(sp)
    4834:	01312623          	sw	s3,12(sp)
    4838:	00112e23          	sw	ra,28(sp)
    483c:	00050413          	mv	s0,a0
    4840:	00000493          	li	s1,0
    4844:	00000913          	li	s2,0
    4848:	1ff00993          	li	s3,511
    484c:	02042783          	lw	a5,32(s0)
    4850:	02f96263          	bltu	s2,a5,4874 <fatfs_count_free_clusters+0x50>
    4854:	01c12083          	lw	ra,28(sp)
    4858:	01812403          	lw	s0,24(sp)
    485c:	01012903          	lw	s2,16(sp)
    4860:	00c12983          	lw	s3,12(sp)
    4864:	00048513          	mv	a0,s1
    4868:	01412483          	lw	s1,20(sp)
    486c:	02010113          	addi	sp,sp,32
    4870:	00008067          	ret
    4874:	01442583          	lw	a1,20(s0)
    4878:	00040513          	mv	a0,s0
    487c:	00b905b3          	add	a1,s2,a1
    4880:	ffffd097          	auipc	ra,0xffffd
    4884:	b14080e7          	jalr	-1260(ra) # 1394 <fatfs_fat_read_sector>
    4888:	fc0506e3          	beqz	a0,4854 <fatfs_count_free_clusters+0x30>
    488c:	03042803          	lw	a6,48(s0)
    4890:	20852583          	lw	a1,520(a0)
    4894:	00000713          	li	a4,0
    4898:	00e587b3          	add	a5,a1,a4
    489c:	0017c683          	lbu	a3,1(a5)
    48a0:	0007c503          	lbu	a0,0(a5)
    48a4:	00270613          	addi	a2,a4,2
    48a8:	00869693          	slli	a3,a3,0x8
    48ac:	02081063          	bnez	a6,48cc <fatfs_count_free_clusters+0xa8>
    48b0:	00a686b3          	add	a3,a3,a0
    48b4:	00069463          	bnez	a3,48bc <fatfs_count_free_clusters+0x98>
    48b8:	00148493          	addi	s1,s1,1
    48bc:	00060713          	mv	a4,a2
    48c0:	fce9fce3          	bgeu	s3,a4,4898 <fatfs_count_free_clusters+0x74>
    48c4:	00190913          	addi	s2,s2,1
    48c8:	f85ff06f          	j	484c <fatfs_count_free_clusters+0x28>
    48cc:	00c58633          	add	a2,a1,a2
    48d0:	0037c783          	lbu	a5,3(a5)
    48d4:	00064603          	lbu	a2,0(a2)
    48d8:	01879793          	slli	a5,a5,0x18
    48dc:	01061613          	slli	a2,a2,0x10
    48e0:	00c787b3          	add	a5,a5,a2
    48e4:	00a787b3          	add	a5,a5,a0
    48e8:	00d787b3          	add	a5,a5,a3
    48ec:	00079463          	bnez	a5,48f4 <fatfs_count_free_clusters+0xd0>
    48f0:	00148493          	addi	s1,s1,1
    48f4:	00470713          	addi	a4,a4,4
    48f8:	fc9ff06f          	j	48c0 <fatfs_count_free_clusters+0x9c>

000048fc <fatfs_add_free_space>:
    48fc:	02452703          	lw	a4,36(a0)
    4900:	fd010113          	addi	sp,sp,-48
    4904:	02812423          	sw	s0,40(sp)
    4908:	03212023          	sw	s2,32(sp)
    490c:	01412c23          	sw	s4,24(sp)
    4910:	01512a23          	sw	s5,20(sp)
    4914:	02112623          	sw	ra,44(sp)
    4918:	02912223          	sw	s1,36(sp)
    491c:	01312e23          	sw	s3,28(sp)
    4920:	fff00793          	li	a5,-1
    4924:	0005aa83          	lw	s5,0(a1)
    4928:	00050413          	mv	s0,a0
    492c:	00058913          	mv	s2,a1
    4930:	00060a13          	mv	s4,a2
    4934:	00f70863          	beq	a4,a5,4944 <fatfs_add_free_space+0x48>
    4938:	fff00593          	li	a1,-1
    493c:	00000097          	auipc	ra,0x0
    4940:	aec080e7          	jalr	-1300(ra) # 4428 <fatfs_set_fs_info_next_free_cluster>
    4944:	00000493          	li	s1,0
    4948:	03449663          	bne	s1,s4,4974 <fatfs_add_free_space+0x78>
    494c:	00100513          	li	a0,1
    4950:	02c12083          	lw	ra,44(sp)
    4954:	02812403          	lw	s0,40(sp)
    4958:	02412483          	lw	s1,36(sp)
    495c:	02012903          	lw	s2,32(sp)
    4960:	01c12983          	lw	s3,28(sp)
    4964:	01812a03          	lw	s4,24(sp)
    4968:	01412a83          	lw	s5,20(sp)
    496c:	03010113          	addi	sp,sp,48
    4970:	00008067          	ret
    4974:	00842583          	lw	a1,8(s0)
    4978:	00c10613          	addi	a2,sp,12
    497c:	00040513          	mv	a0,s0
    4980:	00000097          	auipc	ra,0x0
    4984:	b60080e7          	jalr	-1184(ra) # 44e0 <fatfs_find_blank_cluster>
    4988:	fc0504e3          	beqz	a0,4950 <fatfs_add_free_space+0x54>
    498c:	00c12983          	lw	s3,12(sp)
    4990:	000a8593          	mv	a1,s5
    4994:	00040513          	mv	a0,s0
    4998:	00098613          	mv	a2,s3
    499c:	00000097          	auipc	ra,0x0
    49a0:	c64080e7          	jalr	-924(ra) # 4600 <fatfs_fat_set_cluster>
    49a4:	fff00613          	li	a2,-1
    49a8:	00098593          	mv	a1,s3
    49ac:	00040513          	mv	a0,s0
    49b0:	00000097          	auipc	ra,0x0
    49b4:	c50080e7          	jalr	-944(ra) # 4600 <fatfs_fat_set_cluster>
    49b8:	00049463          	bnez	s1,49c0 <fatfs_add_free_space+0xc4>
    49bc:	01392023          	sw	s3,0(s2)
    49c0:	00148493          	addi	s1,s1,1
    49c4:	00098a93          	mv	s5,s3
    49c8:	f81ff06f          	j	4948 <fatfs_add_free_space+0x4c>

000049cc <_write_sectors>:
    49cc:	fb010113          	addi	sp,sp,-80
    49d0:	03312e23          	sw	s3,60(sp)
    49d4:	0000a9b7          	lui	s3,0xa
    49d8:	03612823          	sw	s6,48(sp)
    49dc:	6509cb03          	lbu	s6,1616(s3) # a650 <_fs>
    49e0:	03512a23          	sw	s5,52(sp)
    49e4:	00058a93          	mv	s5,a1
    49e8:	fff00793          	li	a5,-1
    49ec:	04812423          	sw	s0,72(sp)
    49f0:	000b0593          	mv	a1,s6
    49f4:	00050413          	mv	s0,a0
    49f8:	000a8513          	mv	a0,s5
    49fc:	00f12e23          	sw	a5,28(sp)
    4a00:	04112623          	sw	ra,76(sp)
    4a04:	04912223          	sw	s1,68(sp)
    4a08:	05212023          	sw	s2,64(sp)
    4a0c:	03712623          	sw	s7,44(sp)
    4a10:	03812423          	sw	s8,40(sp)
    4a14:	00068b93          	mv	s7,a3
    4a18:	03912223          	sw	s9,36(sp)
    4a1c:	03a12023          	sw	s10,32(sp)
    4a20:	00060c93          	mv	s9,a2
    4a24:	03412c23          	sw	s4,56(sp)
    4a28:	ffffc097          	auipc	ra,0xffffc
    4a2c:	eb0080e7          	jalr	-336(ra) # 8d8 <__udivsi3>
    4a30:	00050493          	mv	s1,a0
    4a34:	000b0593          	mv	a1,s6
    4a38:	000a8513          	mv	a0,s5
    4a3c:	ffffc097          	auipc	ra,0xffffc
    4a40:	ee4080e7          	jalr	-284(ra) # 920 <__umodsi3>
    4a44:	00ab87b3          	add	a5,s7,a0
    4a48:	00050c13          	mv	s8,a0
    4a4c:	65098d13          	addi	s10,s3,1616
    4a50:	000b8913          	mv	s2,s7
    4a54:	00fb7e63          	bgeu	s6,a5,4a70 <_write_sectors+0xa4>
    4a58:	00048593          	mv	a1,s1
    4a5c:	000b0513          	mv	a0,s6
    4a60:	ffffc097          	auipc	ra,0xffffc
    4a64:	77c080e7          	jalr	1916(ra) # 11dc <__mulsi3>
    4a68:	415b07b3          	sub	a5,s6,s5
    4a6c:	00f50933          	add	s2,a0,a5
    4a70:	22842a03          	lw	s4,552(s0)
    4a74:	069a1663          	bne	s4,s1,4ae0 <_write_sectors+0x114>
    4a78:	22c42583          	lw	a1,556(s0)
    4a7c:	65098513          	addi	a0,s3,1616
    4a80:	ffffd097          	auipc	ra,0xffffd
    4a84:	c34080e7          	jalr	-972(ra) # 16b4 <fatfs_lba_of_cluster>
    4a88:	018505b3          	add	a1,a0,s8
    4a8c:	00090693          	mv	a3,s2
    4a90:	000c8613          	mv	a2,s9
    4a94:	65098513          	addi	a0,s3,1616
    4a98:	ffffd097          	auipc	ra,0xffffd
    4a9c:	c84080e7          	jalr	-892(ra) # 171c <fatfs_sector_write>
    4aa0:	0c050063          	beqz	a0,4b60 <_write_sectors+0x194>
    4aa4:	04c12083          	lw	ra,76(sp)
    4aa8:	04812403          	lw	s0,72(sp)
    4aac:	04412483          	lw	s1,68(sp)
    4ab0:	03c12983          	lw	s3,60(sp)
    4ab4:	03812a03          	lw	s4,56(sp)
    4ab8:	03412a83          	lw	s5,52(sp)
    4abc:	03012b03          	lw	s6,48(sp)
    4ac0:	02c12b83          	lw	s7,44(sp)
    4ac4:	02812c03          	lw	s8,40(sp)
    4ac8:	02412c83          	lw	s9,36(sp)
    4acc:	02012d03          	lw	s10,32(sp)
    4ad0:	00090513          	mv	a0,s2
    4ad4:	04012903          	lw	s2,64(sp)
    4ad8:	05010113          	addi	sp,sp,80
    4adc:	00008067          	ret
    4ae0:	036ae663          	bltu	s5,s6,4b0c <_write_sectors+0x140>
    4ae4:	001a0793          	addi	a5,s4,1
    4ae8:	02979263          	bne	a5,s1,4b0c <_write_sectors+0x140>
    4aec:	22c42583          	lw	a1,556(s0)
    4af0:	fff00a93          	li	s5,-1
    4af4:	029a6263          	bltu	s4,s1,4b18 <_write_sectors+0x14c>
    4af8:	fff00793          	li	a5,-1
    4afc:	02f58c63          	beq	a1,a5,4b34 <_write_sectors+0x168>
    4b00:	22b42623          	sw	a1,556(s0)
    4b04:	22942423          	sw	s1,552(s0)
    4b08:	f75ff06f          	j	4a7c <_write_sectors+0xb0>
    4b0c:	00442583          	lw	a1,4(s0)
    4b10:	00000a13          	li	s4,0
    4b14:	fddff06f          	j	4af0 <_write_sectors+0x124>
    4b18:	65098513          	addi	a0,s3,1616
    4b1c:	00b12623          	sw	a1,12(sp)
    4b20:	fffff097          	auipc	ra,0xfffff
    4b24:	8cc080e7          	jalr	-1844(ra) # 33ec <fatfs_find_next_cluster>
    4b28:	00c12583          	lw	a1,12(sp)
    4b2c:	00b12e23          	sw	a1,28(sp)
    4b30:	03551c63          	bne	a0,s5,4b68 <_write_sectors+0x19c>
    4b34:	000d4583          	lbu	a1,0(s10)
    4b38:	fff58513          	addi	a0,a1,-1
    4b3c:	01750533          	add	a0,a0,s7
    4b40:	ffffc097          	auipc	ra,0xffffc
    4b44:	d98080e7          	jalr	-616(ra) # 8d8 <__udivsi3>
    4b48:	00050613          	mv	a2,a0
    4b4c:	01c10593          	addi	a1,sp,28
    4b50:	65098513          	addi	a0,s3,1616
    4b54:	00000097          	auipc	ra,0x0
    4b58:	da8080e7          	jalr	-600(ra) # 48fc <fatfs_add_free_space>
    4b5c:	00051c63          	bnez	a0,4b74 <_write_sectors+0x1a8>
    4b60:	00000913          	li	s2,0
    4b64:	f41ff06f          	j	4aa4 <_write_sectors+0xd8>
    4b68:	001a0a13          	addi	s4,s4,1
    4b6c:	00050593          	mv	a1,a0
    4b70:	f85ff06f          	j	4af4 <_write_sectors+0x128>
    4b74:	01c12583          	lw	a1,28(sp)
    4b78:	f89ff06f          	j	4b00 <_write_sectors+0x134>

00004b7c <fl_fflush>:
    4b7c:	000067b7          	lui	a5,0x6
    4b80:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    4b84:	ff010113          	addi	sp,sp,-16
    4b88:	00812423          	sw	s0,8(sp)
    4b8c:	00112623          	sw	ra,12(sp)
    4b90:	00912223          	sw	s1,4(sp)
    4b94:	00050413          	mv	s0,a0
    4b98:	00079663          	bnez	a5,4ba4 <fl_fflush+0x28>
    4b9c:	ffffd097          	auipc	ra,0xffffd
    4ba0:	dd4080e7          	jalr	-556(ra) # 1970 <fl_init>
    4ba4:	04040863          	beqz	s0,4bf4 <fl_fflush+0x78>
    4ba8:	0000a7b7          	lui	a5,0xa
    4bac:	65078713          	addi	a4,a5,1616 # a650 <_fs>
    4bb0:	03c72703          	lw	a4,60(a4)
    4bb4:	65078493          	addi	s1,a5,1616
    4bb8:	00070463          	beqz	a4,4bc0 <fl_fflush+0x44>
    4bbc:	000700e7          	jalr	a4
    4bc0:	43442783          	lw	a5,1076(s0)
    4bc4:	02078263          	beqz	a5,4be8 <fl_fflush+0x6c>
    4bc8:	43042583          	lw	a1,1072(s0)
    4bcc:	00100693          	li	a3,1
    4bd0:	23040613          	addi	a2,s0,560
    4bd4:	00040513          	mv	a0,s0
    4bd8:	00000097          	auipc	ra,0x0
    4bdc:	df4080e7          	jalr	-524(ra) # 49cc <_write_sectors>
    4be0:	00050463          	beqz	a0,4be8 <fl_fflush+0x6c>
    4be4:	42042a23          	sw	zero,1076(s0)
    4be8:	0404a783          	lw	a5,64(s1)
    4bec:	00078463          	beqz	a5,4bf4 <fl_fflush+0x78>
    4bf0:	000780e7          	jalr	a5
    4bf4:	00c12083          	lw	ra,12(sp)
    4bf8:	00812403          	lw	s0,8(sp)
    4bfc:	00412483          	lw	s1,4(sp)
    4c00:	00000513          	li	a0,0
    4c04:	01010113          	addi	sp,sp,16
    4c08:	00008067          	ret

00004c0c <fl_fclose>:
    4c0c:	000067b7          	lui	a5,0x6
    4c10:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    4c14:	ff010113          	addi	sp,sp,-16
    4c18:	00812423          	sw	s0,8(sp)
    4c1c:	00112623          	sw	ra,12(sp)
    4c20:	00912223          	sw	s1,4(sp)
    4c24:	01212023          	sw	s2,0(sp)
    4c28:	00050413          	mv	s0,a0
    4c2c:	00079663          	bnez	a5,4c38 <fl_fclose+0x2c>
    4c30:	ffffd097          	auipc	ra,0xffffd
    4c34:	d40080e7          	jalr	-704(ra) # 1970 <fl_init>
    4c38:	08040e63          	beqz	s0,4cd4 <fl_fclose+0xc8>
    4c3c:	0000a4b7          	lui	s1,0xa
    4c40:	65048793          	addi	a5,s1,1616 # a650 <_fs>
    4c44:	03c7a783          	lw	a5,60(a5)
    4c48:	65048913          	addi	s2,s1,1616
    4c4c:	00078463          	beqz	a5,4c54 <fl_fclose+0x48>
    4c50:	000780e7          	jalr	a5
    4c54:	00040513          	mv	a0,s0
    4c58:	00000097          	auipc	ra,0x0
    4c5c:	f24080e7          	jalr	-220(ra) # 4b7c <fl_fflush>
    4c60:	01042783          	lw	a5,16(s0)
    4c64:	00078e63          	beqz	a5,4c80 <fl_fclose+0x74>
    4c68:	00c42683          	lw	a3,12(s0)
    4c6c:	00042583          	lw	a1,0(s0)
    4c70:	21c40613          	addi	a2,s0,540
    4c74:	65048513          	addi	a0,s1,1616
    4c78:	fffff097          	auipc	ra,0xfffff
    4c7c:	ff0080e7          	jalr	-16(ra) # 3c68 <fatfs_update_file_length>
    4c80:	fff00793          	li	a5,-1
    4c84:	42f42823          	sw	a5,1072(s0)
    4c88:	00040513          	mv	a0,s0
    4c8c:	00042423          	sw	zero,8(s0)
    4c90:	00042623          	sw	zero,12(s0)
    4c94:	00042223          	sw	zero,4(s0)
    4c98:	42042a23          	sw	zero,1076(s0)
    4c9c:	00042823          	sw	zero,16(s0)
    4ca0:	ffffd097          	auipc	ra,0xffffd
    4ca4:	9cc080e7          	jalr	-1588(ra) # 166c <_free_file>
    4ca8:	65048513          	addi	a0,s1,1616
    4cac:	ffffe097          	auipc	ra,0xffffe
    4cb0:	66c080e7          	jalr	1644(ra) # 3318 <fatfs_fat_purge>
    4cb4:	04092783          	lw	a5,64(s2)
    4cb8:	00078e63          	beqz	a5,4cd4 <fl_fclose+0xc8>
    4cbc:	00812403          	lw	s0,8(sp)
    4cc0:	00c12083          	lw	ra,12(sp)
    4cc4:	00412483          	lw	s1,4(sp)
    4cc8:	00012903          	lw	s2,0(sp)
    4ccc:	01010113          	addi	sp,sp,16
    4cd0:	00078067          	jr	a5
    4cd4:	00c12083          	lw	ra,12(sp)
    4cd8:	00812403          	lw	s0,8(sp)
    4cdc:	00412483          	lw	s1,4(sp)
    4ce0:	00012903          	lw	s2,0(sp)
    4ce4:	01010113          	addi	sp,sp,16
    4ce8:	00008067          	ret

00004cec <fl_fread>:
    4cec:	fd010113          	addi	sp,sp,-48
    4cf0:	01512a23          	sw	s5,20(sp)
    4cf4:	00050a93          	mv	s5,a0
    4cf8:	00058513          	mv	a0,a1
    4cfc:	00060593          	mv	a1,a2
    4d00:	02812423          	sw	s0,40(sp)
    4d04:	02912223          	sw	s1,36(sp)
    4d08:	02112623          	sw	ra,44(sp)
    4d0c:	03212023          	sw	s2,32(sp)
    4d10:	01312e23          	sw	s3,28(sp)
    4d14:	01412c23          	sw	s4,24(sp)
    4d18:	01612823          	sw	s6,16(sp)
    4d1c:	01712623          	sw	s7,12(sp)
    4d20:	01812423          	sw	s8,8(sp)
    4d24:	01912223          	sw	s9,4(sp)
    4d28:	00068493          	mv	s1,a3
    4d2c:	ffffc097          	auipc	ra,0xffffc
    4d30:	4b0080e7          	jalr	1200(ra) # 11dc <__mulsi3>
    4d34:	000067b7          	lui	a5,0x6
    4d38:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    4d3c:	00050413          	mv	s0,a0
    4d40:	00079663          	bnez	a5,4d4c <fl_fread+0x60>
    4d44:	ffffd097          	auipc	ra,0xffffd
    4d48:	c2c080e7          	jalr	-980(ra) # 1970 <fl_init>
    4d4c:	120a8e63          	beqz	s5,4e88 <fl_fread+0x19c>
    4d50:	12048c63          	beqz	s1,4e88 <fl_fread+0x19c>
    4d54:	4384c783          	lbu	a5,1080(s1)
    4d58:	0017f793          	andi	a5,a5,1
    4d5c:	12078663          	beqz	a5,4e88 <fl_fread+0x19c>
    4d60:	02040e63          	beqz	s0,4d9c <fl_fread+0xb0>
    4d64:	0084a583          	lw	a1,8(s1)
    4d68:	00c4a783          	lw	a5,12(s1)
    4d6c:	10f5fe63          	bgeu	a1,a5,4e88 <fl_fread+0x19c>
    4d70:	00b40733          	add	a4,s0,a1
    4d74:	00040b13          	mv	s6,s0
    4d78:	00e7f463          	bgeu	a5,a4,4d80 <fl_fread+0x94>
    4d7c:	40b78b33          	sub	s6,a5,a1
    4d80:	0095d993          	srli	s3,a1,0x9
    4d84:	1ff5f913          	andi	s2,a1,511
    4d88:	00000413          	li	s0,0
    4d8c:	23048b93          	addi	s7,s1,560
    4d90:	20000c13          	li	s8,512
    4d94:	1ff00c93          	li	s9,511
    4d98:	03644e63          	blt	s0,s6,4dd4 <fl_fread+0xe8>
    4d9c:	02c12083          	lw	ra,44(sp)
    4da0:	00040513          	mv	a0,s0
    4da4:	02812403          	lw	s0,40(sp)
    4da8:	02412483          	lw	s1,36(sp)
    4dac:	02012903          	lw	s2,32(sp)
    4db0:	01c12983          	lw	s3,28(sp)
    4db4:	01812a03          	lw	s4,24(sp)
    4db8:	01412a83          	lw	s5,20(sp)
    4dbc:	01012b03          	lw	s6,16(sp)
    4dc0:	00c12b83          	lw	s7,12(sp)
    4dc4:	00812c03          	lw	s8,8(sp)
    4dc8:	00412c83          	lw	s9,4(sp)
    4dcc:	03010113          	addi	sp,sp,48
    4dd0:	00008067          	ret
    4dd4:	04091463          	bnez	s2,4e1c <fl_fread+0x130>
    4dd8:	408b06b3          	sub	a3,s6,s0
    4ddc:	04dcd063          	bge	s9,a3,4e1c <fl_fread+0x130>
    4de0:	4096d693          	srai	a3,a3,0x9
    4de4:	008a8633          	add	a2,s5,s0
    4de8:	00098593          	mv	a1,s3
    4dec:	00048513          	mv	a0,s1
    4df0:	fffff097          	auipc	ra,0xfffff
    4df4:	4ec080e7          	jalr	1260(ra) # 42dc <_read_sectors>
    4df8:	fa0502e3          	beqz	a0,4d9c <fl_fread+0xb0>
    4dfc:	00951a13          	slli	s4,a0,0x9
    4e00:	00a989b3          	add	s3,s3,a0
    4e04:	0084a783          	lw	a5,8(s1)
    4e08:	01440433          	add	s0,s0,s4
    4e0c:	00000913          	li	s2,0
    4e10:	014787b3          	add	a5,a5,s4
    4e14:	00f4a423          	sw	a5,8(s1)
    4e18:	f81ff06f          	j	4d98 <fl_fread+0xac>
    4e1c:	4304a783          	lw	a5,1072(s1)
    4e20:	03378e63          	beq	a5,s3,4e5c <fl_fread+0x170>
    4e24:	4344a783          	lw	a5,1076(s1)
    4e28:	00078863          	beqz	a5,4e38 <fl_fread+0x14c>
    4e2c:	00048513          	mv	a0,s1
    4e30:	00000097          	auipc	ra,0x0
    4e34:	d4c080e7          	jalr	-692(ra) # 4b7c <fl_fflush>
    4e38:	00100693          	li	a3,1
    4e3c:	000b8613          	mv	a2,s7
    4e40:	00098593          	mv	a1,s3
    4e44:	00048513          	mv	a0,s1
    4e48:	fffff097          	auipc	ra,0xfffff
    4e4c:	494080e7          	jalr	1172(ra) # 42dc <_read_sectors>
    4e50:	f40506e3          	beqz	a0,4d9c <fl_fread+0xb0>
    4e54:	4334a823          	sw	s3,1072(s1)
    4e58:	4204aa23          	sw	zero,1076(s1)
    4e5c:	412c07b3          	sub	a5,s8,s2
    4e60:	408b0a33          	sub	s4,s6,s0
    4e64:	0147d463          	bge	a5,s4,4e6c <fl_fread+0x180>
    4e68:	00078a13          	mv	s4,a5
    4e6c:	000a0613          	mv	a2,s4
    4e70:	012b85b3          	add	a1,s7,s2
    4e74:	008a8533          	add	a0,s5,s0
    4e78:	ffffc097          	auipc	ra,0xffffc
    4e7c:	b50080e7          	jalr	-1200(ra) # 9c8 <memcpy>
    4e80:	00198993          	addi	s3,s3,1
    4e84:	f81ff06f          	j	4e04 <fl_fread+0x118>
    4e88:	fff00413          	li	s0,-1
    4e8c:	f11ff06f          	j	4d9c <fl_fread+0xb0>

00004e90 <fl_fgetc>:
    4e90:	fe010113          	addi	sp,sp,-32
    4e94:	00050693          	mv	a3,a0
    4e98:	00100613          	li	a2,1
    4e9c:	00100593          	li	a1,1
    4ea0:	00f10513          	addi	a0,sp,15
    4ea4:	00112e23          	sw	ra,28(sp)
    4ea8:	000107a3          	sb	zero,15(sp)
    4eac:	00000097          	auipc	ra,0x0
    4eb0:	e40080e7          	jalr	-448(ra) # 4cec <fl_fread>
    4eb4:	00100793          	li	a5,1
    4eb8:	00f51463          	bne	a0,a5,4ec0 <fl_fgetc+0x30>
    4ebc:	00f14503          	lbu	a0,15(sp)
    4ec0:	01c12083          	lw	ra,28(sp)
    4ec4:	02010113          	addi	sp,sp,32
    4ec8:	00008067          	ret

00004ecc <fl_fgets>:
    4ecc:	fe010113          	addi	sp,sp,-32
    4ed0:	00112e23          	sw	ra,28(sp)
    4ed4:	00812c23          	sw	s0,24(sp)
    4ed8:	00912a23          	sw	s1,20(sp)
    4edc:	01212823          	sw	s2,16(sp)
    4ee0:	01312623          	sw	s3,12(sp)
    4ee4:	01412423          	sw	s4,8(sp)
    4ee8:	02b05e63          	blez	a1,4f24 <fl_fgets+0x58>
    4eec:	00050493          	mv	s1,a0
    4ef0:	00060993          	mv	s3,a2
    4ef4:	00000413          	li	s0,0
    4ef8:	fff58913          	addi	s2,a1,-1
    4efc:	00a00a13          	li	s4,10
    4f00:	01245a63          	bge	s0,s2,4f14 <fl_fgets+0x48>
    4f04:	00098513          	mv	a0,s3
    4f08:	00000097          	auipc	ra,0x0
    4f0c:	f88080e7          	jalr	-120(ra) # 4e90 <fl_fgetc>
    4f10:	02055e63          	bgez	a0,4f4c <fl_fgets+0x80>
    4f14:	00040863          	beqz	s0,4f24 <fl_fgets+0x58>
    4f18:	00848433          	add	s0,s1,s0
    4f1c:	00040023          	sb	zero,0(s0)
    4f20:	0080006f          	j	4f28 <fl_fgets+0x5c>
    4f24:	00000493          	li	s1,0
    4f28:	01c12083          	lw	ra,28(sp)
    4f2c:	01812403          	lw	s0,24(sp)
    4f30:	01012903          	lw	s2,16(sp)
    4f34:	00c12983          	lw	s3,12(sp)
    4f38:	00812a03          	lw	s4,8(sp)
    4f3c:	00048513          	mv	a0,s1
    4f40:	01412483          	lw	s1,20(sp)
    4f44:	02010113          	addi	sp,sp,32
    4f48:	00008067          	ret
    4f4c:	00140413          	addi	s0,s0,1
    4f50:	008487b3          	add	a5,s1,s0
    4f54:	fea78fa3          	sb	a0,-1(a5)
    4f58:	fb4514e3          	bne	a0,s4,4f00 <fl_fgets+0x34>
    4f5c:	fbdff06f          	j	4f18 <fl_fgets+0x4c>

00004f60 <fl_fwrite>:
    4f60:	fb010113          	addi	sp,sp,-80
    4f64:	00a12423          	sw	a0,8(sp)
    4f68:	00058513          	mv	a0,a1
    4f6c:	00060593          	mv	a1,a2
    4f70:	04912223          	sw	s1,68(sp)
    4f74:	03a12023          	sw	s10,32(sp)
    4f78:	04112623          	sw	ra,76(sp)
    4f7c:	04812423          	sw	s0,72(sp)
    4f80:	05212023          	sw	s2,64(sp)
    4f84:	03312e23          	sw	s3,60(sp)
    4f88:	03412c23          	sw	s4,56(sp)
    4f8c:	03512a23          	sw	s5,52(sp)
    4f90:	03612823          	sw	s6,48(sp)
    4f94:	03712623          	sw	s7,44(sp)
    4f98:	03812423          	sw	s8,40(sp)
    4f9c:	03912223          	sw	s9,36(sp)
    4fa0:	01b12e23          	sw	s11,28(sp)
    4fa4:	00068d13          	mv	s10,a3
    4fa8:	ffffc097          	auipc	ra,0xffffc
    4fac:	234080e7          	jalr	564(ra) # 11dc <__mulsi3>
    4fb0:	00006737          	lui	a4,0x6
    4fb4:	28472703          	lw	a4,644(a4) # 6284 <_filelib_init>
    4fb8:	00050493          	mv	s1,a0
    4fbc:	00071663          	bnez	a4,4fc8 <fl_fwrite+0x68>
    4fc0:	ffffd097          	auipc	ra,0xffffd
    4fc4:	9b0080e7          	jalr	-1616(ra) # 1970 <fl_init>
    4fc8:	040d1463          	bnez	s10,5010 <fl_fwrite+0xb0>
    4fcc:	fff00493          	li	s1,-1
    4fd0:	04c12083          	lw	ra,76(sp)
    4fd4:	04812403          	lw	s0,72(sp)
    4fd8:	04012903          	lw	s2,64(sp)
    4fdc:	03c12983          	lw	s3,60(sp)
    4fe0:	03812a03          	lw	s4,56(sp)
    4fe4:	03412a83          	lw	s5,52(sp)
    4fe8:	03012b03          	lw	s6,48(sp)
    4fec:	02c12b83          	lw	s7,44(sp)
    4ff0:	02812c03          	lw	s8,40(sp)
    4ff4:	02412c83          	lw	s9,36(sp)
    4ff8:	02012d03          	lw	s10,32(sp)
    4ffc:	01c12d83          	lw	s11,28(sp)
    5000:	00048513          	mv	a0,s1
    5004:	04412483          	lw	s1,68(sp)
    5008:	05010113          	addi	sp,sp,80
    500c:	00008067          	ret
    5010:	0000aab7          	lui	s5,0xa
    5014:	650a8713          	addi	a4,s5,1616 # a650 <_fs>
    5018:	03c72703          	lw	a4,60(a4)
    501c:	650a8a93          	addi	s5,s5,1616
    5020:	00070463          	beqz	a4,5028 <fl_fwrite+0xc8>
    5024:	000700e7          	jalr	a4
    5028:	438d4703          	lbu	a4,1080(s10)
    502c:	00277693          	andi	a3,a4,2
    5030:	00069a63          	bnez	a3,5044 <fl_fwrite+0xe4>
    5034:	040aa783          	lw	a5,64(s5)
    5038:	f8078ae3          	beqz	a5,4fcc <fl_fwrite+0x6c>
    503c:	000780e7          	jalr	a5
    5040:	f8dff06f          	j	4fcc <fl_fwrite+0x6c>
    5044:	00477713          	andi	a4,a4,4
    5048:	00070663          	beqz	a4,5054 <fl_fwrite+0xf4>
    504c:	00cd2703          	lw	a4,12(s10)
    5050:	00ed2423          	sw	a4,8(s10)
    5054:	008d2983          	lw	s3,8(s10)
    5058:	00000913          	li	s2,0
    505c:	20000b93          	li	s7,512
    5060:	0099d413          	srli	s0,s3,0x9
    5064:	230d0b13          	addi	s6,s10,560
    5068:	1ff9f993          	andi	s3,s3,511
    506c:	1ff00d93          	li	s11,511
    5070:	fff00c13          	li	s8,-1
    5074:	06997c63          	bgeu	s2,s1,50ec <fl_fwrite+0x18c>
    5078:	00812783          	lw	a5,8(sp)
    507c:	430d2703          	lw	a4,1072(s10)
    5080:	412486b3          	sub	a3,s1,s2
    5084:	01278cb3          	add	s9,a5,s2
    5088:	08099063          	bnez	s3,5108 <fl_fwrite+0x1a8>
    508c:	06ddfe63          	bgeu	s11,a3,5108 <fl_fwrite+0x1a8>
    5090:	03870463          	beq	a4,s8,50b8 <fl_fwrite+0x158>
    5094:	434d2703          	lw	a4,1076(s10)
    5098:	00070c63          	beqz	a4,50b0 <fl_fwrite+0x150>
    509c:	000d0513          	mv	a0,s10
    50a0:	00d12623          	sw	a3,12(sp)
    50a4:	00000097          	auipc	ra,0x0
    50a8:	ad8080e7          	jalr	-1320(ra) # 4b7c <fl_fflush>
    50ac:	00c12683          	lw	a3,12(sp)
    50b0:	438d2823          	sw	s8,1072(s10)
    50b4:	420d2a23          	sw	zero,1076(s10)
    50b8:	0096d693          	srli	a3,a3,0x9
    50bc:	00040593          	mv	a1,s0
    50c0:	000c8613          	mv	a2,s9
    50c4:	000d0513          	mv	a0,s10
    50c8:	00000097          	auipc	ra,0x0
    50cc:	904080e7          	jalr	-1788(ra) # 49cc <_write_sectors>
    50d0:	008d2703          	lw	a4,8(s10)
    50d4:	00951693          	slli	a3,a0,0x9
    50d8:	00d90933          	add	s2,s2,a3
    50dc:	00d70733          	add	a4,a4,a3
    50e0:	00ed2423          	sw	a4,8(s10)
    50e4:	00a40433          	add	s0,s0,a0
    50e8:	0a051863          	bnez	a0,5198 <fl_fwrite+0x238>
    50ec:	008d2703          	lw	a4,8(s10)
    50f0:	00cd2683          	lw	a3,12(s10)
    50f4:	0ae6e663          	bltu	a3,a4,51a0 <fl_fwrite+0x240>
    50f8:	040aa783          	lw	a5,64(s5)
    50fc:	ec078ae3          	beqz	a5,4fd0 <fl_fwrite+0x70>
    5100:	000780e7          	jalr	a5
    5104:	ecdff06f          	j	4fd0 <fl_fwrite+0x70>
    5108:	413b8a33          	sub	s4,s7,s3
    510c:	0146f463          	bgeu	a3,s4,5114 <fl_fwrite+0x1b4>
    5110:	00068a13          	mv	s4,a3
    5114:	04e40a63          	beq	s0,a4,5168 <fl_fwrite+0x208>
    5118:	434d2703          	lw	a4,1076(s10)
    511c:	00070863          	beqz	a4,512c <fl_fwrite+0x1cc>
    5120:	000d0513          	mv	a0,s10
    5124:	00000097          	auipc	ra,0x0
    5128:	a58080e7          	jalr	-1448(ra) # 4b7c <fl_fflush>
    512c:	037a0a63          	beq	s4,s7,5160 <fl_fwrite+0x200>
    5130:	00100693          	li	a3,1
    5134:	000b0613          	mv	a2,s6
    5138:	00040593          	mv	a1,s0
    513c:	000d0513          	mv	a0,s10
    5140:	fffff097          	auipc	ra,0xfffff
    5144:	19c080e7          	jalr	412(ra) # 42dc <_read_sectors>
    5148:	00051c63          	bnez	a0,5160 <fl_fwrite+0x200>
    514c:	20000613          	li	a2,512
    5150:	00000593          	li	a1,0
    5154:	000b0513          	mv	a0,s6
    5158:	ffffc097          	auipc	ra,0xffffc
    515c:	854080e7          	jalr	-1964(ra) # 9ac <memset>
    5160:	428d2823          	sw	s0,1072(s10)
    5164:	420d2a23          	sw	zero,1076(s10)
    5168:	000a0613          	mv	a2,s4
    516c:	000c8593          	mv	a1,s9
    5170:	013b0533          	add	a0,s6,s3
    5174:	ffffc097          	auipc	ra,0xffffc
    5178:	854080e7          	jalr	-1964(ra) # 9c8 <memcpy>
    517c:	008d2703          	lw	a4,8(s10)
    5180:	00100793          	li	a5,1
    5184:	42fd2a23          	sw	a5,1076(s10)
    5188:	01470733          	add	a4,a4,s4
    518c:	01490933          	add	s2,s2,s4
    5190:	00ed2423          	sw	a4,8(s10)
    5194:	00140413          	addi	s0,s0,1
    5198:	00000993          	li	s3,0
    519c:	ed9ff06f          	j	5074 <fl_fwrite+0x114>
    51a0:	00ed2623          	sw	a4,12(s10)
    51a4:	00100713          	li	a4,1
    51a8:	00ed2823          	sw	a4,16(s10)
    51ac:	f4dff06f          	j	50f8 <fl_fwrite+0x198>

000051b0 <fl_fputc>:
    51b0:	fe010113          	addi	sp,sp,-32
    51b4:	00812c23          	sw	s0,24(sp)
    51b8:	00058693          	mv	a3,a1
    51bc:	00a107a3          	sb	a0,15(sp)
    51c0:	00050413          	mv	s0,a0
    51c4:	00100613          	li	a2,1
    51c8:	00100593          	li	a1,1
    51cc:	00f10513          	addi	a0,sp,15
    51d0:	00112e23          	sw	ra,28(sp)
    51d4:	00000097          	auipc	ra,0x0
    51d8:	d8c080e7          	jalr	-628(ra) # 4f60 <fl_fwrite>
    51dc:	00100793          	li	a5,1
    51e0:	00f50463          	beq	a0,a5,51e8 <fl_fputc+0x38>
    51e4:	00050413          	mv	s0,a0
    51e8:	01c12083          	lw	ra,28(sp)
    51ec:	00040513          	mv	a0,s0
    51f0:	01812403          	lw	s0,24(sp)
    51f4:	02010113          	addi	sp,sp,32
    51f8:	00008067          	ret

000051fc <fl_fputs>:
    51fc:	fe010113          	addi	sp,sp,-32
    5200:	00812c23          	sw	s0,24(sp)
    5204:	00112e23          	sw	ra,28(sp)
    5208:	00050413          	mv	s0,a0
    520c:	00b12623          	sw	a1,12(sp)
    5210:	ffffb097          	auipc	ra,0xffffb
    5214:	7dc080e7          	jalr	2012(ra) # 9ec <strlen>
    5218:	00050613          	mv	a2,a0
    521c:	00040513          	mv	a0,s0
    5220:	01812403          	lw	s0,24(sp)
    5224:	00c12683          	lw	a3,12(sp)
    5228:	01c12083          	lw	ra,28(sp)
    522c:	00100593          	li	a1,1
    5230:	02010113          	addi	sp,sp,32
    5234:	00000317          	auipc	t1,0x0
    5238:	d2c30067          	jr	-724(t1) # 4f60 <fl_fwrite>

0000523c <fatfs_allocate_free_space.part.0>:
    523c:	02452703          	lw	a4,36(a0)
    5240:	fd010113          	addi	sp,sp,-48
    5244:	02812423          	sw	s0,40(sp)
    5248:	03212023          	sw	s2,32(sp)
    524c:	01312e23          	sw	s3,28(sp)
    5250:	01512a23          	sw	s5,20(sp)
    5254:	02112623          	sw	ra,44(sp)
    5258:	02912223          	sw	s1,36(sp)
    525c:	01412c23          	sw	s4,24(sp)
    5260:	fff00793          	li	a5,-1
    5264:	00050413          	mv	s0,a0
    5268:	00058a93          	mv	s5,a1
    526c:	00060913          	mv	s2,a2
    5270:	00068993          	mv	s3,a3
    5274:	00f70863          	beq	a4,a5,5284 <fatfs_allocate_free_space.part.0+0x48>
    5278:	fff00593          	li	a1,-1
    527c:	fffff097          	auipc	ra,0xfffff
    5280:	1ac080e7          	jalr	428(ra) # 4428 <fatfs_set_fs_info_next_free_cluster>
    5284:	00044a03          	lbu	s4,0(s0)
    5288:	00098513          	mv	a0,s3
    528c:	009a1a13          	slli	s4,s4,0x9
    5290:	000a0593          	mv	a1,s4
    5294:	ffffb097          	auipc	ra,0xffffb
    5298:	644080e7          	jalr	1604(ra) # 8d8 <__udivsi3>
    529c:	00050493          	mv	s1,a0
    52a0:	00050593          	mv	a1,a0
    52a4:	000a0513          	mv	a0,s4
    52a8:	ffffc097          	auipc	ra,0xffffc
    52ac:	f34080e7          	jalr	-204(ra) # 11dc <__mulsi3>
    52b0:	00a98463          	beq	s3,a0,52b8 <fatfs_allocate_free_space.part.0+0x7c>
    52b4:	00148493          	addi	s1,s1,1
    52b8:	060a8463          	beqz	s5,5320 <fatfs_allocate_free_space.part.0+0xe4>
    52bc:	00842583          	lw	a1,8(s0)
    52c0:	00c10613          	addi	a2,sp,12
    52c4:	00040513          	mv	a0,s0
    52c8:	fffff097          	auipc	ra,0xfffff
    52cc:	218080e7          	jalr	536(ra) # 44e0 <fatfs_find_blank_cluster>
    52d0:	02050663          	beqz	a0,52fc <fatfs_allocate_free_space.part.0+0xc0>
    52d4:	00100793          	li	a5,1
    52d8:	04f49863          	bne	s1,a5,5328 <fatfs_allocate_free_space.part.0+0xec>
    52dc:	00c12483          	lw	s1,12(sp)
    52e0:	fff00613          	li	a2,-1
    52e4:	00040513          	mv	a0,s0
    52e8:	00048593          	mv	a1,s1
    52ec:	fffff097          	auipc	ra,0xfffff
    52f0:	314080e7          	jalr	788(ra) # 4600 <fatfs_fat_set_cluster>
    52f4:	00100513          	li	a0,1
    52f8:	00992023          	sw	s1,0(s2)
    52fc:	02c12083          	lw	ra,44(sp)
    5300:	02812403          	lw	s0,40(sp)
    5304:	02412483          	lw	s1,36(sp)
    5308:	02012903          	lw	s2,32(sp)
    530c:	01c12983          	lw	s3,28(sp)
    5310:	01812a03          	lw	s4,24(sp)
    5314:	01412a83          	lw	s5,20(sp)
    5318:	03010113          	addi	sp,sp,48
    531c:	00008067          	ret
    5320:	00092783          	lw	a5,0(s2)
    5324:	00f12623          	sw	a5,12(sp)
    5328:	00048613          	mv	a2,s1
    532c:	00c10593          	addi	a1,sp,12
    5330:	00040513          	mv	a0,s0
    5334:	fffff097          	auipc	ra,0xfffff
    5338:	5c8080e7          	jalr	1480(ra) # 48fc <fatfs_add_free_space>
    533c:	00a03533          	snez	a0,a0
    5340:	fbdff06f          	j	52fc <fatfs_allocate_free_space.part.0+0xc0>

00005344 <fatfs_allocate_free_space>:
    5344:	00068663          	beqz	a3,5350 <fatfs_allocate_free_space+0xc>
    5348:	00000317          	auipc	t1,0x0
    534c:	ef430067          	jr	-268(t1) # 523c <fatfs_allocate_free_space.part.0>
    5350:	00000513          	li	a0,0
    5354:	00008067          	ret

00005358 <fatfs_add_file_entry>:
    5358:	f8010113          	addi	sp,sp,-128
    535c:	00f12823          	sw	a5,16(sp)
    5360:	03852783          	lw	a5,56(a0)
    5364:	06112e23          	sw	ra,124(sp)
    5368:	06812c23          	sw	s0,120(sp)
    536c:	06912a23          	sw	s1,116(sp)
    5370:	07212823          	sw	s2,112(sp)
    5374:	07312623          	sw	s3,108(sp)
    5378:	07412423          	sw	s4,104(sp)
    537c:	07512223          	sw	s5,100(sp)
    5380:	07612023          	sw	s6,96(sp)
    5384:	05712e23          	sw	s7,92(sp)
    5388:	05812c23          	sw	s8,88(sp)
    538c:	05912a23          	sw	s9,84(sp)
    5390:	05a12823          	sw	s10,80(sp)
    5394:	05b12623          	sw	s11,76(sp)
    5398:	00e12623          	sw	a4,12(sp)
    539c:	01012a23          	sw	a6,20(sp)
    53a0:	04079463          	bnez	a5,53e8 <fatfs_add_file_entry+0x90>
    53a4:	00000913          	li	s2,0
    53a8:	07c12083          	lw	ra,124(sp)
    53ac:	07812403          	lw	s0,120(sp)
    53b0:	07412483          	lw	s1,116(sp)
    53b4:	06c12983          	lw	s3,108(sp)
    53b8:	06812a03          	lw	s4,104(sp)
    53bc:	06412a83          	lw	s5,100(sp)
    53c0:	06012b03          	lw	s6,96(sp)
    53c4:	05c12b83          	lw	s7,92(sp)
    53c8:	05812c03          	lw	s8,88(sp)
    53cc:	05412c83          	lw	s9,84(sp)
    53d0:	05012d03          	lw	s10,80(sp)
    53d4:	04c12d83          	lw	s11,76(sp)
    53d8:	00090513          	mv	a0,s2
    53dc:	07012903          	lw	s2,112(sp)
    53e0:	08010113          	addi	sp,sp,128
    53e4:	00008067          	ret
    53e8:	00050413          	mv	s0,a0
    53ec:	00060513          	mv	a0,a2
    53f0:	00058b13          	mv	s6,a1
    53f4:	00060c93          	mv	s9,a2
    53f8:	00068b93          	mv	s7,a3
    53fc:	ffffd097          	auipc	ra,0xffffd
    5400:	a74080e7          	jalr	-1420(ra) # 1e70 <fatfs_lfn_entries_required>
    5404:	00150713          	addi	a4,a0,1
    5408:	00100793          	li	a5,1
    540c:	00050493          	mv	s1,a0
    5410:	f8e7fae3          	bgeu	a5,a4,53a4 <fatfs_add_file_entry+0x4c>
    5414:	00000993          	li	s3,0
    5418:	00000a93          	li	s5,0
    541c:	00000a13          	li	s4,0
    5420:	00000c13          	li	s8,0
    5424:	00000d13          	li	s10,0
    5428:	01000d93          	li	s11,16
    542c:	00000693          	li	a3,0
    5430:	00098613          	mv	a2,s3
    5434:	000b0593          	mv	a1,s6
    5438:	00040513          	mv	a0,s0
    543c:	ffffe097          	auipc	ra,0xffffe
    5440:	0c0080e7          	jalr	192(ra) # 34fc <fatfs_sector_reader>
    5444:	00050913          	mv	s2,a0
    5448:	14050a63          	beqz	a0,559c <fatfs_add_file_entry+0x244>
    544c:	04440693          	addi	a3,s0,68
    5450:	000d0913          	mv	s2,s10
    5454:	00000713          	li	a4,0
    5458:	00068513          	mv	a0,a3
    545c:	00e12e23          	sw	a4,28(sp)
    5460:	00d12c23          	sw	a3,24(sp)
    5464:	ffffd097          	auipc	ra,0xffffd
    5468:	91c080e7          	jalr	-1764(ra) # 1d80 <fatfs_entry_lfn_text>
    546c:	01812683          	lw	a3,24(sp)
    5470:	01c12703          	lw	a4,28(sp)
    5474:	00050d13          	mv	s10,a0
    5478:	02050c63          	beqz	a0,54b0 <fatfs_add_file_entry+0x158>
    547c:	00091863          	bnez	s2,548c <fatfs_add_file_entry+0x134>
    5480:	00070a93          	mv	s5,a4
    5484:	00098a13          	mv	s4,s3
    5488:	00100c13          	li	s8,1
    548c:	00190d13          	addi	s10,s2,1
    5490:	00170713          	addi	a4,a4,1
    5494:	0ff77713          	zext.b	a4,a4
    5498:	02068693          	addi	a3,a3,32
    549c:	01b71663          	bne	a4,s11,54a8 <fatfs_add_file_entry+0x150>
    54a0:	00198993          	addi	s3,s3,1
    54a4:	f89ff06f          	j	542c <fatfs_add_file_entry+0xd4>
    54a8:	000d0913          	mv	s2,s10
    54ac:	fadff06f          	j	5458 <fatfs_add_file_entry+0x100>
    54b0:	0006c603          	lbu	a2,0(a3)
    54b4:	0e500793          	li	a5,229
    54b8:	0cf61c63          	bne	a2,a5,5590 <fatfs_add_file_entry+0x238>
    54bc:	00091863          	bnez	s2,54cc <fatfs_add_file_entry+0x174>
    54c0:	00070a93          	mv	s5,a4
    54c4:	00098a13          	mv	s4,s3
    54c8:	00100c13          	li	s8,1
    54cc:	00190d13          	addi	s10,s2,1
    54d0:	fc9940e3          	blt	s2,s1,5490 <fatfs_add_file_entry+0x138>
    54d4:	00bb8713          	addi	a4,s7,11
    54d8:	000b8793          	mv	a5,s7
    54dc:	00000913          	li	s2,0
    54e0:	0007c603          	lbu	a2,0(a5)
    54e4:	00791693          	slli	a3,s2,0x7
    54e8:	00195913          	srli	s2,s2,0x1
    54ec:	00c90933          	add	s2,s2,a2
    54f0:	00178793          	addi	a5,a5,1
    54f4:	00d90933          	add	s2,s2,a3
    54f8:	0ff97913          	zext.b	s2,s2
    54fc:	fee792e3          	bne	a5,a4,54e0 <fatfs_add_file_entry+0x188>
    5500:	000a0993          	mv	s3,s4
    5504:	00000d93          	li	s11,0
    5508:	00000693          	li	a3,0
    550c:	00098613          	mv	a2,s3
    5510:	000b0593          	mv	a1,s6
    5514:	00040513          	mv	a0,s0
    5518:	ffffe097          	auipc	ra,0xffffe
    551c:	fe4080e7          	jalr	-28(ra) # 34fc <fatfs_sector_reader>
    5520:	e80502e3          	beqz	a0,53a4 <fatfs_add_file_entry+0x4c>
    5524:	04440d13          	addi	s10,s0,68
    5528:	00000713          	li	a4,0
    552c:	00000793          	li	a5,0
    5530:	000d0c13          	mv	s8,s10
    5534:	000d9663          	bnez	s11,5540 <fatfs_add_file_entry+0x1e8>
    5538:	11499e63          	bne	s3,s4,5654 <fatfs_add_file_entry+0x2fc>
    553c:	11579c63          	bne	a5,s5,5654 <fatfs_add_file_entry+0x2fc>
    5540:	0e049463          	bnez	s1,5628 <fatfs_add_file_entry+0x2d0>
    5544:	01412703          	lw	a4,20(sp)
    5548:	00c12603          	lw	a2,12(sp)
    554c:	01012583          	lw	a1,16(sp)
    5550:	02010693          	addi	a3,sp,32
    5554:	000b8513          	mv	a0,s7
    5558:	ffffd097          	auipc	ra,0xffffd
    555c:	a70080e7          	jalr	-1424(ra) # 1fc8 <fatfs_sfn_create_entry>
    5560:	02000613          	li	a2,32
    5564:	02010593          	addi	a1,sp,32
    5568:	000d0513          	mv	a0,s10
    556c:	ffffb097          	auipc	ra,0xffffb
    5570:	45c080e7          	jalr	1116(ra) # 9c8 <memcpy>
    5574:	03842783          	lw	a5,56(s0)
    5578:	24442503          	lw	a0,580(s0)
    557c:	00100613          	li	a2,1
    5580:	000c0593          	mv	a1,s8
    5584:	000780e7          	jalr	a5
    5588:	00050913          	mv	s2,a0
    558c:	e1dff06f          	j	53a8 <fatfs_add_file_entry+0x50>
    5590:	f20606e3          	beqz	a2,54bc <fatfs_add_file_entry+0x164>
    5594:	00000c13          	li	s8,0
    5598:	ef9ff06f          	j	5490 <fatfs_add_file_entry+0x138>
    559c:	00842583          	lw	a1,8(s0)
    55a0:	02010613          	addi	a2,sp,32
    55a4:	00040513          	mv	a0,s0
    55a8:	fffff097          	auipc	ra,0xfffff
    55ac:	f38080e7          	jalr	-200(ra) # 44e0 <fatfs_find_blank_cluster>
    55b0:	de050ce3          	beqz	a0,53a8 <fatfs_add_file_entry+0x50>
    55b4:	02012d83          	lw	s11,32(sp)
    55b8:	000b0593          	mv	a1,s6
    55bc:	00040513          	mv	a0,s0
    55c0:	000d8613          	mv	a2,s11
    55c4:	fffff097          	auipc	ra,0xfffff
    55c8:	1c4080e7          	jalr	452(ra) # 4788 <fatfs_fat_add_cluster_to_chain>
    55cc:	dc050ee3          	beqz	a0,53a8 <fatfs_add_file_entry+0x50>
    55d0:	20000613          	li	a2,512
    55d4:	00000593          	li	a1,0
    55d8:	04440513          	addi	a0,s0,68
    55dc:	ffffb097          	auipc	ra,0xffffb
    55e0:	3d0080e7          	jalr	976(ra) # 9ac <memset>
    55e4:	00000d13          	li	s10,0
    55e8:	00044783          	lbu	a5,0(s0)
    55ec:	00fd6a63          	bltu	s10,a5,5600 <fatfs_add_file_entry+0x2a8>
    55f0:	ee0c12e3          	bnez	s8,54d4 <fatfs_add_file_entry+0x17c>
    55f4:	00098a13          	mv	s4,s3
    55f8:	00000a93          	li	s5,0
    55fc:	ed9ff06f          	j	54d4 <fatfs_add_file_entry+0x17c>
    5600:	00000693          	li	a3,0
    5604:	000d0613          	mv	a2,s10
    5608:	000d8593          	mv	a1,s11
    560c:	00040513          	mv	a0,s0
    5610:	ffffc097          	auipc	ra,0xffffc
    5614:	1c8080e7          	jalr	456(ra) # 17d8 <fatfs_write_sector>
    5618:	d80508e3          	beqz	a0,53a8 <fatfs_add_file_entry+0x50>
    561c:	001d0613          	addi	a2,s10,1
    5620:	0ff67d13          	zext.b	s10,a2
    5624:	fc5ff06f          	j	55e8 <fatfs_add_file_entry+0x290>
    5628:	fff48493          	addi	s1,s1,-1
    562c:	00090693          	mv	a3,s2
    5630:	00048613          	mv	a2,s1
    5634:	000d0593          	mv	a1,s10
    5638:	000c8513          	mv	a0,s9
    563c:	00f12c23          	sw	a5,24(sp)
    5640:	ffffd097          	auipc	ra,0xffffd
    5644:	860080e7          	jalr	-1952(ra) # 1ea0 <fatfs_filename_to_lfn>
    5648:	01812783          	lw	a5,24(sp)
    564c:	00100d93          	li	s11,1
    5650:	00100713          	li	a4,1
    5654:	00178793          	addi	a5,a5,1
    5658:	0ff7f793          	zext.b	a5,a5
    565c:	01000693          	li	a3,16
    5660:	020d0d13          	addi	s10,s10,32
    5664:	ecd798e3          	bne	a5,a3,5534 <fatfs_add_file_entry+0x1dc>
    5668:	00070e63          	beqz	a4,5684 <fatfs_add_file_entry+0x32c>
    566c:	03842783          	lw	a5,56(s0)
    5670:	24442503          	lw	a0,580(s0)
    5674:	00100613          	li	a2,1
    5678:	000c0593          	mv	a1,s8
    567c:	000780e7          	jalr	a5
    5680:	d20502e3          	beqz	a0,53a4 <fatfs_add_file_entry+0x4c>
    5684:	00198993          	addi	s3,s3,1
    5688:	e81ff06f          	j	5508 <fatfs_add_file_entry+0x1b0>

0000568c <fl_fopen>:
    568c:	000067b7          	lui	a5,0x6
    5690:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    5694:	fa010113          	addi	sp,sp,-96
    5698:	04812c23          	sw	s0,88(sp)
    569c:	05412423          	sw	s4,72(sp)
    56a0:	04112e23          	sw	ra,92(sp)
    56a4:	04912a23          	sw	s1,84(sp)
    56a8:	05212823          	sw	s2,80(sp)
    56ac:	05312623          	sw	s3,76(sp)
    56b0:	05512223          	sw	s5,68(sp)
    56b4:	05612023          	sw	s6,64(sp)
    56b8:	03712e23          	sw	s7,60(sp)
    56bc:	03812c23          	sw	s8,56(sp)
    56c0:	03912a23          	sw	s9,52(sp)
    56c4:	00050a13          	mv	s4,a0
    56c8:	00058413          	mv	s0,a1
    56cc:	00079663          	bnez	a5,56d8 <fl_fopen+0x4c>
    56d0:	ffffc097          	auipc	ra,0xffffc
    56d4:	2a0080e7          	jalr	672(ra) # 1970 <fl_init>
    56d8:	000067b7          	lui	a5,0x6
    56dc:	2807a783          	lw	a5,640(a5) # 6280 <_filelib_valid>
    56e0:	30078263          	beqz	a5,59e4 <fl_fopen+0x358>
    56e4:	300a0063          	beqz	s4,59e4 <fl_fopen+0x358>
    56e8:	10040463          	beqz	s0,57f0 <fl_fopen+0x164>
    56ec:	00040513          	mv	a0,s0
    56f0:	ffffb097          	auipc	ra,0xffffb
    56f4:	2fc080e7          	jalr	764(ra) # 9ec <strlen>
    56f8:	00000493          	li	s1,0
    56fc:	00000713          	li	a4,0
    5700:	05700693          	li	a3,87
    5704:	07200613          	li	a2,114
    5708:	07700813          	li	a6,119
    570c:	06100893          	li	a7,97
    5710:	06200313          	li	t1,98
    5714:	04100593          	li	a1,65
    5718:	04200e13          	li	t3,66
    571c:	05200e93          	li	t4,82
    5720:	02b00f13          	li	t5,43
    5724:	10a74263          	blt	a4,a0,5828 <fl_fopen+0x19c>
    5728:	0000a937          	lui	s2,0xa
    572c:	65090793          	addi	a5,s2,1616 # a650 <_fs>
    5730:	0387a783          	lw	a5,56(a5)
    5734:	65090b13          	addi	s6,s2,1616
    5738:	00079463          	bnez	a5,5740 <fl_fopen+0xb4>
    573c:	0d94f493          	andi	s1,s1,217
    5740:	03cb2783          	lw	a5,60(s6)
    5744:	00078463          	beqz	a5,574c <fl_fopen+0xc0>
    5748:	000780e7          	jalr	a5
    574c:	0014fc13          	andi	s8,s1,1
    5750:	160c1463          	bnez	s8,58b8 <fl_fopen+0x22c>
    5754:	0204f793          	andi	a5,s1,32
    5758:	08078463          	beqz	a5,57e0 <fl_fopen+0x154>
    575c:	038b2783          	lw	a5,56(s6)
    5760:	06078a63          	beqz	a5,57d4 <fl_fopen+0x148>
    5764:	ffffc097          	auipc	ra,0xffffc
    5768:	e94080e7          	jalr	-364(ra) # 15f8 <_allocate_file>
    576c:	00050413          	mv	s0,a0
    5770:	06050263          	beqz	a0,57d4 <fl_fopen+0x148>
    5774:	01450b93          	addi	s7,a0,20
    5778:	10400613          	li	a2,260
    577c:	00000593          	li	a1,0
    5780:	000b8513          	mv	a0,s7
    5784:	ffffb097          	auipc	ra,0xffffb
    5788:	228080e7          	jalr	552(ra) # 9ac <memset>
    578c:	11840a93          	addi	s5,s0,280
    5790:	10400613          	li	a2,260
    5794:	00000593          	li	a1,0
    5798:	000a8513          	mv	a0,s5
    579c:	ffffb097          	auipc	ra,0xffffb
    57a0:	210080e7          	jalr	528(ra) # 9ac <memset>
    57a4:	10400713          	li	a4,260
    57a8:	000a8693          	mv	a3,s5
    57ac:	10400613          	li	a2,260
    57b0:	000b8593          	mv	a1,s7
    57b4:	000a0513          	mv	a0,s4
    57b8:	ffffd097          	auipc	ra,0xffffd
    57bc:	d04080e7          	jalr	-764(ra) # 24bc <fatfs_split_path>
    57c0:	fff00793          	li	a5,-1
    57c4:	10f51863          	bne	a0,a5,58d4 <fl_fopen+0x248>
    57c8:	00040513          	mv	a0,s0
    57cc:	ffffc097          	auipc	ra,0xffffc
    57d0:	ea0080e7          	jalr	-352(ra) # 166c <_free_file>
    57d4:	000c1663          	bnez	s8,57e0 <fl_fopen+0x154>
    57d8:	0064f793          	andi	a5,s1,6
    57dc:	1e079a63          	bnez	a5,59d0 <fl_fopen+0x344>
    57e0:	00000413          	li	s0,0
    57e4:	040b2783          	lw	a5,64(s6)
    57e8:	00078463          	beqz	a5,57f0 <fl_fopen+0x164>
    57ec:	000780e7          	jalr	a5
    57f0:	05c12083          	lw	ra,92(sp)
    57f4:	00040513          	mv	a0,s0
    57f8:	05812403          	lw	s0,88(sp)
    57fc:	05412483          	lw	s1,84(sp)
    5800:	05012903          	lw	s2,80(sp)
    5804:	04c12983          	lw	s3,76(sp)
    5808:	04812a03          	lw	s4,72(sp)
    580c:	04412a83          	lw	s5,68(sp)
    5810:	04012b03          	lw	s6,64(sp)
    5814:	03c12b83          	lw	s7,60(sp)
    5818:	03812c03          	lw	s8,56(sp)
    581c:	03412c83          	lw	s9,52(sp)
    5820:	06010113          	addi	sp,sp,96
    5824:	00008067          	ret
    5828:	00e407b3          	add	a5,s0,a4
    582c:	0007c783          	lbu	a5,0(a5)
    5830:	04d78463          	beq	a5,a3,5878 <fl_fopen+0x1ec>
    5834:	02f6e463          	bltu	a3,a5,585c <fl_fopen+0x1d0>
    5838:	04b78463          	beq	a5,a1,5880 <fl_fopen+0x1f4>
    583c:	00f5e863          	bltu	a1,a5,584c <fl_fopen+0x1c0>
    5840:	05e78463          	beq	a5,t5,5888 <fl_fopen+0x1fc>
    5844:	00170713          	addi	a4,a4,1
    5848:	eddff06f          	j	5724 <fl_fopen+0x98>
    584c:	03c78063          	beq	a5,t3,586c <fl_fopen+0x1e0>
    5850:	ffd79ae3          	bne	a5,t4,5844 <fl_fopen+0x1b8>
    5854:	0014e493          	ori	s1,s1,1
    5858:	fedff06f          	j	5844 <fl_fopen+0x1b8>
    585c:	fec78ce3          	beq	a5,a2,5854 <fl_fopen+0x1c8>
    5860:	00f66a63          	bltu	a2,a5,5874 <fl_fopen+0x1e8>
    5864:	01178e63          	beq	a5,a7,5880 <fl_fopen+0x1f4>
    5868:	fc679ee3          	bne	a5,t1,5844 <fl_fopen+0x1b8>
    586c:	0084e493          	ori	s1,s1,8
    5870:	fd5ff06f          	j	5844 <fl_fopen+0x1b8>
    5874:	fd0798e3          	bne	a5,a6,5844 <fl_fopen+0x1b8>
    5878:	0324e493          	ori	s1,s1,50
    587c:	fc9ff06f          	j	5844 <fl_fopen+0x1b8>
    5880:	0264e493          	ori	s1,s1,38
    5884:	fc1ff06f          	j	5844 <fl_fopen+0x1b8>
    5888:	0014f793          	andi	a5,s1,1
    588c:	00078663          	beqz	a5,5898 <fl_fopen+0x20c>
    5890:	0024e493          	ori	s1,s1,2
    5894:	fb1ff06f          	j	5844 <fl_fopen+0x1b8>
    5898:	0024f793          	andi	a5,s1,2
    589c:	00078663          	beqz	a5,58a8 <fl_fopen+0x21c>
    58a0:	0314e493          	ori	s1,s1,49
    58a4:	fa1ff06f          	j	5844 <fl_fopen+0x1b8>
    58a8:	0044f793          	andi	a5,s1,4
    58ac:	f8078ce3          	beqz	a5,5844 <fl_fopen+0x1b8>
    58b0:	0274e493          	ori	s1,s1,39
    58b4:	f91ff06f          	j	5844 <fl_fopen+0x1b8>
    58b8:	000a0513          	mv	a0,s4
    58bc:	ffffe097          	auipc	ra,0xffffe
    58c0:	160080e7          	jalr	352(ra) # 3a1c <_open_file>
    58c4:	00050413          	mv	s0,a0
    58c8:	e80506e3          	beqz	a0,5754 <fl_fopen+0xc8>
    58cc:	42940c23          	sb	s1,1080(s0)
    58d0:	f15ff06f          	j	57e4 <fl_fopen+0x158>
    58d4:	00040513          	mv	a0,s0
    58d8:	ffffd097          	auipc	ra,0xffffd
    58dc:	e34080e7          	jalr	-460(ra) # 270c <_check_file_open>
    58e0:	00050993          	mv	s3,a0
    58e4:	ee0512e3          	bnez	a0,57c8 <fl_fopen+0x13c>
    58e8:	01444783          	lbu	a5,20(s0)
    58ec:	0a079a63          	bnez	a5,59a0 <fl_fopen+0x314>
    58f0:	008b2783          	lw	a5,8(s6)
    58f4:	00f42023          	sw	a5,0(s0)
    58f8:	00042583          	lw	a1,0(s0)
    58fc:	01010693          	addi	a3,sp,16
    5900:	000a8613          	mv	a2,s5
    5904:	65090513          	addi	a0,s2,1616
    5908:	ffffe097          	auipc	ra,0xffffe
    590c:	d34080e7          	jalr	-716(ra) # 363c <fatfs_get_file_entry>
    5910:	00100793          	li	a5,1
    5914:	eaf50ae3          	beq	a0,a5,57c8 <fl_fopen+0x13c>
    5918:	00042223          	sw	zero,4(s0)
    591c:	00100693          	li	a3,1
    5920:	00440613          	addi	a2,s0,4
    5924:	00100593          	li	a1,1
    5928:	65090513          	addi	a0,s2,1616
    592c:	00000097          	auipc	ra,0x0
    5930:	910080e7          	jalr	-1776(ra) # 523c <fatfs_allocate_free_space.part.0>
    5934:	e8050ae3          	beqz	a0,57c8 <fl_fopen+0x13c>
    5938:	00002cb7          	lui	s9,0x2
    593c:	21c40b93          	addi	s7,s0,540
    5940:	70fc8c93          	addi	s9,s9,1807 # 270f <_check_file_open+0x3>
    5944:	000a8593          	mv	a1,s5
    5948:	00410513          	addi	a0,sp,4
    594c:	ffffc097          	auipc	ra,0xffffc
    5950:	720080e7          	jalr	1824(ra) # 206c <fatfs_lfn_create_sfn>
    5954:	06098263          	beqz	s3,59b8 <fl_fopen+0x32c>
    5958:	00098613          	mv	a2,s3
    595c:	00410593          	addi	a1,sp,4
    5960:	000b8513          	mv	a0,s7
    5964:	ffffd097          	auipc	ra,0xffffd
    5968:	880080e7          	jalr	-1920(ra) # 21e4 <fatfs_lfn_generate_tail>
    596c:	00042583          	lw	a1,0(s0)
    5970:	000b8613          	mv	a2,s7
    5974:	65090513          	addi	a0,s2,1616
    5978:	ffffe097          	auipc	ra,0xffffe
    597c:	21c080e7          	jalr	540(ra) # 3b94 <fatfs_sfn_exists>
    5980:	06050663          	beqz	a0,59ec <fl_fopen+0x360>
    5984:	00198993          	addi	s3,s3,1
    5988:	fb999ee3          	bne	s3,s9,5944 <fl_fopen+0x2b8>
    598c:	00442583          	lw	a1,4(s0)
    5990:	65090513          	addi	a0,s2,1616
    5994:	fffff097          	auipc	ra,0xfffff
    5998:	d84080e7          	jalr	-636(ra) # 4718 <fatfs_free_cluster_chain>
    599c:	e2dff06f          	j	57c8 <fl_fopen+0x13c>
    59a0:	00040593          	mv	a1,s0
    59a4:	000b8513          	mv	a0,s7
    59a8:	ffffe097          	auipc	ra,0xffffe
    59ac:	e9c080e7          	jalr	-356(ra) # 3844 <_open_directory>
    59b0:	f40514e3          	bnez	a0,58f8 <fl_fopen+0x26c>
    59b4:	e15ff06f          	j	57c8 <fl_fopen+0x13c>
    59b8:	00b00613          	li	a2,11
    59bc:	00410593          	addi	a1,sp,4
    59c0:	000b8513          	mv	a0,s7
    59c4:	ffffb097          	auipc	ra,0xffffb
    59c8:	004080e7          	jalr	4(ra) # 9c8 <memcpy>
    59cc:	fa1ff06f          	j	596c <fl_fopen+0x2e0>
    59d0:	000a0513          	mv	a0,s4
    59d4:	ffffe097          	auipc	ra,0xffffe
    59d8:	048080e7          	jalr	72(ra) # 3a1c <_open_file>
    59dc:	00050413          	mv	s0,a0
    59e0:	0640006f          	j	5a44 <fl_fopen+0x3b8>
    59e4:	00000413          	li	s0,0
    59e8:	e09ff06f          	j	57f0 <fl_fopen+0x164>
    59ec:	00442703          	lw	a4,4(s0)
    59f0:	00042583          	lw	a1,0(s0)
    59f4:	00000813          	li	a6,0
    59f8:	00000793          	li	a5,0
    59fc:	000b8693          	mv	a3,s7
    5a00:	000a8613          	mv	a2,s5
    5a04:	65090513          	addi	a0,s2,1616
    5a08:	00000097          	auipc	ra,0x0
    5a0c:	950080e7          	jalr	-1712(ra) # 5358 <fatfs_add_file_entry>
    5a10:	f6050ee3          	beqz	a0,598c <fl_fopen+0x300>
    5a14:	fff00793          	li	a5,-1
    5a18:	00042623          	sw	zero,12(s0)
    5a1c:	00042423          	sw	zero,8(s0)
    5a20:	42f42823          	sw	a5,1072(s0)
    5a24:	42042a23          	sw	zero,1076(s0)
    5a28:	00042823          	sw	zero,16(s0)
    5a2c:	22f42423          	sw	a5,552(s0)
    5a30:	22f42623          	sw	a5,556(s0)
    5a34:	65090513          	addi	a0,s2,1616
    5a38:	ffffe097          	auipc	ra,0xffffe
    5a3c:	8e0080e7          	jalr	-1824(ra) # 3318 <fatfs_fat_purge>
    5a40:	e80c06e3          	beqz	s8,58cc <fl_fopen+0x240>
    5a44:	e80414e3          	bnez	s0,58cc <fl_fopen+0x240>
    5a48:	d99ff06f          	j	57e0 <fl_fopen+0x154>

00005a4c <fl_remove>:
    5a4c:	fe010113          	addi	sp,sp,-32
    5a50:	00912a23          	sw	s1,20(sp)
    5a54:	0000a4b7          	lui	s1,0xa
    5a58:	65048793          	addi	a5,s1,1616 # a650 <_fs>
    5a5c:	03c7a783          	lw	a5,60(a5)
    5a60:	01212823          	sw	s2,16(sp)
    5a64:	00112e23          	sw	ra,28(sp)
    5a68:	00812c23          	sw	s0,24(sp)
    5a6c:	65048913          	addi	s2,s1,1616
    5a70:	00078863          	beqz	a5,5a80 <fl_remove+0x34>
    5a74:	00a12623          	sw	a0,12(sp)
    5a78:	000780e7          	jalr	a5
    5a7c:	00c12503          	lw	a0,12(sp)
    5a80:	000065b7          	lui	a1,0x6
    5a84:	1e458593          	addi	a1,a1,484 # 61e4 <font+0x3bc>
    5a88:	00000097          	auipc	ra,0x0
    5a8c:	c04080e7          	jalr	-1020(ra) # 568c <fl_fopen>
    5a90:	00050413          	mv	s0,a0
    5a94:	02051a63          	bnez	a0,5ac8 <fl_remove+0x7c>
    5a98:	fff00513          	li	a0,-1
    5a9c:	04092783          	lw	a5,64(s2)
    5aa0:	00078863          	beqz	a5,5ab0 <fl_remove+0x64>
    5aa4:	00a12623          	sw	a0,12(sp)
    5aa8:	000780e7          	jalr	a5
    5aac:	00c12503          	lw	a0,12(sp)
    5ab0:	01c12083          	lw	ra,28(sp)
    5ab4:	01812403          	lw	s0,24(sp)
    5ab8:	01412483          	lw	s1,20(sp)
    5abc:	01012903          	lw	s2,16(sp)
    5ac0:	02010113          	addi	sp,sp,32
    5ac4:	00008067          	ret
    5ac8:	00452583          	lw	a1,4(a0)
    5acc:	65048513          	addi	a0,s1,1616
    5ad0:	fffff097          	auipc	ra,0xfffff
    5ad4:	c48080e7          	jalr	-952(ra) # 4718 <fatfs_free_cluster_chain>
    5ad8:	fc0500e3          	beqz	a0,5a98 <fl_remove+0x4c>
    5adc:	00042583          	lw	a1,0(s0)
    5ae0:	21c40613          	addi	a2,s0,540
    5ae4:	65048513          	addi	a0,s1,1616
    5ae8:	ffffe097          	auipc	ra,0xffffe
    5aec:	2e8080e7          	jalr	744(ra) # 3dd0 <fatfs_mark_file_deleted>
    5af0:	fa0504e3          	beqz	a0,5a98 <fl_remove+0x4c>
    5af4:	00040513          	mv	a0,s0
    5af8:	fffff097          	auipc	ra,0xfffff
    5afc:	114080e7          	jalr	276(ra) # 4c0c <fl_fclose>
    5b00:	00000513          	li	a0,0
    5b04:	f99ff06f          	j	5a9c <fl_remove+0x50>

00005b08 <fl_createdirectory>:
    5b08:	000067b7          	lui	a5,0x6
    5b0c:	2847a783          	lw	a5,644(a5) # 6284 <_filelib_init>
    5b10:	fa010113          	addi	sp,sp,-96
    5b14:	05512223          	sw	s5,68(sp)
    5b18:	04112e23          	sw	ra,92(sp)
    5b1c:	04812c23          	sw	s0,88(sp)
    5b20:	04912a23          	sw	s1,84(sp)
    5b24:	05212823          	sw	s2,80(sp)
    5b28:	05312623          	sw	s3,76(sp)
    5b2c:	05412423          	sw	s4,72(sp)
    5b30:	05612023          	sw	s6,64(sp)
    5b34:	03712e23          	sw	s7,60(sp)
    5b38:	00050a93          	mv	s5,a0
    5b3c:	00079663          	bnez	a5,5b48 <fl_createdirectory+0x40>
    5b40:	ffffc097          	auipc	ra,0xffffc
    5b44:	e30080e7          	jalr	-464(ra) # 1970 <fl_init>
    5b48:	0000a937          	lui	s2,0xa
    5b4c:	65090793          	addi	a5,s2,1616 # a650 <_fs>
    5b50:	03c7a783          	lw	a5,60(a5)
    5b54:	65090b13          	addi	s6,s2,1616
    5b58:	00078463          	beqz	a5,5b60 <fl_createdirectory+0x58>
    5b5c:	000780e7          	jalr	a5
    5b60:	ffffc097          	auipc	ra,0xffffc
    5b64:	a98080e7          	jalr	-1384(ra) # 15f8 <_allocate_file>
    5b68:	00050413          	mv	s0,a0
    5b6c:	00000493          	li	s1,0
    5b70:	08050663          	beqz	a0,5bfc <fl_createdirectory+0xf4>
    5b74:	01450a13          	addi	s4,a0,20
    5b78:	10400613          	li	a2,260
    5b7c:	00000593          	li	a1,0
    5b80:	000a0513          	mv	a0,s4
    5b84:	ffffb097          	auipc	ra,0xffffb
    5b88:	e28080e7          	jalr	-472(ra) # 9ac <memset>
    5b8c:	11840993          	addi	s3,s0,280
    5b90:	10400613          	li	a2,260
    5b94:	00000593          	li	a1,0
    5b98:	00098513          	mv	a0,s3
    5b9c:	ffffb097          	auipc	ra,0xffffb
    5ba0:	e10080e7          	jalr	-496(ra) # 9ac <memset>
    5ba4:	10400713          	li	a4,260
    5ba8:	00098693          	mv	a3,s3
    5bac:	10400613          	li	a2,260
    5bb0:	000a0593          	mv	a1,s4
    5bb4:	000a8513          	mv	a0,s5
    5bb8:	ffffd097          	auipc	ra,0xffffd
    5bbc:	904080e7          	jalr	-1788(ra) # 24bc <fatfs_split_path>
    5bc0:	fff00793          	li	a5,-1
    5bc4:	00f51a63          	bne	a0,a5,5bd8 <fl_createdirectory+0xd0>
    5bc8:	00040513          	mv	a0,s0
    5bcc:	ffffc097          	auipc	ra,0xffffc
    5bd0:	aa0080e7          	jalr	-1376(ra) # 166c <_free_file>
    5bd4:	0280006f          	j	5bfc <fl_createdirectory+0xf4>
    5bd8:	00040513          	mv	a0,s0
    5bdc:	ffffd097          	auipc	ra,0xffffd
    5be0:	b30080e7          	jalr	-1232(ra) # 270c <_check_file_open>
    5be4:	00050493          	mv	s1,a0
    5be8:	04050863          	beqz	a0,5c38 <fl_createdirectory+0x130>
    5bec:	00040513          	mv	a0,s0
    5bf0:	ffffc097          	auipc	ra,0xffffc
    5bf4:	a7c080e7          	jalr	-1412(ra) # 166c <_free_file>
    5bf8:	00000493          	li	s1,0
    5bfc:	040b2783          	lw	a5,64(s6)
    5c00:	00078463          	beqz	a5,5c08 <fl_createdirectory+0x100>
    5c04:	000780e7          	jalr	a5
    5c08:	05c12083          	lw	ra,92(sp)
    5c0c:	05812403          	lw	s0,88(sp)
    5c10:	05012903          	lw	s2,80(sp)
    5c14:	04c12983          	lw	s3,76(sp)
    5c18:	04812a03          	lw	s4,72(sp)
    5c1c:	04412a83          	lw	s5,68(sp)
    5c20:	04012b03          	lw	s6,64(sp)
    5c24:	03c12b83          	lw	s7,60(sp)
    5c28:	00048513          	mv	a0,s1
    5c2c:	05412483          	lw	s1,84(sp)
    5c30:	06010113          	addi	sp,sp,96
    5c34:	00008067          	ret
    5c38:	01444783          	lbu	a5,20(s0)
    5c3c:	0c079e63          	bnez	a5,5d18 <fl_createdirectory+0x210>
    5c40:	008b2783          	lw	a5,8(s6)
    5c44:	00f42023          	sw	a5,0(s0)
    5c48:	00042583          	lw	a1,0(s0)
    5c4c:	01010693          	addi	a3,sp,16
    5c50:	00098613          	mv	a2,s3
    5c54:	65090513          	addi	a0,s2,1616
    5c58:	ffffe097          	auipc	ra,0xffffe
    5c5c:	9e4080e7          	jalr	-1564(ra) # 363c <fatfs_get_file_entry>
    5c60:	00100793          	li	a5,1
    5c64:	f6f502e3          	beq	a0,a5,5bc8 <fl_createdirectory+0xc0>
    5c68:	00042223          	sw	zero,4(s0)
    5c6c:	00100693          	li	a3,1
    5c70:	00440613          	addi	a2,s0,4
    5c74:	00100593          	li	a1,1
    5c78:	65090513          	addi	a0,s2,1616
    5c7c:	fffff097          	auipc	ra,0xfffff
    5c80:	5c0080e7          	jalr	1472(ra) # 523c <fatfs_allocate_free_space.part.0>
    5c84:	f60504e3          	beqz	a0,5bec <fl_createdirectory+0xe4>
    5c88:	23040a93          	addi	s5,s0,560
    5c8c:	20000613          	li	a2,512
    5c90:	00000593          	li	a1,0
    5c94:	000a8513          	mv	a0,s5
    5c98:	ffffb097          	auipc	ra,0xffffb
    5c9c:	d14080e7          	jalr	-748(ra) # 9ac <memset>
    5ca0:	00000a13          	li	s4,0
    5ca4:	000b4783          	lbu	a5,0(s6)
    5ca8:	08fa4463          	blt	s4,a5,5d30 <fl_createdirectory+0x228>
    5cac:	00002bb7          	lui	s7,0x2
    5cb0:	00000a13          	li	s4,0
    5cb4:	21c40a93          	addi	s5,s0,540
    5cb8:	70fb8b93          	addi	s7,s7,1807 # 270f <_check_file_open+0x3>
    5cbc:	00098593          	mv	a1,s3
    5cc0:	00410513          	addi	a0,sp,4
    5cc4:	ffffc097          	auipc	ra,0xffffc
    5cc8:	3a8080e7          	jalr	936(ra) # 206c <fatfs_lfn_create_sfn>
    5ccc:	080a0463          	beqz	s4,5d54 <fl_createdirectory+0x24c>
    5cd0:	000a0613          	mv	a2,s4
    5cd4:	00410593          	addi	a1,sp,4
    5cd8:	000a8513          	mv	a0,s5
    5cdc:	ffffc097          	auipc	ra,0xffffc
    5ce0:	508080e7          	jalr	1288(ra) # 21e4 <fatfs_lfn_generate_tail>
    5ce4:	00042583          	lw	a1,0(s0)
    5ce8:	000a8613          	mv	a2,s5
    5cec:	65090513          	addi	a0,s2,1616
    5cf0:	ffffe097          	auipc	ra,0xffffe
    5cf4:	ea4080e7          	jalr	-348(ra) # 3b94 <fatfs_sfn_exists>
    5cf8:	06050a63          	beqz	a0,5d6c <fl_createdirectory+0x264>
    5cfc:	001a0a13          	addi	s4,s4,1
    5d00:	fb7a1ee3          	bne	s4,s7,5cbc <fl_createdirectory+0x1b4>
    5d04:	00442583          	lw	a1,4(s0)
    5d08:	65090513          	addi	a0,s2,1616
    5d0c:	fffff097          	auipc	ra,0xfffff
    5d10:	a0c080e7          	jalr	-1524(ra) # 4718 <fatfs_free_cluster_chain>
    5d14:	eb5ff06f          	j	5bc8 <fl_createdirectory+0xc0>
    5d18:	00040593          	mv	a1,s0
    5d1c:	000a0513          	mv	a0,s4
    5d20:	ffffe097          	auipc	ra,0xffffe
    5d24:	b24080e7          	jalr	-1244(ra) # 3844 <_open_directory>
    5d28:	f20510e3          	bnez	a0,5c48 <fl_createdirectory+0x140>
    5d2c:	e9dff06f          	j	5bc8 <fl_createdirectory+0xc0>
    5d30:	00442583          	lw	a1,4(s0)
    5d34:	000a8693          	mv	a3,s5
    5d38:	000a0613          	mv	a2,s4
    5d3c:	65090513          	addi	a0,s2,1616
    5d40:	ffffc097          	auipc	ra,0xffffc
    5d44:	a98080e7          	jalr	-1384(ra) # 17d8 <fatfs_write_sector>
    5d48:	ea0502e3          	beqz	a0,5bec <fl_createdirectory+0xe4>
    5d4c:	001a0a13          	addi	s4,s4,1
    5d50:	f55ff06f          	j	5ca4 <fl_createdirectory+0x19c>
    5d54:	00b00613          	li	a2,11
    5d58:	00410593          	addi	a1,sp,4
    5d5c:	000a8513          	mv	a0,s5
    5d60:	ffffb097          	auipc	ra,0xffffb
    5d64:	c68080e7          	jalr	-920(ra) # 9c8 <memcpy>
    5d68:	f7dff06f          	j	5ce4 <fl_createdirectory+0x1dc>
    5d6c:	00442703          	lw	a4,4(s0)
    5d70:	00042583          	lw	a1,0(s0)
    5d74:	00100813          	li	a6,1
    5d78:	00000793          	li	a5,0
    5d7c:	000a8693          	mv	a3,s5
    5d80:	00098613          	mv	a2,s3
    5d84:	65090513          	addi	a0,s2,1616
    5d88:	fffff097          	auipc	ra,0xfffff
    5d8c:	5d0080e7          	jalr	1488(ra) # 5358 <fatfs_add_file_entry>
    5d90:	00050493          	mv	s1,a0
    5d94:	f60508e3          	beqz	a0,5d04 <fl_createdirectory+0x1fc>
    5d98:	fff00793          	li	a5,-1
    5d9c:	42f42823          	sw	a5,1072(s0)
    5da0:	22f42423          	sw	a5,552(s0)
    5da4:	22f42623          	sw	a5,556(s0)
    5da8:	00042623          	sw	zero,12(s0)
    5dac:	00042423          	sw	zero,8(s0)
    5db0:	42042a23          	sw	zero,1076(s0)
    5db4:	00042823          	sw	zero,16(s0)
    5db8:	65090513          	addi	a0,s2,1616
    5dbc:	ffffd097          	auipc	ra,0xffffd
    5dc0:	55c080e7          	jalr	1372(ra) # 3318 <fatfs_fat_purge>
    5dc4:	00040513          	mv	a0,s0
    5dc8:	ffffc097          	auipc	ra,0xffffc
    5dcc:	8a4080e7          	jalr	-1884(ra) # 166c <_free_file>
    5dd0:	00100493          	li	s1,1
    5dd4:	e29ff06f          	j	5bfc <fl_createdirectory+0xf4>

00005dd8 <cmd17>:
    5dd8:	00000051 00005500                       Q....U..

00005de0 <cmd16>:
    5de0:	02000050 00001500                       P.......

00005de8 <acmd41>:
    5de8:	00004069 00000100                       i@......

00005df0 <cmd55>:
    5df0:	00000077 00000100                       w.......

00005df8 <cmd8>:
    5df8:	01000048 000087aa                       H.......

00005e00 <cmd0>:
    5e00:	00000040 00009500                       @.......

00005e08 <AUDIO>:
    5e08:	00018000                                ....

00005e0c <DISPLAY>:
    5e0c:	00014000                                .@..

00005e10 <BUTTONS>:
    5e10:	00010100                                ....

00005e14 <SDCARD>:
    5e14:	00010080                                ....

00005e18 <UART>:
    5e18:	00010020                                 ...

00005e1c <OLED_RST>:
    5e1c:	00010010                                ....

00005e20 <OLED>:
    5e20:	00010008                                ....

00005e24 <LEDS>:
    5e24:	00010004                                ....

00005e28 <font>:
    5e28:	00000000 00002f00 00030000 14000003     ...../..........
    5e38:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5e48:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5e58:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5e68:	00080800 00200000 20000000 02040810     ...... .... ....
    5e78:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5e88:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5e98:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5ea8:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5eb8:	00141400 0a110000 01000004 0007052d     ............-...
    5ec8:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5ed8:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5ee8:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5ef8:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5f08:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5f18:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5f28:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5f38:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5f48:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5f58:	003f2102 01020000 20000201 00000020     .!?........  ...
    5f68:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5f78:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5f88:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5f98:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5fa8:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5fb8:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5fc8:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5fd8:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5fe8:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5ff8:	043f2100 02010000 00000102 00000000     .!?.............
    6008:	00000001 00000003 00000005 00000007     ................
    6018:	00000009 0000000e 00000010 00000012     ................
    6028:	00000014 00000016 00000018 0000001c     ................
    6038:	0000001e 0000002f 656c6966 7325203a     ..../...file: %s
    6048:	0000000a 00006272 656c6966 746f6e20     ....rb..file not
    6058:	756f6620 203a646e 000a7325 6973756d      found: %s..musi
    6068:	69662063 6620656c 646e756f 7325203a     c file found: %s
    6078:	0000000a 79616c70 20676e69 202e2e2e     ....playing ... 
    6088:	00000000 706f502f 00000000 6d206f4e     ..../Pop....No m
    6098:	63697375 6c696620 66207365 646e756f     usic files found
    60a8:	00000a21 20202020 3d3d3d3d 6f73203d     !...    ===== so
    60b8:	2073676e 3d3d3d3d 2020203d 000a0a20     ngs =====    ...
    60c8:	203e6425 000a7325 33323130 37363534     %d> %s..01234567
    60d8:	42413938 46454443 00000000 33544146     89ABCDEF....FAT3
    60e8:	00000032 31544146 00000036 20544146     2...FAT16...FAT 
    60f8:	61746564 3a736c69 00000a0d 70795420     details:.... Typ
    6108:	253d2065 00000073 6f6f5220 69442074     e =%s... Root Di
    6118:	69462072 20747372 73756c43 20726574     r First Cluster 
    6128:	7825203d 00000a0d 54414620 67654220     = %x.... FAT Beg
    6138:	4c206e69 3d204142 25783020 000a0d78     in LBA = 0x%x...
    6148:	756c4320 72657473 67654220 4c206e69      Cluster Begin L
    6158:	3d204142 25783020 000a0d78 63655320     BA = 0x%x... Sec
    6168:	73726f74 72655020 756c4320 72657473     tors Per Cluster
    6178:	25203d20 000a0d64 5f544146 203a5346      = %d...FAT_FS: 
    6188:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    6198:	64616f6c 54414620 74656420 736c6961     load FAT details
    61a8:	64252820 0a0d2129 00000000 69440a0d      (%d)!........Di
    61b8:	74636572 2079726f 0a0d7325 00000000     rectory %s......
    61c8:	3c207325 3e524944 00000a0d 5b207325     %s <DIR>....%s [
    61d8:	62206425 73657479 000a0d5d 00000072     %d bytes]...r...

000061e8 <_cluster_size_table16>:
    61e8:	00007fa8 00000002 00040000 00000004     ................
    61f8:	00080000 00000008 00100000 00000010     ................
    6208:	00200000 00000020 00400000 00000040     .. . .....@.@...
    6218:	00800000 00000080 00000000 00000000     ................

00006228 <_cluster_size_table32>:
    6228:	00082000 00000001 01000000 00000008     . ..............
    6238:	02000000 00000010 04000000 00000020     ............ ...
    6248:	ffffffff 00000040 00000000 00000000     ....@...........

00006258 <item_count>:
    6258:	00000000                                ....

0000625c <sdcard_while_loading_callback>:
    625c:	00000000                                ....

00006260 <back_color>:
	...

00006261 <front_color>:
    6261:	                                         ...

00006264 <cursor_y>:
    6264:	00000000                                ....

00006268 <cursor_x>:
    6268:	00000000                                ....

0000626c <f_putchar>:
    626c:	00000000                                ....

00006270 <_free_file_list>:
	...

00006278 <_open_file_list>:
	...

00006280 <_filelib_valid>:
    6280:	00000000                                ....

00006284 <_filelib_init>:
    6284:	00000000                                ....

Déassemblage de la section .text.startup :

00006288 <main>:
    6288:	000017b7          	lui	a5,0x1
    628c:	ea010113          	addi	sp,sp,-352
    6290:	00006737          	lui	a4,0x6
    6294:	d5078793          	addi	a5,a5,-688 # d50 <display_putchar>
    6298:	14112e23          	sw	ra,348(sp)
    629c:	26f72623          	sw	a5,620(a4) # 626c <f_putchar>
    62a0:	14812c23          	sw	s0,344(sp)
    62a4:	14912a23          	sw	s1,340(sp)
    62a8:	15212823          	sw	s2,336(sp)
    62ac:	15312623          	sw	s3,332(sp)
    62b0:	15412423          	sw	s4,328(sp)
    62b4:	15512223          	sw	s5,324(sp)
    62b8:	15612023          	sw	s6,320(sp)
    62bc:	13712e23          	sw	s7,316(sp)
    62c0:	13812c23          	sw	s8,312(sp)
    62c4:	13912a23          	sw	s9,308(sp)
    62c8:	13a12823          	sw	s10,304(sp)
    62cc:	13b12623          	sw	s11,300(sp)
    62d0:	ffffb097          	auipc	ra,0xffffb
    62d4:	a4c080e7          	jalr	-1460(ra) # d1c <display_framebuffer>
    62d8:	00004637          	lui	a2,0x4
    62dc:	00000593          	li	a1,0
    62e0:	ffffa097          	auipc	ra,0xffffa
    62e4:	6cc080e7          	jalr	1740(ra) # 9ac <memset>
    62e8:	ffffb097          	auipc	ra,0xffffb
    62ec:	8f4080e7          	jalr	-1804(ra) # bdc <oled_init>
    62f0:	ffffb097          	auipc	ra,0xffffb
    62f4:	8f8080e7          	jalr	-1800(ra) # be8 <oled_fullscreen>
    62f8:	00000513          	li	a0,0
    62fc:	ffffb097          	auipc	ra,0xffffb
    6300:	984080e7          	jalr	-1660(ra) # c80 <oled_clear>
    6304:	000014b7          	lui	s1,0x1
    6308:	ffffa097          	auipc	ra,0xffffa
    630c:	414080e7          	jalr	1044(ra) # 71c <sdcard_init>
    6310:	00001437          	lui	s0,0x1
    6314:	ffffb097          	auipc	ra,0xffffb
    6318:	65c080e7          	jalr	1628(ra) # 1970 <fl_init>
    631c:	8c848593          	addi	a1,s1,-1848 # 8c8 <sdcard_writesector>
    6320:	87040513          	addi	a0,s0,-1936 # 870 <sdcard_readsector>
    6324:	ffffd097          	auipc	ra,0xffffd
    6328:	9f8080e7          	jalr	-1544(ra) # 2d1c <fl_attach_media>
    632c:	fe0518e3          	bnez	a0,631c <main+0x94>
    6330:	00006a37          	lui	s4,0x6
    6334:	00410593          	addi	a1,sp,4
    6338:	08ca0513          	addi	a0,s4,140 # 608c <font+0x264>
    633c:	ffffd097          	auipc	ra,0xffffd
    6340:	5f0080e7          	jalr	1520(ra) # 392c <fl_opendir>
    6344:	02050863          	beqz	a0,6374 <main+0xec>
    6348:	00006437          	lui	s0,0x6
    634c:	000064b7          	lui	s1,0x6
    6350:	51040413          	addi	s0,s0,1296 # 6510 <items>
    6354:	01010593          	addi	a1,sp,16
    6358:	00410513          	addi	a0,sp,4
    635c:	ffffe097          	auipc	ra,0xffffe
    6360:	df8080e7          	jalr	-520(ra) # 4154 <fl_readdir>
    6364:	04050c63          	beqz	a0,63bc <main+0x134>
    6368:	00410513          	addi	a0,sp,4
    636c:	ffffc097          	auipc	ra,0xffffc
    6370:	8b0080e7          	jalr	-1872(ra) # 1c1c <fl_closedir>
    6374:	000069b7          	lui	s3,0x6
    6378:	2589a783          	lw	a5,600(s3) # 6258 <item_count>
    637c:	06079c63          	bnez	a5,63f4 <main+0x16c>
    6380:	00000593          	li	a1,0
    6384:	00000513          	li	a0,0
    6388:	ffffb097          	auipc	ra,0xffffb
    638c:	9a0080e7          	jalr	-1632(ra) # d28 <display_set_cursor>
    6390:	00000593          	li	a1,0
    6394:	0ff00513          	li	a0,255
    6398:	ffffb097          	auipc	ra,0xffffb
    639c:	9a4080e7          	jalr	-1628(ra) # d3c <display_set_front_back_color>
    63a0:	00006537          	lui	a0,0x6
    63a4:	09450513          	addi	a0,a0,148 # 6094 <font+0x26c>
    63a8:	ffffb097          	auipc	ra,0xffffb
    63ac:	cf8080e7          	jalr	-776(ra) # 10a0 <printf>
    63b0:	ffffb097          	auipc	ra,0xffffb
    63b4:	ac4080e7          	jalr	-1340(ra) # e74 <display_refresh>
    63b8:	0000006f          	j	63b8 <main+0x130>
    63bc:	11414783          	lbu	a5,276(sp)
    63c0:	f8079ae3          	bnez	a5,6354 <main+0xcc>
    63c4:	2584a783          	lw	a5,600(s1) # 6258 <item_count>
    63c8:	01400613          	li	a2,20
    63cc:	01010593          	addi	a1,sp,16
    63d0:	00279513          	slli	a0,a5,0x2
    63d4:	00f50533          	add	a0,a0,a5
    63d8:	00451513          	slli	a0,a0,0x4
    63dc:	00178713          	addi	a4,a5,1
    63e0:	00a40533          	add	a0,s0,a0
    63e4:	24e4ac23          	sw	a4,600(s1)
    63e8:	ffffa097          	auipc	ra,0xffffa
    63ec:	5e0080e7          	jalr	1504(ra) # 9c8 <memcpy>
    63f0:	f65ff06f          	j	6354 <main+0xcc>
    63f4:	000067b7          	lui	a5,0x6
    63f8:	e107a483          	lw	s1,-496(a5) # 5e10 <BUTTONS>
    63fc:	000067b7          	lui	a5,0x6
    6400:	e247a783          	lw	a5,-476(a5) # 5e24 <LEDS>
    6404:	00006ab7          	lui	s5,0x6
    6408:	00000913          	li	s2,0
    640c:	00000413          	li	s0,0
    6410:	00006b37          	lui	s6,0x6
    6414:	510a8b93          	addi	s7,s5,1296 # 6510 <items>
    6418:	00006c37          	lui	s8,0x6
    641c:	00078d93          	mv	s11,a5
    6420:	00000593          	li	a1,0
    6424:	00000513          	li	a0,0
    6428:	ffffb097          	auipc	ra,0xffffb
    642c:	900080e7          	jalr	-1792(ra) # d28 <display_set_cursor>
    6430:	0ff97593          	zext.b	a1,s2
    6434:	07f58513          	addi	a0,a1,127
    6438:	0ff57513          	zext.b	a0,a0
    643c:	ffffb097          	auipc	ra,0xffffb
    6440:	900080e7          	jalr	-1792(ra) # d3c <display_set_front_back_color>
    6444:	0acb0513          	addi	a0,s6,172 # 60ac <font+0x284>
    6448:	00790913          	addi	s2,s2,7
    644c:	ffffb097          	auipc	ra,0xffffb
    6450:	c54080e7          	jalr	-940(ra) # 10a0 <printf>
    6454:	510a8d13          	addi	s10,s5,1296
    6458:	00000c93          	li	s9,0
    645c:	2589a783          	lw	a5,600(s3)
    6460:	06fcc863          	blt	s9,a5,64d0 <main+0x248>
    6464:	ffffb097          	auipc	ra,0xffffb
    6468:	a10080e7          	jalr	-1520(ra) # e74 <display_refresh>
    646c:	0004a783          	lw	a5,0(s1)
    6470:	0087f793          	andi	a5,a5,8
    6474:	00078463          	beqz	a5,647c <main+0x1f4>
    6478:	00140413          	addi	s0,s0,1
    647c:	0004a783          	lw	a5,0(s1)
    6480:	0107f793          	andi	a5,a5,16
    6484:	00078463          	beqz	a5,648c <main+0x204>
    6488:	fff40413          	addi	s0,s0,-1
    648c:	0004a783          	lw	a5,0(s1)
    6490:	0407f793          	andi	a5,a5,64
    6494:	02078263          	beqz	a5,64b8 <main+0x230>
    6498:	00241593          	slli	a1,s0,0x2
    649c:	008585b3          	add	a1,a1,s0
    64a0:	00459593          	slli	a1,a1,0x4
    64a4:	00bb85b3          	add	a1,s7,a1
    64a8:	08ca0513          	addi	a0,s4,140
    64ac:	ffffa097          	auipc	ra,0xffffa
    64b0:	be8080e7          	jalr	-1048(ra) # 94 <openMusic>
    64b4:	000da023          	sw	zero,0(s11)
    64b8:	2589a783          	lw	a5,600(s3)
    64bc:	00045463          	bgez	s0,64c4 <main+0x23c>
    64c0:	fff78413          	addi	s0,a5,-1
    64c4:	f4f44ee3          	blt	s0,a5,6420 <main+0x198>
    64c8:	00000413          	li	s0,0
    64cc:	f55ff06f          	j	6420 <main+0x198>
    64d0:	03941a63          	bne	s0,s9,6504 <main+0x27c>
    64d4:	0ff00593          	li	a1,255
    64d8:	00000513          	li	a0,0
    64dc:	ffffb097          	auipc	ra,0xffffb
    64e0:	860080e7          	jalr	-1952(ra) # d3c <display_set_front_back_color>
    64e4:	000d0613          	mv	a2,s10
    64e8:	000c8593          	mv	a1,s9
    64ec:	0c8c0513          	addi	a0,s8,200 # 60c8 <font+0x2a0>
    64f0:	ffffb097          	auipc	ra,0xffffb
    64f4:	bb0080e7          	jalr	-1104(ra) # 10a0 <printf>
    64f8:	001c8c93          	addi	s9,s9,1
    64fc:	050d0d13          	addi	s10,s10,80
    6500:	f5dff06f          	j	645c <main+0x1d4>
    6504:	00000593          	li	a1,0
    6508:	0ff00513          	li	a0,255
    650c:	fd1ff06f          	j	64dc <main+0x254>
