
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	664080e7          	jalr	1636(ra) # 668 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_fs+0x64f4>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	d247a403          	lw	s0,-732(a5) # 4d24 <AUDIO>
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
      54:	fec080e7          	jalr	-20(ra) # 103c <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	fcc080e7          	jalr	-52(ra) # 103c <memset>
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
      ac:	304080e7          	jalr	772(ra) # 13ac <display_framebuffer>
      b0:	00004637          	lui	a2,0x4
      b4:	00000593          	li	a1,0
      b8:	00001097          	auipc	ra,0x1
      bc:	f84080e7          	jalr	-124(ra) # 103c <memset>
      c0:	00010413          	mv	s0,sp
      c4:	000055b7          	lui	a1,0x5
      c8:	d3c58593          	addi	a1,a1,-708 # 4d3c <SDCARD+0x4>
      cc:	00040513          	mv	a0,s0
      d0:	00010023          	sb	zero,0(sp)
      d4:	00001097          	auipc	ra,0x1
      d8:	04c080e7          	jalr	76(ra) # 1120 <strcat>
      dc:	00048593          	mv	a1,s1
      e0:	00040513          	mv	a0,s0
      e4:	00001097          	auipc	ra,0x1
      e8:	03c080e7          	jalr	60(ra) # 1120 <strcat>
      ec:	40850533          	sub	a0,a0,s0
      f0:	04000793          	li	a5,64
      f4:	02a7d863          	bge	a5,a0,124 <openImage+0x90>
      f8:	000057b7          	lui	a5,0x5
      fc:	d2c7a783          	lw	a5,-724(a5) # 4d2c <LEDS>
     100:	00f00713          	li	a4,15
     104:	00005537          	lui	a0,0x5
     108:	00e7a023          	sw	a4,0(a5)
     10c:	d4450513          	addi	a0,a0,-700 # 4d44 <SDCARD+0xc>
     110:	00001097          	auipc	ra,0x1
     114:	638080e7          	jalr	1592(ra) # 1748 <printf>
     118:	00001097          	auipc	ra,0x1
     11c:	430080e7          	jalr	1072(ra) # 1548 <display_refresh>
     120:	0000006f          	j	120 <openImage+0x8c>
     124:	000055b7          	lui	a1,0x5
     128:	00040513          	mv	a0,s0
     12c:	d5c58593          	addi	a1,a1,-676 # 4d5c <SDCARD+0x24>
     130:	00005097          	auipc	ra,0x5
     134:	80c080e7          	jalr	-2036(ra) # 493c <fl_fopen>
     138:	00050413          	mv	s0,a0
     13c:	02051863          	bnez	a0,16c <openImage+0xd8>
     140:	00005537          	lui	a0,0x5
     144:	d6050513          	addi	a0,a0,-672 # 4d60 <SDCARD+0x28>
     148:	00001097          	auipc	ra,0x1
     14c:	600080e7          	jalr	1536(ra) # 1748 <printf>
     150:	00001097          	auipc	ra,0x1
     154:	3f8080e7          	jalr	1016(ra) # 1548 <display_refresh>
     158:	02c12083          	lw	ra,44(sp)
     15c:	02812403          	lw	s0,40(sp)
     160:	02412483          	lw	s1,36(sp)
     164:	03010113          	addi	sp,sp,48
     168:	00008067          	ret
     16c:	00005537          	lui	a0,0x5
     170:	d7450513          	addi	a0,a0,-652 # 4d74 <SDCARD+0x3c>
     174:	00001097          	auipc	ra,0x1
     178:	5d4080e7          	jalr	1492(ra) # 1748 <printf>
     17c:	00001097          	auipc	ra,0x1
     180:	3cc080e7          	jalr	972(ra) # 1548 <display_refresh>
     184:	00001097          	auipc	ra,0x1
     188:	228080e7          	jalr	552(ra) # 13ac <display_framebuffer>
     18c:	00040693          	mv	a3,s0
     190:	00004637          	lui	a2,0x4
     194:	00100593          	li	a1,1
     198:	00004097          	auipc	ra,0x4
     19c:	1c4080e7          	jalr	452(ra) # 435c <fl_fread>
     1a0:	00001097          	auipc	ra,0x1
     1a4:	3a8080e7          	jalr	936(ra) # 1548 <display_refresh>
     1a8:	00040513          	mv	a0,s0
     1ac:	00004097          	auipc	ra,0x4
     1b0:	0d0080e7          	jalr	208(ra) # 427c <fl_fclose>
     1b4:	fa5ff06f          	j	158 <openImage+0xc4>

000001b8 <selectImage>:
     1b8:	000055b7          	lui	a1,0x5
     1bc:	ff010113          	addi	sp,sp,-16
     1c0:	00400613          	li	a2,4
     1c4:	d8458593          	addi	a1,a1,-636 # 4d84 <SDCARD+0x4c>
     1c8:	00112623          	sw	ra,12(sp)
     1cc:	00001097          	auipc	ra,0x1
     1d0:	ed0080e7          	jalr	-304(ra) # 109c <strncmp>
     1d4:	02051263          	bnez	a0,1f8 <selectImage+0x40>
     1d8:	00001097          	auipc	ra,0x1
     1dc:	370080e7          	jalr	880(ra) # 1548 <display_refresh>
     1e0:	00c12083          	lw	ra,12(sp)
     1e4:	00005537          	lui	a0,0x5
     1e8:	d8c50513          	addi	a0,a0,-628 # 4d8c <SDCARD+0x54>
     1ec:	01010113          	addi	sp,sp,16
     1f0:	00000317          	auipc	t1,0x0
     1f4:	ea430067          	jr	-348(t1) # 94 <openImage>
     1f8:	00c12083          	lw	ra,12(sp)
     1fc:	01010113          	addi	sp,sp,16
     200:	00008067          	ret

00000204 <openJingle>:
     204:	000055b7          	lui	a1,0x5
     208:	00005537          	lui	a0,0x5
     20c:	fd010113          	addi	sp,sp,-48
     210:	d5c58593          	addi	a1,a1,-676 # 4d5c <SDCARD+0x24>
     214:	d9450513          	addi	a0,a0,-620 # 4d94 <SDCARD+0x5c>
     218:	02112623          	sw	ra,44(sp)
     21c:	02812423          	sw	s0,40(sp)
     220:	02912223          	sw	s1,36(sp)
     224:	03212023          	sw	s2,32(sp)
     228:	01312e23          	sw	s3,28(sp)
     22c:	01412c23          	sw	s4,24(sp)
     230:	01512a23          	sw	s5,20(sp)
     234:	01612823          	sw	s6,16(sp)
     238:	01712623          	sw	s7,12(sp)
     23c:	00004097          	auipc	ra,0x4
     240:	700080e7          	jalr	1792(ra) # 493c <fl_fopen>
     244:	04051263          	bnez	a0,288 <openJingle+0x84>
     248:	00005537          	lui	a0,0x5
     24c:	da450513          	addi	a0,a0,-604 # 4da4 <SDCARD+0x6c>
     250:	00001097          	auipc	ra,0x1
     254:	4f8080e7          	jalr	1272(ra) # 1748 <printf>
     258:	02812403          	lw	s0,40(sp)
     25c:	02c12083          	lw	ra,44(sp)
     260:	02412483          	lw	s1,36(sp)
     264:	02012903          	lw	s2,32(sp)
     268:	01c12983          	lw	s3,28(sp)
     26c:	01812a03          	lw	s4,24(sp)
     270:	01412a83          	lw	s5,20(sp)
     274:	01012b03          	lw	s6,16(sp)
     278:	00c12b83          	lw	s7,12(sp)
     27c:	03010113          	addi	sp,sp,48
     280:	00001317          	auipc	t1,0x1
     284:	2c830067          	jr	712(t1) # 1548 <display_refresh>
     288:	00000593          	li	a1,0
     28c:	00050493          	mv	s1,a0
     290:	0ff00513          	li	a0,255
     294:	00001097          	auipc	ra,0x1
     298:	138080e7          	jalr	312(ra) # 13cc <display_set_front_back_color>
     29c:	00005537          	lui	a0,0x5
     2a0:	db850513          	addi	a0,a0,-584 # 4db8 <SDCARD+0x80>
     2a4:	00001097          	auipc	ra,0x1
     2a8:	4a4080e7          	jalr	1188(ra) # 1748 <printf>
     2ac:	00001097          	auipc	ra,0x1
     2b0:	29c080e7          	jalr	668(ra) # 1548 <display_refresh>
     2b4:	000057b7          	lui	a5,0x5
     2b8:	d247a983          	lw	s3,-732(a5) # 4d24 <AUDIO>
     2bc:	000057b7          	lui	a5,0x5
     2c0:	d2c7a783          	lw	a5,-724(a5) # 4d2c <LEDS>
     2c4:	00000913          	li	s2,0
     2c8:	00100413          	li	s0,1
     2cc:	1ff00a93          	li	s5,511
     2d0:	08000b13          	li	s6,128
     2d4:	00078b93          	mv	s7,a5
     2d8:	0009aa03          	lw	s4,0(s3)
     2dc:	00048693          	mv	a3,s1
     2e0:	20000613          	li	a2,512
     2e4:	00100593          	li	a1,1
     2e8:	000a0513          	mv	a0,s4
     2ec:	00004097          	auipc	ra,0x4
     2f0:	070080e7          	jalr	112(ra) # 435c <fl_fread>
     2f4:	02aadc63          	bge	s5,a0,32c <openJingle+0x128>
     2f8:	0009a783          	lw	a5,0(s3)
     2fc:	fefa0ee3          	beq	s4,a5,2f8 <openJingle+0xf4>
     300:	01640663          	beq	s0,s6,30c <openJingle+0x108>
     304:	00100793          	li	a5,1
     308:	00f41663          	bne	s0,a5,314 <openJingle+0x110>
     30c:	00100793          	li	a5,1
     310:	41278933          	sub	s2,a5,s2
     314:	00090863          	beqz	s2,324 <openJingle+0x120>
     318:	00141413          	slli	s0,s0,0x1
     31c:	008ba023          	sw	s0,0(s7)
     320:	fb9ff06f          	j	2d8 <openJingle+0xd4>
     324:	40145413          	srai	s0,s0,0x1
     328:	ff5ff06f          	j	31c <openJingle+0x118>
     32c:	02812403          	lw	s0,40(sp)
     330:	02c12083          	lw	ra,44(sp)
     334:	02012903          	lw	s2,32(sp)
     338:	01c12983          	lw	s3,28(sp)
     33c:	01812a03          	lw	s4,24(sp)
     340:	01412a83          	lw	s5,20(sp)
     344:	01012b03          	lw	s6,16(sp)
     348:	00c12b83          	lw	s7,12(sp)
     34c:	00048513          	mv	a0,s1
     350:	02412483          	lw	s1,36(sp)
     354:	03010113          	addi	sp,sp,48
     358:	00004317          	auipc	t1,0x4
     35c:	f2430067          	jr	-220(t1) # 427c <fl_fclose>

00000360 <openMusic>:
     360:	fb010113          	addi	sp,sp,-80
     364:	000057b7          	lui	a5,0x5
     368:	04812423          	sw	s0,72(sp)
     36c:	d2c7a403          	lw	s0,-724(a5) # 4d2c <LEDS>
     370:	04112623          	sw	ra,76(sp)
     374:	0ff00793          	li	a5,255
     378:	04912223          	sw	s1,68(sp)
     37c:	05212023          	sw	s2,64(sp)
     380:	03312e23          	sw	s3,60(sp)
     384:	03412c23          	sw	s4,56(sp)
     388:	03512a23          	sw	s5,52(sp)
     38c:	03612823          	sw	s6,48(sp)
     390:	03712623          	sw	s7,44(sp)
     394:	03812423          	sw	s8,40(sp)
     398:	03912223          	sw	s9,36(sp)
     39c:	00f42023          	sw	a5,0(s0)
     3a0:	00058993          	mv	s3,a1
     3a4:	00050913          	mv	s2,a0
     3a8:	00001097          	auipc	ra,0x1
     3ac:	004080e7          	jalr	4(ra) # 13ac <display_framebuffer>
     3b0:	00004637          	lui	a2,0x4
     3b4:	00000593          	li	a1,0
     3b8:	00001097          	auipc	ra,0x1
     3bc:	c84080e7          	jalr	-892(ra) # 103c <memset>
     3c0:	00001097          	auipc	ra,0x1
     3c4:	188080e7          	jalr	392(ra) # 1548 <display_refresh>
     3c8:	00100793          	li	a5,1
     3cc:	00f42023          	sw	a5,0(s0)
     3d0:	00000593          	li	a1,0
     3d4:	00000513          	li	a0,0
     3d8:	00001097          	auipc	ra,0x1
     3dc:	fe0080e7          	jalr	-32(ra) # 13b8 <display_set_cursor>
     3e0:	00000593          	li	a1,0
     3e4:	0ff00513          	li	a0,255
     3e8:	00001097          	auipc	ra,0x1
     3ec:	fe4080e7          	jalr	-28(ra) # 13cc <display_set_front_back_color>
     3f0:	00001097          	auipc	ra,0x1
     3f4:	158080e7          	jalr	344(ra) # 1548 <display_refresh>
     3f8:	00200793          	li	a5,2
     3fc:	00010493          	mv	s1,sp
     400:	00f42023          	sw	a5,0(s0)
     404:	00090593          	mv	a1,s2
     408:	00048513          	mv	a0,s1
     40c:	00010023          	sb	zero,0(sp)
     410:	00001097          	auipc	ra,0x1
     414:	d10080e7          	jalr	-752(ra) # 1120 <strcat>
     418:	000055b7          	lui	a1,0x5
     41c:	d4058593          	addi	a1,a1,-704 # 4d40 <SDCARD+0x8>
     420:	00048513          	mv	a0,s1
     424:	00001097          	auipc	ra,0x1
     428:	cfc080e7          	jalr	-772(ra) # 1120 <strcat>
     42c:	00098593          	mv	a1,s3
     430:	00048513          	mv	a0,s1
     434:	00001097          	auipc	ra,0x1
     438:	cec080e7          	jalr	-788(ra) # 1120 <strcat>
     43c:	40950533          	sub	a0,a0,s1
     440:	04000793          	li	a5,64
     444:	02a7d463          	bge	a5,a0,46c <openMusic+0x10c>
     448:	00f00793          	li	a5,15
     44c:	00005537          	lui	a0,0x5
     450:	00f42023          	sw	a5,0(s0)
     454:	d4450513          	addi	a0,a0,-700 # 4d44 <SDCARD+0xc>
     458:	00001097          	auipc	ra,0x1
     45c:	2f0080e7          	jalr	752(ra) # 1748 <printf>
     460:	00001097          	auipc	ra,0x1
     464:	0e8080e7          	jalr	232(ra) # 1548 <display_refresh>
     468:	0000006f          	j	468 <openMusic+0x108>
     46c:	00400793          	li	a5,4
     470:	000059b7          	lui	s3,0x5
     474:	00f42023          	sw	a5,0(s0)
     478:	00048593          	mv	a1,s1
     47c:	dd098513          	addi	a0,s3,-560 # 4dd0 <SDCARD+0x98>
     480:	00001097          	auipc	ra,0x1
     484:	2c8080e7          	jalr	712(ra) # 1748 <printf>
     488:	00001097          	auipc	ra,0x1
     48c:	0c0080e7          	jalr	192(ra) # 1548 <display_refresh>
     490:	00005537          	lui	a0,0x5
     494:	00090593          	mv	a1,s2
     498:	ddc50513          	addi	a0,a0,-548 # 4ddc <SDCARD+0xa4>
     49c:	00001097          	auipc	ra,0x1
     4a0:	2ac080e7          	jalr	684(ra) # 1748 <printf>
     4a4:	00001097          	auipc	ra,0x1
     4a8:	0a4080e7          	jalr	164(ra) # 1548 <display_refresh>
     4ac:	00090513          	mv	a0,s2
     4b0:	00000097          	auipc	ra,0x0
     4b4:	d08080e7          	jalr	-760(ra) # 1b8 <selectImage>
     4b8:	000055b7          	lui	a1,0x5
     4bc:	d5c58593          	addi	a1,a1,-676 # 4d5c <SDCARD+0x24>
     4c0:	00048513          	mv	a0,s1
     4c4:	00004097          	auipc	ra,0x4
     4c8:	478080e7          	jalr	1144(ra) # 493c <fl_fopen>
     4cc:	00050913          	mv	s2,a0
     4d0:	04051e63          	bnez	a0,52c <openMusic+0x1cc>
     4d4:	00005537          	lui	a0,0x5
     4d8:	00048593          	mv	a1,s1
     4dc:	de850513          	addi	a0,a0,-536 # 4de8 <SDCARD+0xb0>
     4e0:	00001097          	auipc	ra,0x1
     4e4:	268080e7          	jalr	616(ra) # 1748 <printf>
     4e8:	00001097          	auipc	ra,0x1
     4ec:	060080e7          	jalr	96(ra) # 1548 <display_refresh>
     4f0:	00800793          	li	a5,8
     4f4:	04c12083          	lw	ra,76(sp)
     4f8:	00f42023          	sw	a5,0(s0)
     4fc:	04812403          	lw	s0,72(sp)
     500:	04412483          	lw	s1,68(sp)
     504:	04012903          	lw	s2,64(sp)
     508:	03c12983          	lw	s3,60(sp)
     50c:	03812a03          	lw	s4,56(sp)
     510:	03412a83          	lw	s5,52(sp)
     514:	03012b03          	lw	s6,48(sp)
     518:	02c12b83          	lw	s7,44(sp)
     51c:	02812c03          	lw	s8,40(sp)
     520:	02412c83          	lw	s9,36(sp)
     524:	05010113          	addi	sp,sp,80
     528:	00008067          	ret
     52c:	0ff00593          	li	a1,255
     530:	00000513          	li	a0,0
     534:	00001097          	auipc	ra,0x1
     538:	e98080e7          	jalr	-360(ra) # 13cc <display_set_front_back_color>
     53c:	00048593          	mv	a1,s1
     540:	dd098513          	addi	a0,s3,-560
     544:	00001097          	auipc	ra,0x1
     548:	204080e7          	jalr	516(ra) # 1748 <printf>
     54c:	00001097          	auipc	ra,0x1
     550:	ffc080e7          	jalr	-4(ra) # 1548 <display_refresh>
     554:	00000593          	li	a1,0
     558:	0ff00513          	li	a0,255
     55c:	00001097          	auipc	ra,0x1
     560:	e70080e7          	jalr	-400(ra) # 13cc <display_set_front_back_color>
     564:	00005537          	lui	a0,0x5
     568:	df850513          	addi	a0,a0,-520 # 4df8 <SDCARD+0xc0>
     56c:	00001097          	auipc	ra,0x1
     570:	1dc080e7          	jalr	476(ra) # 1748 <printf>
     574:	00001097          	auipc	ra,0x1
     578:	fd4080e7          	jalr	-44(ra) # 1548 <display_refresh>
     57c:	01000793          	li	a5,16
     580:	00f42023          	sw	a5,0(s0)
     584:	000057b7          	lui	a5,0x5
     588:	d247ab03          	lw	s6,-732(a5) # 4d24 <AUDIO>
     58c:	000057b7          	lui	a5,0x5
     590:	d287aa83          	lw	s5,-728(a5) # 4d28 <BUTTONS>
     594:	00100a13          	li	s4,1
     598:	00000993          	li	s3,0
     59c:	00100493          	li	s1,1
     5a0:	1ff00b93          	li	s7,511
     5a4:	08000c13          	li	s8,128
     5a8:	000b2c83          	lw	s9,0(s6)
     5ac:	040a0a63          	beqz	s4,600 <openMusic+0x2a0>
     5b0:	00090693          	mv	a3,s2
     5b4:	20000613          	li	a2,512
     5b8:	00100593          	li	a1,1
     5bc:	000c8513          	mv	a0,s9
     5c0:	00004097          	auipc	ra,0x4
     5c4:	d9c080e7          	jalr	-612(ra) # 435c <fl_fread>
     5c8:	02abc863          	blt	s7,a0,5f8 <openMusic+0x298>
     5cc:	00001097          	auipc	ra,0x1
     5d0:	de0080e7          	jalr	-544(ra) # 13ac <display_framebuffer>
     5d4:	00004637          	lui	a2,0x4
     5d8:	00000593          	li	a1,0
     5dc:	00001097          	auipc	ra,0x1
     5e0:	a60080e7          	jalr	-1440(ra) # 103c <memset>
     5e4:	00090513          	mv	a0,s2
     5e8:	00004097          	auipc	ra,0x4
     5ec:	c94080e7          	jalr	-876(ra) # 427c <fl_fclose>
     5f0:	02000793          	li	a5,32
     5f4:	f01ff06f          	j	4f4 <openMusic+0x194>
     5f8:	000b2783          	lw	a5,0(s6)
     5fc:	fefc8ee3          	beq	s9,a5,5f8 <openMusic+0x298>
     600:	000aa783          	lw	a5,0(s5)
     604:	0407f793          	andi	a5,a5,64
     608:	00078e63          	beqz	a5,624 <openMusic+0x2c4>
     60c:	00000097          	auipc	ra,0x0
     610:	a10080e7          	jalr	-1520(ra) # 1c <clear_audio>
     614:	000aa783          	lw	a5,0(s5)
     618:	0407f793          	andi	a5,a5,64
     61c:	fe079ce3          	bnez	a5,614 <openMusic+0x2b4>
     620:	001a4a13          	xori	s4,s4,1
     624:	000aa783          	lw	a5,0(s5)
     628:	0207f793          	andi	a5,a5,32
     62c:	00078863          	beqz	a5,63c <openMusic+0x2dc>
     630:	00000097          	auipc	ra,0x0
     634:	9ec080e7          	jalr	-1556(ra) # 1c <clear_audio>
     638:	f95ff06f          	j	5cc <openMusic+0x26c>
     63c:	01848663          	beq	s1,s8,648 <openMusic+0x2e8>
     640:	00100793          	li	a5,1
     644:	00f49663          	bne	s1,a5,650 <openMusic+0x2f0>
     648:	00100793          	li	a5,1
     64c:	413789b3          	sub	s3,a5,s3
     650:	00098863          	beqz	s3,660 <openMusic+0x300>
     654:	00149493          	slli	s1,s1,0x1
     658:	00942023          	sw	s1,0(s0)
     65c:	f4dff06f          	j	5a8 <openMusic+0x248>
     660:	4014d493          	srai	s1,s1,0x1
     664:	ff5ff06f          	j	658 <openMusic+0x2f8>

00000668 <main>:
     668:	000057b7          	lui	a5,0x5
     66c:	d2c7a783          	lw	a5,-724(a5) # 4d2c <LEDS>
     670:	ea010113          	addi	sp,sp,-352
     674:	14112e23          	sw	ra,348(sp)
     678:	14812c23          	sw	s0,344(sp)
     67c:	14912a23          	sw	s1,340(sp)
     680:	15212823          	sw	s2,336(sp)
     684:	15312623          	sw	s3,332(sp)
     688:	15412423          	sw	s4,328(sp)
     68c:	15512223          	sw	s5,324(sp)
     690:	15612023          	sw	s6,320(sp)
     694:	13712e23          	sw	s7,316(sp)
     698:	13812c23          	sw	s8,312(sp)
     69c:	13912a23          	sw	s9,308(sp)
     6a0:	13a12823          	sw	s10,304(sp)
     6a4:	13b12623          	sw	s11,300(sp)
     6a8:	0007a023          	sw	zero,0(a5)
     6ac:	000017b7          	lui	a5,0x1
     6b0:	00005737          	lui	a4,0x5
     6b4:	3e078793          	addi	a5,a5,992 # 13e0 <display_putchar>
     6b8:	08f72e23          	sw	a5,156(a4) # 509c <f_putchar>
     6bc:	00001097          	auipc	ra,0x1
     6c0:	bb0080e7          	jalr	-1104(ra) # 126c <oled_init>
     6c4:	00001097          	auipc	ra,0x1
     6c8:	bb4080e7          	jalr	-1100(ra) # 1278 <oled_fullscreen>
     6cc:	00000513          	li	a0,0
     6d0:	00001097          	auipc	ra,0x1
     6d4:	c40080e7          	jalr	-960(ra) # 1310 <oled_clear>
     6d8:	000054b7          	lui	s1,0x5
     6dc:	000055b7          	lui	a1,0x5
     6e0:	02000613          	li	a2,32
     6e4:	d4058593          	addi	a1,a1,-704 # 4d40 <SDCARD+0x8>
     6e8:	22048513          	addi	a0,s1,544 # 5220 <path>
     6ec:	00001097          	auipc	ra,0x1
     6f0:	96c080e7          	jalr	-1684(ra) # 1058 <memcpy>
     6f4:	00000097          	auipc	ra,0x0
     6f8:	6e0080e7          	jalr	1760(ra) # dd4 <sdcard_init>
     6fc:	00001937          	lui	s2,0x1
     700:	00001097          	auipc	ra,0x1
     704:	620080e7          	jalr	1568(ra) # 1d20 <fl_init>
     708:	00001437          	lui	s0,0x1
     70c:	f8090593          	addi	a1,s2,-128 # f80 <sdcard_writesector>
     710:	f2840513          	addi	a0,s0,-216 # f28 <sdcard_readsector>
     714:	00002097          	auipc	ra,0x2
     718:	594080e7          	jalr	1428(ra) # 2ca8 <fl_attach_media>
     71c:	fe0518e3          	bnez	a0,70c <main+0xa4>
     720:	00001097          	auipc	ra,0x1
     724:	c8c080e7          	jalr	-884(ra) # 13ac <display_framebuffer>
     728:	00004637          	lui	a2,0x4
     72c:	00000593          	li	a1,0
     730:	00001097          	auipc	ra,0x1
     734:	90c080e7          	jalr	-1780(ra) # 103c <memset>
     738:	00001097          	auipc	ra,0x1
     73c:	e10080e7          	jalr	-496(ra) # 1548 <display_refresh>
     740:	00000593          	li	a1,0
     744:	00000513          	li	a0,0
     748:	00001097          	auipc	ra,0x1
     74c:	c70080e7          	jalr	-912(ra) # 13b8 <display_set_cursor>
     750:	0ff00593          	li	a1,255
     754:	00000513          	li	a0,0
     758:	00001097          	auipc	ra,0x1
     75c:	c74080e7          	jalr	-908(ra) # 13cc <display_set_front_back_color>
     760:	00000097          	auipc	ra,0x0
     764:	aa4080e7          	jalr	-1372(ra) # 204 <openJingle>
     768:	000057b7          	lui	a5,0x5
     76c:	d287aa83          	lw	s5,-728(a5) # 4d28 <BUTTONS>
     770:	000059b7          	lui	s3,0x5
     774:	00005bb7          	lui	s7,0x5
     778:	00000b13          	li	s6,0
     77c:	00000413          	li	s0,0
     780:	0e098993          	addi	s3,s3,224 # 50e0 <item>
     784:	00005c37          	lui	s8,0x5
     788:	00005cb7          	lui	s9,0x5
     78c:	0b8b8d13          	addi	s10,s7,184 # 50b8 <is_music>
     790:	00001097          	auipc	ra,0x1
     794:	c1c080e7          	jalr	-996(ra) # 13ac <display_framebuffer>
     798:	00004637          	lui	a2,0x4
     79c:	00000593          	li	a1,0
     7a0:	00001097          	auipc	ra,0x1
     7a4:	89c080e7          	jalr	-1892(ra) # 103c <memset>
     7a8:	00001097          	auipc	ra,0x1
     7ac:	da0080e7          	jalr	-608(ra) # 1548 <display_refresh>
     7b0:	00000593          	li	a1,0
     7b4:	00000513          	li	a0,0
     7b8:	00001097          	auipc	ra,0x1
     7bc:	c00080e7          	jalr	-1024(ra) # 13b8 <display_set_cursor>
     7c0:	0ff00593          	li	a1,255
     7c4:	00000513          	li	a0,0
     7c8:	00001097          	auipc	ra,0x1
     7cc:	c04080e7          	jalr	-1020(ra) # 13cc <display_set_front_back_color>
     7d0:	00001097          	auipc	ra,0x1
     7d4:	d78080e7          	jalr	-648(ra) # 1548 <display_refresh>
     7d8:	00000593          	li	a1,0
     7dc:	0ff00513          	li	a0,255
     7e0:	00001097          	auipc	ra,0x1
     7e4:	bec080e7          	jalr	-1044(ra) # 13cc <display_set_front_back_color>
     7e8:	00410593          	addi	a1,sp,4
     7ec:	22048513          	addi	a0,s1,544
     7f0:	00003097          	auipc	ra,0x3
     7f4:	ae0080e7          	jalr	-1312(ra) # 32d0 <fl_opendir>
     7f8:	00000913          	li	s2,0
     7fc:	02050663          	beqz	a0,828 <main+0x1c0>
     800:	00098a13          	mv	s4,s3
     804:	0b8b8d93          	addi	s11,s7,184
     808:	01010593          	addi	a1,sp,16
     80c:	00410513          	addi	a0,sp,4
     810:	00003097          	auipc	ra,0x3
     814:	180080e7          	jalr	384(ra) # 3990 <fl_readdir>
     818:	08050e63          	beqz	a0,8b4 <main+0x24c>
     81c:	00410513          	addi	a0,sp,4
     820:	00001097          	auipc	ra,0x1
     824:	570080e7          	jalr	1392(ra) # 1d90 <fl_closedir>
     828:	00000593          	li	a1,0
     82c:	00000513          	li	a0,0
     830:	00001097          	auipc	ra,0x1
     834:	b88080e7          	jalr	-1144(ra) # 13b8 <display_set_cursor>
     838:	0ffb7593          	zext.b	a1,s6
     83c:	07f58513          	addi	a0,a1,127
     840:	0ff57513          	zext.b	a0,a0
     844:	00001097          	auipc	ra,0x1
     848:	b88080e7          	jalr	-1144(ra) # 13cc <display_set_front_back_color>
     84c:	e08c0513          	addi	a0,s8,-504 # 4e08 <SDCARD+0xd0>
     850:	007b0b13          	addi	s6,s6,7
     854:	00001097          	auipc	ra,0x1
     858:	ef4080e7          	jalr	-268(ra) # 1748 <printf>
     85c:	00098d93          	mv	s11,s3
     860:	00000a13          	li	s4,0
     864:	092a1063          	bne	s4,s2,8e4 <main+0x27c>
     868:	00001097          	auipc	ra,0x1
     86c:	ce0080e7          	jalr	-800(ra) # 1548 <display_refresh>
     870:	000aa783          	lw	a5,0(s5)
     874:	0087f793          	andi	a5,a5,8
     878:	00078463          	beqz	a5,880 <main+0x218>
     87c:	fff40413          	addi	s0,s0,-1
     880:	000aa783          	lw	a5,0(s5)
     884:	0107f793          	andi	a5,a5,16
     888:	00078463          	beqz	a5,890 <main+0x228>
     88c:	00140413          	addi	s0,s0,1
     890:	000aa783          	lw	a5,0(s5)
     894:	0207f793          	andi	a5,a5,32
     898:	08078663          	beqz	a5,924 <main+0x2bc>
     89c:	000055b7          	lui	a1,0x5
     8a0:	24058593          	addi	a1,a1,576 # 5240 <path_history>
     8a4:	22048513          	addi	a0,s1,544
     8a8:	00001097          	auipc	ra,0x1
     8ac:	858080e7          	jalr	-1960(ra) # 1100 <strcpy>
     8b0:	ee1ff06f          	j	790 <main+0x128>
     8b4:	000a0513          	mv	a0,s4
     8b8:	02000613          	li	a2,32
     8bc:	01010593          	addi	a1,sp,16
     8c0:	00000097          	auipc	ra,0x0
     8c4:	798080e7          	jalr	1944(ra) # 1058 <memcpy>
     8c8:	11414783          	lbu	a5,276(sp)
     8cc:	00190913          	addi	s2,s2,1
     8d0:	020a0a13          	addi	s4,s4,32
     8d4:	0017b793          	seqz	a5,a5
     8d8:	00fda023          	sw	a5,0(s11)
     8dc:	004d8d93          	addi	s11,s11,4
     8e0:	f29ff06f          	j	808 <main+0x1a0>
     8e4:	03441a63          	bne	s0,s4,918 <main+0x2b0>
     8e8:	0ff00593          	li	a1,255
     8ec:	00000513          	li	a0,0
     8f0:	00001097          	auipc	ra,0x1
     8f4:	adc080e7          	jalr	-1316(ra) # 13cc <display_set_front_back_color>
     8f8:	000d8613          	mv	a2,s11
     8fc:	000a0593          	mv	a1,s4
     900:	e24c8513          	addi	a0,s9,-476 # 4e24 <SDCARD+0xec>
     904:	00001097          	auipc	ra,0x1
     908:	e44080e7          	jalr	-444(ra) # 1748 <printf>
     90c:	001a0a13          	addi	s4,s4,1
     910:	020d8d93          	addi	s11,s11,32
     914:	f51ff06f          	j	864 <main+0x1fc>
     918:	00000593          	li	a1,0
     91c:	0ff00513          	li	a0,255
     920:	fd1ff06f          	j	8f0 <main+0x288>
     924:	000aa783          	lw	a5,0(s5)
     928:	0407f793          	andi	a5,a5,64
     92c:	02078663          	beqz	a5,958 <main+0x2f0>
     930:	00241793          	slli	a5,s0,0x2
     934:	00fd07b3          	add	a5,s10,a5
     938:	0007a783          	lw	a5,0(a5)
     93c:	00541a13          	slli	s4,s0,0x5
     940:	01498a33          	add	s4,s3,s4
     944:	02078463          	beqz	a5,96c <main+0x304>
     948:	000a0593          	mv	a1,s4
     94c:	22048513          	addi	a0,s1,544
     950:	00000097          	auipc	ra,0x0
     954:	a10080e7          	jalr	-1520(ra) # 360 <openMusic>
     958:	00045463          	bgez	s0,960 <main+0x2f8>
     95c:	fff90413          	addi	s0,s2,-1
     960:	ed2444e3          	blt	s0,s2,828 <main+0x1c0>
     964:	00000413          	li	s0,0
     968:	ec1ff06f          	j	828 <main+0x1c0>
     96c:	00005537          	lui	a0,0x5
     970:	22048593          	addi	a1,s1,544
     974:	02000613          	li	a2,32
     978:	24050513          	addi	a0,a0,576 # 5240 <path_history>
     97c:	00000097          	auipc	ra,0x0
     980:	6dc080e7          	jalr	1756(ra) # 1058 <memcpy>
     984:	000a0593          	mv	a1,s4
     988:	22048513          	addi	a0,s1,544
     98c:	00000097          	auipc	ra,0x0
     990:	794080e7          	jalr	1940(ra) # 1120 <strcat>
     994:	dfdff06f          	j	790 <main+0x128>

00000998 <pause>:
     998:	c0002773          	rdcycle	a4
     99c:	c00027f3          	rdcycle	a5
     9a0:	40e787b3          	sub	a5,a5,a4
     9a4:	fea7ece3          	bltu	a5,a0,99c <pause+0x4>
     9a8:	00008067          	ret

000009ac <sdcard_idle>:
     9ac:	00008067          	ret

000009b0 <sdcard_select>:
     9b0:	000057b7          	lui	a5,0x5
     9b4:	d387a783          	lw	a5,-712(a5) # 4d38 <SDCARD>
     9b8:	00200713          	li	a4,2
     9bc:	00e7a023          	sw	a4,0(a5)
     9c0:	00008067          	ret

000009c4 <sdcard_ponder>:
     9c4:	000056b7          	lui	a3,0x5
     9c8:	d386a603          	lw	a2,-712(a3) # 4d38 <SDCARD>
     9cc:	01000793          	li	a5,16
     9d0:	00000713          	li	a4,0
     9d4:	00100693          	li	a3,1
     9d8:	00676593          	ori	a1,a4,6
     9dc:	00b62023          	sw	a1,0(a2) # 4000 <fatfs_add_free_space+0x94>
     9e0:	40e68733          	sub	a4,a3,a4
     9e4:	00000013          	nop
     9e8:	fff78793          	addi	a5,a5,-1
     9ec:	fe0796e3          	bnez	a5,9d8 <sdcard_ponder+0x14>
     9f0:	00008067          	ret

000009f4 <sdcard_unselect>:
     9f4:	000057b7          	lui	a5,0x5
     9f8:	d387a783          	lw	a5,-712(a5) # 4d38 <SDCARD>
     9fc:	00600713          	li	a4,6
     a00:	00e7a023          	sw	a4,0(a5)
     a04:	00008067          	ret

00000a08 <sdcard_send>:
     a08:	000057b7          	lui	a5,0x5
     a0c:	d387a783          	lw	a5,-712(a5) # 4d38 <SDCARD>
     a10:	00655713          	srli	a4,a0,0x6
     a14:	00277713          	andi	a4,a4,2
     a18:	00e7a023          	sw	a4,0(a5)
     a1c:	00176713          	ori	a4,a4,1
     a20:	00e7a023          	sw	a4,0(a5)
     a24:	00555713          	srli	a4,a0,0x5
     a28:	00277713          	andi	a4,a4,2
     a2c:	00e7a023          	sw	a4,0(a5)
     a30:	00176713          	ori	a4,a4,1
     a34:	00e7a023          	sw	a4,0(a5)
     a38:	00455713          	srli	a4,a0,0x4
     a3c:	00277713          	andi	a4,a4,2
     a40:	00e7a023          	sw	a4,0(a5)
     a44:	00176713          	ori	a4,a4,1
     a48:	00e7a023          	sw	a4,0(a5)
     a4c:	00355713          	srli	a4,a0,0x3
     a50:	00277713          	andi	a4,a4,2
     a54:	00e7a023          	sw	a4,0(a5)
     a58:	00176713          	ori	a4,a4,1
     a5c:	00e7a023          	sw	a4,0(a5)
     a60:	00255713          	srli	a4,a0,0x2
     a64:	00277713          	andi	a4,a4,2
     a68:	00e7a023          	sw	a4,0(a5)
     a6c:	00176713          	ori	a4,a4,1
     a70:	00e7a023          	sw	a4,0(a5)
     a74:	00155713          	srli	a4,a0,0x1
     a78:	00277713          	andi	a4,a4,2
     a7c:	00e7a023          	sw	a4,0(a5)
     a80:	00176713          	ori	a4,a4,1
     a84:	00e7a023          	sw	a4,0(a5)
     a88:	00257713          	andi	a4,a0,2
     a8c:	00e7a023          	sw	a4,0(a5)
     a90:	00151513          	slli	a0,a0,0x1
     a94:	00176713          	ori	a4,a4,1
     a98:	00e7a023          	sw	a4,0(a5)
     a9c:	00257513          	andi	a0,a0,2
     aa0:	00a7a023          	sw	a0,0(a5)
     aa4:	00156513          	ori	a0,a0,1
     aa8:	00a7a023          	sw	a0,0(a5)
     aac:	00200713          	li	a4,2
     ab0:	00e7a023          	sw	a4,0(a5)
     ab4:	000057b7          	lui	a5,0x5
     ab8:	0887a783          	lw	a5,136(a5) # 5088 <sdcard_while_loading_callback>
     abc:	00078067          	jr	a5

00000ac0 <sdcard_read>:
     ac0:	fd010113          	addi	sp,sp,-48
     ac4:	fff50793          	addi	a5,a0,-1
     ac8:	01312e23          	sw	s3,28(sp)
     acc:	00100993          	li	s3,1
     ad0:	00f999b3          	sll	s3,s3,a5
     ad4:	000057b7          	lui	a5,0x5
     ad8:	01512a23          	sw	s5,20(sp)
     adc:	d387aa83          	lw	s5,-712(a5) # 4d38 <SDCARD>
     ae0:	02812423          	sw	s0,40(sp)
     ae4:	02912223          	sw	s1,36(sp)
     ae8:	03212023          	sw	s2,32(sp)
     aec:	01412c23          	sw	s4,24(sp)
     af0:	01612823          	sw	s6,16(sp)
     af4:	01712623          	sw	s7,12(sp)
     af8:	01812423          	sw	s8,8(sp)
     afc:	02112623          	sw	ra,44(sp)
     b00:	00050493          	mv	s1,a0
     b04:	00058a13          	mv	s4,a1
     b08:	0ff00413          	li	s0,255
     b0c:	00000913          	li	s2,0
     b10:	00300b13          	li	s6,3
     b14:	00200b93          	li	s7,2
     b18:	00005c37          	lui	s8,0x5
     b1c:	040a0063          	beqz	s4,b5c <sdcard_read+0x9c>
     b20:	0089f7b3          	and	a5,s3,s0
     b24:	02079e63          	bnez	a5,b60 <sdcard_read+0xa0>
     b28:	02c12083          	lw	ra,44(sp)
     b2c:	0ff47513          	zext.b	a0,s0
     b30:	02812403          	lw	s0,40(sp)
     b34:	02412483          	lw	s1,36(sp)
     b38:	02012903          	lw	s2,32(sp)
     b3c:	01c12983          	lw	s3,28(sp)
     b40:	01812a03          	lw	s4,24(sp)
     b44:	01412a83          	lw	s5,20(sp)
     b48:	01012b03          	lw	s6,16(sp)
     b4c:	00c12b83          	lw	s7,12(sp)
     b50:	00812c03          	lw	s8,8(sp)
     b54:	03010113          	addi	sp,sp,48
     b58:	00008067          	ret
     b5c:	fc9956e3          	bge	s2,s1,b28 <sdcard_read+0x68>
     b60:	016aa023          	sw	s6,0(s5)
     b64:	017aa023          	sw	s7,0(s5)
     b68:	000aa783          	lw	a5,0(s5)
     b6c:	00141413          	slli	s0,s0,0x1
     b70:	00190913          	addi	s2,s2,1
     b74:	00f46433          	or	s0,s0,a5
     b78:	088c2783          	lw	a5,136(s8) # 5088 <sdcard_while_loading_callback>
     b7c:	000780e7          	jalr	a5
     b80:	f9dff06f          	j	b1c <sdcard_read+0x5c>

00000b84 <sdcard_get>:
     b84:	fe010113          	addi	sp,sp,-32
     b88:	00112e23          	sw	ra,28(sp)
     b8c:	00812c23          	sw	s0,24(sp)
     b90:	00912a23          	sw	s1,20(sp)
     b94:	00050413          	mv	s0,a0
     b98:	00b12623          	sw	a1,12(sp)
     b9c:	00000097          	auipc	ra,0x0
     ba0:	e14080e7          	jalr	-492(ra) # 9b0 <sdcard_select>
     ba4:	00c12583          	lw	a1,12(sp)
     ba8:	00040513          	mv	a0,s0
     bac:	00100493          	li	s1,1
     bb0:	00000097          	auipc	ra,0x0
     bb4:	f10080e7          	jalr	-240(ra) # ac0 <sdcard_read>
     bb8:	00345413          	srli	s0,s0,0x3
     bbc:	0284c463          	blt	s1,s0,be4 <sdcard_get+0x60>
     bc0:	00a12623          	sw	a0,12(sp)
     bc4:	00000097          	auipc	ra,0x0
     bc8:	e30080e7          	jalr	-464(ra) # 9f4 <sdcard_unselect>
     bcc:	01c12083          	lw	ra,28(sp)
     bd0:	01812403          	lw	s0,24(sp)
     bd4:	00c12503          	lw	a0,12(sp)
     bd8:	01412483          	lw	s1,20(sp)
     bdc:	02010113          	addi	sp,sp,32
     be0:	00008067          	ret
     be4:	00000593          	li	a1,0
     be8:	00800513          	li	a0,8
     bec:	00000097          	auipc	ra,0x0
     bf0:	ed4080e7          	jalr	-300(ra) # ac0 <sdcard_read>
     bf4:	00148493          	addi	s1,s1,1
     bf8:	fc5ff06f          	j	bbc <sdcard_get+0x38>

00000bfc <sdcard_cmd>:
     bfc:	ff010113          	addi	sp,sp,-16
     c00:	00812423          	sw	s0,8(sp)
     c04:	00912223          	sw	s1,4(sp)
     c08:	01212023          	sw	s2,0(sp)
     c0c:	00112623          	sw	ra,12(sp)
     c10:	00050493          	mv	s1,a0
     c14:	00000413          	li	s0,0
     c18:	00000097          	auipc	ra,0x0
     c1c:	d98080e7          	jalr	-616(ra) # 9b0 <sdcard_select>
     c20:	00600913          	li	s2,6
     c24:	008487b3          	add	a5,s1,s0
     c28:	0007c503          	lbu	a0,0(a5)
     c2c:	00140413          	addi	s0,s0,1
     c30:	00000097          	auipc	ra,0x0
     c34:	dd8080e7          	jalr	-552(ra) # a08 <sdcard_send>
     c38:	ff2416e3          	bne	s0,s2,c24 <sdcard_cmd+0x28>
     c3c:	00812403          	lw	s0,8(sp)
     c40:	00c12083          	lw	ra,12(sp)
     c44:	00412483          	lw	s1,4(sp)
     c48:	00012903          	lw	s2,0(sp)
     c4c:	01010113          	addi	sp,sp,16
     c50:	00000317          	auipc	t1,0x0
     c54:	da430067          	jr	-604(t1) # 9f4 <sdcard_unselect>

00000c58 <sdcard_start_sector>:
     c58:	ff010113          	addi	sp,sp,-16
     c5c:	00112623          	sw	ra,12(sp)
     c60:	00812423          	sw	s0,8(sp)
     c64:	00050413          	mv	s0,a0
     c68:	00000097          	auipc	ra,0x0
     c6c:	d48080e7          	jalr	-696(ra) # 9b0 <sdcard_select>
     c70:	05100513          	li	a0,81
     c74:	00000097          	auipc	ra,0x0
     c78:	d94080e7          	jalr	-620(ra) # a08 <sdcard_send>
     c7c:	01845513          	srli	a0,s0,0x18
     c80:	00000097          	auipc	ra,0x0
     c84:	d88080e7          	jalr	-632(ra) # a08 <sdcard_send>
     c88:	41045513          	srai	a0,s0,0x10
     c8c:	0ff57513          	zext.b	a0,a0
     c90:	00000097          	auipc	ra,0x0
     c94:	d78080e7          	jalr	-648(ra) # a08 <sdcard_send>
     c98:	40845513          	srai	a0,s0,0x8
     c9c:	0ff57513          	zext.b	a0,a0
     ca0:	00000097          	auipc	ra,0x0
     ca4:	d68080e7          	jalr	-664(ra) # a08 <sdcard_send>
     ca8:	0ff47513          	zext.b	a0,s0
     cac:	00000097          	auipc	ra,0x0
     cb0:	d5c080e7          	jalr	-676(ra) # a08 <sdcard_send>
     cb4:	05500513          	li	a0,85
     cb8:	00000097          	auipc	ra,0x0
     cbc:	d50080e7          	jalr	-688(ra) # a08 <sdcard_send>
     cc0:	00000097          	auipc	ra,0x0
     cc4:	d34080e7          	jalr	-716(ra) # 9f4 <sdcard_unselect>
     cc8:	00812403          	lw	s0,8(sp)
     ccc:	00c12083          	lw	ra,12(sp)
     cd0:	00100593          	li	a1,1
     cd4:	00800513          	li	a0,8
     cd8:	01010113          	addi	sp,sp,16
     cdc:	00000317          	auipc	t1,0x0
     ce0:	ea830067          	jr	-344(t1) # b84 <sdcard_get>

00000ce4 <sdcard_read_sector>:
     ce4:	ff010113          	addi	sp,sp,-16
     ce8:	00812423          	sw	s0,8(sp)
     cec:	00112623          	sw	ra,12(sp)
     cf0:	00912223          	sw	s1,4(sp)
     cf4:	01212023          	sw	s2,0(sp)
     cf8:	00058413          	mv	s0,a1
     cfc:	00000097          	auipc	ra,0x0
     d00:	f5c080e7          	jalr	-164(ra) # c58 <sdcard_start_sector>
     d04:	04051863          	bnez	a0,d54 <sdcard_read_sector+0x70>
     d08:	00100593          	li	a1,1
     d0c:	00100513          	li	a0,1
     d10:	00000097          	auipc	ra,0x0
     d14:	e74080e7          	jalr	-396(ra) # b84 <sdcard_get>
     d18:	00000493          	li	s1,0
     d1c:	20000913          	li	s2,512
     d20:	00000593          	li	a1,0
     d24:	00800513          	li	a0,8
     d28:	00000097          	auipc	ra,0x0
     d2c:	e5c080e7          	jalr	-420(ra) # b84 <sdcard_get>
     d30:	009407b3          	add	a5,s0,s1
     d34:	00a78023          	sb	a0,0(a5)
     d38:	00148493          	addi	s1,s1,1
     d3c:	ff2492e3          	bne	s1,s2,d20 <sdcard_read_sector+0x3c>
     d40:	00100593          	li	a1,1
     d44:	01000513          	li	a0,16
     d48:	20040413          	addi	s0,s0,512
     d4c:	00000097          	auipc	ra,0x0
     d50:	e38080e7          	jalr	-456(ra) # b84 <sdcard_get>
     d54:	00c12083          	lw	ra,12(sp)
     d58:	00040513          	mv	a0,s0
     d5c:	00812403          	lw	s0,8(sp)
     d60:	00412483          	lw	s1,4(sp)
     d64:	00012903          	lw	s2,0(sp)
     d68:	01010113          	addi	sp,sp,16
     d6c:	00008067          	ret

00000d70 <sdcard_preinit>:
     d70:	ff010113          	addi	sp,sp,-16
     d74:	000057b7          	lui	a5,0x5
     d78:	00812423          	sw	s0,8(sp)
     d7c:	d387a403          	lw	s0,-712(a5) # 4d38 <SDCARD>
     d80:	00112623          	sw	ra,12(sp)
     d84:	00600793          	li	a5,6
     d88:	01313537          	lui	a0,0x1313
     d8c:	00f42023          	sw	a5,0(s0)
     d90:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     d94:	00000097          	auipc	ra,0x0
     d98:	c04080e7          	jalr	-1020(ra) # 998 <pause>
     d9c:	0a000793          	li	a5,160
     da0:	00000713          	li	a4,0
     da4:	00100693          	li	a3,1
     da8:	00676613          	ori	a2,a4,6
     dac:	00c42023          	sw	a2,0(s0)
     db0:	fff78793          	addi	a5,a5,-1
     db4:	40e68733          	sub	a4,a3,a4
     db8:	fe0798e3          	bnez	a5,da8 <sdcard_preinit+0x38>
     dbc:	00600793          	li	a5,6
     dc0:	00c12083          	lw	ra,12(sp)
     dc4:	00f42023          	sw	a5,0(s0)
     dc8:	00812403          	lw	s0,8(sp)
     dcc:	01010113          	addi	sp,sp,16
     dd0:	00008067          	ret

00000dd4 <sdcard_init>:
     dd4:	fe010113          	addi	sp,sp,-32
     dd8:	000017b7          	lui	a5,0x1
     ddc:	00812c23          	sw	s0,24(sp)
     de0:	00005737          	lui	a4,0x5
     de4:	9ac78793          	addi	a5,a5,-1620 # 9ac <sdcard_idle>
     de8:	01313437          	lui	s0,0x1313
     dec:	01212823          	sw	s2,16(sp)
     df0:	01312623          	sw	s3,12(sp)
     df4:	00112e23          	sw	ra,28(sp)
     df8:	00912a23          	sw	s1,20(sp)
     dfc:	08f72423          	sw	a5,136(a4) # 5088 <sdcard_while_loading_callback>
     e00:	00005937          	lui	s2,0x5
     e04:	0ff00993          	li	s3,255
     e08:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     e0c:	00000097          	auipc	ra,0x0
     e10:	f64080e7          	jalr	-156(ra) # d70 <sdcard_preinit>
     e14:	d0490513          	addi	a0,s2,-764 # 4d04 <cmd0>
     e18:	00000097          	auipc	ra,0x0
     e1c:	de4080e7          	jalr	-540(ra) # bfc <sdcard_cmd>
     e20:	00100593          	li	a1,1
     e24:	00800513          	li	a0,8
     e28:	00000097          	auipc	ra,0x0
     e2c:	d5c080e7          	jalr	-676(ra) # b84 <sdcard_get>
     e30:	00050493          	mv	s1,a0
     e34:	00000097          	auipc	ra,0x0
     e38:	b90080e7          	jalr	-1136(ra) # 9c4 <sdcard_ponder>
     e3c:	01349a63          	bne	s1,s3,e50 <sdcard_init+0x7c>
     e40:	00040513          	mv	a0,s0
     e44:	00000097          	auipc	ra,0x0
     e48:	b54080e7          	jalr	-1196(ra) # 998 <pause>
     e4c:	fc1ff06f          	j	e0c <sdcard_init+0x38>
     e50:	00005537          	lui	a0,0x5
     e54:	d1c50513          	addi	a0,a0,-740 # 4d1c <cmd8>
     e58:	00000097          	auipc	ra,0x0
     e5c:	da4080e7          	jalr	-604(ra) # bfc <sdcard_cmd>
     e60:	00100593          	li	a1,1
     e64:	02800513          	li	a0,40
     e68:	00000097          	auipc	ra,0x0
     e6c:	d1c080e7          	jalr	-740(ra) # b84 <sdcard_get>
     e70:	001e8437          	lui	s0,0x1e8
     e74:	00000097          	auipc	ra,0x0
     e78:	b50080e7          	jalr	-1200(ra) # 9c4 <sdcard_ponder>
     e7c:	00005937          	lui	s2,0x5
     e80:	000059b7          	lui	s3,0x5
     e84:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     e88:	d1490513          	addi	a0,s2,-748 # 4d14 <cmd55>
     e8c:	00000097          	auipc	ra,0x0
     e90:	d70080e7          	jalr	-656(ra) # bfc <sdcard_cmd>
     e94:	00100593          	li	a1,1
     e98:	00800513          	li	a0,8
     e9c:	00000097          	auipc	ra,0x0
     ea0:	ce8080e7          	jalr	-792(ra) # b84 <sdcard_get>
     ea4:	00000097          	auipc	ra,0x0
     ea8:	b20080e7          	jalr	-1248(ra) # 9c4 <sdcard_ponder>
     eac:	cfc98513          	addi	a0,s3,-772 # 4cfc <acmd41>
     eb0:	00000097          	auipc	ra,0x0
     eb4:	d4c080e7          	jalr	-692(ra) # bfc <sdcard_cmd>
     eb8:	00100593          	li	a1,1
     ebc:	00800513          	li	a0,8
     ec0:	00000097          	auipc	ra,0x0
     ec4:	cc4080e7          	jalr	-828(ra) # b84 <sdcard_get>
     ec8:	00050493          	mv	s1,a0
     ecc:	00000097          	auipc	ra,0x0
     ed0:	af8080e7          	jalr	-1288(ra) # 9c4 <sdcard_ponder>
     ed4:	00048a63          	beqz	s1,ee8 <sdcard_init+0x114>
     ed8:	00040513          	mv	a0,s0
     edc:	00000097          	auipc	ra,0x0
     ee0:	abc080e7          	jalr	-1348(ra) # 998 <pause>
     ee4:	fa5ff06f          	j	e88 <sdcard_init+0xb4>
     ee8:	00005537          	lui	a0,0x5
     eec:	d0c50513          	addi	a0,a0,-756 # 4d0c <cmd16>
     ef0:	00000097          	auipc	ra,0x0
     ef4:	d0c080e7          	jalr	-756(ra) # bfc <sdcard_cmd>
     ef8:	00100593          	li	a1,1
     efc:	00800513          	li	a0,8
     f00:	00000097          	auipc	ra,0x0
     f04:	c84080e7          	jalr	-892(ra) # b84 <sdcard_get>
     f08:	01812403          	lw	s0,24(sp)
     f0c:	01c12083          	lw	ra,28(sp)
     f10:	01412483          	lw	s1,20(sp)
     f14:	01012903          	lw	s2,16(sp)
     f18:	00c12983          	lw	s3,12(sp)
     f1c:	02010113          	addi	sp,sp,32
     f20:	00000317          	auipc	t1,0x0
     f24:	aa430067          	jr	-1372(t1) # 9c4 <sdcard_ponder>

00000f28 <sdcard_readsector>:
     f28:	04060863          	beqz	a2,f78 <sdcard_readsector+0x50>
     f2c:	ff010113          	addi	sp,sp,-16
     f30:	00812423          	sw	s0,8(sp)
     f34:	00912223          	sw	s1,4(sp)
     f38:	00112623          	sw	ra,12(sp)
     f3c:	00050413          	mv	s0,a0
     f40:	00a604b3          	add	s1,a2,a0
     f44:	00941e63          	bne	s0,s1,f60 <sdcard_readsector+0x38>
     f48:	00c12083          	lw	ra,12(sp)
     f4c:	00812403          	lw	s0,8(sp)
     f50:	00412483          	lw	s1,4(sp)
     f54:	00100513          	li	a0,1
     f58:	01010113          	addi	sp,sp,16
     f5c:	00008067          	ret
     f60:	00040513          	mv	a0,s0
     f64:	00000097          	auipc	ra,0x0
     f68:	d80080e7          	jalr	-640(ra) # ce4 <sdcard_read_sector>
     f6c:	00050593          	mv	a1,a0
     f70:	00140413          	addi	s0,s0,1
     f74:	fd1ff06f          	j	f44 <sdcard_readsector+0x1c>
     f78:	00000513          	li	a0,0
     f7c:	00008067          	ret

00000f80 <sdcard_writesector>:
     f80:	00000513          	li	a0,0
     f84:	00008067          	ret

00000f88 <__divsi3>:
     f88:	06054063          	bltz	a0,fe8 <__umodsi3+0x10>
     f8c:	0605c663          	bltz	a1,ff8 <__umodsi3+0x20>

00000f90 <__udivsi3>:
     f90:	00058613          	mv	a2,a1
     f94:	00050593          	mv	a1,a0
     f98:	fff00513          	li	a0,-1
     f9c:	02060c63          	beqz	a2,fd4 <__udivsi3+0x44>
     fa0:	00100693          	li	a3,1
     fa4:	00b67a63          	bgeu	a2,a1,fb8 <__udivsi3+0x28>
     fa8:	00c05863          	blez	a2,fb8 <__udivsi3+0x28>
     fac:	00161613          	slli	a2,a2,0x1
     fb0:	00169693          	slli	a3,a3,0x1
     fb4:	feb66ae3          	bltu	a2,a1,fa8 <__udivsi3+0x18>
     fb8:	00000513          	li	a0,0
     fbc:	00c5e663          	bltu	a1,a2,fc8 <__udivsi3+0x38>
     fc0:	40c585b3          	sub	a1,a1,a2
     fc4:	00d56533          	or	a0,a0,a3
     fc8:	0016d693          	srli	a3,a3,0x1
     fcc:	00165613          	srli	a2,a2,0x1
     fd0:	fe0696e3          	bnez	a3,fbc <__udivsi3+0x2c>
     fd4:	00008067          	ret

00000fd8 <__umodsi3>:
     fd8:	00008293          	mv	t0,ra
     fdc:	fb5ff0ef          	jal	ra,f90 <__udivsi3>
     fe0:	00058513          	mv	a0,a1
     fe4:	00028067          	jr	t0
     fe8:	40a00533          	neg	a0,a0
     fec:	0005d863          	bgez	a1,ffc <__umodsi3+0x24>
     ff0:	40b005b3          	neg	a1,a1
     ff4:	f95ff06f          	j	f88 <__divsi3>
     ff8:	40b005b3          	neg	a1,a1
     ffc:	00008293          	mv	t0,ra
    1000:	f89ff0ef          	jal	ra,f88 <__divsi3>
    1004:	40a00533          	neg	a0,a0
    1008:	00028067          	jr	t0

0000100c <__modsi3>:
    100c:	00008293          	mv	t0,ra
    1010:	0005ca63          	bltz	a1,1024 <__modsi3+0x18>
    1014:	00054c63          	bltz	a0,102c <__modsi3+0x20>
    1018:	f79ff0ef          	jal	ra,f90 <__udivsi3>
    101c:	00058513          	mv	a0,a1
    1020:	00028067          	jr	t0
    1024:	40b005b3          	neg	a1,a1
    1028:	fe0558e3          	bgez	a0,1018 <__modsi3+0xc>
    102c:	40a00533          	neg	a0,a0
    1030:	f61ff0ef          	jal	ra,f90 <__udivsi3>
    1034:	40b00533          	neg	a0,a1
    1038:	00028067          	jr	t0

0000103c <memset>:
    103c:	00c50633          	add	a2,a0,a2
    1040:	00050793          	mv	a5,a0
    1044:	00c79463          	bne	a5,a2,104c <memset+0x10>
    1048:	00008067          	ret
    104c:	00178793          	addi	a5,a5,1
    1050:	feb78fa3          	sb	a1,-1(a5)
    1054:	ff1ff06f          	j	1044 <memset+0x8>

00001058 <memcpy>:
    1058:	00000793          	li	a5,0
    105c:	00c79463          	bne	a5,a2,1064 <memcpy+0xc>
    1060:	00008067          	ret
    1064:	00f58733          	add	a4,a1,a5
    1068:	00074683          	lbu	a3,0(a4)
    106c:	00f50733          	add	a4,a0,a5
    1070:	00178793          	addi	a5,a5,1
    1074:	00d70023          	sb	a3,0(a4)
    1078:	fe5ff06f          	j	105c <memcpy+0x4>

0000107c <strlen>:
    107c:	00050793          	mv	a5,a0
    1080:	00000513          	li	a0,0
    1084:	00a78733          	add	a4,a5,a0
    1088:	00074703          	lbu	a4,0(a4)
    108c:	00071463          	bnez	a4,1094 <strlen+0x18>
    1090:	00008067          	ret
    1094:	00150513          	addi	a0,a0,1
    1098:	fedff06f          	j	1084 <strlen+0x8>

0000109c <strncmp>:
    109c:	00000793          	li	a5,0
    10a0:	00c79663          	bne	a5,a2,10ac <strncmp+0x10>
    10a4:	00000513          	li	a0,0
    10a8:	00008067          	ret
    10ac:	00f50733          	add	a4,a0,a5
    10b0:	00074683          	lbu	a3,0(a4)
    10b4:	00f58733          	add	a4,a1,a5
    10b8:	00074703          	lbu	a4,0(a4)
    10bc:	00e6e863          	bltu	a3,a4,10cc <strncmp+0x30>
    10c0:	00d76a63          	bltu	a4,a3,10d4 <strncmp+0x38>
    10c4:	00178793          	addi	a5,a5,1
    10c8:	fd9ff06f          	j	10a0 <strncmp+0x4>
    10cc:	fff00513          	li	a0,-1
    10d0:	00008067          	ret
    10d4:	00100513          	li	a0,1
    10d8:	00008067          	ret

000010dc <strncpy>:
    10dc:	00000793          	li	a5,0
    10e0:	00f61463          	bne	a2,a5,10e8 <strncpy+0xc>
    10e4:	00008067          	ret
    10e8:	00f58733          	add	a4,a1,a5
    10ec:	00074683          	lbu	a3,0(a4)
    10f0:	00f50733          	add	a4,a0,a5
    10f4:	00178793          	addi	a5,a5,1
    10f8:	00d70023          	sb	a3,0(a4)
    10fc:	fe5ff06f          	j	10e0 <strncpy+0x4>

00001100 <strcpy>:
    1100:	0005c783          	lbu	a5,0(a1)
    1104:	00079663          	bnez	a5,1110 <strcpy+0x10>
    1108:	00050023          	sb	zero,0(a0)
    110c:	00008067          	ret
    1110:	00150513          	addi	a0,a0,1
    1114:	00158593          	addi	a1,a1,1
    1118:	fef50fa3          	sb	a5,-1(a0)
    111c:	fe5ff06f          	j	1100 <strcpy>

00001120 <strcat>:
    1120:	00050793          	mv	a5,a0
    1124:	0007c683          	lbu	a3,0(a5)
    1128:	00078713          	mv	a4,a5
    112c:	00178793          	addi	a5,a5,1
    1130:	fe069ae3          	bnez	a3,1124 <strcat+0x4>
    1134:	0005c783          	lbu	a5,0(a1)
    1138:	00158593          	addi	a1,a1,1
    113c:	00170713          	addi	a4,a4,1
    1140:	fef70fa3          	sb	a5,-1(a4)
    1144:	fe0798e3          	bnez	a5,1134 <strcat+0x14>
    1148:	00008067          	ret

0000114c <oled_wait>:
    114c:	00000013          	nop
    1150:	00000013          	nop
    1154:	00000013          	nop
    1158:	00000013          	nop
    115c:	00000013          	nop
    1160:	00000013          	nop
    1164:	00000013          	nop
    1168:	00008067          	ret

0000116c <oled_init_mode>:
    116c:	000057b7          	lui	a5,0x5
    1170:	d347a703          	lw	a4,-716(a5) # 4d34 <OLED_RST>
    1174:	ff010113          	addi	sp,sp,-16
    1178:	00912223          	sw	s1,4(sp)
    117c:	00112623          	sw	ra,12(sp)
    1180:	00812423          	sw	s0,8(sp)
    1184:	00072023          	sw	zero,0(a4)
    1188:	00050493          	mv	s1,a0
    118c:	00040737          	lui	a4,0x40
    1190:	00000013          	nop
    1194:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1198:	fe071ce3          	bnez	a4,1190 <oled_init_mode+0x24>
    119c:	d347a703          	lw	a4,-716(a5)
    11a0:	00100693          	li	a3,1
    11a4:	00d72023          	sw	a3,0(a4)
    11a8:	00040737          	lui	a4,0x40
    11ac:	00000013          	nop
    11b0:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    11b4:	fe071ce3          	bnez	a4,11ac <oled_init_mode+0x40>
    11b8:	d347a783          	lw	a5,-716(a5)
    11bc:	0007a023          	sw	zero,0(a5)
    11c0:	000407b7          	lui	a5,0x40
    11c4:	00000013          	nop
    11c8:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    11cc:	fe079ce3          	bnez	a5,11c4 <oled_init_mode+0x58>
    11d0:	00005737          	lui	a4,0x5
    11d4:	d3072783          	lw	a5,-720(a4) # 4d30 <OLED>
    11d8:	2af00693          	li	a3,687
    11dc:	00d7a023          	sw	a3,0(a5)
    11e0:	000407b7          	lui	a5,0x40
    11e4:	00000013          	nop
    11e8:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    11ec:	fe079ce3          	bnez	a5,11e4 <oled_init_mode+0x78>
    11f0:	d3072403          	lw	s0,-720(a4)
    11f4:	2a000793          	li	a5,672
    11f8:	00f42023          	sw	a5,0(s0)
    11fc:	00000097          	auipc	ra,0x0
    1200:	f50080e7          	jalr	-176(ra) # 114c <oled_wait>
    1204:	4a000793          	li	a5,1184
    1208:	00048463          	beqz	s1,1210 <oled_init_mode+0xa4>
    120c:	42000793          	li	a5,1056
    1210:	00f42023          	sw	a5,0(s0)
    1214:	00000097          	auipc	ra,0x0
    1218:	f38080e7          	jalr	-200(ra) # 114c <oled_wait>
    121c:	2fd00793          	li	a5,765
    1220:	00f42023          	sw	a5,0(s0)
    1224:	00000097          	auipc	ra,0x0
    1228:	f28080e7          	jalr	-216(ra) # 114c <oled_wait>
    122c:	4b100793          	li	a5,1201
    1230:	00f42023          	sw	a5,0(s0)
    1234:	00000097          	auipc	ra,0x0
    1238:	f18080e7          	jalr	-232(ra) # 114c <oled_wait>
    123c:	2a200793          	li	a5,674
    1240:	00f42023          	sw	a5,0(s0)
    1244:	00000097          	auipc	ra,0x0
    1248:	f08080e7          	jalr	-248(ra) # 114c <oled_wait>
    124c:	40000793          	li	a5,1024
    1250:	00f42023          	sw	a5,0(s0)
    1254:	00812403          	lw	s0,8(sp)
    1258:	00c12083          	lw	ra,12(sp)
    125c:	00412483          	lw	s1,4(sp)
    1260:	01010113          	addi	sp,sp,16
    1264:	00000317          	auipc	t1,0x0
    1268:	ee830067          	jr	-280(t1) # 114c <oled_wait>

0000126c <oled_init>:
    126c:	00000513          	li	a0,0
    1270:	00000317          	auipc	t1,0x0
    1274:	efc30067          	jr	-260(t1) # 116c <oled_init_mode>

00001278 <oled_fullscreen>:
    1278:	ff010113          	addi	sp,sp,-16
    127c:	000057b7          	lui	a5,0x5
    1280:	00812423          	sw	s0,8(sp)
    1284:	d307a403          	lw	s0,-720(a5) # 4d30 <OLED>
    1288:	00112623          	sw	ra,12(sp)
    128c:	00912223          	sw	s1,4(sp)
    1290:	01212023          	sw	s2,0(sp)
    1294:	21500793          	li	a5,533
    1298:	00f42023          	sw	a5,0(s0)
    129c:	40000913          	li	s2,1024
    12a0:	00000097          	auipc	ra,0x0
    12a4:	eac080e7          	jalr	-340(ra) # 114c <oled_wait>
    12a8:	47f00493          	li	s1,1151
    12ac:	01242023          	sw	s2,0(s0)
    12b0:	00000097          	auipc	ra,0x0
    12b4:	e9c080e7          	jalr	-356(ra) # 114c <oled_wait>
    12b8:	00942023          	sw	s1,0(s0)
    12bc:	00000097          	auipc	ra,0x0
    12c0:	e90080e7          	jalr	-368(ra) # 114c <oled_wait>
    12c4:	27500793          	li	a5,629
    12c8:	00f42023          	sw	a5,0(s0)
    12cc:	00000097          	auipc	ra,0x0
    12d0:	e80080e7          	jalr	-384(ra) # 114c <oled_wait>
    12d4:	01242023          	sw	s2,0(s0)
    12d8:	00000097          	auipc	ra,0x0
    12dc:	e74080e7          	jalr	-396(ra) # 114c <oled_wait>
    12e0:	00942023          	sw	s1,0(s0)
    12e4:	00000097          	auipc	ra,0x0
    12e8:	e68080e7          	jalr	-408(ra) # 114c <oled_wait>
    12ec:	25c00793          	li	a5,604
    12f0:	00f42023          	sw	a5,0(s0)
    12f4:	00812403          	lw	s0,8(sp)
    12f8:	00c12083          	lw	ra,12(sp)
    12fc:	00412483          	lw	s1,4(sp)
    1300:	00012903          	lw	s2,0(sp)
    1304:	01010113          	addi	sp,sp,16
    1308:	00000317          	auipc	t1,0x0
    130c:	e4430067          	jr	-444(t1) # 114c <oled_wait>

00001310 <oled_clear>:
    1310:	fe010113          	addi	sp,sp,-32
    1314:	000057b7          	lui	a5,0x5
    1318:	01312623          	sw	s3,12(sp)
    131c:	d307a983          	lw	s3,-720(a5) # 4d30 <OLED>
    1320:	00812c23          	sw	s0,24(sp)
    1324:	01212823          	sw	s2,16(sp)
    1328:	00112e23          	sw	ra,28(sp)
    132c:	00912a23          	sw	s1,20(sp)
    1330:	08000913          	li	s2,128
    1334:	40056413          	ori	s0,a0,1024
    1338:	08000493          	li	s1,128
    133c:	0089a023          	sw	s0,0(s3)
    1340:	00000097          	auipc	ra,0x0
    1344:	e0c080e7          	jalr	-500(ra) # 114c <oled_wait>
    1348:	0089a023          	sw	s0,0(s3)
    134c:	00000097          	auipc	ra,0x0
    1350:	e00080e7          	jalr	-512(ra) # 114c <oled_wait>
    1354:	fff48493          	addi	s1,s1,-1
    1358:	0089a023          	sw	s0,0(s3)
    135c:	00000097          	auipc	ra,0x0
    1360:	df0080e7          	jalr	-528(ra) # 114c <oled_wait>
    1364:	fc049ce3          	bnez	s1,133c <oled_clear+0x2c>
    1368:	fff90913          	addi	s2,s2,-1
    136c:	fc0916e3          	bnez	s2,1338 <oled_clear+0x28>
    1370:	01c12083          	lw	ra,28(sp)
    1374:	01812403          	lw	s0,24(sp)
    1378:	01412483          	lw	s1,20(sp)
    137c:	01012903          	lw	s2,16(sp)
    1380:	00c12983          	lw	s3,12(sp)
    1384:	02010113          	addi	sp,sp,32
    1388:	00008067          	ret

0000138c <oled_wait>:
    138c:	00000013          	nop
    1390:	00000013          	nop
    1394:	00000013          	nop
    1398:	00000013          	nop
    139c:	00000013          	nop
    13a0:	00000013          	nop
    13a4:	00000013          	nop
    13a8:	00008067          	ret

000013ac <display_framebuffer>:
    13ac:	00005537          	lui	a0,0x5
    13b0:	27450513          	addi	a0,a0,628 # 5274 <framebuffer>
    13b4:	00008067          	ret

000013b8 <display_set_cursor>:
    13b8:	000057b7          	lui	a5,0x5
    13bc:	08a7a823          	sw	a0,144(a5) # 5090 <cursor_x>
    13c0:	000057b7          	lui	a5,0x5
    13c4:	08b7aa23          	sw	a1,148(a5) # 5094 <cursor_y>
    13c8:	00008067          	ret

000013cc <display_set_front_back_color>:
    13cc:	000057b7          	lui	a5,0x5
    13d0:	08a78c23          	sb	a0,152(a5) # 5098 <front_color>
    13d4:	000057b7          	lui	a5,0x5
    13d8:	08b78623          	sb	a1,140(a5) # 508c <back_color>
    13dc:	00008067          	ret

000013e0 <display_putchar>:
    13e0:	000057b7          	lui	a5,0x5
    13e4:	00a00713          	li	a4,10
    13e8:	09078793          	addi	a5,a5,144 # 5090 <cursor_x>
    13ec:	02e51863          	bne	a0,a4,141c <display_putchar+0x3c>
    13f0:	00005737          	lui	a4,0x5
    13f4:	09470713          	addi	a4,a4,148 # 5094 <cursor_y>
    13f8:	0007a023          	sw	zero,0(a5)
    13fc:	00072783          	lw	a5,0(a4)
    1400:	00878793          	addi	a5,a5,8
    1404:	00f72023          	sw	a5,0(a4)
    1408:	07f00713          	li	a4,127
    140c:	12f75c63          	bge	a4,a5,1544 <display_putchar+0x164>
    1410:	000057b7          	lui	a5,0x5
    1414:	0807aa23          	sw	zero,148(a5) # 5094 <cursor_y>
    1418:	00008067          	ret
    141c:	01f00693          	li	a3,31
    1420:	0007a703          	lw	a4,0(a5)
    1424:	0ea6d663          	bge	a3,a0,1510 <display_putchar+0x130>
    1428:	000056b7          	lui	a3,0x5
    142c:	ff010113          	addi	sp,sp,-16
    1430:	08c6c383          	lbu	t2,140(a3) # 508c <back_color>
    1434:	000056b7          	lui	a3,0x5
    1438:	00812623          	sw	s0,12(sp)
    143c:	0986c403          	lbu	s0,152(a3) # 5098 <front_color>
    1440:	000056b7          	lui	a3,0x5
    1444:	0946af03          	lw	t5,148(a3) # 5094 <cursor_y>
    1448:	00251613          	slli	a2,a0,0x2
    144c:	000056b7          	lui	a3,0x5
    1450:	00a60633          	add	a2,a2,a0
    1454:	e2c68693          	addi	a3,a3,-468 # 4e2c <font>
    1458:	00771313          	slli	t1,a4,0x7
    145c:	00005837          	lui	a6,0x5
    1460:	00912423          	sw	s1,8(sp)
    1464:	01212223          	sw	s2,4(sp)
    1468:	00c686b3          	add	a3,a3,a2
    146c:	28030493          	addi	s1,t1,640
    1470:	00000613          	li	a2,0
    1474:	00100293          	li	t0,1
    1478:	27480813          	addi	a6,a6,628 # 5274 <framebuffer>
    147c:	00800913          	li	s2,8
    1480:	00c29fb3          	sll	t6,t0,a2
    1484:	00cf0eb3          	add	t4,t5,a2
    1488:	00030593          	mv	a1,t1
    148c:	00068513          	mv	a0,a3
    1490:	f6054883          	lbu	a7,-160(a0)
    1494:	00038e13          	mv	t3,t2
    1498:	01f8f8b3          	and	a7,a7,t6
    149c:	00088463          	beqz	a7,14a4 <display_putchar+0xc4>
    14a0:	00040e13          	mv	t3,s0
    14a4:	00b808b3          	add	a7,a6,a1
    14a8:	01d888b3          	add	a7,a7,t4
    14ac:	01c88023          	sb	t3,0(a7)
    14b0:	08058593          	addi	a1,a1,128
    14b4:	00150513          	addi	a0,a0,1
    14b8:	fc959ce3          	bne	a1,s1,1490 <display_putchar+0xb0>
    14bc:	00160613          	addi	a2,a2,1
    14c0:	fd2610e3          	bne	a2,s2,1480 <display_putchar+0xa0>
    14c4:	00570713          	addi	a4,a4,5
    14c8:	07f00693          	li	a3,127
    14cc:	00e6c663          	blt	a3,a4,14d8 <display_putchar+0xf8>
    14d0:	00e7a023          	sw	a4,0(a5)
    14d4:	0280006f          	j	14fc <display_putchar+0x11c>
    14d8:	00005737          	lui	a4,0x5
    14dc:	09470713          	addi	a4,a4,148 # 5094 <cursor_y>
    14e0:	0007a023          	sw	zero,0(a5)
    14e4:	00072783          	lw	a5,0(a4)
    14e8:	00878793          	addi	a5,a5,8
    14ec:	00f72023          	sw	a5,0(a4)
    14f0:	00f6d663          	bge	a3,a5,14fc <display_putchar+0x11c>
    14f4:	000057b7          	lui	a5,0x5
    14f8:	0807aa23          	sw	zero,148(a5) # 5094 <cursor_y>
    14fc:	00c12403          	lw	s0,12(sp)
    1500:	00812483          	lw	s1,8(sp)
    1504:	00412903          	lw	s2,4(sp)
    1508:	01010113          	addi	sp,sp,16
    150c:	00008067          	ret
    1510:	00570713          	addi	a4,a4,5
    1514:	07f00693          	li	a3,127
    1518:	00e6c663          	blt	a3,a4,1524 <display_putchar+0x144>
    151c:	00e7a023          	sw	a4,0(a5)
    1520:	00008067          	ret
    1524:	00005737          	lui	a4,0x5
    1528:	09470713          	addi	a4,a4,148 # 5094 <cursor_y>
    152c:	0007a023          	sw	zero,0(a5)
    1530:	00072783          	lw	a5,0(a4)
    1534:	00878793          	addi	a5,a5,8
    1538:	00f72023          	sw	a5,0(a4)
    153c:	ecf6cae3          	blt	a3,a5,1410 <display_putchar+0x30>
    1540:	00008067          	ret
    1544:	00008067          	ret

00001548 <display_refresh>:
    1548:	fe010113          	addi	sp,sp,-32
    154c:	000057b7          	lui	a5,0x5
    1550:	01212823          	sw	s2,16(sp)
    1554:	d307a903          	lw	s2,-720(a5) # 4d30 <OLED>
    1558:	01312623          	sw	s3,12(sp)
    155c:	000059b7          	lui	s3,0x5
    1560:	00912a23          	sw	s1,20(sp)
    1564:	01412423          	sw	s4,8(sp)
    1568:	00112e23          	sw	ra,28(sp)
    156c:	00812c23          	sw	s0,24(sp)
    1570:	00000493          	li	s1,0
    1574:	27498993          	addi	s3,s3,628 # 5274 <framebuffer>
    1578:	00004a37          	lui	s4,0x4
    157c:	013487b3          	add	a5,s1,s3
    1580:	0007c403          	lbu	s0,0(a5)
    1584:	00148493          	addi	s1,s1,1
    1588:	00245413          	srli	s0,s0,0x2
    158c:	40046413          	ori	s0,s0,1024
    1590:	00892023          	sw	s0,0(s2)
    1594:	00000097          	auipc	ra,0x0
    1598:	df8080e7          	jalr	-520(ra) # 138c <oled_wait>
    159c:	00892023          	sw	s0,0(s2)
    15a0:	00000097          	auipc	ra,0x0
    15a4:	dec080e7          	jalr	-532(ra) # 138c <oled_wait>
    15a8:	00892023          	sw	s0,0(s2)
    15ac:	00000097          	auipc	ra,0x0
    15b0:	de0080e7          	jalr	-544(ra) # 138c <oled_wait>
    15b4:	fd4494e3          	bne	s1,s4,157c <display_refresh+0x34>
    15b8:	01c12083          	lw	ra,28(sp)
    15bc:	01812403          	lw	s0,24(sp)
    15c0:	01412483          	lw	s1,20(sp)
    15c4:	01012903          	lw	s2,16(sp)
    15c8:	00c12983          	lw	s3,12(sp)
    15cc:	00812a03          	lw	s4,8(sp)
    15d0:	02010113          	addi	sp,sp,32
    15d4:	00008067          	ret

000015d8 <print_string>:
    15d8:	ff010113          	addi	sp,sp,-16
    15dc:	00812423          	sw	s0,8(sp)
    15e0:	00912223          	sw	s1,4(sp)
    15e4:	00112623          	sw	ra,12(sp)
    15e8:	00050413          	mv	s0,a0
    15ec:	000054b7          	lui	s1,0x5
    15f0:	00044503          	lbu	a0,0(s0)
    15f4:	00051c63          	bnez	a0,160c <print_string+0x34>
    15f8:	00c12083          	lw	ra,12(sp)
    15fc:	00812403          	lw	s0,8(sp)
    1600:	00412483          	lw	s1,4(sp)
    1604:	01010113          	addi	sp,sp,16
    1608:	00008067          	ret
    160c:	09c4a783          	lw	a5,156(s1) # 509c <f_putchar>
    1610:	00140413          	addi	s0,s0,1
    1614:	000780e7          	jalr	a5
    1618:	fd9ff06f          	j	15f0 <print_string+0x18>

0000161c <print_dec>:
    161c:	ee010113          	addi	sp,sp,-288
    1620:	10812c23          	sw	s0,280(sp)
    1624:	10912a23          	sw	s1,276(sp)
    1628:	10112e23          	sw	ra,284(sp)
    162c:	11212823          	sw	s2,272(sp)
    1630:	11312623          	sw	s3,268(sp)
    1634:	00050413          	mv	s0,a0
    1638:	000054b7          	lui	s1,0x5
    163c:	09c4a783          	lw	a5,156(s1) # 509c <f_putchar>
    1640:	09c48993          	addi	s3,s1,156
    1644:	06045e63          	bgez	s0,16c0 <print_dec+0xa4>
    1648:	02d00513          	li	a0,45
    164c:	000780e7          	jalr	a5
    1650:	40800433          	neg	s0,s0
    1654:	fe9ff06f          	j	163c <print_dec+0x20>
    1658:	00040513          	mv	a0,s0
    165c:	00a00593          	li	a1,10
    1660:	00000097          	auipc	ra,0x0
    1664:	928080e7          	jalr	-1752(ra) # f88 <__divsi3>
    1668:	00251793          	slli	a5,a0,0x2
    166c:	00f507b3          	add	a5,a0,a5
    1670:	00179793          	slli	a5,a5,0x1
    1674:	40f40433          	sub	s0,s0,a5
    1678:	00148493          	addi	s1,s1,1
    167c:	fe848fa3          	sb	s0,-1(s1)
    1680:	00050413          	mv	s0,a0
    1684:	fc041ae3          	bnez	s0,1658 <print_dec+0x3c>
    1688:	fd2488e3          	beq	s1,s2,1658 <print_dec+0x3c>
    168c:	fff4c503          	lbu	a0,-1(s1)
    1690:	0009a783          	lw	a5,0(s3)
    1694:	fff48493          	addi	s1,s1,-1
    1698:	03050513          	addi	a0,a0,48
    169c:	000780e7          	jalr	a5
    16a0:	ff2496e3          	bne	s1,s2,168c <print_dec+0x70>
    16a4:	11c12083          	lw	ra,284(sp)
    16a8:	11812403          	lw	s0,280(sp)
    16ac:	11412483          	lw	s1,276(sp)
    16b0:	11012903          	lw	s2,272(sp)
    16b4:	10c12983          	lw	s3,268(sp)
    16b8:	12010113          	addi	sp,sp,288
    16bc:	00008067          	ret
    16c0:	00010493          	mv	s1,sp
    16c4:	00048913          	mv	s2,s1
    16c8:	fbdff06f          	j	1684 <print_dec+0x68>

000016cc <print_hex_digits>:
    16cc:	fe010113          	addi	sp,sp,-32
    16d0:	00812c23          	sw	s0,24(sp)
    16d4:	01212823          	sw	s2,16(sp)
    16d8:	fff58413          	addi	s0,a1,-1
    16dc:	00005937          	lui	s2,0x5
    16e0:	00912a23          	sw	s1,20(sp)
    16e4:	01312623          	sw	s3,12(sp)
    16e8:	00112e23          	sw	ra,28(sp)
    16ec:	00050493          	mv	s1,a0
    16f0:	00241413          	slli	s0,s0,0x2
    16f4:	00c90913          	addi	s2,s2,12 # 500c <font+0x1e0>
    16f8:	000059b7          	lui	s3,0x5
    16fc:	02045063          	bgez	s0,171c <print_hex_digits+0x50>
    1700:	01c12083          	lw	ra,28(sp)
    1704:	01812403          	lw	s0,24(sp)
    1708:	01412483          	lw	s1,20(sp)
    170c:	01012903          	lw	s2,16(sp)
    1710:	00c12983          	lw	s3,12(sp)
    1714:	02010113          	addi	sp,sp,32
    1718:	00008067          	ret
    171c:	0084d7b3          	srl	a5,s1,s0
    1720:	00f7f793          	andi	a5,a5,15
    1724:	00f907b3          	add	a5,s2,a5
    1728:	09c9a703          	lw	a4,156(s3) # 509c <f_putchar>
    172c:	0007c503          	lbu	a0,0(a5)
    1730:	ffc40413          	addi	s0,s0,-4
    1734:	000700e7          	jalr	a4
    1738:	fc5ff06f          	j	16fc <print_hex_digits+0x30>

0000173c <print_hex>:
    173c:	00800593          	li	a1,8
    1740:	00000317          	auipc	t1,0x0
    1744:	f8c30067          	jr	-116(t1) # 16cc <print_hex_digits>

00001748 <printf>:
    1748:	fa010113          	addi	sp,sp,-96
    174c:	04f12a23          	sw	a5,84(sp)
    1750:	04410793          	addi	a5,sp,68
    1754:	02812c23          	sw	s0,56(sp)
    1758:	02912a23          	sw	s1,52(sp)
    175c:	03312623          	sw	s3,44(sp)
    1760:	03412423          	sw	s4,40(sp)
    1764:	03512223          	sw	s5,36(sp)
    1768:	03612023          	sw	s6,32(sp)
    176c:	01712e23          	sw	s7,28(sp)
    1770:	02112e23          	sw	ra,60(sp)
    1774:	03212823          	sw	s2,48(sp)
    1778:	00050413          	mv	s0,a0
    177c:	04b12223          	sw	a1,68(sp)
    1780:	04c12423          	sw	a2,72(sp)
    1784:	04d12623          	sw	a3,76(sp)
    1788:	04e12823          	sw	a4,80(sp)
    178c:	05012c23          	sw	a6,88(sp)
    1790:	05112e23          	sw	a7,92(sp)
    1794:	00f12623          	sw	a5,12(sp)
    1798:	02500993          	li	s3,37
    179c:	000054b7          	lui	s1,0x5
    17a0:	07300a13          	li	s4,115
    17a4:	07800a93          	li	s5,120
    17a8:	06400b13          	li	s6,100
    17ac:	06300b93          	li	s7,99
    17b0:	00044503          	lbu	a0,0(s0)
    17b4:	02051863          	bnez	a0,17e4 <printf+0x9c>
    17b8:	03c12083          	lw	ra,60(sp)
    17bc:	03812403          	lw	s0,56(sp)
    17c0:	03412483          	lw	s1,52(sp)
    17c4:	03012903          	lw	s2,48(sp)
    17c8:	02c12983          	lw	s3,44(sp)
    17cc:	02812a03          	lw	s4,40(sp)
    17d0:	02412a83          	lw	s5,36(sp)
    17d4:	02012b03          	lw	s6,32(sp)
    17d8:	01c12b83          	lw	s7,28(sp)
    17dc:	06010113          	addi	sp,sp,96
    17e0:	00008067          	ret
    17e4:	00140913          	addi	s2,s0,1
    17e8:	09351663          	bne	a0,s3,1874 <printf+0x12c>
    17ec:	00144503          	lbu	a0,1(s0)
    17f0:	03451263          	bne	a0,s4,1814 <printf+0xcc>
    17f4:	00c12783          	lw	a5,12(sp)
    17f8:	0007a503          	lw	a0,0(a5)
    17fc:	00478713          	addi	a4,a5,4
    1800:	00e12623          	sw	a4,12(sp)
    1804:	00000097          	auipc	ra,0x0
    1808:	dd4080e7          	jalr	-556(ra) # 15d8 <print_string>
    180c:	00190413          	addi	s0,s2,1
    1810:	fa1ff06f          	j	17b0 <printf+0x68>
    1814:	03551063          	bne	a0,s5,1834 <printf+0xec>
    1818:	00c12783          	lw	a5,12(sp)
    181c:	0007a503          	lw	a0,0(a5)
    1820:	00478713          	addi	a4,a5,4
    1824:	00e12623          	sw	a4,12(sp)
    1828:	00000097          	auipc	ra,0x0
    182c:	f14080e7          	jalr	-236(ra) # 173c <print_hex>
    1830:	fddff06f          	j	180c <printf+0xc4>
    1834:	03651063          	bne	a0,s6,1854 <printf+0x10c>
    1838:	00c12783          	lw	a5,12(sp)
    183c:	0007a503          	lw	a0,0(a5)
    1840:	00478713          	addi	a4,a5,4
    1844:	00e12623          	sw	a4,12(sp)
    1848:	00000097          	auipc	ra,0x0
    184c:	dd4080e7          	jalr	-556(ra) # 161c <print_dec>
    1850:	fbdff06f          	j	180c <printf+0xc4>
    1854:	09c4a783          	lw	a5,156(s1) # 509c <f_putchar>
    1858:	01751a63          	bne	a0,s7,186c <printf+0x124>
    185c:	00c12703          	lw	a4,12(sp)
    1860:	00072503          	lw	a0,0(a4)
    1864:	00470693          	addi	a3,a4,4
    1868:	00d12623          	sw	a3,12(sp)
    186c:	000780e7          	jalr	a5
    1870:	f9dff06f          	j	180c <printf+0xc4>
    1874:	09c4a783          	lw	a5,156(s1)
    1878:	00040913          	mv	s2,s0
    187c:	000780e7          	jalr	a5
    1880:	f8dff06f          	j	180c <printf+0xc4>

00001884 <__mulsi3>:
    1884:	00050793          	mv	a5,a0
    1888:	00000513          	li	a0,0
    188c:	00079463          	bnez	a5,1894 <__mulsi3+0x10>
    1890:	00008067          	ret
    1894:	0017f713          	andi	a4,a5,1
    1898:	00070463          	beqz	a4,18a0 <__mulsi3+0x1c>
    189c:	00b50533          	add	a0,a0,a1
    18a0:	0017d793          	srli	a5,a5,0x1
    18a4:	00159593          	slli	a1,a1,0x1
    18a8:	fe5ff06f          	j	188c <__mulsi3+0x8>

000018ac <fat_list_insert_last>:
    18ac:	00452783          	lw	a5,4(a0)
    18b0:	04079263          	bnez	a5,18f4 <fat_list_insert_last+0x48>
    18b4:	00052783          	lw	a5,0(a0)
    18b8:	00079c63          	bnez	a5,18d0 <fat_list_insert_last+0x24>
    18bc:	00b52023          	sw	a1,0(a0)
    18c0:	00b52223          	sw	a1,4(a0)
    18c4:	0005a023          	sw	zero,0(a1)
    18c8:	0005a223          	sw	zero,4(a1)
    18cc:	00008067          	ret
    18d0:	0007a703          	lw	a4,0(a5)
    18d4:	00f5a223          	sw	a5,4(a1)
    18d8:	00e5a023          	sw	a4,0(a1)
    18dc:	00071863          	bnez	a4,18ec <fat_list_insert_last+0x40>
    18e0:	00b52023          	sw	a1,0(a0)
    18e4:	00b7a023          	sw	a1,0(a5)
    18e8:	00008067          	ret
    18ec:	00b72223          	sw	a1,4(a4)
    18f0:	ff5ff06f          	j	18e4 <fat_list_insert_last+0x38>
    18f4:	0047a703          	lw	a4,4(a5)
    18f8:	00f5a023          	sw	a5,0(a1)
    18fc:	00e5a223          	sw	a4,4(a1)
    1900:	0047a703          	lw	a4,4(a5)
    1904:	00071863          	bnez	a4,1914 <fat_list_insert_last+0x68>
    1908:	00b52223          	sw	a1,4(a0)
    190c:	00b7a223          	sw	a1,4(a5)
    1910:	00008067          	ret
    1914:	00b72023          	sw	a1,0(a4)
    1918:	ff5ff06f          	j	190c <fat_list_insert_last+0x60>

0000191c <FileString_StrCmpNoCase>:
    191c:	00050313          	mv	t1,a0
    1920:	00000793          	li	a5,0
    1924:	01900e13          	li	t3,25
    1928:	00f61663          	bne	a2,a5,1934 <FileString_StrCmpNoCase+0x18>
    192c:	00000513          	li	a0,0
    1930:	0580006f          	j	1988 <FileString_StrCmpNoCase+0x6c>
    1934:	00f30733          	add	a4,t1,a5
    1938:	00074883          	lbu	a7,0(a4)
    193c:	00f58733          	add	a4,a1,a5
    1940:	00074803          	lbu	a6,0(a4)
    1944:	fbf88713          	addi	a4,a7,-65
    1948:	0ff77713          	zext.b	a4,a4
    194c:	00088693          	mv	a3,a7
    1950:	00ee6663          	bltu	t3,a4,195c <FileString_StrCmpNoCase+0x40>
    1954:	02088693          	addi	a3,a7,32
    1958:	0ff6f693          	zext.b	a3,a3
    195c:	fbf80513          	addi	a0,a6,-65
    1960:	0ff57513          	zext.b	a0,a0
    1964:	00080713          	mv	a4,a6
    1968:	00ae6663          	bltu	t3,a0,1974 <FileString_StrCmpNoCase+0x58>
    196c:	02080713          	addi	a4,a6,32
    1970:	0ff77713          	zext.b	a4,a4
    1974:	40e68533          	sub	a0,a3,a4
    1978:	00e69863          	bne	a3,a4,1988 <FileString_StrCmpNoCase+0x6c>
    197c:	00088663          	beqz	a7,1988 <FileString_StrCmpNoCase+0x6c>
    1980:	00178793          	addi	a5,a5,1
    1984:	fa0812e3          	bnez	a6,1928 <FileString_StrCmpNoCase+0xc>
    1988:	00008067          	ret

0000198c <FileString_GetExtension>:
    198c:	00050713          	mv	a4,a0
    1990:	00050793          	mv	a5,a0
    1994:	02e00613          	li	a2,46
    1998:	fff00513          	li	a0,-1
    199c:	0007c683          	lbu	a3,0(a5)
    19a0:	00069463          	bnez	a3,19a8 <FileString_GetExtension+0x1c>
    19a4:	00008067          	ret
    19a8:	00c69463          	bne	a3,a2,19b0 <FileString_GetExtension+0x24>
    19ac:	40e78533          	sub	a0,a5,a4
    19b0:	00178793          	addi	a5,a5,1
    19b4:	fe9ff06f          	j	199c <FileString_GetExtension+0x10>

000019b8 <fatfs_fat_writeback>:
    19b8:	00059663          	bnez	a1,19c4 <fatfs_fat_writeback+0xc>
    19bc:	00000513          	li	a0,0
    19c0:	00008067          	ret
    19c4:	2045a703          	lw	a4,516(a1)
    19c8:	ff010113          	addi	sp,sp,-16
    19cc:	00812423          	sw	s0,8(sp)
    19d0:	00112623          	sw	ra,12(sp)
    19d4:	00050793          	mv	a5,a0
    19d8:	00058413          	mv	s0,a1
    19dc:	00100513          	li	a0,1
    19e0:	04070663          	beqz	a4,1a2c <fatfs_fat_writeback+0x74>
    19e4:	0387a683          	lw	a3,56(a5)
    19e8:	00069863          	bnez	a3,19f8 <fatfs_fat_writeback+0x40>
    19ec:	20042223          	sw	zero,516(s0)
    19f0:	00100513          	li	a0,1
    19f4:	0380006f          	j	1a2c <fatfs_fat_writeback+0x74>
    19f8:	2005a503          	lw	a0,512(a1)
    19fc:	0147a703          	lw	a4,20(a5)
    1a00:	0207a583          	lw	a1,32(a5)
    1a04:	00100613          	li	a2,1
    1a08:	40e507b3          	sub	a5,a0,a4
    1a0c:	00178793          	addi	a5,a5,1
    1a10:	00f5f663          	bgeu	a1,a5,1a1c <fatfs_fat_writeback+0x64>
    1a14:	00b70733          	add	a4,a4,a1
    1a18:	40a70633          	sub	a2,a4,a0
    1a1c:	00040593          	mv	a1,s0
    1a20:	000680e7          	jalr	a3
    1a24:	fc0514e3          	bnez	a0,19ec <fatfs_fat_writeback+0x34>
    1a28:	00000513          	li	a0,0
    1a2c:	00c12083          	lw	ra,12(sp)
    1a30:	00812403          	lw	s0,8(sp)
    1a34:	01010113          	addi	sp,sp,16
    1a38:	00008067          	ret

00001a3c <fatfs_fat_read_sector>:
    1a3c:	fe010113          	addi	sp,sp,-32
    1a40:	01212823          	sw	s2,16(sp)
    1a44:	25452903          	lw	s2,596(a0)
    1a48:	00812c23          	sw	s0,24(sp)
    1a4c:	00912a23          	sw	s1,20(sp)
    1a50:	01312623          	sw	s3,12(sp)
    1a54:	00112e23          	sw	ra,28(sp)
    1a58:	00050993          	mv	s3,a0
    1a5c:	00058493          	mv	s1,a1
    1a60:	00000413          	li	s0,0
    1a64:	06091863          	bnez	s2,1ad4 <fatfs_fat_read_sector+0x98>
    1a68:	2549a783          	lw	a5,596(s3)
    1a6c:	20f42623          	sw	a5,524(s0)
    1a70:	20442783          	lw	a5,516(s0)
    1a74:	2489aa23          	sw	s0,596(s3)
    1a78:	00078c63          	beqz	a5,1a90 <fatfs_fat_read_sector+0x54>
    1a7c:	00040593          	mv	a1,s0
    1a80:	00098513          	mv	a0,s3
    1a84:	00000097          	auipc	ra,0x0
    1a88:	f34080e7          	jalr	-204(ra) # 19b8 <fatfs_fat_writeback>
    1a8c:	02050463          	beqz	a0,1ab4 <fatfs_fat_read_sector+0x78>
    1a90:	0349a783          	lw	a5,52(s3)
    1a94:	20942023          	sw	s1,512(s0)
    1a98:	00100613          	li	a2,1
    1a9c:	00040593          	mv	a1,s0
    1aa0:	00048513          	mv	a0,s1
    1aa4:	000780e7          	jalr	a5
    1aa8:	06051063          	bnez	a0,1b08 <fatfs_fat_read_sector+0xcc>
    1aac:	fff00793          	li	a5,-1
    1ab0:	20f42023          	sw	a5,512(s0)
    1ab4:	01c12083          	lw	ra,28(sp)
    1ab8:	01812403          	lw	s0,24(sp)
    1abc:	01412483          	lw	s1,20(sp)
    1ac0:	00c12983          	lw	s3,12(sp)
    1ac4:	00090513          	mv	a0,s2
    1ac8:	01012903          	lw	s2,16(sp)
    1acc:	02010113          	addi	sp,sp,32
    1ad0:	00008067          	ret
    1ad4:	20092783          	lw	a5,512(s2)
    1ad8:	00f4e663          	bltu	s1,a5,1ae4 <fatfs_fat_read_sector+0xa8>
    1adc:	00178713          	addi	a4,a5,1
    1ae0:	02e4ea63          	bltu	s1,a4,1b14 <fatfs_fat_read_sector+0xd8>
    1ae4:	20c92783          	lw	a5,524(s2)
    1ae8:	00079663          	bnez	a5,1af4 <fatfs_fat_read_sector+0xb8>
    1aec:	00040a63          	beqz	s0,1b00 <fatfs_fat_read_sector+0xc4>
    1af0:	20042623          	sw	zero,524(s0)
    1af4:	00090413          	mv	s0,s2
    1af8:	20c92903          	lw	s2,524(s2)
    1afc:	f69ff06f          	j	1a64 <fatfs_fat_read_sector+0x28>
    1b00:	2409aa23          	sw	zero,596(s3)
    1b04:	ff1ff06f          	j	1af4 <fatfs_fat_read_sector+0xb8>
    1b08:	20842423          	sw	s0,520(s0)
    1b0c:	00040913          	mv	s2,s0
    1b10:	fa5ff06f          	j	1ab4 <fatfs_fat_read_sector+0x78>
    1b14:	40f484b3          	sub	s1,s1,a5
    1b18:	00949493          	slli	s1,s1,0x9
    1b1c:	009904b3          	add	s1,s2,s1
    1b20:	20992423          	sw	s1,520(s2)
    1b24:	f91ff06f          	j	1ab4 <fatfs_fat_read_sector+0x78>

00001b28 <_allocate_file>:
    1b28:	ff010113          	addi	sp,sp,-16
    1b2c:	000057b7          	lui	a5,0x5
    1b30:	00812423          	sw	s0,8(sp)
    1b34:	0a87a403          	lw	s0,168(a5) # 50a8 <_free_file_list>
    1b38:	00112623          	sw	ra,12(sp)
    1b3c:	02040e63          	beqz	s0,1b78 <_allocate_file+0x50>
    1b40:	00042703          	lw	a4,0(s0)
    1b44:	00442683          	lw	a3,4(s0)
    1b48:	0a878793          	addi	a5,a5,168
    1b4c:	04071063          	bnez	a4,1b8c <_allocate_file+0x64>
    1b50:	00d7a023          	sw	a3,0(a5)
    1b54:	00442683          	lw	a3,4(s0)
    1b58:	02069e63          	bnez	a3,1b94 <_allocate_file+0x6c>
    1b5c:	00e7a223          	sw	a4,4(a5)
    1b60:	00005537          	lui	a0,0x5
    1b64:	00040593          	mv	a1,s0
    1b68:	0b050513          	addi	a0,a0,176 # 50b0 <_open_file_list>
    1b6c:	00000097          	auipc	ra,0x0
    1b70:	d40080e7          	jalr	-704(ra) # 18ac <fat_list_insert_last>
    1b74:	bc440413          	addi	s0,s0,-1084
    1b78:	00c12083          	lw	ra,12(sp)
    1b7c:	00040513          	mv	a0,s0
    1b80:	00812403          	lw	s0,8(sp)
    1b84:	01010113          	addi	sp,sp,16
    1b88:	00008067          	ret
    1b8c:	00d72223          	sw	a3,4(a4)
    1b90:	fc5ff06f          	j	1b54 <_allocate_file+0x2c>
    1b94:	00e6a023          	sw	a4,0(a3)
    1b98:	fc9ff06f          	j	1b60 <_allocate_file+0x38>

00001b9c <_free_file>:
    1b9c:	43c52783          	lw	a5,1084(a0)
    1ba0:	44052703          	lw	a4,1088(a0)
    1ba4:	43c50593          	addi	a1,a0,1084
    1ba8:	02079663          	bnez	a5,1bd4 <_free_file+0x38>
    1bac:	000056b7          	lui	a3,0x5
    1bb0:	0ae6a823          	sw	a4,176(a3) # 50b0 <_open_file_list>
    1bb4:	44052703          	lw	a4,1088(a0)
    1bb8:	02071263          	bnez	a4,1bdc <_free_file+0x40>
    1bbc:	00005737          	lui	a4,0x5
    1bc0:	0af72a23          	sw	a5,180(a4) # 50b4 <_open_file_list+0x4>
    1bc4:	00005537          	lui	a0,0x5
    1bc8:	0a850513          	addi	a0,a0,168 # 50a8 <_free_file_list>
    1bcc:	00000317          	auipc	t1,0x0
    1bd0:	ce030067          	jr	-800(t1) # 18ac <fat_list_insert_last>
    1bd4:	00e7a223          	sw	a4,4(a5)
    1bd8:	fddff06f          	j	1bb4 <_free_file+0x18>
    1bdc:	00f72023          	sw	a5,0(a4)
    1be0:	fe5ff06f          	j	1bc4 <_free_file+0x28>

00001be4 <fatfs_lba_of_cluster>:
    1be4:	ff010113          	addi	sp,sp,-16
    1be8:	00812423          	sw	s0,8(sp)
    1bec:	00050413          	mv	s0,a0
    1bf0:	00058513          	mv	a0,a1
    1bf4:	00044583          	lbu	a1,0(s0)
    1bf8:	ffe50513          	addi	a0,a0,-2
    1bfc:	00112623          	sw	ra,12(sp)
    1c00:	00000097          	auipc	ra,0x0
    1c04:	c84080e7          	jalr	-892(ra) # 1884 <__mulsi3>
    1c08:	00442783          	lw	a5,4(s0)
    1c0c:	00f50533          	add	a0,a0,a5
    1c10:	03042783          	lw	a5,48(s0)
    1c14:	00079863          	bnez	a5,1c24 <fatfs_lba_of_cluster+0x40>
    1c18:	02845783          	lhu	a5,40(s0)
    1c1c:	4047d793          	srai	a5,a5,0x4
    1c20:	00f50533          	add	a0,a0,a5
    1c24:	00c12083          	lw	ra,12(sp)
    1c28:	00812403          	lw	s0,8(sp)
    1c2c:	01010113          	addi	sp,sp,16
    1c30:	00008067          	ret

00001c34 <fatfs_sector_read>:
    1c34:	03452783          	lw	a5,52(a0)
    1c38:	00058713          	mv	a4,a1
    1c3c:	00070513          	mv	a0,a4
    1c40:	00060593          	mv	a1,a2
    1c44:	00068613          	mv	a2,a3
    1c48:	00078067          	jr	a5

00001c4c <fatfs_sector_write>:
    1c4c:	03852783          	lw	a5,56(a0)
    1c50:	00058713          	mv	a4,a1
    1c54:	00070513          	mv	a0,a4
    1c58:	00060593          	mv	a1,a2
    1c5c:	00068613          	mv	a2,a3
    1c60:	00078067          	jr	a5

00001c64 <fatfs_write_sector>:
    1c64:	03852783          	lw	a5,56(a0)
    1c68:	0a078863          	beqz	a5,1d18 <fatfs_write_sector+0xb4>
    1c6c:	fe010113          	addi	sp,sp,-32
    1c70:	01212823          	sw	s2,16(sp)
    1c74:	00068913          	mv	s2,a3
    1c78:	03052683          	lw	a3,48(a0)
    1c7c:	00812c23          	sw	s0,24(sp)
    1c80:	00912a23          	sw	s1,20(sp)
    1c84:	00112e23          	sw	ra,28(sp)
    1c88:	00d5e733          	or	a4,a1,a3
    1c8c:	00050413          	mv	s0,a0
    1c90:	00060493          	mv	s1,a2
    1c94:	04071063          	bnez	a4,1cd4 <fatfs_write_sector+0x70>
    1c98:	01052703          	lw	a4,16(a0)
    1c9c:	06e67063          	bgeu	a2,a4,1cfc <fatfs_write_sector+0x98>
    1ca0:	01c52503          	lw	a0,28(a0)
    1ca4:	00c42703          	lw	a4,12(s0)
    1ca8:	00e50533          	add	a0,a0,a4
    1cac:	00c50533          	add	a0,a0,a2
    1cb0:	02090e63          	beqz	s2,1cec <fatfs_write_sector+0x88>
    1cb4:	00100613          	li	a2,1
    1cb8:	00090593          	mv	a1,s2
    1cbc:	01812403          	lw	s0,24(sp)
    1cc0:	01c12083          	lw	ra,28(sp)
    1cc4:	01412483          	lw	s1,20(sp)
    1cc8:	01012903          	lw	s2,16(sp)
    1ccc:	02010113          	addi	sp,sp,32
    1cd0:	00078067          	jr	a5
    1cd4:	00f12623          	sw	a5,12(sp)
    1cd8:	00000097          	auipc	ra,0x0
    1cdc:	f0c080e7          	jalr	-244(ra) # 1be4 <fatfs_lba_of_cluster>
    1ce0:	00c12783          	lw	a5,12(sp)
    1ce4:	00a48533          	add	a0,s1,a0
    1ce8:	fc9ff06f          	j	1cb0 <fatfs_write_sector+0x4c>
    1cec:	24a42223          	sw	a0,580(s0)
    1cf0:	00100613          	li	a2,1
    1cf4:	04440593          	addi	a1,s0,68
    1cf8:	fc5ff06f          	j	1cbc <fatfs_write_sector+0x58>
    1cfc:	01c12083          	lw	ra,28(sp)
    1d00:	01812403          	lw	s0,24(sp)
    1d04:	01412483          	lw	s1,20(sp)
    1d08:	01012903          	lw	s2,16(sp)
    1d0c:	00000513          	li	a0,0
    1d10:	02010113          	addi	sp,sp,32
    1d14:	00008067          	ret
    1d18:	00000513          	li	a0,0
    1d1c:	00008067          	ret

00001d20 <fl_init>:
    1d20:	ff010113          	addi	sp,sp,-16
    1d24:	00812423          	sw	s0,8(sp)
    1d28:	00005437          	lui	s0,0x5
    1d2c:	00112623          	sw	ra,12(sp)
    1d30:	0a840793          	addi	a5,s0,168 # 50a8 <_free_file_list>
    1d34:	0007a223          	sw	zero,4(a5)
    1d38:	0007a023          	sw	zero,0(a5)
    1d3c:	000095b7          	lui	a1,0x9
    1d40:	000057b7          	lui	a5,0x5
    1d44:	0b078793          	addi	a5,a5,176 # 50b0 <_open_file_list>
    1d48:	0a840513          	addi	a0,s0,168
    1d4c:	6b058593          	addi	a1,a1,1712 # 96b0 <_files+0x43c>
    1d50:	0007a223          	sw	zero,4(a5)
    1d54:	0007a023          	sw	zero,0(a5)
    1d58:	00000097          	auipc	ra,0x0
    1d5c:	b54080e7          	jalr	-1196(ra) # 18ac <fat_list_insert_last>
    1d60:	0000a5b7          	lui	a1,0xa
    1d64:	0a840513          	addi	a0,s0,168
    1d68:	af458593          	addi	a1,a1,-1292 # 9af4 <_files+0x880>
    1d6c:	00000097          	auipc	ra,0x0
    1d70:	b40080e7          	jalr	-1216(ra) # 18ac <fat_list_insert_last>
    1d74:	00c12083          	lw	ra,12(sp)
    1d78:	00812403          	lw	s0,8(sp)
    1d7c:	000057b7          	lui	a5,0x5
    1d80:	00100713          	li	a4,1
    1d84:	0ae7a023          	sw	a4,160(a5) # 50a0 <_filelib_init>
    1d88:	01010113          	addi	sp,sp,16
    1d8c:	00008067          	ret

00001d90 <fl_closedir>:
    1d90:	00000513          	li	a0,0
    1d94:	00008067          	ret

00001d98 <fatfs_lfn_cache_entry>:
    1d98:	0005c783          	lbu	a5,0(a1)
    1d9c:	01300693          	li	a3,19
    1da0:	01f7f793          	andi	a5,a5,31
    1da4:	fff78713          	addi	a4,a5,-1
    1da8:	0ff77613          	zext.b	a2,a4
    1dac:	0ac6ea63          	bltu	a3,a2,1e60 <fatfs_lfn_cache_entry+0xc8>
    1db0:	10554683          	lbu	a3,261(a0)
    1db4:	00069463          	bnez	a3,1dbc <fatfs_lfn_cache_entry+0x24>
    1db8:	10f502a3          	sb	a5,261(a0)
    1dbc:	00171793          	slli	a5,a4,0x1
    1dc0:	00e787b3          	add	a5,a5,a4
    1dc4:	0015c683          	lbu	a3,1(a1)
    1dc8:	00279793          	slli	a5,a5,0x2
    1dcc:	00e787b3          	add	a5,a5,a4
    1dd0:	00f50533          	add	a0,a0,a5
    1dd4:	00d50023          	sb	a3,0(a0)
    1dd8:	0035c783          	lbu	a5,3(a1)
    1ddc:	0ff00713          	li	a4,255
    1de0:	02000693          	li	a3,32
    1de4:	00f500a3          	sb	a5,1(a0)
    1de8:	0055c783          	lbu	a5,5(a1)
    1dec:	00f50123          	sb	a5,2(a0)
    1df0:	0075c783          	lbu	a5,7(a1)
    1df4:	00f501a3          	sb	a5,3(a0)
    1df8:	0095c783          	lbu	a5,9(a1)
    1dfc:	00f50223          	sb	a5,4(a0)
    1e00:	00e5c783          	lbu	a5,14(a1)
    1e04:	00f502a3          	sb	a5,5(a0)
    1e08:	0105c783          	lbu	a5,16(a1)
    1e0c:	00f50323          	sb	a5,6(a0)
    1e10:	0125c783          	lbu	a5,18(a1)
    1e14:	00f503a3          	sb	a5,7(a0)
    1e18:	0145c783          	lbu	a5,20(a1)
    1e1c:	00f50423          	sb	a5,8(a0)
    1e20:	0165c783          	lbu	a5,22(a1)
    1e24:	00f504a3          	sb	a5,9(a0)
    1e28:	0185c783          	lbu	a5,24(a1)
    1e2c:	00f50523          	sb	a5,10(a0)
    1e30:	01c5c783          	lbu	a5,28(a1)
    1e34:	00f505a3          	sb	a5,11(a0)
    1e38:	01e5c783          	lbu	a5,30(a1)
    1e3c:	00f50623          	sb	a5,12(a0)
    1e40:	00d00793          	li	a5,13
    1e44:	00054603          	lbu	a2,0(a0)
    1e48:	00e61463          	bne	a2,a4,1e50 <fatfs_lfn_cache_entry+0xb8>
    1e4c:	00d50023          	sb	a3,0(a0)
    1e50:	fff78793          	addi	a5,a5,-1
    1e54:	0ff7f793          	zext.b	a5,a5
    1e58:	00150513          	addi	a0,a0,1
    1e5c:	fe0794e3          	bnez	a5,1e44 <fatfs_lfn_cache_entry+0xac>
    1e60:	00008067          	ret

00001e64 <fatfs_lfn_cache_get>:
    1e64:	10554703          	lbu	a4,261(a0)
    1e68:	01400793          	li	a5,20
    1e6c:	00f71663          	bne	a4,a5,1e78 <fatfs_lfn_cache_get+0x14>
    1e70:	10050223          	sb	zero,260(a0)
    1e74:	00008067          	ret
    1e78:	02070063          	beqz	a4,1e98 <fatfs_lfn_cache_get+0x34>
    1e7c:	00171793          	slli	a5,a4,0x1
    1e80:	00e787b3          	add	a5,a5,a4
    1e84:	00279793          	slli	a5,a5,0x2
    1e88:	00e787b3          	add	a5,a5,a4
    1e8c:	00f507b3          	add	a5,a0,a5
    1e90:	00078023          	sb	zero,0(a5)
    1e94:	00008067          	ret
    1e98:	00050023          	sb	zero,0(a0)
    1e9c:	00008067          	ret

00001ea0 <fatfs_entry_lfn_text>:
    1ea0:	00b54503          	lbu	a0,11(a0)
    1ea4:	00f57513          	andi	a0,a0,15
    1ea8:	ff150513          	addi	a0,a0,-15
    1eac:	00153513          	seqz	a0,a0
    1eb0:	00008067          	ret

00001eb4 <fatfs_entry_lfn_invalid>:
    1eb4:	00054703          	lbu	a4,0(a0)
    1eb8:	00050793          	mv	a5,a0
    1ebc:	02070463          	beqz	a4,1ee4 <fatfs_entry_lfn_invalid+0x30>
    1ec0:	0e500693          	li	a3,229
    1ec4:	00100513          	li	a0,1
    1ec8:	02d70063          	beq	a4,a3,1ee8 <fatfs_entry_lfn_invalid+0x34>
    1ecc:	00b7c783          	lbu	a5,11(a5)
    1ed0:	00800713          	li	a4,8
    1ed4:	00e78a63          	beq	a5,a4,1ee8 <fatfs_entry_lfn_invalid+0x34>
    1ed8:	0067f793          	andi	a5,a5,6
    1edc:	00f03533          	snez	a0,a5
    1ee0:	00008067          	ret
    1ee4:	00100513          	li	a0,1
    1ee8:	00008067          	ret

00001eec <fatfs_entry_lfn_exists>:
    1eec:	00b5c783          	lbu	a5,11(a1)
    1ef0:	00f00693          	li	a3,15
    1ef4:	00050713          	mv	a4,a0
    1ef8:	02d78a63          	beq	a5,a3,1f2c <fatfs_entry_lfn_exists+0x40>
    1efc:	0005c683          	lbu	a3,0(a1)
    1f00:	00000513          	li	a0,0
    1f04:	02068663          	beqz	a3,1f30 <fatfs_entry_lfn_exists+0x44>
    1f08:	0e500613          	li	a2,229
    1f0c:	02c68263          	beq	a3,a2,1f30 <fatfs_entry_lfn_exists+0x44>
    1f10:	00800693          	li	a3,8
    1f14:	00d78e63          	beq	a5,a3,1f30 <fatfs_entry_lfn_exists+0x44>
    1f18:	0067f793          	andi	a5,a5,6
    1f1c:	00079a63          	bnez	a5,1f30 <fatfs_entry_lfn_exists+0x44>
    1f20:	10574503          	lbu	a0,261(a4)
    1f24:	00a03533          	snez	a0,a0
    1f28:	00008067          	ret
    1f2c:	00000513          	li	a0,0
    1f30:	00008067          	ret

00001f34 <fatfs_entry_sfn_only>:
    1f34:	00b54783          	lbu	a5,11(a0)
    1f38:	00f00713          	li	a4,15
    1f3c:	02e78663          	beq	a5,a4,1f68 <fatfs_entry_sfn_only+0x34>
    1f40:	00054703          	lbu	a4,0(a0)
    1f44:	00000513          	li	a0,0
    1f48:	02070263          	beqz	a4,1f6c <fatfs_entry_sfn_only+0x38>
    1f4c:	0e500693          	li	a3,229
    1f50:	00d70e63          	beq	a4,a3,1f6c <fatfs_entry_sfn_only+0x38>
    1f54:	00800713          	li	a4,8
    1f58:	00e78a63          	beq	a5,a4,1f6c <fatfs_entry_sfn_only+0x38>
    1f5c:	0067f793          	andi	a5,a5,6
    1f60:	0017b513          	seqz	a0,a5
    1f64:	00008067          	ret
    1f68:	00000513          	li	a0,0
    1f6c:	00008067          	ret

00001f70 <fatfs_entry_is_dir>:
    1f70:	00b54503          	lbu	a0,11(a0)
    1f74:	00455513          	srli	a0,a0,0x4
    1f78:	00157513          	andi	a0,a0,1
    1f7c:	00008067          	ret

00001f80 <fatfs_entry_is_file>:
    1f80:	00b54503          	lbu	a0,11(a0)
    1f84:	00555513          	srli	a0,a0,0x5
    1f88:	00157513          	andi	a0,a0,1
    1f8c:	00008067          	ret

00001f90 <fatfs_lfn_entries_required>:
    1f90:	ff010113          	addi	sp,sp,-16
    1f94:	00112623          	sw	ra,12(sp)
    1f98:	fffff097          	auipc	ra,0xfffff
    1f9c:	0e4080e7          	jalr	228(ra) # 107c <strlen>
    1fa0:	00050a63          	beqz	a0,1fb4 <fatfs_lfn_entries_required+0x24>
    1fa4:	00d00593          	li	a1,13
    1fa8:	00c50513          	addi	a0,a0,12
    1fac:	fffff097          	auipc	ra,0xfffff
    1fb0:	fdc080e7          	jalr	-36(ra) # f88 <__divsi3>
    1fb4:	00c12083          	lw	ra,12(sp)
    1fb8:	01010113          	addi	sp,sp,16
    1fbc:	00008067          	ret

00001fc0 <fatfs_filename_to_lfn>:
    1fc0:	fa010113          	addi	sp,sp,-96
    1fc4:	04912a23          	sw	s1,84(sp)
    1fc8:	00058493          	mv	s1,a1
    1fcc:	000055b7          	lui	a1,0x5
    1fd0:	05458593          	addi	a1,a1,84 # 5054 <font+0x228>
    1fd4:	05212823          	sw	s2,80(sp)
    1fd8:	05312623          	sw	s3,76(sp)
    1fdc:	00060913          	mv	s2,a2
    1fe0:	00050993          	mv	s3,a0
    1fe4:	03400613          	li	a2,52
    1fe8:	00c10513          	addi	a0,sp,12
    1fec:	04112e23          	sw	ra,92(sp)
    1ff0:	04812c23          	sw	s0,88(sp)
    1ff4:	05412423          	sw	s4,72(sp)
    1ff8:	05512223          	sw	s5,68(sp)
    1ffc:	05612023          	sw	s6,64(sp)
    2000:	00068b13          	mv	s6,a3
    2004:	fffff097          	auipc	ra,0xfffff
    2008:	054080e7          	jalr	84(ra) # 1058 <memcpy>
    200c:	00098513          	mv	a0,s3
    2010:	fffff097          	auipc	ra,0xfffff
    2014:	06c080e7          	jalr	108(ra) # 107c <strlen>
    2018:	00050a93          	mv	s5,a0
    201c:	00098513          	mv	a0,s3
    2020:	00000097          	auipc	ra,0x0
    2024:	f70080e7          	jalr	-144(ra) # 1f90 <fatfs_lfn_entries_required>
    2028:	00191793          	slli	a5,s2,0x1
    202c:	012787b3          	add	a5,a5,s2
    2030:	00279793          	slli	a5,a5,0x2
    2034:	00050a13          	mv	s4,a0
    2038:	02000613          	li	a2,32
    203c:	00000593          	li	a1,0
    2040:	00048513          	mv	a0,s1
    2044:	01278433          	add	s0,a5,s2
    2048:	fffff097          	auipc	ra,0xfffff
    204c:	ff4080e7          	jalr	-12(ra) # 103c <memset>
    2050:	00190793          	addi	a5,s2,1
    2054:	fffa0a13          	addi	s4,s4,-1 # 3fff <fatfs_add_free_space+0x93>
    2058:	0ff7f793          	zext.b	a5,a5
    205c:	012a1463          	bne	s4,s2,2064 <fatfs_filename_to_lfn+0xa4>
    2060:	0407e793          	ori	a5,a5,64
    2064:	00f48023          	sb	a5,0(s1)
    2068:	00f00793          	li	a5,15
    206c:	00f485a3          	sb	a5,11(s1)
    2070:	016486a3          	sb	s6,13(s1)
    2074:	00c10713          	addi	a4,sp,12
    2078:	00040793          	mv	a5,s0
    207c:	00d40593          	addi	a1,s0,13
    2080:	fff00613          	li	a2,-1
    2084:	00072683          	lw	a3,0(a4)
    2088:	00d486b3          	add	a3,s1,a3
    208c:	0557d263          	bge	a5,s5,20d0 <fatfs_filename_to_lfn+0x110>
    2090:	00f98533          	add	a0,s3,a5
    2094:	00054503          	lbu	a0,0(a0)
    2098:	00a68023          	sb	a0,0(a3)
    209c:	00178793          	addi	a5,a5,1
    20a0:	00470713          	addi	a4,a4,4
    20a4:	feb790e3          	bne	a5,a1,2084 <fatfs_filename_to_lfn+0xc4>
    20a8:	05c12083          	lw	ra,92(sp)
    20ac:	05812403          	lw	s0,88(sp)
    20b0:	05412483          	lw	s1,84(sp)
    20b4:	05012903          	lw	s2,80(sp)
    20b8:	04c12983          	lw	s3,76(sp)
    20bc:	04812a03          	lw	s4,72(sp)
    20c0:	04412a83          	lw	s5,68(sp)
    20c4:	04012b03          	lw	s6,64(sp)
    20c8:	06010113          	addi	sp,sp,96
    20cc:	00008067          	ret
    20d0:	00fa9663          	bne	s5,a5,20dc <fatfs_filename_to_lfn+0x11c>
    20d4:	00068023          	sb	zero,0(a3)
    20d8:	fc5ff06f          	j	209c <fatfs_filename_to_lfn+0xdc>
    20dc:	00c68023          	sb	a2,0(a3)
    20e0:	00c680a3          	sb	a2,1(a3)
    20e4:	fb9ff06f          	j	209c <fatfs_filename_to_lfn+0xdc>

000020e8 <fatfs_sfn_create_entry>:
    20e8:	00000793          	li	a5,0
    20ec:	00b00813          	li	a6,11
    20f0:	00f508b3          	add	a7,a0,a5
    20f4:	0008c303          	lbu	t1,0(a7)
    20f8:	00f688b3          	add	a7,a3,a5
    20fc:	00178793          	addi	a5,a5,1
    2100:	00688023          	sb	t1,0(a7)
    2104:	ff0796e3          	bne	a5,a6,20f0 <fatfs_sfn_create_entry+0x8>
    2108:	02000793          	li	a5,32
    210c:	000686a3          	sb	zero,13(a3)
    2110:	00068723          	sb	zero,14(a3)
    2114:	000687a3          	sb	zero,15(a3)
    2118:	000688a3          	sb	zero,17(a3)
    211c:	00f68823          	sb	a5,16(a3)
    2120:	000689a3          	sb	zero,19(a3)
    2124:	00f68923          	sb	a5,18(a3)
    2128:	00068b23          	sb	zero,22(a3)
    212c:	00068ba3          	sb	zero,23(a3)
    2130:	00068ca3          	sb	zero,25(a3)
    2134:	00f68c23          	sb	a5,24(a3)
    2138:	00070463          	beqz	a4,2140 <fatfs_sfn_create_entry+0x58>
    213c:	01000793          	li	a5,16
    2140:	00f685a3          	sb	a5,11(a3)
    2144:	01065793          	srli	a5,a2,0x10
    2148:	00f68a23          	sb	a5,20(a3)
    214c:	0087d793          	srli	a5,a5,0x8
    2150:	00f68aa3          	sb	a5,21(a3)
    2154:	01061793          	slli	a5,a2,0x10
    2158:	0107d793          	srli	a5,a5,0x10
    215c:	0087d793          	srli	a5,a5,0x8
    2160:	00f68da3          	sb	a5,27(a3)
    2164:	0085d793          	srli	a5,a1,0x8
    2168:	00b68e23          	sb	a1,28(a3)
    216c:	00f68ea3          	sb	a5,29(a3)
    2170:	0105d793          	srli	a5,a1,0x10
    2174:	0185d593          	srli	a1,a1,0x18
    2178:	00068623          	sb	zero,12(a3)
    217c:	00c68d23          	sb	a2,26(a3)
    2180:	00f68f23          	sb	a5,30(a3)
    2184:	00b68fa3          	sb	a1,31(a3)
    2188:	00008067          	ret

0000218c <fatfs_lfn_create_sfn>:
    218c:	0005c703          	lbu	a4,0(a1)
    2190:	02e00793          	li	a5,46
    2194:	16f70463          	beq	a4,a5,22fc <fatfs_lfn_create_sfn+0x170>
    2198:	fe010113          	addi	sp,sp,-32
    219c:	00912a23          	sw	s1,20(sp)
    21a0:	00050493          	mv	s1,a0
    21a4:	00058513          	mv	a0,a1
    21a8:	00112e23          	sw	ra,28(sp)
    21ac:	00812c23          	sw	s0,24(sp)
    21b0:	01212823          	sw	s2,16(sp)
    21b4:	00058413          	mv	s0,a1
    21b8:	fffff097          	auipc	ra,0xfffff
    21bc:	ec4080e7          	jalr	-316(ra) # 107c <strlen>
    21c0:	00b00613          	li	a2,11
    21c4:	02000593          	li	a1,32
    21c8:	00050913          	mv	s2,a0
    21cc:	00048513          	mv	a0,s1
    21d0:	fffff097          	auipc	ra,0xfffff
    21d4:	e6c080e7          	jalr	-404(ra) # 103c <memset>
    21d8:	00300613          	li	a2,3
    21dc:	02000593          	li	a1,32
    21e0:	00c10513          	addi	a0,sp,12
    21e4:	fffff097          	auipc	ra,0xfffff
    21e8:	e58080e7          	jalr	-424(ra) # 103c <memset>
    21ec:	fff00713          	li	a4,-1
    21f0:	00000793          	li	a5,0
    21f4:	02e00693          	li	a3,46
    21f8:	0d27c063          	blt	a5,s2,22b8 <fatfs_lfn_create_sfn+0x12c>
    21fc:	fff00793          	li	a5,-1
    2200:	0ef70663          	beq	a4,a5,22ec <fatfs_lfn_create_sfn+0x160>
    2204:	00170793          	addi	a5,a4,1
    2208:	00c10693          	addi	a3,sp,12
    220c:	00470613          	addi	a2,a4,4
    2210:	0cf61063          	bne	a2,a5,22d0 <fatfs_lfn_create_sfn+0x144>
    2214:	00000613          	li	a2,0
    2218:	00000693          	li	a3,0
    221c:	02000813          	li	a6,32
    2220:	02e00893          	li	a7,46
    2224:	01900313          	li	t1,25
    2228:	00800e13          	li	t3,8
    222c:	02e6da63          	bge	a3,a4,2260 <fatfs_lfn_create_sfn+0xd4>
    2230:	00d407b3          	add	a5,s0,a3
    2234:	0007c783          	lbu	a5,0(a5)
    2238:	03078263          	beq	a5,a6,225c <fatfs_lfn_create_sfn+0xd0>
    223c:	03178063          	beq	a5,a7,225c <fatfs_lfn_create_sfn+0xd0>
    2240:	f9f78593          	addi	a1,a5,-97
    2244:	0ff5f593          	zext.b	a1,a1
    2248:	00c48533          	add	a0,s1,a2
    224c:	00160613          	addi	a2,a2,1
    2250:	00b36463          	bltu	t1,a1,2258 <fatfs_lfn_create_sfn+0xcc>
    2254:	fe078793          	addi	a5,a5,-32
    2258:	00f50023          	sb	a5,0(a0)
    225c:	09c61c63          	bne	a2,t3,22f4 <fatfs_lfn_create_sfn+0x168>
    2260:	00c10793          	addi	a5,sp,12
    2264:	00800693          	li	a3,8
    2268:	01900513          	li	a0,25
    226c:	00b00593          	li	a1,11
    2270:	0007c703          	lbu	a4,0(a5)
    2274:	f9f70613          	addi	a2,a4,-97
    2278:	0ff67613          	zext.b	a2,a2
    227c:	00c56663          	bltu	a0,a2,2288 <fatfs_lfn_create_sfn+0xfc>
    2280:	fe070713          	addi	a4,a4,-32
    2284:	0ff77713          	zext.b	a4,a4
    2288:	00d48633          	add	a2,s1,a3
    228c:	00e60023          	sb	a4,0(a2)
    2290:	00168693          	addi	a3,a3,1
    2294:	00178793          	addi	a5,a5,1
    2298:	fcb69ce3          	bne	a3,a1,2270 <fatfs_lfn_create_sfn+0xe4>
    229c:	01c12083          	lw	ra,28(sp)
    22a0:	01812403          	lw	s0,24(sp)
    22a4:	01412483          	lw	s1,20(sp)
    22a8:	01012903          	lw	s2,16(sp)
    22ac:	00100513          	li	a0,1
    22b0:	02010113          	addi	sp,sp,32
    22b4:	00008067          	ret
    22b8:	00f40633          	add	a2,s0,a5
    22bc:	00064603          	lbu	a2,0(a2)
    22c0:	00d61463          	bne	a2,a3,22c8 <fatfs_lfn_create_sfn+0x13c>
    22c4:	00078713          	mv	a4,a5
    22c8:	00178793          	addi	a5,a5,1
    22cc:	f2dff06f          	j	21f8 <fatfs_lfn_create_sfn+0x6c>
    22d0:	0127d863          	bge	a5,s2,22e0 <fatfs_lfn_create_sfn+0x154>
    22d4:	00f405b3          	add	a1,s0,a5
    22d8:	0005c583          	lbu	a1,0(a1)
    22dc:	00b68023          	sb	a1,0(a3)
    22e0:	00178793          	addi	a5,a5,1
    22e4:	00168693          	addi	a3,a3,1
    22e8:	f29ff06f          	j	2210 <fatfs_lfn_create_sfn+0x84>
    22ec:	00090713          	mv	a4,s2
    22f0:	f25ff06f          	j	2214 <fatfs_lfn_create_sfn+0x88>
    22f4:	00168693          	addi	a3,a3,1
    22f8:	f35ff06f          	j	222c <fatfs_lfn_create_sfn+0xa0>
    22fc:	00000513          	li	a0,0
    2300:	00008067          	ret

00002304 <fatfs_lfn_generate_tail>:
    2304:	000187b7          	lui	a5,0x18
    2308:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    230c:	16c7e063          	bltu	a5,a2,246c <fatfs_lfn_generate_tail+0x168>
    2310:	fa010113          	addi	sp,sp,-96
    2314:	04812c23          	sw	s0,88(sp)
    2318:	04912a23          	sw	s1,84(sp)
    231c:	05412423          	sw	s4,72(sp)
    2320:	00050493          	mv	s1,a0
    2324:	00058a13          	mv	s4,a1
    2328:	00060413          	mv	s0,a2
    232c:	00000593          	li	a1,0
    2330:	00c00613          	li	a2,12
    2334:	00410513          	addi	a0,sp,4
    2338:	04112e23          	sw	ra,92(sp)
    233c:	05212823          	sw	s2,80(sp)
    2340:	05512223          	sw	s5,68(sp)
    2344:	03712e23          	sw	s7,60(sp)
    2348:	05312623          	sw	s3,76(sp)
    234c:	05612023          	sw	s6,64(sp)
    2350:	fffff097          	auipc	ra,0xfffff
    2354:	cec080e7          	jalr	-788(ra) # 103c <memset>
    2358:	000055b7          	lui	a1,0x5
    235c:	07e00793          	li	a5,126
    2360:	01100613          	li	a2,17
    2364:	00c58593          	addi	a1,a1,12 # 500c <font+0x1e0>
    2368:	01c10513          	addi	a0,sp,28
    236c:	01010913          	addi	s2,sp,16
    2370:	00f10223          	sb	a5,4(sp)
    2374:	00090a93          	mv	s5,s2
    2378:	fffff097          	auipc	ra,0xfffff
    237c:	ce0080e7          	jalr	-800(ra) # 1058 <memcpy>
    2380:	00900b93          	li	s7,9
    2384:	00a00593          	li	a1,10
    2388:	00040513          	mv	a0,s0
    238c:	fffff097          	auipc	ra,0xfffff
    2390:	c4c080e7          	jalr	-948(ra) # fd8 <__umodsi3>
    2394:	03050793          	addi	a5,a0,48
    2398:	00278533          	add	a0,a5,sp
    239c:	fec54783          	lbu	a5,-20(a0)
    23a0:	00090993          	mv	s3,s2
    23a4:	00040513          	mv	a0,s0
    23a8:	00a00593          	li	a1,10
    23ac:	00f90023          	sb	a5,0(s2)
    23b0:	00040b13          	mv	s6,s0
    23b4:	fffff097          	auipc	ra,0xfffff
    23b8:	bdc080e7          	jalr	-1060(ra) # f90 <__udivsi3>
    23bc:	00190913          	addi	s2,s2,1
    23c0:	00050413          	mv	s0,a0
    23c4:	fd6be0e3          	bltu	s7,s6,2384 <fatfs_lfn_generate_tail+0x80>
    23c8:	00090023          	sb	zero,0(s2)
    23cc:	00410713          	addi	a4,sp,4
    23d0:	00098793          	mv	a5,s3
    23d4:	0007c683          	lbu	a3,0(a5)
    23d8:	fff78793          	addi	a5,a5,-1
    23dc:	00170713          	addi	a4,a4,1
    23e0:	00d70023          	sb	a3,0(a4)
    23e4:	ff57f8e3          	bgeu	a5,s5,23d4 <fatfs_lfn_generate_tail+0xd0>
    23e8:	00100793          	li	a5,1
    23ec:	0159e663          	bltu	s3,s5,23f8 <fatfs_lfn_generate_tail+0xf4>
    23f0:	415787b3          	sub	a5,a5,s5
    23f4:	00f987b3          	add	a5,s3,a5
    23f8:	03078793          	addi	a5,a5,48
    23fc:	002787b3          	add	a5,a5,sp
    2400:	000a0593          	mv	a1,s4
    2404:	fc078aa3          	sb	zero,-43(a5)
    2408:	00b00613          	li	a2,11
    240c:	00048513          	mv	a0,s1
    2410:	fffff097          	auipc	ra,0xfffff
    2414:	c48080e7          	jalr	-952(ra) # 1058 <memcpy>
    2418:	00410513          	addi	a0,sp,4
    241c:	fffff097          	auipc	ra,0xfffff
    2420:	c60080e7          	jalr	-928(ra) # 107c <strlen>
    2424:	40a484b3          	sub	s1,s1,a0
    2428:	00050613          	mv	a2,a0
    242c:	00410593          	addi	a1,sp,4
    2430:	00848513          	addi	a0,s1,8
    2434:	fffff097          	auipc	ra,0xfffff
    2438:	c24080e7          	jalr	-988(ra) # 1058 <memcpy>
    243c:	05c12083          	lw	ra,92(sp)
    2440:	05812403          	lw	s0,88(sp)
    2444:	05412483          	lw	s1,84(sp)
    2448:	05012903          	lw	s2,80(sp)
    244c:	04c12983          	lw	s3,76(sp)
    2450:	04812a03          	lw	s4,72(sp)
    2454:	04412a83          	lw	s5,68(sp)
    2458:	04012b03          	lw	s6,64(sp)
    245c:	03c12b83          	lw	s7,60(sp)
    2460:	00100513          	li	a0,1
    2464:	06010113          	addi	sp,sp,96
    2468:	00008067          	ret
    246c:	00000513          	li	a0,0
    2470:	00008067          	ret

00002474 <fatfs_total_path_levels>:
    2474:	00050793          	mv	a5,a0
    2478:	06050463          	beqz	a0,24e0 <fatfs_total_path_levels+0x6c>
    247c:	00054703          	lbu	a4,0(a0)
    2480:	02f00693          	li	a3,47
    2484:	00d71863          	bne	a4,a3,2494 <fatfs_total_path_levels+0x20>
    2488:	00150793          	addi	a5,a0,1
    248c:	00000513          	li	a0,0
    2490:	0400006f          	j	24d0 <fatfs_total_path_levels+0x5c>
    2494:	00154683          	lbu	a3,1(a0)
    2498:	03a00713          	li	a4,58
    249c:	00e68a63          	beq	a3,a4,24b0 <fatfs_total_path_levels+0x3c>
    24a0:	00254683          	lbu	a3,2(a0)
    24a4:	05c00713          	li	a4,92
    24a8:	fff00513          	li	a0,-1
    24ac:	02e69c63          	bne	a3,a4,24e4 <fatfs_total_path_levels+0x70>
    24b0:	00378793          	addi	a5,a5,3
    24b4:	05c00713          	li	a4,92
    24b8:	fd5ff06f          	j	248c <fatfs_total_path_levels+0x18>
    24bc:	00178793          	addi	a5,a5,1
    24c0:	00e68663          	beq	a3,a4,24cc <fatfs_total_path_levels+0x58>
    24c4:	0007c683          	lbu	a3,0(a5)
    24c8:	fe069ae3          	bnez	a3,24bc <fatfs_total_path_levels+0x48>
    24cc:	00150513          	addi	a0,a0,1
    24d0:	0007c683          	lbu	a3,0(a5)
    24d4:	fe0698e3          	bnez	a3,24c4 <fatfs_total_path_levels+0x50>
    24d8:	fff50513          	addi	a0,a0,-1
    24dc:	00008067          	ret
    24e0:	fff00513          	li	a0,-1
    24e4:	00008067          	ret

000024e8 <fatfs_get_substring>:
    24e8:	0c050c63          	beqz	a0,25c0 <fatfs_get_substring+0xd8>
    24ec:	fe010113          	addi	sp,sp,-32
    24f0:	00912a23          	sw	s1,20(sp)
    24f4:	00112e23          	sw	ra,28(sp)
    24f8:	00812c23          	sw	s0,24(sp)
    24fc:	01212823          	sw	s2,16(sp)
    2500:	01312623          	sw	s3,12(sp)
    2504:	01412423          	sw	s4,8(sp)
    2508:	00050793          	mv	a5,a0
    250c:	00068493          	mv	s1,a3
    2510:	fff00513          	li	a0,-1
    2514:	06d05a63          	blez	a3,2588 <fatfs_get_substring+0xa0>
    2518:	0007c983          	lbu	s3,0(a5)
    251c:	02f00713          	li	a4,47
    2520:	00058a13          	mv	s4,a1
    2524:	00060913          	mv	s2,a2
    2528:	00178413          	addi	s0,a5,1
    252c:	02e98463          	beq	s3,a4,2554 <fatfs_get_substring+0x6c>
    2530:	0017c683          	lbu	a3,1(a5)
    2534:	03a00713          	li	a4,58
    2538:	00e68a63          	beq	a3,a4,254c <fatfs_get_substring+0x64>
    253c:	0027c683          	lbu	a3,2(a5)
    2540:	05c00713          	li	a4,92
    2544:	fff00513          	li	a0,-1
    2548:	04e69063          	bne	a3,a4,2588 <fatfs_get_substring+0xa0>
    254c:	00378413          	addi	s0,a5,3
    2550:	05c00993          	li	s3,92
    2554:	00040513          	mv	a0,s0
    2558:	fffff097          	auipc	ra,0xfffff
    255c:	b24080e7          	jalr	-1244(ra) # 107c <strlen>
    2560:	00000713          	li	a4,0
    2564:	00000693          	li	a3,0
    2568:	00000793          	li	a5,0
    256c:	fff48493          	addi	s1,s1,-1
    2570:	00e905b3          	add	a1,s2,a4
    2574:	02a7ca63          	blt	a5,a0,25a8 <fatfs_get_substring+0xc0>
    2578:	00058023          	sb	zero,0(a1)
    257c:	00094503          	lbu	a0,0(s2)
    2580:	00153513          	seqz	a0,a0
    2584:	40a00533          	neg	a0,a0
    2588:	01c12083          	lw	ra,28(sp)
    258c:	01812403          	lw	s0,24(sp)
    2590:	01412483          	lw	s1,20(sp)
    2594:	01012903          	lw	s2,16(sp)
    2598:	00c12983          	lw	s3,12(sp)
    259c:	00812a03          	lw	s4,8(sp)
    25a0:	02010113          	addi	sp,sp,32
    25a4:	00008067          	ret
    25a8:	00f40633          	add	a2,s0,a5
    25ac:	00064603          	lbu	a2,0(a2)
    25b0:	01361c63          	bne	a2,s3,25c8 <fatfs_get_substring+0xe0>
    25b4:	00168693          	addi	a3,a3,1
    25b8:	00178793          	addi	a5,a5,1
    25bc:	fb5ff06f          	j	2570 <fatfs_get_substring+0x88>
    25c0:	fff00513          	li	a0,-1
    25c4:	00008067          	ret
    25c8:	ff4698e3          	bne	a3,s4,25b8 <fatfs_get_substring+0xd0>
    25cc:	fe9756e3          	bge	a4,s1,25b8 <fatfs_get_substring+0xd0>
    25d0:	00170713          	addi	a4,a4,1
    25d4:	00c58023          	sb	a2,0(a1)
    25d8:	fe1ff06f          	j	25b8 <fatfs_get_substring+0xd0>

000025dc <fatfs_split_path>:
    25dc:	fd010113          	addi	sp,sp,-48
    25e0:	02912223          	sw	s1,36(sp)
    25e4:	03212023          	sw	s2,32(sp)
    25e8:	01312e23          	sw	s3,28(sp)
    25ec:	01412c23          	sw	s4,24(sp)
    25f0:	02112623          	sw	ra,44(sp)
    25f4:	00068a13          	mv	s4,a3
    25f8:	02812423          	sw	s0,40(sp)
    25fc:	00050913          	mv	s2,a0
    2600:	00058493          	mv	s1,a1
    2604:	00060993          	mv	s3,a2
    2608:	00e12623          	sw	a4,12(sp)
    260c:	00000097          	auipc	ra,0x0
    2610:	e68080e7          	jalr	-408(ra) # 2474 <fatfs_total_path_levels>
    2614:	fff00793          	li	a5,-1
    2618:	00c12683          	lw	a3,12(sp)
    261c:	02f51663          	bne	a0,a5,2648 <fatfs_split_path+0x6c>
    2620:	fff00413          	li	s0,-1
    2624:	02c12083          	lw	ra,44(sp)
    2628:	00040513          	mv	a0,s0
    262c:	02812403          	lw	s0,40(sp)
    2630:	02412483          	lw	s1,36(sp)
    2634:	02012903          	lw	s2,32(sp)
    2638:	01c12983          	lw	s3,28(sp)
    263c:	01812a03          	lw	s4,24(sp)
    2640:	03010113          	addi	sp,sp,48
    2644:	00008067          	ret
    2648:	00050413          	mv	s0,a0
    264c:	00050593          	mv	a1,a0
    2650:	000a0613          	mv	a2,s4
    2654:	00090513          	mv	a0,s2
    2658:	00000097          	auipc	ra,0x0
    265c:	e90080e7          	jalr	-368(ra) # 24e8 <fatfs_get_substring>
    2660:	fc0510e3          	bnez	a0,2620 <fatfs_split_path+0x44>
    2664:	00041663          	bnez	s0,2670 <fatfs_split_path+0x94>
    2668:	00048023          	sb	zero,0(s1)
    266c:	fb9ff06f          	j	2624 <fatfs_split_path+0x48>
    2670:	00090513          	mv	a0,s2
    2674:	fffff097          	auipc	ra,0xfffff
    2678:	a08080e7          	jalr	-1528(ra) # 107c <strlen>
    267c:	00050413          	mv	s0,a0
    2680:	000a0513          	mv	a0,s4
    2684:	fffff097          	auipc	ra,0xfffff
    2688:	9f8080e7          	jalr	-1544(ra) # 107c <strlen>
    268c:	40a40433          	sub	s0,s0,a0
    2690:	0089d463          	bge	s3,s0,2698 <fatfs_split_path+0xbc>
    2694:	00098413          	mv	s0,s3
    2698:	00040613          	mv	a2,s0
    269c:	00048513          	mv	a0,s1
    26a0:	00090593          	mv	a1,s2
    26a4:	008484b3          	add	s1,s1,s0
    26a8:	fffff097          	auipc	ra,0xfffff
    26ac:	9b0080e7          	jalr	-1616(ra) # 1058 <memcpy>
    26b0:	00000413          	li	s0,0
    26b4:	fe048fa3          	sb	zero,-1(s1)
    26b8:	f6dff06f          	j	2624 <fatfs_split_path+0x48>

000026bc <fatfs_compare_names>:
    26bc:	fd010113          	addi	sp,sp,-48
    26c0:	02112623          	sw	ra,44(sp)
    26c4:	02812423          	sw	s0,40(sp)
    26c8:	02912223          	sw	s1,36(sp)
    26cc:	03212023          	sw	s2,32(sp)
    26d0:	01312e23          	sw	s3,28(sp)
    26d4:	00058913          	mv	s2,a1
    26d8:	01412c23          	sw	s4,24(sp)
    26dc:	01512a23          	sw	s5,20(sp)
    26e0:	01612823          	sw	s6,16(sp)
    26e4:	00050a13          	mv	s4,a0
    26e8:	fffff097          	auipc	ra,0xfffff
    26ec:	2a4080e7          	jalr	676(ra) # 198c <FileString_GetExtension>
    26f0:	00050493          	mv	s1,a0
    26f4:	00090513          	mv	a0,s2
    26f8:	fffff097          	auipc	ra,0xfffff
    26fc:	294080e7          	jalr	660(ra) # 198c <FileString_GetExtension>
    2700:	fff00793          	li	a5,-1
    2704:	00050413          	mv	s0,a0
    2708:	00000993          	li	s3,0
    270c:	0af49263          	bne	s1,a5,27b0 <fatfs_compare_names+0xf4>
    2710:	0e951863          	bne	a0,s1,2800 <fatfs_compare_names+0x144>
    2714:	000a0513          	mv	a0,s4
    2718:	fffff097          	auipc	ra,0xfffff
    271c:	964080e7          	jalr	-1692(ra) # 107c <strlen>
    2720:	00050493          	mv	s1,a0
    2724:	00090513          	mv	a0,s2
    2728:	fffff097          	auipc	ra,0xfffff
    272c:	954080e7          	jalr	-1708(ra) # 107c <strlen>
    2730:	00050413          	mv	s0,a0
    2734:	fff48793          	addi	a5,s1,-1
    2738:	00fa07b3          	add	a5,s4,a5
    273c:	40978733          	sub	a4,a5,s1
    2740:	02000613          	li	a2,32
    2744:	00078693          	mv	a3,a5
    2748:	00e78863          	beq	a5,a4,2758 <fatfs_compare_names+0x9c>
    274c:	0007c583          	lbu	a1,0(a5)
    2750:	fff78793          	addi	a5,a5,-1
    2754:	04c58663          	beq	a1,a2,27a0 <fatfs_compare_names+0xe4>
    2758:	fff40793          	addi	a5,s0,-1
    275c:	00f907b3          	add	a5,s2,a5
    2760:	40878733          	sub	a4,a5,s0
    2764:	02000613          	li	a2,32
    2768:	00078693          	mv	a3,a5
    276c:	00e78863          	beq	a5,a4,277c <fatfs_compare_names+0xc0>
    2770:	0007c583          	lbu	a1,0(a5)
    2774:	fff78793          	addi	a5,a5,-1
    2778:	02c58863          	beq	a1,a2,27a8 <fatfs_compare_names+0xec>
    277c:	00000993          	li	s3,0
    2780:	08941063          	bne	s0,s1,2800 <fatfs_compare_names+0x144>
    2784:	00040613          	mv	a2,s0
    2788:	00090593          	mv	a1,s2
    278c:	000a0513          	mv	a0,s4
    2790:	fffff097          	auipc	ra,0xfffff
    2794:	18c080e7          	jalr	396(ra) # 191c <FileString_StrCmpNoCase>
    2798:	00153993          	seqz	s3,a0
    279c:	0640006f          	j	2800 <fatfs_compare_names+0x144>
    27a0:	414684b3          	sub	s1,a3,s4
    27a4:	fa1ff06f          	j	2744 <fatfs_compare_names+0x88>
    27a8:	41268433          	sub	s0,a3,s2
    27ac:	fbdff06f          	j	2768 <fatfs_compare_names+0xac>
    27b0:	04f50863          	beq	a0,a5,2800 <fatfs_compare_names+0x144>
    27b4:	00148a93          	addi	s5,s1,1
    27b8:	015a0ab3          	add	s5,s4,s5
    27bc:	00140b13          	addi	s6,s0,1
    27c0:	000a8513          	mv	a0,s5
    27c4:	fffff097          	auipc	ra,0xfffff
    27c8:	8b8080e7          	jalr	-1864(ra) # 107c <strlen>
    27cc:	01690b33          	add	s6,s2,s6
    27d0:	00a12623          	sw	a0,12(sp)
    27d4:	000b0513          	mv	a0,s6
    27d8:	fffff097          	auipc	ra,0xfffff
    27dc:	8a4080e7          	jalr	-1884(ra) # 107c <strlen>
    27e0:	00c12603          	lw	a2,12(sp)
    27e4:	00000993          	li	s3,0
    27e8:	00a61c63          	bne	a2,a0,2800 <fatfs_compare_names+0x144>
    27ec:	000b0593          	mv	a1,s6
    27f0:	000a8513          	mv	a0,s5
    27f4:	fffff097          	auipc	ra,0xfffff
    27f8:	128080e7          	jalr	296(ra) # 191c <FileString_StrCmpNoCase>
    27fc:	f2050ce3          	beqz	a0,2734 <fatfs_compare_names+0x78>
    2800:	02c12083          	lw	ra,44(sp)
    2804:	02812403          	lw	s0,40(sp)
    2808:	02412483          	lw	s1,36(sp)
    280c:	02012903          	lw	s2,32(sp)
    2810:	01812a03          	lw	s4,24(sp)
    2814:	01412a83          	lw	s5,20(sp)
    2818:	01012b03          	lw	s6,16(sp)
    281c:	00098513          	mv	a0,s3
    2820:	01c12983          	lw	s3,28(sp)
    2824:	03010113          	addi	sp,sp,48
    2828:	00008067          	ret

0000282c <_check_file_open>:
    282c:	fe010113          	addi	sp,sp,-32
    2830:	000057b7          	lui	a5,0x5
    2834:	00812c23          	sw	s0,24(sp)
    2838:	0b07a403          	lw	s0,176(a5) # 50b0 <_open_file_list>
    283c:	00912a23          	sw	s1,20(sp)
    2840:	01212823          	sw	s2,16(sp)
    2844:	01312623          	sw	s3,12(sp)
    2848:	00112e23          	sw	ra,28(sp)
    284c:	00050493          	mv	s1,a0
    2850:	01450913          	addi	s2,a0,20
    2854:	11850993          	addi	s3,a0,280
    2858:	02041263          	bnez	s0,287c <_check_file_open+0x50>
    285c:	00000513          	li	a0,0
    2860:	01c12083          	lw	ra,28(sp)
    2864:	01812403          	lw	s0,24(sp)
    2868:	01412483          	lw	s1,20(sp)
    286c:	01012903          	lw	s2,16(sp)
    2870:	00c12983          	lw	s3,12(sp)
    2874:	02010113          	addi	sp,sp,32
    2878:	00008067          	ret
    287c:	bc440793          	addi	a5,s0,-1084
    2880:	02f48663          	beq	s1,a5,28ac <_check_file_open+0x80>
    2884:	00090593          	mv	a1,s2
    2888:	bd840513          	addi	a0,s0,-1064
    288c:	00000097          	auipc	ra,0x0
    2890:	e30080e7          	jalr	-464(ra) # 26bc <fatfs_compare_names>
    2894:	00050c63          	beqz	a0,28ac <_check_file_open+0x80>
    2898:	00098593          	mv	a1,s3
    289c:	cdc40513          	addi	a0,s0,-804
    28a0:	00000097          	auipc	ra,0x0
    28a4:	e1c080e7          	jalr	-484(ra) # 26bc <fatfs_compare_names>
    28a8:	00051663          	bnez	a0,28b4 <_check_file_open+0x88>
    28ac:	00442403          	lw	s0,4(s0)
    28b0:	fa9ff06f          	j	2858 <_check_file_open+0x2c>
    28b4:	00100513          	li	a0,1
    28b8:	fa9ff06f          	j	2860 <_check_file_open+0x34>

000028bc <fatfs_get_sfn_display_name>:
    28bc:	00000713          	li	a4,0
    28c0:	00c00613          	li	a2,12
    28c4:	02000813          	li	a6,32
    28c8:	01900893          	li	a7,25
    28cc:	0005c783          	lbu	a5,0(a1)
    28d0:	00078463          	beqz	a5,28d8 <fatfs_get_sfn_display_name+0x1c>
    28d4:	00c71863          	bne	a4,a2,28e4 <fatfs_get_sfn_display_name+0x28>
    28d8:	00050023          	sb	zero,0(a0)
    28dc:	00100513          	li	a0,1
    28e0:	00008067          	ret
    28e4:	00158593          	addi	a1,a1,1
    28e8:	ff0782e3          	beq	a5,a6,28cc <fatfs_get_sfn_display_name+0x10>
    28ec:	fbf78693          	addi	a3,a5,-65
    28f0:	0ff6f693          	zext.b	a3,a3
    28f4:	00d8e663          	bltu	a7,a3,2900 <fatfs_get_sfn_display_name+0x44>
    28f8:	02078793          	addi	a5,a5,32
    28fc:	0ff7f793          	zext.b	a5,a5
    2900:	00f50023          	sb	a5,0(a0)
    2904:	00170713          	addi	a4,a4,1
    2908:	00150513          	addi	a0,a0,1
    290c:	fc1ff06f          	j	28cc <fatfs_get_sfn_display_name+0x10>

00002910 <fatfs_fat_init>:
    2910:	ff010113          	addi	sp,sp,-16
    2914:	00812423          	sw	s0,8(sp)
    2918:	00912223          	sw	s1,4(sp)
    291c:	00112623          	sw	ra,12(sp)
    2920:	fff00793          	li	a5,-1
    2924:	25850493          	addi	s1,a0,600
    2928:	00050413          	mv	s0,a0
    292c:	44f52c23          	sw	a5,1112(a0)
    2930:	24052a23          	sw	zero,596(a0)
    2934:	44052e23          	sw	zero,1116(a0)
    2938:	20000613          	li	a2,512
    293c:	00048513          	mv	a0,s1
    2940:	00000593          	li	a1,0
    2944:	ffffe097          	auipc	ra,0xffffe
    2948:	6f8080e7          	jalr	1784(ra) # 103c <memset>
    294c:	25442783          	lw	a5,596(s0)
    2950:	00c12083          	lw	ra,12(sp)
    2954:	24942a23          	sw	s1,596(s0)
    2958:	46042023          	sw	zero,1120(s0)
    295c:	46f42223          	sw	a5,1124(s0)
    2960:	00812403          	lw	s0,8(sp)
    2964:	00412483          	lw	s1,4(sp)
    2968:	01010113          	addi	sp,sp,16
    296c:	00008067          	ret

00002970 <fatfs_init>:
    2970:	fc010113          	addi	sp,sp,-64
    2974:	02812c23          	sw	s0,56(sp)
    2978:	02112e23          	sw	ra,60(sp)
    297c:	02912a23          	sw	s1,52(sp)
    2980:	03212823          	sw	s2,48(sp)
    2984:	03312623          	sw	s3,44(sp)
    2988:	03412423          	sw	s4,40(sp)
    298c:	03512223          	sw	s5,36(sp)
    2990:	03612023          	sw	s6,32(sp)
    2994:	01712e23          	sw	s7,28(sp)
    2998:	fff00793          	li	a5,-1
    299c:	24f52223          	sw	a5,580(a0)
    29a0:	24052423          	sw	zero,584(a0)
    29a4:	02052223          	sw	zero,36(a0)
    29a8:	00050413          	mv	s0,a0
    29ac:	00000097          	auipc	ra,0x0
    29b0:	f64080e7          	jalr	-156(ra) # 2910 <fatfs_fat_init>
    29b4:	03442783          	lw	a5,52(s0)
    29b8:	02079a63          	bnez	a5,29ec <fatfs_init+0x7c>
    29bc:	fff00513          	li	a0,-1
    29c0:	03c12083          	lw	ra,60(sp)
    29c4:	03812403          	lw	s0,56(sp)
    29c8:	03412483          	lw	s1,52(sp)
    29cc:	03012903          	lw	s2,48(sp)
    29d0:	02c12983          	lw	s3,44(sp)
    29d4:	02812a03          	lw	s4,40(sp)
    29d8:	02412a83          	lw	s5,36(sp)
    29dc:	02012b03          	lw	s6,32(sp)
    29e0:	01c12b83          	lw	s7,28(sp)
    29e4:	04010113          	addi	sp,sp,64
    29e8:	00008067          	ret
    29ec:	04440593          	addi	a1,s0,68
    29f0:	00100613          	li	a2,1
    29f4:	00000513          	li	a0,0
    29f8:	00b12623          	sw	a1,12(sp)
    29fc:	000780e7          	jalr	a5
    2a00:	fa050ee3          	beqz	a0,29bc <fatfs_init+0x4c>
    2a04:	24042703          	lw	a4,576(s0)
    2a08:	ffff07b7          	lui	a5,0xffff0
    2a0c:	00c12583          	lw	a1,12(sp)
    2a10:	00e7f7b3          	and	a5,a5,a4
    2a14:	aa550737          	lui	a4,0xaa550
    2a18:	00e78663          	beq	a5,a4,2a24 <fatfs_init+0xb4>
    2a1c:	ffd00513          	li	a0,-3
    2a20:	fa1ff06f          	j	29c0 <fatfs_init+0x50>
    2a24:	24344783          	lbu	a5,579(s0)
    2a28:	24244703          	lbu	a4,578(s0)
    2a2c:	ffc00513          	li	a0,-4
    2a30:	00879793          	slli	a5,a5,0x8
    2a34:	00e787b3          	add	a5,a5,a4
    2a38:	0000b737          	lui	a4,0xb
    2a3c:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0xf59>
    2a40:	f8e790e3          	bne	a5,a4,29c0 <fatfs_init+0x50>
    2a44:	20644783          	lbu	a5,518(s0)
    2a48:	00600713          	li	a4,6
    2a4c:	04f76063          	bltu	a4,a5,2a8c <fatfs_init+0x11c>
    2a50:	00400713          	li	a4,4
    2a54:	00f76663          	bltu	a4,a5,2a60 <fatfs_init+0xf0>
    2a58:	00000513          	li	a0,0
    2a5c:	04078263          	beqz	a5,2aa0 <fatfs_init+0x130>
    2a60:	20d44503          	lbu	a0,525(s0)
    2a64:	20c44783          	lbu	a5,524(s0)
    2a68:	01851513          	slli	a0,a0,0x18
    2a6c:	01079793          	slli	a5,a5,0x10
    2a70:	00f50533          	add	a0,a0,a5
    2a74:	20a44783          	lbu	a5,522(s0)
    2a78:	00f50533          	add	a0,a0,a5
    2a7c:	20b44783          	lbu	a5,523(s0)
    2a80:	00879793          	slli	a5,a5,0x8
    2a84:	00f50533          	add	a0,a0,a5
    2a88:	0180006f          	j	2aa0 <fatfs_init+0x130>
    2a8c:	00c00713          	li	a4,12
    2a90:	1ef76a63          	bltu	a4,a5,2c84 <fatfs_init+0x314>
    2a94:	00a00713          	li	a4,10
    2a98:	00000513          	li	a0,0
    2a9c:	fcf762e3          	bltu	a4,a5,2a60 <fatfs_init+0xf0>
    2aa0:	03442783          	lw	a5,52(s0)
    2aa4:	00a42e23          	sw	a0,28(s0)
    2aa8:	00100613          	li	a2,1
    2aac:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2ab0:	f00506e3          	beqz	a0,29bc <fatfs_init+0x4c>
    2ab4:	05044783          	lbu	a5,80(s0)
    2ab8:	04f44703          	lbu	a4,79(s0)
    2abc:	ffe00513          	li	a0,-2
    2ac0:	00879793          	slli	a5,a5,0x8
    2ac4:	00e787b3          	add	a5,a5,a4
    2ac8:	20000713          	li	a4,512
    2acc:	eee79ae3          	bne	a5,a4,29c0 <fatfs_init+0x50>
    2ad0:	05644483          	lbu	s1,86(s0)
    2ad4:	05544b83          	lbu	s7,85(s0)
    2ad8:	05344903          	lbu	s2,83(s0)
    2adc:	05244a03          	lbu	s4,82(s0)
    2ae0:	05b44583          	lbu	a1,91(s0)
    2ae4:	00849493          	slli	s1,s1,0x8
    2ae8:	05144983          	lbu	s3,81(s0)
    2aec:	05a44783          	lbu	a5,90(s0)
    2af0:	01748ab3          	add	s5,s1,s7
    2af4:	00891913          	slli	s2,s2,0x8
    2af8:	010a9a93          	slli	s5,s5,0x10
    2afc:	01490b33          	add	s6,s2,s4
    2b00:	010ada93          	srli	s5,s5,0x10
    2b04:	00859593          	slli	a1,a1,0x8
    2b08:	010b1b13          	slli	s6,s6,0x10
    2b0c:	01340023          	sb	s3,0(s0)
    2b10:	03541423          	sh	s5,40(s0)
    2b14:	00f585b3          	add	a1,a1,a5
    2b18:	05444503          	lbu	a0,84(s0)
    2b1c:	010b5b13          	srli	s6,s6,0x10
    2b20:	02059663          	bnez	a1,2b4c <fatfs_init+0x1dc>
    2b24:	06b44583          	lbu	a1,107(s0)
    2b28:	06a44783          	lbu	a5,106(s0)
    2b2c:	01859593          	slli	a1,a1,0x18
    2b30:	01079793          	slli	a5,a5,0x10
    2b34:	00f585b3          	add	a1,a1,a5
    2b38:	06844783          	lbu	a5,104(s0)
    2b3c:	00f585b3          	add	a1,a1,a5
    2b40:	06944783          	lbu	a5,105(s0)
    2b44:	00879793          	slli	a5,a5,0x8
    2b48:	00f585b3          	add	a1,a1,a5
    2b4c:	07344783          	lbu	a5,115(s0)
    2b50:	07244703          	lbu	a4,114(s0)
    2b54:	02b42023          	sw	a1,32(s0)
    2b58:	01879793          	slli	a5,a5,0x18
    2b5c:	01071713          	slli	a4,a4,0x10
    2b60:	00e787b3          	add	a5,a5,a4
    2b64:	07044703          	lbu	a4,112(s0)
    2b68:	005a9a93          	slli	s5,s5,0x5
    2b6c:	1ffa8a93          	addi	s5,s5,511
    2b70:	00e787b3          	add	a5,a5,a4
    2b74:	07144703          	lbu	a4,113(s0)
    2b78:	409ada93          	srai	s5,s5,0x9
    2b7c:	00871713          	slli	a4,a4,0x8
    2b80:	00e787b3          	add	a5,a5,a4
    2b84:	00f42423          	sw	a5,8(s0)
    2b88:	07544783          	lbu	a5,117(s0)
    2b8c:	07444703          	lbu	a4,116(s0)
    2b90:	00879793          	slli	a5,a5,0x8
    2b94:	00e787b3          	add	a5,a5,a4
    2b98:	00f41c23          	sh	a5,24(s0)
    2b9c:	fffff097          	auipc	ra,0xfffff
    2ba0:	ce8080e7          	jalr	-792(ra) # 1884 <__mulsi3>
    2ba4:	00ab07b3          	add	a5,s6,a0
    2ba8:	00f42623          	sw	a5,12(s0)
    2bac:	01c42783          	lw	a5,28(s0)
    2bb0:	24244703          	lbu	a4,578(s0)
    2bb4:	01542823          	sw	s5,16(s0)
    2bb8:	00fb0b33          	add	s6,s6,a5
    2bbc:	24344783          	lbu	a5,579(s0)
    2bc0:	01642a23          	sw	s6,20(s0)
    2bc4:	01650b33          	add	s6,a0,s6
    2bc8:	00879793          	slli	a5,a5,0x8
    2bcc:	00e787b3          	add	a5,a5,a4
    2bd0:	0000b737          	lui	a4,0xb
    2bd4:	01642223          	sw	s6,4(s0)
    2bd8:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0xf59>
    2bdc:	e4e790e3          	bne	a5,a4,2a1c <fatfs_init+0xac>
    2be0:	05844783          	lbu	a5,88(s0)
    2be4:	05744703          	lbu	a4,87(s0)
    2be8:	017484b3          	add	s1,s1,s7
    2bec:	00549493          	slli	s1,s1,0x5
    2bf0:	00879793          	slli	a5,a5,0x8
    2bf4:	1ff48493          	addi	s1,s1,511
    2bf8:	00e787b3          	add	a5,a5,a4
    2bfc:	4094d493          	srai	s1,s1,0x9
    2c00:	02079663          	bnez	a5,2c2c <fatfs_init+0x2bc>
    2c04:	06744783          	lbu	a5,103(s0)
    2c08:	06644703          	lbu	a4,102(s0)
    2c0c:	01879793          	slli	a5,a5,0x18
    2c10:	01071713          	slli	a4,a4,0x10
    2c14:	00e787b3          	add	a5,a5,a4
    2c18:	06444703          	lbu	a4,100(s0)
    2c1c:	00e787b3          	add	a5,a5,a4
    2c20:	06544703          	lbu	a4,101(s0)
    2c24:	00871713          	slli	a4,a4,0x8
    2c28:	00e787b3          	add	a5,a5,a4
    2c2c:	01490933          	add	s2,s2,s4
    2c30:	00990933          	add	s2,s2,s1
    2c34:	00a90533          	add	a0,s2,a0
    2c38:	40a787b3          	sub	a5,a5,a0
    2c3c:	ffb00513          	li	a0,-5
    2c40:	d80980e3          	beqz	s3,29c0 <fatfs_init+0x50>
    2c44:	00078513          	mv	a0,a5
    2c48:	00098593          	mv	a1,s3
    2c4c:	ffffe097          	auipc	ra,0xffffe
    2c50:	344080e7          	jalr	836(ra) # f90 <__udivsi3>
    2c54:	00001737          	lui	a4,0x1
    2c58:	00050793          	mv	a5,a0
    2c5c:	ff470713          	addi	a4,a4,-12 # ff4 <__umodsi3+0x1c>
    2c60:	ffb00513          	li	a0,-5
    2c64:	d4f77ee3          	bgeu	a4,a5,29c0 <fatfs_init+0x50>
    2c68:	00010737          	lui	a4,0x10
    2c6c:	ff470713          	addi	a4,a4,-12 # fff4 <_fs+0x64f8>
    2c70:	02f76663          	bltu	a4,a5,2c9c <fatfs_init+0x32c>
    2c74:	00042423          	sw	zero,8(s0)
    2c78:	02042823          	sw	zero,48(s0)
    2c7c:	00000513          	li	a0,0
    2c80:	d41ff06f          	j	29c0 <fatfs_init+0x50>
    2c84:	ff278793          	addi	a5,a5,-14
    2c88:	0ff7f793          	zext.b	a5,a5
    2c8c:	00100713          	li	a4,1
    2c90:	00000513          	li	a0,0
    2c94:	dcf776e3          	bgeu	a4,a5,2a60 <fatfs_init+0xf0>
    2c98:	e09ff06f          	j	2aa0 <fatfs_init+0x130>
    2c9c:	00100793          	li	a5,1
    2ca0:	02f42823          	sw	a5,48(s0)
    2ca4:	fd9ff06f          	j	2c7c <fatfs_init+0x30c>

00002ca8 <fl_attach_media>:
    2ca8:	000057b7          	lui	a5,0x5
    2cac:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    2cb0:	ff010113          	addi	sp,sp,-16
    2cb4:	00812423          	sw	s0,8(sp)
    2cb8:	00912223          	sw	s1,4(sp)
    2cbc:	00112623          	sw	ra,12(sp)
    2cc0:	00050493          	mv	s1,a0
    2cc4:	00058413          	mv	s0,a1
    2cc8:	00079663          	bnez	a5,2cd4 <fl_attach_media+0x2c>
    2ccc:	fffff097          	auipc	ra,0xfffff
    2cd0:	054080e7          	jalr	84(ra) # 1d20 <fl_init>
    2cd4:	0000a537          	lui	a0,0xa
    2cd8:	afc50793          	addi	a5,a0,-1284 # 9afc <_fs>
    2cdc:	afc50513          	addi	a0,a0,-1284
    2ce0:	0287ac23          	sw	s0,56(a5)
    2ce4:	0297aa23          	sw	s1,52(a5)
    2ce8:	00000097          	auipc	ra,0x0
    2cec:	c88080e7          	jalr	-888(ra) # 2970 <fatfs_init>
    2cf0:	00050413          	mv	s0,a0
    2cf4:	02050863          	beqz	a0,2d24 <fl_attach_media+0x7c>
    2cf8:	00050593          	mv	a1,a0
    2cfc:	00005537          	lui	a0,0x5
    2d00:	02050513          	addi	a0,a0,32 # 5020 <font+0x1f4>
    2d04:	fffff097          	auipc	ra,0xfffff
    2d08:	a44080e7          	jalr	-1468(ra) # 1748 <printf>
    2d0c:	00c12083          	lw	ra,12(sp)
    2d10:	00040513          	mv	a0,s0
    2d14:	00812403          	lw	s0,8(sp)
    2d18:	00412483          	lw	s1,4(sp)
    2d1c:	01010113          	addi	sp,sp,16
    2d20:	00008067          	ret
    2d24:	000057b7          	lui	a5,0x5
    2d28:	00100713          	li	a4,1
    2d2c:	0ae7a223          	sw	a4,164(a5) # 50a4 <_filelib_valid>
    2d30:	fddff06f          	j	2d0c <fl_attach_media+0x64>

00002d34 <fatfs_fat_purge>:
    2d34:	ff010113          	addi	sp,sp,-16
    2d38:	00812423          	sw	s0,8(sp)
    2d3c:	25452403          	lw	s0,596(a0)
    2d40:	00912223          	sw	s1,4(sp)
    2d44:	00112623          	sw	ra,12(sp)
    2d48:	00050493          	mv	s1,a0
    2d4c:	00041663          	bnez	s0,2d58 <fatfs_fat_purge+0x24>
    2d50:	00100513          	li	a0,1
    2d54:	0280006f          	j	2d7c <fatfs_fat_purge+0x48>
    2d58:	20442783          	lw	a5,516(s0)
    2d5c:	00079663          	bnez	a5,2d68 <fatfs_fat_purge+0x34>
    2d60:	20c42403          	lw	s0,524(s0)
    2d64:	fe9ff06f          	j	2d4c <fatfs_fat_purge+0x18>
    2d68:	00040593          	mv	a1,s0
    2d6c:	00048513          	mv	a0,s1
    2d70:	fffff097          	auipc	ra,0xfffff
    2d74:	c48080e7          	jalr	-952(ra) # 19b8 <fatfs_fat_writeback>
    2d78:	fe0514e3          	bnez	a0,2d60 <fatfs_fat_purge+0x2c>
    2d7c:	00c12083          	lw	ra,12(sp)
    2d80:	00812403          	lw	s0,8(sp)
    2d84:	00412483          	lw	s1,4(sp)
    2d88:	01010113          	addi	sp,sp,16
    2d8c:	00008067          	ret

00002d90 <fatfs_find_next_cluster>:
    2d90:	ff010113          	addi	sp,sp,-16
    2d94:	00812423          	sw	s0,8(sp)
    2d98:	01212023          	sw	s2,0(sp)
    2d9c:	00112623          	sw	ra,12(sp)
    2da0:	00912223          	sw	s1,4(sp)
    2da4:	00050913          	mv	s2,a0
    2da8:	00200413          	li	s0,2
    2dac:	00058463          	beqz	a1,2db4 <fatfs_find_next_cluster+0x24>
    2db0:	00058413          	mv	s0,a1
    2db4:	03092783          	lw	a5,48(s2)
    2db8:	00745493          	srli	s1,s0,0x7
    2dbc:	00079463          	bnez	a5,2dc4 <fatfs_find_next_cluster+0x34>
    2dc0:	00845493          	srli	s1,s0,0x8
    2dc4:	01492583          	lw	a1,20(s2)
    2dc8:	00090513          	mv	a0,s2
    2dcc:	00b485b3          	add	a1,s1,a1
    2dd0:	fffff097          	auipc	ra,0xfffff
    2dd4:	c6c080e7          	jalr	-916(ra) # 1a3c <fatfs_fat_read_sector>
    2dd8:	00050793          	mv	a5,a0
    2ddc:	fff00513          	li	a0,-1
    2de0:	04078a63          	beqz	a5,2e34 <fatfs_find_next_cluster+0xa4>
    2de4:	03092703          	lw	a4,48(s2)
    2de8:	2087a783          	lw	a5,520(a5)
    2dec:	06071063          	bnez	a4,2e4c <fatfs_find_next_cluster+0xbc>
    2df0:	00849493          	slli	s1,s1,0x8
    2df4:	40940433          	sub	s0,s0,s1
    2df8:	00010737          	lui	a4,0x10
    2dfc:	00141413          	slli	s0,s0,0x1
    2e00:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6503>
    2e04:	00e47433          	and	s0,s0,a4
    2e08:	008787b3          	add	a5,a5,s0
    2e0c:	0017c503          	lbu	a0,1(a5)
    2e10:	0007c783          	lbu	a5,0(a5)
    2e14:	00851513          	slli	a0,a0,0x8
    2e18:	00f50533          	add	a0,a0,a5
    2e1c:	ffff07b7          	lui	a5,0xffff0
    2e20:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2e24:	00f507b3          	add	a5,a0,a5
    2e28:	00700713          	li	a4,7
    2e2c:	00f76463          	bltu	a4,a5,2e34 <fatfs_find_next_cluster+0xa4>
    2e30:	fff00513          	li	a0,-1
    2e34:	00c12083          	lw	ra,12(sp)
    2e38:	00812403          	lw	s0,8(sp)
    2e3c:	00412483          	lw	s1,4(sp)
    2e40:	00012903          	lw	s2,0(sp)
    2e44:	01010113          	addi	sp,sp,16
    2e48:	00008067          	ret
    2e4c:	00749493          	slli	s1,s1,0x7
    2e50:	40940433          	sub	s0,s0,s1
    2e54:	00010737          	lui	a4,0x10
    2e58:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6503>
    2e5c:	00241413          	slli	s0,s0,0x2
    2e60:	00e47433          	and	s0,s0,a4
    2e64:	008787b3          	add	a5,a5,s0
    2e68:	0037c503          	lbu	a0,3(a5)
    2e6c:	0027c703          	lbu	a4,2(a5)
    2e70:	01851513          	slli	a0,a0,0x18
    2e74:	01071713          	slli	a4,a4,0x10
    2e78:	00e50533          	add	a0,a0,a4
    2e7c:	0007c703          	lbu	a4,0(a5)
    2e80:	0017c783          	lbu	a5,1(a5)
    2e84:	00e50533          	add	a0,a0,a4
    2e88:	00879793          	slli	a5,a5,0x8
    2e8c:	00f50533          	add	a0,a0,a5
    2e90:	00451513          	slli	a0,a0,0x4
    2e94:	00455513          	srli	a0,a0,0x4
    2e98:	f00007b7          	lui	a5,0xf0000
    2e9c:	f85ff06f          	j	2e20 <fatfs_find_next_cluster+0x90>

00002ea0 <fatfs_sector_reader>:
    2ea0:	03052783          	lw	a5,48(a0)
    2ea4:	fd010113          	addi	sp,sp,-48
    2ea8:	02812423          	sw	s0,40(sp)
    2eac:	03212023          	sw	s2,32(sp)
    2eb0:	01312e23          	sw	s3,28(sp)
    2eb4:	02112623          	sw	ra,44(sp)
    2eb8:	02912223          	sw	s1,36(sp)
    2ebc:	01412c23          	sw	s4,24(sp)
    2ec0:	01512a23          	sw	s5,20(sp)
    2ec4:	00f5e7b3          	or	a5,a1,a5
    2ec8:	00050413          	mv	s0,a0
    2ecc:	00060913          	mv	s2,a2
    2ed0:	00068993          	mv	s3,a3
    2ed4:	06079c63          	bnez	a5,2f4c <fatfs_sector_reader+0xac>
    2ed8:	01052783          	lw	a5,16(a0)
    2edc:	02f66663          	bltu	a2,a5,2f08 <fatfs_sector_reader+0x68>
    2ee0:	00000513          	li	a0,0
    2ee4:	02c12083          	lw	ra,44(sp)
    2ee8:	02812403          	lw	s0,40(sp)
    2eec:	02412483          	lw	s1,36(sp)
    2ef0:	02012903          	lw	s2,32(sp)
    2ef4:	01c12983          	lw	s3,28(sp)
    2ef8:	01812a03          	lw	s4,24(sp)
    2efc:	01412a83          	lw	s5,20(sp)
    2f00:	03010113          	addi	sp,sp,48
    2f04:	00008067          	ret
    2f08:	01c52503          	lw	a0,28(a0)
    2f0c:	00c42783          	lw	a5,12(s0)
    2f10:	00f50533          	add	a0,a0,a5
    2f14:	01250533          	add	a0,a0,s2
    2f18:	0a098263          	beqz	s3,2fbc <fatfs_sector_reader+0x11c>
    2f1c:	03442783          	lw	a5,52(s0)
    2f20:	00100613          	li	a2,1
    2f24:	00098593          	mv	a1,s3
    2f28:	02812403          	lw	s0,40(sp)
    2f2c:	02c12083          	lw	ra,44(sp)
    2f30:	02412483          	lw	s1,36(sp)
    2f34:	02012903          	lw	s2,32(sp)
    2f38:	01c12983          	lw	s3,28(sp)
    2f3c:	01812a03          	lw	s4,24(sp)
    2f40:	01412a83          	lw	s5,20(sp)
    2f44:	03010113          	addi	sp,sp,48
    2f48:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2f4c:	00058493          	mv	s1,a1
    2f50:	00054583          	lbu	a1,0(a0)
    2f54:	00060513          	mv	a0,a2
    2f58:	00000a93          	li	s5,0
    2f5c:	00b12623          	sw	a1,12(sp)
    2f60:	ffffe097          	auipc	ra,0xffffe
    2f64:	030080e7          	jalr	48(ra) # f90 <__udivsi3>
    2f68:	00c12583          	lw	a1,12(sp)
    2f6c:	00050a13          	mv	s4,a0
    2f70:	00090513          	mv	a0,s2
    2f74:	ffffe097          	auipc	ra,0xffffe
    2f78:	064080e7          	jalr	100(ra) # fd8 <__umodsi3>
    2f7c:	00050913          	mv	s2,a0
    2f80:	034a9063          	bne	s5,s4,2fa0 <fatfs_sector_reader+0x100>
    2f84:	fff00793          	li	a5,-1
    2f88:	f4f48ce3          	beq	s1,a5,2ee0 <fatfs_sector_reader+0x40>
    2f8c:	00048593          	mv	a1,s1
    2f90:	00040513          	mv	a0,s0
    2f94:	fffff097          	auipc	ra,0xfffff
    2f98:	c50080e7          	jalr	-944(ra) # 1be4 <fatfs_lba_of_cluster>
    2f9c:	f79ff06f          	j	2f14 <fatfs_sector_reader+0x74>
    2fa0:	00048593          	mv	a1,s1
    2fa4:	00040513          	mv	a0,s0
    2fa8:	00000097          	auipc	ra,0x0
    2fac:	de8080e7          	jalr	-536(ra) # 2d90 <fatfs_find_next_cluster>
    2fb0:	00050493          	mv	s1,a0
    2fb4:	001a8a93          	addi	s5,s5,1
    2fb8:	fc9ff06f          	j	2f80 <fatfs_sector_reader+0xe0>
    2fbc:	24442783          	lw	a5,580(s0)
    2fc0:	00a78c63          	beq	a5,a0,2fd8 <fatfs_sector_reader+0x138>
    2fc4:	03442783          	lw	a5,52(s0)
    2fc8:	24a42223          	sw	a0,580(s0)
    2fcc:	00100613          	li	a2,1
    2fd0:	04440593          	addi	a1,s0,68
    2fd4:	f55ff06f          	j	2f28 <fatfs_sector_reader+0x88>
    2fd8:	00100513          	li	a0,1
    2fdc:	f09ff06f          	j	2ee4 <fatfs_sector_reader+0x44>

00002fe0 <fatfs_get_file_entry>:
    2fe0:	eb010113          	addi	sp,sp,-336
    2fe4:	14812423          	sw	s0,328(sp)
    2fe8:	01810413          	addi	s0,sp,24
    2fec:	14912223          	sw	s1,324(sp)
    2ff0:	15212023          	sw	s2,320(sp)
    2ff4:	13312e23          	sw	s3,316(sp)
    2ff8:	13412c23          	sw	s4,312(sp)
    2ffc:	13512a23          	sw	s5,308(sp)
    3000:	13612823          	sw	s6,304(sp)
    3004:	14112623          	sw	ra,332(sp)
    3008:	13712623          	sw	s7,300(sp)
    300c:	13812423          	sw	s8,296(sp)
    3010:	13912223          	sw	s9,292(sp)
    3014:	13a12023          	sw	s10,288(sp)
    3018:	00050493          	mv	s1,a0
    301c:	00058a93          	mv	s5,a1
    3020:	00060913          	mv	s2,a2
    3024:	00068993          	mv	s3,a3
    3028:	10010ea3          	sb	zero,285(sp)
    302c:	11c10a13          	addi	s4,sp,284
    3030:	00040b13          	mv	s6,s0
    3034:	00040513          	mv	a0,s0
    3038:	00d00613          	li	a2,13
    303c:	00000593          	li	a1,0
    3040:	00d40413          	addi	s0,s0,13
    3044:	ffffe097          	auipc	ra,0xffffe
    3048:	ff8080e7          	jalr	-8(ra) # 103c <memset>
    304c:	ff4414e3          	bne	s0,s4,3034 <fatfs_get_file_entry+0x54>
    3050:	00000a13          	li	s4,0
    3054:	24448c13          	addi	s8,s1,580
    3058:	00800c93          	li	s9,8
    305c:	02000b93          	li	s7,32
    3060:	00000693          	li	a3,0
    3064:	000a0613          	mv	a2,s4
    3068:	000a8593          	mv	a1,s5
    306c:	00048513          	mv	a0,s1
    3070:	00000097          	auipc	ra,0x0
    3074:	e30080e7          	jalr	-464(ra) # 2ea0 <fatfs_sector_reader>
    3078:	16050463          	beqz	a0,31e0 <fatfs_get_file_entry+0x200>
    307c:	04448413          	addi	s0,s1,68
    3080:	02e00d13          	li	s10,46
    3084:	00040513          	mv	a0,s0
    3088:	fffff097          	auipc	ra,0xfffff
    308c:	e18080e7          	jalr	-488(ra) # 1ea0 <fatfs_entry_lfn_text>
    3090:	02050263          	beqz	a0,30b4 <fatfs_get_file_entry+0xd4>
    3094:	00040593          	mv	a1,s0
    3098:	000b0513          	mv	a0,s6
    309c:	fffff097          	auipc	ra,0xfffff
    30a0:	cfc080e7          	jalr	-772(ra) # 1d98 <fatfs_lfn_cache_entry>
    30a4:	02040413          	addi	s0,s0,32
    30a8:	fd841ee3          	bne	s0,s8,3084 <fatfs_get_file_entry+0xa4>
    30ac:	001a0a13          	addi	s4,s4,1
    30b0:	fb1ff06f          	j	3060 <fatfs_get_file_entry+0x80>
    30b4:	00040513          	mv	a0,s0
    30b8:	fffff097          	auipc	ra,0xfffff
    30bc:	dfc080e7          	jalr	-516(ra) # 1eb4 <fatfs_entry_lfn_invalid>
    30c0:	00050663          	beqz	a0,30cc <fatfs_get_file_entry+0xec>
    30c4:	10010ea3          	sb	zero,285(sp)
    30c8:	fddff06f          	j	30a4 <fatfs_get_file_entry+0xc4>
    30cc:	00040593          	mv	a1,s0
    30d0:	000b0513          	mv	a0,s6
    30d4:	fffff097          	auipc	ra,0xfffff
    30d8:	e18080e7          	jalr	-488(ra) # 1eec <fatfs_entry_lfn_exists>
    30dc:	06050863          	beqz	a0,314c <fatfs_get_file_entry+0x16c>
    30e0:	000b0513          	mv	a0,s6
    30e4:	fffff097          	auipc	ra,0xfffff
    30e8:	d80080e7          	jalr	-640(ra) # 1e64 <fatfs_lfn_cache_get>
    30ec:	00090593          	mv	a1,s2
    30f0:	fffff097          	auipc	ra,0xfffff
    30f4:	5cc080e7          	jalr	1484(ra) # 26bc <fatfs_compare_names>
    30f8:	fc0506e3          	beqz	a0,30c4 <fatfs_get_file_entry+0xe4>
    30fc:	02000613          	li	a2,32
    3100:	00040593          	mv	a1,s0
    3104:	00098513          	mv	a0,s3
    3108:	ffffe097          	auipc	ra,0xffffe
    310c:	f50080e7          	jalr	-176(ra) # 1058 <memcpy>
    3110:	00100513          	li	a0,1
    3114:	14c12083          	lw	ra,332(sp)
    3118:	14812403          	lw	s0,328(sp)
    311c:	14412483          	lw	s1,324(sp)
    3120:	14012903          	lw	s2,320(sp)
    3124:	13c12983          	lw	s3,316(sp)
    3128:	13812a03          	lw	s4,312(sp)
    312c:	13412a83          	lw	s5,308(sp)
    3130:	13012b03          	lw	s6,304(sp)
    3134:	12c12b83          	lw	s7,300(sp)
    3138:	12812c03          	lw	s8,296(sp)
    313c:	12412c83          	lw	s9,292(sp)
    3140:	12012d03          	lw	s10,288(sp)
    3144:	15010113          	addi	sp,sp,336
    3148:	00008067          	ret
    314c:	00040513          	mv	a0,s0
    3150:	fffff097          	auipc	ra,0xfffff
    3154:	de4080e7          	jalr	-540(ra) # 1f34 <fatfs_entry_sfn_only>
    3158:	f40506e3          	beqz	a0,30a4 <fatfs_get_file_entry+0xc4>
    315c:	00d00613          	li	a2,13
    3160:	00000593          	li	a1,0
    3164:	00810513          	addi	a0,sp,8
    3168:	ffffe097          	auipc	ra,0xffffe
    316c:	ed4080e7          	jalr	-300(ra) # 103c <memset>
    3170:	00000793          	li	a5,0
    3174:	00f406b3          	add	a3,s0,a5
    3178:	0006c683          	lbu	a3,0(a3)
    317c:	00810713          	addi	a4,sp,8
    3180:	00f70733          	add	a4,a4,a5
    3184:	00d70023          	sb	a3,0(a4)
    3188:	00178793          	addi	a5,a5,1
    318c:	ff9794e3          	bne	a5,s9,3174 <fatfs_get_file_entry+0x194>
    3190:	00844783          	lbu	a5,8(s0)
    3194:	00944683          	lbu	a3,9(s0)
    3198:	00100713          	li	a4,1
    319c:	00f108a3          	sb	a5,17(sp)
    31a0:	00d10923          	sb	a3,18(sp)
    31a4:	01769663          	bne	a3,s7,31b0 <fatfs_get_file_entry+0x1d0>
    31a8:	fe078793          	addi	a5,a5,-32
    31ac:	00f03733          	snez	a4,a5
    31b0:	00a44783          	lbu	a5,10(s0)
    31b4:	00f109a3          	sb	a5,19(sp)
    31b8:	01779463          	bne	a5,s7,31c0 <fatfs_get_file_entry+0x1e0>
    31bc:	00070a63          	beqz	a4,31d0 <fatfs_get_file_entry+0x1f0>
    31c0:	00814703          	lbu	a4,8(sp)
    31c4:	02000793          	li	a5,32
    31c8:	01a70463          	beq	a4,s10,31d0 <fatfs_get_file_entry+0x1f0>
    31cc:	02e00793          	li	a5,46
    31d0:	00f10823          	sb	a5,16(sp)
    31d4:	00090593          	mv	a1,s2
    31d8:	00810513          	addi	a0,sp,8
    31dc:	f15ff06f          	j	30f0 <fatfs_get_file_entry+0x110>
    31e0:	00000513          	li	a0,0
    31e4:	f31ff06f          	j	3114 <fatfs_get_file_entry+0x134>

000031e8 <_open_directory>:
    31e8:	eb010113          	addi	sp,sp,-336
    31ec:	13512a23          	sw	s5,308(sp)
    31f0:	0000aab7          	lui	s5,0xa
    31f4:	afca8793          	addi	a5,s5,-1284 # 9afc <_fs>
    31f8:	14812423          	sw	s0,328(sp)
    31fc:	14912223          	sw	s1,324(sp)
    3200:	15212023          	sw	s2,320(sp)
    3204:	13312e23          	sw	s3,316(sp)
    3208:	13412c23          	sw	s4,312(sp)
    320c:	13612823          	sw	s6,304(sp)
    3210:	0087a403          	lw	s0,8(a5)
    3214:	14112623          	sw	ra,332(sp)
    3218:	00050a13          	mv	s4,a0
    321c:	00058913          	mv	s2,a1
    3220:	fffff097          	auipc	ra,0xfffff
    3224:	254080e7          	jalr	596(ra) # 2474 <fatfs_total_path_levels>
    3228:	00050993          	mv	s3,a0
    322c:	00000493          	li	s1,0
    3230:	fff00b13          	li	s6,-1
    3234:	0099d863          	bge	s3,s1,3244 <_open_directory+0x5c>
    3238:	00892023          	sw	s0,0(s2)
    323c:	00100513          	li	a0,1
    3240:	0240006f          	j	3264 <_open_directory+0x7c>
    3244:	10400693          	li	a3,260
    3248:	02c10613          	addi	a2,sp,44
    324c:	00048593          	mv	a1,s1
    3250:	000a0513          	mv	a0,s4
    3254:	fffff097          	auipc	ra,0xfffff
    3258:	294080e7          	jalr	660(ra) # 24e8 <fatfs_get_substring>
    325c:	03651863          	bne	a0,s6,328c <_open_directory+0xa4>
    3260:	00000513          	li	a0,0
    3264:	14c12083          	lw	ra,332(sp)
    3268:	14812403          	lw	s0,328(sp)
    326c:	14412483          	lw	s1,324(sp)
    3270:	14012903          	lw	s2,320(sp)
    3274:	13c12983          	lw	s3,316(sp)
    3278:	13812a03          	lw	s4,312(sp)
    327c:	13412a83          	lw	s5,308(sp)
    3280:	13012b03          	lw	s6,304(sp)
    3284:	15010113          	addi	sp,sp,336
    3288:	00008067          	ret
    328c:	00c10693          	addi	a3,sp,12
    3290:	02c10613          	addi	a2,sp,44
    3294:	00040593          	mv	a1,s0
    3298:	afca8513          	addi	a0,s5,-1284
    329c:	00000097          	auipc	ra,0x0
    32a0:	d44080e7          	jalr	-700(ra) # 2fe0 <fatfs_get_file_entry>
    32a4:	fa050ee3          	beqz	a0,3260 <_open_directory+0x78>
    32a8:	00c10513          	addi	a0,sp,12
    32ac:	fffff097          	auipc	ra,0xfffff
    32b0:	cc4080e7          	jalr	-828(ra) # 1f70 <fatfs_entry_is_dir>
    32b4:	fa0506e3          	beqz	a0,3260 <_open_directory+0x78>
    32b8:	02015403          	lhu	s0,32(sp)
    32bc:	02615783          	lhu	a5,38(sp)
    32c0:	00148493          	addi	s1,s1,1
    32c4:	01041413          	slli	s0,s0,0x10
    32c8:	00f40433          	add	s0,s0,a5
    32cc:	f69ff06f          	j	3234 <_open_directory+0x4c>

000032d0 <fl_opendir>:
    32d0:	fe010113          	addi	sp,sp,-32
    32d4:	fff00793          	li	a5,-1
    32d8:	00f12623          	sw	a5,12(sp)
    32dc:	000057b7          	lui	a5,0x5
    32e0:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    32e4:	00812c23          	sw	s0,24(sp)
    32e8:	01212823          	sw	s2,16(sp)
    32ec:	00112e23          	sw	ra,28(sp)
    32f0:	00912a23          	sw	s1,20(sp)
    32f4:	00050913          	mv	s2,a0
    32f8:	00058413          	mv	s0,a1
    32fc:	00079663          	bnez	a5,3308 <fl_opendir+0x38>
    3300:	fffff097          	auipc	ra,0xfffff
    3304:	a20080e7          	jalr	-1504(ra) # 1d20 <fl_init>
    3308:	0000a4b7          	lui	s1,0xa
    330c:	afc48793          	addi	a5,s1,-1284 # 9afc <_fs>
    3310:	03c7a783          	lw	a5,60(a5)
    3314:	afc48493          	addi	s1,s1,-1284
    3318:	00078463          	beqz	a5,3320 <fl_opendir+0x50>
    331c:	000780e7          	jalr	a5
    3320:	00090513          	mv	a0,s2
    3324:	fffff097          	auipc	ra,0xfffff
    3328:	150080e7          	jalr	336(ra) # 2474 <fatfs_total_path_levels>
    332c:	fff00793          	li	a5,-1
    3330:	02f51063          	bne	a0,a5,3350 <fl_opendir+0x80>
    3334:	0084a783          	lw	a5,8(s1)
    3338:	00f12623          	sw	a5,12(sp)
    333c:	00c12783          	lw	a5,12(sp)
    3340:	00042023          	sw	zero,0(s0)
    3344:	00040423          	sb	zero,8(s0)
    3348:	00f42223          	sw	a5,4(s0)
    334c:	0180006f          	j	3364 <fl_opendir+0x94>
    3350:	00c10593          	addi	a1,sp,12
    3354:	00090513          	mv	a0,s2
    3358:	00000097          	auipc	ra,0x0
    335c:	e90080e7          	jalr	-368(ra) # 31e8 <_open_directory>
    3360:	fc051ee3          	bnez	a0,333c <fl_opendir+0x6c>
    3364:	0404a783          	lw	a5,64(s1)
    3368:	00078463          	beqz	a5,3370 <fl_opendir+0xa0>
    336c:	000780e7          	jalr	a5
    3370:	00c12703          	lw	a4,12(sp)
    3374:	fff00793          	li	a5,-1
    3378:	00f71463          	bne	a4,a5,3380 <fl_opendir+0xb0>
    337c:	00000413          	li	s0,0
    3380:	01c12083          	lw	ra,28(sp)
    3384:	00040513          	mv	a0,s0
    3388:	01812403          	lw	s0,24(sp)
    338c:	01412483          	lw	s1,20(sp)
    3390:	01012903          	lw	s2,16(sp)
    3394:	02010113          	addi	sp,sp,32
    3398:	00008067          	ret

0000339c <_open_file>:
    339c:	fc010113          	addi	sp,sp,-64
    33a0:	02812c23          	sw	s0,56(sp)
    33a4:	03312623          	sw	s3,44(sp)
    33a8:	02112e23          	sw	ra,60(sp)
    33ac:	02912a23          	sw	s1,52(sp)
    33b0:	03212823          	sw	s2,48(sp)
    33b4:	00050993          	mv	s3,a0
    33b8:	ffffe097          	auipc	ra,0xffffe
    33bc:	770080e7          	jalr	1904(ra) # 1b28 <_allocate_file>
    33c0:	00050413          	mv	s0,a0
    33c4:	10050c63          	beqz	a0,34dc <_open_file+0x140>
    33c8:	01450913          	addi	s2,a0,20
    33cc:	10400613          	li	a2,260
    33d0:	00000593          	li	a1,0
    33d4:	00090513          	mv	a0,s2
    33d8:	ffffe097          	auipc	ra,0xffffe
    33dc:	c64080e7          	jalr	-924(ra) # 103c <memset>
    33e0:	11840493          	addi	s1,s0,280
    33e4:	10400613          	li	a2,260
    33e8:	00000593          	li	a1,0
    33ec:	00048513          	mv	a0,s1
    33f0:	ffffe097          	auipc	ra,0xffffe
    33f4:	c4c080e7          	jalr	-948(ra) # 103c <memset>
    33f8:	10400713          	li	a4,260
    33fc:	00048693          	mv	a3,s1
    3400:	10400613          	li	a2,260
    3404:	00090593          	mv	a1,s2
    3408:	00098513          	mv	a0,s3
    340c:	fffff097          	auipc	ra,0xfffff
    3410:	1d0080e7          	jalr	464(ra) # 25dc <fatfs_split_path>
    3414:	fff00793          	li	a5,-1
    3418:	00f51c63          	bne	a0,a5,3430 <_open_file+0x94>
    341c:	00040513          	mv	a0,s0
    3420:	ffffe097          	auipc	ra,0xffffe
    3424:	77c080e7          	jalr	1916(ra) # 1b9c <_free_file>
    3428:	00000413          	li	s0,0
    342c:	0b00006f          	j	34dc <_open_file+0x140>
    3430:	00040513          	mv	a0,s0
    3434:	fffff097          	auipc	ra,0xfffff
    3438:	3f8080e7          	jalr	1016(ra) # 282c <_check_file_open>
    343c:	fe0510e3          	bnez	a0,341c <_open_file+0x80>
    3440:	01444783          	lbu	a5,20(s0)
    3444:	0a079c63          	bnez	a5,34fc <_open_file+0x160>
    3448:	0000a7b7          	lui	a5,0xa
    344c:	b047a783          	lw	a5,-1276(a5) # 9b04 <_fs+0x8>
    3450:	00f42023          	sw	a5,0(s0)
    3454:	00042583          	lw	a1,0(s0)
    3458:	0000a937          	lui	s2,0xa
    345c:	00010693          	mv	a3,sp
    3460:	00048613          	mv	a2,s1
    3464:	afc90513          	addi	a0,s2,-1284 # 9afc <_fs>
    3468:	00000097          	auipc	ra,0x0
    346c:	b78080e7          	jalr	-1160(ra) # 2fe0 <fatfs_get_file_entry>
    3470:	fa0506e3          	beqz	a0,341c <_open_file+0x80>
    3474:	00010513          	mv	a0,sp
    3478:	fffff097          	auipc	ra,0xfffff
    347c:	b08080e7          	jalr	-1272(ra) # 1f80 <fatfs_entry_is_file>
    3480:	f8050ee3          	beqz	a0,341c <_open_file+0x80>
    3484:	00b00613          	li	a2,11
    3488:	00010593          	mv	a1,sp
    348c:	21c40513          	addi	a0,s0,540
    3490:	ffffe097          	auipc	ra,0xffffe
    3494:	bc8080e7          	jalr	-1080(ra) # 1058 <memcpy>
    3498:	01c12783          	lw	a5,28(sp)
    349c:	01a15703          	lhu	a4,26(sp)
    34a0:	00042423          	sw	zero,8(s0)
    34a4:	00f42623          	sw	a5,12(s0)
    34a8:	01415783          	lhu	a5,20(sp)
    34ac:	42042a23          	sw	zero,1076(s0)
    34b0:	00042823          	sw	zero,16(s0)
    34b4:	01079793          	slli	a5,a5,0x10
    34b8:	00e787b3          	add	a5,a5,a4
    34bc:	00f42223          	sw	a5,4(s0)
    34c0:	fff00793          	li	a5,-1
    34c4:	42f42823          	sw	a5,1072(s0)
    34c8:	22f42423          	sw	a5,552(s0)
    34cc:	22f42623          	sw	a5,556(s0)
    34d0:	afc90513          	addi	a0,s2,-1284
    34d4:	00000097          	auipc	ra,0x0
    34d8:	860080e7          	jalr	-1952(ra) # 2d34 <fatfs_fat_purge>
    34dc:	03c12083          	lw	ra,60(sp)
    34e0:	00040513          	mv	a0,s0
    34e4:	03812403          	lw	s0,56(sp)
    34e8:	03412483          	lw	s1,52(sp)
    34ec:	03012903          	lw	s2,48(sp)
    34f0:	02c12983          	lw	s3,44(sp)
    34f4:	04010113          	addi	sp,sp,64
    34f8:	00008067          	ret
    34fc:	00040593          	mv	a1,s0
    3500:	00090513          	mv	a0,s2
    3504:	00000097          	auipc	ra,0x0
    3508:	ce4080e7          	jalr	-796(ra) # 31e8 <_open_directory>
    350c:	f40514e3          	bnez	a0,3454 <_open_file+0xb8>
    3510:	f0dff06f          	j	341c <_open_file+0x80>

00003514 <fatfs_sfn_exists>:
    3514:	fe010113          	addi	sp,sp,-32
    3518:	00912a23          	sw	s1,20(sp)
    351c:	01212823          	sw	s2,16(sp)
    3520:	01312623          	sw	s3,12(sp)
    3524:	01412423          	sw	s4,8(sp)
    3528:	01512223          	sw	s5,4(sp)
    352c:	00112e23          	sw	ra,28(sp)
    3530:	00812c23          	sw	s0,24(sp)
    3534:	00050493          	mv	s1,a0
    3538:	00058993          	mv	s3,a1
    353c:	00060a13          	mv	s4,a2
    3540:	00000913          	li	s2,0
    3544:	24450a93          	addi	s5,a0,580
    3548:	00000693          	li	a3,0
    354c:	00090613          	mv	a2,s2
    3550:	00098593          	mv	a1,s3
    3554:	00048513          	mv	a0,s1
    3558:	00000097          	auipc	ra,0x0
    355c:	948080e7          	jalr	-1720(ra) # 2ea0 <fatfs_sector_reader>
    3560:	06050263          	beqz	a0,35c4 <fatfs_sfn_exists+0xb0>
    3564:	04448413          	addi	s0,s1,68
    3568:	00040513          	mv	a0,s0
    356c:	fffff097          	auipc	ra,0xfffff
    3570:	934080e7          	jalr	-1740(ra) # 1ea0 <fatfs_entry_lfn_text>
    3574:	02051e63          	bnez	a0,35b0 <fatfs_sfn_exists+0x9c>
    3578:	00040513          	mv	a0,s0
    357c:	fffff097          	auipc	ra,0xfffff
    3580:	938080e7          	jalr	-1736(ra) # 1eb4 <fatfs_entry_lfn_invalid>
    3584:	02051663          	bnez	a0,35b0 <fatfs_sfn_exists+0x9c>
    3588:	00040513          	mv	a0,s0
    358c:	fffff097          	auipc	ra,0xfffff
    3590:	9a8080e7          	jalr	-1624(ra) # 1f34 <fatfs_entry_sfn_only>
    3594:	00050e63          	beqz	a0,35b0 <fatfs_sfn_exists+0x9c>
    3598:	00b00613          	li	a2,11
    359c:	000a0593          	mv	a1,s4
    35a0:	00040513          	mv	a0,s0
    35a4:	ffffe097          	auipc	ra,0xffffe
    35a8:	af8080e7          	jalr	-1288(ra) # 109c <strncmp>
    35ac:	00050a63          	beqz	a0,35c0 <fatfs_sfn_exists+0xac>
    35b0:	02040413          	addi	s0,s0,32
    35b4:	fb541ae3          	bne	s0,s5,3568 <fatfs_sfn_exists+0x54>
    35b8:	00190913          	addi	s2,s2,1
    35bc:	f8dff06f          	j	3548 <fatfs_sfn_exists+0x34>
    35c0:	00100513          	li	a0,1
    35c4:	01c12083          	lw	ra,28(sp)
    35c8:	01812403          	lw	s0,24(sp)
    35cc:	01412483          	lw	s1,20(sp)
    35d0:	01012903          	lw	s2,16(sp)
    35d4:	00c12983          	lw	s3,12(sp)
    35d8:	00812a03          	lw	s4,8(sp)
    35dc:	00412a83          	lw	s5,4(sp)
    35e0:	02010113          	addi	sp,sp,32
    35e4:	00008067          	ret

000035e8 <fatfs_update_file_length>:
    35e8:	03852783          	lw	a5,56(a0)
    35ec:	14078e63          	beqz	a5,3748 <fatfs_update_file_length+0x160>
    35f0:	fd010113          	addi	sp,sp,-48
    35f4:	02912223          	sw	s1,36(sp)
    35f8:	03212023          	sw	s2,32(sp)
    35fc:	01312e23          	sw	s3,28(sp)
    3600:	01412c23          	sw	s4,24(sp)
    3604:	01512a23          	sw	s5,20(sp)
    3608:	01612823          	sw	s6,16(sp)
    360c:	02112623          	sw	ra,44(sp)
    3610:	02812423          	sw	s0,40(sp)
    3614:	01712623          	sw	s7,12(sp)
    3618:	00050493          	mv	s1,a0
    361c:	00058a13          	mv	s4,a1
    3620:	00060a93          	mv	s5,a2
    3624:	00068913          	mv	s2,a3
    3628:	00000993          	li	s3,0
    362c:	24450b13          	addi	s6,a0,580
    3630:	00000693          	li	a3,0
    3634:	00098613          	mv	a2,s3
    3638:	000a0593          	mv	a1,s4
    363c:	00048513          	mv	a0,s1
    3640:	00000097          	auipc	ra,0x0
    3644:	860080e7          	jalr	-1952(ra) # 2ea0 <fatfs_sector_reader>
    3648:	0c050863          	beqz	a0,3718 <fatfs_update_file_length+0x130>
    364c:	04448413          	addi	s0,s1,68
    3650:	00040b93          	mv	s7,s0
    3654:	00040513          	mv	a0,s0
    3658:	fffff097          	auipc	ra,0xfffff
    365c:	848080e7          	jalr	-1976(ra) # 1ea0 <fatfs_entry_lfn_text>
    3660:	0a051463          	bnez	a0,3708 <fatfs_update_file_length+0x120>
    3664:	00040513          	mv	a0,s0
    3668:	fffff097          	auipc	ra,0xfffff
    366c:	84c080e7          	jalr	-1972(ra) # 1eb4 <fatfs_entry_lfn_invalid>
    3670:	08051c63          	bnez	a0,3708 <fatfs_update_file_length+0x120>
    3674:	00040513          	mv	a0,s0
    3678:	fffff097          	auipc	ra,0xfffff
    367c:	8bc080e7          	jalr	-1860(ra) # 1f34 <fatfs_entry_sfn_only>
    3680:	08050463          	beqz	a0,3708 <fatfs_update_file_length+0x120>
    3684:	00b00613          	li	a2,11
    3688:	000a8593          	mv	a1,s5
    368c:	00040513          	mv	a0,s0
    3690:	ffffe097          	auipc	ra,0xffffe
    3694:	a0c080e7          	jalr	-1524(ra) # 109c <strncmp>
    3698:	06051863          	bnez	a0,3708 <fatfs_update_file_length+0x120>
    369c:	00895793          	srli	a5,s2,0x8
    36a0:	01240e23          	sb	s2,28(s0)
    36a4:	00f40ea3          	sb	a5,29(s0)
    36a8:	01095793          	srli	a5,s2,0x10
    36ac:	01895913          	srli	s2,s2,0x18
    36b0:	00f40f23          	sb	a5,30(s0)
    36b4:	01240fa3          	sb	s2,31(s0)
    36b8:	00040593          	mv	a1,s0
    36bc:	02000613          	li	a2,32
    36c0:	00040513          	mv	a0,s0
    36c4:	ffffe097          	auipc	ra,0xffffe
    36c8:	994080e7          	jalr	-1644(ra) # 1058 <memcpy>
    36cc:	02812403          	lw	s0,40(sp)
    36d0:	0384a783          	lw	a5,56(s1)
    36d4:	2444a503          	lw	a0,580(s1)
    36d8:	02c12083          	lw	ra,44(sp)
    36dc:	02412483          	lw	s1,36(sp)
    36e0:	02012903          	lw	s2,32(sp)
    36e4:	01c12983          	lw	s3,28(sp)
    36e8:	01812a03          	lw	s4,24(sp)
    36ec:	01412a83          	lw	s5,20(sp)
    36f0:	01012b03          	lw	s6,16(sp)
    36f4:	000b8593          	mv	a1,s7
    36f8:	00c12b83          	lw	s7,12(sp)
    36fc:	00100613          	li	a2,1
    3700:	03010113          	addi	sp,sp,48
    3704:	00078067          	jr	a5
    3708:	02040413          	addi	s0,s0,32
    370c:	f56414e3          	bne	s0,s6,3654 <fatfs_update_file_length+0x6c>
    3710:	00198993          	addi	s3,s3,1
    3714:	f1dff06f          	j	3630 <fatfs_update_file_length+0x48>
    3718:	02c12083          	lw	ra,44(sp)
    371c:	02812403          	lw	s0,40(sp)
    3720:	02412483          	lw	s1,36(sp)
    3724:	02012903          	lw	s2,32(sp)
    3728:	01c12983          	lw	s3,28(sp)
    372c:	01812a03          	lw	s4,24(sp)
    3730:	01412a83          	lw	s5,20(sp)
    3734:	01012b03          	lw	s6,16(sp)
    3738:	00c12b83          	lw	s7,12(sp)
    373c:	00000513          	li	a0,0
    3740:	03010113          	addi	sp,sp,48
    3744:	00008067          	ret
    3748:	00000513          	li	a0,0
    374c:	00008067          	ret

00003750 <fatfs_list_directory_next>:
    3750:	ec010113          	addi	sp,sp,-320
    3754:	13212823          	sw	s2,304(sp)
    3758:	13312623          	sw	s3,300(sp)
    375c:	13412423          	sw	s4,296(sp)
    3760:	13512223          	sw	s5,292(sp)
    3764:	12112e23          	sw	ra,316(sp)
    3768:	12812c23          	sw	s0,312(sp)
    376c:	12912a23          	sw	s1,308(sp)
    3770:	00050a13          	mv	s4,a0
    3774:	00058913          	mv	s2,a1
    3778:	00060993          	mv	s3,a2
    377c:	10010ea3          	sb	zero,285(sp)
    3780:	00f00a93          	li	s5,15
    3784:	00092603          	lw	a2,0(s2)
    3788:	00492583          	lw	a1,4(s2)
    378c:	00000693          	li	a3,0
    3790:	000a0513          	mv	a0,s4
    3794:	fffff097          	auipc	ra,0xfffff
    3798:	70c080e7          	jalr	1804(ra) # 2ea0 <fatfs_sector_reader>
    379c:	12050063          	beqz	a0,38bc <fatfs_list_directory_next+0x16c>
    37a0:	00894483          	lbu	s1,8(s2)
    37a4:	00549413          	slli	s0,s1,0x5
    37a8:	04440413          	addi	s0,s0,68
    37ac:	008a0433          	add	s0,s4,s0
    37b0:	009afc63          	bgeu	s5,s1,37c8 <fatfs_list_directory_next+0x78>
    37b4:	00092783          	lw	a5,0(s2)
    37b8:	00090423          	sb	zero,8(s2)
    37bc:	00178793          	addi	a5,a5,1
    37c0:	00f92023          	sw	a5,0(s2)
    37c4:	fc1ff06f          	j	3784 <fatfs_list_directory_next+0x34>
    37c8:	00040513          	mv	a0,s0
    37cc:	ffffe097          	auipc	ra,0xffffe
    37d0:	6d4080e7          	jalr	1748(ra) # 1ea0 <fatfs_entry_lfn_text>
    37d4:	02050263          	beqz	a0,37f8 <fatfs_list_directory_next+0xa8>
    37d8:	00040593          	mv	a1,s0
    37dc:	01810513          	addi	a0,sp,24
    37e0:	ffffe097          	auipc	ra,0xffffe
    37e4:	5b8080e7          	jalr	1464(ra) # 1d98 <fatfs_lfn_cache_entry>
    37e8:	00148493          	addi	s1,s1,1
    37ec:	0ff4f493          	zext.b	s1,s1
    37f0:	02040413          	addi	s0,s0,32
    37f4:	fbdff06f          	j	37b0 <fatfs_list_directory_next+0x60>
    37f8:	00040513          	mv	a0,s0
    37fc:	ffffe097          	auipc	ra,0xffffe
    3800:	6b8080e7          	jalr	1720(ra) # 1eb4 <fatfs_entry_lfn_invalid>
    3804:	00050663          	beqz	a0,3810 <fatfs_list_directory_next+0xc0>
    3808:	10010ea3          	sb	zero,285(sp)
    380c:	fddff06f          	j	37e8 <fatfs_list_directory_next+0x98>
    3810:	00040593          	mv	a1,s0
    3814:	01810513          	addi	a0,sp,24
    3818:	ffffe097          	auipc	ra,0xffffe
    381c:	6d4080e7          	jalr	1748(ra) # 1eec <fatfs_entry_lfn_exists>
    3820:	0c050063          	beqz	a0,38e0 <fatfs_list_directory_next+0x190>
    3824:	01810513          	addi	a0,sp,24
    3828:	ffffe097          	auipc	ra,0xffffe
    382c:	63c080e7          	jalr	1596(ra) # 1e64 <fatfs_lfn_cache_get>
    3830:	00050593          	mv	a1,a0
    3834:	10300613          	li	a2,259
    3838:	00098513          	mv	a0,s3
    383c:	ffffe097          	auipc	ra,0xffffe
    3840:	8a0080e7          	jalr	-1888(ra) # 10dc <strncpy>
    3844:	00040513          	mv	a0,s0
    3848:	ffffe097          	auipc	ra,0xffffe
    384c:	728080e7          	jalr	1832(ra) # 1f70 <fatfs_entry_is_dir>
    3850:	00a03533          	snez	a0,a0
    3854:	10a98223          	sb	a0,260(s3)
    3858:	01d44783          	lbu	a5,29(s0)
    385c:	01c44703          	lbu	a4,28(s0)
    3860:	00148493          	addi	s1,s1,1
    3864:	00879793          	slli	a5,a5,0x8
    3868:	00e7e7b3          	or	a5,a5,a4
    386c:	01e44703          	lbu	a4,30(s0)
    3870:	00100513          	li	a0,1
    3874:	01071713          	slli	a4,a4,0x10
    3878:	00f76733          	or	a4,a4,a5
    387c:	01f44783          	lbu	a5,31(s0)
    3880:	01879793          	slli	a5,a5,0x18
    3884:	00e7e7b3          	or	a5,a5,a4
    3888:	10f9a623          	sw	a5,268(s3)
    388c:	01544783          	lbu	a5,21(s0)
    3890:	01444703          	lbu	a4,20(s0)
    3894:	01a44683          	lbu	a3,26(s0)
    3898:	00879793          	slli	a5,a5,0x8
    389c:	00e7e7b3          	or	a5,a5,a4
    38a0:	01b44703          	lbu	a4,27(s0)
    38a4:	01079793          	slli	a5,a5,0x10
    38a8:	00871713          	slli	a4,a4,0x8
    38ac:	00d76733          	or	a4,a4,a3
    38b0:	00e7e7b3          	or	a5,a5,a4
    38b4:	10f9a423          	sw	a5,264(s3)
    38b8:	00990423          	sb	s1,8(s2)
    38bc:	13c12083          	lw	ra,316(sp)
    38c0:	13812403          	lw	s0,312(sp)
    38c4:	13412483          	lw	s1,308(sp)
    38c8:	13012903          	lw	s2,304(sp)
    38cc:	12c12983          	lw	s3,300(sp)
    38d0:	12812a03          	lw	s4,296(sp)
    38d4:	12412a83          	lw	s5,292(sp)
    38d8:	14010113          	addi	sp,sp,320
    38dc:	00008067          	ret
    38e0:	00040513          	mv	a0,s0
    38e4:	ffffe097          	auipc	ra,0xffffe
    38e8:	650080e7          	jalr	1616(ra) # 1f34 <fatfs_entry_sfn_only>
    38ec:	ee050ee3          	beqz	a0,37e8 <fatfs_list_directory_next+0x98>
    38f0:	00d00613          	li	a2,13
    38f4:	00000593          	li	a1,0
    38f8:	00810513          	addi	a0,sp,8
    38fc:	10010ea3          	sb	zero,285(sp)
    3900:	ffffd097          	auipc	ra,0xffffd
    3904:	73c080e7          	jalr	1852(ra) # 103c <memset>
    3908:	00000793          	li	a5,0
    390c:	00800713          	li	a4,8
    3910:	00f40633          	add	a2,s0,a5
    3914:	00064603          	lbu	a2,0(a2)
    3918:	00810693          	addi	a3,sp,8
    391c:	00f686b3          	add	a3,a3,a5
    3920:	00c68023          	sb	a2,0(a3)
    3924:	00178793          	addi	a5,a5,1
    3928:	fee794e3          	bne	a5,a4,3910 <fatfs_list_directory_next+0x1c0>
    392c:	00844783          	lbu	a5,8(s0)
    3930:	00944683          	lbu	a3,9(s0)
    3934:	02000613          	li	a2,32
    3938:	00f108a3          	sb	a5,17(sp)
    393c:	00d10923          	sb	a3,18(sp)
    3940:	00100713          	li	a4,1
    3944:	00c69663          	bne	a3,a2,3950 <fatfs_list_directory_next+0x200>
    3948:	fe078793          	addi	a5,a5,-32
    394c:	00f03733          	snez	a4,a5
    3950:	00a44783          	lbu	a5,10(s0)
    3954:	02000693          	li	a3,32
    3958:	00f109a3          	sb	a5,19(sp)
    395c:	00d79463          	bne	a5,a3,3964 <fatfs_list_directory_next+0x214>
    3960:	00070c63          	beqz	a4,3978 <fatfs_list_directory_next+0x228>
    3964:	00814683          	lbu	a3,8(sp)
    3968:	02e00713          	li	a4,46
    396c:	02000793          	li	a5,32
    3970:	00e68463          	beq	a3,a4,3978 <fatfs_list_directory_next+0x228>
    3974:	02e00793          	li	a5,46
    3978:	00810593          	addi	a1,sp,8
    397c:	00098513          	mv	a0,s3
    3980:	00f10823          	sb	a5,16(sp)
    3984:	fffff097          	auipc	ra,0xfffff
    3988:	f38080e7          	jalr	-200(ra) # 28bc <fatfs_get_sfn_display_name>
    398c:	eb9ff06f          	j	3844 <fatfs_list_directory_next+0xf4>

00003990 <fl_readdir>:
    3990:	000057b7          	lui	a5,0x5
    3994:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    3998:	fe010113          	addi	sp,sp,-32
    399c:	00912a23          	sw	s1,20(sp)
    39a0:	01212823          	sw	s2,16(sp)
    39a4:	00112e23          	sw	ra,28(sp)
    39a8:	00812c23          	sw	s0,24(sp)
    39ac:	01312623          	sw	s3,12(sp)
    39b0:	00050493          	mv	s1,a0
    39b4:	00058913          	mv	s2,a1
    39b8:	00079663          	bnez	a5,39c4 <fl_readdir+0x34>
    39bc:	ffffe097          	auipc	ra,0xffffe
    39c0:	364080e7          	jalr	868(ra) # 1d20 <fl_init>
    39c4:	0000a437          	lui	s0,0xa
    39c8:	afc40793          	addi	a5,s0,-1284 # 9afc <_fs>
    39cc:	03c7a783          	lw	a5,60(a5)
    39d0:	afc40993          	addi	s3,s0,-1284
    39d4:	00078463          	beqz	a5,39dc <fl_readdir+0x4c>
    39d8:	000780e7          	jalr	a5
    39dc:	afc40513          	addi	a0,s0,-1284
    39e0:	00090613          	mv	a2,s2
    39e4:	00048593          	mv	a1,s1
    39e8:	00000097          	auipc	ra,0x0
    39ec:	d68080e7          	jalr	-664(ra) # 3750 <fatfs_list_directory_next>
    39f0:	0409a783          	lw	a5,64(s3)
    39f4:	00050413          	mv	s0,a0
    39f8:	00078463          	beqz	a5,3a00 <fl_readdir+0x70>
    39fc:	000780e7          	jalr	a5
    3a00:	01c12083          	lw	ra,28(sp)
    3a04:	00143513          	seqz	a0,s0
    3a08:	01812403          	lw	s0,24(sp)
    3a0c:	01412483          	lw	s1,20(sp)
    3a10:	01012903          	lw	s2,16(sp)
    3a14:	00c12983          	lw	s3,12(sp)
    3a18:	40a00533          	neg	a0,a0
    3a1c:	02010113          	addi	sp,sp,32
    3a20:	00008067          	ret

00003a24 <_read_sectors>:
    3a24:	fd010113          	addi	sp,sp,-48
    3a28:	01612823          	sw	s6,16(sp)
    3a2c:	0000ab37          	lui	s6,0xa
    3a30:	01512a23          	sw	s5,20(sp)
    3a34:	afcb4a83          	lbu	s5,-1284(s6) # 9afc <_fs>
    3a38:	01412c23          	sw	s4,24(sp)
    3a3c:	00058a13          	mv	s4,a1
    3a40:	02912223          	sw	s1,36(sp)
    3a44:	000a8593          	mv	a1,s5
    3a48:	00050493          	mv	s1,a0
    3a4c:	000a0513          	mv	a0,s4
    3a50:	02112623          	sw	ra,44(sp)
    3a54:	02812423          	sw	s0,40(sp)
    3a58:	03212023          	sw	s2,32(sp)
    3a5c:	00068413          	mv	s0,a3
    3a60:	01712623          	sw	s7,12(sp)
    3a64:	01812423          	sw	s8,8(sp)
    3a68:	01312e23          	sw	s3,28(sp)
    3a6c:	00060c13          	mv	s8,a2
    3a70:	ffffd097          	auipc	ra,0xffffd
    3a74:	520080e7          	jalr	1312(ra) # f90 <__udivsi3>
    3a78:	00050913          	mv	s2,a0
    3a7c:	000a8593          	mv	a1,s5
    3a80:	000a0513          	mv	a0,s4
    3a84:	ffffd097          	auipc	ra,0xffffd
    3a88:	554080e7          	jalr	1364(ra) # fd8 <__umodsi3>
    3a8c:	00a407b3          	add	a5,s0,a0
    3a90:	00050b93          	mv	s7,a0
    3a94:	00fafe63          	bgeu	s5,a5,3ab0 <_read_sectors+0x8c>
    3a98:	00090593          	mv	a1,s2
    3a9c:	000a8513          	mv	a0,s5
    3aa0:	ffffe097          	auipc	ra,0xffffe
    3aa4:	de4080e7          	jalr	-540(ra) # 1884 <__mulsi3>
    3aa8:	414a87b3          	sub	a5,s5,s4
    3aac:	00f50433          	add	s0,a0,a5
    3ab0:	2284a983          	lw	s3,552(s1)
    3ab4:	01299c63          	bne	s3,s2,3acc <_read_sectors+0xa8>
    3ab8:	22c4a583          	lw	a1,556(s1)
    3abc:	fff00793          	li	a5,-1
    3ac0:	02f59863          	bne	a1,a5,3af0 <_read_sectors+0xcc>
    3ac4:	00000413          	li	s0,0
    3ac8:	0500006f          	j	3b18 <_read_sectors+0xf4>
    3acc:	095a6063          	bltu	s4,s5,3b4c <_read_sectors+0x128>
    3ad0:	00198793          	addi	a5,s3,1
    3ad4:	07279c63          	bne	a5,s2,3b4c <_read_sectors+0x128>
    3ad8:	22c4a583          	lw	a1,556(s1)
    3adc:	0729ee63          	bltu	s3,s2,3b58 <_read_sectors+0x134>
    3ae0:	fff00793          	li	a5,-1
    3ae4:	fef580e3          	beq	a1,a5,3ac4 <_read_sectors+0xa0>
    3ae8:	22b4a623          	sw	a1,556(s1)
    3aec:	2324a423          	sw	s2,552(s1)
    3af0:	afcb0513          	addi	a0,s6,-1284
    3af4:	ffffe097          	auipc	ra,0xffffe
    3af8:	0f0080e7          	jalr	240(ra) # 1be4 <fatfs_lba_of_cluster>
    3afc:	017505b3          	add	a1,a0,s7
    3b00:	00040693          	mv	a3,s0
    3b04:	000c0613          	mv	a2,s8
    3b08:	afcb0513          	addi	a0,s6,-1284
    3b0c:	ffffe097          	auipc	ra,0xffffe
    3b10:	128080e7          	jalr	296(ra) # 1c34 <fatfs_sector_read>
    3b14:	fa0508e3          	beqz	a0,3ac4 <_read_sectors+0xa0>
    3b18:	02c12083          	lw	ra,44(sp)
    3b1c:	00040513          	mv	a0,s0
    3b20:	02812403          	lw	s0,40(sp)
    3b24:	02412483          	lw	s1,36(sp)
    3b28:	02012903          	lw	s2,32(sp)
    3b2c:	01c12983          	lw	s3,28(sp)
    3b30:	01812a03          	lw	s4,24(sp)
    3b34:	01412a83          	lw	s5,20(sp)
    3b38:	01012b03          	lw	s6,16(sp)
    3b3c:	00c12b83          	lw	s7,12(sp)
    3b40:	00812c03          	lw	s8,8(sp)
    3b44:	03010113          	addi	sp,sp,48
    3b48:	00008067          	ret
    3b4c:	0044a583          	lw	a1,4(s1)
    3b50:	00000993          	li	s3,0
    3b54:	f89ff06f          	j	3adc <_read_sectors+0xb8>
    3b58:	afcb0513          	addi	a0,s6,-1284
    3b5c:	fffff097          	auipc	ra,0xfffff
    3b60:	234080e7          	jalr	564(ra) # 2d90 <fatfs_find_next_cluster>
    3b64:	00050593          	mv	a1,a0
    3b68:	00198993          	addi	s3,s3,1
    3b6c:	f71ff06f          	j	3adc <_read_sectors+0xb8>

00003b70 <fatfs_set_fs_info_next_free_cluster>:
    3b70:	03052783          	lw	a5,48(a0)
    3b74:	0a078863          	beqz	a5,3c24 <fatfs_set_fs_info_next_free_cluster+0xb4>
    3b78:	ff010113          	addi	sp,sp,-16
    3b7c:	01c52783          	lw	a5,28(a0)
    3b80:	01212023          	sw	s2,0(sp)
    3b84:	00058913          	mv	s2,a1
    3b88:	01855583          	lhu	a1,24(a0)
    3b8c:	00812423          	sw	s0,8(sp)
    3b90:	00912223          	sw	s1,4(sp)
    3b94:	00f585b3          	add	a1,a1,a5
    3b98:	00112623          	sw	ra,12(sp)
    3b9c:	00050493          	mv	s1,a0
    3ba0:	ffffe097          	auipc	ra,0xffffe
    3ba4:	e9c080e7          	jalr	-356(ra) # 1a3c <fatfs_fat_read_sector>
    3ba8:	00050413          	mv	s0,a0
    3bac:	06050063          	beqz	a0,3c0c <fatfs_set_fs_info_next_free_cluster+0x9c>
    3bb0:	20852783          	lw	a5,520(a0)
    3bb4:	00895713          	srli	a4,s2,0x8
    3bb8:	1f278623          	sb	s2,492(a5)
    3bbc:	20852783          	lw	a5,520(a0)
    3bc0:	1ee786a3          	sb	a4,493(a5)
    3bc4:	20852783          	lw	a5,520(a0)
    3bc8:	01095713          	srli	a4,s2,0x10
    3bcc:	1ee78723          	sb	a4,494(a5)
    3bd0:	20852783          	lw	a5,520(a0)
    3bd4:	01895713          	srli	a4,s2,0x18
    3bd8:	1ee787a3          	sb	a4,495(a5)
    3bdc:	00100793          	li	a5,1
    3be0:	20f52223          	sw	a5,516(a0)
    3be4:	0384a783          	lw	a5,56(s1)
    3be8:	0324a223          	sw	s2,36(s1)
    3bec:	00078a63          	beqz	a5,3c00 <fatfs_set_fs_info_next_free_cluster+0x90>
    3bf0:	00050593          	mv	a1,a0
    3bf4:	20052503          	lw	a0,512(a0)
    3bf8:	00100613          	li	a2,1
    3bfc:	000780e7          	jalr	a5
    3c00:	fff00793          	li	a5,-1
    3c04:	20f42023          	sw	a5,512(s0)
    3c08:	20042223          	sw	zero,516(s0)
    3c0c:	00c12083          	lw	ra,12(sp)
    3c10:	00812403          	lw	s0,8(sp)
    3c14:	00412483          	lw	s1,4(sp)
    3c18:	00012903          	lw	s2,0(sp)
    3c1c:	01010113          	addi	sp,sp,16
    3c20:	00008067          	ret
    3c24:	00008067          	ret

00003c28 <fatfs_find_blank_cluster>:
    3c28:	fe010113          	addi	sp,sp,-32
    3c2c:	01312623          	sw	s3,12(sp)
    3c30:	01512223          	sw	s5,4(sp)
    3c34:	000109b7          	lui	s3,0x10
    3c38:	10000ab7          	lui	s5,0x10000
    3c3c:	00912a23          	sw	s1,20(sp)
    3c40:	01212823          	sw	s2,16(sp)
    3c44:	01412423          	sw	s4,8(sp)
    3c48:	00112e23          	sw	ra,28(sp)
    3c4c:	00812c23          	sw	s0,24(sp)
    3c50:	00050913          	mv	s2,a0
    3c54:	00058493          	mv	s1,a1
    3c58:	00060a13          	mv	s4,a2
    3c5c:	fff98993          	addi	s3,s3,-1 # ffff <_fs+0x6503>
    3c60:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3c64:	03092783          	lw	a5,48(s2)
    3c68:	0074d413          	srli	s0,s1,0x7
    3c6c:	00079463          	bnez	a5,3c74 <fatfs_find_blank_cluster+0x4c>
    3c70:	0084d413          	srli	s0,s1,0x8
    3c74:	02092783          	lw	a5,32(s2)
    3c78:	08f47e63          	bgeu	s0,a5,3d14 <fatfs_find_blank_cluster+0xec>
    3c7c:	01492583          	lw	a1,20(s2)
    3c80:	00090513          	mv	a0,s2
    3c84:	00b405b3          	add	a1,s0,a1
    3c88:	ffffe097          	auipc	ra,0xffffe
    3c8c:	db4080e7          	jalr	-588(ra) # 1a3c <fatfs_fat_read_sector>
    3c90:	08050263          	beqz	a0,3d14 <fatfs_find_blank_cluster+0xec>
    3c94:	03092783          	lw	a5,48(s2)
    3c98:	20852703          	lw	a4,520(a0)
    3c9c:	02079a63          	bnez	a5,3cd0 <fatfs_find_blank_cluster+0xa8>
    3ca0:	00841413          	slli	s0,s0,0x8
    3ca4:	40848433          	sub	s0,s1,s0
    3ca8:	00141413          	slli	s0,s0,0x1
    3cac:	01347433          	and	s0,s0,s3
    3cb0:	00870733          	add	a4,a4,s0
    3cb4:	00174783          	lbu	a5,1(a4)
    3cb8:	00074703          	lbu	a4,0(a4)
    3cbc:	00879793          	slli	a5,a5,0x8
    3cc0:	00e787b3          	add	a5,a5,a4
    3cc4:	06078c63          	beqz	a5,3d3c <fatfs_find_blank_cluster+0x114>
    3cc8:	00148493          	addi	s1,s1,1
    3ccc:	f99ff06f          	j	3c64 <fatfs_find_blank_cluster+0x3c>
    3cd0:	00741413          	slli	s0,s0,0x7
    3cd4:	40848433          	sub	s0,s1,s0
    3cd8:	00241413          	slli	s0,s0,0x2
    3cdc:	01347433          	and	s0,s0,s3
    3ce0:	00870733          	add	a4,a4,s0
    3ce4:	00374783          	lbu	a5,3(a4)
    3ce8:	00274683          	lbu	a3,2(a4)
    3cec:	01879793          	slli	a5,a5,0x18
    3cf0:	01069693          	slli	a3,a3,0x10
    3cf4:	00d787b3          	add	a5,a5,a3
    3cf8:	00074683          	lbu	a3,0(a4)
    3cfc:	00174703          	lbu	a4,1(a4)
    3d00:	00d787b3          	add	a5,a5,a3
    3d04:	00871713          	slli	a4,a4,0x8
    3d08:	00e787b3          	add	a5,a5,a4
    3d0c:	0157f7b3          	and	a5,a5,s5
    3d10:	fb5ff06f          	j	3cc4 <fatfs_find_blank_cluster+0x9c>
    3d14:	00000513          	li	a0,0
    3d18:	01c12083          	lw	ra,28(sp)
    3d1c:	01812403          	lw	s0,24(sp)
    3d20:	01412483          	lw	s1,20(sp)
    3d24:	01012903          	lw	s2,16(sp)
    3d28:	00c12983          	lw	s3,12(sp)
    3d2c:	00812a03          	lw	s4,8(sp)
    3d30:	00412a83          	lw	s5,4(sp)
    3d34:	02010113          	addi	sp,sp,32
    3d38:	00008067          	ret
    3d3c:	009a2023          	sw	s1,0(s4)
    3d40:	00100513          	li	a0,1
    3d44:	fd5ff06f          	j	3d18 <fatfs_find_blank_cluster+0xf0>

00003d48 <fatfs_fat_set_cluster>:
    3d48:	03052783          	lw	a5,48(a0)
    3d4c:	fe010113          	addi	sp,sp,-32
    3d50:	00812c23          	sw	s0,24(sp)
    3d54:	00912a23          	sw	s1,20(sp)
    3d58:	01212823          	sw	s2,16(sp)
    3d5c:	01312623          	sw	s3,12(sp)
    3d60:	00112e23          	sw	ra,28(sp)
    3d64:	00050993          	mv	s3,a0
    3d68:	00058413          	mv	s0,a1
    3d6c:	00060493          	mv	s1,a2
    3d70:	0085d913          	srli	s2,a1,0x8
    3d74:	00078463          	beqz	a5,3d7c <fatfs_fat_set_cluster+0x34>
    3d78:	0075d913          	srli	s2,a1,0x7
    3d7c:	0149a583          	lw	a1,20(s3)
    3d80:	00098513          	mv	a0,s3
    3d84:	00b905b3          	add	a1,s2,a1
    3d88:	ffffe097          	auipc	ra,0xffffe
    3d8c:	cb4080e7          	jalr	-844(ra) # 1a3c <fatfs_fat_read_sector>
    3d90:	00050793          	mv	a5,a0
    3d94:	00000513          	li	a0,0
    3d98:	04078c63          	beqz	a5,3df0 <fatfs_fat_set_cluster+0xa8>
    3d9c:	0309a683          	lw	a3,48(s3)
    3da0:	2087a703          	lw	a4,520(a5)
    3da4:	0ff4f613          	zext.b	a2,s1
    3da8:	06069263          	bnez	a3,3e0c <fatfs_fat_set_cluster+0xc4>
    3dac:	00891913          	slli	s2,s2,0x8
    3db0:	41240433          	sub	s0,s0,s2
    3db4:	000106b7          	lui	a3,0x10
    3db8:	00141413          	slli	s0,s0,0x1
    3dbc:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6503>
    3dc0:	00d47433          	and	s0,s0,a3
    3dc4:	00870733          	add	a4,a4,s0
    3dc8:	00c70023          	sb	a2,0(a4)
    3dcc:	2087a703          	lw	a4,520(a5)
    3dd0:	01049493          	slli	s1,s1,0x10
    3dd4:	0104d493          	srli	s1,s1,0x10
    3dd8:	00870733          	add	a4,a4,s0
    3ddc:	0084d493          	srli	s1,s1,0x8
    3de0:	009700a3          	sb	s1,1(a4)
    3de4:	00100713          	li	a4,1
    3de8:	20e7a223          	sw	a4,516(a5)
    3dec:	00100513          	li	a0,1
    3df0:	01c12083          	lw	ra,28(sp)
    3df4:	01812403          	lw	s0,24(sp)
    3df8:	01412483          	lw	s1,20(sp)
    3dfc:	01012903          	lw	s2,16(sp)
    3e00:	00c12983          	lw	s3,12(sp)
    3e04:	02010113          	addi	sp,sp,32
    3e08:	00008067          	ret
    3e0c:	00791913          	slli	s2,s2,0x7
    3e10:	41240433          	sub	s0,s0,s2
    3e14:	000106b7          	lui	a3,0x10
    3e18:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6503>
    3e1c:	00241413          	slli	s0,s0,0x2
    3e20:	00d47433          	and	s0,s0,a3
    3e24:	00870733          	add	a4,a4,s0
    3e28:	00c70023          	sb	a2,0(a4)
    3e2c:	2087a703          	lw	a4,520(a5)
    3e30:	0084d693          	srli	a3,s1,0x8
    3e34:	00870733          	add	a4,a4,s0
    3e38:	00d700a3          	sb	a3,1(a4)
    3e3c:	2087a703          	lw	a4,520(a5)
    3e40:	0104d693          	srli	a3,s1,0x10
    3e44:	0184d493          	srli	s1,s1,0x18
    3e48:	00870733          	add	a4,a4,s0
    3e4c:	00d70123          	sb	a3,2(a4)
    3e50:	2087a703          	lw	a4,520(a5)
    3e54:	00870733          	add	a4,a4,s0
    3e58:	009701a3          	sb	s1,3(a4)
    3e5c:	f89ff06f          	j	3de4 <fatfs_fat_set_cluster+0x9c>

00003e60 <fatfs_free_cluster_chain>:
    3e60:	fe010113          	addi	sp,sp,-32
    3e64:	00812c23          	sw	s0,24(sp)
    3e68:	01212823          	sw	s2,16(sp)
    3e6c:	00112e23          	sw	ra,28(sp)
    3e70:	00912a23          	sw	s1,20(sp)
    3e74:	00050413          	mv	s0,a0
    3e78:	ffd00913          	li	s2,-3
    3e7c:	fff58793          	addi	a5,a1,-1
    3e80:	02f97063          	bgeu	s2,a5,3ea0 <fatfs_free_cluster_chain+0x40>
    3e84:	01c12083          	lw	ra,28(sp)
    3e88:	01812403          	lw	s0,24(sp)
    3e8c:	01412483          	lw	s1,20(sp)
    3e90:	01012903          	lw	s2,16(sp)
    3e94:	00100513          	li	a0,1
    3e98:	02010113          	addi	sp,sp,32
    3e9c:	00008067          	ret
    3ea0:	00040513          	mv	a0,s0
    3ea4:	00b12623          	sw	a1,12(sp)
    3ea8:	fffff097          	auipc	ra,0xfffff
    3eac:	ee8080e7          	jalr	-280(ra) # 2d90 <fatfs_find_next_cluster>
    3eb0:	00c12583          	lw	a1,12(sp)
    3eb4:	00050493          	mv	s1,a0
    3eb8:	00000613          	li	a2,0
    3ebc:	00040513          	mv	a0,s0
    3ec0:	00000097          	auipc	ra,0x0
    3ec4:	e88080e7          	jalr	-376(ra) # 3d48 <fatfs_fat_set_cluster>
    3ec8:	00048593          	mv	a1,s1
    3ecc:	fb1ff06f          	j	3e7c <fatfs_free_cluster_chain+0x1c>

00003ed0 <fatfs_fat_add_cluster_to_chain>:
    3ed0:	fff00793          	li	a5,-1
    3ed4:	02f59463          	bne	a1,a5,3efc <fatfs_fat_add_cluster_to_chain+0x2c>
    3ed8:	00000513          	li	a0,0
    3edc:	00008067          	ret
    3ee0:	00000513          	li	a0,0
    3ee4:	01c12083          	lw	ra,28(sp)
    3ee8:	01812403          	lw	s0,24(sp)
    3eec:	01412483          	lw	s1,20(sp)
    3ef0:	01012903          	lw	s2,16(sp)
    3ef4:	02010113          	addi	sp,sp,32
    3ef8:	00008067          	ret
    3efc:	fe010113          	addi	sp,sp,-32
    3f00:	00812c23          	sw	s0,24(sp)
    3f04:	00912a23          	sw	s1,20(sp)
    3f08:	01212823          	sw	s2,16(sp)
    3f0c:	00050413          	mv	s0,a0
    3f10:	00112e23          	sw	ra,28(sp)
    3f14:	00058513          	mv	a0,a1
    3f18:	00060493          	mv	s1,a2
    3f1c:	fff00913          	li	s2,-1
    3f20:	00050593          	mv	a1,a0
    3f24:	00a12623          	sw	a0,12(sp)
    3f28:	00040513          	mv	a0,s0
    3f2c:	fffff097          	auipc	ra,0xfffff
    3f30:	e64080e7          	jalr	-412(ra) # 2d90 <fatfs_find_next_cluster>
    3f34:	fa0506e3          	beqz	a0,3ee0 <fatfs_fat_add_cluster_to_chain+0x10>
    3f38:	00c12583          	lw	a1,12(sp)
    3f3c:	ff2512e3          	bne	a0,s2,3f20 <fatfs_fat_add_cluster_to_chain+0x50>
    3f40:	00048613          	mv	a2,s1
    3f44:	00040513          	mv	a0,s0
    3f48:	00000097          	auipc	ra,0x0
    3f4c:	e00080e7          	jalr	-512(ra) # 3d48 <fatfs_fat_set_cluster>
    3f50:	fff00613          	li	a2,-1
    3f54:	00048593          	mv	a1,s1
    3f58:	00040513          	mv	a0,s0
    3f5c:	00000097          	auipc	ra,0x0
    3f60:	dec080e7          	jalr	-532(ra) # 3d48 <fatfs_fat_set_cluster>
    3f64:	00100513          	li	a0,1
    3f68:	f7dff06f          	j	3ee4 <fatfs_fat_add_cluster_to_chain+0x14>

00003f6c <fatfs_add_free_space>:
    3f6c:	02452703          	lw	a4,36(a0)
    3f70:	fd010113          	addi	sp,sp,-48
    3f74:	02812423          	sw	s0,40(sp)
    3f78:	03212023          	sw	s2,32(sp)
    3f7c:	01412c23          	sw	s4,24(sp)
    3f80:	01512a23          	sw	s5,20(sp)
    3f84:	02112623          	sw	ra,44(sp)
    3f88:	02912223          	sw	s1,36(sp)
    3f8c:	01312e23          	sw	s3,28(sp)
    3f90:	fff00793          	li	a5,-1
    3f94:	0005aa83          	lw	s5,0(a1)
    3f98:	00050413          	mv	s0,a0
    3f9c:	00058913          	mv	s2,a1
    3fa0:	00060a13          	mv	s4,a2
    3fa4:	00f70863          	beq	a4,a5,3fb4 <fatfs_add_free_space+0x48>
    3fa8:	fff00593          	li	a1,-1
    3fac:	00000097          	auipc	ra,0x0
    3fb0:	bc4080e7          	jalr	-1084(ra) # 3b70 <fatfs_set_fs_info_next_free_cluster>
    3fb4:	00000493          	li	s1,0
    3fb8:	03449663          	bne	s1,s4,3fe4 <fatfs_add_free_space+0x78>
    3fbc:	00100513          	li	a0,1
    3fc0:	02c12083          	lw	ra,44(sp)
    3fc4:	02812403          	lw	s0,40(sp)
    3fc8:	02412483          	lw	s1,36(sp)
    3fcc:	02012903          	lw	s2,32(sp)
    3fd0:	01c12983          	lw	s3,28(sp)
    3fd4:	01812a03          	lw	s4,24(sp)
    3fd8:	01412a83          	lw	s5,20(sp)
    3fdc:	03010113          	addi	sp,sp,48
    3fe0:	00008067          	ret
    3fe4:	00842583          	lw	a1,8(s0)
    3fe8:	00c10613          	addi	a2,sp,12
    3fec:	00040513          	mv	a0,s0
    3ff0:	00000097          	auipc	ra,0x0
    3ff4:	c38080e7          	jalr	-968(ra) # 3c28 <fatfs_find_blank_cluster>
    3ff8:	fc0504e3          	beqz	a0,3fc0 <fatfs_add_free_space+0x54>
    3ffc:	00c12983          	lw	s3,12(sp)
    4000:	000a8593          	mv	a1,s5
    4004:	00040513          	mv	a0,s0
    4008:	00098613          	mv	a2,s3
    400c:	00000097          	auipc	ra,0x0
    4010:	d3c080e7          	jalr	-708(ra) # 3d48 <fatfs_fat_set_cluster>
    4014:	fff00613          	li	a2,-1
    4018:	00098593          	mv	a1,s3
    401c:	00040513          	mv	a0,s0
    4020:	00000097          	auipc	ra,0x0
    4024:	d28080e7          	jalr	-728(ra) # 3d48 <fatfs_fat_set_cluster>
    4028:	00049463          	bnez	s1,4030 <fatfs_add_free_space+0xc4>
    402c:	01392023          	sw	s3,0(s2)
    4030:	00148493          	addi	s1,s1,1
    4034:	00098a93          	mv	s5,s3
    4038:	f81ff06f          	j	3fb8 <fatfs_add_free_space+0x4c>

0000403c <_write_sectors>:
    403c:	fb010113          	addi	sp,sp,-80
    4040:	03312e23          	sw	s3,60(sp)
    4044:	0000a9b7          	lui	s3,0xa
    4048:	03612823          	sw	s6,48(sp)
    404c:	afc9cb03          	lbu	s6,-1284(s3) # 9afc <_fs>
    4050:	03512a23          	sw	s5,52(sp)
    4054:	00058a93          	mv	s5,a1
    4058:	fff00793          	li	a5,-1
    405c:	04812423          	sw	s0,72(sp)
    4060:	000b0593          	mv	a1,s6
    4064:	00050413          	mv	s0,a0
    4068:	000a8513          	mv	a0,s5
    406c:	00f12e23          	sw	a5,28(sp)
    4070:	04112623          	sw	ra,76(sp)
    4074:	04912223          	sw	s1,68(sp)
    4078:	05212023          	sw	s2,64(sp)
    407c:	03712623          	sw	s7,44(sp)
    4080:	03812423          	sw	s8,40(sp)
    4084:	00068b93          	mv	s7,a3
    4088:	03912223          	sw	s9,36(sp)
    408c:	03a12023          	sw	s10,32(sp)
    4090:	00060c93          	mv	s9,a2
    4094:	03412c23          	sw	s4,56(sp)
    4098:	ffffd097          	auipc	ra,0xffffd
    409c:	ef8080e7          	jalr	-264(ra) # f90 <__udivsi3>
    40a0:	00050493          	mv	s1,a0
    40a4:	000b0593          	mv	a1,s6
    40a8:	000a8513          	mv	a0,s5
    40ac:	ffffd097          	auipc	ra,0xffffd
    40b0:	f2c080e7          	jalr	-212(ra) # fd8 <__umodsi3>
    40b4:	00ab87b3          	add	a5,s7,a0
    40b8:	00050c13          	mv	s8,a0
    40bc:	afc98d13          	addi	s10,s3,-1284
    40c0:	000b8913          	mv	s2,s7
    40c4:	00fb7e63          	bgeu	s6,a5,40e0 <_write_sectors+0xa4>
    40c8:	00048593          	mv	a1,s1
    40cc:	000b0513          	mv	a0,s6
    40d0:	ffffd097          	auipc	ra,0xffffd
    40d4:	7b4080e7          	jalr	1972(ra) # 1884 <__mulsi3>
    40d8:	415b07b3          	sub	a5,s6,s5
    40dc:	00f50933          	add	s2,a0,a5
    40e0:	22842a03          	lw	s4,552(s0)
    40e4:	069a1663          	bne	s4,s1,4150 <_write_sectors+0x114>
    40e8:	22c42583          	lw	a1,556(s0)
    40ec:	afc98513          	addi	a0,s3,-1284
    40f0:	ffffe097          	auipc	ra,0xffffe
    40f4:	af4080e7          	jalr	-1292(ra) # 1be4 <fatfs_lba_of_cluster>
    40f8:	018505b3          	add	a1,a0,s8
    40fc:	00090693          	mv	a3,s2
    4100:	000c8613          	mv	a2,s9
    4104:	afc98513          	addi	a0,s3,-1284
    4108:	ffffe097          	auipc	ra,0xffffe
    410c:	b44080e7          	jalr	-1212(ra) # 1c4c <fatfs_sector_write>
    4110:	0c050063          	beqz	a0,41d0 <_write_sectors+0x194>
    4114:	04c12083          	lw	ra,76(sp)
    4118:	04812403          	lw	s0,72(sp)
    411c:	04412483          	lw	s1,68(sp)
    4120:	03c12983          	lw	s3,60(sp)
    4124:	03812a03          	lw	s4,56(sp)
    4128:	03412a83          	lw	s5,52(sp)
    412c:	03012b03          	lw	s6,48(sp)
    4130:	02c12b83          	lw	s7,44(sp)
    4134:	02812c03          	lw	s8,40(sp)
    4138:	02412c83          	lw	s9,36(sp)
    413c:	02012d03          	lw	s10,32(sp)
    4140:	00090513          	mv	a0,s2
    4144:	04012903          	lw	s2,64(sp)
    4148:	05010113          	addi	sp,sp,80
    414c:	00008067          	ret
    4150:	036ae663          	bltu	s5,s6,417c <_write_sectors+0x140>
    4154:	001a0793          	addi	a5,s4,1
    4158:	02979263          	bne	a5,s1,417c <_write_sectors+0x140>
    415c:	22c42583          	lw	a1,556(s0)
    4160:	fff00a93          	li	s5,-1
    4164:	029a6263          	bltu	s4,s1,4188 <_write_sectors+0x14c>
    4168:	fff00793          	li	a5,-1
    416c:	02f58c63          	beq	a1,a5,41a4 <_write_sectors+0x168>
    4170:	22b42623          	sw	a1,556(s0)
    4174:	22942423          	sw	s1,552(s0)
    4178:	f75ff06f          	j	40ec <_write_sectors+0xb0>
    417c:	00442583          	lw	a1,4(s0)
    4180:	00000a13          	li	s4,0
    4184:	fddff06f          	j	4160 <_write_sectors+0x124>
    4188:	afc98513          	addi	a0,s3,-1284
    418c:	00b12623          	sw	a1,12(sp)
    4190:	fffff097          	auipc	ra,0xfffff
    4194:	c00080e7          	jalr	-1024(ra) # 2d90 <fatfs_find_next_cluster>
    4198:	00c12583          	lw	a1,12(sp)
    419c:	00b12e23          	sw	a1,28(sp)
    41a0:	03551c63          	bne	a0,s5,41d8 <_write_sectors+0x19c>
    41a4:	000d4583          	lbu	a1,0(s10)
    41a8:	fff58513          	addi	a0,a1,-1
    41ac:	01750533          	add	a0,a0,s7
    41b0:	ffffd097          	auipc	ra,0xffffd
    41b4:	de0080e7          	jalr	-544(ra) # f90 <__udivsi3>
    41b8:	00050613          	mv	a2,a0
    41bc:	01c10593          	addi	a1,sp,28
    41c0:	afc98513          	addi	a0,s3,-1284
    41c4:	00000097          	auipc	ra,0x0
    41c8:	da8080e7          	jalr	-600(ra) # 3f6c <fatfs_add_free_space>
    41cc:	00051c63          	bnez	a0,41e4 <_write_sectors+0x1a8>
    41d0:	00000913          	li	s2,0
    41d4:	f41ff06f          	j	4114 <_write_sectors+0xd8>
    41d8:	001a0a13          	addi	s4,s4,1
    41dc:	00050593          	mv	a1,a0
    41e0:	f85ff06f          	j	4164 <_write_sectors+0x128>
    41e4:	01c12583          	lw	a1,28(sp)
    41e8:	f89ff06f          	j	4170 <_write_sectors+0x134>

000041ec <fl_fflush>:
    41ec:	000057b7          	lui	a5,0x5
    41f0:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    41f4:	ff010113          	addi	sp,sp,-16
    41f8:	00812423          	sw	s0,8(sp)
    41fc:	00112623          	sw	ra,12(sp)
    4200:	00912223          	sw	s1,4(sp)
    4204:	00050413          	mv	s0,a0
    4208:	00079663          	bnez	a5,4214 <fl_fflush+0x28>
    420c:	ffffe097          	auipc	ra,0xffffe
    4210:	b14080e7          	jalr	-1260(ra) # 1d20 <fl_init>
    4214:	04040863          	beqz	s0,4264 <fl_fflush+0x78>
    4218:	0000a7b7          	lui	a5,0xa
    421c:	afc78713          	addi	a4,a5,-1284 # 9afc <_fs>
    4220:	03c72703          	lw	a4,60(a4)
    4224:	afc78493          	addi	s1,a5,-1284
    4228:	00070463          	beqz	a4,4230 <fl_fflush+0x44>
    422c:	000700e7          	jalr	a4
    4230:	43442783          	lw	a5,1076(s0)
    4234:	02078263          	beqz	a5,4258 <fl_fflush+0x6c>
    4238:	43042583          	lw	a1,1072(s0)
    423c:	00100693          	li	a3,1
    4240:	23040613          	addi	a2,s0,560
    4244:	00040513          	mv	a0,s0
    4248:	00000097          	auipc	ra,0x0
    424c:	df4080e7          	jalr	-524(ra) # 403c <_write_sectors>
    4250:	00050463          	beqz	a0,4258 <fl_fflush+0x6c>
    4254:	42042a23          	sw	zero,1076(s0)
    4258:	0404a783          	lw	a5,64(s1)
    425c:	00078463          	beqz	a5,4264 <fl_fflush+0x78>
    4260:	000780e7          	jalr	a5
    4264:	00c12083          	lw	ra,12(sp)
    4268:	00812403          	lw	s0,8(sp)
    426c:	00412483          	lw	s1,4(sp)
    4270:	00000513          	li	a0,0
    4274:	01010113          	addi	sp,sp,16
    4278:	00008067          	ret

0000427c <fl_fclose>:
    427c:	000057b7          	lui	a5,0x5
    4280:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    4284:	ff010113          	addi	sp,sp,-16
    4288:	00812423          	sw	s0,8(sp)
    428c:	00112623          	sw	ra,12(sp)
    4290:	00912223          	sw	s1,4(sp)
    4294:	01212023          	sw	s2,0(sp)
    4298:	00050413          	mv	s0,a0
    429c:	00079663          	bnez	a5,42a8 <fl_fclose+0x2c>
    42a0:	ffffe097          	auipc	ra,0xffffe
    42a4:	a80080e7          	jalr	-1408(ra) # 1d20 <fl_init>
    42a8:	08040e63          	beqz	s0,4344 <fl_fclose+0xc8>
    42ac:	0000a4b7          	lui	s1,0xa
    42b0:	afc48793          	addi	a5,s1,-1284 # 9afc <_fs>
    42b4:	03c7a783          	lw	a5,60(a5)
    42b8:	afc48913          	addi	s2,s1,-1284
    42bc:	00078463          	beqz	a5,42c4 <fl_fclose+0x48>
    42c0:	000780e7          	jalr	a5
    42c4:	00040513          	mv	a0,s0
    42c8:	00000097          	auipc	ra,0x0
    42cc:	f24080e7          	jalr	-220(ra) # 41ec <fl_fflush>
    42d0:	01042783          	lw	a5,16(s0)
    42d4:	00078e63          	beqz	a5,42f0 <fl_fclose+0x74>
    42d8:	00c42683          	lw	a3,12(s0)
    42dc:	00042583          	lw	a1,0(s0)
    42e0:	21c40613          	addi	a2,s0,540
    42e4:	afc48513          	addi	a0,s1,-1284
    42e8:	fffff097          	auipc	ra,0xfffff
    42ec:	300080e7          	jalr	768(ra) # 35e8 <fatfs_update_file_length>
    42f0:	fff00793          	li	a5,-1
    42f4:	42f42823          	sw	a5,1072(s0)
    42f8:	00040513          	mv	a0,s0
    42fc:	00042423          	sw	zero,8(s0)
    4300:	00042623          	sw	zero,12(s0)
    4304:	00042223          	sw	zero,4(s0)
    4308:	42042a23          	sw	zero,1076(s0)
    430c:	00042823          	sw	zero,16(s0)
    4310:	ffffe097          	auipc	ra,0xffffe
    4314:	88c080e7          	jalr	-1908(ra) # 1b9c <_free_file>
    4318:	afc48513          	addi	a0,s1,-1284
    431c:	fffff097          	auipc	ra,0xfffff
    4320:	a18080e7          	jalr	-1512(ra) # 2d34 <fatfs_fat_purge>
    4324:	04092783          	lw	a5,64(s2)
    4328:	00078e63          	beqz	a5,4344 <fl_fclose+0xc8>
    432c:	00812403          	lw	s0,8(sp)
    4330:	00c12083          	lw	ra,12(sp)
    4334:	00412483          	lw	s1,4(sp)
    4338:	00012903          	lw	s2,0(sp)
    433c:	01010113          	addi	sp,sp,16
    4340:	00078067          	jr	a5
    4344:	00c12083          	lw	ra,12(sp)
    4348:	00812403          	lw	s0,8(sp)
    434c:	00412483          	lw	s1,4(sp)
    4350:	00012903          	lw	s2,0(sp)
    4354:	01010113          	addi	sp,sp,16
    4358:	00008067          	ret

0000435c <fl_fread>:
    435c:	fd010113          	addi	sp,sp,-48
    4360:	01512a23          	sw	s5,20(sp)
    4364:	00050a93          	mv	s5,a0
    4368:	00058513          	mv	a0,a1
    436c:	00060593          	mv	a1,a2
    4370:	02812423          	sw	s0,40(sp)
    4374:	02912223          	sw	s1,36(sp)
    4378:	02112623          	sw	ra,44(sp)
    437c:	03212023          	sw	s2,32(sp)
    4380:	01312e23          	sw	s3,28(sp)
    4384:	01412c23          	sw	s4,24(sp)
    4388:	01612823          	sw	s6,16(sp)
    438c:	01712623          	sw	s7,12(sp)
    4390:	01812423          	sw	s8,8(sp)
    4394:	01912223          	sw	s9,4(sp)
    4398:	00068493          	mv	s1,a3
    439c:	ffffd097          	auipc	ra,0xffffd
    43a0:	4e8080e7          	jalr	1256(ra) # 1884 <__mulsi3>
    43a4:	000057b7          	lui	a5,0x5
    43a8:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    43ac:	00050413          	mv	s0,a0
    43b0:	00079663          	bnez	a5,43bc <fl_fread+0x60>
    43b4:	ffffe097          	auipc	ra,0xffffe
    43b8:	96c080e7          	jalr	-1684(ra) # 1d20 <fl_init>
    43bc:	120a8e63          	beqz	s5,44f8 <fl_fread+0x19c>
    43c0:	12048c63          	beqz	s1,44f8 <fl_fread+0x19c>
    43c4:	4384c783          	lbu	a5,1080(s1)
    43c8:	0017f793          	andi	a5,a5,1
    43cc:	12078663          	beqz	a5,44f8 <fl_fread+0x19c>
    43d0:	02040e63          	beqz	s0,440c <fl_fread+0xb0>
    43d4:	0084a583          	lw	a1,8(s1)
    43d8:	00c4a783          	lw	a5,12(s1)
    43dc:	10f5fe63          	bgeu	a1,a5,44f8 <fl_fread+0x19c>
    43e0:	00b40733          	add	a4,s0,a1
    43e4:	00040b13          	mv	s6,s0
    43e8:	00e7f463          	bgeu	a5,a4,43f0 <fl_fread+0x94>
    43ec:	40b78b33          	sub	s6,a5,a1
    43f0:	0095d993          	srli	s3,a1,0x9
    43f4:	1ff5f913          	andi	s2,a1,511
    43f8:	00000413          	li	s0,0
    43fc:	23048b93          	addi	s7,s1,560
    4400:	20000c13          	li	s8,512
    4404:	1ff00c93          	li	s9,511
    4408:	03644e63          	blt	s0,s6,4444 <fl_fread+0xe8>
    440c:	02c12083          	lw	ra,44(sp)
    4410:	00040513          	mv	a0,s0
    4414:	02812403          	lw	s0,40(sp)
    4418:	02412483          	lw	s1,36(sp)
    441c:	02012903          	lw	s2,32(sp)
    4420:	01c12983          	lw	s3,28(sp)
    4424:	01812a03          	lw	s4,24(sp)
    4428:	01412a83          	lw	s5,20(sp)
    442c:	01012b03          	lw	s6,16(sp)
    4430:	00c12b83          	lw	s7,12(sp)
    4434:	00812c03          	lw	s8,8(sp)
    4438:	00412c83          	lw	s9,4(sp)
    443c:	03010113          	addi	sp,sp,48
    4440:	00008067          	ret
    4444:	04091463          	bnez	s2,448c <fl_fread+0x130>
    4448:	408b06b3          	sub	a3,s6,s0
    444c:	04dcd063          	bge	s9,a3,448c <fl_fread+0x130>
    4450:	4096d693          	srai	a3,a3,0x9
    4454:	008a8633          	add	a2,s5,s0
    4458:	00098593          	mv	a1,s3
    445c:	00048513          	mv	a0,s1
    4460:	fffff097          	auipc	ra,0xfffff
    4464:	5c4080e7          	jalr	1476(ra) # 3a24 <_read_sectors>
    4468:	fa0502e3          	beqz	a0,440c <fl_fread+0xb0>
    446c:	00951a13          	slli	s4,a0,0x9
    4470:	00a989b3          	add	s3,s3,a0
    4474:	0084a783          	lw	a5,8(s1)
    4478:	01440433          	add	s0,s0,s4
    447c:	00000913          	li	s2,0
    4480:	014787b3          	add	a5,a5,s4
    4484:	00f4a423          	sw	a5,8(s1)
    4488:	f81ff06f          	j	4408 <fl_fread+0xac>
    448c:	4304a783          	lw	a5,1072(s1)
    4490:	03378e63          	beq	a5,s3,44cc <fl_fread+0x170>
    4494:	4344a783          	lw	a5,1076(s1)
    4498:	00078863          	beqz	a5,44a8 <fl_fread+0x14c>
    449c:	00048513          	mv	a0,s1
    44a0:	00000097          	auipc	ra,0x0
    44a4:	d4c080e7          	jalr	-692(ra) # 41ec <fl_fflush>
    44a8:	00100693          	li	a3,1
    44ac:	000b8613          	mv	a2,s7
    44b0:	00098593          	mv	a1,s3
    44b4:	00048513          	mv	a0,s1
    44b8:	fffff097          	auipc	ra,0xfffff
    44bc:	56c080e7          	jalr	1388(ra) # 3a24 <_read_sectors>
    44c0:	f40506e3          	beqz	a0,440c <fl_fread+0xb0>
    44c4:	4334a823          	sw	s3,1072(s1)
    44c8:	4204aa23          	sw	zero,1076(s1)
    44cc:	412c07b3          	sub	a5,s8,s2
    44d0:	408b0a33          	sub	s4,s6,s0
    44d4:	0147d463          	bge	a5,s4,44dc <fl_fread+0x180>
    44d8:	00078a13          	mv	s4,a5
    44dc:	000a0613          	mv	a2,s4
    44e0:	012b85b3          	add	a1,s7,s2
    44e4:	008a8533          	add	a0,s5,s0
    44e8:	ffffd097          	auipc	ra,0xffffd
    44ec:	b70080e7          	jalr	-1168(ra) # 1058 <memcpy>
    44f0:	00198993          	addi	s3,s3,1
    44f4:	f81ff06f          	j	4474 <fl_fread+0x118>
    44f8:	fff00413          	li	s0,-1
    44fc:	f11ff06f          	j	440c <fl_fread+0xb0>

00004500 <fatfs_allocate_free_space.part.0>:
    4500:	02452703          	lw	a4,36(a0)
    4504:	fd010113          	addi	sp,sp,-48
    4508:	02812423          	sw	s0,40(sp)
    450c:	03212023          	sw	s2,32(sp)
    4510:	01312e23          	sw	s3,28(sp)
    4514:	01512a23          	sw	s5,20(sp)
    4518:	02112623          	sw	ra,44(sp)
    451c:	02912223          	sw	s1,36(sp)
    4520:	01412c23          	sw	s4,24(sp)
    4524:	fff00793          	li	a5,-1
    4528:	00050413          	mv	s0,a0
    452c:	00058a93          	mv	s5,a1
    4530:	00060913          	mv	s2,a2
    4534:	00068993          	mv	s3,a3
    4538:	00f70863          	beq	a4,a5,4548 <fatfs_allocate_free_space.part.0+0x48>
    453c:	fff00593          	li	a1,-1
    4540:	fffff097          	auipc	ra,0xfffff
    4544:	630080e7          	jalr	1584(ra) # 3b70 <fatfs_set_fs_info_next_free_cluster>
    4548:	00044a03          	lbu	s4,0(s0)
    454c:	00098513          	mv	a0,s3
    4550:	009a1a13          	slli	s4,s4,0x9
    4554:	000a0593          	mv	a1,s4
    4558:	ffffd097          	auipc	ra,0xffffd
    455c:	a38080e7          	jalr	-1480(ra) # f90 <__udivsi3>
    4560:	00050493          	mv	s1,a0
    4564:	00050593          	mv	a1,a0
    4568:	000a0513          	mv	a0,s4
    456c:	ffffd097          	auipc	ra,0xffffd
    4570:	318080e7          	jalr	792(ra) # 1884 <__mulsi3>
    4574:	00a98463          	beq	s3,a0,457c <fatfs_allocate_free_space.part.0+0x7c>
    4578:	00148493          	addi	s1,s1,1
    457c:	060a8463          	beqz	s5,45e4 <fatfs_allocate_free_space.part.0+0xe4>
    4580:	00842583          	lw	a1,8(s0)
    4584:	00c10613          	addi	a2,sp,12
    4588:	00040513          	mv	a0,s0
    458c:	fffff097          	auipc	ra,0xfffff
    4590:	69c080e7          	jalr	1692(ra) # 3c28 <fatfs_find_blank_cluster>
    4594:	02050663          	beqz	a0,45c0 <fatfs_allocate_free_space.part.0+0xc0>
    4598:	00100793          	li	a5,1
    459c:	04f49863          	bne	s1,a5,45ec <fatfs_allocate_free_space.part.0+0xec>
    45a0:	00c12483          	lw	s1,12(sp)
    45a4:	fff00613          	li	a2,-1
    45a8:	00040513          	mv	a0,s0
    45ac:	00048593          	mv	a1,s1
    45b0:	fffff097          	auipc	ra,0xfffff
    45b4:	798080e7          	jalr	1944(ra) # 3d48 <fatfs_fat_set_cluster>
    45b8:	00100513          	li	a0,1
    45bc:	00992023          	sw	s1,0(s2)
    45c0:	02c12083          	lw	ra,44(sp)
    45c4:	02812403          	lw	s0,40(sp)
    45c8:	02412483          	lw	s1,36(sp)
    45cc:	02012903          	lw	s2,32(sp)
    45d0:	01c12983          	lw	s3,28(sp)
    45d4:	01812a03          	lw	s4,24(sp)
    45d8:	01412a83          	lw	s5,20(sp)
    45dc:	03010113          	addi	sp,sp,48
    45e0:	00008067          	ret
    45e4:	00092783          	lw	a5,0(s2)
    45e8:	00f12623          	sw	a5,12(sp)
    45ec:	00048613          	mv	a2,s1
    45f0:	00c10593          	addi	a1,sp,12
    45f4:	00040513          	mv	a0,s0
    45f8:	00000097          	auipc	ra,0x0
    45fc:	974080e7          	jalr	-1676(ra) # 3f6c <fatfs_add_free_space>
    4600:	00a03533          	snez	a0,a0
    4604:	fbdff06f          	j	45c0 <fatfs_allocate_free_space.part.0+0xc0>

00004608 <fatfs_add_file_entry>:
    4608:	f8010113          	addi	sp,sp,-128
    460c:	00f12823          	sw	a5,16(sp)
    4610:	03852783          	lw	a5,56(a0)
    4614:	06112e23          	sw	ra,124(sp)
    4618:	06812c23          	sw	s0,120(sp)
    461c:	06912a23          	sw	s1,116(sp)
    4620:	07212823          	sw	s2,112(sp)
    4624:	07312623          	sw	s3,108(sp)
    4628:	07412423          	sw	s4,104(sp)
    462c:	07512223          	sw	s5,100(sp)
    4630:	07612023          	sw	s6,96(sp)
    4634:	05712e23          	sw	s7,92(sp)
    4638:	05812c23          	sw	s8,88(sp)
    463c:	05912a23          	sw	s9,84(sp)
    4640:	05a12823          	sw	s10,80(sp)
    4644:	05b12623          	sw	s11,76(sp)
    4648:	00e12623          	sw	a4,12(sp)
    464c:	01012a23          	sw	a6,20(sp)
    4650:	04079463          	bnez	a5,4698 <fatfs_add_file_entry+0x90>
    4654:	00000913          	li	s2,0
    4658:	07c12083          	lw	ra,124(sp)
    465c:	07812403          	lw	s0,120(sp)
    4660:	07412483          	lw	s1,116(sp)
    4664:	06c12983          	lw	s3,108(sp)
    4668:	06812a03          	lw	s4,104(sp)
    466c:	06412a83          	lw	s5,100(sp)
    4670:	06012b03          	lw	s6,96(sp)
    4674:	05c12b83          	lw	s7,92(sp)
    4678:	05812c03          	lw	s8,88(sp)
    467c:	05412c83          	lw	s9,84(sp)
    4680:	05012d03          	lw	s10,80(sp)
    4684:	04c12d83          	lw	s11,76(sp)
    4688:	00090513          	mv	a0,s2
    468c:	07012903          	lw	s2,112(sp)
    4690:	08010113          	addi	sp,sp,128
    4694:	00008067          	ret
    4698:	00050413          	mv	s0,a0
    469c:	00060513          	mv	a0,a2
    46a0:	00058b13          	mv	s6,a1
    46a4:	00060c93          	mv	s9,a2
    46a8:	00068b93          	mv	s7,a3
    46ac:	ffffe097          	auipc	ra,0xffffe
    46b0:	8e4080e7          	jalr	-1820(ra) # 1f90 <fatfs_lfn_entries_required>
    46b4:	00150713          	addi	a4,a0,1
    46b8:	00100793          	li	a5,1
    46bc:	00050493          	mv	s1,a0
    46c0:	f8e7fae3          	bgeu	a5,a4,4654 <fatfs_add_file_entry+0x4c>
    46c4:	00000993          	li	s3,0
    46c8:	00000a93          	li	s5,0
    46cc:	00000a13          	li	s4,0
    46d0:	00000c13          	li	s8,0
    46d4:	00000d13          	li	s10,0
    46d8:	01000d93          	li	s11,16
    46dc:	00000693          	li	a3,0
    46e0:	00098613          	mv	a2,s3
    46e4:	000b0593          	mv	a1,s6
    46e8:	00040513          	mv	a0,s0
    46ec:	ffffe097          	auipc	ra,0xffffe
    46f0:	7b4080e7          	jalr	1972(ra) # 2ea0 <fatfs_sector_reader>
    46f4:	00050913          	mv	s2,a0
    46f8:	14050a63          	beqz	a0,484c <fatfs_add_file_entry+0x244>
    46fc:	04440693          	addi	a3,s0,68
    4700:	000d0913          	mv	s2,s10
    4704:	00000713          	li	a4,0
    4708:	00068513          	mv	a0,a3
    470c:	00e12e23          	sw	a4,28(sp)
    4710:	00d12c23          	sw	a3,24(sp)
    4714:	ffffd097          	auipc	ra,0xffffd
    4718:	78c080e7          	jalr	1932(ra) # 1ea0 <fatfs_entry_lfn_text>
    471c:	01812683          	lw	a3,24(sp)
    4720:	01c12703          	lw	a4,28(sp)
    4724:	00050d13          	mv	s10,a0
    4728:	02050c63          	beqz	a0,4760 <fatfs_add_file_entry+0x158>
    472c:	00091863          	bnez	s2,473c <fatfs_add_file_entry+0x134>
    4730:	00070a93          	mv	s5,a4
    4734:	00098a13          	mv	s4,s3
    4738:	00100c13          	li	s8,1
    473c:	00190d13          	addi	s10,s2,1
    4740:	00170713          	addi	a4,a4,1
    4744:	0ff77713          	zext.b	a4,a4
    4748:	02068693          	addi	a3,a3,32
    474c:	01b71663          	bne	a4,s11,4758 <fatfs_add_file_entry+0x150>
    4750:	00198993          	addi	s3,s3,1
    4754:	f89ff06f          	j	46dc <fatfs_add_file_entry+0xd4>
    4758:	000d0913          	mv	s2,s10
    475c:	fadff06f          	j	4708 <fatfs_add_file_entry+0x100>
    4760:	0006c603          	lbu	a2,0(a3)
    4764:	0e500793          	li	a5,229
    4768:	0cf61c63          	bne	a2,a5,4840 <fatfs_add_file_entry+0x238>
    476c:	00091863          	bnez	s2,477c <fatfs_add_file_entry+0x174>
    4770:	00070a93          	mv	s5,a4
    4774:	00098a13          	mv	s4,s3
    4778:	00100c13          	li	s8,1
    477c:	00190d13          	addi	s10,s2,1
    4780:	fc9940e3          	blt	s2,s1,4740 <fatfs_add_file_entry+0x138>
    4784:	00bb8713          	addi	a4,s7,11
    4788:	000b8793          	mv	a5,s7
    478c:	00000913          	li	s2,0
    4790:	0007c603          	lbu	a2,0(a5)
    4794:	00791693          	slli	a3,s2,0x7
    4798:	00195913          	srli	s2,s2,0x1
    479c:	00c90933          	add	s2,s2,a2
    47a0:	00178793          	addi	a5,a5,1
    47a4:	00d90933          	add	s2,s2,a3
    47a8:	0ff97913          	zext.b	s2,s2
    47ac:	fee792e3          	bne	a5,a4,4790 <fatfs_add_file_entry+0x188>
    47b0:	000a0993          	mv	s3,s4
    47b4:	00000d93          	li	s11,0
    47b8:	00000693          	li	a3,0
    47bc:	00098613          	mv	a2,s3
    47c0:	000b0593          	mv	a1,s6
    47c4:	00040513          	mv	a0,s0
    47c8:	ffffe097          	auipc	ra,0xffffe
    47cc:	6d8080e7          	jalr	1752(ra) # 2ea0 <fatfs_sector_reader>
    47d0:	e80502e3          	beqz	a0,4654 <fatfs_add_file_entry+0x4c>
    47d4:	04440d13          	addi	s10,s0,68
    47d8:	00000713          	li	a4,0
    47dc:	00000793          	li	a5,0
    47e0:	000d0c13          	mv	s8,s10
    47e4:	000d9663          	bnez	s11,47f0 <fatfs_add_file_entry+0x1e8>
    47e8:	11499e63          	bne	s3,s4,4904 <fatfs_add_file_entry+0x2fc>
    47ec:	11579c63          	bne	a5,s5,4904 <fatfs_add_file_entry+0x2fc>
    47f0:	0e049463          	bnez	s1,48d8 <fatfs_add_file_entry+0x2d0>
    47f4:	01412703          	lw	a4,20(sp)
    47f8:	00c12603          	lw	a2,12(sp)
    47fc:	01012583          	lw	a1,16(sp)
    4800:	02010693          	addi	a3,sp,32
    4804:	000b8513          	mv	a0,s7
    4808:	ffffe097          	auipc	ra,0xffffe
    480c:	8e0080e7          	jalr	-1824(ra) # 20e8 <fatfs_sfn_create_entry>
    4810:	02000613          	li	a2,32
    4814:	02010593          	addi	a1,sp,32
    4818:	000d0513          	mv	a0,s10
    481c:	ffffd097          	auipc	ra,0xffffd
    4820:	83c080e7          	jalr	-1988(ra) # 1058 <memcpy>
    4824:	03842783          	lw	a5,56(s0)
    4828:	24442503          	lw	a0,580(s0)
    482c:	00100613          	li	a2,1
    4830:	000c0593          	mv	a1,s8
    4834:	000780e7          	jalr	a5
    4838:	00050913          	mv	s2,a0
    483c:	e1dff06f          	j	4658 <fatfs_add_file_entry+0x50>
    4840:	f20606e3          	beqz	a2,476c <fatfs_add_file_entry+0x164>
    4844:	00000c13          	li	s8,0
    4848:	ef9ff06f          	j	4740 <fatfs_add_file_entry+0x138>
    484c:	00842583          	lw	a1,8(s0)
    4850:	02010613          	addi	a2,sp,32
    4854:	00040513          	mv	a0,s0
    4858:	fffff097          	auipc	ra,0xfffff
    485c:	3d0080e7          	jalr	976(ra) # 3c28 <fatfs_find_blank_cluster>
    4860:	de050ce3          	beqz	a0,4658 <fatfs_add_file_entry+0x50>
    4864:	02012d83          	lw	s11,32(sp)
    4868:	000b0593          	mv	a1,s6
    486c:	00040513          	mv	a0,s0
    4870:	000d8613          	mv	a2,s11
    4874:	fffff097          	auipc	ra,0xfffff
    4878:	65c080e7          	jalr	1628(ra) # 3ed0 <fatfs_fat_add_cluster_to_chain>
    487c:	dc050ee3          	beqz	a0,4658 <fatfs_add_file_entry+0x50>
    4880:	20000613          	li	a2,512
    4884:	00000593          	li	a1,0
    4888:	04440513          	addi	a0,s0,68
    488c:	ffffc097          	auipc	ra,0xffffc
    4890:	7b0080e7          	jalr	1968(ra) # 103c <memset>
    4894:	00000d13          	li	s10,0
    4898:	00044783          	lbu	a5,0(s0)
    489c:	00fd6a63          	bltu	s10,a5,48b0 <fatfs_add_file_entry+0x2a8>
    48a0:	ee0c12e3          	bnez	s8,4784 <fatfs_add_file_entry+0x17c>
    48a4:	00098a13          	mv	s4,s3
    48a8:	00000a93          	li	s5,0
    48ac:	ed9ff06f          	j	4784 <fatfs_add_file_entry+0x17c>
    48b0:	00000693          	li	a3,0
    48b4:	000d0613          	mv	a2,s10
    48b8:	000d8593          	mv	a1,s11
    48bc:	00040513          	mv	a0,s0
    48c0:	ffffd097          	auipc	ra,0xffffd
    48c4:	3a4080e7          	jalr	932(ra) # 1c64 <fatfs_write_sector>
    48c8:	d80508e3          	beqz	a0,4658 <fatfs_add_file_entry+0x50>
    48cc:	001d0613          	addi	a2,s10,1
    48d0:	0ff67d13          	zext.b	s10,a2
    48d4:	fc5ff06f          	j	4898 <fatfs_add_file_entry+0x290>
    48d8:	fff48493          	addi	s1,s1,-1
    48dc:	00090693          	mv	a3,s2
    48e0:	00048613          	mv	a2,s1
    48e4:	000d0593          	mv	a1,s10
    48e8:	000c8513          	mv	a0,s9
    48ec:	00f12c23          	sw	a5,24(sp)
    48f0:	ffffd097          	auipc	ra,0xffffd
    48f4:	6d0080e7          	jalr	1744(ra) # 1fc0 <fatfs_filename_to_lfn>
    48f8:	01812783          	lw	a5,24(sp)
    48fc:	00100d93          	li	s11,1
    4900:	00100713          	li	a4,1
    4904:	00178793          	addi	a5,a5,1
    4908:	0ff7f793          	zext.b	a5,a5
    490c:	01000693          	li	a3,16
    4910:	020d0d13          	addi	s10,s10,32
    4914:	ecd798e3          	bne	a5,a3,47e4 <fatfs_add_file_entry+0x1dc>
    4918:	00070e63          	beqz	a4,4934 <fatfs_add_file_entry+0x32c>
    491c:	03842783          	lw	a5,56(s0)
    4920:	24442503          	lw	a0,580(s0)
    4924:	00100613          	li	a2,1
    4928:	000c0593          	mv	a1,s8
    492c:	000780e7          	jalr	a5
    4930:	d20502e3          	beqz	a0,4654 <fatfs_add_file_entry+0x4c>
    4934:	00198993          	addi	s3,s3,1
    4938:	e81ff06f          	j	47b8 <fatfs_add_file_entry+0x1b0>

0000493c <fl_fopen>:
    493c:	000057b7          	lui	a5,0x5
    4940:	0a07a783          	lw	a5,160(a5) # 50a0 <_filelib_init>
    4944:	fa010113          	addi	sp,sp,-96
    4948:	04812c23          	sw	s0,88(sp)
    494c:	05412423          	sw	s4,72(sp)
    4950:	04112e23          	sw	ra,92(sp)
    4954:	04912a23          	sw	s1,84(sp)
    4958:	05212823          	sw	s2,80(sp)
    495c:	05312623          	sw	s3,76(sp)
    4960:	05512223          	sw	s5,68(sp)
    4964:	05612023          	sw	s6,64(sp)
    4968:	03712e23          	sw	s7,60(sp)
    496c:	03812c23          	sw	s8,56(sp)
    4970:	03912a23          	sw	s9,52(sp)
    4974:	00050a13          	mv	s4,a0
    4978:	00058413          	mv	s0,a1
    497c:	00079663          	bnez	a5,4988 <fl_fopen+0x4c>
    4980:	ffffd097          	auipc	ra,0xffffd
    4984:	3a0080e7          	jalr	928(ra) # 1d20 <fl_init>
    4988:	000057b7          	lui	a5,0x5
    498c:	0a47a783          	lw	a5,164(a5) # 50a4 <_filelib_valid>
    4990:	30078263          	beqz	a5,4c94 <fl_fopen+0x358>
    4994:	300a0063          	beqz	s4,4c94 <fl_fopen+0x358>
    4998:	10040463          	beqz	s0,4aa0 <fl_fopen+0x164>
    499c:	00040513          	mv	a0,s0
    49a0:	ffffc097          	auipc	ra,0xffffc
    49a4:	6dc080e7          	jalr	1756(ra) # 107c <strlen>
    49a8:	00000493          	li	s1,0
    49ac:	00000713          	li	a4,0
    49b0:	05700693          	li	a3,87
    49b4:	07200613          	li	a2,114
    49b8:	07700813          	li	a6,119
    49bc:	06100893          	li	a7,97
    49c0:	06200313          	li	t1,98
    49c4:	04100593          	li	a1,65
    49c8:	04200e13          	li	t3,66
    49cc:	05200e93          	li	t4,82
    49d0:	02b00f13          	li	t5,43
    49d4:	10a74263          	blt	a4,a0,4ad8 <fl_fopen+0x19c>
    49d8:	0000a937          	lui	s2,0xa
    49dc:	afc90793          	addi	a5,s2,-1284 # 9afc <_fs>
    49e0:	0387a783          	lw	a5,56(a5)
    49e4:	afc90b13          	addi	s6,s2,-1284
    49e8:	00079463          	bnez	a5,49f0 <fl_fopen+0xb4>
    49ec:	0d94f493          	andi	s1,s1,217
    49f0:	03cb2783          	lw	a5,60(s6)
    49f4:	00078463          	beqz	a5,49fc <fl_fopen+0xc0>
    49f8:	000780e7          	jalr	a5
    49fc:	0014fc13          	andi	s8,s1,1
    4a00:	160c1463          	bnez	s8,4b68 <fl_fopen+0x22c>
    4a04:	0204f793          	andi	a5,s1,32
    4a08:	08078463          	beqz	a5,4a90 <fl_fopen+0x154>
    4a0c:	038b2783          	lw	a5,56(s6)
    4a10:	06078a63          	beqz	a5,4a84 <fl_fopen+0x148>
    4a14:	ffffd097          	auipc	ra,0xffffd
    4a18:	114080e7          	jalr	276(ra) # 1b28 <_allocate_file>
    4a1c:	00050413          	mv	s0,a0
    4a20:	06050263          	beqz	a0,4a84 <fl_fopen+0x148>
    4a24:	01450b93          	addi	s7,a0,20
    4a28:	10400613          	li	a2,260
    4a2c:	00000593          	li	a1,0
    4a30:	000b8513          	mv	a0,s7
    4a34:	ffffc097          	auipc	ra,0xffffc
    4a38:	608080e7          	jalr	1544(ra) # 103c <memset>
    4a3c:	11840a93          	addi	s5,s0,280
    4a40:	10400613          	li	a2,260
    4a44:	00000593          	li	a1,0
    4a48:	000a8513          	mv	a0,s5
    4a4c:	ffffc097          	auipc	ra,0xffffc
    4a50:	5f0080e7          	jalr	1520(ra) # 103c <memset>
    4a54:	10400713          	li	a4,260
    4a58:	000a8693          	mv	a3,s5
    4a5c:	10400613          	li	a2,260
    4a60:	000b8593          	mv	a1,s7
    4a64:	000a0513          	mv	a0,s4
    4a68:	ffffe097          	auipc	ra,0xffffe
    4a6c:	b74080e7          	jalr	-1164(ra) # 25dc <fatfs_split_path>
    4a70:	fff00793          	li	a5,-1
    4a74:	10f51863          	bne	a0,a5,4b84 <fl_fopen+0x248>
    4a78:	00040513          	mv	a0,s0
    4a7c:	ffffd097          	auipc	ra,0xffffd
    4a80:	120080e7          	jalr	288(ra) # 1b9c <_free_file>
    4a84:	000c1663          	bnez	s8,4a90 <fl_fopen+0x154>
    4a88:	0064f793          	andi	a5,s1,6
    4a8c:	1e079a63          	bnez	a5,4c80 <fl_fopen+0x344>
    4a90:	00000413          	li	s0,0
    4a94:	040b2783          	lw	a5,64(s6)
    4a98:	00078463          	beqz	a5,4aa0 <fl_fopen+0x164>
    4a9c:	000780e7          	jalr	a5
    4aa0:	05c12083          	lw	ra,92(sp)
    4aa4:	00040513          	mv	a0,s0
    4aa8:	05812403          	lw	s0,88(sp)
    4aac:	05412483          	lw	s1,84(sp)
    4ab0:	05012903          	lw	s2,80(sp)
    4ab4:	04c12983          	lw	s3,76(sp)
    4ab8:	04812a03          	lw	s4,72(sp)
    4abc:	04412a83          	lw	s5,68(sp)
    4ac0:	04012b03          	lw	s6,64(sp)
    4ac4:	03c12b83          	lw	s7,60(sp)
    4ac8:	03812c03          	lw	s8,56(sp)
    4acc:	03412c83          	lw	s9,52(sp)
    4ad0:	06010113          	addi	sp,sp,96
    4ad4:	00008067          	ret
    4ad8:	00e407b3          	add	a5,s0,a4
    4adc:	0007c783          	lbu	a5,0(a5)
    4ae0:	04d78463          	beq	a5,a3,4b28 <fl_fopen+0x1ec>
    4ae4:	02f6e463          	bltu	a3,a5,4b0c <fl_fopen+0x1d0>
    4ae8:	04b78463          	beq	a5,a1,4b30 <fl_fopen+0x1f4>
    4aec:	00f5e863          	bltu	a1,a5,4afc <fl_fopen+0x1c0>
    4af0:	05e78463          	beq	a5,t5,4b38 <fl_fopen+0x1fc>
    4af4:	00170713          	addi	a4,a4,1
    4af8:	eddff06f          	j	49d4 <fl_fopen+0x98>
    4afc:	03c78063          	beq	a5,t3,4b1c <fl_fopen+0x1e0>
    4b00:	ffd79ae3          	bne	a5,t4,4af4 <fl_fopen+0x1b8>
    4b04:	0014e493          	ori	s1,s1,1
    4b08:	fedff06f          	j	4af4 <fl_fopen+0x1b8>
    4b0c:	fec78ce3          	beq	a5,a2,4b04 <fl_fopen+0x1c8>
    4b10:	00f66a63          	bltu	a2,a5,4b24 <fl_fopen+0x1e8>
    4b14:	01178e63          	beq	a5,a7,4b30 <fl_fopen+0x1f4>
    4b18:	fc679ee3          	bne	a5,t1,4af4 <fl_fopen+0x1b8>
    4b1c:	0084e493          	ori	s1,s1,8
    4b20:	fd5ff06f          	j	4af4 <fl_fopen+0x1b8>
    4b24:	fd0798e3          	bne	a5,a6,4af4 <fl_fopen+0x1b8>
    4b28:	0324e493          	ori	s1,s1,50
    4b2c:	fc9ff06f          	j	4af4 <fl_fopen+0x1b8>
    4b30:	0264e493          	ori	s1,s1,38
    4b34:	fc1ff06f          	j	4af4 <fl_fopen+0x1b8>
    4b38:	0014f793          	andi	a5,s1,1
    4b3c:	00078663          	beqz	a5,4b48 <fl_fopen+0x20c>
    4b40:	0024e493          	ori	s1,s1,2
    4b44:	fb1ff06f          	j	4af4 <fl_fopen+0x1b8>
    4b48:	0024f793          	andi	a5,s1,2
    4b4c:	00078663          	beqz	a5,4b58 <fl_fopen+0x21c>
    4b50:	0314e493          	ori	s1,s1,49
    4b54:	fa1ff06f          	j	4af4 <fl_fopen+0x1b8>
    4b58:	0044f793          	andi	a5,s1,4
    4b5c:	f8078ce3          	beqz	a5,4af4 <fl_fopen+0x1b8>
    4b60:	0274e493          	ori	s1,s1,39
    4b64:	f91ff06f          	j	4af4 <fl_fopen+0x1b8>
    4b68:	000a0513          	mv	a0,s4
    4b6c:	fffff097          	auipc	ra,0xfffff
    4b70:	830080e7          	jalr	-2000(ra) # 339c <_open_file>
    4b74:	00050413          	mv	s0,a0
    4b78:	e80506e3          	beqz	a0,4a04 <fl_fopen+0xc8>
    4b7c:	42940c23          	sb	s1,1080(s0)
    4b80:	f15ff06f          	j	4a94 <fl_fopen+0x158>
    4b84:	00040513          	mv	a0,s0
    4b88:	ffffe097          	auipc	ra,0xffffe
    4b8c:	ca4080e7          	jalr	-860(ra) # 282c <_check_file_open>
    4b90:	00050993          	mv	s3,a0
    4b94:	ee0512e3          	bnez	a0,4a78 <fl_fopen+0x13c>
    4b98:	01444783          	lbu	a5,20(s0)
    4b9c:	0a079a63          	bnez	a5,4c50 <fl_fopen+0x314>
    4ba0:	008b2783          	lw	a5,8(s6)
    4ba4:	00f42023          	sw	a5,0(s0)
    4ba8:	00042583          	lw	a1,0(s0)
    4bac:	01010693          	addi	a3,sp,16
    4bb0:	000a8613          	mv	a2,s5
    4bb4:	afc90513          	addi	a0,s2,-1284
    4bb8:	ffffe097          	auipc	ra,0xffffe
    4bbc:	428080e7          	jalr	1064(ra) # 2fe0 <fatfs_get_file_entry>
    4bc0:	00100793          	li	a5,1
    4bc4:	eaf50ae3          	beq	a0,a5,4a78 <fl_fopen+0x13c>
    4bc8:	00042223          	sw	zero,4(s0)
    4bcc:	00100693          	li	a3,1
    4bd0:	00440613          	addi	a2,s0,4
    4bd4:	00100593          	li	a1,1
    4bd8:	afc90513          	addi	a0,s2,-1284
    4bdc:	00000097          	auipc	ra,0x0
    4be0:	924080e7          	jalr	-1756(ra) # 4500 <fatfs_allocate_free_space.part.0>
    4be4:	e8050ae3          	beqz	a0,4a78 <fl_fopen+0x13c>
    4be8:	00002cb7          	lui	s9,0x2
    4bec:	21c40b93          	addi	s7,s0,540
    4bf0:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_compare_names+0x53>
    4bf4:	000a8593          	mv	a1,s5
    4bf8:	00410513          	addi	a0,sp,4
    4bfc:	ffffd097          	auipc	ra,0xffffd
    4c00:	590080e7          	jalr	1424(ra) # 218c <fatfs_lfn_create_sfn>
    4c04:	06098263          	beqz	s3,4c68 <fl_fopen+0x32c>
    4c08:	00098613          	mv	a2,s3
    4c0c:	00410593          	addi	a1,sp,4
    4c10:	000b8513          	mv	a0,s7
    4c14:	ffffd097          	auipc	ra,0xffffd
    4c18:	6f0080e7          	jalr	1776(ra) # 2304 <fatfs_lfn_generate_tail>
    4c1c:	00042583          	lw	a1,0(s0)
    4c20:	000b8613          	mv	a2,s7
    4c24:	afc90513          	addi	a0,s2,-1284
    4c28:	fffff097          	auipc	ra,0xfffff
    4c2c:	8ec080e7          	jalr	-1812(ra) # 3514 <fatfs_sfn_exists>
    4c30:	06050663          	beqz	a0,4c9c <fl_fopen+0x360>
    4c34:	00198993          	addi	s3,s3,1
    4c38:	fb999ee3          	bne	s3,s9,4bf4 <fl_fopen+0x2b8>
    4c3c:	00442583          	lw	a1,4(s0)
    4c40:	afc90513          	addi	a0,s2,-1284
    4c44:	fffff097          	auipc	ra,0xfffff
    4c48:	21c080e7          	jalr	540(ra) # 3e60 <fatfs_free_cluster_chain>
    4c4c:	e2dff06f          	j	4a78 <fl_fopen+0x13c>
    4c50:	00040593          	mv	a1,s0
    4c54:	000b8513          	mv	a0,s7
    4c58:	ffffe097          	auipc	ra,0xffffe
    4c5c:	590080e7          	jalr	1424(ra) # 31e8 <_open_directory>
    4c60:	f40514e3          	bnez	a0,4ba8 <fl_fopen+0x26c>
    4c64:	e15ff06f          	j	4a78 <fl_fopen+0x13c>
    4c68:	00b00613          	li	a2,11
    4c6c:	00410593          	addi	a1,sp,4
    4c70:	000b8513          	mv	a0,s7
    4c74:	ffffc097          	auipc	ra,0xffffc
    4c78:	3e4080e7          	jalr	996(ra) # 1058 <memcpy>
    4c7c:	fa1ff06f          	j	4c1c <fl_fopen+0x2e0>
    4c80:	000a0513          	mv	a0,s4
    4c84:	ffffe097          	auipc	ra,0xffffe
    4c88:	718080e7          	jalr	1816(ra) # 339c <_open_file>
    4c8c:	00050413          	mv	s0,a0
    4c90:	0640006f          	j	4cf4 <fl_fopen+0x3b8>
    4c94:	00000413          	li	s0,0
    4c98:	e09ff06f          	j	4aa0 <fl_fopen+0x164>
    4c9c:	00442703          	lw	a4,4(s0)
    4ca0:	00042583          	lw	a1,0(s0)
    4ca4:	00000813          	li	a6,0
    4ca8:	00000793          	li	a5,0
    4cac:	000b8693          	mv	a3,s7
    4cb0:	000a8613          	mv	a2,s5
    4cb4:	afc90513          	addi	a0,s2,-1284
    4cb8:	00000097          	auipc	ra,0x0
    4cbc:	950080e7          	jalr	-1712(ra) # 4608 <fatfs_add_file_entry>
    4cc0:	f6050ee3          	beqz	a0,4c3c <fl_fopen+0x300>
    4cc4:	fff00793          	li	a5,-1
    4cc8:	00042623          	sw	zero,12(s0)
    4ccc:	00042423          	sw	zero,8(s0)
    4cd0:	42f42823          	sw	a5,1072(s0)
    4cd4:	42042a23          	sw	zero,1076(s0)
    4cd8:	00042823          	sw	zero,16(s0)
    4cdc:	22f42423          	sw	a5,552(s0)
    4ce0:	22f42623          	sw	a5,556(s0)
    4ce4:	afc90513          	addi	a0,s2,-1284
    4ce8:	ffffe097          	auipc	ra,0xffffe
    4cec:	04c080e7          	jalr	76(ra) # 2d34 <fatfs_fat_purge>
    4cf0:	e80c06e3          	beqz	s8,4b7c <fl_fopen+0x240>
    4cf4:	e80414e3          	bnez	s0,4b7c <fl_fopen+0x240>
    4cf8:	d99ff06f          	j	4a90 <fl_fopen+0x154>

00004cfc <acmd41>:
    4cfc:	00004069 00000100                       i@......

00004d04 <cmd0>:
    4d04:	00000040 00009500                       @.......

00004d0c <cmd16>:
    4d0c:	02000050 00001500                       P.......

00004d14 <cmd55>:
    4d14:	00000077 00000100                       w.......

00004d1c <cmd8>:
    4d1c:	01000048 000087aa                       H.......

00004d24 <AUDIO>:
    4d24:	00018000                                ....

00004d28 <BUTTONS>:
    4d28:	00010100                                ....

00004d2c <LEDS>:
    4d2c:	00010004                                ....

00004d30 <OLED>:
    4d30:	00010008                                ....

00004d34 <OLED_RST>:
    4d34:	00010010                                ....

00004d38 <SDCARD>:
    4d38:	00010080 676d492f 0000002f 4f525245     ..../Img/...ERRO
    4d48:	61702052 74206874 6c206f6f 65677261     R path too large
    4d58:	0000000a 00006272 2e676d69 20776172     ....rb..img.raw 
    4d68:	20746f6e 6e756f66 000a2e64 67616d69     not found...imag
    4d78:	6f662065 2e646e75 0000000a 636f522f     e found...../Roc
    4d88:	0000006b 61642e72 00006174 706f502f     k...r.data../Pop
    4d98:	6e61632f 7761722e 00000000 656c6966     /can.raw....file
    4da8:	746f6e20 756f6620 0a2e646e 00000000      not found......
    4db8:	57202020 4f434c45 2120454d 21202120        WELCOME ! ! !
    4dc8:	20202020 00000a0a 656c6966 7325203a         ....file: %s
    4dd8:	0000000a 68746170 7325203a 0000000a     ....path: %s....
    4de8:	20746f6e 6e756f66 25203a64 00000a73     not found: %s...
    4df8:	79616c70 20676e69 202e2e2e 00000000     playing ... ....
    4e08:	20202020 3d3d3d3d 6f73203d 2073676e         ===== songs 
    4e18:	3d3d3d3d 2020203d 000a0a20 203e6425     =====    ...%d> 
    4e28:	000a7325                                %s..

00004e2c <font>:
    4e2c:	00000000 00002f00 00030000 14000003     ...../..........
    4e3c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4e4c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4e5c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4e6c:	00080800 00200000 20000000 02040810     ...... .... ....
    4e7c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4e8c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4e9c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4eac:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4ebc:	00141400 0a110000 01000004 0007052d     ............-...
    4ecc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4edc:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4eec:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4efc:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4f0c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4f1c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4f2c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4f3c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4f4c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4f5c:	003f2102 01020000 20000201 00000020     .!?........  ...
    4f6c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4f7c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4f8c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4f9c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4fac:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4fbc:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4fcc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4fdc:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4fec:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4ffc:	043f2100 02010000 00000102 00000000     .!?.............
    500c:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    501c:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    502c:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    503c:	54414620 74656420 736c6961 64252820      FAT details (%d
    504c:	0a0d2129 00000000 00000001 00000003     )!..............
    505c:	00000005 00000007 00000009 0000000e     ................
    506c:	00000010 00000012 00000014 00000016     ................
    507c:	00000018 0000001c 0000001e              ............

00005088 <sdcard_while_loading_callback>:
    5088:	00000000                                ....

0000508c <back_color>:
    508c:	00000000                                ....

00005090 <cursor_x>:
    5090:	00000000                                ....

00005094 <cursor_y>:
    5094:	00000000                                ....

00005098 <front_color>:
    5098:	00000000                                ....

0000509c <f_putchar>:
    509c:	00000000                                ....

000050a0 <_filelib_init>:
    50a0:	00000000                                ....

000050a4 <_filelib_valid>:
    50a4:	00000000                                ....

000050a8 <_free_file_list>:
	...

000050b0 <_open_file_list>:
	...
