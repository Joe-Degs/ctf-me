
vuln:     file format elf32-i386


Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das    
 8048155:	6c                   	ins    BYTE PTR es:[edi],dx
 8048156:	69 62 2f 6c 64 2d 6c 	imul   esp,DWORD PTR [edx+0x2f],0x6c2d646c
 804815d:	69 6e 75 78 2e 73 6f 	imul   ebp,DWORD PTR [esi+0x75],0x6f732e78
 8048164:	2e 32 00             	xor    al,BYTE PTR cs:[eax]

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    al,0x0
 804816a:	00 00                	add    BYTE PTR [eax],al
 804816c:	10 00                	adc    BYTE PTR [eax],al
 804816e:	00 00                	add    BYTE PTR [eax],al
 8048170:	01 00                	add    DWORD PTR [eax],eax
 8048172:	00 00                	add    BYTE PTR [eax],al
 8048174:	47                   	inc    edi
 8048175:	4e                   	dec    esi
 8048176:	55                   	push   ebp
 8048177:	00 00                	add    BYTE PTR [eax],al
 8048179:	00 00                	add    BYTE PTR [eax],al
 804817b:	00 03                	add    BYTE PTR [ebx],al
 804817d:	00 00                	add    BYTE PTR [eax],al
 804817f:	00 02                	add    BYTE PTR [edx],al
 8048181:	00 00                	add    BYTE PTR [eax],al
 8048183:	00 00                	add    BYTE PTR [eax],al
 8048185:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    al,0x0
 804818a:	00 00                	add    BYTE PTR [eax],al
 804818c:	14 00                	adc    al,0x0
 804818e:	00 00                	add    BYTE PTR [eax],al
 8048190:	03 00                	add    eax,DWORD PTR [eax]
 8048192:	00 00                	add    BYTE PTR [eax],al
 8048194:	47                   	inc    edi
 8048195:	4e                   	dec    esi
 8048196:	55                   	push   ebp
 8048197:	00 5d 4c             	add    BYTE PTR [ebp+0x4c],bl
 804819a:	dc 8d c5 1f b3 e5    	fmul   QWORD PTR [ebp-0x1a4ce03b]
 80481a0:	d4 5c                	aam    0x5c
 80481a2:	2a 59 c6             	sub    bl,BYTE PTR [ecx-0x3a]
 80481a5:	a9 cd 79 58 38       	test   eax,0x385879cd
 80481aa:	2f                   	das    
 80481ab:	c9                   	leave  

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	02 00                	add    al,BYTE PTR [eax]
 80481ae:	00 00                	add    BYTE PTR [eax],al
 80481b0:	0d 00 00 00 01       	or     eax,0x1000000
 80481b5:	00 00                	add    BYTE PTR [eax],al
 80481b7:	00 05 00 00 00 00    	add    BYTE PTR ds:0x0,al
 80481bd:	20 00                	and    BYTE PTR [eax],al
 80481bf:	20 00                	and    BYTE PTR [eax],al
 80481c1:	00 00                	add    BYTE PTR [eax],al
 80481c3:	00 0d 00 00 00 ad    	add    BYTE PTR ds:0xad000000,cl
 80481c9:	4b                   	dec    ebx
 80481ca:	e3 c0                	jecxz  804818c <_init-0x25c>

Disassembly of section .dynsym:

080481cc <.dynsym>:
	...
 80481dc:	2a 00                	sub    al,BYTE PTR [eax]
	...
 80481e6:	00 00                	add    BYTE PTR [eax],al
 80481e8:	12 00                	adc    al,BYTE PTR [eax]
 80481ea:	00 00                	add    BYTE PTR [eax],al
 80481ec:	32 00                	xor    al,BYTE PTR [eax]
	...
 80481f6:	00 00                	add    BYTE PTR [eax],al
 80481f8:	12 00                	adc    al,BYTE PTR [eax]
 80481fa:	00 00                	add    BYTE PTR [eax],al
 80481fc:	31 00                	xor    DWORD PTR [eax],eax
	...
 8048206:	00 00                	add    BYTE PTR [eax],al
 8048208:	12 00                	adc    al,BYTE PTR [eax]
 804820a:	00 00                	add    BYTE PTR [eax],al
 804820c:	48                   	dec    eax
	...
 8048215:	00 00                	add    BYTE PTR [eax],al
 8048217:	00 12                	add    BYTE PTR [edx],dl
 8048219:	00 00                	add    BYTE PTR [eax],al
 804821b:	00 25 00 00 00 00    	add    BYTE PTR ds:0x0,ah
 8048221:	00 00                	add    BYTE PTR [eax],al
 8048223:	00 00                	add    BYTE PTR [eax],al
 8048225:	00 00                	add    BYTE PTR [eax],al
 8048227:	00 12                	add    BYTE PTR [edx],dl
 8048229:	00 00                	add    BYTE PTR [eax],al
 804822b:	00 7e 00             	add    BYTE PTR [esi+0x0],bh
	...
 8048236:	00 00                	add    BYTE PTR [eax],al
 8048238:	20 00                	and    BYTE PTR [eax],al
 804823a:	00 00                	add    BYTE PTR [eax],al
 804823c:	1a 00                	sbb    al,BYTE PTR [eax]
	...
 8048246:	00 00                	add    BYTE PTR [eax],al
 8048248:	12 00                	adc    al,BYTE PTR [eax]
 804824a:	00 00                	add    BYTE PTR [eax],al
 804824c:	58                   	pop    eax
	...
 8048255:	00 00                	add    BYTE PTR [eax],al
 8048257:	00 12                	add    BYTE PTR [edx],dl
 8048259:	00 00                	add    BYTE PTR [eax],al
 804825b:	00 50 00             	add    BYTE PTR [eax+0x0],dl
	...
 8048266:	00 00                	add    BYTE PTR [eax],al
 8048268:	12 00                	adc    al,BYTE PTR [eax]
 804826a:	00 00                	add    BYTE PTR [eax],al
 804826c:	1f                   	pop    ds
	...
 8048275:	00 00                	add    BYTE PTR [eax],al
 8048277:	00 12                	add    BYTE PTR [edx],dl
 8048279:	00 00                	add    BYTE PTR [eax],al
 804827b:	00 37                	add    BYTE PTR [edi],dh
	...
 8048285:	00 00                	add    BYTE PTR [eax],al
 8048287:	00 11                	add    BYTE PTR [ecx],dl
 8048289:	00 00                	add    BYTE PTR [eax],al
 804828b:	00 3e                	add    BYTE PTR [esi],bh
	...
 8048295:	00 00                	add    BYTE PTR [eax],al
 8048297:	00 12                	add    BYTE PTR [edx],dl
 8048299:	00 00                	add    BYTE PTR [eax],al
 804829b:	00 0b                	add    BYTE PTR [ebx],cl
 804829d:	00 00                	add    BYTE PTR [eax],al
 804829f:	00 9c 87 04 08 04 00 	add    BYTE PTR [edi+eax*4+0x40804],bl
 80482a6:	00 00                	add    BYTE PTR [eax],al
 80482a8:	11 00                	adc    DWORD PTR [eax],eax
 80482aa:	10 00                	adc    BYTE PTR [eax],al

Disassembly of section .dynstr:

080482ac <.dynstr>:
 80482ac:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
 80482b0:	63 2e                	arpl   WORD PTR [esi],bp
 80482b2:	73 6f                	jae    8048323 <_init-0xc5>
 80482b4:	2e 36 00 5f 49       	cs add BYTE PTR ss:[edi+0x49],bl
 80482b9:	4f                   	dec    edi
 80482ba:	5f                   	pop    edi
 80482bb:	73 74                	jae    8048331 <_init-0xb7>
 80482bd:	64 69 6e 5f 75 73 65 	imul   ebp,DWORD PTR fs:[esi+0x5f],0x64657375
 80482c4:	64 
 80482c5:	00 65 78             	add    BYTE PTR [ebp+0x78],ah
 80482c8:	69 74 00 66 6f 70 65 	imul   esi,DWORD PTR [eax+eax*1+0x66],0x6e65706f
 80482cf:	6e 
 80482d0:	00 70 75             	add    BYTE PTR [eax+0x75],dh
 80482d3:	74 73                	je     8048348 <_init-0xa0>
 80482d5:	00 70 72             	add    BYTE PTR [eax+0x72],dh
 80482d8:	69 6e 74 66 00 66 67 	imul   ebp,DWORD PTR [esi+0x74],0x67660066
 80482df:	65 74 73             	gs je  8048355 <_init-0x93>
 80482e2:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 80482e5:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 80482e7:	75 74                	jne    804835d <_init-0x8b>
 80482e9:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
 80482ec:	74 72                	je     8048360 <_init-0x88>
 80482ee:	65 73 67             	gs jae 8048358 <_init-0x90>
 80482f1:	69 64 00 67 65 74 65 	imul   esp,DWORD PTR [eax+eax*1+0x67],0x67657465
 80482f8:	67 
 80482f9:	69 64 00 73 65 74 76 	imul   esp,DWORD PTR [eax+eax*1+0x73],0x62767465
 8048300:	62 
 8048301:	75 66                	jne    8048369 <_init-0x7f>
 8048303:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 8048306:	6c                   	ins    BYTE PTR es:[edi],dx
 8048307:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [edx+0x63],0x6174735f
 804830e:	72 74                	jb     8048384 <_init-0x64>
 8048310:	5f                   	pop    edi
 8048311:	6d                   	ins    DWORD PTR es:[edi],dx
 8048312:	61                   	popa   
 8048313:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [esi+0x0],0x42494c47
 804831a:	43                   	inc    ebx
 804831b:	5f                   	pop    edi
 804831c:	32 2e                	xor    ch,BYTE PTR [esi]
 804831e:	31 00                	xor    DWORD PTR [eax],eax
 8048320:	47                   	inc    edi
 8048321:	4c                   	dec    esp
 8048322:	49                   	dec    ecx
 8048323:	42                   	inc    edx
 8048324:	43                   	inc    ebx
 8048325:	5f                   	pop    edi
 8048326:	32 2e                	xor    ch,BYTE PTR [esi]
 8048328:	30 00                	xor    BYTE PTR [eax],al
 804832a:	5f                   	pop    edi
 804832b:	5f                   	pop    edi
 804832c:	67 6d                	ins    DWORD PTR es:[di],dx
 804832e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804832f:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048330:	5f                   	pop    edi
 8048331:	73 74                	jae    80483a7 <_init-0x41>
 8048333:	61                   	popa   
 8048334:	72 74                	jb     80483aa <_init-0x3e>
 8048336:	5f                   	pop    edi
 8048337:	5f                   	pop    edi
	...

Disassembly of section .gnu.version:

0804833a <.gnu.version>:
 804833a:	00 00                	add    BYTE PTR [eax],al
 804833c:	02 00                	add    al,BYTE PTR [eax]
 804833e:	02 00                	add    al,BYTE PTR [eax]
 8048340:	02 00                	add    al,BYTE PTR [eax]
 8048342:	02 00                	add    al,BYTE PTR [eax]
 8048344:	02 00                	add    al,BYTE PTR [eax]
 8048346:	00 00                	add    BYTE PTR [eax],al
 8048348:	02 00                	add    al,BYTE PTR [eax]
 804834a:	02 00                	add    al,BYTE PTR [eax]
 804834c:	02 00                	add    al,BYTE PTR [eax]
 804834e:	03 00                	add    eax,DWORD PTR [eax]
 8048350:	02 00                	add    al,BYTE PTR [eax]
 8048352:	02 00                	add    al,BYTE PTR [eax]
 8048354:	01 00                	add    DWORD PTR [eax],eax

Disassembly of section .gnu.version_r:

08048358 <.gnu.version_r>:
 8048358:	01 00                	add    DWORD PTR [eax],eax
 804835a:	02 00                	add    al,BYTE PTR [eax]
 804835c:	01 00                	add    DWORD PTR [eax],eax
 804835e:	00 00                	add    BYTE PTR [eax],al
 8048360:	10 00                	adc    BYTE PTR [eax],al
 8048362:	00 00                	add    BYTE PTR [eax],al
 8048364:	00 00                	add    BYTE PTR [eax],al
 8048366:	00 00                	add    BYTE PTR [eax],al
 8048368:	11 69 69             	adc    DWORD PTR [ecx+0x69],ebp
 804836b:	0d 00 00 03 00       	or     eax,0x30000
 8048370:	6a 00                	push   0x0
 8048372:	00 00                	add    BYTE PTR [eax],al
 8048374:	10 00                	adc    BYTE PTR [eax],al
 8048376:	00 00                	add    BYTE PTR [eax],al
 8048378:	10 69 69             	adc    BYTE PTR [ecx+0x69],ch
 804837b:	0d 00 00 02 00       	or     eax,0x20000
 8048380:	74 00                	je     8048382 <_init-0x66>
 8048382:	00 00                	add    BYTE PTR [eax],al
 8048384:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .rel.dyn:

08048388 <.rel.dyn>:
 8048388:	f8                   	clc    
 8048389:	9f                   	lahf   
 804838a:	04 08                	add    al,0x8
 804838c:	06                   	push   es
 804838d:	06                   	push   es
 804838e:	00 00                	add    BYTE PTR [eax],al
 8048390:	fc                   	cld    
 8048391:	9f                   	lahf   
 8048392:	04 08                	add    al,0x8
 8048394:	06                   	push   es
 8048395:	0b 00                	or     eax,DWORD PTR [eax]
	...

Disassembly of section .rel.plt:

08048398 <.rel.plt>:
 8048398:	0c a0                	or     al,0xa0
 804839a:	04 08                	add    al,0x8
 804839c:	07                   	pop    es
 804839d:	01 00                	add    DWORD PTR [eax],eax
 804839f:	00 10                	add    BYTE PTR [eax],dl
 80483a1:	a0 04 08 07 02       	mov    al,ds:0x2070804
 80483a6:	00 00                	add    BYTE PTR [eax],al
 80483a8:	14 a0                	adc    al,0xa0
 80483aa:	04 08                	add    al,0x8
 80483ac:	07                   	pop    es
 80483ad:	03 00                	add    eax,DWORD PTR [eax]
 80483af:	00 18                	add    BYTE PTR [eax],bl
 80483b1:	a0 04 08 07 04       	mov    al,ds:0x4070804
 80483b6:	00 00                	add    BYTE PTR [eax],al
 80483b8:	1c a0                	sbb    al,0xa0
 80483ba:	04 08                	add    al,0x8
 80483bc:	07                   	pop    es
 80483bd:	05 00 00 20 a0       	add    eax,0xa0200000
 80483c2:	04 08                	add    al,0x8
 80483c4:	07                   	pop    es
 80483c5:	07                   	pop    es
 80483c6:	00 00                	add    BYTE PTR [eax],al
 80483c8:	24 a0                	and    al,0xa0
 80483ca:	04 08                	add    al,0x8
 80483cc:	07                   	pop    es
 80483cd:	08 00                	or     BYTE PTR [eax],al
 80483cf:	00 28                	add    BYTE PTR [eax],ch
 80483d1:	a0 04 08 07 09       	mov    al,ds:0x9070804
 80483d6:	00 00                	add    BYTE PTR [eax],al
 80483d8:	2c a0                	sub    al,0xa0
 80483da:	04 08                	add    al,0x8
 80483dc:	07                   	pop    es
 80483dd:	0a 00                	or     al,BYTE PTR [eax]
 80483df:	00 30                	add    BYTE PTR [eax],dh
 80483e1:	a0 04 08 07 0c       	mov    al,ds:0xc070804
	...

Disassembly of section .init:

080483e8 <_init>:
 80483e8:	53                   	push   ebx
 80483e9:	83 ec 08             	sub    esp,0x8
 80483ec:	e8 2f 01 00 00       	call   8048520 <__x86.get_pc_thunk.bx>
 80483f1:	81 c3 0f 1c 00 00    	add    ebx,0x1c0f
 80483f7:	8b 83 f8 ff ff ff    	mov    eax,DWORD PTR [ebx-0x8]
 80483fd:	85 c0                	test   eax,eax
 80483ff:	74 05                	je     8048406 <_init+0x1e>
 8048401:	e8 ba 00 00 00       	call   80484c0 <__gmon_start__@plt>
 8048406:	83 c4 08             	add    esp,0x8
 8048409:	5b                   	pop    ebx
 804840a:	c3                   	ret    

Disassembly of section .plt:

08048410 <.plt>:
 8048410:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048416:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804841c:	00 00                	add    BYTE PTR [eax],al
	...

08048420 <printf@plt>:
 8048420:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048426:	68 00 00 00 00       	push   0x0
 804842b:	e9 e0 ff ff ff       	jmp    8048410 <.plt>

08048430 <gets@plt>:
 8048430:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048436:	68 08 00 00 00       	push   0x8
 804843b:	e9 d0 ff ff ff       	jmp    8048410 <.plt>

08048440 <fgets@plt>:
 8048440:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048446:	68 10 00 00 00       	push   0x10
 804844b:	e9 c0 ff ff ff       	jmp    8048410 <.plt>

08048450 <getegid@plt>:
 8048450:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048456:	68 18 00 00 00       	push   0x18
 804845b:	e9 b0 ff ff ff       	jmp    8048410 <.plt>

08048460 <puts@plt>:
 8048460:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 8048466:	68 20 00 00 00       	push   0x20
 804846b:	e9 a0 ff ff ff       	jmp    8048410 <.plt>

08048470 <exit@plt>:
 8048470:	ff 25 20 a0 04 08    	jmp    DWORD PTR ds:0x804a020
 8048476:	68 28 00 00 00       	push   0x28
 804847b:	e9 90 ff ff ff       	jmp    8048410 <.plt>

08048480 <__libc_start_main@plt>:
 8048480:	ff 25 24 a0 04 08    	jmp    DWORD PTR ds:0x804a024
 8048486:	68 30 00 00 00       	push   0x30
 804848b:	e9 80 ff ff ff       	jmp    8048410 <.plt>

08048490 <setvbuf@plt>:
 8048490:	ff 25 28 a0 04 08    	jmp    DWORD PTR ds:0x804a028
 8048496:	68 38 00 00 00       	push   0x38
 804849b:	e9 70 ff ff ff       	jmp    8048410 <.plt>

080484a0 <fopen@plt>:
 80484a0:	ff 25 2c a0 04 08    	jmp    DWORD PTR ds:0x804a02c
 80484a6:	68 40 00 00 00       	push   0x40
 80484ab:	e9 60 ff ff ff       	jmp    8048410 <.plt>

080484b0 <setresgid@plt>:
 80484b0:	ff 25 30 a0 04 08    	jmp    DWORD PTR ds:0x804a030
 80484b6:	68 48 00 00 00       	push   0x48
 80484bb:	e9 50 ff ff ff       	jmp    8048410 <.plt>

Disassembly of section .plt.got:

080484c0 <__gmon_start__@plt>:
 80484c0:	ff 25 f8 9f 04 08    	jmp    DWORD PTR ds:0x8049ff8
 80484c6:	66 90                	xchg   ax,ax

Disassembly of section .text:

080484d0 <_start>:
 80484d0:	31 ed                	xor    ebp,ebp
 80484d2:	5e                   	pop    esi
 80484d3:	89 e1                	mov    ecx,esp
 80484d5:	83 e4 f0             	and    esp,0xfffffff0
 80484d8:	50                   	push   eax
 80484d9:	54                   	push   esp
 80484da:	52                   	push   edx
 80484db:	e8 23 00 00 00       	call   8048503 <_start+0x33>
 80484e0:	81 c3 20 1b 00 00    	add    ebx,0x1b20
 80484e6:	8d 83 80 e7 ff ff    	lea    eax,[ebx-0x1880]
 80484ec:	50                   	push   eax
 80484ed:	8d 83 20 e7 ff ff    	lea    eax,[ebx-0x18e0]
 80484f3:	50                   	push   eax
 80484f4:	51                   	push   ecx
 80484f5:	56                   	push   esi
 80484f6:	c7 c0 9e 86 04 08    	mov    eax,0x804869e
 80484fc:	50                   	push   eax
 80484fd:	e8 7e ff ff ff       	call   8048480 <__libc_start_main@plt>
 8048502:	f4                   	hlt    
 8048503:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048506:	c3                   	ret    
 8048507:	66 90                	xchg   ax,ax
 8048509:	66 90                	xchg   ax,ax
 804850b:	66 90                	xchg   ax,ax
 804850d:	66 90                	xchg   ax,ax
 804850f:	90                   	nop

08048510 <_dl_relocate_static_pie>:
 8048510:	f3 c3                	repz ret 
 8048512:	66 90                	xchg   ax,ax
 8048514:	66 90                	xchg   ax,ax
 8048516:	66 90                	xchg   ax,ax
 8048518:	66 90                	xchg   ax,ax
 804851a:	66 90                	xchg   ax,ax
 804851c:	66 90                	xchg   ax,ax
 804851e:	66 90                	xchg   ax,ax

08048520 <__x86.get_pc_thunk.bx>:
 8048520:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048523:	c3                   	ret    
 8048524:	66 90                	xchg   ax,ax
 8048526:	66 90                	xchg   ax,ax
 8048528:	66 90                	xchg   ax,ax
 804852a:	66 90                	xchg   ax,ax
 804852c:	66 90                	xchg   ax,ax
 804852e:	66 90                	xchg   ax,ax

08048530 <deregister_tm_clones>:
 8048530:	b8 3c a0 04 08       	mov    eax,0x804a03c
 8048535:	3d 3c a0 04 08       	cmp    eax,0x804a03c
 804853a:	74 24                	je     8048560 <deregister_tm_clones+0x30>
 804853c:	b8 00 00 00 00       	mov    eax,0x0
 8048541:	85 c0                	test   eax,eax
 8048543:	74 1b                	je     8048560 <deregister_tm_clones+0x30>
 8048545:	55                   	push   ebp
 8048546:	89 e5                	mov    ebp,esp
 8048548:	83 ec 14             	sub    esp,0x14
 804854b:	68 3c a0 04 08       	push   0x804a03c
 8048550:	ff d0                	call   eax
 8048552:	83 c4 10             	add    esp,0x10
 8048555:	c9                   	leave  
 8048556:	c3                   	ret    
 8048557:	89 f6                	mov    esi,esi
 8048559:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 8048560:	f3 c3                	repz ret 
 8048562:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 8048569:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048570 <register_tm_clones>:
 8048570:	b8 3c a0 04 08       	mov    eax,0x804a03c
 8048575:	2d 3c a0 04 08       	sub    eax,0x804a03c
 804857a:	c1 f8 02             	sar    eax,0x2
 804857d:	89 c2                	mov    edx,eax
 804857f:	c1 ea 1f             	shr    edx,0x1f
 8048582:	01 d0                	add    eax,edx
 8048584:	d1 f8                	sar    eax,1
 8048586:	74 20                	je     80485a8 <register_tm_clones+0x38>
 8048588:	ba 00 00 00 00       	mov    edx,0x0
 804858d:	85 d2                	test   edx,edx
 804858f:	74 17                	je     80485a8 <register_tm_clones+0x38>
 8048591:	55                   	push   ebp
 8048592:	89 e5                	mov    ebp,esp
 8048594:	83 ec 10             	sub    esp,0x10
 8048597:	50                   	push   eax
 8048598:	68 3c a0 04 08       	push   0x804a03c
 804859d:	ff d2                	call   edx
 804859f:	83 c4 10             	add    esp,0x10
 80485a2:	c9                   	leave  
 80485a3:	c3                   	ret    
 80485a4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80485a8:	f3 c3                	repz ret 
 80485aa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

080485b0 <__do_global_dtors_aux>:
 80485b0:	80 3d 3c a0 04 08 00 	cmp    BYTE PTR ds:0x804a03c,0x0
 80485b7:	75 17                	jne    80485d0 <__do_global_dtors_aux+0x20>
 80485b9:	55                   	push   ebp
 80485ba:	89 e5                	mov    ebp,esp
 80485bc:	83 ec 08             	sub    esp,0x8
 80485bf:	e8 6c ff ff ff       	call   8048530 <deregister_tm_clones>
 80485c4:	c6 05 3c a0 04 08 01 	mov    BYTE PTR ds:0x804a03c,0x1
 80485cb:	c9                   	leave  
 80485cc:	c3                   	ret    
 80485cd:	8d 76 00             	lea    esi,[esi+0x0]
 80485d0:	f3 c3                	repz ret 
 80485d2:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 80485d9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080485e0 <frame_dummy>:
 80485e0:	55                   	push   ebp
 80485e1:	89 e5                	mov    ebp,esp
 80485e3:	5d                   	pop    ebp
 80485e4:	eb 8a                	jmp    8048570 <register_tm_clones>

080485e6 <flag>:
 80485e6:	55                   	push   ebp
 80485e7:	89 e5                	mov    ebp,esp
 80485e9:	53                   	push   ebx
 80485ea:	83 ec 54             	sub    esp,0x54
 80485ed:	e8 2e ff ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 80485f2:	81 c3 0e 1a 00 00    	add    ebx,0x1a0e
 80485f8:	83 ec 08             	sub    esp,0x8
 80485fb:	8d 83 a0 e7 ff ff    	lea    eax,[ebx-0x1860]
 8048601:	50                   	push   eax
 8048602:	8d 83 a2 e7 ff ff    	lea    eax,[ebx-0x185e]
 8048608:	50                   	push   eax
 8048609:	e8 92 fe ff ff       	call   80484a0 <fopen@plt>
 804860e:	83 c4 10             	add    esp,0x10
 8048611:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048614:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 8048618:	75 1c                	jne    8048636 <flag+0x50>
 804861a:	83 ec 0c             	sub    esp,0xc
 804861d:	8d 83 ac e7 ff ff    	lea    eax,[ebx-0x1854]
 8048623:	50                   	push   eax
 8048624:	e8 37 fe ff ff       	call   8048460 <puts@plt>
 8048629:	83 c4 10             	add    esp,0x10
 804862c:	83 ec 0c             	sub    esp,0xc
 804862f:	6a 00                	push   0x0
 8048631:	e8 3a fe ff ff       	call   8048470 <exit@plt>
 8048636:	83 ec 04             	sub    esp,0x4
 8048639:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 804863c:	6a 40                	push   0x40
 804863e:	8d 45 b4             	lea    eax,[ebp-0x4c]
 8048641:	50                   	push   eax
 8048642:	e8 f9 fd ff ff       	call   8048440 <fgets@plt>
 8048647:	83 c4 10             	add    esp,0x10
 804864a:	83 ec 0c             	sub    esp,0xc
 804864d:	8d 45 b4             	lea    eax,[ebp-0x4c]
 8048650:	50                   	push   eax
 8048651:	e8 ca fd ff ff       	call   8048420 <printf@plt>
 8048656:	83 c4 10             	add    esp,0x10
 8048659:	90                   	nop
 804865a:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 804865d:	c9                   	leave  
 804865e:	c3                   	ret    

0804865f <vuln>:
 804865f:	55                   	push   ebp
 8048660:	89 e5                	mov    ebp,esp
 8048662:	53                   	push   ebx
 8048663:	83 ec 44             	sub    esp,0x44
 8048666:	e8 b5 fe ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 804866b:	81 c3 95 19 00 00    	add    ebx,0x1995
 8048671:	83 ec 0c             	sub    esp,0xc
 8048674:	8d 45 b8             	lea    eax,[ebp-0x48]
 8048677:	50                   	push   eax
 8048678:	e8 b3 fd ff ff       	call   8048430 <gets@plt>
 804867d:	83 c4 10             	add    esp,0x10
 8048680:	e8 8f 00 00 00       	call   8048714 <get_return_address>
 8048685:	83 ec 08             	sub    esp,0x8
 8048688:	50                   	push   eax
 8048689:	8d 83 07 e8 ff ff    	lea    eax,[ebx-0x17f9]
 804868f:	50                   	push   eax
 8048690:	e8 8b fd ff ff       	call   8048420 <printf@plt>
 8048695:	83 c4 10             	add    esp,0x10
 8048698:	90                   	nop
 8048699:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 804869c:	c9                   	leave  
 804869d:	c3                   	ret    

0804869e <main>:
 804869e:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 80486a2:	83 e4 f0             	and    esp,0xfffffff0
 80486a5:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 80486a8:	55                   	push   ebp
 80486a9:	89 e5                	mov    ebp,esp
 80486ab:	53                   	push   ebx
 80486ac:	51                   	push   ecx
 80486ad:	83 ec 10             	sub    esp,0x10
 80486b0:	e8 6b fe ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 80486b5:	81 c3 4b 19 00 00    	add    ebx,0x194b
 80486bb:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80486c1:	8b 00                	mov    eax,DWORD PTR [eax]
 80486c3:	6a 00                	push   0x0
 80486c5:	6a 02                	push   0x2
 80486c7:	6a 00                	push   0x0
 80486c9:	50                   	push   eax
 80486ca:	e8 c1 fd ff ff       	call   8048490 <setvbuf@plt>
 80486cf:	83 c4 10             	add    esp,0x10
 80486d2:	e8 79 fd ff ff       	call   8048450 <getegid@plt>
 80486d7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80486da:	83 ec 04             	sub    esp,0x4
 80486dd:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 80486e0:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 80486e3:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 80486e6:	e8 c5 fd ff ff       	call   80484b0 <setresgid@plt>
 80486eb:	83 c4 10             	add    esp,0x10
 80486ee:	83 ec 0c             	sub    esp,0xc
 80486f1:	8d 83 28 e8 ff ff    	lea    eax,[ebx-0x17d8]
 80486f7:	50                   	push   eax
 80486f8:	e8 63 fd ff ff       	call   8048460 <puts@plt>
 80486fd:	83 c4 10             	add    esp,0x10
 8048700:	e8 5a ff ff ff       	call   804865f <vuln>
 8048705:	b8 00 00 00 00       	mov    eax,0x0
 804870a:	8d 65 f8             	lea    esp,[ebp-0x8]
 804870d:	59                   	pop    ecx
 804870e:	5b                   	pop    ebx
 804870f:	5d                   	pop    ebp
 8048710:	8d 61 fc             	lea    esp,[ecx-0x4]
 8048713:	c3                   	ret    

08048714 <get_return_address>:
 8048714:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
 8048717:	c3                   	ret    
 8048718:	66 90                	xchg   ax,ax
 804871a:	66 90                	xchg   ax,ax
 804871c:	66 90                	xchg   ax,ax
 804871e:	66 90                	xchg   ax,ax

08048720 <__libc_csu_init>:
 8048720:	55                   	push   ebp
 8048721:	57                   	push   edi
 8048722:	56                   	push   esi
 8048723:	53                   	push   ebx
 8048724:	e8 f7 fd ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 8048729:	81 c3 d7 18 00 00    	add    ebx,0x18d7
 804872f:	83 ec 0c             	sub    esp,0xc
 8048732:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
 8048736:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804873c:	e8 a7 fc ff ff       	call   80483e8 <_init>
 8048741:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048747:	29 c6                	sub    esi,eax
 8048749:	c1 fe 02             	sar    esi,0x2
 804874c:	85 f6                	test   esi,esi
 804874e:	74 25                	je     8048775 <__libc_csu_init+0x55>
 8048750:	31 ff                	xor    edi,edi
 8048752:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048758:	83 ec 04             	sub    esp,0x4
 804875b:	55                   	push   ebp
 804875c:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048760:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048764:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 804876b:	83 c7 01             	add    edi,0x1
 804876e:	83 c4 10             	add    esp,0x10
 8048771:	39 fe                	cmp    esi,edi
 8048773:	75 e3                	jne    8048758 <__libc_csu_init+0x38>
 8048775:	83 c4 0c             	add    esp,0xc
 8048778:	5b                   	pop    ebx
 8048779:	5e                   	pop    esi
 804877a:	5f                   	pop    edi
 804877b:	5d                   	pop    ebp
 804877c:	c3                   	ret    
 804877d:	8d 76 00             	lea    esi,[esi+0x0]

08048780 <__libc_csu_fini>:
 8048780:	f3 c3                	repz ret 

Disassembly of section .fini:

08048784 <_fini>:
 8048784:	53                   	push   ebx
 8048785:	83 ec 08             	sub    esp,0x8
 8048788:	e8 93 fd ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 804878d:	81 c3 73 18 00 00    	add    ebx,0x1873
 8048793:	83 c4 08             	add    esp,0x8
 8048796:	5b                   	pop    ebx
 8048797:	c3                   	ret    

Disassembly of section .rodata:

08048798 <_fp_hw>:
 8048798:	03 00                	add    eax,DWORD PTR [eax]
	...

0804879c <_IO_stdin_used>:
 804879c:	01 00                	add    DWORD PTR [eax],eax
 804879e:	02 00                	add    al,BYTE PTR [eax]
 80487a0:	72 00                	jb     80487a2 <_IO_stdin_used+0x6>
 80487a2:	66 6c                	data16 ins BYTE PTR es:[edi],dx
 80487a4:	61                   	popa   
 80487a5:	67 2e 74 78          	addr16 cs je 8048821 <_IO_stdin_used+0x85>
 80487a9:	74 00                	je     80487ab <_IO_stdin_used+0xf>
 80487ab:	00 46 6c             	add    BYTE PTR [esi+0x6c],al
 80487ae:	61                   	popa   
 80487af:	67 20 46 69          	and    BYTE PTR [bp+0x69],al
 80487b3:	6c                   	ins    BYTE PTR es:[edi],dx
 80487b4:	65 20 69 73          	and    BYTE PTR gs:[ecx+0x73],ch
 80487b8:	20 4d 69             	and    BYTE PTR [ebp+0x69],cl
 80487bb:	73 73                	jae    8048830 <_IO_stdin_used+0x94>
 80487bd:	69 6e 67 2e 20 70 6c 	imul   ebp,DWORD PTR [esi+0x67],0x6c70202e
 80487c4:	65 61                	gs popa 
 80487c6:	73 65                	jae    804882d <_IO_stdin_used+0x91>
 80487c8:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
 80487cb:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80487cc:	74 61                	je     804882f <_IO_stdin_used+0x93>
 80487ce:	63 74 20 61          	arpl   WORD PTR [eax+eiz*1+0x61],si
 80487d2:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80487d3:	20 41 64             	and    BYTE PTR [ecx+0x64],al
 80487d6:	6d                   	ins    DWORD PTR es:[edi],dx
 80487d7:	69 6e 20 69 66 20 79 	imul   ebp,DWORD PTR [esi+0x20],0x79206669
 80487de:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80487df:	75 20                	jne    8048801 <_IO_stdin_used+0x65>
 80487e1:	61                   	popa   
 80487e2:	72 65                	jb     8048849 <_IO_stdin_used+0xad>
 80487e4:	20 72 75             	and    BYTE PTR [edx+0x75],dh
 80487e7:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80487e8:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80487e9:	69 6e 67 20 74 68 69 	imul   ebp,DWORD PTR [esi+0x67],0x69687420
 80487f0:	73 20                	jae    8048812 <_IO_stdin_used+0x76>
 80487f2:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80487f3:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80487f4:	20 74 68 65          	and    BYTE PTR [eax+ebp*2+0x65],dh
 80487f8:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
 80487fb:	65 6c                	gs ins BYTE PTR es:[edi],dx
 80487fd:	6c                   	ins    BYTE PTR es:[edi],dx
 80487fe:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
 8048801:	72 76                	jb     8048879 <__GNU_EH_FRAME_HDR+0x21>
 8048803:	65 72 2e             	gs jb  8048834 <_IO_stdin_used+0x98>
 8048806:	00 57 6f             	add    BYTE PTR [edi+0x6f],dl
 8048809:	61                   	popa   
 804880a:	68 2c 20 77 65       	push   0x6577202c
 804880f:	72 65                	jb     8048876 <__GNU_EH_FRAME_HDR+0x1e>
 8048811:	20 6a 75             	and    BYTE PTR [edx+0x75],ch
 8048814:	6d                   	ins    DWORD PTR es:[edi],dx
 8048815:	70 69                	jo     8048880 <__GNU_EH_FRAME_HDR+0x28>
 8048817:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048818:	67 20 74 6f          	and    BYTE PTR [si+0x6f],dh
 804881c:	20 30                	and    BYTE PTR [eax],dh
 804881e:	78 25                	js     8048845 <_IO_stdin_used+0xa9>
 8048820:	78 20                	js     8048842 <_IO_stdin_used+0xa6>
 8048822:	21 0a                	and    DWORD PTR [edx],ecx
 8048824:	00 00                	add    BYTE PTR [eax],al
 8048826:	00 00                	add    BYTE PTR [eax],al
 8048828:	47                   	inc    edi
 8048829:	69 76 65 20 6d 65 20 	imul   esi,DWORD PTR [esi+0x65],0x20656d20
 8048830:	61                   	popa   
 8048831:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
 8048834:	72 69                	jb     804889f <__GNU_EH_FRAME_HDR+0x47>
 8048836:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048837:	67 20 61 6e          	and    BYTE PTR [bx+di+0x6e],ah
 804883b:	64 20 6c 65 74       	and    BYTE PTR fs:[ebp+eiz*2+0x74],ch
 8048840:	73 20                	jae    8048862 <__GNU_EH_FRAME_HDR+0xa>
 8048842:	73 65                	jae    80488a9 <__GNU_EH_FRAME_HDR+0x51>
 8048844:	65 20 77 68          	and    BYTE PTR gs:[edi+0x68],dh
 8048848:	61                   	popa   
 8048849:	74 20                	je     804886b <__GNU_EH_FRAME_HDR+0x13>
 804884b:	68 61 70 70 65       	push   0x65707061
 8048850:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048851:	73 3a                	jae    804888d <__GNU_EH_FRAME_HDR+0x35>
 8048853:	20 00                	and    BYTE PTR [eax],al

Disassembly of section .eh_frame_hdr:

08048858 <__GNU_EH_FRAME_HDR>:
 8048858:	01 1b                	add    DWORD PTR [ebx],ebx
 804885a:	03 3b                	add    edi,DWORD PTR [ebx]
 804885c:	48                   	dec    eax
 804885d:	00 00                	add    BYTE PTR [eax],al
 804885f:	00 08                	add    BYTE PTR [eax],cl
 8048861:	00 00                	add    BYTE PTR [eax],al
 8048863:	00 b8 fb ff ff 78    	add    BYTE PTR [eax+0x78fffffb],bh
 8048869:	00 00                	add    BYTE PTR [eax],al
 804886b:	00 68 fc             	add    BYTE PTR [eax-0x4],ch
 804886e:	ff                   	(bad)  
 804886f:	ff 9c 00 00 00 b8 fc 	call   FWORD PTR [eax+eax*1-0x3480000]
 8048876:	ff                   	(bad)  
 8048877:	ff 64 00 00          	jmp    DWORD PTR [eax+eax*1+0x0]
 804887b:	00 8e fd ff ff b0    	add    BYTE PTR [esi-0x4f000003],cl
 8048881:	00 00                	add    BYTE PTR [eax],al
 8048883:	00 07                	add    BYTE PTR [edi],al
 8048885:	fe                   	(bad)  
 8048886:	ff                   	(bad)  
 8048887:	ff d4                	call   esp
 8048889:	00 00                	add    BYTE PTR [eax],al
 804888b:	00 46 fe             	add    BYTE PTR [esi-0x2],al
 804888e:	ff                   	(bad)  
 804888f:	ff                   	(bad)  
 8048890:	f8                   	clc    
 8048891:	00 00                	add    BYTE PTR [eax],al
 8048893:	00 c8                	add    al,cl
 8048895:	fe                   	(bad)  
 8048896:	ff                   	(bad)  
 8048897:	ff 2c 01             	jmp    FWORD PTR [ecx+eax*1]
 804889a:	00 00                	add    BYTE PTR [eax],al
 804889c:	28 ff                	sub    bh,bh
 804889e:	ff                   	(bad)  
 804889f:	ff                   	(bad)  
 80488a0:	78 01                	js     80488a3 <__GNU_EH_FRAME_HDR+0x4b>
	...

Disassembly of section .eh_frame:

080488a4 <__FRAME_END__-0x140>:
 80488a4:	14 00                	adc    al,0x0
 80488a6:	00 00                	add    BYTE PTR [eax],al
 80488a8:	00 00                	add    BYTE PTR [eax],al
 80488aa:	00 00                	add    BYTE PTR [eax],al
 80488ac:	01 7a 52             	add    DWORD PTR [edx+0x52],edi
 80488af:	00 01                	add    BYTE PTR [ecx],al
 80488b1:	7c 08                	jl     80488bb <__GNU_EH_FRAME_HDR+0x63>
 80488b3:	01 1b                	add    DWORD PTR [ebx],ebx
 80488b5:	0c 04                	or     al,0x4
 80488b7:	04 88                	add    al,0x88
 80488b9:	01 00                	add    DWORD PTR [eax],eax
 80488bb:	00 10                	add    BYTE PTR [eax],dl
 80488bd:	00 00                	add    BYTE PTR [eax],al
 80488bf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
 80488c2:	00 00                	add    BYTE PTR [eax],al
 80488c4:	4c                   	dec    esp
 80488c5:	fc                   	cld    
 80488c6:	ff                   	(bad)  
 80488c7:	ff 02                	inc    DWORD PTR [edx]
 80488c9:	00 00                	add    BYTE PTR [eax],al
 80488cb:	00 00                	add    BYTE PTR [eax],al
 80488cd:	00 00                	add    BYTE PTR [eax],al
 80488cf:	00 20                	add    BYTE PTR [eax],ah
 80488d1:	00 00                	add    BYTE PTR [eax],al
 80488d3:	00 30                	add    BYTE PTR [eax],dh
 80488d5:	00 00                	add    BYTE PTR [eax],al
 80488d7:	00 38                	add    BYTE PTR [eax],bh
 80488d9:	fb                   	sti    
 80488da:	ff                   	(bad)  
 80488db:	ff b0 00 00 00 00    	push   DWORD PTR [eax+0x0]
 80488e1:	0e                   	push   cs
 80488e2:	08 46 0e             	or     BYTE PTR [esi+0xe],al
 80488e5:	0c 4a                	or     al,0x4a
 80488e7:	0f 0b                	ud2    
 80488e9:	74 04                	je     80488ef <__GNU_EH_FRAME_HDR+0x97>
 80488eb:	78 00                	js     80488ed <__GNU_EH_FRAME_HDR+0x95>
 80488ed:	3f                   	aas    
 80488ee:	1a 3b                	sbb    bh,BYTE PTR [ebx]
 80488f0:	2a 32                	sub    dh,BYTE PTR [edx]
 80488f2:	24 22                	and    al,0x22
 80488f4:	10 00                	adc    BYTE PTR [eax],al
 80488f6:	00 00                	add    BYTE PTR [eax],al
 80488f8:	54                   	push   esp
 80488f9:	00 00                	add    BYTE PTR [eax],al
 80488fb:	00 c4                	add    ah,al
 80488fd:	fb                   	sti    
 80488fe:	ff                   	(bad)  
 80488ff:	ff 08                	dec    DWORD PTR [eax]
 8048901:	00 00                	add    BYTE PTR [eax],al
 8048903:	00 00                	add    BYTE PTR [eax],al
 8048905:	00 00                	add    BYTE PTR [eax],al
 8048907:	00 20                	add    BYTE PTR [eax],ah
 8048909:	00 00                	add    BYTE PTR [eax],al
 804890b:	00 68 00             	add    BYTE PTR [eax+0x0],ch
 804890e:	00 00                	add    BYTE PTR [eax],al
 8048910:	d6                   	(bad)  
 8048911:	fc                   	cld    
 8048912:	ff                   	(bad)  
 8048913:	ff                   	(bad)  
 8048914:	79 00                	jns    8048916 <__GNU_EH_FRAME_HDR+0xbe>
 8048916:	00 00                	add    BYTE PTR [eax],al
 8048918:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 804891b:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 8048921:	44                   	inc    esp
 8048922:	83 03 02             	add    DWORD PTR [ebx],0x2
 8048925:	71 c5                	jno    80488ec <__GNU_EH_FRAME_HDR+0x94>
 8048927:	c3                   	ret    
 8048928:	0c 04                	or     al,0x4
 804892a:	04 00                	add    al,0x0
 804892c:	20 00                	and    BYTE PTR [eax],al
 804892e:	00 00                	add    BYTE PTR [eax],al
 8048930:	8c 00                	mov    WORD PTR [eax],es
 8048932:	00 00                	add    BYTE PTR [eax],al
 8048934:	2b fd                	sub    edi,ebp
 8048936:	ff                   	(bad)  
 8048937:	ff                   	(bad)  
 8048938:	3f                   	aas    
 8048939:	00 00                	add    BYTE PTR [eax],al
 804893b:	00 00                	add    BYTE PTR [eax],al
 804893d:	41                   	inc    ecx
 804893e:	0e                   	push   cs
 804893f:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 8048945:	44                   	inc    esp
 8048946:	83 03 77             	add    DWORD PTR [ebx],0x77
 8048949:	c5 c3 0c             	(bad)  
 804894c:	04 04                	add    al,0x4
 804894e:	00 00                	add    BYTE PTR [eax],al
 8048950:	30 00                	xor    BYTE PTR [eax],al
 8048952:	00 00                	add    BYTE PTR [eax],al
 8048954:	b0 00                	mov    al,0x0
 8048956:	00 00                	add    BYTE PTR [eax],al
 8048958:	46                   	inc    esi
 8048959:	fd                   	std    
 804895a:	ff                   	(bad)  
 804895b:	ff 76 00             	push   DWORD PTR [esi+0x0]
 804895e:	00 00                	add    BYTE PTR [eax],al
 8048960:	00 44 0c 01          	add    BYTE PTR [esp+ecx*1+0x1],al
 8048964:	00 47 10             	add    BYTE PTR [edi+0x10],al
 8048967:	05 02 75 00 44       	add    eax,0x44007502
 804896c:	0f 03 75 78          	lsl    esi,WORD PTR [ebp+0x78]
 8048970:	06                   	push   es
 8048971:	10 03                	adc    BYTE PTR [ebx],al
 8048973:	02 75 7c             	add    dh,BYTE PTR [ebp+0x7c]
 8048976:	02 61 c1             	add    ah,BYTE PTR [ecx-0x3f]
 8048979:	0c 01                	or     al,0x1
 804897b:	00 41 c3             	add    BYTE PTR [ecx-0x3d],al
 804897e:	41                   	inc    ecx
 804897f:	c5 43 0c             	lds    eax,FWORD PTR [ebx+0xc]
 8048982:	04 04                	add    al,0x4
 8048984:	48                   	dec    eax
 8048985:	00 00                	add    BYTE PTR [eax],al
 8048987:	00 e4                	add    ah,ah
 8048989:	00 00                	add    BYTE PTR [eax],al
 804898b:	00 94 fd ff ff 5d 00 	add    BYTE PTR [ebp+edi*8+0x5dffff],dl
 8048992:	00 00                	add    BYTE PTR [eax],al
 8048994:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 8048997:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 804899d:	87 03                	xchg   DWORD PTR [ebx],eax
 804899f:	41                   	inc    ecx
 80489a0:	0e                   	push   cs
 80489a1:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 80489a7:	83 05 4e 0e 20 69 0e 	add    DWORD PTR ds:0x69200e4e,0xe
 80489ae:	24 41                	and    al,0x41
 80489b0:	0e                   	push   cs
 80489b1:	28 44 0e 2c          	sub    BYTE PTR [esi+ecx*1+0x2c],al
 80489b5:	44                   	inc    esp
 80489b6:	0e                   	push   cs
 80489b7:	30 4d 0e             	xor    BYTE PTR [ebp+0xe],cl
 80489ba:	20 47 0e             	and    BYTE PTR [edi+0xe],al
 80489bd:	14 41                	adc    al,0x41
 80489bf:	c3                   	ret    
 80489c0:	0e                   	push   cs
 80489c1:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 80489c4:	0e                   	push   cs
 80489c5:	0c 41                	or     al,0x41
 80489c7:	c7                   	(bad)  
 80489c8:	0e                   	push   cs
 80489c9:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 80489cc:	0e                   	push   cs
 80489cd:	04 00                	add    al,0x0
 80489cf:	00 10                	add    BYTE PTR [eax],dl
 80489d1:	00 00                	add    BYTE PTR [eax],al
 80489d3:	00 30                	add    BYTE PTR [eax],dh
 80489d5:	01 00                	add    DWORD PTR [eax],eax
 80489d7:	00 a8 fd ff ff 02    	add    BYTE PTR [eax+0x2fffffd],ch
 80489dd:	00 00                	add    BYTE PTR [eax],al
 80489df:	00 00                	add    BYTE PTR [eax],al
 80489e1:	00 00                	add    BYTE PTR [eax],al
	...

080489e4 <__FRAME_END__>:
 80489e4:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	e0 85                	loopne 8049e8f <__FRAME_END__+0x14ab>
 8049f0a:	04 08                	add    al,0x8

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	b0 85                	mov    al,0x85
 8049f0e:	04 08                	add    al,0x8

Disassembly of section .dynamic:

08049f10 <_DYNAMIC>:
 8049f10:	01 00                	add    DWORD PTR [eax],eax
 8049f12:	00 00                	add    BYTE PTR [eax],al
 8049f14:	01 00                	add    DWORD PTR [eax],eax
 8049f16:	00 00                	add    BYTE PTR [eax],al
 8049f18:	0c 00                	or     al,0x0
 8049f1a:	00 00                	add    BYTE PTR [eax],al
 8049f1c:	e8 83 04 08 0d       	call   150ca3a4 <_end+0xd080364>
 8049f21:	00 00                	add    BYTE PTR [eax],al
 8049f23:	00 84 87 04 08 19 00 	add    BYTE PTR [edi+eax*4+0x190804],al
 8049f2a:	00 00                	add    BYTE PTR [eax],al
 8049f2c:	08 9f 04 08 1b 00    	or     BYTE PTR [edi+0x1b0804],bl
 8049f32:	00 00                	add    BYTE PTR [eax],al
 8049f34:	04 00                	add    al,0x0
 8049f36:	00 00                	add    BYTE PTR [eax],al
 8049f38:	1a 00                	sbb    al,BYTE PTR [eax]
 8049f3a:	00 00                	add    BYTE PTR [eax],al
 8049f3c:	0c 9f                	or     al,0x9f
 8049f3e:	04 08                	add    al,0x8
 8049f40:	1c 00                	sbb    al,0x0
 8049f42:	00 00                	add    BYTE PTR [eax],al
 8049f44:	04 00                	add    al,0x0
 8049f46:	00 00                	add    BYTE PTR [eax],al
 8049f48:	f5                   	cmc    
 8049f49:	fe                   	(bad)  
 8049f4a:	ff 6f ac             	jmp    FWORD PTR [edi-0x54]
 8049f4d:	81 04 08 05 00 00 00 	add    DWORD PTR [eax+ecx*1],0x5
 8049f54:	ac                   	lods   al,BYTE PTR ds:[esi]
 8049f55:	82 04 08 06          	add    BYTE PTR [eax+ecx*1],0x6
 8049f59:	00 00                	add    BYTE PTR [eax],al
 8049f5b:	00 cc                	add    ah,cl
 8049f5d:	81 04 08 0a 00 00 00 	add    DWORD PTR [eax+ecx*1],0xa
 8049f64:	8d 00                	lea    eax,[eax]
 8049f66:	00 00                	add    BYTE PTR [eax],al
 8049f68:	0b 00                	or     eax,DWORD PTR [eax]
 8049f6a:	00 00                	add    BYTE PTR [eax],al
 8049f6c:	10 00                	adc    BYTE PTR [eax],al
 8049f6e:	00 00                	add    BYTE PTR [eax],al
 8049f70:	15 00 00 00 00       	adc    eax,0x0
 8049f75:	00 00                	add    BYTE PTR [eax],al
 8049f77:	00 03                	add    BYTE PTR [ebx],al
 8049f79:	00 00                	add    BYTE PTR [eax],al
 8049f7b:	00 00                	add    BYTE PTR [eax],al
 8049f7d:	a0 04 08 02 00       	mov    al,ds:0x20804
 8049f82:	00 00                	add    BYTE PTR [eax],al
 8049f84:	50                   	push   eax
 8049f85:	00 00                	add    BYTE PTR [eax],al
 8049f87:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
 8049f8a:	00 00                	add    BYTE PTR [eax],al
 8049f8c:	11 00                	adc    DWORD PTR [eax],eax
 8049f8e:	00 00                	add    BYTE PTR [eax],al
 8049f90:	17                   	pop    ss
 8049f91:	00 00                	add    BYTE PTR [eax],al
 8049f93:	00 98 83 04 08 11    	add    BYTE PTR [eax+0x11080483],bl
 8049f99:	00 00                	add    BYTE PTR [eax],al
 8049f9b:	00 88 83 04 08 12    	add    BYTE PTR [eax+0x12080483],cl
 8049fa1:	00 00                	add    BYTE PTR [eax],al
 8049fa3:	00 10                	add    BYTE PTR [eax],dl
 8049fa5:	00 00                	add    BYTE PTR [eax],al
 8049fa7:	00 13                	add    BYTE PTR [ebx],dl
 8049fa9:	00 00                	add    BYTE PTR [eax],al
 8049fab:	00 08                	add    BYTE PTR [eax],cl
 8049fad:	00 00                	add    BYTE PTR [eax],al
 8049faf:	00 fe                	add    dh,bh
 8049fb1:	ff                   	(bad)  
 8049fb2:	ff 6f 58             	jmp    FWORD PTR [edi+0x58]
 8049fb5:	83 04 08 ff          	add    DWORD PTR [eax+ecx*1],0xffffffff
 8049fb9:	ff                   	(bad)  
 8049fba:	ff 6f 01             	jmp    FWORD PTR [edi+0x1]
 8049fbd:	00 00                	add    BYTE PTR [eax],al
 8049fbf:	00 f0                	add    al,dh
 8049fc1:	ff                   	(bad)  
 8049fc2:	ff 6f 3a             	jmp    FWORD PTR [edi+0x3a]
 8049fc5:	83 04 08 00          	add    DWORD PTR [eax+ecx*1],0x0
	...

Disassembly of section .got:

08049ff8 <.got>:
	...

Disassembly of section .got.plt:

0804a000 <_GLOBAL_OFFSET_TABLE_>:
 804a000:	10 9f 04 08 00 00    	adc    BYTE PTR [edi+0x804],bl
 804a006:	00 00                	add    BYTE PTR [eax],al
 804a008:	00 00                	add    BYTE PTR [eax],al
 804a00a:	00 00                	add    BYTE PTR [eax],al
 804a00c:	26 84 04 08          	test   BYTE PTR es:[eax+ecx*1],al
 804a010:	36 84 04 08          	test   BYTE PTR ss:[eax+ecx*1],al
 804a014:	46                   	inc    esi
 804a015:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
 804a018:	56                   	push   esi
 804a019:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
 804a01c:	66 84 04 08          	data16 test BYTE PTR [eax+ecx*1],al
 804a020:	76 84                	jbe    8049fa6 <_DYNAMIC+0x96>
 804a022:	04 08                	add    al,0x8
 804a024:	86 84 04 08 96 84 04 	xchg   BYTE PTR [esp+eax*1+0x4849608],al
 804a02b:	08 a6 84 04 08 b6    	or     BYTE PTR [esi-0x49f7fb7c],ah
 804a031:	84 04 08             	test   BYTE PTR [eax+ecx*1],al

Disassembly of section .data:

0804a034 <__data_start>:
 804a034:	00 00                	add    BYTE PTR [eax],al
	...

0804a038 <__dso_handle>:
 804a038:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .bss:

0804a03c <__bss_start>:
 804a03c:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 55 62             	sub    BYTE PTR [ebp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x8048370>
   a:	74 75                	je     81 <_init-0x8048367>
   c:	20 37                	and    BYTE PTR [edi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR ds:0x75627531,ch
  17:	6e                   	outs   dx,BYTE PTR ds:[esi]
  18:	74 75                	je     8f <_init-0x8048359>
  1a:	31 7e 31             	xor    DWORD PTR [esi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [esi],ch
  1f:	30 34 2e             	xor    BYTE PTR [esi+ebp*1],dh
  22:	31 29                	xor    DWORD PTR [ecx],ebp
  24:	20 37                	and    BYTE PTR [edi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [eax],al
