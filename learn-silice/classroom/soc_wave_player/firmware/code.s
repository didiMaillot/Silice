
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	358080e7          	jalr	856(ra) # 35c <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_fs+0x6a44>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	9507a403          	lw	s0,-1712(a5) # 4950 <AUDIO>
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
      54:	c38080e7          	jalr	-968(ra) # c88 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	c18080e7          	jalr	-1000(ra) # c88 <memset>
      78:	00042783          	lw	a5,0(s0)
      7c:	fef48ee3          	beq	s1,a5,78 <clear_audio+0x5c>
      80:	00c12083          	lw	ra,12(sp)
      84:	00812403          	lw	s0,8(sp)
      88:	00412483          	lw	s1,4(sp)
      8c:	01010113          	addi	sp,sp,16
      90:	00008067          	ret

00000094 <openMusic>:
      94:	f9010113          	addi	sp,sp,-112
      98:	000057b7          	lui	a5,0x5
      9c:	06812423          	sw	s0,104(sp)
      a0:	9587a403          	lw	s0,-1704(a5) # 4958 <LEDS>
      a4:	06112623          	sw	ra,108(sp)
      a8:	0ff00793          	li	a5,255
      ac:	06912223          	sw	s1,100(sp)
      b0:	07212023          	sw	s2,96(sp)
      b4:	05312e23          	sw	s3,92(sp)
      b8:	05412c23          	sw	s4,88(sp)
      bc:	05512a23          	sw	s5,84(sp)
      c0:	05612823          	sw	s6,80(sp)
      c4:	05712623          	sw	s7,76(sp)
      c8:	05812423          	sw	s8,72(sp)
      cc:	05912223          	sw	s9,68(sp)
      d0:	00f42023          	sw	a5,0(s0)
      d4:	00058913          	mv	s2,a1
      d8:	00050993          	mv	s3,a0
      dc:	00001097          	auipc	ra,0x1
      e0:	efc080e7          	jalr	-260(ra) # fd8 <display_framebuffer>
      e4:	00004637          	lui	a2,0x4
      e8:	00000593          	li	a1,0
      ec:	00001097          	auipc	ra,0x1
      f0:	b9c080e7          	jalr	-1124(ra) # c88 <memset>
      f4:	00001097          	auipc	ra,0x1
      f8:	080080e7          	jalr	128(ra) # 1174 <display_refresh>
      fc:	00100793          	li	a5,1
     100:	00f42023          	sw	a5,0(s0)
     104:	00000593          	li	a1,0
     108:	00000513          	li	a0,0
     10c:	00001097          	auipc	ra,0x1
     110:	ed8080e7          	jalr	-296(ra) # fe4 <display_set_cursor>
     114:	00000593          	li	a1,0
     118:	0ff00513          	li	a0,255
     11c:	00001097          	auipc	ra,0x1
     120:	edc080e7          	jalr	-292(ra) # ff8 <display_set_front_back_color>
     124:	00001097          	auipc	ra,0x1
     128:	050080e7          	jalr	80(ra) # 1174 <display_refresh>
     12c:	00200793          	li	a5,2
     130:	00010493          	mv	s1,sp
     134:	00f42023          	sw	a5,0(s0)
     138:	00098593          	mv	a1,s3
     13c:	00048513          	mv	a0,s1
     140:	00010023          	sb	zero,0(sp)
     144:	00001097          	auipc	ra,0x1
     148:	c08080e7          	jalr	-1016(ra) # d4c <strcat>
     14c:	000055b7          	lui	a1,0x5
     150:	96858593          	addi	a1,a1,-1688 # 4968 <SDCARD+0x4>
     154:	00048513          	mv	a0,s1
     158:	00001097          	auipc	ra,0x1
     15c:	bf4080e7          	jalr	-1036(ra) # d4c <strcat>
     160:	00090593          	mv	a1,s2
     164:	00048513          	mv	a0,s1
     168:	00001097          	auipc	ra,0x1
     16c:	be4080e7          	jalr	-1052(ra) # d4c <strcat>
     170:	40950533          	sub	a0,a0,s1
     174:	04000793          	li	a5,64
     178:	02a7d463          	bge	a5,a0,1a0 <openMusic+0x10c>
     17c:	00f00793          	li	a5,15
     180:	00005537          	lui	a0,0x5
     184:	00f42023          	sw	a5,0(s0)
     188:	96c50513          	addi	a0,a0,-1684 # 496c <SDCARD+0x8>
     18c:	00001097          	auipc	ra,0x1
     190:	1e8080e7          	jalr	488(ra) # 1374 <printf>
     194:	00001097          	auipc	ra,0x1
     198:	fe0080e7          	jalr	-32(ra) # 1174 <display_refresh>
     19c:	0000006f          	j	19c <openMusic+0x108>
     1a0:	00400793          	li	a5,4
     1a4:	00005537          	lui	a0,0x5
     1a8:	00f42023          	sw	a5,0(s0)
     1ac:	00048593          	mv	a1,s1
     1b0:	98450513          	addi	a0,a0,-1660 # 4984 <SDCARD+0x20>
     1b4:	00001097          	auipc	ra,0x1
     1b8:	1c0080e7          	jalr	448(ra) # 1374 <printf>
     1bc:	00001097          	auipc	ra,0x1
     1c0:	fb8080e7          	jalr	-72(ra) # 1174 <display_refresh>
     1c4:	000055b7          	lui	a1,0x5
     1c8:	99058593          	addi	a1,a1,-1648 # 4990 <SDCARD+0x2c>
     1cc:	00048513          	mv	a0,s1
     1d0:	00004097          	auipc	ra,0x4
     1d4:	398080e7          	jalr	920(ra) # 4568 <fl_fopen>
     1d8:	00050913          	mv	s2,a0
     1dc:	04051e63          	bnez	a0,238 <openMusic+0x1a4>
     1e0:	00005537          	lui	a0,0x5
     1e4:	00048593          	mv	a1,s1
     1e8:	99450513          	addi	a0,a0,-1644 # 4994 <SDCARD+0x30>
     1ec:	00001097          	auipc	ra,0x1
     1f0:	188080e7          	jalr	392(ra) # 1374 <printf>
     1f4:	00001097          	auipc	ra,0x1
     1f8:	f80080e7          	jalr	-128(ra) # 1174 <display_refresh>
     1fc:	00800793          	li	a5,8
     200:	06c12083          	lw	ra,108(sp)
     204:	00f42023          	sw	a5,0(s0)
     208:	06812403          	lw	s0,104(sp)
     20c:	06412483          	lw	s1,100(sp)
     210:	06012903          	lw	s2,96(sp)
     214:	05c12983          	lw	s3,92(sp)
     218:	05812a03          	lw	s4,88(sp)
     21c:	05412a83          	lw	s5,84(sp)
     220:	05012b03          	lw	s6,80(sp)
     224:	04c12b83          	lw	s7,76(sp)
     228:	04812c03          	lw	s8,72(sp)
     22c:	04412c83          	lw	s9,68(sp)
     230:	07010113          	addi	sp,sp,112
     234:	00008067          	ret
     238:	0ff00593          	li	a1,255
     23c:	00000513          	li	a0,0
     240:	00001097          	auipc	ra,0x1
     244:	db8080e7          	jalr	-584(ra) # ff8 <display_set_front_back_color>
     248:	00005537          	lui	a0,0x5
     24c:	00048593          	mv	a1,s1
     250:	9a850513          	addi	a0,a0,-1624 # 49a8 <SDCARD+0x44>
     254:	00001097          	auipc	ra,0x1
     258:	120080e7          	jalr	288(ra) # 1374 <printf>
     25c:	00001097          	auipc	ra,0x1
     260:	f18080e7          	jalr	-232(ra) # 1174 <display_refresh>
     264:	00000593          	li	a1,0
     268:	0ff00513          	li	a0,255
     26c:	00001097          	auipc	ra,0x1
     270:	d8c080e7          	jalr	-628(ra) # ff8 <display_set_front_back_color>
     274:	00005537          	lui	a0,0x5
     278:	9c050513          	addi	a0,a0,-1600 # 49c0 <SDCARD+0x5c>
     27c:	00001097          	auipc	ra,0x1
     280:	0f8080e7          	jalr	248(ra) # 1374 <printf>
     284:	00001097          	auipc	ra,0x1
     288:	ef0080e7          	jalr	-272(ra) # 1174 <display_refresh>
     28c:	01000793          	li	a5,16
     290:	00f42023          	sw	a5,0(s0)
     294:	000057b7          	lui	a5,0x5
     298:	9507ab03          	lw	s6,-1712(a5) # 4950 <AUDIO>
     29c:	000057b7          	lui	a5,0x5
     2a0:	9547aa83          	lw	s5,-1708(a5) # 4954 <BUTTONS>
     2a4:	00100a13          	li	s4,1
     2a8:	00000993          	li	s3,0
     2ac:	00100493          	li	s1,1
     2b0:	1ff00b93          	li	s7,511
     2b4:	08000c13          	li	s8,128
     2b8:	000b2c83          	lw	s9,0(s6)
     2bc:	020a0463          	beqz	s4,2e4 <openMusic+0x250>
     2c0:	00090693          	mv	a3,s2
     2c4:	20000613          	li	a2,512
     2c8:	00100593          	li	a1,1
     2cc:	000c8513          	mv	a0,s9
     2d0:	00004097          	auipc	ra,0x4
     2d4:	cb8080e7          	jalr	-840(ra) # 3f88 <fl_fread>
     2d8:	04abd263          	bge	s7,a0,31c <openMusic+0x288>
     2dc:	000b2783          	lw	a5,0(s6)
     2e0:	fefc8ee3          	beq	s9,a5,2dc <openMusic+0x248>
     2e4:	000aa783          	lw	a5,0(s5)
     2e8:	0407f793          	andi	a5,a5,64
     2ec:	00078e63          	beqz	a5,308 <openMusic+0x274>
     2f0:	00000097          	auipc	ra,0x0
     2f4:	d2c080e7          	jalr	-724(ra) # 1c <clear_audio>
     2f8:	000aa783          	lw	a5,0(s5)
     2fc:	0407f793          	andi	a5,a5,64
     300:	fe079ce3          	bnez	a5,2f8 <openMusic+0x264>
     304:	001a4a13          	xori	s4,s4,1
     308:	000aa783          	lw	a5,0(s5)
     30c:	0207f793          	andi	a5,a5,32
     310:	02078063          	beqz	a5,330 <openMusic+0x29c>
     314:	00000097          	auipc	ra,0x0
     318:	d08080e7          	jalr	-760(ra) # 1c <clear_audio>
     31c:	00090513          	mv	a0,s2
     320:	00004097          	auipc	ra,0x4
     324:	b88080e7          	jalr	-1144(ra) # 3ea8 <fl_fclose>
     328:	02000793          	li	a5,32
     32c:	ed5ff06f          	j	200 <openMusic+0x16c>
     330:	01848663          	beq	s1,s8,33c <openMusic+0x2a8>
     334:	00100793          	li	a5,1
     338:	00f49663          	bne	s1,a5,344 <openMusic+0x2b0>
     33c:	00100793          	li	a5,1
     340:	413789b3          	sub	s3,a5,s3
     344:	00098863          	beqz	s3,354 <openMusic+0x2c0>
     348:	00149493          	slli	s1,s1,0x1
     34c:	00942023          	sw	s1,0(s0)
     350:	f69ff06f          	j	2b8 <openMusic+0x224>
     354:	4014d493          	srai	s1,s1,0x1
     358:	ff5ff06f          	j	34c <openMusic+0x2b8>

0000035c <main>:
     35c:	eb010113          	addi	sp,sp,-336
     360:	14912223          	sw	s1,324(sp)
     364:	000054b7          	lui	s1,0x5
     368:	14112623          	sw	ra,332(sp)
     36c:	14812423          	sw	s0,328(sp)
     370:	15212023          	sw	s2,320(sp)
     374:	ca448793          	addi	a5,s1,-860 # 4ca4 <items>
     378:	13312e23          	sw	s3,316(sp)
     37c:	13412c23          	sw	s4,312(sp)
     380:	13512a23          	sw	s5,308(sp)
     384:	13612823          	sw	s6,304(sp)
     388:	13712623          	sw	s7,300(sp)
     38c:	13812423          	sw	s8,296(sp)
     390:	13912223          	sw	s9,292(sp)
     394:	13a12023          	sw	s10,288(sp)
     398:	00078023          	sb	zero,0(a5)
     39c:	02078023          	sb	zero,32(a5)
     3a0:	04078023          	sb	zero,64(a5)
     3a4:	06078023          	sb	zero,96(a5)
     3a8:	000017b7          	lui	a5,0x1
     3ac:	00005737          	lui	a4,0x5
     3b0:	00c78793          	addi	a5,a5,12 # 100c <display_putchar>
     3b4:	c8f72423          	sw	a5,-888(a4) # 4c88 <f_putchar>
     3b8:	00001097          	auipc	ra,0x1
     3bc:	c20080e7          	jalr	-992(ra) # fd8 <display_framebuffer>
     3c0:	00004637          	lui	a2,0x4
     3c4:	00000593          	li	a1,0
     3c8:	00001097          	auipc	ra,0x1
     3cc:	8c0080e7          	jalr	-1856(ra) # c88 <memset>
     3d0:	00001097          	auipc	ra,0x1
     3d4:	ac8080e7          	jalr	-1336(ra) # e98 <oled_init>
     3d8:	00001097          	auipc	ra,0x1
     3dc:	acc080e7          	jalr	-1332(ra) # ea4 <oled_fullscreen>
     3e0:	00000513          	li	a0,0
     3e4:	00001097          	auipc	ra,0x1
     3e8:	b58080e7          	jalr	-1192(ra) # f3c <oled_clear>
     3ec:	ca448493          	addi	s1,s1,-860
     3f0:	00000097          	auipc	ra,0x0
     3f4:	630080e7          	jalr	1584(ra) # a20 <sdcard_init>
     3f8:	00001937          	lui	s2,0x1
     3fc:	00001097          	auipc	ra,0x1
     400:	550080e7          	jalr	1360(ra) # 194c <fl_init>
     404:	00001437          	lui	s0,0x1
     408:	bcc90593          	addi	a1,s2,-1076 # bcc <sdcard_writesector>
     40c:	b7440513          	addi	a0,s0,-1164 # b74 <sdcard_readsector>
     410:	00002097          	auipc	ra,0x2
     414:	4c4080e7          	jalr	1220(ra) # 28d4 <fl_attach_media>
     418:	fe0518e3          	bnez	a0,408 <main+0xac>
     41c:	00005b37          	lui	s6,0x5
     420:	00410593          	addi	a1,sp,4
     424:	9d0b0513          	addi	a0,s6,-1584 # 49d0 <SDCARD+0x6c>
     428:	00003097          	auipc	ra,0x3
     42c:	ad4080e7          	jalr	-1324(ra) # 2efc <fl_opendir>
     430:	02050463          	beqz	a0,458 <main+0xfc>
     434:	00005437          	lui	s0,0x5
     438:	01010593          	addi	a1,sp,16
     43c:	00410513          	addi	a0,sp,4
     440:	00003097          	auipc	ra,0x3
     444:	17c080e7          	jalr	380(ra) # 35bc <fl_readdir>
     448:	04050e63          	beqz	a0,4a4 <main+0x148>
     44c:	00410513          	addi	a0,sp,4
     450:	00001097          	auipc	ra,0x1
     454:	56c080e7          	jalr	1388(ra) # 19bc <fl_closedir>
     458:	00005937          	lui	s2,0x5
     45c:	c7092783          	lw	a5,-912(s2) # 4c70 <item_count>
     460:	c7090913          	addi	s2,s2,-912
     464:	06079a63          	bnez	a5,4d8 <main+0x17c>
     468:	00000593          	li	a1,0
     46c:	00000513          	li	a0,0
     470:	00001097          	auipc	ra,0x1
     474:	b74080e7          	jalr	-1164(ra) # fe4 <display_set_cursor>
     478:	00000593          	li	a1,0
     47c:	0ff00513          	li	a0,255
     480:	00001097          	auipc	ra,0x1
     484:	b78080e7          	jalr	-1160(ra) # ff8 <display_set_front_back_color>
     488:	00005537          	lui	a0,0x5
     48c:	9d850513          	addi	a0,a0,-1576 # 49d8 <SDCARD+0x74>
     490:	00001097          	auipc	ra,0x1
     494:	ee4080e7          	jalr	-284(ra) # 1374 <printf>
     498:	00001097          	auipc	ra,0x1
     49c:	cdc080e7          	jalr	-804(ra) # 1174 <display_refresh>
     4a0:	0000006f          	j	4a0 <main+0x144>
     4a4:	11414783          	lbu	a5,276(sp)
     4a8:	f80798e3          	bnez	a5,438 <main+0xdc>
     4ac:	c7040793          	addi	a5,s0,-912 # 4c70 <item_count>
     4b0:	0007a503          	lw	a0,0(a5)
     4b4:	02000613          	li	a2,32
     4b8:	01010593          	addi	a1,sp,16
     4bc:	00150713          	addi	a4,a0,1
     4c0:	00551513          	slli	a0,a0,0x5
     4c4:	00a48533          	add	a0,s1,a0
     4c8:	00e7a023          	sw	a4,0(a5)
     4cc:	00000097          	auipc	ra,0x0
     4d0:	7d8080e7          	jalr	2008(ra) # ca4 <memcpy>
     4d4:	f65ff06f          	j	438 <main+0xdc>
     4d8:	000057b7          	lui	a5,0x5
     4dc:	9547aa03          	lw	s4,-1708(a5) # 4954 <BUTTONS>
     4e0:	000057b7          	lui	a5,0x5
     4e4:	9587a783          	lw	a5,-1704(a5) # 4958 <LEDS>
     4e8:	00000a93          	li	s5,0
     4ec:	00000413          	li	s0,0
     4f0:	00005bb7          	lui	s7,0x5
     4f4:	00005c37          	lui	s8,0x5
     4f8:	00078d13          	mv	s10,a5
     4fc:	00000593          	li	a1,0
     500:	00000513          	li	a0,0
     504:	00001097          	auipc	ra,0x1
     508:	ae0080e7          	jalr	-1312(ra) # fe4 <display_set_cursor>
     50c:	0ffaf593          	zext.b	a1,s5
     510:	07f58513          	addi	a0,a1,127
     514:	0ff57513          	zext.b	a0,a0
     518:	00001097          	auipc	ra,0x1
     51c:	ae0080e7          	jalr	-1312(ra) # ff8 <display_set_front_back_color>
     520:	9f0b8513          	addi	a0,s7,-1552 # 49f0 <SDCARD+0x8c>
     524:	007a8a93          	addi	s5,s5,7
     528:	00001097          	auipc	ra,0x1
     52c:	e4c080e7          	jalr	-436(ra) # 1374 <printf>
     530:	00048c93          	mv	s9,s1
     534:	00000993          	li	s3,0
     538:	00092783          	lw	a5,0(s2)
     53c:	06f9c463          	blt	s3,a5,5a4 <main+0x248>
     540:	00001097          	auipc	ra,0x1
     544:	c34080e7          	jalr	-972(ra) # 1174 <display_refresh>
     548:	000a2783          	lw	a5,0(s4)
     54c:	0087f793          	andi	a5,a5,8
     550:	00078463          	beqz	a5,558 <main+0x1fc>
     554:	00140413          	addi	s0,s0,1
     558:	000a2783          	lw	a5,0(s4)
     55c:	0107f793          	andi	a5,a5,16
     560:	00078463          	beqz	a5,568 <main+0x20c>
     564:	fff40413          	addi	s0,s0,-1
     568:	000a2783          	lw	a5,0(s4)
     56c:	0407f793          	andi	a5,a5,64
     570:	00078e63          	beqz	a5,58c <main+0x230>
     574:	00541593          	slli	a1,s0,0x5
     578:	00b485b3          	add	a1,s1,a1
     57c:	9d0b0513          	addi	a0,s6,-1584
     580:	00000097          	auipc	ra,0x0
     584:	b14080e7          	jalr	-1260(ra) # 94 <openMusic>
     588:	000d2023          	sw	zero,0(s10)
     58c:	00092783          	lw	a5,0(s2)
     590:	00045463          	bgez	s0,598 <main+0x23c>
     594:	fff78413          	addi	s0,a5,-1
     598:	f6f442e3          	blt	s0,a5,4fc <main+0x1a0>
     59c:	00000413          	li	s0,0
     5a0:	f5dff06f          	j	4fc <main+0x1a0>
     5a4:	03341a63          	bne	s0,s3,5d8 <main+0x27c>
     5a8:	0ff00593          	li	a1,255
     5ac:	00000513          	li	a0,0
     5b0:	00001097          	auipc	ra,0x1
     5b4:	a48080e7          	jalr	-1464(ra) # ff8 <display_set_front_back_color>
     5b8:	000c8613          	mv	a2,s9
     5bc:	00098593          	mv	a1,s3
     5c0:	a0cc0513          	addi	a0,s8,-1524 # 4a0c <SDCARD+0xa8>
     5c4:	00001097          	auipc	ra,0x1
     5c8:	db0080e7          	jalr	-592(ra) # 1374 <printf>
     5cc:	00198993          	addi	s3,s3,1
     5d0:	020c8c93          	addi	s9,s9,32
     5d4:	f65ff06f          	j	538 <main+0x1dc>
     5d8:	00000593          	li	a1,0
     5dc:	0ff00513          	li	a0,255
     5e0:	fd1ff06f          	j	5b0 <main+0x254>

000005e4 <pause>:
     5e4:	c0002773          	rdcycle	a4
     5e8:	c00027f3          	rdcycle	a5
     5ec:	40e787b3          	sub	a5,a5,a4
     5f0:	fea7ece3          	bltu	a5,a0,5e8 <pause+0x4>
     5f4:	00008067          	ret

000005f8 <sdcard_idle>:
     5f8:	00008067          	ret

000005fc <sdcard_select>:
     5fc:	000057b7          	lui	a5,0x5
     600:	9647a783          	lw	a5,-1692(a5) # 4964 <SDCARD>
     604:	00200713          	li	a4,2
     608:	00e7a023          	sw	a4,0(a5)
     60c:	00008067          	ret

00000610 <sdcard_ponder>:
     610:	000056b7          	lui	a3,0x5
     614:	9646a603          	lw	a2,-1692(a3) # 4964 <SDCARD>
     618:	01000793          	li	a5,16
     61c:	00000713          	li	a4,0
     620:	00100693          	li	a3,1
     624:	00676593          	ori	a1,a4,6
     628:	00b62023          	sw	a1,0(a2) # 4000 <fl_fread+0x78>
     62c:	40e68733          	sub	a4,a3,a4
     630:	00000013          	nop
     634:	fff78793          	addi	a5,a5,-1
     638:	fe0796e3          	bnez	a5,624 <sdcard_ponder+0x14>
     63c:	00008067          	ret

00000640 <sdcard_unselect>:
     640:	000057b7          	lui	a5,0x5
     644:	9647a783          	lw	a5,-1692(a5) # 4964 <SDCARD>
     648:	00600713          	li	a4,6
     64c:	00e7a023          	sw	a4,0(a5)
     650:	00008067          	ret

00000654 <sdcard_send>:
     654:	000057b7          	lui	a5,0x5
     658:	9647a783          	lw	a5,-1692(a5) # 4964 <SDCARD>
     65c:	00655713          	srli	a4,a0,0x6
     660:	00277713          	andi	a4,a4,2
     664:	00e7a023          	sw	a4,0(a5)
     668:	00176713          	ori	a4,a4,1
     66c:	00e7a023          	sw	a4,0(a5)
     670:	00555713          	srli	a4,a0,0x5
     674:	00277713          	andi	a4,a4,2
     678:	00e7a023          	sw	a4,0(a5)
     67c:	00176713          	ori	a4,a4,1
     680:	00e7a023          	sw	a4,0(a5)
     684:	00455713          	srli	a4,a0,0x4
     688:	00277713          	andi	a4,a4,2
     68c:	00e7a023          	sw	a4,0(a5)
     690:	00176713          	ori	a4,a4,1
     694:	00e7a023          	sw	a4,0(a5)
     698:	00355713          	srli	a4,a0,0x3
     69c:	00277713          	andi	a4,a4,2
     6a0:	00e7a023          	sw	a4,0(a5)
     6a4:	00176713          	ori	a4,a4,1
     6a8:	00e7a023          	sw	a4,0(a5)
     6ac:	00255713          	srli	a4,a0,0x2
     6b0:	00277713          	andi	a4,a4,2
     6b4:	00e7a023          	sw	a4,0(a5)
     6b8:	00176713          	ori	a4,a4,1
     6bc:	00e7a023          	sw	a4,0(a5)
     6c0:	00155713          	srli	a4,a0,0x1
     6c4:	00277713          	andi	a4,a4,2
     6c8:	00e7a023          	sw	a4,0(a5)
     6cc:	00176713          	ori	a4,a4,1
     6d0:	00e7a023          	sw	a4,0(a5)
     6d4:	00257713          	andi	a4,a0,2
     6d8:	00e7a023          	sw	a4,0(a5)
     6dc:	00151513          	slli	a0,a0,0x1
     6e0:	00176713          	ori	a4,a4,1
     6e4:	00e7a023          	sw	a4,0(a5)
     6e8:	00257513          	andi	a0,a0,2
     6ec:	00a7a023          	sw	a0,0(a5)
     6f0:	00156513          	ori	a0,a0,1
     6f4:	00a7a023          	sw	a0,0(a5)
     6f8:	00200713          	li	a4,2
     6fc:	00e7a023          	sw	a4,0(a5)
     700:	000057b7          	lui	a5,0x5
     704:	c747a783          	lw	a5,-908(a5) # 4c74 <sdcard_while_loading_callback>
     708:	00078067          	jr	a5

0000070c <sdcard_read>:
     70c:	fd010113          	addi	sp,sp,-48
     710:	fff50793          	addi	a5,a0,-1
     714:	01312e23          	sw	s3,28(sp)
     718:	00100993          	li	s3,1
     71c:	00f999b3          	sll	s3,s3,a5
     720:	000057b7          	lui	a5,0x5
     724:	01512a23          	sw	s5,20(sp)
     728:	9647aa83          	lw	s5,-1692(a5) # 4964 <SDCARD>
     72c:	02812423          	sw	s0,40(sp)
     730:	02912223          	sw	s1,36(sp)
     734:	03212023          	sw	s2,32(sp)
     738:	01412c23          	sw	s4,24(sp)
     73c:	01612823          	sw	s6,16(sp)
     740:	01712623          	sw	s7,12(sp)
     744:	01812423          	sw	s8,8(sp)
     748:	02112623          	sw	ra,44(sp)
     74c:	00050493          	mv	s1,a0
     750:	00058a13          	mv	s4,a1
     754:	0ff00413          	li	s0,255
     758:	00000913          	li	s2,0
     75c:	00300b13          	li	s6,3
     760:	00200b93          	li	s7,2
     764:	00005c37          	lui	s8,0x5
     768:	040a0063          	beqz	s4,7a8 <sdcard_read+0x9c>
     76c:	0089f7b3          	and	a5,s3,s0
     770:	02079e63          	bnez	a5,7ac <sdcard_read+0xa0>
     774:	02c12083          	lw	ra,44(sp)
     778:	0ff47513          	zext.b	a0,s0
     77c:	02812403          	lw	s0,40(sp)
     780:	02412483          	lw	s1,36(sp)
     784:	02012903          	lw	s2,32(sp)
     788:	01c12983          	lw	s3,28(sp)
     78c:	01812a03          	lw	s4,24(sp)
     790:	01412a83          	lw	s5,20(sp)
     794:	01012b03          	lw	s6,16(sp)
     798:	00c12b83          	lw	s7,12(sp)
     79c:	00812c03          	lw	s8,8(sp)
     7a0:	03010113          	addi	sp,sp,48
     7a4:	00008067          	ret
     7a8:	fc9956e3          	bge	s2,s1,774 <sdcard_read+0x68>
     7ac:	016aa023          	sw	s6,0(s5)
     7b0:	017aa023          	sw	s7,0(s5)
     7b4:	000aa783          	lw	a5,0(s5)
     7b8:	00141413          	slli	s0,s0,0x1
     7bc:	00190913          	addi	s2,s2,1
     7c0:	00f46433          	or	s0,s0,a5
     7c4:	c74c2783          	lw	a5,-908(s8) # 4c74 <sdcard_while_loading_callback>
     7c8:	000780e7          	jalr	a5
     7cc:	f9dff06f          	j	768 <sdcard_read+0x5c>

000007d0 <sdcard_get>:
     7d0:	fe010113          	addi	sp,sp,-32
     7d4:	00112e23          	sw	ra,28(sp)
     7d8:	00812c23          	sw	s0,24(sp)
     7dc:	00912a23          	sw	s1,20(sp)
     7e0:	00050413          	mv	s0,a0
     7e4:	00b12623          	sw	a1,12(sp)
     7e8:	00000097          	auipc	ra,0x0
     7ec:	e14080e7          	jalr	-492(ra) # 5fc <sdcard_select>
     7f0:	00c12583          	lw	a1,12(sp)
     7f4:	00040513          	mv	a0,s0
     7f8:	00100493          	li	s1,1
     7fc:	00000097          	auipc	ra,0x0
     800:	f10080e7          	jalr	-240(ra) # 70c <sdcard_read>
     804:	00345413          	srli	s0,s0,0x3
     808:	0284c463          	blt	s1,s0,830 <sdcard_get+0x60>
     80c:	00a12623          	sw	a0,12(sp)
     810:	00000097          	auipc	ra,0x0
     814:	e30080e7          	jalr	-464(ra) # 640 <sdcard_unselect>
     818:	01c12083          	lw	ra,28(sp)
     81c:	01812403          	lw	s0,24(sp)
     820:	00c12503          	lw	a0,12(sp)
     824:	01412483          	lw	s1,20(sp)
     828:	02010113          	addi	sp,sp,32
     82c:	00008067          	ret
     830:	00000593          	li	a1,0
     834:	00800513          	li	a0,8
     838:	00000097          	auipc	ra,0x0
     83c:	ed4080e7          	jalr	-300(ra) # 70c <sdcard_read>
     840:	00148493          	addi	s1,s1,1
     844:	fc5ff06f          	j	808 <sdcard_get+0x38>

00000848 <sdcard_cmd>:
     848:	ff010113          	addi	sp,sp,-16
     84c:	00812423          	sw	s0,8(sp)
     850:	00912223          	sw	s1,4(sp)
     854:	01212023          	sw	s2,0(sp)
     858:	00112623          	sw	ra,12(sp)
     85c:	00050493          	mv	s1,a0
     860:	00000413          	li	s0,0
     864:	00000097          	auipc	ra,0x0
     868:	d98080e7          	jalr	-616(ra) # 5fc <sdcard_select>
     86c:	00600913          	li	s2,6
     870:	008487b3          	add	a5,s1,s0
     874:	0007c503          	lbu	a0,0(a5)
     878:	00140413          	addi	s0,s0,1
     87c:	00000097          	auipc	ra,0x0
     880:	dd8080e7          	jalr	-552(ra) # 654 <sdcard_send>
     884:	ff2416e3          	bne	s0,s2,870 <sdcard_cmd+0x28>
     888:	00812403          	lw	s0,8(sp)
     88c:	00c12083          	lw	ra,12(sp)
     890:	00412483          	lw	s1,4(sp)
     894:	00012903          	lw	s2,0(sp)
     898:	01010113          	addi	sp,sp,16
     89c:	00000317          	auipc	t1,0x0
     8a0:	da430067          	jr	-604(t1) # 640 <sdcard_unselect>

000008a4 <sdcard_start_sector>:
     8a4:	ff010113          	addi	sp,sp,-16
     8a8:	00112623          	sw	ra,12(sp)
     8ac:	00812423          	sw	s0,8(sp)
     8b0:	00050413          	mv	s0,a0
     8b4:	00000097          	auipc	ra,0x0
     8b8:	d48080e7          	jalr	-696(ra) # 5fc <sdcard_select>
     8bc:	05100513          	li	a0,81
     8c0:	00000097          	auipc	ra,0x0
     8c4:	d94080e7          	jalr	-620(ra) # 654 <sdcard_send>
     8c8:	01845513          	srli	a0,s0,0x18
     8cc:	00000097          	auipc	ra,0x0
     8d0:	d88080e7          	jalr	-632(ra) # 654 <sdcard_send>
     8d4:	41045513          	srai	a0,s0,0x10
     8d8:	0ff57513          	zext.b	a0,a0
     8dc:	00000097          	auipc	ra,0x0
     8e0:	d78080e7          	jalr	-648(ra) # 654 <sdcard_send>
     8e4:	40845513          	srai	a0,s0,0x8
     8e8:	0ff57513          	zext.b	a0,a0
     8ec:	00000097          	auipc	ra,0x0
     8f0:	d68080e7          	jalr	-664(ra) # 654 <sdcard_send>
     8f4:	0ff47513          	zext.b	a0,s0
     8f8:	00000097          	auipc	ra,0x0
     8fc:	d5c080e7          	jalr	-676(ra) # 654 <sdcard_send>
     900:	05500513          	li	a0,85
     904:	00000097          	auipc	ra,0x0
     908:	d50080e7          	jalr	-688(ra) # 654 <sdcard_send>
     90c:	00000097          	auipc	ra,0x0
     910:	d34080e7          	jalr	-716(ra) # 640 <sdcard_unselect>
     914:	00812403          	lw	s0,8(sp)
     918:	00c12083          	lw	ra,12(sp)
     91c:	00100593          	li	a1,1
     920:	00800513          	li	a0,8
     924:	01010113          	addi	sp,sp,16
     928:	00000317          	auipc	t1,0x0
     92c:	ea830067          	jr	-344(t1) # 7d0 <sdcard_get>

00000930 <sdcard_read_sector>:
     930:	ff010113          	addi	sp,sp,-16
     934:	00812423          	sw	s0,8(sp)
     938:	00112623          	sw	ra,12(sp)
     93c:	00912223          	sw	s1,4(sp)
     940:	01212023          	sw	s2,0(sp)
     944:	00058413          	mv	s0,a1
     948:	00000097          	auipc	ra,0x0
     94c:	f5c080e7          	jalr	-164(ra) # 8a4 <sdcard_start_sector>
     950:	04051863          	bnez	a0,9a0 <sdcard_read_sector+0x70>
     954:	00100593          	li	a1,1
     958:	00100513          	li	a0,1
     95c:	00000097          	auipc	ra,0x0
     960:	e74080e7          	jalr	-396(ra) # 7d0 <sdcard_get>
     964:	00000493          	li	s1,0
     968:	20000913          	li	s2,512
     96c:	00000593          	li	a1,0
     970:	00800513          	li	a0,8
     974:	00000097          	auipc	ra,0x0
     978:	e5c080e7          	jalr	-420(ra) # 7d0 <sdcard_get>
     97c:	009407b3          	add	a5,s0,s1
     980:	00a78023          	sb	a0,0(a5)
     984:	00148493          	addi	s1,s1,1
     988:	ff2492e3          	bne	s1,s2,96c <sdcard_read_sector+0x3c>
     98c:	00100593          	li	a1,1
     990:	01000513          	li	a0,16
     994:	20040413          	addi	s0,s0,512
     998:	00000097          	auipc	ra,0x0
     99c:	e38080e7          	jalr	-456(ra) # 7d0 <sdcard_get>
     9a0:	00c12083          	lw	ra,12(sp)
     9a4:	00040513          	mv	a0,s0
     9a8:	00812403          	lw	s0,8(sp)
     9ac:	00412483          	lw	s1,4(sp)
     9b0:	00012903          	lw	s2,0(sp)
     9b4:	01010113          	addi	sp,sp,16
     9b8:	00008067          	ret

000009bc <sdcard_preinit>:
     9bc:	ff010113          	addi	sp,sp,-16
     9c0:	000057b7          	lui	a5,0x5
     9c4:	00812423          	sw	s0,8(sp)
     9c8:	9647a403          	lw	s0,-1692(a5) # 4964 <SDCARD>
     9cc:	00112623          	sw	ra,12(sp)
     9d0:	00600793          	li	a5,6
     9d4:	01313537          	lui	a0,0x1313
     9d8:	00f42023          	sw	a5,0(s0)
     9dc:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     9e0:	00000097          	auipc	ra,0x0
     9e4:	c04080e7          	jalr	-1020(ra) # 5e4 <pause>
     9e8:	0a000793          	li	a5,160
     9ec:	00000713          	li	a4,0
     9f0:	00100693          	li	a3,1
     9f4:	00676613          	ori	a2,a4,6
     9f8:	00c42023          	sw	a2,0(s0)
     9fc:	fff78793          	addi	a5,a5,-1
     a00:	40e68733          	sub	a4,a3,a4
     a04:	fe0798e3          	bnez	a5,9f4 <sdcard_preinit+0x38>
     a08:	00600793          	li	a5,6
     a0c:	00c12083          	lw	ra,12(sp)
     a10:	00f42023          	sw	a5,0(s0)
     a14:	00812403          	lw	s0,8(sp)
     a18:	01010113          	addi	sp,sp,16
     a1c:	00008067          	ret

00000a20 <sdcard_init>:
     a20:	fe010113          	addi	sp,sp,-32
     a24:	000007b7          	lui	a5,0x0
     a28:	00812c23          	sw	s0,24(sp)
     a2c:	00005737          	lui	a4,0x5
     a30:	5f878793          	addi	a5,a5,1528 # 5f8 <sdcard_idle>
     a34:	01313437          	lui	s0,0x1313
     a38:	01212823          	sw	s2,16(sp)
     a3c:	01312623          	sw	s3,12(sp)
     a40:	00112e23          	sw	ra,28(sp)
     a44:	00912a23          	sw	s1,20(sp)
     a48:	c6f72a23          	sw	a5,-908(a4) # 4c74 <sdcard_while_loading_callback>
     a4c:	00005937          	lui	s2,0x5
     a50:	0ff00993          	li	s3,255
     a54:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     a58:	00000097          	auipc	ra,0x0
     a5c:	f64080e7          	jalr	-156(ra) # 9bc <sdcard_preinit>
     a60:	93090513          	addi	a0,s2,-1744 # 4930 <cmd0>
     a64:	00000097          	auipc	ra,0x0
     a68:	de4080e7          	jalr	-540(ra) # 848 <sdcard_cmd>
     a6c:	00100593          	li	a1,1
     a70:	00800513          	li	a0,8
     a74:	00000097          	auipc	ra,0x0
     a78:	d5c080e7          	jalr	-676(ra) # 7d0 <sdcard_get>
     a7c:	00050493          	mv	s1,a0
     a80:	00000097          	auipc	ra,0x0
     a84:	b90080e7          	jalr	-1136(ra) # 610 <sdcard_ponder>
     a88:	01349a63          	bne	s1,s3,a9c <sdcard_init+0x7c>
     a8c:	00040513          	mv	a0,s0
     a90:	00000097          	auipc	ra,0x0
     a94:	b54080e7          	jalr	-1196(ra) # 5e4 <pause>
     a98:	fc1ff06f          	j	a58 <sdcard_init+0x38>
     a9c:	00005537          	lui	a0,0x5
     aa0:	94850513          	addi	a0,a0,-1720 # 4948 <cmd8>
     aa4:	00000097          	auipc	ra,0x0
     aa8:	da4080e7          	jalr	-604(ra) # 848 <sdcard_cmd>
     aac:	00100593          	li	a1,1
     ab0:	02800513          	li	a0,40
     ab4:	00000097          	auipc	ra,0x0
     ab8:	d1c080e7          	jalr	-740(ra) # 7d0 <sdcard_get>
     abc:	001e8437          	lui	s0,0x1e8
     ac0:	00000097          	auipc	ra,0x0
     ac4:	b50080e7          	jalr	-1200(ra) # 610 <sdcard_ponder>
     ac8:	00005937          	lui	s2,0x5
     acc:	000059b7          	lui	s3,0x5
     ad0:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     ad4:	94090513          	addi	a0,s2,-1728 # 4940 <cmd55>
     ad8:	00000097          	auipc	ra,0x0
     adc:	d70080e7          	jalr	-656(ra) # 848 <sdcard_cmd>
     ae0:	00100593          	li	a1,1
     ae4:	00800513          	li	a0,8
     ae8:	00000097          	auipc	ra,0x0
     aec:	ce8080e7          	jalr	-792(ra) # 7d0 <sdcard_get>
     af0:	00000097          	auipc	ra,0x0
     af4:	b20080e7          	jalr	-1248(ra) # 610 <sdcard_ponder>
     af8:	92898513          	addi	a0,s3,-1752 # 4928 <acmd41>
     afc:	00000097          	auipc	ra,0x0
     b00:	d4c080e7          	jalr	-692(ra) # 848 <sdcard_cmd>
     b04:	00100593          	li	a1,1
     b08:	00800513          	li	a0,8
     b0c:	00000097          	auipc	ra,0x0
     b10:	cc4080e7          	jalr	-828(ra) # 7d0 <sdcard_get>
     b14:	00050493          	mv	s1,a0
     b18:	00000097          	auipc	ra,0x0
     b1c:	af8080e7          	jalr	-1288(ra) # 610 <sdcard_ponder>
     b20:	00048a63          	beqz	s1,b34 <sdcard_init+0x114>
     b24:	00040513          	mv	a0,s0
     b28:	00000097          	auipc	ra,0x0
     b2c:	abc080e7          	jalr	-1348(ra) # 5e4 <pause>
     b30:	fa5ff06f          	j	ad4 <sdcard_init+0xb4>
     b34:	00005537          	lui	a0,0x5
     b38:	93850513          	addi	a0,a0,-1736 # 4938 <cmd16>
     b3c:	00000097          	auipc	ra,0x0
     b40:	d0c080e7          	jalr	-756(ra) # 848 <sdcard_cmd>
     b44:	00100593          	li	a1,1
     b48:	00800513          	li	a0,8
     b4c:	00000097          	auipc	ra,0x0
     b50:	c84080e7          	jalr	-892(ra) # 7d0 <sdcard_get>
     b54:	01812403          	lw	s0,24(sp)
     b58:	01c12083          	lw	ra,28(sp)
     b5c:	01412483          	lw	s1,20(sp)
     b60:	01012903          	lw	s2,16(sp)
     b64:	00c12983          	lw	s3,12(sp)
     b68:	02010113          	addi	sp,sp,32
     b6c:	00000317          	auipc	t1,0x0
     b70:	aa430067          	jr	-1372(t1) # 610 <sdcard_ponder>

00000b74 <sdcard_readsector>:
     b74:	04060863          	beqz	a2,bc4 <sdcard_readsector+0x50>
     b78:	ff010113          	addi	sp,sp,-16
     b7c:	00812423          	sw	s0,8(sp)
     b80:	00912223          	sw	s1,4(sp)
     b84:	00112623          	sw	ra,12(sp)
     b88:	00050413          	mv	s0,a0
     b8c:	00a604b3          	add	s1,a2,a0
     b90:	00941e63          	bne	s0,s1,bac <sdcard_readsector+0x38>
     b94:	00c12083          	lw	ra,12(sp)
     b98:	00812403          	lw	s0,8(sp)
     b9c:	00412483          	lw	s1,4(sp)
     ba0:	00100513          	li	a0,1
     ba4:	01010113          	addi	sp,sp,16
     ba8:	00008067          	ret
     bac:	00040513          	mv	a0,s0
     bb0:	00000097          	auipc	ra,0x0
     bb4:	d80080e7          	jalr	-640(ra) # 930 <sdcard_read_sector>
     bb8:	00050593          	mv	a1,a0
     bbc:	00140413          	addi	s0,s0,1
     bc0:	fd1ff06f          	j	b90 <sdcard_readsector+0x1c>
     bc4:	00000513          	li	a0,0
     bc8:	00008067          	ret

00000bcc <sdcard_writesector>:
     bcc:	00000513          	li	a0,0
     bd0:	00008067          	ret

00000bd4 <__divsi3>:
     bd4:	06054063          	bltz	a0,c34 <__umodsi3+0x10>
     bd8:	0605c663          	bltz	a1,c44 <__umodsi3+0x20>

00000bdc <__udivsi3>:
     bdc:	00058613          	mv	a2,a1
     be0:	00050593          	mv	a1,a0
     be4:	fff00513          	li	a0,-1
     be8:	02060c63          	beqz	a2,c20 <__udivsi3+0x44>
     bec:	00100693          	li	a3,1
     bf0:	00b67a63          	bgeu	a2,a1,c04 <__udivsi3+0x28>
     bf4:	00c05863          	blez	a2,c04 <__udivsi3+0x28>
     bf8:	00161613          	slli	a2,a2,0x1
     bfc:	00169693          	slli	a3,a3,0x1
     c00:	feb66ae3          	bltu	a2,a1,bf4 <__udivsi3+0x18>
     c04:	00000513          	li	a0,0
     c08:	00c5e663          	bltu	a1,a2,c14 <__udivsi3+0x38>
     c0c:	40c585b3          	sub	a1,a1,a2
     c10:	00d56533          	or	a0,a0,a3
     c14:	0016d693          	srli	a3,a3,0x1
     c18:	00165613          	srli	a2,a2,0x1
     c1c:	fe0696e3          	bnez	a3,c08 <__udivsi3+0x2c>
     c20:	00008067          	ret

00000c24 <__umodsi3>:
     c24:	00008293          	mv	t0,ra
     c28:	fb5ff0ef          	jal	ra,bdc <__udivsi3>
     c2c:	00058513          	mv	a0,a1
     c30:	00028067          	jr	t0
     c34:	40a00533          	neg	a0,a0
     c38:	0005d863          	bgez	a1,c48 <__umodsi3+0x24>
     c3c:	40b005b3          	neg	a1,a1
     c40:	f95ff06f          	j	bd4 <__divsi3>
     c44:	40b005b3          	neg	a1,a1
     c48:	00008293          	mv	t0,ra
     c4c:	f89ff0ef          	jal	ra,bd4 <__divsi3>
     c50:	40a00533          	neg	a0,a0
     c54:	00028067          	jr	t0

00000c58 <__modsi3>:
     c58:	00008293          	mv	t0,ra
     c5c:	0005ca63          	bltz	a1,c70 <__modsi3+0x18>
     c60:	00054c63          	bltz	a0,c78 <__modsi3+0x20>
     c64:	f79ff0ef          	jal	ra,bdc <__udivsi3>
     c68:	00058513          	mv	a0,a1
     c6c:	00028067          	jr	t0
     c70:	40b005b3          	neg	a1,a1
     c74:	fe0558e3          	bgez	a0,c64 <__modsi3+0xc>
     c78:	40a00533          	neg	a0,a0
     c7c:	f61ff0ef          	jal	ra,bdc <__udivsi3>
     c80:	40b00533          	neg	a0,a1
     c84:	00028067          	jr	t0

00000c88 <memset>:
     c88:	00c50633          	add	a2,a0,a2
     c8c:	00050793          	mv	a5,a0
     c90:	00c79463          	bne	a5,a2,c98 <memset+0x10>
     c94:	00008067          	ret
     c98:	00178793          	addi	a5,a5,1
     c9c:	feb78fa3          	sb	a1,-1(a5)
     ca0:	ff1ff06f          	j	c90 <memset+0x8>

00000ca4 <memcpy>:
     ca4:	00000793          	li	a5,0
     ca8:	00c79463          	bne	a5,a2,cb0 <memcpy+0xc>
     cac:	00008067          	ret
     cb0:	00f58733          	add	a4,a1,a5
     cb4:	00074683          	lbu	a3,0(a4)
     cb8:	00f50733          	add	a4,a0,a5
     cbc:	00178793          	addi	a5,a5,1
     cc0:	00d70023          	sb	a3,0(a4)
     cc4:	fe5ff06f          	j	ca8 <memcpy+0x4>

00000cc8 <strlen>:
     cc8:	00050793          	mv	a5,a0
     ccc:	00000513          	li	a0,0
     cd0:	00a78733          	add	a4,a5,a0
     cd4:	00074703          	lbu	a4,0(a4)
     cd8:	00071463          	bnez	a4,ce0 <strlen+0x18>
     cdc:	00008067          	ret
     ce0:	00150513          	addi	a0,a0,1
     ce4:	fedff06f          	j	cd0 <strlen+0x8>

00000ce8 <strncmp>:
     ce8:	00000793          	li	a5,0
     cec:	00c79663          	bne	a5,a2,cf8 <strncmp+0x10>
     cf0:	00000513          	li	a0,0
     cf4:	00008067          	ret
     cf8:	00f50733          	add	a4,a0,a5
     cfc:	00074683          	lbu	a3,0(a4)
     d00:	00f58733          	add	a4,a1,a5
     d04:	00074703          	lbu	a4,0(a4)
     d08:	00e6e863          	bltu	a3,a4,d18 <strncmp+0x30>
     d0c:	00d76a63          	bltu	a4,a3,d20 <strncmp+0x38>
     d10:	00178793          	addi	a5,a5,1
     d14:	fd9ff06f          	j	cec <strncmp+0x4>
     d18:	fff00513          	li	a0,-1
     d1c:	00008067          	ret
     d20:	00100513          	li	a0,1
     d24:	00008067          	ret

00000d28 <strncpy>:
     d28:	00000793          	li	a5,0
     d2c:	00f61463          	bne	a2,a5,d34 <strncpy+0xc>
     d30:	00008067          	ret
     d34:	00f58733          	add	a4,a1,a5
     d38:	00074683          	lbu	a3,0(a4)
     d3c:	00f50733          	add	a4,a0,a5
     d40:	00178793          	addi	a5,a5,1
     d44:	00d70023          	sb	a3,0(a4)
     d48:	fe5ff06f          	j	d2c <strncpy+0x4>

00000d4c <strcat>:
     d4c:	00050793          	mv	a5,a0
     d50:	0007c683          	lbu	a3,0(a5)
     d54:	00078713          	mv	a4,a5
     d58:	00178793          	addi	a5,a5,1
     d5c:	fe069ae3          	bnez	a3,d50 <strcat+0x4>
     d60:	0005c783          	lbu	a5,0(a1)
     d64:	00158593          	addi	a1,a1,1
     d68:	00170713          	addi	a4,a4,1
     d6c:	fef70fa3          	sb	a5,-1(a4)
     d70:	fe0798e3          	bnez	a5,d60 <strcat+0x14>
     d74:	00008067          	ret

00000d78 <oled_wait>:
     d78:	00000013          	nop
     d7c:	00000013          	nop
     d80:	00000013          	nop
     d84:	00000013          	nop
     d88:	00000013          	nop
     d8c:	00000013          	nop
     d90:	00000013          	nop
     d94:	00008067          	ret

00000d98 <oled_init_mode>:
     d98:	000057b7          	lui	a5,0x5
     d9c:	9607a703          	lw	a4,-1696(a5) # 4960 <OLED_RST>
     da0:	ff010113          	addi	sp,sp,-16
     da4:	00912223          	sw	s1,4(sp)
     da8:	00112623          	sw	ra,12(sp)
     dac:	00812423          	sw	s0,8(sp)
     db0:	00072023          	sw	zero,0(a4)
     db4:	00050493          	mv	s1,a0
     db8:	00040737          	lui	a4,0x40
     dbc:	00000013          	nop
     dc0:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     dc4:	fe071ce3          	bnez	a4,dbc <oled_init_mode+0x24>
     dc8:	9607a703          	lw	a4,-1696(a5)
     dcc:	00100693          	li	a3,1
     dd0:	00d72023          	sw	a3,0(a4)
     dd4:	00040737          	lui	a4,0x40
     dd8:	00000013          	nop
     ddc:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     de0:	fe071ce3          	bnez	a4,dd8 <oled_init_mode+0x40>
     de4:	9607a783          	lw	a5,-1696(a5)
     de8:	0007a023          	sw	zero,0(a5)
     dec:	000407b7          	lui	a5,0x40
     df0:	00000013          	nop
     df4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     df8:	fe079ce3          	bnez	a5,df0 <oled_init_mode+0x58>
     dfc:	00005737          	lui	a4,0x5
     e00:	95c72783          	lw	a5,-1700(a4) # 495c <OLED>
     e04:	2af00693          	li	a3,687
     e08:	00d7a023          	sw	a3,0(a5)
     e0c:	000407b7          	lui	a5,0x40
     e10:	00000013          	nop
     e14:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     e18:	fe079ce3          	bnez	a5,e10 <oled_init_mode+0x78>
     e1c:	95c72403          	lw	s0,-1700(a4)
     e20:	2a000793          	li	a5,672
     e24:	00f42023          	sw	a5,0(s0)
     e28:	00000097          	auipc	ra,0x0
     e2c:	f50080e7          	jalr	-176(ra) # d78 <oled_wait>
     e30:	4a000793          	li	a5,1184
     e34:	00048463          	beqz	s1,e3c <oled_init_mode+0xa4>
     e38:	42000793          	li	a5,1056
     e3c:	00f42023          	sw	a5,0(s0)
     e40:	00000097          	auipc	ra,0x0
     e44:	f38080e7          	jalr	-200(ra) # d78 <oled_wait>
     e48:	2fd00793          	li	a5,765
     e4c:	00f42023          	sw	a5,0(s0)
     e50:	00000097          	auipc	ra,0x0
     e54:	f28080e7          	jalr	-216(ra) # d78 <oled_wait>
     e58:	4b100793          	li	a5,1201
     e5c:	00f42023          	sw	a5,0(s0)
     e60:	00000097          	auipc	ra,0x0
     e64:	f18080e7          	jalr	-232(ra) # d78 <oled_wait>
     e68:	2a200793          	li	a5,674
     e6c:	00f42023          	sw	a5,0(s0)
     e70:	00000097          	auipc	ra,0x0
     e74:	f08080e7          	jalr	-248(ra) # d78 <oled_wait>
     e78:	40000793          	li	a5,1024
     e7c:	00f42023          	sw	a5,0(s0)
     e80:	00812403          	lw	s0,8(sp)
     e84:	00c12083          	lw	ra,12(sp)
     e88:	00412483          	lw	s1,4(sp)
     e8c:	01010113          	addi	sp,sp,16
     e90:	00000317          	auipc	t1,0x0
     e94:	ee830067          	jr	-280(t1) # d78 <oled_wait>

00000e98 <oled_init>:
     e98:	00000513          	li	a0,0
     e9c:	00000317          	auipc	t1,0x0
     ea0:	efc30067          	jr	-260(t1) # d98 <oled_init_mode>

00000ea4 <oled_fullscreen>:
     ea4:	ff010113          	addi	sp,sp,-16
     ea8:	000057b7          	lui	a5,0x5
     eac:	00812423          	sw	s0,8(sp)
     eb0:	95c7a403          	lw	s0,-1700(a5) # 495c <OLED>
     eb4:	00112623          	sw	ra,12(sp)
     eb8:	00912223          	sw	s1,4(sp)
     ebc:	01212023          	sw	s2,0(sp)
     ec0:	21500793          	li	a5,533
     ec4:	00f42023          	sw	a5,0(s0)
     ec8:	40000913          	li	s2,1024
     ecc:	00000097          	auipc	ra,0x0
     ed0:	eac080e7          	jalr	-340(ra) # d78 <oled_wait>
     ed4:	47f00493          	li	s1,1151
     ed8:	01242023          	sw	s2,0(s0)
     edc:	00000097          	auipc	ra,0x0
     ee0:	e9c080e7          	jalr	-356(ra) # d78 <oled_wait>
     ee4:	00942023          	sw	s1,0(s0)
     ee8:	00000097          	auipc	ra,0x0
     eec:	e90080e7          	jalr	-368(ra) # d78 <oled_wait>
     ef0:	27500793          	li	a5,629
     ef4:	00f42023          	sw	a5,0(s0)
     ef8:	00000097          	auipc	ra,0x0
     efc:	e80080e7          	jalr	-384(ra) # d78 <oled_wait>
     f00:	01242023          	sw	s2,0(s0)
     f04:	00000097          	auipc	ra,0x0
     f08:	e74080e7          	jalr	-396(ra) # d78 <oled_wait>
     f0c:	00942023          	sw	s1,0(s0)
     f10:	00000097          	auipc	ra,0x0
     f14:	e68080e7          	jalr	-408(ra) # d78 <oled_wait>
     f18:	25c00793          	li	a5,604
     f1c:	00f42023          	sw	a5,0(s0)
     f20:	00812403          	lw	s0,8(sp)
     f24:	00c12083          	lw	ra,12(sp)
     f28:	00412483          	lw	s1,4(sp)
     f2c:	00012903          	lw	s2,0(sp)
     f30:	01010113          	addi	sp,sp,16
     f34:	00000317          	auipc	t1,0x0
     f38:	e4430067          	jr	-444(t1) # d78 <oled_wait>

00000f3c <oled_clear>:
     f3c:	fe010113          	addi	sp,sp,-32
     f40:	000057b7          	lui	a5,0x5
     f44:	01312623          	sw	s3,12(sp)
     f48:	95c7a983          	lw	s3,-1700(a5) # 495c <OLED>
     f4c:	00812c23          	sw	s0,24(sp)
     f50:	01212823          	sw	s2,16(sp)
     f54:	00112e23          	sw	ra,28(sp)
     f58:	00912a23          	sw	s1,20(sp)
     f5c:	08000913          	li	s2,128
     f60:	40056413          	ori	s0,a0,1024
     f64:	08000493          	li	s1,128
     f68:	0089a023          	sw	s0,0(s3)
     f6c:	00000097          	auipc	ra,0x0
     f70:	e0c080e7          	jalr	-500(ra) # d78 <oled_wait>
     f74:	0089a023          	sw	s0,0(s3)
     f78:	00000097          	auipc	ra,0x0
     f7c:	e00080e7          	jalr	-512(ra) # d78 <oled_wait>
     f80:	fff48493          	addi	s1,s1,-1
     f84:	0089a023          	sw	s0,0(s3)
     f88:	00000097          	auipc	ra,0x0
     f8c:	df0080e7          	jalr	-528(ra) # d78 <oled_wait>
     f90:	fc049ce3          	bnez	s1,f68 <oled_clear+0x2c>
     f94:	fff90913          	addi	s2,s2,-1
     f98:	fc0916e3          	bnez	s2,f64 <oled_clear+0x28>
     f9c:	01c12083          	lw	ra,28(sp)
     fa0:	01812403          	lw	s0,24(sp)
     fa4:	01412483          	lw	s1,20(sp)
     fa8:	01012903          	lw	s2,16(sp)
     fac:	00c12983          	lw	s3,12(sp)
     fb0:	02010113          	addi	sp,sp,32
     fb4:	00008067          	ret

00000fb8 <oled_wait>:
     fb8:	00000013          	nop
     fbc:	00000013          	nop
     fc0:	00000013          	nop
     fc4:	00000013          	nop
     fc8:	00000013          	nop
     fcc:	00000013          	nop
     fd0:	00000013          	nop
     fd4:	00008067          	ret

00000fd8 <display_framebuffer>:
     fd8:	00005537          	lui	a0,0x5
     fdc:	d2450513          	addi	a0,a0,-732 # 4d24 <framebuffer>
     fe0:	00008067          	ret

00000fe4 <display_set_cursor>:
     fe4:	000057b7          	lui	a5,0x5
     fe8:	c6a7ae23          	sw	a0,-900(a5) # 4c7c <cursor_x>
     fec:	000057b7          	lui	a5,0x5
     ff0:	c8b7a023          	sw	a1,-896(a5) # 4c80 <cursor_y>
     ff4:	00008067          	ret

00000ff8 <display_set_front_back_color>:
     ff8:	000057b7          	lui	a5,0x5
     ffc:	c8a78223          	sb	a0,-892(a5) # 4c84 <front_color>
    1000:	000057b7          	lui	a5,0x5
    1004:	c6b78c23          	sb	a1,-904(a5) # 4c78 <back_color>
    1008:	00008067          	ret

0000100c <display_putchar>:
    100c:	000057b7          	lui	a5,0x5
    1010:	00a00713          	li	a4,10
    1014:	c7c78793          	addi	a5,a5,-900 # 4c7c <cursor_x>
    1018:	02e51863          	bne	a0,a4,1048 <display_putchar+0x3c>
    101c:	00005737          	lui	a4,0x5
    1020:	c8070713          	addi	a4,a4,-896 # 4c80 <cursor_y>
    1024:	0007a023          	sw	zero,0(a5)
    1028:	00072783          	lw	a5,0(a4)
    102c:	00878793          	addi	a5,a5,8
    1030:	00f72023          	sw	a5,0(a4)
    1034:	07f00713          	li	a4,127
    1038:	12f75c63          	bge	a4,a5,1170 <display_putchar+0x164>
    103c:	000057b7          	lui	a5,0x5
    1040:	c807a023          	sw	zero,-896(a5) # 4c80 <cursor_y>
    1044:	00008067          	ret
    1048:	01f00693          	li	a3,31
    104c:	0007a703          	lw	a4,0(a5)
    1050:	0ea6d663          	bge	a3,a0,113c <display_putchar+0x130>
    1054:	000056b7          	lui	a3,0x5
    1058:	ff010113          	addi	sp,sp,-16
    105c:	c786c383          	lbu	t2,-904(a3) # 4c78 <back_color>
    1060:	000056b7          	lui	a3,0x5
    1064:	00812623          	sw	s0,12(sp)
    1068:	c846c403          	lbu	s0,-892(a3) # 4c84 <front_color>
    106c:	000056b7          	lui	a3,0x5
    1070:	c806af03          	lw	t5,-896(a3) # 4c80 <cursor_y>
    1074:	00251613          	slli	a2,a0,0x2
    1078:	000056b7          	lui	a3,0x5
    107c:	00a60633          	add	a2,a2,a0
    1080:	a1468693          	addi	a3,a3,-1516 # 4a14 <font>
    1084:	00771313          	slli	t1,a4,0x7
    1088:	00005837          	lui	a6,0x5
    108c:	00912423          	sw	s1,8(sp)
    1090:	01212223          	sw	s2,4(sp)
    1094:	00c686b3          	add	a3,a3,a2
    1098:	28030493          	addi	s1,t1,640
    109c:	00000613          	li	a2,0
    10a0:	00100293          	li	t0,1
    10a4:	d2480813          	addi	a6,a6,-732 # 4d24 <framebuffer>
    10a8:	00800913          	li	s2,8
    10ac:	00c29fb3          	sll	t6,t0,a2
    10b0:	00cf0eb3          	add	t4,t5,a2
    10b4:	00030593          	mv	a1,t1
    10b8:	00068513          	mv	a0,a3
    10bc:	f6054883          	lbu	a7,-160(a0)
    10c0:	00038e13          	mv	t3,t2
    10c4:	01f8f8b3          	and	a7,a7,t6
    10c8:	00088463          	beqz	a7,10d0 <display_putchar+0xc4>
    10cc:	00040e13          	mv	t3,s0
    10d0:	00b808b3          	add	a7,a6,a1
    10d4:	01d888b3          	add	a7,a7,t4
    10d8:	01c88023          	sb	t3,0(a7)
    10dc:	08058593          	addi	a1,a1,128
    10e0:	00150513          	addi	a0,a0,1
    10e4:	fc959ce3          	bne	a1,s1,10bc <display_putchar+0xb0>
    10e8:	00160613          	addi	a2,a2,1
    10ec:	fd2610e3          	bne	a2,s2,10ac <display_putchar+0xa0>
    10f0:	00570713          	addi	a4,a4,5
    10f4:	07f00693          	li	a3,127
    10f8:	00e6c663          	blt	a3,a4,1104 <display_putchar+0xf8>
    10fc:	00e7a023          	sw	a4,0(a5)
    1100:	0280006f          	j	1128 <display_putchar+0x11c>
    1104:	00005737          	lui	a4,0x5
    1108:	c8070713          	addi	a4,a4,-896 # 4c80 <cursor_y>
    110c:	0007a023          	sw	zero,0(a5)
    1110:	00072783          	lw	a5,0(a4)
    1114:	00878793          	addi	a5,a5,8
    1118:	00f72023          	sw	a5,0(a4)
    111c:	00f6d663          	bge	a3,a5,1128 <display_putchar+0x11c>
    1120:	000057b7          	lui	a5,0x5
    1124:	c807a023          	sw	zero,-896(a5) # 4c80 <cursor_y>
    1128:	00c12403          	lw	s0,12(sp)
    112c:	00812483          	lw	s1,8(sp)
    1130:	00412903          	lw	s2,4(sp)
    1134:	01010113          	addi	sp,sp,16
    1138:	00008067          	ret
    113c:	00570713          	addi	a4,a4,5
    1140:	07f00693          	li	a3,127
    1144:	00e6c663          	blt	a3,a4,1150 <display_putchar+0x144>
    1148:	00e7a023          	sw	a4,0(a5)
    114c:	00008067          	ret
    1150:	00005737          	lui	a4,0x5
    1154:	c8070713          	addi	a4,a4,-896 # 4c80 <cursor_y>
    1158:	0007a023          	sw	zero,0(a5)
    115c:	00072783          	lw	a5,0(a4)
    1160:	00878793          	addi	a5,a5,8
    1164:	00f72023          	sw	a5,0(a4)
    1168:	ecf6cae3          	blt	a3,a5,103c <display_putchar+0x30>
    116c:	00008067          	ret
    1170:	00008067          	ret

00001174 <display_refresh>:
    1174:	fe010113          	addi	sp,sp,-32
    1178:	000057b7          	lui	a5,0x5
    117c:	01212823          	sw	s2,16(sp)
    1180:	95c7a903          	lw	s2,-1700(a5) # 495c <OLED>
    1184:	01312623          	sw	s3,12(sp)
    1188:	000059b7          	lui	s3,0x5
    118c:	00912a23          	sw	s1,20(sp)
    1190:	01412423          	sw	s4,8(sp)
    1194:	00112e23          	sw	ra,28(sp)
    1198:	00812c23          	sw	s0,24(sp)
    119c:	00000493          	li	s1,0
    11a0:	d2498993          	addi	s3,s3,-732 # 4d24 <framebuffer>
    11a4:	00004a37          	lui	s4,0x4
    11a8:	013487b3          	add	a5,s1,s3
    11ac:	0007c403          	lbu	s0,0(a5)
    11b0:	00148493          	addi	s1,s1,1
    11b4:	00245413          	srli	s0,s0,0x2
    11b8:	40046413          	ori	s0,s0,1024
    11bc:	00892023          	sw	s0,0(s2)
    11c0:	00000097          	auipc	ra,0x0
    11c4:	df8080e7          	jalr	-520(ra) # fb8 <oled_wait>
    11c8:	00892023          	sw	s0,0(s2)
    11cc:	00000097          	auipc	ra,0x0
    11d0:	dec080e7          	jalr	-532(ra) # fb8 <oled_wait>
    11d4:	00892023          	sw	s0,0(s2)
    11d8:	00000097          	auipc	ra,0x0
    11dc:	de0080e7          	jalr	-544(ra) # fb8 <oled_wait>
    11e0:	fd4494e3          	bne	s1,s4,11a8 <display_refresh+0x34>
    11e4:	01c12083          	lw	ra,28(sp)
    11e8:	01812403          	lw	s0,24(sp)
    11ec:	01412483          	lw	s1,20(sp)
    11f0:	01012903          	lw	s2,16(sp)
    11f4:	00c12983          	lw	s3,12(sp)
    11f8:	00812a03          	lw	s4,8(sp)
    11fc:	02010113          	addi	sp,sp,32
    1200:	00008067          	ret

00001204 <print_string>:
    1204:	ff010113          	addi	sp,sp,-16
    1208:	00812423          	sw	s0,8(sp)
    120c:	00912223          	sw	s1,4(sp)
    1210:	00112623          	sw	ra,12(sp)
    1214:	00050413          	mv	s0,a0
    1218:	000054b7          	lui	s1,0x5
    121c:	00044503          	lbu	a0,0(s0)
    1220:	00051c63          	bnez	a0,1238 <print_string+0x34>
    1224:	00c12083          	lw	ra,12(sp)
    1228:	00812403          	lw	s0,8(sp)
    122c:	00412483          	lw	s1,4(sp)
    1230:	01010113          	addi	sp,sp,16
    1234:	00008067          	ret
    1238:	c884a783          	lw	a5,-888(s1) # 4c88 <f_putchar>
    123c:	00140413          	addi	s0,s0,1
    1240:	000780e7          	jalr	a5
    1244:	fd9ff06f          	j	121c <print_string+0x18>

00001248 <print_dec>:
    1248:	ee010113          	addi	sp,sp,-288
    124c:	10812c23          	sw	s0,280(sp)
    1250:	10912a23          	sw	s1,276(sp)
    1254:	10112e23          	sw	ra,284(sp)
    1258:	11212823          	sw	s2,272(sp)
    125c:	11312623          	sw	s3,268(sp)
    1260:	00050413          	mv	s0,a0
    1264:	000054b7          	lui	s1,0x5
    1268:	c884a783          	lw	a5,-888(s1) # 4c88 <f_putchar>
    126c:	c8848993          	addi	s3,s1,-888
    1270:	06045e63          	bgez	s0,12ec <print_dec+0xa4>
    1274:	02d00513          	li	a0,45
    1278:	000780e7          	jalr	a5
    127c:	40800433          	neg	s0,s0
    1280:	fe9ff06f          	j	1268 <print_dec+0x20>
    1284:	00040513          	mv	a0,s0
    1288:	00a00593          	li	a1,10
    128c:	00000097          	auipc	ra,0x0
    1290:	948080e7          	jalr	-1720(ra) # bd4 <__divsi3>
    1294:	00251793          	slli	a5,a0,0x2
    1298:	00f507b3          	add	a5,a0,a5
    129c:	00179793          	slli	a5,a5,0x1
    12a0:	40f40433          	sub	s0,s0,a5
    12a4:	00148493          	addi	s1,s1,1
    12a8:	fe848fa3          	sb	s0,-1(s1)
    12ac:	00050413          	mv	s0,a0
    12b0:	fc041ae3          	bnez	s0,1284 <print_dec+0x3c>
    12b4:	fd2488e3          	beq	s1,s2,1284 <print_dec+0x3c>
    12b8:	fff4c503          	lbu	a0,-1(s1)
    12bc:	0009a783          	lw	a5,0(s3)
    12c0:	fff48493          	addi	s1,s1,-1
    12c4:	03050513          	addi	a0,a0,48
    12c8:	000780e7          	jalr	a5
    12cc:	ff2496e3          	bne	s1,s2,12b8 <print_dec+0x70>
    12d0:	11c12083          	lw	ra,284(sp)
    12d4:	11812403          	lw	s0,280(sp)
    12d8:	11412483          	lw	s1,276(sp)
    12dc:	11012903          	lw	s2,272(sp)
    12e0:	10c12983          	lw	s3,268(sp)
    12e4:	12010113          	addi	sp,sp,288
    12e8:	00008067          	ret
    12ec:	00010493          	mv	s1,sp
    12f0:	00048913          	mv	s2,s1
    12f4:	fbdff06f          	j	12b0 <print_dec+0x68>

000012f8 <print_hex_digits>:
    12f8:	fe010113          	addi	sp,sp,-32
    12fc:	00812c23          	sw	s0,24(sp)
    1300:	01212823          	sw	s2,16(sp)
    1304:	fff58413          	addi	s0,a1,-1
    1308:	00005937          	lui	s2,0x5
    130c:	00912a23          	sw	s1,20(sp)
    1310:	01312623          	sw	s3,12(sp)
    1314:	00112e23          	sw	ra,28(sp)
    1318:	00050493          	mv	s1,a0
    131c:	00241413          	slli	s0,s0,0x2
    1320:	bf490913          	addi	s2,s2,-1036 # 4bf4 <font+0x1e0>
    1324:	000059b7          	lui	s3,0x5
    1328:	02045063          	bgez	s0,1348 <print_hex_digits+0x50>
    132c:	01c12083          	lw	ra,28(sp)
    1330:	01812403          	lw	s0,24(sp)
    1334:	01412483          	lw	s1,20(sp)
    1338:	01012903          	lw	s2,16(sp)
    133c:	00c12983          	lw	s3,12(sp)
    1340:	02010113          	addi	sp,sp,32
    1344:	00008067          	ret
    1348:	0084d7b3          	srl	a5,s1,s0
    134c:	00f7f793          	andi	a5,a5,15
    1350:	00f907b3          	add	a5,s2,a5
    1354:	c889a703          	lw	a4,-888(s3) # 4c88 <f_putchar>
    1358:	0007c503          	lbu	a0,0(a5)
    135c:	ffc40413          	addi	s0,s0,-4
    1360:	000700e7          	jalr	a4
    1364:	fc5ff06f          	j	1328 <print_hex_digits+0x30>

00001368 <print_hex>:
    1368:	00800593          	li	a1,8
    136c:	00000317          	auipc	t1,0x0
    1370:	f8c30067          	jr	-116(t1) # 12f8 <print_hex_digits>

00001374 <printf>:
    1374:	fa010113          	addi	sp,sp,-96
    1378:	04f12a23          	sw	a5,84(sp)
    137c:	04410793          	addi	a5,sp,68
    1380:	02812c23          	sw	s0,56(sp)
    1384:	02912a23          	sw	s1,52(sp)
    1388:	03312623          	sw	s3,44(sp)
    138c:	03412423          	sw	s4,40(sp)
    1390:	03512223          	sw	s5,36(sp)
    1394:	03612023          	sw	s6,32(sp)
    1398:	01712e23          	sw	s7,28(sp)
    139c:	02112e23          	sw	ra,60(sp)
    13a0:	03212823          	sw	s2,48(sp)
    13a4:	00050413          	mv	s0,a0
    13a8:	04b12223          	sw	a1,68(sp)
    13ac:	04c12423          	sw	a2,72(sp)
    13b0:	04d12623          	sw	a3,76(sp)
    13b4:	04e12823          	sw	a4,80(sp)
    13b8:	05012c23          	sw	a6,88(sp)
    13bc:	05112e23          	sw	a7,92(sp)
    13c0:	00f12623          	sw	a5,12(sp)
    13c4:	02500993          	li	s3,37
    13c8:	000054b7          	lui	s1,0x5
    13cc:	07300a13          	li	s4,115
    13d0:	07800a93          	li	s5,120
    13d4:	06400b13          	li	s6,100
    13d8:	06300b93          	li	s7,99
    13dc:	00044503          	lbu	a0,0(s0)
    13e0:	02051863          	bnez	a0,1410 <printf+0x9c>
    13e4:	03c12083          	lw	ra,60(sp)
    13e8:	03812403          	lw	s0,56(sp)
    13ec:	03412483          	lw	s1,52(sp)
    13f0:	03012903          	lw	s2,48(sp)
    13f4:	02c12983          	lw	s3,44(sp)
    13f8:	02812a03          	lw	s4,40(sp)
    13fc:	02412a83          	lw	s5,36(sp)
    1400:	02012b03          	lw	s6,32(sp)
    1404:	01c12b83          	lw	s7,28(sp)
    1408:	06010113          	addi	sp,sp,96
    140c:	00008067          	ret
    1410:	00140913          	addi	s2,s0,1
    1414:	09351663          	bne	a0,s3,14a0 <printf+0x12c>
    1418:	00144503          	lbu	a0,1(s0)
    141c:	03451263          	bne	a0,s4,1440 <printf+0xcc>
    1420:	00c12783          	lw	a5,12(sp)
    1424:	0007a503          	lw	a0,0(a5)
    1428:	00478713          	addi	a4,a5,4
    142c:	00e12623          	sw	a4,12(sp)
    1430:	00000097          	auipc	ra,0x0
    1434:	dd4080e7          	jalr	-556(ra) # 1204 <print_string>
    1438:	00190413          	addi	s0,s2,1
    143c:	fa1ff06f          	j	13dc <printf+0x68>
    1440:	03551063          	bne	a0,s5,1460 <printf+0xec>
    1444:	00c12783          	lw	a5,12(sp)
    1448:	0007a503          	lw	a0,0(a5)
    144c:	00478713          	addi	a4,a5,4
    1450:	00e12623          	sw	a4,12(sp)
    1454:	00000097          	auipc	ra,0x0
    1458:	f14080e7          	jalr	-236(ra) # 1368 <print_hex>
    145c:	fddff06f          	j	1438 <printf+0xc4>
    1460:	03651063          	bne	a0,s6,1480 <printf+0x10c>
    1464:	00c12783          	lw	a5,12(sp)
    1468:	0007a503          	lw	a0,0(a5)
    146c:	00478713          	addi	a4,a5,4
    1470:	00e12623          	sw	a4,12(sp)
    1474:	00000097          	auipc	ra,0x0
    1478:	dd4080e7          	jalr	-556(ra) # 1248 <print_dec>
    147c:	fbdff06f          	j	1438 <printf+0xc4>
    1480:	c884a783          	lw	a5,-888(s1) # 4c88 <f_putchar>
    1484:	01751a63          	bne	a0,s7,1498 <printf+0x124>
    1488:	00c12703          	lw	a4,12(sp)
    148c:	00072503          	lw	a0,0(a4)
    1490:	00470693          	addi	a3,a4,4
    1494:	00d12623          	sw	a3,12(sp)
    1498:	000780e7          	jalr	a5
    149c:	f9dff06f          	j	1438 <printf+0xc4>
    14a0:	c884a783          	lw	a5,-888(s1)
    14a4:	00040913          	mv	s2,s0
    14a8:	000780e7          	jalr	a5
    14ac:	f8dff06f          	j	1438 <printf+0xc4>

000014b0 <__mulsi3>:
    14b0:	00050793          	mv	a5,a0
    14b4:	00000513          	li	a0,0
    14b8:	00079463          	bnez	a5,14c0 <__mulsi3+0x10>
    14bc:	00008067          	ret
    14c0:	0017f713          	andi	a4,a5,1
    14c4:	00070463          	beqz	a4,14cc <__mulsi3+0x1c>
    14c8:	00b50533          	add	a0,a0,a1
    14cc:	0017d793          	srli	a5,a5,0x1
    14d0:	00159593          	slli	a1,a1,0x1
    14d4:	fe5ff06f          	j	14b8 <__mulsi3+0x8>

000014d8 <fat_list_insert_last>:
    14d8:	00452783          	lw	a5,4(a0)
    14dc:	04079263          	bnez	a5,1520 <fat_list_insert_last+0x48>
    14e0:	00052783          	lw	a5,0(a0)
    14e4:	00079c63          	bnez	a5,14fc <fat_list_insert_last+0x24>
    14e8:	00b52023          	sw	a1,0(a0)
    14ec:	00b52223          	sw	a1,4(a0)
    14f0:	0005a023          	sw	zero,0(a1)
    14f4:	0005a223          	sw	zero,4(a1)
    14f8:	00008067          	ret
    14fc:	0007a703          	lw	a4,0(a5)
    1500:	00f5a223          	sw	a5,4(a1)
    1504:	00e5a023          	sw	a4,0(a1)
    1508:	00071863          	bnez	a4,1518 <fat_list_insert_last+0x40>
    150c:	00b52023          	sw	a1,0(a0)
    1510:	00b7a023          	sw	a1,0(a5)
    1514:	00008067          	ret
    1518:	00b72223          	sw	a1,4(a4)
    151c:	ff5ff06f          	j	1510 <fat_list_insert_last+0x38>
    1520:	0047a703          	lw	a4,4(a5)
    1524:	00f5a023          	sw	a5,0(a1)
    1528:	00e5a223          	sw	a4,4(a1)
    152c:	0047a703          	lw	a4,4(a5)
    1530:	00071863          	bnez	a4,1540 <fat_list_insert_last+0x68>
    1534:	00b52223          	sw	a1,4(a0)
    1538:	00b7a223          	sw	a1,4(a5)
    153c:	00008067          	ret
    1540:	00b72023          	sw	a1,0(a4)
    1544:	ff5ff06f          	j	1538 <fat_list_insert_last+0x60>

00001548 <FileString_StrCmpNoCase>:
    1548:	00050313          	mv	t1,a0
    154c:	00000793          	li	a5,0
    1550:	01900e13          	li	t3,25
    1554:	00f61663          	bne	a2,a5,1560 <FileString_StrCmpNoCase+0x18>
    1558:	00000513          	li	a0,0
    155c:	0580006f          	j	15b4 <FileString_StrCmpNoCase+0x6c>
    1560:	00f30733          	add	a4,t1,a5
    1564:	00074883          	lbu	a7,0(a4)
    1568:	00f58733          	add	a4,a1,a5
    156c:	00074803          	lbu	a6,0(a4)
    1570:	fbf88713          	addi	a4,a7,-65
    1574:	0ff77713          	zext.b	a4,a4
    1578:	00088693          	mv	a3,a7
    157c:	00ee6663          	bltu	t3,a4,1588 <FileString_StrCmpNoCase+0x40>
    1580:	02088693          	addi	a3,a7,32
    1584:	0ff6f693          	zext.b	a3,a3
    1588:	fbf80513          	addi	a0,a6,-65
    158c:	0ff57513          	zext.b	a0,a0
    1590:	00080713          	mv	a4,a6
    1594:	00ae6663          	bltu	t3,a0,15a0 <FileString_StrCmpNoCase+0x58>
    1598:	02080713          	addi	a4,a6,32
    159c:	0ff77713          	zext.b	a4,a4
    15a0:	40e68533          	sub	a0,a3,a4
    15a4:	00e69863          	bne	a3,a4,15b4 <FileString_StrCmpNoCase+0x6c>
    15a8:	00088663          	beqz	a7,15b4 <FileString_StrCmpNoCase+0x6c>
    15ac:	00178793          	addi	a5,a5,1
    15b0:	fa0812e3          	bnez	a6,1554 <FileString_StrCmpNoCase+0xc>
    15b4:	00008067          	ret

000015b8 <FileString_GetExtension>:
    15b8:	00050713          	mv	a4,a0
    15bc:	00050793          	mv	a5,a0
    15c0:	02e00613          	li	a2,46
    15c4:	fff00513          	li	a0,-1
    15c8:	0007c683          	lbu	a3,0(a5)
    15cc:	00069463          	bnez	a3,15d4 <FileString_GetExtension+0x1c>
    15d0:	00008067          	ret
    15d4:	00c69463          	bne	a3,a2,15dc <FileString_GetExtension+0x24>
    15d8:	40e78533          	sub	a0,a5,a4
    15dc:	00178793          	addi	a5,a5,1
    15e0:	fe9ff06f          	j	15c8 <FileString_GetExtension+0x10>

000015e4 <fatfs_fat_writeback>:
    15e4:	00059663          	bnez	a1,15f0 <fatfs_fat_writeback+0xc>
    15e8:	00000513          	li	a0,0
    15ec:	00008067          	ret
    15f0:	2045a703          	lw	a4,516(a1)
    15f4:	ff010113          	addi	sp,sp,-16
    15f8:	00812423          	sw	s0,8(sp)
    15fc:	00112623          	sw	ra,12(sp)
    1600:	00050793          	mv	a5,a0
    1604:	00058413          	mv	s0,a1
    1608:	00100513          	li	a0,1
    160c:	04070663          	beqz	a4,1658 <fatfs_fat_writeback+0x74>
    1610:	0387a683          	lw	a3,56(a5)
    1614:	00069863          	bnez	a3,1624 <fatfs_fat_writeback+0x40>
    1618:	20042223          	sw	zero,516(s0)
    161c:	00100513          	li	a0,1
    1620:	0380006f          	j	1658 <fatfs_fat_writeback+0x74>
    1624:	2005a503          	lw	a0,512(a1)
    1628:	0147a703          	lw	a4,20(a5)
    162c:	0207a583          	lw	a1,32(a5)
    1630:	00100613          	li	a2,1
    1634:	40e507b3          	sub	a5,a0,a4
    1638:	00178793          	addi	a5,a5,1
    163c:	00f5f663          	bgeu	a1,a5,1648 <fatfs_fat_writeback+0x64>
    1640:	00b70733          	add	a4,a4,a1
    1644:	40a70633          	sub	a2,a4,a0
    1648:	00040593          	mv	a1,s0
    164c:	000680e7          	jalr	a3
    1650:	fc0514e3          	bnez	a0,1618 <fatfs_fat_writeback+0x34>
    1654:	00000513          	li	a0,0
    1658:	00c12083          	lw	ra,12(sp)
    165c:	00812403          	lw	s0,8(sp)
    1660:	01010113          	addi	sp,sp,16
    1664:	00008067          	ret

00001668 <fatfs_fat_read_sector>:
    1668:	fe010113          	addi	sp,sp,-32
    166c:	01212823          	sw	s2,16(sp)
    1670:	25452903          	lw	s2,596(a0)
    1674:	00812c23          	sw	s0,24(sp)
    1678:	00912a23          	sw	s1,20(sp)
    167c:	01312623          	sw	s3,12(sp)
    1680:	00112e23          	sw	ra,28(sp)
    1684:	00050993          	mv	s3,a0
    1688:	00058493          	mv	s1,a1
    168c:	00000413          	li	s0,0
    1690:	06091863          	bnez	s2,1700 <fatfs_fat_read_sector+0x98>
    1694:	2549a783          	lw	a5,596(s3)
    1698:	20f42623          	sw	a5,524(s0)
    169c:	20442783          	lw	a5,516(s0)
    16a0:	2489aa23          	sw	s0,596(s3)
    16a4:	00078c63          	beqz	a5,16bc <fatfs_fat_read_sector+0x54>
    16a8:	00040593          	mv	a1,s0
    16ac:	00098513          	mv	a0,s3
    16b0:	00000097          	auipc	ra,0x0
    16b4:	f34080e7          	jalr	-204(ra) # 15e4 <fatfs_fat_writeback>
    16b8:	02050463          	beqz	a0,16e0 <fatfs_fat_read_sector+0x78>
    16bc:	0349a783          	lw	a5,52(s3)
    16c0:	20942023          	sw	s1,512(s0)
    16c4:	00100613          	li	a2,1
    16c8:	00040593          	mv	a1,s0
    16cc:	00048513          	mv	a0,s1
    16d0:	000780e7          	jalr	a5
    16d4:	06051063          	bnez	a0,1734 <fatfs_fat_read_sector+0xcc>
    16d8:	fff00793          	li	a5,-1
    16dc:	20f42023          	sw	a5,512(s0)
    16e0:	01c12083          	lw	ra,28(sp)
    16e4:	01812403          	lw	s0,24(sp)
    16e8:	01412483          	lw	s1,20(sp)
    16ec:	00c12983          	lw	s3,12(sp)
    16f0:	00090513          	mv	a0,s2
    16f4:	01012903          	lw	s2,16(sp)
    16f8:	02010113          	addi	sp,sp,32
    16fc:	00008067          	ret
    1700:	20092783          	lw	a5,512(s2)
    1704:	00f4e663          	bltu	s1,a5,1710 <fatfs_fat_read_sector+0xa8>
    1708:	00178713          	addi	a4,a5,1
    170c:	02e4ea63          	bltu	s1,a4,1740 <fatfs_fat_read_sector+0xd8>
    1710:	20c92783          	lw	a5,524(s2)
    1714:	00079663          	bnez	a5,1720 <fatfs_fat_read_sector+0xb8>
    1718:	00040a63          	beqz	s0,172c <fatfs_fat_read_sector+0xc4>
    171c:	20042623          	sw	zero,524(s0)
    1720:	00090413          	mv	s0,s2
    1724:	20c92903          	lw	s2,524(s2)
    1728:	f69ff06f          	j	1690 <fatfs_fat_read_sector+0x28>
    172c:	2409aa23          	sw	zero,596(s3)
    1730:	ff1ff06f          	j	1720 <fatfs_fat_read_sector+0xb8>
    1734:	20842423          	sw	s0,520(s0)
    1738:	00040913          	mv	s2,s0
    173c:	fa5ff06f          	j	16e0 <fatfs_fat_read_sector+0x78>
    1740:	40f484b3          	sub	s1,s1,a5
    1744:	00949493          	slli	s1,s1,0x9
    1748:	009904b3          	add	s1,s2,s1
    174c:	20992423          	sw	s1,520(s2)
    1750:	f91ff06f          	j	16e0 <fatfs_fat_read_sector+0x78>

00001754 <_allocate_file>:
    1754:	ff010113          	addi	sp,sp,-16
    1758:	000057b7          	lui	a5,0x5
    175c:	00812423          	sw	s0,8(sp)
    1760:	c947a403          	lw	s0,-876(a5) # 4c94 <_free_file_list>
    1764:	00112623          	sw	ra,12(sp)
    1768:	02040e63          	beqz	s0,17a4 <_allocate_file+0x50>
    176c:	00042703          	lw	a4,0(s0)
    1770:	00442683          	lw	a3,4(s0)
    1774:	c9478793          	addi	a5,a5,-876
    1778:	04071063          	bnez	a4,17b8 <_allocate_file+0x64>
    177c:	00d7a023          	sw	a3,0(a5)
    1780:	00442683          	lw	a3,4(s0)
    1784:	02069e63          	bnez	a3,17c0 <_allocate_file+0x6c>
    1788:	00e7a223          	sw	a4,4(a5)
    178c:	00005537          	lui	a0,0x5
    1790:	00040593          	mv	a1,s0
    1794:	c9c50513          	addi	a0,a0,-868 # 4c9c <_open_file_list>
    1798:	00000097          	auipc	ra,0x0
    179c:	d40080e7          	jalr	-704(ra) # 14d8 <fat_list_insert_last>
    17a0:	bc440413          	addi	s0,s0,-1084
    17a4:	00c12083          	lw	ra,12(sp)
    17a8:	00040513          	mv	a0,s0
    17ac:	00812403          	lw	s0,8(sp)
    17b0:	01010113          	addi	sp,sp,16
    17b4:	00008067          	ret
    17b8:	00d72223          	sw	a3,4(a4)
    17bc:	fc5ff06f          	j	1780 <_allocate_file+0x2c>
    17c0:	00e6a023          	sw	a4,0(a3)
    17c4:	fc9ff06f          	j	178c <_allocate_file+0x38>

000017c8 <_free_file>:
    17c8:	43c52783          	lw	a5,1084(a0)
    17cc:	44052703          	lw	a4,1088(a0)
    17d0:	43c50593          	addi	a1,a0,1084
    17d4:	02079663          	bnez	a5,1800 <_free_file+0x38>
    17d8:	000056b7          	lui	a3,0x5
    17dc:	c8e6ae23          	sw	a4,-868(a3) # 4c9c <_open_file_list>
    17e0:	44052703          	lw	a4,1088(a0)
    17e4:	02071263          	bnez	a4,1808 <_free_file+0x40>
    17e8:	00005737          	lui	a4,0x5
    17ec:	caf72023          	sw	a5,-864(a4) # 4ca0 <_open_file_list+0x4>
    17f0:	00005537          	lui	a0,0x5
    17f4:	c9450513          	addi	a0,a0,-876 # 4c94 <_free_file_list>
    17f8:	00000317          	auipc	t1,0x0
    17fc:	ce030067          	jr	-800(t1) # 14d8 <fat_list_insert_last>
    1800:	00e7a223          	sw	a4,4(a5)
    1804:	fddff06f          	j	17e0 <_free_file+0x18>
    1808:	00f72023          	sw	a5,0(a4)
    180c:	fe5ff06f          	j	17f0 <_free_file+0x28>

00001810 <fatfs_lba_of_cluster>:
    1810:	ff010113          	addi	sp,sp,-16
    1814:	00812423          	sw	s0,8(sp)
    1818:	00050413          	mv	s0,a0
    181c:	00058513          	mv	a0,a1
    1820:	00044583          	lbu	a1,0(s0)
    1824:	ffe50513          	addi	a0,a0,-2
    1828:	00112623          	sw	ra,12(sp)
    182c:	00000097          	auipc	ra,0x0
    1830:	c84080e7          	jalr	-892(ra) # 14b0 <__mulsi3>
    1834:	00442783          	lw	a5,4(s0)
    1838:	00f50533          	add	a0,a0,a5
    183c:	03042783          	lw	a5,48(s0)
    1840:	00079863          	bnez	a5,1850 <fatfs_lba_of_cluster+0x40>
    1844:	02845783          	lhu	a5,40(s0)
    1848:	4047d793          	srai	a5,a5,0x4
    184c:	00f50533          	add	a0,a0,a5
    1850:	00c12083          	lw	ra,12(sp)
    1854:	00812403          	lw	s0,8(sp)
    1858:	01010113          	addi	sp,sp,16
    185c:	00008067          	ret

00001860 <fatfs_sector_read>:
    1860:	03452783          	lw	a5,52(a0)
    1864:	00058713          	mv	a4,a1
    1868:	00070513          	mv	a0,a4
    186c:	00060593          	mv	a1,a2
    1870:	00068613          	mv	a2,a3
    1874:	00078067          	jr	a5

00001878 <fatfs_sector_write>:
    1878:	03852783          	lw	a5,56(a0)
    187c:	00058713          	mv	a4,a1
    1880:	00070513          	mv	a0,a4
    1884:	00060593          	mv	a1,a2
    1888:	00068613          	mv	a2,a3
    188c:	00078067          	jr	a5

00001890 <fatfs_write_sector>:
    1890:	03852783          	lw	a5,56(a0)
    1894:	0a078863          	beqz	a5,1944 <fatfs_write_sector+0xb4>
    1898:	fe010113          	addi	sp,sp,-32
    189c:	01212823          	sw	s2,16(sp)
    18a0:	00068913          	mv	s2,a3
    18a4:	03052683          	lw	a3,48(a0)
    18a8:	00812c23          	sw	s0,24(sp)
    18ac:	00912a23          	sw	s1,20(sp)
    18b0:	00112e23          	sw	ra,28(sp)
    18b4:	00d5e733          	or	a4,a1,a3
    18b8:	00050413          	mv	s0,a0
    18bc:	00060493          	mv	s1,a2
    18c0:	04071063          	bnez	a4,1900 <fatfs_write_sector+0x70>
    18c4:	01052703          	lw	a4,16(a0)
    18c8:	06e67063          	bgeu	a2,a4,1928 <fatfs_write_sector+0x98>
    18cc:	01c52503          	lw	a0,28(a0)
    18d0:	00c42703          	lw	a4,12(s0)
    18d4:	00e50533          	add	a0,a0,a4
    18d8:	00c50533          	add	a0,a0,a2
    18dc:	02090e63          	beqz	s2,1918 <fatfs_write_sector+0x88>
    18e0:	00100613          	li	a2,1
    18e4:	00090593          	mv	a1,s2
    18e8:	01812403          	lw	s0,24(sp)
    18ec:	01c12083          	lw	ra,28(sp)
    18f0:	01412483          	lw	s1,20(sp)
    18f4:	01012903          	lw	s2,16(sp)
    18f8:	02010113          	addi	sp,sp,32
    18fc:	00078067          	jr	a5
    1900:	00f12623          	sw	a5,12(sp)
    1904:	00000097          	auipc	ra,0x0
    1908:	f0c080e7          	jalr	-244(ra) # 1810 <fatfs_lba_of_cluster>
    190c:	00c12783          	lw	a5,12(sp)
    1910:	00a48533          	add	a0,s1,a0
    1914:	fc9ff06f          	j	18dc <fatfs_write_sector+0x4c>
    1918:	24a42223          	sw	a0,580(s0)
    191c:	00100613          	li	a2,1
    1920:	04440593          	addi	a1,s0,68
    1924:	fc5ff06f          	j	18e8 <fatfs_write_sector+0x58>
    1928:	01c12083          	lw	ra,28(sp)
    192c:	01812403          	lw	s0,24(sp)
    1930:	01412483          	lw	s1,20(sp)
    1934:	01012903          	lw	s2,16(sp)
    1938:	00000513          	li	a0,0
    193c:	02010113          	addi	sp,sp,32
    1940:	00008067          	ret
    1944:	00000513          	li	a0,0
    1948:	00008067          	ret

0000194c <fl_init>:
    194c:	ff010113          	addi	sp,sp,-16
    1950:	00812423          	sw	s0,8(sp)
    1954:	00005437          	lui	s0,0x5
    1958:	00112623          	sw	ra,12(sp)
    195c:	c9440793          	addi	a5,s0,-876 # 4c94 <_free_file_list>
    1960:	0007a223          	sw	zero,4(a5)
    1964:	0007a023          	sw	zero,0(a5)
    1968:	000095b7          	lui	a1,0x9
    196c:	000057b7          	lui	a5,0x5
    1970:	c9c78793          	addi	a5,a5,-868 # 4c9c <_open_file_list>
    1974:	c9440513          	addi	a0,s0,-876
    1978:	16058593          	addi	a1,a1,352 # 9160 <_files+0x43c>
    197c:	0007a223          	sw	zero,4(a5)
    1980:	0007a023          	sw	zero,0(a5)
    1984:	00000097          	auipc	ra,0x0
    1988:	b54080e7          	jalr	-1196(ra) # 14d8 <fat_list_insert_last>
    198c:	000095b7          	lui	a1,0x9
    1990:	c9440513          	addi	a0,s0,-876
    1994:	5a458593          	addi	a1,a1,1444 # 95a4 <_files+0x880>
    1998:	00000097          	auipc	ra,0x0
    199c:	b40080e7          	jalr	-1216(ra) # 14d8 <fat_list_insert_last>
    19a0:	00c12083          	lw	ra,12(sp)
    19a4:	00812403          	lw	s0,8(sp)
    19a8:	000057b7          	lui	a5,0x5
    19ac:	00100713          	li	a4,1
    19b0:	c8e7a623          	sw	a4,-884(a5) # 4c8c <_filelib_init>
    19b4:	01010113          	addi	sp,sp,16
    19b8:	00008067          	ret

000019bc <fl_closedir>:
    19bc:	00000513          	li	a0,0
    19c0:	00008067          	ret

000019c4 <fatfs_lfn_cache_entry>:
    19c4:	0005c783          	lbu	a5,0(a1)
    19c8:	01300693          	li	a3,19
    19cc:	01f7f793          	andi	a5,a5,31
    19d0:	fff78713          	addi	a4,a5,-1
    19d4:	0ff77613          	zext.b	a2,a4
    19d8:	0ac6ea63          	bltu	a3,a2,1a8c <fatfs_lfn_cache_entry+0xc8>
    19dc:	10554683          	lbu	a3,261(a0)
    19e0:	00069463          	bnez	a3,19e8 <fatfs_lfn_cache_entry+0x24>
    19e4:	10f502a3          	sb	a5,261(a0)
    19e8:	00171793          	slli	a5,a4,0x1
    19ec:	00e787b3          	add	a5,a5,a4
    19f0:	0015c683          	lbu	a3,1(a1)
    19f4:	00279793          	slli	a5,a5,0x2
    19f8:	00e787b3          	add	a5,a5,a4
    19fc:	00f50533          	add	a0,a0,a5
    1a00:	00d50023          	sb	a3,0(a0)
    1a04:	0035c783          	lbu	a5,3(a1)
    1a08:	0ff00713          	li	a4,255
    1a0c:	02000693          	li	a3,32
    1a10:	00f500a3          	sb	a5,1(a0)
    1a14:	0055c783          	lbu	a5,5(a1)
    1a18:	00f50123          	sb	a5,2(a0)
    1a1c:	0075c783          	lbu	a5,7(a1)
    1a20:	00f501a3          	sb	a5,3(a0)
    1a24:	0095c783          	lbu	a5,9(a1)
    1a28:	00f50223          	sb	a5,4(a0)
    1a2c:	00e5c783          	lbu	a5,14(a1)
    1a30:	00f502a3          	sb	a5,5(a0)
    1a34:	0105c783          	lbu	a5,16(a1)
    1a38:	00f50323          	sb	a5,6(a0)
    1a3c:	0125c783          	lbu	a5,18(a1)
    1a40:	00f503a3          	sb	a5,7(a0)
    1a44:	0145c783          	lbu	a5,20(a1)
    1a48:	00f50423          	sb	a5,8(a0)
    1a4c:	0165c783          	lbu	a5,22(a1)
    1a50:	00f504a3          	sb	a5,9(a0)
    1a54:	0185c783          	lbu	a5,24(a1)
    1a58:	00f50523          	sb	a5,10(a0)
    1a5c:	01c5c783          	lbu	a5,28(a1)
    1a60:	00f505a3          	sb	a5,11(a0)
    1a64:	01e5c783          	lbu	a5,30(a1)
    1a68:	00f50623          	sb	a5,12(a0)
    1a6c:	00d00793          	li	a5,13
    1a70:	00054603          	lbu	a2,0(a0)
    1a74:	00e61463          	bne	a2,a4,1a7c <fatfs_lfn_cache_entry+0xb8>
    1a78:	00d50023          	sb	a3,0(a0)
    1a7c:	fff78793          	addi	a5,a5,-1
    1a80:	0ff7f793          	zext.b	a5,a5
    1a84:	00150513          	addi	a0,a0,1
    1a88:	fe0794e3          	bnez	a5,1a70 <fatfs_lfn_cache_entry+0xac>
    1a8c:	00008067          	ret

00001a90 <fatfs_lfn_cache_get>:
    1a90:	10554703          	lbu	a4,261(a0)
    1a94:	01400793          	li	a5,20
    1a98:	00f71663          	bne	a4,a5,1aa4 <fatfs_lfn_cache_get+0x14>
    1a9c:	10050223          	sb	zero,260(a0)
    1aa0:	00008067          	ret
    1aa4:	02070063          	beqz	a4,1ac4 <fatfs_lfn_cache_get+0x34>
    1aa8:	00171793          	slli	a5,a4,0x1
    1aac:	00e787b3          	add	a5,a5,a4
    1ab0:	00279793          	slli	a5,a5,0x2
    1ab4:	00e787b3          	add	a5,a5,a4
    1ab8:	00f507b3          	add	a5,a0,a5
    1abc:	00078023          	sb	zero,0(a5)
    1ac0:	00008067          	ret
    1ac4:	00050023          	sb	zero,0(a0)
    1ac8:	00008067          	ret

00001acc <fatfs_entry_lfn_text>:
    1acc:	00b54503          	lbu	a0,11(a0)
    1ad0:	00f57513          	andi	a0,a0,15
    1ad4:	ff150513          	addi	a0,a0,-15
    1ad8:	00153513          	seqz	a0,a0
    1adc:	00008067          	ret

00001ae0 <fatfs_entry_lfn_invalid>:
    1ae0:	00054703          	lbu	a4,0(a0)
    1ae4:	00050793          	mv	a5,a0
    1ae8:	02070463          	beqz	a4,1b10 <fatfs_entry_lfn_invalid+0x30>
    1aec:	0e500693          	li	a3,229
    1af0:	00100513          	li	a0,1
    1af4:	02d70063          	beq	a4,a3,1b14 <fatfs_entry_lfn_invalid+0x34>
    1af8:	00b7c783          	lbu	a5,11(a5)
    1afc:	00800713          	li	a4,8
    1b00:	00e78a63          	beq	a5,a4,1b14 <fatfs_entry_lfn_invalid+0x34>
    1b04:	0067f793          	andi	a5,a5,6
    1b08:	00f03533          	snez	a0,a5
    1b0c:	00008067          	ret
    1b10:	00100513          	li	a0,1
    1b14:	00008067          	ret

00001b18 <fatfs_entry_lfn_exists>:
    1b18:	00b5c783          	lbu	a5,11(a1)
    1b1c:	00f00693          	li	a3,15
    1b20:	00050713          	mv	a4,a0
    1b24:	02d78a63          	beq	a5,a3,1b58 <fatfs_entry_lfn_exists+0x40>
    1b28:	0005c683          	lbu	a3,0(a1)
    1b2c:	00000513          	li	a0,0
    1b30:	02068663          	beqz	a3,1b5c <fatfs_entry_lfn_exists+0x44>
    1b34:	0e500613          	li	a2,229
    1b38:	02c68263          	beq	a3,a2,1b5c <fatfs_entry_lfn_exists+0x44>
    1b3c:	00800693          	li	a3,8
    1b40:	00d78e63          	beq	a5,a3,1b5c <fatfs_entry_lfn_exists+0x44>
    1b44:	0067f793          	andi	a5,a5,6
    1b48:	00079a63          	bnez	a5,1b5c <fatfs_entry_lfn_exists+0x44>
    1b4c:	10574503          	lbu	a0,261(a4)
    1b50:	00a03533          	snez	a0,a0
    1b54:	00008067          	ret
    1b58:	00000513          	li	a0,0
    1b5c:	00008067          	ret

00001b60 <fatfs_entry_sfn_only>:
    1b60:	00b54783          	lbu	a5,11(a0)
    1b64:	00f00713          	li	a4,15
    1b68:	02e78663          	beq	a5,a4,1b94 <fatfs_entry_sfn_only+0x34>
    1b6c:	00054703          	lbu	a4,0(a0)
    1b70:	00000513          	li	a0,0
    1b74:	02070263          	beqz	a4,1b98 <fatfs_entry_sfn_only+0x38>
    1b78:	0e500693          	li	a3,229
    1b7c:	00d70e63          	beq	a4,a3,1b98 <fatfs_entry_sfn_only+0x38>
    1b80:	00800713          	li	a4,8
    1b84:	00e78a63          	beq	a5,a4,1b98 <fatfs_entry_sfn_only+0x38>
    1b88:	0067f793          	andi	a5,a5,6
    1b8c:	0017b513          	seqz	a0,a5
    1b90:	00008067          	ret
    1b94:	00000513          	li	a0,0
    1b98:	00008067          	ret

00001b9c <fatfs_entry_is_dir>:
    1b9c:	00b54503          	lbu	a0,11(a0)
    1ba0:	00455513          	srli	a0,a0,0x4
    1ba4:	00157513          	andi	a0,a0,1
    1ba8:	00008067          	ret

00001bac <fatfs_entry_is_file>:
    1bac:	00b54503          	lbu	a0,11(a0)
    1bb0:	00555513          	srli	a0,a0,0x5
    1bb4:	00157513          	andi	a0,a0,1
    1bb8:	00008067          	ret

00001bbc <fatfs_lfn_entries_required>:
    1bbc:	ff010113          	addi	sp,sp,-16
    1bc0:	00112623          	sw	ra,12(sp)
    1bc4:	fffff097          	auipc	ra,0xfffff
    1bc8:	104080e7          	jalr	260(ra) # cc8 <strlen>
    1bcc:	00050a63          	beqz	a0,1be0 <fatfs_lfn_entries_required+0x24>
    1bd0:	00d00593          	li	a1,13
    1bd4:	00c50513          	addi	a0,a0,12
    1bd8:	fffff097          	auipc	ra,0xfffff
    1bdc:	ffc080e7          	jalr	-4(ra) # bd4 <__divsi3>
    1be0:	00c12083          	lw	ra,12(sp)
    1be4:	01010113          	addi	sp,sp,16
    1be8:	00008067          	ret

00001bec <fatfs_filename_to_lfn>:
    1bec:	fa010113          	addi	sp,sp,-96
    1bf0:	04912a23          	sw	s1,84(sp)
    1bf4:	00058493          	mv	s1,a1
    1bf8:	000055b7          	lui	a1,0x5
    1bfc:	c3c58593          	addi	a1,a1,-964 # 4c3c <font+0x228>
    1c00:	05212823          	sw	s2,80(sp)
    1c04:	05312623          	sw	s3,76(sp)
    1c08:	00060913          	mv	s2,a2
    1c0c:	00050993          	mv	s3,a0
    1c10:	03400613          	li	a2,52
    1c14:	00c10513          	addi	a0,sp,12
    1c18:	04112e23          	sw	ra,92(sp)
    1c1c:	04812c23          	sw	s0,88(sp)
    1c20:	05412423          	sw	s4,72(sp)
    1c24:	05512223          	sw	s5,68(sp)
    1c28:	05612023          	sw	s6,64(sp)
    1c2c:	00068b13          	mv	s6,a3
    1c30:	fffff097          	auipc	ra,0xfffff
    1c34:	074080e7          	jalr	116(ra) # ca4 <memcpy>
    1c38:	00098513          	mv	a0,s3
    1c3c:	fffff097          	auipc	ra,0xfffff
    1c40:	08c080e7          	jalr	140(ra) # cc8 <strlen>
    1c44:	00050a93          	mv	s5,a0
    1c48:	00098513          	mv	a0,s3
    1c4c:	00000097          	auipc	ra,0x0
    1c50:	f70080e7          	jalr	-144(ra) # 1bbc <fatfs_lfn_entries_required>
    1c54:	00191793          	slli	a5,s2,0x1
    1c58:	012787b3          	add	a5,a5,s2
    1c5c:	00279793          	slli	a5,a5,0x2
    1c60:	00050a13          	mv	s4,a0
    1c64:	02000613          	li	a2,32
    1c68:	00000593          	li	a1,0
    1c6c:	00048513          	mv	a0,s1
    1c70:	01278433          	add	s0,a5,s2
    1c74:	fffff097          	auipc	ra,0xfffff
    1c78:	014080e7          	jalr	20(ra) # c88 <memset>
    1c7c:	00190793          	addi	a5,s2,1
    1c80:	fffa0a13          	addi	s4,s4,-1 # 3fff <fl_fread+0x77>
    1c84:	0ff7f793          	zext.b	a5,a5
    1c88:	012a1463          	bne	s4,s2,1c90 <fatfs_filename_to_lfn+0xa4>
    1c8c:	0407e793          	ori	a5,a5,64
    1c90:	00f48023          	sb	a5,0(s1)
    1c94:	00f00793          	li	a5,15
    1c98:	00f485a3          	sb	a5,11(s1)
    1c9c:	016486a3          	sb	s6,13(s1)
    1ca0:	00c10713          	addi	a4,sp,12
    1ca4:	00040793          	mv	a5,s0
    1ca8:	00d40593          	addi	a1,s0,13
    1cac:	fff00613          	li	a2,-1
    1cb0:	00072683          	lw	a3,0(a4)
    1cb4:	00d486b3          	add	a3,s1,a3
    1cb8:	0557d263          	bge	a5,s5,1cfc <fatfs_filename_to_lfn+0x110>
    1cbc:	00f98533          	add	a0,s3,a5
    1cc0:	00054503          	lbu	a0,0(a0)
    1cc4:	00a68023          	sb	a0,0(a3)
    1cc8:	00178793          	addi	a5,a5,1
    1ccc:	00470713          	addi	a4,a4,4
    1cd0:	feb790e3          	bne	a5,a1,1cb0 <fatfs_filename_to_lfn+0xc4>
    1cd4:	05c12083          	lw	ra,92(sp)
    1cd8:	05812403          	lw	s0,88(sp)
    1cdc:	05412483          	lw	s1,84(sp)
    1ce0:	05012903          	lw	s2,80(sp)
    1ce4:	04c12983          	lw	s3,76(sp)
    1ce8:	04812a03          	lw	s4,72(sp)
    1cec:	04412a83          	lw	s5,68(sp)
    1cf0:	04012b03          	lw	s6,64(sp)
    1cf4:	06010113          	addi	sp,sp,96
    1cf8:	00008067          	ret
    1cfc:	00fa9663          	bne	s5,a5,1d08 <fatfs_filename_to_lfn+0x11c>
    1d00:	00068023          	sb	zero,0(a3)
    1d04:	fc5ff06f          	j	1cc8 <fatfs_filename_to_lfn+0xdc>
    1d08:	00c68023          	sb	a2,0(a3)
    1d0c:	00c680a3          	sb	a2,1(a3)
    1d10:	fb9ff06f          	j	1cc8 <fatfs_filename_to_lfn+0xdc>

00001d14 <fatfs_sfn_create_entry>:
    1d14:	00000793          	li	a5,0
    1d18:	00b00813          	li	a6,11
    1d1c:	00f508b3          	add	a7,a0,a5
    1d20:	0008c303          	lbu	t1,0(a7)
    1d24:	00f688b3          	add	a7,a3,a5
    1d28:	00178793          	addi	a5,a5,1
    1d2c:	00688023          	sb	t1,0(a7)
    1d30:	ff0796e3          	bne	a5,a6,1d1c <fatfs_sfn_create_entry+0x8>
    1d34:	02000793          	li	a5,32
    1d38:	000686a3          	sb	zero,13(a3)
    1d3c:	00068723          	sb	zero,14(a3)
    1d40:	000687a3          	sb	zero,15(a3)
    1d44:	000688a3          	sb	zero,17(a3)
    1d48:	00f68823          	sb	a5,16(a3)
    1d4c:	000689a3          	sb	zero,19(a3)
    1d50:	00f68923          	sb	a5,18(a3)
    1d54:	00068b23          	sb	zero,22(a3)
    1d58:	00068ba3          	sb	zero,23(a3)
    1d5c:	00068ca3          	sb	zero,25(a3)
    1d60:	00f68c23          	sb	a5,24(a3)
    1d64:	00070463          	beqz	a4,1d6c <fatfs_sfn_create_entry+0x58>
    1d68:	01000793          	li	a5,16
    1d6c:	00f685a3          	sb	a5,11(a3)
    1d70:	01065793          	srli	a5,a2,0x10
    1d74:	00f68a23          	sb	a5,20(a3)
    1d78:	0087d793          	srli	a5,a5,0x8
    1d7c:	00f68aa3          	sb	a5,21(a3)
    1d80:	01061793          	slli	a5,a2,0x10
    1d84:	0107d793          	srli	a5,a5,0x10
    1d88:	0087d793          	srli	a5,a5,0x8
    1d8c:	00f68da3          	sb	a5,27(a3)
    1d90:	0085d793          	srli	a5,a1,0x8
    1d94:	00b68e23          	sb	a1,28(a3)
    1d98:	00f68ea3          	sb	a5,29(a3)
    1d9c:	0105d793          	srli	a5,a1,0x10
    1da0:	0185d593          	srli	a1,a1,0x18
    1da4:	00068623          	sb	zero,12(a3)
    1da8:	00c68d23          	sb	a2,26(a3)
    1dac:	00f68f23          	sb	a5,30(a3)
    1db0:	00b68fa3          	sb	a1,31(a3)
    1db4:	00008067          	ret

00001db8 <fatfs_lfn_create_sfn>:
    1db8:	0005c703          	lbu	a4,0(a1)
    1dbc:	02e00793          	li	a5,46
    1dc0:	16f70463          	beq	a4,a5,1f28 <fatfs_lfn_create_sfn+0x170>
    1dc4:	fe010113          	addi	sp,sp,-32
    1dc8:	00912a23          	sw	s1,20(sp)
    1dcc:	00050493          	mv	s1,a0
    1dd0:	00058513          	mv	a0,a1
    1dd4:	00112e23          	sw	ra,28(sp)
    1dd8:	00812c23          	sw	s0,24(sp)
    1ddc:	01212823          	sw	s2,16(sp)
    1de0:	00058413          	mv	s0,a1
    1de4:	fffff097          	auipc	ra,0xfffff
    1de8:	ee4080e7          	jalr	-284(ra) # cc8 <strlen>
    1dec:	00b00613          	li	a2,11
    1df0:	02000593          	li	a1,32
    1df4:	00050913          	mv	s2,a0
    1df8:	00048513          	mv	a0,s1
    1dfc:	fffff097          	auipc	ra,0xfffff
    1e00:	e8c080e7          	jalr	-372(ra) # c88 <memset>
    1e04:	00300613          	li	a2,3
    1e08:	02000593          	li	a1,32
    1e0c:	00c10513          	addi	a0,sp,12
    1e10:	fffff097          	auipc	ra,0xfffff
    1e14:	e78080e7          	jalr	-392(ra) # c88 <memset>
    1e18:	fff00713          	li	a4,-1
    1e1c:	00000793          	li	a5,0
    1e20:	02e00693          	li	a3,46
    1e24:	0d27c063          	blt	a5,s2,1ee4 <fatfs_lfn_create_sfn+0x12c>
    1e28:	fff00793          	li	a5,-1
    1e2c:	0ef70663          	beq	a4,a5,1f18 <fatfs_lfn_create_sfn+0x160>
    1e30:	00170793          	addi	a5,a4,1
    1e34:	00c10693          	addi	a3,sp,12
    1e38:	00470613          	addi	a2,a4,4
    1e3c:	0cf61063          	bne	a2,a5,1efc <fatfs_lfn_create_sfn+0x144>
    1e40:	00000613          	li	a2,0
    1e44:	00000693          	li	a3,0
    1e48:	02000813          	li	a6,32
    1e4c:	02e00893          	li	a7,46
    1e50:	01900313          	li	t1,25
    1e54:	00800e13          	li	t3,8
    1e58:	02e6da63          	bge	a3,a4,1e8c <fatfs_lfn_create_sfn+0xd4>
    1e5c:	00d407b3          	add	a5,s0,a3
    1e60:	0007c783          	lbu	a5,0(a5)
    1e64:	03078263          	beq	a5,a6,1e88 <fatfs_lfn_create_sfn+0xd0>
    1e68:	03178063          	beq	a5,a7,1e88 <fatfs_lfn_create_sfn+0xd0>
    1e6c:	f9f78593          	addi	a1,a5,-97
    1e70:	0ff5f593          	zext.b	a1,a1
    1e74:	00c48533          	add	a0,s1,a2
    1e78:	00160613          	addi	a2,a2,1
    1e7c:	00b36463          	bltu	t1,a1,1e84 <fatfs_lfn_create_sfn+0xcc>
    1e80:	fe078793          	addi	a5,a5,-32
    1e84:	00f50023          	sb	a5,0(a0)
    1e88:	09c61c63          	bne	a2,t3,1f20 <fatfs_lfn_create_sfn+0x168>
    1e8c:	00c10793          	addi	a5,sp,12
    1e90:	00800693          	li	a3,8
    1e94:	01900513          	li	a0,25
    1e98:	00b00593          	li	a1,11
    1e9c:	0007c703          	lbu	a4,0(a5)
    1ea0:	f9f70613          	addi	a2,a4,-97
    1ea4:	0ff67613          	zext.b	a2,a2
    1ea8:	00c56663          	bltu	a0,a2,1eb4 <fatfs_lfn_create_sfn+0xfc>
    1eac:	fe070713          	addi	a4,a4,-32
    1eb0:	0ff77713          	zext.b	a4,a4
    1eb4:	00d48633          	add	a2,s1,a3
    1eb8:	00e60023          	sb	a4,0(a2)
    1ebc:	00168693          	addi	a3,a3,1
    1ec0:	00178793          	addi	a5,a5,1
    1ec4:	fcb69ce3          	bne	a3,a1,1e9c <fatfs_lfn_create_sfn+0xe4>
    1ec8:	01c12083          	lw	ra,28(sp)
    1ecc:	01812403          	lw	s0,24(sp)
    1ed0:	01412483          	lw	s1,20(sp)
    1ed4:	01012903          	lw	s2,16(sp)
    1ed8:	00100513          	li	a0,1
    1edc:	02010113          	addi	sp,sp,32
    1ee0:	00008067          	ret
    1ee4:	00f40633          	add	a2,s0,a5
    1ee8:	00064603          	lbu	a2,0(a2)
    1eec:	00d61463          	bne	a2,a3,1ef4 <fatfs_lfn_create_sfn+0x13c>
    1ef0:	00078713          	mv	a4,a5
    1ef4:	00178793          	addi	a5,a5,1
    1ef8:	f2dff06f          	j	1e24 <fatfs_lfn_create_sfn+0x6c>
    1efc:	0127d863          	bge	a5,s2,1f0c <fatfs_lfn_create_sfn+0x154>
    1f00:	00f405b3          	add	a1,s0,a5
    1f04:	0005c583          	lbu	a1,0(a1)
    1f08:	00b68023          	sb	a1,0(a3)
    1f0c:	00178793          	addi	a5,a5,1
    1f10:	00168693          	addi	a3,a3,1
    1f14:	f29ff06f          	j	1e3c <fatfs_lfn_create_sfn+0x84>
    1f18:	00090713          	mv	a4,s2
    1f1c:	f25ff06f          	j	1e40 <fatfs_lfn_create_sfn+0x88>
    1f20:	00168693          	addi	a3,a3,1
    1f24:	f35ff06f          	j	1e58 <fatfs_lfn_create_sfn+0xa0>
    1f28:	00000513          	li	a0,0
    1f2c:	00008067          	ret

00001f30 <fatfs_lfn_generate_tail>:
    1f30:	000187b7          	lui	a5,0x18
    1f34:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1f38:	16c7e063          	bltu	a5,a2,2098 <fatfs_lfn_generate_tail+0x168>
    1f3c:	fa010113          	addi	sp,sp,-96
    1f40:	04812c23          	sw	s0,88(sp)
    1f44:	04912a23          	sw	s1,84(sp)
    1f48:	05412423          	sw	s4,72(sp)
    1f4c:	00050493          	mv	s1,a0
    1f50:	00058a13          	mv	s4,a1
    1f54:	00060413          	mv	s0,a2
    1f58:	00000593          	li	a1,0
    1f5c:	00c00613          	li	a2,12
    1f60:	00410513          	addi	a0,sp,4
    1f64:	04112e23          	sw	ra,92(sp)
    1f68:	05212823          	sw	s2,80(sp)
    1f6c:	05512223          	sw	s5,68(sp)
    1f70:	03712e23          	sw	s7,60(sp)
    1f74:	05312623          	sw	s3,76(sp)
    1f78:	05612023          	sw	s6,64(sp)
    1f7c:	fffff097          	auipc	ra,0xfffff
    1f80:	d0c080e7          	jalr	-756(ra) # c88 <memset>
    1f84:	000055b7          	lui	a1,0x5
    1f88:	07e00793          	li	a5,126
    1f8c:	01100613          	li	a2,17
    1f90:	bf458593          	addi	a1,a1,-1036 # 4bf4 <font+0x1e0>
    1f94:	01c10513          	addi	a0,sp,28
    1f98:	01010913          	addi	s2,sp,16
    1f9c:	00f10223          	sb	a5,4(sp)
    1fa0:	00090a93          	mv	s5,s2
    1fa4:	fffff097          	auipc	ra,0xfffff
    1fa8:	d00080e7          	jalr	-768(ra) # ca4 <memcpy>
    1fac:	00900b93          	li	s7,9
    1fb0:	00a00593          	li	a1,10
    1fb4:	00040513          	mv	a0,s0
    1fb8:	fffff097          	auipc	ra,0xfffff
    1fbc:	c6c080e7          	jalr	-916(ra) # c24 <__umodsi3>
    1fc0:	03050793          	addi	a5,a0,48
    1fc4:	00278533          	add	a0,a5,sp
    1fc8:	fec54783          	lbu	a5,-20(a0)
    1fcc:	00090993          	mv	s3,s2
    1fd0:	00040513          	mv	a0,s0
    1fd4:	00a00593          	li	a1,10
    1fd8:	00f90023          	sb	a5,0(s2)
    1fdc:	00040b13          	mv	s6,s0
    1fe0:	fffff097          	auipc	ra,0xfffff
    1fe4:	bfc080e7          	jalr	-1028(ra) # bdc <__udivsi3>
    1fe8:	00190913          	addi	s2,s2,1
    1fec:	00050413          	mv	s0,a0
    1ff0:	fd6be0e3          	bltu	s7,s6,1fb0 <fatfs_lfn_generate_tail+0x80>
    1ff4:	00090023          	sb	zero,0(s2)
    1ff8:	00410713          	addi	a4,sp,4
    1ffc:	00098793          	mv	a5,s3
    2000:	0007c683          	lbu	a3,0(a5)
    2004:	fff78793          	addi	a5,a5,-1
    2008:	00170713          	addi	a4,a4,1
    200c:	00d70023          	sb	a3,0(a4)
    2010:	ff57f8e3          	bgeu	a5,s5,2000 <fatfs_lfn_generate_tail+0xd0>
    2014:	00100793          	li	a5,1
    2018:	0159e663          	bltu	s3,s5,2024 <fatfs_lfn_generate_tail+0xf4>
    201c:	415787b3          	sub	a5,a5,s5
    2020:	00f987b3          	add	a5,s3,a5
    2024:	03078793          	addi	a5,a5,48
    2028:	002787b3          	add	a5,a5,sp
    202c:	000a0593          	mv	a1,s4
    2030:	fc078aa3          	sb	zero,-43(a5)
    2034:	00b00613          	li	a2,11
    2038:	00048513          	mv	a0,s1
    203c:	fffff097          	auipc	ra,0xfffff
    2040:	c68080e7          	jalr	-920(ra) # ca4 <memcpy>
    2044:	00410513          	addi	a0,sp,4
    2048:	fffff097          	auipc	ra,0xfffff
    204c:	c80080e7          	jalr	-896(ra) # cc8 <strlen>
    2050:	40a484b3          	sub	s1,s1,a0
    2054:	00050613          	mv	a2,a0
    2058:	00410593          	addi	a1,sp,4
    205c:	00848513          	addi	a0,s1,8
    2060:	fffff097          	auipc	ra,0xfffff
    2064:	c44080e7          	jalr	-956(ra) # ca4 <memcpy>
    2068:	05c12083          	lw	ra,92(sp)
    206c:	05812403          	lw	s0,88(sp)
    2070:	05412483          	lw	s1,84(sp)
    2074:	05012903          	lw	s2,80(sp)
    2078:	04c12983          	lw	s3,76(sp)
    207c:	04812a03          	lw	s4,72(sp)
    2080:	04412a83          	lw	s5,68(sp)
    2084:	04012b03          	lw	s6,64(sp)
    2088:	03c12b83          	lw	s7,60(sp)
    208c:	00100513          	li	a0,1
    2090:	06010113          	addi	sp,sp,96
    2094:	00008067          	ret
    2098:	00000513          	li	a0,0
    209c:	00008067          	ret

000020a0 <fatfs_total_path_levels>:
    20a0:	00050793          	mv	a5,a0
    20a4:	06050463          	beqz	a0,210c <fatfs_total_path_levels+0x6c>
    20a8:	00054703          	lbu	a4,0(a0)
    20ac:	02f00693          	li	a3,47
    20b0:	00d71863          	bne	a4,a3,20c0 <fatfs_total_path_levels+0x20>
    20b4:	00150793          	addi	a5,a0,1
    20b8:	00000513          	li	a0,0
    20bc:	0400006f          	j	20fc <fatfs_total_path_levels+0x5c>
    20c0:	00154683          	lbu	a3,1(a0)
    20c4:	03a00713          	li	a4,58
    20c8:	00e68a63          	beq	a3,a4,20dc <fatfs_total_path_levels+0x3c>
    20cc:	00254683          	lbu	a3,2(a0)
    20d0:	05c00713          	li	a4,92
    20d4:	fff00513          	li	a0,-1
    20d8:	02e69c63          	bne	a3,a4,2110 <fatfs_total_path_levels+0x70>
    20dc:	00378793          	addi	a5,a5,3
    20e0:	05c00713          	li	a4,92
    20e4:	fd5ff06f          	j	20b8 <fatfs_total_path_levels+0x18>
    20e8:	00178793          	addi	a5,a5,1
    20ec:	00e68663          	beq	a3,a4,20f8 <fatfs_total_path_levels+0x58>
    20f0:	0007c683          	lbu	a3,0(a5)
    20f4:	fe069ae3          	bnez	a3,20e8 <fatfs_total_path_levels+0x48>
    20f8:	00150513          	addi	a0,a0,1
    20fc:	0007c683          	lbu	a3,0(a5)
    2100:	fe0698e3          	bnez	a3,20f0 <fatfs_total_path_levels+0x50>
    2104:	fff50513          	addi	a0,a0,-1
    2108:	00008067          	ret
    210c:	fff00513          	li	a0,-1
    2110:	00008067          	ret

00002114 <fatfs_get_substring>:
    2114:	0c050c63          	beqz	a0,21ec <fatfs_get_substring+0xd8>
    2118:	fe010113          	addi	sp,sp,-32
    211c:	00912a23          	sw	s1,20(sp)
    2120:	00112e23          	sw	ra,28(sp)
    2124:	00812c23          	sw	s0,24(sp)
    2128:	01212823          	sw	s2,16(sp)
    212c:	01312623          	sw	s3,12(sp)
    2130:	01412423          	sw	s4,8(sp)
    2134:	00050793          	mv	a5,a0
    2138:	00068493          	mv	s1,a3
    213c:	fff00513          	li	a0,-1
    2140:	06d05a63          	blez	a3,21b4 <fatfs_get_substring+0xa0>
    2144:	0007c983          	lbu	s3,0(a5)
    2148:	02f00713          	li	a4,47
    214c:	00058a13          	mv	s4,a1
    2150:	00060913          	mv	s2,a2
    2154:	00178413          	addi	s0,a5,1
    2158:	02e98463          	beq	s3,a4,2180 <fatfs_get_substring+0x6c>
    215c:	0017c683          	lbu	a3,1(a5)
    2160:	03a00713          	li	a4,58
    2164:	00e68a63          	beq	a3,a4,2178 <fatfs_get_substring+0x64>
    2168:	0027c683          	lbu	a3,2(a5)
    216c:	05c00713          	li	a4,92
    2170:	fff00513          	li	a0,-1
    2174:	04e69063          	bne	a3,a4,21b4 <fatfs_get_substring+0xa0>
    2178:	00378413          	addi	s0,a5,3
    217c:	05c00993          	li	s3,92
    2180:	00040513          	mv	a0,s0
    2184:	fffff097          	auipc	ra,0xfffff
    2188:	b44080e7          	jalr	-1212(ra) # cc8 <strlen>
    218c:	00000713          	li	a4,0
    2190:	00000693          	li	a3,0
    2194:	00000793          	li	a5,0
    2198:	fff48493          	addi	s1,s1,-1
    219c:	00e905b3          	add	a1,s2,a4
    21a0:	02a7ca63          	blt	a5,a0,21d4 <fatfs_get_substring+0xc0>
    21a4:	00058023          	sb	zero,0(a1)
    21a8:	00094503          	lbu	a0,0(s2)
    21ac:	00153513          	seqz	a0,a0
    21b0:	40a00533          	neg	a0,a0
    21b4:	01c12083          	lw	ra,28(sp)
    21b8:	01812403          	lw	s0,24(sp)
    21bc:	01412483          	lw	s1,20(sp)
    21c0:	01012903          	lw	s2,16(sp)
    21c4:	00c12983          	lw	s3,12(sp)
    21c8:	00812a03          	lw	s4,8(sp)
    21cc:	02010113          	addi	sp,sp,32
    21d0:	00008067          	ret
    21d4:	00f40633          	add	a2,s0,a5
    21d8:	00064603          	lbu	a2,0(a2)
    21dc:	01361c63          	bne	a2,s3,21f4 <fatfs_get_substring+0xe0>
    21e0:	00168693          	addi	a3,a3,1
    21e4:	00178793          	addi	a5,a5,1
    21e8:	fb5ff06f          	j	219c <fatfs_get_substring+0x88>
    21ec:	fff00513          	li	a0,-1
    21f0:	00008067          	ret
    21f4:	ff4698e3          	bne	a3,s4,21e4 <fatfs_get_substring+0xd0>
    21f8:	fe9756e3          	bge	a4,s1,21e4 <fatfs_get_substring+0xd0>
    21fc:	00170713          	addi	a4,a4,1
    2200:	00c58023          	sb	a2,0(a1)
    2204:	fe1ff06f          	j	21e4 <fatfs_get_substring+0xd0>

00002208 <fatfs_split_path>:
    2208:	fd010113          	addi	sp,sp,-48
    220c:	02912223          	sw	s1,36(sp)
    2210:	03212023          	sw	s2,32(sp)
    2214:	01312e23          	sw	s3,28(sp)
    2218:	01412c23          	sw	s4,24(sp)
    221c:	02112623          	sw	ra,44(sp)
    2220:	00068a13          	mv	s4,a3
    2224:	02812423          	sw	s0,40(sp)
    2228:	00050913          	mv	s2,a0
    222c:	00058493          	mv	s1,a1
    2230:	00060993          	mv	s3,a2
    2234:	00e12623          	sw	a4,12(sp)
    2238:	00000097          	auipc	ra,0x0
    223c:	e68080e7          	jalr	-408(ra) # 20a0 <fatfs_total_path_levels>
    2240:	fff00793          	li	a5,-1
    2244:	00c12683          	lw	a3,12(sp)
    2248:	02f51663          	bne	a0,a5,2274 <fatfs_split_path+0x6c>
    224c:	fff00413          	li	s0,-1
    2250:	02c12083          	lw	ra,44(sp)
    2254:	00040513          	mv	a0,s0
    2258:	02812403          	lw	s0,40(sp)
    225c:	02412483          	lw	s1,36(sp)
    2260:	02012903          	lw	s2,32(sp)
    2264:	01c12983          	lw	s3,28(sp)
    2268:	01812a03          	lw	s4,24(sp)
    226c:	03010113          	addi	sp,sp,48
    2270:	00008067          	ret
    2274:	00050413          	mv	s0,a0
    2278:	00050593          	mv	a1,a0
    227c:	000a0613          	mv	a2,s4
    2280:	00090513          	mv	a0,s2
    2284:	00000097          	auipc	ra,0x0
    2288:	e90080e7          	jalr	-368(ra) # 2114 <fatfs_get_substring>
    228c:	fc0510e3          	bnez	a0,224c <fatfs_split_path+0x44>
    2290:	00041663          	bnez	s0,229c <fatfs_split_path+0x94>
    2294:	00048023          	sb	zero,0(s1)
    2298:	fb9ff06f          	j	2250 <fatfs_split_path+0x48>
    229c:	00090513          	mv	a0,s2
    22a0:	fffff097          	auipc	ra,0xfffff
    22a4:	a28080e7          	jalr	-1496(ra) # cc8 <strlen>
    22a8:	00050413          	mv	s0,a0
    22ac:	000a0513          	mv	a0,s4
    22b0:	fffff097          	auipc	ra,0xfffff
    22b4:	a18080e7          	jalr	-1512(ra) # cc8 <strlen>
    22b8:	40a40433          	sub	s0,s0,a0
    22bc:	0089d463          	bge	s3,s0,22c4 <fatfs_split_path+0xbc>
    22c0:	00098413          	mv	s0,s3
    22c4:	00040613          	mv	a2,s0
    22c8:	00048513          	mv	a0,s1
    22cc:	00090593          	mv	a1,s2
    22d0:	008484b3          	add	s1,s1,s0
    22d4:	fffff097          	auipc	ra,0xfffff
    22d8:	9d0080e7          	jalr	-1584(ra) # ca4 <memcpy>
    22dc:	00000413          	li	s0,0
    22e0:	fe048fa3          	sb	zero,-1(s1)
    22e4:	f6dff06f          	j	2250 <fatfs_split_path+0x48>

000022e8 <fatfs_compare_names>:
    22e8:	fd010113          	addi	sp,sp,-48
    22ec:	02112623          	sw	ra,44(sp)
    22f0:	02812423          	sw	s0,40(sp)
    22f4:	02912223          	sw	s1,36(sp)
    22f8:	03212023          	sw	s2,32(sp)
    22fc:	01312e23          	sw	s3,28(sp)
    2300:	00058913          	mv	s2,a1
    2304:	01412c23          	sw	s4,24(sp)
    2308:	01512a23          	sw	s5,20(sp)
    230c:	01612823          	sw	s6,16(sp)
    2310:	00050a13          	mv	s4,a0
    2314:	fffff097          	auipc	ra,0xfffff
    2318:	2a4080e7          	jalr	676(ra) # 15b8 <FileString_GetExtension>
    231c:	00050493          	mv	s1,a0
    2320:	00090513          	mv	a0,s2
    2324:	fffff097          	auipc	ra,0xfffff
    2328:	294080e7          	jalr	660(ra) # 15b8 <FileString_GetExtension>
    232c:	fff00793          	li	a5,-1
    2330:	00050413          	mv	s0,a0
    2334:	00000993          	li	s3,0
    2338:	0af49263          	bne	s1,a5,23dc <fatfs_compare_names+0xf4>
    233c:	0e951863          	bne	a0,s1,242c <fatfs_compare_names+0x144>
    2340:	000a0513          	mv	a0,s4
    2344:	fffff097          	auipc	ra,0xfffff
    2348:	984080e7          	jalr	-1660(ra) # cc8 <strlen>
    234c:	00050493          	mv	s1,a0
    2350:	00090513          	mv	a0,s2
    2354:	fffff097          	auipc	ra,0xfffff
    2358:	974080e7          	jalr	-1676(ra) # cc8 <strlen>
    235c:	00050413          	mv	s0,a0
    2360:	fff48793          	addi	a5,s1,-1
    2364:	00fa07b3          	add	a5,s4,a5
    2368:	40978733          	sub	a4,a5,s1
    236c:	02000613          	li	a2,32
    2370:	00078693          	mv	a3,a5
    2374:	00e78863          	beq	a5,a4,2384 <fatfs_compare_names+0x9c>
    2378:	0007c583          	lbu	a1,0(a5)
    237c:	fff78793          	addi	a5,a5,-1
    2380:	04c58663          	beq	a1,a2,23cc <fatfs_compare_names+0xe4>
    2384:	fff40793          	addi	a5,s0,-1
    2388:	00f907b3          	add	a5,s2,a5
    238c:	40878733          	sub	a4,a5,s0
    2390:	02000613          	li	a2,32
    2394:	00078693          	mv	a3,a5
    2398:	00e78863          	beq	a5,a4,23a8 <fatfs_compare_names+0xc0>
    239c:	0007c583          	lbu	a1,0(a5)
    23a0:	fff78793          	addi	a5,a5,-1
    23a4:	02c58863          	beq	a1,a2,23d4 <fatfs_compare_names+0xec>
    23a8:	00000993          	li	s3,0
    23ac:	08941063          	bne	s0,s1,242c <fatfs_compare_names+0x144>
    23b0:	00040613          	mv	a2,s0
    23b4:	00090593          	mv	a1,s2
    23b8:	000a0513          	mv	a0,s4
    23bc:	fffff097          	auipc	ra,0xfffff
    23c0:	18c080e7          	jalr	396(ra) # 1548 <FileString_StrCmpNoCase>
    23c4:	00153993          	seqz	s3,a0
    23c8:	0640006f          	j	242c <fatfs_compare_names+0x144>
    23cc:	414684b3          	sub	s1,a3,s4
    23d0:	fa1ff06f          	j	2370 <fatfs_compare_names+0x88>
    23d4:	41268433          	sub	s0,a3,s2
    23d8:	fbdff06f          	j	2394 <fatfs_compare_names+0xac>
    23dc:	04f50863          	beq	a0,a5,242c <fatfs_compare_names+0x144>
    23e0:	00148a93          	addi	s5,s1,1
    23e4:	015a0ab3          	add	s5,s4,s5
    23e8:	00140b13          	addi	s6,s0,1
    23ec:	000a8513          	mv	a0,s5
    23f0:	fffff097          	auipc	ra,0xfffff
    23f4:	8d8080e7          	jalr	-1832(ra) # cc8 <strlen>
    23f8:	01690b33          	add	s6,s2,s6
    23fc:	00a12623          	sw	a0,12(sp)
    2400:	000b0513          	mv	a0,s6
    2404:	fffff097          	auipc	ra,0xfffff
    2408:	8c4080e7          	jalr	-1852(ra) # cc8 <strlen>
    240c:	00c12603          	lw	a2,12(sp)
    2410:	00000993          	li	s3,0
    2414:	00a61c63          	bne	a2,a0,242c <fatfs_compare_names+0x144>
    2418:	000b0593          	mv	a1,s6
    241c:	000a8513          	mv	a0,s5
    2420:	fffff097          	auipc	ra,0xfffff
    2424:	128080e7          	jalr	296(ra) # 1548 <FileString_StrCmpNoCase>
    2428:	f2050ce3          	beqz	a0,2360 <fatfs_compare_names+0x78>
    242c:	02c12083          	lw	ra,44(sp)
    2430:	02812403          	lw	s0,40(sp)
    2434:	02412483          	lw	s1,36(sp)
    2438:	02012903          	lw	s2,32(sp)
    243c:	01812a03          	lw	s4,24(sp)
    2440:	01412a83          	lw	s5,20(sp)
    2444:	01012b03          	lw	s6,16(sp)
    2448:	00098513          	mv	a0,s3
    244c:	01c12983          	lw	s3,28(sp)
    2450:	03010113          	addi	sp,sp,48
    2454:	00008067          	ret

00002458 <_check_file_open>:
    2458:	fe010113          	addi	sp,sp,-32
    245c:	000057b7          	lui	a5,0x5
    2460:	00812c23          	sw	s0,24(sp)
    2464:	c9c7a403          	lw	s0,-868(a5) # 4c9c <_open_file_list>
    2468:	00912a23          	sw	s1,20(sp)
    246c:	01212823          	sw	s2,16(sp)
    2470:	01312623          	sw	s3,12(sp)
    2474:	00112e23          	sw	ra,28(sp)
    2478:	00050493          	mv	s1,a0
    247c:	01450913          	addi	s2,a0,20
    2480:	11850993          	addi	s3,a0,280
    2484:	02041263          	bnez	s0,24a8 <_check_file_open+0x50>
    2488:	00000513          	li	a0,0
    248c:	01c12083          	lw	ra,28(sp)
    2490:	01812403          	lw	s0,24(sp)
    2494:	01412483          	lw	s1,20(sp)
    2498:	01012903          	lw	s2,16(sp)
    249c:	00c12983          	lw	s3,12(sp)
    24a0:	02010113          	addi	sp,sp,32
    24a4:	00008067          	ret
    24a8:	bc440793          	addi	a5,s0,-1084
    24ac:	02f48663          	beq	s1,a5,24d8 <_check_file_open+0x80>
    24b0:	00090593          	mv	a1,s2
    24b4:	bd840513          	addi	a0,s0,-1064
    24b8:	00000097          	auipc	ra,0x0
    24bc:	e30080e7          	jalr	-464(ra) # 22e8 <fatfs_compare_names>
    24c0:	00050c63          	beqz	a0,24d8 <_check_file_open+0x80>
    24c4:	00098593          	mv	a1,s3
    24c8:	cdc40513          	addi	a0,s0,-804
    24cc:	00000097          	auipc	ra,0x0
    24d0:	e1c080e7          	jalr	-484(ra) # 22e8 <fatfs_compare_names>
    24d4:	00051663          	bnez	a0,24e0 <_check_file_open+0x88>
    24d8:	00442403          	lw	s0,4(s0)
    24dc:	fa9ff06f          	j	2484 <_check_file_open+0x2c>
    24e0:	00100513          	li	a0,1
    24e4:	fa9ff06f          	j	248c <_check_file_open+0x34>

000024e8 <fatfs_get_sfn_display_name>:
    24e8:	00000713          	li	a4,0
    24ec:	00c00613          	li	a2,12
    24f0:	02000813          	li	a6,32
    24f4:	01900893          	li	a7,25
    24f8:	0005c783          	lbu	a5,0(a1)
    24fc:	00078463          	beqz	a5,2504 <fatfs_get_sfn_display_name+0x1c>
    2500:	00c71863          	bne	a4,a2,2510 <fatfs_get_sfn_display_name+0x28>
    2504:	00050023          	sb	zero,0(a0)
    2508:	00100513          	li	a0,1
    250c:	00008067          	ret
    2510:	00158593          	addi	a1,a1,1
    2514:	ff0782e3          	beq	a5,a6,24f8 <fatfs_get_sfn_display_name+0x10>
    2518:	fbf78693          	addi	a3,a5,-65
    251c:	0ff6f693          	zext.b	a3,a3
    2520:	00d8e663          	bltu	a7,a3,252c <fatfs_get_sfn_display_name+0x44>
    2524:	02078793          	addi	a5,a5,32
    2528:	0ff7f793          	zext.b	a5,a5
    252c:	00f50023          	sb	a5,0(a0)
    2530:	00170713          	addi	a4,a4,1
    2534:	00150513          	addi	a0,a0,1
    2538:	fc1ff06f          	j	24f8 <fatfs_get_sfn_display_name+0x10>

0000253c <fatfs_fat_init>:
    253c:	ff010113          	addi	sp,sp,-16
    2540:	00812423          	sw	s0,8(sp)
    2544:	00912223          	sw	s1,4(sp)
    2548:	00112623          	sw	ra,12(sp)
    254c:	fff00793          	li	a5,-1
    2550:	25850493          	addi	s1,a0,600
    2554:	00050413          	mv	s0,a0
    2558:	44f52c23          	sw	a5,1112(a0)
    255c:	24052a23          	sw	zero,596(a0)
    2560:	44052e23          	sw	zero,1116(a0)
    2564:	20000613          	li	a2,512
    2568:	00048513          	mv	a0,s1
    256c:	00000593          	li	a1,0
    2570:	ffffe097          	auipc	ra,0xffffe
    2574:	718080e7          	jalr	1816(ra) # c88 <memset>
    2578:	25442783          	lw	a5,596(s0)
    257c:	00c12083          	lw	ra,12(sp)
    2580:	24942a23          	sw	s1,596(s0)
    2584:	46042023          	sw	zero,1120(s0)
    2588:	46f42223          	sw	a5,1124(s0)
    258c:	00812403          	lw	s0,8(sp)
    2590:	00412483          	lw	s1,4(sp)
    2594:	01010113          	addi	sp,sp,16
    2598:	00008067          	ret

0000259c <fatfs_init>:
    259c:	fc010113          	addi	sp,sp,-64
    25a0:	02812c23          	sw	s0,56(sp)
    25a4:	02112e23          	sw	ra,60(sp)
    25a8:	02912a23          	sw	s1,52(sp)
    25ac:	03212823          	sw	s2,48(sp)
    25b0:	03312623          	sw	s3,44(sp)
    25b4:	03412423          	sw	s4,40(sp)
    25b8:	03512223          	sw	s5,36(sp)
    25bc:	03612023          	sw	s6,32(sp)
    25c0:	01712e23          	sw	s7,28(sp)
    25c4:	fff00793          	li	a5,-1
    25c8:	24f52223          	sw	a5,580(a0)
    25cc:	24052423          	sw	zero,584(a0)
    25d0:	02052223          	sw	zero,36(a0)
    25d4:	00050413          	mv	s0,a0
    25d8:	00000097          	auipc	ra,0x0
    25dc:	f64080e7          	jalr	-156(ra) # 253c <fatfs_fat_init>
    25e0:	03442783          	lw	a5,52(s0)
    25e4:	02079a63          	bnez	a5,2618 <fatfs_init+0x7c>
    25e8:	fff00513          	li	a0,-1
    25ec:	03c12083          	lw	ra,60(sp)
    25f0:	03812403          	lw	s0,56(sp)
    25f4:	03412483          	lw	s1,52(sp)
    25f8:	03012903          	lw	s2,48(sp)
    25fc:	02c12983          	lw	s3,44(sp)
    2600:	02812a03          	lw	s4,40(sp)
    2604:	02412a83          	lw	s5,36(sp)
    2608:	02012b03          	lw	s6,32(sp)
    260c:	01c12b83          	lw	s7,28(sp)
    2610:	04010113          	addi	sp,sp,64
    2614:	00008067          	ret
    2618:	04440593          	addi	a1,s0,68
    261c:	00100613          	li	a2,1
    2620:	00000513          	li	a0,0
    2624:	00b12623          	sw	a1,12(sp)
    2628:	000780e7          	jalr	a5
    262c:	fa050ee3          	beqz	a0,25e8 <fatfs_init+0x4c>
    2630:	24042703          	lw	a4,576(s0)
    2634:	ffff07b7          	lui	a5,0xffff0
    2638:	00c12583          	lw	a1,12(sp)
    263c:	00e7f7b3          	and	a5,a5,a4
    2640:	aa550737          	lui	a4,0xaa550
    2644:	00e78663          	beq	a5,a4,2650 <fatfs_init+0xb4>
    2648:	ffd00513          	li	a0,-3
    264c:	fa1ff06f          	j	25ec <fatfs_init+0x50>
    2650:	24344783          	lbu	a5,579(s0)
    2654:	24244703          	lbu	a4,578(s0)
    2658:	ffc00513          	li	a0,-4
    265c:	00879793          	slli	a5,a5,0x8
    2660:	00e787b3          	add	a5,a5,a4
    2664:	0000b737          	lui	a4,0xb
    2668:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0x14a9>
    266c:	f8e790e3          	bne	a5,a4,25ec <fatfs_init+0x50>
    2670:	20644783          	lbu	a5,518(s0)
    2674:	00600713          	li	a4,6
    2678:	04f76063          	bltu	a4,a5,26b8 <fatfs_init+0x11c>
    267c:	00400713          	li	a4,4
    2680:	00f76663          	bltu	a4,a5,268c <fatfs_init+0xf0>
    2684:	00000513          	li	a0,0
    2688:	04078263          	beqz	a5,26cc <fatfs_init+0x130>
    268c:	20d44503          	lbu	a0,525(s0)
    2690:	20c44783          	lbu	a5,524(s0)
    2694:	01851513          	slli	a0,a0,0x18
    2698:	01079793          	slli	a5,a5,0x10
    269c:	00f50533          	add	a0,a0,a5
    26a0:	20a44783          	lbu	a5,522(s0)
    26a4:	00f50533          	add	a0,a0,a5
    26a8:	20b44783          	lbu	a5,523(s0)
    26ac:	00879793          	slli	a5,a5,0x8
    26b0:	00f50533          	add	a0,a0,a5
    26b4:	0180006f          	j	26cc <fatfs_init+0x130>
    26b8:	00c00713          	li	a4,12
    26bc:	1ef76a63          	bltu	a4,a5,28b0 <fatfs_init+0x314>
    26c0:	00a00713          	li	a4,10
    26c4:	00000513          	li	a0,0
    26c8:	fcf762e3          	bltu	a4,a5,268c <fatfs_init+0xf0>
    26cc:	03442783          	lw	a5,52(s0)
    26d0:	00a42e23          	sw	a0,28(s0)
    26d4:	00100613          	li	a2,1
    26d8:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    26dc:	f00506e3          	beqz	a0,25e8 <fatfs_init+0x4c>
    26e0:	05044783          	lbu	a5,80(s0)
    26e4:	04f44703          	lbu	a4,79(s0)
    26e8:	ffe00513          	li	a0,-2
    26ec:	00879793          	slli	a5,a5,0x8
    26f0:	00e787b3          	add	a5,a5,a4
    26f4:	20000713          	li	a4,512
    26f8:	eee79ae3          	bne	a5,a4,25ec <fatfs_init+0x50>
    26fc:	05644483          	lbu	s1,86(s0)
    2700:	05544b83          	lbu	s7,85(s0)
    2704:	05344903          	lbu	s2,83(s0)
    2708:	05244a03          	lbu	s4,82(s0)
    270c:	05b44583          	lbu	a1,91(s0)
    2710:	00849493          	slli	s1,s1,0x8
    2714:	05144983          	lbu	s3,81(s0)
    2718:	05a44783          	lbu	a5,90(s0)
    271c:	01748ab3          	add	s5,s1,s7
    2720:	00891913          	slli	s2,s2,0x8
    2724:	010a9a93          	slli	s5,s5,0x10
    2728:	01490b33          	add	s6,s2,s4
    272c:	010ada93          	srli	s5,s5,0x10
    2730:	00859593          	slli	a1,a1,0x8
    2734:	010b1b13          	slli	s6,s6,0x10
    2738:	01340023          	sb	s3,0(s0)
    273c:	03541423          	sh	s5,40(s0)
    2740:	00f585b3          	add	a1,a1,a5
    2744:	05444503          	lbu	a0,84(s0)
    2748:	010b5b13          	srli	s6,s6,0x10
    274c:	02059663          	bnez	a1,2778 <fatfs_init+0x1dc>
    2750:	06b44583          	lbu	a1,107(s0)
    2754:	06a44783          	lbu	a5,106(s0)
    2758:	01859593          	slli	a1,a1,0x18
    275c:	01079793          	slli	a5,a5,0x10
    2760:	00f585b3          	add	a1,a1,a5
    2764:	06844783          	lbu	a5,104(s0)
    2768:	00f585b3          	add	a1,a1,a5
    276c:	06944783          	lbu	a5,105(s0)
    2770:	00879793          	slli	a5,a5,0x8
    2774:	00f585b3          	add	a1,a1,a5
    2778:	07344783          	lbu	a5,115(s0)
    277c:	07244703          	lbu	a4,114(s0)
    2780:	02b42023          	sw	a1,32(s0)
    2784:	01879793          	slli	a5,a5,0x18
    2788:	01071713          	slli	a4,a4,0x10
    278c:	00e787b3          	add	a5,a5,a4
    2790:	07044703          	lbu	a4,112(s0)
    2794:	005a9a93          	slli	s5,s5,0x5
    2798:	1ffa8a93          	addi	s5,s5,511
    279c:	00e787b3          	add	a5,a5,a4
    27a0:	07144703          	lbu	a4,113(s0)
    27a4:	409ada93          	srai	s5,s5,0x9
    27a8:	00871713          	slli	a4,a4,0x8
    27ac:	00e787b3          	add	a5,a5,a4
    27b0:	00f42423          	sw	a5,8(s0)
    27b4:	07544783          	lbu	a5,117(s0)
    27b8:	07444703          	lbu	a4,116(s0)
    27bc:	00879793          	slli	a5,a5,0x8
    27c0:	00e787b3          	add	a5,a5,a4
    27c4:	00f41c23          	sh	a5,24(s0)
    27c8:	fffff097          	auipc	ra,0xfffff
    27cc:	ce8080e7          	jalr	-792(ra) # 14b0 <__mulsi3>
    27d0:	00ab07b3          	add	a5,s6,a0
    27d4:	00f42623          	sw	a5,12(s0)
    27d8:	01c42783          	lw	a5,28(s0)
    27dc:	24244703          	lbu	a4,578(s0)
    27e0:	01542823          	sw	s5,16(s0)
    27e4:	00fb0b33          	add	s6,s6,a5
    27e8:	24344783          	lbu	a5,579(s0)
    27ec:	01642a23          	sw	s6,20(s0)
    27f0:	01650b33          	add	s6,a0,s6
    27f4:	00879793          	slli	a5,a5,0x8
    27f8:	00e787b3          	add	a5,a5,a4
    27fc:	0000b737          	lui	a4,0xb
    2800:	01642223          	sw	s6,4(s0)
    2804:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0x14a9>
    2808:	e4e790e3          	bne	a5,a4,2648 <fatfs_init+0xac>
    280c:	05844783          	lbu	a5,88(s0)
    2810:	05744703          	lbu	a4,87(s0)
    2814:	017484b3          	add	s1,s1,s7
    2818:	00549493          	slli	s1,s1,0x5
    281c:	00879793          	slli	a5,a5,0x8
    2820:	1ff48493          	addi	s1,s1,511
    2824:	00e787b3          	add	a5,a5,a4
    2828:	4094d493          	srai	s1,s1,0x9
    282c:	02079663          	bnez	a5,2858 <fatfs_init+0x2bc>
    2830:	06744783          	lbu	a5,103(s0)
    2834:	06644703          	lbu	a4,102(s0)
    2838:	01879793          	slli	a5,a5,0x18
    283c:	01071713          	slli	a4,a4,0x10
    2840:	00e787b3          	add	a5,a5,a4
    2844:	06444703          	lbu	a4,100(s0)
    2848:	00e787b3          	add	a5,a5,a4
    284c:	06544703          	lbu	a4,101(s0)
    2850:	00871713          	slli	a4,a4,0x8
    2854:	00e787b3          	add	a5,a5,a4
    2858:	01490933          	add	s2,s2,s4
    285c:	00990933          	add	s2,s2,s1
    2860:	00a90533          	add	a0,s2,a0
    2864:	40a787b3          	sub	a5,a5,a0
    2868:	ffb00513          	li	a0,-5
    286c:	d80980e3          	beqz	s3,25ec <fatfs_init+0x50>
    2870:	00078513          	mv	a0,a5
    2874:	00098593          	mv	a1,s3
    2878:	ffffe097          	auipc	ra,0xffffe
    287c:	364080e7          	jalr	868(ra) # bdc <__udivsi3>
    2880:	00001737          	lui	a4,0x1
    2884:	00050793          	mv	a5,a0
    2888:	ff470713          	addi	a4,a4,-12 # ff4 <display_set_cursor+0x10>
    288c:	ffb00513          	li	a0,-5
    2890:	d4f77ee3          	bgeu	a4,a5,25ec <fatfs_init+0x50>
    2894:	00010737          	lui	a4,0x10
    2898:	ff470713          	addi	a4,a4,-12 # fff4 <_fs+0x6a48>
    289c:	02f76663          	bltu	a4,a5,28c8 <fatfs_init+0x32c>
    28a0:	00042423          	sw	zero,8(s0)
    28a4:	02042823          	sw	zero,48(s0)
    28a8:	00000513          	li	a0,0
    28ac:	d41ff06f          	j	25ec <fatfs_init+0x50>
    28b0:	ff278793          	addi	a5,a5,-14
    28b4:	0ff7f793          	zext.b	a5,a5
    28b8:	00100713          	li	a4,1
    28bc:	00000513          	li	a0,0
    28c0:	dcf776e3          	bgeu	a4,a5,268c <fatfs_init+0xf0>
    28c4:	e09ff06f          	j	26cc <fatfs_init+0x130>
    28c8:	00100793          	li	a5,1
    28cc:	02f42823          	sw	a5,48(s0)
    28d0:	fd9ff06f          	j	28a8 <fatfs_init+0x30c>

000028d4 <fl_attach_media>:
    28d4:	000057b7          	lui	a5,0x5
    28d8:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    28dc:	ff010113          	addi	sp,sp,-16
    28e0:	00812423          	sw	s0,8(sp)
    28e4:	00912223          	sw	s1,4(sp)
    28e8:	00112623          	sw	ra,12(sp)
    28ec:	00050493          	mv	s1,a0
    28f0:	00058413          	mv	s0,a1
    28f4:	00079663          	bnez	a5,2900 <fl_attach_media+0x2c>
    28f8:	fffff097          	auipc	ra,0xfffff
    28fc:	054080e7          	jalr	84(ra) # 194c <fl_init>
    2900:	00009537          	lui	a0,0x9
    2904:	5ac50793          	addi	a5,a0,1452 # 95ac <_fs>
    2908:	5ac50513          	addi	a0,a0,1452
    290c:	0287ac23          	sw	s0,56(a5)
    2910:	0297aa23          	sw	s1,52(a5)
    2914:	00000097          	auipc	ra,0x0
    2918:	c88080e7          	jalr	-888(ra) # 259c <fatfs_init>
    291c:	00050413          	mv	s0,a0
    2920:	02050863          	beqz	a0,2950 <fl_attach_media+0x7c>
    2924:	00050593          	mv	a1,a0
    2928:	00005537          	lui	a0,0x5
    292c:	c0850513          	addi	a0,a0,-1016 # 4c08 <font+0x1f4>
    2930:	fffff097          	auipc	ra,0xfffff
    2934:	a44080e7          	jalr	-1468(ra) # 1374 <printf>
    2938:	00c12083          	lw	ra,12(sp)
    293c:	00040513          	mv	a0,s0
    2940:	00812403          	lw	s0,8(sp)
    2944:	00412483          	lw	s1,4(sp)
    2948:	01010113          	addi	sp,sp,16
    294c:	00008067          	ret
    2950:	000057b7          	lui	a5,0x5
    2954:	00100713          	li	a4,1
    2958:	c8e7a823          	sw	a4,-880(a5) # 4c90 <_filelib_valid>
    295c:	fddff06f          	j	2938 <fl_attach_media+0x64>

00002960 <fatfs_fat_purge>:
    2960:	ff010113          	addi	sp,sp,-16
    2964:	00812423          	sw	s0,8(sp)
    2968:	25452403          	lw	s0,596(a0)
    296c:	00912223          	sw	s1,4(sp)
    2970:	00112623          	sw	ra,12(sp)
    2974:	00050493          	mv	s1,a0
    2978:	00041663          	bnez	s0,2984 <fatfs_fat_purge+0x24>
    297c:	00100513          	li	a0,1
    2980:	0280006f          	j	29a8 <fatfs_fat_purge+0x48>
    2984:	20442783          	lw	a5,516(s0)
    2988:	00079663          	bnez	a5,2994 <fatfs_fat_purge+0x34>
    298c:	20c42403          	lw	s0,524(s0)
    2990:	fe9ff06f          	j	2978 <fatfs_fat_purge+0x18>
    2994:	00040593          	mv	a1,s0
    2998:	00048513          	mv	a0,s1
    299c:	fffff097          	auipc	ra,0xfffff
    29a0:	c48080e7          	jalr	-952(ra) # 15e4 <fatfs_fat_writeback>
    29a4:	fe0514e3          	bnez	a0,298c <fatfs_fat_purge+0x2c>
    29a8:	00c12083          	lw	ra,12(sp)
    29ac:	00812403          	lw	s0,8(sp)
    29b0:	00412483          	lw	s1,4(sp)
    29b4:	01010113          	addi	sp,sp,16
    29b8:	00008067          	ret

000029bc <fatfs_find_next_cluster>:
    29bc:	ff010113          	addi	sp,sp,-16
    29c0:	00812423          	sw	s0,8(sp)
    29c4:	01212023          	sw	s2,0(sp)
    29c8:	00112623          	sw	ra,12(sp)
    29cc:	00912223          	sw	s1,4(sp)
    29d0:	00050913          	mv	s2,a0
    29d4:	00200413          	li	s0,2
    29d8:	00058463          	beqz	a1,29e0 <fatfs_find_next_cluster+0x24>
    29dc:	00058413          	mv	s0,a1
    29e0:	03092783          	lw	a5,48(s2)
    29e4:	00745493          	srli	s1,s0,0x7
    29e8:	00079463          	bnez	a5,29f0 <fatfs_find_next_cluster+0x34>
    29ec:	00845493          	srli	s1,s0,0x8
    29f0:	01492583          	lw	a1,20(s2)
    29f4:	00090513          	mv	a0,s2
    29f8:	00b485b3          	add	a1,s1,a1
    29fc:	fffff097          	auipc	ra,0xfffff
    2a00:	c6c080e7          	jalr	-916(ra) # 1668 <fatfs_fat_read_sector>
    2a04:	00050793          	mv	a5,a0
    2a08:	fff00513          	li	a0,-1
    2a0c:	04078a63          	beqz	a5,2a60 <fatfs_find_next_cluster+0xa4>
    2a10:	03092703          	lw	a4,48(s2)
    2a14:	2087a783          	lw	a5,520(a5)
    2a18:	06071063          	bnez	a4,2a78 <fatfs_find_next_cluster+0xbc>
    2a1c:	00849493          	slli	s1,s1,0x8
    2a20:	40940433          	sub	s0,s0,s1
    2a24:	00010737          	lui	a4,0x10
    2a28:	00141413          	slli	s0,s0,0x1
    2a2c:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6a53>
    2a30:	00e47433          	and	s0,s0,a4
    2a34:	008787b3          	add	a5,a5,s0
    2a38:	0017c503          	lbu	a0,1(a5)
    2a3c:	0007c783          	lbu	a5,0(a5)
    2a40:	00851513          	slli	a0,a0,0x8
    2a44:	00f50533          	add	a0,a0,a5
    2a48:	ffff07b7          	lui	a5,0xffff0
    2a4c:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2a50:	00f507b3          	add	a5,a0,a5
    2a54:	00700713          	li	a4,7
    2a58:	00f76463          	bltu	a4,a5,2a60 <fatfs_find_next_cluster+0xa4>
    2a5c:	fff00513          	li	a0,-1
    2a60:	00c12083          	lw	ra,12(sp)
    2a64:	00812403          	lw	s0,8(sp)
    2a68:	00412483          	lw	s1,4(sp)
    2a6c:	00012903          	lw	s2,0(sp)
    2a70:	01010113          	addi	sp,sp,16
    2a74:	00008067          	ret
    2a78:	00749493          	slli	s1,s1,0x7
    2a7c:	40940433          	sub	s0,s0,s1
    2a80:	00010737          	lui	a4,0x10
    2a84:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6a53>
    2a88:	00241413          	slli	s0,s0,0x2
    2a8c:	00e47433          	and	s0,s0,a4
    2a90:	008787b3          	add	a5,a5,s0
    2a94:	0037c503          	lbu	a0,3(a5)
    2a98:	0027c703          	lbu	a4,2(a5)
    2a9c:	01851513          	slli	a0,a0,0x18
    2aa0:	01071713          	slli	a4,a4,0x10
    2aa4:	00e50533          	add	a0,a0,a4
    2aa8:	0007c703          	lbu	a4,0(a5)
    2aac:	0017c783          	lbu	a5,1(a5)
    2ab0:	00e50533          	add	a0,a0,a4
    2ab4:	00879793          	slli	a5,a5,0x8
    2ab8:	00f50533          	add	a0,a0,a5
    2abc:	00451513          	slli	a0,a0,0x4
    2ac0:	00455513          	srli	a0,a0,0x4
    2ac4:	f00007b7          	lui	a5,0xf0000
    2ac8:	f85ff06f          	j	2a4c <fatfs_find_next_cluster+0x90>

00002acc <fatfs_sector_reader>:
    2acc:	03052783          	lw	a5,48(a0)
    2ad0:	fd010113          	addi	sp,sp,-48
    2ad4:	02812423          	sw	s0,40(sp)
    2ad8:	03212023          	sw	s2,32(sp)
    2adc:	01312e23          	sw	s3,28(sp)
    2ae0:	02112623          	sw	ra,44(sp)
    2ae4:	02912223          	sw	s1,36(sp)
    2ae8:	01412c23          	sw	s4,24(sp)
    2aec:	01512a23          	sw	s5,20(sp)
    2af0:	00f5e7b3          	or	a5,a1,a5
    2af4:	00050413          	mv	s0,a0
    2af8:	00060913          	mv	s2,a2
    2afc:	00068993          	mv	s3,a3
    2b00:	06079c63          	bnez	a5,2b78 <fatfs_sector_reader+0xac>
    2b04:	01052783          	lw	a5,16(a0)
    2b08:	02f66663          	bltu	a2,a5,2b34 <fatfs_sector_reader+0x68>
    2b0c:	00000513          	li	a0,0
    2b10:	02c12083          	lw	ra,44(sp)
    2b14:	02812403          	lw	s0,40(sp)
    2b18:	02412483          	lw	s1,36(sp)
    2b1c:	02012903          	lw	s2,32(sp)
    2b20:	01c12983          	lw	s3,28(sp)
    2b24:	01812a03          	lw	s4,24(sp)
    2b28:	01412a83          	lw	s5,20(sp)
    2b2c:	03010113          	addi	sp,sp,48
    2b30:	00008067          	ret
    2b34:	01c52503          	lw	a0,28(a0)
    2b38:	00c42783          	lw	a5,12(s0)
    2b3c:	00f50533          	add	a0,a0,a5
    2b40:	01250533          	add	a0,a0,s2
    2b44:	0a098263          	beqz	s3,2be8 <fatfs_sector_reader+0x11c>
    2b48:	03442783          	lw	a5,52(s0)
    2b4c:	00100613          	li	a2,1
    2b50:	00098593          	mv	a1,s3
    2b54:	02812403          	lw	s0,40(sp)
    2b58:	02c12083          	lw	ra,44(sp)
    2b5c:	02412483          	lw	s1,36(sp)
    2b60:	02012903          	lw	s2,32(sp)
    2b64:	01c12983          	lw	s3,28(sp)
    2b68:	01812a03          	lw	s4,24(sp)
    2b6c:	01412a83          	lw	s5,20(sp)
    2b70:	03010113          	addi	sp,sp,48
    2b74:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2b78:	00058493          	mv	s1,a1
    2b7c:	00054583          	lbu	a1,0(a0)
    2b80:	00060513          	mv	a0,a2
    2b84:	00000a93          	li	s5,0
    2b88:	00b12623          	sw	a1,12(sp)
    2b8c:	ffffe097          	auipc	ra,0xffffe
    2b90:	050080e7          	jalr	80(ra) # bdc <__udivsi3>
    2b94:	00c12583          	lw	a1,12(sp)
    2b98:	00050a13          	mv	s4,a0
    2b9c:	00090513          	mv	a0,s2
    2ba0:	ffffe097          	auipc	ra,0xffffe
    2ba4:	084080e7          	jalr	132(ra) # c24 <__umodsi3>
    2ba8:	00050913          	mv	s2,a0
    2bac:	034a9063          	bne	s5,s4,2bcc <fatfs_sector_reader+0x100>
    2bb0:	fff00793          	li	a5,-1
    2bb4:	f4f48ce3          	beq	s1,a5,2b0c <fatfs_sector_reader+0x40>
    2bb8:	00048593          	mv	a1,s1
    2bbc:	00040513          	mv	a0,s0
    2bc0:	fffff097          	auipc	ra,0xfffff
    2bc4:	c50080e7          	jalr	-944(ra) # 1810 <fatfs_lba_of_cluster>
    2bc8:	f79ff06f          	j	2b40 <fatfs_sector_reader+0x74>
    2bcc:	00048593          	mv	a1,s1
    2bd0:	00040513          	mv	a0,s0
    2bd4:	00000097          	auipc	ra,0x0
    2bd8:	de8080e7          	jalr	-536(ra) # 29bc <fatfs_find_next_cluster>
    2bdc:	00050493          	mv	s1,a0
    2be0:	001a8a93          	addi	s5,s5,1
    2be4:	fc9ff06f          	j	2bac <fatfs_sector_reader+0xe0>
    2be8:	24442783          	lw	a5,580(s0)
    2bec:	00a78c63          	beq	a5,a0,2c04 <fatfs_sector_reader+0x138>
    2bf0:	03442783          	lw	a5,52(s0)
    2bf4:	24a42223          	sw	a0,580(s0)
    2bf8:	00100613          	li	a2,1
    2bfc:	04440593          	addi	a1,s0,68
    2c00:	f55ff06f          	j	2b54 <fatfs_sector_reader+0x88>
    2c04:	00100513          	li	a0,1
    2c08:	f09ff06f          	j	2b10 <fatfs_sector_reader+0x44>

00002c0c <fatfs_get_file_entry>:
    2c0c:	eb010113          	addi	sp,sp,-336
    2c10:	14812423          	sw	s0,328(sp)
    2c14:	01810413          	addi	s0,sp,24
    2c18:	14912223          	sw	s1,324(sp)
    2c1c:	15212023          	sw	s2,320(sp)
    2c20:	13312e23          	sw	s3,316(sp)
    2c24:	13412c23          	sw	s4,312(sp)
    2c28:	13512a23          	sw	s5,308(sp)
    2c2c:	13612823          	sw	s6,304(sp)
    2c30:	14112623          	sw	ra,332(sp)
    2c34:	13712623          	sw	s7,300(sp)
    2c38:	13812423          	sw	s8,296(sp)
    2c3c:	13912223          	sw	s9,292(sp)
    2c40:	13a12023          	sw	s10,288(sp)
    2c44:	00050493          	mv	s1,a0
    2c48:	00058a93          	mv	s5,a1
    2c4c:	00060913          	mv	s2,a2
    2c50:	00068993          	mv	s3,a3
    2c54:	10010ea3          	sb	zero,285(sp)
    2c58:	11c10a13          	addi	s4,sp,284
    2c5c:	00040b13          	mv	s6,s0
    2c60:	00040513          	mv	a0,s0
    2c64:	00d00613          	li	a2,13
    2c68:	00000593          	li	a1,0
    2c6c:	00d40413          	addi	s0,s0,13
    2c70:	ffffe097          	auipc	ra,0xffffe
    2c74:	018080e7          	jalr	24(ra) # c88 <memset>
    2c78:	ff4414e3          	bne	s0,s4,2c60 <fatfs_get_file_entry+0x54>
    2c7c:	00000a13          	li	s4,0
    2c80:	24448c13          	addi	s8,s1,580
    2c84:	00800c93          	li	s9,8
    2c88:	02000b93          	li	s7,32
    2c8c:	00000693          	li	a3,0
    2c90:	000a0613          	mv	a2,s4
    2c94:	000a8593          	mv	a1,s5
    2c98:	00048513          	mv	a0,s1
    2c9c:	00000097          	auipc	ra,0x0
    2ca0:	e30080e7          	jalr	-464(ra) # 2acc <fatfs_sector_reader>
    2ca4:	16050463          	beqz	a0,2e0c <fatfs_get_file_entry+0x200>
    2ca8:	04448413          	addi	s0,s1,68
    2cac:	02e00d13          	li	s10,46
    2cb0:	00040513          	mv	a0,s0
    2cb4:	fffff097          	auipc	ra,0xfffff
    2cb8:	e18080e7          	jalr	-488(ra) # 1acc <fatfs_entry_lfn_text>
    2cbc:	02050263          	beqz	a0,2ce0 <fatfs_get_file_entry+0xd4>
    2cc0:	00040593          	mv	a1,s0
    2cc4:	000b0513          	mv	a0,s6
    2cc8:	fffff097          	auipc	ra,0xfffff
    2ccc:	cfc080e7          	jalr	-772(ra) # 19c4 <fatfs_lfn_cache_entry>
    2cd0:	02040413          	addi	s0,s0,32
    2cd4:	fd841ee3          	bne	s0,s8,2cb0 <fatfs_get_file_entry+0xa4>
    2cd8:	001a0a13          	addi	s4,s4,1
    2cdc:	fb1ff06f          	j	2c8c <fatfs_get_file_entry+0x80>
    2ce0:	00040513          	mv	a0,s0
    2ce4:	fffff097          	auipc	ra,0xfffff
    2ce8:	dfc080e7          	jalr	-516(ra) # 1ae0 <fatfs_entry_lfn_invalid>
    2cec:	00050663          	beqz	a0,2cf8 <fatfs_get_file_entry+0xec>
    2cf0:	10010ea3          	sb	zero,285(sp)
    2cf4:	fddff06f          	j	2cd0 <fatfs_get_file_entry+0xc4>
    2cf8:	00040593          	mv	a1,s0
    2cfc:	000b0513          	mv	a0,s6
    2d00:	fffff097          	auipc	ra,0xfffff
    2d04:	e18080e7          	jalr	-488(ra) # 1b18 <fatfs_entry_lfn_exists>
    2d08:	06050863          	beqz	a0,2d78 <fatfs_get_file_entry+0x16c>
    2d0c:	000b0513          	mv	a0,s6
    2d10:	fffff097          	auipc	ra,0xfffff
    2d14:	d80080e7          	jalr	-640(ra) # 1a90 <fatfs_lfn_cache_get>
    2d18:	00090593          	mv	a1,s2
    2d1c:	fffff097          	auipc	ra,0xfffff
    2d20:	5cc080e7          	jalr	1484(ra) # 22e8 <fatfs_compare_names>
    2d24:	fc0506e3          	beqz	a0,2cf0 <fatfs_get_file_entry+0xe4>
    2d28:	02000613          	li	a2,32
    2d2c:	00040593          	mv	a1,s0
    2d30:	00098513          	mv	a0,s3
    2d34:	ffffe097          	auipc	ra,0xffffe
    2d38:	f70080e7          	jalr	-144(ra) # ca4 <memcpy>
    2d3c:	00100513          	li	a0,1
    2d40:	14c12083          	lw	ra,332(sp)
    2d44:	14812403          	lw	s0,328(sp)
    2d48:	14412483          	lw	s1,324(sp)
    2d4c:	14012903          	lw	s2,320(sp)
    2d50:	13c12983          	lw	s3,316(sp)
    2d54:	13812a03          	lw	s4,312(sp)
    2d58:	13412a83          	lw	s5,308(sp)
    2d5c:	13012b03          	lw	s6,304(sp)
    2d60:	12c12b83          	lw	s7,300(sp)
    2d64:	12812c03          	lw	s8,296(sp)
    2d68:	12412c83          	lw	s9,292(sp)
    2d6c:	12012d03          	lw	s10,288(sp)
    2d70:	15010113          	addi	sp,sp,336
    2d74:	00008067          	ret
    2d78:	00040513          	mv	a0,s0
    2d7c:	fffff097          	auipc	ra,0xfffff
    2d80:	de4080e7          	jalr	-540(ra) # 1b60 <fatfs_entry_sfn_only>
    2d84:	f40506e3          	beqz	a0,2cd0 <fatfs_get_file_entry+0xc4>
    2d88:	00d00613          	li	a2,13
    2d8c:	00000593          	li	a1,0
    2d90:	00810513          	addi	a0,sp,8
    2d94:	ffffe097          	auipc	ra,0xffffe
    2d98:	ef4080e7          	jalr	-268(ra) # c88 <memset>
    2d9c:	00000793          	li	a5,0
    2da0:	00f406b3          	add	a3,s0,a5
    2da4:	0006c683          	lbu	a3,0(a3)
    2da8:	00810713          	addi	a4,sp,8
    2dac:	00f70733          	add	a4,a4,a5
    2db0:	00d70023          	sb	a3,0(a4)
    2db4:	00178793          	addi	a5,a5,1
    2db8:	ff9794e3          	bne	a5,s9,2da0 <fatfs_get_file_entry+0x194>
    2dbc:	00844783          	lbu	a5,8(s0)
    2dc0:	00944683          	lbu	a3,9(s0)
    2dc4:	00100713          	li	a4,1
    2dc8:	00f108a3          	sb	a5,17(sp)
    2dcc:	00d10923          	sb	a3,18(sp)
    2dd0:	01769663          	bne	a3,s7,2ddc <fatfs_get_file_entry+0x1d0>
    2dd4:	fe078793          	addi	a5,a5,-32
    2dd8:	00f03733          	snez	a4,a5
    2ddc:	00a44783          	lbu	a5,10(s0)
    2de0:	00f109a3          	sb	a5,19(sp)
    2de4:	01779463          	bne	a5,s7,2dec <fatfs_get_file_entry+0x1e0>
    2de8:	00070a63          	beqz	a4,2dfc <fatfs_get_file_entry+0x1f0>
    2dec:	00814703          	lbu	a4,8(sp)
    2df0:	02000793          	li	a5,32
    2df4:	01a70463          	beq	a4,s10,2dfc <fatfs_get_file_entry+0x1f0>
    2df8:	02e00793          	li	a5,46
    2dfc:	00f10823          	sb	a5,16(sp)
    2e00:	00090593          	mv	a1,s2
    2e04:	00810513          	addi	a0,sp,8
    2e08:	f15ff06f          	j	2d1c <fatfs_get_file_entry+0x110>
    2e0c:	00000513          	li	a0,0
    2e10:	f31ff06f          	j	2d40 <fatfs_get_file_entry+0x134>

00002e14 <_open_directory>:
    2e14:	eb010113          	addi	sp,sp,-336
    2e18:	13512a23          	sw	s5,308(sp)
    2e1c:	00009ab7          	lui	s5,0x9
    2e20:	5aca8793          	addi	a5,s5,1452 # 95ac <_fs>
    2e24:	14812423          	sw	s0,328(sp)
    2e28:	14912223          	sw	s1,324(sp)
    2e2c:	15212023          	sw	s2,320(sp)
    2e30:	13312e23          	sw	s3,316(sp)
    2e34:	13412c23          	sw	s4,312(sp)
    2e38:	13612823          	sw	s6,304(sp)
    2e3c:	0087a403          	lw	s0,8(a5)
    2e40:	14112623          	sw	ra,332(sp)
    2e44:	00050a13          	mv	s4,a0
    2e48:	00058913          	mv	s2,a1
    2e4c:	fffff097          	auipc	ra,0xfffff
    2e50:	254080e7          	jalr	596(ra) # 20a0 <fatfs_total_path_levels>
    2e54:	00050993          	mv	s3,a0
    2e58:	00000493          	li	s1,0
    2e5c:	fff00b13          	li	s6,-1
    2e60:	0099d863          	bge	s3,s1,2e70 <_open_directory+0x5c>
    2e64:	00892023          	sw	s0,0(s2)
    2e68:	00100513          	li	a0,1
    2e6c:	0240006f          	j	2e90 <_open_directory+0x7c>
    2e70:	10400693          	li	a3,260
    2e74:	02c10613          	addi	a2,sp,44
    2e78:	00048593          	mv	a1,s1
    2e7c:	000a0513          	mv	a0,s4
    2e80:	fffff097          	auipc	ra,0xfffff
    2e84:	294080e7          	jalr	660(ra) # 2114 <fatfs_get_substring>
    2e88:	03651863          	bne	a0,s6,2eb8 <_open_directory+0xa4>
    2e8c:	00000513          	li	a0,0
    2e90:	14c12083          	lw	ra,332(sp)
    2e94:	14812403          	lw	s0,328(sp)
    2e98:	14412483          	lw	s1,324(sp)
    2e9c:	14012903          	lw	s2,320(sp)
    2ea0:	13c12983          	lw	s3,316(sp)
    2ea4:	13812a03          	lw	s4,312(sp)
    2ea8:	13412a83          	lw	s5,308(sp)
    2eac:	13012b03          	lw	s6,304(sp)
    2eb0:	15010113          	addi	sp,sp,336
    2eb4:	00008067          	ret
    2eb8:	00c10693          	addi	a3,sp,12
    2ebc:	02c10613          	addi	a2,sp,44
    2ec0:	00040593          	mv	a1,s0
    2ec4:	5aca8513          	addi	a0,s5,1452
    2ec8:	00000097          	auipc	ra,0x0
    2ecc:	d44080e7          	jalr	-700(ra) # 2c0c <fatfs_get_file_entry>
    2ed0:	fa050ee3          	beqz	a0,2e8c <_open_directory+0x78>
    2ed4:	00c10513          	addi	a0,sp,12
    2ed8:	fffff097          	auipc	ra,0xfffff
    2edc:	cc4080e7          	jalr	-828(ra) # 1b9c <fatfs_entry_is_dir>
    2ee0:	fa0506e3          	beqz	a0,2e8c <_open_directory+0x78>
    2ee4:	02015403          	lhu	s0,32(sp)
    2ee8:	02615783          	lhu	a5,38(sp)
    2eec:	00148493          	addi	s1,s1,1
    2ef0:	01041413          	slli	s0,s0,0x10
    2ef4:	00f40433          	add	s0,s0,a5
    2ef8:	f69ff06f          	j	2e60 <_open_directory+0x4c>

00002efc <fl_opendir>:
    2efc:	fe010113          	addi	sp,sp,-32
    2f00:	fff00793          	li	a5,-1
    2f04:	00f12623          	sw	a5,12(sp)
    2f08:	000057b7          	lui	a5,0x5
    2f0c:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    2f10:	00812c23          	sw	s0,24(sp)
    2f14:	01212823          	sw	s2,16(sp)
    2f18:	00112e23          	sw	ra,28(sp)
    2f1c:	00912a23          	sw	s1,20(sp)
    2f20:	00050913          	mv	s2,a0
    2f24:	00058413          	mv	s0,a1
    2f28:	00079663          	bnez	a5,2f34 <fl_opendir+0x38>
    2f2c:	fffff097          	auipc	ra,0xfffff
    2f30:	a20080e7          	jalr	-1504(ra) # 194c <fl_init>
    2f34:	000094b7          	lui	s1,0x9
    2f38:	5ac48793          	addi	a5,s1,1452 # 95ac <_fs>
    2f3c:	03c7a783          	lw	a5,60(a5)
    2f40:	5ac48493          	addi	s1,s1,1452
    2f44:	00078463          	beqz	a5,2f4c <fl_opendir+0x50>
    2f48:	000780e7          	jalr	a5
    2f4c:	00090513          	mv	a0,s2
    2f50:	fffff097          	auipc	ra,0xfffff
    2f54:	150080e7          	jalr	336(ra) # 20a0 <fatfs_total_path_levels>
    2f58:	fff00793          	li	a5,-1
    2f5c:	02f51063          	bne	a0,a5,2f7c <fl_opendir+0x80>
    2f60:	0084a783          	lw	a5,8(s1)
    2f64:	00f12623          	sw	a5,12(sp)
    2f68:	00c12783          	lw	a5,12(sp)
    2f6c:	00042023          	sw	zero,0(s0)
    2f70:	00040423          	sb	zero,8(s0)
    2f74:	00f42223          	sw	a5,4(s0)
    2f78:	0180006f          	j	2f90 <fl_opendir+0x94>
    2f7c:	00c10593          	addi	a1,sp,12
    2f80:	00090513          	mv	a0,s2
    2f84:	00000097          	auipc	ra,0x0
    2f88:	e90080e7          	jalr	-368(ra) # 2e14 <_open_directory>
    2f8c:	fc051ee3          	bnez	a0,2f68 <fl_opendir+0x6c>
    2f90:	0404a783          	lw	a5,64(s1)
    2f94:	00078463          	beqz	a5,2f9c <fl_opendir+0xa0>
    2f98:	000780e7          	jalr	a5
    2f9c:	00c12703          	lw	a4,12(sp)
    2fa0:	fff00793          	li	a5,-1
    2fa4:	00f71463          	bne	a4,a5,2fac <fl_opendir+0xb0>
    2fa8:	00000413          	li	s0,0
    2fac:	01c12083          	lw	ra,28(sp)
    2fb0:	00040513          	mv	a0,s0
    2fb4:	01812403          	lw	s0,24(sp)
    2fb8:	01412483          	lw	s1,20(sp)
    2fbc:	01012903          	lw	s2,16(sp)
    2fc0:	02010113          	addi	sp,sp,32
    2fc4:	00008067          	ret

00002fc8 <_open_file>:
    2fc8:	fc010113          	addi	sp,sp,-64
    2fcc:	02812c23          	sw	s0,56(sp)
    2fd0:	03312623          	sw	s3,44(sp)
    2fd4:	02112e23          	sw	ra,60(sp)
    2fd8:	02912a23          	sw	s1,52(sp)
    2fdc:	03212823          	sw	s2,48(sp)
    2fe0:	00050993          	mv	s3,a0
    2fe4:	ffffe097          	auipc	ra,0xffffe
    2fe8:	770080e7          	jalr	1904(ra) # 1754 <_allocate_file>
    2fec:	00050413          	mv	s0,a0
    2ff0:	10050c63          	beqz	a0,3108 <_open_file+0x140>
    2ff4:	01450913          	addi	s2,a0,20
    2ff8:	10400613          	li	a2,260
    2ffc:	00000593          	li	a1,0
    3000:	00090513          	mv	a0,s2
    3004:	ffffe097          	auipc	ra,0xffffe
    3008:	c84080e7          	jalr	-892(ra) # c88 <memset>
    300c:	11840493          	addi	s1,s0,280
    3010:	10400613          	li	a2,260
    3014:	00000593          	li	a1,0
    3018:	00048513          	mv	a0,s1
    301c:	ffffe097          	auipc	ra,0xffffe
    3020:	c6c080e7          	jalr	-916(ra) # c88 <memset>
    3024:	10400713          	li	a4,260
    3028:	00048693          	mv	a3,s1
    302c:	10400613          	li	a2,260
    3030:	00090593          	mv	a1,s2
    3034:	00098513          	mv	a0,s3
    3038:	fffff097          	auipc	ra,0xfffff
    303c:	1d0080e7          	jalr	464(ra) # 2208 <fatfs_split_path>
    3040:	fff00793          	li	a5,-1
    3044:	00f51c63          	bne	a0,a5,305c <_open_file+0x94>
    3048:	00040513          	mv	a0,s0
    304c:	ffffe097          	auipc	ra,0xffffe
    3050:	77c080e7          	jalr	1916(ra) # 17c8 <_free_file>
    3054:	00000413          	li	s0,0
    3058:	0b00006f          	j	3108 <_open_file+0x140>
    305c:	00040513          	mv	a0,s0
    3060:	fffff097          	auipc	ra,0xfffff
    3064:	3f8080e7          	jalr	1016(ra) # 2458 <_check_file_open>
    3068:	fe0510e3          	bnez	a0,3048 <_open_file+0x80>
    306c:	01444783          	lbu	a5,20(s0)
    3070:	0a079c63          	bnez	a5,3128 <_open_file+0x160>
    3074:	000097b7          	lui	a5,0x9
    3078:	5b47a783          	lw	a5,1460(a5) # 95b4 <_fs+0x8>
    307c:	00f42023          	sw	a5,0(s0)
    3080:	00042583          	lw	a1,0(s0)
    3084:	00009937          	lui	s2,0x9
    3088:	00010693          	mv	a3,sp
    308c:	00048613          	mv	a2,s1
    3090:	5ac90513          	addi	a0,s2,1452 # 95ac <_fs>
    3094:	00000097          	auipc	ra,0x0
    3098:	b78080e7          	jalr	-1160(ra) # 2c0c <fatfs_get_file_entry>
    309c:	fa0506e3          	beqz	a0,3048 <_open_file+0x80>
    30a0:	00010513          	mv	a0,sp
    30a4:	fffff097          	auipc	ra,0xfffff
    30a8:	b08080e7          	jalr	-1272(ra) # 1bac <fatfs_entry_is_file>
    30ac:	f8050ee3          	beqz	a0,3048 <_open_file+0x80>
    30b0:	00b00613          	li	a2,11
    30b4:	00010593          	mv	a1,sp
    30b8:	21c40513          	addi	a0,s0,540
    30bc:	ffffe097          	auipc	ra,0xffffe
    30c0:	be8080e7          	jalr	-1048(ra) # ca4 <memcpy>
    30c4:	01c12783          	lw	a5,28(sp)
    30c8:	01a15703          	lhu	a4,26(sp)
    30cc:	00042423          	sw	zero,8(s0)
    30d0:	00f42623          	sw	a5,12(s0)
    30d4:	01415783          	lhu	a5,20(sp)
    30d8:	42042a23          	sw	zero,1076(s0)
    30dc:	00042823          	sw	zero,16(s0)
    30e0:	01079793          	slli	a5,a5,0x10
    30e4:	00e787b3          	add	a5,a5,a4
    30e8:	00f42223          	sw	a5,4(s0)
    30ec:	fff00793          	li	a5,-1
    30f0:	42f42823          	sw	a5,1072(s0)
    30f4:	22f42423          	sw	a5,552(s0)
    30f8:	22f42623          	sw	a5,556(s0)
    30fc:	5ac90513          	addi	a0,s2,1452
    3100:	00000097          	auipc	ra,0x0
    3104:	860080e7          	jalr	-1952(ra) # 2960 <fatfs_fat_purge>
    3108:	03c12083          	lw	ra,60(sp)
    310c:	00040513          	mv	a0,s0
    3110:	03812403          	lw	s0,56(sp)
    3114:	03412483          	lw	s1,52(sp)
    3118:	03012903          	lw	s2,48(sp)
    311c:	02c12983          	lw	s3,44(sp)
    3120:	04010113          	addi	sp,sp,64
    3124:	00008067          	ret
    3128:	00040593          	mv	a1,s0
    312c:	00090513          	mv	a0,s2
    3130:	00000097          	auipc	ra,0x0
    3134:	ce4080e7          	jalr	-796(ra) # 2e14 <_open_directory>
    3138:	f40514e3          	bnez	a0,3080 <_open_file+0xb8>
    313c:	f0dff06f          	j	3048 <_open_file+0x80>

00003140 <fatfs_sfn_exists>:
    3140:	fe010113          	addi	sp,sp,-32
    3144:	00912a23          	sw	s1,20(sp)
    3148:	01212823          	sw	s2,16(sp)
    314c:	01312623          	sw	s3,12(sp)
    3150:	01412423          	sw	s4,8(sp)
    3154:	01512223          	sw	s5,4(sp)
    3158:	00112e23          	sw	ra,28(sp)
    315c:	00812c23          	sw	s0,24(sp)
    3160:	00050493          	mv	s1,a0
    3164:	00058993          	mv	s3,a1
    3168:	00060a13          	mv	s4,a2
    316c:	00000913          	li	s2,0
    3170:	24450a93          	addi	s5,a0,580
    3174:	00000693          	li	a3,0
    3178:	00090613          	mv	a2,s2
    317c:	00098593          	mv	a1,s3
    3180:	00048513          	mv	a0,s1
    3184:	00000097          	auipc	ra,0x0
    3188:	948080e7          	jalr	-1720(ra) # 2acc <fatfs_sector_reader>
    318c:	06050263          	beqz	a0,31f0 <fatfs_sfn_exists+0xb0>
    3190:	04448413          	addi	s0,s1,68
    3194:	00040513          	mv	a0,s0
    3198:	fffff097          	auipc	ra,0xfffff
    319c:	934080e7          	jalr	-1740(ra) # 1acc <fatfs_entry_lfn_text>
    31a0:	02051e63          	bnez	a0,31dc <fatfs_sfn_exists+0x9c>
    31a4:	00040513          	mv	a0,s0
    31a8:	fffff097          	auipc	ra,0xfffff
    31ac:	938080e7          	jalr	-1736(ra) # 1ae0 <fatfs_entry_lfn_invalid>
    31b0:	02051663          	bnez	a0,31dc <fatfs_sfn_exists+0x9c>
    31b4:	00040513          	mv	a0,s0
    31b8:	fffff097          	auipc	ra,0xfffff
    31bc:	9a8080e7          	jalr	-1624(ra) # 1b60 <fatfs_entry_sfn_only>
    31c0:	00050e63          	beqz	a0,31dc <fatfs_sfn_exists+0x9c>
    31c4:	00b00613          	li	a2,11
    31c8:	000a0593          	mv	a1,s4
    31cc:	00040513          	mv	a0,s0
    31d0:	ffffe097          	auipc	ra,0xffffe
    31d4:	b18080e7          	jalr	-1256(ra) # ce8 <strncmp>
    31d8:	00050a63          	beqz	a0,31ec <fatfs_sfn_exists+0xac>
    31dc:	02040413          	addi	s0,s0,32
    31e0:	fb541ae3          	bne	s0,s5,3194 <fatfs_sfn_exists+0x54>
    31e4:	00190913          	addi	s2,s2,1
    31e8:	f8dff06f          	j	3174 <fatfs_sfn_exists+0x34>
    31ec:	00100513          	li	a0,1
    31f0:	01c12083          	lw	ra,28(sp)
    31f4:	01812403          	lw	s0,24(sp)
    31f8:	01412483          	lw	s1,20(sp)
    31fc:	01012903          	lw	s2,16(sp)
    3200:	00c12983          	lw	s3,12(sp)
    3204:	00812a03          	lw	s4,8(sp)
    3208:	00412a83          	lw	s5,4(sp)
    320c:	02010113          	addi	sp,sp,32
    3210:	00008067          	ret

00003214 <fatfs_update_file_length>:
    3214:	03852783          	lw	a5,56(a0)
    3218:	14078e63          	beqz	a5,3374 <fatfs_update_file_length+0x160>
    321c:	fd010113          	addi	sp,sp,-48
    3220:	02912223          	sw	s1,36(sp)
    3224:	03212023          	sw	s2,32(sp)
    3228:	01312e23          	sw	s3,28(sp)
    322c:	01412c23          	sw	s4,24(sp)
    3230:	01512a23          	sw	s5,20(sp)
    3234:	01612823          	sw	s6,16(sp)
    3238:	02112623          	sw	ra,44(sp)
    323c:	02812423          	sw	s0,40(sp)
    3240:	01712623          	sw	s7,12(sp)
    3244:	00050493          	mv	s1,a0
    3248:	00058a13          	mv	s4,a1
    324c:	00060a93          	mv	s5,a2
    3250:	00068913          	mv	s2,a3
    3254:	00000993          	li	s3,0
    3258:	24450b13          	addi	s6,a0,580
    325c:	00000693          	li	a3,0
    3260:	00098613          	mv	a2,s3
    3264:	000a0593          	mv	a1,s4
    3268:	00048513          	mv	a0,s1
    326c:	00000097          	auipc	ra,0x0
    3270:	860080e7          	jalr	-1952(ra) # 2acc <fatfs_sector_reader>
    3274:	0c050863          	beqz	a0,3344 <fatfs_update_file_length+0x130>
    3278:	04448413          	addi	s0,s1,68
    327c:	00040b93          	mv	s7,s0
    3280:	00040513          	mv	a0,s0
    3284:	fffff097          	auipc	ra,0xfffff
    3288:	848080e7          	jalr	-1976(ra) # 1acc <fatfs_entry_lfn_text>
    328c:	0a051463          	bnez	a0,3334 <fatfs_update_file_length+0x120>
    3290:	00040513          	mv	a0,s0
    3294:	fffff097          	auipc	ra,0xfffff
    3298:	84c080e7          	jalr	-1972(ra) # 1ae0 <fatfs_entry_lfn_invalid>
    329c:	08051c63          	bnez	a0,3334 <fatfs_update_file_length+0x120>
    32a0:	00040513          	mv	a0,s0
    32a4:	fffff097          	auipc	ra,0xfffff
    32a8:	8bc080e7          	jalr	-1860(ra) # 1b60 <fatfs_entry_sfn_only>
    32ac:	08050463          	beqz	a0,3334 <fatfs_update_file_length+0x120>
    32b0:	00b00613          	li	a2,11
    32b4:	000a8593          	mv	a1,s5
    32b8:	00040513          	mv	a0,s0
    32bc:	ffffe097          	auipc	ra,0xffffe
    32c0:	a2c080e7          	jalr	-1492(ra) # ce8 <strncmp>
    32c4:	06051863          	bnez	a0,3334 <fatfs_update_file_length+0x120>
    32c8:	00895793          	srli	a5,s2,0x8
    32cc:	01240e23          	sb	s2,28(s0)
    32d0:	00f40ea3          	sb	a5,29(s0)
    32d4:	01095793          	srli	a5,s2,0x10
    32d8:	01895913          	srli	s2,s2,0x18
    32dc:	00f40f23          	sb	a5,30(s0)
    32e0:	01240fa3          	sb	s2,31(s0)
    32e4:	00040593          	mv	a1,s0
    32e8:	02000613          	li	a2,32
    32ec:	00040513          	mv	a0,s0
    32f0:	ffffe097          	auipc	ra,0xffffe
    32f4:	9b4080e7          	jalr	-1612(ra) # ca4 <memcpy>
    32f8:	02812403          	lw	s0,40(sp)
    32fc:	0384a783          	lw	a5,56(s1)
    3300:	2444a503          	lw	a0,580(s1)
    3304:	02c12083          	lw	ra,44(sp)
    3308:	02412483          	lw	s1,36(sp)
    330c:	02012903          	lw	s2,32(sp)
    3310:	01c12983          	lw	s3,28(sp)
    3314:	01812a03          	lw	s4,24(sp)
    3318:	01412a83          	lw	s5,20(sp)
    331c:	01012b03          	lw	s6,16(sp)
    3320:	000b8593          	mv	a1,s7
    3324:	00c12b83          	lw	s7,12(sp)
    3328:	00100613          	li	a2,1
    332c:	03010113          	addi	sp,sp,48
    3330:	00078067          	jr	a5
    3334:	02040413          	addi	s0,s0,32
    3338:	f56414e3          	bne	s0,s6,3280 <fatfs_update_file_length+0x6c>
    333c:	00198993          	addi	s3,s3,1
    3340:	f1dff06f          	j	325c <fatfs_update_file_length+0x48>
    3344:	02c12083          	lw	ra,44(sp)
    3348:	02812403          	lw	s0,40(sp)
    334c:	02412483          	lw	s1,36(sp)
    3350:	02012903          	lw	s2,32(sp)
    3354:	01c12983          	lw	s3,28(sp)
    3358:	01812a03          	lw	s4,24(sp)
    335c:	01412a83          	lw	s5,20(sp)
    3360:	01012b03          	lw	s6,16(sp)
    3364:	00c12b83          	lw	s7,12(sp)
    3368:	00000513          	li	a0,0
    336c:	03010113          	addi	sp,sp,48
    3370:	00008067          	ret
    3374:	00000513          	li	a0,0
    3378:	00008067          	ret

0000337c <fatfs_list_directory_next>:
    337c:	ec010113          	addi	sp,sp,-320
    3380:	13212823          	sw	s2,304(sp)
    3384:	13312623          	sw	s3,300(sp)
    3388:	13412423          	sw	s4,296(sp)
    338c:	13512223          	sw	s5,292(sp)
    3390:	12112e23          	sw	ra,316(sp)
    3394:	12812c23          	sw	s0,312(sp)
    3398:	12912a23          	sw	s1,308(sp)
    339c:	00050a13          	mv	s4,a0
    33a0:	00058913          	mv	s2,a1
    33a4:	00060993          	mv	s3,a2
    33a8:	10010ea3          	sb	zero,285(sp)
    33ac:	00f00a93          	li	s5,15
    33b0:	00092603          	lw	a2,0(s2)
    33b4:	00492583          	lw	a1,4(s2)
    33b8:	00000693          	li	a3,0
    33bc:	000a0513          	mv	a0,s4
    33c0:	fffff097          	auipc	ra,0xfffff
    33c4:	70c080e7          	jalr	1804(ra) # 2acc <fatfs_sector_reader>
    33c8:	12050063          	beqz	a0,34e8 <fatfs_list_directory_next+0x16c>
    33cc:	00894483          	lbu	s1,8(s2)
    33d0:	00549413          	slli	s0,s1,0x5
    33d4:	04440413          	addi	s0,s0,68
    33d8:	008a0433          	add	s0,s4,s0
    33dc:	009afc63          	bgeu	s5,s1,33f4 <fatfs_list_directory_next+0x78>
    33e0:	00092783          	lw	a5,0(s2)
    33e4:	00090423          	sb	zero,8(s2)
    33e8:	00178793          	addi	a5,a5,1
    33ec:	00f92023          	sw	a5,0(s2)
    33f0:	fc1ff06f          	j	33b0 <fatfs_list_directory_next+0x34>
    33f4:	00040513          	mv	a0,s0
    33f8:	ffffe097          	auipc	ra,0xffffe
    33fc:	6d4080e7          	jalr	1748(ra) # 1acc <fatfs_entry_lfn_text>
    3400:	02050263          	beqz	a0,3424 <fatfs_list_directory_next+0xa8>
    3404:	00040593          	mv	a1,s0
    3408:	01810513          	addi	a0,sp,24
    340c:	ffffe097          	auipc	ra,0xffffe
    3410:	5b8080e7          	jalr	1464(ra) # 19c4 <fatfs_lfn_cache_entry>
    3414:	00148493          	addi	s1,s1,1
    3418:	0ff4f493          	zext.b	s1,s1
    341c:	02040413          	addi	s0,s0,32
    3420:	fbdff06f          	j	33dc <fatfs_list_directory_next+0x60>
    3424:	00040513          	mv	a0,s0
    3428:	ffffe097          	auipc	ra,0xffffe
    342c:	6b8080e7          	jalr	1720(ra) # 1ae0 <fatfs_entry_lfn_invalid>
    3430:	00050663          	beqz	a0,343c <fatfs_list_directory_next+0xc0>
    3434:	10010ea3          	sb	zero,285(sp)
    3438:	fddff06f          	j	3414 <fatfs_list_directory_next+0x98>
    343c:	00040593          	mv	a1,s0
    3440:	01810513          	addi	a0,sp,24
    3444:	ffffe097          	auipc	ra,0xffffe
    3448:	6d4080e7          	jalr	1748(ra) # 1b18 <fatfs_entry_lfn_exists>
    344c:	0c050063          	beqz	a0,350c <fatfs_list_directory_next+0x190>
    3450:	01810513          	addi	a0,sp,24
    3454:	ffffe097          	auipc	ra,0xffffe
    3458:	63c080e7          	jalr	1596(ra) # 1a90 <fatfs_lfn_cache_get>
    345c:	00050593          	mv	a1,a0
    3460:	10300613          	li	a2,259
    3464:	00098513          	mv	a0,s3
    3468:	ffffe097          	auipc	ra,0xffffe
    346c:	8c0080e7          	jalr	-1856(ra) # d28 <strncpy>
    3470:	00040513          	mv	a0,s0
    3474:	ffffe097          	auipc	ra,0xffffe
    3478:	728080e7          	jalr	1832(ra) # 1b9c <fatfs_entry_is_dir>
    347c:	00a03533          	snez	a0,a0
    3480:	10a98223          	sb	a0,260(s3)
    3484:	01d44783          	lbu	a5,29(s0)
    3488:	01c44703          	lbu	a4,28(s0)
    348c:	00148493          	addi	s1,s1,1
    3490:	00879793          	slli	a5,a5,0x8
    3494:	00e7e7b3          	or	a5,a5,a4
    3498:	01e44703          	lbu	a4,30(s0)
    349c:	00100513          	li	a0,1
    34a0:	01071713          	slli	a4,a4,0x10
    34a4:	00f76733          	or	a4,a4,a5
    34a8:	01f44783          	lbu	a5,31(s0)
    34ac:	01879793          	slli	a5,a5,0x18
    34b0:	00e7e7b3          	or	a5,a5,a4
    34b4:	10f9a623          	sw	a5,268(s3)
    34b8:	01544783          	lbu	a5,21(s0)
    34bc:	01444703          	lbu	a4,20(s0)
    34c0:	01a44683          	lbu	a3,26(s0)
    34c4:	00879793          	slli	a5,a5,0x8
    34c8:	00e7e7b3          	or	a5,a5,a4
    34cc:	01b44703          	lbu	a4,27(s0)
    34d0:	01079793          	slli	a5,a5,0x10
    34d4:	00871713          	slli	a4,a4,0x8
    34d8:	00d76733          	or	a4,a4,a3
    34dc:	00e7e7b3          	or	a5,a5,a4
    34e0:	10f9a423          	sw	a5,264(s3)
    34e4:	00990423          	sb	s1,8(s2)
    34e8:	13c12083          	lw	ra,316(sp)
    34ec:	13812403          	lw	s0,312(sp)
    34f0:	13412483          	lw	s1,308(sp)
    34f4:	13012903          	lw	s2,304(sp)
    34f8:	12c12983          	lw	s3,300(sp)
    34fc:	12812a03          	lw	s4,296(sp)
    3500:	12412a83          	lw	s5,292(sp)
    3504:	14010113          	addi	sp,sp,320
    3508:	00008067          	ret
    350c:	00040513          	mv	a0,s0
    3510:	ffffe097          	auipc	ra,0xffffe
    3514:	650080e7          	jalr	1616(ra) # 1b60 <fatfs_entry_sfn_only>
    3518:	ee050ee3          	beqz	a0,3414 <fatfs_list_directory_next+0x98>
    351c:	00d00613          	li	a2,13
    3520:	00000593          	li	a1,0
    3524:	00810513          	addi	a0,sp,8
    3528:	10010ea3          	sb	zero,285(sp)
    352c:	ffffd097          	auipc	ra,0xffffd
    3530:	75c080e7          	jalr	1884(ra) # c88 <memset>
    3534:	00000793          	li	a5,0
    3538:	00800713          	li	a4,8
    353c:	00f40633          	add	a2,s0,a5
    3540:	00064603          	lbu	a2,0(a2)
    3544:	00810693          	addi	a3,sp,8
    3548:	00f686b3          	add	a3,a3,a5
    354c:	00c68023          	sb	a2,0(a3)
    3550:	00178793          	addi	a5,a5,1
    3554:	fee794e3          	bne	a5,a4,353c <fatfs_list_directory_next+0x1c0>
    3558:	00844783          	lbu	a5,8(s0)
    355c:	00944683          	lbu	a3,9(s0)
    3560:	02000613          	li	a2,32
    3564:	00f108a3          	sb	a5,17(sp)
    3568:	00d10923          	sb	a3,18(sp)
    356c:	00100713          	li	a4,1
    3570:	00c69663          	bne	a3,a2,357c <fatfs_list_directory_next+0x200>
    3574:	fe078793          	addi	a5,a5,-32
    3578:	00f03733          	snez	a4,a5
    357c:	00a44783          	lbu	a5,10(s0)
    3580:	02000693          	li	a3,32
    3584:	00f109a3          	sb	a5,19(sp)
    3588:	00d79463          	bne	a5,a3,3590 <fatfs_list_directory_next+0x214>
    358c:	00070c63          	beqz	a4,35a4 <fatfs_list_directory_next+0x228>
    3590:	00814683          	lbu	a3,8(sp)
    3594:	02e00713          	li	a4,46
    3598:	02000793          	li	a5,32
    359c:	00e68463          	beq	a3,a4,35a4 <fatfs_list_directory_next+0x228>
    35a0:	02e00793          	li	a5,46
    35a4:	00810593          	addi	a1,sp,8
    35a8:	00098513          	mv	a0,s3
    35ac:	00f10823          	sb	a5,16(sp)
    35b0:	fffff097          	auipc	ra,0xfffff
    35b4:	f38080e7          	jalr	-200(ra) # 24e8 <fatfs_get_sfn_display_name>
    35b8:	eb9ff06f          	j	3470 <fatfs_list_directory_next+0xf4>

000035bc <fl_readdir>:
    35bc:	000057b7          	lui	a5,0x5
    35c0:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    35c4:	fe010113          	addi	sp,sp,-32
    35c8:	00912a23          	sw	s1,20(sp)
    35cc:	01212823          	sw	s2,16(sp)
    35d0:	00112e23          	sw	ra,28(sp)
    35d4:	00812c23          	sw	s0,24(sp)
    35d8:	01312623          	sw	s3,12(sp)
    35dc:	00050493          	mv	s1,a0
    35e0:	00058913          	mv	s2,a1
    35e4:	00079663          	bnez	a5,35f0 <fl_readdir+0x34>
    35e8:	ffffe097          	auipc	ra,0xffffe
    35ec:	364080e7          	jalr	868(ra) # 194c <fl_init>
    35f0:	00009437          	lui	s0,0x9
    35f4:	5ac40793          	addi	a5,s0,1452 # 95ac <_fs>
    35f8:	03c7a783          	lw	a5,60(a5)
    35fc:	5ac40993          	addi	s3,s0,1452
    3600:	00078463          	beqz	a5,3608 <fl_readdir+0x4c>
    3604:	000780e7          	jalr	a5
    3608:	5ac40513          	addi	a0,s0,1452
    360c:	00090613          	mv	a2,s2
    3610:	00048593          	mv	a1,s1
    3614:	00000097          	auipc	ra,0x0
    3618:	d68080e7          	jalr	-664(ra) # 337c <fatfs_list_directory_next>
    361c:	0409a783          	lw	a5,64(s3)
    3620:	00050413          	mv	s0,a0
    3624:	00078463          	beqz	a5,362c <fl_readdir+0x70>
    3628:	000780e7          	jalr	a5
    362c:	01c12083          	lw	ra,28(sp)
    3630:	00143513          	seqz	a0,s0
    3634:	01812403          	lw	s0,24(sp)
    3638:	01412483          	lw	s1,20(sp)
    363c:	01012903          	lw	s2,16(sp)
    3640:	00c12983          	lw	s3,12(sp)
    3644:	40a00533          	neg	a0,a0
    3648:	02010113          	addi	sp,sp,32
    364c:	00008067          	ret

00003650 <_read_sectors>:
    3650:	fd010113          	addi	sp,sp,-48
    3654:	01612823          	sw	s6,16(sp)
    3658:	00009b37          	lui	s6,0x9
    365c:	01512a23          	sw	s5,20(sp)
    3660:	5acb4a83          	lbu	s5,1452(s6) # 95ac <_fs>
    3664:	01412c23          	sw	s4,24(sp)
    3668:	00058a13          	mv	s4,a1
    366c:	02912223          	sw	s1,36(sp)
    3670:	000a8593          	mv	a1,s5
    3674:	00050493          	mv	s1,a0
    3678:	000a0513          	mv	a0,s4
    367c:	02112623          	sw	ra,44(sp)
    3680:	02812423          	sw	s0,40(sp)
    3684:	03212023          	sw	s2,32(sp)
    3688:	00068413          	mv	s0,a3
    368c:	01712623          	sw	s7,12(sp)
    3690:	01812423          	sw	s8,8(sp)
    3694:	01312e23          	sw	s3,28(sp)
    3698:	00060c13          	mv	s8,a2
    369c:	ffffd097          	auipc	ra,0xffffd
    36a0:	540080e7          	jalr	1344(ra) # bdc <__udivsi3>
    36a4:	00050913          	mv	s2,a0
    36a8:	000a8593          	mv	a1,s5
    36ac:	000a0513          	mv	a0,s4
    36b0:	ffffd097          	auipc	ra,0xffffd
    36b4:	574080e7          	jalr	1396(ra) # c24 <__umodsi3>
    36b8:	00a407b3          	add	a5,s0,a0
    36bc:	00050b93          	mv	s7,a0
    36c0:	00fafe63          	bgeu	s5,a5,36dc <_read_sectors+0x8c>
    36c4:	00090593          	mv	a1,s2
    36c8:	000a8513          	mv	a0,s5
    36cc:	ffffe097          	auipc	ra,0xffffe
    36d0:	de4080e7          	jalr	-540(ra) # 14b0 <__mulsi3>
    36d4:	414a87b3          	sub	a5,s5,s4
    36d8:	00f50433          	add	s0,a0,a5
    36dc:	2284a983          	lw	s3,552(s1)
    36e0:	01299c63          	bne	s3,s2,36f8 <_read_sectors+0xa8>
    36e4:	22c4a583          	lw	a1,556(s1)
    36e8:	fff00793          	li	a5,-1
    36ec:	02f59863          	bne	a1,a5,371c <_read_sectors+0xcc>
    36f0:	00000413          	li	s0,0
    36f4:	0500006f          	j	3744 <_read_sectors+0xf4>
    36f8:	095a6063          	bltu	s4,s5,3778 <_read_sectors+0x128>
    36fc:	00198793          	addi	a5,s3,1
    3700:	07279c63          	bne	a5,s2,3778 <_read_sectors+0x128>
    3704:	22c4a583          	lw	a1,556(s1)
    3708:	0729ee63          	bltu	s3,s2,3784 <_read_sectors+0x134>
    370c:	fff00793          	li	a5,-1
    3710:	fef580e3          	beq	a1,a5,36f0 <_read_sectors+0xa0>
    3714:	22b4a623          	sw	a1,556(s1)
    3718:	2324a423          	sw	s2,552(s1)
    371c:	5acb0513          	addi	a0,s6,1452
    3720:	ffffe097          	auipc	ra,0xffffe
    3724:	0f0080e7          	jalr	240(ra) # 1810 <fatfs_lba_of_cluster>
    3728:	017505b3          	add	a1,a0,s7
    372c:	00040693          	mv	a3,s0
    3730:	000c0613          	mv	a2,s8
    3734:	5acb0513          	addi	a0,s6,1452
    3738:	ffffe097          	auipc	ra,0xffffe
    373c:	128080e7          	jalr	296(ra) # 1860 <fatfs_sector_read>
    3740:	fa0508e3          	beqz	a0,36f0 <_read_sectors+0xa0>
    3744:	02c12083          	lw	ra,44(sp)
    3748:	00040513          	mv	a0,s0
    374c:	02812403          	lw	s0,40(sp)
    3750:	02412483          	lw	s1,36(sp)
    3754:	02012903          	lw	s2,32(sp)
    3758:	01c12983          	lw	s3,28(sp)
    375c:	01812a03          	lw	s4,24(sp)
    3760:	01412a83          	lw	s5,20(sp)
    3764:	01012b03          	lw	s6,16(sp)
    3768:	00c12b83          	lw	s7,12(sp)
    376c:	00812c03          	lw	s8,8(sp)
    3770:	03010113          	addi	sp,sp,48
    3774:	00008067          	ret
    3778:	0044a583          	lw	a1,4(s1)
    377c:	00000993          	li	s3,0
    3780:	f89ff06f          	j	3708 <_read_sectors+0xb8>
    3784:	5acb0513          	addi	a0,s6,1452
    3788:	fffff097          	auipc	ra,0xfffff
    378c:	234080e7          	jalr	564(ra) # 29bc <fatfs_find_next_cluster>
    3790:	00050593          	mv	a1,a0
    3794:	00198993          	addi	s3,s3,1
    3798:	f71ff06f          	j	3708 <_read_sectors+0xb8>

0000379c <fatfs_set_fs_info_next_free_cluster>:
    379c:	03052783          	lw	a5,48(a0)
    37a0:	0a078863          	beqz	a5,3850 <fatfs_set_fs_info_next_free_cluster+0xb4>
    37a4:	ff010113          	addi	sp,sp,-16
    37a8:	01c52783          	lw	a5,28(a0)
    37ac:	01212023          	sw	s2,0(sp)
    37b0:	00058913          	mv	s2,a1
    37b4:	01855583          	lhu	a1,24(a0)
    37b8:	00812423          	sw	s0,8(sp)
    37bc:	00912223          	sw	s1,4(sp)
    37c0:	00f585b3          	add	a1,a1,a5
    37c4:	00112623          	sw	ra,12(sp)
    37c8:	00050493          	mv	s1,a0
    37cc:	ffffe097          	auipc	ra,0xffffe
    37d0:	e9c080e7          	jalr	-356(ra) # 1668 <fatfs_fat_read_sector>
    37d4:	00050413          	mv	s0,a0
    37d8:	06050063          	beqz	a0,3838 <fatfs_set_fs_info_next_free_cluster+0x9c>
    37dc:	20852783          	lw	a5,520(a0)
    37e0:	00895713          	srli	a4,s2,0x8
    37e4:	1f278623          	sb	s2,492(a5)
    37e8:	20852783          	lw	a5,520(a0)
    37ec:	1ee786a3          	sb	a4,493(a5)
    37f0:	20852783          	lw	a5,520(a0)
    37f4:	01095713          	srli	a4,s2,0x10
    37f8:	1ee78723          	sb	a4,494(a5)
    37fc:	20852783          	lw	a5,520(a0)
    3800:	01895713          	srli	a4,s2,0x18
    3804:	1ee787a3          	sb	a4,495(a5)
    3808:	00100793          	li	a5,1
    380c:	20f52223          	sw	a5,516(a0)
    3810:	0384a783          	lw	a5,56(s1)
    3814:	0324a223          	sw	s2,36(s1)
    3818:	00078a63          	beqz	a5,382c <fatfs_set_fs_info_next_free_cluster+0x90>
    381c:	00050593          	mv	a1,a0
    3820:	20052503          	lw	a0,512(a0)
    3824:	00100613          	li	a2,1
    3828:	000780e7          	jalr	a5
    382c:	fff00793          	li	a5,-1
    3830:	20f42023          	sw	a5,512(s0)
    3834:	20042223          	sw	zero,516(s0)
    3838:	00c12083          	lw	ra,12(sp)
    383c:	00812403          	lw	s0,8(sp)
    3840:	00412483          	lw	s1,4(sp)
    3844:	00012903          	lw	s2,0(sp)
    3848:	01010113          	addi	sp,sp,16
    384c:	00008067          	ret
    3850:	00008067          	ret

00003854 <fatfs_find_blank_cluster>:
    3854:	fe010113          	addi	sp,sp,-32
    3858:	01312623          	sw	s3,12(sp)
    385c:	01512223          	sw	s5,4(sp)
    3860:	000109b7          	lui	s3,0x10
    3864:	10000ab7          	lui	s5,0x10000
    3868:	00912a23          	sw	s1,20(sp)
    386c:	01212823          	sw	s2,16(sp)
    3870:	01412423          	sw	s4,8(sp)
    3874:	00112e23          	sw	ra,28(sp)
    3878:	00812c23          	sw	s0,24(sp)
    387c:	00050913          	mv	s2,a0
    3880:	00058493          	mv	s1,a1
    3884:	00060a13          	mv	s4,a2
    3888:	fff98993          	addi	s3,s3,-1 # ffff <_fs+0x6a53>
    388c:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3890:	03092783          	lw	a5,48(s2)
    3894:	0074d413          	srli	s0,s1,0x7
    3898:	00079463          	bnez	a5,38a0 <fatfs_find_blank_cluster+0x4c>
    389c:	0084d413          	srli	s0,s1,0x8
    38a0:	02092783          	lw	a5,32(s2)
    38a4:	08f47e63          	bgeu	s0,a5,3940 <fatfs_find_blank_cluster+0xec>
    38a8:	01492583          	lw	a1,20(s2)
    38ac:	00090513          	mv	a0,s2
    38b0:	00b405b3          	add	a1,s0,a1
    38b4:	ffffe097          	auipc	ra,0xffffe
    38b8:	db4080e7          	jalr	-588(ra) # 1668 <fatfs_fat_read_sector>
    38bc:	08050263          	beqz	a0,3940 <fatfs_find_blank_cluster+0xec>
    38c0:	03092783          	lw	a5,48(s2)
    38c4:	20852703          	lw	a4,520(a0)
    38c8:	02079a63          	bnez	a5,38fc <fatfs_find_blank_cluster+0xa8>
    38cc:	00841413          	slli	s0,s0,0x8
    38d0:	40848433          	sub	s0,s1,s0
    38d4:	00141413          	slli	s0,s0,0x1
    38d8:	01347433          	and	s0,s0,s3
    38dc:	00870733          	add	a4,a4,s0
    38e0:	00174783          	lbu	a5,1(a4)
    38e4:	00074703          	lbu	a4,0(a4)
    38e8:	00879793          	slli	a5,a5,0x8
    38ec:	00e787b3          	add	a5,a5,a4
    38f0:	06078c63          	beqz	a5,3968 <fatfs_find_blank_cluster+0x114>
    38f4:	00148493          	addi	s1,s1,1
    38f8:	f99ff06f          	j	3890 <fatfs_find_blank_cluster+0x3c>
    38fc:	00741413          	slli	s0,s0,0x7
    3900:	40848433          	sub	s0,s1,s0
    3904:	00241413          	slli	s0,s0,0x2
    3908:	01347433          	and	s0,s0,s3
    390c:	00870733          	add	a4,a4,s0
    3910:	00374783          	lbu	a5,3(a4)
    3914:	00274683          	lbu	a3,2(a4)
    3918:	01879793          	slli	a5,a5,0x18
    391c:	01069693          	slli	a3,a3,0x10
    3920:	00d787b3          	add	a5,a5,a3
    3924:	00074683          	lbu	a3,0(a4)
    3928:	00174703          	lbu	a4,1(a4)
    392c:	00d787b3          	add	a5,a5,a3
    3930:	00871713          	slli	a4,a4,0x8
    3934:	00e787b3          	add	a5,a5,a4
    3938:	0157f7b3          	and	a5,a5,s5
    393c:	fb5ff06f          	j	38f0 <fatfs_find_blank_cluster+0x9c>
    3940:	00000513          	li	a0,0
    3944:	01c12083          	lw	ra,28(sp)
    3948:	01812403          	lw	s0,24(sp)
    394c:	01412483          	lw	s1,20(sp)
    3950:	01012903          	lw	s2,16(sp)
    3954:	00c12983          	lw	s3,12(sp)
    3958:	00812a03          	lw	s4,8(sp)
    395c:	00412a83          	lw	s5,4(sp)
    3960:	02010113          	addi	sp,sp,32
    3964:	00008067          	ret
    3968:	009a2023          	sw	s1,0(s4)
    396c:	00100513          	li	a0,1
    3970:	fd5ff06f          	j	3944 <fatfs_find_blank_cluster+0xf0>

00003974 <fatfs_fat_set_cluster>:
    3974:	03052783          	lw	a5,48(a0)
    3978:	fe010113          	addi	sp,sp,-32
    397c:	00812c23          	sw	s0,24(sp)
    3980:	00912a23          	sw	s1,20(sp)
    3984:	01212823          	sw	s2,16(sp)
    3988:	01312623          	sw	s3,12(sp)
    398c:	00112e23          	sw	ra,28(sp)
    3990:	00050993          	mv	s3,a0
    3994:	00058413          	mv	s0,a1
    3998:	00060493          	mv	s1,a2
    399c:	0085d913          	srli	s2,a1,0x8
    39a0:	00078463          	beqz	a5,39a8 <fatfs_fat_set_cluster+0x34>
    39a4:	0075d913          	srli	s2,a1,0x7
    39a8:	0149a583          	lw	a1,20(s3)
    39ac:	00098513          	mv	a0,s3
    39b0:	00b905b3          	add	a1,s2,a1
    39b4:	ffffe097          	auipc	ra,0xffffe
    39b8:	cb4080e7          	jalr	-844(ra) # 1668 <fatfs_fat_read_sector>
    39bc:	00050793          	mv	a5,a0
    39c0:	00000513          	li	a0,0
    39c4:	04078c63          	beqz	a5,3a1c <fatfs_fat_set_cluster+0xa8>
    39c8:	0309a683          	lw	a3,48(s3)
    39cc:	2087a703          	lw	a4,520(a5)
    39d0:	0ff4f613          	zext.b	a2,s1
    39d4:	06069263          	bnez	a3,3a38 <fatfs_fat_set_cluster+0xc4>
    39d8:	00891913          	slli	s2,s2,0x8
    39dc:	41240433          	sub	s0,s0,s2
    39e0:	000106b7          	lui	a3,0x10
    39e4:	00141413          	slli	s0,s0,0x1
    39e8:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6a53>
    39ec:	00d47433          	and	s0,s0,a3
    39f0:	00870733          	add	a4,a4,s0
    39f4:	00c70023          	sb	a2,0(a4)
    39f8:	2087a703          	lw	a4,520(a5)
    39fc:	01049493          	slli	s1,s1,0x10
    3a00:	0104d493          	srli	s1,s1,0x10
    3a04:	00870733          	add	a4,a4,s0
    3a08:	0084d493          	srli	s1,s1,0x8
    3a0c:	009700a3          	sb	s1,1(a4)
    3a10:	00100713          	li	a4,1
    3a14:	20e7a223          	sw	a4,516(a5)
    3a18:	00100513          	li	a0,1
    3a1c:	01c12083          	lw	ra,28(sp)
    3a20:	01812403          	lw	s0,24(sp)
    3a24:	01412483          	lw	s1,20(sp)
    3a28:	01012903          	lw	s2,16(sp)
    3a2c:	00c12983          	lw	s3,12(sp)
    3a30:	02010113          	addi	sp,sp,32
    3a34:	00008067          	ret
    3a38:	00791913          	slli	s2,s2,0x7
    3a3c:	41240433          	sub	s0,s0,s2
    3a40:	000106b7          	lui	a3,0x10
    3a44:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6a53>
    3a48:	00241413          	slli	s0,s0,0x2
    3a4c:	00d47433          	and	s0,s0,a3
    3a50:	00870733          	add	a4,a4,s0
    3a54:	00c70023          	sb	a2,0(a4)
    3a58:	2087a703          	lw	a4,520(a5)
    3a5c:	0084d693          	srli	a3,s1,0x8
    3a60:	00870733          	add	a4,a4,s0
    3a64:	00d700a3          	sb	a3,1(a4)
    3a68:	2087a703          	lw	a4,520(a5)
    3a6c:	0104d693          	srli	a3,s1,0x10
    3a70:	0184d493          	srli	s1,s1,0x18
    3a74:	00870733          	add	a4,a4,s0
    3a78:	00d70123          	sb	a3,2(a4)
    3a7c:	2087a703          	lw	a4,520(a5)
    3a80:	00870733          	add	a4,a4,s0
    3a84:	009701a3          	sb	s1,3(a4)
    3a88:	f89ff06f          	j	3a10 <fatfs_fat_set_cluster+0x9c>

00003a8c <fatfs_free_cluster_chain>:
    3a8c:	fe010113          	addi	sp,sp,-32
    3a90:	00812c23          	sw	s0,24(sp)
    3a94:	01212823          	sw	s2,16(sp)
    3a98:	00112e23          	sw	ra,28(sp)
    3a9c:	00912a23          	sw	s1,20(sp)
    3aa0:	00050413          	mv	s0,a0
    3aa4:	ffd00913          	li	s2,-3
    3aa8:	fff58793          	addi	a5,a1,-1
    3aac:	02f97063          	bgeu	s2,a5,3acc <fatfs_free_cluster_chain+0x40>
    3ab0:	01c12083          	lw	ra,28(sp)
    3ab4:	01812403          	lw	s0,24(sp)
    3ab8:	01412483          	lw	s1,20(sp)
    3abc:	01012903          	lw	s2,16(sp)
    3ac0:	00100513          	li	a0,1
    3ac4:	02010113          	addi	sp,sp,32
    3ac8:	00008067          	ret
    3acc:	00040513          	mv	a0,s0
    3ad0:	00b12623          	sw	a1,12(sp)
    3ad4:	fffff097          	auipc	ra,0xfffff
    3ad8:	ee8080e7          	jalr	-280(ra) # 29bc <fatfs_find_next_cluster>
    3adc:	00c12583          	lw	a1,12(sp)
    3ae0:	00050493          	mv	s1,a0
    3ae4:	00000613          	li	a2,0
    3ae8:	00040513          	mv	a0,s0
    3aec:	00000097          	auipc	ra,0x0
    3af0:	e88080e7          	jalr	-376(ra) # 3974 <fatfs_fat_set_cluster>
    3af4:	00048593          	mv	a1,s1
    3af8:	fb1ff06f          	j	3aa8 <fatfs_free_cluster_chain+0x1c>

00003afc <fatfs_fat_add_cluster_to_chain>:
    3afc:	fff00793          	li	a5,-1
    3b00:	02f59463          	bne	a1,a5,3b28 <fatfs_fat_add_cluster_to_chain+0x2c>
    3b04:	00000513          	li	a0,0
    3b08:	00008067          	ret
    3b0c:	00000513          	li	a0,0
    3b10:	01c12083          	lw	ra,28(sp)
    3b14:	01812403          	lw	s0,24(sp)
    3b18:	01412483          	lw	s1,20(sp)
    3b1c:	01012903          	lw	s2,16(sp)
    3b20:	02010113          	addi	sp,sp,32
    3b24:	00008067          	ret
    3b28:	fe010113          	addi	sp,sp,-32
    3b2c:	00812c23          	sw	s0,24(sp)
    3b30:	00912a23          	sw	s1,20(sp)
    3b34:	01212823          	sw	s2,16(sp)
    3b38:	00050413          	mv	s0,a0
    3b3c:	00112e23          	sw	ra,28(sp)
    3b40:	00058513          	mv	a0,a1
    3b44:	00060493          	mv	s1,a2
    3b48:	fff00913          	li	s2,-1
    3b4c:	00050593          	mv	a1,a0
    3b50:	00a12623          	sw	a0,12(sp)
    3b54:	00040513          	mv	a0,s0
    3b58:	fffff097          	auipc	ra,0xfffff
    3b5c:	e64080e7          	jalr	-412(ra) # 29bc <fatfs_find_next_cluster>
    3b60:	fa0506e3          	beqz	a0,3b0c <fatfs_fat_add_cluster_to_chain+0x10>
    3b64:	00c12583          	lw	a1,12(sp)
    3b68:	ff2512e3          	bne	a0,s2,3b4c <fatfs_fat_add_cluster_to_chain+0x50>
    3b6c:	00048613          	mv	a2,s1
    3b70:	00040513          	mv	a0,s0
    3b74:	00000097          	auipc	ra,0x0
    3b78:	e00080e7          	jalr	-512(ra) # 3974 <fatfs_fat_set_cluster>
    3b7c:	fff00613          	li	a2,-1
    3b80:	00048593          	mv	a1,s1
    3b84:	00040513          	mv	a0,s0
    3b88:	00000097          	auipc	ra,0x0
    3b8c:	dec080e7          	jalr	-532(ra) # 3974 <fatfs_fat_set_cluster>
    3b90:	00100513          	li	a0,1
    3b94:	f7dff06f          	j	3b10 <fatfs_fat_add_cluster_to_chain+0x14>

00003b98 <fatfs_add_free_space>:
    3b98:	02452703          	lw	a4,36(a0)
    3b9c:	fd010113          	addi	sp,sp,-48
    3ba0:	02812423          	sw	s0,40(sp)
    3ba4:	03212023          	sw	s2,32(sp)
    3ba8:	01412c23          	sw	s4,24(sp)
    3bac:	01512a23          	sw	s5,20(sp)
    3bb0:	02112623          	sw	ra,44(sp)
    3bb4:	02912223          	sw	s1,36(sp)
    3bb8:	01312e23          	sw	s3,28(sp)
    3bbc:	fff00793          	li	a5,-1
    3bc0:	0005aa83          	lw	s5,0(a1)
    3bc4:	00050413          	mv	s0,a0
    3bc8:	00058913          	mv	s2,a1
    3bcc:	00060a13          	mv	s4,a2
    3bd0:	00f70863          	beq	a4,a5,3be0 <fatfs_add_free_space+0x48>
    3bd4:	fff00593          	li	a1,-1
    3bd8:	00000097          	auipc	ra,0x0
    3bdc:	bc4080e7          	jalr	-1084(ra) # 379c <fatfs_set_fs_info_next_free_cluster>
    3be0:	00000493          	li	s1,0
    3be4:	03449663          	bne	s1,s4,3c10 <fatfs_add_free_space+0x78>
    3be8:	00100513          	li	a0,1
    3bec:	02c12083          	lw	ra,44(sp)
    3bf0:	02812403          	lw	s0,40(sp)
    3bf4:	02412483          	lw	s1,36(sp)
    3bf8:	02012903          	lw	s2,32(sp)
    3bfc:	01c12983          	lw	s3,28(sp)
    3c00:	01812a03          	lw	s4,24(sp)
    3c04:	01412a83          	lw	s5,20(sp)
    3c08:	03010113          	addi	sp,sp,48
    3c0c:	00008067          	ret
    3c10:	00842583          	lw	a1,8(s0)
    3c14:	00c10613          	addi	a2,sp,12
    3c18:	00040513          	mv	a0,s0
    3c1c:	00000097          	auipc	ra,0x0
    3c20:	c38080e7          	jalr	-968(ra) # 3854 <fatfs_find_blank_cluster>
    3c24:	fc0504e3          	beqz	a0,3bec <fatfs_add_free_space+0x54>
    3c28:	00c12983          	lw	s3,12(sp)
    3c2c:	000a8593          	mv	a1,s5
    3c30:	00040513          	mv	a0,s0
    3c34:	00098613          	mv	a2,s3
    3c38:	00000097          	auipc	ra,0x0
    3c3c:	d3c080e7          	jalr	-708(ra) # 3974 <fatfs_fat_set_cluster>
    3c40:	fff00613          	li	a2,-1
    3c44:	00098593          	mv	a1,s3
    3c48:	00040513          	mv	a0,s0
    3c4c:	00000097          	auipc	ra,0x0
    3c50:	d28080e7          	jalr	-728(ra) # 3974 <fatfs_fat_set_cluster>
    3c54:	00049463          	bnez	s1,3c5c <fatfs_add_free_space+0xc4>
    3c58:	01392023          	sw	s3,0(s2)
    3c5c:	00148493          	addi	s1,s1,1
    3c60:	00098a93          	mv	s5,s3
    3c64:	f81ff06f          	j	3be4 <fatfs_add_free_space+0x4c>

00003c68 <_write_sectors>:
    3c68:	fb010113          	addi	sp,sp,-80
    3c6c:	03312e23          	sw	s3,60(sp)
    3c70:	000099b7          	lui	s3,0x9
    3c74:	03612823          	sw	s6,48(sp)
    3c78:	5ac9cb03          	lbu	s6,1452(s3) # 95ac <_fs>
    3c7c:	03512a23          	sw	s5,52(sp)
    3c80:	00058a93          	mv	s5,a1
    3c84:	fff00793          	li	a5,-1
    3c88:	04812423          	sw	s0,72(sp)
    3c8c:	000b0593          	mv	a1,s6
    3c90:	00050413          	mv	s0,a0
    3c94:	000a8513          	mv	a0,s5
    3c98:	00f12e23          	sw	a5,28(sp)
    3c9c:	04112623          	sw	ra,76(sp)
    3ca0:	04912223          	sw	s1,68(sp)
    3ca4:	05212023          	sw	s2,64(sp)
    3ca8:	03712623          	sw	s7,44(sp)
    3cac:	03812423          	sw	s8,40(sp)
    3cb0:	00068b93          	mv	s7,a3
    3cb4:	03912223          	sw	s9,36(sp)
    3cb8:	03a12023          	sw	s10,32(sp)
    3cbc:	00060c93          	mv	s9,a2
    3cc0:	03412c23          	sw	s4,56(sp)
    3cc4:	ffffd097          	auipc	ra,0xffffd
    3cc8:	f18080e7          	jalr	-232(ra) # bdc <__udivsi3>
    3ccc:	00050493          	mv	s1,a0
    3cd0:	000b0593          	mv	a1,s6
    3cd4:	000a8513          	mv	a0,s5
    3cd8:	ffffd097          	auipc	ra,0xffffd
    3cdc:	f4c080e7          	jalr	-180(ra) # c24 <__umodsi3>
    3ce0:	00ab87b3          	add	a5,s7,a0
    3ce4:	00050c13          	mv	s8,a0
    3ce8:	5ac98d13          	addi	s10,s3,1452
    3cec:	000b8913          	mv	s2,s7
    3cf0:	00fb7e63          	bgeu	s6,a5,3d0c <_write_sectors+0xa4>
    3cf4:	00048593          	mv	a1,s1
    3cf8:	000b0513          	mv	a0,s6
    3cfc:	ffffd097          	auipc	ra,0xffffd
    3d00:	7b4080e7          	jalr	1972(ra) # 14b0 <__mulsi3>
    3d04:	415b07b3          	sub	a5,s6,s5
    3d08:	00f50933          	add	s2,a0,a5
    3d0c:	22842a03          	lw	s4,552(s0)
    3d10:	069a1663          	bne	s4,s1,3d7c <_write_sectors+0x114>
    3d14:	22c42583          	lw	a1,556(s0)
    3d18:	5ac98513          	addi	a0,s3,1452
    3d1c:	ffffe097          	auipc	ra,0xffffe
    3d20:	af4080e7          	jalr	-1292(ra) # 1810 <fatfs_lba_of_cluster>
    3d24:	018505b3          	add	a1,a0,s8
    3d28:	00090693          	mv	a3,s2
    3d2c:	000c8613          	mv	a2,s9
    3d30:	5ac98513          	addi	a0,s3,1452
    3d34:	ffffe097          	auipc	ra,0xffffe
    3d38:	b44080e7          	jalr	-1212(ra) # 1878 <fatfs_sector_write>
    3d3c:	0c050063          	beqz	a0,3dfc <_write_sectors+0x194>
    3d40:	04c12083          	lw	ra,76(sp)
    3d44:	04812403          	lw	s0,72(sp)
    3d48:	04412483          	lw	s1,68(sp)
    3d4c:	03c12983          	lw	s3,60(sp)
    3d50:	03812a03          	lw	s4,56(sp)
    3d54:	03412a83          	lw	s5,52(sp)
    3d58:	03012b03          	lw	s6,48(sp)
    3d5c:	02c12b83          	lw	s7,44(sp)
    3d60:	02812c03          	lw	s8,40(sp)
    3d64:	02412c83          	lw	s9,36(sp)
    3d68:	02012d03          	lw	s10,32(sp)
    3d6c:	00090513          	mv	a0,s2
    3d70:	04012903          	lw	s2,64(sp)
    3d74:	05010113          	addi	sp,sp,80
    3d78:	00008067          	ret
    3d7c:	036ae663          	bltu	s5,s6,3da8 <_write_sectors+0x140>
    3d80:	001a0793          	addi	a5,s4,1
    3d84:	02979263          	bne	a5,s1,3da8 <_write_sectors+0x140>
    3d88:	22c42583          	lw	a1,556(s0)
    3d8c:	fff00a93          	li	s5,-1
    3d90:	029a6263          	bltu	s4,s1,3db4 <_write_sectors+0x14c>
    3d94:	fff00793          	li	a5,-1
    3d98:	02f58c63          	beq	a1,a5,3dd0 <_write_sectors+0x168>
    3d9c:	22b42623          	sw	a1,556(s0)
    3da0:	22942423          	sw	s1,552(s0)
    3da4:	f75ff06f          	j	3d18 <_write_sectors+0xb0>
    3da8:	00442583          	lw	a1,4(s0)
    3dac:	00000a13          	li	s4,0
    3db0:	fddff06f          	j	3d8c <_write_sectors+0x124>
    3db4:	5ac98513          	addi	a0,s3,1452
    3db8:	00b12623          	sw	a1,12(sp)
    3dbc:	fffff097          	auipc	ra,0xfffff
    3dc0:	c00080e7          	jalr	-1024(ra) # 29bc <fatfs_find_next_cluster>
    3dc4:	00c12583          	lw	a1,12(sp)
    3dc8:	00b12e23          	sw	a1,28(sp)
    3dcc:	03551c63          	bne	a0,s5,3e04 <_write_sectors+0x19c>
    3dd0:	000d4583          	lbu	a1,0(s10)
    3dd4:	fff58513          	addi	a0,a1,-1
    3dd8:	01750533          	add	a0,a0,s7
    3ddc:	ffffd097          	auipc	ra,0xffffd
    3de0:	e00080e7          	jalr	-512(ra) # bdc <__udivsi3>
    3de4:	00050613          	mv	a2,a0
    3de8:	01c10593          	addi	a1,sp,28
    3dec:	5ac98513          	addi	a0,s3,1452
    3df0:	00000097          	auipc	ra,0x0
    3df4:	da8080e7          	jalr	-600(ra) # 3b98 <fatfs_add_free_space>
    3df8:	00051c63          	bnez	a0,3e10 <_write_sectors+0x1a8>
    3dfc:	00000913          	li	s2,0
    3e00:	f41ff06f          	j	3d40 <_write_sectors+0xd8>
    3e04:	001a0a13          	addi	s4,s4,1
    3e08:	00050593          	mv	a1,a0
    3e0c:	f85ff06f          	j	3d90 <_write_sectors+0x128>
    3e10:	01c12583          	lw	a1,28(sp)
    3e14:	f89ff06f          	j	3d9c <_write_sectors+0x134>

00003e18 <fl_fflush>:
    3e18:	000057b7          	lui	a5,0x5
    3e1c:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    3e20:	ff010113          	addi	sp,sp,-16
    3e24:	00812423          	sw	s0,8(sp)
    3e28:	00112623          	sw	ra,12(sp)
    3e2c:	00912223          	sw	s1,4(sp)
    3e30:	00050413          	mv	s0,a0
    3e34:	00079663          	bnez	a5,3e40 <fl_fflush+0x28>
    3e38:	ffffe097          	auipc	ra,0xffffe
    3e3c:	b14080e7          	jalr	-1260(ra) # 194c <fl_init>
    3e40:	04040863          	beqz	s0,3e90 <fl_fflush+0x78>
    3e44:	000097b7          	lui	a5,0x9
    3e48:	5ac78713          	addi	a4,a5,1452 # 95ac <_fs>
    3e4c:	03c72703          	lw	a4,60(a4)
    3e50:	5ac78493          	addi	s1,a5,1452
    3e54:	00070463          	beqz	a4,3e5c <fl_fflush+0x44>
    3e58:	000700e7          	jalr	a4
    3e5c:	43442783          	lw	a5,1076(s0)
    3e60:	02078263          	beqz	a5,3e84 <fl_fflush+0x6c>
    3e64:	43042583          	lw	a1,1072(s0)
    3e68:	00100693          	li	a3,1
    3e6c:	23040613          	addi	a2,s0,560
    3e70:	00040513          	mv	a0,s0
    3e74:	00000097          	auipc	ra,0x0
    3e78:	df4080e7          	jalr	-524(ra) # 3c68 <_write_sectors>
    3e7c:	00050463          	beqz	a0,3e84 <fl_fflush+0x6c>
    3e80:	42042a23          	sw	zero,1076(s0)
    3e84:	0404a783          	lw	a5,64(s1)
    3e88:	00078463          	beqz	a5,3e90 <fl_fflush+0x78>
    3e8c:	000780e7          	jalr	a5
    3e90:	00c12083          	lw	ra,12(sp)
    3e94:	00812403          	lw	s0,8(sp)
    3e98:	00412483          	lw	s1,4(sp)
    3e9c:	00000513          	li	a0,0
    3ea0:	01010113          	addi	sp,sp,16
    3ea4:	00008067          	ret

00003ea8 <fl_fclose>:
    3ea8:	000057b7          	lui	a5,0x5
    3eac:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    3eb0:	ff010113          	addi	sp,sp,-16
    3eb4:	00812423          	sw	s0,8(sp)
    3eb8:	00112623          	sw	ra,12(sp)
    3ebc:	00912223          	sw	s1,4(sp)
    3ec0:	01212023          	sw	s2,0(sp)
    3ec4:	00050413          	mv	s0,a0
    3ec8:	00079663          	bnez	a5,3ed4 <fl_fclose+0x2c>
    3ecc:	ffffe097          	auipc	ra,0xffffe
    3ed0:	a80080e7          	jalr	-1408(ra) # 194c <fl_init>
    3ed4:	08040e63          	beqz	s0,3f70 <fl_fclose+0xc8>
    3ed8:	000094b7          	lui	s1,0x9
    3edc:	5ac48793          	addi	a5,s1,1452 # 95ac <_fs>
    3ee0:	03c7a783          	lw	a5,60(a5)
    3ee4:	5ac48913          	addi	s2,s1,1452
    3ee8:	00078463          	beqz	a5,3ef0 <fl_fclose+0x48>
    3eec:	000780e7          	jalr	a5
    3ef0:	00040513          	mv	a0,s0
    3ef4:	00000097          	auipc	ra,0x0
    3ef8:	f24080e7          	jalr	-220(ra) # 3e18 <fl_fflush>
    3efc:	01042783          	lw	a5,16(s0)
    3f00:	00078e63          	beqz	a5,3f1c <fl_fclose+0x74>
    3f04:	00c42683          	lw	a3,12(s0)
    3f08:	00042583          	lw	a1,0(s0)
    3f0c:	21c40613          	addi	a2,s0,540
    3f10:	5ac48513          	addi	a0,s1,1452
    3f14:	fffff097          	auipc	ra,0xfffff
    3f18:	300080e7          	jalr	768(ra) # 3214 <fatfs_update_file_length>
    3f1c:	fff00793          	li	a5,-1
    3f20:	42f42823          	sw	a5,1072(s0)
    3f24:	00040513          	mv	a0,s0
    3f28:	00042423          	sw	zero,8(s0)
    3f2c:	00042623          	sw	zero,12(s0)
    3f30:	00042223          	sw	zero,4(s0)
    3f34:	42042a23          	sw	zero,1076(s0)
    3f38:	00042823          	sw	zero,16(s0)
    3f3c:	ffffe097          	auipc	ra,0xffffe
    3f40:	88c080e7          	jalr	-1908(ra) # 17c8 <_free_file>
    3f44:	5ac48513          	addi	a0,s1,1452
    3f48:	fffff097          	auipc	ra,0xfffff
    3f4c:	a18080e7          	jalr	-1512(ra) # 2960 <fatfs_fat_purge>
    3f50:	04092783          	lw	a5,64(s2)
    3f54:	00078e63          	beqz	a5,3f70 <fl_fclose+0xc8>
    3f58:	00812403          	lw	s0,8(sp)
    3f5c:	00c12083          	lw	ra,12(sp)
    3f60:	00412483          	lw	s1,4(sp)
    3f64:	00012903          	lw	s2,0(sp)
    3f68:	01010113          	addi	sp,sp,16
    3f6c:	00078067          	jr	a5
    3f70:	00c12083          	lw	ra,12(sp)
    3f74:	00812403          	lw	s0,8(sp)
    3f78:	00412483          	lw	s1,4(sp)
    3f7c:	00012903          	lw	s2,0(sp)
    3f80:	01010113          	addi	sp,sp,16
    3f84:	00008067          	ret

00003f88 <fl_fread>:
    3f88:	fd010113          	addi	sp,sp,-48
    3f8c:	01512a23          	sw	s5,20(sp)
    3f90:	00050a93          	mv	s5,a0
    3f94:	00058513          	mv	a0,a1
    3f98:	00060593          	mv	a1,a2
    3f9c:	02812423          	sw	s0,40(sp)
    3fa0:	02912223          	sw	s1,36(sp)
    3fa4:	02112623          	sw	ra,44(sp)
    3fa8:	03212023          	sw	s2,32(sp)
    3fac:	01312e23          	sw	s3,28(sp)
    3fb0:	01412c23          	sw	s4,24(sp)
    3fb4:	01612823          	sw	s6,16(sp)
    3fb8:	01712623          	sw	s7,12(sp)
    3fbc:	01812423          	sw	s8,8(sp)
    3fc0:	01912223          	sw	s9,4(sp)
    3fc4:	00068493          	mv	s1,a3
    3fc8:	ffffd097          	auipc	ra,0xffffd
    3fcc:	4e8080e7          	jalr	1256(ra) # 14b0 <__mulsi3>
    3fd0:	000057b7          	lui	a5,0x5
    3fd4:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    3fd8:	00050413          	mv	s0,a0
    3fdc:	00079663          	bnez	a5,3fe8 <fl_fread+0x60>
    3fe0:	ffffe097          	auipc	ra,0xffffe
    3fe4:	96c080e7          	jalr	-1684(ra) # 194c <fl_init>
    3fe8:	120a8e63          	beqz	s5,4124 <fl_fread+0x19c>
    3fec:	12048c63          	beqz	s1,4124 <fl_fread+0x19c>
    3ff0:	4384c783          	lbu	a5,1080(s1)
    3ff4:	0017f793          	andi	a5,a5,1
    3ff8:	12078663          	beqz	a5,4124 <fl_fread+0x19c>
    3ffc:	02040e63          	beqz	s0,4038 <fl_fread+0xb0>
    4000:	0084a583          	lw	a1,8(s1)
    4004:	00c4a783          	lw	a5,12(s1)
    4008:	10f5fe63          	bgeu	a1,a5,4124 <fl_fread+0x19c>
    400c:	00b40733          	add	a4,s0,a1
    4010:	00040b13          	mv	s6,s0
    4014:	00e7f463          	bgeu	a5,a4,401c <fl_fread+0x94>
    4018:	40b78b33          	sub	s6,a5,a1
    401c:	0095d993          	srli	s3,a1,0x9
    4020:	1ff5f913          	andi	s2,a1,511
    4024:	00000413          	li	s0,0
    4028:	23048b93          	addi	s7,s1,560
    402c:	20000c13          	li	s8,512
    4030:	1ff00c93          	li	s9,511
    4034:	03644e63          	blt	s0,s6,4070 <fl_fread+0xe8>
    4038:	02c12083          	lw	ra,44(sp)
    403c:	00040513          	mv	a0,s0
    4040:	02812403          	lw	s0,40(sp)
    4044:	02412483          	lw	s1,36(sp)
    4048:	02012903          	lw	s2,32(sp)
    404c:	01c12983          	lw	s3,28(sp)
    4050:	01812a03          	lw	s4,24(sp)
    4054:	01412a83          	lw	s5,20(sp)
    4058:	01012b03          	lw	s6,16(sp)
    405c:	00c12b83          	lw	s7,12(sp)
    4060:	00812c03          	lw	s8,8(sp)
    4064:	00412c83          	lw	s9,4(sp)
    4068:	03010113          	addi	sp,sp,48
    406c:	00008067          	ret
    4070:	04091463          	bnez	s2,40b8 <fl_fread+0x130>
    4074:	408b06b3          	sub	a3,s6,s0
    4078:	04dcd063          	bge	s9,a3,40b8 <fl_fread+0x130>
    407c:	4096d693          	srai	a3,a3,0x9
    4080:	008a8633          	add	a2,s5,s0
    4084:	00098593          	mv	a1,s3
    4088:	00048513          	mv	a0,s1
    408c:	fffff097          	auipc	ra,0xfffff
    4090:	5c4080e7          	jalr	1476(ra) # 3650 <_read_sectors>
    4094:	fa0502e3          	beqz	a0,4038 <fl_fread+0xb0>
    4098:	00951a13          	slli	s4,a0,0x9
    409c:	00a989b3          	add	s3,s3,a0
    40a0:	0084a783          	lw	a5,8(s1)
    40a4:	01440433          	add	s0,s0,s4
    40a8:	00000913          	li	s2,0
    40ac:	014787b3          	add	a5,a5,s4
    40b0:	00f4a423          	sw	a5,8(s1)
    40b4:	f81ff06f          	j	4034 <fl_fread+0xac>
    40b8:	4304a783          	lw	a5,1072(s1)
    40bc:	03378e63          	beq	a5,s3,40f8 <fl_fread+0x170>
    40c0:	4344a783          	lw	a5,1076(s1)
    40c4:	00078863          	beqz	a5,40d4 <fl_fread+0x14c>
    40c8:	00048513          	mv	a0,s1
    40cc:	00000097          	auipc	ra,0x0
    40d0:	d4c080e7          	jalr	-692(ra) # 3e18 <fl_fflush>
    40d4:	00100693          	li	a3,1
    40d8:	000b8613          	mv	a2,s7
    40dc:	00098593          	mv	a1,s3
    40e0:	00048513          	mv	a0,s1
    40e4:	fffff097          	auipc	ra,0xfffff
    40e8:	56c080e7          	jalr	1388(ra) # 3650 <_read_sectors>
    40ec:	f40506e3          	beqz	a0,4038 <fl_fread+0xb0>
    40f0:	4334a823          	sw	s3,1072(s1)
    40f4:	4204aa23          	sw	zero,1076(s1)
    40f8:	412c07b3          	sub	a5,s8,s2
    40fc:	408b0a33          	sub	s4,s6,s0
    4100:	0147d463          	bge	a5,s4,4108 <fl_fread+0x180>
    4104:	00078a13          	mv	s4,a5
    4108:	000a0613          	mv	a2,s4
    410c:	012b85b3          	add	a1,s7,s2
    4110:	008a8533          	add	a0,s5,s0
    4114:	ffffd097          	auipc	ra,0xffffd
    4118:	b90080e7          	jalr	-1136(ra) # ca4 <memcpy>
    411c:	00198993          	addi	s3,s3,1
    4120:	f81ff06f          	j	40a0 <fl_fread+0x118>
    4124:	fff00413          	li	s0,-1
    4128:	f11ff06f          	j	4038 <fl_fread+0xb0>

0000412c <fatfs_allocate_free_space.part.0>:
    412c:	02452703          	lw	a4,36(a0)
    4130:	fd010113          	addi	sp,sp,-48
    4134:	02812423          	sw	s0,40(sp)
    4138:	03212023          	sw	s2,32(sp)
    413c:	01312e23          	sw	s3,28(sp)
    4140:	01512a23          	sw	s5,20(sp)
    4144:	02112623          	sw	ra,44(sp)
    4148:	02912223          	sw	s1,36(sp)
    414c:	01412c23          	sw	s4,24(sp)
    4150:	fff00793          	li	a5,-1
    4154:	00050413          	mv	s0,a0
    4158:	00058a93          	mv	s5,a1
    415c:	00060913          	mv	s2,a2
    4160:	00068993          	mv	s3,a3
    4164:	00f70863          	beq	a4,a5,4174 <fatfs_allocate_free_space.part.0+0x48>
    4168:	fff00593          	li	a1,-1
    416c:	fffff097          	auipc	ra,0xfffff
    4170:	630080e7          	jalr	1584(ra) # 379c <fatfs_set_fs_info_next_free_cluster>
    4174:	00044a03          	lbu	s4,0(s0)
    4178:	00098513          	mv	a0,s3
    417c:	009a1a13          	slli	s4,s4,0x9
    4180:	000a0593          	mv	a1,s4
    4184:	ffffd097          	auipc	ra,0xffffd
    4188:	a58080e7          	jalr	-1448(ra) # bdc <__udivsi3>
    418c:	00050493          	mv	s1,a0
    4190:	00050593          	mv	a1,a0
    4194:	000a0513          	mv	a0,s4
    4198:	ffffd097          	auipc	ra,0xffffd
    419c:	318080e7          	jalr	792(ra) # 14b0 <__mulsi3>
    41a0:	00a98463          	beq	s3,a0,41a8 <fatfs_allocate_free_space.part.0+0x7c>
    41a4:	00148493          	addi	s1,s1,1
    41a8:	060a8463          	beqz	s5,4210 <fatfs_allocate_free_space.part.0+0xe4>
    41ac:	00842583          	lw	a1,8(s0)
    41b0:	00c10613          	addi	a2,sp,12
    41b4:	00040513          	mv	a0,s0
    41b8:	fffff097          	auipc	ra,0xfffff
    41bc:	69c080e7          	jalr	1692(ra) # 3854 <fatfs_find_blank_cluster>
    41c0:	02050663          	beqz	a0,41ec <fatfs_allocate_free_space.part.0+0xc0>
    41c4:	00100793          	li	a5,1
    41c8:	04f49863          	bne	s1,a5,4218 <fatfs_allocate_free_space.part.0+0xec>
    41cc:	00c12483          	lw	s1,12(sp)
    41d0:	fff00613          	li	a2,-1
    41d4:	00040513          	mv	a0,s0
    41d8:	00048593          	mv	a1,s1
    41dc:	fffff097          	auipc	ra,0xfffff
    41e0:	798080e7          	jalr	1944(ra) # 3974 <fatfs_fat_set_cluster>
    41e4:	00100513          	li	a0,1
    41e8:	00992023          	sw	s1,0(s2)
    41ec:	02c12083          	lw	ra,44(sp)
    41f0:	02812403          	lw	s0,40(sp)
    41f4:	02412483          	lw	s1,36(sp)
    41f8:	02012903          	lw	s2,32(sp)
    41fc:	01c12983          	lw	s3,28(sp)
    4200:	01812a03          	lw	s4,24(sp)
    4204:	01412a83          	lw	s5,20(sp)
    4208:	03010113          	addi	sp,sp,48
    420c:	00008067          	ret
    4210:	00092783          	lw	a5,0(s2)
    4214:	00f12623          	sw	a5,12(sp)
    4218:	00048613          	mv	a2,s1
    421c:	00c10593          	addi	a1,sp,12
    4220:	00040513          	mv	a0,s0
    4224:	00000097          	auipc	ra,0x0
    4228:	974080e7          	jalr	-1676(ra) # 3b98 <fatfs_add_free_space>
    422c:	00a03533          	snez	a0,a0
    4230:	fbdff06f          	j	41ec <fatfs_allocate_free_space.part.0+0xc0>

00004234 <fatfs_add_file_entry>:
    4234:	f8010113          	addi	sp,sp,-128
    4238:	00f12823          	sw	a5,16(sp)
    423c:	03852783          	lw	a5,56(a0)
    4240:	06112e23          	sw	ra,124(sp)
    4244:	06812c23          	sw	s0,120(sp)
    4248:	06912a23          	sw	s1,116(sp)
    424c:	07212823          	sw	s2,112(sp)
    4250:	07312623          	sw	s3,108(sp)
    4254:	07412423          	sw	s4,104(sp)
    4258:	07512223          	sw	s5,100(sp)
    425c:	07612023          	sw	s6,96(sp)
    4260:	05712e23          	sw	s7,92(sp)
    4264:	05812c23          	sw	s8,88(sp)
    4268:	05912a23          	sw	s9,84(sp)
    426c:	05a12823          	sw	s10,80(sp)
    4270:	05b12623          	sw	s11,76(sp)
    4274:	00e12623          	sw	a4,12(sp)
    4278:	01012a23          	sw	a6,20(sp)
    427c:	04079463          	bnez	a5,42c4 <fatfs_add_file_entry+0x90>
    4280:	00000913          	li	s2,0
    4284:	07c12083          	lw	ra,124(sp)
    4288:	07812403          	lw	s0,120(sp)
    428c:	07412483          	lw	s1,116(sp)
    4290:	06c12983          	lw	s3,108(sp)
    4294:	06812a03          	lw	s4,104(sp)
    4298:	06412a83          	lw	s5,100(sp)
    429c:	06012b03          	lw	s6,96(sp)
    42a0:	05c12b83          	lw	s7,92(sp)
    42a4:	05812c03          	lw	s8,88(sp)
    42a8:	05412c83          	lw	s9,84(sp)
    42ac:	05012d03          	lw	s10,80(sp)
    42b0:	04c12d83          	lw	s11,76(sp)
    42b4:	00090513          	mv	a0,s2
    42b8:	07012903          	lw	s2,112(sp)
    42bc:	08010113          	addi	sp,sp,128
    42c0:	00008067          	ret
    42c4:	00050413          	mv	s0,a0
    42c8:	00060513          	mv	a0,a2
    42cc:	00058b13          	mv	s6,a1
    42d0:	00060c93          	mv	s9,a2
    42d4:	00068b93          	mv	s7,a3
    42d8:	ffffe097          	auipc	ra,0xffffe
    42dc:	8e4080e7          	jalr	-1820(ra) # 1bbc <fatfs_lfn_entries_required>
    42e0:	00150713          	addi	a4,a0,1
    42e4:	00100793          	li	a5,1
    42e8:	00050493          	mv	s1,a0
    42ec:	f8e7fae3          	bgeu	a5,a4,4280 <fatfs_add_file_entry+0x4c>
    42f0:	00000993          	li	s3,0
    42f4:	00000a93          	li	s5,0
    42f8:	00000a13          	li	s4,0
    42fc:	00000c13          	li	s8,0
    4300:	00000d13          	li	s10,0
    4304:	01000d93          	li	s11,16
    4308:	00000693          	li	a3,0
    430c:	00098613          	mv	a2,s3
    4310:	000b0593          	mv	a1,s6
    4314:	00040513          	mv	a0,s0
    4318:	ffffe097          	auipc	ra,0xffffe
    431c:	7b4080e7          	jalr	1972(ra) # 2acc <fatfs_sector_reader>
    4320:	00050913          	mv	s2,a0
    4324:	14050a63          	beqz	a0,4478 <fatfs_add_file_entry+0x244>
    4328:	04440693          	addi	a3,s0,68
    432c:	000d0913          	mv	s2,s10
    4330:	00000713          	li	a4,0
    4334:	00068513          	mv	a0,a3
    4338:	00e12e23          	sw	a4,28(sp)
    433c:	00d12c23          	sw	a3,24(sp)
    4340:	ffffd097          	auipc	ra,0xffffd
    4344:	78c080e7          	jalr	1932(ra) # 1acc <fatfs_entry_lfn_text>
    4348:	01812683          	lw	a3,24(sp)
    434c:	01c12703          	lw	a4,28(sp)
    4350:	00050d13          	mv	s10,a0
    4354:	02050c63          	beqz	a0,438c <fatfs_add_file_entry+0x158>
    4358:	00091863          	bnez	s2,4368 <fatfs_add_file_entry+0x134>
    435c:	00070a93          	mv	s5,a4
    4360:	00098a13          	mv	s4,s3
    4364:	00100c13          	li	s8,1
    4368:	00190d13          	addi	s10,s2,1
    436c:	00170713          	addi	a4,a4,1
    4370:	0ff77713          	zext.b	a4,a4
    4374:	02068693          	addi	a3,a3,32
    4378:	01b71663          	bne	a4,s11,4384 <fatfs_add_file_entry+0x150>
    437c:	00198993          	addi	s3,s3,1
    4380:	f89ff06f          	j	4308 <fatfs_add_file_entry+0xd4>
    4384:	000d0913          	mv	s2,s10
    4388:	fadff06f          	j	4334 <fatfs_add_file_entry+0x100>
    438c:	0006c603          	lbu	a2,0(a3)
    4390:	0e500793          	li	a5,229
    4394:	0cf61c63          	bne	a2,a5,446c <fatfs_add_file_entry+0x238>
    4398:	00091863          	bnez	s2,43a8 <fatfs_add_file_entry+0x174>
    439c:	00070a93          	mv	s5,a4
    43a0:	00098a13          	mv	s4,s3
    43a4:	00100c13          	li	s8,1
    43a8:	00190d13          	addi	s10,s2,1
    43ac:	fc9940e3          	blt	s2,s1,436c <fatfs_add_file_entry+0x138>
    43b0:	00bb8713          	addi	a4,s7,11
    43b4:	000b8793          	mv	a5,s7
    43b8:	00000913          	li	s2,0
    43bc:	0007c603          	lbu	a2,0(a5)
    43c0:	00791693          	slli	a3,s2,0x7
    43c4:	00195913          	srli	s2,s2,0x1
    43c8:	00c90933          	add	s2,s2,a2
    43cc:	00178793          	addi	a5,a5,1
    43d0:	00d90933          	add	s2,s2,a3
    43d4:	0ff97913          	zext.b	s2,s2
    43d8:	fee792e3          	bne	a5,a4,43bc <fatfs_add_file_entry+0x188>
    43dc:	000a0993          	mv	s3,s4
    43e0:	00000d93          	li	s11,0
    43e4:	00000693          	li	a3,0
    43e8:	00098613          	mv	a2,s3
    43ec:	000b0593          	mv	a1,s6
    43f0:	00040513          	mv	a0,s0
    43f4:	ffffe097          	auipc	ra,0xffffe
    43f8:	6d8080e7          	jalr	1752(ra) # 2acc <fatfs_sector_reader>
    43fc:	e80502e3          	beqz	a0,4280 <fatfs_add_file_entry+0x4c>
    4400:	04440d13          	addi	s10,s0,68
    4404:	00000713          	li	a4,0
    4408:	00000793          	li	a5,0
    440c:	000d0c13          	mv	s8,s10
    4410:	000d9663          	bnez	s11,441c <fatfs_add_file_entry+0x1e8>
    4414:	11499e63          	bne	s3,s4,4530 <fatfs_add_file_entry+0x2fc>
    4418:	11579c63          	bne	a5,s5,4530 <fatfs_add_file_entry+0x2fc>
    441c:	0e049463          	bnez	s1,4504 <fatfs_add_file_entry+0x2d0>
    4420:	01412703          	lw	a4,20(sp)
    4424:	00c12603          	lw	a2,12(sp)
    4428:	01012583          	lw	a1,16(sp)
    442c:	02010693          	addi	a3,sp,32
    4430:	000b8513          	mv	a0,s7
    4434:	ffffe097          	auipc	ra,0xffffe
    4438:	8e0080e7          	jalr	-1824(ra) # 1d14 <fatfs_sfn_create_entry>
    443c:	02000613          	li	a2,32
    4440:	02010593          	addi	a1,sp,32
    4444:	000d0513          	mv	a0,s10
    4448:	ffffd097          	auipc	ra,0xffffd
    444c:	85c080e7          	jalr	-1956(ra) # ca4 <memcpy>
    4450:	03842783          	lw	a5,56(s0)
    4454:	24442503          	lw	a0,580(s0)
    4458:	00100613          	li	a2,1
    445c:	000c0593          	mv	a1,s8
    4460:	000780e7          	jalr	a5
    4464:	00050913          	mv	s2,a0
    4468:	e1dff06f          	j	4284 <fatfs_add_file_entry+0x50>
    446c:	f20606e3          	beqz	a2,4398 <fatfs_add_file_entry+0x164>
    4470:	00000c13          	li	s8,0
    4474:	ef9ff06f          	j	436c <fatfs_add_file_entry+0x138>
    4478:	00842583          	lw	a1,8(s0)
    447c:	02010613          	addi	a2,sp,32
    4480:	00040513          	mv	a0,s0
    4484:	fffff097          	auipc	ra,0xfffff
    4488:	3d0080e7          	jalr	976(ra) # 3854 <fatfs_find_blank_cluster>
    448c:	de050ce3          	beqz	a0,4284 <fatfs_add_file_entry+0x50>
    4490:	02012d83          	lw	s11,32(sp)
    4494:	000b0593          	mv	a1,s6
    4498:	00040513          	mv	a0,s0
    449c:	000d8613          	mv	a2,s11
    44a0:	fffff097          	auipc	ra,0xfffff
    44a4:	65c080e7          	jalr	1628(ra) # 3afc <fatfs_fat_add_cluster_to_chain>
    44a8:	dc050ee3          	beqz	a0,4284 <fatfs_add_file_entry+0x50>
    44ac:	20000613          	li	a2,512
    44b0:	00000593          	li	a1,0
    44b4:	04440513          	addi	a0,s0,68
    44b8:	ffffc097          	auipc	ra,0xffffc
    44bc:	7d0080e7          	jalr	2000(ra) # c88 <memset>
    44c0:	00000d13          	li	s10,0
    44c4:	00044783          	lbu	a5,0(s0)
    44c8:	00fd6a63          	bltu	s10,a5,44dc <fatfs_add_file_entry+0x2a8>
    44cc:	ee0c12e3          	bnez	s8,43b0 <fatfs_add_file_entry+0x17c>
    44d0:	00098a13          	mv	s4,s3
    44d4:	00000a93          	li	s5,0
    44d8:	ed9ff06f          	j	43b0 <fatfs_add_file_entry+0x17c>
    44dc:	00000693          	li	a3,0
    44e0:	000d0613          	mv	a2,s10
    44e4:	000d8593          	mv	a1,s11
    44e8:	00040513          	mv	a0,s0
    44ec:	ffffd097          	auipc	ra,0xffffd
    44f0:	3a4080e7          	jalr	932(ra) # 1890 <fatfs_write_sector>
    44f4:	d80508e3          	beqz	a0,4284 <fatfs_add_file_entry+0x50>
    44f8:	001d0613          	addi	a2,s10,1
    44fc:	0ff67d13          	zext.b	s10,a2
    4500:	fc5ff06f          	j	44c4 <fatfs_add_file_entry+0x290>
    4504:	fff48493          	addi	s1,s1,-1
    4508:	00090693          	mv	a3,s2
    450c:	00048613          	mv	a2,s1
    4510:	000d0593          	mv	a1,s10
    4514:	000c8513          	mv	a0,s9
    4518:	00f12c23          	sw	a5,24(sp)
    451c:	ffffd097          	auipc	ra,0xffffd
    4520:	6d0080e7          	jalr	1744(ra) # 1bec <fatfs_filename_to_lfn>
    4524:	01812783          	lw	a5,24(sp)
    4528:	00100d93          	li	s11,1
    452c:	00100713          	li	a4,1
    4530:	00178793          	addi	a5,a5,1
    4534:	0ff7f793          	zext.b	a5,a5
    4538:	01000693          	li	a3,16
    453c:	020d0d13          	addi	s10,s10,32
    4540:	ecd798e3          	bne	a5,a3,4410 <fatfs_add_file_entry+0x1dc>
    4544:	00070e63          	beqz	a4,4560 <fatfs_add_file_entry+0x32c>
    4548:	03842783          	lw	a5,56(s0)
    454c:	24442503          	lw	a0,580(s0)
    4550:	00100613          	li	a2,1
    4554:	000c0593          	mv	a1,s8
    4558:	000780e7          	jalr	a5
    455c:	d20502e3          	beqz	a0,4280 <fatfs_add_file_entry+0x4c>
    4560:	00198993          	addi	s3,s3,1
    4564:	e81ff06f          	j	43e4 <fatfs_add_file_entry+0x1b0>

00004568 <fl_fopen>:
    4568:	000057b7          	lui	a5,0x5
    456c:	c8c7a783          	lw	a5,-884(a5) # 4c8c <_filelib_init>
    4570:	fa010113          	addi	sp,sp,-96
    4574:	04812c23          	sw	s0,88(sp)
    4578:	05412423          	sw	s4,72(sp)
    457c:	04112e23          	sw	ra,92(sp)
    4580:	04912a23          	sw	s1,84(sp)
    4584:	05212823          	sw	s2,80(sp)
    4588:	05312623          	sw	s3,76(sp)
    458c:	05512223          	sw	s5,68(sp)
    4590:	05612023          	sw	s6,64(sp)
    4594:	03712e23          	sw	s7,60(sp)
    4598:	03812c23          	sw	s8,56(sp)
    459c:	03912a23          	sw	s9,52(sp)
    45a0:	00050a13          	mv	s4,a0
    45a4:	00058413          	mv	s0,a1
    45a8:	00079663          	bnez	a5,45b4 <fl_fopen+0x4c>
    45ac:	ffffd097          	auipc	ra,0xffffd
    45b0:	3a0080e7          	jalr	928(ra) # 194c <fl_init>
    45b4:	000057b7          	lui	a5,0x5
    45b8:	c907a783          	lw	a5,-880(a5) # 4c90 <_filelib_valid>
    45bc:	30078263          	beqz	a5,48c0 <fl_fopen+0x358>
    45c0:	300a0063          	beqz	s4,48c0 <fl_fopen+0x358>
    45c4:	10040463          	beqz	s0,46cc <fl_fopen+0x164>
    45c8:	00040513          	mv	a0,s0
    45cc:	ffffc097          	auipc	ra,0xffffc
    45d0:	6fc080e7          	jalr	1788(ra) # cc8 <strlen>
    45d4:	00000493          	li	s1,0
    45d8:	00000713          	li	a4,0
    45dc:	05700693          	li	a3,87
    45e0:	07200613          	li	a2,114
    45e4:	07700813          	li	a6,119
    45e8:	06100893          	li	a7,97
    45ec:	06200313          	li	t1,98
    45f0:	04100593          	li	a1,65
    45f4:	04200e13          	li	t3,66
    45f8:	05200e93          	li	t4,82
    45fc:	02b00f13          	li	t5,43
    4600:	10a74263          	blt	a4,a0,4704 <fl_fopen+0x19c>
    4604:	00009937          	lui	s2,0x9
    4608:	5ac90793          	addi	a5,s2,1452 # 95ac <_fs>
    460c:	0387a783          	lw	a5,56(a5)
    4610:	5ac90b13          	addi	s6,s2,1452
    4614:	00079463          	bnez	a5,461c <fl_fopen+0xb4>
    4618:	0d94f493          	andi	s1,s1,217
    461c:	03cb2783          	lw	a5,60(s6)
    4620:	00078463          	beqz	a5,4628 <fl_fopen+0xc0>
    4624:	000780e7          	jalr	a5
    4628:	0014fc13          	andi	s8,s1,1
    462c:	160c1463          	bnez	s8,4794 <fl_fopen+0x22c>
    4630:	0204f793          	andi	a5,s1,32
    4634:	08078463          	beqz	a5,46bc <fl_fopen+0x154>
    4638:	038b2783          	lw	a5,56(s6)
    463c:	06078a63          	beqz	a5,46b0 <fl_fopen+0x148>
    4640:	ffffd097          	auipc	ra,0xffffd
    4644:	114080e7          	jalr	276(ra) # 1754 <_allocate_file>
    4648:	00050413          	mv	s0,a0
    464c:	06050263          	beqz	a0,46b0 <fl_fopen+0x148>
    4650:	01450b93          	addi	s7,a0,20
    4654:	10400613          	li	a2,260
    4658:	00000593          	li	a1,0
    465c:	000b8513          	mv	a0,s7
    4660:	ffffc097          	auipc	ra,0xffffc
    4664:	628080e7          	jalr	1576(ra) # c88 <memset>
    4668:	11840a93          	addi	s5,s0,280
    466c:	10400613          	li	a2,260
    4670:	00000593          	li	a1,0
    4674:	000a8513          	mv	a0,s5
    4678:	ffffc097          	auipc	ra,0xffffc
    467c:	610080e7          	jalr	1552(ra) # c88 <memset>
    4680:	10400713          	li	a4,260
    4684:	000a8693          	mv	a3,s5
    4688:	10400613          	li	a2,260
    468c:	000b8593          	mv	a1,s7
    4690:	000a0513          	mv	a0,s4
    4694:	ffffe097          	auipc	ra,0xffffe
    4698:	b74080e7          	jalr	-1164(ra) # 2208 <fatfs_split_path>
    469c:	fff00793          	li	a5,-1
    46a0:	10f51863          	bne	a0,a5,47b0 <fl_fopen+0x248>
    46a4:	00040513          	mv	a0,s0
    46a8:	ffffd097          	auipc	ra,0xffffd
    46ac:	120080e7          	jalr	288(ra) # 17c8 <_free_file>
    46b0:	000c1663          	bnez	s8,46bc <fl_fopen+0x154>
    46b4:	0064f793          	andi	a5,s1,6
    46b8:	1e079a63          	bnez	a5,48ac <fl_fopen+0x344>
    46bc:	00000413          	li	s0,0
    46c0:	040b2783          	lw	a5,64(s6)
    46c4:	00078463          	beqz	a5,46cc <fl_fopen+0x164>
    46c8:	000780e7          	jalr	a5
    46cc:	05c12083          	lw	ra,92(sp)
    46d0:	00040513          	mv	a0,s0
    46d4:	05812403          	lw	s0,88(sp)
    46d8:	05412483          	lw	s1,84(sp)
    46dc:	05012903          	lw	s2,80(sp)
    46e0:	04c12983          	lw	s3,76(sp)
    46e4:	04812a03          	lw	s4,72(sp)
    46e8:	04412a83          	lw	s5,68(sp)
    46ec:	04012b03          	lw	s6,64(sp)
    46f0:	03c12b83          	lw	s7,60(sp)
    46f4:	03812c03          	lw	s8,56(sp)
    46f8:	03412c83          	lw	s9,52(sp)
    46fc:	06010113          	addi	sp,sp,96
    4700:	00008067          	ret
    4704:	00e407b3          	add	a5,s0,a4
    4708:	0007c783          	lbu	a5,0(a5)
    470c:	04d78463          	beq	a5,a3,4754 <fl_fopen+0x1ec>
    4710:	02f6e463          	bltu	a3,a5,4738 <fl_fopen+0x1d0>
    4714:	04b78463          	beq	a5,a1,475c <fl_fopen+0x1f4>
    4718:	00f5e863          	bltu	a1,a5,4728 <fl_fopen+0x1c0>
    471c:	05e78463          	beq	a5,t5,4764 <fl_fopen+0x1fc>
    4720:	00170713          	addi	a4,a4,1
    4724:	eddff06f          	j	4600 <fl_fopen+0x98>
    4728:	03c78063          	beq	a5,t3,4748 <fl_fopen+0x1e0>
    472c:	ffd79ae3          	bne	a5,t4,4720 <fl_fopen+0x1b8>
    4730:	0014e493          	ori	s1,s1,1
    4734:	fedff06f          	j	4720 <fl_fopen+0x1b8>
    4738:	fec78ce3          	beq	a5,a2,4730 <fl_fopen+0x1c8>
    473c:	00f66a63          	bltu	a2,a5,4750 <fl_fopen+0x1e8>
    4740:	01178e63          	beq	a5,a7,475c <fl_fopen+0x1f4>
    4744:	fc679ee3          	bne	a5,t1,4720 <fl_fopen+0x1b8>
    4748:	0084e493          	ori	s1,s1,8
    474c:	fd5ff06f          	j	4720 <fl_fopen+0x1b8>
    4750:	fd0798e3          	bne	a5,a6,4720 <fl_fopen+0x1b8>
    4754:	0324e493          	ori	s1,s1,50
    4758:	fc9ff06f          	j	4720 <fl_fopen+0x1b8>
    475c:	0264e493          	ori	s1,s1,38
    4760:	fc1ff06f          	j	4720 <fl_fopen+0x1b8>
    4764:	0014f793          	andi	a5,s1,1
    4768:	00078663          	beqz	a5,4774 <fl_fopen+0x20c>
    476c:	0024e493          	ori	s1,s1,2
    4770:	fb1ff06f          	j	4720 <fl_fopen+0x1b8>
    4774:	0024f793          	andi	a5,s1,2
    4778:	00078663          	beqz	a5,4784 <fl_fopen+0x21c>
    477c:	0314e493          	ori	s1,s1,49
    4780:	fa1ff06f          	j	4720 <fl_fopen+0x1b8>
    4784:	0044f793          	andi	a5,s1,4
    4788:	f8078ce3          	beqz	a5,4720 <fl_fopen+0x1b8>
    478c:	0274e493          	ori	s1,s1,39
    4790:	f91ff06f          	j	4720 <fl_fopen+0x1b8>
    4794:	000a0513          	mv	a0,s4
    4798:	fffff097          	auipc	ra,0xfffff
    479c:	830080e7          	jalr	-2000(ra) # 2fc8 <_open_file>
    47a0:	00050413          	mv	s0,a0
    47a4:	e80506e3          	beqz	a0,4630 <fl_fopen+0xc8>
    47a8:	42940c23          	sb	s1,1080(s0)
    47ac:	f15ff06f          	j	46c0 <fl_fopen+0x158>
    47b0:	00040513          	mv	a0,s0
    47b4:	ffffe097          	auipc	ra,0xffffe
    47b8:	ca4080e7          	jalr	-860(ra) # 2458 <_check_file_open>
    47bc:	00050993          	mv	s3,a0
    47c0:	ee0512e3          	bnez	a0,46a4 <fl_fopen+0x13c>
    47c4:	01444783          	lbu	a5,20(s0)
    47c8:	0a079a63          	bnez	a5,487c <fl_fopen+0x314>
    47cc:	008b2783          	lw	a5,8(s6)
    47d0:	00f42023          	sw	a5,0(s0)
    47d4:	00042583          	lw	a1,0(s0)
    47d8:	01010693          	addi	a3,sp,16
    47dc:	000a8613          	mv	a2,s5
    47e0:	5ac90513          	addi	a0,s2,1452
    47e4:	ffffe097          	auipc	ra,0xffffe
    47e8:	428080e7          	jalr	1064(ra) # 2c0c <fatfs_get_file_entry>
    47ec:	00100793          	li	a5,1
    47f0:	eaf50ae3          	beq	a0,a5,46a4 <fl_fopen+0x13c>
    47f4:	00042223          	sw	zero,4(s0)
    47f8:	00100693          	li	a3,1
    47fc:	00440613          	addi	a2,s0,4
    4800:	00100593          	li	a1,1
    4804:	5ac90513          	addi	a0,s2,1452
    4808:	00000097          	auipc	ra,0x0
    480c:	924080e7          	jalr	-1756(ra) # 412c <fatfs_allocate_free_space.part.0>
    4810:	e8050ae3          	beqz	a0,46a4 <fl_fopen+0x13c>
    4814:	00002cb7          	lui	s9,0x2
    4818:	21c40b93          	addi	s7,s0,540
    481c:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_init+0x173>
    4820:	000a8593          	mv	a1,s5
    4824:	00410513          	addi	a0,sp,4
    4828:	ffffd097          	auipc	ra,0xffffd
    482c:	590080e7          	jalr	1424(ra) # 1db8 <fatfs_lfn_create_sfn>
    4830:	06098263          	beqz	s3,4894 <fl_fopen+0x32c>
    4834:	00098613          	mv	a2,s3
    4838:	00410593          	addi	a1,sp,4
    483c:	000b8513          	mv	a0,s7
    4840:	ffffd097          	auipc	ra,0xffffd
    4844:	6f0080e7          	jalr	1776(ra) # 1f30 <fatfs_lfn_generate_tail>
    4848:	00042583          	lw	a1,0(s0)
    484c:	000b8613          	mv	a2,s7
    4850:	5ac90513          	addi	a0,s2,1452
    4854:	fffff097          	auipc	ra,0xfffff
    4858:	8ec080e7          	jalr	-1812(ra) # 3140 <fatfs_sfn_exists>
    485c:	06050663          	beqz	a0,48c8 <fl_fopen+0x360>
    4860:	00198993          	addi	s3,s3,1
    4864:	fb999ee3          	bne	s3,s9,4820 <fl_fopen+0x2b8>
    4868:	00442583          	lw	a1,4(s0)
    486c:	5ac90513          	addi	a0,s2,1452
    4870:	fffff097          	auipc	ra,0xfffff
    4874:	21c080e7          	jalr	540(ra) # 3a8c <fatfs_free_cluster_chain>
    4878:	e2dff06f          	j	46a4 <fl_fopen+0x13c>
    487c:	00040593          	mv	a1,s0
    4880:	000b8513          	mv	a0,s7
    4884:	ffffe097          	auipc	ra,0xffffe
    4888:	590080e7          	jalr	1424(ra) # 2e14 <_open_directory>
    488c:	f40514e3          	bnez	a0,47d4 <fl_fopen+0x26c>
    4890:	e15ff06f          	j	46a4 <fl_fopen+0x13c>
    4894:	00b00613          	li	a2,11
    4898:	00410593          	addi	a1,sp,4
    489c:	000b8513          	mv	a0,s7
    48a0:	ffffc097          	auipc	ra,0xffffc
    48a4:	404080e7          	jalr	1028(ra) # ca4 <memcpy>
    48a8:	fa1ff06f          	j	4848 <fl_fopen+0x2e0>
    48ac:	000a0513          	mv	a0,s4
    48b0:	ffffe097          	auipc	ra,0xffffe
    48b4:	718080e7          	jalr	1816(ra) # 2fc8 <_open_file>
    48b8:	00050413          	mv	s0,a0
    48bc:	0640006f          	j	4920 <fl_fopen+0x3b8>
    48c0:	00000413          	li	s0,0
    48c4:	e09ff06f          	j	46cc <fl_fopen+0x164>
    48c8:	00442703          	lw	a4,4(s0)
    48cc:	00042583          	lw	a1,0(s0)
    48d0:	00000813          	li	a6,0
    48d4:	00000793          	li	a5,0
    48d8:	000b8693          	mv	a3,s7
    48dc:	000a8613          	mv	a2,s5
    48e0:	5ac90513          	addi	a0,s2,1452
    48e4:	00000097          	auipc	ra,0x0
    48e8:	950080e7          	jalr	-1712(ra) # 4234 <fatfs_add_file_entry>
    48ec:	f6050ee3          	beqz	a0,4868 <fl_fopen+0x300>
    48f0:	fff00793          	li	a5,-1
    48f4:	00042623          	sw	zero,12(s0)
    48f8:	00042423          	sw	zero,8(s0)
    48fc:	42f42823          	sw	a5,1072(s0)
    4900:	42042a23          	sw	zero,1076(s0)
    4904:	00042823          	sw	zero,16(s0)
    4908:	22f42423          	sw	a5,552(s0)
    490c:	22f42623          	sw	a5,556(s0)
    4910:	5ac90513          	addi	a0,s2,1452
    4914:	ffffe097          	auipc	ra,0xffffe
    4918:	04c080e7          	jalr	76(ra) # 2960 <fatfs_fat_purge>
    491c:	e80c06e3          	beqz	s8,47a8 <fl_fopen+0x240>
    4920:	e80414e3          	bnez	s0,47a8 <fl_fopen+0x240>
    4924:	d99ff06f          	j	46bc <fl_fopen+0x154>

00004928 <acmd41>:
    4928:	00004069 00000100                       i@......

00004930 <cmd0>:
    4930:	00000040 00009500                       @.......

00004938 <cmd16>:
    4938:	02000050 00001500                       P.......

00004940 <cmd55>:
    4940:	00000077 00000100                       w.......

00004948 <cmd8>:
    4948:	01000048 000087aa                       H.......

00004950 <AUDIO>:
    4950:	00018000                                ....

00004954 <BUTTONS>:
    4954:	00010100                                ....

00004958 <LEDS>:
    4958:	00010004                                ....

0000495c <OLED>:
    495c:	00010008                                ....

00004960 <OLED_RST>:
    4960:	00010010                                ....

00004964 <SDCARD>:
    4964:	00010080 0000002f 4f525245 61702052     ..../...ERROR pa
    4974:	74206874 6c206f6f 65677261 0000000a     th too large....
    4984:	656c6966 7325203a 0000000a 00006272     file: %s....rb..
    4994:	656c6966 746f6e20 756f6620 203a646e     file not found: 
    49a4:	000a7325 6973756d 69662063 6620656c     %s..music file f
    49b4:	646e756f 7325203a 0000000a 79616c70     ound: %s....play
    49c4:	20676e69 202e2e2e 00000000 706f502f     ing ... ..../Pop
    49d4:	00000000 6d206f4e 63697375 6c696620     ....No music fil
    49e4:	66207365 646e756f 00000a21 20202020     es found!...    
    49f4:	3d3d3d3d 6f73203d 2073676e 3d3d3d3d     ===== songs ====
    4a04:	2020203d 000a0a20 203e6425 000a7325     =    ...%d> %s..

00004a14 <font>:
    4a14:	00000000 00002f00 00030000 14000003     ...../..........
    4a24:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4a34:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4a44:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4a54:	00080800 00200000 20000000 02040810     ...... .... ....
    4a64:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4a74:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4a84:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4a94:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4aa4:	00141400 0a110000 01000004 0007052d     ............-...
    4ab4:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4ac4:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4ad4:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4ae4:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4af4:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4b04:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4b14:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4b24:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4b34:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4b44:	003f2102 01020000 20000201 00000020     .!?........  ...
    4b54:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4b64:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4b74:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4b84:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4b94:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4ba4:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4bb4:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4bc4:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4bd4:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4be4:	043f2100 02010000 00000102 00000000     .!?.............
    4bf4:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    4c04:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    4c14:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    4c24:	54414620 74656420 736c6961 64252820      FAT details (%d
    4c34:	0a0d2129 00000000 00000001 00000003     )!..............
    4c44:	00000005 00000007 00000009 0000000e     ................
    4c54:	00000010 00000012 00000014 00000016     ................
    4c64:	00000018 0000001c 0000001e              ............

00004c70 <item_count>:
    4c70:	00000000                                ....

00004c74 <sdcard_while_loading_callback>:
    4c74:	00000000                                ....

00004c78 <back_color>:
    4c78:	00000000                                ....

00004c7c <cursor_x>:
    4c7c:	00000000                                ....

00004c80 <cursor_y>:
    4c80:	00000000                                ....

00004c84 <front_color>:
    4c84:	00000000                                ....

00004c88 <f_putchar>:
    4c88:	00000000                                ....

00004c8c <_filelib_init>:
    4c8c:	00000000                                ....

00004c90 <_filelib_valid>:
    4c90:	00000000                                ....

00004c94 <_free_file_list>:
	...

00004c9c <_open_file_list>:
	...
