
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	76c080e7          	jalr	1900(ra) # 770 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_fs+0x63b0>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	e4c7a403          	lw	s0,-436(a5) # 4e4c <AUDIO>
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
      54:	114080e7          	jalr	276(ra) # 1164 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	0f4080e7          	jalr	244(ra) # 1164 <memset>
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
      ac:	42c080e7          	jalr	1068(ra) # 14d4 <display_framebuffer>
      b0:	00004637          	lui	a2,0x4
      b4:	00000593          	li	a1,0
      b8:	00001097          	auipc	ra,0x1
      bc:	0ac080e7          	jalr	172(ra) # 1164 <memset>
      c0:	00010413          	mv	s0,sp
      c4:	000055b7          	lui	a1,0x5
      c8:	e6458593          	addi	a1,a1,-412 # 4e64 <SDCARD+0x4>
      cc:	00040513          	mv	a0,s0
      d0:	00010023          	sb	zero,0(sp)
      d4:	00001097          	auipc	ra,0x1
      d8:	174080e7          	jalr	372(ra) # 1248 <strcat>
      dc:	00048593          	mv	a1,s1
      e0:	00040513          	mv	a0,s0
      e4:	00001097          	auipc	ra,0x1
      e8:	164080e7          	jalr	356(ra) # 1248 <strcat>
      ec:	40850533          	sub	a0,a0,s0
      f0:	04000793          	li	a5,64
      f4:	02a7d863          	bge	a5,a0,124 <openImage+0x90>
      f8:	000057b7          	lui	a5,0x5
      fc:	e547a783          	lw	a5,-428(a5) # 4e54 <LEDS>
     100:	00f00713          	li	a4,15
     104:	00005537          	lui	a0,0x5
     108:	00e7a023          	sw	a4,0(a5)
     10c:	e6c50513          	addi	a0,a0,-404 # 4e6c <SDCARD+0xc>
     110:	00001097          	auipc	ra,0x1
     114:	760080e7          	jalr	1888(ra) # 1870 <printf>
     118:	00001097          	auipc	ra,0x1
     11c:	558080e7          	jalr	1368(ra) # 1670 <display_refresh>
     120:	0000006f          	j	120 <openImage+0x8c>
     124:	000055b7          	lui	a1,0x5
     128:	00040513          	mv	a0,s0
     12c:	e8458593          	addi	a1,a1,-380 # 4e84 <SDCARD+0x24>
     130:	00005097          	auipc	ra,0x5
     134:	934080e7          	jalr	-1740(ra) # 4a64 <fl_fopen>
     138:	00050413          	mv	s0,a0
     13c:	02051863          	bnez	a0,16c <openImage+0xd8>
     140:	00005537          	lui	a0,0x5
     144:	e8850513          	addi	a0,a0,-376 # 4e88 <SDCARD+0x28>
     148:	00001097          	auipc	ra,0x1
     14c:	728080e7          	jalr	1832(ra) # 1870 <printf>
     150:	00001097          	auipc	ra,0x1
     154:	520080e7          	jalr	1312(ra) # 1670 <display_refresh>
     158:	02c12083          	lw	ra,44(sp)
     15c:	02812403          	lw	s0,40(sp)
     160:	02412483          	lw	s1,36(sp)
     164:	03010113          	addi	sp,sp,48
     168:	00008067          	ret
     16c:	00001097          	auipc	ra,0x1
     170:	504080e7          	jalr	1284(ra) # 1670 <display_refresh>
     174:	00001097          	auipc	ra,0x1
     178:	360080e7          	jalr	864(ra) # 14d4 <display_framebuffer>
     17c:	00040693          	mv	a3,s0
     180:	00004637          	lui	a2,0x4
     184:	00100593          	li	a1,1
     188:	00004097          	auipc	ra,0x4
     18c:	2fc080e7          	jalr	764(ra) # 4484 <fl_fread>
     190:	00001097          	auipc	ra,0x1
     194:	4e0080e7          	jalr	1248(ra) # 1670 <display_refresh>
     198:	00040513          	mv	a0,s0
     19c:	00004097          	auipc	ra,0x4
     1a0:	208080e7          	jalr	520(ra) # 43a4 <fl_fclose>
     1a4:	fb5ff06f          	j	158 <openImage+0xc4>

000001a8 <selectImage>:
     1a8:	000055b7          	lui	a1,0x5
     1ac:	ff010113          	addi	sp,sp,-16
     1b0:	00400613          	li	a2,4
     1b4:	e9c58593          	addi	a1,a1,-356 # 4e9c <SDCARD+0x3c>
     1b8:	00812423          	sw	s0,8(sp)
     1bc:	00112623          	sw	ra,12(sp)
     1c0:	00050413          	mv	s0,a0
     1c4:	00001097          	auipc	ra,0x1
     1c8:	000080e7          	jalr	ra # 11c4 <strncmp>
     1cc:	00051e63          	bnez	a0,1e8 <selectImage+0x40>
     1d0:	00001097          	auipc	ra,0x1
     1d4:	4a0080e7          	jalr	1184(ra) # 1670 <display_refresh>
     1d8:	00005537          	lui	a0,0x5
     1dc:	ea450513          	addi	a0,a0,-348 # 4ea4 <SDCARD+0x44>
     1e0:	00000097          	auipc	ra,0x0
     1e4:	eb4080e7          	jalr	-332(ra) # 94 <openImage>
     1e8:	000055b7          	lui	a1,0x5
     1ec:	00700613          	li	a2,7
     1f0:	eac58593          	addi	a1,a1,-340 # 4eac <SDCARD+0x4c>
     1f4:	00040513          	mv	a0,s0
     1f8:	00001097          	auipc	ra,0x1
     1fc:	fcc080e7          	jalr	-52(ra) # 11c4 <strncmp>
     200:	00051e63          	bnez	a0,21c <selectImage+0x74>
     204:	00001097          	auipc	ra,0x1
     208:	46c080e7          	jalr	1132(ra) # 1670 <display_refresh>
     20c:	00005537          	lui	a0,0x5
     210:	eb850513          	addi	a0,a0,-328 # 4eb8 <SDCARD+0x58>
     214:	00000097          	auipc	ra,0x0
     218:	e80080e7          	jalr	-384(ra) # 94 <openImage>
     21c:	000055b7          	lui	a1,0x5
     220:	00300613          	li	a2,3
     224:	ec058593          	addi	a1,a1,-320 # 4ec0 <SDCARD+0x60>
     228:	00040513          	mv	a0,s0
     22c:	00001097          	auipc	ra,0x1
     230:	f98080e7          	jalr	-104(ra) # 11c4 <strncmp>
     234:	00051e63          	bnez	a0,250 <selectImage+0xa8>
     238:	00001097          	auipc	ra,0x1
     23c:	438080e7          	jalr	1080(ra) # 1670 <display_refresh>
     240:	00005537          	lui	a0,0x5
     244:	ec850513          	addi	a0,a0,-312 # 4ec8 <SDCARD+0x68>
     248:	00000097          	auipc	ra,0x0
     24c:	e4c080e7          	jalr	-436(ra) # 94 <openImage>
     250:	000055b7          	lui	a1,0x5
     254:	00a00613          	li	a2,10
     258:	ed058593          	addi	a1,a1,-304 # 4ed0 <SDCARD+0x70>
     25c:	00040513          	mv	a0,s0
     260:	00001097          	auipc	ra,0x1
     264:	f64080e7          	jalr	-156(ra) # 11c4 <strncmp>
     268:	02051463          	bnez	a0,290 <selectImage+0xe8>
     26c:	00001097          	auipc	ra,0x1
     270:	404080e7          	jalr	1028(ra) # 1670 <display_refresh>
     274:	00812403          	lw	s0,8(sp)
     278:	00c12083          	lw	ra,12(sp)
     27c:	00005537          	lui	a0,0x5
     280:	edc50513          	addi	a0,a0,-292 # 4edc <SDCARD+0x7c>
     284:	01010113          	addi	sp,sp,16
     288:	00000317          	auipc	t1,0x0
     28c:	e0c30067          	jr	-500(t1) # 94 <openImage>
     290:	00c12083          	lw	ra,12(sp)
     294:	00812403          	lw	s0,8(sp)
     298:	01010113          	addi	sp,sp,16
     29c:	00008067          	ret

000002a0 <openJingle>:
     2a0:	000055b7          	lui	a1,0x5
     2a4:	00005537          	lui	a0,0x5
     2a8:	fd010113          	addi	sp,sp,-48
     2ac:	e8458593          	addi	a1,a1,-380 # 4e84 <SDCARD+0x24>
     2b0:	ee450513          	addi	a0,a0,-284 # 4ee4 <SDCARD+0x84>
     2b4:	02112623          	sw	ra,44(sp)
     2b8:	02812423          	sw	s0,40(sp)
     2bc:	02912223          	sw	s1,36(sp)
     2c0:	03212023          	sw	s2,32(sp)
     2c4:	01312e23          	sw	s3,28(sp)
     2c8:	01412c23          	sw	s4,24(sp)
     2cc:	01512a23          	sw	s5,20(sp)
     2d0:	01612823          	sw	s6,16(sp)
     2d4:	01712623          	sw	s7,12(sp)
     2d8:	00004097          	auipc	ra,0x4
     2dc:	78c080e7          	jalr	1932(ra) # 4a64 <fl_fopen>
     2e0:	04051263          	bnez	a0,324 <openJingle+0x84>
     2e4:	00005537          	lui	a0,0x5
     2e8:	ef050513          	addi	a0,a0,-272 # 4ef0 <SDCARD+0x90>
     2ec:	00001097          	auipc	ra,0x1
     2f0:	584080e7          	jalr	1412(ra) # 1870 <printf>
     2f4:	02812403          	lw	s0,40(sp)
     2f8:	02c12083          	lw	ra,44(sp)
     2fc:	02412483          	lw	s1,36(sp)
     300:	02012903          	lw	s2,32(sp)
     304:	01c12983          	lw	s3,28(sp)
     308:	01812a03          	lw	s4,24(sp)
     30c:	01412a83          	lw	s5,20(sp)
     310:	01012b03          	lw	s6,16(sp)
     314:	00c12b83          	lw	s7,12(sp)
     318:	03010113          	addi	sp,sp,48
     31c:	00001317          	auipc	t1,0x1
     320:	35430067          	jr	852(t1) # 1670 <display_refresh>
     324:	00000593          	li	a1,0
     328:	00050493          	mv	s1,a0
     32c:	0ff00513          	li	a0,255
     330:	00001097          	auipc	ra,0x1
     334:	1c4080e7          	jalr	452(ra) # 14f4 <display_set_front_back_color>
     338:	00005537          	lui	a0,0x5
     33c:	f0450513          	addi	a0,a0,-252 # 4f04 <SDCARD+0xa4>
     340:	00001097          	auipc	ra,0x1
     344:	530080e7          	jalr	1328(ra) # 1870 <printf>
     348:	00001097          	auipc	ra,0x1
     34c:	328080e7          	jalr	808(ra) # 1670 <display_refresh>
     350:	000057b7          	lui	a5,0x5
     354:	e4c7a983          	lw	s3,-436(a5) # 4e4c <AUDIO>
     358:	000057b7          	lui	a5,0x5
     35c:	e547a783          	lw	a5,-428(a5) # 4e54 <LEDS>
     360:	00000913          	li	s2,0
     364:	00100413          	li	s0,1
     368:	1ff00a93          	li	s5,511
     36c:	08000b13          	li	s6,128
     370:	00078b93          	mv	s7,a5
     374:	0009aa03          	lw	s4,0(s3)
     378:	00048693          	mv	a3,s1
     37c:	20000613          	li	a2,512
     380:	00100593          	li	a1,1
     384:	000a0513          	mv	a0,s4
     388:	00004097          	auipc	ra,0x4
     38c:	0fc080e7          	jalr	252(ra) # 4484 <fl_fread>
     390:	02aadc63          	bge	s5,a0,3c8 <openJingle+0x128>
     394:	0009a783          	lw	a5,0(s3)
     398:	fefa0ee3          	beq	s4,a5,394 <openJingle+0xf4>
     39c:	01640663          	beq	s0,s6,3a8 <openJingle+0x108>
     3a0:	00100793          	li	a5,1
     3a4:	00f41663          	bne	s0,a5,3b0 <openJingle+0x110>
     3a8:	00100793          	li	a5,1
     3ac:	41278933          	sub	s2,a5,s2
     3b0:	00090863          	beqz	s2,3c0 <openJingle+0x120>
     3b4:	00141413          	slli	s0,s0,0x1
     3b8:	008ba023          	sw	s0,0(s7)
     3bc:	fb9ff06f          	j	374 <openJingle+0xd4>
     3c0:	40145413          	srai	s0,s0,0x1
     3c4:	ff5ff06f          	j	3b8 <openJingle+0x118>
     3c8:	02812403          	lw	s0,40(sp)
     3cc:	02c12083          	lw	ra,44(sp)
     3d0:	02012903          	lw	s2,32(sp)
     3d4:	01c12983          	lw	s3,28(sp)
     3d8:	01812a03          	lw	s4,24(sp)
     3dc:	01412a83          	lw	s5,20(sp)
     3e0:	01012b03          	lw	s6,16(sp)
     3e4:	00c12b83          	lw	s7,12(sp)
     3e8:	00048513          	mv	a0,s1
     3ec:	02412483          	lw	s1,36(sp)
     3f0:	03010113          	addi	sp,sp,48
     3f4:	00004317          	auipc	t1,0x4
     3f8:	fb030067          	jr	-80(t1) # 43a4 <fl_fclose>

000003fc <openBruitage>:
     3fc:	000055b7          	lui	a1,0x5
     400:	00005537          	lui	a0,0x5
     404:	fe010113          	addi	sp,sp,-32
     408:	e8458593          	addi	a1,a1,-380 # 4e84 <SDCARD+0x24>
     40c:	f1c50513          	addi	a0,a0,-228 # 4f1c <SDCARD+0xbc>
     410:	00112e23          	sw	ra,28(sp)
     414:	00812c23          	sw	s0,24(sp)
     418:	00912a23          	sw	s1,20(sp)
     41c:	01212823          	sw	s2,16(sp)
     420:	01312623          	sw	s3,12(sp)
     424:	00004097          	auipc	ra,0x4
     428:	640080e7          	jalr	1600(ra) # 4a64 <fl_fopen>
     42c:	04050063          	beqz	a0,46c <openBruitage+0x70>
     430:	000057b7          	lui	a5,0x5
     434:	e4c7a483          	lw	s1,-436(a5) # 4e4c <AUDIO>
     438:	00050413          	mv	s0,a0
     43c:	1ff00993          	li	s3,511
     440:	0004a903          	lw	s2,0(s1)
     444:	00040693          	mv	a3,s0
     448:	20000613          	li	a2,512
     44c:	00100593          	li	a1,1
     450:	00090513          	mv	a0,s2
     454:	00004097          	auipc	ra,0x4
     458:	030080e7          	jalr	48(ra) # 4484 <fl_fread>
     45c:	04a9d063          	bge	s3,a0,49c <openBruitage+0xa0>
     460:	0004a783          	lw	a5,0(s1)
     464:	fef90ee3          	beq	s2,a5,460 <openBruitage+0x64>
     468:	fd9ff06f          	j	440 <openBruitage+0x44>
     46c:	00005537          	lui	a0,0x5
     470:	ef050513          	addi	a0,a0,-272 # 4ef0 <SDCARD+0x90>
     474:	00001097          	auipc	ra,0x1
     478:	3fc080e7          	jalr	1020(ra) # 1870 <printf>
     47c:	01812403          	lw	s0,24(sp)
     480:	01c12083          	lw	ra,28(sp)
     484:	01412483          	lw	s1,20(sp)
     488:	01012903          	lw	s2,16(sp)
     48c:	00c12983          	lw	s3,12(sp)
     490:	02010113          	addi	sp,sp,32
     494:	00001317          	auipc	t1,0x1
     498:	1dc30067          	jr	476(t1) # 1670 <display_refresh>
     49c:	00040513          	mv	a0,s0
     4a0:	01812403          	lw	s0,24(sp)
     4a4:	01c12083          	lw	ra,28(sp)
     4a8:	01412483          	lw	s1,20(sp)
     4ac:	01012903          	lw	s2,16(sp)
     4b0:	00c12983          	lw	s3,12(sp)
     4b4:	02010113          	addi	sp,sp,32
     4b8:	00004317          	auipc	t1,0x4
     4bc:	eec30067          	jr	-276(t1) # 43a4 <fl_fclose>

000004c0 <openMusic>:
     4c0:	fb010113          	addi	sp,sp,-80
     4c4:	000057b7          	lui	a5,0x5
     4c8:	04812423          	sw	s0,72(sp)
     4cc:	e547a403          	lw	s0,-428(a5) # 4e54 <LEDS>
     4d0:	04112623          	sw	ra,76(sp)
     4d4:	0ff00793          	li	a5,255
     4d8:	04912223          	sw	s1,68(sp)
     4dc:	05212023          	sw	s2,64(sp)
     4e0:	03312e23          	sw	s3,60(sp)
     4e4:	03412c23          	sw	s4,56(sp)
     4e8:	03512a23          	sw	s5,52(sp)
     4ec:	03612823          	sw	s6,48(sp)
     4f0:	03712623          	sw	s7,44(sp)
     4f4:	03812423          	sw	s8,40(sp)
     4f8:	03912223          	sw	s9,36(sp)
     4fc:	00f42023          	sw	a5,0(s0)
     500:	00058993          	mv	s3,a1
     504:	00050913          	mv	s2,a0
     508:	00001097          	auipc	ra,0x1
     50c:	fcc080e7          	jalr	-52(ra) # 14d4 <display_framebuffer>
     510:	00004637          	lui	a2,0x4
     514:	00000593          	li	a1,0
     518:	00001097          	auipc	ra,0x1
     51c:	c4c080e7          	jalr	-948(ra) # 1164 <memset>
     520:	00001097          	auipc	ra,0x1
     524:	150080e7          	jalr	336(ra) # 1670 <display_refresh>
     528:	00100793          	li	a5,1
     52c:	00f42023          	sw	a5,0(s0)
     530:	00000593          	li	a1,0
     534:	00000513          	li	a0,0
     538:	00001097          	auipc	ra,0x1
     53c:	fa8080e7          	jalr	-88(ra) # 14e0 <display_set_cursor>
     540:	00000593          	li	a1,0
     544:	0ff00513          	li	a0,255
     548:	00001097          	auipc	ra,0x1
     54c:	fac080e7          	jalr	-84(ra) # 14f4 <display_set_front_back_color>
     550:	00001097          	auipc	ra,0x1
     554:	120080e7          	jalr	288(ra) # 1670 <display_refresh>
     558:	00200793          	li	a5,2
     55c:	00010493          	mv	s1,sp
     560:	00f42023          	sw	a5,0(s0)
     564:	00090593          	mv	a1,s2
     568:	00048513          	mv	a0,s1
     56c:	00010023          	sb	zero,0(sp)
     570:	00001097          	auipc	ra,0x1
     574:	cd8080e7          	jalr	-808(ra) # 1248 <strcat>
     578:	000055b7          	lui	a1,0x5
     57c:	e6858593          	addi	a1,a1,-408 # 4e68 <SDCARD+0x8>
     580:	00048513          	mv	a0,s1
     584:	00001097          	auipc	ra,0x1
     588:	cc4080e7          	jalr	-828(ra) # 1248 <strcat>
     58c:	00098593          	mv	a1,s3
     590:	00048513          	mv	a0,s1
     594:	00001097          	auipc	ra,0x1
     598:	cb4080e7          	jalr	-844(ra) # 1248 <strcat>
     59c:	40950533          	sub	a0,a0,s1
     5a0:	04000793          	li	a5,64
     5a4:	02a7d463          	bge	a5,a0,5cc <openMusic+0x10c>
     5a8:	00f00793          	li	a5,15
     5ac:	00005537          	lui	a0,0x5
     5b0:	00f42023          	sw	a5,0(s0)
     5b4:	e6c50513          	addi	a0,a0,-404 # 4e6c <SDCARD+0xc>
     5b8:	00001097          	auipc	ra,0x1
     5bc:	2b8080e7          	jalr	696(ra) # 1870 <printf>
     5c0:	00001097          	auipc	ra,0x1
     5c4:	0b0080e7          	jalr	176(ra) # 1670 <display_refresh>
     5c8:	0000006f          	j	5c8 <openMusic+0x108>
     5cc:	00400793          	li	a5,4
     5d0:	00f42023          	sw	a5,0(s0)
     5d4:	00001097          	auipc	ra,0x1
     5d8:	09c080e7          	jalr	156(ra) # 1670 <display_refresh>
     5dc:	00090513          	mv	a0,s2
     5e0:	00000097          	auipc	ra,0x0
     5e4:	bc8080e7          	jalr	-1080(ra) # 1a8 <selectImage>
     5e8:	000055b7          	lui	a1,0x5
     5ec:	e8458593          	addi	a1,a1,-380 # 4e84 <SDCARD+0x24>
     5f0:	00048513          	mv	a0,s1
     5f4:	00004097          	auipc	ra,0x4
     5f8:	470080e7          	jalr	1136(ra) # 4a64 <fl_fopen>
     5fc:	00050913          	mv	s2,a0
     600:	04051e63          	bnez	a0,65c <openMusic+0x19c>
     604:	00005537          	lui	a0,0x5
     608:	00048593          	mv	a1,s1
     60c:	f2c50513          	addi	a0,a0,-212 # 4f2c <SDCARD+0xcc>
     610:	00001097          	auipc	ra,0x1
     614:	260080e7          	jalr	608(ra) # 1870 <printf>
     618:	00001097          	auipc	ra,0x1
     61c:	058080e7          	jalr	88(ra) # 1670 <display_refresh>
     620:	00800793          	li	a5,8
     624:	04c12083          	lw	ra,76(sp)
     628:	00f42023          	sw	a5,0(s0)
     62c:	04812403          	lw	s0,72(sp)
     630:	04412483          	lw	s1,68(sp)
     634:	04012903          	lw	s2,64(sp)
     638:	03c12983          	lw	s3,60(sp)
     63c:	03812a03          	lw	s4,56(sp)
     640:	03412a83          	lw	s5,52(sp)
     644:	03012b03          	lw	s6,48(sp)
     648:	02c12b83          	lw	s7,44(sp)
     64c:	02812c03          	lw	s8,40(sp)
     650:	02412c83          	lw	s9,36(sp)
     654:	05010113          	addi	sp,sp,80
     658:	00008067          	ret
     65c:	00000593          	li	a1,0
     660:	0ff00513          	li	a0,255
     664:	00001097          	auipc	ra,0x1
     668:	e90080e7          	jalr	-368(ra) # 14f4 <display_set_front_back_color>
     66c:	00005537          	lui	a0,0x5
     670:	f3c50513          	addi	a0,a0,-196 # 4f3c <SDCARD+0xdc>
     674:	00001097          	auipc	ra,0x1
     678:	1fc080e7          	jalr	508(ra) # 1870 <printf>
     67c:	00001097          	auipc	ra,0x1
     680:	ff4080e7          	jalr	-12(ra) # 1670 <display_refresh>
     684:	01000793          	li	a5,16
     688:	00f42023          	sw	a5,0(s0)
     68c:	000057b7          	lui	a5,0x5
     690:	e4c7ab03          	lw	s6,-436(a5) # 4e4c <AUDIO>
     694:	000057b7          	lui	a5,0x5
     698:	e507aa83          	lw	s5,-432(a5) # 4e50 <BUTTONS>
     69c:	00100a13          	li	s4,1
     6a0:	00000993          	li	s3,0
     6a4:	00100493          	li	s1,1
     6a8:	1ff00b93          	li	s7,511
     6ac:	08000c13          	li	s8,128
     6b0:	000b2c83          	lw	s9,0(s6)
     6b4:	040a0a63          	beqz	s4,708 <openMusic+0x248>
     6b8:	00090693          	mv	a3,s2
     6bc:	20000613          	li	a2,512
     6c0:	00100593          	li	a1,1
     6c4:	000c8513          	mv	a0,s9
     6c8:	00004097          	auipc	ra,0x4
     6cc:	dbc080e7          	jalr	-580(ra) # 4484 <fl_fread>
     6d0:	02abc863          	blt	s7,a0,700 <openMusic+0x240>
     6d4:	00001097          	auipc	ra,0x1
     6d8:	e00080e7          	jalr	-512(ra) # 14d4 <display_framebuffer>
     6dc:	00004637          	lui	a2,0x4
     6e0:	00000593          	li	a1,0
     6e4:	00001097          	auipc	ra,0x1
     6e8:	a80080e7          	jalr	-1408(ra) # 1164 <memset>
     6ec:	00090513          	mv	a0,s2
     6f0:	00004097          	auipc	ra,0x4
     6f4:	cb4080e7          	jalr	-844(ra) # 43a4 <fl_fclose>
     6f8:	02000793          	li	a5,32
     6fc:	f29ff06f          	j	624 <openMusic+0x164>
     700:	000b2783          	lw	a5,0(s6)
     704:	fefc8ee3          	beq	s9,a5,700 <openMusic+0x240>
     708:	000aa783          	lw	a5,0(s5)
     70c:	0407f793          	andi	a5,a5,64
     710:	00078e63          	beqz	a5,72c <openMusic+0x26c>
     714:	00000097          	auipc	ra,0x0
     718:	908080e7          	jalr	-1784(ra) # 1c <clear_audio>
     71c:	000aa783          	lw	a5,0(s5)
     720:	0407f793          	andi	a5,a5,64
     724:	fe079ce3          	bnez	a5,71c <openMusic+0x25c>
     728:	001a4a13          	xori	s4,s4,1
     72c:	000aa783          	lw	a5,0(s5)
     730:	0207f793          	andi	a5,a5,32
     734:	00078863          	beqz	a5,744 <openMusic+0x284>
     738:	00000097          	auipc	ra,0x0
     73c:	8e4080e7          	jalr	-1820(ra) # 1c <clear_audio>
     740:	f95ff06f          	j	6d4 <openMusic+0x214>
     744:	01848663          	beq	s1,s8,750 <openMusic+0x290>
     748:	00100793          	li	a5,1
     74c:	00f49663          	bne	s1,a5,758 <openMusic+0x298>
     750:	00100793          	li	a5,1
     754:	413789b3          	sub	s3,a5,s3
     758:	00098863          	beqz	s3,768 <openMusic+0x2a8>
     75c:	00149493          	slli	s1,s1,0x1
     760:	00942023          	sw	s1,0(s0)
     764:	f4dff06f          	j	6b0 <openMusic+0x1f0>
     768:	4014d493          	srai	s1,s1,0x1
     76c:	ff5ff06f          	j	760 <openMusic+0x2a0>

00000770 <main>:
     770:	000057b7          	lui	a5,0x5
     774:	e547a783          	lw	a5,-428(a5) # 4e54 <LEDS>
     778:	ea010113          	addi	sp,sp,-352
     77c:	14112e23          	sw	ra,348(sp)
     780:	14812c23          	sw	s0,344(sp)
     784:	14912a23          	sw	s1,340(sp)
     788:	15212823          	sw	s2,336(sp)
     78c:	15312623          	sw	s3,332(sp)
     790:	15412423          	sw	s4,328(sp)
     794:	15512223          	sw	s5,324(sp)
     798:	15612023          	sw	s6,320(sp)
     79c:	13712e23          	sw	s7,316(sp)
     7a0:	13812c23          	sw	s8,312(sp)
     7a4:	13912a23          	sw	s9,308(sp)
     7a8:	13a12823          	sw	s10,304(sp)
     7ac:	13b12623          	sw	s11,300(sp)
     7b0:	0007a023          	sw	zero,0(a5)
     7b4:	000017b7          	lui	a5,0x1
     7b8:	00005737          	lui	a4,0x5
     7bc:	50878793          	addi	a5,a5,1288 # 1508 <display_putchar>
     7c0:	1ef72023          	sw	a5,480(a4) # 51e0 <f_putchar>
     7c4:	00001097          	auipc	ra,0x1
     7c8:	bd0080e7          	jalr	-1072(ra) # 1394 <oled_init>
     7cc:	00001097          	auipc	ra,0x1
     7d0:	bd4080e7          	jalr	-1068(ra) # 13a0 <oled_fullscreen>
     7d4:	00000513          	li	a0,0
     7d8:	00001097          	auipc	ra,0x1
     7dc:	c60080e7          	jalr	-928(ra) # 1438 <oled_clear>
     7e0:	000054b7          	lui	s1,0x5
     7e4:	000055b7          	lui	a1,0x5
     7e8:	02000613          	li	a2,32
     7ec:	e6858593          	addi	a1,a1,-408 # 4e68 <SDCARD+0x8>
     7f0:	36448513          	addi	a0,s1,868 # 5364 <path>
     7f4:	00001097          	auipc	ra,0x1
     7f8:	98c080e7          	jalr	-1652(ra) # 1180 <memcpy>
     7fc:	00000097          	auipc	ra,0x0
     800:	700080e7          	jalr	1792(ra) # efc <sdcard_init>
     804:	00001937          	lui	s2,0x1
     808:	00001097          	auipc	ra,0x1
     80c:	640080e7          	jalr	1600(ra) # 1e48 <fl_init>
     810:	00001437          	lui	s0,0x1
     814:	0a890593          	addi	a1,s2,168 # 10a8 <sdcard_writesector>
     818:	05040513          	addi	a0,s0,80 # 1050 <sdcard_readsector>
     81c:	00002097          	auipc	ra,0x2
     820:	5b4080e7          	jalr	1460(ra) # 2dd0 <fl_attach_media>
     824:	fe0518e3          	bnez	a0,814 <main+0xa4>
     828:	00001097          	auipc	ra,0x1
     82c:	cac080e7          	jalr	-852(ra) # 14d4 <display_framebuffer>
     830:	00004637          	lui	a2,0x4
     834:	00000593          	li	a1,0
     838:	00001097          	auipc	ra,0x1
     83c:	92c080e7          	jalr	-1748(ra) # 1164 <memset>
     840:	00001097          	auipc	ra,0x1
     844:	e30080e7          	jalr	-464(ra) # 1670 <display_refresh>
     848:	00000593          	li	a1,0
     84c:	00000513          	li	a0,0
     850:	00001097          	auipc	ra,0x1
     854:	c90080e7          	jalr	-880(ra) # 14e0 <display_set_cursor>
     858:	0ff00593          	li	a1,255
     85c:	00000513          	li	a0,0
     860:	00001097          	auipc	ra,0x1
     864:	c94080e7          	jalr	-876(ra) # 14f4 <display_set_front_back_color>
     868:	00000097          	auipc	ra,0x0
     86c:	a38080e7          	jalr	-1480(ra) # 2a0 <openJingle>
     870:	000057b7          	lui	a5,0x5
     874:	e507aa83          	lw	s5,-432(a5) # 4e50 <BUTTONS>
     878:	000059b7          	lui	s3,0x5
     87c:	00005bb7          	lui	s7,0x5
     880:	00000b13          	li	s6,0
     884:	00000413          	li	s0,0
     888:	22498993          	addi	s3,s3,548 # 5224 <item>
     88c:	00005c37          	lui	s8,0x5
     890:	00005cb7          	lui	s9,0x5
     894:	1fcb8d13          	addi	s10,s7,508 # 51fc <is_music>
     898:	00001097          	auipc	ra,0x1
     89c:	c3c080e7          	jalr	-964(ra) # 14d4 <display_framebuffer>
     8a0:	00004637          	lui	a2,0x4
     8a4:	00000593          	li	a1,0
     8a8:	00001097          	auipc	ra,0x1
     8ac:	8bc080e7          	jalr	-1860(ra) # 1164 <memset>
     8b0:	00001097          	auipc	ra,0x1
     8b4:	dc0080e7          	jalr	-576(ra) # 1670 <display_refresh>
     8b8:	00000593          	li	a1,0
     8bc:	00000513          	li	a0,0
     8c0:	00001097          	auipc	ra,0x1
     8c4:	c20080e7          	jalr	-992(ra) # 14e0 <display_set_cursor>
     8c8:	0ff00593          	li	a1,255
     8cc:	00000513          	li	a0,0
     8d0:	00001097          	auipc	ra,0x1
     8d4:	c24080e7          	jalr	-988(ra) # 14f4 <display_set_front_back_color>
     8d8:	00001097          	auipc	ra,0x1
     8dc:	d98080e7          	jalr	-616(ra) # 1670 <display_refresh>
     8e0:	00000593          	li	a1,0
     8e4:	0ff00513          	li	a0,255
     8e8:	00001097          	auipc	ra,0x1
     8ec:	c0c080e7          	jalr	-1012(ra) # 14f4 <display_set_front_back_color>
     8f0:	00410593          	addi	a1,sp,4
     8f4:	36448513          	addi	a0,s1,868
     8f8:	00003097          	auipc	ra,0x3
     8fc:	b00080e7          	jalr	-1280(ra) # 33f8 <fl_opendir>
     900:	00000913          	li	s2,0
     904:	02050663          	beqz	a0,930 <main+0x1c0>
     908:	00098a13          	mv	s4,s3
     90c:	1fcb8d93          	addi	s11,s7,508
     910:	01010593          	addi	a1,sp,16
     914:	00410513          	addi	a0,sp,4
     918:	00003097          	auipc	ra,0x3
     91c:	1a0080e7          	jalr	416(ra) # 3ab8 <fl_readdir>
     920:	0a050663          	beqz	a0,9cc <main+0x25c>
     924:	00410513          	addi	a0,sp,4
     928:	00001097          	auipc	ra,0x1
     92c:	590080e7          	jalr	1424(ra) # 1eb8 <fl_closedir>
     930:	00000593          	li	a1,0
     934:	00000513          	li	a0,0
     938:	00001097          	auipc	ra,0x1
     93c:	ba8080e7          	jalr	-1112(ra) # 14e0 <display_set_cursor>
     940:	0ffb7593          	zext.b	a1,s6
     944:	07f58513          	addi	a0,a1,127
     948:	0ff57513          	zext.b	a0,a0
     94c:	00001097          	auipc	ra,0x1
     950:	ba8080e7          	jalr	-1112(ra) # 14f4 <display_set_front_back_color>
     954:	f4cc0513          	addi	a0,s8,-180 # 4f4c <SDCARD+0xec>
     958:	007b0b13          	addi	s6,s6,7
     95c:	00001097          	auipc	ra,0x1
     960:	f14080e7          	jalr	-236(ra) # 1870 <printf>
     964:	00098d93          	mv	s11,s3
     968:	00000a13          	li	s4,0
     96c:	092a1863          	bne	s4,s2,9fc <main+0x28c>
     970:	00001097          	auipc	ra,0x1
     974:	d00080e7          	jalr	-768(ra) # 1670 <display_refresh>
     978:	000aa783          	lw	a5,0(s5)
     97c:	0087f793          	andi	a5,a5,8
     980:	00078863          	beqz	a5,990 <main+0x220>
     984:	fff40413          	addi	s0,s0,-1
     988:	00000097          	auipc	ra,0x0
     98c:	a74080e7          	jalr	-1420(ra) # 3fc <openBruitage>
     990:	000aa783          	lw	a5,0(s5)
     994:	0107f793          	andi	a5,a5,16
     998:	00078863          	beqz	a5,9a8 <main+0x238>
     99c:	00140413          	addi	s0,s0,1
     9a0:	00000097          	auipc	ra,0x0
     9a4:	a5c080e7          	jalr	-1444(ra) # 3fc <openBruitage>
     9a8:	000aa783          	lw	a5,0(s5)
     9ac:	0207f793          	andi	a5,a5,32
     9b0:	08078663          	beqz	a5,a3c <main+0x2cc>
     9b4:	000055b7          	lui	a1,0x5
     9b8:	38458593          	addi	a1,a1,900 # 5384 <path_history>
     9bc:	36448513          	addi	a0,s1,868
     9c0:	00001097          	auipc	ra,0x1
     9c4:	868080e7          	jalr	-1944(ra) # 1228 <strcpy>
     9c8:	ed1ff06f          	j	898 <main+0x128>
     9cc:	000a0513          	mv	a0,s4
     9d0:	02000613          	li	a2,32
     9d4:	01010593          	addi	a1,sp,16
     9d8:	00000097          	auipc	ra,0x0
     9dc:	7a8080e7          	jalr	1960(ra) # 1180 <memcpy>
     9e0:	11414783          	lbu	a5,276(sp)
     9e4:	00190913          	addi	s2,s2,1
     9e8:	020a0a13          	addi	s4,s4,32
     9ec:	0017b793          	seqz	a5,a5
     9f0:	00fda023          	sw	a5,0(s11)
     9f4:	004d8d93          	addi	s11,s11,4
     9f8:	f19ff06f          	j	910 <main+0x1a0>
     9fc:	03441a63          	bne	s0,s4,a30 <main+0x2c0>
     a00:	0ff00593          	li	a1,255
     a04:	00000513          	li	a0,0
     a08:	00001097          	auipc	ra,0x1
     a0c:	aec080e7          	jalr	-1300(ra) # 14f4 <display_set_front_back_color>
     a10:	000d8613          	mv	a2,s11
     a14:	000a0593          	mv	a1,s4
     a18:	f68c8513          	addi	a0,s9,-152 # 4f68 <SDCARD+0x108>
     a1c:	00001097          	auipc	ra,0x1
     a20:	e54080e7          	jalr	-428(ra) # 1870 <printf>
     a24:	001a0a13          	addi	s4,s4,1
     a28:	020d8d93          	addi	s11,s11,32
     a2c:	f41ff06f          	j	96c <main+0x1fc>
     a30:	00000593          	li	a1,0
     a34:	0ff00513          	li	a0,255
     a38:	fd1ff06f          	j	a08 <main+0x298>
     a3c:	000aa783          	lw	a5,0(s5)
     a40:	0407f793          	andi	a5,a5,64
     a44:	02078a63          	beqz	a5,a78 <main+0x308>
     a48:	00241793          	slli	a5,s0,0x2
     a4c:	00fd07b3          	add	a5,s10,a5
     a50:	0007a783          	lw	a5,0(a5)
     a54:	00541a13          	slli	s4,s0,0x5
     a58:	01498a33          	add	s4,s3,s4
     a5c:	02078863          	beqz	a5,a8c <main+0x31c>
     a60:	00000097          	auipc	ra,0x0
     a64:	99c080e7          	jalr	-1636(ra) # 3fc <openBruitage>
     a68:	000a0593          	mv	a1,s4
     a6c:	36448513          	addi	a0,s1,868
     a70:	00000097          	auipc	ra,0x0
     a74:	a50080e7          	jalr	-1456(ra) # 4c0 <openMusic>
     a78:	00045463          	bgez	s0,a80 <main+0x310>
     a7c:	fff90413          	addi	s0,s2,-1
     a80:	eb2448e3          	blt	s0,s2,930 <main+0x1c0>
     a84:	00000413          	li	s0,0
     a88:	ea9ff06f          	j	930 <main+0x1c0>
     a8c:	00000097          	auipc	ra,0x0
     a90:	970080e7          	jalr	-1680(ra) # 3fc <openBruitage>
     a94:	00005537          	lui	a0,0x5
     a98:	36448593          	addi	a1,s1,868
     a9c:	02000613          	li	a2,32
     aa0:	38450513          	addi	a0,a0,900 # 5384 <path_history>
     aa4:	00000097          	auipc	ra,0x0
     aa8:	6dc080e7          	jalr	1756(ra) # 1180 <memcpy>
     aac:	000a0593          	mv	a1,s4
     ab0:	36448513          	addi	a0,s1,868
     ab4:	00000097          	auipc	ra,0x0
     ab8:	794080e7          	jalr	1940(ra) # 1248 <strcat>
     abc:	dddff06f          	j	898 <main+0x128>

00000ac0 <pause>:
     ac0:	c0002773          	rdcycle	a4
     ac4:	c00027f3          	rdcycle	a5
     ac8:	40e787b3          	sub	a5,a5,a4
     acc:	fea7ece3          	bltu	a5,a0,ac4 <pause+0x4>
     ad0:	00008067          	ret

00000ad4 <sdcard_idle>:
     ad4:	00008067          	ret

00000ad8 <sdcard_select>:
     ad8:	000057b7          	lui	a5,0x5
     adc:	e607a783          	lw	a5,-416(a5) # 4e60 <SDCARD>
     ae0:	00200713          	li	a4,2
     ae4:	00e7a023          	sw	a4,0(a5)
     ae8:	00008067          	ret

00000aec <sdcard_ponder>:
     aec:	000056b7          	lui	a3,0x5
     af0:	e606a603          	lw	a2,-416(a3) # 4e60 <SDCARD>
     af4:	01000793          	li	a5,16
     af8:	00000713          	li	a4,0
     afc:	00100693          	li	a3,1
     b00:	00676593          	ori	a1,a4,6
     b04:	00b62023          	sw	a1,0(a2) # 4000 <fatfs_fat_add_cluster_to_chain+0x8>
     b08:	40e68733          	sub	a4,a3,a4
     b0c:	00000013          	nop
     b10:	fff78793          	addi	a5,a5,-1
     b14:	fe0796e3          	bnez	a5,b00 <sdcard_ponder+0x14>
     b18:	00008067          	ret

00000b1c <sdcard_unselect>:
     b1c:	000057b7          	lui	a5,0x5
     b20:	e607a783          	lw	a5,-416(a5) # 4e60 <SDCARD>
     b24:	00600713          	li	a4,6
     b28:	00e7a023          	sw	a4,0(a5)
     b2c:	00008067          	ret

00000b30 <sdcard_send>:
     b30:	000057b7          	lui	a5,0x5
     b34:	e607a783          	lw	a5,-416(a5) # 4e60 <SDCARD>
     b38:	00655713          	srli	a4,a0,0x6
     b3c:	00277713          	andi	a4,a4,2
     b40:	00e7a023          	sw	a4,0(a5)
     b44:	00176713          	ori	a4,a4,1
     b48:	00e7a023          	sw	a4,0(a5)
     b4c:	00555713          	srli	a4,a0,0x5
     b50:	00277713          	andi	a4,a4,2
     b54:	00e7a023          	sw	a4,0(a5)
     b58:	00176713          	ori	a4,a4,1
     b5c:	00e7a023          	sw	a4,0(a5)
     b60:	00455713          	srli	a4,a0,0x4
     b64:	00277713          	andi	a4,a4,2
     b68:	00e7a023          	sw	a4,0(a5)
     b6c:	00176713          	ori	a4,a4,1
     b70:	00e7a023          	sw	a4,0(a5)
     b74:	00355713          	srli	a4,a0,0x3
     b78:	00277713          	andi	a4,a4,2
     b7c:	00e7a023          	sw	a4,0(a5)
     b80:	00176713          	ori	a4,a4,1
     b84:	00e7a023          	sw	a4,0(a5)
     b88:	00255713          	srli	a4,a0,0x2
     b8c:	00277713          	andi	a4,a4,2
     b90:	00e7a023          	sw	a4,0(a5)
     b94:	00176713          	ori	a4,a4,1
     b98:	00e7a023          	sw	a4,0(a5)
     b9c:	00155713          	srli	a4,a0,0x1
     ba0:	00277713          	andi	a4,a4,2
     ba4:	00e7a023          	sw	a4,0(a5)
     ba8:	00176713          	ori	a4,a4,1
     bac:	00e7a023          	sw	a4,0(a5)
     bb0:	00257713          	andi	a4,a0,2
     bb4:	00e7a023          	sw	a4,0(a5)
     bb8:	00151513          	slli	a0,a0,0x1
     bbc:	00176713          	ori	a4,a4,1
     bc0:	00e7a023          	sw	a4,0(a5)
     bc4:	00257513          	andi	a0,a0,2
     bc8:	00a7a023          	sw	a0,0(a5)
     bcc:	00156513          	ori	a0,a0,1
     bd0:	00a7a023          	sw	a0,0(a5)
     bd4:	00200713          	li	a4,2
     bd8:	00e7a023          	sw	a4,0(a5)
     bdc:	000057b7          	lui	a5,0x5
     be0:	1cc7a783          	lw	a5,460(a5) # 51cc <sdcard_while_loading_callback>
     be4:	00078067          	jr	a5

00000be8 <sdcard_read>:
     be8:	fd010113          	addi	sp,sp,-48
     bec:	fff50793          	addi	a5,a0,-1
     bf0:	01312e23          	sw	s3,28(sp)
     bf4:	00100993          	li	s3,1
     bf8:	00f999b3          	sll	s3,s3,a5
     bfc:	000057b7          	lui	a5,0x5
     c00:	01512a23          	sw	s5,20(sp)
     c04:	e607aa83          	lw	s5,-416(a5) # 4e60 <SDCARD>
     c08:	02812423          	sw	s0,40(sp)
     c0c:	02912223          	sw	s1,36(sp)
     c10:	03212023          	sw	s2,32(sp)
     c14:	01412c23          	sw	s4,24(sp)
     c18:	01612823          	sw	s6,16(sp)
     c1c:	01712623          	sw	s7,12(sp)
     c20:	01812423          	sw	s8,8(sp)
     c24:	02112623          	sw	ra,44(sp)
     c28:	00050493          	mv	s1,a0
     c2c:	00058a13          	mv	s4,a1
     c30:	0ff00413          	li	s0,255
     c34:	00000913          	li	s2,0
     c38:	00300b13          	li	s6,3
     c3c:	00200b93          	li	s7,2
     c40:	00005c37          	lui	s8,0x5
     c44:	040a0063          	beqz	s4,c84 <sdcard_read+0x9c>
     c48:	0089f7b3          	and	a5,s3,s0
     c4c:	02079e63          	bnez	a5,c88 <sdcard_read+0xa0>
     c50:	02c12083          	lw	ra,44(sp)
     c54:	0ff47513          	zext.b	a0,s0
     c58:	02812403          	lw	s0,40(sp)
     c5c:	02412483          	lw	s1,36(sp)
     c60:	02012903          	lw	s2,32(sp)
     c64:	01c12983          	lw	s3,28(sp)
     c68:	01812a03          	lw	s4,24(sp)
     c6c:	01412a83          	lw	s5,20(sp)
     c70:	01012b03          	lw	s6,16(sp)
     c74:	00c12b83          	lw	s7,12(sp)
     c78:	00812c03          	lw	s8,8(sp)
     c7c:	03010113          	addi	sp,sp,48
     c80:	00008067          	ret
     c84:	fc9956e3          	bge	s2,s1,c50 <sdcard_read+0x68>
     c88:	016aa023          	sw	s6,0(s5)
     c8c:	017aa023          	sw	s7,0(s5)
     c90:	000aa783          	lw	a5,0(s5)
     c94:	00141413          	slli	s0,s0,0x1
     c98:	00190913          	addi	s2,s2,1
     c9c:	00f46433          	or	s0,s0,a5
     ca0:	1ccc2783          	lw	a5,460(s8) # 51cc <sdcard_while_loading_callback>
     ca4:	000780e7          	jalr	a5
     ca8:	f9dff06f          	j	c44 <sdcard_read+0x5c>

00000cac <sdcard_get>:
     cac:	fe010113          	addi	sp,sp,-32
     cb0:	00112e23          	sw	ra,28(sp)
     cb4:	00812c23          	sw	s0,24(sp)
     cb8:	00912a23          	sw	s1,20(sp)
     cbc:	00050413          	mv	s0,a0
     cc0:	00b12623          	sw	a1,12(sp)
     cc4:	00000097          	auipc	ra,0x0
     cc8:	e14080e7          	jalr	-492(ra) # ad8 <sdcard_select>
     ccc:	00c12583          	lw	a1,12(sp)
     cd0:	00040513          	mv	a0,s0
     cd4:	00100493          	li	s1,1
     cd8:	00000097          	auipc	ra,0x0
     cdc:	f10080e7          	jalr	-240(ra) # be8 <sdcard_read>
     ce0:	00345413          	srli	s0,s0,0x3
     ce4:	0284c463          	blt	s1,s0,d0c <sdcard_get+0x60>
     ce8:	00a12623          	sw	a0,12(sp)
     cec:	00000097          	auipc	ra,0x0
     cf0:	e30080e7          	jalr	-464(ra) # b1c <sdcard_unselect>
     cf4:	01c12083          	lw	ra,28(sp)
     cf8:	01812403          	lw	s0,24(sp)
     cfc:	00c12503          	lw	a0,12(sp)
     d00:	01412483          	lw	s1,20(sp)
     d04:	02010113          	addi	sp,sp,32
     d08:	00008067          	ret
     d0c:	00000593          	li	a1,0
     d10:	00800513          	li	a0,8
     d14:	00000097          	auipc	ra,0x0
     d18:	ed4080e7          	jalr	-300(ra) # be8 <sdcard_read>
     d1c:	00148493          	addi	s1,s1,1
     d20:	fc5ff06f          	j	ce4 <sdcard_get+0x38>

00000d24 <sdcard_cmd>:
     d24:	ff010113          	addi	sp,sp,-16
     d28:	00812423          	sw	s0,8(sp)
     d2c:	00912223          	sw	s1,4(sp)
     d30:	01212023          	sw	s2,0(sp)
     d34:	00112623          	sw	ra,12(sp)
     d38:	00050493          	mv	s1,a0
     d3c:	00000413          	li	s0,0
     d40:	00000097          	auipc	ra,0x0
     d44:	d98080e7          	jalr	-616(ra) # ad8 <sdcard_select>
     d48:	00600913          	li	s2,6
     d4c:	008487b3          	add	a5,s1,s0
     d50:	0007c503          	lbu	a0,0(a5)
     d54:	00140413          	addi	s0,s0,1
     d58:	00000097          	auipc	ra,0x0
     d5c:	dd8080e7          	jalr	-552(ra) # b30 <sdcard_send>
     d60:	ff2416e3          	bne	s0,s2,d4c <sdcard_cmd+0x28>
     d64:	00812403          	lw	s0,8(sp)
     d68:	00c12083          	lw	ra,12(sp)
     d6c:	00412483          	lw	s1,4(sp)
     d70:	00012903          	lw	s2,0(sp)
     d74:	01010113          	addi	sp,sp,16
     d78:	00000317          	auipc	t1,0x0
     d7c:	da430067          	jr	-604(t1) # b1c <sdcard_unselect>

00000d80 <sdcard_start_sector>:
     d80:	ff010113          	addi	sp,sp,-16
     d84:	00112623          	sw	ra,12(sp)
     d88:	00812423          	sw	s0,8(sp)
     d8c:	00050413          	mv	s0,a0
     d90:	00000097          	auipc	ra,0x0
     d94:	d48080e7          	jalr	-696(ra) # ad8 <sdcard_select>
     d98:	05100513          	li	a0,81
     d9c:	00000097          	auipc	ra,0x0
     da0:	d94080e7          	jalr	-620(ra) # b30 <sdcard_send>
     da4:	01845513          	srli	a0,s0,0x18
     da8:	00000097          	auipc	ra,0x0
     dac:	d88080e7          	jalr	-632(ra) # b30 <sdcard_send>
     db0:	41045513          	srai	a0,s0,0x10
     db4:	0ff57513          	zext.b	a0,a0
     db8:	00000097          	auipc	ra,0x0
     dbc:	d78080e7          	jalr	-648(ra) # b30 <sdcard_send>
     dc0:	40845513          	srai	a0,s0,0x8
     dc4:	0ff57513          	zext.b	a0,a0
     dc8:	00000097          	auipc	ra,0x0
     dcc:	d68080e7          	jalr	-664(ra) # b30 <sdcard_send>
     dd0:	0ff47513          	zext.b	a0,s0
     dd4:	00000097          	auipc	ra,0x0
     dd8:	d5c080e7          	jalr	-676(ra) # b30 <sdcard_send>
     ddc:	05500513          	li	a0,85
     de0:	00000097          	auipc	ra,0x0
     de4:	d50080e7          	jalr	-688(ra) # b30 <sdcard_send>
     de8:	00000097          	auipc	ra,0x0
     dec:	d34080e7          	jalr	-716(ra) # b1c <sdcard_unselect>
     df0:	00812403          	lw	s0,8(sp)
     df4:	00c12083          	lw	ra,12(sp)
     df8:	00100593          	li	a1,1
     dfc:	00800513          	li	a0,8
     e00:	01010113          	addi	sp,sp,16
     e04:	00000317          	auipc	t1,0x0
     e08:	ea830067          	jr	-344(t1) # cac <sdcard_get>

00000e0c <sdcard_read_sector>:
     e0c:	ff010113          	addi	sp,sp,-16
     e10:	00812423          	sw	s0,8(sp)
     e14:	00112623          	sw	ra,12(sp)
     e18:	00912223          	sw	s1,4(sp)
     e1c:	01212023          	sw	s2,0(sp)
     e20:	00058413          	mv	s0,a1
     e24:	00000097          	auipc	ra,0x0
     e28:	f5c080e7          	jalr	-164(ra) # d80 <sdcard_start_sector>
     e2c:	04051863          	bnez	a0,e7c <sdcard_read_sector+0x70>
     e30:	00100593          	li	a1,1
     e34:	00100513          	li	a0,1
     e38:	00000097          	auipc	ra,0x0
     e3c:	e74080e7          	jalr	-396(ra) # cac <sdcard_get>
     e40:	00000493          	li	s1,0
     e44:	20000913          	li	s2,512
     e48:	00000593          	li	a1,0
     e4c:	00800513          	li	a0,8
     e50:	00000097          	auipc	ra,0x0
     e54:	e5c080e7          	jalr	-420(ra) # cac <sdcard_get>
     e58:	009407b3          	add	a5,s0,s1
     e5c:	00a78023          	sb	a0,0(a5)
     e60:	00148493          	addi	s1,s1,1
     e64:	ff2492e3          	bne	s1,s2,e48 <sdcard_read_sector+0x3c>
     e68:	00100593          	li	a1,1
     e6c:	01000513          	li	a0,16
     e70:	20040413          	addi	s0,s0,512
     e74:	00000097          	auipc	ra,0x0
     e78:	e38080e7          	jalr	-456(ra) # cac <sdcard_get>
     e7c:	00c12083          	lw	ra,12(sp)
     e80:	00040513          	mv	a0,s0
     e84:	00812403          	lw	s0,8(sp)
     e88:	00412483          	lw	s1,4(sp)
     e8c:	00012903          	lw	s2,0(sp)
     e90:	01010113          	addi	sp,sp,16
     e94:	00008067          	ret

00000e98 <sdcard_preinit>:
     e98:	ff010113          	addi	sp,sp,-16
     e9c:	000057b7          	lui	a5,0x5
     ea0:	00812423          	sw	s0,8(sp)
     ea4:	e607a403          	lw	s0,-416(a5) # 4e60 <SDCARD>
     ea8:	00112623          	sw	ra,12(sp)
     eac:	00600793          	li	a5,6
     eb0:	01313537          	lui	a0,0x1313
     eb4:	00f42023          	sw	a5,0(s0)
     eb8:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     ebc:	00000097          	auipc	ra,0x0
     ec0:	c04080e7          	jalr	-1020(ra) # ac0 <pause>
     ec4:	0a000793          	li	a5,160
     ec8:	00000713          	li	a4,0
     ecc:	00100693          	li	a3,1
     ed0:	00676613          	ori	a2,a4,6
     ed4:	00c42023          	sw	a2,0(s0)
     ed8:	fff78793          	addi	a5,a5,-1
     edc:	40e68733          	sub	a4,a3,a4
     ee0:	fe0798e3          	bnez	a5,ed0 <sdcard_preinit+0x38>
     ee4:	00600793          	li	a5,6
     ee8:	00c12083          	lw	ra,12(sp)
     eec:	00f42023          	sw	a5,0(s0)
     ef0:	00812403          	lw	s0,8(sp)
     ef4:	01010113          	addi	sp,sp,16
     ef8:	00008067          	ret

00000efc <sdcard_init>:
     efc:	fe010113          	addi	sp,sp,-32
     f00:	000017b7          	lui	a5,0x1
     f04:	00812c23          	sw	s0,24(sp)
     f08:	00005737          	lui	a4,0x5
     f0c:	ad478793          	addi	a5,a5,-1324 # ad4 <sdcard_idle>
     f10:	01313437          	lui	s0,0x1313
     f14:	01212823          	sw	s2,16(sp)
     f18:	01312623          	sw	s3,12(sp)
     f1c:	00112e23          	sw	ra,28(sp)
     f20:	00912a23          	sw	s1,20(sp)
     f24:	1cf72623          	sw	a5,460(a4) # 51cc <sdcard_while_loading_callback>
     f28:	00005937          	lui	s2,0x5
     f2c:	0ff00993          	li	s3,255
     f30:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     f34:	00000097          	auipc	ra,0x0
     f38:	f64080e7          	jalr	-156(ra) # e98 <sdcard_preinit>
     f3c:	e2c90513          	addi	a0,s2,-468 # 4e2c <cmd0>
     f40:	00000097          	auipc	ra,0x0
     f44:	de4080e7          	jalr	-540(ra) # d24 <sdcard_cmd>
     f48:	00100593          	li	a1,1
     f4c:	00800513          	li	a0,8
     f50:	00000097          	auipc	ra,0x0
     f54:	d5c080e7          	jalr	-676(ra) # cac <sdcard_get>
     f58:	00050493          	mv	s1,a0
     f5c:	00000097          	auipc	ra,0x0
     f60:	b90080e7          	jalr	-1136(ra) # aec <sdcard_ponder>
     f64:	01349a63          	bne	s1,s3,f78 <sdcard_init+0x7c>
     f68:	00040513          	mv	a0,s0
     f6c:	00000097          	auipc	ra,0x0
     f70:	b54080e7          	jalr	-1196(ra) # ac0 <pause>
     f74:	fc1ff06f          	j	f34 <sdcard_init+0x38>
     f78:	00005537          	lui	a0,0x5
     f7c:	e4450513          	addi	a0,a0,-444 # 4e44 <cmd8>
     f80:	00000097          	auipc	ra,0x0
     f84:	da4080e7          	jalr	-604(ra) # d24 <sdcard_cmd>
     f88:	00100593          	li	a1,1
     f8c:	02800513          	li	a0,40
     f90:	00000097          	auipc	ra,0x0
     f94:	d1c080e7          	jalr	-740(ra) # cac <sdcard_get>
     f98:	001e8437          	lui	s0,0x1e8
     f9c:	00000097          	auipc	ra,0x0
     fa0:	b50080e7          	jalr	-1200(ra) # aec <sdcard_ponder>
     fa4:	00005937          	lui	s2,0x5
     fa8:	000059b7          	lui	s3,0x5
     fac:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     fb0:	e3c90513          	addi	a0,s2,-452 # 4e3c <cmd55>
     fb4:	00000097          	auipc	ra,0x0
     fb8:	d70080e7          	jalr	-656(ra) # d24 <sdcard_cmd>
     fbc:	00100593          	li	a1,1
     fc0:	00800513          	li	a0,8
     fc4:	00000097          	auipc	ra,0x0
     fc8:	ce8080e7          	jalr	-792(ra) # cac <sdcard_get>
     fcc:	00000097          	auipc	ra,0x0
     fd0:	b20080e7          	jalr	-1248(ra) # aec <sdcard_ponder>
     fd4:	e2498513          	addi	a0,s3,-476 # 4e24 <acmd41>
     fd8:	00000097          	auipc	ra,0x0
     fdc:	d4c080e7          	jalr	-692(ra) # d24 <sdcard_cmd>
     fe0:	00100593          	li	a1,1
     fe4:	00800513          	li	a0,8
     fe8:	00000097          	auipc	ra,0x0
     fec:	cc4080e7          	jalr	-828(ra) # cac <sdcard_get>
     ff0:	00050493          	mv	s1,a0
     ff4:	00000097          	auipc	ra,0x0
     ff8:	af8080e7          	jalr	-1288(ra) # aec <sdcard_ponder>
     ffc:	00048a63          	beqz	s1,1010 <sdcard_init+0x114>
    1000:	00040513          	mv	a0,s0
    1004:	00000097          	auipc	ra,0x0
    1008:	abc080e7          	jalr	-1348(ra) # ac0 <pause>
    100c:	fa5ff06f          	j	fb0 <sdcard_init+0xb4>
    1010:	00005537          	lui	a0,0x5
    1014:	e3450513          	addi	a0,a0,-460 # 4e34 <cmd16>
    1018:	00000097          	auipc	ra,0x0
    101c:	d0c080e7          	jalr	-756(ra) # d24 <sdcard_cmd>
    1020:	00100593          	li	a1,1
    1024:	00800513          	li	a0,8
    1028:	00000097          	auipc	ra,0x0
    102c:	c84080e7          	jalr	-892(ra) # cac <sdcard_get>
    1030:	01812403          	lw	s0,24(sp)
    1034:	01c12083          	lw	ra,28(sp)
    1038:	01412483          	lw	s1,20(sp)
    103c:	01012903          	lw	s2,16(sp)
    1040:	00c12983          	lw	s3,12(sp)
    1044:	02010113          	addi	sp,sp,32
    1048:	00000317          	auipc	t1,0x0
    104c:	aa430067          	jr	-1372(t1) # aec <sdcard_ponder>

00001050 <sdcard_readsector>:
    1050:	04060863          	beqz	a2,10a0 <sdcard_readsector+0x50>
    1054:	ff010113          	addi	sp,sp,-16
    1058:	00812423          	sw	s0,8(sp)
    105c:	00912223          	sw	s1,4(sp)
    1060:	00112623          	sw	ra,12(sp)
    1064:	00050413          	mv	s0,a0
    1068:	00a604b3          	add	s1,a2,a0
    106c:	00941e63          	bne	s0,s1,1088 <sdcard_readsector+0x38>
    1070:	00c12083          	lw	ra,12(sp)
    1074:	00812403          	lw	s0,8(sp)
    1078:	00412483          	lw	s1,4(sp)
    107c:	00100513          	li	a0,1
    1080:	01010113          	addi	sp,sp,16
    1084:	00008067          	ret
    1088:	00040513          	mv	a0,s0
    108c:	00000097          	auipc	ra,0x0
    1090:	d80080e7          	jalr	-640(ra) # e0c <sdcard_read_sector>
    1094:	00050593          	mv	a1,a0
    1098:	00140413          	addi	s0,s0,1
    109c:	fd1ff06f          	j	106c <sdcard_readsector+0x1c>
    10a0:	00000513          	li	a0,0
    10a4:	00008067          	ret

000010a8 <sdcard_writesector>:
    10a8:	00000513          	li	a0,0
    10ac:	00008067          	ret

000010b0 <__divsi3>:
    10b0:	06054063          	bltz	a0,1110 <__umodsi3+0x10>
    10b4:	0605c663          	bltz	a1,1120 <__umodsi3+0x20>

000010b8 <__udivsi3>:
    10b8:	00058613          	mv	a2,a1
    10bc:	00050593          	mv	a1,a0
    10c0:	fff00513          	li	a0,-1
    10c4:	02060c63          	beqz	a2,10fc <__udivsi3+0x44>
    10c8:	00100693          	li	a3,1
    10cc:	00b67a63          	bgeu	a2,a1,10e0 <__udivsi3+0x28>
    10d0:	00c05863          	blez	a2,10e0 <__udivsi3+0x28>
    10d4:	00161613          	slli	a2,a2,0x1
    10d8:	00169693          	slli	a3,a3,0x1
    10dc:	feb66ae3          	bltu	a2,a1,10d0 <__udivsi3+0x18>
    10e0:	00000513          	li	a0,0
    10e4:	00c5e663          	bltu	a1,a2,10f0 <__udivsi3+0x38>
    10e8:	40c585b3          	sub	a1,a1,a2
    10ec:	00d56533          	or	a0,a0,a3
    10f0:	0016d693          	srli	a3,a3,0x1
    10f4:	00165613          	srli	a2,a2,0x1
    10f8:	fe0696e3          	bnez	a3,10e4 <__udivsi3+0x2c>
    10fc:	00008067          	ret

00001100 <__umodsi3>:
    1100:	00008293          	mv	t0,ra
    1104:	fb5ff0ef          	jal	ra,10b8 <__udivsi3>
    1108:	00058513          	mv	a0,a1
    110c:	00028067          	jr	t0
    1110:	40a00533          	neg	a0,a0
    1114:	0005d863          	bgez	a1,1124 <__umodsi3+0x24>
    1118:	40b005b3          	neg	a1,a1
    111c:	f95ff06f          	j	10b0 <__divsi3>
    1120:	40b005b3          	neg	a1,a1
    1124:	00008293          	mv	t0,ra
    1128:	f89ff0ef          	jal	ra,10b0 <__divsi3>
    112c:	40a00533          	neg	a0,a0
    1130:	00028067          	jr	t0

00001134 <__modsi3>:
    1134:	00008293          	mv	t0,ra
    1138:	0005ca63          	bltz	a1,114c <__modsi3+0x18>
    113c:	00054c63          	bltz	a0,1154 <__modsi3+0x20>
    1140:	f79ff0ef          	jal	ra,10b8 <__udivsi3>
    1144:	00058513          	mv	a0,a1
    1148:	00028067          	jr	t0
    114c:	40b005b3          	neg	a1,a1
    1150:	fe0558e3          	bgez	a0,1140 <__modsi3+0xc>
    1154:	40a00533          	neg	a0,a0
    1158:	f61ff0ef          	jal	ra,10b8 <__udivsi3>
    115c:	40b00533          	neg	a0,a1
    1160:	00028067          	jr	t0

00001164 <memset>:
    1164:	00c50633          	add	a2,a0,a2
    1168:	00050793          	mv	a5,a0
    116c:	00c79463          	bne	a5,a2,1174 <memset+0x10>
    1170:	00008067          	ret
    1174:	00178793          	addi	a5,a5,1
    1178:	feb78fa3          	sb	a1,-1(a5)
    117c:	ff1ff06f          	j	116c <memset+0x8>

00001180 <memcpy>:
    1180:	00000793          	li	a5,0
    1184:	00c79463          	bne	a5,a2,118c <memcpy+0xc>
    1188:	00008067          	ret
    118c:	00f58733          	add	a4,a1,a5
    1190:	00074683          	lbu	a3,0(a4)
    1194:	00f50733          	add	a4,a0,a5
    1198:	00178793          	addi	a5,a5,1
    119c:	00d70023          	sb	a3,0(a4)
    11a0:	fe5ff06f          	j	1184 <memcpy+0x4>

000011a4 <strlen>:
    11a4:	00050793          	mv	a5,a0
    11a8:	00000513          	li	a0,0
    11ac:	00a78733          	add	a4,a5,a0
    11b0:	00074703          	lbu	a4,0(a4)
    11b4:	00071463          	bnez	a4,11bc <strlen+0x18>
    11b8:	00008067          	ret
    11bc:	00150513          	addi	a0,a0,1
    11c0:	fedff06f          	j	11ac <strlen+0x8>

000011c4 <strncmp>:
    11c4:	00000793          	li	a5,0
    11c8:	00c79663          	bne	a5,a2,11d4 <strncmp+0x10>
    11cc:	00000513          	li	a0,0
    11d0:	00008067          	ret
    11d4:	00f50733          	add	a4,a0,a5
    11d8:	00074683          	lbu	a3,0(a4)
    11dc:	00f58733          	add	a4,a1,a5
    11e0:	00074703          	lbu	a4,0(a4)
    11e4:	00e6e863          	bltu	a3,a4,11f4 <strncmp+0x30>
    11e8:	00d76a63          	bltu	a4,a3,11fc <strncmp+0x38>
    11ec:	00178793          	addi	a5,a5,1
    11f0:	fd9ff06f          	j	11c8 <strncmp+0x4>
    11f4:	fff00513          	li	a0,-1
    11f8:	00008067          	ret
    11fc:	00100513          	li	a0,1
    1200:	00008067          	ret

00001204 <strncpy>:
    1204:	00000793          	li	a5,0
    1208:	00f61463          	bne	a2,a5,1210 <strncpy+0xc>
    120c:	00008067          	ret
    1210:	00f58733          	add	a4,a1,a5
    1214:	00074683          	lbu	a3,0(a4)
    1218:	00f50733          	add	a4,a0,a5
    121c:	00178793          	addi	a5,a5,1
    1220:	00d70023          	sb	a3,0(a4)
    1224:	fe5ff06f          	j	1208 <strncpy+0x4>

00001228 <strcpy>:
    1228:	0005c783          	lbu	a5,0(a1)
    122c:	00079663          	bnez	a5,1238 <strcpy+0x10>
    1230:	00050023          	sb	zero,0(a0)
    1234:	00008067          	ret
    1238:	00150513          	addi	a0,a0,1
    123c:	00158593          	addi	a1,a1,1
    1240:	fef50fa3          	sb	a5,-1(a0)
    1244:	fe5ff06f          	j	1228 <strcpy>

00001248 <strcat>:
    1248:	00050793          	mv	a5,a0
    124c:	0007c683          	lbu	a3,0(a5)
    1250:	00078713          	mv	a4,a5
    1254:	00178793          	addi	a5,a5,1
    1258:	fe069ae3          	bnez	a3,124c <strcat+0x4>
    125c:	0005c783          	lbu	a5,0(a1)
    1260:	00158593          	addi	a1,a1,1
    1264:	00170713          	addi	a4,a4,1
    1268:	fef70fa3          	sb	a5,-1(a4)
    126c:	fe0798e3          	bnez	a5,125c <strcat+0x14>
    1270:	00008067          	ret

00001274 <oled_wait>:
    1274:	00000013          	nop
    1278:	00000013          	nop
    127c:	00000013          	nop
    1280:	00000013          	nop
    1284:	00000013          	nop
    1288:	00000013          	nop
    128c:	00000013          	nop
    1290:	00008067          	ret

00001294 <oled_init_mode>:
    1294:	000057b7          	lui	a5,0x5
    1298:	e5c7a703          	lw	a4,-420(a5) # 4e5c <OLED_RST>
    129c:	ff010113          	addi	sp,sp,-16
    12a0:	00912223          	sw	s1,4(sp)
    12a4:	00112623          	sw	ra,12(sp)
    12a8:	00812423          	sw	s0,8(sp)
    12ac:	00072023          	sw	zero,0(a4)
    12b0:	00050493          	mv	s1,a0
    12b4:	00040737          	lui	a4,0x40
    12b8:	00000013          	nop
    12bc:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    12c0:	fe071ce3          	bnez	a4,12b8 <oled_init_mode+0x24>
    12c4:	e5c7a703          	lw	a4,-420(a5)
    12c8:	00100693          	li	a3,1
    12cc:	00d72023          	sw	a3,0(a4)
    12d0:	00040737          	lui	a4,0x40
    12d4:	00000013          	nop
    12d8:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    12dc:	fe071ce3          	bnez	a4,12d4 <oled_init_mode+0x40>
    12e0:	e5c7a783          	lw	a5,-420(a5)
    12e4:	0007a023          	sw	zero,0(a5)
    12e8:	000407b7          	lui	a5,0x40
    12ec:	00000013          	nop
    12f0:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    12f4:	fe079ce3          	bnez	a5,12ec <oled_init_mode+0x58>
    12f8:	00005737          	lui	a4,0x5
    12fc:	e5872783          	lw	a5,-424(a4) # 4e58 <OLED>
    1300:	2af00693          	li	a3,687
    1304:	00d7a023          	sw	a3,0(a5)
    1308:	000407b7          	lui	a5,0x40
    130c:	00000013          	nop
    1310:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1314:	fe079ce3          	bnez	a5,130c <oled_init_mode+0x78>
    1318:	e5872403          	lw	s0,-424(a4)
    131c:	2a000793          	li	a5,672
    1320:	00f42023          	sw	a5,0(s0)
    1324:	00000097          	auipc	ra,0x0
    1328:	f50080e7          	jalr	-176(ra) # 1274 <oled_wait>
    132c:	4a000793          	li	a5,1184
    1330:	00048463          	beqz	s1,1338 <oled_init_mode+0xa4>
    1334:	42000793          	li	a5,1056
    1338:	00f42023          	sw	a5,0(s0)
    133c:	00000097          	auipc	ra,0x0
    1340:	f38080e7          	jalr	-200(ra) # 1274 <oled_wait>
    1344:	2fd00793          	li	a5,765
    1348:	00f42023          	sw	a5,0(s0)
    134c:	00000097          	auipc	ra,0x0
    1350:	f28080e7          	jalr	-216(ra) # 1274 <oled_wait>
    1354:	4b100793          	li	a5,1201
    1358:	00f42023          	sw	a5,0(s0)
    135c:	00000097          	auipc	ra,0x0
    1360:	f18080e7          	jalr	-232(ra) # 1274 <oled_wait>
    1364:	2a200793          	li	a5,674
    1368:	00f42023          	sw	a5,0(s0)
    136c:	00000097          	auipc	ra,0x0
    1370:	f08080e7          	jalr	-248(ra) # 1274 <oled_wait>
    1374:	40000793          	li	a5,1024
    1378:	00f42023          	sw	a5,0(s0)
    137c:	00812403          	lw	s0,8(sp)
    1380:	00c12083          	lw	ra,12(sp)
    1384:	00412483          	lw	s1,4(sp)
    1388:	01010113          	addi	sp,sp,16
    138c:	00000317          	auipc	t1,0x0
    1390:	ee830067          	jr	-280(t1) # 1274 <oled_wait>

00001394 <oled_init>:
    1394:	00000513          	li	a0,0
    1398:	00000317          	auipc	t1,0x0
    139c:	efc30067          	jr	-260(t1) # 1294 <oled_init_mode>

000013a0 <oled_fullscreen>:
    13a0:	ff010113          	addi	sp,sp,-16
    13a4:	000057b7          	lui	a5,0x5
    13a8:	00812423          	sw	s0,8(sp)
    13ac:	e587a403          	lw	s0,-424(a5) # 4e58 <OLED>
    13b0:	00112623          	sw	ra,12(sp)
    13b4:	00912223          	sw	s1,4(sp)
    13b8:	01212023          	sw	s2,0(sp)
    13bc:	21500793          	li	a5,533
    13c0:	00f42023          	sw	a5,0(s0)
    13c4:	40000913          	li	s2,1024
    13c8:	00000097          	auipc	ra,0x0
    13cc:	eac080e7          	jalr	-340(ra) # 1274 <oled_wait>
    13d0:	47f00493          	li	s1,1151
    13d4:	01242023          	sw	s2,0(s0)
    13d8:	00000097          	auipc	ra,0x0
    13dc:	e9c080e7          	jalr	-356(ra) # 1274 <oled_wait>
    13e0:	00942023          	sw	s1,0(s0)
    13e4:	00000097          	auipc	ra,0x0
    13e8:	e90080e7          	jalr	-368(ra) # 1274 <oled_wait>
    13ec:	27500793          	li	a5,629
    13f0:	00f42023          	sw	a5,0(s0)
    13f4:	00000097          	auipc	ra,0x0
    13f8:	e80080e7          	jalr	-384(ra) # 1274 <oled_wait>
    13fc:	01242023          	sw	s2,0(s0)
    1400:	00000097          	auipc	ra,0x0
    1404:	e74080e7          	jalr	-396(ra) # 1274 <oled_wait>
    1408:	00942023          	sw	s1,0(s0)
    140c:	00000097          	auipc	ra,0x0
    1410:	e68080e7          	jalr	-408(ra) # 1274 <oled_wait>
    1414:	25c00793          	li	a5,604
    1418:	00f42023          	sw	a5,0(s0)
    141c:	00812403          	lw	s0,8(sp)
    1420:	00c12083          	lw	ra,12(sp)
    1424:	00412483          	lw	s1,4(sp)
    1428:	00012903          	lw	s2,0(sp)
    142c:	01010113          	addi	sp,sp,16
    1430:	00000317          	auipc	t1,0x0
    1434:	e4430067          	jr	-444(t1) # 1274 <oled_wait>

00001438 <oled_clear>:
    1438:	fe010113          	addi	sp,sp,-32
    143c:	000057b7          	lui	a5,0x5
    1440:	01312623          	sw	s3,12(sp)
    1444:	e587a983          	lw	s3,-424(a5) # 4e58 <OLED>
    1448:	00812c23          	sw	s0,24(sp)
    144c:	01212823          	sw	s2,16(sp)
    1450:	00112e23          	sw	ra,28(sp)
    1454:	00912a23          	sw	s1,20(sp)
    1458:	08000913          	li	s2,128
    145c:	40056413          	ori	s0,a0,1024
    1460:	08000493          	li	s1,128
    1464:	0089a023          	sw	s0,0(s3)
    1468:	00000097          	auipc	ra,0x0
    146c:	e0c080e7          	jalr	-500(ra) # 1274 <oled_wait>
    1470:	0089a023          	sw	s0,0(s3)
    1474:	00000097          	auipc	ra,0x0
    1478:	e00080e7          	jalr	-512(ra) # 1274 <oled_wait>
    147c:	fff48493          	addi	s1,s1,-1
    1480:	0089a023          	sw	s0,0(s3)
    1484:	00000097          	auipc	ra,0x0
    1488:	df0080e7          	jalr	-528(ra) # 1274 <oled_wait>
    148c:	fc049ce3          	bnez	s1,1464 <oled_clear+0x2c>
    1490:	fff90913          	addi	s2,s2,-1
    1494:	fc0916e3          	bnez	s2,1460 <oled_clear+0x28>
    1498:	01c12083          	lw	ra,28(sp)
    149c:	01812403          	lw	s0,24(sp)
    14a0:	01412483          	lw	s1,20(sp)
    14a4:	01012903          	lw	s2,16(sp)
    14a8:	00c12983          	lw	s3,12(sp)
    14ac:	02010113          	addi	sp,sp,32
    14b0:	00008067          	ret

000014b4 <oled_wait>:
    14b4:	00000013          	nop
    14b8:	00000013          	nop
    14bc:	00000013          	nop
    14c0:	00000013          	nop
    14c4:	00000013          	nop
    14c8:	00000013          	nop
    14cc:	00000013          	nop
    14d0:	00008067          	ret

000014d4 <display_framebuffer>:
    14d4:	00005537          	lui	a0,0x5
    14d8:	3b850513          	addi	a0,a0,952 # 53b8 <framebuffer>
    14dc:	00008067          	ret

000014e0 <display_set_cursor>:
    14e0:	000057b7          	lui	a5,0x5
    14e4:	1ca7aa23          	sw	a0,468(a5) # 51d4 <cursor_x>
    14e8:	000057b7          	lui	a5,0x5
    14ec:	1cb7ac23          	sw	a1,472(a5) # 51d8 <cursor_y>
    14f0:	00008067          	ret

000014f4 <display_set_front_back_color>:
    14f4:	000057b7          	lui	a5,0x5
    14f8:	1ca78e23          	sb	a0,476(a5) # 51dc <front_color>
    14fc:	000057b7          	lui	a5,0x5
    1500:	1cb78823          	sb	a1,464(a5) # 51d0 <back_color>
    1504:	00008067          	ret

00001508 <display_putchar>:
    1508:	000057b7          	lui	a5,0x5
    150c:	00a00713          	li	a4,10
    1510:	1d478793          	addi	a5,a5,468 # 51d4 <cursor_x>
    1514:	02e51863          	bne	a0,a4,1544 <display_putchar+0x3c>
    1518:	00005737          	lui	a4,0x5
    151c:	1d870713          	addi	a4,a4,472 # 51d8 <cursor_y>
    1520:	0007a023          	sw	zero,0(a5)
    1524:	00072783          	lw	a5,0(a4)
    1528:	00878793          	addi	a5,a5,8
    152c:	00f72023          	sw	a5,0(a4)
    1530:	07f00713          	li	a4,127
    1534:	12f75c63          	bge	a4,a5,166c <display_putchar+0x164>
    1538:	000057b7          	lui	a5,0x5
    153c:	1c07ac23          	sw	zero,472(a5) # 51d8 <cursor_y>
    1540:	00008067          	ret
    1544:	01f00693          	li	a3,31
    1548:	0007a703          	lw	a4,0(a5)
    154c:	0ea6d663          	bge	a3,a0,1638 <display_putchar+0x130>
    1550:	000056b7          	lui	a3,0x5
    1554:	ff010113          	addi	sp,sp,-16
    1558:	1d06c383          	lbu	t2,464(a3) # 51d0 <back_color>
    155c:	000056b7          	lui	a3,0x5
    1560:	00812623          	sw	s0,12(sp)
    1564:	1dc6c403          	lbu	s0,476(a3) # 51dc <front_color>
    1568:	000056b7          	lui	a3,0x5
    156c:	1d86af03          	lw	t5,472(a3) # 51d8 <cursor_y>
    1570:	00251613          	slli	a2,a0,0x2
    1574:	000056b7          	lui	a3,0x5
    1578:	00a60633          	add	a2,a2,a0
    157c:	f7068693          	addi	a3,a3,-144 # 4f70 <font>
    1580:	00771313          	slli	t1,a4,0x7
    1584:	00005837          	lui	a6,0x5
    1588:	00912423          	sw	s1,8(sp)
    158c:	01212223          	sw	s2,4(sp)
    1590:	00c686b3          	add	a3,a3,a2
    1594:	28030493          	addi	s1,t1,640
    1598:	00000613          	li	a2,0
    159c:	00100293          	li	t0,1
    15a0:	3b880813          	addi	a6,a6,952 # 53b8 <framebuffer>
    15a4:	00800913          	li	s2,8
    15a8:	00c29fb3          	sll	t6,t0,a2
    15ac:	00cf0eb3          	add	t4,t5,a2
    15b0:	00030593          	mv	a1,t1
    15b4:	00068513          	mv	a0,a3
    15b8:	f6054883          	lbu	a7,-160(a0)
    15bc:	00038e13          	mv	t3,t2
    15c0:	01f8f8b3          	and	a7,a7,t6
    15c4:	00088463          	beqz	a7,15cc <display_putchar+0xc4>
    15c8:	00040e13          	mv	t3,s0
    15cc:	00b808b3          	add	a7,a6,a1
    15d0:	01d888b3          	add	a7,a7,t4
    15d4:	01c88023          	sb	t3,0(a7)
    15d8:	08058593          	addi	a1,a1,128
    15dc:	00150513          	addi	a0,a0,1
    15e0:	fc959ce3          	bne	a1,s1,15b8 <display_putchar+0xb0>
    15e4:	00160613          	addi	a2,a2,1
    15e8:	fd2610e3          	bne	a2,s2,15a8 <display_putchar+0xa0>
    15ec:	00570713          	addi	a4,a4,5
    15f0:	07f00693          	li	a3,127
    15f4:	00e6c663          	blt	a3,a4,1600 <display_putchar+0xf8>
    15f8:	00e7a023          	sw	a4,0(a5)
    15fc:	0280006f          	j	1624 <display_putchar+0x11c>
    1600:	00005737          	lui	a4,0x5
    1604:	1d870713          	addi	a4,a4,472 # 51d8 <cursor_y>
    1608:	0007a023          	sw	zero,0(a5)
    160c:	00072783          	lw	a5,0(a4)
    1610:	00878793          	addi	a5,a5,8
    1614:	00f72023          	sw	a5,0(a4)
    1618:	00f6d663          	bge	a3,a5,1624 <display_putchar+0x11c>
    161c:	000057b7          	lui	a5,0x5
    1620:	1c07ac23          	sw	zero,472(a5) # 51d8 <cursor_y>
    1624:	00c12403          	lw	s0,12(sp)
    1628:	00812483          	lw	s1,8(sp)
    162c:	00412903          	lw	s2,4(sp)
    1630:	01010113          	addi	sp,sp,16
    1634:	00008067          	ret
    1638:	00570713          	addi	a4,a4,5
    163c:	07f00693          	li	a3,127
    1640:	00e6c663          	blt	a3,a4,164c <display_putchar+0x144>
    1644:	00e7a023          	sw	a4,0(a5)
    1648:	00008067          	ret
    164c:	00005737          	lui	a4,0x5
    1650:	1d870713          	addi	a4,a4,472 # 51d8 <cursor_y>
    1654:	0007a023          	sw	zero,0(a5)
    1658:	00072783          	lw	a5,0(a4)
    165c:	00878793          	addi	a5,a5,8
    1660:	00f72023          	sw	a5,0(a4)
    1664:	ecf6cae3          	blt	a3,a5,1538 <display_putchar+0x30>
    1668:	00008067          	ret
    166c:	00008067          	ret

00001670 <display_refresh>:
    1670:	fe010113          	addi	sp,sp,-32
    1674:	000057b7          	lui	a5,0x5
    1678:	01212823          	sw	s2,16(sp)
    167c:	e587a903          	lw	s2,-424(a5) # 4e58 <OLED>
    1680:	01312623          	sw	s3,12(sp)
    1684:	000059b7          	lui	s3,0x5
    1688:	00912a23          	sw	s1,20(sp)
    168c:	01412423          	sw	s4,8(sp)
    1690:	00112e23          	sw	ra,28(sp)
    1694:	00812c23          	sw	s0,24(sp)
    1698:	00000493          	li	s1,0
    169c:	3b898993          	addi	s3,s3,952 # 53b8 <framebuffer>
    16a0:	00004a37          	lui	s4,0x4
    16a4:	013487b3          	add	a5,s1,s3
    16a8:	0007c403          	lbu	s0,0(a5)
    16ac:	00148493          	addi	s1,s1,1
    16b0:	00245413          	srli	s0,s0,0x2
    16b4:	40046413          	ori	s0,s0,1024
    16b8:	00892023          	sw	s0,0(s2)
    16bc:	00000097          	auipc	ra,0x0
    16c0:	df8080e7          	jalr	-520(ra) # 14b4 <oled_wait>
    16c4:	00892023          	sw	s0,0(s2)
    16c8:	00000097          	auipc	ra,0x0
    16cc:	dec080e7          	jalr	-532(ra) # 14b4 <oled_wait>
    16d0:	00892023          	sw	s0,0(s2)
    16d4:	00000097          	auipc	ra,0x0
    16d8:	de0080e7          	jalr	-544(ra) # 14b4 <oled_wait>
    16dc:	fd4494e3          	bne	s1,s4,16a4 <display_refresh+0x34>
    16e0:	01c12083          	lw	ra,28(sp)
    16e4:	01812403          	lw	s0,24(sp)
    16e8:	01412483          	lw	s1,20(sp)
    16ec:	01012903          	lw	s2,16(sp)
    16f0:	00c12983          	lw	s3,12(sp)
    16f4:	00812a03          	lw	s4,8(sp)
    16f8:	02010113          	addi	sp,sp,32
    16fc:	00008067          	ret

00001700 <print_string>:
    1700:	ff010113          	addi	sp,sp,-16
    1704:	00812423          	sw	s0,8(sp)
    1708:	00912223          	sw	s1,4(sp)
    170c:	00112623          	sw	ra,12(sp)
    1710:	00050413          	mv	s0,a0
    1714:	000054b7          	lui	s1,0x5
    1718:	00044503          	lbu	a0,0(s0)
    171c:	00051c63          	bnez	a0,1734 <print_string+0x34>
    1720:	00c12083          	lw	ra,12(sp)
    1724:	00812403          	lw	s0,8(sp)
    1728:	00412483          	lw	s1,4(sp)
    172c:	01010113          	addi	sp,sp,16
    1730:	00008067          	ret
    1734:	1e04a783          	lw	a5,480(s1) # 51e0 <f_putchar>
    1738:	00140413          	addi	s0,s0,1
    173c:	000780e7          	jalr	a5
    1740:	fd9ff06f          	j	1718 <print_string+0x18>

00001744 <print_dec>:
    1744:	ee010113          	addi	sp,sp,-288
    1748:	10812c23          	sw	s0,280(sp)
    174c:	10912a23          	sw	s1,276(sp)
    1750:	10112e23          	sw	ra,284(sp)
    1754:	11212823          	sw	s2,272(sp)
    1758:	11312623          	sw	s3,268(sp)
    175c:	00050413          	mv	s0,a0
    1760:	000054b7          	lui	s1,0x5
    1764:	1e04a783          	lw	a5,480(s1) # 51e0 <f_putchar>
    1768:	1e048993          	addi	s3,s1,480
    176c:	06045e63          	bgez	s0,17e8 <print_dec+0xa4>
    1770:	02d00513          	li	a0,45
    1774:	000780e7          	jalr	a5
    1778:	40800433          	neg	s0,s0
    177c:	fe9ff06f          	j	1764 <print_dec+0x20>
    1780:	00040513          	mv	a0,s0
    1784:	00a00593          	li	a1,10
    1788:	00000097          	auipc	ra,0x0
    178c:	928080e7          	jalr	-1752(ra) # 10b0 <__divsi3>
    1790:	00251793          	slli	a5,a0,0x2
    1794:	00f507b3          	add	a5,a0,a5
    1798:	00179793          	slli	a5,a5,0x1
    179c:	40f40433          	sub	s0,s0,a5
    17a0:	00148493          	addi	s1,s1,1
    17a4:	fe848fa3          	sb	s0,-1(s1)
    17a8:	00050413          	mv	s0,a0
    17ac:	fc041ae3          	bnez	s0,1780 <print_dec+0x3c>
    17b0:	fd2488e3          	beq	s1,s2,1780 <print_dec+0x3c>
    17b4:	fff4c503          	lbu	a0,-1(s1)
    17b8:	0009a783          	lw	a5,0(s3)
    17bc:	fff48493          	addi	s1,s1,-1
    17c0:	03050513          	addi	a0,a0,48
    17c4:	000780e7          	jalr	a5
    17c8:	ff2496e3          	bne	s1,s2,17b4 <print_dec+0x70>
    17cc:	11c12083          	lw	ra,284(sp)
    17d0:	11812403          	lw	s0,280(sp)
    17d4:	11412483          	lw	s1,276(sp)
    17d8:	11012903          	lw	s2,272(sp)
    17dc:	10c12983          	lw	s3,268(sp)
    17e0:	12010113          	addi	sp,sp,288
    17e4:	00008067          	ret
    17e8:	00010493          	mv	s1,sp
    17ec:	00048913          	mv	s2,s1
    17f0:	fbdff06f          	j	17ac <print_dec+0x68>

000017f4 <print_hex_digits>:
    17f4:	fe010113          	addi	sp,sp,-32
    17f8:	00812c23          	sw	s0,24(sp)
    17fc:	01212823          	sw	s2,16(sp)
    1800:	fff58413          	addi	s0,a1,-1
    1804:	00005937          	lui	s2,0x5
    1808:	00912a23          	sw	s1,20(sp)
    180c:	01312623          	sw	s3,12(sp)
    1810:	00112e23          	sw	ra,28(sp)
    1814:	00050493          	mv	s1,a0
    1818:	00241413          	slli	s0,s0,0x2
    181c:	15090913          	addi	s2,s2,336 # 5150 <font+0x1e0>
    1820:	000059b7          	lui	s3,0x5
    1824:	02045063          	bgez	s0,1844 <print_hex_digits+0x50>
    1828:	01c12083          	lw	ra,28(sp)
    182c:	01812403          	lw	s0,24(sp)
    1830:	01412483          	lw	s1,20(sp)
    1834:	01012903          	lw	s2,16(sp)
    1838:	00c12983          	lw	s3,12(sp)
    183c:	02010113          	addi	sp,sp,32
    1840:	00008067          	ret
    1844:	0084d7b3          	srl	a5,s1,s0
    1848:	00f7f793          	andi	a5,a5,15
    184c:	00f907b3          	add	a5,s2,a5
    1850:	1e09a703          	lw	a4,480(s3) # 51e0 <f_putchar>
    1854:	0007c503          	lbu	a0,0(a5)
    1858:	ffc40413          	addi	s0,s0,-4
    185c:	000700e7          	jalr	a4
    1860:	fc5ff06f          	j	1824 <print_hex_digits+0x30>

00001864 <print_hex>:
    1864:	00800593          	li	a1,8
    1868:	00000317          	auipc	t1,0x0
    186c:	f8c30067          	jr	-116(t1) # 17f4 <print_hex_digits>

00001870 <printf>:
    1870:	fa010113          	addi	sp,sp,-96
    1874:	04f12a23          	sw	a5,84(sp)
    1878:	04410793          	addi	a5,sp,68
    187c:	02812c23          	sw	s0,56(sp)
    1880:	02912a23          	sw	s1,52(sp)
    1884:	03312623          	sw	s3,44(sp)
    1888:	03412423          	sw	s4,40(sp)
    188c:	03512223          	sw	s5,36(sp)
    1890:	03612023          	sw	s6,32(sp)
    1894:	01712e23          	sw	s7,28(sp)
    1898:	02112e23          	sw	ra,60(sp)
    189c:	03212823          	sw	s2,48(sp)
    18a0:	00050413          	mv	s0,a0
    18a4:	04b12223          	sw	a1,68(sp)
    18a8:	04c12423          	sw	a2,72(sp)
    18ac:	04d12623          	sw	a3,76(sp)
    18b0:	04e12823          	sw	a4,80(sp)
    18b4:	05012c23          	sw	a6,88(sp)
    18b8:	05112e23          	sw	a7,92(sp)
    18bc:	00f12623          	sw	a5,12(sp)
    18c0:	02500993          	li	s3,37
    18c4:	000054b7          	lui	s1,0x5
    18c8:	07300a13          	li	s4,115
    18cc:	07800a93          	li	s5,120
    18d0:	06400b13          	li	s6,100
    18d4:	06300b93          	li	s7,99
    18d8:	00044503          	lbu	a0,0(s0)
    18dc:	02051863          	bnez	a0,190c <printf+0x9c>
    18e0:	03c12083          	lw	ra,60(sp)
    18e4:	03812403          	lw	s0,56(sp)
    18e8:	03412483          	lw	s1,52(sp)
    18ec:	03012903          	lw	s2,48(sp)
    18f0:	02c12983          	lw	s3,44(sp)
    18f4:	02812a03          	lw	s4,40(sp)
    18f8:	02412a83          	lw	s5,36(sp)
    18fc:	02012b03          	lw	s6,32(sp)
    1900:	01c12b83          	lw	s7,28(sp)
    1904:	06010113          	addi	sp,sp,96
    1908:	00008067          	ret
    190c:	00140913          	addi	s2,s0,1
    1910:	09351663          	bne	a0,s3,199c <printf+0x12c>
    1914:	00144503          	lbu	a0,1(s0)
    1918:	03451263          	bne	a0,s4,193c <printf+0xcc>
    191c:	00c12783          	lw	a5,12(sp)
    1920:	0007a503          	lw	a0,0(a5)
    1924:	00478713          	addi	a4,a5,4
    1928:	00e12623          	sw	a4,12(sp)
    192c:	00000097          	auipc	ra,0x0
    1930:	dd4080e7          	jalr	-556(ra) # 1700 <print_string>
    1934:	00190413          	addi	s0,s2,1
    1938:	fa1ff06f          	j	18d8 <printf+0x68>
    193c:	03551063          	bne	a0,s5,195c <printf+0xec>
    1940:	00c12783          	lw	a5,12(sp)
    1944:	0007a503          	lw	a0,0(a5)
    1948:	00478713          	addi	a4,a5,4
    194c:	00e12623          	sw	a4,12(sp)
    1950:	00000097          	auipc	ra,0x0
    1954:	f14080e7          	jalr	-236(ra) # 1864 <print_hex>
    1958:	fddff06f          	j	1934 <printf+0xc4>
    195c:	03651063          	bne	a0,s6,197c <printf+0x10c>
    1960:	00c12783          	lw	a5,12(sp)
    1964:	0007a503          	lw	a0,0(a5)
    1968:	00478713          	addi	a4,a5,4
    196c:	00e12623          	sw	a4,12(sp)
    1970:	00000097          	auipc	ra,0x0
    1974:	dd4080e7          	jalr	-556(ra) # 1744 <print_dec>
    1978:	fbdff06f          	j	1934 <printf+0xc4>
    197c:	1e04a783          	lw	a5,480(s1) # 51e0 <f_putchar>
    1980:	01751a63          	bne	a0,s7,1994 <printf+0x124>
    1984:	00c12703          	lw	a4,12(sp)
    1988:	00072503          	lw	a0,0(a4)
    198c:	00470693          	addi	a3,a4,4
    1990:	00d12623          	sw	a3,12(sp)
    1994:	000780e7          	jalr	a5
    1998:	f9dff06f          	j	1934 <printf+0xc4>
    199c:	1e04a783          	lw	a5,480(s1)
    19a0:	00040913          	mv	s2,s0
    19a4:	000780e7          	jalr	a5
    19a8:	f8dff06f          	j	1934 <printf+0xc4>

000019ac <__mulsi3>:
    19ac:	00050793          	mv	a5,a0
    19b0:	00000513          	li	a0,0
    19b4:	00079463          	bnez	a5,19bc <__mulsi3+0x10>
    19b8:	00008067          	ret
    19bc:	0017f713          	andi	a4,a5,1
    19c0:	00070463          	beqz	a4,19c8 <__mulsi3+0x1c>
    19c4:	00b50533          	add	a0,a0,a1
    19c8:	0017d793          	srli	a5,a5,0x1
    19cc:	00159593          	slli	a1,a1,0x1
    19d0:	fe5ff06f          	j	19b4 <__mulsi3+0x8>

000019d4 <fat_list_insert_last>:
    19d4:	00452783          	lw	a5,4(a0)
    19d8:	04079263          	bnez	a5,1a1c <fat_list_insert_last+0x48>
    19dc:	00052783          	lw	a5,0(a0)
    19e0:	00079c63          	bnez	a5,19f8 <fat_list_insert_last+0x24>
    19e4:	00b52023          	sw	a1,0(a0)
    19e8:	00b52223          	sw	a1,4(a0)
    19ec:	0005a023          	sw	zero,0(a1)
    19f0:	0005a223          	sw	zero,4(a1)
    19f4:	00008067          	ret
    19f8:	0007a703          	lw	a4,0(a5)
    19fc:	00f5a223          	sw	a5,4(a1)
    1a00:	00e5a023          	sw	a4,0(a1)
    1a04:	00071863          	bnez	a4,1a14 <fat_list_insert_last+0x40>
    1a08:	00b52023          	sw	a1,0(a0)
    1a0c:	00b7a023          	sw	a1,0(a5)
    1a10:	00008067          	ret
    1a14:	00b72223          	sw	a1,4(a4)
    1a18:	ff5ff06f          	j	1a0c <fat_list_insert_last+0x38>
    1a1c:	0047a703          	lw	a4,4(a5)
    1a20:	00f5a023          	sw	a5,0(a1)
    1a24:	00e5a223          	sw	a4,4(a1)
    1a28:	0047a703          	lw	a4,4(a5)
    1a2c:	00071863          	bnez	a4,1a3c <fat_list_insert_last+0x68>
    1a30:	00b52223          	sw	a1,4(a0)
    1a34:	00b7a223          	sw	a1,4(a5)
    1a38:	00008067          	ret
    1a3c:	00b72023          	sw	a1,0(a4)
    1a40:	ff5ff06f          	j	1a34 <fat_list_insert_last+0x60>

00001a44 <FileString_StrCmpNoCase>:
    1a44:	00050313          	mv	t1,a0
    1a48:	00000793          	li	a5,0
    1a4c:	01900e13          	li	t3,25
    1a50:	00f61663          	bne	a2,a5,1a5c <FileString_StrCmpNoCase+0x18>
    1a54:	00000513          	li	a0,0
    1a58:	0580006f          	j	1ab0 <FileString_StrCmpNoCase+0x6c>
    1a5c:	00f30733          	add	a4,t1,a5
    1a60:	00074883          	lbu	a7,0(a4)
    1a64:	00f58733          	add	a4,a1,a5
    1a68:	00074803          	lbu	a6,0(a4)
    1a6c:	fbf88713          	addi	a4,a7,-65
    1a70:	0ff77713          	zext.b	a4,a4
    1a74:	00088693          	mv	a3,a7
    1a78:	00ee6663          	bltu	t3,a4,1a84 <FileString_StrCmpNoCase+0x40>
    1a7c:	02088693          	addi	a3,a7,32
    1a80:	0ff6f693          	zext.b	a3,a3
    1a84:	fbf80513          	addi	a0,a6,-65
    1a88:	0ff57513          	zext.b	a0,a0
    1a8c:	00080713          	mv	a4,a6
    1a90:	00ae6663          	bltu	t3,a0,1a9c <FileString_StrCmpNoCase+0x58>
    1a94:	02080713          	addi	a4,a6,32
    1a98:	0ff77713          	zext.b	a4,a4
    1a9c:	40e68533          	sub	a0,a3,a4
    1aa0:	00e69863          	bne	a3,a4,1ab0 <FileString_StrCmpNoCase+0x6c>
    1aa4:	00088663          	beqz	a7,1ab0 <FileString_StrCmpNoCase+0x6c>
    1aa8:	00178793          	addi	a5,a5,1
    1aac:	fa0812e3          	bnez	a6,1a50 <FileString_StrCmpNoCase+0xc>
    1ab0:	00008067          	ret

00001ab4 <FileString_GetExtension>:
    1ab4:	00050713          	mv	a4,a0
    1ab8:	00050793          	mv	a5,a0
    1abc:	02e00613          	li	a2,46
    1ac0:	fff00513          	li	a0,-1
    1ac4:	0007c683          	lbu	a3,0(a5)
    1ac8:	00069463          	bnez	a3,1ad0 <FileString_GetExtension+0x1c>
    1acc:	00008067          	ret
    1ad0:	00c69463          	bne	a3,a2,1ad8 <FileString_GetExtension+0x24>
    1ad4:	40e78533          	sub	a0,a5,a4
    1ad8:	00178793          	addi	a5,a5,1
    1adc:	fe9ff06f          	j	1ac4 <FileString_GetExtension+0x10>

00001ae0 <fatfs_fat_writeback>:
    1ae0:	00059663          	bnez	a1,1aec <fatfs_fat_writeback+0xc>
    1ae4:	00000513          	li	a0,0
    1ae8:	00008067          	ret
    1aec:	2045a703          	lw	a4,516(a1)
    1af0:	ff010113          	addi	sp,sp,-16
    1af4:	00812423          	sw	s0,8(sp)
    1af8:	00112623          	sw	ra,12(sp)
    1afc:	00050793          	mv	a5,a0
    1b00:	00058413          	mv	s0,a1
    1b04:	00100513          	li	a0,1
    1b08:	04070663          	beqz	a4,1b54 <fatfs_fat_writeback+0x74>
    1b0c:	0387a683          	lw	a3,56(a5)
    1b10:	00069863          	bnez	a3,1b20 <fatfs_fat_writeback+0x40>
    1b14:	20042223          	sw	zero,516(s0)
    1b18:	00100513          	li	a0,1
    1b1c:	0380006f          	j	1b54 <fatfs_fat_writeback+0x74>
    1b20:	2005a503          	lw	a0,512(a1)
    1b24:	0147a703          	lw	a4,20(a5)
    1b28:	0207a583          	lw	a1,32(a5)
    1b2c:	00100613          	li	a2,1
    1b30:	40e507b3          	sub	a5,a0,a4
    1b34:	00178793          	addi	a5,a5,1
    1b38:	00f5f663          	bgeu	a1,a5,1b44 <fatfs_fat_writeback+0x64>
    1b3c:	00b70733          	add	a4,a4,a1
    1b40:	40a70633          	sub	a2,a4,a0
    1b44:	00040593          	mv	a1,s0
    1b48:	000680e7          	jalr	a3
    1b4c:	fc0514e3          	bnez	a0,1b14 <fatfs_fat_writeback+0x34>
    1b50:	00000513          	li	a0,0
    1b54:	00c12083          	lw	ra,12(sp)
    1b58:	00812403          	lw	s0,8(sp)
    1b5c:	01010113          	addi	sp,sp,16
    1b60:	00008067          	ret

00001b64 <fatfs_fat_read_sector>:
    1b64:	fe010113          	addi	sp,sp,-32
    1b68:	01212823          	sw	s2,16(sp)
    1b6c:	25452903          	lw	s2,596(a0)
    1b70:	00812c23          	sw	s0,24(sp)
    1b74:	00912a23          	sw	s1,20(sp)
    1b78:	01312623          	sw	s3,12(sp)
    1b7c:	00112e23          	sw	ra,28(sp)
    1b80:	00050993          	mv	s3,a0
    1b84:	00058493          	mv	s1,a1
    1b88:	00000413          	li	s0,0
    1b8c:	06091863          	bnez	s2,1bfc <fatfs_fat_read_sector+0x98>
    1b90:	2549a783          	lw	a5,596(s3)
    1b94:	20f42623          	sw	a5,524(s0)
    1b98:	20442783          	lw	a5,516(s0)
    1b9c:	2489aa23          	sw	s0,596(s3)
    1ba0:	00078c63          	beqz	a5,1bb8 <fatfs_fat_read_sector+0x54>
    1ba4:	00040593          	mv	a1,s0
    1ba8:	00098513          	mv	a0,s3
    1bac:	00000097          	auipc	ra,0x0
    1bb0:	f34080e7          	jalr	-204(ra) # 1ae0 <fatfs_fat_writeback>
    1bb4:	02050463          	beqz	a0,1bdc <fatfs_fat_read_sector+0x78>
    1bb8:	0349a783          	lw	a5,52(s3)
    1bbc:	20942023          	sw	s1,512(s0)
    1bc0:	00100613          	li	a2,1
    1bc4:	00040593          	mv	a1,s0
    1bc8:	00048513          	mv	a0,s1
    1bcc:	000780e7          	jalr	a5
    1bd0:	06051063          	bnez	a0,1c30 <fatfs_fat_read_sector+0xcc>
    1bd4:	fff00793          	li	a5,-1
    1bd8:	20f42023          	sw	a5,512(s0)
    1bdc:	01c12083          	lw	ra,28(sp)
    1be0:	01812403          	lw	s0,24(sp)
    1be4:	01412483          	lw	s1,20(sp)
    1be8:	00c12983          	lw	s3,12(sp)
    1bec:	00090513          	mv	a0,s2
    1bf0:	01012903          	lw	s2,16(sp)
    1bf4:	02010113          	addi	sp,sp,32
    1bf8:	00008067          	ret
    1bfc:	20092783          	lw	a5,512(s2)
    1c00:	00f4e663          	bltu	s1,a5,1c0c <fatfs_fat_read_sector+0xa8>
    1c04:	00178713          	addi	a4,a5,1
    1c08:	02e4ea63          	bltu	s1,a4,1c3c <fatfs_fat_read_sector+0xd8>
    1c0c:	20c92783          	lw	a5,524(s2)
    1c10:	00079663          	bnez	a5,1c1c <fatfs_fat_read_sector+0xb8>
    1c14:	00040a63          	beqz	s0,1c28 <fatfs_fat_read_sector+0xc4>
    1c18:	20042623          	sw	zero,524(s0)
    1c1c:	00090413          	mv	s0,s2
    1c20:	20c92903          	lw	s2,524(s2)
    1c24:	f69ff06f          	j	1b8c <fatfs_fat_read_sector+0x28>
    1c28:	2409aa23          	sw	zero,596(s3)
    1c2c:	ff1ff06f          	j	1c1c <fatfs_fat_read_sector+0xb8>
    1c30:	20842423          	sw	s0,520(s0)
    1c34:	00040913          	mv	s2,s0
    1c38:	fa5ff06f          	j	1bdc <fatfs_fat_read_sector+0x78>
    1c3c:	40f484b3          	sub	s1,s1,a5
    1c40:	00949493          	slli	s1,s1,0x9
    1c44:	009904b3          	add	s1,s2,s1
    1c48:	20992423          	sw	s1,520(s2)
    1c4c:	f91ff06f          	j	1bdc <fatfs_fat_read_sector+0x78>

00001c50 <_allocate_file>:
    1c50:	ff010113          	addi	sp,sp,-16
    1c54:	000057b7          	lui	a5,0x5
    1c58:	00812423          	sw	s0,8(sp)
    1c5c:	1ec7a403          	lw	s0,492(a5) # 51ec <_free_file_list>
    1c60:	00112623          	sw	ra,12(sp)
    1c64:	02040e63          	beqz	s0,1ca0 <_allocate_file+0x50>
    1c68:	00042703          	lw	a4,0(s0)
    1c6c:	00442683          	lw	a3,4(s0)
    1c70:	1ec78793          	addi	a5,a5,492
    1c74:	04071063          	bnez	a4,1cb4 <_allocate_file+0x64>
    1c78:	00d7a023          	sw	a3,0(a5)
    1c7c:	00442683          	lw	a3,4(s0)
    1c80:	02069e63          	bnez	a3,1cbc <_allocate_file+0x6c>
    1c84:	00e7a223          	sw	a4,4(a5)
    1c88:	00005537          	lui	a0,0x5
    1c8c:	00040593          	mv	a1,s0
    1c90:	1f450513          	addi	a0,a0,500 # 51f4 <_open_file_list>
    1c94:	00000097          	auipc	ra,0x0
    1c98:	d40080e7          	jalr	-704(ra) # 19d4 <fat_list_insert_last>
    1c9c:	bc440413          	addi	s0,s0,-1084
    1ca0:	00c12083          	lw	ra,12(sp)
    1ca4:	00040513          	mv	a0,s0
    1ca8:	00812403          	lw	s0,8(sp)
    1cac:	01010113          	addi	sp,sp,16
    1cb0:	00008067          	ret
    1cb4:	00d72223          	sw	a3,4(a4)
    1cb8:	fc5ff06f          	j	1c7c <_allocate_file+0x2c>
    1cbc:	00e6a023          	sw	a4,0(a3)
    1cc0:	fc9ff06f          	j	1c88 <_allocate_file+0x38>

00001cc4 <_free_file>:
    1cc4:	43c52783          	lw	a5,1084(a0)
    1cc8:	44052703          	lw	a4,1088(a0)
    1ccc:	43c50593          	addi	a1,a0,1084
    1cd0:	02079663          	bnez	a5,1cfc <_free_file+0x38>
    1cd4:	000056b7          	lui	a3,0x5
    1cd8:	1ee6aa23          	sw	a4,500(a3) # 51f4 <_open_file_list>
    1cdc:	44052703          	lw	a4,1088(a0)
    1ce0:	02071263          	bnez	a4,1d04 <_free_file+0x40>
    1ce4:	00005737          	lui	a4,0x5
    1ce8:	1ef72c23          	sw	a5,504(a4) # 51f8 <_open_file_list+0x4>
    1cec:	00005537          	lui	a0,0x5
    1cf0:	1ec50513          	addi	a0,a0,492 # 51ec <_free_file_list>
    1cf4:	00000317          	auipc	t1,0x0
    1cf8:	ce030067          	jr	-800(t1) # 19d4 <fat_list_insert_last>
    1cfc:	00e7a223          	sw	a4,4(a5)
    1d00:	fddff06f          	j	1cdc <_free_file+0x18>
    1d04:	00f72023          	sw	a5,0(a4)
    1d08:	fe5ff06f          	j	1cec <_free_file+0x28>

00001d0c <fatfs_lba_of_cluster>:
    1d0c:	ff010113          	addi	sp,sp,-16
    1d10:	00812423          	sw	s0,8(sp)
    1d14:	00050413          	mv	s0,a0
    1d18:	00058513          	mv	a0,a1
    1d1c:	00044583          	lbu	a1,0(s0)
    1d20:	ffe50513          	addi	a0,a0,-2
    1d24:	00112623          	sw	ra,12(sp)
    1d28:	00000097          	auipc	ra,0x0
    1d2c:	c84080e7          	jalr	-892(ra) # 19ac <__mulsi3>
    1d30:	00442783          	lw	a5,4(s0)
    1d34:	00f50533          	add	a0,a0,a5
    1d38:	03042783          	lw	a5,48(s0)
    1d3c:	00079863          	bnez	a5,1d4c <fatfs_lba_of_cluster+0x40>
    1d40:	02845783          	lhu	a5,40(s0)
    1d44:	4047d793          	srai	a5,a5,0x4
    1d48:	00f50533          	add	a0,a0,a5
    1d4c:	00c12083          	lw	ra,12(sp)
    1d50:	00812403          	lw	s0,8(sp)
    1d54:	01010113          	addi	sp,sp,16
    1d58:	00008067          	ret

00001d5c <fatfs_sector_read>:
    1d5c:	03452783          	lw	a5,52(a0)
    1d60:	00058713          	mv	a4,a1
    1d64:	00070513          	mv	a0,a4
    1d68:	00060593          	mv	a1,a2
    1d6c:	00068613          	mv	a2,a3
    1d70:	00078067          	jr	a5

00001d74 <fatfs_sector_write>:
    1d74:	03852783          	lw	a5,56(a0)
    1d78:	00058713          	mv	a4,a1
    1d7c:	00070513          	mv	a0,a4
    1d80:	00060593          	mv	a1,a2
    1d84:	00068613          	mv	a2,a3
    1d88:	00078067          	jr	a5

00001d8c <fatfs_write_sector>:
    1d8c:	03852783          	lw	a5,56(a0)
    1d90:	0a078863          	beqz	a5,1e40 <fatfs_write_sector+0xb4>
    1d94:	fe010113          	addi	sp,sp,-32
    1d98:	01212823          	sw	s2,16(sp)
    1d9c:	00068913          	mv	s2,a3
    1da0:	03052683          	lw	a3,48(a0)
    1da4:	00812c23          	sw	s0,24(sp)
    1da8:	00912a23          	sw	s1,20(sp)
    1dac:	00112e23          	sw	ra,28(sp)
    1db0:	00d5e733          	or	a4,a1,a3
    1db4:	00050413          	mv	s0,a0
    1db8:	00060493          	mv	s1,a2
    1dbc:	04071063          	bnez	a4,1dfc <fatfs_write_sector+0x70>
    1dc0:	01052703          	lw	a4,16(a0)
    1dc4:	06e67063          	bgeu	a2,a4,1e24 <fatfs_write_sector+0x98>
    1dc8:	01c52503          	lw	a0,28(a0)
    1dcc:	00c42703          	lw	a4,12(s0)
    1dd0:	00e50533          	add	a0,a0,a4
    1dd4:	00c50533          	add	a0,a0,a2
    1dd8:	02090e63          	beqz	s2,1e14 <fatfs_write_sector+0x88>
    1ddc:	00100613          	li	a2,1
    1de0:	00090593          	mv	a1,s2
    1de4:	01812403          	lw	s0,24(sp)
    1de8:	01c12083          	lw	ra,28(sp)
    1dec:	01412483          	lw	s1,20(sp)
    1df0:	01012903          	lw	s2,16(sp)
    1df4:	02010113          	addi	sp,sp,32
    1df8:	00078067          	jr	a5
    1dfc:	00f12623          	sw	a5,12(sp)
    1e00:	00000097          	auipc	ra,0x0
    1e04:	f0c080e7          	jalr	-244(ra) # 1d0c <fatfs_lba_of_cluster>
    1e08:	00c12783          	lw	a5,12(sp)
    1e0c:	00a48533          	add	a0,s1,a0
    1e10:	fc9ff06f          	j	1dd8 <fatfs_write_sector+0x4c>
    1e14:	24a42223          	sw	a0,580(s0)
    1e18:	00100613          	li	a2,1
    1e1c:	04440593          	addi	a1,s0,68
    1e20:	fc5ff06f          	j	1de4 <fatfs_write_sector+0x58>
    1e24:	01c12083          	lw	ra,28(sp)
    1e28:	01812403          	lw	s0,24(sp)
    1e2c:	01412483          	lw	s1,20(sp)
    1e30:	01012903          	lw	s2,16(sp)
    1e34:	00000513          	li	a0,0
    1e38:	02010113          	addi	sp,sp,32
    1e3c:	00008067          	ret
    1e40:	00000513          	li	a0,0
    1e44:	00008067          	ret

00001e48 <fl_init>:
    1e48:	ff010113          	addi	sp,sp,-16
    1e4c:	00812423          	sw	s0,8(sp)
    1e50:	00005437          	lui	s0,0x5
    1e54:	00112623          	sw	ra,12(sp)
    1e58:	1ec40793          	addi	a5,s0,492 # 51ec <_free_file_list>
    1e5c:	0007a223          	sw	zero,4(a5)
    1e60:	0007a023          	sw	zero,0(a5)
    1e64:	000095b7          	lui	a1,0x9
    1e68:	000057b7          	lui	a5,0x5
    1e6c:	1f478793          	addi	a5,a5,500 # 51f4 <_open_file_list>
    1e70:	1ec40513          	addi	a0,s0,492
    1e74:	7f458593          	addi	a1,a1,2036 # 97f4 <_files+0x43c>
    1e78:	0007a223          	sw	zero,4(a5)
    1e7c:	0007a023          	sw	zero,0(a5)
    1e80:	00000097          	auipc	ra,0x0
    1e84:	b54080e7          	jalr	-1196(ra) # 19d4 <fat_list_insert_last>
    1e88:	0000a5b7          	lui	a1,0xa
    1e8c:	1ec40513          	addi	a0,s0,492
    1e90:	c3858593          	addi	a1,a1,-968 # 9c38 <_files+0x880>
    1e94:	00000097          	auipc	ra,0x0
    1e98:	b40080e7          	jalr	-1216(ra) # 19d4 <fat_list_insert_last>
    1e9c:	00c12083          	lw	ra,12(sp)
    1ea0:	00812403          	lw	s0,8(sp)
    1ea4:	000057b7          	lui	a5,0x5
    1ea8:	00100713          	li	a4,1
    1eac:	1ee7a223          	sw	a4,484(a5) # 51e4 <_filelib_init>
    1eb0:	01010113          	addi	sp,sp,16
    1eb4:	00008067          	ret

00001eb8 <fl_closedir>:
    1eb8:	00000513          	li	a0,0
    1ebc:	00008067          	ret

00001ec0 <fatfs_lfn_cache_entry>:
    1ec0:	0005c783          	lbu	a5,0(a1)
    1ec4:	01300693          	li	a3,19
    1ec8:	01f7f793          	andi	a5,a5,31
    1ecc:	fff78713          	addi	a4,a5,-1
    1ed0:	0ff77613          	zext.b	a2,a4
    1ed4:	0ac6ea63          	bltu	a3,a2,1f88 <fatfs_lfn_cache_entry+0xc8>
    1ed8:	10554683          	lbu	a3,261(a0)
    1edc:	00069463          	bnez	a3,1ee4 <fatfs_lfn_cache_entry+0x24>
    1ee0:	10f502a3          	sb	a5,261(a0)
    1ee4:	00171793          	slli	a5,a4,0x1
    1ee8:	00e787b3          	add	a5,a5,a4
    1eec:	0015c683          	lbu	a3,1(a1)
    1ef0:	00279793          	slli	a5,a5,0x2
    1ef4:	00e787b3          	add	a5,a5,a4
    1ef8:	00f50533          	add	a0,a0,a5
    1efc:	00d50023          	sb	a3,0(a0)
    1f00:	0035c783          	lbu	a5,3(a1)
    1f04:	0ff00713          	li	a4,255
    1f08:	02000693          	li	a3,32
    1f0c:	00f500a3          	sb	a5,1(a0)
    1f10:	0055c783          	lbu	a5,5(a1)
    1f14:	00f50123          	sb	a5,2(a0)
    1f18:	0075c783          	lbu	a5,7(a1)
    1f1c:	00f501a3          	sb	a5,3(a0)
    1f20:	0095c783          	lbu	a5,9(a1)
    1f24:	00f50223          	sb	a5,4(a0)
    1f28:	00e5c783          	lbu	a5,14(a1)
    1f2c:	00f502a3          	sb	a5,5(a0)
    1f30:	0105c783          	lbu	a5,16(a1)
    1f34:	00f50323          	sb	a5,6(a0)
    1f38:	0125c783          	lbu	a5,18(a1)
    1f3c:	00f503a3          	sb	a5,7(a0)
    1f40:	0145c783          	lbu	a5,20(a1)
    1f44:	00f50423          	sb	a5,8(a0)
    1f48:	0165c783          	lbu	a5,22(a1)
    1f4c:	00f504a3          	sb	a5,9(a0)
    1f50:	0185c783          	lbu	a5,24(a1)
    1f54:	00f50523          	sb	a5,10(a0)
    1f58:	01c5c783          	lbu	a5,28(a1)
    1f5c:	00f505a3          	sb	a5,11(a0)
    1f60:	01e5c783          	lbu	a5,30(a1)
    1f64:	00f50623          	sb	a5,12(a0)
    1f68:	00d00793          	li	a5,13
    1f6c:	00054603          	lbu	a2,0(a0)
    1f70:	00e61463          	bne	a2,a4,1f78 <fatfs_lfn_cache_entry+0xb8>
    1f74:	00d50023          	sb	a3,0(a0)
    1f78:	fff78793          	addi	a5,a5,-1
    1f7c:	0ff7f793          	zext.b	a5,a5
    1f80:	00150513          	addi	a0,a0,1
    1f84:	fe0794e3          	bnez	a5,1f6c <fatfs_lfn_cache_entry+0xac>
    1f88:	00008067          	ret

00001f8c <fatfs_lfn_cache_get>:
    1f8c:	10554703          	lbu	a4,261(a0)
    1f90:	01400793          	li	a5,20
    1f94:	00f71663          	bne	a4,a5,1fa0 <fatfs_lfn_cache_get+0x14>
    1f98:	10050223          	sb	zero,260(a0)
    1f9c:	00008067          	ret
    1fa0:	02070063          	beqz	a4,1fc0 <fatfs_lfn_cache_get+0x34>
    1fa4:	00171793          	slli	a5,a4,0x1
    1fa8:	00e787b3          	add	a5,a5,a4
    1fac:	00279793          	slli	a5,a5,0x2
    1fb0:	00e787b3          	add	a5,a5,a4
    1fb4:	00f507b3          	add	a5,a0,a5
    1fb8:	00078023          	sb	zero,0(a5)
    1fbc:	00008067          	ret
    1fc0:	00050023          	sb	zero,0(a0)
    1fc4:	00008067          	ret

00001fc8 <fatfs_entry_lfn_text>:
    1fc8:	00b54503          	lbu	a0,11(a0)
    1fcc:	00f57513          	andi	a0,a0,15
    1fd0:	ff150513          	addi	a0,a0,-15
    1fd4:	00153513          	seqz	a0,a0
    1fd8:	00008067          	ret

00001fdc <fatfs_entry_lfn_invalid>:
    1fdc:	00054703          	lbu	a4,0(a0)
    1fe0:	00050793          	mv	a5,a0
    1fe4:	02070463          	beqz	a4,200c <fatfs_entry_lfn_invalid+0x30>
    1fe8:	0e500693          	li	a3,229
    1fec:	00100513          	li	a0,1
    1ff0:	02d70063          	beq	a4,a3,2010 <fatfs_entry_lfn_invalid+0x34>
    1ff4:	00b7c783          	lbu	a5,11(a5)
    1ff8:	00800713          	li	a4,8
    1ffc:	00e78a63          	beq	a5,a4,2010 <fatfs_entry_lfn_invalid+0x34>
    2000:	0067f793          	andi	a5,a5,6
    2004:	00f03533          	snez	a0,a5
    2008:	00008067          	ret
    200c:	00100513          	li	a0,1
    2010:	00008067          	ret

00002014 <fatfs_entry_lfn_exists>:
    2014:	00b5c783          	lbu	a5,11(a1)
    2018:	00f00693          	li	a3,15
    201c:	00050713          	mv	a4,a0
    2020:	02d78a63          	beq	a5,a3,2054 <fatfs_entry_lfn_exists+0x40>
    2024:	0005c683          	lbu	a3,0(a1)
    2028:	00000513          	li	a0,0
    202c:	02068663          	beqz	a3,2058 <fatfs_entry_lfn_exists+0x44>
    2030:	0e500613          	li	a2,229
    2034:	02c68263          	beq	a3,a2,2058 <fatfs_entry_lfn_exists+0x44>
    2038:	00800693          	li	a3,8
    203c:	00d78e63          	beq	a5,a3,2058 <fatfs_entry_lfn_exists+0x44>
    2040:	0067f793          	andi	a5,a5,6
    2044:	00079a63          	bnez	a5,2058 <fatfs_entry_lfn_exists+0x44>
    2048:	10574503          	lbu	a0,261(a4)
    204c:	00a03533          	snez	a0,a0
    2050:	00008067          	ret
    2054:	00000513          	li	a0,0
    2058:	00008067          	ret

0000205c <fatfs_entry_sfn_only>:
    205c:	00b54783          	lbu	a5,11(a0)
    2060:	00f00713          	li	a4,15
    2064:	02e78663          	beq	a5,a4,2090 <fatfs_entry_sfn_only+0x34>
    2068:	00054703          	lbu	a4,0(a0)
    206c:	00000513          	li	a0,0
    2070:	02070263          	beqz	a4,2094 <fatfs_entry_sfn_only+0x38>
    2074:	0e500693          	li	a3,229
    2078:	00d70e63          	beq	a4,a3,2094 <fatfs_entry_sfn_only+0x38>
    207c:	00800713          	li	a4,8
    2080:	00e78a63          	beq	a5,a4,2094 <fatfs_entry_sfn_only+0x38>
    2084:	0067f793          	andi	a5,a5,6
    2088:	0017b513          	seqz	a0,a5
    208c:	00008067          	ret
    2090:	00000513          	li	a0,0
    2094:	00008067          	ret

00002098 <fatfs_entry_is_dir>:
    2098:	00b54503          	lbu	a0,11(a0)
    209c:	00455513          	srli	a0,a0,0x4
    20a0:	00157513          	andi	a0,a0,1
    20a4:	00008067          	ret

000020a8 <fatfs_entry_is_file>:
    20a8:	00b54503          	lbu	a0,11(a0)
    20ac:	00555513          	srli	a0,a0,0x5
    20b0:	00157513          	andi	a0,a0,1
    20b4:	00008067          	ret

000020b8 <fatfs_lfn_entries_required>:
    20b8:	ff010113          	addi	sp,sp,-16
    20bc:	00112623          	sw	ra,12(sp)
    20c0:	fffff097          	auipc	ra,0xfffff
    20c4:	0e4080e7          	jalr	228(ra) # 11a4 <strlen>
    20c8:	00050a63          	beqz	a0,20dc <fatfs_lfn_entries_required+0x24>
    20cc:	00d00593          	li	a1,13
    20d0:	00c50513          	addi	a0,a0,12
    20d4:	fffff097          	auipc	ra,0xfffff
    20d8:	fdc080e7          	jalr	-36(ra) # 10b0 <__divsi3>
    20dc:	00c12083          	lw	ra,12(sp)
    20e0:	01010113          	addi	sp,sp,16
    20e4:	00008067          	ret

000020e8 <fatfs_filename_to_lfn>:
    20e8:	fa010113          	addi	sp,sp,-96
    20ec:	04912a23          	sw	s1,84(sp)
    20f0:	00058493          	mv	s1,a1
    20f4:	000055b7          	lui	a1,0x5
    20f8:	19858593          	addi	a1,a1,408 # 5198 <font+0x228>
    20fc:	05212823          	sw	s2,80(sp)
    2100:	05312623          	sw	s3,76(sp)
    2104:	00060913          	mv	s2,a2
    2108:	00050993          	mv	s3,a0
    210c:	03400613          	li	a2,52
    2110:	00c10513          	addi	a0,sp,12
    2114:	04112e23          	sw	ra,92(sp)
    2118:	04812c23          	sw	s0,88(sp)
    211c:	05412423          	sw	s4,72(sp)
    2120:	05512223          	sw	s5,68(sp)
    2124:	05612023          	sw	s6,64(sp)
    2128:	00068b13          	mv	s6,a3
    212c:	fffff097          	auipc	ra,0xfffff
    2130:	054080e7          	jalr	84(ra) # 1180 <memcpy>
    2134:	00098513          	mv	a0,s3
    2138:	fffff097          	auipc	ra,0xfffff
    213c:	06c080e7          	jalr	108(ra) # 11a4 <strlen>
    2140:	00050a93          	mv	s5,a0
    2144:	00098513          	mv	a0,s3
    2148:	00000097          	auipc	ra,0x0
    214c:	f70080e7          	jalr	-144(ra) # 20b8 <fatfs_lfn_entries_required>
    2150:	00191793          	slli	a5,s2,0x1
    2154:	012787b3          	add	a5,a5,s2
    2158:	00279793          	slli	a5,a5,0x2
    215c:	00050a13          	mv	s4,a0
    2160:	02000613          	li	a2,32
    2164:	00000593          	li	a1,0
    2168:	00048513          	mv	a0,s1
    216c:	01278433          	add	s0,a5,s2
    2170:	fffff097          	auipc	ra,0xfffff
    2174:	ff4080e7          	jalr	-12(ra) # 1164 <memset>
    2178:	00190793          	addi	a5,s2,1
    217c:	fffa0a13          	addi	s4,s4,-1 # 3fff <fatfs_fat_add_cluster_to_chain+0x7>
    2180:	0ff7f793          	zext.b	a5,a5
    2184:	012a1463          	bne	s4,s2,218c <fatfs_filename_to_lfn+0xa4>
    2188:	0407e793          	ori	a5,a5,64
    218c:	00f48023          	sb	a5,0(s1)
    2190:	00f00793          	li	a5,15
    2194:	00f485a3          	sb	a5,11(s1)
    2198:	016486a3          	sb	s6,13(s1)
    219c:	00c10713          	addi	a4,sp,12
    21a0:	00040793          	mv	a5,s0
    21a4:	00d40593          	addi	a1,s0,13
    21a8:	fff00613          	li	a2,-1
    21ac:	00072683          	lw	a3,0(a4)
    21b0:	00d486b3          	add	a3,s1,a3
    21b4:	0557d263          	bge	a5,s5,21f8 <fatfs_filename_to_lfn+0x110>
    21b8:	00f98533          	add	a0,s3,a5
    21bc:	00054503          	lbu	a0,0(a0)
    21c0:	00a68023          	sb	a0,0(a3)
    21c4:	00178793          	addi	a5,a5,1
    21c8:	00470713          	addi	a4,a4,4
    21cc:	feb790e3          	bne	a5,a1,21ac <fatfs_filename_to_lfn+0xc4>
    21d0:	05c12083          	lw	ra,92(sp)
    21d4:	05812403          	lw	s0,88(sp)
    21d8:	05412483          	lw	s1,84(sp)
    21dc:	05012903          	lw	s2,80(sp)
    21e0:	04c12983          	lw	s3,76(sp)
    21e4:	04812a03          	lw	s4,72(sp)
    21e8:	04412a83          	lw	s5,68(sp)
    21ec:	04012b03          	lw	s6,64(sp)
    21f0:	06010113          	addi	sp,sp,96
    21f4:	00008067          	ret
    21f8:	00fa9663          	bne	s5,a5,2204 <fatfs_filename_to_lfn+0x11c>
    21fc:	00068023          	sb	zero,0(a3)
    2200:	fc5ff06f          	j	21c4 <fatfs_filename_to_lfn+0xdc>
    2204:	00c68023          	sb	a2,0(a3)
    2208:	00c680a3          	sb	a2,1(a3)
    220c:	fb9ff06f          	j	21c4 <fatfs_filename_to_lfn+0xdc>

00002210 <fatfs_sfn_create_entry>:
    2210:	00000793          	li	a5,0
    2214:	00b00813          	li	a6,11
    2218:	00f508b3          	add	a7,a0,a5
    221c:	0008c303          	lbu	t1,0(a7)
    2220:	00f688b3          	add	a7,a3,a5
    2224:	00178793          	addi	a5,a5,1
    2228:	00688023          	sb	t1,0(a7)
    222c:	ff0796e3          	bne	a5,a6,2218 <fatfs_sfn_create_entry+0x8>
    2230:	02000793          	li	a5,32
    2234:	000686a3          	sb	zero,13(a3)
    2238:	00068723          	sb	zero,14(a3)
    223c:	000687a3          	sb	zero,15(a3)
    2240:	000688a3          	sb	zero,17(a3)
    2244:	00f68823          	sb	a5,16(a3)
    2248:	000689a3          	sb	zero,19(a3)
    224c:	00f68923          	sb	a5,18(a3)
    2250:	00068b23          	sb	zero,22(a3)
    2254:	00068ba3          	sb	zero,23(a3)
    2258:	00068ca3          	sb	zero,25(a3)
    225c:	00f68c23          	sb	a5,24(a3)
    2260:	00070463          	beqz	a4,2268 <fatfs_sfn_create_entry+0x58>
    2264:	01000793          	li	a5,16
    2268:	00f685a3          	sb	a5,11(a3)
    226c:	01065793          	srli	a5,a2,0x10
    2270:	00f68a23          	sb	a5,20(a3)
    2274:	0087d793          	srli	a5,a5,0x8
    2278:	00f68aa3          	sb	a5,21(a3)
    227c:	01061793          	slli	a5,a2,0x10
    2280:	0107d793          	srli	a5,a5,0x10
    2284:	0087d793          	srli	a5,a5,0x8
    2288:	00f68da3          	sb	a5,27(a3)
    228c:	0085d793          	srli	a5,a1,0x8
    2290:	00b68e23          	sb	a1,28(a3)
    2294:	00f68ea3          	sb	a5,29(a3)
    2298:	0105d793          	srli	a5,a1,0x10
    229c:	0185d593          	srli	a1,a1,0x18
    22a0:	00068623          	sb	zero,12(a3)
    22a4:	00c68d23          	sb	a2,26(a3)
    22a8:	00f68f23          	sb	a5,30(a3)
    22ac:	00b68fa3          	sb	a1,31(a3)
    22b0:	00008067          	ret

000022b4 <fatfs_lfn_create_sfn>:
    22b4:	0005c703          	lbu	a4,0(a1)
    22b8:	02e00793          	li	a5,46
    22bc:	16f70463          	beq	a4,a5,2424 <fatfs_lfn_create_sfn+0x170>
    22c0:	fe010113          	addi	sp,sp,-32
    22c4:	00912a23          	sw	s1,20(sp)
    22c8:	00050493          	mv	s1,a0
    22cc:	00058513          	mv	a0,a1
    22d0:	00112e23          	sw	ra,28(sp)
    22d4:	00812c23          	sw	s0,24(sp)
    22d8:	01212823          	sw	s2,16(sp)
    22dc:	00058413          	mv	s0,a1
    22e0:	fffff097          	auipc	ra,0xfffff
    22e4:	ec4080e7          	jalr	-316(ra) # 11a4 <strlen>
    22e8:	00b00613          	li	a2,11
    22ec:	02000593          	li	a1,32
    22f0:	00050913          	mv	s2,a0
    22f4:	00048513          	mv	a0,s1
    22f8:	fffff097          	auipc	ra,0xfffff
    22fc:	e6c080e7          	jalr	-404(ra) # 1164 <memset>
    2300:	00300613          	li	a2,3
    2304:	02000593          	li	a1,32
    2308:	00c10513          	addi	a0,sp,12
    230c:	fffff097          	auipc	ra,0xfffff
    2310:	e58080e7          	jalr	-424(ra) # 1164 <memset>
    2314:	fff00713          	li	a4,-1
    2318:	00000793          	li	a5,0
    231c:	02e00693          	li	a3,46
    2320:	0d27c063          	blt	a5,s2,23e0 <fatfs_lfn_create_sfn+0x12c>
    2324:	fff00793          	li	a5,-1
    2328:	0ef70663          	beq	a4,a5,2414 <fatfs_lfn_create_sfn+0x160>
    232c:	00170793          	addi	a5,a4,1
    2330:	00c10693          	addi	a3,sp,12
    2334:	00470613          	addi	a2,a4,4
    2338:	0cf61063          	bne	a2,a5,23f8 <fatfs_lfn_create_sfn+0x144>
    233c:	00000613          	li	a2,0
    2340:	00000693          	li	a3,0
    2344:	02000813          	li	a6,32
    2348:	02e00893          	li	a7,46
    234c:	01900313          	li	t1,25
    2350:	00800e13          	li	t3,8
    2354:	02e6da63          	bge	a3,a4,2388 <fatfs_lfn_create_sfn+0xd4>
    2358:	00d407b3          	add	a5,s0,a3
    235c:	0007c783          	lbu	a5,0(a5)
    2360:	03078263          	beq	a5,a6,2384 <fatfs_lfn_create_sfn+0xd0>
    2364:	03178063          	beq	a5,a7,2384 <fatfs_lfn_create_sfn+0xd0>
    2368:	f9f78593          	addi	a1,a5,-97
    236c:	0ff5f593          	zext.b	a1,a1
    2370:	00c48533          	add	a0,s1,a2
    2374:	00160613          	addi	a2,a2,1
    2378:	00b36463          	bltu	t1,a1,2380 <fatfs_lfn_create_sfn+0xcc>
    237c:	fe078793          	addi	a5,a5,-32
    2380:	00f50023          	sb	a5,0(a0)
    2384:	09c61c63          	bne	a2,t3,241c <fatfs_lfn_create_sfn+0x168>
    2388:	00c10793          	addi	a5,sp,12
    238c:	00800693          	li	a3,8
    2390:	01900513          	li	a0,25
    2394:	00b00593          	li	a1,11
    2398:	0007c703          	lbu	a4,0(a5)
    239c:	f9f70613          	addi	a2,a4,-97
    23a0:	0ff67613          	zext.b	a2,a2
    23a4:	00c56663          	bltu	a0,a2,23b0 <fatfs_lfn_create_sfn+0xfc>
    23a8:	fe070713          	addi	a4,a4,-32
    23ac:	0ff77713          	zext.b	a4,a4
    23b0:	00d48633          	add	a2,s1,a3
    23b4:	00e60023          	sb	a4,0(a2)
    23b8:	00168693          	addi	a3,a3,1
    23bc:	00178793          	addi	a5,a5,1
    23c0:	fcb69ce3          	bne	a3,a1,2398 <fatfs_lfn_create_sfn+0xe4>
    23c4:	01c12083          	lw	ra,28(sp)
    23c8:	01812403          	lw	s0,24(sp)
    23cc:	01412483          	lw	s1,20(sp)
    23d0:	01012903          	lw	s2,16(sp)
    23d4:	00100513          	li	a0,1
    23d8:	02010113          	addi	sp,sp,32
    23dc:	00008067          	ret
    23e0:	00f40633          	add	a2,s0,a5
    23e4:	00064603          	lbu	a2,0(a2)
    23e8:	00d61463          	bne	a2,a3,23f0 <fatfs_lfn_create_sfn+0x13c>
    23ec:	00078713          	mv	a4,a5
    23f0:	00178793          	addi	a5,a5,1
    23f4:	f2dff06f          	j	2320 <fatfs_lfn_create_sfn+0x6c>
    23f8:	0127d863          	bge	a5,s2,2408 <fatfs_lfn_create_sfn+0x154>
    23fc:	00f405b3          	add	a1,s0,a5
    2400:	0005c583          	lbu	a1,0(a1)
    2404:	00b68023          	sb	a1,0(a3)
    2408:	00178793          	addi	a5,a5,1
    240c:	00168693          	addi	a3,a3,1
    2410:	f29ff06f          	j	2338 <fatfs_lfn_create_sfn+0x84>
    2414:	00090713          	mv	a4,s2
    2418:	f25ff06f          	j	233c <fatfs_lfn_create_sfn+0x88>
    241c:	00168693          	addi	a3,a3,1
    2420:	f35ff06f          	j	2354 <fatfs_lfn_create_sfn+0xa0>
    2424:	00000513          	li	a0,0
    2428:	00008067          	ret

0000242c <fatfs_lfn_generate_tail>:
    242c:	000187b7          	lui	a5,0x18
    2430:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2434:	16c7e063          	bltu	a5,a2,2594 <fatfs_lfn_generate_tail+0x168>
    2438:	fa010113          	addi	sp,sp,-96
    243c:	04812c23          	sw	s0,88(sp)
    2440:	04912a23          	sw	s1,84(sp)
    2444:	05412423          	sw	s4,72(sp)
    2448:	00050493          	mv	s1,a0
    244c:	00058a13          	mv	s4,a1
    2450:	00060413          	mv	s0,a2
    2454:	00000593          	li	a1,0
    2458:	00c00613          	li	a2,12
    245c:	00410513          	addi	a0,sp,4
    2460:	04112e23          	sw	ra,92(sp)
    2464:	05212823          	sw	s2,80(sp)
    2468:	05512223          	sw	s5,68(sp)
    246c:	03712e23          	sw	s7,60(sp)
    2470:	05312623          	sw	s3,76(sp)
    2474:	05612023          	sw	s6,64(sp)
    2478:	fffff097          	auipc	ra,0xfffff
    247c:	cec080e7          	jalr	-788(ra) # 1164 <memset>
    2480:	000055b7          	lui	a1,0x5
    2484:	07e00793          	li	a5,126
    2488:	01100613          	li	a2,17
    248c:	15058593          	addi	a1,a1,336 # 5150 <font+0x1e0>
    2490:	01c10513          	addi	a0,sp,28
    2494:	01010913          	addi	s2,sp,16
    2498:	00f10223          	sb	a5,4(sp)
    249c:	00090a93          	mv	s5,s2
    24a0:	fffff097          	auipc	ra,0xfffff
    24a4:	ce0080e7          	jalr	-800(ra) # 1180 <memcpy>
    24a8:	00900b93          	li	s7,9
    24ac:	00a00593          	li	a1,10
    24b0:	00040513          	mv	a0,s0
    24b4:	fffff097          	auipc	ra,0xfffff
    24b8:	c4c080e7          	jalr	-948(ra) # 1100 <__umodsi3>
    24bc:	03050793          	addi	a5,a0,48
    24c0:	00278533          	add	a0,a5,sp
    24c4:	fec54783          	lbu	a5,-20(a0)
    24c8:	00090993          	mv	s3,s2
    24cc:	00040513          	mv	a0,s0
    24d0:	00a00593          	li	a1,10
    24d4:	00f90023          	sb	a5,0(s2)
    24d8:	00040b13          	mv	s6,s0
    24dc:	fffff097          	auipc	ra,0xfffff
    24e0:	bdc080e7          	jalr	-1060(ra) # 10b8 <__udivsi3>
    24e4:	00190913          	addi	s2,s2,1
    24e8:	00050413          	mv	s0,a0
    24ec:	fd6be0e3          	bltu	s7,s6,24ac <fatfs_lfn_generate_tail+0x80>
    24f0:	00090023          	sb	zero,0(s2)
    24f4:	00410713          	addi	a4,sp,4
    24f8:	00098793          	mv	a5,s3
    24fc:	0007c683          	lbu	a3,0(a5)
    2500:	fff78793          	addi	a5,a5,-1
    2504:	00170713          	addi	a4,a4,1
    2508:	00d70023          	sb	a3,0(a4)
    250c:	ff57f8e3          	bgeu	a5,s5,24fc <fatfs_lfn_generate_tail+0xd0>
    2510:	00100793          	li	a5,1
    2514:	0159e663          	bltu	s3,s5,2520 <fatfs_lfn_generate_tail+0xf4>
    2518:	415787b3          	sub	a5,a5,s5
    251c:	00f987b3          	add	a5,s3,a5
    2520:	03078793          	addi	a5,a5,48
    2524:	002787b3          	add	a5,a5,sp
    2528:	000a0593          	mv	a1,s4
    252c:	fc078aa3          	sb	zero,-43(a5)
    2530:	00b00613          	li	a2,11
    2534:	00048513          	mv	a0,s1
    2538:	fffff097          	auipc	ra,0xfffff
    253c:	c48080e7          	jalr	-952(ra) # 1180 <memcpy>
    2540:	00410513          	addi	a0,sp,4
    2544:	fffff097          	auipc	ra,0xfffff
    2548:	c60080e7          	jalr	-928(ra) # 11a4 <strlen>
    254c:	40a484b3          	sub	s1,s1,a0
    2550:	00050613          	mv	a2,a0
    2554:	00410593          	addi	a1,sp,4
    2558:	00848513          	addi	a0,s1,8
    255c:	fffff097          	auipc	ra,0xfffff
    2560:	c24080e7          	jalr	-988(ra) # 1180 <memcpy>
    2564:	05c12083          	lw	ra,92(sp)
    2568:	05812403          	lw	s0,88(sp)
    256c:	05412483          	lw	s1,84(sp)
    2570:	05012903          	lw	s2,80(sp)
    2574:	04c12983          	lw	s3,76(sp)
    2578:	04812a03          	lw	s4,72(sp)
    257c:	04412a83          	lw	s5,68(sp)
    2580:	04012b03          	lw	s6,64(sp)
    2584:	03c12b83          	lw	s7,60(sp)
    2588:	00100513          	li	a0,1
    258c:	06010113          	addi	sp,sp,96
    2590:	00008067          	ret
    2594:	00000513          	li	a0,0
    2598:	00008067          	ret

0000259c <fatfs_total_path_levels>:
    259c:	00050793          	mv	a5,a0
    25a0:	06050463          	beqz	a0,2608 <fatfs_total_path_levels+0x6c>
    25a4:	00054703          	lbu	a4,0(a0)
    25a8:	02f00693          	li	a3,47
    25ac:	00d71863          	bne	a4,a3,25bc <fatfs_total_path_levels+0x20>
    25b0:	00150793          	addi	a5,a0,1
    25b4:	00000513          	li	a0,0
    25b8:	0400006f          	j	25f8 <fatfs_total_path_levels+0x5c>
    25bc:	00154683          	lbu	a3,1(a0)
    25c0:	03a00713          	li	a4,58
    25c4:	00e68a63          	beq	a3,a4,25d8 <fatfs_total_path_levels+0x3c>
    25c8:	00254683          	lbu	a3,2(a0)
    25cc:	05c00713          	li	a4,92
    25d0:	fff00513          	li	a0,-1
    25d4:	02e69c63          	bne	a3,a4,260c <fatfs_total_path_levels+0x70>
    25d8:	00378793          	addi	a5,a5,3
    25dc:	05c00713          	li	a4,92
    25e0:	fd5ff06f          	j	25b4 <fatfs_total_path_levels+0x18>
    25e4:	00178793          	addi	a5,a5,1
    25e8:	00e68663          	beq	a3,a4,25f4 <fatfs_total_path_levels+0x58>
    25ec:	0007c683          	lbu	a3,0(a5)
    25f0:	fe069ae3          	bnez	a3,25e4 <fatfs_total_path_levels+0x48>
    25f4:	00150513          	addi	a0,a0,1
    25f8:	0007c683          	lbu	a3,0(a5)
    25fc:	fe0698e3          	bnez	a3,25ec <fatfs_total_path_levels+0x50>
    2600:	fff50513          	addi	a0,a0,-1
    2604:	00008067          	ret
    2608:	fff00513          	li	a0,-1
    260c:	00008067          	ret

00002610 <fatfs_get_substring>:
    2610:	0c050c63          	beqz	a0,26e8 <fatfs_get_substring+0xd8>
    2614:	fe010113          	addi	sp,sp,-32
    2618:	00912a23          	sw	s1,20(sp)
    261c:	00112e23          	sw	ra,28(sp)
    2620:	00812c23          	sw	s0,24(sp)
    2624:	01212823          	sw	s2,16(sp)
    2628:	01312623          	sw	s3,12(sp)
    262c:	01412423          	sw	s4,8(sp)
    2630:	00050793          	mv	a5,a0
    2634:	00068493          	mv	s1,a3
    2638:	fff00513          	li	a0,-1
    263c:	06d05a63          	blez	a3,26b0 <fatfs_get_substring+0xa0>
    2640:	0007c983          	lbu	s3,0(a5)
    2644:	02f00713          	li	a4,47
    2648:	00058a13          	mv	s4,a1
    264c:	00060913          	mv	s2,a2
    2650:	00178413          	addi	s0,a5,1
    2654:	02e98463          	beq	s3,a4,267c <fatfs_get_substring+0x6c>
    2658:	0017c683          	lbu	a3,1(a5)
    265c:	03a00713          	li	a4,58
    2660:	00e68a63          	beq	a3,a4,2674 <fatfs_get_substring+0x64>
    2664:	0027c683          	lbu	a3,2(a5)
    2668:	05c00713          	li	a4,92
    266c:	fff00513          	li	a0,-1
    2670:	04e69063          	bne	a3,a4,26b0 <fatfs_get_substring+0xa0>
    2674:	00378413          	addi	s0,a5,3
    2678:	05c00993          	li	s3,92
    267c:	00040513          	mv	a0,s0
    2680:	fffff097          	auipc	ra,0xfffff
    2684:	b24080e7          	jalr	-1244(ra) # 11a4 <strlen>
    2688:	00000713          	li	a4,0
    268c:	00000693          	li	a3,0
    2690:	00000793          	li	a5,0
    2694:	fff48493          	addi	s1,s1,-1
    2698:	00e905b3          	add	a1,s2,a4
    269c:	02a7ca63          	blt	a5,a0,26d0 <fatfs_get_substring+0xc0>
    26a0:	00058023          	sb	zero,0(a1)
    26a4:	00094503          	lbu	a0,0(s2)
    26a8:	00153513          	seqz	a0,a0
    26ac:	40a00533          	neg	a0,a0
    26b0:	01c12083          	lw	ra,28(sp)
    26b4:	01812403          	lw	s0,24(sp)
    26b8:	01412483          	lw	s1,20(sp)
    26bc:	01012903          	lw	s2,16(sp)
    26c0:	00c12983          	lw	s3,12(sp)
    26c4:	00812a03          	lw	s4,8(sp)
    26c8:	02010113          	addi	sp,sp,32
    26cc:	00008067          	ret
    26d0:	00f40633          	add	a2,s0,a5
    26d4:	00064603          	lbu	a2,0(a2)
    26d8:	01361c63          	bne	a2,s3,26f0 <fatfs_get_substring+0xe0>
    26dc:	00168693          	addi	a3,a3,1
    26e0:	00178793          	addi	a5,a5,1
    26e4:	fb5ff06f          	j	2698 <fatfs_get_substring+0x88>
    26e8:	fff00513          	li	a0,-1
    26ec:	00008067          	ret
    26f0:	ff4698e3          	bne	a3,s4,26e0 <fatfs_get_substring+0xd0>
    26f4:	fe9756e3          	bge	a4,s1,26e0 <fatfs_get_substring+0xd0>
    26f8:	00170713          	addi	a4,a4,1
    26fc:	00c58023          	sb	a2,0(a1)
    2700:	fe1ff06f          	j	26e0 <fatfs_get_substring+0xd0>

00002704 <fatfs_split_path>:
    2704:	fd010113          	addi	sp,sp,-48
    2708:	02912223          	sw	s1,36(sp)
    270c:	03212023          	sw	s2,32(sp)
    2710:	01312e23          	sw	s3,28(sp)
    2714:	01412c23          	sw	s4,24(sp)
    2718:	02112623          	sw	ra,44(sp)
    271c:	00068a13          	mv	s4,a3
    2720:	02812423          	sw	s0,40(sp)
    2724:	00050913          	mv	s2,a0
    2728:	00058493          	mv	s1,a1
    272c:	00060993          	mv	s3,a2
    2730:	00e12623          	sw	a4,12(sp)
    2734:	00000097          	auipc	ra,0x0
    2738:	e68080e7          	jalr	-408(ra) # 259c <fatfs_total_path_levels>
    273c:	fff00793          	li	a5,-1
    2740:	00c12683          	lw	a3,12(sp)
    2744:	02f51663          	bne	a0,a5,2770 <fatfs_split_path+0x6c>
    2748:	fff00413          	li	s0,-1
    274c:	02c12083          	lw	ra,44(sp)
    2750:	00040513          	mv	a0,s0
    2754:	02812403          	lw	s0,40(sp)
    2758:	02412483          	lw	s1,36(sp)
    275c:	02012903          	lw	s2,32(sp)
    2760:	01c12983          	lw	s3,28(sp)
    2764:	01812a03          	lw	s4,24(sp)
    2768:	03010113          	addi	sp,sp,48
    276c:	00008067          	ret
    2770:	00050413          	mv	s0,a0
    2774:	00050593          	mv	a1,a0
    2778:	000a0613          	mv	a2,s4
    277c:	00090513          	mv	a0,s2
    2780:	00000097          	auipc	ra,0x0
    2784:	e90080e7          	jalr	-368(ra) # 2610 <fatfs_get_substring>
    2788:	fc0510e3          	bnez	a0,2748 <fatfs_split_path+0x44>
    278c:	00041663          	bnez	s0,2798 <fatfs_split_path+0x94>
    2790:	00048023          	sb	zero,0(s1)
    2794:	fb9ff06f          	j	274c <fatfs_split_path+0x48>
    2798:	00090513          	mv	a0,s2
    279c:	fffff097          	auipc	ra,0xfffff
    27a0:	a08080e7          	jalr	-1528(ra) # 11a4 <strlen>
    27a4:	00050413          	mv	s0,a0
    27a8:	000a0513          	mv	a0,s4
    27ac:	fffff097          	auipc	ra,0xfffff
    27b0:	9f8080e7          	jalr	-1544(ra) # 11a4 <strlen>
    27b4:	40a40433          	sub	s0,s0,a0
    27b8:	0089d463          	bge	s3,s0,27c0 <fatfs_split_path+0xbc>
    27bc:	00098413          	mv	s0,s3
    27c0:	00040613          	mv	a2,s0
    27c4:	00048513          	mv	a0,s1
    27c8:	00090593          	mv	a1,s2
    27cc:	008484b3          	add	s1,s1,s0
    27d0:	fffff097          	auipc	ra,0xfffff
    27d4:	9b0080e7          	jalr	-1616(ra) # 1180 <memcpy>
    27d8:	00000413          	li	s0,0
    27dc:	fe048fa3          	sb	zero,-1(s1)
    27e0:	f6dff06f          	j	274c <fatfs_split_path+0x48>

000027e4 <fatfs_compare_names>:
    27e4:	fd010113          	addi	sp,sp,-48
    27e8:	02112623          	sw	ra,44(sp)
    27ec:	02812423          	sw	s0,40(sp)
    27f0:	02912223          	sw	s1,36(sp)
    27f4:	03212023          	sw	s2,32(sp)
    27f8:	01312e23          	sw	s3,28(sp)
    27fc:	00058913          	mv	s2,a1
    2800:	01412c23          	sw	s4,24(sp)
    2804:	01512a23          	sw	s5,20(sp)
    2808:	01612823          	sw	s6,16(sp)
    280c:	00050a13          	mv	s4,a0
    2810:	fffff097          	auipc	ra,0xfffff
    2814:	2a4080e7          	jalr	676(ra) # 1ab4 <FileString_GetExtension>
    2818:	00050493          	mv	s1,a0
    281c:	00090513          	mv	a0,s2
    2820:	fffff097          	auipc	ra,0xfffff
    2824:	294080e7          	jalr	660(ra) # 1ab4 <FileString_GetExtension>
    2828:	fff00793          	li	a5,-1
    282c:	00050413          	mv	s0,a0
    2830:	00000993          	li	s3,0
    2834:	0af49263          	bne	s1,a5,28d8 <fatfs_compare_names+0xf4>
    2838:	0e951863          	bne	a0,s1,2928 <fatfs_compare_names+0x144>
    283c:	000a0513          	mv	a0,s4
    2840:	fffff097          	auipc	ra,0xfffff
    2844:	964080e7          	jalr	-1692(ra) # 11a4 <strlen>
    2848:	00050493          	mv	s1,a0
    284c:	00090513          	mv	a0,s2
    2850:	fffff097          	auipc	ra,0xfffff
    2854:	954080e7          	jalr	-1708(ra) # 11a4 <strlen>
    2858:	00050413          	mv	s0,a0
    285c:	fff48793          	addi	a5,s1,-1
    2860:	00fa07b3          	add	a5,s4,a5
    2864:	40978733          	sub	a4,a5,s1
    2868:	02000613          	li	a2,32
    286c:	00078693          	mv	a3,a5
    2870:	00e78863          	beq	a5,a4,2880 <fatfs_compare_names+0x9c>
    2874:	0007c583          	lbu	a1,0(a5)
    2878:	fff78793          	addi	a5,a5,-1
    287c:	04c58663          	beq	a1,a2,28c8 <fatfs_compare_names+0xe4>
    2880:	fff40793          	addi	a5,s0,-1
    2884:	00f907b3          	add	a5,s2,a5
    2888:	40878733          	sub	a4,a5,s0
    288c:	02000613          	li	a2,32
    2890:	00078693          	mv	a3,a5
    2894:	00e78863          	beq	a5,a4,28a4 <fatfs_compare_names+0xc0>
    2898:	0007c583          	lbu	a1,0(a5)
    289c:	fff78793          	addi	a5,a5,-1
    28a0:	02c58863          	beq	a1,a2,28d0 <fatfs_compare_names+0xec>
    28a4:	00000993          	li	s3,0
    28a8:	08941063          	bne	s0,s1,2928 <fatfs_compare_names+0x144>
    28ac:	00040613          	mv	a2,s0
    28b0:	00090593          	mv	a1,s2
    28b4:	000a0513          	mv	a0,s4
    28b8:	fffff097          	auipc	ra,0xfffff
    28bc:	18c080e7          	jalr	396(ra) # 1a44 <FileString_StrCmpNoCase>
    28c0:	00153993          	seqz	s3,a0
    28c4:	0640006f          	j	2928 <fatfs_compare_names+0x144>
    28c8:	414684b3          	sub	s1,a3,s4
    28cc:	fa1ff06f          	j	286c <fatfs_compare_names+0x88>
    28d0:	41268433          	sub	s0,a3,s2
    28d4:	fbdff06f          	j	2890 <fatfs_compare_names+0xac>
    28d8:	04f50863          	beq	a0,a5,2928 <fatfs_compare_names+0x144>
    28dc:	00148a93          	addi	s5,s1,1
    28e0:	015a0ab3          	add	s5,s4,s5
    28e4:	00140b13          	addi	s6,s0,1
    28e8:	000a8513          	mv	a0,s5
    28ec:	fffff097          	auipc	ra,0xfffff
    28f0:	8b8080e7          	jalr	-1864(ra) # 11a4 <strlen>
    28f4:	01690b33          	add	s6,s2,s6
    28f8:	00a12623          	sw	a0,12(sp)
    28fc:	000b0513          	mv	a0,s6
    2900:	fffff097          	auipc	ra,0xfffff
    2904:	8a4080e7          	jalr	-1884(ra) # 11a4 <strlen>
    2908:	00c12603          	lw	a2,12(sp)
    290c:	00000993          	li	s3,0
    2910:	00a61c63          	bne	a2,a0,2928 <fatfs_compare_names+0x144>
    2914:	000b0593          	mv	a1,s6
    2918:	000a8513          	mv	a0,s5
    291c:	fffff097          	auipc	ra,0xfffff
    2920:	128080e7          	jalr	296(ra) # 1a44 <FileString_StrCmpNoCase>
    2924:	f2050ce3          	beqz	a0,285c <fatfs_compare_names+0x78>
    2928:	02c12083          	lw	ra,44(sp)
    292c:	02812403          	lw	s0,40(sp)
    2930:	02412483          	lw	s1,36(sp)
    2934:	02012903          	lw	s2,32(sp)
    2938:	01812a03          	lw	s4,24(sp)
    293c:	01412a83          	lw	s5,20(sp)
    2940:	01012b03          	lw	s6,16(sp)
    2944:	00098513          	mv	a0,s3
    2948:	01c12983          	lw	s3,28(sp)
    294c:	03010113          	addi	sp,sp,48
    2950:	00008067          	ret

00002954 <_check_file_open>:
    2954:	fe010113          	addi	sp,sp,-32
    2958:	000057b7          	lui	a5,0x5
    295c:	00812c23          	sw	s0,24(sp)
    2960:	1f47a403          	lw	s0,500(a5) # 51f4 <_open_file_list>
    2964:	00912a23          	sw	s1,20(sp)
    2968:	01212823          	sw	s2,16(sp)
    296c:	01312623          	sw	s3,12(sp)
    2970:	00112e23          	sw	ra,28(sp)
    2974:	00050493          	mv	s1,a0
    2978:	01450913          	addi	s2,a0,20
    297c:	11850993          	addi	s3,a0,280
    2980:	02041263          	bnez	s0,29a4 <_check_file_open+0x50>
    2984:	00000513          	li	a0,0
    2988:	01c12083          	lw	ra,28(sp)
    298c:	01812403          	lw	s0,24(sp)
    2990:	01412483          	lw	s1,20(sp)
    2994:	01012903          	lw	s2,16(sp)
    2998:	00c12983          	lw	s3,12(sp)
    299c:	02010113          	addi	sp,sp,32
    29a0:	00008067          	ret
    29a4:	bc440793          	addi	a5,s0,-1084
    29a8:	02f48663          	beq	s1,a5,29d4 <_check_file_open+0x80>
    29ac:	00090593          	mv	a1,s2
    29b0:	bd840513          	addi	a0,s0,-1064
    29b4:	00000097          	auipc	ra,0x0
    29b8:	e30080e7          	jalr	-464(ra) # 27e4 <fatfs_compare_names>
    29bc:	00050c63          	beqz	a0,29d4 <_check_file_open+0x80>
    29c0:	00098593          	mv	a1,s3
    29c4:	cdc40513          	addi	a0,s0,-804
    29c8:	00000097          	auipc	ra,0x0
    29cc:	e1c080e7          	jalr	-484(ra) # 27e4 <fatfs_compare_names>
    29d0:	00051663          	bnez	a0,29dc <_check_file_open+0x88>
    29d4:	00442403          	lw	s0,4(s0)
    29d8:	fa9ff06f          	j	2980 <_check_file_open+0x2c>
    29dc:	00100513          	li	a0,1
    29e0:	fa9ff06f          	j	2988 <_check_file_open+0x34>

000029e4 <fatfs_get_sfn_display_name>:
    29e4:	00000713          	li	a4,0
    29e8:	00c00613          	li	a2,12
    29ec:	02000813          	li	a6,32
    29f0:	01900893          	li	a7,25
    29f4:	0005c783          	lbu	a5,0(a1)
    29f8:	00078463          	beqz	a5,2a00 <fatfs_get_sfn_display_name+0x1c>
    29fc:	00c71863          	bne	a4,a2,2a0c <fatfs_get_sfn_display_name+0x28>
    2a00:	00050023          	sb	zero,0(a0)
    2a04:	00100513          	li	a0,1
    2a08:	00008067          	ret
    2a0c:	00158593          	addi	a1,a1,1
    2a10:	ff0782e3          	beq	a5,a6,29f4 <fatfs_get_sfn_display_name+0x10>
    2a14:	fbf78693          	addi	a3,a5,-65
    2a18:	0ff6f693          	zext.b	a3,a3
    2a1c:	00d8e663          	bltu	a7,a3,2a28 <fatfs_get_sfn_display_name+0x44>
    2a20:	02078793          	addi	a5,a5,32
    2a24:	0ff7f793          	zext.b	a5,a5
    2a28:	00f50023          	sb	a5,0(a0)
    2a2c:	00170713          	addi	a4,a4,1
    2a30:	00150513          	addi	a0,a0,1
    2a34:	fc1ff06f          	j	29f4 <fatfs_get_sfn_display_name+0x10>

00002a38 <fatfs_fat_init>:
    2a38:	ff010113          	addi	sp,sp,-16
    2a3c:	00812423          	sw	s0,8(sp)
    2a40:	00912223          	sw	s1,4(sp)
    2a44:	00112623          	sw	ra,12(sp)
    2a48:	fff00793          	li	a5,-1
    2a4c:	25850493          	addi	s1,a0,600
    2a50:	00050413          	mv	s0,a0
    2a54:	44f52c23          	sw	a5,1112(a0)
    2a58:	24052a23          	sw	zero,596(a0)
    2a5c:	44052e23          	sw	zero,1116(a0)
    2a60:	20000613          	li	a2,512
    2a64:	00048513          	mv	a0,s1
    2a68:	00000593          	li	a1,0
    2a6c:	ffffe097          	auipc	ra,0xffffe
    2a70:	6f8080e7          	jalr	1784(ra) # 1164 <memset>
    2a74:	25442783          	lw	a5,596(s0)
    2a78:	00c12083          	lw	ra,12(sp)
    2a7c:	24942a23          	sw	s1,596(s0)
    2a80:	46042023          	sw	zero,1120(s0)
    2a84:	46f42223          	sw	a5,1124(s0)
    2a88:	00812403          	lw	s0,8(sp)
    2a8c:	00412483          	lw	s1,4(sp)
    2a90:	01010113          	addi	sp,sp,16
    2a94:	00008067          	ret

00002a98 <fatfs_init>:
    2a98:	fc010113          	addi	sp,sp,-64
    2a9c:	02812c23          	sw	s0,56(sp)
    2aa0:	02112e23          	sw	ra,60(sp)
    2aa4:	02912a23          	sw	s1,52(sp)
    2aa8:	03212823          	sw	s2,48(sp)
    2aac:	03312623          	sw	s3,44(sp)
    2ab0:	03412423          	sw	s4,40(sp)
    2ab4:	03512223          	sw	s5,36(sp)
    2ab8:	03612023          	sw	s6,32(sp)
    2abc:	01712e23          	sw	s7,28(sp)
    2ac0:	fff00793          	li	a5,-1
    2ac4:	24f52223          	sw	a5,580(a0)
    2ac8:	24052423          	sw	zero,584(a0)
    2acc:	02052223          	sw	zero,36(a0)
    2ad0:	00050413          	mv	s0,a0
    2ad4:	00000097          	auipc	ra,0x0
    2ad8:	f64080e7          	jalr	-156(ra) # 2a38 <fatfs_fat_init>
    2adc:	03442783          	lw	a5,52(s0)
    2ae0:	02079a63          	bnez	a5,2b14 <fatfs_init+0x7c>
    2ae4:	fff00513          	li	a0,-1
    2ae8:	03c12083          	lw	ra,60(sp)
    2aec:	03812403          	lw	s0,56(sp)
    2af0:	03412483          	lw	s1,52(sp)
    2af4:	03012903          	lw	s2,48(sp)
    2af8:	02c12983          	lw	s3,44(sp)
    2afc:	02812a03          	lw	s4,40(sp)
    2b00:	02412a83          	lw	s5,36(sp)
    2b04:	02012b03          	lw	s6,32(sp)
    2b08:	01c12b83          	lw	s7,28(sp)
    2b0c:	04010113          	addi	sp,sp,64
    2b10:	00008067          	ret
    2b14:	04440593          	addi	a1,s0,68
    2b18:	00100613          	li	a2,1
    2b1c:	00000513          	li	a0,0
    2b20:	00b12623          	sw	a1,12(sp)
    2b24:	000780e7          	jalr	a5
    2b28:	fa050ee3          	beqz	a0,2ae4 <fatfs_init+0x4c>
    2b2c:	24042703          	lw	a4,576(s0)
    2b30:	ffff07b7          	lui	a5,0xffff0
    2b34:	00c12583          	lw	a1,12(sp)
    2b38:	00e7f7b3          	and	a5,a5,a4
    2b3c:	aa550737          	lui	a4,0xaa550
    2b40:	00e78663          	beq	a5,a4,2b4c <fatfs_init+0xb4>
    2b44:	ffd00513          	li	a0,-3
    2b48:	fa1ff06f          	j	2ae8 <fatfs_init+0x50>
    2b4c:	24344783          	lbu	a5,579(s0)
    2b50:	24244703          	lbu	a4,578(s0)
    2b54:	ffc00513          	li	a0,-4
    2b58:	00879793          	slli	a5,a5,0x8
    2b5c:	00e787b3          	add	a5,a5,a4
    2b60:	0000b737          	lui	a4,0xb
    2b64:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0xe15>
    2b68:	f8e790e3          	bne	a5,a4,2ae8 <fatfs_init+0x50>
    2b6c:	20644783          	lbu	a5,518(s0)
    2b70:	00600713          	li	a4,6
    2b74:	04f76063          	bltu	a4,a5,2bb4 <fatfs_init+0x11c>
    2b78:	00400713          	li	a4,4
    2b7c:	00f76663          	bltu	a4,a5,2b88 <fatfs_init+0xf0>
    2b80:	00000513          	li	a0,0
    2b84:	04078263          	beqz	a5,2bc8 <fatfs_init+0x130>
    2b88:	20d44503          	lbu	a0,525(s0)
    2b8c:	20c44783          	lbu	a5,524(s0)
    2b90:	01851513          	slli	a0,a0,0x18
    2b94:	01079793          	slli	a5,a5,0x10
    2b98:	00f50533          	add	a0,a0,a5
    2b9c:	20a44783          	lbu	a5,522(s0)
    2ba0:	00f50533          	add	a0,a0,a5
    2ba4:	20b44783          	lbu	a5,523(s0)
    2ba8:	00879793          	slli	a5,a5,0x8
    2bac:	00f50533          	add	a0,a0,a5
    2bb0:	0180006f          	j	2bc8 <fatfs_init+0x130>
    2bb4:	00c00713          	li	a4,12
    2bb8:	1ef76a63          	bltu	a4,a5,2dac <fatfs_init+0x314>
    2bbc:	00a00713          	li	a4,10
    2bc0:	00000513          	li	a0,0
    2bc4:	fcf762e3          	bltu	a4,a5,2b88 <fatfs_init+0xf0>
    2bc8:	03442783          	lw	a5,52(s0)
    2bcc:	00a42e23          	sw	a0,28(s0)
    2bd0:	00100613          	li	a2,1
    2bd4:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2bd8:	f00506e3          	beqz	a0,2ae4 <fatfs_init+0x4c>
    2bdc:	05044783          	lbu	a5,80(s0)
    2be0:	04f44703          	lbu	a4,79(s0)
    2be4:	ffe00513          	li	a0,-2
    2be8:	00879793          	slli	a5,a5,0x8
    2bec:	00e787b3          	add	a5,a5,a4
    2bf0:	20000713          	li	a4,512
    2bf4:	eee79ae3          	bne	a5,a4,2ae8 <fatfs_init+0x50>
    2bf8:	05644483          	lbu	s1,86(s0)
    2bfc:	05544b83          	lbu	s7,85(s0)
    2c00:	05344903          	lbu	s2,83(s0)
    2c04:	05244a03          	lbu	s4,82(s0)
    2c08:	05b44583          	lbu	a1,91(s0)
    2c0c:	00849493          	slli	s1,s1,0x8
    2c10:	05144983          	lbu	s3,81(s0)
    2c14:	05a44783          	lbu	a5,90(s0)
    2c18:	01748ab3          	add	s5,s1,s7
    2c1c:	00891913          	slli	s2,s2,0x8
    2c20:	010a9a93          	slli	s5,s5,0x10
    2c24:	01490b33          	add	s6,s2,s4
    2c28:	010ada93          	srli	s5,s5,0x10
    2c2c:	00859593          	slli	a1,a1,0x8
    2c30:	010b1b13          	slli	s6,s6,0x10
    2c34:	01340023          	sb	s3,0(s0)
    2c38:	03541423          	sh	s5,40(s0)
    2c3c:	00f585b3          	add	a1,a1,a5
    2c40:	05444503          	lbu	a0,84(s0)
    2c44:	010b5b13          	srli	s6,s6,0x10
    2c48:	02059663          	bnez	a1,2c74 <fatfs_init+0x1dc>
    2c4c:	06b44583          	lbu	a1,107(s0)
    2c50:	06a44783          	lbu	a5,106(s0)
    2c54:	01859593          	slli	a1,a1,0x18
    2c58:	01079793          	slli	a5,a5,0x10
    2c5c:	00f585b3          	add	a1,a1,a5
    2c60:	06844783          	lbu	a5,104(s0)
    2c64:	00f585b3          	add	a1,a1,a5
    2c68:	06944783          	lbu	a5,105(s0)
    2c6c:	00879793          	slli	a5,a5,0x8
    2c70:	00f585b3          	add	a1,a1,a5
    2c74:	07344783          	lbu	a5,115(s0)
    2c78:	07244703          	lbu	a4,114(s0)
    2c7c:	02b42023          	sw	a1,32(s0)
    2c80:	01879793          	slli	a5,a5,0x18
    2c84:	01071713          	slli	a4,a4,0x10
    2c88:	00e787b3          	add	a5,a5,a4
    2c8c:	07044703          	lbu	a4,112(s0)
    2c90:	005a9a93          	slli	s5,s5,0x5
    2c94:	1ffa8a93          	addi	s5,s5,511
    2c98:	00e787b3          	add	a5,a5,a4
    2c9c:	07144703          	lbu	a4,113(s0)
    2ca0:	409ada93          	srai	s5,s5,0x9
    2ca4:	00871713          	slli	a4,a4,0x8
    2ca8:	00e787b3          	add	a5,a5,a4
    2cac:	00f42423          	sw	a5,8(s0)
    2cb0:	07544783          	lbu	a5,117(s0)
    2cb4:	07444703          	lbu	a4,116(s0)
    2cb8:	00879793          	slli	a5,a5,0x8
    2cbc:	00e787b3          	add	a5,a5,a4
    2cc0:	00f41c23          	sh	a5,24(s0)
    2cc4:	fffff097          	auipc	ra,0xfffff
    2cc8:	ce8080e7          	jalr	-792(ra) # 19ac <__mulsi3>
    2ccc:	00ab07b3          	add	a5,s6,a0
    2cd0:	00f42623          	sw	a5,12(s0)
    2cd4:	01c42783          	lw	a5,28(s0)
    2cd8:	24244703          	lbu	a4,578(s0)
    2cdc:	01542823          	sw	s5,16(s0)
    2ce0:	00fb0b33          	add	s6,s6,a5
    2ce4:	24344783          	lbu	a5,579(s0)
    2ce8:	01642a23          	sw	s6,20(s0)
    2cec:	01650b33          	add	s6,a0,s6
    2cf0:	00879793          	slli	a5,a5,0x8
    2cf4:	00e787b3          	add	a5,a5,a4
    2cf8:	0000b737          	lui	a4,0xb
    2cfc:	01642223          	sw	s6,4(s0)
    2d00:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0xe15>
    2d04:	e4e790e3          	bne	a5,a4,2b44 <fatfs_init+0xac>
    2d08:	05844783          	lbu	a5,88(s0)
    2d0c:	05744703          	lbu	a4,87(s0)
    2d10:	017484b3          	add	s1,s1,s7
    2d14:	00549493          	slli	s1,s1,0x5
    2d18:	00879793          	slli	a5,a5,0x8
    2d1c:	1ff48493          	addi	s1,s1,511
    2d20:	00e787b3          	add	a5,a5,a4
    2d24:	4094d493          	srai	s1,s1,0x9
    2d28:	02079663          	bnez	a5,2d54 <fatfs_init+0x2bc>
    2d2c:	06744783          	lbu	a5,103(s0)
    2d30:	06644703          	lbu	a4,102(s0)
    2d34:	01879793          	slli	a5,a5,0x18
    2d38:	01071713          	slli	a4,a4,0x10
    2d3c:	00e787b3          	add	a5,a5,a4
    2d40:	06444703          	lbu	a4,100(s0)
    2d44:	00e787b3          	add	a5,a5,a4
    2d48:	06544703          	lbu	a4,101(s0)
    2d4c:	00871713          	slli	a4,a4,0x8
    2d50:	00e787b3          	add	a5,a5,a4
    2d54:	01490933          	add	s2,s2,s4
    2d58:	00990933          	add	s2,s2,s1
    2d5c:	00a90533          	add	a0,s2,a0
    2d60:	40a787b3          	sub	a5,a5,a0
    2d64:	ffb00513          	li	a0,-5
    2d68:	d80980e3          	beqz	s3,2ae8 <fatfs_init+0x50>
    2d6c:	00078513          	mv	a0,a5
    2d70:	00098593          	mv	a1,s3
    2d74:	ffffe097          	auipc	ra,0xffffe
    2d78:	344080e7          	jalr	836(ra) # 10b8 <__udivsi3>
    2d7c:	00001737          	lui	a4,0x1
    2d80:	00050793          	mv	a5,a0
    2d84:	ff470713          	addi	a4,a4,-12 # ff4 <sdcard_init+0xf8>
    2d88:	ffb00513          	li	a0,-5
    2d8c:	d4f77ee3          	bgeu	a4,a5,2ae8 <fatfs_init+0x50>
    2d90:	00010737          	lui	a4,0x10
    2d94:	ff470713          	addi	a4,a4,-12 # fff4 <_fs+0x63b4>
    2d98:	02f76663          	bltu	a4,a5,2dc4 <fatfs_init+0x32c>
    2d9c:	00042423          	sw	zero,8(s0)
    2da0:	02042823          	sw	zero,48(s0)
    2da4:	00000513          	li	a0,0
    2da8:	d41ff06f          	j	2ae8 <fatfs_init+0x50>
    2dac:	ff278793          	addi	a5,a5,-14
    2db0:	0ff7f793          	zext.b	a5,a5
    2db4:	00100713          	li	a4,1
    2db8:	00000513          	li	a0,0
    2dbc:	dcf776e3          	bgeu	a4,a5,2b88 <fatfs_init+0xf0>
    2dc0:	e09ff06f          	j	2bc8 <fatfs_init+0x130>
    2dc4:	00100793          	li	a5,1
    2dc8:	02f42823          	sw	a5,48(s0)
    2dcc:	fd9ff06f          	j	2da4 <fatfs_init+0x30c>

00002dd0 <fl_attach_media>:
    2dd0:	000057b7          	lui	a5,0x5
    2dd4:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    2dd8:	ff010113          	addi	sp,sp,-16
    2ddc:	00812423          	sw	s0,8(sp)
    2de0:	00912223          	sw	s1,4(sp)
    2de4:	00112623          	sw	ra,12(sp)
    2de8:	00050493          	mv	s1,a0
    2dec:	00058413          	mv	s0,a1
    2df0:	00079663          	bnez	a5,2dfc <fl_attach_media+0x2c>
    2df4:	fffff097          	auipc	ra,0xfffff
    2df8:	054080e7          	jalr	84(ra) # 1e48 <fl_init>
    2dfc:	0000a537          	lui	a0,0xa
    2e00:	c4050793          	addi	a5,a0,-960 # 9c40 <_fs>
    2e04:	c4050513          	addi	a0,a0,-960
    2e08:	0287ac23          	sw	s0,56(a5)
    2e0c:	0297aa23          	sw	s1,52(a5)
    2e10:	00000097          	auipc	ra,0x0
    2e14:	c88080e7          	jalr	-888(ra) # 2a98 <fatfs_init>
    2e18:	00050413          	mv	s0,a0
    2e1c:	02050863          	beqz	a0,2e4c <fl_attach_media+0x7c>
    2e20:	00050593          	mv	a1,a0
    2e24:	00005537          	lui	a0,0x5
    2e28:	16450513          	addi	a0,a0,356 # 5164 <font+0x1f4>
    2e2c:	fffff097          	auipc	ra,0xfffff
    2e30:	a44080e7          	jalr	-1468(ra) # 1870 <printf>
    2e34:	00c12083          	lw	ra,12(sp)
    2e38:	00040513          	mv	a0,s0
    2e3c:	00812403          	lw	s0,8(sp)
    2e40:	00412483          	lw	s1,4(sp)
    2e44:	01010113          	addi	sp,sp,16
    2e48:	00008067          	ret
    2e4c:	000057b7          	lui	a5,0x5
    2e50:	00100713          	li	a4,1
    2e54:	1ee7a423          	sw	a4,488(a5) # 51e8 <_filelib_valid>
    2e58:	fddff06f          	j	2e34 <fl_attach_media+0x64>

00002e5c <fatfs_fat_purge>:
    2e5c:	ff010113          	addi	sp,sp,-16
    2e60:	00812423          	sw	s0,8(sp)
    2e64:	25452403          	lw	s0,596(a0)
    2e68:	00912223          	sw	s1,4(sp)
    2e6c:	00112623          	sw	ra,12(sp)
    2e70:	00050493          	mv	s1,a0
    2e74:	00041663          	bnez	s0,2e80 <fatfs_fat_purge+0x24>
    2e78:	00100513          	li	a0,1
    2e7c:	0280006f          	j	2ea4 <fatfs_fat_purge+0x48>
    2e80:	20442783          	lw	a5,516(s0)
    2e84:	00079663          	bnez	a5,2e90 <fatfs_fat_purge+0x34>
    2e88:	20c42403          	lw	s0,524(s0)
    2e8c:	fe9ff06f          	j	2e74 <fatfs_fat_purge+0x18>
    2e90:	00040593          	mv	a1,s0
    2e94:	00048513          	mv	a0,s1
    2e98:	fffff097          	auipc	ra,0xfffff
    2e9c:	c48080e7          	jalr	-952(ra) # 1ae0 <fatfs_fat_writeback>
    2ea0:	fe0514e3          	bnez	a0,2e88 <fatfs_fat_purge+0x2c>
    2ea4:	00c12083          	lw	ra,12(sp)
    2ea8:	00812403          	lw	s0,8(sp)
    2eac:	00412483          	lw	s1,4(sp)
    2eb0:	01010113          	addi	sp,sp,16
    2eb4:	00008067          	ret

00002eb8 <fatfs_find_next_cluster>:
    2eb8:	ff010113          	addi	sp,sp,-16
    2ebc:	00812423          	sw	s0,8(sp)
    2ec0:	01212023          	sw	s2,0(sp)
    2ec4:	00112623          	sw	ra,12(sp)
    2ec8:	00912223          	sw	s1,4(sp)
    2ecc:	00050913          	mv	s2,a0
    2ed0:	00200413          	li	s0,2
    2ed4:	00058463          	beqz	a1,2edc <fatfs_find_next_cluster+0x24>
    2ed8:	00058413          	mv	s0,a1
    2edc:	03092783          	lw	a5,48(s2)
    2ee0:	00745493          	srli	s1,s0,0x7
    2ee4:	00079463          	bnez	a5,2eec <fatfs_find_next_cluster+0x34>
    2ee8:	00845493          	srli	s1,s0,0x8
    2eec:	01492583          	lw	a1,20(s2)
    2ef0:	00090513          	mv	a0,s2
    2ef4:	00b485b3          	add	a1,s1,a1
    2ef8:	fffff097          	auipc	ra,0xfffff
    2efc:	c6c080e7          	jalr	-916(ra) # 1b64 <fatfs_fat_read_sector>
    2f00:	00050793          	mv	a5,a0
    2f04:	fff00513          	li	a0,-1
    2f08:	04078a63          	beqz	a5,2f5c <fatfs_find_next_cluster+0xa4>
    2f0c:	03092703          	lw	a4,48(s2)
    2f10:	2087a783          	lw	a5,520(a5)
    2f14:	06071063          	bnez	a4,2f74 <fatfs_find_next_cluster+0xbc>
    2f18:	00849493          	slli	s1,s1,0x8
    2f1c:	40940433          	sub	s0,s0,s1
    2f20:	00010737          	lui	a4,0x10
    2f24:	00141413          	slli	s0,s0,0x1
    2f28:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x63bf>
    2f2c:	00e47433          	and	s0,s0,a4
    2f30:	008787b3          	add	a5,a5,s0
    2f34:	0017c503          	lbu	a0,1(a5)
    2f38:	0007c783          	lbu	a5,0(a5)
    2f3c:	00851513          	slli	a0,a0,0x8
    2f40:	00f50533          	add	a0,a0,a5
    2f44:	ffff07b7          	lui	a5,0xffff0
    2f48:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2f4c:	00f507b3          	add	a5,a0,a5
    2f50:	00700713          	li	a4,7
    2f54:	00f76463          	bltu	a4,a5,2f5c <fatfs_find_next_cluster+0xa4>
    2f58:	fff00513          	li	a0,-1
    2f5c:	00c12083          	lw	ra,12(sp)
    2f60:	00812403          	lw	s0,8(sp)
    2f64:	00412483          	lw	s1,4(sp)
    2f68:	00012903          	lw	s2,0(sp)
    2f6c:	01010113          	addi	sp,sp,16
    2f70:	00008067          	ret
    2f74:	00749493          	slli	s1,s1,0x7
    2f78:	40940433          	sub	s0,s0,s1
    2f7c:	00010737          	lui	a4,0x10
    2f80:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x63bf>
    2f84:	00241413          	slli	s0,s0,0x2
    2f88:	00e47433          	and	s0,s0,a4
    2f8c:	008787b3          	add	a5,a5,s0
    2f90:	0037c503          	lbu	a0,3(a5)
    2f94:	0027c703          	lbu	a4,2(a5)
    2f98:	01851513          	slli	a0,a0,0x18
    2f9c:	01071713          	slli	a4,a4,0x10
    2fa0:	00e50533          	add	a0,a0,a4
    2fa4:	0007c703          	lbu	a4,0(a5)
    2fa8:	0017c783          	lbu	a5,1(a5)
    2fac:	00e50533          	add	a0,a0,a4
    2fb0:	00879793          	slli	a5,a5,0x8
    2fb4:	00f50533          	add	a0,a0,a5
    2fb8:	00451513          	slli	a0,a0,0x4
    2fbc:	00455513          	srli	a0,a0,0x4
    2fc0:	f00007b7          	lui	a5,0xf0000
    2fc4:	f85ff06f          	j	2f48 <fatfs_find_next_cluster+0x90>

00002fc8 <fatfs_sector_reader>:
    2fc8:	03052783          	lw	a5,48(a0)
    2fcc:	fd010113          	addi	sp,sp,-48
    2fd0:	02812423          	sw	s0,40(sp)
    2fd4:	03212023          	sw	s2,32(sp)
    2fd8:	01312e23          	sw	s3,28(sp)
    2fdc:	02112623          	sw	ra,44(sp)
    2fe0:	02912223          	sw	s1,36(sp)
    2fe4:	01412c23          	sw	s4,24(sp)
    2fe8:	01512a23          	sw	s5,20(sp)
    2fec:	00f5e7b3          	or	a5,a1,a5
    2ff0:	00050413          	mv	s0,a0
    2ff4:	00060913          	mv	s2,a2
    2ff8:	00068993          	mv	s3,a3
    2ffc:	06079c63          	bnez	a5,3074 <fatfs_sector_reader+0xac>
    3000:	01052783          	lw	a5,16(a0)
    3004:	02f66663          	bltu	a2,a5,3030 <fatfs_sector_reader+0x68>
    3008:	00000513          	li	a0,0
    300c:	02c12083          	lw	ra,44(sp)
    3010:	02812403          	lw	s0,40(sp)
    3014:	02412483          	lw	s1,36(sp)
    3018:	02012903          	lw	s2,32(sp)
    301c:	01c12983          	lw	s3,28(sp)
    3020:	01812a03          	lw	s4,24(sp)
    3024:	01412a83          	lw	s5,20(sp)
    3028:	03010113          	addi	sp,sp,48
    302c:	00008067          	ret
    3030:	01c52503          	lw	a0,28(a0)
    3034:	00c42783          	lw	a5,12(s0)
    3038:	00f50533          	add	a0,a0,a5
    303c:	01250533          	add	a0,a0,s2
    3040:	0a098263          	beqz	s3,30e4 <fatfs_sector_reader+0x11c>
    3044:	03442783          	lw	a5,52(s0)
    3048:	00100613          	li	a2,1
    304c:	00098593          	mv	a1,s3
    3050:	02812403          	lw	s0,40(sp)
    3054:	02c12083          	lw	ra,44(sp)
    3058:	02412483          	lw	s1,36(sp)
    305c:	02012903          	lw	s2,32(sp)
    3060:	01c12983          	lw	s3,28(sp)
    3064:	01812a03          	lw	s4,24(sp)
    3068:	01412a83          	lw	s5,20(sp)
    306c:	03010113          	addi	sp,sp,48
    3070:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    3074:	00058493          	mv	s1,a1
    3078:	00054583          	lbu	a1,0(a0)
    307c:	00060513          	mv	a0,a2
    3080:	00000a93          	li	s5,0
    3084:	00b12623          	sw	a1,12(sp)
    3088:	ffffe097          	auipc	ra,0xffffe
    308c:	030080e7          	jalr	48(ra) # 10b8 <__udivsi3>
    3090:	00c12583          	lw	a1,12(sp)
    3094:	00050a13          	mv	s4,a0
    3098:	00090513          	mv	a0,s2
    309c:	ffffe097          	auipc	ra,0xffffe
    30a0:	064080e7          	jalr	100(ra) # 1100 <__umodsi3>
    30a4:	00050913          	mv	s2,a0
    30a8:	034a9063          	bne	s5,s4,30c8 <fatfs_sector_reader+0x100>
    30ac:	fff00793          	li	a5,-1
    30b0:	f4f48ce3          	beq	s1,a5,3008 <fatfs_sector_reader+0x40>
    30b4:	00048593          	mv	a1,s1
    30b8:	00040513          	mv	a0,s0
    30bc:	fffff097          	auipc	ra,0xfffff
    30c0:	c50080e7          	jalr	-944(ra) # 1d0c <fatfs_lba_of_cluster>
    30c4:	f79ff06f          	j	303c <fatfs_sector_reader+0x74>
    30c8:	00048593          	mv	a1,s1
    30cc:	00040513          	mv	a0,s0
    30d0:	00000097          	auipc	ra,0x0
    30d4:	de8080e7          	jalr	-536(ra) # 2eb8 <fatfs_find_next_cluster>
    30d8:	00050493          	mv	s1,a0
    30dc:	001a8a93          	addi	s5,s5,1
    30e0:	fc9ff06f          	j	30a8 <fatfs_sector_reader+0xe0>
    30e4:	24442783          	lw	a5,580(s0)
    30e8:	00a78c63          	beq	a5,a0,3100 <fatfs_sector_reader+0x138>
    30ec:	03442783          	lw	a5,52(s0)
    30f0:	24a42223          	sw	a0,580(s0)
    30f4:	00100613          	li	a2,1
    30f8:	04440593          	addi	a1,s0,68
    30fc:	f55ff06f          	j	3050 <fatfs_sector_reader+0x88>
    3100:	00100513          	li	a0,1
    3104:	f09ff06f          	j	300c <fatfs_sector_reader+0x44>

00003108 <fatfs_get_file_entry>:
    3108:	eb010113          	addi	sp,sp,-336
    310c:	14812423          	sw	s0,328(sp)
    3110:	01810413          	addi	s0,sp,24
    3114:	14912223          	sw	s1,324(sp)
    3118:	15212023          	sw	s2,320(sp)
    311c:	13312e23          	sw	s3,316(sp)
    3120:	13412c23          	sw	s4,312(sp)
    3124:	13512a23          	sw	s5,308(sp)
    3128:	13612823          	sw	s6,304(sp)
    312c:	14112623          	sw	ra,332(sp)
    3130:	13712623          	sw	s7,300(sp)
    3134:	13812423          	sw	s8,296(sp)
    3138:	13912223          	sw	s9,292(sp)
    313c:	13a12023          	sw	s10,288(sp)
    3140:	00050493          	mv	s1,a0
    3144:	00058a93          	mv	s5,a1
    3148:	00060913          	mv	s2,a2
    314c:	00068993          	mv	s3,a3
    3150:	10010ea3          	sb	zero,285(sp)
    3154:	11c10a13          	addi	s4,sp,284
    3158:	00040b13          	mv	s6,s0
    315c:	00040513          	mv	a0,s0
    3160:	00d00613          	li	a2,13
    3164:	00000593          	li	a1,0
    3168:	00d40413          	addi	s0,s0,13
    316c:	ffffe097          	auipc	ra,0xffffe
    3170:	ff8080e7          	jalr	-8(ra) # 1164 <memset>
    3174:	ff4414e3          	bne	s0,s4,315c <fatfs_get_file_entry+0x54>
    3178:	00000a13          	li	s4,0
    317c:	24448c13          	addi	s8,s1,580
    3180:	00800c93          	li	s9,8
    3184:	02000b93          	li	s7,32
    3188:	00000693          	li	a3,0
    318c:	000a0613          	mv	a2,s4
    3190:	000a8593          	mv	a1,s5
    3194:	00048513          	mv	a0,s1
    3198:	00000097          	auipc	ra,0x0
    319c:	e30080e7          	jalr	-464(ra) # 2fc8 <fatfs_sector_reader>
    31a0:	16050463          	beqz	a0,3308 <fatfs_get_file_entry+0x200>
    31a4:	04448413          	addi	s0,s1,68
    31a8:	02e00d13          	li	s10,46
    31ac:	00040513          	mv	a0,s0
    31b0:	fffff097          	auipc	ra,0xfffff
    31b4:	e18080e7          	jalr	-488(ra) # 1fc8 <fatfs_entry_lfn_text>
    31b8:	02050263          	beqz	a0,31dc <fatfs_get_file_entry+0xd4>
    31bc:	00040593          	mv	a1,s0
    31c0:	000b0513          	mv	a0,s6
    31c4:	fffff097          	auipc	ra,0xfffff
    31c8:	cfc080e7          	jalr	-772(ra) # 1ec0 <fatfs_lfn_cache_entry>
    31cc:	02040413          	addi	s0,s0,32
    31d0:	fd841ee3          	bne	s0,s8,31ac <fatfs_get_file_entry+0xa4>
    31d4:	001a0a13          	addi	s4,s4,1
    31d8:	fb1ff06f          	j	3188 <fatfs_get_file_entry+0x80>
    31dc:	00040513          	mv	a0,s0
    31e0:	fffff097          	auipc	ra,0xfffff
    31e4:	dfc080e7          	jalr	-516(ra) # 1fdc <fatfs_entry_lfn_invalid>
    31e8:	00050663          	beqz	a0,31f4 <fatfs_get_file_entry+0xec>
    31ec:	10010ea3          	sb	zero,285(sp)
    31f0:	fddff06f          	j	31cc <fatfs_get_file_entry+0xc4>
    31f4:	00040593          	mv	a1,s0
    31f8:	000b0513          	mv	a0,s6
    31fc:	fffff097          	auipc	ra,0xfffff
    3200:	e18080e7          	jalr	-488(ra) # 2014 <fatfs_entry_lfn_exists>
    3204:	06050863          	beqz	a0,3274 <fatfs_get_file_entry+0x16c>
    3208:	000b0513          	mv	a0,s6
    320c:	fffff097          	auipc	ra,0xfffff
    3210:	d80080e7          	jalr	-640(ra) # 1f8c <fatfs_lfn_cache_get>
    3214:	00090593          	mv	a1,s2
    3218:	fffff097          	auipc	ra,0xfffff
    321c:	5cc080e7          	jalr	1484(ra) # 27e4 <fatfs_compare_names>
    3220:	fc0506e3          	beqz	a0,31ec <fatfs_get_file_entry+0xe4>
    3224:	02000613          	li	a2,32
    3228:	00040593          	mv	a1,s0
    322c:	00098513          	mv	a0,s3
    3230:	ffffe097          	auipc	ra,0xffffe
    3234:	f50080e7          	jalr	-176(ra) # 1180 <memcpy>
    3238:	00100513          	li	a0,1
    323c:	14c12083          	lw	ra,332(sp)
    3240:	14812403          	lw	s0,328(sp)
    3244:	14412483          	lw	s1,324(sp)
    3248:	14012903          	lw	s2,320(sp)
    324c:	13c12983          	lw	s3,316(sp)
    3250:	13812a03          	lw	s4,312(sp)
    3254:	13412a83          	lw	s5,308(sp)
    3258:	13012b03          	lw	s6,304(sp)
    325c:	12c12b83          	lw	s7,300(sp)
    3260:	12812c03          	lw	s8,296(sp)
    3264:	12412c83          	lw	s9,292(sp)
    3268:	12012d03          	lw	s10,288(sp)
    326c:	15010113          	addi	sp,sp,336
    3270:	00008067          	ret
    3274:	00040513          	mv	a0,s0
    3278:	fffff097          	auipc	ra,0xfffff
    327c:	de4080e7          	jalr	-540(ra) # 205c <fatfs_entry_sfn_only>
    3280:	f40506e3          	beqz	a0,31cc <fatfs_get_file_entry+0xc4>
    3284:	00d00613          	li	a2,13
    3288:	00000593          	li	a1,0
    328c:	00810513          	addi	a0,sp,8
    3290:	ffffe097          	auipc	ra,0xffffe
    3294:	ed4080e7          	jalr	-300(ra) # 1164 <memset>
    3298:	00000793          	li	a5,0
    329c:	00f406b3          	add	a3,s0,a5
    32a0:	0006c683          	lbu	a3,0(a3)
    32a4:	00810713          	addi	a4,sp,8
    32a8:	00f70733          	add	a4,a4,a5
    32ac:	00d70023          	sb	a3,0(a4)
    32b0:	00178793          	addi	a5,a5,1
    32b4:	ff9794e3          	bne	a5,s9,329c <fatfs_get_file_entry+0x194>
    32b8:	00844783          	lbu	a5,8(s0)
    32bc:	00944683          	lbu	a3,9(s0)
    32c0:	00100713          	li	a4,1
    32c4:	00f108a3          	sb	a5,17(sp)
    32c8:	00d10923          	sb	a3,18(sp)
    32cc:	01769663          	bne	a3,s7,32d8 <fatfs_get_file_entry+0x1d0>
    32d0:	fe078793          	addi	a5,a5,-32
    32d4:	00f03733          	snez	a4,a5
    32d8:	00a44783          	lbu	a5,10(s0)
    32dc:	00f109a3          	sb	a5,19(sp)
    32e0:	01779463          	bne	a5,s7,32e8 <fatfs_get_file_entry+0x1e0>
    32e4:	00070a63          	beqz	a4,32f8 <fatfs_get_file_entry+0x1f0>
    32e8:	00814703          	lbu	a4,8(sp)
    32ec:	02000793          	li	a5,32
    32f0:	01a70463          	beq	a4,s10,32f8 <fatfs_get_file_entry+0x1f0>
    32f4:	02e00793          	li	a5,46
    32f8:	00f10823          	sb	a5,16(sp)
    32fc:	00090593          	mv	a1,s2
    3300:	00810513          	addi	a0,sp,8
    3304:	f15ff06f          	j	3218 <fatfs_get_file_entry+0x110>
    3308:	00000513          	li	a0,0
    330c:	f31ff06f          	j	323c <fatfs_get_file_entry+0x134>

00003310 <_open_directory>:
    3310:	eb010113          	addi	sp,sp,-336
    3314:	13512a23          	sw	s5,308(sp)
    3318:	0000aab7          	lui	s5,0xa
    331c:	c40a8793          	addi	a5,s5,-960 # 9c40 <_fs>
    3320:	14812423          	sw	s0,328(sp)
    3324:	14912223          	sw	s1,324(sp)
    3328:	15212023          	sw	s2,320(sp)
    332c:	13312e23          	sw	s3,316(sp)
    3330:	13412c23          	sw	s4,312(sp)
    3334:	13612823          	sw	s6,304(sp)
    3338:	0087a403          	lw	s0,8(a5)
    333c:	14112623          	sw	ra,332(sp)
    3340:	00050a13          	mv	s4,a0
    3344:	00058913          	mv	s2,a1
    3348:	fffff097          	auipc	ra,0xfffff
    334c:	254080e7          	jalr	596(ra) # 259c <fatfs_total_path_levels>
    3350:	00050993          	mv	s3,a0
    3354:	00000493          	li	s1,0
    3358:	fff00b13          	li	s6,-1
    335c:	0099d863          	bge	s3,s1,336c <_open_directory+0x5c>
    3360:	00892023          	sw	s0,0(s2)
    3364:	00100513          	li	a0,1
    3368:	0240006f          	j	338c <_open_directory+0x7c>
    336c:	10400693          	li	a3,260
    3370:	02c10613          	addi	a2,sp,44
    3374:	00048593          	mv	a1,s1
    3378:	000a0513          	mv	a0,s4
    337c:	fffff097          	auipc	ra,0xfffff
    3380:	294080e7          	jalr	660(ra) # 2610 <fatfs_get_substring>
    3384:	03651863          	bne	a0,s6,33b4 <_open_directory+0xa4>
    3388:	00000513          	li	a0,0
    338c:	14c12083          	lw	ra,332(sp)
    3390:	14812403          	lw	s0,328(sp)
    3394:	14412483          	lw	s1,324(sp)
    3398:	14012903          	lw	s2,320(sp)
    339c:	13c12983          	lw	s3,316(sp)
    33a0:	13812a03          	lw	s4,312(sp)
    33a4:	13412a83          	lw	s5,308(sp)
    33a8:	13012b03          	lw	s6,304(sp)
    33ac:	15010113          	addi	sp,sp,336
    33b0:	00008067          	ret
    33b4:	00c10693          	addi	a3,sp,12
    33b8:	02c10613          	addi	a2,sp,44
    33bc:	00040593          	mv	a1,s0
    33c0:	c40a8513          	addi	a0,s5,-960
    33c4:	00000097          	auipc	ra,0x0
    33c8:	d44080e7          	jalr	-700(ra) # 3108 <fatfs_get_file_entry>
    33cc:	fa050ee3          	beqz	a0,3388 <_open_directory+0x78>
    33d0:	00c10513          	addi	a0,sp,12
    33d4:	fffff097          	auipc	ra,0xfffff
    33d8:	cc4080e7          	jalr	-828(ra) # 2098 <fatfs_entry_is_dir>
    33dc:	fa0506e3          	beqz	a0,3388 <_open_directory+0x78>
    33e0:	02015403          	lhu	s0,32(sp)
    33e4:	02615783          	lhu	a5,38(sp)
    33e8:	00148493          	addi	s1,s1,1
    33ec:	01041413          	slli	s0,s0,0x10
    33f0:	00f40433          	add	s0,s0,a5
    33f4:	f69ff06f          	j	335c <_open_directory+0x4c>

000033f8 <fl_opendir>:
    33f8:	fe010113          	addi	sp,sp,-32
    33fc:	fff00793          	li	a5,-1
    3400:	00f12623          	sw	a5,12(sp)
    3404:	000057b7          	lui	a5,0x5
    3408:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    340c:	00812c23          	sw	s0,24(sp)
    3410:	01212823          	sw	s2,16(sp)
    3414:	00112e23          	sw	ra,28(sp)
    3418:	00912a23          	sw	s1,20(sp)
    341c:	00050913          	mv	s2,a0
    3420:	00058413          	mv	s0,a1
    3424:	00079663          	bnez	a5,3430 <fl_opendir+0x38>
    3428:	fffff097          	auipc	ra,0xfffff
    342c:	a20080e7          	jalr	-1504(ra) # 1e48 <fl_init>
    3430:	0000a4b7          	lui	s1,0xa
    3434:	c4048793          	addi	a5,s1,-960 # 9c40 <_fs>
    3438:	03c7a783          	lw	a5,60(a5)
    343c:	c4048493          	addi	s1,s1,-960
    3440:	00078463          	beqz	a5,3448 <fl_opendir+0x50>
    3444:	000780e7          	jalr	a5
    3448:	00090513          	mv	a0,s2
    344c:	fffff097          	auipc	ra,0xfffff
    3450:	150080e7          	jalr	336(ra) # 259c <fatfs_total_path_levels>
    3454:	fff00793          	li	a5,-1
    3458:	02f51063          	bne	a0,a5,3478 <fl_opendir+0x80>
    345c:	0084a783          	lw	a5,8(s1)
    3460:	00f12623          	sw	a5,12(sp)
    3464:	00c12783          	lw	a5,12(sp)
    3468:	00042023          	sw	zero,0(s0)
    346c:	00040423          	sb	zero,8(s0)
    3470:	00f42223          	sw	a5,4(s0)
    3474:	0180006f          	j	348c <fl_opendir+0x94>
    3478:	00c10593          	addi	a1,sp,12
    347c:	00090513          	mv	a0,s2
    3480:	00000097          	auipc	ra,0x0
    3484:	e90080e7          	jalr	-368(ra) # 3310 <_open_directory>
    3488:	fc051ee3          	bnez	a0,3464 <fl_opendir+0x6c>
    348c:	0404a783          	lw	a5,64(s1)
    3490:	00078463          	beqz	a5,3498 <fl_opendir+0xa0>
    3494:	000780e7          	jalr	a5
    3498:	00c12703          	lw	a4,12(sp)
    349c:	fff00793          	li	a5,-1
    34a0:	00f71463          	bne	a4,a5,34a8 <fl_opendir+0xb0>
    34a4:	00000413          	li	s0,0
    34a8:	01c12083          	lw	ra,28(sp)
    34ac:	00040513          	mv	a0,s0
    34b0:	01812403          	lw	s0,24(sp)
    34b4:	01412483          	lw	s1,20(sp)
    34b8:	01012903          	lw	s2,16(sp)
    34bc:	02010113          	addi	sp,sp,32
    34c0:	00008067          	ret

000034c4 <_open_file>:
    34c4:	fc010113          	addi	sp,sp,-64
    34c8:	02812c23          	sw	s0,56(sp)
    34cc:	03312623          	sw	s3,44(sp)
    34d0:	02112e23          	sw	ra,60(sp)
    34d4:	02912a23          	sw	s1,52(sp)
    34d8:	03212823          	sw	s2,48(sp)
    34dc:	00050993          	mv	s3,a0
    34e0:	ffffe097          	auipc	ra,0xffffe
    34e4:	770080e7          	jalr	1904(ra) # 1c50 <_allocate_file>
    34e8:	00050413          	mv	s0,a0
    34ec:	10050c63          	beqz	a0,3604 <_open_file+0x140>
    34f0:	01450913          	addi	s2,a0,20
    34f4:	10400613          	li	a2,260
    34f8:	00000593          	li	a1,0
    34fc:	00090513          	mv	a0,s2
    3500:	ffffe097          	auipc	ra,0xffffe
    3504:	c64080e7          	jalr	-924(ra) # 1164 <memset>
    3508:	11840493          	addi	s1,s0,280
    350c:	10400613          	li	a2,260
    3510:	00000593          	li	a1,0
    3514:	00048513          	mv	a0,s1
    3518:	ffffe097          	auipc	ra,0xffffe
    351c:	c4c080e7          	jalr	-948(ra) # 1164 <memset>
    3520:	10400713          	li	a4,260
    3524:	00048693          	mv	a3,s1
    3528:	10400613          	li	a2,260
    352c:	00090593          	mv	a1,s2
    3530:	00098513          	mv	a0,s3
    3534:	fffff097          	auipc	ra,0xfffff
    3538:	1d0080e7          	jalr	464(ra) # 2704 <fatfs_split_path>
    353c:	fff00793          	li	a5,-1
    3540:	00f51c63          	bne	a0,a5,3558 <_open_file+0x94>
    3544:	00040513          	mv	a0,s0
    3548:	ffffe097          	auipc	ra,0xffffe
    354c:	77c080e7          	jalr	1916(ra) # 1cc4 <_free_file>
    3550:	00000413          	li	s0,0
    3554:	0b00006f          	j	3604 <_open_file+0x140>
    3558:	00040513          	mv	a0,s0
    355c:	fffff097          	auipc	ra,0xfffff
    3560:	3f8080e7          	jalr	1016(ra) # 2954 <_check_file_open>
    3564:	fe0510e3          	bnez	a0,3544 <_open_file+0x80>
    3568:	01444783          	lbu	a5,20(s0)
    356c:	0a079c63          	bnez	a5,3624 <_open_file+0x160>
    3570:	0000a7b7          	lui	a5,0xa
    3574:	c487a783          	lw	a5,-952(a5) # 9c48 <_fs+0x8>
    3578:	00f42023          	sw	a5,0(s0)
    357c:	00042583          	lw	a1,0(s0)
    3580:	0000a937          	lui	s2,0xa
    3584:	00010693          	mv	a3,sp
    3588:	00048613          	mv	a2,s1
    358c:	c4090513          	addi	a0,s2,-960 # 9c40 <_fs>
    3590:	00000097          	auipc	ra,0x0
    3594:	b78080e7          	jalr	-1160(ra) # 3108 <fatfs_get_file_entry>
    3598:	fa0506e3          	beqz	a0,3544 <_open_file+0x80>
    359c:	00010513          	mv	a0,sp
    35a0:	fffff097          	auipc	ra,0xfffff
    35a4:	b08080e7          	jalr	-1272(ra) # 20a8 <fatfs_entry_is_file>
    35a8:	f8050ee3          	beqz	a0,3544 <_open_file+0x80>
    35ac:	00b00613          	li	a2,11
    35b0:	00010593          	mv	a1,sp
    35b4:	21c40513          	addi	a0,s0,540
    35b8:	ffffe097          	auipc	ra,0xffffe
    35bc:	bc8080e7          	jalr	-1080(ra) # 1180 <memcpy>
    35c0:	01c12783          	lw	a5,28(sp)
    35c4:	01a15703          	lhu	a4,26(sp)
    35c8:	00042423          	sw	zero,8(s0)
    35cc:	00f42623          	sw	a5,12(s0)
    35d0:	01415783          	lhu	a5,20(sp)
    35d4:	42042a23          	sw	zero,1076(s0)
    35d8:	00042823          	sw	zero,16(s0)
    35dc:	01079793          	slli	a5,a5,0x10
    35e0:	00e787b3          	add	a5,a5,a4
    35e4:	00f42223          	sw	a5,4(s0)
    35e8:	fff00793          	li	a5,-1
    35ec:	42f42823          	sw	a5,1072(s0)
    35f0:	22f42423          	sw	a5,552(s0)
    35f4:	22f42623          	sw	a5,556(s0)
    35f8:	c4090513          	addi	a0,s2,-960
    35fc:	00000097          	auipc	ra,0x0
    3600:	860080e7          	jalr	-1952(ra) # 2e5c <fatfs_fat_purge>
    3604:	03c12083          	lw	ra,60(sp)
    3608:	00040513          	mv	a0,s0
    360c:	03812403          	lw	s0,56(sp)
    3610:	03412483          	lw	s1,52(sp)
    3614:	03012903          	lw	s2,48(sp)
    3618:	02c12983          	lw	s3,44(sp)
    361c:	04010113          	addi	sp,sp,64
    3620:	00008067          	ret
    3624:	00040593          	mv	a1,s0
    3628:	00090513          	mv	a0,s2
    362c:	00000097          	auipc	ra,0x0
    3630:	ce4080e7          	jalr	-796(ra) # 3310 <_open_directory>
    3634:	f40514e3          	bnez	a0,357c <_open_file+0xb8>
    3638:	f0dff06f          	j	3544 <_open_file+0x80>

0000363c <fatfs_sfn_exists>:
    363c:	fe010113          	addi	sp,sp,-32
    3640:	00912a23          	sw	s1,20(sp)
    3644:	01212823          	sw	s2,16(sp)
    3648:	01312623          	sw	s3,12(sp)
    364c:	01412423          	sw	s4,8(sp)
    3650:	01512223          	sw	s5,4(sp)
    3654:	00112e23          	sw	ra,28(sp)
    3658:	00812c23          	sw	s0,24(sp)
    365c:	00050493          	mv	s1,a0
    3660:	00058993          	mv	s3,a1
    3664:	00060a13          	mv	s4,a2
    3668:	00000913          	li	s2,0
    366c:	24450a93          	addi	s5,a0,580
    3670:	00000693          	li	a3,0
    3674:	00090613          	mv	a2,s2
    3678:	00098593          	mv	a1,s3
    367c:	00048513          	mv	a0,s1
    3680:	00000097          	auipc	ra,0x0
    3684:	948080e7          	jalr	-1720(ra) # 2fc8 <fatfs_sector_reader>
    3688:	06050263          	beqz	a0,36ec <fatfs_sfn_exists+0xb0>
    368c:	04448413          	addi	s0,s1,68
    3690:	00040513          	mv	a0,s0
    3694:	fffff097          	auipc	ra,0xfffff
    3698:	934080e7          	jalr	-1740(ra) # 1fc8 <fatfs_entry_lfn_text>
    369c:	02051e63          	bnez	a0,36d8 <fatfs_sfn_exists+0x9c>
    36a0:	00040513          	mv	a0,s0
    36a4:	fffff097          	auipc	ra,0xfffff
    36a8:	938080e7          	jalr	-1736(ra) # 1fdc <fatfs_entry_lfn_invalid>
    36ac:	02051663          	bnez	a0,36d8 <fatfs_sfn_exists+0x9c>
    36b0:	00040513          	mv	a0,s0
    36b4:	fffff097          	auipc	ra,0xfffff
    36b8:	9a8080e7          	jalr	-1624(ra) # 205c <fatfs_entry_sfn_only>
    36bc:	00050e63          	beqz	a0,36d8 <fatfs_sfn_exists+0x9c>
    36c0:	00b00613          	li	a2,11
    36c4:	000a0593          	mv	a1,s4
    36c8:	00040513          	mv	a0,s0
    36cc:	ffffe097          	auipc	ra,0xffffe
    36d0:	af8080e7          	jalr	-1288(ra) # 11c4 <strncmp>
    36d4:	00050a63          	beqz	a0,36e8 <fatfs_sfn_exists+0xac>
    36d8:	02040413          	addi	s0,s0,32
    36dc:	fb541ae3          	bne	s0,s5,3690 <fatfs_sfn_exists+0x54>
    36e0:	00190913          	addi	s2,s2,1
    36e4:	f8dff06f          	j	3670 <fatfs_sfn_exists+0x34>
    36e8:	00100513          	li	a0,1
    36ec:	01c12083          	lw	ra,28(sp)
    36f0:	01812403          	lw	s0,24(sp)
    36f4:	01412483          	lw	s1,20(sp)
    36f8:	01012903          	lw	s2,16(sp)
    36fc:	00c12983          	lw	s3,12(sp)
    3700:	00812a03          	lw	s4,8(sp)
    3704:	00412a83          	lw	s5,4(sp)
    3708:	02010113          	addi	sp,sp,32
    370c:	00008067          	ret

00003710 <fatfs_update_file_length>:
    3710:	03852783          	lw	a5,56(a0)
    3714:	14078e63          	beqz	a5,3870 <fatfs_update_file_length+0x160>
    3718:	fd010113          	addi	sp,sp,-48
    371c:	02912223          	sw	s1,36(sp)
    3720:	03212023          	sw	s2,32(sp)
    3724:	01312e23          	sw	s3,28(sp)
    3728:	01412c23          	sw	s4,24(sp)
    372c:	01512a23          	sw	s5,20(sp)
    3730:	01612823          	sw	s6,16(sp)
    3734:	02112623          	sw	ra,44(sp)
    3738:	02812423          	sw	s0,40(sp)
    373c:	01712623          	sw	s7,12(sp)
    3740:	00050493          	mv	s1,a0
    3744:	00058a13          	mv	s4,a1
    3748:	00060a93          	mv	s5,a2
    374c:	00068913          	mv	s2,a3
    3750:	00000993          	li	s3,0
    3754:	24450b13          	addi	s6,a0,580
    3758:	00000693          	li	a3,0
    375c:	00098613          	mv	a2,s3
    3760:	000a0593          	mv	a1,s4
    3764:	00048513          	mv	a0,s1
    3768:	00000097          	auipc	ra,0x0
    376c:	860080e7          	jalr	-1952(ra) # 2fc8 <fatfs_sector_reader>
    3770:	0c050863          	beqz	a0,3840 <fatfs_update_file_length+0x130>
    3774:	04448413          	addi	s0,s1,68
    3778:	00040b93          	mv	s7,s0
    377c:	00040513          	mv	a0,s0
    3780:	fffff097          	auipc	ra,0xfffff
    3784:	848080e7          	jalr	-1976(ra) # 1fc8 <fatfs_entry_lfn_text>
    3788:	0a051463          	bnez	a0,3830 <fatfs_update_file_length+0x120>
    378c:	00040513          	mv	a0,s0
    3790:	fffff097          	auipc	ra,0xfffff
    3794:	84c080e7          	jalr	-1972(ra) # 1fdc <fatfs_entry_lfn_invalid>
    3798:	08051c63          	bnez	a0,3830 <fatfs_update_file_length+0x120>
    379c:	00040513          	mv	a0,s0
    37a0:	fffff097          	auipc	ra,0xfffff
    37a4:	8bc080e7          	jalr	-1860(ra) # 205c <fatfs_entry_sfn_only>
    37a8:	08050463          	beqz	a0,3830 <fatfs_update_file_length+0x120>
    37ac:	00b00613          	li	a2,11
    37b0:	000a8593          	mv	a1,s5
    37b4:	00040513          	mv	a0,s0
    37b8:	ffffe097          	auipc	ra,0xffffe
    37bc:	a0c080e7          	jalr	-1524(ra) # 11c4 <strncmp>
    37c0:	06051863          	bnez	a0,3830 <fatfs_update_file_length+0x120>
    37c4:	00895793          	srli	a5,s2,0x8
    37c8:	01240e23          	sb	s2,28(s0)
    37cc:	00f40ea3          	sb	a5,29(s0)
    37d0:	01095793          	srli	a5,s2,0x10
    37d4:	01895913          	srli	s2,s2,0x18
    37d8:	00f40f23          	sb	a5,30(s0)
    37dc:	01240fa3          	sb	s2,31(s0)
    37e0:	00040593          	mv	a1,s0
    37e4:	02000613          	li	a2,32
    37e8:	00040513          	mv	a0,s0
    37ec:	ffffe097          	auipc	ra,0xffffe
    37f0:	994080e7          	jalr	-1644(ra) # 1180 <memcpy>
    37f4:	02812403          	lw	s0,40(sp)
    37f8:	0384a783          	lw	a5,56(s1)
    37fc:	2444a503          	lw	a0,580(s1)
    3800:	02c12083          	lw	ra,44(sp)
    3804:	02412483          	lw	s1,36(sp)
    3808:	02012903          	lw	s2,32(sp)
    380c:	01c12983          	lw	s3,28(sp)
    3810:	01812a03          	lw	s4,24(sp)
    3814:	01412a83          	lw	s5,20(sp)
    3818:	01012b03          	lw	s6,16(sp)
    381c:	000b8593          	mv	a1,s7
    3820:	00c12b83          	lw	s7,12(sp)
    3824:	00100613          	li	a2,1
    3828:	03010113          	addi	sp,sp,48
    382c:	00078067          	jr	a5
    3830:	02040413          	addi	s0,s0,32
    3834:	f56414e3          	bne	s0,s6,377c <fatfs_update_file_length+0x6c>
    3838:	00198993          	addi	s3,s3,1
    383c:	f1dff06f          	j	3758 <fatfs_update_file_length+0x48>
    3840:	02c12083          	lw	ra,44(sp)
    3844:	02812403          	lw	s0,40(sp)
    3848:	02412483          	lw	s1,36(sp)
    384c:	02012903          	lw	s2,32(sp)
    3850:	01c12983          	lw	s3,28(sp)
    3854:	01812a03          	lw	s4,24(sp)
    3858:	01412a83          	lw	s5,20(sp)
    385c:	01012b03          	lw	s6,16(sp)
    3860:	00c12b83          	lw	s7,12(sp)
    3864:	00000513          	li	a0,0
    3868:	03010113          	addi	sp,sp,48
    386c:	00008067          	ret
    3870:	00000513          	li	a0,0
    3874:	00008067          	ret

00003878 <fatfs_list_directory_next>:
    3878:	ec010113          	addi	sp,sp,-320
    387c:	13212823          	sw	s2,304(sp)
    3880:	13312623          	sw	s3,300(sp)
    3884:	13412423          	sw	s4,296(sp)
    3888:	13512223          	sw	s5,292(sp)
    388c:	12112e23          	sw	ra,316(sp)
    3890:	12812c23          	sw	s0,312(sp)
    3894:	12912a23          	sw	s1,308(sp)
    3898:	00050a13          	mv	s4,a0
    389c:	00058913          	mv	s2,a1
    38a0:	00060993          	mv	s3,a2
    38a4:	10010ea3          	sb	zero,285(sp)
    38a8:	00f00a93          	li	s5,15
    38ac:	00092603          	lw	a2,0(s2)
    38b0:	00492583          	lw	a1,4(s2)
    38b4:	00000693          	li	a3,0
    38b8:	000a0513          	mv	a0,s4
    38bc:	fffff097          	auipc	ra,0xfffff
    38c0:	70c080e7          	jalr	1804(ra) # 2fc8 <fatfs_sector_reader>
    38c4:	12050063          	beqz	a0,39e4 <fatfs_list_directory_next+0x16c>
    38c8:	00894483          	lbu	s1,8(s2)
    38cc:	00549413          	slli	s0,s1,0x5
    38d0:	04440413          	addi	s0,s0,68
    38d4:	008a0433          	add	s0,s4,s0
    38d8:	009afc63          	bgeu	s5,s1,38f0 <fatfs_list_directory_next+0x78>
    38dc:	00092783          	lw	a5,0(s2)
    38e0:	00090423          	sb	zero,8(s2)
    38e4:	00178793          	addi	a5,a5,1
    38e8:	00f92023          	sw	a5,0(s2)
    38ec:	fc1ff06f          	j	38ac <fatfs_list_directory_next+0x34>
    38f0:	00040513          	mv	a0,s0
    38f4:	ffffe097          	auipc	ra,0xffffe
    38f8:	6d4080e7          	jalr	1748(ra) # 1fc8 <fatfs_entry_lfn_text>
    38fc:	02050263          	beqz	a0,3920 <fatfs_list_directory_next+0xa8>
    3900:	00040593          	mv	a1,s0
    3904:	01810513          	addi	a0,sp,24
    3908:	ffffe097          	auipc	ra,0xffffe
    390c:	5b8080e7          	jalr	1464(ra) # 1ec0 <fatfs_lfn_cache_entry>
    3910:	00148493          	addi	s1,s1,1
    3914:	0ff4f493          	zext.b	s1,s1
    3918:	02040413          	addi	s0,s0,32
    391c:	fbdff06f          	j	38d8 <fatfs_list_directory_next+0x60>
    3920:	00040513          	mv	a0,s0
    3924:	ffffe097          	auipc	ra,0xffffe
    3928:	6b8080e7          	jalr	1720(ra) # 1fdc <fatfs_entry_lfn_invalid>
    392c:	00050663          	beqz	a0,3938 <fatfs_list_directory_next+0xc0>
    3930:	10010ea3          	sb	zero,285(sp)
    3934:	fddff06f          	j	3910 <fatfs_list_directory_next+0x98>
    3938:	00040593          	mv	a1,s0
    393c:	01810513          	addi	a0,sp,24
    3940:	ffffe097          	auipc	ra,0xffffe
    3944:	6d4080e7          	jalr	1748(ra) # 2014 <fatfs_entry_lfn_exists>
    3948:	0c050063          	beqz	a0,3a08 <fatfs_list_directory_next+0x190>
    394c:	01810513          	addi	a0,sp,24
    3950:	ffffe097          	auipc	ra,0xffffe
    3954:	63c080e7          	jalr	1596(ra) # 1f8c <fatfs_lfn_cache_get>
    3958:	00050593          	mv	a1,a0
    395c:	10300613          	li	a2,259
    3960:	00098513          	mv	a0,s3
    3964:	ffffe097          	auipc	ra,0xffffe
    3968:	8a0080e7          	jalr	-1888(ra) # 1204 <strncpy>
    396c:	00040513          	mv	a0,s0
    3970:	ffffe097          	auipc	ra,0xffffe
    3974:	728080e7          	jalr	1832(ra) # 2098 <fatfs_entry_is_dir>
    3978:	00a03533          	snez	a0,a0
    397c:	10a98223          	sb	a0,260(s3)
    3980:	01d44783          	lbu	a5,29(s0)
    3984:	01c44703          	lbu	a4,28(s0)
    3988:	00148493          	addi	s1,s1,1
    398c:	00879793          	slli	a5,a5,0x8
    3990:	00e7e7b3          	or	a5,a5,a4
    3994:	01e44703          	lbu	a4,30(s0)
    3998:	00100513          	li	a0,1
    399c:	01071713          	slli	a4,a4,0x10
    39a0:	00f76733          	or	a4,a4,a5
    39a4:	01f44783          	lbu	a5,31(s0)
    39a8:	01879793          	slli	a5,a5,0x18
    39ac:	00e7e7b3          	or	a5,a5,a4
    39b0:	10f9a623          	sw	a5,268(s3)
    39b4:	01544783          	lbu	a5,21(s0)
    39b8:	01444703          	lbu	a4,20(s0)
    39bc:	01a44683          	lbu	a3,26(s0)
    39c0:	00879793          	slli	a5,a5,0x8
    39c4:	00e7e7b3          	or	a5,a5,a4
    39c8:	01b44703          	lbu	a4,27(s0)
    39cc:	01079793          	slli	a5,a5,0x10
    39d0:	00871713          	slli	a4,a4,0x8
    39d4:	00d76733          	or	a4,a4,a3
    39d8:	00e7e7b3          	or	a5,a5,a4
    39dc:	10f9a423          	sw	a5,264(s3)
    39e0:	00990423          	sb	s1,8(s2)
    39e4:	13c12083          	lw	ra,316(sp)
    39e8:	13812403          	lw	s0,312(sp)
    39ec:	13412483          	lw	s1,308(sp)
    39f0:	13012903          	lw	s2,304(sp)
    39f4:	12c12983          	lw	s3,300(sp)
    39f8:	12812a03          	lw	s4,296(sp)
    39fc:	12412a83          	lw	s5,292(sp)
    3a00:	14010113          	addi	sp,sp,320
    3a04:	00008067          	ret
    3a08:	00040513          	mv	a0,s0
    3a0c:	ffffe097          	auipc	ra,0xffffe
    3a10:	650080e7          	jalr	1616(ra) # 205c <fatfs_entry_sfn_only>
    3a14:	ee050ee3          	beqz	a0,3910 <fatfs_list_directory_next+0x98>
    3a18:	00d00613          	li	a2,13
    3a1c:	00000593          	li	a1,0
    3a20:	00810513          	addi	a0,sp,8
    3a24:	10010ea3          	sb	zero,285(sp)
    3a28:	ffffd097          	auipc	ra,0xffffd
    3a2c:	73c080e7          	jalr	1852(ra) # 1164 <memset>
    3a30:	00000793          	li	a5,0
    3a34:	00800713          	li	a4,8
    3a38:	00f40633          	add	a2,s0,a5
    3a3c:	00064603          	lbu	a2,0(a2)
    3a40:	00810693          	addi	a3,sp,8
    3a44:	00f686b3          	add	a3,a3,a5
    3a48:	00c68023          	sb	a2,0(a3)
    3a4c:	00178793          	addi	a5,a5,1
    3a50:	fee794e3          	bne	a5,a4,3a38 <fatfs_list_directory_next+0x1c0>
    3a54:	00844783          	lbu	a5,8(s0)
    3a58:	00944683          	lbu	a3,9(s0)
    3a5c:	02000613          	li	a2,32
    3a60:	00f108a3          	sb	a5,17(sp)
    3a64:	00d10923          	sb	a3,18(sp)
    3a68:	00100713          	li	a4,1
    3a6c:	00c69663          	bne	a3,a2,3a78 <fatfs_list_directory_next+0x200>
    3a70:	fe078793          	addi	a5,a5,-32
    3a74:	00f03733          	snez	a4,a5
    3a78:	00a44783          	lbu	a5,10(s0)
    3a7c:	02000693          	li	a3,32
    3a80:	00f109a3          	sb	a5,19(sp)
    3a84:	00d79463          	bne	a5,a3,3a8c <fatfs_list_directory_next+0x214>
    3a88:	00070c63          	beqz	a4,3aa0 <fatfs_list_directory_next+0x228>
    3a8c:	00814683          	lbu	a3,8(sp)
    3a90:	02e00713          	li	a4,46
    3a94:	02000793          	li	a5,32
    3a98:	00e68463          	beq	a3,a4,3aa0 <fatfs_list_directory_next+0x228>
    3a9c:	02e00793          	li	a5,46
    3aa0:	00810593          	addi	a1,sp,8
    3aa4:	00098513          	mv	a0,s3
    3aa8:	00f10823          	sb	a5,16(sp)
    3aac:	fffff097          	auipc	ra,0xfffff
    3ab0:	f38080e7          	jalr	-200(ra) # 29e4 <fatfs_get_sfn_display_name>
    3ab4:	eb9ff06f          	j	396c <fatfs_list_directory_next+0xf4>

00003ab8 <fl_readdir>:
    3ab8:	000057b7          	lui	a5,0x5
    3abc:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    3ac0:	fe010113          	addi	sp,sp,-32
    3ac4:	00912a23          	sw	s1,20(sp)
    3ac8:	01212823          	sw	s2,16(sp)
    3acc:	00112e23          	sw	ra,28(sp)
    3ad0:	00812c23          	sw	s0,24(sp)
    3ad4:	01312623          	sw	s3,12(sp)
    3ad8:	00050493          	mv	s1,a0
    3adc:	00058913          	mv	s2,a1
    3ae0:	00079663          	bnez	a5,3aec <fl_readdir+0x34>
    3ae4:	ffffe097          	auipc	ra,0xffffe
    3ae8:	364080e7          	jalr	868(ra) # 1e48 <fl_init>
    3aec:	0000a437          	lui	s0,0xa
    3af0:	c4040793          	addi	a5,s0,-960 # 9c40 <_fs>
    3af4:	03c7a783          	lw	a5,60(a5)
    3af8:	c4040993          	addi	s3,s0,-960
    3afc:	00078463          	beqz	a5,3b04 <fl_readdir+0x4c>
    3b00:	000780e7          	jalr	a5
    3b04:	c4040513          	addi	a0,s0,-960
    3b08:	00090613          	mv	a2,s2
    3b0c:	00048593          	mv	a1,s1
    3b10:	00000097          	auipc	ra,0x0
    3b14:	d68080e7          	jalr	-664(ra) # 3878 <fatfs_list_directory_next>
    3b18:	0409a783          	lw	a5,64(s3)
    3b1c:	00050413          	mv	s0,a0
    3b20:	00078463          	beqz	a5,3b28 <fl_readdir+0x70>
    3b24:	000780e7          	jalr	a5
    3b28:	01c12083          	lw	ra,28(sp)
    3b2c:	00143513          	seqz	a0,s0
    3b30:	01812403          	lw	s0,24(sp)
    3b34:	01412483          	lw	s1,20(sp)
    3b38:	01012903          	lw	s2,16(sp)
    3b3c:	00c12983          	lw	s3,12(sp)
    3b40:	40a00533          	neg	a0,a0
    3b44:	02010113          	addi	sp,sp,32
    3b48:	00008067          	ret

00003b4c <_read_sectors>:
    3b4c:	fd010113          	addi	sp,sp,-48
    3b50:	01612823          	sw	s6,16(sp)
    3b54:	0000ab37          	lui	s6,0xa
    3b58:	01512a23          	sw	s5,20(sp)
    3b5c:	c40b4a83          	lbu	s5,-960(s6) # 9c40 <_fs>
    3b60:	01412c23          	sw	s4,24(sp)
    3b64:	00058a13          	mv	s4,a1
    3b68:	02912223          	sw	s1,36(sp)
    3b6c:	000a8593          	mv	a1,s5
    3b70:	00050493          	mv	s1,a0
    3b74:	000a0513          	mv	a0,s4
    3b78:	02112623          	sw	ra,44(sp)
    3b7c:	02812423          	sw	s0,40(sp)
    3b80:	03212023          	sw	s2,32(sp)
    3b84:	00068413          	mv	s0,a3
    3b88:	01712623          	sw	s7,12(sp)
    3b8c:	01812423          	sw	s8,8(sp)
    3b90:	01312e23          	sw	s3,28(sp)
    3b94:	00060c13          	mv	s8,a2
    3b98:	ffffd097          	auipc	ra,0xffffd
    3b9c:	520080e7          	jalr	1312(ra) # 10b8 <__udivsi3>
    3ba0:	00050913          	mv	s2,a0
    3ba4:	000a8593          	mv	a1,s5
    3ba8:	000a0513          	mv	a0,s4
    3bac:	ffffd097          	auipc	ra,0xffffd
    3bb0:	554080e7          	jalr	1364(ra) # 1100 <__umodsi3>
    3bb4:	00a407b3          	add	a5,s0,a0
    3bb8:	00050b93          	mv	s7,a0
    3bbc:	00fafe63          	bgeu	s5,a5,3bd8 <_read_sectors+0x8c>
    3bc0:	00090593          	mv	a1,s2
    3bc4:	000a8513          	mv	a0,s5
    3bc8:	ffffe097          	auipc	ra,0xffffe
    3bcc:	de4080e7          	jalr	-540(ra) # 19ac <__mulsi3>
    3bd0:	414a87b3          	sub	a5,s5,s4
    3bd4:	00f50433          	add	s0,a0,a5
    3bd8:	2284a983          	lw	s3,552(s1)
    3bdc:	01299c63          	bne	s3,s2,3bf4 <_read_sectors+0xa8>
    3be0:	22c4a583          	lw	a1,556(s1)
    3be4:	fff00793          	li	a5,-1
    3be8:	02f59863          	bne	a1,a5,3c18 <_read_sectors+0xcc>
    3bec:	00000413          	li	s0,0
    3bf0:	0500006f          	j	3c40 <_read_sectors+0xf4>
    3bf4:	095a6063          	bltu	s4,s5,3c74 <_read_sectors+0x128>
    3bf8:	00198793          	addi	a5,s3,1
    3bfc:	07279c63          	bne	a5,s2,3c74 <_read_sectors+0x128>
    3c00:	22c4a583          	lw	a1,556(s1)
    3c04:	0729ee63          	bltu	s3,s2,3c80 <_read_sectors+0x134>
    3c08:	fff00793          	li	a5,-1
    3c0c:	fef580e3          	beq	a1,a5,3bec <_read_sectors+0xa0>
    3c10:	22b4a623          	sw	a1,556(s1)
    3c14:	2324a423          	sw	s2,552(s1)
    3c18:	c40b0513          	addi	a0,s6,-960
    3c1c:	ffffe097          	auipc	ra,0xffffe
    3c20:	0f0080e7          	jalr	240(ra) # 1d0c <fatfs_lba_of_cluster>
    3c24:	017505b3          	add	a1,a0,s7
    3c28:	00040693          	mv	a3,s0
    3c2c:	000c0613          	mv	a2,s8
    3c30:	c40b0513          	addi	a0,s6,-960
    3c34:	ffffe097          	auipc	ra,0xffffe
    3c38:	128080e7          	jalr	296(ra) # 1d5c <fatfs_sector_read>
    3c3c:	fa0508e3          	beqz	a0,3bec <_read_sectors+0xa0>
    3c40:	02c12083          	lw	ra,44(sp)
    3c44:	00040513          	mv	a0,s0
    3c48:	02812403          	lw	s0,40(sp)
    3c4c:	02412483          	lw	s1,36(sp)
    3c50:	02012903          	lw	s2,32(sp)
    3c54:	01c12983          	lw	s3,28(sp)
    3c58:	01812a03          	lw	s4,24(sp)
    3c5c:	01412a83          	lw	s5,20(sp)
    3c60:	01012b03          	lw	s6,16(sp)
    3c64:	00c12b83          	lw	s7,12(sp)
    3c68:	00812c03          	lw	s8,8(sp)
    3c6c:	03010113          	addi	sp,sp,48
    3c70:	00008067          	ret
    3c74:	0044a583          	lw	a1,4(s1)
    3c78:	00000993          	li	s3,0
    3c7c:	f89ff06f          	j	3c04 <_read_sectors+0xb8>
    3c80:	c40b0513          	addi	a0,s6,-960
    3c84:	fffff097          	auipc	ra,0xfffff
    3c88:	234080e7          	jalr	564(ra) # 2eb8 <fatfs_find_next_cluster>
    3c8c:	00050593          	mv	a1,a0
    3c90:	00198993          	addi	s3,s3,1
    3c94:	f71ff06f          	j	3c04 <_read_sectors+0xb8>

00003c98 <fatfs_set_fs_info_next_free_cluster>:
    3c98:	03052783          	lw	a5,48(a0)
    3c9c:	0a078863          	beqz	a5,3d4c <fatfs_set_fs_info_next_free_cluster+0xb4>
    3ca0:	ff010113          	addi	sp,sp,-16
    3ca4:	01c52783          	lw	a5,28(a0)
    3ca8:	01212023          	sw	s2,0(sp)
    3cac:	00058913          	mv	s2,a1
    3cb0:	01855583          	lhu	a1,24(a0)
    3cb4:	00812423          	sw	s0,8(sp)
    3cb8:	00912223          	sw	s1,4(sp)
    3cbc:	00f585b3          	add	a1,a1,a5
    3cc0:	00112623          	sw	ra,12(sp)
    3cc4:	00050493          	mv	s1,a0
    3cc8:	ffffe097          	auipc	ra,0xffffe
    3ccc:	e9c080e7          	jalr	-356(ra) # 1b64 <fatfs_fat_read_sector>
    3cd0:	00050413          	mv	s0,a0
    3cd4:	06050063          	beqz	a0,3d34 <fatfs_set_fs_info_next_free_cluster+0x9c>
    3cd8:	20852783          	lw	a5,520(a0)
    3cdc:	00895713          	srli	a4,s2,0x8
    3ce0:	1f278623          	sb	s2,492(a5)
    3ce4:	20852783          	lw	a5,520(a0)
    3ce8:	1ee786a3          	sb	a4,493(a5)
    3cec:	20852783          	lw	a5,520(a0)
    3cf0:	01095713          	srli	a4,s2,0x10
    3cf4:	1ee78723          	sb	a4,494(a5)
    3cf8:	20852783          	lw	a5,520(a0)
    3cfc:	01895713          	srli	a4,s2,0x18
    3d00:	1ee787a3          	sb	a4,495(a5)
    3d04:	00100793          	li	a5,1
    3d08:	20f52223          	sw	a5,516(a0)
    3d0c:	0384a783          	lw	a5,56(s1)
    3d10:	0324a223          	sw	s2,36(s1)
    3d14:	00078a63          	beqz	a5,3d28 <fatfs_set_fs_info_next_free_cluster+0x90>
    3d18:	00050593          	mv	a1,a0
    3d1c:	20052503          	lw	a0,512(a0)
    3d20:	00100613          	li	a2,1
    3d24:	000780e7          	jalr	a5
    3d28:	fff00793          	li	a5,-1
    3d2c:	20f42023          	sw	a5,512(s0)
    3d30:	20042223          	sw	zero,516(s0)
    3d34:	00c12083          	lw	ra,12(sp)
    3d38:	00812403          	lw	s0,8(sp)
    3d3c:	00412483          	lw	s1,4(sp)
    3d40:	00012903          	lw	s2,0(sp)
    3d44:	01010113          	addi	sp,sp,16
    3d48:	00008067          	ret
    3d4c:	00008067          	ret

00003d50 <fatfs_find_blank_cluster>:
    3d50:	fe010113          	addi	sp,sp,-32
    3d54:	01312623          	sw	s3,12(sp)
    3d58:	01512223          	sw	s5,4(sp)
    3d5c:	000109b7          	lui	s3,0x10
    3d60:	10000ab7          	lui	s5,0x10000
    3d64:	00912a23          	sw	s1,20(sp)
    3d68:	01212823          	sw	s2,16(sp)
    3d6c:	01412423          	sw	s4,8(sp)
    3d70:	00112e23          	sw	ra,28(sp)
    3d74:	00812c23          	sw	s0,24(sp)
    3d78:	00050913          	mv	s2,a0
    3d7c:	00058493          	mv	s1,a1
    3d80:	00060a13          	mv	s4,a2
    3d84:	fff98993          	addi	s3,s3,-1 # ffff <_fs+0x63bf>
    3d88:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3d8c:	03092783          	lw	a5,48(s2)
    3d90:	0074d413          	srli	s0,s1,0x7
    3d94:	00079463          	bnez	a5,3d9c <fatfs_find_blank_cluster+0x4c>
    3d98:	0084d413          	srli	s0,s1,0x8
    3d9c:	02092783          	lw	a5,32(s2)
    3da0:	08f47e63          	bgeu	s0,a5,3e3c <fatfs_find_blank_cluster+0xec>
    3da4:	01492583          	lw	a1,20(s2)
    3da8:	00090513          	mv	a0,s2
    3dac:	00b405b3          	add	a1,s0,a1
    3db0:	ffffe097          	auipc	ra,0xffffe
    3db4:	db4080e7          	jalr	-588(ra) # 1b64 <fatfs_fat_read_sector>
    3db8:	08050263          	beqz	a0,3e3c <fatfs_find_blank_cluster+0xec>
    3dbc:	03092783          	lw	a5,48(s2)
    3dc0:	20852703          	lw	a4,520(a0)
    3dc4:	02079a63          	bnez	a5,3df8 <fatfs_find_blank_cluster+0xa8>
    3dc8:	00841413          	slli	s0,s0,0x8
    3dcc:	40848433          	sub	s0,s1,s0
    3dd0:	00141413          	slli	s0,s0,0x1
    3dd4:	01347433          	and	s0,s0,s3
    3dd8:	00870733          	add	a4,a4,s0
    3ddc:	00174783          	lbu	a5,1(a4)
    3de0:	00074703          	lbu	a4,0(a4)
    3de4:	00879793          	slli	a5,a5,0x8
    3de8:	00e787b3          	add	a5,a5,a4
    3dec:	06078c63          	beqz	a5,3e64 <fatfs_find_blank_cluster+0x114>
    3df0:	00148493          	addi	s1,s1,1
    3df4:	f99ff06f          	j	3d8c <fatfs_find_blank_cluster+0x3c>
    3df8:	00741413          	slli	s0,s0,0x7
    3dfc:	40848433          	sub	s0,s1,s0
    3e00:	00241413          	slli	s0,s0,0x2
    3e04:	01347433          	and	s0,s0,s3
    3e08:	00870733          	add	a4,a4,s0
    3e0c:	00374783          	lbu	a5,3(a4)
    3e10:	00274683          	lbu	a3,2(a4)
    3e14:	01879793          	slli	a5,a5,0x18
    3e18:	01069693          	slli	a3,a3,0x10
    3e1c:	00d787b3          	add	a5,a5,a3
    3e20:	00074683          	lbu	a3,0(a4)
    3e24:	00174703          	lbu	a4,1(a4)
    3e28:	00d787b3          	add	a5,a5,a3
    3e2c:	00871713          	slli	a4,a4,0x8
    3e30:	00e787b3          	add	a5,a5,a4
    3e34:	0157f7b3          	and	a5,a5,s5
    3e38:	fb5ff06f          	j	3dec <fatfs_find_blank_cluster+0x9c>
    3e3c:	00000513          	li	a0,0
    3e40:	01c12083          	lw	ra,28(sp)
    3e44:	01812403          	lw	s0,24(sp)
    3e48:	01412483          	lw	s1,20(sp)
    3e4c:	01012903          	lw	s2,16(sp)
    3e50:	00c12983          	lw	s3,12(sp)
    3e54:	00812a03          	lw	s4,8(sp)
    3e58:	00412a83          	lw	s5,4(sp)
    3e5c:	02010113          	addi	sp,sp,32
    3e60:	00008067          	ret
    3e64:	009a2023          	sw	s1,0(s4)
    3e68:	00100513          	li	a0,1
    3e6c:	fd5ff06f          	j	3e40 <fatfs_find_blank_cluster+0xf0>

00003e70 <fatfs_fat_set_cluster>:
    3e70:	03052783          	lw	a5,48(a0)
    3e74:	fe010113          	addi	sp,sp,-32
    3e78:	00812c23          	sw	s0,24(sp)
    3e7c:	00912a23          	sw	s1,20(sp)
    3e80:	01212823          	sw	s2,16(sp)
    3e84:	01312623          	sw	s3,12(sp)
    3e88:	00112e23          	sw	ra,28(sp)
    3e8c:	00050993          	mv	s3,a0
    3e90:	00058413          	mv	s0,a1
    3e94:	00060493          	mv	s1,a2
    3e98:	0085d913          	srli	s2,a1,0x8
    3e9c:	00078463          	beqz	a5,3ea4 <fatfs_fat_set_cluster+0x34>
    3ea0:	0075d913          	srli	s2,a1,0x7
    3ea4:	0149a583          	lw	a1,20(s3)
    3ea8:	00098513          	mv	a0,s3
    3eac:	00b905b3          	add	a1,s2,a1
    3eb0:	ffffe097          	auipc	ra,0xffffe
    3eb4:	cb4080e7          	jalr	-844(ra) # 1b64 <fatfs_fat_read_sector>
    3eb8:	00050793          	mv	a5,a0
    3ebc:	00000513          	li	a0,0
    3ec0:	04078c63          	beqz	a5,3f18 <fatfs_fat_set_cluster+0xa8>
    3ec4:	0309a683          	lw	a3,48(s3)
    3ec8:	2087a703          	lw	a4,520(a5)
    3ecc:	0ff4f613          	zext.b	a2,s1
    3ed0:	06069263          	bnez	a3,3f34 <fatfs_fat_set_cluster+0xc4>
    3ed4:	00891913          	slli	s2,s2,0x8
    3ed8:	41240433          	sub	s0,s0,s2
    3edc:	000106b7          	lui	a3,0x10
    3ee0:	00141413          	slli	s0,s0,0x1
    3ee4:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x63bf>
    3ee8:	00d47433          	and	s0,s0,a3
    3eec:	00870733          	add	a4,a4,s0
    3ef0:	00c70023          	sb	a2,0(a4)
    3ef4:	2087a703          	lw	a4,520(a5)
    3ef8:	01049493          	slli	s1,s1,0x10
    3efc:	0104d493          	srli	s1,s1,0x10
    3f00:	00870733          	add	a4,a4,s0
    3f04:	0084d493          	srli	s1,s1,0x8
    3f08:	009700a3          	sb	s1,1(a4)
    3f0c:	00100713          	li	a4,1
    3f10:	20e7a223          	sw	a4,516(a5)
    3f14:	00100513          	li	a0,1
    3f18:	01c12083          	lw	ra,28(sp)
    3f1c:	01812403          	lw	s0,24(sp)
    3f20:	01412483          	lw	s1,20(sp)
    3f24:	01012903          	lw	s2,16(sp)
    3f28:	00c12983          	lw	s3,12(sp)
    3f2c:	02010113          	addi	sp,sp,32
    3f30:	00008067          	ret
    3f34:	00791913          	slli	s2,s2,0x7
    3f38:	41240433          	sub	s0,s0,s2
    3f3c:	000106b7          	lui	a3,0x10
    3f40:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x63bf>
    3f44:	00241413          	slli	s0,s0,0x2
    3f48:	00d47433          	and	s0,s0,a3
    3f4c:	00870733          	add	a4,a4,s0
    3f50:	00c70023          	sb	a2,0(a4)
    3f54:	2087a703          	lw	a4,520(a5)
    3f58:	0084d693          	srli	a3,s1,0x8
    3f5c:	00870733          	add	a4,a4,s0
    3f60:	00d700a3          	sb	a3,1(a4)
    3f64:	2087a703          	lw	a4,520(a5)
    3f68:	0104d693          	srli	a3,s1,0x10
    3f6c:	0184d493          	srli	s1,s1,0x18
    3f70:	00870733          	add	a4,a4,s0
    3f74:	00d70123          	sb	a3,2(a4)
    3f78:	2087a703          	lw	a4,520(a5)
    3f7c:	00870733          	add	a4,a4,s0
    3f80:	009701a3          	sb	s1,3(a4)
    3f84:	f89ff06f          	j	3f0c <fatfs_fat_set_cluster+0x9c>

00003f88 <fatfs_free_cluster_chain>:
    3f88:	fe010113          	addi	sp,sp,-32
    3f8c:	00812c23          	sw	s0,24(sp)
    3f90:	01212823          	sw	s2,16(sp)
    3f94:	00112e23          	sw	ra,28(sp)
    3f98:	00912a23          	sw	s1,20(sp)
    3f9c:	00050413          	mv	s0,a0
    3fa0:	ffd00913          	li	s2,-3
    3fa4:	fff58793          	addi	a5,a1,-1
    3fa8:	02f97063          	bgeu	s2,a5,3fc8 <fatfs_free_cluster_chain+0x40>
    3fac:	01c12083          	lw	ra,28(sp)
    3fb0:	01812403          	lw	s0,24(sp)
    3fb4:	01412483          	lw	s1,20(sp)
    3fb8:	01012903          	lw	s2,16(sp)
    3fbc:	00100513          	li	a0,1
    3fc0:	02010113          	addi	sp,sp,32
    3fc4:	00008067          	ret
    3fc8:	00040513          	mv	a0,s0
    3fcc:	00b12623          	sw	a1,12(sp)
    3fd0:	fffff097          	auipc	ra,0xfffff
    3fd4:	ee8080e7          	jalr	-280(ra) # 2eb8 <fatfs_find_next_cluster>
    3fd8:	00c12583          	lw	a1,12(sp)
    3fdc:	00050493          	mv	s1,a0
    3fe0:	00000613          	li	a2,0
    3fe4:	00040513          	mv	a0,s0
    3fe8:	00000097          	auipc	ra,0x0
    3fec:	e88080e7          	jalr	-376(ra) # 3e70 <fatfs_fat_set_cluster>
    3ff0:	00048593          	mv	a1,s1
    3ff4:	fb1ff06f          	j	3fa4 <fatfs_free_cluster_chain+0x1c>

00003ff8 <fatfs_fat_add_cluster_to_chain>:
    3ff8:	fff00793          	li	a5,-1
    3ffc:	02f59463          	bne	a1,a5,4024 <fatfs_fat_add_cluster_to_chain+0x2c>
    4000:	00000513          	li	a0,0
    4004:	00008067          	ret
    4008:	00000513          	li	a0,0
    400c:	01c12083          	lw	ra,28(sp)
    4010:	01812403          	lw	s0,24(sp)
    4014:	01412483          	lw	s1,20(sp)
    4018:	01012903          	lw	s2,16(sp)
    401c:	02010113          	addi	sp,sp,32
    4020:	00008067          	ret
    4024:	fe010113          	addi	sp,sp,-32
    4028:	00812c23          	sw	s0,24(sp)
    402c:	00912a23          	sw	s1,20(sp)
    4030:	01212823          	sw	s2,16(sp)
    4034:	00050413          	mv	s0,a0
    4038:	00112e23          	sw	ra,28(sp)
    403c:	00058513          	mv	a0,a1
    4040:	00060493          	mv	s1,a2
    4044:	fff00913          	li	s2,-1
    4048:	00050593          	mv	a1,a0
    404c:	00a12623          	sw	a0,12(sp)
    4050:	00040513          	mv	a0,s0
    4054:	fffff097          	auipc	ra,0xfffff
    4058:	e64080e7          	jalr	-412(ra) # 2eb8 <fatfs_find_next_cluster>
    405c:	fa0506e3          	beqz	a0,4008 <fatfs_fat_add_cluster_to_chain+0x10>
    4060:	00c12583          	lw	a1,12(sp)
    4064:	ff2512e3          	bne	a0,s2,4048 <fatfs_fat_add_cluster_to_chain+0x50>
    4068:	00048613          	mv	a2,s1
    406c:	00040513          	mv	a0,s0
    4070:	00000097          	auipc	ra,0x0
    4074:	e00080e7          	jalr	-512(ra) # 3e70 <fatfs_fat_set_cluster>
    4078:	fff00613          	li	a2,-1
    407c:	00048593          	mv	a1,s1
    4080:	00040513          	mv	a0,s0
    4084:	00000097          	auipc	ra,0x0
    4088:	dec080e7          	jalr	-532(ra) # 3e70 <fatfs_fat_set_cluster>
    408c:	00100513          	li	a0,1
    4090:	f7dff06f          	j	400c <fatfs_fat_add_cluster_to_chain+0x14>

00004094 <fatfs_add_free_space>:
    4094:	02452703          	lw	a4,36(a0)
    4098:	fd010113          	addi	sp,sp,-48
    409c:	02812423          	sw	s0,40(sp)
    40a0:	03212023          	sw	s2,32(sp)
    40a4:	01412c23          	sw	s4,24(sp)
    40a8:	01512a23          	sw	s5,20(sp)
    40ac:	02112623          	sw	ra,44(sp)
    40b0:	02912223          	sw	s1,36(sp)
    40b4:	01312e23          	sw	s3,28(sp)
    40b8:	fff00793          	li	a5,-1
    40bc:	0005aa83          	lw	s5,0(a1)
    40c0:	00050413          	mv	s0,a0
    40c4:	00058913          	mv	s2,a1
    40c8:	00060a13          	mv	s4,a2
    40cc:	00f70863          	beq	a4,a5,40dc <fatfs_add_free_space+0x48>
    40d0:	fff00593          	li	a1,-1
    40d4:	00000097          	auipc	ra,0x0
    40d8:	bc4080e7          	jalr	-1084(ra) # 3c98 <fatfs_set_fs_info_next_free_cluster>
    40dc:	00000493          	li	s1,0
    40e0:	03449663          	bne	s1,s4,410c <fatfs_add_free_space+0x78>
    40e4:	00100513          	li	a0,1
    40e8:	02c12083          	lw	ra,44(sp)
    40ec:	02812403          	lw	s0,40(sp)
    40f0:	02412483          	lw	s1,36(sp)
    40f4:	02012903          	lw	s2,32(sp)
    40f8:	01c12983          	lw	s3,28(sp)
    40fc:	01812a03          	lw	s4,24(sp)
    4100:	01412a83          	lw	s5,20(sp)
    4104:	03010113          	addi	sp,sp,48
    4108:	00008067          	ret
    410c:	00842583          	lw	a1,8(s0)
    4110:	00c10613          	addi	a2,sp,12
    4114:	00040513          	mv	a0,s0
    4118:	00000097          	auipc	ra,0x0
    411c:	c38080e7          	jalr	-968(ra) # 3d50 <fatfs_find_blank_cluster>
    4120:	fc0504e3          	beqz	a0,40e8 <fatfs_add_free_space+0x54>
    4124:	00c12983          	lw	s3,12(sp)
    4128:	000a8593          	mv	a1,s5
    412c:	00040513          	mv	a0,s0
    4130:	00098613          	mv	a2,s3
    4134:	00000097          	auipc	ra,0x0
    4138:	d3c080e7          	jalr	-708(ra) # 3e70 <fatfs_fat_set_cluster>
    413c:	fff00613          	li	a2,-1
    4140:	00098593          	mv	a1,s3
    4144:	00040513          	mv	a0,s0
    4148:	00000097          	auipc	ra,0x0
    414c:	d28080e7          	jalr	-728(ra) # 3e70 <fatfs_fat_set_cluster>
    4150:	00049463          	bnez	s1,4158 <fatfs_add_free_space+0xc4>
    4154:	01392023          	sw	s3,0(s2)
    4158:	00148493          	addi	s1,s1,1
    415c:	00098a93          	mv	s5,s3
    4160:	f81ff06f          	j	40e0 <fatfs_add_free_space+0x4c>

00004164 <_write_sectors>:
    4164:	fb010113          	addi	sp,sp,-80
    4168:	03312e23          	sw	s3,60(sp)
    416c:	0000a9b7          	lui	s3,0xa
    4170:	03612823          	sw	s6,48(sp)
    4174:	c409cb03          	lbu	s6,-960(s3) # 9c40 <_fs>
    4178:	03512a23          	sw	s5,52(sp)
    417c:	00058a93          	mv	s5,a1
    4180:	fff00793          	li	a5,-1
    4184:	04812423          	sw	s0,72(sp)
    4188:	000b0593          	mv	a1,s6
    418c:	00050413          	mv	s0,a0
    4190:	000a8513          	mv	a0,s5
    4194:	00f12e23          	sw	a5,28(sp)
    4198:	04112623          	sw	ra,76(sp)
    419c:	04912223          	sw	s1,68(sp)
    41a0:	05212023          	sw	s2,64(sp)
    41a4:	03712623          	sw	s7,44(sp)
    41a8:	03812423          	sw	s8,40(sp)
    41ac:	00068b93          	mv	s7,a3
    41b0:	03912223          	sw	s9,36(sp)
    41b4:	03a12023          	sw	s10,32(sp)
    41b8:	00060c93          	mv	s9,a2
    41bc:	03412c23          	sw	s4,56(sp)
    41c0:	ffffd097          	auipc	ra,0xffffd
    41c4:	ef8080e7          	jalr	-264(ra) # 10b8 <__udivsi3>
    41c8:	00050493          	mv	s1,a0
    41cc:	000b0593          	mv	a1,s6
    41d0:	000a8513          	mv	a0,s5
    41d4:	ffffd097          	auipc	ra,0xffffd
    41d8:	f2c080e7          	jalr	-212(ra) # 1100 <__umodsi3>
    41dc:	00ab87b3          	add	a5,s7,a0
    41e0:	00050c13          	mv	s8,a0
    41e4:	c4098d13          	addi	s10,s3,-960
    41e8:	000b8913          	mv	s2,s7
    41ec:	00fb7e63          	bgeu	s6,a5,4208 <_write_sectors+0xa4>
    41f0:	00048593          	mv	a1,s1
    41f4:	000b0513          	mv	a0,s6
    41f8:	ffffd097          	auipc	ra,0xffffd
    41fc:	7b4080e7          	jalr	1972(ra) # 19ac <__mulsi3>
    4200:	415b07b3          	sub	a5,s6,s5
    4204:	00f50933          	add	s2,a0,a5
    4208:	22842a03          	lw	s4,552(s0)
    420c:	069a1663          	bne	s4,s1,4278 <_write_sectors+0x114>
    4210:	22c42583          	lw	a1,556(s0)
    4214:	c4098513          	addi	a0,s3,-960
    4218:	ffffe097          	auipc	ra,0xffffe
    421c:	af4080e7          	jalr	-1292(ra) # 1d0c <fatfs_lba_of_cluster>
    4220:	018505b3          	add	a1,a0,s8
    4224:	00090693          	mv	a3,s2
    4228:	000c8613          	mv	a2,s9
    422c:	c4098513          	addi	a0,s3,-960
    4230:	ffffe097          	auipc	ra,0xffffe
    4234:	b44080e7          	jalr	-1212(ra) # 1d74 <fatfs_sector_write>
    4238:	0c050063          	beqz	a0,42f8 <_write_sectors+0x194>
    423c:	04c12083          	lw	ra,76(sp)
    4240:	04812403          	lw	s0,72(sp)
    4244:	04412483          	lw	s1,68(sp)
    4248:	03c12983          	lw	s3,60(sp)
    424c:	03812a03          	lw	s4,56(sp)
    4250:	03412a83          	lw	s5,52(sp)
    4254:	03012b03          	lw	s6,48(sp)
    4258:	02c12b83          	lw	s7,44(sp)
    425c:	02812c03          	lw	s8,40(sp)
    4260:	02412c83          	lw	s9,36(sp)
    4264:	02012d03          	lw	s10,32(sp)
    4268:	00090513          	mv	a0,s2
    426c:	04012903          	lw	s2,64(sp)
    4270:	05010113          	addi	sp,sp,80
    4274:	00008067          	ret
    4278:	036ae663          	bltu	s5,s6,42a4 <_write_sectors+0x140>
    427c:	001a0793          	addi	a5,s4,1
    4280:	02979263          	bne	a5,s1,42a4 <_write_sectors+0x140>
    4284:	22c42583          	lw	a1,556(s0)
    4288:	fff00a93          	li	s5,-1
    428c:	029a6263          	bltu	s4,s1,42b0 <_write_sectors+0x14c>
    4290:	fff00793          	li	a5,-1
    4294:	02f58c63          	beq	a1,a5,42cc <_write_sectors+0x168>
    4298:	22b42623          	sw	a1,556(s0)
    429c:	22942423          	sw	s1,552(s0)
    42a0:	f75ff06f          	j	4214 <_write_sectors+0xb0>
    42a4:	00442583          	lw	a1,4(s0)
    42a8:	00000a13          	li	s4,0
    42ac:	fddff06f          	j	4288 <_write_sectors+0x124>
    42b0:	c4098513          	addi	a0,s3,-960
    42b4:	00b12623          	sw	a1,12(sp)
    42b8:	fffff097          	auipc	ra,0xfffff
    42bc:	c00080e7          	jalr	-1024(ra) # 2eb8 <fatfs_find_next_cluster>
    42c0:	00c12583          	lw	a1,12(sp)
    42c4:	00b12e23          	sw	a1,28(sp)
    42c8:	03551c63          	bne	a0,s5,4300 <_write_sectors+0x19c>
    42cc:	000d4583          	lbu	a1,0(s10)
    42d0:	fff58513          	addi	a0,a1,-1
    42d4:	01750533          	add	a0,a0,s7
    42d8:	ffffd097          	auipc	ra,0xffffd
    42dc:	de0080e7          	jalr	-544(ra) # 10b8 <__udivsi3>
    42e0:	00050613          	mv	a2,a0
    42e4:	01c10593          	addi	a1,sp,28
    42e8:	c4098513          	addi	a0,s3,-960
    42ec:	00000097          	auipc	ra,0x0
    42f0:	da8080e7          	jalr	-600(ra) # 4094 <fatfs_add_free_space>
    42f4:	00051c63          	bnez	a0,430c <_write_sectors+0x1a8>
    42f8:	00000913          	li	s2,0
    42fc:	f41ff06f          	j	423c <_write_sectors+0xd8>
    4300:	001a0a13          	addi	s4,s4,1
    4304:	00050593          	mv	a1,a0
    4308:	f85ff06f          	j	428c <_write_sectors+0x128>
    430c:	01c12583          	lw	a1,28(sp)
    4310:	f89ff06f          	j	4298 <_write_sectors+0x134>

00004314 <fl_fflush>:
    4314:	000057b7          	lui	a5,0x5
    4318:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    431c:	ff010113          	addi	sp,sp,-16
    4320:	00812423          	sw	s0,8(sp)
    4324:	00112623          	sw	ra,12(sp)
    4328:	00912223          	sw	s1,4(sp)
    432c:	00050413          	mv	s0,a0
    4330:	00079663          	bnez	a5,433c <fl_fflush+0x28>
    4334:	ffffe097          	auipc	ra,0xffffe
    4338:	b14080e7          	jalr	-1260(ra) # 1e48 <fl_init>
    433c:	04040863          	beqz	s0,438c <fl_fflush+0x78>
    4340:	0000a7b7          	lui	a5,0xa
    4344:	c4078713          	addi	a4,a5,-960 # 9c40 <_fs>
    4348:	03c72703          	lw	a4,60(a4)
    434c:	c4078493          	addi	s1,a5,-960
    4350:	00070463          	beqz	a4,4358 <fl_fflush+0x44>
    4354:	000700e7          	jalr	a4
    4358:	43442783          	lw	a5,1076(s0)
    435c:	02078263          	beqz	a5,4380 <fl_fflush+0x6c>
    4360:	43042583          	lw	a1,1072(s0)
    4364:	00100693          	li	a3,1
    4368:	23040613          	addi	a2,s0,560
    436c:	00040513          	mv	a0,s0
    4370:	00000097          	auipc	ra,0x0
    4374:	df4080e7          	jalr	-524(ra) # 4164 <_write_sectors>
    4378:	00050463          	beqz	a0,4380 <fl_fflush+0x6c>
    437c:	42042a23          	sw	zero,1076(s0)
    4380:	0404a783          	lw	a5,64(s1)
    4384:	00078463          	beqz	a5,438c <fl_fflush+0x78>
    4388:	000780e7          	jalr	a5
    438c:	00c12083          	lw	ra,12(sp)
    4390:	00812403          	lw	s0,8(sp)
    4394:	00412483          	lw	s1,4(sp)
    4398:	00000513          	li	a0,0
    439c:	01010113          	addi	sp,sp,16
    43a0:	00008067          	ret

000043a4 <fl_fclose>:
    43a4:	000057b7          	lui	a5,0x5
    43a8:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    43ac:	ff010113          	addi	sp,sp,-16
    43b0:	00812423          	sw	s0,8(sp)
    43b4:	00112623          	sw	ra,12(sp)
    43b8:	00912223          	sw	s1,4(sp)
    43bc:	01212023          	sw	s2,0(sp)
    43c0:	00050413          	mv	s0,a0
    43c4:	00079663          	bnez	a5,43d0 <fl_fclose+0x2c>
    43c8:	ffffe097          	auipc	ra,0xffffe
    43cc:	a80080e7          	jalr	-1408(ra) # 1e48 <fl_init>
    43d0:	08040e63          	beqz	s0,446c <fl_fclose+0xc8>
    43d4:	0000a4b7          	lui	s1,0xa
    43d8:	c4048793          	addi	a5,s1,-960 # 9c40 <_fs>
    43dc:	03c7a783          	lw	a5,60(a5)
    43e0:	c4048913          	addi	s2,s1,-960
    43e4:	00078463          	beqz	a5,43ec <fl_fclose+0x48>
    43e8:	000780e7          	jalr	a5
    43ec:	00040513          	mv	a0,s0
    43f0:	00000097          	auipc	ra,0x0
    43f4:	f24080e7          	jalr	-220(ra) # 4314 <fl_fflush>
    43f8:	01042783          	lw	a5,16(s0)
    43fc:	00078e63          	beqz	a5,4418 <fl_fclose+0x74>
    4400:	00c42683          	lw	a3,12(s0)
    4404:	00042583          	lw	a1,0(s0)
    4408:	21c40613          	addi	a2,s0,540
    440c:	c4048513          	addi	a0,s1,-960
    4410:	fffff097          	auipc	ra,0xfffff
    4414:	300080e7          	jalr	768(ra) # 3710 <fatfs_update_file_length>
    4418:	fff00793          	li	a5,-1
    441c:	42f42823          	sw	a5,1072(s0)
    4420:	00040513          	mv	a0,s0
    4424:	00042423          	sw	zero,8(s0)
    4428:	00042623          	sw	zero,12(s0)
    442c:	00042223          	sw	zero,4(s0)
    4430:	42042a23          	sw	zero,1076(s0)
    4434:	00042823          	sw	zero,16(s0)
    4438:	ffffe097          	auipc	ra,0xffffe
    443c:	88c080e7          	jalr	-1908(ra) # 1cc4 <_free_file>
    4440:	c4048513          	addi	a0,s1,-960
    4444:	fffff097          	auipc	ra,0xfffff
    4448:	a18080e7          	jalr	-1512(ra) # 2e5c <fatfs_fat_purge>
    444c:	04092783          	lw	a5,64(s2)
    4450:	00078e63          	beqz	a5,446c <fl_fclose+0xc8>
    4454:	00812403          	lw	s0,8(sp)
    4458:	00c12083          	lw	ra,12(sp)
    445c:	00412483          	lw	s1,4(sp)
    4460:	00012903          	lw	s2,0(sp)
    4464:	01010113          	addi	sp,sp,16
    4468:	00078067          	jr	a5
    446c:	00c12083          	lw	ra,12(sp)
    4470:	00812403          	lw	s0,8(sp)
    4474:	00412483          	lw	s1,4(sp)
    4478:	00012903          	lw	s2,0(sp)
    447c:	01010113          	addi	sp,sp,16
    4480:	00008067          	ret

00004484 <fl_fread>:
    4484:	fd010113          	addi	sp,sp,-48
    4488:	01512a23          	sw	s5,20(sp)
    448c:	00050a93          	mv	s5,a0
    4490:	00058513          	mv	a0,a1
    4494:	00060593          	mv	a1,a2
    4498:	02812423          	sw	s0,40(sp)
    449c:	02912223          	sw	s1,36(sp)
    44a0:	02112623          	sw	ra,44(sp)
    44a4:	03212023          	sw	s2,32(sp)
    44a8:	01312e23          	sw	s3,28(sp)
    44ac:	01412c23          	sw	s4,24(sp)
    44b0:	01612823          	sw	s6,16(sp)
    44b4:	01712623          	sw	s7,12(sp)
    44b8:	01812423          	sw	s8,8(sp)
    44bc:	01912223          	sw	s9,4(sp)
    44c0:	00068493          	mv	s1,a3
    44c4:	ffffd097          	auipc	ra,0xffffd
    44c8:	4e8080e7          	jalr	1256(ra) # 19ac <__mulsi3>
    44cc:	000057b7          	lui	a5,0x5
    44d0:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    44d4:	00050413          	mv	s0,a0
    44d8:	00079663          	bnez	a5,44e4 <fl_fread+0x60>
    44dc:	ffffe097          	auipc	ra,0xffffe
    44e0:	96c080e7          	jalr	-1684(ra) # 1e48 <fl_init>
    44e4:	120a8e63          	beqz	s5,4620 <fl_fread+0x19c>
    44e8:	12048c63          	beqz	s1,4620 <fl_fread+0x19c>
    44ec:	4384c783          	lbu	a5,1080(s1)
    44f0:	0017f793          	andi	a5,a5,1
    44f4:	12078663          	beqz	a5,4620 <fl_fread+0x19c>
    44f8:	02040e63          	beqz	s0,4534 <fl_fread+0xb0>
    44fc:	0084a583          	lw	a1,8(s1)
    4500:	00c4a783          	lw	a5,12(s1)
    4504:	10f5fe63          	bgeu	a1,a5,4620 <fl_fread+0x19c>
    4508:	00b40733          	add	a4,s0,a1
    450c:	00040b13          	mv	s6,s0
    4510:	00e7f463          	bgeu	a5,a4,4518 <fl_fread+0x94>
    4514:	40b78b33          	sub	s6,a5,a1
    4518:	0095d993          	srli	s3,a1,0x9
    451c:	1ff5f913          	andi	s2,a1,511
    4520:	00000413          	li	s0,0
    4524:	23048b93          	addi	s7,s1,560
    4528:	20000c13          	li	s8,512
    452c:	1ff00c93          	li	s9,511
    4530:	03644e63          	blt	s0,s6,456c <fl_fread+0xe8>
    4534:	02c12083          	lw	ra,44(sp)
    4538:	00040513          	mv	a0,s0
    453c:	02812403          	lw	s0,40(sp)
    4540:	02412483          	lw	s1,36(sp)
    4544:	02012903          	lw	s2,32(sp)
    4548:	01c12983          	lw	s3,28(sp)
    454c:	01812a03          	lw	s4,24(sp)
    4550:	01412a83          	lw	s5,20(sp)
    4554:	01012b03          	lw	s6,16(sp)
    4558:	00c12b83          	lw	s7,12(sp)
    455c:	00812c03          	lw	s8,8(sp)
    4560:	00412c83          	lw	s9,4(sp)
    4564:	03010113          	addi	sp,sp,48
    4568:	00008067          	ret
    456c:	04091463          	bnez	s2,45b4 <fl_fread+0x130>
    4570:	408b06b3          	sub	a3,s6,s0
    4574:	04dcd063          	bge	s9,a3,45b4 <fl_fread+0x130>
    4578:	4096d693          	srai	a3,a3,0x9
    457c:	008a8633          	add	a2,s5,s0
    4580:	00098593          	mv	a1,s3
    4584:	00048513          	mv	a0,s1
    4588:	fffff097          	auipc	ra,0xfffff
    458c:	5c4080e7          	jalr	1476(ra) # 3b4c <_read_sectors>
    4590:	fa0502e3          	beqz	a0,4534 <fl_fread+0xb0>
    4594:	00951a13          	slli	s4,a0,0x9
    4598:	00a989b3          	add	s3,s3,a0
    459c:	0084a783          	lw	a5,8(s1)
    45a0:	01440433          	add	s0,s0,s4
    45a4:	00000913          	li	s2,0
    45a8:	014787b3          	add	a5,a5,s4
    45ac:	00f4a423          	sw	a5,8(s1)
    45b0:	f81ff06f          	j	4530 <fl_fread+0xac>
    45b4:	4304a783          	lw	a5,1072(s1)
    45b8:	03378e63          	beq	a5,s3,45f4 <fl_fread+0x170>
    45bc:	4344a783          	lw	a5,1076(s1)
    45c0:	00078863          	beqz	a5,45d0 <fl_fread+0x14c>
    45c4:	00048513          	mv	a0,s1
    45c8:	00000097          	auipc	ra,0x0
    45cc:	d4c080e7          	jalr	-692(ra) # 4314 <fl_fflush>
    45d0:	00100693          	li	a3,1
    45d4:	000b8613          	mv	a2,s7
    45d8:	00098593          	mv	a1,s3
    45dc:	00048513          	mv	a0,s1
    45e0:	fffff097          	auipc	ra,0xfffff
    45e4:	56c080e7          	jalr	1388(ra) # 3b4c <_read_sectors>
    45e8:	f40506e3          	beqz	a0,4534 <fl_fread+0xb0>
    45ec:	4334a823          	sw	s3,1072(s1)
    45f0:	4204aa23          	sw	zero,1076(s1)
    45f4:	412c07b3          	sub	a5,s8,s2
    45f8:	408b0a33          	sub	s4,s6,s0
    45fc:	0147d463          	bge	a5,s4,4604 <fl_fread+0x180>
    4600:	00078a13          	mv	s4,a5
    4604:	000a0613          	mv	a2,s4
    4608:	012b85b3          	add	a1,s7,s2
    460c:	008a8533          	add	a0,s5,s0
    4610:	ffffd097          	auipc	ra,0xffffd
    4614:	b70080e7          	jalr	-1168(ra) # 1180 <memcpy>
    4618:	00198993          	addi	s3,s3,1
    461c:	f81ff06f          	j	459c <fl_fread+0x118>
    4620:	fff00413          	li	s0,-1
    4624:	f11ff06f          	j	4534 <fl_fread+0xb0>

00004628 <fatfs_allocate_free_space.part.0>:
    4628:	02452703          	lw	a4,36(a0)
    462c:	fd010113          	addi	sp,sp,-48
    4630:	02812423          	sw	s0,40(sp)
    4634:	03212023          	sw	s2,32(sp)
    4638:	01312e23          	sw	s3,28(sp)
    463c:	01512a23          	sw	s5,20(sp)
    4640:	02112623          	sw	ra,44(sp)
    4644:	02912223          	sw	s1,36(sp)
    4648:	01412c23          	sw	s4,24(sp)
    464c:	fff00793          	li	a5,-1
    4650:	00050413          	mv	s0,a0
    4654:	00058a93          	mv	s5,a1
    4658:	00060913          	mv	s2,a2
    465c:	00068993          	mv	s3,a3
    4660:	00f70863          	beq	a4,a5,4670 <fatfs_allocate_free_space.part.0+0x48>
    4664:	fff00593          	li	a1,-1
    4668:	fffff097          	auipc	ra,0xfffff
    466c:	630080e7          	jalr	1584(ra) # 3c98 <fatfs_set_fs_info_next_free_cluster>
    4670:	00044a03          	lbu	s4,0(s0)
    4674:	00098513          	mv	a0,s3
    4678:	009a1a13          	slli	s4,s4,0x9
    467c:	000a0593          	mv	a1,s4
    4680:	ffffd097          	auipc	ra,0xffffd
    4684:	a38080e7          	jalr	-1480(ra) # 10b8 <__udivsi3>
    4688:	00050493          	mv	s1,a0
    468c:	00050593          	mv	a1,a0
    4690:	000a0513          	mv	a0,s4
    4694:	ffffd097          	auipc	ra,0xffffd
    4698:	318080e7          	jalr	792(ra) # 19ac <__mulsi3>
    469c:	00a98463          	beq	s3,a0,46a4 <fatfs_allocate_free_space.part.0+0x7c>
    46a0:	00148493          	addi	s1,s1,1
    46a4:	060a8463          	beqz	s5,470c <fatfs_allocate_free_space.part.0+0xe4>
    46a8:	00842583          	lw	a1,8(s0)
    46ac:	00c10613          	addi	a2,sp,12
    46b0:	00040513          	mv	a0,s0
    46b4:	fffff097          	auipc	ra,0xfffff
    46b8:	69c080e7          	jalr	1692(ra) # 3d50 <fatfs_find_blank_cluster>
    46bc:	02050663          	beqz	a0,46e8 <fatfs_allocate_free_space.part.0+0xc0>
    46c0:	00100793          	li	a5,1
    46c4:	04f49863          	bne	s1,a5,4714 <fatfs_allocate_free_space.part.0+0xec>
    46c8:	00c12483          	lw	s1,12(sp)
    46cc:	fff00613          	li	a2,-1
    46d0:	00040513          	mv	a0,s0
    46d4:	00048593          	mv	a1,s1
    46d8:	fffff097          	auipc	ra,0xfffff
    46dc:	798080e7          	jalr	1944(ra) # 3e70 <fatfs_fat_set_cluster>
    46e0:	00100513          	li	a0,1
    46e4:	00992023          	sw	s1,0(s2)
    46e8:	02c12083          	lw	ra,44(sp)
    46ec:	02812403          	lw	s0,40(sp)
    46f0:	02412483          	lw	s1,36(sp)
    46f4:	02012903          	lw	s2,32(sp)
    46f8:	01c12983          	lw	s3,28(sp)
    46fc:	01812a03          	lw	s4,24(sp)
    4700:	01412a83          	lw	s5,20(sp)
    4704:	03010113          	addi	sp,sp,48
    4708:	00008067          	ret
    470c:	00092783          	lw	a5,0(s2)
    4710:	00f12623          	sw	a5,12(sp)
    4714:	00048613          	mv	a2,s1
    4718:	00c10593          	addi	a1,sp,12
    471c:	00040513          	mv	a0,s0
    4720:	00000097          	auipc	ra,0x0
    4724:	974080e7          	jalr	-1676(ra) # 4094 <fatfs_add_free_space>
    4728:	00a03533          	snez	a0,a0
    472c:	fbdff06f          	j	46e8 <fatfs_allocate_free_space.part.0+0xc0>

00004730 <fatfs_add_file_entry>:
    4730:	f8010113          	addi	sp,sp,-128
    4734:	00f12823          	sw	a5,16(sp)
    4738:	03852783          	lw	a5,56(a0)
    473c:	06112e23          	sw	ra,124(sp)
    4740:	06812c23          	sw	s0,120(sp)
    4744:	06912a23          	sw	s1,116(sp)
    4748:	07212823          	sw	s2,112(sp)
    474c:	07312623          	sw	s3,108(sp)
    4750:	07412423          	sw	s4,104(sp)
    4754:	07512223          	sw	s5,100(sp)
    4758:	07612023          	sw	s6,96(sp)
    475c:	05712e23          	sw	s7,92(sp)
    4760:	05812c23          	sw	s8,88(sp)
    4764:	05912a23          	sw	s9,84(sp)
    4768:	05a12823          	sw	s10,80(sp)
    476c:	05b12623          	sw	s11,76(sp)
    4770:	00e12623          	sw	a4,12(sp)
    4774:	01012a23          	sw	a6,20(sp)
    4778:	04079463          	bnez	a5,47c0 <fatfs_add_file_entry+0x90>
    477c:	00000913          	li	s2,0
    4780:	07c12083          	lw	ra,124(sp)
    4784:	07812403          	lw	s0,120(sp)
    4788:	07412483          	lw	s1,116(sp)
    478c:	06c12983          	lw	s3,108(sp)
    4790:	06812a03          	lw	s4,104(sp)
    4794:	06412a83          	lw	s5,100(sp)
    4798:	06012b03          	lw	s6,96(sp)
    479c:	05c12b83          	lw	s7,92(sp)
    47a0:	05812c03          	lw	s8,88(sp)
    47a4:	05412c83          	lw	s9,84(sp)
    47a8:	05012d03          	lw	s10,80(sp)
    47ac:	04c12d83          	lw	s11,76(sp)
    47b0:	00090513          	mv	a0,s2
    47b4:	07012903          	lw	s2,112(sp)
    47b8:	08010113          	addi	sp,sp,128
    47bc:	00008067          	ret
    47c0:	00050413          	mv	s0,a0
    47c4:	00060513          	mv	a0,a2
    47c8:	00058b13          	mv	s6,a1
    47cc:	00060c93          	mv	s9,a2
    47d0:	00068b93          	mv	s7,a3
    47d4:	ffffe097          	auipc	ra,0xffffe
    47d8:	8e4080e7          	jalr	-1820(ra) # 20b8 <fatfs_lfn_entries_required>
    47dc:	00150713          	addi	a4,a0,1
    47e0:	00100793          	li	a5,1
    47e4:	00050493          	mv	s1,a0
    47e8:	f8e7fae3          	bgeu	a5,a4,477c <fatfs_add_file_entry+0x4c>
    47ec:	00000993          	li	s3,0
    47f0:	00000a93          	li	s5,0
    47f4:	00000a13          	li	s4,0
    47f8:	00000c13          	li	s8,0
    47fc:	00000d13          	li	s10,0
    4800:	01000d93          	li	s11,16
    4804:	00000693          	li	a3,0
    4808:	00098613          	mv	a2,s3
    480c:	000b0593          	mv	a1,s6
    4810:	00040513          	mv	a0,s0
    4814:	ffffe097          	auipc	ra,0xffffe
    4818:	7b4080e7          	jalr	1972(ra) # 2fc8 <fatfs_sector_reader>
    481c:	00050913          	mv	s2,a0
    4820:	14050a63          	beqz	a0,4974 <fatfs_add_file_entry+0x244>
    4824:	04440693          	addi	a3,s0,68
    4828:	000d0913          	mv	s2,s10
    482c:	00000713          	li	a4,0
    4830:	00068513          	mv	a0,a3
    4834:	00e12e23          	sw	a4,28(sp)
    4838:	00d12c23          	sw	a3,24(sp)
    483c:	ffffd097          	auipc	ra,0xffffd
    4840:	78c080e7          	jalr	1932(ra) # 1fc8 <fatfs_entry_lfn_text>
    4844:	01812683          	lw	a3,24(sp)
    4848:	01c12703          	lw	a4,28(sp)
    484c:	00050d13          	mv	s10,a0
    4850:	02050c63          	beqz	a0,4888 <fatfs_add_file_entry+0x158>
    4854:	00091863          	bnez	s2,4864 <fatfs_add_file_entry+0x134>
    4858:	00070a93          	mv	s5,a4
    485c:	00098a13          	mv	s4,s3
    4860:	00100c13          	li	s8,1
    4864:	00190d13          	addi	s10,s2,1
    4868:	00170713          	addi	a4,a4,1
    486c:	0ff77713          	zext.b	a4,a4
    4870:	02068693          	addi	a3,a3,32
    4874:	01b71663          	bne	a4,s11,4880 <fatfs_add_file_entry+0x150>
    4878:	00198993          	addi	s3,s3,1
    487c:	f89ff06f          	j	4804 <fatfs_add_file_entry+0xd4>
    4880:	000d0913          	mv	s2,s10
    4884:	fadff06f          	j	4830 <fatfs_add_file_entry+0x100>
    4888:	0006c603          	lbu	a2,0(a3)
    488c:	0e500793          	li	a5,229
    4890:	0cf61c63          	bne	a2,a5,4968 <fatfs_add_file_entry+0x238>
    4894:	00091863          	bnez	s2,48a4 <fatfs_add_file_entry+0x174>
    4898:	00070a93          	mv	s5,a4
    489c:	00098a13          	mv	s4,s3
    48a0:	00100c13          	li	s8,1
    48a4:	00190d13          	addi	s10,s2,1
    48a8:	fc9940e3          	blt	s2,s1,4868 <fatfs_add_file_entry+0x138>
    48ac:	00bb8713          	addi	a4,s7,11
    48b0:	000b8793          	mv	a5,s7
    48b4:	00000913          	li	s2,0
    48b8:	0007c603          	lbu	a2,0(a5)
    48bc:	00791693          	slli	a3,s2,0x7
    48c0:	00195913          	srli	s2,s2,0x1
    48c4:	00c90933          	add	s2,s2,a2
    48c8:	00178793          	addi	a5,a5,1
    48cc:	00d90933          	add	s2,s2,a3
    48d0:	0ff97913          	zext.b	s2,s2
    48d4:	fee792e3          	bne	a5,a4,48b8 <fatfs_add_file_entry+0x188>
    48d8:	000a0993          	mv	s3,s4
    48dc:	00000d93          	li	s11,0
    48e0:	00000693          	li	a3,0
    48e4:	00098613          	mv	a2,s3
    48e8:	000b0593          	mv	a1,s6
    48ec:	00040513          	mv	a0,s0
    48f0:	ffffe097          	auipc	ra,0xffffe
    48f4:	6d8080e7          	jalr	1752(ra) # 2fc8 <fatfs_sector_reader>
    48f8:	e80502e3          	beqz	a0,477c <fatfs_add_file_entry+0x4c>
    48fc:	04440d13          	addi	s10,s0,68
    4900:	00000713          	li	a4,0
    4904:	00000793          	li	a5,0
    4908:	000d0c13          	mv	s8,s10
    490c:	000d9663          	bnez	s11,4918 <fatfs_add_file_entry+0x1e8>
    4910:	11499e63          	bne	s3,s4,4a2c <fatfs_add_file_entry+0x2fc>
    4914:	11579c63          	bne	a5,s5,4a2c <fatfs_add_file_entry+0x2fc>
    4918:	0e049463          	bnez	s1,4a00 <fatfs_add_file_entry+0x2d0>
    491c:	01412703          	lw	a4,20(sp)
    4920:	00c12603          	lw	a2,12(sp)
    4924:	01012583          	lw	a1,16(sp)
    4928:	02010693          	addi	a3,sp,32
    492c:	000b8513          	mv	a0,s7
    4930:	ffffe097          	auipc	ra,0xffffe
    4934:	8e0080e7          	jalr	-1824(ra) # 2210 <fatfs_sfn_create_entry>
    4938:	02000613          	li	a2,32
    493c:	02010593          	addi	a1,sp,32
    4940:	000d0513          	mv	a0,s10
    4944:	ffffd097          	auipc	ra,0xffffd
    4948:	83c080e7          	jalr	-1988(ra) # 1180 <memcpy>
    494c:	03842783          	lw	a5,56(s0)
    4950:	24442503          	lw	a0,580(s0)
    4954:	00100613          	li	a2,1
    4958:	000c0593          	mv	a1,s8
    495c:	000780e7          	jalr	a5
    4960:	00050913          	mv	s2,a0
    4964:	e1dff06f          	j	4780 <fatfs_add_file_entry+0x50>
    4968:	f20606e3          	beqz	a2,4894 <fatfs_add_file_entry+0x164>
    496c:	00000c13          	li	s8,0
    4970:	ef9ff06f          	j	4868 <fatfs_add_file_entry+0x138>
    4974:	00842583          	lw	a1,8(s0)
    4978:	02010613          	addi	a2,sp,32
    497c:	00040513          	mv	a0,s0
    4980:	fffff097          	auipc	ra,0xfffff
    4984:	3d0080e7          	jalr	976(ra) # 3d50 <fatfs_find_blank_cluster>
    4988:	de050ce3          	beqz	a0,4780 <fatfs_add_file_entry+0x50>
    498c:	02012d83          	lw	s11,32(sp)
    4990:	000b0593          	mv	a1,s6
    4994:	00040513          	mv	a0,s0
    4998:	000d8613          	mv	a2,s11
    499c:	fffff097          	auipc	ra,0xfffff
    49a0:	65c080e7          	jalr	1628(ra) # 3ff8 <fatfs_fat_add_cluster_to_chain>
    49a4:	dc050ee3          	beqz	a0,4780 <fatfs_add_file_entry+0x50>
    49a8:	20000613          	li	a2,512
    49ac:	00000593          	li	a1,0
    49b0:	04440513          	addi	a0,s0,68
    49b4:	ffffc097          	auipc	ra,0xffffc
    49b8:	7b0080e7          	jalr	1968(ra) # 1164 <memset>
    49bc:	00000d13          	li	s10,0
    49c0:	00044783          	lbu	a5,0(s0)
    49c4:	00fd6a63          	bltu	s10,a5,49d8 <fatfs_add_file_entry+0x2a8>
    49c8:	ee0c12e3          	bnez	s8,48ac <fatfs_add_file_entry+0x17c>
    49cc:	00098a13          	mv	s4,s3
    49d0:	00000a93          	li	s5,0
    49d4:	ed9ff06f          	j	48ac <fatfs_add_file_entry+0x17c>
    49d8:	00000693          	li	a3,0
    49dc:	000d0613          	mv	a2,s10
    49e0:	000d8593          	mv	a1,s11
    49e4:	00040513          	mv	a0,s0
    49e8:	ffffd097          	auipc	ra,0xffffd
    49ec:	3a4080e7          	jalr	932(ra) # 1d8c <fatfs_write_sector>
    49f0:	d80508e3          	beqz	a0,4780 <fatfs_add_file_entry+0x50>
    49f4:	001d0613          	addi	a2,s10,1
    49f8:	0ff67d13          	zext.b	s10,a2
    49fc:	fc5ff06f          	j	49c0 <fatfs_add_file_entry+0x290>
    4a00:	fff48493          	addi	s1,s1,-1
    4a04:	00090693          	mv	a3,s2
    4a08:	00048613          	mv	a2,s1
    4a0c:	000d0593          	mv	a1,s10
    4a10:	000c8513          	mv	a0,s9
    4a14:	00f12c23          	sw	a5,24(sp)
    4a18:	ffffd097          	auipc	ra,0xffffd
    4a1c:	6d0080e7          	jalr	1744(ra) # 20e8 <fatfs_filename_to_lfn>
    4a20:	01812783          	lw	a5,24(sp)
    4a24:	00100d93          	li	s11,1
    4a28:	00100713          	li	a4,1
    4a2c:	00178793          	addi	a5,a5,1
    4a30:	0ff7f793          	zext.b	a5,a5
    4a34:	01000693          	li	a3,16
    4a38:	020d0d13          	addi	s10,s10,32
    4a3c:	ecd798e3          	bne	a5,a3,490c <fatfs_add_file_entry+0x1dc>
    4a40:	00070e63          	beqz	a4,4a5c <fatfs_add_file_entry+0x32c>
    4a44:	03842783          	lw	a5,56(s0)
    4a48:	24442503          	lw	a0,580(s0)
    4a4c:	00100613          	li	a2,1
    4a50:	000c0593          	mv	a1,s8
    4a54:	000780e7          	jalr	a5
    4a58:	d20502e3          	beqz	a0,477c <fatfs_add_file_entry+0x4c>
    4a5c:	00198993          	addi	s3,s3,1
    4a60:	e81ff06f          	j	48e0 <fatfs_add_file_entry+0x1b0>

00004a64 <fl_fopen>:
    4a64:	000057b7          	lui	a5,0x5
    4a68:	1e47a783          	lw	a5,484(a5) # 51e4 <_filelib_init>
    4a6c:	fa010113          	addi	sp,sp,-96
    4a70:	04812c23          	sw	s0,88(sp)
    4a74:	05412423          	sw	s4,72(sp)
    4a78:	04112e23          	sw	ra,92(sp)
    4a7c:	04912a23          	sw	s1,84(sp)
    4a80:	05212823          	sw	s2,80(sp)
    4a84:	05312623          	sw	s3,76(sp)
    4a88:	05512223          	sw	s5,68(sp)
    4a8c:	05612023          	sw	s6,64(sp)
    4a90:	03712e23          	sw	s7,60(sp)
    4a94:	03812c23          	sw	s8,56(sp)
    4a98:	03912a23          	sw	s9,52(sp)
    4a9c:	00050a13          	mv	s4,a0
    4aa0:	00058413          	mv	s0,a1
    4aa4:	00079663          	bnez	a5,4ab0 <fl_fopen+0x4c>
    4aa8:	ffffd097          	auipc	ra,0xffffd
    4aac:	3a0080e7          	jalr	928(ra) # 1e48 <fl_init>
    4ab0:	000057b7          	lui	a5,0x5
    4ab4:	1e87a783          	lw	a5,488(a5) # 51e8 <_filelib_valid>
    4ab8:	30078263          	beqz	a5,4dbc <fl_fopen+0x358>
    4abc:	300a0063          	beqz	s4,4dbc <fl_fopen+0x358>
    4ac0:	10040463          	beqz	s0,4bc8 <fl_fopen+0x164>
    4ac4:	00040513          	mv	a0,s0
    4ac8:	ffffc097          	auipc	ra,0xffffc
    4acc:	6dc080e7          	jalr	1756(ra) # 11a4 <strlen>
    4ad0:	00000493          	li	s1,0
    4ad4:	00000713          	li	a4,0
    4ad8:	05700693          	li	a3,87
    4adc:	07200613          	li	a2,114
    4ae0:	07700813          	li	a6,119
    4ae4:	06100893          	li	a7,97
    4ae8:	06200313          	li	t1,98
    4aec:	04100593          	li	a1,65
    4af0:	04200e13          	li	t3,66
    4af4:	05200e93          	li	t4,82
    4af8:	02b00f13          	li	t5,43
    4afc:	10a74263          	blt	a4,a0,4c00 <fl_fopen+0x19c>
    4b00:	0000a937          	lui	s2,0xa
    4b04:	c4090793          	addi	a5,s2,-960 # 9c40 <_fs>
    4b08:	0387a783          	lw	a5,56(a5)
    4b0c:	c4090b13          	addi	s6,s2,-960
    4b10:	00079463          	bnez	a5,4b18 <fl_fopen+0xb4>
    4b14:	0d94f493          	andi	s1,s1,217
    4b18:	03cb2783          	lw	a5,60(s6)
    4b1c:	00078463          	beqz	a5,4b24 <fl_fopen+0xc0>
    4b20:	000780e7          	jalr	a5
    4b24:	0014fc13          	andi	s8,s1,1
    4b28:	160c1463          	bnez	s8,4c90 <fl_fopen+0x22c>
    4b2c:	0204f793          	andi	a5,s1,32
    4b30:	08078463          	beqz	a5,4bb8 <fl_fopen+0x154>
    4b34:	038b2783          	lw	a5,56(s6)
    4b38:	06078a63          	beqz	a5,4bac <fl_fopen+0x148>
    4b3c:	ffffd097          	auipc	ra,0xffffd
    4b40:	114080e7          	jalr	276(ra) # 1c50 <_allocate_file>
    4b44:	00050413          	mv	s0,a0
    4b48:	06050263          	beqz	a0,4bac <fl_fopen+0x148>
    4b4c:	01450b93          	addi	s7,a0,20
    4b50:	10400613          	li	a2,260
    4b54:	00000593          	li	a1,0
    4b58:	000b8513          	mv	a0,s7
    4b5c:	ffffc097          	auipc	ra,0xffffc
    4b60:	608080e7          	jalr	1544(ra) # 1164 <memset>
    4b64:	11840a93          	addi	s5,s0,280
    4b68:	10400613          	li	a2,260
    4b6c:	00000593          	li	a1,0
    4b70:	000a8513          	mv	a0,s5
    4b74:	ffffc097          	auipc	ra,0xffffc
    4b78:	5f0080e7          	jalr	1520(ra) # 1164 <memset>
    4b7c:	10400713          	li	a4,260
    4b80:	000a8693          	mv	a3,s5
    4b84:	10400613          	li	a2,260
    4b88:	000b8593          	mv	a1,s7
    4b8c:	000a0513          	mv	a0,s4
    4b90:	ffffe097          	auipc	ra,0xffffe
    4b94:	b74080e7          	jalr	-1164(ra) # 2704 <fatfs_split_path>
    4b98:	fff00793          	li	a5,-1
    4b9c:	10f51863          	bne	a0,a5,4cac <fl_fopen+0x248>
    4ba0:	00040513          	mv	a0,s0
    4ba4:	ffffd097          	auipc	ra,0xffffd
    4ba8:	120080e7          	jalr	288(ra) # 1cc4 <_free_file>
    4bac:	000c1663          	bnez	s8,4bb8 <fl_fopen+0x154>
    4bb0:	0064f793          	andi	a5,s1,6
    4bb4:	1e079a63          	bnez	a5,4da8 <fl_fopen+0x344>
    4bb8:	00000413          	li	s0,0
    4bbc:	040b2783          	lw	a5,64(s6)
    4bc0:	00078463          	beqz	a5,4bc8 <fl_fopen+0x164>
    4bc4:	000780e7          	jalr	a5
    4bc8:	05c12083          	lw	ra,92(sp)
    4bcc:	00040513          	mv	a0,s0
    4bd0:	05812403          	lw	s0,88(sp)
    4bd4:	05412483          	lw	s1,84(sp)
    4bd8:	05012903          	lw	s2,80(sp)
    4bdc:	04c12983          	lw	s3,76(sp)
    4be0:	04812a03          	lw	s4,72(sp)
    4be4:	04412a83          	lw	s5,68(sp)
    4be8:	04012b03          	lw	s6,64(sp)
    4bec:	03c12b83          	lw	s7,60(sp)
    4bf0:	03812c03          	lw	s8,56(sp)
    4bf4:	03412c83          	lw	s9,52(sp)
    4bf8:	06010113          	addi	sp,sp,96
    4bfc:	00008067          	ret
    4c00:	00e407b3          	add	a5,s0,a4
    4c04:	0007c783          	lbu	a5,0(a5)
    4c08:	04d78463          	beq	a5,a3,4c50 <fl_fopen+0x1ec>
    4c0c:	02f6e463          	bltu	a3,a5,4c34 <fl_fopen+0x1d0>
    4c10:	04b78463          	beq	a5,a1,4c58 <fl_fopen+0x1f4>
    4c14:	00f5e863          	bltu	a1,a5,4c24 <fl_fopen+0x1c0>
    4c18:	05e78463          	beq	a5,t5,4c60 <fl_fopen+0x1fc>
    4c1c:	00170713          	addi	a4,a4,1
    4c20:	eddff06f          	j	4afc <fl_fopen+0x98>
    4c24:	03c78063          	beq	a5,t3,4c44 <fl_fopen+0x1e0>
    4c28:	ffd79ae3          	bne	a5,t4,4c1c <fl_fopen+0x1b8>
    4c2c:	0014e493          	ori	s1,s1,1
    4c30:	fedff06f          	j	4c1c <fl_fopen+0x1b8>
    4c34:	fec78ce3          	beq	a5,a2,4c2c <fl_fopen+0x1c8>
    4c38:	00f66a63          	bltu	a2,a5,4c4c <fl_fopen+0x1e8>
    4c3c:	01178e63          	beq	a5,a7,4c58 <fl_fopen+0x1f4>
    4c40:	fc679ee3          	bne	a5,t1,4c1c <fl_fopen+0x1b8>
    4c44:	0084e493          	ori	s1,s1,8
    4c48:	fd5ff06f          	j	4c1c <fl_fopen+0x1b8>
    4c4c:	fd0798e3          	bne	a5,a6,4c1c <fl_fopen+0x1b8>
    4c50:	0324e493          	ori	s1,s1,50
    4c54:	fc9ff06f          	j	4c1c <fl_fopen+0x1b8>
    4c58:	0264e493          	ori	s1,s1,38
    4c5c:	fc1ff06f          	j	4c1c <fl_fopen+0x1b8>
    4c60:	0014f793          	andi	a5,s1,1
    4c64:	00078663          	beqz	a5,4c70 <fl_fopen+0x20c>
    4c68:	0024e493          	ori	s1,s1,2
    4c6c:	fb1ff06f          	j	4c1c <fl_fopen+0x1b8>
    4c70:	0024f793          	andi	a5,s1,2
    4c74:	00078663          	beqz	a5,4c80 <fl_fopen+0x21c>
    4c78:	0314e493          	ori	s1,s1,49
    4c7c:	fa1ff06f          	j	4c1c <fl_fopen+0x1b8>
    4c80:	0044f793          	andi	a5,s1,4
    4c84:	f8078ce3          	beqz	a5,4c1c <fl_fopen+0x1b8>
    4c88:	0274e493          	ori	s1,s1,39
    4c8c:	f91ff06f          	j	4c1c <fl_fopen+0x1b8>
    4c90:	000a0513          	mv	a0,s4
    4c94:	fffff097          	auipc	ra,0xfffff
    4c98:	830080e7          	jalr	-2000(ra) # 34c4 <_open_file>
    4c9c:	00050413          	mv	s0,a0
    4ca0:	e80506e3          	beqz	a0,4b2c <fl_fopen+0xc8>
    4ca4:	42940c23          	sb	s1,1080(s0)
    4ca8:	f15ff06f          	j	4bbc <fl_fopen+0x158>
    4cac:	00040513          	mv	a0,s0
    4cb0:	ffffe097          	auipc	ra,0xffffe
    4cb4:	ca4080e7          	jalr	-860(ra) # 2954 <_check_file_open>
    4cb8:	00050993          	mv	s3,a0
    4cbc:	ee0512e3          	bnez	a0,4ba0 <fl_fopen+0x13c>
    4cc0:	01444783          	lbu	a5,20(s0)
    4cc4:	0a079a63          	bnez	a5,4d78 <fl_fopen+0x314>
    4cc8:	008b2783          	lw	a5,8(s6)
    4ccc:	00f42023          	sw	a5,0(s0)
    4cd0:	00042583          	lw	a1,0(s0)
    4cd4:	01010693          	addi	a3,sp,16
    4cd8:	000a8613          	mv	a2,s5
    4cdc:	c4090513          	addi	a0,s2,-960
    4ce0:	ffffe097          	auipc	ra,0xffffe
    4ce4:	428080e7          	jalr	1064(ra) # 3108 <fatfs_get_file_entry>
    4ce8:	00100793          	li	a5,1
    4cec:	eaf50ae3          	beq	a0,a5,4ba0 <fl_fopen+0x13c>
    4cf0:	00042223          	sw	zero,4(s0)
    4cf4:	00100693          	li	a3,1
    4cf8:	00440613          	addi	a2,s0,4
    4cfc:	00100593          	li	a1,1
    4d00:	c4090513          	addi	a0,s2,-960
    4d04:	00000097          	auipc	ra,0x0
    4d08:	924080e7          	jalr	-1756(ra) # 4628 <fatfs_allocate_free_space.part.0>
    4d0c:	e8050ae3          	beqz	a0,4ba0 <fl_fopen+0x13c>
    4d10:	00002cb7          	lui	s9,0x2
    4d14:	21c40b93          	addi	s7,s0,540
    4d18:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_split_path+0xb>
    4d1c:	000a8593          	mv	a1,s5
    4d20:	00410513          	addi	a0,sp,4
    4d24:	ffffd097          	auipc	ra,0xffffd
    4d28:	590080e7          	jalr	1424(ra) # 22b4 <fatfs_lfn_create_sfn>
    4d2c:	06098263          	beqz	s3,4d90 <fl_fopen+0x32c>
    4d30:	00098613          	mv	a2,s3
    4d34:	00410593          	addi	a1,sp,4
    4d38:	000b8513          	mv	a0,s7
    4d3c:	ffffd097          	auipc	ra,0xffffd
    4d40:	6f0080e7          	jalr	1776(ra) # 242c <fatfs_lfn_generate_tail>
    4d44:	00042583          	lw	a1,0(s0)
    4d48:	000b8613          	mv	a2,s7
    4d4c:	c4090513          	addi	a0,s2,-960
    4d50:	fffff097          	auipc	ra,0xfffff
    4d54:	8ec080e7          	jalr	-1812(ra) # 363c <fatfs_sfn_exists>
    4d58:	06050663          	beqz	a0,4dc4 <fl_fopen+0x360>
    4d5c:	00198993          	addi	s3,s3,1
    4d60:	fb999ee3          	bne	s3,s9,4d1c <fl_fopen+0x2b8>
    4d64:	00442583          	lw	a1,4(s0)
    4d68:	c4090513          	addi	a0,s2,-960
    4d6c:	fffff097          	auipc	ra,0xfffff
    4d70:	21c080e7          	jalr	540(ra) # 3f88 <fatfs_free_cluster_chain>
    4d74:	e2dff06f          	j	4ba0 <fl_fopen+0x13c>
    4d78:	00040593          	mv	a1,s0
    4d7c:	000b8513          	mv	a0,s7
    4d80:	ffffe097          	auipc	ra,0xffffe
    4d84:	590080e7          	jalr	1424(ra) # 3310 <_open_directory>
    4d88:	f40514e3          	bnez	a0,4cd0 <fl_fopen+0x26c>
    4d8c:	e15ff06f          	j	4ba0 <fl_fopen+0x13c>
    4d90:	00b00613          	li	a2,11
    4d94:	00410593          	addi	a1,sp,4
    4d98:	000b8513          	mv	a0,s7
    4d9c:	ffffc097          	auipc	ra,0xffffc
    4da0:	3e4080e7          	jalr	996(ra) # 1180 <memcpy>
    4da4:	fa1ff06f          	j	4d44 <fl_fopen+0x2e0>
    4da8:	000a0513          	mv	a0,s4
    4dac:	ffffe097          	auipc	ra,0xffffe
    4db0:	718080e7          	jalr	1816(ra) # 34c4 <_open_file>
    4db4:	00050413          	mv	s0,a0
    4db8:	0640006f          	j	4e1c <fl_fopen+0x3b8>
    4dbc:	00000413          	li	s0,0
    4dc0:	e09ff06f          	j	4bc8 <fl_fopen+0x164>
    4dc4:	00442703          	lw	a4,4(s0)
    4dc8:	00042583          	lw	a1,0(s0)
    4dcc:	00000813          	li	a6,0
    4dd0:	00000793          	li	a5,0
    4dd4:	000b8693          	mv	a3,s7
    4dd8:	000a8613          	mv	a2,s5
    4ddc:	c4090513          	addi	a0,s2,-960
    4de0:	00000097          	auipc	ra,0x0
    4de4:	950080e7          	jalr	-1712(ra) # 4730 <fatfs_add_file_entry>
    4de8:	f6050ee3          	beqz	a0,4d64 <fl_fopen+0x300>
    4dec:	fff00793          	li	a5,-1
    4df0:	00042623          	sw	zero,12(s0)
    4df4:	00042423          	sw	zero,8(s0)
    4df8:	42f42823          	sw	a5,1072(s0)
    4dfc:	42042a23          	sw	zero,1076(s0)
    4e00:	00042823          	sw	zero,16(s0)
    4e04:	22f42423          	sw	a5,552(s0)
    4e08:	22f42623          	sw	a5,556(s0)
    4e0c:	c4090513          	addi	a0,s2,-960
    4e10:	ffffe097          	auipc	ra,0xffffe
    4e14:	04c080e7          	jalr	76(ra) # 2e5c <fatfs_fat_purge>
    4e18:	e80c06e3          	beqz	s8,4ca4 <fl_fopen+0x240>
    4e1c:	e80414e3          	bnez	s0,4ca4 <fl_fopen+0x240>
    4e20:	d99ff06f          	j	4bb8 <fl_fopen+0x154>

00004e24 <acmd41>:
    4e24:	00004069 00000100                       i@......

00004e2c <cmd0>:
    4e2c:	00000040 00009500                       @.......

00004e34 <cmd16>:
    4e34:	02000050 00001500                       P.......

00004e3c <cmd55>:
    4e3c:	00000077 00000100                       w.......

00004e44 <cmd8>:
    4e44:	01000048 000087aa                       H.......

00004e4c <AUDIO>:
    4e4c:	00018000                                ....

00004e50 <BUTTONS>:
    4e50:	00010100                                ....

00004e54 <LEDS>:
    4e54:	00010004                                ....

00004e58 <OLED>:
    4e58:	00010008                                ....

00004e5c <OLED_RST>:
    4e5c:	00010010                                ....

00004e60 <SDCARD>:
    4e60:	00010080 676d492f 0000002f 4f525245     ..../Img/...ERRO
    4e70:	61702052 74206874 6c206f6f 65677261     R path too large
    4e80:	0000000a 00006272 2e676d69 20776172     ....rb..img.raw 
    4e90:	20746f6e 6e756f66 000a2e64 636f522f     not found.../Roc
    4ea0:	0000006b 642e6f72 00617461 616c432f     k...ro.data./Cla
    4eb0:	63697373 00000000 642e6363 00617461     ssic....cc.data.
    4ec0:	706f502f 00000000 61642e70 00006174     /Pop....p.data..
    4ed0:	656c452f 6f727463 0063696e 61642e65     /Electronic.e.da
    4ee0:	00006174 676d492f 2e63672f 00776172     ta../Img/gc.raw.
    4ef0:	656c6966 746f6e20 756f6620 0a2e646e     file not found..
    4f00:	00000000 57202020 4f434c45 2120454d     ....   WELCOME !
    4f10:	21202120 20202020 00000a0a 676d492f      ! !    ..../Img
    4f20:	6269622f 7761722e 00000000 20746f6e     /bib.raw....not 
    4f30:	6e756f66 25203a64 00000a73 79616c70     found: %s...play
    4f40:	20676e69 202e2e2e 00000000 20202020     ing ... ....    
    4f50:	3d3d3d3d 6f53203d 2073676e 3d3d3d3d     ===== Songs ====
    4f60:	2020203d 000a0a20 203e6425 000a7325     =    ...%d> %s..

00004f70 <font>:
    4f70:	00000000 00002f00 00030000 14000003     ...../..........
    4f80:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4f90:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4fa0:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4fb0:	00080800 00200000 20000000 02040810     ...... .... ....
    4fc0:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4fd0:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4fe0:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4ff0:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5000:	00141400 0a110000 01000004 0007052d     ............-...
    5010:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5020:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5030:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5040:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5050:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5060:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5070:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5080:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5090:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    50a0:	003f2102 01020000 20000201 00000020     .!?........  ...
    50b0:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    50c0:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    50d0:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    50e0:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    50f0:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5100:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5110:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5120:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5130:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5140:	043f2100 02010000 00000102 00000000     .!?.............
    5150:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5160:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    5170:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    5180:	54414620 74656420 736c6961 64252820      FAT details (%d
    5190:	0a0d2129 00000000 00000001 00000003     )!..............
    51a0:	00000005 00000007 00000009 0000000e     ................
    51b0:	00000010 00000012 00000014 00000016     ................
    51c0:	00000018 0000001c 0000001e              ............

000051cc <sdcard_while_loading_callback>:
    51cc:	00000000                                ....

000051d0 <back_color>:
    51d0:	00000000                                ....

000051d4 <cursor_x>:
    51d4:	00000000                                ....

000051d8 <cursor_y>:
    51d8:	00000000                                ....

000051dc <front_color>:
    51dc:	00000000                                ....

000051e0 <f_putchar>:
    51e0:	00000000                                ....

000051e4 <_filelib_init>:
    51e4:	00000000                                ....

000051e8 <_filelib_valid>:
    51e8:	00000000                                ....

000051ec <_free_file_list>:
	...

000051f4 <_open_file_list>:
	...
