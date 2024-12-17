
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	4d4080e7          	jalr	1236(ra) # 4d8 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_fs+0x6704>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	b4c7a403          	lw	s0,-1204(a5) # 4b4c <AUDIO>
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
      54:	e14080e7          	jalr	-492(ra) # e64 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	df4080e7          	jalr	-524(ra) # e64 <memset>
      78:	00042783          	lw	a5,0(s0)
      7c:	fef48ee3          	beq	s1,a5,78 <clear_audio+0x5c>
      80:	00c12083          	lw	ra,12(sp)
      84:	00812403          	lw	s0,8(sp)
      88:	00412483          	lw	s1,4(sp)
      8c:	01010113          	addi	sp,sp,16
      90:	00008067          	ret

00000094 <openImage>:
      94:	fd010113          	addi	sp,sp,-48
      98:	02112623          	sw	ra,44(sp)
      9c:	02812423          	sw	s0,40(sp)
      a0:	02912223          	sw	s1,36(sp)
      a4:	00050493          	mv	s1,a0
      a8:	00001097          	auipc	ra,0x1
      ac:	12c080e7          	jalr	300(ra) # 11d4 <display_framebuffer>
      b0:	00004637          	lui	a2,0x4
      b4:	00000593          	li	a1,0
      b8:	00001097          	auipc	ra,0x1
      bc:	dac080e7          	jalr	-596(ra) # e64 <memset>
      c0:	00010413          	mv	s0,sp
      c4:	000055b7          	lui	a1,0x5
      c8:	b6458593          	addi	a1,a1,-1180 # 4b64 <SDCARD+0x4>
      cc:	00040513          	mv	a0,s0
      d0:	00010023          	sb	zero,0(sp)
      d4:	00001097          	auipc	ra,0x1
      d8:	e74080e7          	jalr	-396(ra) # f48 <strcat>
      dc:	00048593          	mv	a1,s1
      e0:	00040513          	mv	a0,s0
      e4:	00001097          	auipc	ra,0x1
      e8:	e64080e7          	jalr	-412(ra) # f48 <strcat>
      ec:	40850533          	sub	a0,a0,s0
      f0:	04000793          	li	a5,64
      f4:	02a7d863          	bge	a5,a0,124 <openImage+0x90>
      f8:	000057b7          	lui	a5,0x5
      fc:	b547a783          	lw	a5,-1196(a5) # 4b54 <LEDS>
     100:	00f00713          	li	a4,15
     104:	00005537          	lui	a0,0x5
     108:	00e7a023          	sw	a4,0(a5)
     10c:	b6c50513          	addi	a0,a0,-1172 # 4b6c <SDCARD+0xc>
     110:	00001097          	auipc	ra,0x1
     114:	460080e7          	jalr	1120(ra) # 1570 <printf>
     118:	00001097          	auipc	ra,0x1
     11c:	258080e7          	jalr	600(ra) # 1370 <display_refresh>
     120:	0000006f          	j	120 <openImage+0x8c>
     124:	00005537          	lui	a0,0x5
     128:	00040593          	mv	a1,s0
     12c:	b8450513          	addi	a0,a0,-1148 # 4b84 <SDCARD+0x24>
     130:	00001097          	auipc	ra,0x1
     134:	440080e7          	jalr	1088(ra) # 1570 <printf>
     138:	00001097          	auipc	ra,0x1
     13c:	238080e7          	jalr	568(ra) # 1370 <display_refresh>
     140:	000055b7          	lui	a1,0x5
     144:	00040513          	mv	a0,s0
     148:	b9858593          	addi	a1,a1,-1128 # 4b98 <SDCARD+0x38>
     14c:	00004097          	auipc	ra,0x4
     150:	618080e7          	jalr	1560(ra) # 4764 <fl_fopen>
     154:	00050413          	mv	s0,a0
     158:	02051863          	bnez	a0,188 <openImage+0xf4>
     15c:	00005537          	lui	a0,0x5
     160:	b9c50513          	addi	a0,a0,-1124 # 4b9c <SDCARD+0x3c>
     164:	00001097          	auipc	ra,0x1
     168:	40c080e7          	jalr	1036(ra) # 1570 <printf>
     16c:	00001097          	auipc	ra,0x1
     170:	204080e7          	jalr	516(ra) # 1370 <display_refresh>
     174:	02c12083          	lw	ra,44(sp)
     178:	02812403          	lw	s0,40(sp)
     17c:	02412483          	lw	s1,36(sp)
     180:	03010113          	addi	sp,sp,48
     184:	00008067          	ret
     188:	00005537          	lui	a0,0x5
     18c:	bb050513          	addi	a0,a0,-1104 # 4bb0 <SDCARD+0x50>
     190:	00001097          	auipc	ra,0x1
     194:	3e0080e7          	jalr	992(ra) # 1570 <printf>
     198:	00001097          	auipc	ra,0x1
     19c:	1d8080e7          	jalr	472(ra) # 1370 <display_refresh>
     1a0:	00001097          	auipc	ra,0x1
     1a4:	034080e7          	jalr	52(ra) # 11d4 <display_framebuffer>
     1a8:	00040693          	mv	a3,s0
     1ac:	00004637          	lui	a2,0x4
     1b0:	00100593          	li	a1,1
     1b4:	00004097          	auipc	ra,0x4
     1b8:	fd0080e7          	jalr	-48(ra) # 4184 <fl_fread>
     1bc:	00001097          	auipc	ra,0x1
     1c0:	1b4080e7          	jalr	436(ra) # 1370 <display_refresh>
     1c4:	00040513          	mv	a0,s0
     1c8:	00004097          	auipc	ra,0x4
     1cc:	edc080e7          	jalr	-292(ra) # 40a4 <fl_fclose>
     1d0:	fa5ff06f          	j	174 <openImage+0xe0>

000001d4 <selectImage>:
     1d4:	000055b7          	lui	a1,0x5
     1d8:	ff010113          	addi	sp,sp,-16
     1dc:	00400613          	li	a2,4
     1e0:	bc058593          	addi	a1,a1,-1088 # 4bc0 <SDCARD+0x60>
     1e4:	00112623          	sw	ra,12(sp)
     1e8:	00001097          	auipc	ra,0x1
     1ec:	cdc080e7          	jalr	-804(ra) # ec4 <strncmp>
     1f0:	02051263          	bnez	a0,214 <selectImage+0x40>
     1f4:	00001097          	auipc	ra,0x1
     1f8:	17c080e7          	jalr	380(ra) # 1370 <display_refresh>
     1fc:	00c12083          	lw	ra,12(sp)
     200:	00005537          	lui	a0,0x5
     204:	bc850513          	addi	a0,a0,-1080 # 4bc8 <SDCARD+0x68>
     208:	01010113          	addi	sp,sp,16
     20c:	00000317          	auipc	t1,0x0
     210:	e8830067          	jr	-376(t1) # 94 <openImage>
     214:	00c12083          	lw	ra,12(sp)
     218:	01010113          	addi	sp,sp,16
     21c:	00008067          	ret

00000220 <openMusic>:
     220:	fb010113          	addi	sp,sp,-80
     224:	000057b7          	lui	a5,0x5
     228:	04812423          	sw	s0,72(sp)
     22c:	b547a403          	lw	s0,-1196(a5) # 4b54 <LEDS>
     230:	04112623          	sw	ra,76(sp)
     234:	0ff00793          	li	a5,255
     238:	04912223          	sw	s1,68(sp)
     23c:	05212023          	sw	s2,64(sp)
     240:	03312e23          	sw	s3,60(sp)
     244:	03412c23          	sw	s4,56(sp)
     248:	03512a23          	sw	s5,52(sp)
     24c:	03612823          	sw	s6,48(sp)
     250:	03712623          	sw	s7,44(sp)
     254:	03812423          	sw	s8,40(sp)
     258:	03912223          	sw	s9,36(sp)
     25c:	00f42023          	sw	a5,0(s0)
     260:	00058993          	mv	s3,a1
     264:	00050913          	mv	s2,a0
     268:	00001097          	auipc	ra,0x1
     26c:	f6c080e7          	jalr	-148(ra) # 11d4 <display_framebuffer>
     270:	00004637          	lui	a2,0x4
     274:	00000593          	li	a1,0
     278:	00001097          	auipc	ra,0x1
     27c:	bec080e7          	jalr	-1044(ra) # e64 <memset>
     280:	00001097          	auipc	ra,0x1
     284:	0f0080e7          	jalr	240(ra) # 1370 <display_refresh>
     288:	00100793          	li	a5,1
     28c:	00f42023          	sw	a5,0(s0)
     290:	00000593          	li	a1,0
     294:	00000513          	li	a0,0
     298:	00001097          	auipc	ra,0x1
     29c:	f48080e7          	jalr	-184(ra) # 11e0 <display_set_cursor>
     2a0:	00000593          	li	a1,0
     2a4:	0ff00513          	li	a0,255
     2a8:	00001097          	auipc	ra,0x1
     2ac:	f4c080e7          	jalr	-180(ra) # 11f4 <display_set_front_back_color>
     2b0:	00001097          	auipc	ra,0x1
     2b4:	0c0080e7          	jalr	192(ra) # 1370 <display_refresh>
     2b8:	00200793          	li	a5,2
     2bc:	00010493          	mv	s1,sp
     2c0:	00f42023          	sw	a5,0(s0)
     2c4:	00090593          	mv	a1,s2
     2c8:	00048513          	mv	a0,s1
     2cc:	00010023          	sb	zero,0(sp)
     2d0:	00001097          	auipc	ra,0x1
     2d4:	c78080e7          	jalr	-904(ra) # f48 <strcat>
     2d8:	000055b7          	lui	a1,0x5
     2dc:	b6858593          	addi	a1,a1,-1176 # 4b68 <SDCARD+0x8>
     2e0:	00048513          	mv	a0,s1
     2e4:	00001097          	auipc	ra,0x1
     2e8:	c64080e7          	jalr	-924(ra) # f48 <strcat>
     2ec:	00098593          	mv	a1,s3
     2f0:	00048513          	mv	a0,s1
     2f4:	00001097          	auipc	ra,0x1
     2f8:	c54080e7          	jalr	-940(ra) # f48 <strcat>
     2fc:	40950533          	sub	a0,a0,s1
     300:	04000793          	li	a5,64
     304:	02a7d463          	bge	a5,a0,32c <openMusic+0x10c>
     308:	00f00793          	li	a5,15
     30c:	00005537          	lui	a0,0x5
     310:	00f42023          	sw	a5,0(s0)
     314:	b6c50513          	addi	a0,a0,-1172 # 4b6c <SDCARD+0xc>
     318:	00001097          	auipc	ra,0x1
     31c:	258080e7          	jalr	600(ra) # 1570 <printf>
     320:	00001097          	auipc	ra,0x1
     324:	050080e7          	jalr	80(ra) # 1370 <display_refresh>
     328:	0000006f          	j	328 <openMusic+0x108>
     32c:	00400793          	li	a5,4
     330:	00005537          	lui	a0,0x5
     334:	00f42023          	sw	a5,0(s0)
     338:	00048593          	mv	a1,s1
     33c:	bd050513          	addi	a0,a0,-1072 # 4bd0 <SDCARD+0x70>
     340:	00001097          	auipc	ra,0x1
     344:	230080e7          	jalr	560(ra) # 1570 <printf>
     348:	00001097          	auipc	ra,0x1
     34c:	028080e7          	jalr	40(ra) # 1370 <display_refresh>
     350:	00005537          	lui	a0,0x5
     354:	00090593          	mv	a1,s2
     358:	bdc50513          	addi	a0,a0,-1060 # 4bdc <SDCARD+0x7c>
     35c:	00001097          	auipc	ra,0x1
     360:	214080e7          	jalr	532(ra) # 1570 <printf>
     364:	00001097          	auipc	ra,0x1
     368:	00c080e7          	jalr	12(ra) # 1370 <display_refresh>
     36c:	00090513          	mv	a0,s2
     370:	00000097          	auipc	ra,0x0
     374:	e64080e7          	jalr	-412(ra) # 1d4 <selectImage>
     378:	000055b7          	lui	a1,0x5
     37c:	b9858593          	addi	a1,a1,-1128 # 4b98 <SDCARD+0x38>
     380:	00048513          	mv	a0,s1
     384:	00004097          	auipc	ra,0x4
     388:	3e0080e7          	jalr	992(ra) # 4764 <fl_fopen>
     38c:	00050913          	mv	s2,a0
     390:	04051e63          	bnez	a0,3ec <openMusic+0x1cc>
     394:	00005537          	lui	a0,0x5
     398:	00048593          	mv	a1,s1
     39c:	be850513          	addi	a0,a0,-1048 # 4be8 <SDCARD+0x88>
     3a0:	00001097          	auipc	ra,0x1
     3a4:	1d0080e7          	jalr	464(ra) # 1570 <printf>
     3a8:	00001097          	auipc	ra,0x1
     3ac:	fc8080e7          	jalr	-56(ra) # 1370 <display_refresh>
     3b0:	00800793          	li	a5,8
     3b4:	04c12083          	lw	ra,76(sp)
     3b8:	00f42023          	sw	a5,0(s0)
     3bc:	04812403          	lw	s0,72(sp)
     3c0:	04412483          	lw	s1,68(sp)
     3c4:	04012903          	lw	s2,64(sp)
     3c8:	03c12983          	lw	s3,60(sp)
     3cc:	03812a03          	lw	s4,56(sp)
     3d0:	03412a83          	lw	s5,52(sp)
     3d4:	03012b03          	lw	s6,48(sp)
     3d8:	02c12b83          	lw	s7,44(sp)
     3dc:	02812c03          	lw	s8,40(sp)
     3e0:	02412c83          	lw	s9,36(sp)
     3e4:	05010113          	addi	sp,sp,80
     3e8:	00008067          	ret
     3ec:	01000793          	li	a5,16
     3f0:	00f42023          	sw	a5,0(s0)
     3f4:	000057b7          	lui	a5,0x5
     3f8:	b4c7ab03          	lw	s6,-1204(a5) # 4b4c <AUDIO>
     3fc:	000057b7          	lui	a5,0x5
     400:	b507aa83          	lw	s5,-1200(a5) # 4b50 <BUTTONS>
     404:	00100a13          	li	s4,1
     408:	00000993          	li	s3,0
     40c:	00100493          	li	s1,1
     410:	1ff00b93          	li	s7,511
     414:	08000c13          	li	s8,128
     418:	000b2c83          	lw	s9,0(s6)
     41c:	040a0a63          	beqz	s4,470 <openMusic+0x250>
     420:	00090693          	mv	a3,s2
     424:	20000613          	li	a2,512
     428:	00100593          	li	a1,1
     42c:	000c8513          	mv	a0,s9
     430:	00004097          	auipc	ra,0x4
     434:	d54080e7          	jalr	-684(ra) # 4184 <fl_fread>
     438:	02abc863          	blt	s7,a0,468 <openMusic+0x248>
     43c:	00001097          	auipc	ra,0x1
     440:	d98080e7          	jalr	-616(ra) # 11d4 <display_framebuffer>
     444:	00004637          	lui	a2,0x4
     448:	00000593          	li	a1,0
     44c:	00001097          	auipc	ra,0x1
     450:	a18080e7          	jalr	-1512(ra) # e64 <memset>
     454:	00090513          	mv	a0,s2
     458:	00004097          	auipc	ra,0x4
     45c:	c4c080e7          	jalr	-948(ra) # 40a4 <fl_fclose>
     460:	02000793          	li	a5,32
     464:	f51ff06f          	j	3b4 <openMusic+0x194>
     468:	000b2783          	lw	a5,0(s6)
     46c:	fefc8ee3          	beq	s9,a5,468 <openMusic+0x248>
     470:	000aa783          	lw	a5,0(s5)
     474:	0407f793          	andi	a5,a5,64
     478:	00078e63          	beqz	a5,494 <openMusic+0x274>
     47c:	00000097          	auipc	ra,0x0
     480:	ba0080e7          	jalr	-1120(ra) # 1c <clear_audio>
     484:	000aa783          	lw	a5,0(s5)
     488:	0407f793          	andi	a5,a5,64
     48c:	fe079ce3          	bnez	a5,484 <openMusic+0x264>
     490:	001a4a13          	xori	s4,s4,1
     494:	000aa783          	lw	a5,0(s5)
     498:	0207f793          	andi	a5,a5,32
     49c:	00078863          	beqz	a5,4ac <openMusic+0x28c>
     4a0:	00000097          	auipc	ra,0x0
     4a4:	b7c080e7          	jalr	-1156(ra) # 1c <clear_audio>
     4a8:	fadff06f          	j	454 <openMusic+0x234>
     4ac:	01848663          	beq	s1,s8,4b8 <openMusic+0x298>
     4b0:	00100793          	li	a5,1
     4b4:	00f49663          	bne	s1,a5,4c0 <openMusic+0x2a0>
     4b8:	00100793          	li	a5,1
     4bc:	413789b3          	sub	s3,a5,s3
     4c0:	00098863          	beqz	s3,4d0 <openMusic+0x2b0>
     4c4:	00149493          	slli	s1,s1,0x1
     4c8:	00942023          	sw	s1,0(s0)
     4cc:	f4dff06f          	j	418 <openMusic+0x1f8>
     4d0:	4014d493          	srai	s1,s1,0x1
     4d4:	ff5ff06f          	j	4c8 <openMusic+0x2a8>

000004d8 <main>:
     4d8:	000057b7          	lui	a5,0x5
     4dc:	b547a783          	lw	a5,-1196(a5) # 4b54 <LEDS>
     4e0:	ea010113          	addi	sp,sp,-352
     4e4:	14112e23          	sw	ra,348(sp)
     4e8:	14812c23          	sw	s0,344(sp)
     4ec:	14912a23          	sw	s1,340(sp)
     4f0:	15212823          	sw	s2,336(sp)
     4f4:	15312623          	sw	s3,332(sp)
     4f8:	15412423          	sw	s4,328(sp)
     4fc:	15512223          	sw	s5,324(sp)
     500:	15612023          	sw	s6,320(sp)
     504:	13712e23          	sw	s7,316(sp)
     508:	13812c23          	sw	s8,312(sp)
     50c:	13912a23          	sw	s9,308(sp)
     510:	13a12823          	sw	s10,304(sp)
     514:	13b12623          	sw	s11,300(sp)
     518:	0007a023          	sw	zero,0(a5)
     51c:	000017b7          	lui	a5,0x1
     520:	00005737          	lui	a4,0x5
     524:	20878793          	addi	a5,a5,520 # 1208 <display_putchar>
     528:	e8f72623          	sw	a5,-372(a4) # 4e8c <f_putchar>
     52c:	00001097          	auipc	ra,0x1
     530:	b68080e7          	jalr	-1176(ra) # 1094 <oled_init>
     534:	00001097          	auipc	ra,0x1
     538:	b6c080e7          	jalr	-1172(ra) # 10a0 <oled_fullscreen>
     53c:	00000513          	li	a0,0
     540:	00001097          	auipc	ra,0x1
     544:	bf8080e7          	jalr	-1032(ra) # 1138 <oled_clear>
     548:	000054b7          	lui	s1,0x5
     54c:	000055b7          	lui	a1,0x5
     550:	02000613          	li	a2,32
     554:	b6858593          	addi	a1,a1,-1176 # 4b68 <SDCARD+0x8>
     558:	01048513          	addi	a0,s1,16 # 5010 <path>
     55c:	00001097          	auipc	ra,0x1
     560:	924080e7          	jalr	-1756(ra) # e80 <memcpy>
     564:	00000097          	auipc	ra,0x0
     568:	698080e7          	jalr	1688(ra) # bfc <sdcard_init>
     56c:	00001937          	lui	s2,0x1
     570:	00001097          	auipc	ra,0x1
     574:	5d8080e7          	jalr	1496(ra) # 1b48 <fl_init>
     578:	00001437          	lui	s0,0x1
     57c:	da890593          	addi	a1,s2,-600 # da8 <sdcard_writesector>
     580:	d5040513          	addi	a0,s0,-688 # d50 <sdcard_readsector>
     584:	00002097          	auipc	ra,0x2
     588:	54c080e7          	jalr	1356(ra) # 2ad0 <fl_attach_media>
     58c:	fe0518e3          	bnez	a0,57c <main+0xa4>
     590:	000057b7          	lui	a5,0x5
     594:	b507aa83          	lw	s5,-1200(a5) # 4b50 <BUTTONS>
     598:	000059b7          	lui	s3,0x5
     59c:	00005bb7          	lui	s7,0x5
     5a0:	00000b13          	li	s6,0
     5a4:	00000413          	li	s0,0
     5a8:	ed098993          	addi	s3,s3,-304 # 4ed0 <item>
     5ac:	00005c37          	lui	s8,0x5
     5b0:	00005cb7          	lui	s9,0x5
     5b4:	ea8b8d13          	addi	s10,s7,-344 # 4ea8 <is_music>
     5b8:	00001097          	auipc	ra,0x1
     5bc:	c1c080e7          	jalr	-996(ra) # 11d4 <display_framebuffer>
     5c0:	00004637          	lui	a2,0x4
     5c4:	00000593          	li	a1,0
     5c8:	00001097          	auipc	ra,0x1
     5cc:	89c080e7          	jalr	-1892(ra) # e64 <memset>
     5d0:	00001097          	auipc	ra,0x1
     5d4:	da0080e7          	jalr	-608(ra) # 1370 <display_refresh>
     5d8:	00000593          	li	a1,0
     5dc:	00000513          	li	a0,0
     5e0:	00001097          	auipc	ra,0x1
     5e4:	c00080e7          	jalr	-1024(ra) # 11e0 <display_set_cursor>
     5e8:	0ff00593          	li	a1,255
     5ec:	00000513          	li	a0,0
     5f0:	00001097          	auipc	ra,0x1
     5f4:	c04080e7          	jalr	-1020(ra) # 11f4 <display_set_front_back_color>
     5f8:	00001097          	auipc	ra,0x1
     5fc:	d78080e7          	jalr	-648(ra) # 1370 <display_refresh>
     600:	00000593          	li	a1,0
     604:	0ff00513          	li	a0,255
     608:	00001097          	auipc	ra,0x1
     60c:	bec080e7          	jalr	-1044(ra) # 11f4 <display_set_front_back_color>
     610:	00410593          	addi	a1,sp,4
     614:	01048513          	addi	a0,s1,16
     618:	00003097          	auipc	ra,0x3
     61c:	ae0080e7          	jalr	-1312(ra) # 30f8 <fl_opendir>
     620:	00000913          	li	s2,0
     624:	02050663          	beqz	a0,650 <main+0x178>
     628:	00098a13          	mv	s4,s3
     62c:	ea8b8d93          	addi	s11,s7,-344
     630:	01010593          	addi	a1,sp,16
     634:	00410513          	addi	a0,sp,4
     638:	00003097          	auipc	ra,0x3
     63c:	180080e7          	jalr	384(ra) # 37b8 <fl_readdir>
     640:	08050e63          	beqz	a0,6dc <main+0x204>
     644:	00410513          	addi	a0,sp,4
     648:	00001097          	auipc	ra,0x1
     64c:	570080e7          	jalr	1392(ra) # 1bb8 <fl_closedir>
     650:	00000593          	li	a1,0
     654:	00000513          	li	a0,0
     658:	00001097          	auipc	ra,0x1
     65c:	b88080e7          	jalr	-1144(ra) # 11e0 <display_set_cursor>
     660:	0ffb7593          	zext.b	a1,s6
     664:	07f58513          	addi	a0,a1,127
     668:	0ff57513          	zext.b	a0,a0
     66c:	00001097          	auipc	ra,0x1
     670:	b88080e7          	jalr	-1144(ra) # 11f4 <display_set_front_back_color>
     674:	bf8c0513          	addi	a0,s8,-1032 # 4bf8 <SDCARD+0x98>
     678:	007b0b13          	addi	s6,s6,7
     67c:	00001097          	auipc	ra,0x1
     680:	ef4080e7          	jalr	-268(ra) # 1570 <printf>
     684:	00098d93          	mv	s11,s3
     688:	00000a13          	li	s4,0
     68c:	092a1063          	bne	s4,s2,70c <main+0x234>
     690:	00001097          	auipc	ra,0x1
     694:	ce0080e7          	jalr	-800(ra) # 1370 <display_refresh>
     698:	000aa783          	lw	a5,0(s5)
     69c:	0087f793          	andi	a5,a5,8
     6a0:	00078463          	beqz	a5,6a8 <main+0x1d0>
     6a4:	fff40413          	addi	s0,s0,-1
     6a8:	000aa783          	lw	a5,0(s5)
     6ac:	0107f793          	andi	a5,a5,16
     6b0:	00078463          	beqz	a5,6b8 <main+0x1e0>
     6b4:	00140413          	addi	s0,s0,1
     6b8:	000aa783          	lw	a5,0(s5)
     6bc:	0207f793          	andi	a5,a5,32
     6c0:	08078663          	beqz	a5,74c <main+0x274>
     6c4:	000055b7          	lui	a1,0x5
     6c8:	03058593          	addi	a1,a1,48 # 5030 <path_history>
     6cc:	01048513          	addi	a0,s1,16
     6d0:	00001097          	auipc	ra,0x1
     6d4:	858080e7          	jalr	-1960(ra) # f28 <strcpy>
     6d8:	ee1ff06f          	j	5b8 <main+0xe0>
     6dc:	000a0513          	mv	a0,s4
     6e0:	02000613          	li	a2,32
     6e4:	01010593          	addi	a1,sp,16
     6e8:	00000097          	auipc	ra,0x0
     6ec:	798080e7          	jalr	1944(ra) # e80 <memcpy>
     6f0:	11414783          	lbu	a5,276(sp)
     6f4:	00190913          	addi	s2,s2,1
     6f8:	020a0a13          	addi	s4,s4,32
     6fc:	0017b793          	seqz	a5,a5
     700:	00fda023          	sw	a5,0(s11)
     704:	004d8d93          	addi	s11,s11,4
     708:	f29ff06f          	j	630 <main+0x158>
     70c:	03441a63          	bne	s0,s4,740 <main+0x268>
     710:	0ff00593          	li	a1,255
     714:	00000513          	li	a0,0
     718:	00001097          	auipc	ra,0x1
     71c:	adc080e7          	jalr	-1316(ra) # 11f4 <display_set_front_back_color>
     720:	000d8613          	mv	a2,s11
     724:	000a0593          	mv	a1,s4
     728:	c14c8513          	addi	a0,s9,-1004 # 4c14 <SDCARD+0xb4>
     72c:	00001097          	auipc	ra,0x1
     730:	e44080e7          	jalr	-444(ra) # 1570 <printf>
     734:	001a0a13          	addi	s4,s4,1
     738:	020d8d93          	addi	s11,s11,32
     73c:	f51ff06f          	j	68c <main+0x1b4>
     740:	00000593          	li	a1,0
     744:	0ff00513          	li	a0,255
     748:	fd1ff06f          	j	718 <main+0x240>
     74c:	000aa783          	lw	a5,0(s5)
     750:	0407f793          	andi	a5,a5,64
     754:	02078663          	beqz	a5,780 <main+0x2a8>
     758:	00241793          	slli	a5,s0,0x2
     75c:	00fd07b3          	add	a5,s10,a5
     760:	0007a783          	lw	a5,0(a5)
     764:	00541a13          	slli	s4,s0,0x5
     768:	01498a33          	add	s4,s3,s4
     76c:	02078463          	beqz	a5,794 <main+0x2bc>
     770:	000a0593          	mv	a1,s4
     774:	01048513          	addi	a0,s1,16
     778:	00000097          	auipc	ra,0x0
     77c:	aa8080e7          	jalr	-1368(ra) # 220 <openMusic>
     780:	00045463          	bgez	s0,788 <main+0x2b0>
     784:	fff90413          	addi	s0,s2,-1
     788:	ed2444e3          	blt	s0,s2,650 <main+0x178>
     78c:	00000413          	li	s0,0
     790:	ec1ff06f          	j	650 <main+0x178>
     794:	00005537          	lui	a0,0x5
     798:	01048593          	addi	a1,s1,16
     79c:	02000613          	li	a2,32
     7a0:	03050513          	addi	a0,a0,48 # 5030 <path_history>
     7a4:	00000097          	auipc	ra,0x0
     7a8:	6dc080e7          	jalr	1756(ra) # e80 <memcpy>
     7ac:	000a0593          	mv	a1,s4
     7b0:	01048513          	addi	a0,s1,16
     7b4:	00000097          	auipc	ra,0x0
     7b8:	794080e7          	jalr	1940(ra) # f48 <strcat>
     7bc:	dfdff06f          	j	5b8 <main+0xe0>

000007c0 <pause>:
     7c0:	c0002773          	rdcycle	a4
     7c4:	c00027f3          	rdcycle	a5
     7c8:	40e787b3          	sub	a5,a5,a4
     7cc:	fea7ece3          	bltu	a5,a0,7c4 <pause+0x4>
     7d0:	00008067          	ret

000007d4 <sdcard_idle>:
     7d4:	00008067          	ret

000007d8 <sdcard_select>:
     7d8:	000057b7          	lui	a5,0x5
     7dc:	b607a783          	lw	a5,-1184(a5) # 4b60 <SDCARD>
     7e0:	00200713          	li	a4,2
     7e4:	00e7a023          	sw	a4,0(a5)
     7e8:	00008067          	ret

000007ec <sdcard_ponder>:
     7ec:	000056b7          	lui	a3,0x5
     7f0:	b606a603          	lw	a2,-1184(a3) # 4b60 <SDCARD>
     7f4:	01000793          	li	a5,16
     7f8:	00000713          	li	a4,0
     7fc:	00100693          	li	a3,1
     800:	00676593          	ori	a1,a4,6
     804:	00b62023          	sw	a1,0(a2) # 4000 <_write_sectors+0x19c>
     808:	40e68733          	sub	a4,a3,a4
     80c:	00000013          	nop
     810:	fff78793          	addi	a5,a5,-1
     814:	fe0796e3          	bnez	a5,800 <sdcard_ponder+0x14>
     818:	00008067          	ret

0000081c <sdcard_unselect>:
     81c:	000057b7          	lui	a5,0x5
     820:	b607a783          	lw	a5,-1184(a5) # 4b60 <SDCARD>
     824:	00600713          	li	a4,6
     828:	00e7a023          	sw	a4,0(a5)
     82c:	00008067          	ret

00000830 <sdcard_send>:
     830:	000057b7          	lui	a5,0x5
     834:	b607a783          	lw	a5,-1184(a5) # 4b60 <SDCARD>
     838:	00655713          	srli	a4,a0,0x6
     83c:	00277713          	andi	a4,a4,2
     840:	00e7a023          	sw	a4,0(a5)
     844:	00176713          	ori	a4,a4,1
     848:	00e7a023          	sw	a4,0(a5)
     84c:	00555713          	srli	a4,a0,0x5
     850:	00277713          	andi	a4,a4,2
     854:	00e7a023          	sw	a4,0(a5)
     858:	00176713          	ori	a4,a4,1
     85c:	00e7a023          	sw	a4,0(a5)
     860:	00455713          	srli	a4,a0,0x4
     864:	00277713          	andi	a4,a4,2
     868:	00e7a023          	sw	a4,0(a5)
     86c:	00176713          	ori	a4,a4,1
     870:	00e7a023          	sw	a4,0(a5)
     874:	00355713          	srli	a4,a0,0x3
     878:	00277713          	andi	a4,a4,2
     87c:	00e7a023          	sw	a4,0(a5)
     880:	00176713          	ori	a4,a4,1
     884:	00e7a023          	sw	a4,0(a5)
     888:	00255713          	srli	a4,a0,0x2
     88c:	00277713          	andi	a4,a4,2
     890:	00e7a023          	sw	a4,0(a5)
     894:	00176713          	ori	a4,a4,1
     898:	00e7a023          	sw	a4,0(a5)
     89c:	00155713          	srli	a4,a0,0x1
     8a0:	00277713          	andi	a4,a4,2
     8a4:	00e7a023          	sw	a4,0(a5)
     8a8:	00176713          	ori	a4,a4,1
     8ac:	00e7a023          	sw	a4,0(a5)
     8b0:	00257713          	andi	a4,a0,2
     8b4:	00e7a023          	sw	a4,0(a5)
     8b8:	00151513          	slli	a0,a0,0x1
     8bc:	00176713          	ori	a4,a4,1
     8c0:	00e7a023          	sw	a4,0(a5)
     8c4:	00257513          	andi	a0,a0,2
     8c8:	00a7a023          	sw	a0,0(a5)
     8cc:	00156513          	ori	a0,a0,1
     8d0:	00a7a023          	sw	a0,0(a5)
     8d4:	00200713          	li	a4,2
     8d8:	00e7a023          	sw	a4,0(a5)
     8dc:	000057b7          	lui	a5,0x5
     8e0:	e787a783          	lw	a5,-392(a5) # 4e78 <sdcard_while_loading_callback>
     8e4:	00078067          	jr	a5

000008e8 <sdcard_read>:
     8e8:	fd010113          	addi	sp,sp,-48
     8ec:	fff50793          	addi	a5,a0,-1
     8f0:	01312e23          	sw	s3,28(sp)
     8f4:	00100993          	li	s3,1
     8f8:	00f999b3          	sll	s3,s3,a5
     8fc:	000057b7          	lui	a5,0x5
     900:	01512a23          	sw	s5,20(sp)
     904:	b607aa83          	lw	s5,-1184(a5) # 4b60 <SDCARD>
     908:	02812423          	sw	s0,40(sp)
     90c:	02912223          	sw	s1,36(sp)
     910:	03212023          	sw	s2,32(sp)
     914:	01412c23          	sw	s4,24(sp)
     918:	01612823          	sw	s6,16(sp)
     91c:	01712623          	sw	s7,12(sp)
     920:	01812423          	sw	s8,8(sp)
     924:	02112623          	sw	ra,44(sp)
     928:	00050493          	mv	s1,a0
     92c:	00058a13          	mv	s4,a1
     930:	0ff00413          	li	s0,255
     934:	00000913          	li	s2,0
     938:	00300b13          	li	s6,3
     93c:	00200b93          	li	s7,2
     940:	00005c37          	lui	s8,0x5
     944:	040a0063          	beqz	s4,984 <sdcard_read+0x9c>
     948:	0089f7b3          	and	a5,s3,s0
     94c:	02079e63          	bnez	a5,988 <sdcard_read+0xa0>
     950:	02c12083          	lw	ra,44(sp)
     954:	0ff47513          	zext.b	a0,s0
     958:	02812403          	lw	s0,40(sp)
     95c:	02412483          	lw	s1,36(sp)
     960:	02012903          	lw	s2,32(sp)
     964:	01c12983          	lw	s3,28(sp)
     968:	01812a03          	lw	s4,24(sp)
     96c:	01412a83          	lw	s5,20(sp)
     970:	01012b03          	lw	s6,16(sp)
     974:	00c12b83          	lw	s7,12(sp)
     978:	00812c03          	lw	s8,8(sp)
     97c:	03010113          	addi	sp,sp,48
     980:	00008067          	ret
     984:	fc9956e3          	bge	s2,s1,950 <sdcard_read+0x68>
     988:	016aa023          	sw	s6,0(s5)
     98c:	017aa023          	sw	s7,0(s5)
     990:	000aa783          	lw	a5,0(s5)
     994:	00141413          	slli	s0,s0,0x1
     998:	00190913          	addi	s2,s2,1
     99c:	00f46433          	or	s0,s0,a5
     9a0:	e78c2783          	lw	a5,-392(s8) # 4e78 <sdcard_while_loading_callback>
     9a4:	000780e7          	jalr	a5
     9a8:	f9dff06f          	j	944 <sdcard_read+0x5c>

000009ac <sdcard_get>:
     9ac:	fe010113          	addi	sp,sp,-32
     9b0:	00112e23          	sw	ra,28(sp)
     9b4:	00812c23          	sw	s0,24(sp)
     9b8:	00912a23          	sw	s1,20(sp)
     9bc:	00050413          	mv	s0,a0
     9c0:	00b12623          	sw	a1,12(sp)
     9c4:	00000097          	auipc	ra,0x0
     9c8:	e14080e7          	jalr	-492(ra) # 7d8 <sdcard_select>
     9cc:	00c12583          	lw	a1,12(sp)
     9d0:	00040513          	mv	a0,s0
     9d4:	00100493          	li	s1,1
     9d8:	00000097          	auipc	ra,0x0
     9dc:	f10080e7          	jalr	-240(ra) # 8e8 <sdcard_read>
     9e0:	00345413          	srli	s0,s0,0x3
     9e4:	0284c463          	blt	s1,s0,a0c <sdcard_get+0x60>
     9e8:	00a12623          	sw	a0,12(sp)
     9ec:	00000097          	auipc	ra,0x0
     9f0:	e30080e7          	jalr	-464(ra) # 81c <sdcard_unselect>
     9f4:	01c12083          	lw	ra,28(sp)
     9f8:	01812403          	lw	s0,24(sp)
     9fc:	00c12503          	lw	a0,12(sp)
     a00:	01412483          	lw	s1,20(sp)
     a04:	02010113          	addi	sp,sp,32
     a08:	00008067          	ret
     a0c:	00000593          	li	a1,0
     a10:	00800513          	li	a0,8
     a14:	00000097          	auipc	ra,0x0
     a18:	ed4080e7          	jalr	-300(ra) # 8e8 <sdcard_read>
     a1c:	00148493          	addi	s1,s1,1
     a20:	fc5ff06f          	j	9e4 <sdcard_get+0x38>

00000a24 <sdcard_cmd>:
     a24:	ff010113          	addi	sp,sp,-16
     a28:	00812423          	sw	s0,8(sp)
     a2c:	00912223          	sw	s1,4(sp)
     a30:	01212023          	sw	s2,0(sp)
     a34:	00112623          	sw	ra,12(sp)
     a38:	00050493          	mv	s1,a0
     a3c:	00000413          	li	s0,0
     a40:	00000097          	auipc	ra,0x0
     a44:	d98080e7          	jalr	-616(ra) # 7d8 <sdcard_select>
     a48:	00600913          	li	s2,6
     a4c:	008487b3          	add	a5,s1,s0
     a50:	0007c503          	lbu	a0,0(a5)
     a54:	00140413          	addi	s0,s0,1
     a58:	00000097          	auipc	ra,0x0
     a5c:	dd8080e7          	jalr	-552(ra) # 830 <sdcard_send>
     a60:	ff2416e3          	bne	s0,s2,a4c <sdcard_cmd+0x28>
     a64:	00812403          	lw	s0,8(sp)
     a68:	00c12083          	lw	ra,12(sp)
     a6c:	00412483          	lw	s1,4(sp)
     a70:	00012903          	lw	s2,0(sp)
     a74:	01010113          	addi	sp,sp,16
     a78:	00000317          	auipc	t1,0x0
     a7c:	da430067          	jr	-604(t1) # 81c <sdcard_unselect>

00000a80 <sdcard_start_sector>:
     a80:	ff010113          	addi	sp,sp,-16
     a84:	00112623          	sw	ra,12(sp)
     a88:	00812423          	sw	s0,8(sp)
     a8c:	00050413          	mv	s0,a0
     a90:	00000097          	auipc	ra,0x0
     a94:	d48080e7          	jalr	-696(ra) # 7d8 <sdcard_select>
     a98:	05100513          	li	a0,81
     a9c:	00000097          	auipc	ra,0x0
     aa0:	d94080e7          	jalr	-620(ra) # 830 <sdcard_send>
     aa4:	01845513          	srli	a0,s0,0x18
     aa8:	00000097          	auipc	ra,0x0
     aac:	d88080e7          	jalr	-632(ra) # 830 <sdcard_send>
     ab0:	41045513          	srai	a0,s0,0x10
     ab4:	0ff57513          	zext.b	a0,a0
     ab8:	00000097          	auipc	ra,0x0
     abc:	d78080e7          	jalr	-648(ra) # 830 <sdcard_send>
     ac0:	40845513          	srai	a0,s0,0x8
     ac4:	0ff57513          	zext.b	a0,a0
     ac8:	00000097          	auipc	ra,0x0
     acc:	d68080e7          	jalr	-664(ra) # 830 <sdcard_send>
     ad0:	0ff47513          	zext.b	a0,s0
     ad4:	00000097          	auipc	ra,0x0
     ad8:	d5c080e7          	jalr	-676(ra) # 830 <sdcard_send>
     adc:	05500513          	li	a0,85
     ae0:	00000097          	auipc	ra,0x0
     ae4:	d50080e7          	jalr	-688(ra) # 830 <sdcard_send>
     ae8:	00000097          	auipc	ra,0x0
     aec:	d34080e7          	jalr	-716(ra) # 81c <sdcard_unselect>
     af0:	00812403          	lw	s0,8(sp)
     af4:	00c12083          	lw	ra,12(sp)
     af8:	00100593          	li	a1,1
     afc:	00800513          	li	a0,8
     b00:	01010113          	addi	sp,sp,16
     b04:	00000317          	auipc	t1,0x0
     b08:	ea830067          	jr	-344(t1) # 9ac <sdcard_get>

00000b0c <sdcard_read_sector>:
     b0c:	ff010113          	addi	sp,sp,-16
     b10:	00812423          	sw	s0,8(sp)
     b14:	00112623          	sw	ra,12(sp)
     b18:	00912223          	sw	s1,4(sp)
     b1c:	01212023          	sw	s2,0(sp)
     b20:	00058413          	mv	s0,a1
     b24:	00000097          	auipc	ra,0x0
     b28:	f5c080e7          	jalr	-164(ra) # a80 <sdcard_start_sector>
     b2c:	04051863          	bnez	a0,b7c <sdcard_read_sector+0x70>
     b30:	00100593          	li	a1,1
     b34:	00100513          	li	a0,1
     b38:	00000097          	auipc	ra,0x0
     b3c:	e74080e7          	jalr	-396(ra) # 9ac <sdcard_get>
     b40:	00000493          	li	s1,0
     b44:	20000913          	li	s2,512
     b48:	00000593          	li	a1,0
     b4c:	00800513          	li	a0,8
     b50:	00000097          	auipc	ra,0x0
     b54:	e5c080e7          	jalr	-420(ra) # 9ac <sdcard_get>
     b58:	009407b3          	add	a5,s0,s1
     b5c:	00a78023          	sb	a0,0(a5)
     b60:	00148493          	addi	s1,s1,1
     b64:	ff2492e3          	bne	s1,s2,b48 <sdcard_read_sector+0x3c>
     b68:	00100593          	li	a1,1
     b6c:	01000513          	li	a0,16
     b70:	20040413          	addi	s0,s0,512
     b74:	00000097          	auipc	ra,0x0
     b78:	e38080e7          	jalr	-456(ra) # 9ac <sdcard_get>
     b7c:	00c12083          	lw	ra,12(sp)
     b80:	00040513          	mv	a0,s0
     b84:	00812403          	lw	s0,8(sp)
     b88:	00412483          	lw	s1,4(sp)
     b8c:	00012903          	lw	s2,0(sp)
     b90:	01010113          	addi	sp,sp,16
     b94:	00008067          	ret

00000b98 <sdcard_preinit>:
     b98:	ff010113          	addi	sp,sp,-16
     b9c:	000057b7          	lui	a5,0x5
     ba0:	00812423          	sw	s0,8(sp)
     ba4:	b607a403          	lw	s0,-1184(a5) # 4b60 <SDCARD>
     ba8:	00112623          	sw	ra,12(sp)
     bac:	00600793          	li	a5,6
     bb0:	01313537          	lui	a0,0x1313
     bb4:	00f42023          	sw	a5,0(s0)
     bb8:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     bbc:	00000097          	auipc	ra,0x0
     bc0:	c04080e7          	jalr	-1020(ra) # 7c0 <pause>
     bc4:	0a000793          	li	a5,160
     bc8:	00000713          	li	a4,0
     bcc:	00100693          	li	a3,1
     bd0:	00676613          	ori	a2,a4,6
     bd4:	00c42023          	sw	a2,0(s0)
     bd8:	fff78793          	addi	a5,a5,-1
     bdc:	40e68733          	sub	a4,a3,a4
     be0:	fe0798e3          	bnez	a5,bd0 <sdcard_preinit+0x38>
     be4:	00600793          	li	a5,6
     be8:	00c12083          	lw	ra,12(sp)
     bec:	00f42023          	sw	a5,0(s0)
     bf0:	00812403          	lw	s0,8(sp)
     bf4:	01010113          	addi	sp,sp,16
     bf8:	00008067          	ret

00000bfc <sdcard_init>:
     bfc:	fe010113          	addi	sp,sp,-32
     c00:	000007b7          	lui	a5,0x0
     c04:	00812c23          	sw	s0,24(sp)
     c08:	00005737          	lui	a4,0x5
     c0c:	7d478793          	addi	a5,a5,2004 # 7d4 <sdcard_idle>
     c10:	01313437          	lui	s0,0x1313
     c14:	01212823          	sw	s2,16(sp)
     c18:	01312623          	sw	s3,12(sp)
     c1c:	00112e23          	sw	ra,28(sp)
     c20:	00912a23          	sw	s1,20(sp)
     c24:	e6f72c23          	sw	a5,-392(a4) # 4e78 <sdcard_while_loading_callback>
     c28:	00005937          	lui	s2,0x5
     c2c:	0ff00993          	li	s3,255
     c30:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     c34:	00000097          	auipc	ra,0x0
     c38:	f64080e7          	jalr	-156(ra) # b98 <sdcard_preinit>
     c3c:	b2c90513          	addi	a0,s2,-1236 # 4b2c <cmd0>
     c40:	00000097          	auipc	ra,0x0
     c44:	de4080e7          	jalr	-540(ra) # a24 <sdcard_cmd>
     c48:	00100593          	li	a1,1
     c4c:	00800513          	li	a0,8
     c50:	00000097          	auipc	ra,0x0
     c54:	d5c080e7          	jalr	-676(ra) # 9ac <sdcard_get>
     c58:	00050493          	mv	s1,a0
     c5c:	00000097          	auipc	ra,0x0
     c60:	b90080e7          	jalr	-1136(ra) # 7ec <sdcard_ponder>
     c64:	01349a63          	bne	s1,s3,c78 <sdcard_init+0x7c>
     c68:	00040513          	mv	a0,s0
     c6c:	00000097          	auipc	ra,0x0
     c70:	b54080e7          	jalr	-1196(ra) # 7c0 <pause>
     c74:	fc1ff06f          	j	c34 <sdcard_init+0x38>
     c78:	00005537          	lui	a0,0x5
     c7c:	b4450513          	addi	a0,a0,-1212 # 4b44 <cmd8>
     c80:	00000097          	auipc	ra,0x0
     c84:	da4080e7          	jalr	-604(ra) # a24 <sdcard_cmd>
     c88:	00100593          	li	a1,1
     c8c:	02800513          	li	a0,40
     c90:	00000097          	auipc	ra,0x0
     c94:	d1c080e7          	jalr	-740(ra) # 9ac <sdcard_get>
     c98:	001e8437          	lui	s0,0x1e8
     c9c:	00000097          	auipc	ra,0x0
     ca0:	b50080e7          	jalr	-1200(ra) # 7ec <sdcard_ponder>
     ca4:	00005937          	lui	s2,0x5
     ca8:	000059b7          	lui	s3,0x5
     cac:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     cb0:	b3c90513          	addi	a0,s2,-1220 # 4b3c <cmd55>
     cb4:	00000097          	auipc	ra,0x0
     cb8:	d70080e7          	jalr	-656(ra) # a24 <sdcard_cmd>
     cbc:	00100593          	li	a1,1
     cc0:	00800513          	li	a0,8
     cc4:	00000097          	auipc	ra,0x0
     cc8:	ce8080e7          	jalr	-792(ra) # 9ac <sdcard_get>
     ccc:	00000097          	auipc	ra,0x0
     cd0:	b20080e7          	jalr	-1248(ra) # 7ec <sdcard_ponder>
     cd4:	b2498513          	addi	a0,s3,-1244 # 4b24 <acmd41>
     cd8:	00000097          	auipc	ra,0x0
     cdc:	d4c080e7          	jalr	-692(ra) # a24 <sdcard_cmd>
     ce0:	00100593          	li	a1,1
     ce4:	00800513          	li	a0,8
     ce8:	00000097          	auipc	ra,0x0
     cec:	cc4080e7          	jalr	-828(ra) # 9ac <sdcard_get>
     cf0:	00050493          	mv	s1,a0
     cf4:	00000097          	auipc	ra,0x0
     cf8:	af8080e7          	jalr	-1288(ra) # 7ec <sdcard_ponder>
     cfc:	00048a63          	beqz	s1,d10 <sdcard_init+0x114>
     d00:	00040513          	mv	a0,s0
     d04:	00000097          	auipc	ra,0x0
     d08:	abc080e7          	jalr	-1348(ra) # 7c0 <pause>
     d0c:	fa5ff06f          	j	cb0 <sdcard_init+0xb4>
     d10:	00005537          	lui	a0,0x5
     d14:	b3450513          	addi	a0,a0,-1228 # 4b34 <cmd16>
     d18:	00000097          	auipc	ra,0x0
     d1c:	d0c080e7          	jalr	-756(ra) # a24 <sdcard_cmd>
     d20:	00100593          	li	a1,1
     d24:	00800513          	li	a0,8
     d28:	00000097          	auipc	ra,0x0
     d2c:	c84080e7          	jalr	-892(ra) # 9ac <sdcard_get>
     d30:	01812403          	lw	s0,24(sp)
     d34:	01c12083          	lw	ra,28(sp)
     d38:	01412483          	lw	s1,20(sp)
     d3c:	01012903          	lw	s2,16(sp)
     d40:	00c12983          	lw	s3,12(sp)
     d44:	02010113          	addi	sp,sp,32
     d48:	00000317          	auipc	t1,0x0
     d4c:	aa430067          	jr	-1372(t1) # 7ec <sdcard_ponder>

00000d50 <sdcard_readsector>:
     d50:	04060863          	beqz	a2,da0 <sdcard_readsector+0x50>
     d54:	ff010113          	addi	sp,sp,-16
     d58:	00812423          	sw	s0,8(sp)
     d5c:	00912223          	sw	s1,4(sp)
     d60:	00112623          	sw	ra,12(sp)
     d64:	00050413          	mv	s0,a0
     d68:	00a604b3          	add	s1,a2,a0
     d6c:	00941e63          	bne	s0,s1,d88 <sdcard_readsector+0x38>
     d70:	00c12083          	lw	ra,12(sp)
     d74:	00812403          	lw	s0,8(sp)
     d78:	00412483          	lw	s1,4(sp)
     d7c:	00100513          	li	a0,1
     d80:	01010113          	addi	sp,sp,16
     d84:	00008067          	ret
     d88:	00040513          	mv	a0,s0
     d8c:	00000097          	auipc	ra,0x0
     d90:	d80080e7          	jalr	-640(ra) # b0c <sdcard_read_sector>
     d94:	00050593          	mv	a1,a0
     d98:	00140413          	addi	s0,s0,1
     d9c:	fd1ff06f          	j	d6c <sdcard_readsector+0x1c>
     da0:	00000513          	li	a0,0
     da4:	00008067          	ret

00000da8 <sdcard_writesector>:
     da8:	00000513          	li	a0,0
     dac:	00008067          	ret

00000db0 <__divsi3>:
     db0:	06054063          	bltz	a0,e10 <__umodsi3+0x10>
     db4:	0605c663          	bltz	a1,e20 <__umodsi3+0x20>

00000db8 <__udivsi3>:
     db8:	00058613          	mv	a2,a1
     dbc:	00050593          	mv	a1,a0
     dc0:	fff00513          	li	a0,-1
     dc4:	02060c63          	beqz	a2,dfc <__udivsi3+0x44>
     dc8:	00100693          	li	a3,1
     dcc:	00b67a63          	bgeu	a2,a1,de0 <__udivsi3+0x28>
     dd0:	00c05863          	blez	a2,de0 <__udivsi3+0x28>
     dd4:	00161613          	slli	a2,a2,0x1
     dd8:	00169693          	slli	a3,a3,0x1
     ddc:	feb66ae3          	bltu	a2,a1,dd0 <__udivsi3+0x18>
     de0:	00000513          	li	a0,0
     de4:	00c5e663          	bltu	a1,a2,df0 <__udivsi3+0x38>
     de8:	40c585b3          	sub	a1,a1,a2
     dec:	00d56533          	or	a0,a0,a3
     df0:	0016d693          	srli	a3,a3,0x1
     df4:	00165613          	srli	a2,a2,0x1
     df8:	fe0696e3          	bnez	a3,de4 <__udivsi3+0x2c>
     dfc:	00008067          	ret

00000e00 <__umodsi3>:
     e00:	00008293          	mv	t0,ra
     e04:	fb5ff0ef          	jal	ra,db8 <__udivsi3>
     e08:	00058513          	mv	a0,a1
     e0c:	00028067          	jr	t0
     e10:	40a00533          	neg	a0,a0
     e14:	0005d863          	bgez	a1,e24 <__umodsi3+0x24>
     e18:	40b005b3          	neg	a1,a1
     e1c:	f95ff06f          	j	db0 <__divsi3>
     e20:	40b005b3          	neg	a1,a1
     e24:	00008293          	mv	t0,ra
     e28:	f89ff0ef          	jal	ra,db0 <__divsi3>
     e2c:	40a00533          	neg	a0,a0
     e30:	00028067          	jr	t0

00000e34 <__modsi3>:
     e34:	00008293          	mv	t0,ra
     e38:	0005ca63          	bltz	a1,e4c <__modsi3+0x18>
     e3c:	00054c63          	bltz	a0,e54 <__modsi3+0x20>
     e40:	f79ff0ef          	jal	ra,db8 <__udivsi3>
     e44:	00058513          	mv	a0,a1
     e48:	00028067          	jr	t0
     e4c:	40b005b3          	neg	a1,a1
     e50:	fe0558e3          	bgez	a0,e40 <__modsi3+0xc>
     e54:	40a00533          	neg	a0,a0
     e58:	f61ff0ef          	jal	ra,db8 <__udivsi3>
     e5c:	40b00533          	neg	a0,a1
     e60:	00028067          	jr	t0

00000e64 <memset>:
     e64:	00c50633          	add	a2,a0,a2
     e68:	00050793          	mv	a5,a0
     e6c:	00c79463          	bne	a5,a2,e74 <memset+0x10>
     e70:	00008067          	ret
     e74:	00178793          	addi	a5,a5,1
     e78:	feb78fa3          	sb	a1,-1(a5)
     e7c:	ff1ff06f          	j	e6c <memset+0x8>

00000e80 <memcpy>:
     e80:	00000793          	li	a5,0
     e84:	00c79463          	bne	a5,a2,e8c <memcpy+0xc>
     e88:	00008067          	ret
     e8c:	00f58733          	add	a4,a1,a5
     e90:	00074683          	lbu	a3,0(a4)
     e94:	00f50733          	add	a4,a0,a5
     e98:	00178793          	addi	a5,a5,1
     e9c:	00d70023          	sb	a3,0(a4)
     ea0:	fe5ff06f          	j	e84 <memcpy+0x4>

00000ea4 <strlen>:
     ea4:	00050793          	mv	a5,a0
     ea8:	00000513          	li	a0,0
     eac:	00a78733          	add	a4,a5,a0
     eb0:	00074703          	lbu	a4,0(a4)
     eb4:	00071463          	bnez	a4,ebc <strlen+0x18>
     eb8:	00008067          	ret
     ebc:	00150513          	addi	a0,a0,1
     ec0:	fedff06f          	j	eac <strlen+0x8>

00000ec4 <strncmp>:
     ec4:	00000793          	li	a5,0
     ec8:	00c79663          	bne	a5,a2,ed4 <strncmp+0x10>
     ecc:	00000513          	li	a0,0
     ed0:	00008067          	ret
     ed4:	00f50733          	add	a4,a0,a5
     ed8:	00074683          	lbu	a3,0(a4)
     edc:	00f58733          	add	a4,a1,a5
     ee0:	00074703          	lbu	a4,0(a4)
     ee4:	00e6e863          	bltu	a3,a4,ef4 <strncmp+0x30>
     ee8:	00d76a63          	bltu	a4,a3,efc <strncmp+0x38>
     eec:	00178793          	addi	a5,a5,1
     ef0:	fd9ff06f          	j	ec8 <strncmp+0x4>
     ef4:	fff00513          	li	a0,-1
     ef8:	00008067          	ret
     efc:	00100513          	li	a0,1
     f00:	00008067          	ret

00000f04 <strncpy>:
     f04:	00000793          	li	a5,0
     f08:	00f61463          	bne	a2,a5,f10 <strncpy+0xc>
     f0c:	00008067          	ret
     f10:	00f58733          	add	a4,a1,a5
     f14:	00074683          	lbu	a3,0(a4)
     f18:	00f50733          	add	a4,a0,a5
     f1c:	00178793          	addi	a5,a5,1
     f20:	00d70023          	sb	a3,0(a4)
     f24:	fe5ff06f          	j	f08 <strncpy+0x4>

00000f28 <strcpy>:
     f28:	0005c783          	lbu	a5,0(a1)
     f2c:	00079663          	bnez	a5,f38 <strcpy+0x10>
     f30:	00050023          	sb	zero,0(a0)
     f34:	00008067          	ret
     f38:	00150513          	addi	a0,a0,1
     f3c:	00158593          	addi	a1,a1,1
     f40:	fef50fa3          	sb	a5,-1(a0)
     f44:	fe5ff06f          	j	f28 <strcpy>

00000f48 <strcat>:
     f48:	00050793          	mv	a5,a0
     f4c:	0007c683          	lbu	a3,0(a5)
     f50:	00078713          	mv	a4,a5
     f54:	00178793          	addi	a5,a5,1
     f58:	fe069ae3          	bnez	a3,f4c <strcat+0x4>
     f5c:	0005c783          	lbu	a5,0(a1)
     f60:	00158593          	addi	a1,a1,1
     f64:	00170713          	addi	a4,a4,1
     f68:	fef70fa3          	sb	a5,-1(a4)
     f6c:	fe0798e3          	bnez	a5,f5c <strcat+0x14>
     f70:	00008067          	ret

00000f74 <oled_wait>:
     f74:	00000013          	nop
     f78:	00000013          	nop
     f7c:	00000013          	nop
     f80:	00000013          	nop
     f84:	00000013          	nop
     f88:	00000013          	nop
     f8c:	00000013          	nop
     f90:	00008067          	ret

00000f94 <oled_init_mode>:
     f94:	000057b7          	lui	a5,0x5
     f98:	b5c7a703          	lw	a4,-1188(a5) # 4b5c <OLED_RST>
     f9c:	ff010113          	addi	sp,sp,-16
     fa0:	00912223          	sw	s1,4(sp)
     fa4:	00112623          	sw	ra,12(sp)
     fa8:	00812423          	sw	s0,8(sp)
     fac:	00072023          	sw	zero,0(a4)
     fb0:	00050493          	mv	s1,a0
     fb4:	00040737          	lui	a4,0x40
     fb8:	00000013          	nop
     fbc:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     fc0:	fe071ce3          	bnez	a4,fb8 <oled_init_mode+0x24>
     fc4:	b5c7a703          	lw	a4,-1188(a5)
     fc8:	00100693          	li	a3,1
     fcc:	00d72023          	sw	a3,0(a4)
     fd0:	00040737          	lui	a4,0x40
     fd4:	00000013          	nop
     fd8:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     fdc:	fe071ce3          	bnez	a4,fd4 <oled_init_mode+0x40>
     fe0:	b5c7a783          	lw	a5,-1188(a5)
     fe4:	0007a023          	sw	zero,0(a5)
     fe8:	000407b7          	lui	a5,0x40
     fec:	00000013          	nop
     ff0:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     ff4:	fe079ce3          	bnez	a5,fec <oled_init_mode+0x58>
     ff8:	00005737          	lui	a4,0x5
     ffc:	b5872783          	lw	a5,-1192(a4) # 4b58 <OLED>
    1000:	2af00693          	li	a3,687
    1004:	00d7a023          	sw	a3,0(a5)
    1008:	000407b7          	lui	a5,0x40
    100c:	00000013          	nop
    1010:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1014:	fe079ce3          	bnez	a5,100c <oled_init_mode+0x78>
    1018:	b5872403          	lw	s0,-1192(a4)
    101c:	2a000793          	li	a5,672
    1020:	00f42023          	sw	a5,0(s0)
    1024:	00000097          	auipc	ra,0x0
    1028:	f50080e7          	jalr	-176(ra) # f74 <oled_wait>
    102c:	4a000793          	li	a5,1184
    1030:	00048463          	beqz	s1,1038 <oled_init_mode+0xa4>
    1034:	42000793          	li	a5,1056
    1038:	00f42023          	sw	a5,0(s0)
    103c:	00000097          	auipc	ra,0x0
    1040:	f38080e7          	jalr	-200(ra) # f74 <oled_wait>
    1044:	2fd00793          	li	a5,765
    1048:	00f42023          	sw	a5,0(s0)
    104c:	00000097          	auipc	ra,0x0
    1050:	f28080e7          	jalr	-216(ra) # f74 <oled_wait>
    1054:	4b100793          	li	a5,1201
    1058:	00f42023          	sw	a5,0(s0)
    105c:	00000097          	auipc	ra,0x0
    1060:	f18080e7          	jalr	-232(ra) # f74 <oled_wait>
    1064:	2a200793          	li	a5,674
    1068:	00f42023          	sw	a5,0(s0)
    106c:	00000097          	auipc	ra,0x0
    1070:	f08080e7          	jalr	-248(ra) # f74 <oled_wait>
    1074:	40000793          	li	a5,1024
    1078:	00f42023          	sw	a5,0(s0)
    107c:	00812403          	lw	s0,8(sp)
    1080:	00c12083          	lw	ra,12(sp)
    1084:	00412483          	lw	s1,4(sp)
    1088:	01010113          	addi	sp,sp,16
    108c:	00000317          	auipc	t1,0x0
    1090:	ee830067          	jr	-280(t1) # f74 <oled_wait>

00001094 <oled_init>:
    1094:	00000513          	li	a0,0
    1098:	00000317          	auipc	t1,0x0
    109c:	efc30067          	jr	-260(t1) # f94 <oled_init_mode>

000010a0 <oled_fullscreen>:
    10a0:	ff010113          	addi	sp,sp,-16
    10a4:	000057b7          	lui	a5,0x5
    10a8:	00812423          	sw	s0,8(sp)
    10ac:	b587a403          	lw	s0,-1192(a5) # 4b58 <OLED>
    10b0:	00112623          	sw	ra,12(sp)
    10b4:	00912223          	sw	s1,4(sp)
    10b8:	01212023          	sw	s2,0(sp)
    10bc:	21500793          	li	a5,533
    10c0:	00f42023          	sw	a5,0(s0)
    10c4:	40000913          	li	s2,1024
    10c8:	00000097          	auipc	ra,0x0
    10cc:	eac080e7          	jalr	-340(ra) # f74 <oled_wait>
    10d0:	47f00493          	li	s1,1151
    10d4:	01242023          	sw	s2,0(s0)
    10d8:	00000097          	auipc	ra,0x0
    10dc:	e9c080e7          	jalr	-356(ra) # f74 <oled_wait>
    10e0:	00942023          	sw	s1,0(s0)
    10e4:	00000097          	auipc	ra,0x0
    10e8:	e90080e7          	jalr	-368(ra) # f74 <oled_wait>
    10ec:	27500793          	li	a5,629
    10f0:	00f42023          	sw	a5,0(s0)
    10f4:	00000097          	auipc	ra,0x0
    10f8:	e80080e7          	jalr	-384(ra) # f74 <oled_wait>
    10fc:	01242023          	sw	s2,0(s0)
    1100:	00000097          	auipc	ra,0x0
    1104:	e74080e7          	jalr	-396(ra) # f74 <oled_wait>
    1108:	00942023          	sw	s1,0(s0)
    110c:	00000097          	auipc	ra,0x0
    1110:	e68080e7          	jalr	-408(ra) # f74 <oled_wait>
    1114:	25c00793          	li	a5,604
    1118:	00f42023          	sw	a5,0(s0)
    111c:	00812403          	lw	s0,8(sp)
    1120:	00c12083          	lw	ra,12(sp)
    1124:	00412483          	lw	s1,4(sp)
    1128:	00012903          	lw	s2,0(sp)
    112c:	01010113          	addi	sp,sp,16
    1130:	00000317          	auipc	t1,0x0
    1134:	e4430067          	jr	-444(t1) # f74 <oled_wait>

00001138 <oled_clear>:
    1138:	fe010113          	addi	sp,sp,-32
    113c:	000057b7          	lui	a5,0x5
    1140:	01312623          	sw	s3,12(sp)
    1144:	b587a983          	lw	s3,-1192(a5) # 4b58 <OLED>
    1148:	00812c23          	sw	s0,24(sp)
    114c:	01212823          	sw	s2,16(sp)
    1150:	00112e23          	sw	ra,28(sp)
    1154:	00912a23          	sw	s1,20(sp)
    1158:	08000913          	li	s2,128
    115c:	40056413          	ori	s0,a0,1024
    1160:	08000493          	li	s1,128
    1164:	0089a023          	sw	s0,0(s3)
    1168:	00000097          	auipc	ra,0x0
    116c:	e0c080e7          	jalr	-500(ra) # f74 <oled_wait>
    1170:	0089a023          	sw	s0,0(s3)
    1174:	00000097          	auipc	ra,0x0
    1178:	e00080e7          	jalr	-512(ra) # f74 <oled_wait>
    117c:	fff48493          	addi	s1,s1,-1
    1180:	0089a023          	sw	s0,0(s3)
    1184:	00000097          	auipc	ra,0x0
    1188:	df0080e7          	jalr	-528(ra) # f74 <oled_wait>
    118c:	fc049ce3          	bnez	s1,1164 <oled_clear+0x2c>
    1190:	fff90913          	addi	s2,s2,-1
    1194:	fc0916e3          	bnez	s2,1160 <oled_clear+0x28>
    1198:	01c12083          	lw	ra,28(sp)
    119c:	01812403          	lw	s0,24(sp)
    11a0:	01412483          	lw	s1,20(sp)
    11a4:	01012903          	lw	s2,16(sp)
    11a8:	00c12983          	lw	s3,12(sp)
    11ac:	02010113          	addi	sp,sp,32
    11b0:	00008067          	ret

000011b4 <oled_wait>:
    11b4:	00000013          	nop
    11b8:	00000013          	nop
    11bc:	00000013          	nop
    11c0:	00000013          	nop
    11c4:	00000013          	nop
    11c8:	00000013          	nop
    11cc:	00000013          	nop
    11d0:	00008067          	ret

000011d4 <display_framebuffer>:
    11d4:	00005537          	lui	a0,0x5
    11d8:	06450513          	addi	a0,a0,100 # 5064 <framebuffer>
    11dc:	00008067          	ret

000011e0 <display_set_cursor>:
    11e0:	000057b7          	lui	a5,0x5
    11e4:	e8a7a023          	sw	a0,-384(a5) # 4e80 <cursor_x>
    11e8:	000057b7          	lui	a5,0x5
    11ec:	e8b7a223          	sw	a1,-380(a5) # 4e84 <cursor_y>
    11f0:	00008067          	ret

000011f4 <display_set_front_back_color>:
    11f4:	000057b7          	lui	a5,0x5
    11f8:	e8a78423          	sb	a0,-376(a5) # 4e88 <front_color>
    11fc:	000057b7          	lui	a5,0x5
    1200:	e6b78e23          	sb	a1,-388(a5) # 4e7c <back_color>
    1204:	00008067          	ret

00001208 <display_putchar>:
    1208:	000057b7          	lui	a5,0x5
    120c:	00a00713          	li	a4,10
    1210:	e8078793          	addi	a5,a5,-384 # 4e80 <cursor_x>
    1214:	02e51863          	bne	a0,a4,1244 <display_putchar+0x3c>
    1218:	00005737          	lui	a4,0x5
    121c:	e8470713          	addi	a4,a4,-380 # 4e84 <cursor_y>
    1220:	0007a023          	sw	zero,0(a5)
    1224:	00072783          	lw	a5,0(a4)
    1228:	00878793          	addi	a5,a5,8
    122c:	00f72023          	sw	a5,0(a4)
    1230:	07f00713          	li	a4,127
    1234:	12f75c63          	bge	a4,a5,136c <display_putchar+0x164>
    1238:	000057b7          	lui	a5,0x5
    123c:	e807a223          	sw	zero,-380(a5) # 4e84 <cursor_y>
    1240:	00008067          	ret
    1244:	01f00693          	li	a3,31
    1248:	0007a703          	lw	a4,0(a5)
    124c:	0ea6d663          	bge	a3,a0,1338 <display_putchar+0x130>
    1250:	000056b7          	lui	a3,0x5
    1254:	ff010113          	addi	sp,sp,-16
    1258:	e7c6c383          	lbu	t2,-388(a3) # 4e7c <back_color>
    125c:	000056b7          	lui	a3,0x5
    1260:	00812623          	sw	s0,12(sp)
    1264:	e886c403          	lbu	s0,-376(a3) # 4e88 <front_color>
    1268:	000056b7          	lui	a3,0x5
    126c:	e846af03          	lw	t5,-380(a3) # 4e84 <cursor_y>
    1270:	00251613          	slli	a2,a0,0x2
    1274:	000056b7          	lui	a3,0x5
    1278:	00a60633          	add	a2,a2,a0
    127c:	c1c68693          	addi	a3,a3,-996 # 4c1c <font>
    1280:	00771313          	slli	t1,a4,0x7
    1284:	00005837          	lui	a6,0x5
    1288:	00912423          	sw	s1,8(sp)
    128c:	01212223          	sw	s2,4(sp)
    1290:	00c686b3          	add	a3,a3,a2
    1294:	28030493          	addi	s1,t1,640
    1298:	00000613          	li	a2,0
    129c:	00100293          	li	t0,1
    12a0:	06480813          	addi	a6,a6,100 # 5064 <framebuffer>
    12a4:	00800913          	li	s2,8
    12a8:	00c29fb3          	sll	t6,t0,a2
    12ac:	00cf0eb3          	add	t4,t5,a2
    12b0:	00030593          	mv	a1,t1
    12b4:	00068513          	mv	a0,a3
    12b8:	f6054883          	lbu	a7,-160(a0)
    12bc:	00038e13          	mv	t3,t2
    12c0:	01f8f8b3          	and	a7,a7,t6
    12c4:	00088463          	beqz	a7,12cc <display_putchar+0xc4>
    12c8:	00040e13          	mv	t3,s0
    12cc:	00b808b3          	add	a7,a6,a1
    12d0:	01d888b3          	add	a7,a7,t4
    12d4:	01c88023          	sb	t3,0(a7)
    12d8:	08058593          	addi	a1,a1,128
    12dc:	00150513          	addi	a0,a0,1
    12e0:	fc959ce3          	bne	a1,s1,12b8 <display_putchar+0xb0>
    12e4:	00160613          	addi	a2,a2,1
    12e8:	fd2610e3          	bne	a2,s2,12a8 <display_putchar+0xa0>
    12ec:	00570713          	addi	a4,a4,5
    12f0:	07f00693          	li	a3,127
    12f4:	00e6c663          	blt	a3,a4,1300 <display_putchar+0xf8>
    12f8:	00e7a023          	sw	a4,0(a5)
    12fc:	0280006f          	j	1324 <display_putchar+0x11c>
    1300:	00005737          	lui	a4,0x5
    1304:	e8470713          	addi	a4,a4,-380 # 4e84 <cursor_y>
    1308:	0007a023          	sw	zero,0(a5)
    130c:	00072783          	lw	a5,0(a4)
    1310:	00878793          	addi	a5,a5,8
    1314:	00f72023          	sw	a5,0(a4)
    1318:	00f6d663          	bge	a3,a5,1324 <display_putchar+0x11c>
    131c:	000057b7          	lui	a5,0x5
    1320:	e807a223          	sw	zero,-380(a5) # 4e84 <cursor_y>
    1324:	00c12403          	lw	s0,12(sp)
    1328:	00812483          	lw	s1,8(sp)
    132c:	00412903          	lw	s2,4(sp)
    1330:	01010113          	addi	sp,sp,16
    1334:	00008067          	ret
    1338:	00570713          	addi	a4,a4,5
    133c:	07f00693          	li	a3,127
    1340:	00e6c663          	blt	a3,a4,134c <display_putchar+0x144>
    1344:	00e7a023          	sw	a4,0(a5)
    1348:	00008067          	ret
    134c:	00005737          	lui	a4,0x5
    1350:	e8470713          	addi	a4,a4,-380 # 4e84 <cursor_y>
    1354:	0007a023          	sw	zero,0(a5)
    1358:	00072783          	lw	a5,0(a4)
    135c:	00878793          	addi	a5,a5,8
    1360:	00f72023          	sw	a5,0(a4)
    1364:	ecf6cae3          	blt	a3,a5,1238 <display_putchar+0x30>
    1368:	00008067          	ret
    136c:	00008067          	ret

00001370 <display_refresh>:
    1370:	fe010113          	addi	sp,sp,-32
    1374:	000057b7          	lui	a5,0x5
    1378:	01212823          	sw	s2,16(sp)
    137c:	b587a903          	lw	s2,-1192(a5) # 4b58 <OLED>
    1380:	01312623          	sw	s3,12(sp)
    1384:	000059b7          	lui	s3,0x5
    1388:	00912a23          	sw	s1,20(sp)
    138c:	01412423          	sw	s4,8(sp)
    1390:	00112e23          	sw	ra,28(sp)
    1394:	00812c23          	sw	s0,24(sp)
    1398:	00000493          	li	s1,0
    139c:	06498993          	addi	s3,s3,100 # 5064 <framebuffer>
    13a0:	00004a37          	lui	s4,0x4
    13a4:	013487b3          	add	a5,s1,s3
    13a8:	0007c403          	lbu	s0,0(a5)
    13ac:	00148493          	addi	s1,s1,1
    13b0:	00245413          	srli	s0,s0,0x2
    13b4:	40046413          	ori	s0,s0,1024
    13b8:	00892023          	sw	s0,0(s2)
    13bc:	00000097          	auipc	ra,0x0
    13c0:	df8080e7          	jalr	-520(ra) # 11b4 <oled_wait>
    13c4:	00892023          	sw	s0,0(s2)
    13c8:	00000097          	auipc	ra,0x0
    13cc:	dec080e7          	jalr	-532(ra) # 11b4 <oled_wait>
    13d0:	00892023          	sw	s0,0(s2)
    13d4:	00000097          	auipc	ra,0x0
    13d8:	de0080e7          	jalr	-544(ra) # 11b4 <oled_wait>
    13dc:	fd4494e3          	bne	s1,s4,13a4 <display_refresh+0x34>
    13e0:	01c12083          	lw	ra,28(sp)
    13e4:	01812403          	lw	s0,24(sp)
    13e8:	01412483          	lw	s1,20(sp)
    13ec:	01012903          	lw	s2,16(sp)
    13f0:	00c12983          	lw	s3,12(sp)
    13f4:	00812a03          	lw	s4,8(sp)
    13f8:	02010113          	addi	sp,sp,32
    13fc:	00008067          	ret

00001400 <print_string>:
    1400:	ff010113          	addi	sp,sp,-16
    1404:	00812423          	sw	s0,8(sp)
    1408:	00912223          	sw	s1,4(sp)
    140c:	00112623          	sw	ra,12(sp)
    1410:	00050413          	mv	s0,a0
    1414:	000054b7          	lui	s1,0x5
    1418:	00044503          	lbu	a0,0(s0)
    141c:	00051c63          	bnez	a0,1434 <print_string+0x34>
    1420:	00c12083          	lw	ra,12(sp)
    1424:	00812403          	lw	s0,8(sp)
    1428:	00412483          	lw	s1,4(sp)
    142c:	01010113          	addi	sp,sp,16
    1430:	00008067          	ret
    1434:	e8c4a783          	lw	a5,-372(s1) # 4e8c <f_putchar>
    1438:	00140413          	addi	s0,s0,1
    143c:	000780e7          	jalr	a5
    1440:	fd9ff06f          	j	1418 <print_string+0x18>

00001444 <print_dec>:
    1444:	ee010113          	addi	sp,sp,-288
    1448:	10812c23          	sw	s0,280(sp)
    144c:	10912a23          	sw	s1,276(sp)
    1450:	10112e23          	sw	ra,284(sp)
    1454:	11212823          	sw	s2,272(sp)
    1458:	11312623          	sw	s3,268(sp)
    145c:	00050413          	mv	s0,a0
    1460:	000054b7          	lui	s1,0x5
    1464:	e8c4a783          	lw	a5,-372(s1) # 4e8c <f_putchar>
    1468:	e8c48993          	addi	s3,s1,-372
    146c:	06045e63          	bgez	s0,14e8 <print_dec+0xa4>
    1470:	02d00513          	li	a0,45
    1474:	000780e7          	jalr	a5
    1478:	40800433          	neg	s0,s0
    147c:	fe9ff06f          	j	1464 <print_dec+0x20>
    1480:	00040513          	mv	a0,s0
    1484:	00a00593          	li	a1,10
    1488:	00000097          	auipc	ra,0x0
    148c:	928080e7          	jalr	-1752(ra) # db0 <__divsi3>
    1490:	00251793          	slli	a5,a0,0x2
    1494:	00f507b3          	add	a5,a0,a5
    1498:	00179793          	slli	a5,a5,0x1
    149c:	40f40433          	sub	s0,s0,a5
    14a0:	00148493          	addi	s1,s1,1
    14a4:	fe848fa3          	sb	s0,-1(s1)
    14a8:	00050413          	mv	s0,a0
    14ac:	fc041ae3          	bnez	s0,1480 <print_dec+0x3c>
    14b0:	fd2488e3          	beq	s1,s2,1480 <print_dec+0x3c>
    14b4:	fff4c503          	lbu	a0,-1(s1)
    14b8:	0009a783          	lw	a5,0(s3)
    14bc:	fff48493          	addi	s1,s1,-1
    14c0:	03050513          	addi	a0,a0,48
    14c4:	000780e7          	jalr	a5
    14c8:	ff2496e3          	bne	s1,s2,14b4 <print_dec+0x70>
    14cc:	11c12083          	lw	ra,284(sp)
    14d0:	11812403          	lw	s0,280(sp)
    14d4:	11412483          	lw	s1,276(sp)
    14d8:	11012903          	lw	s2,272(sp)
    14dc:	10c12983          	lw	s3,268(sp)
    14e0:	12010113          	addi	sp,sp,288
    14e4:	00008067          	ret
    14e8:	00010493          	mv	s1,sp
    14ec:	00048913          	mv	s2,s1
    14f0:	fbdff06f          	j	14ac <print_dec+0x68>

000014f4 <print_hex_digits>:
    14f4:	fe010113          	addi	sp,sp,-32
    14f8:	00812c23          	sw	s0,24(sp)
    14fc:	01212823          	sw	s2,16(sp)
    1500:	fff58413          	addi	s0,a1,-1
    1504:	00005937          	lui	s2,0x5
    1508:	00912a23          	sw	s1,20(sp)
    150c:	01312623          	sw	s3,12(sp)
    1510:	00112e23          	sw	ra,28(sp)
    1514:	00050493          	mv	s1,a0
    1518:	00241413          	slli	s0,s0,0x2
    151c:	dfc90913          	addi	s2,s2,-516 # 4dfc <font+0x1e0>
    1520:	000059b7          	lui	s3,0x5
    1524:	02045063          	bgez	s0,1544 <print_hex_digits+0x50>
    1528:	01c12083          	lw	ra,28(sp)
    152c:	01812403          	lw	s0,24(sp)
    1530:	01412483          	lw	s1,20(sp)
    1534:	01012903          	lw	s2,16(sp)
    1538:	00c12983          	lw	s3,12(sp)
    153c:	02010113          	addi	sp,sp,32
    1540:	00008067          	ret
    1544:	0084d7b3          	srl	a5,s1,s0
    1548:	00f7f793          	andi	a5,a5,15
    154c:	00f907b3          	add	a5,s2,a5
    1550:	e8c9a703          	lw	a4,-372(s3) # 4e8c <f_putchar>
    1554:	0007c503          	lbu	a0,0(a5)
    1558:	ffc40413          	addi	s0,s0,-4
    155c:	000700e7          	jalr	a4
    1560:	fc5ff06f          	j	1524 <print_hex_digits+0x30>

00001564 <print_hex>:
    1564:	00800593          	li	a1,8
    1568:	00000317          	auipc	t1,0x0
    156c:	f8c30067          	jr	-116(t1) # 14f4 <print_hex_digits>

00001570 <printf>:
    1570:	fa010113          	addi	sp,sp,-96
    1574:	04f12a23          	sw	a5,84(sp)
    1578:	04410793          	addi	a5,sp,68
    157c:	02812c23          	sw	s0,56(sp)
    1580:	02912a23          	sw	s1,52(sp)
    1584:	03312623          	sw	s3,44(sp)
    1588:	03412423          	sw	s4,40(sp)
    158c:	03512223          	sw	s5,36(sp)
    1590:	03612023          	sw	s6,32(sp)
    1594:	01712e23          	sw	s7,28(sp)
    1598:	02112e23          	sw	ra,60(sp)
    159c:	03212823          	sw	s2,48(sp)
    15a0:	00050413          	mv	s0,a0
    15a4:	04b12223          	sw	a1,68(sp)
    15a8:	04c12423          	sw	a2,72(sp)
    15ac:	04d12623          	sw	a3,76(sp)
    15b0:	04e12823          	sw	a4,80(sp)
    15b4:	05012c23          	sw	a6,88(sp)
    15b8:	05112e23          	sw	a7,92(sp)
    15bc:	00f12623          	sw	a5,12(sp)
    15c0:	02500993          	li	s3,37
    15c4:	000054b7          	lui	s1,0x5
    15c8:	07300a13          	li	s4,115
    15cc:	07800a93          	li	s5,120
    15d0:	06400b13          	li	s6,100
    15d4:	06300b93          	li	s7,99
    15d8:	00044503          	lbu	a0,0(s0)
    15dc:	02051863          	bnez	a0,160c <printf+0x9c>
    15e0:	03c12083          	lw	ra,60(sp)
    15e4:	03812403          	lw	s0,56(sp)
    15e8:	03412483          	lw	s1,52(sp)
    15ec:	03012903          	lw	s2,48(sp)
    15f0:	02c12983          	lw	s3,44(sp)
    15f4:	02812a03          	lw	s4,40(sp)
    15f8:	02412a83          	lw	s5,36(sp)
    15fc:	02012b03          	lw	s6,32(sp)
    1600:	01c12b83          	lw	s7,28(sp)
    1604:	06010113          	addi	sp,sp,96
    1608:	00008067          	ret
    160c:	00140913          	addi	s2,s0,1
    1610:	09351663          	bne	a0,s3,169c <printf+0x12c>
    1614:	00144503          	lbu	a0,1(s0)
    1618:	03451263          	bne	a0,s4,163c <printf+0xcc>
    161c:	00c12783          	lw	a5,12(sp)
    1620:	0007a503          	lw	a0,0(a5)
    1624:	00478713          	addi	a4,a5,4
    1628:	00e12623          	sw	a4,12(sp)
    162c:	00000097          	auipc	ra,0x0
    1630:	dd4080e7          	jalr	-556(ra) # 1400 <print_string>
    1634:	00190413          	addi	s0,s2,1
    1638:	fa1ff06f          	j	15d8 <printf+0x68>
    163c:	03551063          	bne	a0,s5,165c <printf+0xec>
    1640:	00c12783          	lw	a5,12(sp)
    1644:	0007a503          	lw	a0,0(a5)
    1648:	00478713          	addi	a4,a5,4
    164c:	00e12623          	sw	a4,12(sp)
    1650:	00000097          	auipc	ra,0x0
    1654:	f14080e7          	jalr	-236(ra) # 1564 <print_hex>
    1658:	fddff06f          	j	1634 <printf+0xc4>
    165c:	03651063          	bne	a0,s6,167c <printf+0x10c>
    1660:	00c12783          	lw	a5,12(sp)
    1664:	0007a503          	lw	a0,0(a5)
    1668:	00478713          	addi	a4,a5,4
    166c:	00e12623          	sw	a4,12(sp)
    1670:	00000097          	auipc	ra,0x0
    1674:	dd4080e7          	jalr	-556(ra) # 1444 <print_dec>
    1678:	fbdff06f          	j	1634 <printf+0xc4>
    167c:	e8c4a783          	lw	a5,-372(s1) # 4e8c <f_putchar>
    1680:	01751a63          	bne	a0,s7,1694 <printf+0x124>
    1684:	00c12703          	lw	a4,12(sp)
    1688:	00072503          	lw	a0,0(a4)
    168c:	00470693          	addi	a3,a4,4
    1690:	00d12623          	sw	a3,12(sp)
    1694:	000780e7          	jalr	a5
    1698:	f9dff06f          	j	1634 <printf+0xc4>
    169c:	e8c4a783          	lw	a5,-372(s1)
    16a0:	00040913          	mv	s2,s0
    16a4:	000780e7          	jalr	a5
    16a8:	f8dff06f          	j	1634 <printf+0xc4>

000016ac <__mulsi3>:
    16ac:	00050793          	mv	a5,a0
    16b0:	00000513          	li	a0,0
    16b4:	00079463          	bnez	a5,16bc <__mulsi3+0x10>
    16b8:	00008067          	ret
    16bc:	0017f713          	andi	a4,a5,1
    16c0:	00070463          	beqz	a4,16c8 <__mulsi3+0x1c>
    16c4:	00b50533          	add	a0,a0,a1
    16c8:	0017d793          	srli	a5,a5,0x1
    16cc:	00159593          	slli	a1,a1,0x1
    16d0:	fe5ff06f          	j	16b4 <__mulsi3+0x8>

000016d4 <fat_list_insert_last>:
    16d4:	00452783          	lw	a5,4(a0)
    16d8:	04079263          	bnez	a5,171c <fat_list_insert_last+0x48>
    16dc:	00052783          	lw	a5,0(a0)
    16e0:	00079c63          	bnez	a5,16f8 <fat_list_insert_last+0x24>
    16e4:	00b52023          	sw	a1,0(a0)
    16e8:	00b52223          	sw	a1,4(a0)
    16ec:	0005a023          	sw	zero,0(a1)
    16f0:	0005a223          	sw	zero,4(a1)
    16f4:	00008067          	ret
    16f8:	0007a703          	lw	a4,0(a5)
    16fc:	00f5a223          	sw	a5,4(a1)
    1700:	00e5a023          	sw	a4,0(a1)
    1704:	00071863          	bnez	a4,1714 <fat_list_insert_last+0x40>
    1708:	00b52023          	sw	a1,0(a0)
    170c:	00b7a023          	sw	a1,0(a5)
    1710:	00008067          	ret
    1714:	00b72223          	sw	a1,4(a4)
    1718:	ff5ff06f          	j	170c <fat_list_insert_last+0x38>
    171c:	0047a703          	lw	a4,4(a5)
    1720:	00f5a023          	sw	a5,0(a1)
    1724:	00e5a223          	sw	a4,4(a1)
    1728:	0047a703          	lw	a4,4(a5)
    172c:	00071863          	bnez	a4,173c <fat_list_insert_last+0x68>
    1730:	00b52223          	sw	a1,4(a0)
    1734:	00b7a223          	sw	a1,4(a5)
    1738:	00008067          	ret
    173c:	00b72023          	sw	a1,0(a4)
    1740:	ff5ff06f          	j	1734 <fat_list_insert_last+0x60>

00001744 <FileString_StrCmpNoCase>:
    1744:	00050313          	mv	t1,a0
    1748:	00000793          	li	a5,0
    174c:	01900e13          	li	t3,25
    1750:	00f61663          	bne	a2,a5,175c <FileString_StrCmpNoCase+0x18>
    1754:	00000513          	li	a0,0
    1758:	0580006f          	j	17b0 <FileString_StrCmpNoCase+0x6c>
    175c:	00f30733          	add	a4,t1,a5
    1760:	00074883          	lbu	a7,0(a4)
    1764:	00f58733          	add	a4,a1,a5
    1768:	00074803          	lbu	a6,0(a4)
    176c:	fbf88713          	addi	a4,a7,-65
    1770:	0ff77713          	zext.b	a4,a4
    1774:	00088693          	mv	a3,a7
    1778:	00ee6663          	bltu	t3,a4,1784 <FileString_StrCmpNoCase+0x40>
    177c:	02088693          	addi	a3,a7,32
    1780:	0ff6f693          	zext.b	a3,a3
    1784:	fbf80513          	addi	a0,a6,-65
    1788:	0ff57513          	zext.b	a0,a0
    178c:	00080713          	mv	a4,a6
    1790:	00ae6663          	bltu	t3,a0,179c <FileString_StrCmpNoCase+0x58>
    1794:	02080713          	addi	a4,a6,32
    1798:	0ff77713          	zext.b	a4,a4
    179c:	40e68533          	sub	a0,a3,a4
    17a0:	00e69863          	bne	a3,a4,17b0 <FileString_StrCmpNoCase+0x6c>
    17a4:	00088663          	beqz	a7,17b0 <FileString_StrCmpNoCase+0x6c>
    17a8:	00178793          	addi	a5,a5,1
    17ac:	fa0812e3          	bnez	a6,1750 <FileString_StrCmpNoCase+0xc>
    17b0:	00008067          	ret

000017b4 <FileString_GetExtension>:
    17b4:	00050713          	mv	a4,a0
    17b8:	00050793          	mv	a5,a0
    17bc:	02e00613          	li	a2,46
    17c0:	fff00513          	li	a0,-1
    17c4:	0007c683          	lbu	a3,0(a5)
    17c8:	00069463          	bnez	a3,17d0 <FileString_GetExtension+0x1c>
    17cc:	00008067          	ret
    17d0:	00c69463          	bne	a3,a2,17d8 <FileString_GetExtension+0x24>
    17d4:	40e78533          	sub	a0,a5,a4
    17d8:	00178793          	addi	a5,a5,1
    17dc:	fe9ff06f          	j	17c4 <FileString_GetExtension+0x10>

000017e0 <fatfs_fat_writeback>:
    17e0:	00059663          	bnez	a1,17ec <fatfs_fat_writeback+0xc>
    17e4:	00000513          	li	a0,0
    17e8:	00008067          	ret
    17ec:	2045a703          	lw	a4,516(a1)
    17f0:	ff010113          	addi	sp,sp,-16
    17f4:	00812423          	sw	s0,8(sp)
    17f8:	00112623          	sw	ra,12(sp)
    17fc:	00050793          	mv	a5,a0
    1800:	00058413          	mv	s0,a1
    1804:	00100513          	li	a0,1
    1808:	04070663          	beqz	a4,1854 <fatfs_fat_writeback+0x74>
    180c:	0387a683          	lw	a3,56(a5)
    1810:	00069863          	bnez	a3,1820 <fatfs_fat_writeback+0x40>
    1814:	20042223          	sw	zero,516(s0)
    1818:	00100513          	li	a0,1
    181c:	0380006f          	j	1854 <fatfs_fat_writeback+0x74>
    1820:	2005a503          	lw	a0,512(a1)
    1824:	0147a703          	lw	a4,20(a5)
    1828:	0207a583          	lw	a1,32(a5)
    182c:	00100613          	li	a2,1
    1830:	40e507b3          	sub	a5,a0,a4
    1834:	00178793          	addi	a5,a5,1
    1838:	00f5f663          	bgeu	a1,a5,1844 <fatfs_fat_writeback+0x64>
    183c:	00b70733          	add	a4,a4,a1
    1840:	40a70633          	sub	a2,a4,a0
    1844:	00040593          	mv	a1,s0
    1848:	000680e7          	jalr	a3
    184c:	fc0514e3          	bnez	a0,1814 <fatfs_fat_writeback+0x34>
    1850:	00000513          	li	a0,0
    1854:	00c12083          	lw	ra,12(sp)
    1858:	00812403          	lw	s0,8(sp)
    185c:	01010113          	addi	sp,sp,16
    1860:	00008067          	ret

00001864 <fatfs_fat_read_sector>:
    1864:	fe010113          	addi	sp,sp,-32
    1868:	01212823          	sw	s2,16(sp)
    186c:	25452903          	lw	s2,596(a0)
    1870:	00812c23          	sw	s0,24(sp)
    1874:	00912a23          	sw	s1,20(sp)
    1878:	01312623          	sw	s3,12(sp)
    187c:	00112e23          	sw	ra,28(sp)
    1880:	00050993          	mv	s3,a0
    1884:	00058493          	mv	s1,a1
    1888:	00000413          	li	s0,0
    188c:	06091863          	bnez	s2,18fc <fatfs_fat_read_sector+0x98>
    1890:	2549a783          	lw	a5,596(s3)
    1894:	20f42623          	sw	a5,524(s0)
    1898:	20442783          	lw	a5,516(s0)
    189c:	2489aa23          	sw	s0,596(s3)
    18a0:	00078c63          	beqz	a5,18b8 <fatfs_fat_read_sector+0x54>
    18a4:	00040593          	mv	a1,s0
    18a8:	00098513          	mv	a0,s3
    18ac:	00000097          	auipc	ra,0x0
    18b0:	f34080e7          	jalr	-204(ra) # 17e0 <fatfs_fat_writeback>
    18b4:	02050463          	beqz	a0,18dc <fatfs_fat_read_sector+0x78>
    18b8:	0349a783          	lw	a5,52(s3)
    18bc:	20942023          	sw	s1,512(s0)
    18c0:	00100613          	li	a2,1
    18c4:	00040593          	mv	a1,s0
    18c8:	00048513          	mv	a0,s1
    18cc:	000780e7          	jalr	a5
    18d0:	06051063          	bnez	a0,1930 <fatfs_fat_read_sector+0xcc>
    18d4:	fff00793          	li	a5,-1
    18d8:	20f42023          	sw	a5,512(s0)
    18dc:	01c12083          	lw	ra,28(sp)
    18e0:	01812403          	lw	s0,24(sp)
    18e4:	01412483          	lw	s1,20(sp)
    18e8:	00c12983          	lw	s3,12(sp)
    18ec:	00090513          	mv	a0,s2
    18f0:	01012903          	lw	s2,16(sp)
    18f4:	02010113          	addi	sp,sp,32
    18f8:	00008067          	ret
    18fc:	20092783          	lw	a5,512(s2)
    1900:	00f4e663          	bltu	s1,a5,190c <fatfs_fat_read_sector+0xa8>
    1904:	00178713          	addi	a4,a5,1
    1908:	02e4ea63          	bltu	s1,a4,193c <fatfs_fat_read_sector+0xd8>
    190c:	20c92783          	lw	a5,524(s2)
    1910:	00079663          	bnez	a5,191c <fatfs_fat_read_sector+0xb8>
    1914:	00040a63          	beqz	s0,1928 <fatfs_fat_read_sector+0xc4>
    1918:	20042623          	sw	zero,524(s0)
    191c:	00090413          	mv	s0,s2
    1920:	20c92903          	lw	s2,524(s2)
    1924:	f69ff06f          	j	188c <fatfs_fat_read_sector+0x28>
    1928:	2409aa23          	sw	zero,596(s3)
    192c:	ff1ff06f          	j	191c <fatfs_fat_read_sector+0xb8>
    1930:	20842423          	sw	s0,520(s0)
    1934:	00040913          	mv	s2,s0
    1938:	fa5ff06f          	j	18dc <fatfs_fat_read_sector+0x78>
    193c:	40f484b3          	sub	s1,s1,a5
    1940:	00949493          	slli	s1,s1,0x9
    1944:	009904b3          	add	s1,s2,s1
    1948:	20992423          	sw	s1,520(s2)
    194c:	f91ff06f          	j	18dc <fatfs_fat_read_sector+0x78>

00001950 <_allocate_file>:
    1950:	ff010113          	addi	sp,sp,-16
    1954:	000057b7          	lui	a5,0x5
    1958:	00812423          	sw	s0,8(sp)
    195c:	e987a403          	lw	s0,-360(a5) # 4e98 <_free_file_list>
    1960:	00112623          	sw	ra,12(sp)
    1964:	02040e63          	beqz	s0,19a0 <_allocate_file+0x50>
    1968:	00042703          	lw	a4,0(s0)
    196c:	00442683          	lw	a3,4(s0)
    1970:	e9878793          	addi	a5,a5,-360
    1974:	04071063          	bnez	a4,19b4 <_allocate_file+0x64>
    1978:	00d7a023          	sw	a3,0(a5)
    197c:	00442683          	lw	a3,4(s0)
    1980:	02069e63          	bnez	a3,19bc <_allocate_file+0x6c>
    1984:	00e7a223          	sw	a4,4(a5)
    1988:	00005537          	lui	a0,0x5
    198c:	00040593          	mv	a1,s0
    1990:	ea050513          	addi	a0,a0,-352 # 4ea0 <_open_file_list>
    1994:	00000097          	auipc	ra,0x0
    1998:	d40080e7          	jalr	-704(ra) # 16d4 <fat_list_insert_last>
    199c:	bc440413          	addi	s0,s0,-1084
    19a0:	00c12083          	lw	ra,12(sp)
    19a4:	00040513          	mv	a0,s0
    19a8:	00812403          	lw	s0,8(sp)
    19ac:	01010113          	addi	sp,sp,16
    19b0:	00008067          	ret
    19b4:	00d72223          	sw	a3,4(a4)
    19b8:	fc5ff06f          	j	197c <_allocate_file+0x2c>
    19bc:	00e6a023          	sw	a4,0(a3)
    19c0:	fc9ff06f          	j	1988 <_allocate_file+0x38>

000019c4 <_free_file>:
    19c4:	43c52783          	lw	a5,1084(a0)
    19c8:	44052703          	lw	a4,1088(a0)
    19cc:	43c50593          	addi	a1,a0,1084
    19d0:	02079663          	bnez	a5,19fc <_free_file+0x38>
    19d4:	000056b7          	lui	a3,0x5
    19d8:	eae6a023          	sw	a4,-352(a3) # 4ea0 <_open_file_list>
    19dc:	44052703          	lw	a4,1088(a0)
    19e0:	02071263          	bnez	a4,1a04 <_free_file+0x40>
    19e4:	00005737          	lui	a4,0x5
    19e8:	eaf72223          	sw	a5,-348(a4) # 4ea4 <_open_file_list+0x4>
    19ec:	00005537          	lui	a0,0x5
    19f0:	e9850513          	addi	a0,a0,-360 # 4e98 <_free_file_list>
    19f4:	00000317          	auipc	t1,0x0
    19f8:	ce030067          	jr	-800(t1) # 16d4 <fat_list_insert_last>
    19fc:	00e7a223          	sw	a4,4(a5)
    1a00:	fddff06f          	j	19dc <_free_file+0x18>
    1a04:	00f72023          	sw	a5,0(a4)
    1a08:	fe5ff06f          	j	19ec <_free_file+0x28>

00001a0c <fatfs_lba_of_cluster>:
    1a0c:	ff010113          	addi	sp,sp,-16
    1a10:	00812423          	sw	s0,8(sp)
    1a14:	00050413          	mv	s0,a0
    1a18:	00058513          	mv	a0,a1
    1a1c:	00044583          	lbu	a1,0(s0)
    1a20:	ffe50513          	addi	a0,a0,-2
    1a24:	00112623          	sw	ra,12(sp)
    1a28:	00000097          	auipc	ra,0x0
    1a2c:	c84080e7          	jalr	-892(ra) # 16ac <__mulsi3>
    1a30:	00442783          	lw	a5,4(s0)
    1a34:	00f50533          	add	a0,a0,a5
    1a38:	03042783          	lw	a5,48(s0)
    1a3c:	00079863          	bnez	a5,1a4c <fatfs_lba_of_cluster+0x40>
    1a40:	02845783          	lhu	a5,40(s0)
    1a44:	4047d793          	srai	a5,a5,0x4
    1a48:	00f50533          	add	a0,a0,a5
    1a4c:	00c12083          	lw	ra,12(sp)
    1a50:	00812403          	lw	s0,8(sp)
    1a54:	01010113          	addi	sp,sp,16
    1a58:	00008067          	ret

00001a5c <fatfs_sector_read>:
    1a5c:	03452783          	lw	a5,52(a0)
    1a60:	00058713          	mv	a4,a1
    1a64:	00070513          	mv	a0,a4
    1a68:	00060593          	mv	a1,a2
    1a6c:	00068613          	mv	a2,a3
    1a70:	00078067          	jr	a5

00001a74 <fatfs_sector_write>:
    1a74:	03852783          	lw	a5,56(a0)
    1a78:	00058713          	mv	a4,a1
    1a7c:	00070513          	mv	a0,a4
    1a80:	00060593          	mv	a1,a2
    1a84:	00068613          	mv	a2,a3
    1a88:	00078067          	jr	a5

00001a8c <fatfs_write_sector>:
    1a8c:	03852783          	lw	a5,56(a0)
    1a90:	0a078863          	beqz	a5,1b40 <fatfs_write_sector+0xb4>
    1a94:	fe010113          	addi	sp,sp,-32
    1a98:	01212823          	sw	s2,16(sp)
    1a9c:	00068913          	mv	s2,a3
    1aa0:	03052683          	lw	a3,48(a0)
    1aa4:	00812c23          	sw	s0,24(sp)
    1aa8:	00912a23          	sw	s1,20(sp)
    1aac:	00112e23          	sw	ra,28(sp)
    1ab0:	00d5e733          	or	a4,a1,a3
    1ab4:	00050413          	mv	s0,a0
    1ab8:	00060493          	mv	s1,a2
    1abc:	04071063          	bnez	a4,1afc <fatfs_write_sector+0x70>
    1ac0:	01052703          	lw	a4,16(a0)
    1ac4:	06e67063          	bgeu	a2,a4,1b24 <fatfs_write_sector+0x98>
    1ac8:	01c52503          	lw	a0,28(a0)
    1acc:	00c42703          	lw	a4,12(s0)
    1ad0:	00e50533          	add	a0,a0,a4
    1ad4:	00c50533          	add	a0,a0,a2
    1ad8:	02090e63          	beqz	s2,1b14 <fatfs_write_sector+0x88>
    1adc:	00100613          	li	a2,1
    1ae0:	00090593          	mv	a1,s2
    1ae4:	01812403          	lw	s0,24(sp)
    1ae8:	01c12083          	lw	ra,28(sp)
    1aec:	01412483          	lw	s1,20(sp)
    1af0:	01012903          	lw	s2,16(sp)
    1af4:	02010113          	addi	sp,sp,32
    1af8:	00078067          	jr	a5
    1afc:	00f12623          	sw	a5,12(sp)
    1b00:	00000097          	auipc	ra,0x0
    1b04:	f0c080e7          	jalr	-244(ra) # 1a0c <fatfs_lba_of_cluster>
    1b08:	00c12783          	lw	a5,12(sp)
    1b0c:	00a48533          	add	a0,s1,a0
    1b10:	fc9ff06f          	j	1ad8 <fatfs_write_sector+0x4c>
    1b14:	24a42223          	sw	a0,580(s0)
    1b18:	00100613          	li	a2,1
    1b1c:	04440593          	addi	a1,s0,68
    1b20:	fc5ff06f          	j	1ae4 <fatfs_write_sector+0x58>
    1b24:	01c12083          	lw	ra,28(sp)
    1b28:	01812403          	lw	s0,24(sp)
    1b2c:	01412483          	lw	s1,20(sp)
    1b30:	01012903          	lw	s2,16(sp)
    1b34:	00000513          	li	a0,0
    1b38:	02010113          	addi	sp,sp,32
    1b3c:	00008067          	ret
    1b40:	00000513          	li	a0,0
    1b44:	00008067          	ret

00001b48 <fl_init>:
    1b48:	ff010113          	addi	sp,sp,-16
    1b4c:	00812423          	sw	s0,8(sp)
    1b50:	00005437          	lui	s0,0x5
    1b54:	00112623          	sw	ra,12(sp)
    1b58:	e9840793          	addi	a5,s0,-360 # 4e98 <_free_file_list>
    1b5c:	0007a223          	sw	zero,4(a5)
    1b60:	0007a023          	sw	zero,0(a5)
    1b64:	000095b7          	lui	a1,0x9
    1b68:	000057b7          	lui	a5,0x5
    1b6c:	ea078793          	addi	a5,a5,-352 # 4ea0 <_open_file_list>
    1b70:	e9840513          	addi	a0,s0,-360
    1b74:	4a058593          	addi	a1,a1,1184 # 94a0 <_files+0x43c>
    1b78:	0007a223          	sw	zero,4(a5)
    1b7c:	0007a023          	sw	zero,0(a5)
    1b80:	00000097          	auipc	ra,0x0
    1b84:	b54080e7          	jalr	-1196(ra) # 16d4 <fat_list_insert_last>
    1b88:	0000a5b7          	lui	a1,0xa
    1b8c:	e9840513          	addi	a0,s0,-360
    1b90:	8e458593          	addi	a1,a1,-1820 # 98e4 <_files+0x880>
    1b94:	00000097          	auipc	ra,0x0
    1b98:	b40080e7          	jalr	-1216(ra) # 16d4 <fat_list_insert_last>
    1b9c:	00c12083          	lw	ra,12(sp)
    1ba0:	00812403          	lw	s0,8(sp)
    1ba4:	000057b7          	lui	a5,0x5
    1ba8:	00100713          	li	a4,1
    1bac:	e8e7a823          	sw	a4,-368(a5) # 4e90 <_filelib_init>
    1bb0:	01010113          	addi	sp,sp,16
    1bb4:	00008067          	ret

00001bb8 <fl_closedir>:
    1bb8:	00000513          	li	a0,0
    1bbc:	00008067          	ret

00001bc0 <fatfs_lfn_cache_entry>:
    1bc0:	0005c783          	lbu	a5,0(a1)
    1bc4:	01300693          	li	a3,19
    1bc8:	01f7f793          	andi	a5,a5,31
    1bcc:	fff78713          	addi	a4,a5,-1
    1bd0:	0ff77613          	zext.b	a2,a4
    1bd4:	0ac6ea63          	bltu	a3,a2,1c88 <fatfs_lfn_cache_entry+0xc8>
    1bd8:	10554683          	lbu	a3,261(a0)
    1bdc:	00069463          	bnez	a3,1be4 <fatfs_lfn_cache_entry+0x24>
    1be0:	10f502a3          	sb	a5,261(a0)
    1be4:	00171793          	slli	a5,a4,0x1
    1be8:	00e787b3          	add	a5,a5,a4
    1bec:	0015c683          	lbu	a3,1(a1)
    1bf0:	00279793          	slli	a5,a5,0x2
    1bf4:	00e787b3          	add	a5,a5,a4
    1bf8:	00f50533          	add	a0,a0,a5
    1bfc:	00d50023          	sb	a3,0(a0)
    1c00:	0035c783          	lbu	a5,3(a1)
    1c04:	0ff00713          	li	a4,255
    1c08:	02000693          	li	a3,32
    1c0c:	00f500a3          	sb	a5,1(a0)
    1c10:	0055c783          	lbu	a5,5(a1)
    1c14:	00f50123          	sb	a5,2(a0)
    1c18:	0075c783          	lbu	a5,7(a1)
    1c1c:	00f501a3          	sb	a5,3(a0)
    1c20:	0095c783          	lbu	a5,9(a1)
    1c24:	00f50223          	sb	a5,4(a0)
    1c28:	00e5c783          	lbu	a5,14(a1)
    1c2c:	00f502a3          	sb	a5,5(a0)
    1c30:	0105c783          	lbu	a5,16(a1)
    1c34:	00f50323          	sb	a5,6(a0)
    1c38:	0125c783          	lbu	a5,18(a1)
    1c3c:	00f503a3          	sb	a5,7(a0)
    1c40:	0145c783          	lbu	a5,20(a1)
    1c44:	00f50423          	sb	a5,8(a0)
    1c48:	0165c783          	lbu	a5,22(a1)
    1c4c:	00f504a3          	sb	a5,9(a0)
    1c50:	0185c783          	lbu	a5,24(a1)
    1c54:	00f50523          	sb	a5,10(a0)
    1c58:	01c5c783          	lbu	a5,28(a1)
    1c5c:	00f505a3          	sb	a5,11(a0)
    1c60:	01e5c783          	lbu	a5,30(a1)
    1c64:	00f50623          	sb	a5,12(a0)
    1c68:	00d00793          	li	a5,13
    1c6c:	00054603          	lbu	a2,0(a0)
    1c70:	00e61463          	bne	a2,a4,1c78 <fatfs_lfn_cache_entry+0xb8>
    1c74:	00d50023          	sb	a3,0(a0)
    1c78:	fff78793          	addi	a5,a5,-1
    1c7c:	0ff7f793          	zext.b	a5,a5
    1c80:	00150513          	addi	a0,a0,1
    1c84:	fe0794e3          	bnez	a5,1c6c <fatfs_lfn_cache_entry+0xac>
    1c88:	00008067          	ret

00001c8c <fatfs_lfn_cache_get>:
    1c8c:	10554703          	lbu	a4,261(a0)
    1c90:	01400793          	li	a5,20
    1c94:	00f71663          	bne	a4,a5,1ca0 <fatfs_lfn_cache_get+0x14>
    1c98:	10050223          	sb	zero,260(a0)
    1c9c:	00008067          	ret
    1ca0:	02070063          	beqz	a4,1cc0 <fatfs_lfn_cache_get+0x34>
    1ca4:	00171793          	slli	a5,a4,0x1
    1ca8:	00e787b3          	add	a5,a5,a4
    1cac:	00279793          	slli	a5,a5,0x2
    1cb0:	00e787b3          	add	a5,a5,a4
    1cb4:	00f507b3          	add	a5,a0,a5
    1cb8:	00078023          	sb	zero,0(a5)
    1cbc:	00008067          	ret
    1cc0:	00050023          	sb	zero,0(a0)
    1cc4:	00008067          	ret

00001cc8 <fatfs_entry_lfn_text>:
    1cc8:	00b54503          	lbu	a0,11(a0)
    1ccc:	00f57513          	andi	a0,a0,15
    1cd0:	ff150513          	addi	a0,a0,-15
    1cd4:	00153513          	seqz	a0,a0
    1cd8:	00008067          	ret

00001cdc <fatfs_entry_lfn_invalid>:
    1cdc:	00054703          	lbu	a4,0(a0)
    1ce0:	00050793          	mv	a5,a0
    1ce4:	02070463          	beqz	a4,1d0c <fatfs_entry_lfn_invalid+0x30>
    1ce8:	0e500693          	li	a3,229
    1cec:	00100513          	li	a0,1
    1cf0:	02d70063          	beq	a4,a3,1d10 <fatfs_entry_lfn_invalid+0x34>
    1cf4:	00b7c783          	lbu	a5,11(a5)
    1cf8:	00800713          	li	a4,8
    1cfc:	00e78a63          	beq	a5,a4,1d10 <fatfs_entry_lfn_invalid+0x34>
    1d00:	0067f793          	andi	a5,a5,6
    1d04:	00f03533          	snez	a0,a5
    1d08:	00008067          	ret
    1d0c:	00100513          	li	a0,1
    1d10:	00008067          	ret

00001d14 <fatfs_entry_lfn_exists>:
    1d14:	00b5c783          	lbu	a5,11(a1)
    1d18:	00f00693          	li	a3,15
    1d1c:	00050713          	mv	a4,a0
    1d20:	02d78a63          	beq	a5,a3,1d54 <fatfs_entry_lfn_exists+0x40>
    1d24:	0005c683          	lbu	a3,0(a1)
    1d28:	00000513          	li	a0,0
    1d2c:	02068663          	beqz	a3,1d58 <fatfs_entry_lfn_exists+0x44>
    1d30:	0e500613          	li	a2,229
    1d34:	02c68263          	beq	a3,a2,1d58 <fatfs_entry_lfn_exists+0x44>
    1d38:	00800693          	li	a3,8
    1d3c:	00d78e63          	beq	a5,a3,1d58 <fatfs_entry_lfn_exists+0x44>
    1d40:	0067f793          	andi	a5,a5,6
    1d44:	00079a63          	bnez	a5,1d58 <fatfs_entry_lfn_exists+0x44>
    1d48:	10574503          	lbu	a0,261(a4)
    1d4c:	00a03533          	snez	a0,a0
    1d50:	00008067          	ret
    1d54:	00000513          	li	a0,0
    1d58:	00008067          	ret

00001d5c <fatfs_entry_sfn_only>:
    1d5c:	00b54783          	lbu	a5,11(a0)
    1d60:	00f00713          	li	a4,15
    1d64:	02e78663          	beq	a5,a4,1d90 <fatfs_entry_sfn_only+0x34>
    1d68:	00054703          	lbu	a4,0(a0)
    1d6c:	00000513          	li	a0,0
    1d70:	02070263          	beqz	a4,1d94 <fatfs_entry_sfn_only+0x38>
    1d74:	0e500693          	li	a3,229
    1d78:	00d70e63          	beq	a4,a3,1d94 <fatfs_entry_sfn_only+0x38>
    1d7c:	00800713          	li	a4,8
    1d80:	00e78a63          	beq	a5,a4,1d94 <fatfs_entry_sfn_only+0x38>
    1d84:	0067f793          	andi	a5,a5,6
    1d88:	0017b513          	seqz	a0,a5
    1d8c:	00008067          	ret
    1d90:	00000513          	li	a0,0
    1d94:	00008067          	ret

00001d98 <fatfs_entry_is_dir>:
    1d98:	00b54503          	lbu	a0,11(a0)
    1d9c:	00455513          	srli	a0,a0,0x4
    1da0:	00157513          	andi	a0,a0,1
    1da4:	00008067          	ret

00001da8 <fatfs_entry_is_file>:
    1da8:	00b54503          	lbu	a0,11(a0)
    1dac:	00555513          	srli	a0,a0,0x5
    1db0:	00157513          	andi	a0,a0,1
    1db4:	00008067          	ret

00001db8 <fatfs_lfn_entries_required>:
    1db8:	ff010113          	addi	sp,sp,-16
    1dbc:	00112623          	sw	ra,12(sp)
    1dc0:	fffff097          	auipc	ra,0xfffff
    1dc4:	0e4080e7          	jalr	228(ra) # ea4 <strlen>
    1dc8:	00050a63          	beqz	a0,1ddc <fatfs_lfn_entries_required+0x24>
    1dcc:	00d00593          	li	a1,13
    1dd0:	00c50513          	addi	a0,a0,12
    1dd4:	fffff097          	auipc	ra,0xfffff
    1dd8:	fdc080e7          	jalr	-36(ra) # db0 <__divsi3>
    1ddc:	00c12083          	lw	ra,12(sp)
    1de0:	01010113          	addi	sp,sp,16
    1de4:	00008067          	ret

00001de8 <fatfs_filename_to_lfn>:
    1de8:	fa010113          	addi	sp,sp,-96
    1dec:	04912a23          	sw	s1,84(sp)
    1df0:	00058493          	mv	s1,a1
    1df4:	000055b7          	lui	a1,0x5
    1df8:	e4458593          	addi	a1,a1,-444 # 4e44 <font+0x228>
    1dfc:	05212823          	sw	s2,80(sp)
    1e00:	05312623          	sw	s3,76(sp)
    1e04:	00060913          	mv	s2,a2
    1e08:	00050993          	mv	s3,a0
    1e0c:	03400613          	li	a2,52
    1e10:	00c10513          	addi	a0,sp,12
    1e14:	04112e23          	sw	ra,92(sp)
    1e18:	04812c23          	sw	s0,88(sp)
    1e1c:	05412423          	sw	s4,72(sp)
    1e20:	05512223          	sw	s5,68(sp)
    1e24:	05612023          	sw	s6,64(sp)
    1e28:	00068b13          	mv	s6,a3
    1e2c:	fffff097          	auipc	ra,0xfffff
    1e30:	054080e7          	jalr	84(ra) # e80 <memcpy>
    1e34:	00098513          	mv	a0,s3
    1e38:	fffff097          	auipc	ra,0xfffff
    1e3c:	06c080e7          	jalr	108(ra) # ea4 <strlen>
    1e40:	00050a93          	mv	s5,a0
    1e44:	00098513          	mv	a0,s3
    1e48:	00000097          	auipc	ra,0x0
    1e4c:	f70080e7          	jalr	-144(ra) # 1db8 <fatfs_lfn_entries_required>
    1e50:	00191793          	slli	a5,s2,0x1
    1e54:	012787b3          	add	a5,a5,s2
    1e58:	00279793          	slli	a5,a5,0x2
    1e5c:	00050a13          	mv	s4,a0
    1e60:	02000613          	li	a2,32
    1e64:	00000593          	li	a1,0
    1e68:	00048513          	mv	a0,s1
    1e6c:	01278433          	add	s0,a5,s2
    1e70:	fffff097          	auipc	ra,0xfffff
    1e74:	ff4080e7          	jalr	-12(ra) # e64 <memset>
    1e78:	00190793          	addi	a5,s2,1
    1e7c:	fffa0a13          	addi	s4,s4,-1 # 3fff <_write_sectors+0x19b>
    1e80:	0ff7f793          	zext.b	a5,a5
    1e84:	012a1463          	bne	s4,s2,1e8c <fatfs_filename_to_lfn+0xa4>
    1e88:	0407e793          	ori	a5,a5,64
    1e8c:	00f48023          	sb	a5,0(s1)
    1e90:	00f00793          	li	a5,15
    1e94:	00f485a3          	sb	a5,11(s1)
    1e98:	016486a3          	sb	s6,13(s1)
    1e9c:	00c10713          	addi	a4,sp,12
    1ea0:	00040793          	mv	a5,s0
    1ea4:	00d40593          	addi	a1,s0,13
    1ea8:	fff00613          	li	a2,-1
    1eac:	00072683          	lw	a3,0(a4)
    1eb0:	00d486b3          	add	a3,s1,a3
    1eb4:	0557d263          	bge	a5,s5,1ef8 <fatfs_filename_to_lfn+0x110>
    1eb8:	00f98533          	add	a0,s3,a5
    1ebc:	00054503          	lbu	a0,0(a0)
    1ec0:	00a68023          	sb	a0,0(a3)
    1ec4:	00178793          	addi	a5,a5,1
    1ec8:	00470713          	addi	a4,a4,4
    1ecc:	feb790e3          	bne	a5,a1,1eac <fatfs_filename_to_lfn+0xc4>
    1ed0:	05c12083          	lw	ra,92(sp)
    1ed4:	05812403          	lw	s0,88(sp)
    1ed8:	05412483          	lw	s1,84(sp)
    1edc:	05012903          	lw	s2,80(sp)
    1ee0:	04c12983          	lw	s3,76(sp)
    1ee4:	04812a03          	lw	s4,72(sp)
    1ee8:	04412a83          	lw	s5,68(sp)
    1eec:	04012b03          	lw	s6,64(sp)
    1ef0:	06010113          	addi	sp,sp,96
    1ef4:	00008067          	ret
    1ef8:	00fa9663          	bne	s5,a5,1f04 <fatfs_filename_to_lfn+0x11c>
    1efc:	00068023          	sb	zero,0(a3)
    1f00:	fc5ff06f          	j	1ec4 <fatfs_filename_to_lfn+0xdc>
    1f04:	00c68023          	sb	a2,0(a3)
    1f08:	00c680a3          	sb	a2,1(a3)
    1f0c:	fb9ff06f          	j	1ec4 <fatfs_filename_to_lfn+0xdc>

00001f10 <fatfs_sfn_create_entry>:
    1f10:	00000793          	li	a5,0
    1f14:	00b00813          	li	a6,11
    1f18:	00f508b3          	add	a7,a0,a5
    1f1c:	0008c303          	lbu	t1,0(a7)
    1f20:	00f688b3          	add	a7,a3,a5
    1f24:	00178793          	addi	a5,a5,1
    1f28:	00688023          	sb	t1,0(a7)
    1f2c:	ff0796e3          	bne	a5,a6,1f18 <fatfs_sfn_create_entry+0x8>
    1f30:	02000793          	li	a5,32
    1f34:	000686a3          	sb	zero,13(a3)
    1f38:	00068723          	sb	zero,14(a3)
    1f3c:	000687a3          	sb	zero,15(a3)
    1f40:	000688a3          	sb	zero,17(a3)
    1f44:	00f68823          	sb	a5,16(a3)
    1f48:	000689a3          	sb	zero,19(a3)
    1f4c:	00f68923          	sb	a5,18(a3)
    1f50:	00068b23          	sb	zero,22(a3)
    1f54:	00068ba3          	sb	zero,23(a3)
    1f58:	00068ca3          	sb	zero,25(a3)
    1f5c:	00f68c23          	sb	a5,24(a3)
    1f60:	00070463          	beqz	a4,1f68 <fatfs_sfn_create_entry+0x58>
    1f64:	01000793          	li	a5,16
    1f68:	00f685a3          	sb	a5,11(a3)
    1f6c:	01065793          	srli	a5,a2,0x10
    1f70:	00f68a23          	sb	a5,20(a3)
    1f74:	0087d793          	srli	a5,a5,0x8
    1f78:	00f68aa3          	sb	a5,21(a3)
    1f7c:	01061793          	slli	a5,a2,0x10
    1f80:	0107d793          	srli	a5,a5,0x10
    1f84:	0087d793          	srli	a5,a5,0x8
    1f88:	00f68da3          	sb	a5,27(a3)
    1f8c:	0085d793          	srli	a5,a1,0x8
    1f90:	00b68e23          	sb	a1,28(a3)
    1f94:	00f68ea3          	sb	a5,29(a3)
    1f98:	0105d793          	srli	a5,a1,0x10
    1f9c:	0185d593          	srli	a1,a1,0x18
    1fa0:	00068623          	sb	zero,12(a3)
    1fa4:	00c68d23          	sb	a2,26(a3)
    1fa8:	00f68f23          	sb	a5,30(a3)
    1fac:	00b68fa3          	sb	a1,31(a3)
    1fb0:	00008067          	ret

00001fb4 <fatfs_lfn_create_sfn>:
    1fb4:	0005c703          	lbu	a4,0(a1)
    1fb8:	02e00793          	li	a5,46
    1fbc:	16f70463          	beq	a4,a5,2124 <fatfs_lfn_create_sfn+0x170>
    1fc0:	fe010113          	addi	sp,sp,-32
    1fc4:	00912a23          	sw	s1,20(sp)
    1fc8:	00050493          	mv	s1,a0
    1fcc:	00058513          	mv	a0,a1
    1fd0:	00112e23          	sw	ra,28(sp)
    1fd4:	00812c23          	sw	s0,24(sp)
    1fd8:	01212823          	sw	s2,16(sp)
    1fdc:	00058413          	mv	s0,a1
    1fe0:	fffff097          	auipc	ra,0xfffff
    1fe4:	ec4080e7          	jalr	-316(ra) # ea4 <strlen>
    1fe8:	00b00613          	li	a2,11
    1fec:	02000593          	li	a1,32
    1ff0:	00050913          	mv	s2,a0
    1ff4:	00048513          	mv	a0,s1
    1ff8:	fffff097          	auipc	ra,0xfffff
    1ffc:	e6c080e7          	jalr	-404(ra) # e64 <memset>
    2000:	00300613          	li	a2,3
    2004:	02000593          	li	a1,32
    2008:	00c10513          	addi	a0,sp,12
    200c:	fffff097          	auipc	ra,0xfffff
    2010:	e58080e7          	jalr	-424(ra) # e64 <memset>
    2014:	fff00713          	li	a4,-1
    2018:	00000793          	li	a5,0
    201c:	02e00693          	li	a3,46
    2020:	0d27c063          	blt	a5,s2,20e0 <fatfs_lfn_create_sfn+0x12c>
    2024:	fff00793          	li	a5,-1
    2028:	0ef70663          	beq	a4,a5,2114 <fatfs_lfn_create_sfn+0x160>
    202c:	00170793          	addi	a5,a4,1
    2030:	00c10693          	addi	a3,sp,12
    2034:	00470613          	addi	a2,a4,4
    2038:	0cf61063          	bne	a2,a5,20f8 <fatfs_lfn_create_sfn+0x144>
    203c:	00000613          	li	a2,0
    2040:	00000693          	li	a3,0
    2044:	02000813          	li	a6,32
    2048:	02e00893          	li	a7,46
    204c:	01900313          	li	t1,25
    2050:	00800e13          	li	t3,8
    2054:	02e6da63          	bge	a3,a4,2088 <fatfs_lfn_create_sfn+0xd4>
    2058:	00d407b3          	add	a5,s0,a3
    205c:	0007c783          	lbu	a5,0(a5)
    2060:	03078263          	beq	a5,a6,2084 <fatfs_lfn_create_sfn+0xd0>
    2064:	03178063          	beq	a5,a7,2084 <fatfs_lfn_create_sfn+0xd0>
    2068:	f9f78593          	addi	a1,a5,-97
    206c:	0ff5f593          	zext.b	a1,a1
    2070:	00c48533          	add	a0,s1,a2
    2074:	00160613          	addi	a2,a2,1
    2078:	00b36463          	bltu	t1,a1,2080 <fatfs_lfn_create_sfn+0xcc>
    207c:	fe078793          	addi	a5,a5,-32
    2080:	00f50023          	sb	a5,0(a0)
    2084:	09c61c63          	bne	a2,t3,211c <fatfs_lfn_create_sfn+0x168>
    2088:	00c10793          	addi	a5,sp,12
    208c:	00800693          	li	a3,8
    2090:	01900513          	li	a0,25
    2094:	00b00593          	li	a1,11
    2098:	0007c703          	lbu	a4,0(a5)
    209c:	f9f70613          	addi	a2,a4,-97
    20a0:	0ff67613          	zext.b	a2,a2
    20a4:	00c56663          	bltu	a0,a2,20b0 <fatfs_lfn_create_sfn+0xfc>
    20a8:	fe070713          	addi	a4,a4,-32
    20ac:	0ff77713          	zext.b	a4,a4
    20b0:	00d48633          	add	a2,s1,a3
    20b4:	00e60023          	sb	a4,0(a2)
    20b8:	00168693          	addi	a3,a3,1
    20bc:	00178793          	addi	a5,a5,1
    20c0:	fcb69ce3          	bne	a3,a1,2098 <fatfs_lfn_create_sfn+0xe4>
    20c4:	01c12083          	lw	ra,28(sp)
    20c8:	01812403          	lw	s0,24(sp)
    20cc:	01412483          	lw	s1,20(sp)
    20d0:	01012903          	lw	s2,16(sp)
    20d4:	00100513          	li	a0,1
    20d8:	02010113          	addi	sp,sp,32
    20dc:	00008067          	ret
    20e0:	00f40633          	add	a2,s0,a5
    20e4:	00064603          	lbu	a2,0(a2)
    20e8:	00d61463          	bne	a2,a3,20f0 <fatfs_lfn_create_sfn+0x13c>
    20ec:	00078713          	mv	a4,a5
    20f0:	00178793          	addi	a5,a5,1
    20f4:	f2dff06f          	j	2020 <fatfs_lfn_create_sfn+0x6c>
    20f8:	0127d863          	bge	a5,s2,2108 <fatfs_lfn_create_sfn+0x154>
    20fc:	00f405b3          	add	a1,s0,a5
    2100:	0005c583          	lbu	a1,0(a1)
    2104:	00b68023          	sb	a1,0(a3)
    2108:	00178793          	addi	a5,a5,1
    210c:	00168693          	addi	a3,a3,1
    2110:	f29ff06f          	j	2038 <fatfs_lfn_create_sfn+0x84>
    2114:	00090713          	mv	a4,s2
    2118:	f25ff06f          	j	203c <fatfs_lfn_create_sfn+0x88>
    211c:	00168693          	addi	a3,a3,1
    2120:	f35ff06f          	j	2054 <fatfs_lfn_create_sfn+0xa0>
    2124:	00000513          	li	a0,0
    2128:	00008067          	ret

0000212c <fatfs_lfn_generate_tail>:
    212c:	000187b7          	lui	a5,0x18
    2130:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2134:	16c7e063          	bltu	a5,a2,2294 <fatfs_lfn_generate_tail+0x168>
    2138:	fa010113          	addi	sp,sp,-96
    213c:	04812c23          	sw	s0,88(sp)
    2140:	04912a23          	sw	s1,84(sp)
    2144:	05412423          	sw	s4,72(sp)
    2148:	00050493          	mv	s1,a0
    214c:	00058a13          	mv	s4,a1
    2150:	00060413          	mv	s0,a2
    2154:	00000593          	li	a1,0
    2158:	00c00613          	li	a2,12
    215c:	00410513          	addi	a0,sp,4
    2160:	04112e23          	sw	ra,92(sp)
    2164:	05212823          	sw	s2,80(sp)
    2168:	05512223          	sw	s5,68(sp)
    216c:	03712e23          	sw	s7,60(sp)
    2170:	05312623          	sw	s3,76(sp)
    2174:	05612023          	sw	s6,64(sp)
    2178:	fffff097          	auipc	ra,0xfffff
    217c:	cec080e7          	jalr	-788(ra) # e64 <memset>
    2180:	000055b7          	lui	a1,0x5
    2184:	07e00793          	li	a5,126
    2188:	01100613          	li	a2,17
    218c:	dfc58593          	addi	a1,a1,-516 # 4dfc <font+0x1e0>
    2190:	01c10513          	addi	a0,sp,28
    2194:	01010913          	addi	s2,sp,16
    2198:	00f10223          	sb	a5,4(sp)
    219c:	00090a93          	mv	s5,s2
    21a0:	fffff097          	auipc	ra,0xfffff
    21a4:	ce0080e7          	jalr	-800(ra) # e80 <memcpy>
    21a8:	00900b93          	li	s7,9
    21ac:	00a00593          	li	a1,10
    21b0:	00040513          	mv	a0,s0
    21b4:	fffff097          	auipc	ra,0xfffff
    21b8:	c4c080e7          	jalr	-948(ra) # e00 <__umodsi3>
    21bc:	03050793          	addi	a5,a0,48
    21c0:	00278533          	add	a0,a5,sp
    21c4:	fec54783          	lbu	a5,-20(a0)
    21c8:	00090993          	mv	s3,s2
    21cc:	00040513          	mv	a0,s0
    21d0:	00a00593          	li	a1,10
    21d4:	00f90023          	sb	a5,0(s2)
    21d8:	00040b13          	mv	s6,s0
    21dc:	fffff097          	auipc	ra,0xfffff
    21e0:	bdc080e7          	jalr	-1060(ra) # db8 <__udivsi3>
    21e4:	00190913          	addi	s2,s2,1
    21e8:	00050413          	mv	s0,a0
    21ec:	fd6be0e3          	bltu	s7,s6,21ac <fatfs_lfn_generate_tail+0x80>
    21f0:	00090023          	sb	zero,0(s2)
    21f4:	00410713          	addi	a4,sp,4
    21f8:	00098793          	mv	a5,s3
    21fc:	0007c683          	lbu	a3,0(a5)
    2200:	fff78793          	addi	a5,a5,-1
    2204:	00170713          	addi	a4,a4,1
    2208:	00d70023          	sb	a3,0(a4)
    220c:	ff57f8e3          	bgeu	a5,s5,21fc <fatfs_lfn_generate_tail+0xd0>
    2210:	00100793          	li	a5,1
    2214:	0159e663          	bltu	s3,s5,2220 <fatfs_lfn_generate_tail+0xf4>
    2218:	415787b3          	sub	a5,a5,s5
    221c:	00f987b3          	add	a5,s3,a5
    2220:	03078793          	addi	a5,a5,48
    2224:	002787b3          	add	a5,a5,sp
    2228:	000a0593          	mv	a1,s4
    222c:	fc078aa3          	sb	zero,-43(a5)
    2230:	00b00613          	li	a2,11
    2234:	00048513          	mv	a0,s1
    2238:	fffff097          	auipc	ra,0xfffff
    223c:	c48080e7          	jalr	-952(ra) # e80 <memcpy>
    2240:	00410513          	addi	a0,sp,4
    2244:	fffff097          	auipc	ra,0xfffff
    2248:	c60080e7          	jalr	-928(ra) # ea4 <strlen>
    224c:	40a484b3          	sub	s1,s1,a0
    2250:	00050613          	mv	a2,a0
    2254:	00410593          	addi	a1,sp,4
    2258:	00848513          	addi	a0,s1,8
    225c:	fffff097          	auipc	ra,0xfffff
    2260:	c24080e7          	jalr	-988(ra) # e80 <memcpy>
    2264:	05c12083          	lw	ra,92(sp)
    2268:	05812403          	lw	s0,88(sp)
    226c:	05412483          	lw	s1,84(sp)
    2270:	05012903          	lw	s2,80(sp)
    2274:	04c12983          	lw	s3,76(sp)
    2278:	04812a03          	lw	s4,72(sp)
    227c:	04412a83          	lw	s5,68(sp)
    2280:	04012b03          	lw	s6,64(sp)
    2284:	03c12b83          	lw	s7,60(sp)
    2288:	00100513          	li	a0,1
    228c:	06010113          	addi	sp,sp,96
    2290:	00008067          	ret
    2294:	00000513          	li	a0,0
    2298:	00008067          	ret

0000229c <fatfs_total_path_levels>:
    229c:	00050793          	mv	a5,a0
    22a0:	06050463          	beqz	a0,2308 <fatfs_total_path_levels+0x6c>
    22a4:	00054703          	lbu	a4,0(a0)
    22a8:	02f00693          	li	a3,47
    22ac:	00d71863          	bne	a4,a3,22bc <fatfs_total_path_levels+0x20>
    22b0:	00150793          	addi	a5,a0,1
    22b4:	00000513          	li	a0,0
    22b8:	0400006f          	j	22f8 <fatfs_total_path_levels+0x5c>
    22bc:	00154683          	lbu	a3,1(a0)
    22c0:	03a00713          	li	a4,58
    22c4:	00e68a63          	beq	a3,a4,22d8 <fatfs_total_path_levels+0x3c>
    22c8:	00254683          	lbu	a3,2(a0)
    22cc:	05c00713          	li	a4,92
    22d0:	fff00513          	li	a0,-1
    22d4:	02e69c63          	bne	a3,a4,230c <fatfs_total_path_levels+0x70>
    22d8:	00378793          	addi	a5,a5,3
    22dc:	05c00713          	li	a4,92
    22e0:	fd5ff06f          	j	22b4 <fatfs_total_path_levels+0x18>
    22e4:	00178793          	addi	a5,a5,1
    22e8:	00e68663          	beq	a3,a4,22f4 <fatfs_total_path_levels+0x58>
    22ec:	0007c683          	lbu	a3,0(a5)
    22f0:	fe069ae3          	bnez	a3,22e4 <fatfs_total_path_levels+0x48>
    22f4:	00150513          	addi	a0,a0,1
    22f8:	0007c683          	lbu	a3,0(a5)
    22fc:	fe0698e3          	bnez	a3,22ec <fatfs_total_path_levels+0x50>
    2300:	fff50513          	addi	a0,a0,-1
    2304:	00008067          	ret
    2308:	fff00513          	li	a0,-1
    230c:	00008067          	ret

00002310 <fatfs_get_substring>:
    2310:	0c050c63          	beqz	a0,23e8 <fatfs_get_substring+0xd8>
    2314:	fe010113          	addi	sp,sp,-32
    2318:	00912a23          	sw	s1,20(sp)
    231c:	00112e23          	sw	ra,28(sp)
    2320:	00812c23          	sw	s0,24(sp)
    2324:	01212823          	sw	s2,16(sp)
    2328:	01312623          	sw	s3,12(sp)
    232c:	01412423          	sw	s4,8(sp)
    2330:	00050793          	mv	a5,a0
    2334:	00068493          	mv	s1,a3
    2338:	fff00513          	li	a0,-1
    233c:	06d05a63          	blez	a3,23b0 <fatfs_get_substring+0xa0>
    2340:	0007c983          	lbu	s3,0(a5)
    2344:	02f00713          	li	a4,47
    2348:	00058a13          	mv	s4,a1
    234c:	00060913          	mv	s2,a2
    2350:	00178413          	addi	s0,a5,1
    2354:	02e98463          	beq	s3,a4,237c <fatfs_get_substring+0x6c>
    2358:	0017c683          	lbu	a3,1(a5)
    235c:	03a00713          	li	a4,58
    2360:	00e68a63          	beq	a3,a4,2374 <fatfs_get_substring+0x64>
    2364:	0027c683          	lbu	a3,2(a5)
    2368:	05c00713          	li	a4,92
    236c:	fff00513          	li	a0,-1
    2370:	04e69063          	bne	a3,a4,23b0 <fatfs_get_substring+0xa0>
    2374:	00378413          	addi	s0,a5,3
    2378:	05c00993          	li	s3,92
    237c:	00040513          	mv	a0,s0
    2380:	fffff097          	auipc	ra,0xfffff
    2384:	b24080e7          	jalr	-1244(ra) # ea4 <strlen>
    2388:	00000713          	li	a4,0
    238c:	00000693          	li	a3,0
    2390:	00000793          	li	a5,0
    2394:	fff48493          	addi	s1,s1,-1
    2398:	00e905b3          	add	a1,s2,a4
    239c:	02a7ca63          	blt	a5,a0,23d0 <fatfs_get_substring+0xc0>
    23a0:	00058023          	sb	zero,0(a1)
    23a4:	00094503          	lbu	a0,0(s2)
    23a8:	00153513          	seqz	a0,a0
    23ac:	40a00533          	neg	a0,a0
    23b0:	01c12083          	lw	ra,28(sp)
    23b4:	01812403          	lw	s0,24(sp)
    23b8:	01412483          	lw	s1,20(sp)
    23bc:	01012903          	lw	s2,16(sp)
    23c0:	00c12983          	lw	s3,12(sp)
    23c4:	00812a03          	lw	s4,8(sp)
    23c8:	02010113          	addi	sp,sp,32
    23cc:	00008067          	ret
    23d0:	00f40633          	add	a2,s0,a5
    23d4:	00064603          	lbu	a2,0(a2)
    23d8:	01361c63          	bne	a2,s3,23f0 <fatfs_get_substring+0xe0>
    23dc:	00168693          	addi	a3,a3,1
    23e0:	00178793          	addi	a5,a5,1
    23e4:	fb5ff06f          	j	2398 <fatfs_get_substring+0x88>
    23e8:	fff00513          	li	a0,-1
    23ec:	00008067          	ret
    23f0:	ff4698e3          	bne	a3,s4,23e0 <fatfs_get_substring+0xd0>
    23f4:	fe9756e3          	bge	a4,s1,23e0 <fatfs_get_substring+0xd0>
    23f8:	00170713          	addi	a4,a4,1
    23fc:	00c58023          	sb	a2,0(a1)
    2400:	fe1ff06f          	j	23e0 <fatfs_get_substring+0xd0>

00002404 <fatfs_split_path>:
    2404:	fd010113          	addi	sp,sp,-48
    2408:	02912223          	sw	s1,36(sp)
    240c:	03212023          	sw	s2,32(sp)
    2410:	01312e23          	sw	s3,28(sp)
    2414:	01412c23          	sw	s4,24(sp)
    2418:	02112623          	sw	ra,44(sp)
    241c:	00068a13          	mv	s4,a3
    2420:	02812423          	sw	s0,40(sp)
    2424:	00050913          	mv	s2,a0
    2428:	00058493          	mv	s1,a1
    242c:	00060993          	mv	s3,a2
    2430:	00e12623          	sw	a4,12(sp)
    2434:	00000097          	auipc	ra,0x0
    2438:	e68080e7          	jalr	-408(ra) # 229c <fatfs_total_path_levels>
    243c:	fff00793          	li	a5,-1
    2440:	00c12683          	lw	a3,12(sp)
    2444:	02f51663          	bne	a0,a5,2470 <fatfs_split_path+0x6c>
    2448:	fff00413          	li	s0,-1
    244c:	02c12083          	lw	ra,44(sp)
    2450:	00040513          	mv	a0,s0
    2454:	02812403          	lw	s0,40(sp)
    2458:	02412483          	lw	s1,36(sp)
    245c:	02012903          	lw	s2,32(sp)
    2460:	01c12983          	lw	s3,28(sp)
    2464:	01812a03          	lw	s4,24(sp)
    2468:	03010113          	addi	sp,sp,48
    246c:	00008067          	ret
    2470:	00050413          	mv	s0,a0
    2474:	00050593          	mv	a1,a0
    2478:	000a0613          	mv	a2,s4
    247c:	00090513          	mv	a0,s2
    2480:	00000097          	auipc	ra,0x0
    2484:	e90080e7          	jalr	-368(ra) # 2310 <fatfs_get_substring>
    2488:	fc0510e3          	bnez	a0,2448 <fatfs_split_path+0x44>
    248c:	00041663          	bnez	s0,2498 <fatfs_split_path+0x94>
    2490:	00048023          	sb	zero,0(s1)
    2494:	fb9ff06f          	j	244c <fatfs_split_path+0x48>
    2498:	00090513          	mv	a0,s2
    249c:	fffff097          	auipc	ra,0xfffff
    24a0:	a08080e7          	jalr	-1528(ra) # ea4 <strlen>
    24a4:	00050413          	mv	s0,a0
    24a8:	000a0513          	mv	a0,s4
    24ac:	fffff097          	auipc	ra,0xfffff
    24b0:	9f8080e7          	jalr	-1544(ra) # ea4 <strlen>
    24b4:	40a40433          	sub	s0,s0,a0
    24b8:	0089d463          	bge	s3,s0,24c0 <fatfs_split_path+0xbc>
    24bc:	00098413          	mv	s0,s3
    24c0:	00040613          	mv	a2,s0
    24c4:	00048513          	mv	a0,s1
    24c8:	00090593          	mv	a1,s2
    24cc:	008484b3          	add	s1,s1,s0
    24d0:	fffff097          	auipc	ra,0xfffff
    24d4:	9b0080e7          	jalr	-1616(ra) # e80 <memcpy>
    24d8:	00000413          	li	s0,0
    24dc:	fe048fa3          	sb	zero,-1(s1)
    24e0:	f6dff06f          	j	244c <fatfs_split_path+0x48>

000024e4 <fatfs_compare_names>:
    24e4:	fd010113          	addi	sp,sp,-48
    24e8:	02112623          	sw	ra,44(sp)
    24ec:	02812423          	sw	s0,40(sp)
    24f0:	02912223          	sw	s1,36(sp)
    24f4:	03212023          	sw	s2,32(sp)
    24f8:	01312e23          	sw	s3,28(sp)
    24fc:	00058913          	mv	s2,a1
    2500:	01412c23          	sw	s4,24(sp)
    2504:	01512a23          	sw	s5,20(sp)
    2508:	01612823          	sw	s6,16(sp)
    250c:	00050a13          	mv	s4,a0
    2510:	fffff097          	auipc	ra,0xfffff
    2514:	2a4080e7          	jalr	676(ra) # 17b4 <FileString_GetExtension>
    2518:	00050493          	mv	s1,a0
    251c:	00090513          	mv	a0,s2
    2520:	fffff097          	auipc	ra,0xfffff
    2524:	294080e7          	jalr	660(ra) # 17b4 <FileString_GetExtension>
    2528:	fff00793          	li	a5,-1
    252c:	00050413          	mv	s0,a0
    2530:	00000993          	li	s3,0
    2534:	0af49263          	bne	s1,a5,25d8 <fatfs_compare_names+0xf4>
    2538:	0e951863          	bne	a0,s1,2628 <fatfs_compare_names+0x144>
    253c:	000a0513          	mv	a0,s4
    2540:	fffff097          	auipc	ra,0xfffff
    2544:	964080e7          	jalr	-1692(ra) # ea4 <strlen>
    2548:	00050493          	mv	s1,a0
    254c:	00090513          	mv	a0,s2
    2550:	fffff097          	auipc	ra,0xfffff
    2554:	954080e7          	jalr	-1708(ra) # ea4 <strlen>
    2558:	00050413          	mv	s0,a0
    255c:	fff48793          	addi	a5,s1,-1
    2560:	00fa07b3          	add	a5,s4,a5
    2564:	40978733          	sub	a4,a5,s1
    2568:	02000613          	li	a2,32
    256c:	00078693          	mv	a3,a5
    2570:	00e78863          	beq	a5,a4,2580 <fatfs_compare_names+0x9c>
    2574:	0007c583          	lbu	a1,0(a5)
    2578:	fff78793          	addi	a5,a5,-1
    257c:	04c58663          	beq	a1,a2,25c8 <fatfs_compare_names+0xe4>
    2580:	fff40793          	addi	a5,s0,-1
    2584:	00f907b3          	add	a5,s2,a5
    2588:	40878733          	sub	a4,a5,s0
    258c:	02000613          	li	a2,32
    2590:	00078693          	mv	a3,a5
    2594:	00e78863          	beq	a5,a4,25a4 <fatfs_compare_names+0xc0>
    2598:	0007c583          	lbu	a1,0(a5)
    259c:	fff78793          	addi	a5,a5,-1
    25a0:	02c58863          	beq	a1,a2,25d0 <fatfs_compare_names+0xec>
    25a4:	00000993          	li	s3,0
    25a8:	08941063          	bne	s0,s1,2628 <fatfs_compare_names+0x144>
    25ac:	00040613          	mv	a2,s0
    25b0:	00090593          	mv	a1,s2
    25b4:	000a0513          	mv	a0,s4
    25b8:	fffff097          	auipc	ra,0xfffff
    25bc:	18c080e7          	jalr	396(ra) # 1744 <FileString_StrCmpNoCase>
    25c0:	00153993          	seqz	s3,a0
    25c4:	0640006f          	j	2628 <fatfs_compare_names+0x144>
    25c8:	414684b3          	sub	s1,a3,s4
    25cc:	fa1ff06f          	j	256c <fatfs_compare_names+0x88>
    25d0:	41268433          	sub	s0,a3,s2
    25d4:	fbdff06f          	j	2590 <fatfs_compare_names+0xac>
    25d8:	04f50863          	beq	a0,a5,2628 <fatfs_compare_names+0x144>
    25dc:	00148a93          	addi	s5,s1,1
    25e0:	015a0ab3          	add	s5,s4,s5
    25e4:	00140b13          	addi	s6,s0,1
    25e8:	000a8513          	mv	a0,s5
    25ec:	fffff097          	auipc	ra,0xfffff
    25f0:	8b8080e7          	jalr	-1864(ra) # ea4 <strlen>
    25f4:	01690b33          	add	s6,s2,s6
    25f8:	00a12623          	sw	a0,12(sp)
    25fc:	000b0513          	mv	a0,s6
    2600:	fffff097          	auipc	ra,0xfffff
    2604:	8a4080e7          	jalr	-1884(ra) # ea4 <strlen>
    2608:	00c12603          	lw	a2,12(sp)
    260c:	00000993          	li	s3,0
    2610:	00a61c63          	bne	a2,a0,2628 <fatfs_compare_names+0x144>
    2614:	000b0593          	mv	a1,s6
    2618:	000a8513          	mv	a0,s5
    261c:	fffff097          	auipc	ra,0xfffff
    2620:	128080e7          	jalr	296(ra) # 1744 <FileString_StrCmpNoCase>
    2624:	f2050ce3          	beqz	a0,255c <fatfs_compare_names+0x78>
    2628:	02c12083          	lw	ra,44(sp)
    262c:	02812403          	lw	s0,40(sp)
    2630:	02412483          	lw	s1,36(sp)
    2634:	02012903          	lw	s2,32(sp)
    2638:	01812a03          	lw	s4,24(sp)
    263c:	01412a83          	lw	s5,20(sp)
    2640:	01012b03          	lw	s6,16(sp)
    2644:	00098513          	mv	a0,s3
    2648:	01c12983          	lw	s3,28(sp)
    264c:	03010113          	addi	sp,sp,48
    2650:	00008067          	ret

00002654 <_check_file_open>:
    2654:	fe010113          	addi	sp,sp,-32
    2658:	000057b7          	lui	a5,0x5
    265c:	00812c23          	sw	s0,24(sp)
    2660:	ea07a403          	lw	s0,-352(a5) # 4ea0 <_open_file_list>
    2664:	00912a23          	sw	s1,20(sp)
    2668:	01212823          	sw	s2,16(sp)
    266c:	01312623          	sw	s3,12(sp)
    2670:	00112e23          	sw	ra,28(sp)
    2674:	00050493          	mv	s1,a0
    2678:	01450913          	addi	s2,a0,20
    267c:	11850993          	addi	s3,a0,280
    2680:	02041263          	bnez	s0,26a4 <_check_file_open+0x50>
    2684:	00000513          	li	a0,0
    2688:	01c12083          	lw	ra,28(sp)
    268c:	01812403          	lw	s0,24(sp)
    2690:	01412483          	lw	s1,20(sp)
    2694:	01012903          	lw	s2,16(sp)
    2698:	00c12983          	lw	s3,12(sp)
    269c:	02010113          	addi	sp,sp,32
    26a0:	00008067          	ret
    26a4:	bc440793          	addi	a5,s0,-1084
    26a8:	02f48663          	beq	s1,a5,26d4 <_check_file_open+0x80>
    26ac:	00090593          	mv	a1,s2
    26b0:	bd840513          	addi	a0,s0,-1064
    26b4:	00000097          	auipc	ra,0x0
    26b8:	e30080e7          	jalr	-464(ra) # 24e4 <fatfs_compare_names>
    26bc:	00050c63          	beqz	a0,26d4 <_check_file_open+0x80>
    26c0:	00098593          	mv	a1,s3
    26c4:	cdc40513          	addi	a0,s0,-804
    26c8:	00000097          	auipc	ra,0x0
    26cc:	e1c080e7          	jalr	-484(ra) # 24e4 <fatfs_compare_names>
    26d0:	00051663          	bnez	a0,26dc <_check_file_open+0x88>
    26d4:	00442403          	lw	s0,4(s0)
    26d8:	fa9ff06f          	j	2680 <_check_file_open+0x2c>
    26dc:	00100513          	li	a0,1
    26e0:	fa9ff06f          	j	2688 <_check_file_open+0x34>

000026e4 <fatfs_get_sfn_display_name>:
    26e4:	00000713          	li	a4,0
    26e8:	00c00613          	li	a2,12
    26ec:	02000813          	li	a6,32
    26f0:	01900893          	li	a7,25
    26f4:	0005c783          	lbu	a5,0(a1)
    26f8:	00078463          	beqz	a5,2700 <fatfs_get_sfn_display_name+0x1c>
    26fc:	00c71863          	bne	a4,a2,270c <fatfs_get_sfn_display_name+0x28>
    2700:	00050023          	sb	zero,0(a0)
    2704:	00100513          	li	a0,1
    2708:	00008067          	ret
    270c:	00158593          	addi	a1,a1,1
    2710:	ff0782e3          	beq	a5,a6,26f4 <fatfs_get_sfn_display_name+0x10>
    2714:	fbf78693          	addi	a3,a5,-65
    2718:	0ff6f693          	zext.b	a3,a3
    271c:	00d8e663          	bltu	a7,a3,2728 <fatfs_get_sfn_display_name+0x44>
    2720:	02078793          	addi	a5,a5,32
    2724:	0ff7f793          	zext.b	a5,a5
    2728:	00f50023          	sb	a5,0(a0)
    272c:	00170713          	addi	a4,a4,1
    2730:	00150513          	addi	a0,a0,1
    2734:	fc1ff06f          	j	26f4 <fatfs_get_sfn_display_name+0x10>

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
    2770:	6f8080e7          	jalr	1784(ra) # e64 <memset>
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
    2864:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0x1169>
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
    29c4:	fffff097          	auipc	ra,0xfffff
    29c8:	ce8080e7          	jalr	-792(ra) # 16ac <__mulsi3>
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
    2a00:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0x1169>
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
    2a78:	344080e7          	jalr	836(ra) # db8 <__udivsi3>
    2a7c:	00001737          	lui	a4,0x1
    2a80:	00050793          	mv	a5,a0
    2a84:	ff470713          	addi	a4,a4,-12 # ff4 <oled_init_mode+0x60>
    2a88:	ffb00513          	li	a0,-5
    2a8c:	d4f77ee3          	bgeu	a4,a5,27e8 <fatfs_init+0x50>
    2a90:	00010737          	lui	a4,0x10
    2a94:	ff470713          	addi	a4,a4,-12 # fff4 <_fs+0x6708>
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
    2ad0:	000057b7          	lui	a5,0x5
    2ad4:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    2ad8:	ff010113          	addi	sp,sp,-16
    2adc:	00812423          	sw	s0,8(sp)
    2ae0:	00912223          	sw	s1,4(sp)
    2ae4:	00112623          	sw	ra,12(sp)
    2ae8:	00050493          	mv	s1,a0
    2aec:	00058413          	mv	s0,a1
    2af0:	00079663          	bnez	a5,2afc <fl_attach_media+0x2c>
    2af4:	fffff097          	auipc	ra,0xfffff
    2af8:	054080e7          	jalr	84(ra) # 1b48 <fl_init>
    2afc:	0000a537          	lui	a0,0xa
    2b00:	8ec50793          	addi	a5,a0,-1812 # 98ec <_fs>
    2b04:	8ec50513          	addi	a0,a0,-1812
    2b08:	0287ac23          	sw	s0,56(a5)
    2b0c:	0297aa23          	sw	s1,52(a5)
    2b10:	00000097          	auipc	ra,0x0
    2b14:	c88080e7          	jalr	-888(ra) # 2798 <fatfs_init>
    2b18:	00050413          	mv	s0,a0
    2b1c:	02050863          	beqz	a0,2b4c <fl_attach_media+0x7c>
    2b20:	00050593          	mv	a1,a0
    2b24:	00005537          	lui	a0,0x5
    2b28:	e1050513          	addi	a0,a0,-496 # 4e10 <font+0x1f4>
    2b2c:	fffff097          	auipc	ra,0xfffff
    2b30:	a44080e7          	jalr	-1468(ra) # 1570 <printf>
    2b34:	00c12083          	lw	ra,12(sp)
    2b38:	00040513          	mv	a0,s0
    2b3c:	00812403          	lw	s0,8(sp)
    2b40:	00412483          	lw	s1,4(sp)
    2b44:	01010113          	addi	sp,sp,16
    2b48:	00008067          	ret
    2b4c:	000057b7          	lui	a5,0x5
    2b50:	00100713          	li	a4,1
    2b54:	e8e7aa23          	sw	a4,-364(a5) # 4e94 <_filelib_valid>
    2b58:	fddff06f          	j	2b34 <fl_attach_media+0x64>

00002b5c <fatfs_fat_purge>:
    2b5c:	ff010113          	addi	sp,sp,-16
    2b60:	00812423          	sw	s0,8(sp)
    2b64:	25452403          	lw	s0,596(a0)
    2b68:	00912223          	sw	s1,4(sp)
    2b6c:	00112623          	sw	ra,12(sp)
    2b70:	00050493          	mv	s1,a0
    2b74:	00041663          	bnez	s0,2b80 <fatfs_fat_purge+0x24>
    2b78:	00100513          	li	a0,1
    2b7c:	0280006f          	j	2ba4 <fatfs_fat_purge+0x48>
    2b80:	20442783          	lw	a5,516(s0)
    2b84:	00079663          	bnez	a5,2b90 <fatfs_fat_purge+0x34>
    2b88:	20c42403          	lw	s0,524(s0)
    2b8c:	fe9ff06f          	j	2b74 <fatfs_fat_purge+0x18>
    2b90:	00040593          	mv	a1,s0
    2b94:	00048513          	mv	a0,s1
    2b98:	fffff097          	auipc	ra,0xfffff
    2b9c:	c48080e7          	jalr	-952(ra) # 17e0 <fatfs_fat_writeback>
    2ba0:	fe0514e3          	bnez	a0,2b88 <fatfs_fat_purge+0x2c>
    2ba4:	00c12083          	lw	ra,12(sp)
    2ba8:	00812403          	lw	s0,8(sp)
    2bac:	00412483          	lw	s1,4(sp)
    2bb0:	01010113          	addi	sp,sp,16
    2bb4:	00008067          	ret

00002bb8 <fatfs_find_next_cluster>:
    2bb8:	ff010113          	addi	sp,sp,-16
    2bbc:	00812423          	sw	s0,8(sp)
    2bc0:	01212023          	sw	s2,0(sp)
    2bc4:	00112623          	sw	ra,12(sp)
    2bc8:	00912223          	sw	s1,4(sp)
    2bcc:	00050913          	mv	s2,a0
    2bd0:	00200413          	li	s0,2
    2bd4:	00058463          	beqz	a1,2bdc <fatfs_find_next_cluster+0x24>
    2bd8:	00058413          	mv	s0,a1
    2bdc:	03092783          	lw	a5,48(s2)
    2be0:	00745493          	srli	s1,s0,0x7
    2be4:	00079463          	bnez	a5,2bec <fatfs_find_next_cluster+0x34>
    2be8:	00845493          	srli	s1,s0,0x8
    2bec:	01492583          	lw	a1,20(s2)
    2bf0:	00090513          	mv	a0,s2
    2bf4:	00b485b3          	add	a1,s1,a1
    2bf8:	fffff097          	auipc	ra,0xfffff
    2bfc:	c6c080e7          	jalr	-916(ra) # 1864 <fatfs_fat_read_sector>
    2c00:	00050793          	mv	a5,a0
    2c04:	fff00513          	li	a0,-1
    2c08:	04078a63          	beqz	a5,2c5c <fatfs_find_next_cluster+0xa4>
    2c0c:	03092703          	lw	a4,48(s2)
    2c10:	2087a783          	lw	a5,520(a5)
    2c14:	06071063          	bnez	a4,2c74 <fatfs_find_next_cluster+0xbc>
    2c18:	00849493          	slli	s1,s1,0x8
    2c1c:	40940433          	sub	s0,s0,s1
    2c20:	00010737          	lui	a4,0x10
    2c24:	00141413          	slli	s0,s0,0x1
    2c28:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6713>
    2c2c:	00e47433          	and	s0,s0,a4
    2c30:	008787b3          	add	a5,a5,s0
    2c34:	0017c503          	lbu	a0,1(a5)
    2c38:	0007c783          	lbu	a5,0(a5)
    2c3c:	00851513          	slli	a0,a0,0x8
    2c40:	00f50533          	add	a0,a0,a5
    2c44:	ffff07b7          	lui	a5,0xffff0
    2c48:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2c4c:	00f507b3          	add	a5,a0,a5
    2c50:	00700713          	li	a4,7
    2c54:	00f76463          	bltu	a4,a5,2c5c <fatfs_find_next_cluster+0xa4>
    2c58:	fff00513          	li	a0,-1
    2c5c:	00c12083          	lw	ra,12(sp)
    2c60:	00812403          	lw	s0,8(sp)
    2c64:	00412483          	lw	s1,4(sp)
    2c68:	00012903          	lw	s2,0(sp)
    2c6c:	01010113          	addi	sp,sp,16
    2c70:	00008067          	ret
    2c74:	00749493          	slli	s1,s1,0x7
    2c78:	40940433          	sub	s0,s0,s1
    2c7c:	00010737          	lui	a4,0x10
    2c80:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6713>
    2c84:	00241413          	slli	s0,s0,0x2
    2c88:	00e47433          	and	s0,s0,a4
    2c8c:	008787b3          	add	a5,a5,s0
    2c90:	0037c503          	lbu	a0,3(a5)
    2c94:	0027c703          	lbu	a4,2(a5)
    2c98:	01851513          	slli	a0,a0,0x18
    2c9c:	01071713          	slli	a4,a4,0x10
    2ca0:	00e50533          	add	a0,a0,a4
    2ca4:	0007c703          	lbu	a4,0(a5)
    2ca8:	0017c783          	lbu	a5,1(a5)
    2cac:	00e50533          	add	a0,a0,a4
    2cb0:	00879793          	slli	a5,a5,0x8
    2cb4:	00f50533          	add	a0,a0,a5
    2cb8:	00451513          	slli	a0,a0,0x4
    2cbc:	00455513          	srli	a0,a0,0x4
    2cc0:	f00007b7          	lui	a5,0xf0000
    2cc4:	f85ff06f          	j	2c48 <fatfs_find_next_cluster+0x90>

00002cc8 <fatfs_sector_reader>:
    2cc8:	03052783          	lw	a5,48(a0)
    2ccc:	fd010113          	addi	sp,sp,-48
    2cd0:	02812423          	sw	s0,40(sp)
    2cd4:	03212023          	sw	s2,32(sp)
    2cd8:	01312e23          	sw	s3,28(sp)
    2cdc:	02112623          	sw	ra,44(sp)
    2ce0:	02912223          	sw	s1,36(sp)
    2ce4:	01412c23          	sw	s4,24(sp)
    2ce8:	01512a23          	sw	s5,20(sp)
    2cec:	00f5e7b3          	or	a5,a1,a5
    2cf0:	00050413          	mv	s0,a0
    2cf4:	00060913          	mv	s2,a2
    2cf8:	00068993          	mv	s3,a3
    2cfc:	06079c63          	bnez	a5,2d74 <fatfs_sector_reader+0xac>
    2d00:	01052783          	lw	a5,16(a0)
    2d04:	02f66663          	bltu	a2,a5,2d30 <fatfs_sector_reader+0x68>
    2d08:	00000513          	li	a0,0
    2d0c:	02c12083          	lw	ra,44(sp)
    2d10:	02812403          	lw	s0,40(sp)
    2d14:	02412483          	lw	s1,36(sp)
    2d18:	02012903          	lw	s2,32(sp)
    2d1c:	01c12983          	lw	s3,28(sp)
    2d20:	01812a03          	lw	s4,24(sp)
    2d24:	01412a83          	lw	s5,20(sp)
    2d28:	03010113          	addi	sp,sp,48
    2d2c:	00008067          	ret
    2d30:	01c52503          	lw	a0,28(a0)
    2d34:	00c42783          	lw	a5,12(s0)
    2d38:	00f50533          	add	a0,a0,a5
    2d3c:	01250533          	add	a0,a0,s2
    2d40:	0a098263          	beqz	s3,2de4 <fatfs_sector_reader+0x11c>
    2d44:	03442783          	lw	a5,52(s0)
    2d48:	00100613          	li	a2,1
    2d4c:	00098593          	mv	a1,s3
    2d50:	02812403          	lw	s0,40(sp)
    2d54:	02c12083          	lw	ra,44(sp)
    2d58:	02412483          	lw	s1,36(sp)
    2d5c:	02012903          	lw	s2,32(sp)
    2d60:	01c12983          	lw	s3,28(sp)
    2d64:	01812a03          	lw	s4,24(sp)
    2d68:	01412a83          	lw	s5,20(sp)
    2d6c:	03010113          	addi	sp,sp,48
    2d70:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2d74:	00058493          	mv	s1,a1
    2d78:	00054583          	lbu	a1,0(a0)
    2d7c:	00060513          	mv	a0,a2
    2d80:	00000a93          	li	s5,0
    2d84:	00b12623          	sw	a1,12(sp)
    2d88:	ffffe097          	auipc	ra,0xffffe
    2d8c:	030080e7          	jalr	48(ra) # db8 <__udivsi3>
    2d90:	00c12583          	lw	a1,12(sp)
    2d94:	00050a13          	mv	s4,a0
    2d98:	00090513          	mv	a0,s2
    2d9c:	ffffe097          	auipc	ra,0xffffe
    2da0:	064080e7          	jalr	100(ra) # e00 <__umodsi3>
    2da4:	00050913          	mv	s2,a0
    2da8:	034a9063          	bne	s5,s4,2dc8 <fatfs_sector_reader+0x100>
    2dac:	fff00793          	li	a5,-1
    2db0:	f4f48ce3          	beq	s1,a5,2d08 <fatfs_sector_reader+0x40>
    2db4:	00048593          	mv	a1,s1
    2db8:	00040513          	mv	a0,s0
    2dbc:	fffff097          	auipc	ra,0xfffff
    2dc0:	c50080e7          	jalr	-944(ra) # 1a0c <fatfs_lba_of_cluster>
    2dc4:	f79ff06f          	j	2d3c <fatfs_sector_reader+0x74>
    2dc8:	00048593          	mv	a1,s1
    2dcc:	00040513          	mv	a0,s0
    2dd0:	00000097          	auipc	ra,0x0
    2dd4:	de8080e7          	jalr	-536(ra) # 2bb8 <fatfs_find_next_cluster>
    2dd8:	00050493          	mv	s1,a0
    2ddc:	001a8a93          	addi	s5,s5,1
    2de0:	fc9ff06f          	j	2da8 <fatfs_sector_reader+0xe0>
    2de4:	24442783          	lw	a5,580(s0)
    2de8:	00a78c63          	beq	a5,a0,2e00 <fatfs_sector_reader+0x138>
    2dec:	03442783          	lw	a5,52(s0)
    2df0:	24a42223          	sw	a0,580(s0)
    2df4:	00100613          	li	a2,1
    2df8:	04440593          	addi	a1,s0,68
    2dfc:	f55ff06f          	j	2d50 <fatfs_sector_reader+0x88>
    2e00:	00100513          	li	a0,1
    2e04:	f09ff06f          	j	2d0c <fatfs_sector_reader+0x44>

00002e08 <fatfs_get_file_entry>:
    2e08:	eb010113          	addi	sp,sp,-336
    2e0c:	14812423          	sw	s0,328(sp)
    2e10:	01810413          	addi	s0,sp,24
    2e14:	14912223          	sw	s1,324(sp)
    2e18:	15212023          	sw	s2,320(sp)
    2e1c:	13312e23          	sw	s3,316(sp)
    2e20:	13412c23          	sw	s4,312(sp)
    2e24:	13512a23          	sw	s5,308(sp)
    2e28:	13612823          	sw	s6,304(sp)
    2e2c:	14112623          	sw	ra,332(sp)
    2e30:	13712623          	sw	s7,300(sp)
    2e34:	13812423          	sw	s8,296(sp)
    2e38:	13912223          	sw	s9,292(sp)
    2e3c:	13a12023          	sw	s10,288(sp)
    2e40:	00050493          	mv	s1,a0
    2e44:	00058a93          	mv	s5,a1
    2e48:	00060913          	mv	s2,a2
    2e4c:	00068993          	mv	s3,a3
    2e50:	10010ea3          	sb	zero,285(sp)
    2e54:	11c10a13          	addi	s4,sp,284
    2e58:	00040b13          	mv	s6,s0
    2e5c:	00040513          	mv	a0,s0
    2e60:	00d00613          	li	a2,13
    2e64:	00000593          	li	a1,0
    2e68:	00d40413          	addi	s0,s0,13
    2e6c:	ffffe097          	auipc	ra,0xffffe
    2e70:	ff8080e7          	jalr	-8(ra) # e64 <memset>
    2e74:	ff4414e3          	bne	s0,s4,2e5c <fatfs_get_file_entry+0x54>
    2e78:	00000a13          	li	s4,0
    2e7c:	24448c13          	addi	s8,s1,580
    2e80:	00800c93          	li	s9,8
    2e84:	02000b93          	li	s7,32
    2e88:	00000693          	li	a3,0
    2e8c:	000a0613          	mv	a2,s4
    2e90:	000a8593          	mv	a1,s5
    2e94:	00048513          	mv	a0,s1
    2e98:	00000097          	auipc	ra,0x0
    2e9c:	e30080e7          	jalr	-464(ra) # 2cc8 <fatfs_sector_reader>
    2ea0:	16050463          	beqz	a0,3008 <fatfs_get_file_entry+0x200>
    2ea4:	04448413          	addi	s0,s1,68
    2ea8:	02e00d13          	li	s10,46
    2eac:	00040513          	mv	a0,s0
    2eb0:	fffff097          	auipc	ra,0xfffff
    2eb4:	e18080e7          	jalr	-488(ra) # 1cc8 <fatfs_entry_lfn_text>
    2eb8:	02050263          	beqz	a0,2edc <fatfs_get_file_entry+0xd4>
    2ebc:	00040593          	mv	a1,s0
    2ec0:	000b0513          	mv	a0,s6
    2ec4:	fffff097          	auipc	ra,0xfffff
    2ec8:	cfc080e7          	jalr	-772(ra) # 1bc0 <fatfs_lfn_cache_entry>
    2ecc:	02040413          	addi	s0,s0,32
    2ed0:	fd841ee3          	bne	s0,s8,2eac <fatfs_get_file_entry+0xa4>
    2ed4:	001a0a13          	addi	s4,s4,1
    2ed8:	fb1ff06f          	j	2e88 <fatfs_get_file_entry+0x80>
    2edc:	00040513          	mv	a0,s0
    2ee0:	fffff097          	auipc	ra,0xfffff
    2ee4:	dfc080e7          	jalr	-516(ra) # 1cdc <fatfs_entry_lfn_invalid>
    2ee8:	00050663          	beqz	a0,2ef4 <fatfs_get_file_entry+0xec>
    2eec:	10010ea3          	sb	zero,285(sp)
    2ef0:	fddff06f          	j	2ecc <fatfs_get_file_entry+0xc4>
    2ef4:	00040593          	mv	a1,s0
    2ef8:	000b0513          	mv	a0,s6
    2efc:	fffff097          	auipc	ra,0xfffff
    2f00:	e18080e7          	jalr	-488(ra) # 1d14 <fatfs_entry_lfn_exists>
    2f04:	06050863          	beqz	a0,2f74 <fatfs_get_file_entry+0x16c>
    2f08:	000b0513          	mv	a0,s6
    2f0c:	fffff097          	auipc	ra,0xfffff
    2f10:	d80080e7          	jalr	-640(ra) # 1c8c <fatfs_lfn_cache_get>
    2f14:	00090593          	mv	a1,s2
    2f18:	fffff097          	auipc	ra,0xfffff
    2f1c:	5cc080e7          	jalr	1484(ra) # 24e4 <fatfs_compare_names>
    2f20:	fc0506e3          	beqz	a0,2eec <fatfs_get_file_entry+0xe4>
    2f24:	02000613          	li	a2,32
    2f28:	00040593          	mv	a1,s0
    2f2c:	00098513          	mv	a0,s3
    2f30:	ffffe097          	auipc	ra,0xffffe
    2f34:	f50080e7          	jalr	-176(ra) # e80 <memcpy>
    2f38:	00100513          	li	a0,1
    2f3c:	14c12083          	lw	ra,332(sp)
    2f40:	14812403          	lw	s0,328(sp)
    2f44:	14412483          	lw	s1,324(sp)
    2f48:	14012903          	lw	s2,320(sp)
    2f4c:	13c12983          	lw	s3,316(sp)
    2f50:	13812a03          	lw	s4,312(sp)
    2f54:	13412a83          	lw	s5,308(sp)
    2f58:	13012b03          	lw	s6,304(sp)
    2f5c:	12c12b83          	lw	s7,300(sp)
    2f60:	12812c03          	lw	s8,296(sp)
    2f64:	12412c83          	lw	s9,292(sp)
    2f68:	12012d03          	lw	s10,288(sp)
    2f6c:	15010113          	addi	sp,sp,336
    2f70:	00008067          	ret
    2f74:	00040513          	mv	a0,s0
    2f78:	fffff097          	auipc	ra,0xfffff
    2f7c:	de4080e7          	jalr	-540(ra) # 1d5c <fatfs_entry_sfn_only>
    2f80:	f40506e3          	beqz	a0,2ecc <fatfs_get_file_entry+0xc4>
    2f84:	00d00613          	li	a2,13
    2f88:	00000593          	li	a1,0
    2f8c:	00810513          	addi	a0,sp,8
    2f90:	ffffe097          	auipc	ra,0xffffe
    2f94:	ed4080e7          	jalr	-300(ra) # e64 <memset>
    2f98:	00000793          	li	a5,0
    2f9c:	00f406b3          	add	a3,s0,a5
    2fa0:	0006c683          	lbu	a3,0(a3)
    2fa4:	00810713          	addi	a4,sp,8
    2fa8:	00f70733          	add	a4,a4,a5
    2fac:	00d70023          	sb	a3,0(a4)
    2fb0:	00178793          	addi	a5,a5,1
    2fb4:	ff9794e3          	bne	a5,s9,2f9c <fatfs_get_file_entry+0x194>
    2fb8:	00844783          	lbu	a5,8(s0)
    2fbc:	00944683          	lbu	a3,9(s0)
    2fc0:	00100713          	li	a4,1
    2fc4:	00f108a3          	sb	a5,17(sp)
    2fc8:	00d10923          	sb	a3,18(sp)
    2fcc:	01769663          	bne	a3,s7,2fd8 <fatfs_get_file_entry+0x1d0>
    2fd0:	fe078793          	addi	a5,a5,-32
    2fd4:	00f03733          	snez	a4,a5
    2fd8:	00a44783          	lbu	a5,10(s0)
    2fdc:	00f109a3          	sb	a5,19(sp)
    2fe0:	01779463          	bne	a5,s7,2fe8 <fatfs_get_file_entry+0x1e0>
    2fe4:	00070a63          	beqz	a4,2ff8 <fatfs_get_file_entry+0x1f0>
    2fe8:	00814703          	lbu	a4,8(sp)
    2fec:	02000793          	li	a5,32
    2ff0:	01a70463          	beq	a4,s10,2ff8 <fatfs_get_file_entry+0x1f0>
    2ff4:	02e00793          	li	a5,46
    2ff8:	00f10823          	sb	a5,16(sp)
    2ffc:	00090593          	mv	a1,s2
    3000:	00810513          	addi	a0,sp,8
    3004:	f15ff06f          	j	2f18 <fatfs_get_file_entry+0x110>
    3008:	00000513          	li	a0,0
    300c:	f31ff06f          	j	2f3c <fatfs_get_file_entry+0x134>

00003010 <_open_directory>:
    3010:	eb010113          	addi	sp,sp,-336
    3014:	13512a23          	sw	s5,308(sp)
    3018:	0000aab7          	lui	s5,0xa
    301c:	8eca8793          	addi	a5,s5,-1812 # 98ec <_fs>
    3020:	14812423          	sw	s0,328(sp)
    3024:	14912223          	sw	s1,324(sp)
    3028:	15212023          	sw	s2,320(sp)
    302c:	13312e23          	sw	s3,316(sp)
    3030:	13412c23          	sw	s4,312(sp)
    3034:	13612823          	sw	s6,304(sp)
    3038:	0087a403          	lw	s0,8(a5)
    303c:	14112623          	sw	ra,332(sp)
    3040:	00050a13          	mv	s4,a0
    3044:	00058913          	mv	s2,a1
    3048:	fffff097          	auipc	ra,0xfffff
    304c:	254080e7          	jalr	596(ra) # 229c <fatfs_total_path_levels>
    3050:	00050993          	mv	s3,a0
    3054:	00000493          	li	s1,0
    3058:	fff00b13          	li	s6,-1
    305c:	0099d863          	bge	s3,s1,306c <_open_directory+0x5c>
    3060:	00892023          	sw	s0,0(s2)
    3064:	00100513          	li	a0,1
    3068:	0240006f          	j	308c <_open_directory+0x7c>
    306c:	10400693          	li	a3,260
    3070:	02c10613          	addi	a2,sp,44
    3074:	00048593          	mv	a1,s1
    3078:	000a0513          	mv	a0,s4
    307c:	fffff097          	auipc	ra,0xfffff
    3080:	294080e7          	jalr	660(ra) # 2310 <fatfs_get_substring>
    3084:	03651863          	bne	a0,s6,30b4 <_open_directory+0xa4>
    3088:	00000513          	li	a0,0
    308c:	14c12083          	lw	ra,332(sp)
    3090:	14812403          	lw	s0,328(sp)
    3094:	14412483          	lw	s1,324(sp)
    3098:	14012903          	lw	s2,320(sp)
    309c:	13c12983          	lw	s3,316(sp)
    30a0:	13812a03          	lw	s4,312(sp)
    30a4:	13412a83          	lw	s5,308(sp)
    30a8:	13012b03          	lw	s6,304(sp)
    30ac:	15010113          	addi	sp,sp,336
    30b0:	00008067          	ret
    30b4:	00c10693          	addi	a3,sp,12
    30b8:	02c10613          	addi	a2,sp,44
    30bc:	00040593          	mv	a1,s0
    30c0:	8eca8513          	addi	a0,s5,-1812
    30c4:	00000097          	auipc	ra,0x0
    30c8:	d44080e7          	jalr	-700(ra) # 2e08 <fatfs_get_file_entry>
    30cc:	fa050ee3          	beqz	a0,3088 <_open_directory+0x78>
    30d0:	00c10513          	addi	a0,sp,12
    30d4:	fffff097          	auipc	ra,0xfffff
    30d8:	cc4080e7          	jalr	-828(ra) # 1d98 <fatfs_entry_is_dir>
    30dc:	fa0506e3          	beqz	a0,3088 <_open_directory+0x78>
    30e0:	02015403          	lhu	s0,32(sp)
    30e4:	02615783          	lhu	a5,38(sp)
    30e8:	00148493          	addi	s1,s1,1
    30ec:	01041413          	slli	s0,s0,0x10
    30f0:	00f40433          	add	s0,s0,a5
    30f4:	f69ff06f          	j	305c <_open_directory+0x4c>

000030f8 <fl_opendir>:
    30f8:	fe010113          	addi	sp,sp,-32
    30fc:	fff00793          	li	a5,-1
    3100:	00f12623          	sw	a5,12(sp)
    3104:	000057b7          	lui	a5,0x5
    3108:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    310c:	00812c23          	sw	s0,24(sp)
    3110:	01212823          	sw	s2,16(sp)
    3114:	00112e23          	sw	ra,28(sp)
    3118:	00912a23          	sw	s1,20(sp)
    311c:	00050913          	mv	s2,a0
    3120:	00058413          	mv	s0,a1
    3124:	00079663          	bnez	a5,3130 <fl_opendir+0x38>
    3128:	fffff097          	auipc	ra,0xfffff
    312c:	a20080e7          	jalr	-1504(ra) # 1b48 <fl_init>
    3130:	0000a4b7          	lui	s1,0xa
    3134:	8ec48793          	addi	a5,s1,-1812 # 98ec <_fs>
    3138:	03c7a783          	lw	a5,60(a5)
    313c:	8ec48493          	addi	s1,s1,-1812
    3140:	00078463          	beqz	a5,3148 <fl_opendir+0x50>
    3144:	000780e7          	jalr	a5
    3148:	00090513          	mv	a0,s2
    314c:	fffff097          	auipc	ra,0xfffff
    3150:	150080e7          	jalr	336(ra) # 229c <fatfs_total_path_levels>
    3154:	fff00793          	li	a5,-1
    3158:	02f51063          	bne	a0,a5,3178 <fl_opendir+0x80>
    315c:	0084a783          	lw	a5,8(s1)
    3160:	00f12623          	sw	a5,12(sp)
    3164:	00c12783          	lw	a5,12(sp)
    3168:	00042023          	sw	zero,0(s0)
    316c:	00040423          	sb	zero,8(s0)
    3170:	00f42223          	sw	a5,4(s0)
    3174:	0180006f          	j	318c <fl_opendir+0x94>
    3178:	00c10593          	addi	a1,sp,12
    317c:	00090513          	mv	a0,s2
    3180:	00000097          	auipc	ra,0x0
    3184:	e90080e7          	jalr	-368(ra) # 3010 <_open_directory>
    3188:	fc051ee3          	bnez	a0,3164 <fl_opendir+0x6c>
    318c:	0404a783          	lw	a5,64(s1)
    3190:	00078463          	beqz	a5,3198 <fl_opendir+0xa0>
    3194:	000780e7          	jalr	a5
    3198:	00c12703          	lw	a4,12(sp)
    319c:	fff00793          	li	a5,-1
    31a0:	00f71463          	bne	a4,a5,31a8 <fl_opendir+0xb0>
    31a4:	00000413          	li	s0,0
    31a8:	01c12083          	lw	ra,28(sp)
    31ac:	00040513          	mv	a0,s0
    31b0:	01812403          	lw	s0,24(sp)
    31b4:	01412483          	lw	s1,20(sp)
    31b8:	01012903          	lw	s2,16(sp)
    31bc:	02010113          	addi	sp,sp,32
    31c0:	00008067          	ret

000031c4 <_open_file>:
    31c4:	fc010113          	addi	sp,sp,-64
    31c8:	02812c23          	sw	s0,56(sp)
    31cc:	03312623          	sw	s3,44(sp)
    31d0:	02112e23          	sw	ra,60(sp)
    31d4:	02912a23          	sw	s1,52(sp)
    31d8:	03212823          	sw	s2,48(sp)
    31dc:	00050993          	mv	s3,a0
    31e0:	ffffe097          	auipc	ra,0xffffe
    31e4:	770080e7          	jalr	1904(ra) # 1950 <_allocate_file>
    31e8:	00050413          	mv	s0,a0
    31ec:	10050c63          	beqz	a0,3304 <_open_file+0x140>
    31f0:	01450913          	addi	s2,a0,20
    31f4:	10400613          	li	a2,260
    31f8:	00000593          	li	a1,0
    31fc:	00090513          	mv	a0,s2
    3200:	ffffe097          	auipc	ra,0xffffe
    3204:	c64080e7          	jalr	-924(ra) # e64 <memset>
    3208:	11840493          	addi	s1,s0,280
    320c:	10400613          	li	a2,260
    3210:	00000593          	li	a1,0
    3214:	00048513          	mv	a0,s1
    3218:	ffffe097          	auipc	ra,0xffffe
    321c:	c4c080e7          	jalr	-948(ra) # e64 <memset>
    3220:	10400713          	li	a4,260
    3224:	00048693          	mv	a3,s1
    3228:	10400613          	li	a2,260
    322c:	00090593          	mv	a1,s2
    3230:	00098513          	mv	a0,s3
    3234:	fffff097          	auipc	ra,0xfffff
    3238:	1d0080e7          	jalr	464(ra) # 2404 <fatfs_split_path>
    323c:	fff00793          	li	a5,-1
    3240:	00f51c63          	bne	a0,a5,3258 <_open_file+0x94>
    3244:	00040513          	mv	a0,s0
    3248:	ffffe097          	auipc	ra,0xffffe
    324c:	77c080e7          	jalr	1916(ra) # 19c4 <_free_file>
    3250:	00000413          	li	s0,0
    3254:	0b00006f          	j	3304 <_open_file+0x140>
    3258:	00040513          	mv	a0,s0
    325c:	fffff097          	auipc	ra,0xfffff
    3260:	3f8080e7          	jalr	1016(ra) # 2654 <_check_file_open>
    3264:	fe0510e3          	bnez	a0,3244 <_open_file+0x80>
    3268:	01444783          	lbu	a5,20(s0)
    326c:	0a079c63          	bnez	a5,3324 <_open_file+0x160>
    3270:	0000a7b7          	lui	a5,0xa
    3274:	8f47a783          	lw	a5,-1804(a5) # 98f4 <_fs+0x8>
    3278:	00f42023          	sw	a5,0(s0)
    327c:	00042583          	lw	a1,0(s0)
    3280:	0000a937          	lui	s2,0xa
    3284:	00010693          	mv	a3,sp
    3288:	00048613          	mv	a2,s1
    328c:	8ec90513          	addi	a0,s2,-1812 # 98ec <_fs>
    3290:	00000097          	auipc	ra,0x0
    3294:	b78080e7          	jalr	-1160(ra) # 2e08 <fatfs_get_file_entry>
    3298:	fa0506e3          	beqz	a0,3244 <_open_file+0x80>
    329c:	00010513          	mv	a0,sp
    32a0:	fffff097          	auipc	ra,0xfffff
    32a4:	b08080e7          	jalr	-1272(ra) # 1da8 <fatfs_entry_is_file>
    32a8:	f8050ee3          	beqz	a0,3244 <_open_file+0x80>
    32ac:	00b00613          	li	a2,11
    32b0:	00010593          	mv	a1,sp
    32b4:	21c40513          	addi	a0,s0,540
    32b8:	ffffe097          	auipc	ra,0xffffe
    32bc:	bc8080e7          	jalr	-1080(ra) # e80 <memcpy>
    32c0:	01c12783          	lw	a5,28(sp)
    32c4:	01a15703          	lhu	a4,26(sp)
    32c8:	00042423          	sw	zero,8(s0)
    32cc:	00f42623          	sw	a5,12(s0)
    32d0:	01415783          	lhu	a5,20(sp)
    32d4:	42042a23          	sw	zero,1076(s0)
    32d8:	00042823          	sw	zero,16(s0)
    32dc:	01079793          	slli	a5,a5,0x10
    32e0:	00e787b3          	add	a5,a5,a4
    32e4:	00f42223          	sw	a5,4(s0)
    32e8:	fff00793          	li	a5,-1
    32ec:	42f42823          	sw	a5,1072(s0)
    32f0:	22f42423          	sw	a5,552(s0)
    32f4:	22f42623          	sw	a5,556(s0)
    32f8:	8ec90513          	addi	a0,s2,-1812
    32fc:	00000097          	auipc	ra,0x0
    3300:	860080e7          	jalr	-1952(ra) # 2b5c <fatfs_fat_purge>
    3304:	03c12083          	lw	ra,60(sp)
    3308:	00040513          	mv	a0,s0
    330c:	03812403          	lw	s0,56(sp)
    3310:	03412483          	lw	s1,52(sp)
    3314:	03012903          	lw	s2,48(sp)
    3318:	02c12983          	lw	s3,44(sp)
    331c:	04010113          	addi	sp,sp,64
    3320:	00008067          	ret
    3324:	00040593          	mv	a1,s0
    3328:	00090513          	mv	a0,s2
    332c:	00000097          	auipc	ra,0x0
    3330:	ce4080e7          	jalr	-796(ra) # 3010 <_open_directory>
    3334:	f40514e3          	bnez	a0,327c <_open_file+0xb8>
    3338:	f0dff06f          	j	3244 <_open_file+0x80>

0000333c <fatfs_sfn_exists>:
    333c:	fe010113          	addi	sp,sp,-32
    3340:	00912a23          	sw	s1,20(sp)
    3344:	01212823          	sw	s2,16(sp)
    3348:	01312623          	sw	s3,12(sp)
    334c:	01412423          	sw	s4,8(sp)
    3350:	01512223          	sw	s5,4(sp)
    3354:	00112e23          	sw	ra,28(sp)
    3358:	00812c23          	sw	s0,24(sp)
    335c:	00050493          	mv	s1,a0
    3360:	00058993          	mv	s3,a1
    3364:	00060a13          	mv	s4,a2
    3368:	00000913          	li	s2,0
    336c:	24450a93          	addi	s5,a0,580
    3370:	00000693          	li	a3,0
    3374:	00090613          	mv	a2,s2
    3378:	00098593          	mv	a1,s3
    337c:	00048513          	mv	a0,s1
    3380:	00000097          	auipc	ra,0x0
    3384:	948080e7          	jalr	-1720(ra) # 2cc8 <fatfs_sector_reader>
    3388:	06050263          	beqz	a0,33ec <fatfs_sfn_exists+0xb0>
    338c:	04448413          	addi	s0,s1,68
    3390:	00040513          	mv	a0,s0
    3394:	fffff097          	auipc	ra,0xfffff
    3398:	934080e7          	jalr	-1740(ra) # 1cc8 <fatfs_entry_lfn_text>
    339c:	02051e63          	bnez	a0,33d8 <fatfs_sfn_exists+0x9c>
    33a0:	00040513          	mv	a0,s0
    33a4:	fffff097          	auipc	ra,0xfffff
    33a8:	938080e7          	jalr	-1736(ra) # 1cdc <fatfs_entry_lfn_invalid>
    33ac:	02051663          	bnez	a0,33d8 <fatfs_sfn_exists+0x9c>
    33b0:	00040513          	mv	a0,s0
    33b4:	fffff097          	auipc	ra,0xfffff
    33b8:	9a8080e7          	jalr	-1624(ra) # 1d5c <fatfs_entry_sfn_only>
    33bc:	00050e63          	beqz	a0,33d8 <fatfs_sfn_exists+0x9c>
    33c0:	00b00613          	li	a2,11
    33c4:	000a0593          	mv	a1,s4
    33c8:	00040513          	mv	a0,s0
    33cc:	ffffe097          	auipc	ra,0xffffe
    33d0:	af8080e7          	jalr	-1288(ra) # ec4 <strncmp>
    33d4:	00050a63          	beqz	a0,33e8 <fatfs_sfn_exists+0xac>
    33d8:	02040413          	addi	s0,s0,32
    33dc:	fb541ae3          	bne	s0,s5,3390 <fatfs_sfn_exists+0x54>
    33e0:	00190913          	addi	s2,s2,1
    33e4:	f8dff06f          	j	3370 <fatfs_sfn_exists+0x34>
    33e8:	00100513          	li	a0,1
    33ec:	01c12083          	lw	ra,28(sp)
    33f0:	01812403          	lw	s0,24(sp)
    33f4:	01412483          	lw	s1,20(sp)
    33f8:	01012903          	lw	s2,16(sp)
    33fc:	00c12983          	lw	s3,12(sp)
    3400:	00812a03          	lw	s4,8(sp)
    3404:	00412a83          	lw	s5,4(sp)
    3408:	02010113          	addi	sp,sp,32
    340c:	00008067          	ret

00003410 <fatfs_update_file_length>:
    3410:	03852783          	lw	a5,56(a0)
    3414:	14078e63          	beqz	a5,3570 <fatfs_update_file_length+0x160>
    3418:	fd010113          	addi	sp,sp,-48
    341c:	02912223          	sw	s1,36(sp)
    3420:	03212023          	sw	s2,32(sp)
    3424:	01312e23          	sw	s3,28(sp)
    3428:	01412c23          	sw	s4,24(sp)
    342c:	01512a23          	sw	s5,20(sp)
    3430:	01612823          	sw	s6,16(sp)
    3434:	02112623          	sw	ra,44(sp)
    3438:	02812423          	sw	s0,40(sp)
    343c:	01712623          	sw	s7,12(sp)
    3440:	00050493          	mv	s1,a0
    3444:	00058a13          	mv	s4,a1
    3448:	00060a93          	mv	s5,a2
    344c:	00068913          	mv	s2,a3
    3450:	00000993          	li	s3,0
    3454:	24450b13          	addi	s6,a0,580
    3458:	00000693          	li	a3,0
    345c:	00098613          	mv	a2,s3
    3460:	000a0593          	mv	a1,s4
    3464:	00048513          	mv	a0,s1
    3468:	00000097          	auipc	ra,0x0
    346c:	860080e7          	jalr	-1952(ra) # 2cc8 <fatfs_sector_reader>
    3470:	0c050863          	beqz	a0,3540 <fatfs_update_file_length+0x130>
    3474:	04448413          	addi	s0,s1,68
    3478:	00040b93          	mv	s7,s0
    347c:	00040513          	mv	a0,s0
    3480:	fffff097          	auipc	ra,0xfffff
    3484:	848080e7          	jalr	-1976(ra) # 1cc8 <fatfs_entry_lfn_text>
    3488:	0a051463          	bnez	a0,3530 <fatfs_update_file_length+0x120>
    348c:	00040513          	mv	a0,s0
    3490:	fffff097          	auipc	ra,0xfffff
    3494:	84c080e7          	jalr	-1972(ra) # 1cdc <fatfs_entry_lfn_invalid>
    3498:	08051c63          	bnez	a0,3530 <fatfs_update_file_length+0x120>
    349c:	00040513          	mv	a0,s0
    34a0:	fffff097          	auipc	ra,0xfffff
    34a4:	8bc080e7          	jalr	-1860(ra) # 1d5c <fatfs_entry_sfn_only>
    34a8:	08050463          	beqz	a0,3530 <fatfs_update_file_length+0x120>
    34ac:	00b00613          	li	a2,11
    34b0:	000a8593          	mv	a1,s5
    34b4:	00040513          	mv	a0,s0
    34b8:	ffffe097          	auipc	ra,0xffffe
    34bc:	a0c080e7          	jalr	-1524(ra) # ec4 <strncmp>
    34c0:	06051863          	bnez	a0,3530 <fatfs_update_file_length+0x120>
    34c4:	00895793          	srli	a5,s2,0x8
    34c8:	01240e23          	sb	s2,28(s0)
    34cc:	00f40ea3          	sb	a5,29(s0)
    34d0:	01095793          	srli	a5,s2,0x10
    34d4:	01895913          	srli	s2,s2,0x18
    34d8:	00f40f23          	sb	a5,30(s0)
    34dc:	01240fa3          	sb	s2,31(s0)
    34e0:	00040593          	mv	a1,s0
    34e4:	02000613          	li	a2,32
    34e8:	00040513          	mv	a0,s0
    34ec:	ffffe097          	auipc	ra,0xffffe
    34f0:	994080e7          	jalr	-1644(ra) # e80 <memcpy>
    34f4:	02812403          	lw	s0,40(sp)
    34f8:	0384a783          	lw	a5,56(s1)
    34fc:	2444a503          	lw	a0,580(s1)
    3500:	02c12083          	lw	ra,44(sp)
    3504:	02412483          	lw	s1,36(sp)
    3508:	02012903          	lw	s2,32(sp)
    350c:	01c12983          	lw	s3,28(sp)
    3510:	01812a03          	lw	s4,24(sp)
    3514:	01412a83          	lw	s5,20(sp)
    3518:	01012b03          	lw	s6,16(sp)
    351c:	000b8593          	mv	a1,s7
    3520:	00c12b83          	lw	s7,12(sp)
    3524:	00100613          	li	a2,1
    3528:	03010113          	addi	sp,sp,48
    352c:	00078067          	jr	a5
    3530:	02040413          	addi	s0,s0,32
    3534:	f56414e3          	bne	s0,s6,347c <fatfs_update_file_length+0x6c>
    3538:	00198993          	addi	s3,s3,1
    353c:	f1dff06f          	j	3458 <fatfs_update_file_length+0x48>
    3540:	02c12083          	lw	ra,44(sp)
    3544:	02812403          	lw	s0,40(sp)
    3548:	02412483          	lw	s1,36(sp)
    354c:	02012903          	lw	s2,32(sp)
    3550:	01c12983          	lw	s3,28(sp)
    3554:	01812a03          	lw	s4,24(sp)
    3558:	01412a83          	lw	s5,20(sp)
    355c:	01012b03          	lw	s6,16(sp)
    3560:	00c12b83          	lw	s7,12(sp)
    3564:	00000513          	li	a0,0
    3568:	03010113          	addi	sp,sp,48
    356c:	00008067          	ret
    3570:	00000513          	li	a0,0
    3574:	00008067          	ret

00003578 <fatfs_list_directory_next>:
    3578:	ec010113          	addi	sp,sp,-320
    357c:	13212823          	sw	s2,304(sp)
    3580:	13312623          	sw	s3,300(sp)
    3584:	13412423          	sw	s4,296(sp)
    3588:	13512223          	sw	s5,292(sp)
    358c:	12112e23          	sw	ra,316(sp)
    3590:	12812c23          	sw	s0,312(sp)
    3594:	12912a23          	sw	s1,308(sp)
    3598:	00050a13          	mv	s4,a0
    359c:	00058913          	mv	s2,a1
    35a0:	00060993          	mv	s3,a2
    35a4:	10010ea3          	sb	zero,285(sp)
    35a8:	00f00a93          	li	s5,15
    35ac:	00092603          	lw	a2,0(s2)
    35b0:	00492583          	lw	a1,4(s2)
    35b4:	00000693          	li	a3,0
    35b8:	000a0513          	mv	a0,s4
    35bc:	fffff097          	auipc	ra,0xfffff
    35c0:	70c080e7          	jalr	1804(ra) # 2cc8 <fatfs_sector_reader>
    35c4:	12050063          	beqz	a0,36e4 <fatfs_list_directory_next+0x16c>
    35c8:	00894483          	lbu	s1,8(s2)
    35cc:	00549413          	slli	s0,s1,0x5
    35d0:	04440413          	addi	s0,s0,68
    35d4:	008a0433          	add	s0,s4,s0
    35d8:	009afc63          	bgeu	s5,s1,35f0 <fatfs_list_directory_next+0x78>
    35dc:	00092783          	lw	a5,0(s2)
    35e0:	00090423          	sb	zero,8(s2)
    35e4:	00178793          	addi	a5,a5,1
    35e8:	00f92023          	sw	a5,0(s2)
    35ec:	fc1ff06f          	j	35ac <fatfs_list_directory_next+0x34>
    35f0:	00040513          	mv	a0,s0
    35f4:	ffffe097          	auipc	ra,0xffffe
    35f8:	6d4080e7          	jalr	1748(ra) # 1cc8 <fatfs_entry_lfn_text>
    35fc:	02050263          	beqz	a0,3620 <fatfs_list_directory_next+0xa8>
    3600:	00040593          	mv	a1,s0
    3604:	01810513          	addi	a0,sp,24
    3608:	ffffe097          	auipc	ra,0xffffe
    360c:	5b8080e7          	jalr	1464(ra) # 1bc0 <fatfs_lfn_cache_entry>
    3610:	00148493          	addi	s1,s1,1
    3614:	0ff4f493          	zext.b	s1,s1
    3618:	02040413          	addi	s0,s0,32
    361c:	fbdff06f          	j	35d8 <fatfs_list_directory_next+0x60>
    3620:	00040513          	mv	a0,s0
    3624:	ffffe097          	auipc	ra,0xffffe
    3628:	6b8080e7          	jalr	1720(ra) # 1cdc <fatfs_entry_lfn_invalid>
    362c:	00050663          	beqz	a0,3638 <fatfs_list_directory_next+0xc0>
    3630:	10010ea3          	sb	zero,285(sp)
    3634:	fddff06f          	j	3610 <fatfs_list_directory_next+0x98>
    3638:	00040593          	mv	a1,s0
    363c:	01810513          	addi	a0,sp,24
    3640:	ffffe097          	auipc	ra,0xffffe
    3644:	6d4080e7          	jalr	1748(ra) # 1d14 <fatfs_entry_lfn_exists>
    3648:	0c050063          	beqz	a0,3708 <fatfs_list_directory_next+0x190>
    364c:	01810513          	addi	a0,sp,24
    3650:	ffffe097          	auipc	ra,0xffffe
    3654:	63c080e7          	jalr	1596(ra) # 1c8c <fatfs_lfn_cache_get>
    3658:	00050593          	mv	a1,a0
    365c:	10300613          	li	a2,259
    3660:	00098513          	mv	a0,s3
    3664:	ffffe097          	auipc	ra,0xffffe
    3668:	8a0080e7          	jalr	-1888(ra) # f04 <strncpy>
    366c:	00040513          	mv	a0,s0
    3670:	ffffe097          	auipc	ra,0xffffe
    3674:	728080e7          	jalr	1832(ra) # 1d98 <fatfs_entry_is_dir>
    3678:	00a03533          	snez	a0,a0
    367c:	10a98223          	sb	a0,260(s3)
    3680:	01d44783          	lbu	a5,29(s0)
    3684:	01c44703          	lbu	a4,28(s0)
    3688:	00148493          	addi	s1,s1,1
    368c:	00879793          	slli	a5,a5,0x8
    3690:	00e7e7b3          	or	a5,a5,a4
    3694:	01e44703          	lbu	a4,30(s0)
    3698:	00100513          	li	a0,1
    369c:	01071713          	slli	a4,a4,0x10
    36a0:	00f76733          	or	a4,a4,a5
    36a4:	01f44783          	lbu	a5,31(s0)
    36a8:	01879793          	slli	a5,a5,0x18
    36ac:	00e7e7b3          	or	a5,a5,a4
    36b0:	10f9a623          	sw	a5,268(s3)
    36b4:	01544783          	lbu	a5,21(s0)
    36b8:	01444703          	lbu	a4,20(s0)
    36bc:	01a44683          	lbu	a3,26(s0)
    36c0:	00879793          	slli	a5,a5,0x8
    36c4:	00e7e7b3          	or	a5,a5,a4
    36c8:	01b44703          	lbu	a4,27(s0)
    36cc:	01079793          	slli	a5,a5,0x10
    36d0:	00871713          	slli	a4,a4,0x8
    36d4:	00d76733          	or	a4,a4,a3
    36d8:	00e7e7b3          	or	a5,a5,a4
    36dc:	10f9a423          	sw	a5,264(s3)
    36e0:	00990423          	sb	s1,8(s2)
    36e4:	13c12083          	lw	ra,316(sp)
    36e8:	13812403          	lw	s0,312(sp)
    36ec:	13412483          	lw	s1,308(sp)
    36f0:	13012903          	lw	s2,304(sp)
    36f4:	12c12983          	lw	s3,300(sp)
    36f8:	12812a03          	lw	s4,296(sp)
    36fc:	12412a83          	lw	s5,292(sp)
    3700:	14010113          	addi	sp,sp,320
    3704:	00008067          	ret
    3708:	00040513          	mv	a0,s0
    370c:	ffffe097          	auipc	ra,0xffffe
    3710:	650080e7          	jalr	1616(ra) # 1d5c <fatfs_entry_sfn_only>
    3714:	ee050ee3          	beqz	a0,3610 <fatfs_list_directory_next+0x98>
    3718:	00d00613          	li	a2,13
    371c:	00000593          	li	a1,0
    3720:	00810513          	addi	a0,sp,8
    3724:	10010ea3          	sb	zero,285(sp)
    3728:	ffffd097          	auipc	ra,0xffffd
    372c:	73c080e7          	jalr	1852(ra) # e64 <memset>
    3730:	00000793          	li	a5,0
    3734:	00800713          	li	a4,8
    3738:	00f40633          	add	a2,s0,a5
    373c:	00064603          	lbu	a2,0(a2)
    3740:	00810693          	addi	a3,sp,8
    3744:	00f686b3          	add	a3,a3,a5
    3748:	00c68023          	sb	a2,0(a3)
    374c:	00178793          	addi	a5,a5,1
    3750:	fee794e3          	bne	a5,a4,3738 <fatfs_list_directory_next+0x1c0>
    3754:	00844783          	lbu	a5,8(s0)
    3758:	00944683          	lbu	a3,9(s0)
    375c:	02000613          	li	a2,32
    3760:	00f108a3          	sb	a5,17(sp)
    3764:	00d10923          	sb	a3,18(sp)
    3768:	00100713          	li	a4,1
    376c:	00c69663          	bne	a3,a2,3778 <fatfs_list_directory_next+0x200>
    3770:	fe078793          	addi	a5,a5,-32
    3774:	00f03733          	snez	a4,a5
    3778:	00a44783          	lbu	a5,10(s0)
    377c:	02000693          	li	a3,32
    3780:	00f109a3          	sb	a5,19(sp)
    3784:	00d79463          	bne	a5,a3,378c <fatfs_list_directory_next+0x214>
    3788:	00070c63          	beqz	a4,37a0 <fatfs_list_directory_next+0x228>
    378c:	00814683          	lbu	a3,8(sp)
    3790:	02e00713          	li	a4,46
    3794:	02000793          	li	a5,32
    3798:	00e68463          	beq	a3,a4,37a0 <fatfs_list_directory_next+0x228>
    379c:	02e00793          	li	a5,46
    37a0:	00810593          	addi	a1,sp,8
    37a4:	00098513          	mv	a0,s3
    37a8:	00f10823          	sb	a5,16(sp)
    37ac:	fffff097          	auipc	ra,0xfffff
    37b0:	f38080e7          	jalr	-200(ra) # 26e4 <fatfs_get_sfn_display_name>
    37b4:	eb9ff06f          	j	366c <fatfs_list_directory_next+0xf4>

000037b8 <fl_readdir>:
    37b8:	000057b7          	lui	a5,0x5
    37bc:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    37c0:	fe010113          	addi	sp,sp,-32
    37c4:	00912a23          	sw	s1,20(sp)
    37c8:	01212823          	sw	s2,16(sp)
    37cc:	00112e23          	sw	ra,28(sp)
    37d0:	00812c23          	sw	s0,24(sp)
    37d4:	01312623          	sw	s3,12(sp)
    37d8:	00050493          	mv	s1,a0
    37dc:	00058913          	mv	s2,a1
    37e0:	00079663          	bnez	a5,37ec <fl_readdir+0x34>
    37e4:	ffffe097          	auipc	ra,0xffffe
    37e8:	364080e7          	jalr	868(ra) # 1b48 <fl_init>
    37ec:	0000a437          	lui	s0,0xa
    37f0:	8ec40793          	addi	a5,s0,-1812 # 98ec <_fs>
    37f4:	03c7a783          	lw	a5,60(a5)
    37f8:	8ec40993          	addi	s3,s0,-1812
    37fc:	00078463          	beqz	a5,3804 <fl_readdir+0x4c>
    3800:	000780e7          	jalr	a5
    3804:	8ec40513          	addi	a0,s0,-1812
    3808:	00090613          	mv	a2,s2
    380c:	00048593          	mv	a1,s1
    3810:	00000097          	auipc	ra,0x0
    3814:	d68080e7          	jalr	-664(ra) # 3578 <fatfs_list_directory_next>
    3818:	0409a783          	lw	a5,64(s3)
    381c:	00050413          	mv	s0,a0
    3820:	00078463          	beqz	a5,3828 <fl_readdir+0x70>
    3824:	000780e7          	jalr	a5
    3828:	01c12083          	lw	ra,28(sp)
    382c:	00143513          	seqz	a0,s0
    3830:	01812403          	lw	s0,24(sp)
    3834:	01412483          	lw	s1,20(sp)
    3838:	01012903          	lw	s2,16(sp)
    383c:	00c12983          	lw	s3,12(sp)
    3840:	40a00533          	neg	a0,a0
    3844:	02010113          	addi	sp,sp,32
    3848:	00008067          	ret

0000384c <_read_sectors>:
    384c:	fd010113          	addi	sp,sp,-48
    3850:	01612823          	sw	s6,16(sp)
    3854:	0000ab37          	lui	s6,0xa
    3858:	01512a23          	sw	s5,20(sp)
    385c:	8ecb4a83          	lbu	s5,-1812(s6) # 98ec <_fs>
    3860:	01412c23          	sw	s4,24(sp)
    3864:	00058a13          	mv	s4,a1
    3868:	02912223          	sw	s1,36(sp)
    386c:	000a8593          	mv	a1,s5
    3870:	00050493          	mv	s1,a0
    3874:	000a0513          	mv	a0,s4
    3878:	02112623          	sw	ra,44(sp)
    387c:	02812423          	sw	s0,40(sp)
    3880:	03212023          	sw	s2,32(sp)
    3884:	00068413          	mv	s0,a3
    3888:	01712623          	sw	s7,12(sp)
    388c:	01812423          	sw	s8,8(sp)
    3890:	01312e23          	sw	s3,28(sp)
    3894:	00060c13          	mv	s8,a2
    3898:	ffffd097          	auipc	ra,0xffffd
    389c:	520080e7          	jalr	1312(ra) # db8 <__udivsi3>
    38a0:	00050913          	mv	s2,a0
    38a4:	000a8593          	mv	a1,s5
    38a8:	000a0513          	mv	a0,s4
    38ac:	ffffd097          	auipc	ra,0xffffd
    38b0:	554080e7          	jalr	1364(ra) # e00 <__umodsi3>
    38b4:	00a407b3          	add	a5,s0,a0
    38b8:	00050b93          	mv	s7,a0
    38bc:	00fafe63          	bgeu	s5,a5,38d8 <_read_sectors+0x8c>
    38c0:	00090593          	mv	a1,s2
    38c4:	000a8513          	mv	a0,s5
    38c8:	ffffe097          	auipc	ra,0xffffe
    38cc:	de4080e7          	jalr	-540(ra) # 16ac <__mulsi3>
    38d0:	414a87b3          	sub	a5,s5,s4
    38d4:	00f50433          	add	s0,a0,a5
    38d8:	2284a983          	lw	s3,552(s1)
    38dc:	01299c63          	bne	s3,s2,38f4 <_read_sectors+0xa8>
    38e0:	22c4a583          	lw	a1,556(s1)
    38e4:	fff00793          	li	a5,-1
    38e8:	02f59863          	bne	a1,a5,3918 <_read_sectors+0xcc>
    38ec:	00000413          	li	s0,0
    38f0:	0500006f          	j	3940 <_read_sectors+0xf4>
    38f4:	095a6063          	bltu	s4,s5,3974 <_read_sectors+0x128>
    38f8:	00198793          	addi	a5,s3,1
    38fc:	07279c63          	bne	a5,s2,3974 <_read_sectors+0x128>
    3900:	22c4a583          	lw	a1,556(s1)
    3904:	0729ee63          	bltu	s3,s2,3980 <_read_sectors+0x134>
    3908:	fff00793          	li	a5,-1
    390c:	fef580e3          	beq	a1,a5,38ec <_read_sectors+0xa0>
    3910:	22b4a623          	sw	a1,556(s1)
    3914:	2324a423          	sw	s2,552(s1)
    3918:	8ecb0513          	addi	a0,s6,-1812
    391c:	ffffe097          	auipc	ra,0xffffe
    3920:	0f0080e7          	jalr	240(ra) # 1a0c <fatfs_lba_of_cluster>
    3924:	017505b3          	add	a1,a0,s7
    3928:	00040693          	mv	a3,s0
    392c:	000c0613          	mv	a2,s8
    3930:	8ecb0513          	addi	a0,s6,-1812
    3934:	ffffe097          	auipc	ra,0xffffe
    3938:	128080e7          	jalr	296(ra) # 1a5c <fatfs_sector_read>
    393c:	fa0508e3          	beqz	a0,38ec <_read_sectors+0xa0>
    3940:	02c12083          	lw	ra,44(sp)
    3944:	00040513          	mv	a0,s0
    3948:	02812403          	lw	s0,40(sp)
    394c:	02412483          	lw	s1,36(sp)
    3950:	02012903          	lw	s2,32(sp)
    3954:	01c12983          	lw	s3,28(sp)
    3958:	01812a03          	lw	s4,24(sp)
    395c:	01412a83          	lw	s5,20(sp)
    3960:	01012b03          	lw	s6,16(sp)
    3964:	00c12b83          	lw	s7,12(sp)
    3968:	00812c03          	lw	s8,8(sp)
    396c:	03010113          	addi	sp,sp,48
    3970:	00008067          	ret
    3974:	0044a583          	lw	a1,4(s1)
    3978:	00000993          	li	s3,0
    397c:	f89ff06f          	j	3904 <_read_sectors+0xb8>
    3980:	8ecb0513          	addi	a0,s6,-1812
    3984:	fffff097          	auipc	ra,0xfffff
    3988:	234080e7          	jalr	564(ra) # 2bb8 <fatfs_find_next_cluster>
    398c:	00050593          	mv	a1,a0
    3990:	00198993          	addi	s3,s3,1
    3994:	f71ff06f          	j	3904 <_read_sectors+0xb8>

00003998 <fatfs_set_fs_info_next_free_cluster>:
    3998:	03052783          	lw	a5,48(a0)
    399c:	0a078863          	beqz	a5,3a4c <fatfs_set_fs_info_next_free_cluster+0xb4>
    39a0:	ff010113          	addi	sp,sp,-16
    39a4:	01c52783          	lw	a5,28(a0)
    39a8:	01212023          	sw	s2,0(sp)
    39ac:	00058913          	mv	s2,a1
    39b0:	01855583          	lhu	a1,24(a0)
    39b4:	00812423          	sw	s0,8(sp)
    39b8:	00912223          	sw	s1,4(sp)
    39bc:	00f585b3          	add	a1,a1,a5
    39c0:	00112623          	sw	ra,12(sp)
    39c4:	00050493          	mv	s1,a0
    39c8:	ffffe097          	auipc	ra,0xffffe
    39cc:	e9c080e7          	jalr	-356(ra) # 1864 <fatfs_fat_read_sector>
    39d0:	00050413          	mv	s0,a0
    39d4:	06050063          	beqz	a0,3a34 <fatfs_set_fs_info_next_free_cluster+0x9c>
    39d8:	20852783          	lw	a5,520(a0)
    39dc:	00895713          	srli	a4,s2,0x8
    39e0:	1f278623          	sb	s2,492(a5)
    39e4:	20852783          	lw	a5,520(a0)
    39e8:	1ee786a3          	sb	a4,493(a5)
    39ec:	20852783          	lw	a5,520(a0)
    39f0:	01095713          	srli	a4,s2,0x10
    39f4:	1ee78723          	sb	a4,494(a5)
    39f8:	20852783          	lw	a5,520(a0)
    39fc:	01895713          	srli	a4,s2,0x18
    3a00:	1ee787a3          	sb	a4,495(a5)
    3a04:	00100793          	li	a5,1
    3a08:	20f52223          	sw	a5,516(a0)
    3a0c:	0384a783          	lw	a5,56(s1)
    3a10:	0324a223          	sw	s2,36(s1)
    3a14:	00078a63          	beqz	a5,3a28 <fatfs_set_fs_info_next_free_cluster+0x90>
    3a18:	00050593          	mv	a1,a0
    3a1c:	20052503          	lw	a0,512(a0)
    3a20:	00100613          	li	a2,1
    3a24:	000780e7          	jalr	a5
    3a28:	fff00793          	li	a5,-1
    3a2c:	20f42023          	sw	a5,512(s0)
    3a30:	20042223          	sw	zero,516(s0)
    3a34:	00c12083          	lw	ra,12(sp)
    3a38:	00812403          	lw	s0,8(sp)
    3a3c:	00412483          	lw	s1,4(sp)
    3a40:	00012903          	lw	s2,0(sp)
    3a44:	01010113          	addi	sp,sp,16
    3a48:	00008067          	ret
    3a4c:	00008067          	ret

00003a50 <fatfs_find_blank_cluster>:
    3a50:	fe010113          	addi	sp,sp,-32
    3a54:	01312623          	sw	s3,12(sp)
    3a58:	01512223          	sw	s5,4(sp)
    3a5c:	000109b7          	lui	s3,0x10
    3a60:	10000ab7          	lui	s5,0x10000
    3a64:	00912a23          	sw	s1,20(sp)
    3a68:	01212823          	sw	s2,16(sp)
    3a6c:	01412423          	sw	s4,8(sp)
    3a70:	00112e23          	sw	ra,28(sp)
    3a74:	00812c23          	sw	s0,24(sp)
    3a78:	00050913          	mv	s2,a0
    3a7c:	00058493          	mv	s1,a1
    3a80:	00060a13          	mv	s4,a2
    3a84:	fff98993          	addi	s3,s3,-1 # ffff <_fs+0x6713>
    3a88:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3a8c:	03092783          	lw	a5,48(s2)
    3a90:	0074d413          	srli	s0,s1,0x7
    3a94:	00079463          	bnez	a5,3a9c <fatfs_find_blank_cluster+0x4c>
    3a98:	0084d413          	srli	s0,s1,0x8
    3a9c:	02092783          	lw	a5,32(s2)
    3aa0:	08f47e63          	bgeu	s0,a5,3b3c <fatfs_find_blank_cluster+0xec>
    3aa4:	01492583          	lw	a1,20(s2)
    3aa8:	00090513          	mv	a0,s2
    3aac:	00b405b3          	add	a1,s0,a1
    3ab0:	ffffe097          	auipc	ra,0xffffe
    3ab4:	db4080e7          	jalr	-588(ra) # 1864 <fatfs_fat_read_sector>
    3ab8:	08050263          	beqz	a0,3b3c <fatfs_find_blank_cluster+0xec>
    3abc:	03092783          	lw	a5,48(s2)
    3ac0:	20852703          	lw	a4,520(a0)
    3ac4:	02079a63          	bnez	a5,3af8 <fatfs_find_blank_cluster+0xa8>
    3ac8:	00841413          	slli	s0,s0,0x8
    3acc:	40848433          	sub	s0,s1,s0
    3ad0:	00141413          	slli	s0,s0,0x1
    3ad4:	01347433          	and	s0,s0,s3
    3ad8:	00870733          	add	a4,a4,s0
    3adc:	00174783          	lbu	a5,1(a4)
    3ae0:	00074703          	lbu	a4,0(a4)
    3ae4:	00879793          	slli	a5,a5,0x8
    3ae8:	00e787b3          	add	a5,a5,a4
    3aec:	06078c63          	beqz	a5,3b64 <fatfs_find_blank_cluster+0x114>
    3af0:	00148493          	addi	s1,s1,1
    3af4:	f99ff06f          	j	3a8c <fatfs_find_blank_cluster+0x3c>
    3af8:	00741413          	slli	s0,s0,0x7
    3afc:	40848433          	sub	s0,s1,s0
    3b00:	00241413          	slli	s0,s0,0x2
    3b04:	01347433          	and	s0,s0,s3
    3b08:	00870733          	add	a4,a4,s0
    3b0c:	00374783          	lbu	a5,3(a4)
    3b10:	00274683          	lbu	a3,2(a4)
    3b14:	01879793          	slli	a5,a5,0x18
    3b18:	01069693          	slli	a3,a3,0x10
    3b1c:	00d787b3          	add	a5,a5,a3
    3b20:	00074683          	lbu	a3,0(a4)
    3b24:	00174703          	lbu	a4,1(a4)
    3b28:	00d787b3          	add	a5,a5,a3
    3b2c:	00871713          	slli	a4,a4,0x8
    3b30:	00e787b3          	add	a5,a5,a4
    3b34:	0157f7b3          	and	a5,a5,s5
    3b38:	fb5ff06f          	j	3aec <fatfs_find_blank_cluster+0x9c>
    3b3c:	00000513          	li	a0,0
    3b40:	01c12083          	lw	ra,28(sp)
    3b44:	01812403          	lw	s0,24(sp)
    3b48:	01412483          	lw	s1,20(sp)
    3b4c:	01012903          	lw	s2,16(sp)
    3b50:	00c12983          	lw	s3,12(sp)
    3b54:	00812a03          	lw	s4,8(sp)
    3b58:	00412a83          	lw	s5,4(sp)
    3b5c:	02010113          	addi	sp,sp,32
    3b60:	00008067          	ret
    3b64:	009a2023          	sw	s1,0(s4)
    3b68:	00100513          	li	a0,1
    3b6c:	fd5ff06f          	j	3b40 <fatfs_find_blank_cluster+0xf0>

00003b70 <fatfs_fat_set_cluster>:
    3b70:	03052783          	lw	a5,48(a0)
    3b74:	fe010113          	addi	sp,sp,-32
    3b78:	00812c23          	sw	s0,24(sp)
    3b7c:	00912a23          	sw	s1,20(sp)
    3b80:	01212823          	sw	s2,16(sp)
    3b84:	01312623          	sw	s3,12(sp)
    3b88:	00112e23          	sw	ra,28(sp)
    3b8c:	00050993          	mv	s3,a0
    3b90:	00058413          	mv	s0,a1
    3b94:	00060493          	mv	s1,a2
    3b98:	0085d913          	srli	s2,a1,0x8
    3b9c:	00078463          	beqz	a5,3ba4 <fatfs_fat_set_cluster+0x34>
    3ba0:	0075d913          	srli	s2,a1,0x7
    3ba4:	0149a583          	lw	a1,20(s3)
    3ba8:	00098513          	mv	a0,s3
    3bac:	00b905b3          	add	a1,s2,a1
    3bb0:	ffffe097          	auipc	ra,0xffffe
    3bb4:	cb4080e7          	jalr	-844(ra) # 1864 <fatfs_fat_read_sector>
    3bb8:	00050793          	mv	a5,a0
    3bbc:	00000513          	li	a0,0
    3bc0:	04078c63          	beqz	a5,3c18 <fatfs_fat_set_cluster+0xa8>
    3bc4:	0309a683          	lw	a3,48(s3)
    3bc8:	2087a703          	lw	a4,520(a5)
    3bcc:	0ff4f613          	zext.b	a2,s1
    3bd0:	06069263          	bnez	a3,3c34 <fatfs_fat_set_cluster+0xc4>
    3bd4:	00891913          	slli	s2,s2,0x8
    3bd8:	41240433          	sub	s0,s0,s2
    3bdc:	000106b7          	lui	a3,0x10
    3be0:	00141413          	slli	s0,s0,0x1
    3be4:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6713>
    3be8:	00d47433          	and	s0,s0,a3
    3bec:	00870733          	add	a4,a4,s0
    3bf0:	00c70023          	sb	a2,0(a4)
    3bf4:	2087a703          	lw	a4,520(a5)
    3bf8:	01049493          	slli	s1,s1,0x10
    3bfc:	0104d493          	srli	s1,s1,0x10
    3c00:	00870733          	add	a4,a4,s0
    3c04:	0084d493          	srli	s1,s1,0x8
    3c08:	009700a3          	sb	s1,1(a4)
    3c0c:	00100713          	li	a4,1
    3c10:	20e7a223          	sw	a4,516(a5)
    3c14:	00100513          	li	a0,1
    3c18:	01c12083          	lw	ra,28(sp)
    3c1c:	01812403          	lw	s0,24(sp)
    3c20:	01412483          	lw	s1,20(sp)
    3c24:	01012903          	lw	s2,16(sp)
    3c28:	00c12983          	lw	s3,12(sp)
    3c2c:	02010113          	addi	sp,sp,32
    3c30:	00008067          	ret
    3c34:	00791913          	slli	s2,s2,0x7
    3c38:	41240433          	sub	s0,s0,s2
    3c3c:	000106b7          	lui	a3,0x10
    3c40:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6713>
    3c44:	00241413          	slli	s0,s0,0x2
    3c48:	00d47433          	and	s0,s0,a3
    3c4c:	00870733          	add	a4,a4,s0
    3c50:	00c70023          	sb	a2,0(a4)
    3c54:	2087a703          	lw	a4,520(a5)
    3c58:	0084d693          	srli	a3,s1,0x8
    3c5c:	00870733          	add	a4,a4,s0
    3c60:	00d700a3          	sb	a3,1(a4)
    3c64:	2087a703          	lw	a4,520(a5)
    3c68:	0104d693          	srli	a3,s1,0x10
    3c6c:	0184d493          	srli	s1,s1,0x18
    3c70:	00870733          	add	a4,a4,s0
    3c74:	00d70123          	sb	a3,2(a4)
    3c78:	2087a703          	lw	a4,520(a5)
    3c7c:	00870733          	add	a4,a4,s0
    3c80:	009701a3          	sb	s1,3(a4)
    3c84:	f89ff06f          	j	3c0c <fatfs_fat_set_cluster+0x9c>

00003c88 <fatfs_free_cluster_chain>:
    3c88:	fe010113          	addi	sp,sp,-32
    3c8c:	00812c23          	sw	s0,24(sp)
    3c90:	01212823          	sw	s2,16(sp)
    3c94:	00112e23          	sw	ra,28(sp)
    3c98:	00912a23          	sw	s1,20(sp)
    3c9c:	00050413          	mv	s0,a0
    3ca0:	ffd00913          	li	s2,-3
    3ca4:	fff58793          	addi	a5,a1,-1
    3ca8:	02f97063          	bgeu	s2,a5,3cc8 <fatfs_free_cluster_chain+0x40>
    3cac:	01c12083          	lw	ra,28(sp)
    3cb0:	01812403          	lw	s0,24(sp)
    3cb4:	01412483          	lw	s1,20(sp)
    3cb8:	01012903          	lw	s2,16(sp)
    3cbc:	00100513          	li	a0,1
    3cc0:	02010113          	addi	sp,sp,32
    3cc4:	00008067          	ret
    3cc8:	00040513          	mv	a0,s0
    3ccc:	00b12623          	sw	a1,12(sp)
    3cd0:	fffff097          	auipc	ra,0xfffff
    3cd4:	ee8080e7          	jalr	-280(ra) # 2bb8 <fatfs_find_next_cluster>
    3cd8:	00c12583          	lw	a1,12(sp)
    3cdc:	00050493          	mv	s1,a0
    3ce0:	00000613          	li	a2,0
    3ce4:	00040513          	mv	a0,s0
    3ce8:	00000097          	auipc	ra,0x0
    3cec:	e88080e7          	jalr	-376(ra) # 3b70 <fatfs_fat_set_cluster>
    3cf0:	00048593          	mv	a1,s1
    3cf4:	fb1ff06f          	j	3ca4 <fatfs_free_cluster_chain+0x1c>

00003cf8 <fatfs_fat_add_cluster_to_chain>:
    3cf8:	fff00793          	li	a5,-1
    3cfc:	02f59463          	bne	a1,a5,3d24 <fatfs_fat_add_cluster_to_chain+0x2c>
    3d00:	00000513          	li	a0,0
    3d04:	00008067          	ret
    3d08:	00000513          	li	a0,0
    3d0c:	01c12083          	lw	ra,28(sp)
    3d10:	01812403          	lw	s0,24(sp)
    3d14:	01412483          	lw	s1,20(sp)
    3d18:	01012903          	lw	s2,16(sp)
    3d1c:	02010113          	addi	sp,sp,32
    3d20:	00008067          	ret
    3d24:	fe010113          	addi	sp,sp,-32
    3d28:	00812c23          	sw	s0,24(sp)
    3d2c:	00912a23          	sw	s1,20(sp)
    3d30:	01212823          	sw	s2,16(sp)
    3d34:	00050413          	mv	s0,a0
    3d38:	00112e23          	sw	ra,28(sp)
    3d3c:	00058513          	mv	a0,a1
    3d40:	00060493          	mv	s1,a2
    3d44:	fff00913          	li	s2,-1
    3d48:	00050593          	mv	a1,a0
    3d4c:	00a12623          	sw	a0,12(sp)
    3d50:	00040513          	mv	a0,s0
    3d54:	fffff097          	auipc	ra,0xfffff
    3d58:	e64080e7          	jalr	-412(ra) # 2bb8 <fatfs_find_next_cluster>
    3d5c:	fa0506e3          	beqz	a0,3d08 <fatfs_fat_add_cluster_to_chain+0x10>
    3d60:	00c12583          	lw	a1,12(sp)
    3d64:	ff2512e3          	bne	a0,s2,3d48 <fatfs_fat_add_cluster_to_chain+0x50>
    3d68:	00048613          	mv	a2,s1
    3d6c:	00040513          	mv	a0,s0
    3d70:	00000097          	auipc	ra,0x0
    3d74:	e00080e7          	jalr	-512(ra) # 3b70 <fatfs_fat_set_cluster>
    3d78:	fff00613          	li	a2,-1
    3d7c:	00048593          	mv	a1,s1
    3d80:	00040513          	mv	a0,s0
    3d84:	00000097          	auipc	ra,0x0
    3d88:	dec080e7          	jalr	-532(ra) # 3b70 <fatfs_fat_set_cluster>
    3d8c:	00100513          	li	a0,1
    3d90:	f7dff06f          	j	3d0c <fatfs_fat_add_cluster_to_chain+0x14>

00003d94 <fatfs_add_free_space>:
    3d94:	02452703          	lw	a4,36(a0)
    3d98:	fd010113          	addi	sp,sp,-48
    3d9c:	02812423          	sw	s0,40(sp)
    3da0:	03212023          	sw	s2,32(sp)
    3da4:	01412c23          	sw	s4,24(sp)
    3da8:	01512a23          	sw	s5,20(sp)
    3dac:	02112623          	sw	ra,44(sp)
    3db0:	02912223          	sw	s1,36(sp)
    3db4:	01312e23          	sw	s3,28(sp)
    3db8:	fff00793          	li	a5,-1
    3dbc:	0005aa83          	lw	s5,0(a1)
    3dc0:	00050413          	mv	s0,a0
    3dc4:	00058913          	mv	s2,a1
    3dc8:	00060a13          	mv	s4,a2
    3dcc:	00f70863          	beq	a4,a5,3ddc <fatfs_add_free_space+0x48>
    3dd0:	fff00593          	li	a1,-1
    3dd4:	00000097          	auipc	ra,0x0
    3dd8:	bc4080e7          	jalr	-1084(ra) # 3998 <fatfs_set_fs_info_next_free_cluster>
    3ddc:	00000493          	li	s1,0
    3de0:	03449663          	bne	s1,s4,3e0c <fatfs_add_free_space+0x78>
    3de4:	00100513          	li	a0,1
    3de8:	02c12083          	lw	ra,44(sp)
    3dec:	02812403          	lw	s0,40(sp)
    3df0:	02412483          	lw	s1,36(sp)
    3df4:	02012903          	lw	s2,32(sp)
    3df8:	01c12983          	lw	s3,28(sp)
    3dfc:	01812a03          	lw	s4,24(sp)
    3e00:	01412a83          	lw	s5,20(sp)
    3e04:	03010113          	addi	sp,sp,48
    3e08:	00008067          	ret
    3e0c:	00842583          	lw	a1,8(s0)
    3e10:	00c10613          	addi	a2,sp,12
    3e14:	00040513          	mv	a0,s0
    3e18:	00000097          	auipc	ra,0x0
    3e1c:	c38080e7          	jalr	-968(ra) # 3a50 <fatfs_find_blank_cluster>
    3e20:	fc0504e3          	beqz	a0,3de8 <fatfs_add_free_space+0x54>
    3e24:	00c12983          	lw	s3,12(sp)
    3e28:	000a8593          	mv	a1,s5
    3e2c:	00040513          	mv	a0,s0
    3e30:	00098613          	mv	a2,s3
    3e34:	00000097          	auipc	ra,0x0
    3e38:	d3c080e7          	jalr	-708(ra) # 3b70 <fatfs_fat_set_cluster>
    3e3c:	fff00613          	li	a2,-1
    3e40:	00098593          	mv	a1,s3
    3e44:	00040513          	mv	a0,s0
    3e48:	00000097          	auipc	ra,0x0
    3e4c:	d28080e7          	jalr	-728(ra) # 3b70 <fatfs_fat_set_cluster>
    3e50:	00049463          	bnez	s1,3e58 <fatfs_add_free_space+0xc4>
    3e54:	01392023          	sw	s3,0(s2)
    3e58:	00148493          	addi	s1,s1,1
    3e5c:	00098a93          	mv	s5,s3
    3e60:	f81ff06f          	j	3de0 <fatfs_add_free_space+0x4c>

00003e64 <_write_sectors>:
    3e64:	fb010113          	addi	sp,sp,-80
    3e68:	03312e23          	sw	s3,60(sp)
    3e6c:	0000a9b7          	lui	s3,0xa
    3e70:	03612823          	sw	s6,48(sp)
    3e74:	8ec9cb03          	lbu	s6,-1812(s3) # 98ec <_fs>
    3e78:	03512a23          	sw	s5,52(sp)
    3e7c:	00058a93          	mv	s5,a1
    3e80:	fff00793          	li	a5,-1
    3e84:	04812423          	sw	s0,72(sp)
    3e88:	000b0593          	mv	a1,s6
    3e8c:	00050413          	mv	s0,a0
    3e90:	000a8513          	mv	a0,s5
    3e94:	00f12e23          	sw	a5,28(sp)
    3e98:	04112623          	sw	ra,76(sp)
    3e9c:	04912223          	sw	s1,68(sp)
    3ea0:	05212023          	sw	s2,64(sp)
    3ea4:	03712623          	sw	s7,44(sp)
    3ea8:	03812423          	sw	s8,40(sp)
    3eac:	00068b93          	mv	s7,a3
    3eb0:	03912223          	sw	s9,36(sp)
    3eb4:	03a12023          	sw	s10,32(sp)
    3eb8:	00060c93          	mv	s9,a2
    3ebc:	03412c23          	sw	s4,56(sp)
    3ec0:	ffffd097          	auipc	ra,0xffffd
    3ec4:	ef8080e7          	jalr	-264(ra) # db8 <__udivsi3>
    3ec8:	00050493          	mv	s1,a0
    3ecc:	000b0593          	mv	a1,s6
    3ed0:	000a8513          	mv	a0,s5
    3ed4:	ffffd097          	auipc	ra,0xffffd
    3ed8:	f2c080e7          	jalr	-212(ra) # e00 <__umodsi3>
    3edc:	00ab87b3          	add	a5,s7,a0
    3ee0:	00050c13          	mv	s8,a0
    3ee4:	8ec98d13          	addi	s10,s3,-1812
    3ee8:	000b8913          	mv	s2,s7
    3eec:	00fb7e63          	bgeu	s6,a5,3f08 <_write_sectors+0xa4>
    3ef0:	00048593          	mv	a1,s1
    3ef4:	000b0513          	mv	a0,s6
    3ef8:	ffffd097          	auipc	ra,0xffffd
    3efc:	7b4080e7          	jalr	1972(ra) # 16ac <__mulsi3>
    3f00:	415b07b3          	sub	a5,s6,s5
    3f04:	00f50933          	add	s2,a0,a5
    3f08:	22842a03          	lw	s4,552(s0)
    3f0c:	069a1663          	bne	s4,s1,3f78 <_write_sectors+0x114>
    3f10:	22c42583          	lw	a1,556(s0)
    3f14:	8ec98513          	addi	a0,s3,-1812
    3f18:	ffffe097          	auipc	ra,0xffffe
    3f1c:	af4080e7          	jalr	-1292(ra) # 1a0c <fatfs_lba_of_cluster>
    3f20:	018505b3          	add	a1,a0,s8
    3f24:	00090693          	mv	a3,s2
    3f28:	000c8613          	mv	a2,s9
    3f2c:	8ec98513          	addi	a0,s3,-1812
    3f30:	ffffe097          	auipc	ra,0xffffe
    3f34:	b44080e7          	jalr	-1212(ra) # 1a74 <fatfs_sector_write>
    3f38:	0c050063          	beqz	a0,3ff8 <_write_sectors+0x194>
    3f3c:	04c12083          	lw	ra,76(sp)
    3f40:	04812403          	lw	s0,72(sp)
    3f44:	04412483          	lw	s1,68(sp)
    3f48:	03c12983          	lw	s3,60(sp)
    3f4c:	03812a03          	lw	s4,56(sp)
    3f50:	03412a83          	lw	s5,52(sp)
    3f54:	03012b03          	lw	s6,48(sp)
    3f58:	02c12b83          	lw	s7,44(sp)
    3f5c:	02812c03          	lw	s8,40(sp)
    3f60:	02412c83          	lw	s9,36(sp)
    3f64:	02012d03          	lw	s10,32(sp)
    3f68:	00090513          	mv	a0,s2
    3f6c:	04012903          	lw	s2,64(sp)
    3f70:	05010113          	addi	sp,sp,80
    3f74:	00008067          	ret
    3f78:	036ae663          	bltu	s5,s6,3fa4 <_write_sectors+0x140>
    3f7c:	001a0793          	addi	a5,s4,1
    3f80:	02979263          	bne	a5,s1,3fa4 <_write_sectors+0x140>
    3f84:	22c42583          	lw	a1,556(s0)
    3f88:	fff00a93          	li	s5,-1
    3f8c:	029a6263          	bltu	s4,s1,3fb0 <_write_sectors+0x14c>
    3f90:	fff00793          	li	a5,-1
    3f94:	02f58c63          	beq	a1,a5,3fcc <_write_sectors+0x168>
    3f98:	22b42623          	sw	a1,556(s0)
    3f9c:	22942423          	sw	s1,552(s0)
    3fa0:	f75ff06f          	j	3f14 <_write_sectors+0xb0>
    3fa4:	00442583          	lw	a1,4(s0)
    3fa8:	00000a13          	li	s4,0
    3fac:	fddff06f          	j	3f88 <_write_sectors+0x124>
    3fb0:	8ec98513          	addi	a0,s3,-1812
    3fb4:	00b12623          	sw	a1,12(sp)
    3fb8:	fffff097          	auipc	ra,0xfffff
    3fbc:	c00080e7          	jalr	-1024(ra) # 2bb8 <fatfs_find_next_cluster>
    3fc0:	00c12583          	lw	a1,12(sp)
    3fc4:	00b12e23          	sw	a1,28(sp)
    3fc8:	03551c63          	bne	a0,s5,4000 <_write_sectors+0x19c>
    3fcc:	000d4583          	lbu	a1,0(s10)
    3fd0:	fff58513          	addi	a0,a1,-1
    3fd4:	01750533          	add	a0,a0,s7
    3fd8:	ffffd097          	auipc	ra,0xffffd
    3fdc:	de0080e7          	jalr	-544(ra) # db8 <__udivsi3>
    3fe0:	00050613          	mv	a2,a0
    3fe4:	01c10593          	addi	a1,sp,28
    3fe8:	8ec98513          	addi	a0,s3,-1812
    3fec:	00000097          	auipc	ra,0x0
    3ff0:	da8080e7          	jalr	-600(ra) # 3d94 <fatfs_add_free_space>
    3ff4:	00051c63          	bnez	a0,400c <_write_sectors+0x1a8>
    3ff8:	00000913          	li	s2,0
    3ffc:	f41ff06f          	j	3f3c <_write_sectors+0xd8>
    4000:	001a0a13          	addi	s4,s4,1
    4004:	00050593          	mv	a1,a0
    4008:	f85ff06f          	j	3f8c <_write_sectors+0x128>
    400c:	01c12583          	lw	a1,28(sp)
    4010:	f89ff06f          	j	3f98 <_write_sectors+0x134>

00004014 <fl_fflush>:
    4014:	000057b7          	lui	a5,0x5
    4018:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    401c:	ff010113          	addi	sp,sp,-16
    4020:	00812423          	sw	s0,8(sp)
    4024:	00112623          	sw	ra,12(sp)
    4028:	00912223          	sw	s1,4(sp)
    402c:	00050413          	mv	s0,a0
    4030:	00079663          	bnez	a5,403c <fl_fflush+0x28>
    4034:	ffffe097          	auipc	ra,0xffffe
    4038:	b14080e7          	jalr	-1260(ra) # 1b48 <fl_init>
    403c:	04040863          	beqz	s0,408c <fl_fflush+0x78>
    4040:	0000a7b7          	lui	a5,0xa
    4044:	8ec78713          	addi	a4,a5,-1812 # 98ec <_fs>
    4048:	03c72703          	lw	a4,60(a4)
    404c:	8ec78493          	addi	s1,a5,-1812
    4050:	00070463          	beqz	a4,4058 <fl_fflush+0x44>
    4054:	000700e7          	jalr	a4
    4058:	43442783          	lw	a5,1076(s0)
    405c:	02078263          	beqz	a5,4080 <fl_fflush+0x6c>
    4060:	43042583          	lw	a1,1072(s0)
    4064:	00100693          	li	a3,1
    4068:	23040613          	addi	a2,s0,560
    406c:	00040513          	mv	a0,s0
    4070:	00000097          	auipc	ra,0x0
    4074:	df4080e7          	jalr	-524(ra) # 3e64 <_write_sectors>
    4078:	00050463          	beqz	a0,4080 <fl_fflush+0x6c>
    407c:	42042a23          	sw	zero,1076(s0)
    4080:	0404a783          	lw	a5,64(s1)
    4084:	00078463          	beqz	a5,408c <fl_fflush+0x78>
    4088:	000780e7          	jalr	a5
    408c:	00c12083          	lw	ra,12(sp)
    4090:	00812403          	lw	s0,8(sp)
    4094:	00412483          	lw	s1,4(sp)
    4098:	00000513          	li	a0,0
    409c:	01010113          	addi	sp,sp,16
    40a0:	00008067          	ret

000040a4 <fl_fclose>:
    40a4:	000057b7          	lui	a5,0x5
    40a8:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    40ac:	ff010113          	addi	sp,sp,-16
    40b0:	00812423          	sw	s0,8(sp)
    40b4:	00112623          	sw	ra,12(sp)
    40b8:	00912223          	sw	s1,4(sp)
    40bc:	01212023          	sw	s2,0(sp)
    40c0:	00050413          	mv	s0,a0
    40c4:	00079663          	bnez	a5,40d0 <fl_fclose+0x2c>
    40c8:	ffffe097          	auipc	ra,0xffffe
    40cc:	a80080e7          	jalr	-1408(ra) # 1b48 <fl_init>
    40d0:	08040e63          	beqz	s0,416c <fl_fclose+0xc8>
    40d4:	0000a4b7          	lui	s1,0xa
    40d8:	8ec48793          	addi	a5,s1,-1812 # 98ec <_fs>
    40dc:	03c7a783          	lw	a5,60(a5)
    40e0:	8ec48913          	addi	s2,s1,-1812
    40e4:	00078463          	beqz	a5,40ec <fl_fclose+0x48>
    40e8:	000780e7          	jalr	a5
    40ec:	00040513          	mv	a0,s0
    40f0:	00000097          	auipc	ra,0x0
    40f4:	f24080e7          	jalr	-220(ra) # 4014 <fl_fflush>
    40f8:	01042783          	lw	a5,16(s0)
    40fc:	00078e63          	beqz	a5,4118 <fl_fclose+0x74>
    4100:	00c42683          	lw	a3,12(s0)
    4104:	00042583          	lw	a1,0(s0)
    4108:	21c40613          	addi	a2,s0,540
    410c:	8ec48513          	addi	a0,s1,-1812
    4110:	fffff097          	auipc	ra,0xfffff
    4114:	300080e7          	jalr	768(ra) # 3410 <fatfs_update_file_length>
    4118:	fff00793          	li	a5,-1
    411c:	42f42823          	sw	a5,1072(s0)
    4120:	00040513          	mv	a0,s0
    4124:	00042423          	sw	zero,8(s0)
    4128:	00042623          	sw	zero,12(s0)
    412c:	00042223          	sw	zero,4(s0)
    4130:	42042a23          	sw	zero,1076(s0)
    4134:	00042823          	sw	zero,16(s0)
    4138:	ffffe097          	auipc	ra,0xffffe
    413c:	88c080e7          	jalr	-1908(ra) # 19c4 <_free_file>
    4140:	8ec48513          	addi	a0,s1,-1812
    4144:	fffff097          	auipc	ra,0xfffff
    4148:	a18080e7          	jalr	-1512(ra) # 2b5c <fatfs_fat_purge>
    414c:	04092783          	lw	a5,64(s2)
    4150:	00078e63          	beqz	a5,416c <fl_fclose+0xc8>
    4154:	00812403          	lw	s0,8(sp)
    4158:	00c12083          	lw	ra,12(sp)
    415c:	00412483          	lw	s1,4(sp)
    4160:	00012903          	lw	s2,0(sp)
    4164:	01010113          	addi	sp,sp,16
    4168:	00078067          	jr	a5
    416c:	00c12083          	lw	ra,12(sp)
    4170:	00812403          	lw	s0,8(sp)
    4174:	00412483          	lw	s1,4(sp)
    4178:	00012903          	lw	s2,0(sp)
    417c:	01010113          	addi	sp,sp,16
    4180:	00008067          	ret

00004184 <fl_fread>:
    4184:	fd010113          	addi	sp,sp,-48
    4188:	01512a23          	sw	s5,20(sp)
    418c:	00050a93          	mv	s5,a0
    4190:	00058513          	mv	a0,a1
    4194:	00060593          	mv	a1,a2
    4198:	02812423          	sw	s0,40(sp)
    419c:	02912223          	sw	s1,36(sp)
    41a0:	02112623          	sw	ra,44(sp)
    41a4:	03212023          	sw	s2,32(sp)
    41a8:	01312e23          	sw	s3,28(sp)
    41ac:	01412c23          	sw	s4,24(sp)
    41b0:	01612823          	sw	s6,16(sp)
    41b4:	01712623          	sw	s7,12(sp)
    41b8:	01812423          	sw	s8,8(sp)
    41bc:	01912223          	sw	s9,4(sp)
    41c0:	00068493          	mv	s1,a3
    41c4:	ffffd097          	auipc	ra,0xffffd
    41c8:	4e8080e7          	jalr	1256(ra) # 16ac <__mulsi3>
    41cc:	000057b7          	lui	a5,0x5
    41d0:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    41d4:	00050413          	mv	s0,a0
    41d8:	00079663          	bnez	a5,41e4 <fl_fread+0x60>
    41dc:	ffffe097          	auipc	ra,0xffffe
    41e0:	96c080e7          	jalr	-1684(ra) # 1b48 <fl_init>
    41e4:	120a8e63          	beqz	s5,4320 <fl_fread+0x19c>
    41e8:	12048c63          	beqz	s1,4320 <fl_fread+0x19c>
    41ec:	4384c783          	lbu	a5,1080(s1)
    41f0:	0017f793          	andi	a5,a5,1
    41f4:	12078663          	beqz	a5,4320 <fl_fread+0x19c>
    41f8:	02040e63          	beqz	s0,4234 <fl_fread+0xb0>
    41fc:	0084a583          	lw	a1,8(s1)
    4200:	00c4a783          	lw	a5,12(s1)
    4204:	10f5fe63          	bgeu	a1,a5,4320 <fl_fread+0x19c>
    4208:	00b40733          	add	a4,s0,a1
    420c:	00040b13          	mv	s6,s0
    4210:	00e7f463          	bgeu	a5,a4,4218 <fl_fread+0x94>
    4214:	40b78b33          	sub	s6,a5,a1
    4218:	0095d993          	srli	s3,a1,0x9
    421c:	1ff5f913          	andi	s2,a1,511
    4220:	00000413          	li	s0,0
    4224:	23048b93          	addi	s7,s1,560
    4228:	20000c13          	li	s8,512
    422c:	1ff00c93          	li	s9,511
    4230:	03644e63          	blt	s0,s6,426c <fl_fread+0xe8>
    4234:	02c12083          	lw	ra,44(sp)
    4238:	00040513          	mv	a0,s0
    423c:	02812403          	lw	s0,40(sp)
    4240:	02412483          	lw	s1,36(sp)
    4244:	02012903          	lw	s2,32(sp)
    4248:	01c12983          	lw	s3,28(sp)
    424c:	01812a03          	lw	s4,24(sp)
    4250:	01412a83          	lw	s5,20(sp)
    4254:	01012b03          	lw	s6,16(sp)
    4258:	00c12b83          	lw	s7,12(sp)
    425c:	00812c03          	lw	s8,8(sp)
    4260:	00412c83          	lw	s9,4(sp)
    4264:	03010113          	addi	sp,sp,48
    4268:	00008067          	ret
    426c:	04091463          	bnez	s2,42b4 <fl_fread+0x130>
    4270:	408b06b3          	sub	a3,s6,s0
    4274:	04dcd063          	bge	s9,a3,42b4 <fl_fread+0x130>
    4278:	4096d693          	srai	a3,a3,0x9
    427c:	008a8633          	add	a2,s5,s0
    4280:	00098593          	mv	a1,s3
    4284:	00048513          	mv	a0,s1
    4288:	fffff097          	auipc	ra,0xfffff
    428c:	5c4080e7          	jalr	1476(ra) # 384c <_read_sectors>
    4290:	fa0502e3          	beqz	a0,4234 <fl_fread+0xb0>
    4294:	00951a13          	slli	s4,a0,0x9
    4298:	00a989b3          	add	s3,s3,a0
    429c:	0084a783          	lw	a5,8(s1)
    42a0:	01440433          	add	s0,s0,s4
    42a4:	00000913          	li	s2,0
    42a8:	014787b3          	add	a5,a5,s4
    42ac:	00f4a423          	sw	a5,8(s1)
    42b0:	f81ff06f          	j	4230 <fl_fread+0xac>
    42b4:	4304a783          	lw	a5,1072(s1)
    42b8:	03378e63          	beq	a5,s3,42f4 <fl_fread+0x170>
    42bc:	4344a783          	lw	a5,1076(s1)
    42c0:	00078863          	beqz	a5,42d0 <fl_fread+0x14c>
    42c4:	00048513          	mv	a0,s1
    42c8:	00000097          	auipc	ra,0x0
    42cc:	d4c080e7          	jalr	-692(ra) # 4014 <fl_fflush>
    42d0:	00100693          	li	a3,1
    42d4:	000b8613          	mv	a2,s7
    42d8:	00098593          	mv	a1,s3
    42dc:	00048513          	mv	a0,s1
    42e0:	fffff097          	auipc	ra,0xfffff
    42e4:	56c080e7          	jalr	1388(ra) # 384c <_read_sectors>
    42e8:	f40506e3          	beqz	a0,4234 <fl_fread+0xb0>
    42ec:	4334a823          	sw	s3,1072(s1)
    42f0:	4204aa23          	sw	zero,1076(s1)
    42f4:	412c07b3          	sub	a5,s8,s2
    42f8:	408b0a33          	sub	s4,s6,s0
    42fc:	0147d463          	bge	a5,s4,4304 <fl_fread+0x180>
    4300:	00078a13          	mv	s4,a5
    4304:	000a0613          	mv	a2,s4
    4308:	012b85b3          	add	a1,s7,s2
    430c:	008a8533          	add	a0,s5,s0
    4310:	ffffd097          	auipc	ra,0xffffd
    4314:	b70080e7          	jalr	-1168(ra) # e80 <memcpy>
    4318:	00198993          	addi	s3,s3,1
    431c:	f81ff06f          	j	429c <fl_fread+0x118>
    4320:	fff00413          	li	s0,-1
    4324:	f11ff06f          	j	4234 <fl_fread+0xb0>

00004328 <fatfs_allocate_free_space.part.0>:
    4328:	02452703          	lw	a4,36(a0)
    432c:	fd010113          	addi	sp,sp,-48
    4330:	02812423          	sw	s0,40(sp)
    4334:	03212023          	sw	s2,32(sp)
    4338:	01312e23          	sw	s3,28(sp)
    433c:	01512a23          	sw	s5,20(sp)
    4340:	02112623          	sw	ra,44(sp)
    4344:	02912223          	sw	s1,36(sp)
    4348:	01412c23          	sw	s4,24(sp)
    434c:	fff00793          	li	a5,-1
    4350:	00050413          	mv	s0,a0
    4354:	00058a93          	mv	s5,a1
    4358:	00060913          	mv	s2,a2
    435c:	00068993          	mv	s3,a3
    4360:	00f70863          	beq	a4,a5,4370 <fatfs_allocate_free_space.part.0+0x48>
    4364:	fff00593          	li	a1,-1
    4368:	fffff097          	auipc	ra,0xfffff
    436c:	630080e7          	jalr	1584(ra) # 3998 <fatfs_set_fs_info_next_free_cluster>
    4370:	00044a03          	lbu	s4,0(s0)
    4374:	00098513          	mv	a0,s3
    4378:	009a1a13          	slli	s4,s4,0x9
    437c:	000a0593          	mv	a1,s4
    4380:	ffffd097          	auipc	ra,0xffffd
    4384:	a38080e7          	jalr	-1480(ra) # db8 <__udivsi3>
    4388:	00050493          	mv	s1,a0
    438c:	00050593          	mv	a1,a0
    4390:	000a0513          	mv	a0,s4
    4394:	ffffd097          	auipc	ra,0xffffd
    4398:	318080e7          	jalr	792(ra) # 16ac <__mulsi3>
    439c:	00a98463          	beq	s3,a0,43a4 <fatfs_allocate_free_space.part.0+0x7c>
    43a0:	00148493          	addi	s1,s1,1
    43a4:	060a8463          	beqz	s5,440c <fatfs_allocate_free_space.part.0+0xe4>
    43a8:	00842583          	lw	a1,8(s0)
    43ac:	00c10613          	addi	a2,sp,12
    43b0:	00040513          	mv	a0,s0
    43b4:	fffff097          	auipc	ra,0xfffff
    43b8:	69c080e7          	jalr	1692(ra) # 3a50 <fatfs_find_blank_cluster>
    43bc:	02050663          	beqz	a0,43e8 <fatfs_allocate_free_space.part.0+0xc0>
    43c0:	00100793          	li	a5,1
    43c4:	04f49863          	bne	s1,a5,4414 <fatfs_allocate_free_space.part.0+0xec>
    43c8:	00c12483          	lw	s1,12(sp)
    43cc:	fff00613          	li	a2,-1
    43d0:	00040513          	mv	a0,s0
    43d4:	00048593          	mv	a1,s1
    43d8:	fffff097          	auipc	ra,0xfffff
    43dc:	798080e7          	jalr	1944(ra) # 3b70 <fatfs_fat_set_cluster>
    43e0:	00100513          	li	a0,1
    43e4:	00992023          	sw	s1,0(s2)
    43e8:	02c12083          	lw	ra,44(sp)
    43ec:	02812403          	lw	s0,40(sp)
    43f0:	02412483          	lw	s1,36(sp)
    43f4:	02012903          	lw	s2,32(sp)
    43f8:	01c12983          	lw	s3,28(sp)
    43fc:	01812a03          	lw	s4,24(sp)
    4400:	01412a83          	lw	s5,20(sp)
    4404:	03010113          	addi	sp,sp,48
    4408:	00008067          	ret
    440c:	00092783          	lw	a5,0(s2)
    4410:	00f12623          	sw	a5,12(sp)
    4414:	00048613          	mv	a2,s1
    4418:	00c10593          	addi	a1,sp,12
    441c:	00040513          	mv	a0,s0
    4420:	00000097          	auipc	ra,0x0
    4424:	974080e7          	jalr	-1676(ra) # 3d94 <fatfs_add_free_space>
    4428:	00a03533          	snez	a0,a0
    442c:	fbdff06f          	j	43e8 <fatfs_allocate_free_space.part.0+0xc0>

00004430 <fatfs_add_file_entry>:
    4430:	f8010113          	addi	sp,sp,-128
    4434:	00f12823          	sw	a5,16(sp)
    4438:	03852783          	lw	a5,56(a0)
    443c:	06112e23          	sw	ra,124(sp)
    4440:	06812c23          	sw	s0,120(sp)
    4444:	06912a23          	sw	s1,116(sp)
    4448:	07212823          	sw	s2,112(sp)
    444c:	07312623          	sw	s3,108(sp)
    4450:	07412423          	sw	s4,104(sp)
    4454:	07512223          	sw	s5,100(sp)
    4458:	07612023          	sw	s6,96(sp)
    445c:	05712e23          	sw	s7,92(sp)
    4460:	05812c23          	sw	s8,88(sp)
    4464:	05912a23          	sw	s9,84(sp)
    4468:	05a12823          	sw	s10,80(sp)
    446c:	05b12623          	sw	s11,76(sp)
    4470:	00e12623          	sw	a4,12(sp)
    4474:	01012a23          	sw	a6,20(sp)
    4478:	04079463          	bnez	a5,44c0 <fatfs_add_file_entry+0x90>
    447c:	00000913          	li	s2,0
    4480:	07c12083          	lw	ra,124(sp)
    4484:	07812403          	lw	s0,120(sp)
    4488:	07412483          	lw	s1,116(sp)
    448c:	06c12983          	lw	s3,108(sp)
    4490:	06812a03          	lw	s4,104(sp)
    4494:	06412a83          	lw	s5,100(sp)
    4498:	06012b03          	lw	s6,96(sp)
    449c:	05c12b83          	lw	s7,92(sp)
    44a0:	05812c03          	lw	s8,88(sp)
    44a4:	05412c83          	lw	s9,84(sp)
    44a8:	05012d03          	lw	s10,80(sp)
    44ac:	04c12d83          	lw	s11,76(sp)
    44b0:	00090513          	mv	a0,s2
    44b4:	07012903          	lw	s2,112(sp)
    44b8:	08010113          	addi	sp,sp,128
    44bc:	00008067          	ret
    44c0:	00050413          	mv	s0,a0
    44c4:	00060513          	mv	a0,a2
    44c8:	00058b13          	mv	s6,a1
    44cc:	00060c93          	mv	s9,a2
    44d0:	00068b93          	mv	s7,a3
    44d4:	ffffe097          	auipc	ra,0xffffe
    44d8:	8e4080e7          	jalr	-1820(ra) # 1db8 <fatfs_lfn_entries_required>
    44dc:	00150713          	addi	a4,a0,1
    44e0:	00100793          	li	a5,1
    44e4:	00050493          	mv	s1,a0
    44e8:	f8e7fae3          	bgeu	a5,a4,447c <fatfs_add_file_entry+0x4c>
    44ec:	00000993          	li	s3,0
    44f0:	00000a93          	li	s5,0
    44f4:	00000a13          	li	s4,0
    44f8:	00000c13          	li	s8,0
    44fc:	00000d13          	li	s10,0
    4500:	01000d93          	li	s11,16
    4504:	00000693          	li	a3,0
    4508:	00098613          	mv	a2,s3
    450c:	000b0593          	mv	a1,s6
    4510:	00040513          	mv	a0,s0
    4514:	ffffe097          	auipc	ra,0xffffe
    4518:	7b4080e7          	jalr	1972(ra) # 2cc8 <fatfs_sector_reader>
    451c:	00050913          	mv	s2,a0
    4520:	14050a63          	beqz	a0,4674 <fatfs_add_file_entry+0x244>
    4524:	04440693          	addi	a3,s0,68
    4528:	000d0913          	mv	s2,s10
    452c:	00000713          	li	a4,0
    4530:	00068513          	mv	a0,a3
    4534:	00e12e23          	sw	a4,28(sp)
    4538:	00d12c23          	sw	a3,24(sp)
    453c:	ffffd097          	auipc	ra,0xffffd
    4540:	78c080e7          	jalr	1932(ra) # 1cc8 <fatfs_entry_lfn_text>
    4544:	01812683          	lw	a3,24(sp)
    4548:	01c12703          	lw	a4,28(sp)
    454c:	00050d13          	mv	s10,a0
    4550:	02050c63          	beqz	a0,4588 <fatfs_add_file_entry+0x158>
    4554:	00091863          	bnez	s2,4564 <fatfs_add_file_entry+0x134>
    4558:	00070a93          	mv	s5,a4
    455c:	00098a13          	mv	s4,s3
    4560:	00100c13          	li	s8,1
    4564:	00190d13          	addi	s10,s2,1
    4568:	00170713          	addi	a4,a4,1
    456c:	0ff77713          	zext.b	a4,a4
    4570:	02068693          	addi	a3,a3,32
    4574:	01b71663          	bne	a4,s11,4580 <fatfs_add_file_entry+0x150>
    4578:	00198993          	addi	s3,s3,1
    457c:	f89ff06f          	j	4504 <fatfs_add_file_entry+0xd4>
    4580:	000d0913          	mv	s2,s10
    4584:	fadff06f          	j	4530 <fatfs_add_file_entry+0x100>
    4588:	0006c603          	lbu	a2,0(a3)
    458c:	0e500793          	li	a5,229
    4590:	0cf61c63          	bne	a2,a5,4668 <fatfs_add_file_entry+0x238>
    4594:	00091863          	bnez	s2,45a4 <fatfs_add_file_entry+0x174>
    4598:	00070a93          	mv	s5,a4
    459c:	00098a13          	mv	s4,s3
    45a0:	00100c13          	li	s8,1
    45a4:	00190d13          	addi	s10,s2,1
    45a8:	fc9940e3          	blt	s2,s1,4568 <fatfs_add_file_entry+0x138>
    45ac:	00bb8713          	addi	a4,s7,11
    45b0:	000b8793          	mv	a5,s7
    45b4:	00000913          	li	s2,0
    45b8:	0007c603          	lbu	a2,0(a5)
    45bc:	00791693          	slli	a3,s2,0x7
    45c0:	00195913          	srli	s2,s2,0x1
    45c4:	00c90933          	add	s2,s2,a2
    45c8:	00178793          	addi	a5,a5,1
    45cc:	00d90933          	add	s2,s2,a3
    45d0:	0ff97913          	zext.b	s2,s2
    45d4:	fee792e3          	bne	a5,a4,45b8 <fatfs_add_file_entry+0x188>
    45d8:	000a0993          	mv	s3,s4
    45dc:	00000d93          	li	s11,0
    45e0:	00000693          	li	a3,0
    45e4:	00098613          	mv	a2,s3
    45e8:	000b0593          	mv	a1,s6
    45ec:	00040513          	mv	a0,s0
    45f0:	ffffe097          	auipc	ra,0xffffe
    45f4:	6d8080e7          	jalr	1752(ra) # 2cc8 <fatfs_sector_reader>
    45f8:	e80502e3          	beqz	a0,447c <fatfs_add_file_entry+0x4c>
    45fc:	04440d13          	addi	s10,s0,68
    4600:	00000713          	li	a4,0
    4604:	00000793          	li	a5,0
    4608:	000d0c13          	mv	s8,s10
    460c:	000d9663          	bnez	s11,4618 <fatfs_add_file_entry+0x1e8>
    4610:	11499e63          	bne	s3,s4,472c <fatfs_add_file_entry+0x2fc>
    4614:	11579c63          	bne	a5,s5,472c <fatfs_add_file_entry+0x2fc>
    4618:	0e049463          	bnez	s1,4700 <fatfs_add_file_entry+0x2d0>
    461c:	01412703          	lw	a4,20(sp)
    4620:	00c12603          	lw	a2,12(sp)
    4624:	01012583          	lw	a1,16(sp)
    4628:	02010693          	addi	a3,sp,32
    462c:	000b8513          	mv	a0,s7
    4630:	ffffe097          	auipc	ra,0xffffe
    4634:	8e0080e7          	jalr	-1824(ra) # 1f10 <fatfs_sfn_create_entry>
    4638:	02000613          	li	a2,32
    463c:	02010593          	addi	a1,sp,32
    4640:	000d0513          	mv	a0,s10
    4644:	ffffd097          	auipc	ra,0xffffd
    4648:	83c080e7          	jalr	-1988(ra) # e80 <memcpy>
    464c:	03842783          	lw	a5,56(s0)
    4650:	24442503          	lw	a0,580(s0)
    4654:	00100613          	li	a2,1
    4658:	000c0593          	mv	a1,s8
    465c:	000780e7          	jalr	a5
    4660:	00050913          	mv	s2,a0
    4664:	e1dff06f          	j	4480 <fatfs_add_file_entry+0x50>
    4668:	f20606e3          	beqz	a2,4594 <fatfs_add_file_entry+0x164>
    466c:	00000c13          	li	s8,0
    4670:	ef9ff06f          	j	4568 <fatfs_add_file_entry+0x138>
    4674:	00842583          	lw	a1,8(s0)
    4678:	02010613          	addi	a2,sp,32
    467c:	00040513          	mv	a0,s0
    4680:	fffff097          	auipc	ra,0xfffff
    4684:	3d0080e7          	jalr	976(ra) # 3a50 <fatfs_find_blank_cluster>
    4688:	de050ce3          	beqz	a0,4480 <fatfs_add_file_entry+0x50>
    468c:	02012d83          	lw	s11,32(sp)
    4690:	000b0593          	mv	a1,s6
    4694:	00040513          	mv	a0,s0
    4698:	000d8613          	mv	a2,s11
    469c:	fffff097          	auipc	ra,0xfffff
    46a0:	65c080e7          	jalr	1628(ra) # 3cf8 <fatfs_fat_add_cluster_to_chain>
    46a4:	dc050ee3          	beqz	a0,4480 <fatfs_add_file_entry+0x50>
    46a8:	20000613          	li	a2,512
    46ac:	00000593          	li	a1,0
    46b0:	04440513          	addi	a0,s0,68
    46b4:	ffffc097          	auipc	ra,0xffffc
    46b8:	7b0080e7          	jalr	1968(ra) # e64 <memset>
    46bc:	00000d13          	li	s10,0
    46c0:	00044783          	lbu	a5,0(s0)
    46c4:	00fd6a63          	bltu	s10,a5,46d8 <fatfs_add_file_entry+0x2a8>
    46c8:	ee0c12e3          	bnez	s8,45ac <fatfs_add_file_entry+0x17c>
    46cc:	00098a13          	mv	s4,s3
    46d0:	00000a93          	li	s5,0
    46d4:	ed9ff06f          	j	45ac <fatfs_add_file_entry+0x17c>
    46d8:	00000693          	li	a3,0
    46dc:	000d0613          	mv	a2,s10
    46e0:	000d8593          	mv	a1,s11
    46e4:	00040513          	mv	a0,s0
    46e8:	ffffd097          	auipc	ra,0xffffd
    46ec:	3a4080e7          	jalr	932(ra) # 1a8c <fatfs_write_sector>
    46f0:	d80508e3          	beqz	a0,4480 <fatfs_add_file_entry+0x50>
    46f4:	001d0613          	addi	a2,s10,1
    46f8:	0ff67d13          	zext.b	s10,a2
    46fc:	fc5ff06f          	j	46c0 <fatfs_add_file_entry+0x290>
    4700:	fff48493          	addi	s1,s1,-1
    4704:	00090693          	mv	a3,s2
    4708:	00048613          	mv	a2,s1
    470c:	000d0593          	mv	a1,s10
    4710:	000c8513          	mv	a0,s9
    4714:	00f12c23          	sw	a5,24(sp)
    4718:	ffffd097          	auipc	ra,0xffffd
    471c:	6d0080e7          	jalr	1744(ra) # 1de8 <fatfs_filename_to_lfn>
    4720:	01812783          	lw	a5,24(sp)
    4724:	00100d93          	li	s11,1
    4728:	00100713          	li	a4,1
    472c:	00178793          	addi	a5,a5,1
    4730:	0ff7f793          	zext.b	a5,a5
    4734:	01000693          	li	a3,16
    4738:	020d0d13          	addi	s10,s10,32
    473c:	ecd798e3          	bne	a5,a3,460c <fatfs_add_file_entry+0x1dc>
    4740:	00070e63          	beqz	a4,475c <fatfs_add_file_entry+0x32c>
    4744:	03842783          	lw	a5,56(s0)
    4748:	24442503          	lw	a0,580(s0)
    474c:	00100613          	li	a2,1
    4750:	000c0593          	mv	a1,s8
    4754:	000780e7          	jalr	a5
    4758:	d20502e3          	beqz	a0,447c <fatfs_add_file_entry+0x4c>
    475c:	00198993          	addi	s3,s3,1
    4760:	e81ff06f          	j	45e0 <fatfs_add_file_entry+0x1b0>

00004764 <fl_fopen>:
    4764:	000057b7          	lui	a5,0x5
    4768:	e907a783          	lw	a5,-368(a5) # 4e90 <_filelib_init>
    476c:	fa010113          	addi	sp,sp,-96
    4770:	04812c23          	sw	s0,88(sp)
    4774:	05412423          	sw	s4,72(sp)
    4778:	04112e23          	sw	ra,92(sp)
    477c:	04912a23          	sw	s1,84(sp)
    4780:	05212823          	sw	s2,80(sp)
    4784:	05312623          	sw	s3,76(sp)
    4788:	05512223          	sw	s5,68(sp)
    478c:	05612023          	sw	s6,64(sp)
    4790:	03712e23          	sw	s7,60(sp)
    4794:	03812c23          	sw	s8,56(sp)
    4798:	03912a23          	sw	s9,52(sp)
    479c:	00050a13          	mv	s4,a0
    47a0:	00058413          	mv	s0,a1
    47a4:	00079663          	bnez	a5,47b0 <fl_fopen+0x4c>
    47a8:	ffffd097          	auipc	ra,0xffffd
    47ac:	3a0080e7          	jalr	928(ra) # 1b48 <fl_init>
    47b0:	000057b7          	lui	a5,0x5
    47b4:	e947a783          	lw	a5,-364(a5) # 4e94 <_filelib_valid>
    47b8:	30078263          	beqz	a5,4abc <fl_fopen+0x358>
    47bc:	300a0063          	beqz	s4,4abc <fl_fopen+0x358>
    47c0:	10040463          	beqz	s0,48c8 <fl_fopen+0x164>
    47c4:	00040513          	mv	a0,s0
    47c8:	ffffc097          	auipc	ra,0xffffc
    47cc:	6dc080e7          	jalr	1756(ra) # ea4 <strlen>
    47d0:	00000493          	li	s1,0
    47d4:	00000713          	li	a4,0
    47d8:	05700693          	li	a3,87
    47dc:	07200613          	li	a2,114
    47e0:	07700813          	li	a6,119
    47e4:	06100893          	li	a7,97
    47e8:	06200313          	li	t1,98
    47ec:	04100593          	li	a1,65
    47f0:	04200e13          	li	t3,66
    47f4:	05200e93          	li	t4,82
    47f8:	02b00f13          	li	t5,43
    47fc:	10a74263          	blt	a4,a0,4900 <fl_fopen+0x19c>
    4800:	0000a937          	lui	s2,0xa
    4804:	8ec90793          	addi	a5,s2,-1812 # 98ec <_fs>
    4808:	0387a783          	lw	a5,56(a5)
    480c:	8ec90b13          	addi	s6,s2,-1812
    4810:	00079463          	bnez	a5,4818 <fl_fopen+0xb4>
    4814:	0d94f493          	andi	s1,s1,217
    4818:	03cb2783          	lw	a5,60(s6)
    481c:	00078463          	beqz	a5,4824 <fl_fopen+0xc0>
    4820:	000780e7          	jalr	a5
    4824:	0014fc13          	andi	s8,s1,1
    4828:	160c1463          	bnez	s8,4990 <fl_fopen+0x22c>
    482c:	0204f793          	andi	a5,s1,32
    4830:	08078463          	beqz	a5,48b8 <fl_fopen+0x154>
    4834:	038b2783          	lw	a5,56(s6)
    4838:	06078a63          	beqz	a5,48ac <fl_fopen+0x148>
    483c:	ffffd097          	auipc	ra,0xffffd
    4840:	114080e7          	jalr	276(ra) # 1950 <_allocate_file>
    4844:	00050413          	mv	s0,a0
    4848:	06050263          	beqz	a0,48ac <fl_fopen+0x148>
    484c:	01450b93          	addi	s7,a0,20
    4850:	10400613          	li	a2,260
    4854:	00000593          	li	a1,0
    4858:	000b8513          	mv	a0,s7
    485c:	ffffc097          	auipc	ra,0xffffc
    4860:	608080e7          	jalr	1544(ra) # e64 <memset>
    4864:	11840a93          	addi	s5,s0,280
    4868:	10400613          	li	a2,260
    486c:	00000593          	li	a1,0
    4870:	000a8513          	mv	a0,s5
    4874:	ffffc097          	auipc	ra,0xffffc
    4878:	5f0080e7          	jalr	1520(ra) # e64 <memset>
    487c:	10400713          	li	a4,260
    4880:	000a8693          	mv	a3,s5
    4884:	10400613          	li	a2,260
    4888:	000b8593          	mv	a1,s7
    488c:	000a0513          	mv	a0,s4
    4890:	ffffe097          	auipc	ra,0xffffe
    4894:	b74080e7          	jalr	-1164(ra) # 2404 <fatfs_split_path>
    4898:	fff00793          	li	a5,-1
    489c:	10f51863          	bne	a0,a5,49ac <fl_fopen+0x248>
    48a0:	00040513          	mv	a0,s0
    48a4:	ffffd097          	auipc	ra,0xffffd
    48a8:	120080e7          	jalr	288(ra) # 19c4 <_free_file>
    48ac:	000c1663          	bnez	s8,48b8 <fl_fopen+0x154>
    48b0:	0064f793          	andi	a5,s1,6
    48b4:	1e079a63          	bnez	a5,4aa8 <fl_fopen+0x344>
    48b8:	00000413          	li	s0,0
    48bc:	040b2783          	lw	a5,64(s6)
    48c0:	00078463          	beqz	a5,48c8 <fl_fopen+0x164>
    48c4:	000780e7          	jalr	a5
    48c8:	05c12083          	lw	ra,92(sp)
    48cc:	00040513          	mv	a0,s0
    48d0:	05812403          	lw	s0,88(sp)
    48d4:	05412483          	lw	s1,84(sp)
    48d8:	05012903          	lw	s2,80(sp)
    48dc:	04c12983          	lw	s3,76(sp)
    48e0:	04812a03          	lw	s4,72(sp)
    48e4:	04412a83          	lw	s5,68(sp)
    48e8:	04012b03          	lw	s6,64(sp)
    48ec:	03c12b83          	lw	s7,60(sp)
    48f0:	03812c03          	lw	s8,56(sp)
    48f4:	03412c83          	lw	s9,52(sp)
    48f8:	06010113          	addi	sp,sp,96
    48fc:	00008067          	ret
    4900:	00e407b3          	add	a5,s0,a4
    4904:	0007c783          	lbu	a5,0(a5)
    4908:	04d78463          	beq	a5,a3,4950 <fl_fopen+0x1ec>
    490c:	02f6e463          	bltu	a3,a5,4934 <fl_fopen+0x1d0>
    4910:	04b78463          	beq	a5,a1,4958 <fl_fopen+0x1f4>
    4914:	00f5e863          	bltu	a1,a5,4924 <fl_fopen+0x1c0>
    4918:	05e78463          	beq	a5,t5,4960 <fl_fopen+0x1fc>
    491c:	00170713          	addi	a4,a4,1
    4920:	eddff06f          	j	47fc <fl_fopen+0x98>
    4924:	03c78063          	beq	a5,t3,4944 <fl_fopen+0x1e0>
    4928:	ffd79ae3          	bne	a5,t4,491c <fl_fopen+0x1b8>
    492c:	0014e493          	ori	s1,s1,1
    4930:	fedff06f          	j	491c <fl_fopen+0x1b8>
    4934:	fec78ce3          	beq	a5,a2,492c <fl_fopen+0x1c8>
    4938:	00f66a63          	bltu	a2,a5,494c <fl_fopen+0x1e8>
    493c:	01178e63          	beq	a5,a7,4958 <fl_fopen+0x1f4>
    4940:	fc679ee3          	bne	a5,t1,491c <fl_fopen+0x1b8>
    4944:	0084e493          	ori	s1,s1,8
    4948:	fd5ff06f          	j	491c <fl_fopen+0x1b8>
    494c:	fd0798e3          	bne	a5,a6,491c <fl_fopen+0x1b8>
    4950:	0324e493          	ori	s1,s1,50
    4954:	fc9ff06f          	j	491c <fl_fopen+0x1b8>
    4958:	0264e493          	ori	s1,s1,38
    495c:	fc1ff06f          	j	491c <fl_fopen+0x1b8>
    4960:	0014f793          	andi	a5,s1,1
    4964:	00078663          	beqz	a5,4970 <fl_fopen+0x20c>
    4968:	0024e493          	ori	s1,s1,2
    496c:	fb1ff06f          	j	491c <fl_fopen+0x1b8>
    4970:	0024f793          	andi	a5,s1,2
    4974:	00078663          	beqz	a5,4980 <fl_fopen+0x21c>
    4978:	0314e493          	ori	s1,s1,49
    497c:	fa1ff06f          	j	491c <fl_fopen+0x1b8>
    4980:	0044f793          	andi	a5,s1,4
    4984:	f8078ce3          	beqz	a5,491c <fl_fopen+0x1b8>
    4988:	0274e493          	ori	s1,s1,39
    498c:	f91ff06f          	j	491c <fl_fopen+0x1b8>
    4990:	000a0513          	mv	a0,s4
    4994:	fffff097          	auipc	ra,0xfffff
    4998:	830080e7          	jalr	-2000(ra) # 31c4 <_open_file>
    499c:	00050413          	mv	s0,a0
    49a0:	e80506e3          	beqz	a0,482c <fl_fopen+0xc8>
    49a4:	42940c23          	sb	s1,1080(s0)
    49a8:	f15ff06f          	j	48bc <fl_fopen+0x158>
    49ac:	00040513          	mv	a0,s0
    49b0:	ffffe097          	auipc	ra,0xffffe
    49b4:	ca4080e7          	jalr	-860(ra) # 2654 <_check_file_open>
    49b8:	00050993          	mv	s3,a0
    49bc:	ee0512e3          	bnez	a0,48a0 <fl_fopen+0x13c>
    49c0:	01444783          	lbu	a5,20(s0)
    49c4:	0a079a63          	bnez	a5,4a78 <fl_fopen+0x314>
    49c8:	008b2783          	lw	a5,8(s6)
    49cc:	00f42023          	sw	a5,0(s0)
    49d0:	00042583          	lw	a1,0(s0)
    49d4:	01010693          	addi	a3,sp,16
    49d8:	000a8613          	mv	a2,s5
    49dc:	8ec90513          	addi	a0,s2,-1812
    49e0:	ffffe097          	auipc	ra,0xffffe
    49e4:	428080e7          	jalr	1064(ra) # 2e08 <fatfs_get_file_entry>
    49e8:	00100793          	li	a5,1
    49ec:	eaf50ae3          	beq	a0,a5,48a0 <fl_fopen+0x13c>
    49f0:	00042223          	sw	zero,4(s0)
    49f4:	00100693          	li	a3,1
    49f8:	00440613          	addi	a2,s0,4
    49fc:	00100593          	li	a1,1
    4a00:	8ec90513          	addi	a0,s2,-1812
    4a04:	00000097          	auipc	ra,0x0
    4a08:	924080e7          	jalr	-1756(ra) # 4328 <fatfs_allocate_free_space.part.0>
    4a0c:	e8050ae3          	beqz	a0,48a0 <fl_fopen+0x13c>
    4a10:	00002cb7          	lui	s9,0x2
    4a14:	21c40b93          	addi	s7,s0,540
    4a18:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_get_sfn_display_name+0x2b>
    4a1c:	000a8593          	mv	a1,s5
    4a20:	00410513          	addi	a0,sp,4
    4a24:	ffffd097          	auipc	ra,0xffffd
    4a28:	590080e7          	jalr	1424(ra) # 1fb4 <fatfs_lfn_create_sfn>
    4a2c:	06098263          	beqz	s3,4a90 <fl_fopen+0x32c>
    4a30:	00098613          	mv	a2,s3
    4a34:	00410593          	addi	a1,sp,4
    4a38:	000b8513          	mv	a0,s7
    4a3c:	ffffd097          	auipc	ra,0xffffd
    4a40:	6f0080e7          	jalr	1776(ra) # 212c <fatfs_lfn_generate_tail>
    4a44:	00042583          	lw	a1,0(s0)
    4a48:	000b8613          	mv	a2,s7
    4a4c:	8ec90513          	addi	a0,s2,-1812
    4a50:	fffff097          	auipc	ra,0xfffff
    4a54:	8ec080e7          	jalr	-1812(ra) # 333c <fatfs_sfn_exists>
    4a58:	06050663          	beqz	a0,4ac4 <fl_fopen+0x360>
    4a5c:	00198993          	addi	s3,s3,1
    4a60:	fb999ee3          	bne	s3,s9,4a1c <fl_fopen+0x2b8>
    4a64:	00442583          	lw	a1,4(s0)
    4a68:	8ec90513          	addi	a0,s2,-1812
    4a6c:	fffff097          	auipc	ra,0xfffff
    4a70:	21c080e7          	jalr	540(ra) # 3c88 <fatfs_free_cluster_chain>
    4a74:	e2dff06f          	j	48a0 <fl_fopen+0x13c>
    4a78:	00040593          	mv	a1,s0
    4a7c:	000b8513          	mv	a0,s7
    4a80:	ffffe097          	auipc	ra,0xffffe
    4a84:	590080e7          	jalr	1424(ra) # 3010 <_open_directory>
    4a88:	f40514e3          	bnez	a0,49d0 <fl_fopen+0x26c>
    4a8c:	e15ff06f          	j	48a0 <fl_fopen+0x13c>
    4a90:	00b00613          	li	a2,11
    4a94:	00410593          	addi	a1,sp,4
    4a98:	000b8513          	mv	a0,s7
    4a9c:	ffffc097          	auipc	ra,0xffffc
    4aa0:	3e4080e7          	jalr	996(ra) # e80 <memcpy>
    4aa4:	fa1ff06f          	j	4a44 <fl_fopen+0x2e0>
    4aa8:	000a0513          	mv	a0,s4
    4aac:	ffffe097          	auipc	ra,0xffffe
    4ab0:	718080e7          	jalr	1816(ra) # 31c4 <_open_file>
    4ab4:	00050413          	mv	s0,a0
    4ab8:	0640006f          	j	4b1c <fl_fopen+0x3b8>
    4abc:	00000413          	li	s0,0
    4ac0:	e09ff06f          	j	48c8 <fl_fopen+0x164>
    4ac4:	00442703          	lw	a4,4(s0)
    4ac8:	00042583          	lw	a1,0(s0)
    4acc:	00000813          	li	a6,0
    4ad0:	00000793          	li	a5,0
    4ad4:	000b8693          	mv	a3,s7
    4ad8:	000a8613          	mv	a2,s5
    4adc:	8ec90513          	addi	a0,s2,-1812
    4ae0:	00000097          	auipc	ra,0x0
    4ae4:	950080e7          	jalr	-1712(ra) # 4430 <fatfs_add_file_entry>
    4ae8:	f6050ee3          	beqz	a0,4a64 <fl_fopen+0x300>
    4aec:	fff00793          	li	a5,-1
    4af0:	00042623          	sw	zero,12(s0)
    4af4:	00042423          	sw	zero,8(s0)
    4af8:	42f42823          	sw	a5,1072(s0)
    4afc:	42042a23          	sw	zero,1076(s0)
    4b00:	00042823          	sw	zero,16(s0)
    4b04:	22f42423          	sw	a5,552(s0)
    4b08:	22f42623          	sw	a5,556(s0)
    4b0c:	8ec90513          	addi	a0,s2,-1812
    4b10:	ffffe097          	auipc	ra,0xffffe
    4b14:	04c080e7          	jalr	76(ra) # 2b5c <fatfs_fat_purge>
    4b18:	e80c06e3          	beqz	s8,49a4 <fl_fopen+0x240>
    4b1c:	e80414e3          	bnez	s0,49a4 <fl_fopen+0x240>
    4b20:	d99ff06f          	j	48b8 <fl_fopen+0x154>

00004b24 <acmd41>:
    4b24:	00004069 00000100                       i@......

00004b2c <cmd0>:
    4b2c:	00000040 00009500                       @.......

00004b34 <cmd16>:
    4b34:	02000050 00001500                       P.......

00004b3c <cmd55>:
    4b3c:	00000077 00000100                       w.......

00004b44 <cmd8>:
    4b44:	01000048 000087aa                       H.......

00004b4c <AUDIO>:
    4b4c:	00018000                                ....

00004b50 <BUTTONS>:
    4b50:	00010100                                ....

00004b54 <LEDS>:
    4b54:	00010004                                ....

00004b58 <OLED>:
    4b58:	00010008                                ....

00004b5c <OLED_RST>:
    4b5c:	00010010                                ....

00004b60 <SDCARD>:
    4b60:	00010080 676d492f 0000002f 4f525245     ..../Img/...ERRO
    4b70:	61702052 74206874 6c206f6f 65677261     R path too large
    4b80:	0000000a 656c6966 656d616e 616d6920     ....filename ima
    4b90:	25206567 00000073 00006272 2e676d69     ge %s...rb..img.
    4ba0:	20776172 20746f6e 6e756f66 000a2e64     raw not found...
    4bb0:	67616d69 6f662065 2e646e75 0000000a     image found.....
    4bc0:	636f522f 0000006b 61642e72 00006174     /Rock...r.data..
    4bd0:	656c6966 7325203a 0000000a 68746170     file: %s....path
    4be0:	7325203a 0000000a 20746f6e 6e756f66     : %s....not foun
    4bf0:	25203a64 00000a73 20202020 3d3d3d3d     d: %s...    ====
    4c00:	6f73203d 2073676e 3d3d3d3d 2020203d     = songs =====   
    4c10:	000a0a20 203e6425 000a7325               ...%d> %s..

00004c1c <font>:
    4c1c:	00000000 00002f00 00030000 14000003     ...../..........
    4c2c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4c3c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4c4c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4c5c:	00080800 00200000 20000000 02040810     ...... .... ....
    4c6c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4c7c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4c8c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4c9c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4cac:	00141400 0a110000 01000004 0007052d     ............-...
    4cbc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4ccc:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4cdc:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4cec:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4cfc:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4d0c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4d1c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4d2c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4d3c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4d4c:	003f2102 01020000 20000201 00000020     .!?........  ...
    4d5c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4d6c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4d7c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4d8c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4d9c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4dac:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4dbc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4dcc:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4ddc:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4dec:	043f2100 02010000 00000102 00000000     .!?.............
    4dfc:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    4e0c:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    4e1c:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    4e2c:	54414620 74656420 736c6961 64252820      FAT details (%d
    4e3c:	0a0d2129 00000000 00000001 00000003     )!..............
    4e4c:	00000005 00000007 00000009 0000000e     ................
    4e5c:	00000010 00000012 00000014 00000016     ................
    4e6c:	00000018 0000001c 0000001e              ............

00004e78 <sdcard_while_loading_callback>:
    4e78:	00000000                                ....

00004e7c <back_color>:
    4e7c:	00000000                                ....

00004e80 <cursor_x>:
    4e80:	00000000                                ....

00004e84 <cursor_y>:
    4e84:	00000000                                ....

00004e88 <front_color>:
    4e88:	00000000                                ....

00004e8c <f_putchar>:
    4e8c:	00000000                                ....

00004e90 <_filelib_init>:
    4e90:	00000000                                ....

00004e94 <_filelib_valid>:
    4e94:	00000000                                ....

00004e98 <_free_file_list>:
	...

00004ea0 <_open_file_list>:
	...
