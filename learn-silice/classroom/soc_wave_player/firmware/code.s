
code.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	7dc080e7          	jalr	2012(ra) # 7e0 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_fs+0x6328>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	ec47a403          	lw	s0,-316(a5) # 4ec4 <AUDIO>
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
      54:	18c080e7          	jalr	396(ra) # 11dc <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	16c080e7          	jalr	364(ra) # 11dc <memset>
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
      ac:	4a4080e7          	jalr	1188(ra) # 154c <display_framebuffer>
      b0:	00004637          	lui	a2,0x4
      b4:	00000593          	li	a1,0
      b8:	00001097          	auipc	ra,0x1
      bc:	124080e7          	jalr	292(ra) # 11dc <memset>
      c0:	00010413          	mv	s0,sp
      c4:	000055b7          	lui	a1,0x5
      c8:	edc58593          	addi	a1,a1,-292 # 4edc <SDCARD+0x4>
      cc:	00040513          	mv	a0,s0
      d0:	00010023          	sb	zero,0(sp)
      d4:	00001097          	auipc	ra,0x1
      d8:	1ec080e7          	jalr	492(ra) # 12c0 <strcat>
      dc:	00048593          	mv	a1,s1
      e0:	00040513          	mv	a0,s0
      e4:	00001097          	auipc	ra,0x1
      e8:	1dc080e7          	jalr	476(ra) # 12c0 <strcat>
      ec:	40850533          	sub	a0,a0,s0
      f0:	04000793          	li	a5,64
      f4:	02a7d863          	bge	a5,a0,124 <openImage+0x90>
      f8:	000057b7          	lui	a5,0x5
      fc:	ecc7a783          	lw	a5,-308(a5) # 4ecc <LEDS>
     100:	00f00713          	li	a4,15
     104:	00005537          	lui	a0,0x5
     108:	00e7a023          	sw	a4,0(a5)
     10c:	ee450513          	addi	a0,a0,-284 # 4ee4 <SDCARD+0xc>
     110:	00001097          	auipc	ra,0x1
     114:	7d8080e7          	jalr	2008(ra) # 18e8 <printf>
     118:	00001097          	auipc	ra,0x1
     11c:	5d0080e7          	jalr	1488(ra) # 16e8 <display_refresh>
     120:	0000006f          	j	120 <openImage+0x8c>
     124:	000055b7          	lui	a1,0x5
     128:	00040513          	mv	a0,s0
     12c:	efc58593          	addi	a1,a1,-260 # 4efc <SDCARD+0x24>
     130:	00005097          	auipc	ra,0x5
     134:	9ac080e7          	jalr	-1620(ra) # 4adc <fl_fopen>
     138:	00050413          	mv	s0,a0
     13c:	02051863          	bnez	a0,16c <openImage+0xd8>
     140:	00005537          	lui	a0,0x5
     144:	f0050513          	addi	a0,a0,-256 # 4f00 <SDCARD+0x28>
     148:	00001097          	auipc	ra,0x1
     14c:	7a0080e7          	jalr	1952(ra) # 18e8 <printf>
     150:	00001097          	auipc	ra,0x1
     154:	598080e7          	jalr	1432(ra) # 16e8 <display_refresh>
     158:	02c12083          	lw	ra,44(sp)
     15c:	02812403          	lw	s0,40(sp)
     160:	02412483          	lw	s1,36(sp)
     164:	03010113          	addi	sp,sp,48
     168:	00008067          	ret
     16c:	00001097          	auipc	ra,0x1
     170:	57c080e7          	jalr	1404(ra) # 16e8 <display_refresh>
     174:	00001097          	auipc	ra,0x1
     178:	3d8080e7          	jalr	984(ra) # 154c <display_framebuffer>
     17c:	00040693          	mv	a3,s0
     180:	00004637          	lui	a2,0x4
     184:	00100593          	li	a1,1
     188:	00004097          	auipc	ra,0x4
     18c:	374080e7          	jalr	884(ra) # 44fc <fl_fread>
     190:	00001097          	auipc	ra,0x1
     194:	558080e7          	jalr	1368(ra) # 16e8 <display_refresh>
     198:	00040513          	mv	a0,s0
     19c:	00004097          	auipc	ra,0x4
     1a0:	280080e7          	jalr	640(ra) # 441c <fl_fclose>
     1a4:	fb5ff06f          	j	158 <openImage+0xc4>

000001a8 <selectImage>:
     1a8:	000055b7          	lui	a1,0x5
     1ac:	ff010113          	addi	sp,sp,-16
     1b0:	00400613          	li	a2,4
     1b4:	f1458593          	addi	a1,a1,-236 # 4f14 <SDCARD+0x3c>
     1b8:	00812423          	sw	s0,8(sp)
     1bc:	00112623          	sw	ra,12(sp)
     1c0:	00050413          	mv	s0,a0
     1c4:	00001097          	auipc	ra,0x1
     1c8:	078080e7          	jalr	120(ra) # 123c <strncmp>
     1cc:	00051e63          	bnez	a0,1e8 <selectImage+0x40>
     1d0:	00001097          	auipc	ra,0x1
     1d4:	518080e7          	jalr	1304(ra) # 16e8 <display_refresh>
     1d8:	00005537          	lui	a0,0x5
     1dc:	f1c50513          	addi	a0,a0,-228 # 4f1c <SDCARD+0x44>
     1e0:	00000097          	auipc	ra,0x0
     1e4:	eb4080e7          	jalr	-332(ra) # 94 <openImage>
     1e8:	000055b7          	lui	a1,0x5
     1ec:	00700613          	li	a2,7
     1f0:	f2458593          	addi	a1,a1,-220 # 4f24 <SDCARD+0x4c>
     1f4:	00040513          	mv	a0,s0
     1f8:	00001097          	auipc	ra,0x1
     1fc:	044080e7          	jalr	68(ra) # 123c <strncmp>
     200:	00051e63          	bnez	a0,21c <selectImage+0x74>
     204:	00001097          	auipc	ra,0x1
     208:	4e4080e7          	jalr	1252(ra) # 16e8 <display_refresh>
     20c:	00005537          	lui	a0,0x5
     210:	f3050513          	addi	a0,a0,-208 # 4f30 <SDCARD+0x58>
     214:	00000097          	auipc	ra,0x0
     218:	e80080e7          	jalr	-384(ra) # 94 <openImage>
     21c:	000055b7          	lui	a1,0x5
     220:	00300613          	li	a2,3
     224:	f3858593          	addi	a1,a1,-200 # 4f38 <SDCARD+0x60>
     228:	00040513          	mv	a0,s0
     22c:	00001097          	auipc	ra,0x1
     230:	010080e7          	jalr	16(ra) # 123c <strncmp>
     234:	00051e63          	bnez	a0,250 <selectImage+0xa8>
     238:	00001097          	auipc	ra,0x1
     23c:	4b0080e7          	jalr	1200(ra) # 16e8 <display_refresh>
     240:	00005537          	lui	a0,0x5
     244:	f4050513          	addi	a0,a0,-192 # 4f40 <SDCARD+0x68>
     248:	00000097          	auipc	ra,0x0
     24c:	e4c080e7          	jalr	-436(ra) # 94 <openImage>
     250:	000055b7          	lui	a1,0x5
     254:	00a00613          	li	a2,10
     258:	f4858593          	addi	a1,a1,-184 # 4f48 <SDCARD+0x70>
     25c:	00040513          	mv	a0,s0
     260:	00001097          	auipc	ra,0x1
     264:	fdc080e7          	jalr	-36(ra) # 123c <strncmp>
     268:	02051463          	bnez	a0,290 <selectImage+0xe8>
     26c:	00001097          	auipc	ra,0x1
     270:	47c080e7          	jalr	1148(ra) # 16e8 <display_refresh>
     274:	00812403          	lw	s0,8(sp)
     278:	00c12083          	lw	ra,12(sp)
     27c:	00005537          	lui	a0,0x5
     280:	f5450513          	addi	a0,a0,-172 # 4f54 <SDCARD+0x7c>
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
     2ac:	efc58593          	addi	a1,a1,-260 # 4efc <SDCARD+0x24>
     2b0:	f5c50513          	addi	a0,a0,-164 # 4f5c <SDCARD+0x84>
     2b4:	02112623          	sw	ra,44(sp)
     2b8:	02812423          	sw	s0,40(sp)
     2bc:	02912223          	sw	s1,36(sp)
     2c0:	03212023          	sw	s2,32(sp)
     2c4:	01312e23          	sw	s3,28(sp)
     2c8:	01412c23          	sw	s4,24(sp)
     2cc:	01512a23          	sw	s5,20(sp)
     2d0:	01612823          	sw	s6,16(sp)
     2d4:	01712623          	sw	s7,12(sp)
     2d8:	00005097          	auipc	ra,0x5
     2dc:	804080e7          	jalr	-2044(ra) # 4adc <fl_fopen>
     2e0:	04051263          	bnez	a0,324 <openJingle+0x84>
     2e4:	00005537          	lui	a0,0x5
     2e8:	f6850513          	addi	a0,a0,-152 # 4f68 <SDCARD+0x90>
     2ec:	00001097          	auipc	ra,0x1
     2f0:	5fc080e7          	jalr	1532(ra) # 18e8 <printf>
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
     320:	3cc30067          	jr	972(t1) # 16e8 <display_refresh>
     324:	00000593          	li	a1,0
     328:	00050493          	mv	s1,a0
     32c:	0ff00513          	li	a0,255
     330:	00001097          	auipc	ra,0x1
     334:	23c080e7          	jalr	572(ra) # 156c <display_set_front_back_color>
     338:	00005537          	lui	a0,0x5
     33c:	f7c50513          	addi	a0,a0,-132 # 4f7c <SDCARD+0xa4>
     340:	00001097          	auipc	ra,0x1
     344:	5a8080e7          	jalr	1448(ra) # 18e8 <printf>
     348:	00001097          	auipc	ra,0x1
     34c:	3a0080e7          	jalr	928(ra) # 16e8 <display_refresh>
     350:	000057b7          	lui	a5,0x5
     354:	ec47a983          	lw	s3,-316(a5) # 4ec4 <AUDIO>
     358:	000057b7          	lui	a5,0x5
     35c:	ecc7a783          	lw	a5,-308(a5) # 4ecc <LEDS>
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
     38c:	174080e7          	jalr	372(ra) # 44fc <fl_fread>
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
     3f8:	02830067          	jr	40(t1) # 441c <fl_fclose>

000003fc <openBruitage>:
     3fc:	000055b7          	lui	a1,0x5
     400:	00005537          	lui	a0,0x5
     404:	fe010113          	addi	sp,sp,-32
     408:	efc58593          	addi	a1,a1,-260 # 4efc <SDCARD+0x24>
     40c:	f9450513          	addi	a0,a0,-108 # 4f94 <SDCARD+0xbc>
     410:	00112e23          	sw	ra,28(sp)
     414:	00812c23          	sw	s0,24(sp)
     418:	00912a23          	sw	s1,20(sp)
     41c:	01212823          	sw	s2,16(sp)
     420:	01312623          	sw	s3,12(sp)
     424:	00004097          	auipc	ra,0x4
     428:	6b8080e7          	jalr	1720(ra) # 4adc <fl_fopen>
     42c:	04050063          	beqz	a0,46c <openBruitage+0x70>
     430:	000057b7          	lui	a5,0x5
     434:	ec47a483          	lw	s1,-316(a5) # 4ec4 <AUDIO>
     438:	00050413          	mv	s0,a0
     43c:	1ff00993          	li	s3,511
     440:	0004a903          	lw	s2,0(s1)
     444:	00040693          	mv	a3,s0
     448:	20000613          	li	a2,512
     44c:	00100593          	li	a1,1
     450:	00090513          	mv	a0,s2
     454:	00004097          	auipc	ra,0x4
     458:	0a8080e7          	jalr	168(ra) # 44fc <fl_fread>
     45c:	04a9d063          	bge	s3,a0,49c <openBruitage+0xa0>
     460:	0004a783          	lw	a5,0(s1)
     464:	fef90ee3          	beq	s2,a5,460 <openBruitage+0x64>
     468:	fd9ff06f          	j	440 <openBruitage+0x44>
     46c:	00005537          	lui	a0,0x5
     470:	f6850513          	addi	a0,a0,-152 # 4f68 <SDCARD+0x90>
     474:	00001097          	auipc	ra,0x1
     478:	474080e7          	jalr	1140(ra) # 18e8 <printf>
     47c:	01812403          	lw	s0,24(sp)
     480:	01c12083          	lw	ra,28(sp)
     484:	01412483          	lw	s1,20(sp)
     488:	01012903          	lw	s2,16(sp)
     48c:	00c12983          	lw	s3,12(sp)
     490:	02010113          	addi	sp,sp,32
     494:	00001317          	auipc	t1,0x1
     498:	25430067          	jr	596(t1) # 16e8 <display_refresh>
     49c:	00040513          	mv	a0,s0
     4a0:	01812403          	lw	s0,24(sp)
     4a4:	01c12083          	lw	ra,28(sp)
     4a8:	01412483          	lw	s1,20(sp)
     4ac:	01012903          	lw	s2,16(sp)
     4b0:	00c12983          	lw	s3,12(sp)
     4b4:	02010113          	addi	sp,sp,32
     4b8:	00004317          	auipc	t1,0x4
     4bc:	f6430067          	jr	-156(t1) # 441c <fl_fclose>

000004c0 <openMusic>:
     4c0:	fa010113          	addi	sp,sp,-96
     4c4:	000057b7          	lui	a5,0x5
     4c8:	04812c23          	sw	s0,88(sp)
     4cc:	ecc7a403          	lw	s0,-308(a5) # 4ecc <LEDS>
     4d0:	04112e23          	sw	ra,92(sp)
     4d4:	0ff00793          	li	a5,255
     4d8:	04912a23          	sw	s1,84(sp)
     4dc:	05212823          	sw	s2,80(sp)
     4e0:	05312623          	sw	s3,76(sp)
     4e4:	05412423          	sw	s4,72(sp)
     4e8:	05512223          	sw	s5,68(sp)
     4ec:	05612023          	sw	s6,64(sp)
     4f0:	03712e23          	sw	s7,60(sp)
     4f4:	03812c23          	sw	s8,56(sp)
     4f8:	03912a23          	sw	s9,52(sp)
     4fc:	03a12823          	sw	s10,48(sp)
     500:	03b12623          	sw	s11,44(sp)
     504:	00f42023          	sw	a5,0(s0)
     508:	00058993          	mv	s3,a1
     50c:	00050913          	mv	s2,a0
     510:	00001097          	auipc	ra,0x1
     514:	03c080e7          	jalr	60(ra) # 154c <display_framebuffer>
     518:	00004637          	lui	a2,0x4
     51c:	00000593          	li	a1,0
     520:	00001097          	auipc	ra,0x1
     524:	cbc080e7          	jalr	-836(ra) # 11dc <memset>
     528:	00001097          	auipc	ra,0x1
     52c:	1c0080e7          	jalr	448(ra) # 16e8 <display_refresh>
     530:	00100793          	li	a5,1
     534:	00f42023          	sw	a5,0(s0)
     538:	00000593          	li	a1,0
     53c:	00000513          	li	a0,0
     540:	00001097          	auipc	ra,0x1
     544:	018080e7          	jalr	24(ra) # 1558 <display_set_cursor>
     548:	00000593          	li	a1,0
     54c:	0ff00513          	li	a0,255
     550:	00001097          	auipc	ra,0x1
     554:	01c080e7          	jalr	28(ra) # 156c <display_set_front_back_color>
     558:	00001097          	auipc	ra,0x1
     55c:	190080e7          	jalr	400(ra) # 16e8 <display_refresh>
     560:	00200793          	li	a5,2
     564:	00010493          	mv	s1,sp
     568:	00f42023          	sw	a5,0(s0)
     56c:	00090593          	mv	a1,s2
     570:	00048513          	mv	a0,s1
     574:	00010023          	sb	zero,0(sp)
     578:	00001097          	auipc	ra,0x1
     57c:	d48080e7          	jalr	-696(ra) # 12c0 <strcat>
     580:	000055b7          	lui	a1,0x5
     584:	ee058593          	addi	a1,a1,-288 # 4ee0 <SDCARD+0x8>
     588:	00048513          	mv	a0,s1
     58c:	00001097          	auipc	ra,0x1
     590:	d34080e7          	jalr	-716(ra) # 12c0 <strcat>
     594:	00098593          	mv	a1,s3
     598:	00048513          	mv	a0,s1
     59c:	00001097          	auipc	ra,0x1
     5a0:	d24080e7          	jalr	-732(ra) # 12c0 <strcat>
     5a4:	40950533          	sub	a0,a0,s1
     5a8:	04000793          	li	a5,64
     5ac:	02a7d463          	bge	a5,a0,5d4 <openMusic+0x114>
     5b0:	00f00793          	li	a5,15
     5b4:	00005537          	lui	a0,0x5
     5b8:	00f42023          	sw	a5,0(s0)
     5bc:	ee450513          	addi	a0,a0,-284 # 4ee4 <SDCARD+0xc>
     5c0:	00001097          	auipc	ra,0x1
     5c4:	328080e7          	jalr	808(ra) # 18e8 <printf>
     5c8:	00001097          	auipc	ra,0x1
     5cc:	120080e7          	jalr	288(ra) # 16e8 <display_refresh>
     5d0:	0000006f          	j	5d0 <openMusic+0x110>
     5d4:	00400793          	li	a5,4
     5d8:	00f42023          	sw	a5,0(s0)
     5dc:	00001097          	auipc	ra,0x1
     5e0:	10c080e7          	jalr	268(ra) # 16e8 <display_refresh>
     5e4:	00090513          	mv	a0,s2
     5e8:	00000097          	auipc	ra,0x0
     5ec:	bc0080e7          	jalr	-1088(ra) # 1a8 <selectImage>
     5f0:	000055b7          	lui	a1,0x5
     5f4:	efc58593          	addi	a1,a1,-260 # 4efc <SDCARD+0x24>
     5f8:	00048513          	mv	a0,s1
     5fc:	00004097          	auipc	ra,0x4
     600:	4e0080e7          	jalr	1248(ra) # 4adc <fl_fopen>
     604:	00050913          	mv	s2,a0
     608:	06051263          	bnez	a0,66c <openMusic+0x1ac>
     60c:	00005537          	lui	a0,0x5
     610:	00048593          	mv	a1,s1
     614:	fa450513          	addi	a0,a0,-92 # 4fa4 <SDCARD+0xcc>
     618:	00001097          	auipc	ra,0x1
     61c:	2d0080e7          	jalr	720(ra) # 18e8 <printf>
     620:	00001097          	auipc	ra,0x1
     624:	0c8080e7          	jalr	200(ra) # 16e8 <display_refresh>
     628:	00800793          	li	a5,8
     62c:	05c12083          	lw	ra,92(sp)
     630:	00f42023          	sw	a5,0(s0)
     634:	05812403          	lw	s0,88(sp)
     638:	05412483          	lw	s1,84(sp)
     63c:	05012903          	lw	s2,80(sp)
     640:	04c12983          	lw	s3,76(sp)
     644:	04812a03          	lw	s4,72(sp)
     648:	04412a83          	lw	s5,68(sp)
     64c:	04012b03          	lw	s6,64(sp)
     650:	03c12b83          	lw	s7,60(sp)
     654:	03812c03          	lw	s8,56(sp)
     658:	03412c83          	lw	s9,52(sp)
     65c:	03012d03          	lw	s10,48(sp)
     660:	02c12d83          	lw	s11,44(sp)
     664:	06010113          	addi	sp,sp,96
     668:	00008067          	ret
     66c:	01000793          	li	a5,16
     670:	00f42023          	sw	a5,0(s0)
     674:	00a00593          	li	a1,10
     678:	00000513          	li	a0,0
     67c:	00001097          	auipc	ra,0x1
     680:	edc080e7          	jalr	-292(ra) # 1558 <display_set_cursor>
     684:	00000593          	li	a1,0
     688:	0ff00513          	li	a0,255
     68c:	00001097          	auipc	ra,0x1
     690:	ee0080e7          	jalr	-288(ra) # 156c <display_set_front_back_color>
     694:	00005bb7          	lui	s7,0x5
     698:	fb4b8513          	addi	a0,s7,-76 # 4fb4 <SDCARD+0xdc>
     69c:	00001097          	auipc	ra,0x1
     6a0:	24c080e7          	jalr	588(ra) # 18e8 <printf>
     6a4:	00001097          	auipc	ra,0x1
     6a8:	044080e7          	jalr	68(ra) # 16e8 <display_refresh>
     6ac:	000057b7          	lui	a5,0x5
     6b0:	ec47ab03          	lw	s6,-316(a5) # 4ec4 <AUDIO>
     6b4:	000057b7          	lui	a5,0x5
     6b8:	ec87aa83          	lw	s5,-312(a5) # 4ec8 <BUTTONS>
     6bc:	00100993          	li	s3,1
     6c0:	00000a13          	li	s4,0
     6c4:	00100493          	li	s1,1
     6c8:	1ff00c13          	li	s8,511
     6cc:	00005cb7          	lui	s9,0x5
     6d0:	08000d13          	li	s10,128
     6d4:	000b2d83          	lw	s11,0(s6)
     6d8:	04098a63          	beqz	s3,72c <openMusic+0x26c>
     6dc:	00090693          	mv	a3,s2
     6e0:	20000613          	li	a2,512
     6e4:	00100593          	li	a1,1
     6e8:	000d8513          	mv	a0,s11
     6ec:	00004097          	auipc	ra,0x4
     6f0:	e10080e7          	jalr	-496(ra) # 44fc <fl_fread>
     6f4:	02ac4863          	blt	s8,a0,724 <openMusic+0x264>
     6f8:	00001097          	auipc	ra,0x1
     6fc:	e54080e7          	jalr	-428(ra) # 154c <display_framebuffer>
     700:	00004637          	lui	a2,0x4
     704:	00000593          	li	a1,0
     708:	00001097          	auipc	ra,0x1
     70c:	ad4080e7          	jalr	-1324(ra) # 11dc <memset>
     710:	00090513          	mv	a0,s2
     714:	00004097          	auipc	ra,0x4
     718:	d08080e7          	jalr	-760(ra) # 441c <fl_fclose>
     71c:	02000793          	li	a5,32
     720:	f0dff06f          	j	62c <openMusic+0x16c>
     724:	000b2783          	lw	a5,0(s6)
     728:	fefd8ee3          	beq	s11,a5,724 <openMusic+0x264>
     72c:	000aa783          	lw	a5,0(s5)
     730:	0407f793          	andi	a5,a5,64
     734:	04078c63          	beqz	a5,78c <openMusic+0x2cc>
     738:	00000097          	auipc	ra,0x0
     73c:	8e4080e7          	jalr	-1820(ra) # 1c <clear_audio>
     740:	000aa783          	lw	a5,0(s5)
     744:	0407f793          	andi	a5,a5,64
     748:	fe079ce3          	bnez	a5,740 <openMusic+0x280>
     74c:	00a00593          	li	a1,10
     750:	00000513          	li	a0,0
     754:	00001097          	auipc	ra,0x1
     758:	e04080e7          	jalr	-508(ra) # 1558 <display_set_cursor>
     75c:	0019cd93          	xori	s11,s3,1
     760:	00000593          	li	a1,0
     764:	0ff00513          	li	a0,255
     768:	02099e63          	bnez	s3,7a4 <openMusic+0x2e4>
     76c:	00001097          	auipc	ra,0x1
     770:	e00080e7          	jalr	-512(ra) # 156c <display_set_front_back_color>
     774:	fb4b8513          	addi	a0,s7,-76
     778:	00001097          	auipc	ra,0x1
     77c:	170080e7          	jalr	368(ra) # 18e8 <printf>
     780:	00001097          	auipc	ra,0x1
     784:	f68080e7          	jalr	-152(ra) # 16e8 <display_refresh>
     788:	000d8993          	mv	s3,s11
     78c:	000aa783          	lw	a5,0(s5)
     790:	0207f793          	andi	a5,a5,32
     794:	02078063          	beqz	a5,7b4 <openMusic+0x2f4>
     798:	00000097          	auipc	ra,0x0
     79c:	884080e7          	jalr	-1916(ra) # 1c <clear_audio>
     7a0:	f59ff06f          	j	6f8 <openMusic+0x238>
     7a4:	00001097          	auipc	ra,0x1
     7a8:	dc8080e7          	jalr	-568(ra) # 156c <display_set_front_back_color>
     7ac:	fc4c8513          	addi	a0,s9,-60 # 4fc4 <SDCARD+0xec>
     7b0:	fc9ff06f          	j	778 <openMusic+0x2b8>
     7b4:	01a48663          	beq	s1,s10,7c0 <openMusic+0x300>
     7b8:	00100793          	li	a5,1
     7bc:	00f49663          	bne	s1,a5,7c8 <openMusic+0x308>
     7c0:	00100793          	li	a5,1
     7c4:	41478a33          	sub	s4,a5,s4
     7c8:	000a0863          	beqz	s4,7d8 <openMusic+0x318>
     7cc:	00149493          	slli	s1,s1,0x1
     7d0:	00942023          	sw	s1,0(s0)
     7d4:	f01ff06f          	j	6d4 <openMusic+0x214>
     7d8:	4014d493          	srai	s1,s1,0x1
     7dc:	ff5ff06f          	j	7d0 <openMusic+0x310>

000007e0 <main>:
     7e0:	000057b7          	lui	a5,0x5
     7e4:	ecc7a783          	lw	a5,-308(a5) # 4ecc <LEDS>
     7e8:	ea010113          	addi	sp,sp,-352
     7ec:	14112e23          	sw	ra,348(sp)
     7f0:	14812c23          	sw	s0,344(sp)
     7f4:	14912a23          	sw	s1,340(sp)
     7f8:	15212823          	sw	s2,336(sp)
     7fc:	15312623          	sw	s3,332(sp)
     800:	15412423          	sw	s4,328(sp)
     804:	15512223          	sw	s5,324(sp)
     808:	15612023          	sw	s6,320(sp)
     80c:	13712e23          	sw	s7,316(sp)
     810:	13812c23          	sw	s8,312(sp)
     814:	13912a23          	sw	s9,308(sp)
     818:	13a12823          	sw	s10,304(sp)
     81c:	13b12623          	sw	s11,300(sp)
     820:	0007a023          	sw	zero,0(a5)
     824:	000017b7          	lui	a5,0x1
     828:	00005737          	lui	a4,0x5
     82c:	58078793          	addi	a5,a5,1408 # 1580 <display_putchar>
     830:	26f72423          	sw	a5,616(a4) # 5268 <f_putchar>
     834:	00001097          	auipc	ra,0x1
     838:	bd8080e7          	jalr	-1064(ra) # 140c <oled_init>
     83c:	00001097          	auipc	ra,0x1
     840:	bdc080e7          	jalr	-1060(ra) # 1418 <oled_fullscreen>
     844:	00000513          	li	a0,0
     848:	00001097          	auipc	ra,0x1
     84c:	c68080e7          	jalr	-920(ra) # 14b0 <oled_clear>
     850:	000054b7          	lui	s1,0x5
     854:	000055b7          	lui	a1,0x5
     858:	02000613          	li	a2,32
     85c:	ee058593          	addi	a1,a1,-288 # 4ee0 <SDCARD+0x8>
     860:	3ec48513          	addi	a0,s1,1004 # 53ec <path>
     864:	00001097          	auipc	ra,0x1
     868:	994080e7          	jalr	-1644(ra) # 11f8 <memcpy>
     86c:	00000097          	auipc	ra,0x0
     870:	708080e7          	jalr	1800(ra) # f74 <sdcard_init>
     874:	00001937          	lui	s2,0x1
     878:	00001097          	auipc	ra,0x1
     87c:	648080e7          	jalr	1608(ra) # 1ec0 <fl_init>
     880:	00001437          	lui	s0,0x1
     884:	12090593          	addi	a1,s2,288 # 1120 <sdcard_writesector>
     888:	0c840513          	addi	a0,s0,200 # 10c8 <sdcard_readsector>
     88c:	00002097          	auipc	ra,0x2
     890:	5bc080e7          	jalr	1468(ra) # 2e48 <fl_attach_media>
     894:	fe0518e3          	bnez	a0,884 <main+0xa4>
     898:	00001097          	auipc	ra,0x1
     89c:	cb4080e7          	jalr	-844(ra) # 154c <display_framebuffer>
     8a0:	00004637          	lui	a2,0x4
     8a4:	00000593          	li	a1,0
     8a8:	00001097          	auipc	ra,0x1
     8ac:	934080e7          	jalr	-1740(ra) # 11dc <memset>
     8b0:	00001097          	auipc	ra,0x1
     8b4:	e38080e7          	jalr	-456(ra) # 16e8 <display_refresh>
     8b8:	00000593          	li	a1,0
     8bc:	00000513          	li	a0,0
     8c0:	00001097          	auipc	ra,0x1
     8c4:	c98080e7          	jalr	-872(ra) # 1558 <display_set_cursor>
     8c8:	0ff00593          	li	a1,255
     8cc:	00000513          	li	a0,0
     8d0:	00001097          	auipc	ra,0x1
     8d4:	c9c080e7          	jalr	-868(ra) # 156c <display_set_front_back_color>
     8d8:	00000097          	auipc	ra,0x0
     8dc:	9c8080e7          	jalr	-1592(ra) # 2a0 <openJingle>
     8e0:	000057b7          	lui	a5,0x5
     8e4:	ec87aa83          	lw	s5,-312(a5) # 4ec8 <BUTTONS>
     8e8:	000059b7          	lui	s3,0x5
     8ec:	00005bb7          	lui	s7,0x5
     8f0:	00000b13          	li	s6,0
     8f4:	00000413          	li	s0,0
     8f8:	2ac98993          	addi	s3,s3,684 # 52ac <item>
     8fc:	00005c37          	lui	s8,0x5
     900:	00005cb7          	lui	s9,0x5
     904:	284b8d13          	addi	s10,s7,644 # 5284 <is_music>
     908:	00001097          	auipc	ra,0x1
     90c:	c44080e7          	jalr	-956(ra) # 154c <display_framebuffer>
     910:	00004637          	lui	a2,0x4
     914:	00000593          	li	a1,0
     918:	00001097          	auipc	ra,0x1
     91c:	8c4080e7          	jalr	-1852(ra) # 11dc <memset>
     920:	00001097          	auipc	ra,0x1
     924:	dc8080e7          	jalr	-568(ra) # 16e8 <display_refresh>
     928:	00000593          	li	a1,0
     92c:	00000513          	li	a0,0
     930:	00001097          	auipc	ra,0x1
     934:	c28080e7          	jalr	-984(ra) # 1558 <display_set_cursor>
     938:	0ff00593          	li	a1,255
     93c:	00000513          	li	a0,0
     940:	00001097          	auipc	ra,0x1
     944:	c2c080e7          	jalr	-980(ra) # 156c <display_set_front_back_color>
     948:	00001097          	auipc	ra,0x1
     94c:	da0080e7          	jalr	-608(ra) # 16e8 <display_refresh>
     950:	00000593          	li	a1,0
     954:	0ff00513          	li	a0,255
     958:	00001097          	auipc	ra,0x1
     95c:	c14080e7          	jalr	-1004(ra) # 156c <display_set_front_back_color>
     960:	00410593          	addi	a1,sp,4
     964:	3ec48513          	addi	a0,s1,1004
     968:	00003097          	auipc	ra,0x3
     96c:	b08080e7          	jalr	-1272(ra) # 3470 <fl_opendir>
     970:	00000913          	li	s2,0
     974:	02050663          	beqz	a0,9a0 <main+0x1c0>
     978:	00098a13          	mv	s4,s3
     97c:	284b8d93          	addi	s11,s7,644
     980:	01010593          	addi	a1,sp,16
     984:	00410513          	addi	a0,sp,4
     988:	00003097          	auipc	ra,0x3
     98c:	1a8080e7          	jalr	424(ra) # 3b30 <fl_readdir>
     990:	0a050a63          	beqz	a0,a44 <main+0x264>
     994:	00410513          	addi	a0,sp,4
     998:	00001097          	auipc	ra,0x1
     99c:	598080e7          	jalr	1432(ra) # 1f30 <fl_closedir>
     9a0:	00000593          	li	a1,0
     9a4:	00000513          	li	a0,0
     9a8:	00001097          	auipc	ra,0x1
     9ac:	bb0080e7          	jalr	-1104(ra) # 1558 <display_set_cursor>
     9b0:	0ffb7593          	zext.b	a1,s6
     9b4:	07f58513          	addi	a0,a1,127
     9b8:	0ff57513          	zext.b	a0,a0
     9bc:	00001097          	auipc	ra,0x1
     9c0:	bb0080e7          	jalr	-1104(ra) # 156c <display_set_front_back_color>
     9c4:	fd4c0513          	addi	a0,s8,-44 # 4fd4 <SDCARD+0xfc>
     9c8:	007b0b13          	addi	s6,s6,7
     9cc:	00001097          	auipc	ra,0x1
     9d0:	f1c080e7          	jalr	-228(ra) # 18e8 <printf>
     9d4:	00098d93          	mv	s11,s3
     9d8:	00000a13          	li	s4,0
     9dc:	092a1c63          	bne	s4,s2,a74 <main+0x294>
     9e0:	00001097          	auipc	ra,0x1
     9e4:	d08080e7          	jalr	-760(ra) # 16e8 <display_refresh>
     9e8:	000aa783          	lw	a5,0(s5)
     9ec:	0087f793          	andi	a5,a5,8
     9f0:	00078863          	beqz	a5,a00 <main+0x220>
     9f4:	fff40413          	addi	s0,s0,-1
     9f8:	00000097          	auipc	ra,0x0
     9fc:	a04080e7          	jalr	-1532(ra) # 3fc <openBruitage>
     a00:	000aa783          	lw	a5,0(s5)
     a04:	0107f793          	andi	a5,a5,16
     a08:	00078863          	beqz	a5,a18 <main+0x238>
     a0c:	00140413          	addi	s0,s0,1
     a10:	00000097          	auipc	ra,0x0
     a14:	9ec080e7          	jalr	-1556(ra) # 3fc <openBruitage>
     a18:	000aa783          	lw	a5,0(s5)
     a1c:	0207f793          	andi	a5,a5,32
     a20:	08078a63          	beqz	a5,ab4 <main+0x2d4>
     a24:	000055b7          	lui	a1,0x5
     a28:	40c58593          	addi	a1,a1,1036 # 540c <path_history>
     a2c:	3ec48513          	addi	a0,s1,1004
     a30:	00001097          	auipc	ra,0x1
     a34:	870080e7          	jalr	-1936(ra) # 12a0 <strcpy>
     a38:	00000097          	auipc	ra,0x0
     a3c:	9c4080e7          	jalr	-1596(ra) # 3fc <openBruitage>
     a40:	ec9ff06f          	j	908 <main+0x128>
     a44:	000a0513          	mv	a0,s4
     a48:	02000613          	li	a2,32
     a4c:	01010593          	addi	a1,sp,16
     a50:	00000097          	auipc	ra,0x0
     a54:	7a8080e7          	jalr	1960(ra) # 11f8 <memcpy>
     a58:	11414783          	lbu	a5,276(sp)
     a5c:	00190913          	addi	s2,s2,1
     a60:	020a0a13          	addi	s4,s4,32
     a64:	0017b793          	seqz	a5,a5
     a68:	00fda023          	sw	a5,0(s11)
     a6c:	004d8d93          	addi	s11,s11,4
     a70:	f11ff06f          	j	980 <main+0x1a0>
     a74:	03441a63          	bne	s0,s4,aa8 <main+0x2c8>
     a78:	0ff00593          	li	a1,255
     a7c:	00000513          	li	a0,0
     a80:	00001097          	auipc	ra,0x1
     a84:	aec080e7          	jalr	-1300(ra) # 156c <display_set_front_back_color>
     a88:	000d8613          	mv	a2,s11
     a8c:	000a0593          	mv	a1,s4
     a90:	ff0c8513          	addi	a0,s9,-16 # 4ff0 <SDCARD+0x118>
     a94:	00001097          	auipc	ra,0x1
     a98:	e54080e7          	jalr	-428(ra) # 18e8 <printf>
     a9c:	001a0a13          	addi	s4,s4,1
     aa0:	020d8d93          	addi	s11,s11,32
     aa4:	f39ff06f          	j	9dc <main+0x1fc>
     aa8:	00000593          	li	a1,0
     aac:	0ff00513          	li	a0,255
     ab0:	fd1ff06f          	j	a80 <main+0x2a0>
     ab4:	000aa783          	lw	a5,0(s5)
     ab8:	0407f793          	andi	a5,a5,64
     abc:	02078a63          	beqz	a5,af0 <main+0x310>
     ac0:	00241793          	slli	a5,s0,0x2
     ac4:	00fd07b3          	add	a5,s10,a5
     ac8:	0007a783          	lw	a5,0(a5)
     acc:	00541a13          	slli	s4,s0,0x5
     ad0:	01498a33          	add	s4,s3,s4
     ad4:	02078863          	beqz	a5,b04 <main+0x324>
     ad8:	00000097          	auipc	ra,0x0
     adc:	924080e7          	jalr	-1756(ra) # 3fc <openBruitage>
     ae0:	000a0593          	mv	a1,s4
     ae4:	3ec48513          	addi	a0,s1,1004
     ae8:	00000097          	auipc	ra,0x0
     aec:	9d8080e7          	jalr	-1576(ra) # 4c0 <openMusic>
     af0:	00045463          	bgez	s0,af8 <main+0x318>
     af4:	fff90413          	addi	s0,s2,-1
     af8:	eb2444e3          	blt	s0,s2,9a0 <main+0x1c0>
     afc:	00000413          	li	s0,0
     b00:	ea1ff06f          	j	9a0 <main+0x1c0>
     b04:	00000097          	auipc	ra,0x0
     b08:	8f8080e7          	jalr	-1800(ra) # 3fc <openBruitage>
     b0c:	00005537          	lui	a0,0x5
     b10:	3ec48593          	addi	a1,s1,1004
     b14:	02000613          	li	a2,32
     b18:	40c50513          	addi	a0,a0,1036 # 540c <path_history>
     b1c:	00000097          	auipc	ra,0x0
     b20:	6dc080e7          	jalr	1756(ra) # 11f8 <memcpy>
     b24:	000a0593          	mv	a1,s4
     b28:	3ec48513          	addi	a0,s1,1004
     b2c:	00000097          	auipc	ra,0x0
     b30:	794080e7          	jalr	1940(ra) # 12c0 <strcat>
     b34:	dd5ff06f          	j	908 <main+0x128>

00000b38 <pause>:
     b38:	c0002773          	rdcycle	a4
     b3c:	c00027f3          	rdcycle	a5
     b40:	40e787b3          	sub	a5,a5,a4
     b44:	fea7ece3          	bltu	a5,a0,b3c <pause+0x4>
     b48:	00008067          	ret

00000b4c <sdcard_idle>:
     b4c:	00008067          	ret

00000b50 <sdcard_select>:
     b50:	000057b7          	lui	a5,0x5
     b54:	ed87a783          	lw	a5,-296(a5) # 4ed8 <SDCARD>
     b58:	00200713          	li	a4,2
     b5c:	00e7a023          	sw	a4,0(a5)
     b60:	00008067          	ret

00000b64 <sdcard_ponder>:
     b64:	000056b7          	lui	a3,0x5
     b68:	ed86a603          	lw	a2,-296(a3) # 4ed8 <SDCARD>
     b6c:	01000793          	li	a5,16
     b70:	00000713          	li	a4,0
     b74:	00100693          	li	a3,1
     b78:	00676593          	ori	a1,a4,6
     b7c:	00b62023          	sw	a1,0(a2) # 4000 <fatfs_free_cluster_chain>
     b80:	40e68733          	sub	a4,a3,a4
     b84:	00000013          	nop
     b88:	fff78793          	addi	a5,a5,-1
     b8c:	fe0796e3          	bnez	a5,b78 <sdcard_ponder+0x14>
     b90:	00008067          	ret

00000b94 <sdcard_unselect>:
     b94:	000057b7          	lui	a5,0x5
     b98:	ed87a783          	lw	a5,-296(a5) # 4ed8 <SDCARD>
     b9c:	00600713          	li	a4,6
     ba0:	00e7a023          	sw	a4,0(a5)
     ba4:	00008067          	ret

00000ba8 <sdcard_send>:
     ba8:	000057b7          	lui	a5,0x5
     bac:	ed87a783          	lw	a5,-296(a5) # 4ed8 <SDCARD>
     bb0:	00655713          	srli	a4,a0,0x6
     bb4:	00277713          	andi	a4,a4,2
     bb8:	00e7a023          	sw	a4,0(a5)
     bbc:	00176713          	ori	a4,a4,1
     bc0:	00e7a023          	sw	a4,0(a5)
     bc4:	00555713          	srli	a4,a0,0x5
     bc8:	00277713          	andi	a4,a4,2
     bcc:	00e7a023          	sw	a4,0(a5)
     bd0:	00176713          	ori	a4,a4,1
     bd4:	00e7a023          	sw	a4,0(a5)
     bd8:	00455713          	srli	a4,a0,0x4
     bdc:	00277713          	andi	a4,a4,2
     be0:	00e7a023          	sw	a4,0(a5)
     be4:	00176713          	ori	a4,a4,1
     be8:	00e7a023          	sw	a4,0(a5)
     bec:	00355713          	srli	a4,a0,0x3
     bf0:	00277713          	andi	a4,a4,2
     bf4:	00e7a023          	sw	a4,0(a5)
     bf8:	00176713          	ori	a4,a4,1
     bfc:	00e7a023          	sw	a4,0(a5)
     c00:	00255713          	srli	a4,a0,0x2
     c04:	00277713          	andi	a4,a4,2
     c08:	00e7a023          	sw	a4,0(a5)
     c0c:	00176713          	ori	a4,a4,1
     c10:	00e7a023          	sw	a4,0(a5)
     c14:	00155713          	srli	a4,a0,0x1
     c18:	00277713          	andi	a4,a4,2
     c1c:	00e7a023          	sw	a4,0(a5)
     c20:	00176713          	ori	a4,a4,1
     c24:	00e7a023          	sw	a4,0(a5)
     c28:	00257713          	andi	a4,a0,2
     c2c:	00e7a023          	sw	a4,0(a5)
     c30:	00151513          	slli	a0,a0,0x1
     c34:	00176713          	ori	a4,a4,1
     c38:	00e7a023          	sw	a4,0(a5)
     c3c:	00257513          	andi	a0,a0,2
     c40:	00a7a023          	sw	a0,0(a5)
     c44:	00156513          	ori	a0,a0,1
     c48:	00a7a023          	sw	a0,0(a5)
     c4c:	00200713          	li	a4,2
     c50:	00e7a023          	sw	a4,0(a5)
     c54:	000057b7          	lui	a5,0x5
     c58:	2547a783          	lw	a5,596(a5) # 5254 <sdcard_while_loading_callback>
     c5c:	00078067          	jr	a5

00000c60 <sdcard_read>:
     c60:	fd010113          	addi	sp,sp,-48
     c64:	fff50793          	addi	a5,a0,-1
     c68:	01312e23          	sw	s3,28(sp)
     c6c:	00100993          	li	s3,1
     c70:	00f999b3          	sll	s3,s3,a5
     c74:	000057b7          	lui	a5,0x5
     c78:	01512a23          	sw	s5,20(sp)
     c7c:	ed87aa83          	lw	s5,-296(a5) # 4ed8 <SDCARD>
     c80:	02812423          	sw	s0,40(sp)
     c84:	02912223          	sw	s1,36(sp)
     c88:	03212023          	sw	s2,32(sp)
     c8c:	01412c23          	sw	s4,24(sp)
     c90:	01612823          	sw	s6,16(sp)
     c94:	01712623          	sw	s7,12(sp)
     c98:	01812423          	sw	s8,8(sp)
     c9c:	02112623          	sw	ra,44(sp)
     ca0:	00050493          	mv	s1,a0
     ca4:	00058a13          	mv	s4,a1
     ca8:	0ff00413          	li	s0,255
     cac:	00000913          	li	s2,0
     cb0:	00300b13          	li	s6,3
     cb4:	00200b93          	li	s7,2
     cb8:	00005c37          	lui	s8,0x5
     cbc:	040a0063          	beqz	s4,cfc <sdcard_read+0x9c>
     cc0:	0089f7b3          	and	a5,s3,s0
     cc4:	02079e63          	bnez	a5,d00 <sdcard_read+0xa0>
     cc8:	02c12083          	lw	ra,44(sp)
     ccc:	0ff47513          	zext.b	a0,s0
     cd0:	02812403          	lw	s0,40(sp)
     cd4:	02412483          	lw	s1,36(sp)
     cd8:	02012903          	lw	s2,32(sp)
     cdc:	01c12983          	lw	s3,28(sp)
     ce0:	01812a03          	lw	s4,24(sp)
     ce4:	01412a83          	lw	s5,20(sp)
     ce8:	01012b03          	lw	s6,16(sp)
     cec:	00c12b83          	lw	s7,12(sp)
     cf0:	00812c03          	lw	s8,8(sp)
     cf4:	03010113          	addi	sp,sp,48
     cf8:	00008067          	ret
     cfc:	fc9956e3          	bge	s2,s1,cc8 <sdcard_read+0x68>
     d00:	016aa023          	sw	s6,0(s5)
     d04:	017aa023          	sw	s7,0(s5)
     d08:	000aa783          	lw	a5,0(s5)
     d0c:	00141413          	slli	s0,s0,0x1
     d10:	00190913          	addi	s2,s2,1
     d14:	00f46433          	or	s0,s0,a5
     d18:	254c2783          	lw	a5,596(s8) # 5254 <sdcard_while_loading_callback>
     d1c:	000780e7          	jalr	a5
     d20:	f9dff06f          	j	cbc <sdcard_read+0x5c>

00000d24 <sdcard_get>:
     d24:	fe010113          	addi	sp,sp,-32
     d28:	00112e23          	sw	ra,28(sp)
     d2c:	00812c23          	sw	s0,24(sp)
     d30:	00912a23          	sw	s1,20(sp)
     d34:	00050413          	mv	s0,a0
     d38:	00b12623          	sw	a1,12(sp)
     d3c:	00000097          	auipc	ra,0x0
     d40:	e14080e7          	jalr	-492(ra) # b50 <sdcard_select>
     d44:	00c12583          	lw	a1,12(sp)
     d48:	00040513          	mv	a0,s0
     d4c:	00100493          	li	s1,1
     d50:	00000097          	auipc	ra,0x0
     d54:	f10080e7          	jalr	-240(ra) # c60 <sdcard_read>
     d58:	00345413          	srli	s0,s0,0x3
     d5c:	0284c463          	blt	s1,s0,d84 <sdcard_get+0x60>
     d60:	00a12623          	sw	a0,12(sp)
     d64:	00000097          	auipc	ra,0x0
     d68:	e30080e7          	jalr	-464(ra) # b94 <sdcard_unselect>
     d6c:	01c12083          	lw	ra,28(sp)
     d70:	01812403          	lw	s0,24(sp)
     d74:	00c12503          	lw	a0,12(sp)
     d78:	01412483          	lw	s1,20(sp)
     d7c:	02010113          	addi	sp,sp,32
     d80:	00008067          	ret
     d84:	00000593          	li	a1,0
     d88:	00800513          	li	a0,8
     d8c:	00000097          	auipc	ra,0x0
     d90:	ed4080e7          	jalr	-300(ra) # c60 <sdcard_read>
     d94:	00148493          	addi	s1,s1,1
     d98:	fc5ff06f          	j	d5c <sdcard_get+0x38>

00000d9c <sdcard_cmd>:
     d9c:	ff010113          	addi	sp,sp,-16
     da0:	00812423          	sw	s0,8(sp)
     da4:	00912223          	sw	s1,4(sp)
     da8:	01212023          	sw	s2,0(sp)
     dac:	00112623          	sw	ra,12(sp)
     db0:	00050493          	mv	s1,a0
     db4:	00000413          	li	s0,0
     db8:	00000097          	auipc	ra,0x0
     dbc:	d98080e7          	jalr	-616(ra) # b50 <sdcard_select>
     dc0:	00600913          	li	s2,6
     dc4:	008487b3          	add	a5,s1,s0
     dc8:	0007c503          	lbu	a0,0(a5)
     dcc:	00140413          	addi	s0,s0,1
     dd0:	00000097          	auipc	ra,0x0
     dd4:	dd8080e7          	jalr	-552(ra) # ba8 <sdcard_send>
     dd8:	ff2416e3          	bne	s0,s2,dc4 <sdcard_cmd+0x28>
     ddc:	00812403          	lw	s0,8(sp)
     de0:	00c12083          	lw	ra,12(sp)
     de4:	00412483          	lw	s1,4(sp)
     de8:	00012903          	lw	s2,0(sp)
     dec:	01010113          	addi	sp,sp,16
     df0:	00000317          	auipc	t1,0x0
     df4:	da430067          	jr	-604(t1) # b94 <sdcard_unselect>

00000df8 <sdcard_start_sector>:
     df8:	ff010113          	addi	sp,sp,-16
     dfc:	00112623          	sw	ra,12(sp)
     e00:	00812423          	sw	s0,8(sp)
     e04:	00050413          	mv	s0,a0
     e08:	00000097          	auipc	ra,0x0
     e0c:	d48080e7          	jalr	-696(ra) # b50 <sdcard_select>
     e10:	05100513          	li	a0,81
     e14:	00000097          	auipc	ra,0x0
     e18:	d94080e7          	jalr	-620(ra) # ba8 <sdcard_send>
     e1c:	01845513          	srli	a0,s0,0x18
     e20:	00000097          	auipc	ra,0x0
     e24:	d88080e7          	jalr	-632(ra) # ba8 <sdcard_send>
     e28:	41045513          	srai	a0,s0,0x10
     e2c:	0ff57513          	zext.b	a0,a0
     e30:	00000097          	auipc	ra,0x0
     e34:	d78080e7          	jalr	-648(ra) # ba8 <sdcard_send>
     e38:	40845513          	srai	a0,s0,0x8
     e3c:	0ff57513          	zext.b	a0,a0
     e40:	00000097          	auipc	ra,0x0
     e44:	d68080e7          	jalr	-664(ra) # ba8 <sdcard_send>
     e48:	0ff47513          	zext.b	a0,s0
     e4c:	00000097          	auipc	ra,0x0
     e50:	d5c080e7          	jalr	-676(ra) # ba8 <sdcard_send>
     e54:	05500513          	li	a0,85
     e58:	00000097          	auipc	ra,0x0
     e5c:	d50080e7          	jalr	-688(ra) # ba8 <sdcard_send>
     e60:	00000097          	auipc	ra,0x0
     e64:	d34080e7          	jalr	-716(ra) # b94 <sdcard_unselect>
     e68:	00812403          	lw	s0,8(sp)
     e6c:	00c12083          	lw	ra,12(sp)
     e70:	00100593          	li	a1,1
     e74:	00800513          	li	a0,8
     e78:	01010113          	addi	sp,sp,16
     e7c:	00000317          	auipc	t1,0x0
     e80:	ea830067          	jr	-344(t1) # d24 <sdcard_get>

00000e84 <sdcard_read_sector>:
     e84:	ff010113          	addi	sp,sp,-16
     e88:	00812423          	sw	s0,8(sp)
     e8c:	00112623          	sw	ra,12(sp)
     e90:	00912223          	sw	s1,4(sp)
     e94:	01212023          	sw	s2,0(sp)
     e98:	00058413          	mv	s0,a1
     e9c:	00000097          	auipc	ra,0x0
     ea0:	f5c080e7          	jalr	-164(ra) # df8 <sdcard_start_sector>
     ea4:	04051863          	bnez	a0,ef4 <sdcard_read_sector+0x70>
     ea8:	00100593          	li	a1,1
     eac:	00100513          	li	a0,1
     eb0:	00000097          	auipc	ra,0x0
     eb4:	e74080e7          	jalr	-396(ra) # d24 <sdcard_get>
     eb8:	00000493          	li	s1,0
     ebc:	20000913          	li	s2,512
     ec0:	00000593          	li	a1,0
     ec4:	00800513          	li	a0,8
     ec8:	00000097          	auipc	ra,0x0
     ecc:	e5c080e7          	jalr	-420(ra) # d24 <sdcard_get>
     ed0:	009407b3          	add	a5,s0,s1
     ed4:	00a78023          	sb	a0,0(a5)
     ed8:	00148493          	addi	s1,s1,1
     edc:	ff2492e3          	bne	s1,s2,ec0 <sdcard_read_sector+0x3c>
     ee0:	00100593          	li	a1,1
     ee4:	01000513          	li	a0,16
     ee8:	20040413          	addi	s0,s0,512
     eec:	00000097          	auipc	ra,0x0
     ef0:	e38080e7          	jalr	-456(ra) # d24 <sdcard_get>
     ef4:	00c12083          	lw	ra,12(sp)
     ef8:	00040513          	mv	a0,s0
     efc:	00812403          	lw	s0,8(sp)
     f00:	00412483          	lw	s1,4(sp)
     f04:	00012903          	lw	s2,0(sp)
     f08:	01010113          	addi	sp,sp,16
     f0c:	00008067          	ret

00000f10 <sdcard_preinit>:
     f10:	ff010113          	addi	sp,sp,-16
     f14:	000057b7          	lui	a5,0x5
     f18:	00812423          	sw	s0,8(sp)
     f1c:	ed87a403          	lw	s0,-296(a5) # 4ed8 <SDCARD>
     f20:	00112623          	sw	ra,12(sp)
     f24:	00600793          	li	a5,6
     f28:	01313537          	lui	a0,0x1313
     f2c:	00f42023          	sw	a5,0(s0)
     f30:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     f34:	00000097          	auipc	ra,0x0
     f38:	c04080e7          	jalr	-1020(ra) # b38 <pause>
     f3c:	0a000793          	li	a5,160
     f40:	00000713          	li	a4,0
     f44:	00100693          	li	a3,1
     f48:	00676613          	ori	a2,a4,6
     f4c:	00c42023          	sw	a2,0(s0)
     f50:	fff78793          	addi	a5,a5,-1
     f54:	40e68733          	sub	a4,a3,a4
     f58:	fe0798e3          	bnez	a5,f48 <sdcard_preinit+0x38>
     f5c:	00600793          	li	a5,6
     f60:	00c12083          	lw	ra,12(sp)
     f64:	00f42023          	sw	a5,0(s0)
     f68:	00812403          	lw	s0,8(sp)
     f6c:	01010113          	addi	sp,sp,16
     f70:	00008067          	ret

00000f74 <sdcard_init>:
     f74:	fe010113          	addi	sp,sp,-32
     f78:	000017b7          	lui	a5,0x1
     f7c:	00812c23          	sw	s0,24(sp)
     f80:	00005737          	lui	a4,0x5
     f84:	b4c78793          	addi	a5,a5,-1204 # b4c <sdcard_idle>
     f88:	01313437          	lui	s0,0x1313
     f8c:	01212823          	sw	s2,16(sp)
     f90:	01312623          	sw	s3,12(sp)
     f94:	00112e23          	sw	ra,28(sp)
     f98:	00912a23          	sw	s1,20(sp)
     f9c:	24f72a23          	sw	a5,596(a4) # 5254 <sdcard_while_loading_callback>
     fa0:	00005937          	lui	s2,0x5
     fa4:	0ff00993          	li	s3,255
     fa8:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     fac:	00000097          	auipc	ra,0x0
     fb0:	f64080e7          	jalr	-156(ra) # f10 <sdcard_preinit>
     fb4:	ea490513          	addi	a0,s2,-348 # 4ea4 <cmd0>
     fb8:	00000097          	auipc	ra,0x0
     fbc:	de4080e7          	jalr	-540(ra) # d9c <sdcard_cmd>
     fc0:	00100593          	li	a1,1
     fc4:	00800513          	li	a0,8
     fc8:	00000097          	auipc	ra,0x0
     fcc:	d5c080e7          	jalr	-676(ra) # d24 <sdcard_get>
     fd0:	00050493          	mv	s1,a0
     fd4:	00000097          	auipc	ra,0x0
     fd8:	b90080e7          	jalr	-1136(ra) # b64 <sdcard_ponder>
     fdc:	01349a63          	bne	s1,s3,ff0 <sdcard_init+0x7c>
     fe0:	00040513          	mv	a0,s0
     fe4:	00000097          	auipc	ra,0x0
     fe8:	b54080e7          	jalr	-1196(ra) # b38 <pause>
     fec:	fc1ff06f          	j	fac <sdcard_init+0x38>
     ff0:	00005537          	lui	a0,0x5
     ff4:	ebc50513          	addi	a0,a0,-324 # 4ebc <cmd8>
     ff8:	00000097          	auipc	ra,0x0
     ffc:	da4080e7          	jalr	-604(ra) # d9c <sdcard_cmd>
    1000:	00100593          	li	a1,1
    1004:	02800513          	li	a0,40
    1008:	00000097          	auipc	ra,0x0
    100c:	d1c080e7          	jalr	-740(ra) # d24 <sdcard_get>
    1010:	001e8437          	lui	s0,0x1e8
    1014:	00000097          	auipc	ra,0x0
    1018:	b50080e7          	jalr	-1200(ra) # b64 <sdcard_ponder>
    101c:	00005937          	lui	s2,0x5
    1020:	000059b7          	lui	s3,0x5
    1024:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
    1028:	eb490513          	addi	a0,s2,-332 # 4eb4 <cmd55>
    102c:	00000097          	auipc	ra,0x0
    1030:	d70080e7          	jalr	-656(ra) # d9c <sdcard_cmd>
    1034:	00100593          	li	a1,1
    1038:	00800513          	li	a0,8
    103c:	00000097          	auipc	ra,0x0
    1040:	ce8080e7          	jalr	-792(ra) # d24 <sdcard_get>
    1044:	00000097          	auipc	ra,0x0
    1048:	b20080e7          	jalr	-1248(ra) # b64 <sdcard_ponder>
    104c:	e9c98513          	addi	a0,s3,-356 # 4e9c <acmd41>
    1050:	00000097          	auipc	ra,0x0
    1054:	d4c080e7          	jalr	-692(ra) # d9c <sdcard_cmd>
    1058:	00100593          	li	a1,1
    105c:	00800513          	li	a0,8
    1060:	00000097          	auipc	ra,0x0
    1064:	cc4080e7          	jalr	-828(ra) # d24 <sdcard_get>
    1068:	00050493          	mv	s1,a0
    106c:	00000097          	auipc	ra,0x0
    1070:	af8080e7          	jalr	-1288(ra) # b64 <sdcard_ponder>
    1074:	00048a63          	beqz	s1,1088 <sdcard_init+0x114>
    1078:	00040513          	mv	a0,s0
    107c:	00000097          	auipc	ra,0x0
    1080:	abc080e7          	jalr	-1348(ra) # b38 <pause>
    1084:	fa5ff06f          	j	1028 <sdcard_init+0xb4>
    1088:	00005537          	lui	a0,0x5
    108c:	eac50513          	addi	a0,a0,-340 # 4eac <cmd16>
    1090:	00000097          	auipc	ra,0x0
    1094:	d0c080e7          	jalr	-756(ra) # d9c <sdcard_cmd>
    1098:	00100593          	li	a1,1
    109c:	00800513          	li	a0,8
    10a0:	00000097          	auipc	ra,0x0
    10a4:	c84080e7          	jalr	-892(ra) # d24 <sdcard_get>
    10a8:	01812403          	lw	s0,24(sp)
    10ac:	01c12083          	lw	ra,28(sp)
    10b0:	01412483          	lw	s1,20(sp)
    10b4:	01012903          	lw	s2,16(sp)
    10b8:	00c12983          	lw	s3,12(sp)
    10bc:	02010113          	addi	sp,sp,32
    10c0:	00000317          	auipc	t1,0x0
    10c4:	aa430067          	jr	-1372(t1) # b64 <sdcard_ponder>

000010c8 <sdcard_readsector>:
    10c8:	04060863          	beqz	a2,1118 <sdcard_readsector+0x50>
    10cc:	ff010113          	addi	sp,sp,-16
    10d0:	00812423          	sw	s0,8(sp)
    10d4:	00912223          	sw	s1,4(sp)
    10d8:	00112623          	sw	ra,12(sp)
    10dc:	00050413          	mv	s0,a0
    10e0:	00a604b3          	add	s1,a2,a0
    10e4:	00941e63          	bne	s0,s1,1100 <sdcard_readsector+0x38>
    10e8:	00c12083          	lw	ra,12(sp)
    10ec:	00812403          	lw	s0,8(sp)
    10f0:	00412483          	lw	s1,4(sp)
    10f4:	00100513          	li	a0,1
    10f8:	01010113          	addi	sp,sp,16
    10fc:	00008067          	ret
    1100:	00040513          	mv	a0,s0
    1104:	00000097          	auipc	ra,0x0
    1108:	d80080e7          	jalr	-640(ra) # e84 <sdcard_read_sector>
    110c:	00050593          	mv	a1,a0
    1110:	00140413          	addi	s0,s0,1
    1114:	fd1ff06f          	j	10e4 <sdcard_readsector+0x1c>
    1118:	00000513          	li	a0,0
    111c:	00008067          	ret

00001120 <sdcard_writesector>:
    1120:	00000513          	li	a0,0
    1124:	00008067          	ret

00001128 <__divsi3>:
    1128:	06054063          	bltz	a0,1188 <__umodsi3+0x10>
    112c:	0605c663          	bltz	a1,1198 <__umodsi3+0x20>

00001130 <__udivsi3>:
    1130:	00058613          	mv	a2,a1
    1134:	00050593          	mv	a1,a0
    1138:	fff00513          	li	a0,-1
    113c:	02060c63          	beqz	a2,1174 <__udivsi3+0x44>
    1140:	00100693          	li	a3,1
    1144:	00b67a63          	bgeu	a2,a1,1158 <__udivsi3+0x28>
    1148:	00c05863          	blez	a2,1158 <__udivsi3+0x28>
    114c:	00161613          	slli	a2,a2,0x1
    1150:	00169693          	slli	a3,a3,0x1
    1154:	feb66ae3          	bltu	a2,a1,1148 <__udivsi3+0x18>
    1158:	00000513          	li	a0,0
    115c:	00c5e663          	bltu	a1,a2,1168 <__udivsi3+0x38>
    1160:	40c585b3          	sub	a1,a1,a2
    1164:	00d56533          	or	a0,a0,a3
    1168:	0016d693          	srli	a3,a3,0x1
    116c:	00165613          	srli	a2,a2,0x1
    1170:	fe0696e3          	bnez	a3,115c <__udivsi3+0x2c>
    1174:	00008067          	ret

00001178 <__umodsi3>:
    1178:	00008293          	mv	t0,ra
    117c:	fb5ff0ef          	jal	ra,1130 <__udivsi3>
    1180:	00058513          	mv	a0,a1
    1184:	00028067          	jr	t0
    1188:	40a00533          	neg	a0,a0
    118c:	0005d863          	bgez	a1,119c <__umodsi3+0x24>
    1190:	40b005b3          	neg	a1,a1
    1194:	f95ff06f          	j	1128 <__divsi3>
    1198:	40b005b3          	neg	a1,a1
    119c:	00008293          	mv	t0,ra
    11a0:	f89ff0ef          	jal	ra,1128 <__divsi3>
    11a4:	40a00533          	neg	a0,a0
    11a8:	00028067          	jr	t0

000011ac <__modsi3>:
    11ac:	00008293          	mv	t0,ra
    11b0:	0005ca63          	bltz	a1,11c4 <__modsi3+0x18>
    11b4:	00054c63          	bltz	a0,11cc <__modsi3+0x20>
    11b8:	f79ff0ef          	jal	ra,1130 <__udivsi3>
    11bc:	00058513          	mv	a0,a1
    11c0:	00028067          	jr	t0
    11c4:	40b005b3          	neg	a1,a1
    11c8:	fe0558e3          	bgez	a0,11b8 <__modsi3+0xc>
    11cc:	40a00533          	neg	a0,a0
    11d0:	f61ff0ef          	jal	ra,1130 <__udivsi3>
    11d4:	40b00533          	neg	a0,a1
    11d8:	00028067          	jr	t0

000011dc <memset>:
    11dc:	00c50633          	add	a2,a0,a2
    11e0:	00050793          	mv	a5,a0
    11e4:	00c79463          	bne	a5,a2,11ec <memset+0x10>
    11e8:	00008067          	ret
    11ec:	00178793          	addi	a5,a5,1
    11f0:	feb78fa3          	sb	a1,-1(a5)
    11f4:	ff1ff06f          	j	11e4 <memset+0x8>

000011f8 <memcpy>:
    11f8:	00000793          	li	a5,0
    11fc:	00c79463          	bne	a5,a2,1204 <memcpy+0xc>
    1200:	00008067          	ret
    1204:	00f58733          	add	a4,a1,a5
    1208:	00074683          	lbu	a3,0(a4)
    120c:	00f50733          	add	a4,a0,a5
    1210:	00178793          	addi	a5,a5,1
    1214:	00d70023          	sb	a3,0(a4)
    1218:	fe5ff06f          	j	11fc <memcpy+0x4>

0000121c <strlen>:
    121c:	00050793          	mv	a5,a0
    1220:	00000513          	li	a0,0
    1224:	00a78733          	add	a4,a5,a0
    1228:	00074703          	lbu	a4,0(a4)
    122c:	00071463          	bnez	a4,1234 <strlen+0x18>
    1230:	00008067          	ret
    1234:	00150513          	addi	a0,a0,1
    1238:	fedff06f          	j	1224 <strlen+0x8>

0000123c <strncmp>:
    123c:	00000793          	li	a5,0
    1240:	00c79663          	bne	a5,a2,124c <strncmp+0x10>
    1244:	00000513          	li	a0,0
    1248:	00008067          	ret
    124c:	00f50733          	add	a4,a0,a5
    1250:	00074683          	lbu	a3,0(a4)
    1254:	00f58733          	add	a4,a1,a5
    1258:	00074703          	lbu	a4,0(a4)
    125c:	00e6e863          	bltu	a3,a4,126c <strncmp+0x30>
    1260:	00d76a63          	bltu	a4,a3,1274 <strncmp+0x38>
    1264:	00178793          	addi	a5,a5,1
    1268:	fd9ff06f          	j	1240 <strncmp+0x4>
    126c:	fff00513          	li	a0,-1
    1270:	00008067          	ret
    1274:	00100513          	li	a0,1
    1278:	00008067          	ret

0000127c <strncpy>:
    127c:	00000793          	li	a5,0
    1280:	00f61463          	bne	a2,a5,1288 <strncpy+0xc>
    1284:	00008067          	ret
    1288:	00f58733          	add	a4,a1,a5
    128c:	00074683          	lbu	a3,0(a4)
    1290:	00f50733          	add	a4,a0,a5
    1294:	00178793          	addi	a5,a5,1
    1298:	00d70023          	sb	a3,0(a4)
    129c:	fe5ff06f          	j	1280 <strncpy+0x4>

000012a0 <strcpy>:
    12a0:	0005c783          	lbu	a5,0(a1)
    12a4:	00079663          	bnez	a5,12b0 <strcpy+0x10>
    12a8:	00050023          	sb	zero,0(a0)
    12ac:	00008067          	ret
    12b0:	00150513          	addi	a0,a0,1
    12b4:	00158593          	addi	a1,a1,1
    12b8:	fef50fa3          	sb	a5,-1(a0)
    12bc:	fe5ff06f          	j	12a0 <strcpy>

000012c0 <strcat>:
    12c0:	00050793          	mv	a5,a0
    12c4:	0007c683          	lbu	a3,0(a5)
    12c8:	00078713          	mv	a4,a5
    12cc:	00178793          	addi	a5,a5,1
    12d0:	fe069ae3          	bnez	a3,12c4 <strcat+0x4>
    12d4:	0005c783          	lbu	a5,0(a1)
    12d8:	00158593          	addi	a1,a1,1
    12dc:	00170713          	addi	a4,a4,1
    12e0:	fef70fa3          	sb	a5,-1(a4)
    12e4:	fe0798e3          	bnez	a5,12d4 <strcat+0x14>
    12e8:	00008067          	ret

000012ec <oled_wait>:
    12ec:	00000013          	nop
    12f0:	00000013          	nop
    12f4:	00000013          	nop
    12f8:	00000013          	nop
    12fc:	00000013          	nop
    1300:	00000013          	nop
    1304:	00000013          	nop
    1308:	00008067          	ret

0000130c <oled_init_mode>:
    130c:	000057b7          	lui	a5,0x5
    1310:	ed47a703          	lw	a4,-300(a5) # 4ed4 <OLED_RST>
    1314:	ff010113          	addi	sp,sp,-16
    1318:	00912223          	sw	s1,4(sp)
    131c:	00112623          	sw	ra,12(sp)
    1320:	00812423          	sw	s0,8(sp)
    1324:	00072023          	sw	zero,0(a4)
    1328:	00050493          	mv	s1,a0
    132c:	00040737          	lui	a4,0x40
    1330:	00000013          	nop
    1334:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1338:	fe071ce3          	bnez	a4,1330 <oled_init_mode+0x24>
    133c:	ed47a703          	lw	a4,-300(a5)
    1340:	00100693          	li	a3,1
    1344:	00d72023          	sw	a3,0(a4)
    1348:	00040737          	lui	a4,0x40
    134c:	00000013          	nop
    1350:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1354:	fe071ce3          	bnez	a4,134c <oled_init_mode+0x40>
    1358:	ed47a783          	lw	a5,-300(a5)
    135c:	0007a023          	sw	zero,0(a5)
    1360:	000407b7          	lui	a5,0x40
    1364:	00000013          	nop
    1368:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    136c:	fe079ce3          	bnez	a5,1364 <oled_init_mode+0x58>
    1370:	00005737          	lui	a4,0x5
    1374:	ed072783          	lw	a5,-304(a4) # 4ed0 <OLED>
    1378:	2af00693          	li	a3,687
    137c:	00d7a023          	sw	a3,0(a5)
    1380:	000407b7          	lui	a5,0x40
    1384:	00000013          	nop
    1388:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    138c:	fe079ce3          	bnez	a5,1384 <oled_init_mode+0x78>
    1390:	ed072403          	lw	s0,-304(a4)
    1394:	2a000793          	li	a5,672
    1398:	00f42023          	sw	a5,0(s0)
    139c:	00000097          	auipc	ra,0x0
    13a0:	f50080e7          	jalr	-176(ra) # 12ec <oled_wait>
    13a4:	4a000793          	li	a5,1184
    13a8:	00048463          	beqz	s1,13b0 <oled_init_mode+0xa4>
    13ac:	42000793          	li	a5,1056
    13b0:	00f42023          	sw	a5,0(s0)
    13b4:	00000097          	auipc	ra,0x0
    13b8:	f38080e7          	jalr	-200(ra) # 12ec <oled_wait>
    13bc:	2fd00793          	li	a5,765
    13c0:	00f42023          	sw	a5,0(s0)
    13c4:	00000097          	auipc	ra,0x0
    13c8:	f28080e7          	jalr	-216(ra) # 12ec <oled_wait>
    13cc:	4b100793          	li	a5,1201
    13d0:	00f42023          	sw	a5,0(s0)
    13d4:	00000097          	auipc	ra,0x0
    13d8:	f18080e7          	jalr	-232(ra) # 12ec <oled_wait>
    13dc:	2a200793          	li	a5,674
    13e0:	00f42023          	sw	a5,0(s0)
    13e4:	00000097          	auipc	ra,0x0
    13e8:	f08080e7          	jalr	-248(ra) # 12ec <oled_wait>
    13ec:	40000793          	li	a5,1024
    13f0:	00f42023          	sw	a5,0(s0)
    13f4:	00812403          	lw	s0,8(sp)
    13f8:	00c12083          	lw	ra,12(sp)
    13fc:	00412483          	lw	s1,4(sp)
    1400:	01010113          	addi	sp,sp,16
    1404:	00000317          	auipc	t1,0x0
    1408:	ee830067          	jr	-280(t1) # 12ec <oled_wait>

0000140c <oled_init>:
    140c:	00000513          	li	a0,0
    1410:	00000317          	auipc	t1,0x0
    1414:	efc30067          	jr	-260(t1) # 130c <oled_init_mode>

00001418 <oled_fullscreen>:
    1418:	ff010113          	addi	sp,sp,-16
    141c:	000057b7          	lui	a5,0x5
    1420:	00812423          	sw	s0,8(sp)
    1424:	ed07a403          	lw	s0,-304(a5) # 4ed0 <OLED>
    1428:	00112623          	sw	ra,12(sp)
    142c:	00912223          	sw	s1,4(sp)
    1430:	01212023          	sw	s2,0(sp)
    1434:	21500793          	li	a5,533
    1438:	00f42023          	sw	a5,0(s0)
    143c:	40000913          	li	s2,1024
    1440:	00000097          	auipc	ra,0x0
    1444:	eac080e7          	jalr	-340(ra) # 12ec <oled_wait>
    1448:	47f00493          	li	s1,1151
    144c:	01242023          	sw	s2,0(s0)
    1450:	00000097          	auipc	ra,0x0
    1454:	e9c080e7          	jalr	-356(ra) # 12ec <oled_wait>
    1458:	00942023          	sw	s1,0(s0)
    145c:	00000097          	auipc	ra,0x0
    1460:	e90080e7          	jalr	-368(ra) # 12ec <oled_wait>
    1464:	27500793          	li	a5,629
    1468:	00f42023          	sw	a5,0(s0)
    146c:	00000097          	auipc	ra,0x0
    1470:	e80080e7          	jalr	-384(ra) # 12ec <oled_wait>
    1474:	01242023          	sw	s2,0(s0)
    1478:	00000097          	auipc	ra,0x0
    147c:	e74080e7          	jalr	-396(ra) # 12ec <oled_wait>
    1480:	00942023          	sw	s1,0(s0)
    1484:	00000097          	auipc	ra,0x0
    1488:	e68080e7          	jalr	-408(ra) # 12ec <oled_wait>
    148c:	25c00793          	li	a5,604
    1490:	00f42023          	sw	a5,0(s0)
    1494:	00812403          	lw	s0,8(sp)
    1498:	00c12083          	lw	ra,12(sp)
    149c:	00412483          	lw	s1,4(sp)
    14a0:	00012903          	lw	s2,0(sp)
    14a4:	01010113          	addi	sp,sp,16
    14a8:	00000317          	auipc	t1,0x0
    14ac:	e4430067          	jr	-444(t1) # 12ec <oled_wait>

000014b0 <oled_clear>:
    14b0:	fe010113          	addi	sp,sp,-32
    14b4:	000057b7          	lui	a5,0x5
    14b8:	01312623          	sw	s3,12(sp)
    14bc:	ed07a983          	lw	s3,-304(a5) # 4ed0 <OLED>
    14c0:	00812c23          	sw	s0,24(sp)
    14c4:	01212823          	sw	s2,16(sp)
    14c8:	00112e23          	sw	ra,28(sp)
    14cc:	00912a23          	sw	s1,20(sp)
    14d0:	08000913          	li	s2,128
    14d4:	40056413          	ori	s0,a0,1024
    14d8:	08000493          	li	s1,128
    14dc:	0089a023          	sw	s0,0(s3)
    14e0:	00000097          	auipc	ra,0x0
    14e4:	e0c080e7          	jalr	-500(ra) # 12ec <oled_wait>
    14e8:	0089a023          	sw	s0,0(s3)
    14ec:	00000097          	auipc	ra,0x0
    14f0:	e00080e7          	jalr	-512(ra) # 12ec <oled_wait>
    14f4:	fff48493          	addi	s1,s1,-1
    14f8:	0089a023          	sw	s0,0(s3)
    14fc:	00000097          	auipc	ra,0x0
    1500:	df0080e7          	jalr	-528(ra) # 12ec <oled_wait>
    1504:	fc049ce3          	bnez	s1,14dc <oled_clear+0x2c>
    1508:	fff90913          	addi	s2,s2,-1
    150c:	fc0916e3          	bnez	s2,14d8 <oled_clear+0x28>
    1510:	01c12083          	lw	ra,28(sp)
    1514:	01812403          	lw	s0,24(sp)
    1518:	01412483          	lw	s1,20(sp)
    151c:	01012903          	lw	s2,16(sp)
    1520:	00c12983          	lw	s3,12(sp)
    1524:	02010113          	addi	sp,sp,32
    1528:	00008067          	ret

0000152c <oled_wait>:
    152c:	00000013          	nop
    1530:	00000013          	nop
    1534:	00000013          	nop
    1538:	00000013          	nop
    153c:	00000013          	nop
    1540:	00000013          	nop
    1544:	00000013          	nop
    1548:	00008067          	ret

0000154c <display_framebuffer>:
    154c:	00005537          	lui	a0,0x5
    1550:	44050513          	addi	a0,a0,1088 # 5440 <framebuffer>
    1554:	00008067          	ret

00001558 <display_set_cursor>:
    1558:	000057b7          	lui	a5,0x5
    155c:	24a7ae23          	sw	a0,604(a5) # 525c <cursor_x>
    1560:	000057b7          	lui	a5,0x5
    1564:	26b7a023          	sw	a1,608(a5) # 5260 <cursor_y>
    1568:	00008067          	ret

0000156c <display_set_front_back_color>:
    156c:	000057b7          	lui	a5,0x5
    1570:	26a78223          	sb	a0,612(a5) # 5264 <front_color>
    1574:	000057b7          	lui	a5,0x5
    1578:	24b78c23          	sb	a1,600(a5) # 5258 <back_color>
    157c:	00008067          	ret

00001580 <display_putchar>:
    1580:	000057b7          	lui	a5,0x5
    1584:	00a00713          	li	a4,10
    1588:	25c78793          	addi	a5,a5,604 # 525c <cursor_x>
    158c:	02e51863          	bne	a0,a4,15bc <display_putchar+0x3c>
    1590:	00005737          	lui	a4,0x5
    1594:	26070713          	addi	a4,a4,608 # 5260 <cursor_y>
    1598:	0007a023          	sw	zero,0(a5)
    159c:	00072783          	lw	a5,0(a4)
    15a0:	00878793          	addi	a5,a5,8
    15a4:	00f72023          	sw	a5,0(a4)
    15a8:	07f00713          	li	a4,127
    15ac:	12f75c63          	bge	a4,a5,16e4 <display_putchar+0x164>
    15b0:	000057b7          	lui	a5,0x5
    15b4:	2607a023          	sw	zero,608(a5) # 5260 <cursor_y>
    15b8:	00008067          	ret
    15bc:	01f00693          	li	a3,31
    15c0:	0007a703          	lw	a4,0(a5)
    15c4:	0ea6d663          	bge	a3,a0,16b0 <display_putchar+0x130>
    15c8:	000056b7          	lui	a3,0x5
    15cc:	ff010113          	addi	sp,sp,-16
    15d0:	2586c383          	lbu	t2,600(a3) # 5258 <back_color>
    15d4:	000056b7          	lui	a3,0x5
    15d8:	00812623          	sw	s0,12(sp)
    15dc:	2646c403          	lbu	s0,612(a3) # 5264 <front_color>
    15e0:	000056b7          	lui	a3,0x5
    15e4:	2606af03          	lw	t5,608(a3) # 5260 <cursor_y>
    15e8:	00251613          	slli	a2,a0,0x2
    15ec:	000056b7          	lui	a3,0x5
    15f0:	00a60633          	add	a2,a2,a0
    15f4:	ff868693          	addi	a3,a3,-8 # 4ff8 <font>
    15f8:	00771313          	slli	t1,a4,0x7
    15fc:	00005837          	lui	a6,0x5
    1600:	00912423          	sw	s1,8(sp)
    1604:	01212223          	sw	s2,4(sp)
    1608:	00c686b3          	add	a3,a3,a2
    160c:	28030493          	addi	s1,t1,640
    1610:	00000613          	li	a2,0
    1614:	00100293          	li	t0,1
    1618:	44080813          	addi	a6,a6,1088 # 5440 <framebuffer>
    161c:	00800913          	li	s2,8
    1620:	00c29fb3          	sll	t6,t0,a2
    1624:	00cf0eb3          	add	t4,t5,a2
    1628:	00030593          	mv	a1,t1
    162c:	00068513          	mv	a0,a3
    1630:	f6054883          	lbu	a7,-160(a0)
    1634:	00038e13          	mv	t3,t2
    1638:	01f8f8b3          	and	a7,a7,t6
    163c:	00088463          	beqz	a7,1644 <display_putchar+0xc4>
    1640:	00040e13          	mv	t3,s0
    1644:	00b808b3          	add	a7,a6,a1
    1648:	01d888b3          	add	a7,a7,t4
    164c:	01c88023          	sb	t3,0(a7)
    1650:	08058593          	addi	a1,a1,128
    1654:	00150513          	addi	a0,a0,1
    1658:	fc959ce3          	bne	a1,s1,1630 <display_putchar+0xb0>
    165c:	00160613          	addi	a2,a2,1
    1660:	fd2610e3          	bne	a2,s2,1620 <display_putchar+0xa0>
    1664:	00570713          	addi	a4,a4,5
    1668:	07f00693          	li	a3,127
    166c:	00e6c663          	blt	a3,a4,1678 <display_putchar+0xf8>
    1670:	00e7a023          	sw	a4,0(a5)
    1674:	0280006f          	j	169c <display_putchar+0x11c>
    1678:	00005737          	lui	a4,0x5
    167c:	26070713          	addi	a4,a4,608 # 5260 <cursor_y>
    1680:	0007a023          	sw	zero,0(a5)
    1684:	00072783          	lw	a5,0(a4)
    1688:	00878793          	addi	a5,a5,8
    168c:	00f72023          	sw	a5,0(a4)
    1690:	00f6d663          	bge	a3,a5,169c <display_putchar+0x11c>
    1694:	000057b7          	lui	a5,0x5
    1698:	2607a023          	sw	zero,608(a5) # 5260 <cursor_y>
    169c:	00c12403          	lw	s0,12(sp)
    16a0:	00812483          	lw	s1,8(sp)
    16a4:	00412903          	lw	s2,4(sp)
    16a8:	01010113          	addi	sp,sp,16
    16ac:	00008067          	ret
    16b0:	00570713          	addi	a4,a4,5
    16b4:	07f00693          	li	a3,127
    16b8:	00e6c663          	blt	a3,a4,16c4 <display_putchar+0x144>
    16bc:	00e7a023          	sw	a4,0(a5)
    16c0:	00008067          	ret
    16c4:	00005737          	lui	a4,0x5
    16c8:	26070713          	addi	a4,a4,608 # 5260 <cursor_y>
    16cc:	0007a023          	sw	zero,0(a5)
    16d0:	00072783          	lw	a5,0(a4)
    16d4:	00878793          	addi	a5,a5,8
    16d8:	00f72023          	sw	a5,0(a4)
    16dc:	ecf6cae3          	blt	a3,a5,15b0 <display_putchar+0x30>
    16e0:	00008067          	ret
    16e4:	00008067          	ret

000016e8 <display_refresh>:
    16e8:	fe010113          	addi	sp,sp,-32
    16ec:	000057b7          	lui	a5,0x5
    16f0:	01212823          	sw	s2,16(sp)
    16f4:	ed07a903          	lw	s2,-304(a5) # 4ed0 <OLED>
    16f8:	01312623          	sw	s3,12(sp)
    16fc:	000059b7          	lui	s3,0x5
    1700:	00912a23          	sw	s1,20(sp)
    1704:	01412423          	sw	s4,8(sp)
    1708:	00112e23          	sw	ra,28(sp)
    170c:	00812c23          	sw	s0,24(sp)
    1710:	00000493          	li	s1,0
    1714:	44098993          	addi	s3,s3,1088 # 5440 <framebuffer>
    1718:	00004a37          	lui	s4,0x4
    171c:	013487b3          	add	a5,s1,s3
    1720:	0007c403          	lbu	s0,0(a5)
    1724:	00148493          	addi	s1,s1,1
    1728:	00245413          	srli	s0,s0,0x2
    172c:	40046413          	ori	s0,s0,1024
    1730:	00892023          	sw	s0,0(s2)
    1734:	00000097          	auipc	ra,0x0
    1738:	df8080e7          	jalr	-520(ra) # 152c <oled_wait>
    173c:	00892023          	sw	s0,0(s2)
    1740:	00000097          	auipc	ra,0x0
    1744:	dec080e7          	jalr	-532(ra) # 152c <oled_wait>
    1748:	00892023          	sw	s0,0(s2)
    174c:	00000097          	auipc	ra,0x0
    1750:	de0080e7          	jalr	-544(ra) # 152c <oled_wait>
    1754:	fd4494e3          	bne	s1,s4,171c <display_refresh+0x34>
    1758:	01c12083          	lw	ra,28(sp)
    175c:	01812403          	lw	s0,24(sp)
    1760:	01412483          	lw	s1,20(sp)
    1764:	01012903          	lw	s2,16(sp)
    1768:	00c12983          	lw	s3,12(sp)
    176c:	00812a03          	lw	s4,8(sp)
    1770:	02010113          	addi	sp,sp,32
    1774:	00008067          	ret

00001778 <print_string>:
    1778:	ff010113          	addi	sp,sp,-16
    177c:	00812423          	sw	s0,8(sp)
    1780:	00912223          	sw	s1,4(sp)
    1784:	00112623          	sw	ra,12(sp)
    1788:	00050413          	mv	s0,a0
    178c:	000054b7          	lui	s1,0x5
    1790:	00044503          	lbu	a0,0(s0)
    1794:	00051c63          	bnez	a0,17ac <print_string+0x34>
    1798:	00c12083          	lw	ra,12(sp)
    179c:	00812403          	lw	s0,8(sp)
    17a0:	00412483          	lw	s1,4(sp)
    17a4:	01010113          	addi	sp,sp,16
    17a8:	00008067          	ret
    17ac:	2684a783          	lw	a5,616(s1) # 5268 <f_putchar>
    17b0:	00140413          	addi	s0,s0,1
    17b4:	000780e7          	jalr	a5
    17b8:	fd9ff06f          	j	1790 <print_string+0x18>

000017bc <print_dec>:
    17bc:	ee010113          	addi	sp,sp,-288
    17c0:	10812c23          	sw	s0,280(sp)
    17c4:	10912a23          	sw	s1,276(sp)
    17c8:	10112e23          	sw	ra,284(sp)
    17cc:	11212823          	sw	s2,272(sp)
    17d0:	11312623          	sw	s3,268(sp)
    17d4:	00050413          	mv	s0,a0
    17d8:	000054b7          	lui	s1,0x5
    17dc:	2684a783          	lw	a5,616(s1) # 5268 <f_putchar>
    17e0:	26848993          	addi	s3,s1,616
    17e4:	06045e63          	bgez	s0,1860 <print_dec+0xa4>
    17e8:	02d00513          	li	a0,45
    17ec:	000780e7          	jalr	a5
    17f0:	40800433          	neg	s0,s0
    17f4:	fe9ff06f          	j	17dc <print_dec+0x20>
    17f8:	00040513          	mv	a0,s0
    17fc:	00a00593          	li	a1,10
    1800:	00000097          	auipc	ra,0x0
    1804:	928080e7          	jalr	-1752(ra) # 1128 <__divsi3>
    1808:	00251793          	slli	a5,a0,0x2
    180c:	00f507b3          	add	a5,a0,a5
    1810:	00179793          	slli	a5,a5,0x1
    1814:	40f40433          	sub	s0,s0,a5
    1818:	00148493          	addi	s1,s1,1
    181c:	fe848fa3          	sb	s0,-1(s1)
    1820:	00050413          	mv	s0,a0
    1824:	fc041ae3          	bnez	s0,17f8 <print_dec+0x3c>
    1828:	fd2488e3          	beq	s1,s2,17f8 <print_dec+0x3c>
    182c:	fff4c503          	lbu	a0,-1(s1)
    1830:	0009a783          	lw	a5,0(s3)
    1834:	fff48493          	addi	s1,s1,-1
    1838:	03050513          	addi	a0,a0,48
    183c:	000780e7          	jalr	a5
    1840:	ff2496e3          	bne	s1,s2,182c <print_dec+0x70>
    1844:	11c12083          	lw	ra,284(sp)
    1848:	11812403          	lw	s0,280(sp)
    184c:	11412483          	lw	s1,276(sp)
    1850:	11012903          	lw	s2,272(sp)
    1854:	10c12983          	lw	s3,268(sp)
    1858:	12010113          	addi	sp,sp,288
    185c:	00008067          	ret
    1860:	00010493          	mv	s1,sp
    1864:	00048913          	mv	s2,s1
    1868:	fbdff06f          	j	1824 <print_dec+0x68>

0000186c <print_hex_digits>:
    186c:	fe010113          	addi	sp,sp,-32
    1870:	00812c23          	sw	s0,24(sp)
    1874:	01212823          	sw	s2,16(sp)
    1878:	fff58413          	addi	s0,a1,-1
    187c:	00005937          	lui	s2,0x5
    1880:	00912a23          	sw	s1,20(sp)
    1884:	01312623          	sw	s3,12(sp)
    1888:	00112e23          	sw	ra,28(sp)
    188c:	00050493          	mv	s1,a0
    1890:	00241413          	slli	s0,s0,0x2
    1894:	1d890913          	addi	s2,s2,472 # 51d8 <font+0x1e0>
    1898:	000059b7          	lui	s3,0x5
    189c:	02045063          	bgez	s0,18bc <print_hex_digits+0x50>
    18a0:	01c12083          	lw	ra,28(sp)
    18a4:	01812403          	lw	s0,24(sp)
    18a8:	01412483          	lw	s1,20(sp)
    18ac:	01012903          	lw	s2,16(sp)
    18b0:	00c12983          	lw	s3,12(sp)
    18b4:	02010113          	addi	sp,sp,32
    18b8:	00008067          	ret
    18bc:	0084d7b3          	srl	a5,s1,s0
    18c0:	00f7f793          	andi	a5,a5,15
    18c4:	00f907b3          	add	a5,s2,a5
    18c8:	2689a703          	lw	a4,616(s3) # 5268 <f_putchar>
    18cc:	0007c503          	lbu	a0,0(a5)
    18d0:	ffc40413          	addi	s0,s0,-4
    18d4:	000700e7          	jalr	a4
    18d8:	fc5ff06f          	j	189c <print_hex_digits+0x30>

000018dc <print_hex>:
    18dc:	00800593          	li	a1,8
    18e0:	00000317          	auipc	t1,0x0
    18e4:	f8c30067          	jr	-116(t1) # 186c <print_hex_digits>

000018e8 <printf>:
    18e8:	fa010113          	addi	sp,sp,-96
    18ec:	04f12a23          	sw	a5,84(sp)
    18f0:	04410793          	addi	a5,sp,68
    18f4:	02812c23          	sw	s0,56(sp)
    18f8:	02912a23          	sw	s1,52(sp)
    18fc:	03312623          	sw	s3,44(sp)
    1900:	03412423          	sw	s4,40(sp)
    1904:	03512223          	sw	s5,36(sp)
    1908:	03612023          	sw	s6,32(sp)
    190c:	01712e23          	sw	s7,28(sp)
    1910:	02112e23          	sw	ra,60(sp)
    1914:	03212823          	sw	s2,48(sp)
    1918:	00050413          	mv	s0,a0
    191c:	04b12223          	sw	a1,68(sp)
    1920:	04c12423          	sw	a2,72(sp)
    1924:	04d12623          	sw	a3,76(sp)
    1928:	04e12823          	sw	a4,80(sp)
    192c:	05012c23          	sw	a6,88(sp)
    1930:	05112e23          	sw	a7,92(sp)
    1934:	00f12623          	sw	a5,12(sp)
    1938:	02500993          	li	s3,37
    193c:	000054b7          	lui	s1,0x5
    1940:	07300a13          	li	s4,115
    1944:	07800a93          	li	s5,120
    1948:	06400b13          	li	s6,100
    194c:	06300b93          	li	s7,99
    1950:	00044503          	lbu	a0,0(s0)
    1954:	02051863          	bnez	a0,1984 <printf+0x9c>
    1958:	03c12083          	lw	ra,60(sp)
    195c:	03812403          	lw	s0,56(sp)
    1960:	03412483          	lw	s1,52(sp)
    1964:	03012903          	lw	s2,48(sp)
    1968:	02c12983          	lw	s3,44(sp)
    196c:	02812a03          	lw	s4,40(sp)
    1970:	02412a83          	lw	s5,36(sp)
    1974:	02012b03          	lw	s6,32(sp)
    1978:	01c12b83          	lw	s7,28(sp)
    197c:	06010113          	addi	sp,sp,96
    1980:	00008067          	ret
    1984:	00140913          	addi	s2,s0,1
    1988:	09351663          	bne	a0,s3,1a14 <printf+0x12c>
    198c:	00144503          	lbu	a0,1(s0)
    1990:	03451263          	bne	a0,s4,19b4 <printf+0xcc>
    1994:	00c12783          	lw	a5,12(sp)
    1998:	0007a503          	lw	a0,0(a5)
    199c:	00478713          	addi	a4,a5,4
    19a0:	00e12623          	sw	a4,12(sp)
    19a4:	00000097          	auipc	ra,0x0
    19a8:	dd4080e7          	jalr	-556(ra) # 1778 <print_string>
    19ac:	00190413          	addi	s0,s2,1
    19b0:	fa1ff06f          	j	1950 <printf+0x68>
    19b4:	03551063          	bne	a0,s5,19d4 <printf+0xec>
    19b8:	00c12783          	lw	a5,12(sp)
    19bc:	0007a503          	lw	a0,0(a5)
    19c0:	00478713          	addi	a4,a5,4
    19c4:	00e12623          	sw	a4,12(sp)
    19c8:	00000097          	auipc	ra,0x0
    19cc:	f14080e7          	jalr	-236(ra) # 18dc <print_hex>
    19d0:	fddff06f          	j	19ac <printf+0xc4>
    19d4:	03651063          	bne	a0,s6,19f4 <printf+0x10c>
    19d8:	00c12783          	lw	a5,12(sp)
    19dc:	0007a503          	lw	a0,0(a5)
    19e0:	00478713          	addi	a4,a5,4
    19e4:	00e12623          	sw	a4,12(sp)
    19e8:	00000097          	auipc	ra,0x0
    19ec:	dd4080e7          	jalr	-556(ra) # 17bc <print_dec>
    19f0:	fbdff06f          	j	19ac <printf+0xc4>
    19f4:	2684a783          	lw	a5,616(s1) # 5268 <f_putchar>
    19f8:	01751a63          	bne	a0,s7,1a0c <printf+0x124>
    19fc:	00c12703          	lw	a4,12(sp)
    1a00:	00072503          	lw	a0,0(a4)
    1a04:	00470693          	addi	a3,a4,4
    1a08:	00d12623          	sw	a3,12(sp)
    1a0c:	000780e7          	jalr	a5
    1a10:	f9dff06f          	j	19ac <printf+0xc4>
    1a14:	2684a783          	lw	a5,616(s1)
    1a18:	00040913          	mv	s2,s0
    1a1c:	000780e7          	jalr	a5
    1a20:	f8dff06f          	j	19ac <printf+0xc4>

00001a24 <__mulsi3>:
    1a24:	00050793          	mv	a5,a0
    1a28:	00000513          	li	a0,0
    1a2c:	00079463          	bnez	a5,1a34 <__mulsi3+0x10>
    1a30:	00008067          	ret
    1a34:	0017f713          	andi	a4,a5,1
    1a38:	00070463          	beqz	a4,1a40 <__mulsi3+0x1c>
    1a3c:	00b50533          	add	a0,a0,a1
    1a40:	0017d793          	srli	a5,a5,0x1
    1a44:	00159593          	slli	a1,a1,0x1
    1a48:	fe5ff06f          	j	1a2c <__mulsi3+0x8>

00001a4c <fat_list_insert_last>:
    1a4c:	00452783          	lw	a5,4(a0)
    1a50:	04079263          	bnez	a5,1a94 <fat_list_insert_last+0x48>
    1a54:	00052783          	lw	a5,0(a0)
    1a58:	00079c63          	bnez	a5,1a70 <fat_list_insert_last+0x24>
    1a5c:	00b52023          	sw	a1,0(a0)
    1a60:	00b52223          	sw	a1,4(a0)
    1a64:	0005a023          	sw	zero,0(a1)
    1a68:	0005a223          	sw	zero,4(a1)
    1a6c:	00008067          	ret
    1a70:	0007a703          	lw	a4,0(a5)
    1a74:	00f5a223          	sw	a5,4(a1)
    1a78:	00e5a023          	sw	a4,0(a1)
    1a7c:	00071863          	bnez	a4,1a8c <fat_list_insert_last+0x40>
    1a80:	00b52023          	sw	a1,0(a0)
    1a84:	00b7a023          	sw	a1,0(a5)
    1a88:	00008067          	ret
    1a8c:	00b72223          	sw	a1,4(a4)
    1a90:	ff5ff06f          	j	1a84 <fat_list_insert_last+0x38>
    1a94:	0047a703          	lw	a4,4(a5)
    1a98:	00f5a023          	sw	a5,0(a1)
    1a9c:	00e5a223          	sw	a4,4(a1)
    1aa0:	0047a703          	lw	a4,4(a5)
    1aa4:	00071863          	bnez	a4,1ab4 <fat_list_insert_last+0x68>
    1aa8:	00b52223          	sw	a1,4(a0)
    1aac:	00b7a223          	sw	a1,4(a5)
    1ab0:	00008067          	ret
    1ab4:	00b72023          	sw	a1,0(a4)
    1ab8:	ff5ff06f          	j	1aac <fat_list_insert_last+0x60>

00001abc <FileString_StrCmpNoCase>:
    1abc:	00050313          	mv	t1,a0
    1ac0:	00000793          	li	a5,0
    1ac4:	01900e13          	li	t3,25
    1ac8:	00f61663          	bne	a2,a5,1ad4 <FileString_StrCmpNoCase+0x18>
    1acc:	00000513          	li	a0,0
    1ad0:	0580006f          	j	1b28 <FileString_StrCmpNoCase+0x6c>
    1ad4:	00f30733          	add	a4,t1,a5
    1ad8:	00074883          	lbu	a7,0(a4)
    1adc:	00f58733          	add	a4,a1,a5
    1ae0:	00074803          	lbu	a6,0(a4)
    1ae4:	fbf88713          	addi	a4,a7,-65
    1ae8:	0ff77713          	zext.b	a4,a4
    1aec:	00088693          	mv	a3,a7
    1af0:	00ee6663          	bltu	t3,a4,1afc <FileString_StrCmpNoCase+0x40>
    1af4:	02088693          	addi	a3,a7,32
    1af8:	0ff6f693          	zext.b	a3,a3
    1afc:	fbf80513          	addi	a0,a6,-65
    1b00:	0ff57513          	zext.b	a0,a0
    1b04:	00080713          	mv	a4,a6
    1b08:	00ae6663          	bltu	t3,a0,1b14 <FileString_StrCmpNoCase+0x58>
    1b0c:	02080713          	addi	a4,a6,32
    1b10:	0ff77713          	zext.b	a4,a4
    1b14:	40e68533          	sub	a0,a3,a4
    1b18:	00e69863          	bne	a3,a4,1b28 <FileString_StrCmpNoCase+0x6c>
    1b1c:	00088663          	beqz	a7,1b28 <FileString_StrCmpNoCase+0x6c>
    1b20:	00178793          	addi	a5,a5,1
    1b24:	fa0812e3          	bnez	a6,1ac8 <FileString_StrCmpNoCase+0xc>
    1b28:	00008067          	ret

00001b2c <FileString_GetExtension>:
    1b2c:	00050713          	mv	a4,a0
    1b30:	00050793          	mv	a5,a0
    1b34:	02e00613          	li	a2,46
    1b38:	fff00513          	li	a0,-1
    1b3c:	0007c683          	lbu	a3,0(a5)
    1b40:	00069463          	bnez	a3,1b48 <FileString_GetExtension+0x1c>
    1b44:	00008067          	ret
    1b48:	00c69463          	bne	a3,a2,1b50 <FileString_GetExtension+0x24>
    1b4c:	40e78533          	sub	a0,a5,a4
    1b50:	00178793          	addi	a5,a5,1
    1b54:	fe9ff06f          	j	1b3c <FileString_GetExtension+0x10>

00001b58 <fatfs_fat_writeback>:
    1b58:	00059663          	bnez	a1,1b64 <fatfs_fat_writeback+0xc>
    1b5c:	00000513          	li	a0,0
    1b60:	00008067          	ret
    1b64:	2045a703          	lw	a4,516(a1)
    1b68:	ff010113          	addi	sp,sp,-16
    1b6c:	00812423          	sw	s0,8(sp)
    1b70:	00112623          	sw	ra,12(sp)
    1b74:	00050793          	mv	a5,a0
    1b78:	00058413          	mv	s0,a1
    1b7c:	00100513          	li	a0,1
    1b80:	04070663          	beqz	a4,1bcc <fatfs_fat_writeback+0x74>
    1b84:	0387a683          	lw	a3,56(a5)
    1b88:	00069863          	bnez	a3,1b98 <fatfs_fat_writeback+0x40>
    1b8c:	20042223          	sw	zero,516(s0)
    1b90:	00100513          	li	a0,1
    1b94:	0380006f          	j	1bcc <fatfs_fat_writeback+0x74>
    1b98:	2005a503          	lw	a0,512(a1)
    1b9c:	0147a703          	lw	a4,20(a5)
    1ba0:	0207a583          	lw	a1,32(a5)
    1ba4:	00100613          	li	a2,1
    1ba8:	40e507b3          	sub	a5,a0,a4
    1bac:	00178793          	addi	a5,a5,1
    1bb0:	00f5f663          	bgeu	a1,a5,1bbc <fatfs_fat_writeback+0x64>
    1bb4:	00b70733          	add	a4,a4,a1
    1bb8:	40a70633          	sub	a2,a4,a0
    1bbc:	00040593          	mv	a1,s0
    1bc0:	000680e7          	jalr	a3
    1bc4:	fc0514e3          	bnez	a0,1b8c <fatfs_fat_writeback+0x34>
    1bc8:	00000513          	li	a0,0
    1bcc:	00c12083          	lw	ra,12(sp)
    1bd0:	00812403          	lw	s0,8(sp)
    1bd4:	01010113          	addi	sp,sp,16
    1bd8:	00008067          	ret

00001bdc <fatfs_fat_read_sector>:
    1bdc:	fe010113          	addi	sp,sp,-32
    1be0:	01212823          	sw	s2,16(sp)
    1be4:	25452903          	lw	s2,596(a0)
    1be8:	00812c23          	sw	s0,24(sp)
    1bec:	00912a23          	sw	s1,20(sp)
    1bf0:	01312623          	sw	s3,12(sp)
    1bf4:	00112e23          	sw	ra,28(sp)
    1bf8:	00050993          	mv	s3,a0
    1bfc:	00058493          	mv	s1,a1
    1c00:	00000413          	li	s0,0
    1c04:	06091863          	bnez	s2,1c74 <fatfs_fat_read_sector+0x98>
    1c08:	2549a783          	lw	a5,596(s3)
    1c0c:	20f42623          	sw	a5,524(s0)
    1c10:	20442783          	lw	a5,516(s0)
    1c14:	2489aa23          	sw	s0,596(s3)
    1c18:	00078c63          	beqz	a5,1c30 <fatfs_fat_read_sector+0x54>
    1c1c:	00040593          	mv	a1,s0
    1c20:	00098513          	mv	a0,s3
    1c24:	00000097          	auipc	ra,0x0
    1c28:	f34080e7          	jalr	-204(ra) # 1b58 <fatfs_fat_writeback>
    1c2c:	02050463          	beqz	a0,1c54 <fatfs_fat_read_sector+0x78>
    1c30:	0349a783          	lw	a5,52(s3)
    1c34:	20942023          	sw	s1,512(s0)
    1c38:	00100613          	li	a2,1
    1c3c:	00040593          	mv	a1,s0
    1c40:	00048513          	mv	a0,s1
    1c44:	000780e7          	jalr	a5
    1c48:	06051063          	bnez	a0,1ca8 <fatfs_fat_read_sector+0xcc>
    1c4c:	fff00793          	li	a5,-1
    1c50:	20f42023          	sw	a5,512(s0)
    1c54:	01c12083          	lw	ra,28(sp)
    1c58:	01812403          	lw	s0,24(sp)
    1c5c:	01412483          	lw	s1,20(sp)
    1c60:	00c12983          	lw	s3,12(sp)
    1c64:	00090513          	mv	a0,s2
    1c68:	01012903          	lw	s2,16(sp)
    1c6c:	02010113          	addi	sp,sp,32
    1c70:	00008067          	ret
    1c74:	20092783          	lw	a5,512(s2)
    1c78:	00f4e663          	bltu	s1,a5,1c84 <fatfs_fat_read_sector+0xa8>
    1c7c:	00178713          	addi	a4,a5,1
    1c80:	02e4ea63          	bltu	s1,a4,1cb4 <fatfs_fat_read_sector+0xd8>
    1c84:	20c92783          	lw	a5,524(s2)
    1c88:	00079663          	bnez	a5,1c94 <fatfs_fat_read_sector+0xb8>
    1c8c:	00040a63          	beqz	s0,1ca0 <fatfs_fat_read_sector+0xc4>
    1c90:	20042623          	sw	zero,524(s0)
    1c94:	00090413          	mv	s0,s2
    1c98:	20c92903          	lw	s2,524(s2)
    1c9c:	f69ff06f          	j	1c04 <fatfs_fat_read_sector+0x28>
    1ca0:	2409aa23          	sw	zero,596(s3)
    1ca4:	ff1ff06f          	j	1c94 <fatfs_fat_read_sector+0xb8>
    1ca8:	20842423          	sw	s0,520(s0)
    1cac:	00040913          	mv	s2,s0
    1cb0:	fa5ff06f          	j	1c54 <fatfs_fat_read_sector+0x78>
    1cb4:	40f484b3          	sub	s1,s1,a5
    1cb8:	00949493          	slli	s1,s1,0x9
    1cbc:	009904b3          	add	s1,s2,s1
    1cc0:	20992423          	sw	s1,520(s2)
    1cc4:	f91ff06f          	j	1c54 <fatfs_fat_read_sector+0x78>

00001cc8 <_allocate_file>:
    1cc8:	ff010113          	addi	sp,sp,-16
    1ccc:	000057b7          	lui	a5,0x5
    1cd0:	00812423          	sw	s0,8(sp)
    1cd4:	2747a403          	lw	s0,628(a5) # 5274 <_free_file_list>
    1cd8:	00112623          	sw	ra,12(sp)
    1cdc:	02040e63          	beqz	s0,1d18 <_allocate_file+0x50>
    1ce0:	00042703          	lw	a4,0(s0)
    1ce4:	00442683          	lw	a3,4(s0)
    1ce8:	27478793          	addi	a5,a5,628
    1cec:	04071063          	bnez	a4,1d2c <_allocate_file+0x64>
    1cf0:	00d7a023          	sw	a3,0(a5)
    1cf4:	00442683          	lw	a3,4(s0)
    1cf8:	02069e63          	bnez	a3,1d34 <_allocate_file+0x6c>
    1cfc:	00e7a223          	sw	a4,4(a5)
    1d00:	00005537          	lui	a0,0x5
    1d04:	00040593          	mv	a1,s0
    1d08:	27c50513          	addi	a0,a0,636 # 527c <_open_file_list>
    1d0c:	00000097          	auipc	ra,0x0
    1d10:	d40080e7          	jalr	-704(ra) # 1a4c <fat_list_insert_last>
    1d14:	bc440413          	addi	s0,s0,-1084
    1d18:	00c12083          	lw	ra,12(sp)
    1d1c:	00040513          	mv	a0,s0
    1d20:	00812403          	lw	s0,8(sp)
    1d24:	01010113          	addi	sp,sp,16
    1d28:	00008067          	ret
    1d2c:	00d72223          	sw	a3,4(a4)
    1d30:	fc5ff06f          	j	1cf4 <_allocate_file+0x2c>
    1d34:	00e6a023          	sw	a4,0(a3)
    1d38:	fc9ff06f          	j	1d00 <_allocate_file+0x38>

00001d3c <_free_file>:
    1d3c:	43c52783          	lw	a5,1084(a0)
    1d40:	44052703          	lw	a4,1088(a0)
    1d44:	43c50593          	addi	a1,a0,1084
    1d48:	02079663          	bnez	a5,1d74 <_free_file+0x38>
    1d4c:	000056b7          	lui	a3,0x5
    1d50:	26e6ae23          	sw	a4,636(a3) # 527c <_open_file_list>
    1d54:	44052703          	lw	a4,1088(a0)
    1d58:	02071263          	bnez	a4,1d7c <_free_file+0x40>
    1d5c:	00005737          	lui	a4,0x5
    1d60:	28f72023          	sw	a5,640(a4) # 5280 <_open_file_list+0x4>
    1d64:	00005537          	lui	a0,0x5
    1d68:	27450513          	addi	a0,a0,628 # 5274 <_free_file_list>
    1d6c:	00000317          	auipc	t1,0x0
    1d70:	ce030067          	jr	-800(t1) # 1a4c <fat_list_insert_last>
    1d74:	00e7a223          	sw	a4,4(a5)
    1d78:	fddff06f          	j	1d54 <_free_file+0x18>
    1d7c:	00f72023          	sw	a5,0(a4)
    1d80:	fe5ff06f          	j	1d64 <_free_file+0x28>

00001d84 <fatfs_lba_of_cluster>:
    1d84:	ff010113          	addi	sp,sp,-16
    1d88:	00812423          	sw	s0,8(sp)
    1d8c:	00050413          	mv	s0,a0
    1d90:	00058513          	mv	a0,a1
    1d94:	00044583          	lbu	a1,0(s0)
    1d98:	ffe50513          	addi	a0,a0,-2
    1d9c:	00112623          	sw	ra,12(sp)
    1da0:	00000097          	auipc	ra,0x0
    1da4:	c84080e7          	jalr	-892(ra) # 1a24 <__mulsi3>
    1da8:	00442783          	lw	a5,4(s0)
    1dac:	00f50533          	add	a0,a0,a5
    1db0:	03042783          	lw	a5,48(s0)
    1db4:	00079863          	bnez	a5,1dc4 <fatfs_lba_of_cluster+0x40>
    1db8:	02845783          	lhu	a5,40(s0)
    1dbc:	4047d793          	srai	a5,a5,0x4
    1dc0:	00f50533          	add	a0,a0,a5
    1dc4:	00c12083          	lw	ra,12(sp)
    1dc8:	00812403          	lw	s0,8(sp)
    1dcc:	01010113          	addi	sp,sp,16
    1dd0:	00008067          	ret

00001dd4 <fatfs_sector_read>:
    1dd4:	03452783          	lw	a5,52(a0)
    1dd8:	00058713          	mv	a4,a1
    1ddc:	00070513          	mv	a0,a4
    1de0:	00060593          	mv	a1,a2
    1de4:	00068613          	mv	a2,a3
    1de8:	00078067          	jr	a5

00001dec <fatfs_sector_write>:
    1dec:	03852783          	lw	a5,56(a0)
    1df0:	00058713          	mv	a4,a1
    1df4:	00070513          	mv	a0,a4
    1df8:	00060593          	mv	a1,a2
    1dfc:	00068613          	mv	a2,a3
    1e00:	00078067          	jr	a5

00001e04 <fatfs_write_sector>:
    1e04:	03852783          	lw	a5,56(a0)
    1e08:	0a078863          	beqz	a5,1eb8 <fatfs_write_sector+0xb4>
    1e0c:	fe010113          	addi	sp,sp,-32
    1e10:	01212823          	sw	s2,16(sp)
    1e14:	00068913          	mv	s2,a3
    1e18:	03052683          	lw	a3,48(a0)
    1e1c:	00812c23          	sw	s0,24(sp)
    1e20:	00912a23          	sw	s1,20(sp)
    1e24:	00112e23          	sw	ra,28(sp)
    1e28:	00d5e733          	or	a4,a1,a3
    1e2c:	00050413          	mv	s0,a0
    1e30:	00060493          	mv	s1,a2
    1e34:	04071063          	bnez	a4,1e74 <fatfs_write_sector+0x70>
    1e38:	01052703          	lw	a4,16(a0)
    1e3c:	06e67063          	bgeu	a2,a4,1e9c <fatfs_write_sector+0x98>
    1e40:	01c52503          	lw	a0,28(a0)
    1e44:	00c42703          	lw	a4,12(s0)
    1e48:	00e50533          	add	a0,a0,a4
    1e4c:	00c50533          	add	a0,a0,a2
    1e50:	02090e63          	beqz	s2,1e8c <fatfs_write_sector+0x88>
    1e54:	00100613          	li	a2,1
    1e58:	00090593          	mv	a1,s2
    1e5c:	01812403          	lw	s0,24(sp)
    1e60:	01c12083          	lw	ra,28(sp)
    1e64:	01412483          	lw	s1,20(sp)
    1e68:	01012903          	lw	s2,16(sp)
    1e6c:	02010113          	addi	sp,sp,32
    1e70:	00078067          	jr	a5
    1e74:	00f12623          	sw	a5,12(sp)
    1e78:	00000097          	auipc	ra,0x0
    1e7c:	f0c080e7          	jalr	-244(ra) # 1d84 <fatfs_lba_of_cluster>
    1e80:	00c12783          	lw	a5,12(sp)
    1e84:	00a48533          	add	a0,s1,a0
    1e88:	fc9ff06f          	j	1e50 <fatfs_write_sector+0x4c>
    1e8c:	24a42223          	sw	a0,580(s0)
    1e90:	00100613          	li	a2,1
    1e94:	04440593          	addi	a1,s0,68
    1e98:	fc5ff06f          	j	1e5c <fatfs_write_sector+0x58>
    1e9c:	01c12083          	lw	ra,28(sp)
    1ea0:	01812403          	lw	s0,24(sp)
    1ea4:	01412483          	lw	s1,20(sp)
    1ea8:	01012903          	lw	s2,16(sp)
    1eac:	00000513          	li	a0,0
    1eb0:	02010113          	addi	sp,sp,32
    1eb4:	00008067          	ret
    1eb8:	00000513          	li	a0,0
    1ebc:	00008067          	ret

00001ec0 <fl_init>:
    1ec0:	ff010113          	addi	sp,sp,-16
    1ec4:	00812423          	sw	s0,8(sp)
    1ec8:	00005437          	lui	s0,0x5
    1ecc:	00112623          	sw	ra,12(sp)
    1ed0:	27440793          	addi	a5,s0,628 # 5274 <_free_file_list>
    1ed4:	0007a223          	sw	zero,4(a5)
    1ed8:	0007a023          	sw	zero,0(a5)
    1edc:	0000a5b7          	lui	a1,0xa
    1ee0:	000057b7          	lui	a5,0x5
    1ee4:	27c78793          	addi	a5,a5,636 # 527c <_open_file_list>
    1ee8:	27440513          	addi	a0,s0,628
    1eec:	87c58593          	addi	a1,a1,-1924 # 987c <_files+0x43c>
    1ef0:	0007a223          	sw	zero,4(a5)
    1ef4:	0007a023          	sw	zero,0(a5)
    1ef8:	00000097          	auipc	ra,0x0
    1efc:	b54080e7          	jalr	-1196(ra) # 1a4c <fat_list_insert_last>
    1f00:	0000a5b7          	lui	a1,0xa
    1f04:	27440513          	addi	a0,s0,628
    1f08:	cc058593          	addi	a1,a1,-832 # 9cc0 <_files+0x880>
    1f0c:	00000097          	auipc	ra,0x0
    1f10:	b40080e7          	jalr	-1216(ra) # 1a4c <fat_list_insert_last>
    1f14:	00c12083          	lw	ra,12(sp)
    1f18:	00812403          	lw	s0,8(sp)
    1f1c:	000057b7          	lui	a5,0x5
    1f20:	00100713          	li	a4,1
    1f24:	26e7a623          	sw	a4,620(a5) # 526c <_filelib_init>
    1f28:	01010113          	addi	sp,sp,16
    1f2c:	00008067          	ret

00001f30 <fl_closedir>:
    1f30:	00000513          	li	a0,0
    1f34:	00008067          	ret

00001f38 <fatfs_lfn_cache_entry>:
    1f38:	0005c783          	lbu	a5,0(a1)
    1f3c:	01300693          	li	a3,19
    1f40:	01f7f793          	andi	a5,a5,31
    1f44:	fff78713          	addi	a4,a5,-1
    1f48:	0ff77613          	zext.b	a2,a4
    1f4c:	0ac6ea63          	bltu	a3,a2,2000 <fatfs_lfn_cache_entry+0xc8>
    1f50:	10554683          	lbu	a3,261(a0)
    1f54:	00069463          	bnez	a3,1f5c <fatfs_lfn_cache_entry+0x24>
    1f58:	10f502a3          	sb	a5,261(a0)
    1f5c:	00171793          	slli	a5,a4,0x1
    1f60:	00e787b3          	add	a5,a5,a4
    1f64:	0015c683          	lbu	a3,1(a1)
    1f68:	00279793          	slli	a5,a5,0x2
    1f6c:	00e787b3          	add	a5,a5,a4
    1f70:	00f50533          	add	a0,a0,a5
    1f74:	00d50023          	sb	a3,0(a0)
    1f78:	0035c783          	lbu	a5,3(a1)
    1f7c:	0ff00713          	li	a4,255
    1f80:	02000693          	li	a3,32
    1f84:	00f500a3          	sb	a5,1(a0)
    1f88:	0055c783          	lbu	a5,5(a1)
    1f8c:	00f50123          	sb	a5,2(a0)
    1f90:	0075c783          	lbu	a5,7(a1)
    1f94:	00f501a3          	sb	a5,3(a0)
    1f98:	0095c783          	lbu	a5,9(a1)
    1f9c:	00f50223          	sb	a5,4(a0)
    1fa0:	00e5c783          	lbu	a5,14(a1)
    1fa4:	00f502a3          	sb	a5,5(a0)
    1fa8:	0105c783          	lbu	a5,16(a1)
    1fac:	00f50323          	sb	a5,6(a0)
    1fb0:	0125c783          	lbu	a5,18(a1)
    1fb4:	00f503a3          	sb	a5,7(a0)
    1fb8:	0145c783          	lbu	a5,20(a1)
    1fbc:	00f50423          	sb	a5,8(a0)
    1fc0:	0165c783          	lbu	a5,22(a1)
    1fc4:	00f504a3          	sb	a5,9(a0)
    1fc8:	0185c783          	lbu	a5,24(a1)
    1fcc:	00f50523          	sb	a5,10(a0)
    1fd0:	01c5c783          	lbu	a5,28(a1)
    1fd4:	00f505a3          	sb	a5,11(a0)
    1fd8:	01e5c783          	lbu	a5,30(a1)
    1fdc:	00f50623          	sb	a5,12(a0)
    1fe0:	00d00793          	li	a5,13
    1fe4:	00054603          	lbu	a2,0(a0)
    1fe8:	00e61463          	bne	a2,a4,1ff0 <fatfs_lfn_cache_entry+0xb8>
    1fec:	00d50023          	sb	a3,0(a0)
    1ff0:	fff78793          	addi	a5,a5,-1
    1ff4:	0ff7f793          	zext.b	a5,a5
    1ff8:	00150513          	addi	a0,a0,1
    1ffc:	fe0794e3          	bnez	a5,1fe4 <fatfs_lfn_cache_entry+0xac>
    2000:	00008067          	ret

00002004 <fatfs_lfn_cache_get>:
    2004:	10554703          	lbu	a4,261(a0)
    2008:	01400793          	li	a5,20
    200c:	00f71663          	bne	a4,a5,2018 <fatfs_lfn_cache_get+0x14>
    2010:	10050223          	sb	zero,260(a0)
    2014:	00008067          	ret
    2018:	02070063          	beqz	a4,2038 <fatfs_lfn_cache_get+0x34>
    201c:	00171793          	slli	a5,a4,0x1
    2020:	00e787b3          	add	a5,a5,a4
    2024:	00279793          	slli	a5,a5,0x2
    2028:	00e787b3          	add	a5,a5,a4
    202c:	00f507b3          	add	a5,a0,a5
    2030:	00078023          	sb	zero,0(a5)
    2034:	00008067          	ret
    2038:	00050023          	sb	zero,0(a0)
    203c:	00008067          	ret

00002040 <fatfs_entry_lfn_text>:
    2040:	00b54503          	lbu	a0,11(a0)
    2044:	00f57513          	andi	a0,a0,15
    2048:	ff150513          	addi	a0,a0,-15
    204c:	00153513          	seqz	a0,a0
    2050:	00008067          	ret

00002054 <fatfs_entry_lfn_invalid>:
    2054:	00054703          	lbu	a4,0(a0)
    2058:	00050793          	mv	a5,a0
    205c:	02070463          	beqz	a4,2084 <fatfs_entry_lfn_invalid+0x30>
    2060:	0e500693          	li	a3,229
    2064:	00100513          	li	a0,1
    2068:	02d70063          	beq	a4,a3,2088 <fatfs_entry_lfn_invalid+0x34>
    206c:	00b7c783          	lbu	a5,11(a5)
    2070:	00800713          	li	a4,8
    2074:	00e78a63          	beq	a5,a4,2088 <fatfs_entry_lfn_invalid+0x34>
    2078:	0067f793          	andi	a5,a5,6
    207c:	00f03533          	snez	a0,a5
    2080:	00008067          	ret
    2084:	00100513          	li	a0,1
    2088:	00008067          	ret

0000208c <fatfs_entry_lfn_exists>:
    208c:	00b5c783          	lbu	a5,11(a1)
    2090:	00f00693          	li	a3,15
    2094:	00050713          	mv	a4,a0
    2098:	02d78a63          	beq	a5,a3,20cc <fatfs_entry_lfn_exists+0x40>
    209c:	0005c683          	lbu	a3,0(a1)
    20a0:	00000513          	li	a0,0
    20a4:	02068663          	beqz	a3,20d0 <fatfs_entry_lfn_exists+0x44>
    20a8:	0e500613          	li	a2,229
    20ac:	02c68263          	beq	a3,a2,20d0 <fatfs_entry_lfn_exists+0x44>
    20b0:	00800693          	li	a3,8
    20b4:	00d78e63          	beq	a5,a3,20d0 <fatfs_entry_lfn_exists+0x44>
    20b8:	0067f793          	andi	a5,a5,6
    20bc:	00079a63          	bnez	a5,20d0 <fatfs_entry_lfn_exists+0x44>
    20c0:	10574503          	lbu	a0,261(a4)
    20c4:	00a03533          	snez	a0,a0
    20c8:	00008067          	ret
    20cc:	00000513          	li	a0,0
    20d0:	00008067          	ret

000020d4 <fatfs_entry_sfn_only>:
    20d4:	00b54783          	lbu	a5,11(a0)
    20d8:	00f00713          	li	a4,15
    20dc:	02e78663          	beq	a5,a4,2108 <fatfs_entry_sfn_only+0x34>
    20e0:	00054703          	lbu	a4,0(a0)
    20e4:	00000513          	li	a0,0
    20e8:	02070263          	beqz	a4,210c <fatfs_entry_sfn_only+0x38>
    20ec:	0e500693          	li	a3,229
    20f0:	00d70e63          	beq	a4,a3,210c <fatfs_entry_sfn_only+0x38>
    20f4:	00800713          	li	a4,8
    20f8:	00e78a63          	beq	a5,a4,210c <fatfs_entry_sfn_only+0x38>
    20fc:	0067f793          	andi	a5,a5,6
    2100:	0017b513          	seqz	a0,a5
    2104:	00008067          	ret
    2108:	00000513          	li	a0,0
    210c:	00008067          	ret

00002110 <fatfs_entry_is_dir>:
    2110:	00b54503          	lbu	a0,11(a0)
    2114:	00455513          	srli	a0,a0,0x4
    2118:	00157513          	andi	a0,a0,1
    211c:	00008067          	ret

00002120 <fatfs_entry_is_file>:
    2120:	00b54503          	lbu	a0,11(a0)
    2124:	00555513          	srli	a0,a0,0x5
    2128:	00157513          	andi	a0,a0,1
    212c:	00008067          	ret

00002130 <fatfs_lfn_entries_required>:
    2130:	ff010113          	addi	sp,sp,-16
    2134:	00112623          	sw	ra,12(sp)
    2138:	fffff097          	auipc	ra,0xfffff
    213c:	0e4080e7          	jalr	228(ra) # 121c <strlen>
    2140:	00050a63          	beqz	a0,2154 <fatfs_lfn_entries_required+0x24>
    2144:	00d00593          	li	a1,13
    2148:	00c50513          	addi	a0,a0,12
    214c:	fffff097          	auipc	ra,0xfffff
    2150:	fdc080e7          	jalr	-36(ra) # 1128 <__divsi3>
    2154:	00c12083          	lw	ra,12(sp)
    2158:	01010113          	addi	sp,sp,16
    215c:	00008067          	ret

00002160 <fatfs_filename_to_lfn>:
    2160:	fa010113          	addi	sp,sp,-96
    2164:	04912a23          	sw	s1,84(sp)
    2168:	00058493          	mv	s1,a1
    216c:	000055b7          	lui	a1,0x5
    2170:	22058593          	addi	a1,a1,544 # 5220 <font+0x228>
    2174:	05212823          	sw	s2,80(sp)
    2178:	05312623          	sw	s3,76(sp)
    217c:	00060913          	mv	s2,a2
    2180:	00050993          	mv	s3,a0
    2184:	03400613          	li	a2,52
    2188:	00c10513          	addi	a0,sp,12
    218c:	04112e23          	sw	ra,92(sp)
    2190:	04812c23          	sw	s0,88(sp)
    2194:	05412423          	sw	s4,72(sp)
    2198:	05512223          	sw	s5,68(sp)
    219c:	05612023          	sw	s6,64(sp)
    21a0:	00068b13          	mv	s6,a3
    21a4:	fffff097          	auipc	ra,0xfffff
    21a8:	054080e7          	jalr	84(ra) # 11f8 <memcpy>
    21ac:	00098513          	mv	a0,s3
    21b0:	fffff097          	auipc	ra,0xfffff
    21b4:	06c080e7          	jalr	108(ra) # 121c <strlen>
    21b8:	00050a93          	mv	s5,a0
    21bc:	00098513          	mv	a0,s3
    21c0:	00000097          	auipc	ra,0x0
    21c4:	f70080e7          	jalr	-144(ra) # 2130 <fatfs_lfn_entries_required>
    21c8:	00191793          	slli	a5,s2,0x1
    21cc:	012787b3          	add	a5,a5,s2
    21d0:	00279793          	slli	a5,a5,0x2
    21d4:	00050a13          	mv	s4,a0
    21d8:	02000613          	li	a2,32
    21dc:	00000593          	li	a1,0
    21e0:	00048513          	mv	a0,s1
    21e4:	01278433          	add	s0,a5,s2
    21e8:	fffff097          	auipc	ra,0xfffff
    21ec:	ff4080e7          	jalr	-12(ra) # 11dc <memset>
    21f0:	00190793          	addi	a5,s2,1
    21f4:	fffa0a13          	addi	s4,s4,-1 # 3fff <fatfs_fat_set_cluster+0x117>
    21f8:	0ff7f793          	zext.b	a5,a5
    21fc:	012a1463          	bne	s4,s2,2204 <fatfs_filename_to_lfn+0xa4>
    2200:	0407e793          	ori	a5,a5,64
    2204:	00f48023          	sb	a5,0(s1)
    2208:	00f00793          	li	a5,15
    220c:	00f485a3          	sb	a5,11(s1)
    2210:	016486a3          	sb	s6,13(s1)
    2214:	00c10713          	addi	a4,sp,12
    2218:	00040793          	mv	a5,s0
    221c:	00d40593          	addi	a1,s0,13
    2220:	fff00613          	li	a2,-1
    2224:	00072683          	lw	a3,0(a4)
    2228:	00d486b3          	add	a3,s1,a3
    222c:	0557d263          	bge	a5,s5,2270 <fatfs_filename_to_lfn+0x110>
    2230:	00f98533          	add	a0,s3,a5
    2234:	00054503          	lbu	a0,0(a0)
    2238:	00a68023          	sb	a0,0(a3)
    223c:	00178793          	addi	a5,a5,1
    2240:	00470713          	addi	a4,a4,4
    2244:	feb790e3          	bne	a5,a1,2224 <fatfs_filename_to_lfn+0xc4>
    2248:	05c12083          	lw	ra,92(sp)
    224c:	05812403          	lw	s0,88(sp)
    2250:	05412483          	lw	s1,84(sp)
    2254:	05012903          	lw	s2,80(sp)
    2258:	04c12983          	lw	s3,76(sp)
    225c:	04812a03          	lw	s4,72(sp)
    2260:	04412a83          	lw	s5,68(sp)
    2264:	04012b03          	lw	s6,64(sp)
    2268:	06010113          	addi	sp,sp,96
    226c:	00008067          	ret
    2270:	00fa9663          	bne	s5,a5,227c <fatfs_filename_to_lfn+0x11c>
    2274:	00068023          	sb	zero,0(a3)
    2278:	fc5ff06f          	j	223c <fatfs_filename_to_lfn+0xdc>
    227c:	00c68023          	sb	a2,0(a3)
    2280:	00c680a3          	sb	a2,1(a3)
    2284:	fb9ff06f          	j	223c <fatfs_filename_to_lfn+0xdc>

00002288 <fatfs_sfn_create_entry>:
    2288:	00000793          	li	a5,0
    228c:	00b00813          	li	a6,11
    2290:	00f508b3          	add	a7,a0,a5
    2294:	0008c303          	lbu	t1,0(a7)
    2298:	00f688b3          	add	a7,a3,a5
    229c:	00178793          	addi	a5,a5,1
    22a0:	00688023          	sb	t1,0(a7)
    22a4:	ff0796e3          	bne	a5,a6,2290 <fatfs_sfn_create_entry+0x8>
    22a8:	02000793          	li	a5,32
    22ac:	000686a3          	sb	zero,13(a3)
    22b0:	00068723          	sb	zero,14(a3)
    22b4:	000687a3          	sb	zero,15(a3)
    22b8:	000688a3          	sb	zero,17(a3)
    22bc:	00f68823          	sb	a5,16(a3)
    22c0:	000689a3          	sb	zero,19(a3)
    22c4:	00f68923          	sb	a5,18(a3)
    22c8:	00068b23          	sb	zero,22(a3)
    22cc:	00068ba3          	sb	zero,23(a3)
    22d0:	00068ca3          	sb	zero,25(a3)
    22d4:	00f68c23          	sb	a5,24(a3)
    22d8:	00070463          	beqz	a4,22e0 <fatfs_sfn_create_entry+0x58>
    22dc:	01000793          	li	a5,16
    22e0:	00f685a3          	sb	a5,11(a3)
    22e4:	01065793          	srli	a5,a2,0x10
    22e8:	00f68a23          	sb	a5,20(a3)
    22ec:	0087d793          	srli	a5,a5,0x8
    22f0:	00f68aa3          	sb	a5,21(a3)
    22f4:	01061793          	slli	a5,a2,0x10
    22f8:	0107d793          	srli	a5,a5,0x10
    22fc:	0087d793          	srli	a5,a5,0x8
    2300:	00f68da3          	sb	a5,27(a3)
    2304:	0085d793          	srli	a5,a1,0x8
    2308:	00b68e23          	sb	a1,28(a3)
    230c:	00f68ea3          	sb	a5,29(a3)
    2310:	0105d793          	srli	a5,a1,0x10
    2314:	0185d593          	srli	a1,a1,0x18
    2318:	00068623          	sb	zero,12(a3)
    231c:	00c68d23          	sb	a2,26(a3)
    2320:	00f68f23          	sb	a5,30(a3)
    2324:	00b68fa3          	sb	a1,31(a3)
    2328:	00008067          	ret

0000232c <fatfs_lfn_create_sfn>:
    232c:	0005c703          	lbu	a4,0(a1)
    2330:	02e00793          	li	a5,46
    2334:	16f70463          	beq	a4,a5,249c <fatfs_lfn_create_sfn+0x170>
    2338:	fe010113          	addi	sp,sp,-32
    233c:	00912a23          	sw	s1,20(sp)
    2340:	00050493          	mv	s1,a0
    2344:	00058513          	mv	a0,a1
    2348:	00112e23          	sw	ra,28(sp)
    234c:	00812c23          	sw	s0,24(sp)
    2350:	01212823          	sw	s2,16(sp)
    2354:	00058413          	mv	s0,a1
    2358:	fffff097          	auipc	ra,0xfffff
    235c:	ec4080e7          	jalr	-316(ra) # 121c <strlen>
    2360:	00b00613          	li	a2,11
    2364:	02000593          	li	a1,32
    2368:	00050913          	mv	s2,a0
    236c:	00048513          	mv	a0,s1
    2370:	fffff097          	auipc	ra,0xfffff
    2374:	e6c080e7          	jalr	-404(ra) # 11dc <memset>
    2378:	00300613          	li	a2,3
    237c:	02000593          	li	a1,32
    2380:	00c10513          	addi	a0,sp,12
    2384:	fffff097          	auipc	ra,0xfffff
    2388:	e58080e7          	jalr	-424(ra) # 11dc <memset>
    238c:	fff00713          	li	a4,-1
    2390:	00000793          	li	a5,0
    2394:	02e00693          	li	a3,46
    2398:	0d27c063          	blt	a5,s2,2458 <fatfs_lfn_create_sfn+0x12c>
    239c:	fff00793          	li	a5,-1
    23a0:	0ef70663          	beq	a4,a5,248c <fatfs_lfn_create_sfn+0x160>
    23a4:	00170793          	addi	a5,a4,1
    23a8:	00c10693          	addi	a3,sp,12
    23ac:	00470613          	addi	a2,a4,4
    23b0:	0cf61063          	bne	a2,a5,2470 <fatfs_lfn_create_sfn+0x144>
    23b4:	00000613          	li	a2,0
    23b8:	00000693          	li	a3,0
    23bc:	02000813          	li	a6,32
    23c0:	02e00893          	li	a7,46
    23c4:	01900313          	li	t1,25
    23c8:	00800e13          	li	t3,8
    23cc:	02e6da63          	bge	a3,a4,2400 <fatfs_lfn_create_sfn+0xd4>
    23d0:	00d407b3          	add	a5,s0,a3
    23d4:	0007c783          	lbu	a5,0(a5)
    23d8:	03078263          	beq	a5,a6,23fc <fatfs_lfn_create_sfn+0xd0>
    23dc:	03178063          	beq	a5,a7,23fc <fatfs_lfn_create_sfn+0xd0>
    23e0:	f9f78593          	addi	a1,a5,-97
    23e4:	0ff5f593          	zext.b	a1,a1
    23e8:	00c48533          	add	a0,s1,a2
    23ec:	00160613          	addi	a2,a2,1
    23f0:	00b36463          	bltu	t1,a1,23f8 <fatfs_lfn_create_sfn+0xcc>
    23f4:	fe078793          	addi	a5,a5,-32
    23f8:	00f50023          	sb	a5,0(a0)
    23fc:	09c61c63          	bne	a2,t3,2494 <fatfs_lfn_create_sfn+0x168>
    2400:	00c10793          	addi	a5,sp,12
    2404:	00800693          	li	a3,8
    2408:	01900513          	li	a0,25
    240c:	00b00593          	li	a1,11
    2410:	0007c703          	lbu	a4,0(a5)
    2414:	f9f70613          	addi	a2,a4,-97
    2418:	0ff67613          	zext.b	a2,a2
    241c:	00c56663          	bltu	a0,a2,2428 <fatfs_lfn_create_sfn+0xfc>
    2420:	fe070713          	addi	a4,a4,-32
    2424:	0ff77713          	zext.b	a4,a4
    2428:	00d48633          	add	a2,s1,a3
    242c:	00e60023          	sb	a4,0(a2)
    2430:	00168693          	addi	a3,a3,1
    2434:	00178793          	addi	a5,a5,1
    2438:	fcb69ce3          	bne	a3,a1,2410 <fatfs_lfn_create_sfn+0xe4>
    243c:	01c12083          	lw	ra,28(sp)
    2440:	01812403          	lw	s0,24(sp)
    2444:	01412483          	lw	s1,20(sp)
    2448:	01012903          	lw	s2,16(sp)
    244c:	00100513          	li	a0,1
    2450:	02010113          	addi	sp,sp,32
    2454:	00008067          	ret
    2458:	00f40633          	add	a2,s0,a5
    245c:	00064603          	lbu	a2,0(a2)
    2460:	00d61463          	bne	a2,a3,2468 <fatfs_lfn_create_sfn+0x13c>
    2464:	00078713          	mv	a4,a5
    2468:	00178793          	addi	a5,a5,1
    246c:	f2dff06f          	j	2398 <fatfs_lfn_create_sfn+0x6c>
    2470:	0127d863          	bge	a5,s2,2480 <fatfs_lfn_create_sfn+0x154>
    2474:	00f405b3          	add	a1,s0,a5
    2478:	0005c583          	lbu	a1,0(a1)
    247c:	00b68023          	sb	a1,0(a3)
    2480:	00178793          	addi	a5,a5,1
    2484:	00168693          	addi	a3,a3,1
    2488:	f29ff06f          	j	23b0 <fatfs_lfn_create_sfn+0x84>
    248c:	00090713          	mv	a4,s2
    2490:	f25ff06f          	j	23b4 <fatfs_lfn_create_sfn+0x88>
    2494:	00168693          	addi	a3,a3,1
    2498:	f35ff06f          	j	23cc <fatfs_lfn_create_sfn+0xa0>
    249c:	00000513          	li	a0,0
    24a0:	00008067          	ret

000024a4 <fatfs_lfn_generate_tail>:
    24a4:	000187b7          	lui	a5,0x18
    24a8:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    24ac:	16c7e063          	bltu	a5,a2,260c <fatfs_lfn_generate_tail+0x168>
    24b0:	fa010113          	addi	sp,sp,-96
    24b4:	04812c23          	sw	s0,88(sp)
    24b8:	04912a23          	sw	s1,84(sp)
    24bc:	05412423          	sw	s4,72(sp)
    24c0:	00050493          	mv	s1,a0
    24c4:	00058a13          	mv	s4,a1
    24c8:	00060413          	mv	s0,a2
    24cc:	00000593          	li	a1,0
    24d0:	00c00613          	li	a2,12
    24d4:	00410513          	addi	a0,sp,4
    24d8:	04112e23          	sw	ra,92(sp)
    24dc:	05212823          	sw	s2,80(sp)
    24e0:	05512223          	sw	s5,68(sp)
    24e4:	03712e23          	sw	s7,60(sp)
    24e8:	05312623          	sw	s3,76(sp)
    24ec:	05612023          	sw	s6,64(sp)
    24f0:	fffff097          	auipc	ra,0xfffff
    24f4:	cec080e7          	jalr	-788(ra) # 11dc <memset>
    24f8:	000055b7          	lui	a1,0x5
    24fc:	07e00793          	li	a5,126
    2500:	01100613          	li	a2,17
    2504:	1d858593          	addi	a1,a1,472 # 51d8 <font+0x1e0>
    2508:	01c10513          	addi	a0,sp,28
    250c:	01010913          	addi	s2,sp,16
    2510:	00f10223          	sb	a5,4(sp)
    2514:	00090a93          	mv	s5,s2
    2518:	fffff097          	auipc	ra,0xfffff
    251c:	ce0080e7          	jalr	-800(ra) # 11f8 <memcpy>
    2520:	00900b93          	li	s7,9
    2524:	00a00593          	li	a1,10
    2528:	00040513          	mv	a0,s0
    252c:	fffff097          	auipc	ra,0xfffff
    2530:	c4c080e7          	jalr	-948(ra) # 1178 <__umodsi3>
    2534:	03050793          	addi	a5,a0,48
    2538:	00278533          	add	a0,a5,sp
    253c:	fec54783          	lbu	a5,-20(a0)
    2540:	00090993          	mv	s3,s2
    2544:	00040513          	mv	a0,s0
    2548:	00a00593          	li	a1,10
    254c:	00f90023          	sb	a5,0(s2)
    2550:	00040b13          	mv	s6,s0
    2554:	fffff097          	auipc	ra,0xfffff
    2558:	bdc080e7          	jalr	-1060(ra) # 1130 <__udivsi3>
    255c:	00190913          	addi	s2,s2,1
    2560:	00050413          	mv	s0,a0
    2564:	fd6be0e3          	bltu	s7,s6,2524 <fatfs_lfn_generate_tail+0x80>
    2568:	00090023          	sb	zero,0(s2)
    256c:	00410713          	addi	a4,sp,4
    2570:	00098793          	mv	a5,s3
    2574:	0007c683          	lbu	a3,0(a5)
    2578:	fff78793          	addi	a5,a5,-1
    257c:	00170713          	addi	a4,a4,1
    2580:	00d70023          	sb	a3,0(a4)
    2584:	ff57f8e3          	bgeu	a5,s5,2574 <fatfs_lfn_generate_tail+0xd0>
    2588:	00100793          	li	a5,1
    258c:	0159e663          	bltu	s3,s5,2598 <fatfs_lfn_generate_tail+0xf4>
    2590:	415787b3          	sub	a5,a5,s5
    2594:	00f987b3          	add	a5,s3,a5
    2598:	03078793          	addi	a5,a5,48
    259c:	002787b3          	add	a5,a5,sp
    25a0:	000a0593          	mv	a1,s4
    25a4:	fc078aa3          	sb	zero,-43(a5)
    25a8:	00b00613          	li	a2,11
    25ac:	00048513          	mv	a0,s1
    25b0:	fffff097          	auipc	ra,0xfffff
    25b4:	c48080e7          	jalr	-952(ra) # 11f8 <memcpy>
    25b8:	00410513          	addi	a0,sp,4
    25bc:	fffff097          	auipc	ra,0xfffff
    25c0:	c60080e7          	jalr	-928(ra) # 121c <strlen>
    25c4:	40a484b3          	sub	s1,s1,a0
    25c8:	00050613          	mv	a2,a0
    25cc:	00410593          	addi	a1,sp,4
    25d0:	00848513          	addi	a0,s1,8
    25d4:	fffff097          	auipc	ra,0xfffff
    25d8:	c24080e7          	jalr	-988(ra) # 11f8 <memcpy>
    25dc:	05c12083          	lw	ra,92(sp)
    25e0:	05812403          	lw	s0,88(sp)
    25e4:	05412483          	lw	s1,84(sp)
    25e8:	05012903          	lw	s2,80(sp)
    25ec:	04c12983          	lw	s3,76(sp)
    25f0:	04812a03          	lw	s4,72(sp)
    25f4:	04412a83          	lw	s5,68(sp)
    25f8:	04012b03          	lw	s6,64(sp)
    25fc:	03c12b83          	lw	s7,60(sp)
    2600:	00100513          	li	a0,1
    2604:	06010113          	addi	sp,sp,96
    2608:	00008067          	ret
    260c:	00000513          	li	a0,0
    2610:	00008067          	ret

00002614 <fatfs_total_path_levels>:
    2614:	00050793          	mv	a5,a0
    2618:	06050463          	beqz	a0,2680 <fatfs_total_path_levels+0x6c>
    261c:	00054703          	lbu	a4,0(a0)
    2620:	02f00693          	li	a3,47
    2624:	00d71863          	bne	a4,a3,2634 <fatfs_total_path_levels+0x20>
    2628:	00150793          	addi	a5,a0,1
    262c:	00000513          	li	a0,0
    2630:	0400006f          	j	2670 <fatfs_total_path_levels+0x5c>
    2634:	00154683          	lbu	a3,1(a0)
    2638:	03a00713          	li	a4,58
    263c:	00e68a63          	beq	a3,a4,2650 <fatfs_total_path_levels+0x3c>
    2640:	00254683          	lbu	a3,2(a0)
    2644:	05c00713          	li	a4,92
    2648:	fff00513          	li	a0,-1
    264c:	02e69c63          	bne	a3,a4,2684 <fatfs_total_path_levels+0x70>
    2650:	00378793          	addi	a5,a5,3
    2654:	05c00713          	li	a4,92
    2658:	fd5ff06f          	j	262c <fatfs_total_path_levels+0x18>
    265c:	00178793          	addi	a5,a5,1
    2660:	00e68663          	beq	a3,a4,266c <fatfs_total_path_levels+0x58>
    2664:	0007c683          	lbu	a3,0(a5)
    2668:	fe069ae3          	bnez	a3,265c <fatfs_total_path_levels+0x48>
    266c:	00150513          	addi	a0,a0,1
    2670:	0007c683          	lbu	a3,0(a5)
    2674:	fe0698e3          	bnez	a3,2664 <fatfs_total_path_levels+0x50>
    2678:	fff50513          	addi	a0,a0,-1
    267c:	00008067          	ret
    2680:	fff00513          	li	a0,-1
    2684:	00008067          	ret

00002688 <fatfs_get_substring>:
    2688:	0c050c63          	beqz	a0,2760 <fatfs_get_substring+0xd8>
    268c:	fe010113          	addi	sp,sp,-32
    2690:	00912a23          	sw	s1,20(sp)
    2694:	00112e23          	sw	ra,28(sp)
    2698:	00812c23          	sw	s0,24(sp)
    269c:	01212823          	sw	s2,16(sp)
    26a0:	01312623          	sw	s3,12(sp)
    26a4:	01412423          	sw	s4,8(sp)
    26a8:	00050793          	mv	a5,a0
    26ac:	00068493          	mv	s1,a3
    26b0:	fff00513          	li	a0,-1
    26b4:	06d05a63          	blez	a3,2728 <fatfs_get_substring+0xa0>
    26b8:	0007c983          	lbu	s3,0(a5)
    26bc:	02f00713          	li	a4,47
    26c0:	00058a13          	mv	s4,a1
    26c4:	00060913          	mv	s2,a2
    26c8:	00178413          	addi	s0,a5,1
    26cc:	02e98463          	beq	s3,a4,26f4 <fatfs_get_substring+0x6c>
    26d0:	0017c683          	lbu	a3,1(a5)
    26d4:	03a00713          	li	a4,58
    26d8:	00e68a63          	beq	a3,a4,26ec <fatfs_get_substring+0x64>
    26dc:	0027c683          	lbu	a3,2(a5)
    26e0:	05c00713          	li	a4,92
    26e4:	fff00513          	li	a0,-1
    26e8:	04e69063          	bne	a3,a4,2728 <fatfs_get_substring+0xa0>
    26ec:	00378413          	addi	s0,a5,3
    26f0:	05c00993          	li	s3,92
    26f4:	00040513          	mv	a0,s0
    26f8:	fffff097          	auipc	ra,0xfffff
    26fc:	b24080e7          	jalr	-1244(ra) # 121c <strlen>
    2700:	00000713          	li	a4,0
    2704:	00000693          	li	a3,0
    2708:	00000793          	li	a5,0
    270c:	fff48493          	addi	s1,s1,-1
    2710:	00e905b3          	add	a1,s2,a4
    2714:	02a7ca63          	blt	a5,a0,2748 <fatfs_get_substring+0xc0>
    2718:	00058023          	sb	zero,0(a1)
    271c:	00094503          	lbu	a0,0(s2)
    2720:	00153513          	seqz	a0,a0
    2724:	40a00533          	neg	a0,a0
    2728:	01c12083          	lw	ra,28(sp)
    272c:	01812403          	lw	s0,24(sp)
    2730:	01412483          	lw	s1,20(sp)
    2734:	01012903          	lw	s2,16(sp)
    2738:	00c12983          	lw	s3,12(sp)
    273c:	00812a03          	lw	s4,8(sp)
    2740:	02010113          	addi	sp,sp,32
    2744:	00008067          	ret
    2748:	00f40633          	add	a2,s0,a5
    274c:	00064603          	lbu	a2,0(a2)
    2750:	01361c63          	bne	a2,s3,2768 <fatfs_get_substring+0xe0>
    2754:	00168693          	addi	a3,a3,1
    2758:	00178793          	addi	a5,a5,1
    275c:	fb5ff06f          	j	2710 <fatfs_get_substring+0x88>
    2760:	fff00513          	li	a0,-1
    2764:	00008067          	ret
    2768:	ff4698e3          	bne	a3,s4,2758 <fatfs_get_substring+0xd0>
    276c:	fe9756e3          	bge	a4,s1,2758 <fatfs_get_substring+0xd0>
    2770:	00170713          	addi	a4,a4,1
    2774:	00c58023          	sb	a2,0(a1)
    2778:	fe1ff06f          	j	2758 <fatfs_get_substring+0xd0>

0000277c <fatfs_split_path>:
    277c:	fd010113          	addi	sp,sp,-48
    2780:	02912223          	sw	s1,36(sp)
    2784:	03212023          	sw	s2,32(sp)
    2788:	01312e23          	sw	s3,28(sp)
    278c:	01412c23          	sw	s4,24(sp)
    2790:	02112623          	sw	ra,44(sp)
    2794:	00068a13          	mv	s4,a3
    2798:	02812423          	sw	s0,40(sp)
    279c:	00050913          	mv	s2,a0
    27a0:	00058493          	mv	s1,a1
    27a4:	00060993          	mv	s3,a2
    27a8:	00e12623          	sw	a4,12(sp)
    27ac:	00000097          	auipc	ra,0x0
    27b0:	e68080e7          	jalr	-408(ra) # 2614 <fatfs_total_path_levels>
    27b4:	fff00793          	li	a5,-1
    27b8:	00c12683          	lw	a3,12(sp)
    27bc:	02f51663          	bne	a0,a5,27e8 <fatfs_split_path+0x6c>
    27c0:	fff00413          	li	s0,-1
    27c4:	02c12083          	lw	ra,44(sp)
    27c8:	00040513          	mv	a0,s0
    27cc:	02812403          	lw	s0,40(sp)
    27d0:	02412483          	lw	s1,36(sp)
    27d4:	02012903          	lw	s2,32(sp)
    27d8:	01c12983          	lw	s3,28(sp)
    27dc:	01812a03          	lw	s4,24(sp)
    27e0:	03010113          	addi	sp,sp,48
    27e4:	00008067          	ret
    27e8:	00050413          	mv	s0,a0
    27ec:	00050593          	mv	a1,a0
    27f0:	000a0613          	mv	a2,s4
    27f4:	00090513          	mv	a0,s2
    27f8:	00000097          	auipc	ra,0x0
    27fc:	e90080e7          	jalr	-368(ra) # 2688 <fatfs_get_substring>
    2800:	fc0510e3          	bnez	a0,27c0 <fatfs_split_path+0x44>
    2804:	00041663          	bnez	s0,2810 <fatfs_split_path+0x94>
    2808:	00048023          	sb	zero,0(s1)
    280c:	fb9ff06f          	j	27c4 <fatfs_split_path+0x48>
    2810:	00090513          	mv	a0,s2
    2814:	fffff097          	auipc	ra,0xfffff
    2818:	a08080e7          	jalr	-1528(ra) # 121c <strlen>
    281c:	00050413          	mv	s0,a0
    2820:	000a0513          	mv	a0,s4
    2824:	fffff097          	auipc	ra,0xfffff
    2828:	9f8080e7          	jalr	-1544(ra) # 121c <strlen>
    282c:	40a40433          	sub	s0,s0,a0
    2830:	0089d463          	bge	s3,s0,2838 <fatfs_split_path+0xbc>
    2834:	00098413          	mv	s0,s3
    2838:	00040613          	mv	a2,s0
    283c:	00048513          	mv	a0,s1
    2840:	00090593          	mv	a1,s2
    2844:	008484b3          	add	s1,s1,s0
    2848:	fffff097          	auipc	ra,0xfffff
    284c:	9b0080e7          	jalr	-1616(ra) # 11f8 <memcpy>
    2850:	00000413          	li	s0,0
    2854:	fe048fa3          	sb	zero,-1(s1)
    2858:	f6dff06f          	j	27c4 <fatfs_split_path+0x48>

0000285c <fatfs_compare_names>:
    285c:	fd010113          	addi	sp,sp,-48
    2860:	02112623          	sw	ra,44(sp)
    2864:	02812423          	sw	s0,40(sp)
    2868:	02912223          	sw	s1,36(sp)
    286c:	03212023          	sw	s2,32(sp)
    2870:	01312e23          	sw	s3,28(sp)
    2874:	00058913          	mv	s2,a1
    2878:	01412c23          	sw	s4,24(sp)
    287c:	01512a23          	sw	s5,20(sp)
    2880:	01612823          	sw	s6,16(sp)
    2884:	00050a13          	mv	s4,a0
    2888:	fffff097          	auipc	ra,0xfffff
    288c:	2a4080e7          	jalr	676(ra) # 1b2c <FileString_GetExtension>
    2890:	00050493          	mv	s1,a0
    2894:	00090513          	mv	a0,s2
    2898:	fffff097          	auipc	ra,0xfffff
    289c:	294080e7          	jalr	660(ra) # 1b2c <FileString_GetExtension>
    28a0:	fff00793          	li	a5,-1
    28a4:	00050413          	mv	s0,a0
    28a8:	00000993          	li	s3,0
    28ac:	0af49263          	bne	s1,a5,2950 <fatfs_compare_names+0xf4>
    28b0:	0e951863          	bne	a0,s1,29a0 <fatfs_compare_names+0x144>
    28b4:	000a0513          	mv	a0,s4
    28b8:	fffff097          	auipc	ra,0xfffff
    28bc:	964080e7          	jalr	-1692(ra) # 121c <strlen>
    28c0:	00050493          	mv	s1,a0
    28c4:	00090513          	mv	a0,s2
    28c8:	fffff097          	auipc	ra,0xfffff
    28cc:	954080e7          	jalr	-1708(ra) # 121c <strlen>
    28d0:	00050413          	mv	s0,a0
    28d4:	fff48793          	addi	a5,s1,-1
    28d8:	00fa07b3          	add	a5,s4,a5
    28dc:	40978733          	sub	a4,a5,s1
    28e0:	02000613          	li	a2,32
    28e4:	00078693          	mv	a3,a5
    28e8:	00e78863          	beq	a5,a4,28f8 <fatfs_compare_names+0x9c>
    28ec:	0007c583          	lbu	a1,0(a5)
    28f0:	fff78793          	addi	a5,a5,-1
    28f4:	04c58663          	beq	a1,a2,2940 <fatfs_compare_names+0xe4>
    28f8:	fff40793          	addi	a5,s0,-1
    28fc:	00f907b3          	add	a5,s2,a5
    2900:	40878733          	sub	a4,a5,s0
    2904:	02000613          	li	a2,32
    2908:	00078693          	mv	a3,a5
    290c:	00e78863          	beq	a5,a4,291c <fatfs_compare_names+0xc0>
    2910:	0007c583          	lbu	a1,0(a5)
    2914:	fff78793          	addi	a5,a5,-1
    2918:	02c58863          	beq	a1,a2,2948 <fatfs_compare_names+0xec>
    291c:	00000993          	li	s3,0
    2920:	08941063          	bne	s0,s1,29a0 <fatfs_compare_names+0x144>
    2924:	00040613          	mv	a2,s0
    2928:	00090593          	mv	a1,s2
    292c:	000a0513          	mv	a0,s4
    2930:	fffff097          	auipc	ra,0xfffff
    2934:	18c080e7          	jalr	396(ra) # 1abc <FileString_StrCmpNoCase>
    2938:	00153993          	seqz	s3,a0
    293c:	0640006f          	j	29a0 <fatfs_compare_names+0x144>
    2940:	414684b3          	sub	s1,a3,s4
    2944:	fa1ff06f          	j	28e4 <fatfs_compare_names+0x88>
    2948:	41268433          	sub	s0,a3,s2
    294c:	fbdff06f          	j	2908 <fatfs_compare_names+0xac>
    2950:	04f50863          	beq	a0,a5,29a0 <fatfs_compare_names+0x144>
    2954:	00148a93          	addi	s5,s1,1
    2958:	015a0ab3          	add	s5,s4,s5
    295c:	00140b13          	addi	s6,s0,1
    2960:	000a8513          	mv	a0,s5
    2964:	fffff097          	auipc	ra,0xfffff
    2968:	8b8080e7          	jalr	-1864(ra) # 121c <strlen>
    296c:	01690b33          	add	s6,s2,s6
    2970:	00a12623          	sw	a0,12(sp)
    2974:	000b0513          	mv	a0,s6
    2978:	fffff097          	auipc	ra,0xfffff
    297c:	8a4080e7          	jalr	-1884(ra) # 121c <strlen>
    2980:	00c12603          	lw	a2,12(sp)
    2984:	00000993          	li	s3,0
    2988:	00a61c63          	bne	a2,a0,29a0 <fatfs_compare_names+0x144>
    298c:	000b0593          	mv	a1,s6
    2990:	000a8513          	mv	a0,s5
    2994:	fffff097          	auipc	ra,0xfffff
    2998:	128080e7          	jalr	296(ra) # 1abc <FileString_StrCmpNoCase>
    299c:	f2050ce3          	beqz	a0,28d4 <fatfs_compare_names+0x78>
    29a0:	02c12083          	lw	ra,44(sp)
    29a4:	02812403          	lw	s0,40(sp)
    29a8:	02412483          	lw	s1,36(sp)
    29ac:	02012903          	lw	s2,32(sp)
    29b0:	01812a03          	lw	s4,24(sp)
    29b4:	01412a83          	lw	s5,20(sp)
    29b8:	01012b03          	lw	s6,16(sp)
    29bc:	00098513          	mv	a0,s3
    29c0:	01c12983          	lw	s3,28(sp)
    29c4:	03010113          	addi	sp,sp,48
    29c8:	00008067          	ret

000029cc <_check_file_open>:
    29cc:	fe010113          	addi	sp,sp,-32
    29d0:	000057b7          	lui	a5,0x5
    29d4:	00812c23          	sw	s0,24(sp)
    29d8:	27c7a403          	lw	s0,636(a5) # 527c <_open_file_list>
    29dc:	00912a23          	sw	s1,20(sp)
    29e0:	01212823          	sw	s2,16(sp)
    29e4:	01312623          	sw	s3,12(sp)
    29e8:	00112e23          	sw	ra,28(sp)
    29ec:	00050493          	mv	s1,a0
    29f0:	01450913          	addi	s2,a0,20
    29f4:	11850993          	addi	s3,a0,280
    29f8:	02041263          	bnez	s0,2a1c <_check_file_open+0x50>
    29fc:	00000513          	li	a0,0
    2a00:	01c12083          	lw	ra,28(sp)
    2a04:	01812403          	lw	s0,24(sp)
    2a08:	01412483          	lw	s1,20(sp)
    2a0c:	01012903          	lw	s2,16(sp)
    2a10:	00c12983          	lw	s3,12(sp)
    2a14:	02010113          	addi	sp,sp,32
    2a18:	00008067          	ret
    2a1c:	bc440793          	addi	a5,s0,-1084
    2a20:	02f48663          	beq	s1,a5,2a4c <_check_file_open+0x80>
    2a24:	00090593          	mv	a1,s2
    2a28:	bd840513          	addi	a0,s0,-1064
    2a2c:	00000097          	auipc	ra,0x0
    2a30:	e30080e7          	jalr	-464(ra) # 285c <fatfs_compare_names>
    2a34:	00050c63          	beqz	a0,2a4c <_check_file_open+0x80>
    2a38:	00098593          	mv	a1,s3
    2a3c:	cdc40513          	addi	a0,s0,-804
    2a40:	00000097          	auipc	ra,0x0
    2a44:	e1c080e7          	jalr	-484(ra) # 285c <fatfs_compare_names>
    2a48:	00051663          	bnez	a0,2a54 <_check_file_open+0x88>
    2a4c:	00442403          	lw	s0,4(s0)
    2a50:	fa9ff06f          	j	29f8 <_check_file_open+0x2c>
    2a54:	00100513          	li	a0,1
    2a58:	fa9ff06f          	j	2a00 <_check_file_open+0x34>

00002a5c <fatfs_get_sfn_display_name>:
    2a5c:	00000713          	li	a4,0
    2a60:	00c00613          	li	a2,12
    2a64:	02000813          	li	a6,32
    2a68:	01900893          	li	a7,25
    2a6c:	0005c783          	lbu	a5,0(a1)
    2a70:	00078463          	beqz	a5,2a78 <fatfs_get_sfn_display_name+0x1c>
    2a74:	00c71863          	bne	a4,a2,2a84 <fatfs_get_sfn_display_name+0x28>
    2a78:	00050023          	sb	zero,0(a0)
    2a7c:	00100513          	li	a0,1
    2a80:	00008067          	ret
    2a84:	00158593          	addi	a1,a1,1
    2a88:	ff0782e3          	beq	a5,a6,2a6c <fatfs_get_sfn_display_name+0x10>
    2a8c:	fbf78693          	addi	a3,a5,-65
    2a90:	0ff6f693          	zext.b	a3,a3
    2a94:	00d8e663          	bltu	a7,a3,2aa0 <fatfs_get_sfn_display_name+0x44>
    2a98:	02078793          	addi	a5,a5,32
    2a9c:	0ff7f793          	zext.b	a5,a5
    2aa0:	00f50023          	sb	a5,0(a0)
    2aa4:	00170713          	addi	a4,a4,1
    2aa8:	00150513          	addi	a0,a0,1
    2aac:	fc1ff06f          	j	2a6c <fatfs_get_sfn_display_name+0x10>

00002ab0 <fatfs_fat_init>:
    2ab0:	ff010113          	addi	sp,sp,-16
    2ab4:	00812423          	sw	s0,8(sp)
    2ab8:	00912223          	sw	s1,4(sp)
    2abc:	00112623          	sw	ra,12(sp)
    2ac0:	fff00793          	li	a5,-1
    2ac4:	25850493          	addi	s1,a0,600
    2ac8:	00050413          	mv	s0,a0
    2acc:	44f52c23          	sw	a5,1112(a0)
    2ad0:	24052a23          	sw	zero,596(a0)
    2ad4:	44052e23          	sw	zero,1116(a0)
    2ad8:	20000613          	li	a2,512
    2adc:	00048513          	mv	a0,s1
    2ae0:	00000593          	li	a1,0
    2ae4:	ffffe097          	auipc	ra,0xffffe
    2ae8:	6f8080e7          	jalr	1784(ra) # 11dc <memset>
    2aec:	25442783          	lw	a5,596(s0)
    2af0:	00c12083          	lw	ra,12(sp)
    2af4:	24942a23          	sw	s1,596(s0)
    2af8:	46042023          	sw	zero,1120(s0)
    2afc:	46f42223          	sw	a5,1124(s0)
    2b00:	00812403          	lw	s0,8(sp)
    2b04:	00412483          	lw	s1,4(sp)
    2b08:	01010113          	addi	sp,sp,16
    2b0c:	00008067          	ret

00002b10 <fatfs_init>:
    2b10:	fc010113          	addi	sp,sp,-64
    2b14:	02812c23          	sw	s0,56(sp)
    2b18:	02112e23          	sw	ra,60(sp)
    2b1c:	02912a23          	sw	s1,52(sp)
    2b20:	03212823          	sw	s2,48(sp)
    2b24:	03312623          	sw	s3,44(sp)
    2b28:	03412423          	sw	s4,40(sp)
    2b2c:	03512223          	sw	s5,36(sp)
    2b30:	03612023          	sw	s6,32(sp)
    2b34:	01712e23          	sw	s7,28(sp)
    2b38:	fff00793          	li	a5,-1
    2b3c:	24f52223          	sw	a5,580(a0)
    2b40:	24052423          	sw	zero,584(a0)
    2b44:	02052223          	sw	zero,36(a0)
    2b48:	00050413          	mv	s0,a0
    2b4c:	00000097          	auipc	ra,0x0
    2b50:	f64080e7          	jalr	-156(ra) # 2ab0 <fatfs_fat_init>
    2b54:	03442783          	lw	a5,52(s0)
    2b58:	02079a63          	bnez	a5,2b8c <fatfs_init+0x7c>
    2b5c:	fff00513          	li	a0,-1
    2b60:	03c12083          	lw	ra,60(sp)
    2b64:	03812403          	lw	s0,56(sp)
    2b68:	03412483          	lw	s1,52(sp)
    2b6c:	03012903          	lw	s2,48(sp)
    2b70:	02c12983          	lw	s3,44(sp)
    2b74:	02812a03          	lw	s4,40(sp)
    2b78:	02412a83          	lw	s5,36(sp)
    2b7c:	02012b03          	lw	s6,32(sp)
    2b80:	01c12b83          	lw	s7,28(sp)
    2b84:	04010113          	addi	sp,sp,64
    2b88:	00008067          	ret
    2b8c:	04440593          	addi	a1,s0,68
    2b90:	00100613          	li	a2,1
    2b94:	00000513          	li	a0,0
    2b98:	00b12623          	sw	a1,12(sp)
    2b9c:	000780e7          	jalr	a5
    2ba0:	fa050ee3          	beqz	a0,2b5c <fatfs_init+0x4c>
    2ba4:	24042703          	lw	a4,576(s0)
    2ba8:	ffff07b7          	lui	a5,0xffff0
    2bac:	00c12583          	lw	a1,12(sp)
    2bb0:	00e7f7b3          	and	a5,a5,a4
    2bb4:	aa550737          	lui	a4,0xaa550
    2bb8:	00e78663          	beq	a5,a4,2bc4 <fatfs_init+0xb4>
    2bbc:	ffd00513          	li	a0,-3
    2bc0:	fa1ff06f          	j	2b60 <fatfs_init+0x50>
    2bc4:	24344783          	lbu	a5,579(s0)
    2bc8:	24244703          	lbu	a4,578(s0)
    2bcc:	ffc00513          	li	a0,-4
    2bd0:	00879793          	slli	a5,a5,0x8
    2bd4:	00e787b3          	add	a5,a5,a4
    2bd8:	0000b737          	lui	a4,0xb
    2bdc:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0xd8d>
    2be0:	f8e790e3          	bne	a5,a4,2b60 <fatfs_init+0x50>
    2be4:	20644783          	lbu	a5,518(s0)
    2be8:	00600713          	li	a4,6
    2bec:	04f76063          	bltu	a4,a5,2c2c <fatfs_init+0x11c>
    2bf0:	00400713          	li	a4,4
    2bf4:	00f76663          	bltu	a4,a5,2c00 <fatfs_init+0xf0>
    2bf8:	00000513          	li	a0,0
    2bfc:	04078263          	beqz	a5,2c40 <fatfs_init+0x130>
    2c00:	20d44503          	lbu	a0,525(s0)
    2c04:	20c44783          	lbu	a5,524(s0)
    2c08:	01851513          	slli	a0,a0,0x18
    2c0c:	01079793          	slli	a5,a5,0x10
    2c10:	00f50533          	add	a0,a0,a5
    2c14:	20a44783          	lbu	a5,522(s0)
    2c18:	00f50533          	add	a0,a0,a5
    2c1c:	20b44783          	lbu	a5,523(s0)
    2c20:	00879793          	slli	a5,a5,0x8
    2c24:	00f50533          	add	a0,a0,a5
    2c28:	0180006f          	j	2c40 <fatfs_init+0x130>
    2c2c:	00c00713          	li	a4,12
    2c30:	1ef76a63          	bltu	a4,a5,2e24 <fatfs_init+0x314>
    2c34:	00a00713          	li	a4,10
    2c38:	00000513          	li	a0,0
    2c3c:	fcf762e3          	bltu	a4,a5,2c00 <fatfs_init+0xf0>
    2c40:	03442783          	lw	a5,52(s0)
    2c44:	00a42e23          	sw	a0,28(s0)
    2c48:	00100613          	li	a2,1
    2c4c:	000780e7          	jalr	a5 # ffff0000 <__stacktop+0xfffe0000>
    2c50:	f00506e3          	beqz	a0,2b5c <fatfs_init+0x4c>
    2c54:	05044783          	lbu	a5,80(s0)
    2c58:	04f44703          	lbu	a4,79(s0)
    2c5c:	ffe00513          	li	a0,-2
    2c60:	00879793          	slli	a5,a5,0x8
    2c64:	00e787b3          	add	a5,a5,a4
    2c68:	20000713          	li	a4,512
    2c6c:	eee79ae3          	bne	a5,a4,2b60 <fatfs_init+0x50>
    2c70:	05644483          	lbu	s1,86(s0)
    2c74:	05544b83          	lbu	s7,85(s0)
    2c78:	05344903          	lbu	s2,83(s0)
    2c7c:	05244a03          	lbu	s4,82(s0)
    2c80:	05b44583          	lbu	a1,91(s0)
    2c84:	00849493          	slli	s1,s1,0x8
    2c88:	05144983          	lbu	s3,81(s0)
    2c8c:	05a44783          	lbu	a5,90(s0)
    2c90:	01748ab3          	add	s5,s1,s7
    2c94:	00891913          	slli	s2,s2,0x8
    2c98:	010a9a93          	slli	s5,s5,0x10
    2c9c:	01490b33          	add	s6,s2,s4
    2ca0:	010ada93          	srli	s5,s5,0x10
    2ca4:	00859593          	slli	a1,a1,0x8
    2ca8:	010b1b13          	slli	s6,s6,0x10
    2cac:	01340023          	sb	s3,0(s0)
    2cb0:	03541423          	sh	s5,40(s0)
    2cb4:	00f585b3          	add	a1,a1,a5
    2cb8:	05444503          	lbu	a0,84(s0)
    2cbc:	010b5b13          	srli	s6,s6,0x10
    2cc0:	02059663          	bnez	a1,2cec <fatfs_init+0x1dc>
    2cc4:	06b44583          	lbu	a1,107(s0)
    2cc8:	06a44783          	lbu	a5,106(s0)
    2ccc:	01859593          	slli	a1,a1,0x18
    2cd0:	01079793          	slli	a5,a5,0x10
    2cd4:	00f585b3          	add	a1,a1,a5
    2cd8:	06844783          	lbu	a5,104(s0)
    2cdc:	00f585b3          	add	a1,a1,a5
    2ce0:	06944783          	lbu	a5,105(s0)
    2ce4:	00879793          	slli	a5,a5,0x8
    2ce8:	00f585b3          	add	a1,a1,a5
    2cec:	07344783          	lbu	a5,115(s0)
    2cf0:	07244703          	lbu	a4,114(s0)
    2cf4:	02b42023          	sw	a1,32(s0)
    2cf8:	01879793          	slli	a5,a5,0x18
    2cfc:	01071713          	slli	a4,a4,0x10
    2d00:	00e787b3          	add	a5,a5,a4
    2d04:	07044703          	lbu	a4,112(s0)
    2d08:	005a9a93          	slli	s5,s5,0x5
    2d0c:	1ffa8a93          	addi	s5,s5,511
    2d10:	00e787b3          	add	a5,a5,a4
    2d14:	07144703          	lbu	a4,113(s0)
    2d18:	409ada93          	srai	s5,s5,0x9
    2d1c:	00871713          	slli	a4,a4,0x8
    2d20:	00e787b3          	add	a5,a5,a4
    2d24:	00f42423          	sw	a5,8(s0)
    2d28:	07544783          	lbu	a5,117(s0)
    2d2c:	07444703          	lbu	a4,116(s0)
    2d30:	00879793          	slli	a5,a5,0x8
    2d34:	00e787b3          	add	a5,a5,a4
    2d38:	00f41c23          	sh	a5,24(s0)
    2d3c:	fffff097          	auipc	ra,0xfffff
    2d40:	ce8080e7          	jalr	-792(ra) # 1a24 <__mulsi3>
    2d44:	00ab07b3          	add	a5,s6,a0
    2d48:	00f42623          	sw	a5,12(s0)
    2d4c:	01c42783          	lw	a5,28(s0)
    2d50:	24244703          	lbu	a4,578(s0)
    2d54:	01542823          	sw	s5,16(s0)
    2d58:	00fb0b33          	add	s6,s6,a5
    2d5c:	24344783          	lbu	a5,579(s0)
    2d60:	01642a23          	sw	s6,20(s0)
    2d64:	01650b33          	add	s6,a0,s6
    2d68:	00879793          	slli	a5,a5,0x8
    2d6c:	00e787b3          	add	a5,a5,a4
    2d70:	0000b737          	lui	a4,0xb
    2d74:	01642223          	sw	s6,4(s0)
    2d78:	a5570713          	addi	a4,a4,-1451 # aa55 <_fs+0xd8d>
    2d7c:	e4e790e3          	bne	a5,a4,2bbc <fatfs_init+0xac>
    2d80:	05844783          	lbu	a5,88(s0)
    2d84:	05744703          	lbu	a4,87(s0)
    2d88:	017484b3          	add	s1,s1,s7
    2d8c:	00549493          	slli	s1,s1,0x5
    2d90:	00879793          	slli	a5,a5,0x8
    2d94:	1ff48493          	addi	s1,s1,511
    2d98:	00e787b3          	add	a5,a5,a4
    2d9c:	4094d493          	srai	s1,s1,0x9
    2da0:	02079663          	bnez	a5,2dcc <fatfs_init+0x2bc>
    2da4:	06744783          	lbu	a5,103(s0)
    2da8:	06644703          	lbu	a4,102(s0)
    2dac:	01879793          	slli	a5,a5,0x18
    2db0:	01071713          	slli	a4,a4,0x10
    2db4:	00e787b3          	add	a5,a5,a4
    2db8:	06444703          	lbu	a4,100(s0)
    2dbc:	00e787b3          	add	a5,a5,a4
    2dc0:	06544703          	lbu	a4,101(s0)
    2dc4:	00871713          	slli	a4,a4,0x8
    2dc8:	00e787b3          	add	a5,a5,a4
    2dcc:	01490933          	add	s2,s2,s4
    2dd0:	00990933          	add	s2,s2,s1
    2dd4:	00a90533          	add	a0,s2,a0
    2dd8:	40a787b3          	sub	a5,a5,a0
    2ddc:	ffb00513          	li	a0,-5
    2de0:	d80980e3          	beqz	s3,2b60 <fatfs_init+0x50>
    2de4:	00078513          	mv	a0,a5
    2de8:	00098593          	mv	a1,s3
    2dec:	ffffe097          	auipc	ra,0xffffe
    2df0:	344080e7          	jalr	836(ra) # 1130 <__udivsi3>
    2df4:	00001737          	lui	a4,0x1
    2df8:	00050793          	mv	a5,a0
    2dfc:	ff470713          	addi	a4,a4,-12 # ff4 <sdcard_init+0x80>
    2e00:	ffb00513          	li	a0,-5
    2e04:	d4f77ee3          	bgeu	a4,a5,2b60 <fatfs_init+0x50>
    2e08:	00010737          	lui	a4,0x10
    2e0c:	ff470713          	addi	a4,a4,-12 # fff4 <_fs+0x632c>
    2e10:	02f76663          	bltu	a4,a5,2e3c <fatfs_init+0x32c>
    2e14:	00042423          	sw	zero,8(s0)
    2e18:	02042823          	sw	zero,48(s0)
    2e1c:	00000513          	li	a0,0
    2e20:	d41ff06f          	j	2b60 <fatfs_init+0x50>
    2e24:	ff278793          	addi	a5,a5,-14
    2e28:	0ff7f793          	zext.b	a5,a5
    2e2c:	00100713          	li	a4,1
    2e30:	00000513          	li	a0,0
    2e34:	dcf776e3          	bgeu	a4,a5,2c00 <fatfs_init+0xf0>
    2e38:	e09ff06f          	j	2c40 <fatfs_init+0x130>
    2e3c:	00100793          	li	a5,1
    2e40:	02f42823          	sw	a5,48(s0)
    2e44:	fd9ff06f          	j	2e1c <fatfs_init+0x30c>

00002e48 <fl_attach_media>:
    2e48:	000057b7          	lui	a5,0x5
    2e4c:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    2e50:	ff010113          	addi	sp,sp,-16
    2e54:	00812423          	sw	s0,8(sp)
    2e58:	00912223          	sw	s1,4(sp)
    2e5c:	00112623          	sw	ra,12(sp)
    2e60:	00050493          	mv	s1,a0
    2e64:	00058413          	mv	s0,a1
    2e68:	00079663          	bnez	a5,2e74 <fl_attach_media+0x2c>
    2e6c:	fffff097          	auipc	ra,0xfffff
    2e70:	054080e7          	jalr	84(ra) # 1ec0 <fl_init>
    2e74:	0000a537          	lui	a0,0xa
    2e78:	cc850793          	addi	a5,a0,-824 # 9cc8 <_fs>
    2e7c:	cc850513          	addi	a0,a0,-824
    2e80:	0287ac23          	sw	s0,56(a5)
    2e84:	0297aa23          	sw	s1,52(a5)
    2e88:	00000097          	auipc	ra,0x0
    2e8c:	c88080e7          	jalr	-888(ra) # 2b10 <fatfs_init>
    2e90:	00050413          	mv	s0,a0
    2e94:	02050863          	beqz	a0,2ec4 <fl_attach_media+0x7c>
    2e98:	00050593          	mv	a1,a0
    2e9c:	00005537          	lui	a0,0x5
    2ea0:	1ec50513          	addi	a0,a0,492 # 51ec <font+0x1f4>
    2ea4:	fffff097          	auipc	ra,0xfffff
    2ea8:	a44080e7          	jalr	-1468(ra) # 18e8 <printf>
    2eac:	00c12083          	lw	ra,12(sp)
    2eb0:	00040513          	mv	a0,s0
    2eb4:	00812403          	lw	s0,8(sp)
    2eb8:	00412483          	lw	s1,4(sp)
    2ebc:	01010113          	addi	sp,sp,16
    2ec0:	00008067          	ret
    2ec4:	000057b7          	lui	a5,0x5
    2ec8:	00100713          	li	a4,1
    2ecc:	26e7a823          	sw	a4,624(a5) # 5270 <_filelib_valid>
    2ed0:	fddff06f          	j	2eac <fl_attach_media+0x64>

00002ed4 <fatfs_fat_purge>:
    2ed4:	ff010113          	addi	sp,sp,-16
    2ed8:	00812423          	sw	s0,8(sp)
    2edc:	25452403          	lw	s0,596(a0)
    2ee0:	00912223          	sw	s1,4(sp)
    2ee4:	00112623          	sw	ra,12(sp)
    2ee8:	00050493          	mv	s1,a0
    2eec:	00041663          	bnez	s0,2ef8 <fatfs_fat_purge+0x24>
    2ef0:	00100513          	li	a0,1
    2ef4:	0280006f          	j	2f1c <fatfs_fat_purge+0x48>
    2ef8:	20442783          	lw	a5,516(s0)
    2efc:	00079663          	bnez	a5,2f08 <fatfs_fat_purge+0x34>
    2f00:	20c42403          	lw	s0,524(s0)
    2f04:	fe9ff06f          	j	2eec <fatfs_fat_purge+0x18>
    2f08:	00040593          	mv	a1,s0
    2f0c:	00048513          	mv	a0,s1
    2f10:	fffff097          	auipc	ra,0xfffff
    2f14:	c48080e7          	jalr	-952(ra) # 1b58 <fatfs_fat_writeback>
    2f18:	fe0514e3          	bnez	a0,2f00 <fatfs_fat_purge+0x2c>
    2f1c:	00c12083          	lw	ra,12(sp)
    2f20:	00812403          	lw	s0,8(sp)
    2f24:	00412483          	lw	s1,4(sp)
    2f28:	01010113          	addi	sp,sp,16
    2f2c:	00008067          	ret

00002f30 <fatfs_find_next_cluster>:
    2f30:	ff010113          	addi	sp,sp,-16
    2f34:	00812423          	sw	s0,8(sp)
    2f38:	01212023          	sw	s2,0(sp)
    2f3c:	00112623          	sw	ra,12(sp)
    2f40:	00912223          	sw	s1,4(sp)
    2f44:	00050913          	mv	s2,a0
    2f48:	00200413          	li	s0,2
    2f4c:	00058463          	beqz	a1,2f54 <fatfs_find_next_cluster+0x24>
    2f50:	00058413          	mv	s0,a1
    2f54:	03092783          	lw	a5,48(s2)
    2f58:	00745493          	srli	s1,s0,0x7
    2f5c:	00079463          	bnez	a5,2f64 <fatfs_find_next_cluster+0x34>
    2f60:	00845493          	srli	s1,s0,0x8
    2f64:	01492583          	lw	a1,20(s2)
    2f68:	00090513          	mv	a0,s2
    2f6c:	00b485b3          	add	a1,s1,a1
    2f70:	fffff097          	auipc	ra,0xfffff
    2f74:	c6c080e7          	jalr	-916(ra) # 1bdc <fatfs_fat_read_sector>
    2f78:	00050793          	mv	a5,a0
    2f7c:	fff00513          	li	a0,-1
    2f80:	04078a63          	beqz	a5,2fd4 <fatfs_find_next_cluster+0xa4>
    2f84:	03092703          	lw	a4,48(s2)
    2f88:	2087a783          	lw	a5,520(a5)
    2f8c:	06071063          	bnez	a4,2fec <fatfs_find_next_cluster+0xbc>
    2f90:	00849493          	slli	s1,s1,0x8
    2f94:	40940433          	sub	s0,s0,s1
    2f98:	00010737          	lui	a4,0x10
    2f9c:	00141413          	slli	s0,s0,0x1
    2fa0:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6337>
    2fa4:	00e47433          	and	s0,s0,a4
    2fa8:	008787b3          	add	a5,a5,s0
    2fac:	0017c503          	lbu	a0,1(a5)
    2fb0:	0007c783          	lbu	a5,0(a5)
    2fb4:	00851513          	slli	a0,a0,0x8
    2fb8:	00f50533          	add	a0,a0,a5
    2fbc:	ffff07b7          	lui	a5,0xffff0
    2fc0:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2fc4:	00f507b3          	add	a5,a0,a5
    2fc8:	00700713          	li	a4,7
    2fcc:	00f76463          	bltu	a4,a5,2fd4 <fatfs_find_next_cluster+0xa4>
    2fd0:	fff00513          	li	a0,-1
    2fd4:	00c12083          	lw	ra,12(sp)
    2fd8:	00812403          	lw	s0,8(sp)
    2fdc:	00412483          	lw	s1,4(sp)
    2fe0:	00012903          	lw	s2,0(sp)
    2fe4:	01010113          	addi	sp,sp,16
    2fe8:	00008067          	ret
    2fec:	00749493          	slli	s1,s1,0x7
    2ff0:	40940433          	sub	s0,s0,s1
    2ff4:	00010737          	lui	a4,0x10
    2ff8:	fff70713          	addi	a4,a4,-1 # ffff <_fs+0x6337>
    2ffc:	00241413          	slli	s0,s0,0x2
    3000:	00e47433          	and	s0,s0,a4
    3004:	008787b3          	add	a5,a5,s0
    3008:	0037c503          	lbu	a0,3(a5)
    300c:	0027c703          	lbu	a4,2(a5)
    3010:	01851513          	slli	a0,a0,0x18
    3014:	01071713          	slli	a4,a4,0x10
    3018:	00e50533          	add	a0,a0,a4
    301c:	0007c703          	lbu	a4,0(a5)
    3020:	0017c783          	lbu	a5,1(a5)
    3024:	00e50533          	add	a0,a0,a4
    3028:	00879793          	slli	a5,a5,0x8
    302c:	00f50533          	add	a0,a0,a5
    3030:	00451513          	slli	a0,a0,0x4
    3034:	00455513          	srli	a0,a0,0x4
    3038:	f00007b7          	lui	a5,0xf0000
    303c:	f85ff06f          	j	2fc0 <fatfs_find_next_cluster+0x90>

00003040 <fatfs_sector_reader>:
    3040:	03052783          	lw	a5,48(a0)
    3044:	fd010113          	addi	sp,sp,-48
    3048:	02812423          	sw	s0,40(sp)
    304c:	03212023          	sw	s2,32(sp)
    3050:	01312e23          	sw	s3,28(sp)
    3054:	02112623          	sw	ra,44(sp)
    3058:	02912223          	sw	s1,36(sp)
    305c:	01412c23          	sw	s4,24(sp)
    3060:	01512a23          	sw	s5,20(sp)
    3064:	00f5e7b3          	or	a5,a1,a5
    3068:	00050413          	mv	s0,a0
    306c:	00060913          	mv	s2,a2
    3070:	00068993          	mv	s3,a3
    3074:	06079c63          	bnez	a5,30ec <fatfs_sector_reader+0xac>
    3078:	01052783          	lw	a5,16(a0)
    307c:	02f66663          	bltu	a2,a5,30a8 <fatfs_sector_reader+0x68>
    3080:	00000513          	li	a0,0
    3084:	02c12083          	lw	ra,44(sp)
    3088:	02812403          	lw	s0,40(sp)
    308c:	02412483          	lw	s1,36(sp)
    3090:	02012903          	lw	s2,32(sp)
    3094:	01c12983          	lw	s3,28(sp)
    3098:	01812a03          	lw	s4,24(sp)
    309c:	01412a83          	lw	s5,20(sp)
    30a0:	03010113          	addi	sp,sp,48
    30a4:	00008067          	ret
    30a8:	01c52503          	lw	a0,28(a0)
    30ac:	00c42783          	lw	a5,12(s0)
    30b0:	00f50533          	add	a0,a0,a5
    30b4:	01250533          	add	a0,a0,s2
    30b8:	0a098263          	beqz	s3,315c <fatfs_sector_reader+0x11c>
    30bc:	03442783          	lw	a5,52(s0)
    30c0:	00100613          	li	a2,1
    30c4:	00098593          	mv	a1,s3
    30c8:	02812403          	lw	s0,40(sp)
    30cc:	02c12083          	lw	ra,44(sp)
    30d0:	02412483          	lw	s1,36(sp)
    30d4:	02012903          	lw	s2,32(sp)
    30d8:	01c12983          	lw	s3,28(sp)
    30dc:	01812a03          	lw	s4,24(sp)
    30e0:	01412a83          	lw	s5,20(sp)
    30e4:	03010113          	addi	sp,sp,48
    30e8:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    30ec:	00058493          	mv	s1,a1
    30f0:	00054583          	lbu	a1,0(a0)
    30f4:	00060513          	mv	a0,a2
    30f8:	00000a93          	li	s5,0
    30fc:	00b12623          	sw	a1,12(sp)
    3100:	ffffe097          	auipc	ra,0xffffe
    3104:	030080e7          	jalr	48(ra) # 1130 <__udivsi3>
    3108:	00c12583          	lw	a1,12(sp)
    310c:	00050a13          	mv	s4,a0
    3110:	00090513          	mv	a0,s2
    3114:	ffffe097          	auipc	ra,0xffffe
    3118:	064080e7          	jalr	100(ra) # 1178 <__umodsi3>
    311c:	00050913          	mv	s2,a0
    3120:	034a9063          	bne	s5,s4,3140 <fatfs_sector_reader+0x100>
    3124:	fff00793          	li	a5,-1
    3128:	f4f48ce3          	beq	s1,a5,3080 <fatfs_sector_reader+0x40>
    312c:	00048593          	mv	a1,s1
    3130:	00040513          	mv	a0,s0
    3134:	fffff097          	auipc	ra,0xfffff
    3138:	c50080e7          	jalr	-944(ra) # 1d84 <fatfs_lba_of_cluster>
    313c:	f79ff06f          	j	30b4 <fatfs_sector_reader+0x74>
    3140:	00048593          	mv	a1,s1
    3144:	00040513          	mv	a0,s0
    3148:	00000097          	auipc	ra,0x0
    314c:	de8080e7          	jalr	-536(ra) # 2f30 <fatfs_find_next_cluster>
    3150:	00050493          	mv	s1,a0
    3154:	001a8a93          	addi	s5,s5,1
    3158:	fc9ff06f          	j	3120 <fatfs_sector_reader+0xe0>
    315c:	24442783          	lw	a5,580(s0)
    3160:	00a78c63          	beq	a5,a0,3178 <fatfs_sector_reader+0x138>
    3164:	03442783          	lw	a5,52(s0)
    3168:	24a42223          	sw	a0,580(s0)
    316c:	00100613          	li	a2,1
    3170:	04440593          	addi	a1,s0,68
    3174:	f55ff06f          	j	30c8 <fatfs_sector_reader+0x88>
    3178:	00100513          	li	a0,1
    317c:	f09ff06f          	j	3084 <fatfs_sector_reader+0x44>

00003180 <fatfs_get_file_entry>:
    3180:	eb010113          	addi	sp,sp,-336
    3184:	14812423          	sw	s0,328(sp)
    3188:	01810413          	addi	s0,sp,24
    318c:	14912223          	sw	s1,324(sp)
    3190:	15212023          	sw	s2,320(sp)
    3194:	13312e23          	sw	s3,316(sp)
    3198:	13412c23          	sw	s4,312(sp)
    319c:	13512a23          	sw	s5,308(sp)
    31a0:	13612823          	sw	s6,304(sp)
    31a4:	14112623          	sw	ra,332(sp)
    31a8:	13712623          	sw	s7,300(sp)
    31ac:	13812423          	sw	s8,296(sp)
    31b0:	13912223          	sw	s9,292(sp)
    31b4:	13a12023          	sw	s10,288(sp)
    31b8:	00050493          	mv	s1,a0
    31bc:	00058a93          	mv	s5,a1
    31c0:	00060913          	mv	s2,a2
    31c4:	00068993          	mv	s3,a3
    31c8:	10010ea3          	sb	zero,285(sp)
    31cc:	11c10a13          	addi	s4,sp,284
    31d0:	00040b13          	mv	s6,s0
    31d4:	00040513          	mv	a0,s0
    31d8:	00d00613          	li	a2,13
    31dc:	00000593          	li	a1,0
    31e0:	00d40413          	addi	s0,s0,13
    31e4:	ffffe097          	auipc	ra,0xffffe
    31e8:	ff8080e7          	jalr	-8(ra) # 11dc <memset>
    31ec:	ff4414e3          	bne	s0,s4,31d4 <fatfs_get_file_entry+0x54>
    31f0:	00000a13          	li	s4,0
    31f4:	24448c13          	addi	s8,s1,580
    31f8:	00800c93          	li	s9,8
    31fc:	02000b93          	li	s7,32
    3200:	00000693          	li	a3,0
    3204:	000a0613          	mv	a2,s4
    3208:	000a8593          	mv	a1,s5
    320c:	00048513          	mv	a0,s1
    3210:	00000097          	auipc	ra,0x0
    3214:	e30080e7          	jalr	-464(ra) # 3040 <fatfs_sector_reader>
    3218:	16050463          	beqz	a0,3380 <fatfs_get_file_entry+0x200>
    321c:	04448413          	addi	s0,s1,68
    3220:	02e00d13          	li	s10,46
    3224:	00040513          	mv	a0,s0
    3228:	fffff097          	auipc	ra,0xfffff
    322c:	e18080e7          	jalr	-488(ra) # 2040 <fatfs_entry_lfn_text>
    3230:	02050263          	beqz	a0,3254 <fatfs_get_file_entry+0xd4>
    3234:	00040593          	mv	a1,s0
    3238:	000b0513          	mv	a0,s6
    323c:	fffff097          	auipc	ra,0xfffff
    3240:	cfc080e7          	jalr	-772(ra) # 1f38 <fatfs_lfn_cache_entry>
    3244:	02040413          	addi	s0,s0,32
    3248:	fd841ee3          	bne	s0,s8,3224 <fatfs_get_file_entry+0xa4>
    324c:	001a0a13          	addi	s4,s4,1
    3250:	fb1ff06f          	j	3200 <fatfs_get_file_entry+0x80>
    3254:	00040513          	mv	a0,s0
    3258:	fffff097          	auipc	ra,0xfffff
    325c:	dfc080e7          	jalr	-516(ra) # 2054 <fatfs_entry_lfn_invalid>
    3260:	00050663          	beqz	a0,326c <fatfs_get_file_entry+0xec>
    3264:	10010ea3          	sb	zero,285(sp)
    3268:	fddff06f          	j	3244 <fatfs_get_file_entry+0xc4>
    326c:	00040593          	mv	a1,s0
    3270:	000b0513          	mv	a0,s6
    3274:	fffff097          	auipc	ra,0xfffff
    3278:	e18080e7          	jalr	-488(ra) # 208c <fatfs_entry_lfn_exists>
    327c:	06050863          	beqz	a0,32ec <fatfs_get_file_entry+0x16c>
    3280:	000b0513          	mv	a0,s6
    3284:	fffff097          	auipc	ra,0xfffff
    3288:	d80080e7          	jalr	-640(ra) # 2004 <fatfs_lfn_cache_get>
    328c:	00090593          	mv	a1,s2
    3290:	fffff097          	auipc	ra,0xfffff
    3294:	5cc080e7          	jalr	1484(ra) # 285c <fatfs_compare_names>
    3298:	fc0506e3          	beqz	a0,3264 <fatfs_get_file_entry+0xe4>
    329c:	02000613          	li	a2,32
    32a0:	00040593          	mv	a1,s0
    32a4:	00098513          	mv	a0,s3
    32a8:	ffffe097          	auipc	ra,0xffffe
    32ac:	f50080e7          	jalr	-176(ra) # 11f8 <memcpy>
    32b0:	00100513          	li	a0,1
    32b4:	14c12083          	lw	ra,332(sp)
    32b8:	14812403          	lw	s0,328(sp)
    32bc:	14412483          	lw	s1,324(sp)
    32c0:	14012903          	lw	s2,320(sp)
    32c4:	13c12983          	lw	s3,316(sp)
    32c8:	13812a03          	lw	s4,312(sp)
    32cc:	13412a83          	lw	s5,308(sp)
    32d0:	13012b03          	lw	s6,304(sp)
    32d4:	12c12b83          	lw	s7,300(sp)
    32d8:	12812c03          	lw	s8,296(sp)
    32dc:	12412c83          	lw	s9,292(sp)
    32e0:	12012d03          	lw	s10,288(sp)
    32e4:	15010113          	addi	sp,sp,336
    32e8:	00008067          	ret
    32ec:	00040513          	mv	a0,s0
    32f0:	fffff097          	auipc	ra,0xfffff
    32f4:	de4080e7          	jalr	-540(ra) # 20d4 <fatfs_entry_sfn_only>
    32f8:	f40506e3          	beqz	a0,3244 <fatfs_get_file_entry+0xc4>
    32fc:	00d00613          	li	a2,13
    3300:	00000593          	li	a1,0
    3304:	00810513          	addi	a0,sp,8
    3308:	ffffe097          	auipc	ra,0xffffe
    330c:	ed4080e7          	jalr	-300(ra) # 11dc <memset>
    3310:	00000793          	li	a5,0
    3314:	00f406b3          	add	a3,s0,a5
    3318:	0006c683          	lbu	a3,0(a3)
    331c:	00810713          	addi	a4,sp,8
    3320:	00f70733          	add	a4,a4,a5
    3324:	00d70023          	sb	a3,0(a4)
    3328:	00178793          	addi	a5,a5,1
    332c:	ff9794e3          	bne	a5,s9,3314 <fatfs_get_file_entry+0x194>
    3330:	00844783          	lbu	a5,8(s0)
    3334:	00944683          	lbu	a3,9(s0)
    3338:	00100713          	li	a4,1
    333c:	00f108a3          	sb	a5,17(sp)
    3340:	00d10923          	sb	a3,18(sp)
    3344:	01769663          	bne	a3,s7,3350 <fatfs_get_file_entry+0x1d0>
    3348:	fe078793          	addi	a5,a5,-32
    334c:	00f03733          	snez	a4,a5
    3350:	00a44783          	lbu	a5,10(s0)
    3354:	00f109a3          	sb	a5,19(sp)
    3358:	01779463          	bne	a5,s7,3360 <fatfs_get_file_entry+0x1e0>
    335c:	00070a63          	beqz	a4,3370 <fatfs_get_file_entry+0x1f0>
    3360:	00814703          	lbu	a4,8(sp)
    3364:	02000793          	li	a5,32
    3368:	01a70463          	beq	a4,s10,3370 <fatfs_get_file_entry+0x1f0>
    336c:	02e00793          	li	a5,46
    3370:	00f10823          	sb	a5,16(sp)
    3374:	00090593          	mv	a1,s2
    3378:	00810513          	addi	a0,sp,8
    337c:	f15ff06f          	j	3290 <fatfs_get_file_entry+0x110>
    3380:	00000513          	li	a0,0
    3384:	f31ff06f          	j	32b4 <fatfs_get_file_entry+0x134>

00003388 <_open_directory>:
    3388:	eb010113          	addi	sp,sp,-336
    338c:	13512a23          	sw	s5,308(sp)
    3390:	0000aab7          	lui	s5,0xa
    3394:	cc8a8793          	addi	a5,s5,-824 # 9cc8 <_fs>
    3398:	14812423          	sw	s0,328(sp)
    339c:	14912223          	sw	s1,324(sp)
    33a0:	15212023          	sw	s2,320(sp)
    33a4:	13312e23          	sw	s3,316(sp)
    33a8:	13412c23          	sw	s4,312(sp)
    33ac:	13612823          	sw	s6,304(sp)
    33b0:	0087a403          	lw	s0,8(a5)
    33b4:	14112623          	sw	ra,332(sp)
    33b8:	00050a13          	mv	s4,a0
    33bc:	00058913          	mv	s2,a1
    33c0:	fffff097          	auipc	ra,0xfffff
    33c4:	254080e7          	jalr	596(ra) # 2614 <fatfs_total_path_levels>
    33c8:	00050993          	mv	s3,a0
    33cc:	00000493          	li	s1,0
    33d0:	fff00b13          	li	s6,-1
    33d4:	0099d863          	bge	s3,s1,33e4 <_open_directory+0x5c>
    33d8:	00892023          	sw	s0,0(s2)
    33dc:	00100513          	li	a0,1
    33e0:	0240006f          	j	3404 <_open_directory+0x7c>
    33e4:	10400693          	li	a3,260
    33e8:	02c10613          	addi	a2,sp,44
    33ec:	00048593          	mv	a1,s1
    33f0:	000a0513          	mv	a0,s4
    33f4:	fffff097          	auipc	ra,0xfffff
    33f8:	294080e7          	jalr	660(ra) # 2688 <fatfs_get_substring>
    33fc:	03651863          	bne	a0,s6,342c <_open_directory+0xa4>
    3400:	00000513          	li	a0,0
    3404:	14c12083          	lw	ra,332(sp)
    3408:	14812403          	lw	s0,328(sp)
    340c:	14412483          	lw	s1,324(sp)
    3410:	14012903          	lw	s2,320(sp)
    3414:	13c12983          	lw	s3,316(sp)
    3418:	13812a03          	lw	s4,312(sp)
    341c:	13412a83          	lw	s5,308(sp)
    3420:	13012b03          	lw	s6,304(sp)
    3424:	15010113          	addi	sp,sp,336
    3428:	00008067          	ret
    342c:	00c10693          	addi	a3,sp,12
    3430:	02c10613          	addi	a2,sp,44
    3434:	00040593          	mv	a1,s0
    3438:	cc8a8513          	addi	a0,s5,-824
    343c:	00000097          	auipc	ra,0x0
    3440:	d44080e7          	jalr	-700(ra) # 3180 <fatfs_get_file_entry>
    3444:	fa050ee3          	beqz	a0,3400 <_open_directory+0x78>
    3448:	00c10513          	addi	a0,sp,12
    344c:	fffff097          	auipc	ra,0xfffff
    3450:	cc4080e7          	jalr	-828(ra) # 2110 <fatfs_entry_is_dir>
    3454:	fa0506e3          	beqz	a0,3400 <_open_directory+0x78>
    3458:	02015403          	lhu	s0,32(sp)
    345c:	02615783          	lhu	a5,38(sp)
    3460:	00148493          	addi	s1,s1,1
    3464:	01041413          	slli	s0,s0,0x10
    3468:	00f40433          	add	s0,s0,a5
    346c:	f69ff06f          	j	33d4 <_open_directory+0x4c>

00003470 <fl_opendir>:
    3470:	fe010113          	addi	sp,sp,-32
    3474:	fff00793          	li	a5,-1
    3478:	00f12623          	sw	a5,12(sp)
    347c:	000057b7          	lui	a5,0x5
    3480:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    3484:	00812c23          	sw	s0,24(sp)
    3488:	01212823          	sw	s2,16(sp)
    348c:	00112e23          	sw	ra,28(sp)
    3490:	00912a23          	sw	s1,20(sp)
    3494:	00050913          	mv	s2,a0
    3498:	00058413          	mv	s0,a1
    349c:	00079663          	bnez	a5,34a8 <fl_opendir+0x38>
    34a0:	fffff097          	auipc	ra,0xfffff
    34a4:	a20080e7          	jalr	-1504(ra) # 1ec0 <fl_init>
    34a8:	0000a4b7          	lui	s1,0xa
    34ac:	cc848793          	addi	a5,s1,-824 # 9cc8 <_fs>
    34b0:	03c7a783          	lw	a5,60(a5)
    34b4:	cc848493          	addi	s1,s1,-824
    34b8:	00078463          	beqz	a5,34c0 <fl_opendir+0x50>
    34bc:	000780e7          	jalr	a5
    34c0:	00090513          	mv	a0,s2
    34c4:	fffff097          	auipc	ra,0xfffff
    34c8:	150080e7          	jalr	336(ra) # 2614 <fatfs_total_path_levels>
    34cc:	fff00793          	li	a5,-1
    34d0:	02f51063          	bne	a0,a5,34f0 <fl_opendir+0x80>
    34d4:	0084a783          	lw	a5,8(s1)
    34d8:	00f12623          	sw	a5,12(sp)
    34dc:	00c12783          	lw	a5,12(sp)
    34e0:	00042023          	sw	zero,0(s0)
    34e4:	00040423          	sb	zero,8(s0)
    34e8:	00f42223          	sw	a5,4(s0)
    34ec:	0180006f          	j	3504 <fl_opendir+0x94>
    34f0:	00c10593          	addi	a1,sp,12
    34f4:	00090513          	mv	a0,s2
    34f8:	00000097          	auipc	ra,0x0
    34fc:	e90080e7          	jalr	-368(ra) # 3388 <_open_directory>
    3500:	fc051ee3          	bnez	a0,34dc <fl_opendir+0x6c>
    3504:	0404a783          	lw	a5,64(s1)
    3508:	00078463          	beqz	a5,3510 <fl_opendir+0xa0>
    350c:	000780e7          	jalr	a5
    3510:	00c12703          	lw	a4,12(sp)
    3514:	fff00793          	li	a5,-1
    3518:	00f71463          	bne	a4,a5,3520 <fl_opendir+0xb0>
    351c:	00000413          	li	s0,0
    3520:	01c12083          	lw	ra,28(sp)
    3524:	00040513          	mv	a0,s0
    3528:	01812403          	lw	s0,24(sp)
    352c:	01412483          	lw	s1,20(sp)
    3530:	01012903          	lw	s2,16(sp)
    3534:	02010113          	addi	sp,sp,32
    3538:	00008067          	ret

0000353c <_open_file>:
    353c:	fc010113          	addi	sp,sp,-64
    3540:	02812c23          	sw	s0,56(sp)
    3544:	03312623          	sw	s3,44(sp)
    3548:	02112e23          	sw	ra,60(sp)
    354c:	02912a23          	sw	s1,52(sp)
    3550:	03212823          	sw	s2,48(sp)
    3554:	00050993          	mv	s3,a0
    3558:	ffffe097          	auipc	ra,0xffffe
    355c:	770080e7          	jalr	1904(ra) # 1cc8 <_allocate_file>
    3560:	00050413          	mv	s0,a0
    3564:	10050c63          	beqz	a0,367c <_open_file+0x140>
    3568:	01450913          	addi	s2,a0,20
    356c:	10400613          	li	a2,260
    3570:	00000593          	li	a1,0
    3574:	00090513          	mv	a0,s2
    3578:	ffffe097          	auipc	ra,0xffffe
    357c:	c64080e7          	jalr	-924(ra) # 11dc <memset>
    3580:	11840493          	addi	s1,s0,280
    3584:	10400613          	li	a2,260
    3588:	00000593          	li	a1,0
    358c:	00048513          	mv	a0,s1
    3590:	ffffe097          	auipc	ra,0xffffe
    3594:	c4c080e7          	jalr	-948(ra) # 11dc <memset>
    3598:	10400713          	li	a4,260
    359c:	00048693          	mv	a3,s1
    35a0:	10400613          	li	a2,260
    35a4:	00090593          	mv	a1,s2
    35a8:	00098513          	mv	a0,s3
    35ac:	fffff097          	auipc	ra,0xfffff
    35b0:	1d0080e7          	jalr	464(ra) # 277c <fatfs_split_path>
    35b4:	fff00793          	li	a5,-1
    35b8:	00f51c63          	bne	a0,a5,35d0 <_open_file+0x94>
    35bc:	00040513          	mv	a0,s0
    35c0:	ffffe097          	auipc	ra,0xffffe
    35c4:	77c080e7          	jalr	1916(ra) # 1d3c <_free_file>
    35c8:	00000413          	li	s0,0
    35cc:	0b00006f          	j	367c <_open_file+0x140>
    35d0:	00040513          	mv	a0,s0
    35d4:	fffff097          	auipc	ra,0xfffff
    35d8:	3f8080e7          	jalr	1016(ra) # 29cc <_check_file_open>
    35dc:	fe0510e3          	bnez	a0,35bc <_open_file+0x80>
    35e0:	01444783          	lbu	a5,20(s0)
    35e4:	0a079c63          	bnez	a5,369c <_open_file+0x160>
    35e8:	0000a7b7          	lui	a5,0xa
    35ec:	cd07a783          	lw	a5,-816(a5) # 9cd0 <_fs+0x8>
    35f0:	00f42023          	sw	a5,0(s0)
    35f4:	00042583          	lw	a1,0(s0)
    35f8:	0000a937          	lui	s2,0xa
    35fc:	00010693          	mv	a3,sp
    3600:	00048613          	mv	a2,s1
    3604:	cc890513          	addi	a0,s2,-824 # 9cc8 <_fs>
    3608:	00000097          	auipc	ra,0x0
    360c:	b78080e7          	jalr	-1160(ra) # 3180 <fatfs_get_file_entry>
    3610:	fa0506e3          	beqz	a0,35bc <_open_file+0x80>
    3614:	00010513          	mv	a0,sp
    3618:	fffff097          	auipc	ra,0xfffff
    361c:	b08080e7          	jalr	-1272(ra) # 2120 <fatfs_entry_is_file>
    3620:	f8050ee3          	beqz	a0,35bc <_open_file+0x80>
    3624:	00b00613          	li	a2,11
    3628:	00010593          	mv	a1,sp
    362c:	21c40513          	addi	a0,s0,540
    3630:	ffffe097          	auipc	ra,0xffffe
    3634:	bc8080e7          	jalr	-1080(ra) # 11f8 <memcpy>
    3638:	01c12783          	lw	a5,28(sp)
    363c:	01a15703          	lhu	a4,26(sp)
    3640:	00042423          	sw	zero,8(s0)
    3644:	00f42623          	sw	a5,12(s0)
    3648:	01415783          	lhu	a5,20(sp)
    364c:	42042a23          	sw	zero,1076(s0)
    3650:	00042823          	sw	zero,16(s0)
    3654:	01079793          	slli	a5,a5,0x10
    3658:	00e787b3          	add	a5,a5,a4
    365c:	00f42223          	sw	a5,4(s0)
    3660:	fff00793          	li	a5,-1
    3664:	42f42823          	sw	a5,1072(s0)
    3668:	22f42423          	sw	a5,552(s0)
    366c:	22f42623          	sw	a5,556(s0)
    3670:	cc890513          	addi	a0,s2,-824
    3674:	00000097          	auipc	ra,0x0
    3678:	860080e7          	jalr	-1952(ra) # 2ed4 <fatfs_fat_purge>
    367c:	03c12083          	lw	ra,60(sp)
    3680:	00040513          	mv	a0,s0
    3684:	03812403          	lw	s0,56(sp)
    3688:	03412483          	lw	s1,52(sp)
    368c:	03012903          	lw	s2,48(sp)
    3690:	02c12983          	lw	s3,44(sp)
    3694:	04010113          	addi	sp,sp,64
    3698:	00008067          	ret
    369c:	00040593          	mv	a1,s0
    36a0:	00090513          	mv	a0,s2
    36a4:	00000097          	auipc	ra,0x0
    36a8:	ce4080e7          	jalr	-796(ra) # 3388 <_open_directory>
    36ac:	f40514e3          	bnez	a0,35f4 <_open_file+0xb8>
    36b0:	f0dff06f          	j	35bc <_open_file+0x80>

000036b4 <fatfs_sfn_exists>:
    36b4:	fe010113          	addi	sp,sp,-32
    36b8:	00912a23          	sw	s1,20(sp)
    36bc:	01212823          	sw	s2,16(sp)
    36c0:	01312623          	sw	s3,12(sp)
    36c4:	01412423          	sw	s4,8(sp)
    36c8:	01512223          	sw	s5,4(sp)
    36cc:	00112e23          	sw	ra,28(sp)
    36d0:	00812c23          	sw	s0,24(sp)
    36d4:	00050493          	mv	s1,a0
    36d8:	00058993          	mv	s3,a1
    36dc:	00060a13          	mv	s4,a2
    36e0:	00000913          	li	s2,0
    36e4:	24450a93          	addi	s5,a0,580
    36e8:	00000693          	li	a3,0
    36ec:	00090613          	mv	a2,s2
    36f0:	00098593          	mv	a1,s3
    36f4:	00048513          	mv	a0,s1
    36f8:	00000097          	auipc	ra,0x0
    36fc:	948080e7          	jalr	-1720(ra) # 3040 <fatfs_sector_reader>
    3700:	06050263          	beqz	a0,3764 <fatfs_sfn_exists+0xb0>
    3704:	04448413          	addi	s0,s1,68
    3708:	00040513          	mv	a0,s0
    370c:	fffff097          	auipc	ra,0xfffff
    3710:	934080e7          	jalr	-1740(ra) # 2040 <fatfs_entry_lfn_text>
    3714:	02051e63          	bnez	a0,3750 <fatfs_sfn_exists+0x9c>
    3718:	00040513          	mv	a0,s0
    371c:	fffff097          	auipc	ra,0xfffff
    3720:	938080e7          	jalr	-1736(ra) # 2054 <fatfs_entry_lfn_invalid>
    3724:	02051663          	bnez	a0,3750 <fatfs_sfn_exists+0x9c>
    3728:	00040513          	mv	a0,s0
    372c:	fffff097          	auipc	ra,0xfffff
    3730:	9a8080e7          	jalr	-1624(ra) # 20d4 <fatfs_entry_sfn_only>
    3734:	00050e63          	beqz	a0,3750 <fatfs_sfn_exists+0x9c>
    3738:	00b00613          	li	a2,11
    373c:	000a0593          	mv	a1,s4
    3740:	00040513          	mv	a0,s0
    3744:	ffffe097          	auipc	ra,0xffffe
    3748:	af8080e7          	jalr	-1288(ra) # 123c <strncmp>
    374c:	00050a63          	beqz	a0,3760 <fatfs_sfn_exists+0xac>
    3750:	02040413          	addi	s0,s0,32
    3754:	fb541ae3          	bne	s0,s5,3708 <fatfs_sfn_exists+0x54>
    3758:	00190913          	addi	s2,s2,1
    375c:	f8dff06f          	j	36e8 <fatfs_sfn_exists+0x34>
    3760:	00100513          	li	a0,1
    3764:	01c12083          	lw	ra,28(sp)
    3768:	01812403          	lw	s0,24(sp)
    376c:	01412483          	lw	s1,20(sp)
    3770:	01012903          	lw	s2,16(sp)
    3774:	00c12983          	lw	s3,12(sp)
    3778:	00812a03          	lw	s4,8(sp)
    377c:	00412a83          	lw	s5,4(sp)
    3780:	02010113          	addi	sp,sp,32
    3784:	00008067          	ret

00003788 <fatfs_update_file_length>:
    3788:	03852783          	lw	a5,56(a0)
    378c:	14078e63          	beqz	a5,38e8 <fatfs_update_file_length+0x160>
    3790:	fd010113          	addi	sp,sp,-48
    3794:	02912223          	sw	s1,36(sp)
    3798:	03212023          	sw	s2,32(sp)
    379c:	01312e23          	sw	s3,28(sp)
    37a0:	01412c23          	sw	s4,24(sp)
    37a4:	01512a23          	sw	s5,20(sp)
    37a8:	01612823          	sw	s6,16(sp)
    37ac:	02112623          	sw	ra,44(sp)
    37b0:	02812423          	sw	s0,40(sp)
    37b4:	01712623          	sw	s7,12(sp)
    37b8:	00050493          	mv	s1,a0
    37bc:	00058a13          	mv	s4,a1
    37c0:	00060a93          	mv	s5,a2
    37c4:	00068913          	mv	s2,a3
    37c8:	00000993          	li	s3,0
    37cc:	24450b13          	addi	s6,a0,580
    37d0:	00000693          	li	a3,0
    37d4:	00098613          	mv	a2,s3
    37d8:	000a0593          	mv	a1,s4
    37dc:	00048513          	mv	a0,s1
    37e0:	00000097          	auipc	ra,0x0
    37e4:	860080e7          	jalr	-1952(ra) # 3040 <fatfs_sector_reader>
    37e8:	0c050863          	beqz	a0,38b8 <fatfs_update_file_length+0x130>
    37ec:	04448413          	addi	s0,s1,68
    37f0:	00040b93          	mv	s7,s0
    37f4:	00040513          	mv	a0,s0
    37f8:	fffff097          	auipc	ra,0xfffff
    37fc:	848080e7          	jalr	-1976(ra) # 2040 <fatfs_entry_lfn_text>
    3800:	0a051463          	bnez	a0,38a8 <fatfs_update_file_length+0x120>
    3804:	00040513          	mv	a0,s0
    3808:	fffff097          	auipc	ra,0xfffff
    380c:	84c080e7          	jalr	-1972(ra) # 2054 <fatfs_entry_lfn_invalid>
    3810:	08051c63          	bnez	a0,38a8 <fatfs_update_file_length+0x120>
    3814:	00040513          	mv	a0,s0
    3818:	fffff097          	auipc	ra,0xfffff
    381c:	8bc080e7          	jalr	-1860(ra) # 20d4 <fatfs_entry_sfn_only>
    3820:	08050463          	beqz	a0,38a8 <fatfs_update_file_length+0x120>
    3824:	00b00613          	li	a2,11
    3828:	000a8593          	mv	a1,s5
    382c:	00040513          	mv	a0,s0
    3830:	ffffe097          	auipc	ra,0xffffe
    3834:	a0c080e7          	jalr	-1524(ra) # 123c <strncmp>
    3838:	06051863          	bnez	a0,38a8 <fatfs_update_file_length+0x120>
    383c:	00895793          	srli	a5,s2,0x8
    3840:	01240e23          	sb	s2,28(s0)
    3844:	00f40ea3          	sb	a5,29(s0)
    3848:	01095793          	srli	a5,s2,0x10
    384c:	01895913          	srli	s2,s2,0x18
    3850:	00f40f23          	sb	a5,30(s0)
    3854:	01240fa3          	sb	s2,31(s0)
    3858:	00040593          	mv	a1,s0
    385c:	02000613          	li	a2,32
    3860:	00040513          	mv	a0,s0
    3864:	ffffe097          	auipc	ra,0xffffe
    3868:	994080e7          	jalr	-1644(ra) # 11f8 <memcpy>
    386c:	02812403          	lw	s0,40(sp)
    3870:	0384a783          	lw	a5,56(s1)
    3874:	2444a503          	lw	a0,580(s1)
    3878:	02c12083          	lw	ra,44(sp)
    387c:	02412483          	lw	s1,36(sp)
    3880:	02012903          	lw	s2,32(sp)
    3884:	01c12983          	lw	s3,28(sp)
    3888:	01812a03          	lw	s4,24(sp)
    388c:	01412a83          	lw	s5,20(sp)
    3890:	01012b03          	lw	s6,16(sp)
    3894:	000b8593          	mv	a1,s7
    3898:	00c12b83          	lw	s7,12(sp)
    389c:	00100613          	li	a2,1
    38a0:	03010113          	addi	sp,sp,48
    38a4:	00078067          	jr	a5
    38a8:	02040413          	addi	s0,s0,32
    38ac:	f56414e3          	bne	s0,s6,37f4 <fatfs_update_file_length+0x6c>
    38b0:	00198993          	addi	s3,s3,1
    38b4:	f1dff06f          	j	37d0 <fatfs_update_file_length+0x48>
    38b8:	02c12083          	lw	ra,44(sp)
    38bc:	02812403          	lw	s0,40(sp)
    38c0:	02412483          	lw	s1,36(sp)
    38c4:	02012903          	lw	s2,32(sp)
    38c8:	01c12983          	lw	s3,28(sp)
    38cc:	01812a03          	lw	s4,24(sp)
    38d0:	01412a83          	lw	s5,20(sp)
    38d4:	01012b03          	lw	s6,16(sp)
    38d8:	00c12b83          	lw	s7,12(sp)
    38dc:	00000513          	li	a0,0
    38e0:	03010113          	addi	sp,sp,48
    38e4:	00008067          	ret
    38e8:	00000513          	li	a0,0
    38ec:	00008067          	ret

000038f0 <fatfs_list_directory_next>:
    38f0:	ec010113          	addi	sp,sp,-320
    38f4:	13212823          	sw	s2,304(sp)
    38f8:	13312623          	sw	s3,300(sp)
    38fc:	13412423          	sw	s4,296(sp)
    3900:	13512223          	sw	s5,292(sp)
    3904:	12112e23          	sw	ra,316(sp)
    3908:	12812c23          	sw	s0,312(sp)
    390c:	12912a23          	sw	s1,308(sp)
    3910:	00050a13          	mv	s4,a0
    3914:	00058913          	mv	s2,a1
    3918:	00060993          	mv	s3,a2
    391c:	10010ea3          	sb	zero,285(sp)
    3920:	00f00a93          	li	s5,15
    3924:	00092603          	lw	a2,0(s2)
    3928:	00492583          	lw	a1,4(s2)
    392c:	00000693          	li	a3,0
    3930:	000a0513          	mv	a0,s4
    3934:	fffff097          	auipc	ra,0xfffff
    3938:	70c080e7          	jalr	1804(ra) # 3040 <fatfs_sector_reader>
    393c:	12050063          	beqz	a0,3a5c <fatfs_list_directory_next+0x16c>
    3940:	00894483          	lbu	s1,8(s2)
    3944:	00549413          	slli	s0,s1,0x5
    3948:	04440413          	addi	s0,s0,68
    394c:	008a0433          	add	s0,s4,s0
    3950:	009afc63          	bgeu	s5,s1,3968 <fatfs_list_directory_next+0x78>
    3954:	00092783          	lw	a5,0(s2)
    3958:	00090423          	sb	zero,8(s2)
    395c:	00178793          	addi	a5,a5,1
    3960:	00f92023          	sw	a5,0(s2)
    3964:	fc1ff06f          	j	3924 <fatfs_list_directory_next+0x34>
    3968:	00040513          	mv	a0,s0
    396c:	ffffe097          	auipc	ra,0xffffe
    3970:	6d4080e7          	jalr	1748(ra) # 2040 <fatfs_entry_lfn_text>
    3974:	02050263          	beqz	a0,3998 <fatfs_list_directory_next+0xa8>
    3978:	00040593          	mv	a1,s0
    397c:	01810513          	addi	a0,sp,24
    3980:	ffffe097          	auipc	ra,0xffffe
    3984:	5b8080e7          	jalr	1464(ra) # 1f38 <fatfs_lfn_cache_entry>
    3988:	00148493          	addi	s1,s1,1
    398c:	0ff4f493          	zext.b	s1,s1
    3990:	02040413          	addi	s0,s0,32
    3994:	fbdff06f          	j	3950 <fatfs_list_directory_next+0x60>
    3998:	00040513          	mv	a0,s0
    399c:	ffffe097          	auipc	ra,0xffffe
    39a0:	6b8080e7          	jalr	1720(ra) # 2054 <fatfs_entry_lfn_invalid>
    39a4:	00050663          	beqz	a0,39b0 <fatfs_list_directory_next+0xc0>
    39a8:	10010ea3          	sb	zero,285(sp)
    39ac:	fddff06f          	j	3988 <fatfs_list_directory_next+0x98>
    39b0:	00040593          	mv	a1,s0
    39b4:	01810513          	addi	a0,sp,24
    39b8:	ffffe097          	auipc	ra,0xffffe
    39bc:	6d4080e7          	jalr	1748(ra) # 208c <fatfs_entry_lfn_exists>
    39c0:	0c050063          	beqz	a0,3a80 <fatfs_list_directory_next+0x190>
    39c4:	01810513          	addi	a0,sp,24
    39c8:	ffffe097          	auipc	ra,0xffffe
    39cc:	63c080e7          	jalr	1596(ra) # 2004 <fatfs_lfn_cache_get>
    39d0:	00050593          	mv	a1,a0
    39d4:	10300613          	li	a2,259
    39d8:	00098513          	mv	a0,s3
    39dc:	ffffe097          	auipc	ra,0xffffe
    39e0:	8a0080e7          	jalr	-1888(ra) # 127c <strncpy>
    39e4:	00040513          	mv	a0,s0
    39e8:	ffffe097          	auipc	ra,0xffffe
    39ec:	728080e7          	jalr	1832(ra) # 2110 <fatfs_entry_is_dir>
    39f0:	00a03533          	snez	a0,a0
    39f4:	10a98223          	sb	a0,260(s3)
    39f8:	01d44783          	lbu	a5,29(s0)
    39fc:	01c44703          	lbu	a4,28(s0)
    3a00:	00148493          	addi	s1,s1,1
    3a04:	00879793          	slli	a5,a5,0x8
    3a08:	00e7e7b3          	or	a5,a5,a4
    3a0c:	01e44703          	lbu	a4,30(s0)
    3a10:	00100513          	li	a0,1
    3a14:	01071713          	slli	a4,a4,0x10
    3a18:	00f76733          	or	a4,a4,a5
    3a1c:	01f44783          	lbu	a5,31(s0)
    3a20:	01879793          	slli	a5,a5,0x18
    3a24:	00e7e7b3          	or	a5,a5,a4
    3a28:	10f9a623          	sw	a5,268(s3)
    3a2c:	01544783          	lbu	a5,21(s0)
    3a30:	01444703          	lbu	a4,20(s0)
    3a34:	01a44683          	lbu	a3,26(s0)
    3a38:	00879793          	slli	a5,a5,0x8
    3a3c:	00e7e7b3          	or	a5,a5,a4
    3a40:	01b44703          	lbu	a4,27(s0)
    3a44:	01079793          	slli	a5,a5,0x10
    3a48:	00871713          	slli	a4,a4,0x8
    3a4c:	00d76733          	or	a4,a4,a3
    3a50:	00e7e7b3          	or	a5,a5,a4
    3a54:	10f9a423          	sw	a5,264(s3)
    3a58:	00990423          	sb	s1,8(s2)
    3a5c:	13c12083          	lw	ra,316(sp)
    3a60:	13812403          	lw	s0,312(sp)
    3a64:	13412483          	lw	s1,308(sp)
    3a68:	13012903          	lw	s2,304(sp)
    3a6c:	12c12983          	lw	s3,300(sp)
    3a70:	12812a03          	lw	s4,296(sp)
    3a74:	12412a83          	lw	s5,292(sp)
    3a78:	14010113          	addi	sp,sp,320
    3a7c:	00008067          	ret
    3a80:	00040513          	mv	a0,s0
    3a84:	ffffe097          	auipc	ra,0xffffe
    3a88:	650080e7          	jalr	1616(ra) # 20d4 <fatfs_entry_sfn_only>
    3a8c:	ee050ee3          	beqz	a0,3988 <fatfs_list_directory_next+0x98>
    3a90:	00d00613          	li	a2,13
    3a94:	00000593          	li	a1,0
    3a98:	00810513          	addi	a0,sp,8
    3a9c:	10010ea3          	sb	zero,285(sp)
    3aa0:	ffffd097          	auipc	ra,0xffffd
    3aa4:	73c080e7          	jalr	1852(ra) # 11dc <memset>
    3aa8:	00000793          	li	a5,0
    3aac:	00800713          	li	a4,8
    3ab0:	00f40633          	add	a2,s0,a5
    3ab4:	00064603          	lbu	a2,0(a2)
    3ab8:	00810693          	addi	a3,sp,8
    3abc:	00f686b3          	add	a3,a3,a5
    3ac0:	00c68023          	sb	a2,0(a3)
    3ac4:	00178793          	addi	a5,a5,1
    3ac8:	fee794e3          	bne	a5,a4,3ab0 <fatfs_list_directory_next+0x1c0>
    3acc:	00844783          	lbu	a5,8(s0)
    3ad0:	00944683          	lbu	a3,9(s0)
    3ad4:	02000613          	li	a2,32
    3ad8:	00f108a3          	sb	a5,17(sp)
    3adc:	00d10923          	sb	a3,18(sp)
    3ae0:	00100713          	li	a4,1
    3ae4:	00c69663          	bne	a3,a2,3af0 <fatfs_list_directory_next+0x200>
    3ae8:	fe078793          	addi	a5,a5,-32
    3aec:	00f03733          	snez	a4,a5
    3af0:	00a44783          	lbu	a5,10(s0)
    3af4:	02000693          	li	a3,32
    3af8:	00f109a3          	sb	a5,19(sp)
    3afc:	00d79463          	bne	a5,a3,3b04 <fatfs_list_directory_next+0x214>
    3b00:	00070c63          	beqz	a4,3b18 <fatfs_list_directory_next+0x228>
    3b04:	00814683          	lbu	a3,8(sp)
    3b08:	02e00713          	li	a4,46
    3b0c:	02000793          	li	a5,32
    3b10:	00e68463          	beq	a3,a4,3b18 <fatfs_list_directory_next+0x228>
    3b14:	02e00793          	li	a5,46
    3b18:	00810593          	addi	a1,sp,8
    3b1c:	00098513          	mv	a0,s3
    3b20:	00f10823          	sb	a5,16(sp)
    3b24:	fffff097          	auipc	ra,0xfffff
    3b28:	f38080e7          	jalr	-200(ra) # 2a5c <fatfs_get_sfn_display_name>
    3b2c:	eb9ff06f          	j	39e4 <fatfs_list_directory_next+0xf4>

00003b30 <fl_readdir>:
    3b30:	000057b7          	lui	a5,0x5
    3b34:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    3b38:	fe010113          	addi	sp,sp,-32
    3b3c:	00912a23          	sw	s1,20(sp)
    3b40:	01212823          	sw	s2,16(sp)
    3b44:	00112e23          	sw	ra,28(sp)
    3b48:	00812c23          	sw	s0,24(sp)
    3b4c:	01312623          	sw	s3,12(sp)
    3b50:	00050493          	mv	s1,a0
    3b54:	00058913          	mv	s2,a1
    3b58:	00079663          	bnez	a5,3b64 <fl_readdir+0x34>
    3b5c:	ffffe097          	auipc	ra,0xffffe
    3b60:	364080e7          	jalr	868(ra) # 1ec0 <fl_init>
    3b64:	0000a437          	lui	s0,0xa
    3b68:	cc840793          	addi	a5,s0,-824 # 9cc8 <_fs>
    3b6c:	03c7a783          	lw	a5,60(a5)
    3b70:	cc840993          	addi	s3,s0,-824
    3b74:	00078463          	beqz	a5,3b7c <fl_readdir+0x4c>
    3b78:	000780e7          	jalr	a5
    3b7c:	cc840513          	addi	a0,s0,-824
    3b80:	00090613          	mv	a2,s2
    3b84:	00048593          	mv	a1,s1
    3b88:	00000097          	auipc	ra,0x0
    3b8c:	d68080e7          	jalr	-664(ra) # 38f0 <fatfs_list_directory_next>
    3b90:	0409a783          	lw	a5,64(s3)
    3b94:	00050413          	mv	s0,a0
    3b98:	00078463          	beqz	a5,3ba0 <fl_readdir+0x70>
    3b9c:	000780e7          	jalr	a5
    3ba0:	01c12083          	lw	ra,28(sp)
    3ba4:	00143513          	seqz	a0,s0
    3ba8:	01812403          	lw	s0,24(sp)
    3bac:	01412483          	lw	s1,20(sp)
    3bb0:	01012903          	lw	s2,16(sp)
    3bb4:	00c12983          	lw	s3,12(sp)
    3bb8:	40a00533          	neg	a0,a0
    3bbc:	02010113          	addi	sp,sp,32
    3bc0:	00008067          	ret

00003bc4 <_read_sectors>:
    3bc4:	fd010113          	addi	sp,sp,-48
    3bc8:	01612823          	sw	s6,16(sp)
    3bcc:	0000ab37          	lui	s6,0xa
    3bd0:	01512a23          	sw	s5,20(sp)
    3bd4:	cc8b4a83          	lbu	s5,-824(s6) # 9cc8 <_fs>
    3bd8:	01412c23          	sw	s4,24(sp)
    3bdc:	00058a13          	mv	s4,a1
    3be0:	02912223          	sw	s1,36(sp)
    3be4:	000a8593          	mv	a1,s5
    3be8:	00050493          	mv	s1,a0
    3bec:	000a0513          	mv	a0,s4
    3bf0:	02112623          	sw	ra,44(sp)
    3bf4:	02812423          	sw	s0,40(sp)
    3bf8:	03212023          	sw	s2,32(sp)
    3bfc:	00068413          	mv	s0,a3
    3c00:	01712623          	sw	s7,12(sp)
    3c04:	01812423          	sw	s8,8(sp)
    3c08:	01312e23          	sw	s3,28(sp)
    3c0c:	00060c13          	mv	s8,a2
    3c10:	ffffd097          	auipc	ra,0xffffd
    3c14:	520080e7          	jalr	1312(ra) # 1130 <__udivsi3>
    3c18:	00050913          	mv	s2,a0
    3c1c:	000a8593          	mv	a1,s5
    3c20:	000a0513          	mv	a0,s4
    3c24:	ffffd097          	auipc	ra,0xffffd
    3c28:	554080e7          	jalr	1364(ra) # 1178 <__umodsi3>
    3c2c:	00a407b3          	add	a5,s0,a0
    3c30:	00050b93          	mv	s7,a0
    3c34:	00fafe63          	bgeu	s5,a5,3c50 <_read_sectors+0x8c>
    3c38:	00090593          	mv	a1,s2
    3c3c:	000a8513          	mv	a0,s5
    3c40:	ffffe097          	auipc	ra,0xffffe
    3c44:	de4080e7          	jalr	-540(ra) # 1a24 <__mulsi3>
    3c48:	414a87b3          	sub	a5,s5,s4
    3c4c:	00f50433          	add	s0,a0,a5
    3c50:	2284a983          	lw	s3,552(s1)
    3c54:	01299c63          	bne	s3,s2,3c6c <_read_sectors+0xa8>
    3c58:	22c4a583          	lw	a1,556(s1)
    3c5c:	fff00793          	li	a5,-1
    3c60:	02f59863          	bne	a1,a5,3c90 <_read_sectors+0xcc>
    3c64:	00000413          	li	s0,0
    3c68:	0500006f          	j	3cb8 <_read_sectors+0xf4>
    3c6c:	095a6063          	bltu	s4,s5,3cec <_read_sectors+0x128>
    3c70:	00198793          	addi	a5,s3,1
    3c74:	07279c63          	bne	a5,s2,3cec <_read_sectors+0x128>
    3c78:	22c4a583          	lw	a1,556(s1)
    3c7c:	0729ee63          	bltu	s3,s2,3cf8 <_read_sectors+0x134>
    3c80:	fff00793          	li	a5,-1
    3c84:	fef580e3          	beq	a1,a5,3c64 <_read_sectors+0xa0>
    3c88:	22b4a623          	sw	a1,556(s1)
    3c8c:	2324a423          	sw	s2,552(s1)
    3c90:	cc8b0513          	addi	a0,s6,-824
    3c94:	ffffe097          	auipc	ra,0xffffe
    3c98:	0f0080e7          	jalr	240(ra) # 1d84 <fatfs_lba_of_cluster>
    3c9c:	017505b3          	add	a1,a0,s7
    3ca0:	00040693          	mv	a3,s0
    3ca4:	000c0613          	mv	a2,s8
    3ca8:	cc8b0513          	addi	a0,s6,-824
    3cac:	ffffe097          	auipc	ra,0xffffe
    3cb0:	128080e7          	jalr	296(ra) # 1dd4 <fatfs_sector_read>
    3cb4:	fa0508e3          	beqz	a0,3c64 <_read_sectors+0xa0>
    3cb8:	02c12083          	lw	ra,44(sp)
    3cbc:	00040513          	mv	a0,s0
    3cc0:	02812403          	lw	s0,40(sp)
    3cc4:	02412483          	lw	s1,36(sp)
    3cc8:	02012903          	lw	s2,32(sp)
    3ccc:	01c12983          	lw	s3,28(sp)
    3cd0:	01812a03          	lw	s4,24(sp)
    3cd4:	01412a83          	lw	s5,20(sp)
    3cd8:	01012b03          	lw	s6,16(sp)
    3cdc:	00c12b83          	lw	s7,12(sp)
    3ce0:	00812c03          	lw	s8,8(sp)
    3ce4:	03010113          	addi	sp,sp,48
    3ce8:	00008067          	ret
    3cec:	0044a583          	lw	a1,4(s1)
    3cf0:	00000993          	li	s3,0
    3cf4:	f89ff06f          	j	3c7c <_read_sectors+0xb8>
    3cf8:	cc8b0513          	addi	a0,s6,-824
    3cfc:	fffff097          	auipc	ra,0xfffff
    3d00:	234080e7          	jalr	564(ra) # 2f30 <fatfs_find_next_cluster>
    3d04:	00050593          	mv	a1,a0
    3d08:	00198993          	addi	s3,s3,1
    3d0c:	f71ff06f          	j	3c7c <_read_sectors+0xb8>

00003d10 <fatfs_set_fs_info_next_free_cluster>:
    3d10:	03052783          	lw	a5,48(a0)
    3d14:	0a078863          	beqz	a5,3dc4 <fatfs_set_fs_info_next_free_cluster+0xb4>
    3d18:	ff010113          	addi	sp,sp,-16
    3d1c:	01c52783          	lw	a5,28(a0)
    3d20:	01212023          	sw	s2,0(sp)
    3d24:	00058913          	mv	s2,a1
    3d28:	01855583          	lhu	a1,24(a0)
    3d2c:	00812423          	sw	s0,8(sp)
    3d30:	00912223          	sw	s1,4(sp)
    3d34:	00f585b3          	add	a1,a1,a5
    3d38:	00112623          	sw	ra,12(sp)
    3d3c:	00050493          	mv	s1,a0
    3d40:	ffffe097          	auipc	ra,0xffffe
    3d44:	e9c080e7          	jalr	-356(ra) # 1bdc <fatfs_fat_read_sector>
    3d48:	00050413          	mv	s0,a0
    3d4c:	06050063          	beqz	a0,3dac <fatfs_set_fs_info_next_free_cluster+0x9c>
    3d50:	20852783          	lw	a5,520(a0)
    3d54:	00895713          	srli	a4,s2,0x8
    3d58:	1f278623          	sb	s2,492(a5)
    3d5c:	20852783          	lw	a5,520(a0)
    3d60:	1ee786a3          	sb	a4,493(a5)
    3d64:	20852783          	lw	a5,520(a0)
    3d68:	01095713          	srli	a4,s2,0x10
    3d6c:	1ee78723          	sb	a4,494(a5)
    3d70:	20852783          	lw	a5,520(a0)
    3d74:	01895713          	srli	a4,s2,0x18
    3d78:	1ee787a3          	sb	a4,495(a5)
    3d7c:	00100793          	li	a5,1
    3d80:	20f52223          	sw	a5,516(a0)
    3d84:	0384a783          	lw	a5,56(s1)
    3d88:	0324a223          	sw	s2,36(s1)
    3d8c:	00078a63          	beqz	a5,3da0 <fatfs_set_fs_info_next_free_cluster+0x90>
    3d90:	00050593          	mv	a1,a0
    3d94:	20052503          	lw	a0,512(a0)
    3d98:	00100613          	li	a2,1
    3d9c:	000780e7          	jalr	a5
    3da0:	fff00793          	li	a5,-1
    3da4:	20f42023          	sw	a5,512(s0)
    3da8:	20042223          	sw	zero,516(s0)
    3dac:	00c12083          	lw	ra,12(sp)
    3db0:	00812403          	lw	s0,8(sp)
    3db4:	00412483          	lw	s1,4(sp)
    3db8:	00012903          	lw	s2,0(sp)
    3dbc:	01010113          	addi	sp,sp,16
    3dc0:	00008067          	ret
    3dc4:	00008067          	ret

00003dc8 <fatfs_find_blank_cluster>:
    3dc8:	fe010113          	addi	sp,sp,-32
    3dcc:	01312623          	sw	s3,12(sp)
    3dd0:	01512223          	sw	s5,4(sp)
    3dd4:	000109b7          	lui	s3,0x10
    3dd8:	10000ab7          	lui	s5,0x10000
    3ddc:	00912a23          	sw	s1,20(sp)
    3de0:	01212823          	sw	s2,16(sp)
    3de4:	01412423          	sw	s4,8(sp)
    3de8:	00112e23          	sw	ra,28(sp)
    3dec:	00812c23          	sw	s0,24(sp)
    3df0:	00050913          	mv	s2,a0
    3df4:	00058493          	mv	s1,a1
    3df8:	00060a13          	mv	s4,a2
    3dfc:	fff98993          	addi	s3,s3,-1 # ffff <_fs+0x6337>
    3e00:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3e04:	03092783          	lw	a5,48(s2)
    3e08:	0074d413          	srli	s0,s1,0x7
    3e0c:	00079463          	bnez	a5,3e14 <fatfs_find_blank_cluster+0x4c>
    3e10:	0084d413          	srli	s0,s1,0x8
    3e14:	02092783          	lw	a5,32(s2)
    3e18:	08f47e63          	bgeu	s0,a5,3eb4 <fatfs_find_blank_cluster+0xec>
    3e1c:	01492583          	lw	a1,20(s2)
    3e20:	00090513          	mv	a0,s2
    3e24:	00b405b3          	add	a1,s0,a1
    3e28:	ffffe097          	auipc	ra,0xffffe
    3e2c:	db4080e7          	jalr	-588(ra) # 1bdc <fatfs_fat_read_sector>
    3e30:	08050263          	beqz	a0,3eb4 <fatfs_find_blank_cluster+0xec>
    3e34:	03092783          	lw	a5,48(s2)
    3e38:	20852703          	lw	a4,520(a0)
    3e3c:	02079a63          	bnez	a5,3e70 <fatfs_find_blank_cluster+0xa8>
    3e40:	00841413          	slli	s0,s0,0x8
    3e44:	40848433          	sub	s0,s1,s0
    3e48:	00141413          	slli	s0,s0,0x1
    3e4c:	01347433          	and	s0,s0,s3
    3e50:	00870733          	add	a4,a4,s0
    3e54:	00174783          	lbu	a5,1(a4)
    3e58:	00074703          	lbu	a4,0(a4)
    3e5c:	00879793          	slli	a5,a5,0x8
    3e60:	00e787b3          	add	a5,a5,a4
    3e64:	06078c63          	beqz	a5,3edc <fatfs_find_blank_cluster+0x114>
    3e68:	00148493          	addi	s1,s1,1
    3e6c:	f99ff06f          	j	3e04 <fatfs_find_blank_cluster+0x3c>
    3e70:	00741413          	slli	s0,s0,0x7
    3e74:	40848433          	sub	s0,s1,s0
    3e78:	00241413          	slli	s0,s0,0x2
    3e7c:	01347433          	and	s0,s0,s3
    3e80:	00870733          	add	a4,a4,s0
    3e84:	00374783          	lbu	a5,3(a4)
    3e88:	00274683          	lbu	a3,2(a4)
    3e8c:	01879793          	slli	a5,a5,0x18
    3e90:	01069693          	slli	a3,a3,0x10
    3e94:	00d787b3          	add	a5,a5,a3
    3e98:	00074683          	lbu	a3,0(a4)
    3e9c:	00174703          	lbu	a4,1(a4)
    3ea0:	00d787b3          	add	a5,a5,a3
    3ea4:	00871713          	slli	a4,a4,0x8
    3ea8:	00e787b3          	add	a5,a5,a4
    3eac:	0157f7b3          	and	a5,a5,s5
    3eb0:	fb5ff06f          	j	3e64 <fatfs_find_blank_cluster+0x9c>
    3eb4:	00000513          	li	a0,0
    3eb8:	01c12083          	lw	ra,28(sp)
    3ebc:	01812403          	lw	s0,24(sp)
    3ec0:	01412483          	lw	s1,20(sp)
    3ec4:	01012903          	lw	s2,16(sp)
    3ec8:	00c12983          	lw	s3,12(sp)
    3ecc:	00812a03          	lw	s4,8(sp)
    3ed0:	00412a83          	lw	s5,4(sp)
    3ed4:	02010113          	addi	sp,sp,32
    3ed8:	00008067          	ret
    3edc:	009a2023          	sw	s1,0(s4)
    3ee0:	00100513          	li	a0,1
    3ee4:	fd5ff06f          	j	3eb8 <fatfs_find_blank_cluster+0xf0>

00003ee8 <fatfs_fat_set_cluster>:
    3ee8:	03052783          	lw	a5,48(a0)
    3eec:	fe010113          	addi	sp,sp,-32
    3ef0:	00812c23          	sw	s0,24(sp)
    3ef4:	00912a23          	sw	s1,20(sp)
    3ef8:	01212823          	sw	s2,16(sp)
    3efc:	01312623          	sw	s3,12(sp)
    3f00:	00112e23          	sw	ra,28(sp)
    3f04:	00050993          	mv	s3,a0
    3f08:	00058413          	mv	s0,a1
    3f0c:	00060493          	mv	s1,a2
    3f10:	0085d913          	srli	s2,a1,0x8
    3f14:	00078463          	beqz	a5,3f1c <fatfs_fat_set_cluster+0x34>
    3f18:	0075d913          	srli	s2,a1,0x7
    3f1c:	0149a583          	lw	a1,20(s3)
    3f20:	00098513          	mv	a0,s3
    3f24:	00b905b3          	add	a1,s2,a1
    3f28:	ffffe097          	auipc	ra,0xffffe
    3f2c:	cb4080e7          	jalr	-844(ra) # 1bdc <fatfs_fat_read_sector>
    3f30:	00050793          	mv	a5,a0
    3f34:	00000513          	li	a0,0
    3f38:	04078c63          	beqz	a5,3f90 <fatfs_fat_set_cluster+0xa8>
    3f3c:	0309a683          	lw	a3,48(s3)
    3f40:	2087a703          	lw	a4,520(a5)
    3f44:	0ff4f613          	zext.b	a2,s1
    3f48:	06069263          	bnez	a3,3fac <fatfs_fat_set_cluster+0xc4>
    3f4c:	00891913          	slli	s2,s2,0x8
    3f50:	41240433          	sub	s0,s0,s2
    3f54:	000106b7          	lui	a3,0x10
    3f58:	00141413          	slli	s0,s0,0x1
    3f5c:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6337>
    3f60:	00d47433          	and	s0,s0,a3
    3f64:	00870733          	add	a4,a4,s0
    3f68:	00c70023          	sb	a2,0(a4)
    3f6c:	2087a703          	lw	a4,520(a5)
    3f70:	01049493          	slli	s1,s1,0x10
    3f74:	0104d493          	srli	s1,s1,0x10
    3f78:	00870733          	add	a4,a4,s0
    3f7c:	0084d493          	srli	s1,s1,0x8
    3f80:	009700a3          	sb	s1,1(a4)
    3f84:	00100713          	li	a4,1
    3f88:	20e7a223          	sw	a4,516(a5)
    3f8c:	00100513          	li	a0,1
    3f90:	01c12083          	lw	ra,28(sp)
    3f94:	01812403          	lw	s0,24(sp)
    3f98:	01412483          	lw	s1,20(sp)
    3f9c:	01012903          	lw	s2,16(sp)
    3fa0:	00c12983          	lw	s3,12(sp)
    3fa4:	02010113          	addi	sp,sp,32
    3fa8:	00008067          	ret
    3fac:	00791913          	slli	s2,s2,0x7
    3fb0:	41240433          	sub	s0,s0,s2
    3fb4:	000106b7          	lui	a3,0x10
    3fb8:	fff68693          	addi	a3,a3,-1 # ffff <_fs+0x6337>
    3fbc:	00241413          	slli	s0,s0,0x2
    3fc0:	00d47433          	and	s0,s0,a3
    3fc4:	00870733          	add	a4,a4,s0
    3fc8:	00c70023          	sb	a2,0(a4)
    3fcc:	2087a703          	lw	a4,520(a5)
    3fd0:	0084d693          	srli	a3,s1,0x8
    3fd4:	00870733          	add	a4,a4,s0
    3fd8:	00d700a3          	sb	a3,1(a4)
    3fdc:	2087a703          	lw	a4,520(a5)
    3fe0:	0104d693          	srli	a3,s1,0x10
    3fe4:	0184d493          	srli	s1,s1,0x18
    3fe8:	00870733          	add	a4,a4,s0
    3fec:	00d70123          	sb	a3,2(a4)
    3ff0:	2087a703          	lw	a4,520(a5)
    3ff4:	00870733          	add	a4,a4,s0
    3ff8:	009701a3          	sb	s1,3(a4)
    3ffc:	f89ff06f          	j	3f84 <fatfs_fat_set_cluster+0x9c>

00004000 <fatfs_free_cluster_chain>:
    4000:	fe010113          	addi	sp,sp,-32
    4004:	00812c23          	sw	s0,24(sp)
    4008:	01212823          	sw	s2,16(sp)
    400c:	00112e23          	sw	ra,28(sp)
    4010:	00912a23          	sw	s1,20(sp)
    4014:	00050413          	mv	s0,a0
    4018:	ffd00913          	li	s2,-3
    401c:	fff58793          	addi	a5,a1,-1
    4020:	02f97063          	bgeu	s2,a5,4040 <fatfs_free_cluster_chain+0x40>
    4024:	01c12083          	lw	ra,28(sp)
    4028:	01812403          	lw	s0,24(sp)
    402c:	01412483          	lw	s1,20(sp)
    4030:	01012903          	lw	s2,16(sp)
    4034:	00100513          	li	a0,1
    4038:	02010113          	addi	sp,sp,32
    403c:	00008067          	ret
    4040:	00040513          	mv	a0,s0
    4044:	00b12623          	sw	a1,12(sp)
    4048:	fffff097          	auipc	ra,0xfffff
    404c:	ee8080e7          	jalr	-280(ra) # 2f30 <fatfs_find_next_cluster>
    4050:	00c12583          	lw	a1,12(sp)
    4054:	00050493          	mv	s1,a0
    4058:	00000613          	li	a2,0
    405c:	00040513          	mv	a0,s0
    4060:	00000097          	auipc	ra,0x0
    4064:	e88080e7          	jalr	-376(ra) # 3ee8 <fatfs_fat_set_cluster>
    4068:	00048593          	mv	a1,s1
    406c:	fb1ff06f          	j	401c <fatfs_free_cluster_chain+0x1c>

00004070 <fatfs_fat_add_cluster_to_chain>:
    4070:	fff00793          	li	a5,-1
    4074:	02f59463          	bne	a1,a5,409c <fatfs_fat_add_cluster_to_chain+0x2c>
    4078:	00000513          	li	a0,0
    407c:	00008067          	ret
    4080:	00000513          	li	a0,0
    4084:	01c12083          	lw	ra,28(sp)
    4088:	01812403          	lw	s0,24(sp)
    408c:	01412483          	lw	s1,20(sp)
    4090:	01012903          	lw	s2,16(sp)
    4094:	02010113          	addi	sp,sp,32
    4098:	00008067          	ret
    409c:	fe010113          	addi	sp,sp,-32
    40a0:	00812c23          	sw	s0,24(sp)
    40a4:	00912a23          	sw	s1,20(sp)
    40a8:	01212823          	sw	s2,16(sp)
    40ac:	00050413          	mv	s0,a0
    40b0:	00112e23          	sw	ra,28(sp)
    40b4:	00058513          	mv	a0,a1
    40b8:	00060493          	mv	s1,a2
    40bc:	fff00913          	li	s2,-1
    40c0:	00050593          	mv	a1,a0
    40c4:	00a12623          	sw	a0,12(sp)
    40c8:	00040513          	mv	a0,s0
    40cc:	fffff097          	auipc	ra,0xfffff
    40d0:	e64080e7          	jalr	-412(ra) # 2f30 <fatfs_find_next_cluster>
    40d4:	fa0506e3          	beqz	a0,4080 <fatfs_fat_add_cluster_to_chain+0x10>
    40d8:	00c12583          	lw	a1,12(sp)
    40dc:	ff2512e3          	bne	a0,s2,40c0 <fatfs_fat_add_cluster_to_chain+0x50>
    40e0:	00048613          	mv	a2,s1
    40e4:	00040513          	mv	a0,s0
    40e8:	00000097          	auipc	ra,0x0
    40ec:	e00080e7          	jalr	-512(ra) # 3ee8 <fatfs_fat_set_cluster>
    40f0:	fff00613          	li	a2,-1
    40f4:	00048593          	mv	a1,s1
    40f8:	00040513          	mv	a0,s0
    40fc:	00000097          	auipc	ra,0x0
    4100:	dec080e7          	jalr	-532(ra) # 3ee8 <fatfs_fat_set_cluster>
    4104:	00100513          	li	a0,1
    4108:	f7dff06f          	j	4084 <fatfs_fat_add_cluster_to_chain+0x14>

0000410c <fatfs_add_free_space>:
    410c:	02452703          	lw	a4,36(a0)
    4110:	fd010113          	addi	sp,sp,-48
    4114:	02812423          	sw	s0,40(sp)
    4118:	03212023          	sw	s2,32(sp)
    411c:	01412c23          	sw	s4,24(sp)
    4120:	01512a23          	sw	s5,20(sp)
    4124:	02112623          	sw	ra,44(sp)
    4128:	02912223          	sw	s1,36(sp)
    412c:	01312e23          	sw	s3,28(sp)
    4130:	fff00793          	li	a5,-1
    4134:	0005aa83          	lw	s5,0(a1)
    4138:	00050413          	mv	s0,a0
    413c:	00058913          	mv	s2,a1
    4140:	00060a13          	mv	s4,a2
    4144:	00f70863          	beq	a4,a5,4154 <fatfs_add_free_space+0x48>
    4148:	fff00593          	li	a1,-1
    414c:	00000097          	auipc	ra,0x0
    4150:	bc4080e7          	jalr	-1084(ra) # 3d10 <fatfs_set_fs_info_next_free_cluster>
    4154:	00000493          	li	s1,0
    4158:	03449663          	bne	s1,s4,4184 <fatfs_add_free_space+0x78>
    415c:	00100513          	li	a0,1
    4160:	02c12083          	lw	ra,44(sp)
    4164:	02812403          	lw	s0,40(sp)
    4168:	02412483          	lw	s1,36(sp)
    416c:	02012903          	lw	s2,32(sp)
    4170:	01c12983          	lw	s3,28(sp)
    4174:	01812a03          	lw	s4,24(sp)
    4178:	01412a83          	lw	s5,20(sp)
    417c:	03010113          	addi	sp,sp,48
    4180:	00008067          	ret
    4184:	00842583          	lw	a1,8(s0)
    4188:	00c10613          	addi	a2,sp,12
    418c:	00040513          	mv	a0,s0
    4190:	00000097          	auipc	ra,0x0
    4194:	c38080e7          	jalr	-968(ra) # 3dc8 <fatfs_find_blank_cluster>
    4198:	fc0504e3          	beqz	a0,4160 <fatfs_add_free_space+0x54>
    419c:	00c12983          	lw	s3,12(sp)
    41a0:	000a8593          	mv	a1,s5
    41a4:	00040513          	mv	a0,s0
    41a8:	00098613          	mv	a2,s3
    41ac:	00000097          	auipc	ra,0x0
    41b0:	d3c080e7          	jalr	-708(ra) # 3ee8 <fatfs_fat_set_cluster>
    41b4:	fff00613          	li	a2,-1
    41b8:	00098593          	mv	a1,s3
    41bc:	00040513          	mv	a0,s0
    41c0:	00000097          	auipc	ra,0x0
    41c4:	d28080e7          	jalr	-728(ra) # 3ee8 <fatfs_fat_set_cluster>
    41c8:	00049463          	bnez	s1,41d0 <fatfs_add_free_space+0xc4>
    41cc:	01392023          	sw	s3,0(s2)
    41d0:	00148493          	addi	s1,s1,1
    41d4:	00098a93          	mv	s5,s3
    41d8:	f81ff06f          	j	4158 <fatfs_add_free_space+0x4c>

000041dc <_write_sectors>:
    41dc:	fb010113          	addi	sp,sp,-80
    41e0:	03312e23          	sw	s3,60(sp)
    41e4:	0000a9b7          	lui	s3,0xa
    41e8:	03612823          	sw	s6,48(sp)
    41ec:	cc89cb03          	lbu	s6,-824(s3) # 9cc8 <_fs>
    41f0:	03512a23          	sw	s5,52(sp)
    41f4:	00058a93          	mv	s5,a1
    41f8:	fff00793          	li	a5,-1
    41fc:	04812423          	sw	s0,72(sp)
    4200:	000b0593          	mv	a1,s6
    4204:	00050413          	mv	s0,a0
    4208:	000a8513          	mv	a0,s5
    420c:	00f12e23          	sw	a5,28(sp)
    4210:	04112623          	sw	ra,76(sp)
    4214:	04912223          	sw	s1,68(sp)
    4218:	05212023          	sw	s2,64(sp)
    421c:	03712623          	sw	s7,44(sp)
    4220:	03812423          	sw	s8,40(sp)
    4224:	00068b93          	mv	s7,a3
    4228:	03912223          	sw	s9,36(sp)
    422c:	03a12023          	sw	s10,32(sp)
    4230:	00060c93          	mv	s9,a2
    4234:	03412c23          	sw	s4,56(sp)
    4238:	ffffd097          	auipc	ra,0xffffd
    423c:	ef8080e7          	jalr	-264(ra) # 1130 <__udivsi3>
    4240:	00050493          	mv	s1,a0
    4244:	000b0593          	mv	a1,s6
    4248:	000a8513          	mv	a0,s5
    424c:	ffffd097          	auipc	ra,0xffffd
    4250:	f2c080e7          	jalr	-212(ra) # 1178 <__umodsi3>
    4254:	00ab87b3          	add	a5,s7,a0
    4258:	00050c13          	mv	s8,a0
    425c:	cc898d13          	addi	s10,s3,-824
    4260:	000b8913          	mv	s2,s7
    4264:	00fb7e63          	bgeu	s6,a5,4280 <_write_sectors+0xa4>
    4268:	00048593          	mv	a1,s1
    426c:	000b0513          	mv	a0,s6
    4270:	ffffd097          	auipc	ra,0xffffd
    4274:	7b4080e7          	jalr	1972(ra) # 1a24 <__mulsi3>
    4278:	415b07b3          	sub	a5,s6,s5
    427c:	00f50933          	add	s2,a0,a5
    4280:	22842a03          	lw	s4,552(s0)
    4284:	069a1663          	bne	s4,s1,42f0 <_write_sectors+0x114>
    4288:	22c42583          	lw	a1,556(s0)
    428c:	cc898513          	addi	a0,s3,-824
    4290:	ffffe097          	auipc	ra,0xffffe
    4294:	af4080e7          	jalr	-1292(ra) # 1d84 <fatfs_lba_of_cluster>
    4298:	018505b3          	add	a1,a0,s8
    429c:	00090693          	mv	a3,s2
    42a0:	000c8613          	mv	a2,s9
    42a4:	cc898513          	addi	a0,s3,-824
    42a8:	ffffe097          	auipc	ra,0xffffe
    42ac:	b44080e7          	jalr	-1212(ra) # 1dec <fatfs_sector_write>
    42b0:	0c050063          	beqz	a0,4370 <_write_sectors+0x194>
    42b4:	04c12083          	lw	ra,76(sp)
    42b8:	04812403          	lw	s0,72(sp)
    42bc:	04412483          	lw	s1,68(sp)
    42c0:	03c12983          	lw	s3,60(sp)
    42c4:	03812a03          	lw	s4,56(sp)
    42c8:	03412a83          	lw	s5,52(sp)
    42cc:	03012b03          	lw	s6,48(sp)
    42d0:	02c12b83          	lw	s7,44(sp)
    42d4:	02812c03          	lw	s8,40(sp)
    42d8:	02412c83          	lw	s9,36(sp)
    42dc:	02012d03          	lw	s10,32(sp)
    42e0:	00090513          	mv	a0,s2
    42e4:	04012903          	lw	s2,64(sp)
    42e8:	05010113          	addi	sp,sp,80
    42ec:	00008067          	ret
    42f0:	036ae663          	bltu	s5,s6,431c <_write_sectors+0x140>
    42f4:	001a0793          	addi	a5,s4,1
    42f8:	02979263          	bne	a5,s1,431c <_write_sectors+0x140>
    42fc:	22c42583          	lw	a1,556(s0)
    4300:	fff00a93          	li	s5,-1
    4304:	029a6263          	bltu	s4,s1,4328 <_write_sectors+0x14c>
    4308:	fff00793          	li	a5,-1
    430c:	02f58c63          	beq	a1,a5,4344 <_write_sectors+0x168>
    4310:	22b42623          	sw	a1,556(s0)
    4314:	22942423          	sw	s1,552(s0)
    4318:	f75ff06f          	j	428c <_write_sectors+0xb0>
    431c:	00442583          	lw	a1,4(s0)
    4320:	00000a13          	li	s4,0
    4324:	fddff06f          	j	4300 <_write_sectors+0x124>
    4328:	cc898513          	addi	a0,s3,-824
    432c:	00b12623          	sw	a1,12(sp)
    4330:	fffff097          	auipc	ra,0xfffff
    4334:	c00080e7          	jalr	-1024(ra) # 2f30 <fatfs_find_next_cluster>
    4338:	00c12583          	lw	a1,12(sp)
    433c:	00b12e23          	sw	a1,28(sp)
    4340:	03551c63          	bne	a0,s5,4378 <_write_sectors+0x19c>
    4344:	000d4583          	lbu	a1,0(s10)
    4348:	fff58513          	addi	a0,a1,-1
    434c:	01750533          	add	a0,a0,s7
    4350:	ffffd097          	auipc	ra,0xffffd
    4354:	de0080e7          	jalr	-544(ra) # 1130 <__udivsi3>
    4358:	00050613          	mv	a2,a0
    435c:	01c10593          	addi	a1,sp,28
    4360:	cc898513          	addi	a0,s3,-824
    4364:	00000097          	auipc	ra,0x0
    4368:	da8080e7          	jalr	-600(ra) # 410c <fatfs_add_free_space>
    436c:	00051c63          	bnez	a0,4384 <_write_sectors+0x1a8>
    4370:	00000913          	li	s2,0
    4374:	f41ff06f          	j	42b4 <_write_sectors+0xd8>
    4378:	001a0a13          	addi	s4,s4,1
    437c:	00050593          	mv	a1,a0
    4380:	f85ff06f          	j	4304 <_write_sectors+0x128>
    4384:	01c12583          	lw	a1,28(sp)
    4388:	f89ff06f          	j	4310 <_write_sectors+0x134>

0000438c <fl_fflush>:
    438c:	000057b7          	lui	a5,0x5
    4390:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    4394:	ff010113          	addi	sp,sp,-16
    4398:	00812423          	sw	s0,8(sp)
    439c:	00112623          	sw	ra,12(sp)
    43a0:	00912223          	sw	s1,4(sp)
    43a4:	00050413          	mv	s0,a0
    43a8:	00079663          	bnez	a5,43b4 <fl_fflush+0x28>
    43ac:	ffffe097          	auipc	ra,0xffffe
    43b0:	b14080e7          	jalr	-1260(ra) # 1ec0 <fl_init>
    43b4:	04040863          	beqz	s0,4404 <fl_fflush+0x78>
    43b8:	0000a7b7          	lui	a5,0xa
    43bc:	cc878713          	addi	a4,a5,-824 # 9cc8 <_fs>
    43c0:	03c72703          	lw	a4,60(a4)
    43c4:	cc878493          	addi	s1,a5,-824
    43c8:	00070463          	beqz	a4,43d0 <fl_fflush+0x44>
    43cc:	000700e7          	jalr	a4
    43d0:	43442783          	lw	a5,1076(s0)
    43d4:	02078263          	beqz	a5,43f8 <fl_fflush+0x6c>
    43d8:	43042583          	lw	a1,1072(s0)
    43dc:	00100693          	li	a3,1
    43e0:	23040613          	addi	a2,s0,560
    43e4:	00040513          	mv	a0,s0
    43e8:	00000097          	auipc	ra,0x0
    43ec:	df4080e7          	jalr	-524(ra) # 41dc <_write_sectors>
    43f0:	00050463          	beqz	a0,43f8 <fl_fflush+0x6c>
    43f4:	42042a23          	sw	zero,1076(s0)
    43f8:	0404a783          	lw	a5,64(s1)
    43fc:	00078463          	beqz	a5,4404 <fl_fflush+0x78>
    4400:	000780e7          	jalr	a5
    4404:	00c12083          	lw	ra,12(sp)
    4408:	00812403          	lw	s0,8(sp)
    440c:	00412483          	lw	s1,4(sp)
    4410:	00000513          	li	a0,0
    4414:	01010113          	addi	sp,sp,16
    4418:	00008067          	ret

0000441c <fl_fclose>:
    441c:	000057b7          	lui	a5,0x5
    4420:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    4424:	ff010113          	addi	sp,sp,-16
    4428:	00812423          	sw	s0,8(sp)
    442c:	00112623          	sw	ra,12(sp)
    4430:	00912223          	sw	s1,4(sp)
    4434:	01212023          	sw	s2,0(sp)
    4438:	00050413          	mv	s0,a0
    443c:	00079663          	bnez	a5,4448 <fl_fclose+0x2c>
    4440:	ffffe097          	auipc	ra,0xffffe
    4444:	a80080e7          	jalr	-1408(ra) # 1ec0 <fl_init>
    4448:	08040e63          	beqz	s0,44e4 <fl_fclose+0xc8>
    444c:	0000a4b7          	lui	s1,0xa
    4450:	cc848793          	addi	a5,s1,-824 # 9cc8 <_fs>
    4454:	03c7a783          	lw	a5,60(a5)
    4458:	cc848913          	addi	s2,s1,-824
    445c:	00078463          	beqz	a5,4464 <fl_fclose+0x48>
    4460:	000780e7          	jalr	a5
    4464:	00040513          	mv	a0,s0
    4468:	00000097          	auipc	ra,0x0
    446c:	f24080e7          	jalr	-220(ra) # 438c <fl_fflush>
    4470:	01042783          	lw	a5,16(s0)
    4474:	00078e63          	beqz	a5,4490 <fl_fclose+0x74>
    4478:	00c42683          	lw	a3,12(s0)
    447c:	00042583          	lw	a1,0(s0)
    4480:	21c40613          	addi	a2,s0,540
    4484:	cc848513          	addi	a0,s1,-824
    4488:	fffff097          	auipc	ra,0xfffff
    448c:	300080e7          	jalr	768(ra) # 3788 <fatfs_update_file_length>
    4490:	fff00793          	li	a5,-1
    4494:	42f42823          	sw	a5,1072(s0)
    4498:	00040513          	mv	a0,s0
    449c:	00042423          	sw	zero,8(s0)
    44a0:	00042623          	sw	zero,12(s0)
    44a4:	00042223          	sw	zero,4(s0)
    44a8:	42042a23          	sw	zero,1076(s0)
    44ac:	00042823          	sw	zero,16(s0)
    44b0:	ffffe097          	auipc	ra,0xffffe
    44b4:	88c080e7          	jalr	-1908(ra) # 1d3c <_free_file>
    44b8:	cc848513          	addi	a0,s1,-824
    44bc:	fffff097          	auipc	ra,0xfffff
    44c0:	a18080e7          	jalr	-1512(ra) # 2ed4 <fatfs_fat_purge>
    44c4:	04092783          	lw	a5,64(s2)
    44c8:	00078e63          	beqz	a5,44e4 <fl_fclose+0xc8>
    44cc:	00812403          	lw	s0,8(sp)
    44d0:	00c12083          	lw	ra,12(sp)
    44d4:	00412483          	lw	s1,4(sp)
    44d8:	00012903          	lw	s2,0(sp)
    44dc:	01010113          	addi	sp,sp,16
    44e0:	00078067          	jr	a5
    44e4:	00c12083          	lw	ra,12(sp)
    44e8:	00812403          	lw	s0,8(sp)
    44ec:	00412483          	lw	s1,4(sp)
    44f0:	00012903          	lw	s2,0(sp)
    44f4:	01010113          	addi	sp,sp,16
    44f8:	00008067          	ret

000044fc <fl_fread>:
    44fc:	fd010113          	addi	sp,sp,-48
    4500:	01512a23          	sw	s5,20(sp)
    4504:	00050a93          	mv	s5,a0
    4508:	00058513          	mv	a0,a1
    450c:	00060593          	mv	a1,a2
    4510:	02812423          	sw	s0,40(sp)
    4514:	02912223          	sw	s1,36(sp)
    4518:	02112623          	sw	ra,44(sp)
    451c:	03212023          	sw	s2,32(sp)
    4520:	01312e23          	sw	s3,28(sp)
    4524:	01412c23          	sw	s4,24(sp)
    4528:	01612823          	sw	s6,16(sp)
    452c:	01712623          	sw	s7,12(sp)
    4530:	01812423          	sw	s8,8(sp)
    4534:	01912223          	sw	s9,4(sp)
    4538:	00068493          	mv	s1,a3
    453c:	ffffd097          	auipc	ra,0xffffd
    4540:	4e8080e7          	jalr	1256(ra) # 1a24 <__mulsi3>
    4544:	000057b7          	lui	a5,0x5
    4548:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    454c:	00050413          	mv	s0,a0
    4550:	00079663          	bnez	a5,455c <fl_fread+0x60>
    4554:	ffffe097          	auipc	ra,0xffffe
    4558:	96c080e7          	jalr	-1684(ra) # 1ec0 <fl_init>
    455c:	120a8e63          	beqz	s5,4698 <fl_fread+0x19c>
    4560:	12048c63          	beqz	s1,4698 <fl_fread+0x19c>
    4564:	4384c783          	lbu	a5,1080(s1)
    4568:	0017f793          	andi	a5,a5,1
    456c:	12078663          	beqz	a5,4698 <fl_fread+0x19c>
    4570:	02040e63          	beqz	s0,45ac <fl_fread+0xb0>
    4574:	0084a583          	lw	a1,8(s1)
    4578:	00c4a783          	lw	a5,12(s1)
    457c:	10f5fe63          	bgeu	a1,a5,4698 <fl_fread+0x19c>
    4580:	00b40733          	add	a4,s0,a1
    4584:	00040b13          	mv	s6,s0
    4588:	00e7f463          	bgeu	a5,a4,4590 <fl_fread+0x94>
    458c:	40b78b33          	sub	s6,a5,a1
    4590:	0095d993          	srli	s3,a1,0x9
    4594:	1ff5f913          	andi	s2,a1,511
    4598:	00000413          	li	s0,0
    459c:	23048b93          	addi	s7,s1,560
    45a0:	20000c13          	li	s8,512
    45a4:	1ff00c93          	li	s9,511
    45a8:	03644e63          	blt	s0,s6,45e4 <fl_fread+0xe8>
    45ac:	02c12083          	lw	ra,44(sp)
    45b0:	00040513          	mv	a0,s0
    45b4:	02812403          	lw	s0,40(sp)
    45b8:	02412483          	lw	s1,36(sp)
    45bc:	02012903          	lw	s2,32(sp)
    45c0:	01c12983          	lw	s3,28(sp)
    45c4:	01812a03          	lw	s4,24(sp)
    45c8:	01412a83          	lw	s5,20(sp)
    45cc:	01012b03          	lw	s6,16(sp)
    45d0:	00c12b83          	lw	s7,12(sp)
    45d4:	00812c03          	lw	s8,8(sp)
    45d8:	00412c83          	lw	s9,4(sp)
    45dc:	03010113          	addi	sp,sp,48
    45e0:	00008067          	ret
    45e4:	04091463          	bnez	s2,462c <fl_fread+0x130>
    45e8:	408b06b3          	sub	a3,s6,s0
    45ec:	04dcd063          	bge	s9,a3,462c <fl_fread+0x130>
    45f0:	4096d693          	srai	a3,a3,0x9
    45f4:	008a8633          	add	a2,s5,s0
    45f8:	00098593          	mv	a1,s3
    45fc:	00048513          	mv	a0,s1
    4600:	fffff097          	auipc	ra,0xfffff
    4604:	5c4080e7          	jalr	1476(ra) # 3bc4 <_read_sectors>
    4608:	fa0502e3          	beqz	a0,45ac <fl_fread+0xb0>
    460c:	00951a13          	slli	s4,a0,0x9
    4610:	00a989b3          	add	s3,s3,a0
    4614:	0084a783          	lw	a5,8(s1)
    4618:	01440433          	add	s0,s0,s4
    461c:	00000913          	li	s2,0
    4620:	014787b3          	add	a5,a5,s4
    4624:	00f4a423          	sw	a5,8(s1)
    4628:	f81ff06f          	j	45a8 <fl_fread+0xac>
    462c:	4304a783          	lw	a5,1072(s1)
    4630:	03378e63          	beq	a5,s3,466c <fl_fread+0x170>
    4634:	4344a783          	lw	a5,1076(s1)
    4638:	00078863          	beqz	a5,4648 <fl_fread+0x14c>
    463c:	00048513          	mv	a0,s1
    4640:	00000097          	auipc	ra,0x0
    4644:	d4c080e7          	jalr	-692(ra) # 438c <fl_fflush>
    4648:	00100693          	li	a3,1
    464c:	000b8613          	mv	a2,s7
    4650:	00098593          	mv	a1,s3
    4654:	00048513          	mv	a0,s1
    4658:	fffff097          	auipc	ra,0xfffff
    465c:	56c080e7          	jalr	1388(ra) # 3bc4 <_read_sectors>
    4660:	f40506e3          	beqz	a0,45ac <fl_fread+0xb0>
    4664:	4334a823          	sw	s3,1072(s1)
    4668:	4204aa23          	sw	zero,1076(s1)
    466c:	412c07b3          	sub	a5,s8,s2
    4670:	408b0a33          	sub	s4,s6,s0
    4674:	0147d463          	bge	a5,s4,467c <fl_fread+0x180>
    4678:	00078a13          	mv	s4,a5
    467c:	000a0613          	mv	a2,s4
    4680:	012b85b3          	add	a1,s7,s2
    4684:	008a8533          	add	a0,s5,s0
    4688:	ffffd097          	auipc	ra,0xffffd
    468c:	b70080e7          	jalr	-1168(ra) # 11f8 <memcpy>
    4690:	00198993          	addi	s3,s3,1
    4694:	f81ff06f          	j	4614 <fl_fread+0x118>
    4698:	fff00413          	li	s0,-1
    469c:	f11ff06f          	j	45ac <fl_fread+0xb0>

000046a0 <fatfs_allocate_free_space.part.0>:
    46a0:	02452703          	lw	a4,36(a0)
    46a4:	fd010113          	addi	sp,sp,-48
    46a8:	02812423          	sw	s0,40(sp)
    46ac:	03212023          	sw	s2,32(sp)
    46b0:	01312e23          	sw	s3,28(sp)
    46b4:	01512a23          	sw	s5,20(sp)
    46b8:	02112623          	sw	ra,44(sp)
    46bc:	02912223          	sw	s1,36(sp)
    46c0:	01412c23          	sw	s4,24(sp)
    46c4:	fff00793          	li	a5,-1
    46c8:	00050413          	mv	s0,a0
    46cc:	00058a93          	mv	s5,a1
    46d0:	00060913          	mv	s2,a2
    46d4:	00068993          	mv	s3,a3
    46d8:	00f70863          	beq	a4,a5,46e8 <fatfs_allocate_free_space.part.0+0x48>
    46dc:	fff00593          	li	a1,-1
    46e0:	fffff097          	auipc	ra,0xfffff
    46e4:	630080e7          	jalr	1584(ra) # 3d10 <fatfs_set_fs_info_next_free_cluster>
    46e8:	00044a03          	lbu	s4,0(s0)
    46ec:	00098513          	mv	a0,s3
    46f0:	009a1a13          	slli	s4,s4,0x9
    46f4:	000a0593          	mv	a1,s4
    46f8:	ffffd097          	auipc	ra,0xffffd
    46fc:	a38080e7          	jalr	-1480(ra) # 1130 <__udivsi3>
    4700:	00050493          	mv	s1,a0
    4704:	00050593          	mv	a1,a0
    4708:	000a0513          	mv	a0,s4
    470c:	ffffd097          	auipc	ra,0xffffd
    4710:	318080e7          	jalr	792(ra) # 1a24 <__mulsi3>
    4714:	00a98463          	beq	s3,a0,471c <fatfs_allocate_free_space.part.0+0x7c>
    4718:	00148493          	addi	s1,s1,1
    471c:	060a8463          	beqz	s5,4784 <fatfs_allocate_free_space.part.0+0xe4>
    4720:	00842583          	lw	a1,8(s0)
    4724:	00c10613          	addi	a2,sp,12
    4728:	00040513          	mv	a0,s0
    472c:	fffff097          	auipc	ra,0xfffff
    4730:	69c080e7          	jalr	1692(ra) # 3dc8 <fatfs_find_blank_cluster>
    4734:	02050663          	beqz	a0,4760 <fatfs_allocate_free_space.part.0+0xc0>
    4738:	00100793          	li	a5,1
    473c:	04f49863          	bne	s1,a5,478c <fatfs_allocate_free_space.part.0+0xec>
    4740:	00c12483          	lw	s1,12(sp)
    4744:	fff00613          	li	a2,-1
    4748:	00040513          	mv	a0,s0
    474c:	00048593          	mv	a1,s1
    4750:	fffff097          	auipc	ra,0xfffff
    4754:	798080e7          	jalr	1944(ra) # 3ee8 <fatfs_fat_set_cluster>
    4758:	00100513          	li	a0,1
    475c:	00992023          	sw	s1,0(s2)
    4760:	02c12083          	lw	ra,44(sp)
    4764:	02812403          	lw	s0,40(sp)
    4768:	02412483          	lw	s1,36(sp)
    476c:	02012903          	lw	s2,32(sp)
    4770:	01c12983          	lw	s3,28(sp)
    4774:	01812a03          	lw	s4,24(sp)
    4778:	01412a83          	lw	s5,20(sp)
    477c:	03010113          	addi	sp,sp,48
    4780:	00008067          	ret
    4784:	00092783          	lw	a5,0(s2)
    4788:	00f12623          	sw	a5,12(sp)
    478c:	00048613          	mv	a2,s1
    4790:	00c10593          	addi	a1,sp,12
    4794:	00040513          	mv	a0,s0
    4798:	00000097          	auipc	ra,0x0
    479c:	974080e7          	jalr	-1676(ra) # 410c <fatfs_add_free_space>
    47a0:	00a03533          	snez	a0,a0
    47a4:	fbdff06f          	j	4760 <fatfs_allocate_free_space.part.0+0xc0>

000047a8 <fatfs_add_file_entry>:
    47a8:	f8010113          	addi	sp,sp,-128
    47ac:	00f12823          	sw	a5,16(sp)
    47b0:	03852783          	lw	a5,56(a0)
    47b4:	06112e23          	sw	ra,124(sp)
    47b8:	06812c23          	sw	s0,120(sp)
    47bc:	06912a23          	sw	s1,116(sp)
    47c0:	07212823          	sw	s2,112(sp)
    47c4:	07312623          	sw	s3,108(sp)
    47c8:	07412423          	sw	s4,104(sp)
    47cc:	07512223          	sw	s5,100(sp)
    47d0:	07612023          	sw	s6,96(sp)
    47d4:	05712e23          	sw	s7,92(sp)
    47d8:	05812c23          	sw	s8,88(sp)
    47dc:	05912a23          	sw	s9,84(sp)
    47e0:	05a12823          	sw	s10,80(sp)
    47e4:	05b12623          	sw	s11,76(sp)
    47e8:	00e12623          	sw	a4,12(sp)
    47ec:	01012a23          	sw	a6,20(sp)
    47f0:	04079463          	bnez	a5,4838 <fatfs_add_file_entry+0x90>
    47f4:	00000913          	li	s2,0
    47f8:	07c12083          	lw	ra,124(sp)
    47fc:	07812403          	lw	s0,120(sp)
    4800:	07412483          	lw	s1,116(sp)
    4804:	06c12983          	lw	s3,108(sp)
    4808:	06812a03          	lw	s4,104(sp)
    480c:	06412a83          	lw	s5,100(sp)
    4810:	06012b03          	lw	s6,96(sp)
    4814:	05c12b83          	lw	s7,92(sp)
    4818:	05812c03          	lw	s8,88(sp)
    481c:	05412c83          	lw	s9,84(sp)
    4820:	05012d03          	lw	s10,80(sp)
    4824:	04c12d83          	lw	s11,76(sp)
    4828:	00090513          	mv	a0,s2
    482c:	07012903          	lw	s2,112(sp)
    4830:	08010113          	addi	sp,sp,128
    4834:	00008067          	ret
    4838:	00050413          	mv	s0,a0
    483c:	00060513          	mv	a0,a2
    4840:	00058b13          	mv	s6,a1
    4844:	00060c93          	mv	s9,a2
    4848:	00068b93          	mv	s7,a3
    484c:	ffffe097          	auipc	ra,0xffffe
    4850:	8e4080e7          	jalr	-1820(ra) # 2130 <fatfs_lfn_entries_required>
    4854:	00150713          	addi	a4,a0,1
    4858:	00100793          	li	a5,1
    485c:	00050493          	mv	s1,a0
    4860:	f8e7fae3          	bgeu	a5,a4,47f4 <fatfs_add_file_entry+0x4c>
    4864:	00000993          	li	s3,0
    4868:	00000a93          	li	s5,0
    486c:	00000a13          	li	s4,0
    4870:	00000c13          	li	s8,0
    4874:	00000d13          	li	s10,0
    4878:	01000d93          	li	s11,16
    487c:	00000693          	li	a3,0
    4880:	00098613          	mv	a2,s3
    4884:	000b0593          	mv	a1,s6
    4888:	00040513          	mv	a0,s0
    488c:	ffffe097          	auipc	ra,0xffffe
    4890:	7b4080e7          	jalr	1972(ra) # 3040 <fatfs_sector_reader>
    4894:	00050913          	mv	s2,a0
    4898:	14050a63          	beqz	a0,49ec <fatfs_add_file_entry+0x244>
    489c:	04440693          	addi	a3,s0,68
    48a0:	000d0913          	mv	s2,s10
    48a4:	00000713          	li	a4,0
    48a8:	00068513          	mv	a0,a3
    48ac:	00e12e23          	sw	a4,28(sp)
    48b0:	00d12c23          	sw	a3,24(sp)
    48b4:	ffffd097          	auipc	ra,0xffffd
    48b8:	78c080e7          	jalr	1932(ra) # 2040 <fatfs_entry_lfn_text>
    48bc:	01812683          	lw	a3,24(sp)
    48c0:	01c12703          	lw	a4,28(sp)
    48c4:	00050d13          	mv	s10,a0
    48c8:	02050c63          	beqz	a0,4900 <fatfs_add_file_entry+0x158>
    48cc:	00091863          	bnez	s2,48dc <fatfs_add_file_entry+0x134>
    48d0:	00070a93          	mv	s5,a4
    48d4:	00098a13          	mv	s4,s3
    48d8:	00100c13          	li	s8,1
    48dc:	00190d13          	addi	s10,s2,1
    48e0:	00170713          	addi	a4,a4,1
    48e4:	0ff77713          	zext.b	a4,a4
    48e8:	02068693          	addi	a3,a3,32
    48ec:	01b71663          	bne	a4,s11,48f8 <fatfs_add_file_entry+0x150>
    48f0:	00198993          	addi	s3,s3,1
    48f4:	f89ff06f          	j	487c <fatfs_add_file_entry+0xd4>
    48f8:	000d0913          	mv	s2,s10
    48fc:	fadff06f          	j	48a8 <fatfs_add_file_entry+0x100>
    4900:	0006c603          	lbu	a2,0(a3)
    4904:	0e500793          	li	a5,229
    4908:	0cf61c63          	bne	a2,a5,49e0 <fatfs_add_file_entry+0x238>
    490c:	00091863          	bnez	s2,491c <fatfs_add_file_entry+0x174>
    4910:	00070a93          	mv	s5,a4
    4914:	00098a13          	mv	s4,s3
    4918:	00100c13          	li	s8,1
    491c:	00190d13          	addi	s10,s2,1
    4920:	fc9940e3          	blt	s2,s1,48e0 <fatfs_add_file_entry+0x138>
    4924:	00bb8713          	addi	a4,s7,11
    4928:	000b8793          	mv	a5,s7
    492c:	00000913          	li	s2,0
    4930:	0007c603          	lbu	a2,0(a5)
    4934:	00791693          	slli	a3,s2,0x7
    4938:	00195913          	srli	s2,s2,0x1
    493c:	00c90933          	add	s2,s2,a2
    4940:	00178793          	addi	a5,a5,1
    4944:	00d90933          	add	s2,s2,a3
    4948:	0ff97913          	zext.b	s2,s2
    494c:	fee792e3          	bne	a5,a4,4930 <fatfs_add_file_entry+0x188>
    4950:	000a0993          	mv	s3,s4
    4954:	00000d93          	li	s11,0
    4958:	00000693          	li	a3,0
    495c:	00098613          	mv	a2,s3
    4960:	000b0593          	mv	a1,s6
    4964:	00040513          	mv	a0,s0
    4968:	ffffe097          	auipc	ra,0xffffe
    496c:	6d8080e7          	jalr	1752(ra) # 3040 <fatfs_sector_reader>
    4970:	e80502e3          	beqz	a0,47f4 <fatfs_add_file_entry+0x4c>
    4974:	04440d13          	addi	s10,s0,68
    4978:	00000713          	li	a4,0
    497c:	00000793          	li	a5,0
    4980:	000d0c13          	mv	s8,s10
    4984:	000d9663          	bnez	s11,4990 <fatfs_add_file_entry+0x1e8>
    4988:	11499e63          	bne	s3,s4,4aa4 <fatfs_add_file_entry+0x2fc>
    498c:	11579c63          	bne	a5,s5,4aa4 <fatfs_add_file_entry+0x2fc>
    4990:	0e049463          	bnez	s1,4a78 <fatfs_add_file_entry+0x2d0>
    4994:	01412703          	lw	a4,20(sp)
    4998:	00c12603          	lw	a2,12(sp)
    499c:	01012583          	lw	a1,16(sp)
    49a0:	02010693          	addi	a3,sp,32
    49a4:	000b8513          	mv	a0,s7
    49a8:	ffffe097          	auipc	ra,0xffffe
    49ac:	8e0080e7          	jalr	-1824(ra) # 2288 <fatfs_sfn_create_entry>
    49b0:	02000613          	li	a2,32
    49b4:	02010593          	addi	a1,sp,32
    49b8:	000d0513          	mv	a0,s10
    49bc:	ffffd097          	auipc	ra,0xffffd
    49c0:	83c080e7          	jalr	-1988(ra) # 11f8 <memcpy>
    49c4:	03842783          	lw	a5,56(s0)
    49c8:	24442503          	lw	a0,580(s0)
    49cc:	00100613          	li	a2,1
    49d0:	000c0593          	mv	a1,s8
    49d4:	000780e7          	jalr	a5
    49d8:	00050913          	mv	s2,a0
    49dc:	e1dff06f          	j	47f8 <fatfs_add_file_entry+0x50>
    49e0:	f20606e3          	beqz	a2,490c <fatfs_add_file_entry+0x164>
    49e4:	00000c13          	li	s8,0
    49e8:	ef9ff06f          	j	48e0 <fatfs_add_file_entry+0x138>
    49ec:	00842583          	lw	a1,8(s0)
    49f0:	02010613          	addi	a2,sp,32
    49f4:	00040513          	mv	a0,s0
    49f8:	fffff097          	auipc	ra,0xfffff
    49fc:	3d0080e7          	jalr	976(ra) # 3dc8 <fatfs_find_blank_cluster>
    4a00:	de050ce3          	beqz	a0,47f8 <fatfs_add_file_entry+0x50>
    4a04:	02012d83          	lw	s11,32(sp)
    4a08:	000b0593          	mv	a1,s6
    4a0c:	00040513          	mv	a0,s0
    4a10:	000d8613          	mv	a2,s11
    4a14:	fffff097          	auipc	ra,0xfffff
    4a18:	65c080e7          	jalr	1628(ra) # 4070 <fatfs_fat_add_cluster_to_chain>
    4a1c:	dc050ee3          	beqz	a0,47f8 <fatfs_add_file_entry+0x50>
    4a20:	20000613          	li	a2,512
    4a24:	00000593          	li	a1,0
    4a28:	04440513          	addi	a0,s0,68
    4a2c:	ffffc097          	auipc	ra,0xffffc
    4a30:	7b0080e7          	jalr	1968(ra) # 11dc <memset>
    4a34:	00000d13          	li	s10,0
    4a38:	00044783          	lbu	a5,0(s0)
    4a3c:	00fd6a63          	bltu	s10,a5,4a50 <fatfs_add_file_entry+0x2a8>
    4a40:	ee0c12e3          	bnez	s8,4924 <fatfs_add_file_entry+0x17c>
    4a44:	00098a13          	mv	s4,s3
    4a48:	00000a93          	li	s5,0
    4a4c:	ed9ff06f          	j	4924 <fatfs_add_file_entry+0x17c>
    4a50:	00000693          	li	a3,0
    4a54:	000d0613          	mv	a2,s10
    4a58:	000d8593          	mv	a1,s11
    4a5c:	00040513          	mv	a0,s0
    4a60:	ffffd097          	auipc	ra,0xffffd
    4a64:	3a4080e7          	jalr	932(ra) # 1e04 <fatfs_write_sector>
    4a68:	d80508e3          	beqz	a0,47f8 <fatfs_add_file_entry+0x50>
    4a6c:	001d0613          	addi	a2,s10,1
    4a70:	0ff67d13          	zext.b	s10,a2
    4a74:	fc5ff06f          	j	4a38 <fatfs_add_file_entry+0x290>
    4a78:	fff48493          	addi	s1,s1,-1
    4a7c:	00090693          	mv	a3,s2
    4a80:	00048613          	mv	a2,s1
    4a84:	000d0593          	mv	a1,s10
    4a88:	000c8513          	mv	a0,s9
    4a8c:	00f12c23          	sw	a5,24(sp)
    4a90:	ffffd097          	auipc	ra,0xffffd
    4a94:	6d0080e7          	jalr	1744(ra) # 2160 <fatfs_filename_to_lfn>
    4a98:	01812783          	lw	a5,24(sp)
    4a9c:	00100d93          	li	s11,1
    4aa0:	00100713          	li	a4,1
    4aa4:	00178793          	addi	a5,a5,1
    4aa8:	0ff7f793          	zext.b	a5,a5
    4aac:	01000693          	li	a3,16
    4ab0:	020d0d13          	addi	s10,s10,32
    4ab4:	ecd798e3          	bne	a5,a3,4984 <fatfs_add_file_entry+0x1dc>
    4ab8:	00070e63          	beqz	a4,4ad4 <fatfs_add_file_entry+0x32c>
    4abc:	03842783          	lw	a5,56(s0)
    4ac0:	24442503          	lw	a0,580(s0)
    4ac4:	00100613          	li	a2,1
    4ac8:	000c0593          	mv	a1,s8
    4acc:	000780e7          	jalr	a5
    4ad0:	d20502e3          	beqz	a0,47f4 <fatfs_add_file_entry+0x4c>
    4ad4:	00198993          	addi	s3,s3,1
    4ad8:	e81ff06f          	j	4958 <fatfs_add_file_entry+0x1b0>

00004adc <fl_fopen>:
    4adc:	000057b7          	lui	a5,0x5
    4ae0:	26c7a783          	lw	a5,620(a5) # 526c <_filelib_init>
    4ae4:	fa010113          	addi	sp,sp,-96
    4ae8:	04812c23          	sw	s0,88(sp)
    4aec:	05412423          	sw	s4,72(sp)
    4af0:	04112e23          	sw	ra,92(sp)
    4af4:	04912a23          	sw	s1,84(sp)
    4af8:	05212823          	sw	s2,80(sp)
    4afc:	05312623          	sw	s3,76(sp)
    4b00:	05512223          	sw	s5,68(sp)
    4b04:	05612023          	sw	s6,64(sp)
    4b08:	03712e23          	sw	s7,60(sp)
    4b0c:	03812c23          	sw	s8,56(sp)
    4b10:	03912a23          	sw	s9,52(sp)
    4b14:	00050a13          	mv	s4,a0
    4b18:	00058413          	mv	s0,a1
    4b1c:	00079663          	bnez	a5,4b28 <fl_fopen+0x4c>
    4b20:	ffffd097          	auipc	ra,0xffffd
    4b24:	3a0080e7          	jalr	928(ra) # 1ec0 <fl_init>
    4b28:	000057b7          	lui	a5,0x5
    4b2c:	2707a783          	lw	a5,624(a5) # 5270 <_filelib_valid>
    4b30:	30078263          	beqz	a5,4e34 <fl_fopen+0x358>
    4b34:	300a0063          	beqz	s4,4e34 <fl_fopen+0x358>
    4b38:	10040463          	beqz	s0,4c40 <fl_fopen+0x164>
    4b3c:	00040513          	mv	a0,s0
    4b40:	ffffc097          	auipc	ra,0xffffc
    4b44:	6dc080e7          	jalr	1756(ra) # 121c <strlen>
    4b48:	00000493          	li	s1,0
    4b4c:	00000713          	li	a4,0
    4b50:	05700693          	li	a3,87
    4b54:	07200613          	li	a2,114
    4b58:	07700813          	li	a6,119
    4b5c:	06100893          	li	a7,97
    4b60:	06200313          	li	t1,98
    4b64:	04100593          	li	a1,65
    4b68:	04200e13          	li	t3,66
    4b6c:	05200e93          	li	t4,82
    4b70:	02b00f13          	li	t5,43
    4b74:	10a74263          	blt	a4,a0,4c78 <fl_fopen+0x19c>
    4b78:	0000a937          	lui	s2,0xa
    4b7c:	cc890793          	addi	a5,s2,-824 # 9cc8 <_fs>
    4b80:	0387a783          	lw	a5,56(a5)
    4b84:	cc890b13          	addi	s6,s2,-824
    4b88:	00079463          	bnez	a5,4b90 <fl_fopen+0xb4>
    4b8c:	0d94f493          	andi	s1,s1,217
    4b90:	03cb2783          	lw	a5,60(s6)
    4b94:	00078463          	beqz	a5,4b9c <fl_fopen+0xc0>
    4b98:	000780e7          	jalr	a5
    4b9c:	0014fc13          	andi	s8,s1,1
    4ba0:	160c1463          	bnez	s8,4d08 <fl_fopen+0x22c>
    4ba4:	0204f793          	andi	a5,s1,32
    4ba8:	08078463          	beqz	a5,4c30 <fl_fopen+0x154>
    4bac:	038b2783          	lw	a5,56(s6)
    4bb0:	06078a63          	beqz	a5,4c24 <fl_fopen+0x148>
    4bb4:	ffffd097          	auipc	ra,0xffffd
    4bb8:	114080e7          	jalr	276(ra) # 1cc8 <_allocate_file>
    4bbc:	00050413          	mv	s0,a0
    4bc0:	06050263          	beqz	a0,4c24 <fl_fopen+0x148>
    4bc4:	01450b93          	addi	s7,a0,20
    4bc8:	10400613          	li	a2,260
    4bcc:	00000593          	li	a1,0
    4bd0:	000b8513          	mv	a0,s7
    4bd4:	ffffc097          	auipc	ra,0xffffc
    4bd8:	608080e7          	jalr	1544(ra) # 11dc <memset>
    4bdc:	11840a93          	addi	s5,s0,280
    4be0:	10400613          	li	a2,260
    4be4:	00000593          	li	a1,0
    4be8:	000a8513          	mv	a0,s5
    4bec:	ffffc097          	auipc	ra,0xffffc
    4bf0:	5f0080e7          	jalr	1520(ra) # 11dc <memset>
    4bf4:	10400713          	li	a4,260
    4bf8:	000a8693          	mv	a3,s5
    4bfc:	10400613          	li	a2,260
    4c00:	000b8593          	mv	a1,s7
    4c04:	000a0513          	mv	a0,s4
    4c08:	ffffe097          	auipc	ra,0xffffe
    4c0c:	b74080e7          	jalr	-1164(ra) # 277c <fatfs_split_path>
    4c10:	fff00793          	li	a5,-1
    4c14:	10f51863          	bne	a0,a5,4d24 <fl_fopen+0x248>
    4c18:	00040513          	mv	a0,s0
    4c1c:	ffffd097          	auipc	ra,0xffffd
    4c20:	120080e7          	jalr	288(ra) # 1d3c <_free_file>
    4c24:	000c1663          	bnez	s8,4c30 <fl_fopen+0x154>
    4c28:	0064f793          	andi	a5,s1,6
    4c2c:	1e079a63          	bnez	a5,4e20 <fl_fopen+0x344>
    4c30:	00000413          	li	s0,0
    4c34:	040b2783          	lw	a5,64(s6)
    4c38:	00078463          	beqz	a5,4c40 <fl_fopen+0x164>
    4c3c:	000780e7          	jalr	a5
    4c40:	05c12083          	lw	ra,92(sp)
    4c44:	00040513          	mv	a0,s0
    4c48:	05812403          	lw	s0,88(sp)
    4c4c:	05412483          	lw	s1,84(sp)
    4c50:	05012903          	lw	s2,80(sp)
    4c54:	04c12983          	lw	s3,76(sp)
    4c58:	04812a03          	lw	s4,72(sp)
    4c5c:	04412a83          	lw	s5,68(sp)
    4c60:	04012b03          	lw	s6,64(sp)
    4c64:	03c12b83          	lw	s7,60(sp)
    4c68:	03812c03          	lw	s8,56(sp)
    4c6c:	03412c83          	lw	s9,52(sp)
    4c70:	06010113          	addi	sp,sp,96
    4c74:	00008067          	ret
    4c78:	00e407b3          	add	a5,s0,a4
    4c7c:	0007c783          	lbu	a5,0(a5)
    4c80:	04d78463          	beq	a5,a3,4cc8 <fl_fopen+0x1ec>
    4c84:	02f6e463          	bltu	a3,a5,4cac <fl_fopen+0x1d0>
    4c88:	04b78463          	beq	a5,a1,4cd0 <fl_fopen+0x1f4>
    4c8c:	00f5e863          	bltu	a1,a5,4c9c <fl_fopen+0x1c0>
    4c90:	05e78463          	beq	a5,t5,4cd8 <fl_fopen+0x1fc>
    4c94:	00170713          	addi	a4,a4,1
    4c98:	eddff06f          	j	4b74 <fl_fopen+0x98>
    4c9c:	03c78063          	beq	a5,t3,4cbc <fl_fopen+0x1e0>
    4ca0:	ffd79ae3          	bne	a5,t4,4c94 <fl_fopen+0x1b8>
    4ca4:	0014e493          	ori	s1,s1,1
    4ca8:	fedff06f          	j	4c94 <fl_fopen+0x1b8>
    4cac:	fec78ce3          	beq	a5,a2,4ca4 <fl_fopen+0x1c8>
    4cb0:	00f66a63          	bltu	a2,a5,4cc4 <fl_fopen+0x1e8>
    4cb4:	01178e63          	beq	a5,a7,4cd0 <fl_fopen+0x1f4>
    4cb8:	fc679ee3          	bne	a5,t1,4c94 <fl_fopen+0x1b8>
    4cbc:	0084e493          	ori	s1,s1,8
    4cc0:	fd5ff06f          	j	4c94 <fl_fopen+0x1b8>
    4cc4:	fd0798e3          	bne	a5,a6,4c94 <fl_fopen+0x1b8>
    4cc8:	0324e493          	ori	s1,s1,50
    4ccc:	fc9ff06f          	j	4c94 <fl_fopen+0x1b8>
    4cd0:	0264e493          	ori	s1,s1,38
    4cd4:	fc1ff06f          	j	4c94 <fl_fopen+0x1b8>
    4cd8:	0014f793          	andi	a5,s1,1
    4cdc:	00078663          	beqz	a5,4ce8 <fl_fopen+0x20c>
    4ce0:	0024e493          	ori	s1,s1,2
    4ce4:	fb1ff06f          	j	4c94 <fl_fopen+0x1b8>
    4ce8:	0024f793          	andi	a5,s1,2
    4cec:	00078663          	beqz	a5,4cf8 <fl_fopen+0x21c>
    4cf0:	0314e493          	ori	s1,s1,49
    4cf4:	fa1ff06f          	j	4c94 <fl_fopen+0x1b8>
    4cf8:	0044f793          	andi	a5,s1,4
    4cfc:	f8078ce3          	beqz	a5,4c94 <fl_fopen+0x1b8>
    4d00:	0274e493          	ori	s1,s1,39
    4d04:	f91ff06f          	j	4c94 <fl_fopen+0x1b8>
    4d08:	000a0513          	mv	a0,s4
    4d0c:	fffff097          	auipc	ra,0xfffff
    4d10:	830080e7          	jalr	-2000(ra) # 353c <_open_file>
    4d14:	00050413          	mv	s0,a0
    4d18:	e80506e3          	beqz	a0,4ba4 <fl_fopen+0xc8>
    4d1c:	42940c23          	sb	s1,1080(s0)
    4d20:	f15ff06f          	j	4c34 <fl_fopen+0x158>
    4d24:	00040513          	mv	a0,s0
    4d28:	ffffe097          	auipc	ra,0xffffe
    4d2c:	ca4080e7          	jalr	-860(ra) # 29cc <_check_file_open>
    4d30:	00050993          	mv	s3,a0
    4d34:	ee0512e3          	bnez	a0,4c18 <fl_fopen+0x13c>
    4d38:	01444783          	lbu	a5,20(s0)
    4d3c:	0a079a63          	bnez	a5,4df0 <fl_fopen+0x314>
    4d40:	008b2783          	lw	a5,8(s6)
    4d44:	00f42023          	sw	a5,0(s0)
    4d48:	00042583          	lw	a1,0(s0)
    4d4c:	01010693          	addi	a3,sp,16
    4d50:	000a8613          	mv	a2,s5
    4d54:	cc890513          	addi	a0,s2,-824
    4d58:	ffffe097          	auipc	ra,0xffffe
    4d5c:	428080e7          	jalr	1064(ra) # 3180 <fatfs_get_file_entry>
    4d60:	00100793          	li	a5,1
    4d64:	eaf50ae3          	beq	a0,a5,4c18 <fl_fopen+0x13c>
    4d68:	00042223          	sw	zero,4(s0)
    4d6c:	00100693          	li	a3,1
    4d70:	00440613          	addi	a2,s0,4
    4d74:	00100593          	li	a1,1
    4d78:	cc890513          	addi	a0,s2,-824
    4d7c:	00000097          	auipc	ra,0x0
    4d80:	924080e7          	jalr	-1756(ra) # 46a0 <fatfs_allocate_free_space.part.0>
    4d84:	e8050ae3          	beqz	a0,4c18 <fl_fopen+0x13c>
    4d88:	00002cb7          	lui	s9,0x2
    4d8c:	21c40b93          	addi	s7,s0,540
    4d90:	70fc8c93          	addi	s9,s9,1807 # 270f <fatfs_get_substring+0x87>
    4d94:	000a8593          	mv	a1,s5
    4d98:	00410513          	addi	a0,sp,4
    4d9c:	ffffd097          	auipc	ra,0xffffd
    4da0:	590080e7          	jalr	1424(ra) # 232c <fatfs_lfn_create_sfn>
    4da4:	06098263          	beqz	s3,4e08 <fl_fopen+0x32c>
    4da8:	00098613          	mv	a2,s3
    4dac:	00410593          	addi	a1,sp,4
    4db0:	000b8513          	mv	a0,s7
    4db4:	ffffd097          	auipc	ra,0xffffd
    4db8:	6f0080e7          	jalr	1776(ra) # 24a4 <fatfs_lfn_generate_tail>
    4dbc:	00042583          	lw	a1,0(s0)
    4dc0:	000b8613          	mv	a2,s7
    4dc4:	cc890513          	addi	a0,s2,-824
    4dc8:	fffff097          	auipc	ra,0xfffff
    4dcc:	8ec080e7          	jalr	-1812(ra) # 36b4 <fatfs_sfn_exists>
    4dd0:	06050663          	beqz	a0,4e3c <fl_fopen+0x360>
    4dd4:	00198993          	addi	s3,s3,1
    4dd8:	fb999ee3          	bne	s3,s9,4d94 <fl_fopen+0x2b8>
    4ddc:	00442583          	lw	a1,4(s0)
    4de0:	cc890513          	addi	a0,s2,-824
    4de4:	fffff097          	auipc	ra,0xfffff
    4de8:	21c080e7          	jalr	540(ra) # 4000 <fatfs_free_cluster_chain>
    4dec:	e2dff06f          	j	4c18 <fl_fopen+0x13c>
    4df0:	00040593          	mv	a1,s0
    4df4:	000b8513          	mv	a0,s7
    4df8:	ffffe097          	auipc	ra,0xffffe
    4dfc:	590080e7          	jalr	1424(ra) # 3388 <_open_directory>
    4e00:	f40514e3          	bnez	a0,4d48 <fl_fopen+0x26c>
    4e04:	e15ff06f          	j	4c18 <fl_fopen+0x13c>
    4e08:	00b00613          	li	a2,11
    4e0c:	00410593          	addi	a1,sp,4
    4e10:	000b8513          	mv	a0,s7
    4e14:	ffffc097          	auipc	ra,0xffffc
    4e18:	3e4080e7          	jalr	996(ra) # 11f8 <memcpy>
    4e1c:	fa1ff06f          	j	4dbc <fl_fopen+0x2e0>
    4e20:	000a0513          	mv	a0,s4
    4e24:	ffffe097          	auipc	ra,0xffffe
    4e28:	718080e7          	jalr	1816(ra) # 353c <_open_file>
    4e2c:	00050413          	mv	s0,a0
    4e30:	0640006f          	j	4e94 <fl_fopen+0x3b8>
    4e34:	00000413          	li	s0,0
    4e38:	e09ff06f          	j	4c40 <fl_fopen+0x164>
    4e3c:	00442703          	lw	a4,4(s0)
    4e40:	00042583          	lw	a1,0(s0)
    4e44:	00000813          	li	a6,0
    4e48:	00000793          	li	a5,0
    4e4c:	000b8693          	mv	a3,s7
    4e50:	000a8613          	mv	a2,s5
    4e54:	cc890513          	addi	a0,s2,-824
    4e58:	00000097          	auipc	ra,0x0
    4e5c:	950080e7          	jalr	-1712(ra) # 47a8 <fatfs_add_file_entry>
    4e60:	f6050ee3          	beqz	a0,4ddc <fl_fopen+0x300>
    4e64:	fff00793          	li	a5,-1
    4e68:	00042623          	sw	zero,12(s0)
    4e6c:	00042423          	sw	zero,8(s0)
    4e70:	42f42823          	sw	a5,1072(s0)
    4e74:	42042a23          	sw	zero,1076(s0)
    4e78:	00042823          	sw	zero,16(s0)
    4e7c:	22f42423          	sw	a5,552(s0)
    4e80:	22f42623          	sw	a5,556(s0)
    4e84:	cc890513          	addi	a0,s2,-824
    4e88:	ffffe097          	auipc	ra,0xffffe
    4e8c:	04c080e7          	jalr	76(ra) # 2ed4 <fatfs_fat_purge>
    4e90:	e80c06e3          	beqz	s8,4d1c <fl_fopen+0x240>
    4e94:	e80414e3          	bnez	s0,4d1c <fl_fopen+0x240>
    4e98:	d99ff06f          	j	4c30 <fl_fopen+0x154>

00004e9c <acmd41>:
    4e9c:	00004069 00000100                       i@......

00004ea4 <cmd0>:
    4ea4:	00000040 00009500                       @.......

00004eac <cmd16>:
    4eac:	02000050 00001500                       P.......

00004eb4 <cmd55>:
    4eb4:	00000077 00000100                       w.......

00004ebc <cmd8>:
    4ebc:	01000048 000087aa                       H.......

00004ec4 <AUDIO>:
    4ec4:	00018000                                ....

00004ec8 <BUTTONS>:
    4ec8:	00010100                                ....

00004ecc <LEDS>:
    4ecc:	00010004                                ....

00004ed0 <OLED>:
    4ed0:	00010008                                ....

00004ed4 <OLED_RST>:
    4ed4:	00010010                                ....

00004ed8 <SDCARD>:
    4ed8:	00010080 676d492f 0000002f 4f525245     ..../Img/...ERRO
    4ee8:	61702052 74206874 6c206f6f 65677261     R path too large
    4ef8:	0000000a 00006272 2e676d69 20776172     ....rb..img.raw 
    4f08:	20746f6e 6e756f66 000a2e64 636f522f     not found.../Roc
    4f18:	0000006b 642e6f72 00617461 616c432f     k...ro.data./Cla
    4f28:	63697373 00000000 642e6363 00617461     ssic....cc.data.
    4f38:	706f502f 00000000 61642e70 00006174     /Pop....p.data..
    4f48:	656c452f 6f727463 0063696e 61642e65     /Electronic.e.da
    4f58:	00006174 676d492f 2e63672f 00776172     ta../Img/gc.raw.
    4f68:	656c6966 746f6e20 756f6620 0a2e646e     file not found..
    4f78:	00000000 57202020 4f434c45 2120454d     ....   WELCOME !
    4f88:	21202120 20202020 00000a0a 676d492f      ! !    ..../Img
    4f98:	6269622f 7761722e 00000000 20746f6e     /bib.raw....not 
    4fa8:	6e756f66 25203a64 00000a73 79616c50     found: %s...Play
    4fb8:	2e676e69 20202e2e 00202020 73756150     ing...     .Paus
    4fc8:	2e2e6465 2020202e 00202020 20202020     ed...      .    
    4fd8:	3d3d3d3d 6f53203d 2073676e 3d3d3d3d     ===== Songs ====
    4fe8:	2020203d 000a0a20 203e6425 000a7325     =    ...%d> %s..

00004ff8 <font>:
    4ff8:	00000000 00002f00 00030000 14000003     ...../..........
    5008:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5018:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5028:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5038:	00080800 00200000 20000000 02040810     ...... .... ....
    5048:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5058:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5068:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5078:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5088:	00141400 0a110000 01000004 0007052d     ............-...
    5098:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    50a8:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    50b8:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    50c8:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    50d8:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    50e8:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    50f8:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5108:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5118:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5128:	003f2102 01020000 20000201 00000020     .!?........  ...
    5138:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5148:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5158:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5168:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5178:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5188:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5198:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    51a8:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    51b8:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    51c8:	043f2100 02010000 00000102 00000000     .!?.............
    51d8:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    51e8:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    51f8:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    5208:	54414620 74656420 736c6961 64252820      FAT details (%d
    5218:	0a0d2129 00000000 00000001 00000003     )!..............
    5228:	00000005 00000007 00000009 0000000e     ................
    5238:	00000010 00000012 00000014 00000016     ................
    5248:	00000018 0000001c 0000001e              ............

00005254 <sdcard_while_loading_callback>:
    5254:	00000000                                ....

00005258 <back_color>:
    5258:	00000000                                ....

0000525c <cursor_x>:
    525c:	00000000                                ....

00005260 <cursor_y>:
    5260:	00000000                                ....

00005264 <front_color>:
    5264:	00000000                                ....

00005268 <f_putchar>:
    5268:	00000000                                ....

0000526c <_filelib_init>:
    526c:	00000000                                ....

00005270 <_filelib_valid>:
    5270:	00000000                                ....

00005274 <_free_file_list>:
	...

0000527c <_open_file_list>:
	...
