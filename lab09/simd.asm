
simd:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 3f 00 00 	mov    0x3fc1(%rip),%rax        # 4fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <clock@plt>:
    1040:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 5008 <clock@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5010 <__stack_chk_fail@GLIBC_2.4>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <printf@plt>:
    1060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5018 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <rand@plt>:
    1070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5020 <rand@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1179 <main>
    109f:	ff 15 1b 3f 00 00    	call   *0x3f1b(%rip)        # 4fc0 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 
    10b0:	48 8d 3d 81 3f 00 00 	lea    0x3f81(%rip),%rdi        # 5038 <__TMC_END__>
    10b7:	48 8d 05 7a 3f 00 00 	lea    0x3f7a(%rip),%rax        # 5038 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <_start+0x58>
    10c3:	48 8b 05 fe 3e 00 00 	mov    0x3efe(%rip),%rax        # 4fc8 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <_start+0x58>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e0:	48 8d 3d 51 3f 00 00 	lea    0x3f51(%rip),%rdi        # 5038 <__TMC_END__>
    10e7:	48 8d 35 4a 3f 00 00 	lea    0x3f4a(%rip),%rsi        # 5038 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    $1,%rsi
    1102:	74 14                	je     1118 <_start+0x98>
    1104:	48 8b 05 cd 3e 00 00 	mov    0x3ecd(%rip),%rax        # 4fd8 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <_start+0x98>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d 0d 3f 00 00 00 	cmpb   $0x0,0x3f0d(%rip)        # 5038 <__TMC_END__>
    112b:	75 33                	jne    1160 <_start+0xe0>
    112d:	55                   	push   %rbp
    112e:	48 83 3d aa 3e 00 00 	cmpq   $0x0,0x3eaa(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0d                	je     1148 <_start+0xc8>
    113b:	48 8b 3d ee 3e 00 00 	mov    0x3eee(%rip),%rdi        # 5030 <__dso_handle>
    1142:	ff 15 98 3e 00 00    	call   *0x3e98(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	call   10b0 <_start+0x30>
    114d:	c6 05 e4 3e 00 00 01 	movb   $0x1,0x3ee4(%rip)        # 5038 <__TMC_END__>
    1154:	5d                   	pop    %rbp
    1155:	c3                   	ret
    1156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115d:	00 00 00 
    1160:	c3                   	ret
    1161:	0f 1f 40 00          	nopl   0x0(%rax)
    1165:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    116c:	00 00 00 00 
    1170:	f3 0f 1e fa          	endbr64
    1174:	e9 67 ff ff ff       	jmp    10e0 <_start+0x60>

0000000000001179 <main>:
    1179:	55                   	push   %rbp
    117a:	48 89 e5             	mov    %rsp,%rbp
    117d:	48 81 ec 90 00 04 00 	sub    $0x40090,%rsp
    1184:	89 bd 7c ff fb ff    	mov    %edi,-0x40084(%rbp)
    118a:	48 89 b5 70 ff fb ff 	mov    %rsi,-0x40090(%rbp)
    1191:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1198:	00 00 
    119a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    119e:	31 c0                	xor    %eax,%eax
    11a0:	48 8d 05 61 1e 00 00 	lea    0x1e61(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    11a7:	48 89 c7             	mov    %rax,%rdi
    11aa:	e8 81 fe ff ff       	call   1030 <puts@plt>
    11af:	c7 85 88 ff fb ff 00 	movl   $0x0,-0x40078(%rbp)
    11b6:	00 00 00 
    11b9:	eb 2a                	jmp    11e5 <main+0x6c>
    11bb:	e8 b0 fe ff ff       	call   1070 <rand@plt>
    11c0:	89 c2                	mov    %eax,%edx
    11c2:	89 d0                	mov    %edx,%eax
    11c4:	c1 f8 1f             	sar    $0x1f,%eax
    11c7:	c1 e8 18             	shr    $0x18,%eax
    11ca:	01 c2                	add    %eax,%edx
    11cc:	0f b6 d2             	movzbl %dl,%edx
    11cf:	29 c2                	sub    %eax,%edx
    11d1:	8b 85 88 ff fb ff    	mov    -0x40078(%rbp),%eax
    11d7:	89 94 85 d0 ff fb ff 	mov    %edx,-0x40030(%rbp,%rax,4)
    11de:	83 85 88 ff fb ff 01 	addl   $0x1,-0x40078(%rbp)
    11e5:	81 bd 88 ff fb ff 09 	cmpl   $0x10009,-0x40078(%rbp)
    11ec:	00 01 00 
    11ef:	76 ca                	jbe    11bb <main+0x42>
    11f1:	c7 85 8c ff fb ff 00 	movl   $0x0,-0x40074(%rbp)
    11f8:	00 00 00 
    11fb:	48 8d 05 29 1e 00 00 	lea    0x1e29(%rip),%rax        # 302b <_IO_stdin_used+0x2b>
    1202:	48 89 c7             	mov    %rax,%rdi
    1205:	e8 26 fe ff ff       	call   1030 <puts@plt>
    120a:	e8 31 fe ff ff       	call   1040 <clock@plt>
    120f:	48 89 85 90 ff fb ff 	mov    %rax,-0x40070(%rbp)
    1216:	48 8d 85 d0 ff fb ff 	lea    -0x40030(%rbp),%rax
    121d:	48 89 c7             	mov    %rax,%rdi
    1220:	e8 6b 02 00 00       	call   1490 <sum>
    1225:	48 89 85 98 ff fb ff 	mov    %rax,-0x40068(%rbp)
    122c:	e8 0f fe ff ff       	call   1040 <clock@plt>
    1231:	48 89 85 a0 ff fb ff 	mov    %rax,-0x40060(%rbp)
    1238:	48 8b 85 98 ff fb ff 	mov    -0x40068(%rbp),%rax
    123f:	48 8d 15 fe 1d 00 00 	lea    0x1dfe(%rip),%rdx        # 3044 <_IO_stdin_used+0x44>
    1246:	48 89 c6             	mov    %rax,%rsi
    1249:	48 89 d7             	mov    %rdx,%rdi
    124c:	b8 00 00 00 00       	mov    $0x0,%eax
    1251:	e8 0a fe ff ff       	call   1060 <printf@plt>
    1256:	48 8b 85 a0 ff fb ff 	mov    -0x40060(%rbp),%rax
    125d:	48 2b 85 90 ff fb ff 	sub    -0x40070(%rbp),%rax
    1264:	48 89 85 a8 ff fb ff 	mov    %rax,-0x40058(%rbp)
    126b:	48 8d 05 de 1d 00 00 	lea    0x1dde(%rip),%rax        # 3050 <_IO_stdin_used+0x50>
    1272:	48 89 c7             	mov    %rax,%rdi
    1275:	e8 b6 fd ff ff       	call   1030 <puts@plt>
    127a:	48 8d 85 d0 ff fb ff 	lea    -0x40030(%rbp),%rax
    1281:	48 89 c7             	mov    %rax,%rdi
    1284:	e8 d1 02 00 00       	call   155a <sum_unrolled>
    1289:	48 89 c2             	mov    %rax,%rdx
    128c:	48 8d 05 b1 1d 00 00 	lea    0x1db1(%rip),%rax        # 3044 <_IO_stdin_used+0x44>
    1293:	48 89 d6             	mov    %rdx,%rsi
    1296:	48 89 c7             	mov    %rax,%rdi
    1299:	b8 00 00 00 00       	mov    $0x0,%eax
    129e:	e8 bd fd ff ff       	call   1060 <printf@plt>
    12a3:	48 8d 05 c8 1d 00 00 	lea    0x1dc8(%rip),%rax        # 3072 <_IO_stdin_used+0x72>
    12aa:	48 89 c7             	mov    %rax,%rdi
    12ad:	e8 7e fd ff ff       	call   1030 <puts@plt>
    12b2:	e8 89 fd ff ff       	call   1040 <clock@plt>
    12b7:	48 89 85 90 ff fb ff 	mov    %rax,-0x40070(%rbp)
    12be:	48 8d 85 d0 ff fb ff 	lea    -0x40030(%rbp),%rax
    12c5:	48 89 c7             	mov    %rax,%rdi
    12c8:	e8 83 04 00 00       	call   1750 <sum_simd>
    12cd:	48 89 85 b0 ff fb ff 	mov    %rax,-0x40050(%rbp)
    12d4:	e8 67 fd ff ff       	call   1040 <clock@plt>
    12d9:	48 89 85 a0 ff fb ff 	mov    %rax,-0x40060(%rbp)
    12e0:	48 8b 85 b0 ff fb ff 	mov    -0x40050(%rbp),%rax
    12e7:	48 8d 15 56 1d 00 00 	lea    0x1d56(%rip),%rdx        # 3044 <_IO_stdin_used+0x44>
    12ee:	48 89 c6             	mov    %rax,%rsi
    12f1:	48 89 d7             	mov    %rdx,%rdi
    12f4:	b8 00 00 00 00       	mov    $0x0,%eax
    12f9:	e8 62 fd ff ff       	call   1060 <printf@plt>
    12fe:	48 8b 85 a0 ff fb ff 	mov    -0x40060(%rbp),%rax
    1305:	48 2b 85 90 ff fb ff 	sub    -0x40070(%rbp),%rax
    130c:	48 89 85 b8 ff fb ff 	mov    %rax,-0x40048(%rbp)
    1313:	48 8b 85 b0 ff fb ff 	mov    -0x40050(%rbp),%rax
    131a:	48 3b 85 98 ff fb ff 	cmp    -0x40068(%rbp),%rax
    1321:	74 2f                	je     1352 <main+0x1d9>
    1323:	48 8b 95 98 ff fb ff 	mov    -0x40068(%rbp),%rdx
    132a:	48 8b 85 b0 ff fb ff 	mov    -0x40050(%rbp),%rax
    1331:	48 8d 0d 58 1d 00 00 	lea    0x1d58(%rip),%rcx        # 3090 <_IO_stdin_used+0x90>
    1338:	48 89 c6             	mov    %rax,%rsi
    133b:	48 89 cf             	mov    %rcx,%rdi
    133e:	b8 00 00 00 00       	mov    $0x0,%eax
    1343:	e8 18 fd ff ff       	call   1060 <printf@plt>
    1348:	c7 85 8c ff fb ff 01 	movl   $0x1,-0x40074(%rbp)
    134f:	00 00 00 
    1352:	48 8b 85 b8 ff fb ff 	mov    -0x40048(%rbp),%rax
    1359:	48 01 c0             	add    %rax,%rax
    135c:	48 39 85 a8 ff fb ff 	cmp    %rax,-0x40058(%rbp)
    1363:	7f 19                	jg     137e <main+0x205>
    1365:	48 8d 05 64 1d 00 00 	lea    0x1d64(%rip),%rax        # 30d0 <_IO_stdin_used+0xd0>
    136c:	48 89 c7             	mov    %rax,%rdi
    136f:	e8 bc fc ff ff       	call   1030 <puts@plt>
    1374:	c7 85 8c ff fb ff 01 	movl   $0x1,-0x40074(%rbp)
    137b:	00 00 00 
    137e:	48 8d 05 83 1d 00 00 	lea    0x1d83(%rip),%rax        # 3108 <_IO_stdin_used+0x108>
    1385:	48 89 c7             	mov    %rax,%rdi
    1388:	e8 a3 fc ff ff       	call   1030 <puts@plt>
    138d:	e8 ae fc ff ff       	call   1040 <clock@plt>
    1392:	48 89 85 90 ff fb ff 	mov    %rax,-0x40070(%rbp)
    1399:	48 8d 85 d0 ff fb ff 	lea    -0x40030(%rbp),%rax
    13a0:	48 89 c7             	mov    %rax,%rdi
    13a3:	e8 77 06 00 00       	call   1a1f <sum_simd_unrolled>
    13a8:	48 89 85 c0 ff fb ff 	mov    %rax,-0x40040(%rbp)
    13af:	e8 8c fc ff ff       	call   1040 <clock@plt>
    13b4:	48 89 85 a0 ff fb ff 	mov    %rax,-0x40060(%rbp)
    13bb:	48 8b 85 c0 ff fb ff 	mov    -0x40040(%rbp),%rax
    13c2:	48 8d 15 7b 1c 00 00 	lea    0x1c7b(%rip),%rdx        # 3044 <_IO_stdin_used+0x44>
    13c9:	48 89 c6             	mov    %rax,%rsi
    13cc:	48 89 d7             	mov    %rdx,%rdi
    13cf:	b8 00 00 00 00       	mov    $0x0,%eax
    13d4:	e8 87 fc ff ff       	call   1060 <printf@plt>
    13d9:	48 8b 85 a0 ff fb ff 	mov    -0x40060(%rbp),%rax
    13e0:	48 2b 85 90 ff fb ff 	sub    -0x40070(%rbp),%rax
    13e7:	48 89 85 c8 ff fb ff 	mov    %rax,-0x40038(%rbp)
    13ee:	48 8b 85 c0 ff fb ff 	mov    -0x40040(%rbp),%rax
    13f5:	48 3b 85 98 ff fb ff 	cmp    -0x40068(%rbp),%rax
    13fc:	74 2f                	je     142d <main+0x2b4>
    13fe:	48 8b 95 98 ff fb ff 	mov    -0x40068(%rbp),%rdx
    1405:	48 8b 85 c0 ff fb ff 	mov    -0x40040(%rbp),%rax
    140c:	48 8d 0d 1d 1d 00 00 	lea    0x1d1d(%rip),%rcx        # 3130 <_IO_stdin_used+0x130>
    1413:	48 89 c6             	mov    %rax,%rsi
    1416:	48 89 cf             	mov    %rcx,%rdi
    1419:	b8 00 00 00 00       	mov    $0x0,%eax
    141e:	e8 3d fc ff ff       	call   1060 <printf@plt>
    1423:	c7 85 8c ff fb ff 01 	movl   $0x1,-0x40074(%rbp)
    142a:	00 00 00 
    142d:	48 8b 85 b8 ff fb ff 	mov    -0x40048(%rbp),%rax
    1434:	48 3b 85 c8 ff fb ff 	cmp    -0x40038(%rbp),%rax
    143b:	7f 19                	jg     1456 <main+0x2dd>
    143d:	48 8d 05 34 1d 00 00 	lea    0x1d34(%rip),%rax        # 3178 <_IO_stdin_used+0x178>
    1444:	48 89 c7             	mov    %rax,%rdi
    1447:	e8 e4 fb ff ff       	call   1030 <puts@plt>
    144c:	c7 85 8c ff fb ff 01 	movl   $0x1,-0x40074(%rbp)
    1453:	00 00 00 
    1456:	83 bd 8c ff fb ff 00 	cmpl   $0x0,-0x40074(%rbp)
    145d:	75 16                	jne    1475 <main+0x2fc>
    145f:	48 8d 05 52 1d 00 00 	lea    0x1d52(%rip),%rax        # 31b8 <_IO_stdin_used+0x1b8>
    1466:	48 89 c7             	mov    %rax,%rdi
    1469:	e8 c2 fb ff ff       	call   1030 <puts@plt>
    146e:	b8 00 00 00 00       	mov    $0x0,%eax
    1473:	eb 05                	jmp    147a <main+0x301>
    1475:	b8 01 00 00 00       	mov    $0x1,%eax
    147a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    147e:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1485:	00 00 
    1487:	74 05                	je     148e <main+0x315>
    1489:	e8 c2 fb ff ff       	call   1050 <__stack_chk_fail@plt>
    148e:	c9                   	leave
    148f:	c3                   	ret

0000000000001490 <sum>:
    1490:	55                   	push   %rbp
    1491:	48 89 e5             	mov    %rsp,%rbp
    1494:	48 83 ec 30          	sub    $0x30,%rsp
    1498:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    149c:	e8 9f fb ff ff       	call   1040 <clock@plt>
    14a1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    14a5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    14ac:	00 
    14ad:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    14b4:	eb 55                	jmp    150b <sum+0x7b>
    14b6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    14bd:	eb 3f                	jmp    14fe <sum+0x6e>
    14bf:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    14c2:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    14c9:	00 
    14ca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    14ce:	48 01 d0             	add    %rdx,%rax
    14d1:	8b 00                	mov    (%rax),%eax
    14d3:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    14d6:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
    14dd:	00 
    14de:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    14e2:	48 01 ca             	add    %rcx,%rdx
    14e5:	8b 12                	mov    (%rdx),%edx
    14e7:	83 fa 7f             	cmp    $0x7f,%edx
    14ea:	0f 9f c2             	setg   %dl
    14ed:	0f b6 d2             	movzbl %dl,%edx
    14f0:	f7 da                	neg    %edx
    14f2:	21 d0                	and    %edx,%eax
    14f4:	48 98                	cltq
    14f6:	48 01 45 e8          	add    %rax,-0x18(%rbp)
    14fa:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    14fe:	81 7d e4 09 00 01 00 	cmpl   $0x10009,-0x1c(%rbp)
    1505:	76 b8                	jbe    14bf <sum+0x2f>
    1507:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    150b:	81 7d e0 ff 3f 00 00 	cmpl   $0x3fff,-0x20(%rbp)
    1512:	76 a2                	jbe    14b6 <sum+0x26>
    1514:	e8 27 fb ff ff       	call   1040 <clock@plt>
    1519:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    151d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1521:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    1525:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1529:	df 6d d0             	fildll -0x30(%rbp)
    152c:	db 2d fe 1c 00 00    	fldt   0x1cfe(%rip)        # 3230 <_IO_stdin_used+0x230>
    1532:	de f9                	fdivrp %st,%st(1)
    1534:	48 8d 05 d5 1c 00 00 	lea    0x1cd5(%rip),%rax        # 3210 <_IO_stdin_used+0x210>
    153b:	48 8d 64 24 f0       	lea    -0x10(%rsp),%rsp
    1540:	db 3c 24             	fstpt  (%rsp)
    1543:	48 89 c7             	mov    %rax,%rdi
    1546:	b8 00 00 00 00       	mov    $0x0,%eax
    154b:	e8 10 fb ff ff       	call   1060 <printf@plt>
    1550:	48 83 c4 10          	add    $0x10,%rsp
    1554:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1558:	c9                   	leave
    1559:	c3                   	ret

000000000000155a <sum_unrolled>:
    155a:	55                   	push   %rbp
    155b:	48 89 e5             	mov    %rsp,%rbp
    155e:	48 83 ec 40          	sub    $0x40,%rsp
    1562:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1566:	e8 d5 fa ff ff       	call   1040 <clock@plt>
    156b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    156f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1576:	00 
    1577:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    157e:	e9 7a 01 00 00       	jmp    16fd <sum_unrolled+0x1a3>
    1583:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    158a:	e9 14 01 00 00       	jmp    16a3 <sum_unrolled+0x149>
    158f:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1592:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1599:	00 
    159a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    159e:	48 01 d0             	add    %rdx,%rax
    15a1:	8b 00                	mov    (%rax),%eax
    15a3:	8b 55 e0             	mov    -0x20(%rbp),%edx
    15a6:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
    15ad:	00 
    15ae:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    15b2:	48 01 ca             	add    %rcx,%rdx
    15b5:	8b 12                	mov    (%rdx),%edx
    15b7:	83 fa 7f             	cmp    $0x7f,%edx
    15ba:	0f 9f c2             	setg   %dl
    15bd:	0f b6 d2             	movzbl %dl,%edx
    15c0:	f7 da                	neg    %edx
    15c2:	21 d0                	and    %edx,%eax
    15c4:	48 63 d0             	movslq %eax,%rdx
    15c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15cb:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    15cf:	8b 45 e0             	mov    -0x20(%rbp),%eax
    15d2:	83 c0 01             	add    $0x1,%eax
    15d5:	89 c0                	mov    %eax,%eax
    15d7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    15de:	00 
    15df:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    15e3:	48 01 d0             	add    %rdx,%rax
    15e6:	8b 00                	mov    (%rax),%eax
    15e8:	8b 55 e0             	mov    -0x20(%rbp),%edx
    15eb:	83 c2 01             	add    $0x1,%edx
    15ee:	89 d2                	mov    %edx,%edx
    15f0:	48 8d 34 95 00 00 00 	lea    0x0(,%rdx,4),%rsi
    15f7:	00 
    15f8:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    15fc:	48 01 f2             	add    %rsi,%rdx
    15ff:	8b 12                	mov    (%rdx),%edx
    1601:	83 fa 7f             	cmp    $0x7f,%edx
    1604:	0f 9f c2             	setg   %dl
    1607:	0f b6 d2             	movzbl %dl,%edx
    160a:	f7 da                	neg    %edx
    160c:	21 d0                	and    %edx,%eax
    160e:	48 98                	cltq
    1610:	48 01 c1             	add    %rax,%rcx
    1613:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1616:	83 c0 02             	add    $0x2,%eax
    1619:	89 c0                	mov    %eax,%eax
    161b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1622:	00 
    1623:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1627:	48 01 d0             	add    %rdx,%rax
    162a:	8b 00                	mov    (%rax),%eax
    162c:	8b 55 e0             	mov    -0x20(%rbp),%edx
    162f:	83 c2 02             	add    $0x2,%edx
    1632:	89 d2                	mov    %edx,%edx
    1634:	48 8d 34 95 00 00 00 	lea    0x0(,%rdx,4),%rsi
    163b:	00 
    163c:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    1640:	48 01 f2             	add    %rsi,%rdx
    1643:	8b 12                	mov    (%rdx),%edx
    1645:	83 fa 7f             	cmp    $0x7f,%edx
    1648:	0f 9f c2             	setg   %dl
    164b:	0f b6 d2             	movzbl %dl,%edx
    164e:	f7 da                	neg    %edx
    1650:	21 d0                	and    %edx,%eax
    1652:	48 98                	cltq
    1654:	48 01 c1             	add    %rax,%rcx
    1657:	8b 45 e0             	mov    -0x20(%rbp),%eax
    165a:	83 c0 03             	add    $0x3,%eax
    165d:	89 c0                	mov    %eax,%eax
    165f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1666:	00 
    1667:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    166b:	48 01 d0             	add    %rdx,%rax
    166e:	8b 00                	mov    (%rax),%eax
    1670:	8b 55 e0             	mov    -0x20(%rbp),%edx
    1673:	83 c2 03             	add    $0x3,%edx
    1676:	89 d2                	mov    %edx,%edx
    1678:	48 8d 34 95 00 00 00 	lea    0x0(,%rdx,4),%rsi
    167f:	00 
    1680:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    1684:	48 01 f2             	add    %rsi,%rdx
    1687:	8b 12                	mov    (%rdx),%edx
    1689:	83 fa 7f             	cmp    $0x7f,%edx
    168c:	0f 9f c2             	setg   %dl
    168f:	0f b6 d2             	movzbl %dl,%edx
    1692:	f7 da                	neg    %edx
    1694:	21 d0                	and    %edx,%eax
    1696:	48 98                	cltq
    1698:	48 01 c8             	add    %rcx,%rax
    169b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    169f:	83 45 e0 04          	addl   $0x4,-0x20(%rbp)
    16a3:	81 7d e0 07 00 01 00 	cmpl   $0x10007,-0x20(%rbp)
    16aa:	0f 86 df fe ff ff    	jbe    158f <sum_unrolled+0x35>
    16b0:	c7 45 e4 08 00 01 00 	movl   $0x10008,-0x1c(%rbp)
    16b7:	eb 37                	jmp    16f0 <sum_unrolled+0x196>
    16b9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    16bc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    16c3:	00 
    16c4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    16c8:	48 01 d0             	add    %rdx,%rax
    16cb:	8b 00                	mov    (%rax),%eax
    16cd:	83 f8 7f             	cmp    $0x7f,%eax
    16d0:	7e 1a                	jle    16ec <sum_unrolled+0x192>
    16d2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    16d5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    16dc:	00 
    16dd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    16e1:	48 01 d0             	add    %rdx,%rax
    16e4:	8b 00                	mov    (%rax),%eax
    16e6:	48 98                	cltq
    16e8:	48 01 45 e8          	add    %rax,-0x18(%rbp)
    16ec:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    16f0:	81 7d e4 09 00 01 00 	cmpl   $0x10009,-0x1c(%rbp)
    16f7:	76 c0                	jbe    16b9 <sum_unrolled+0x15f>
    16f9:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    16fd:	81 7d dc ff 3f 00 00 	cmpl   $0x3fff,-0x24(%rbp)
    1704:	0f 86 79 fe ff ff    	jbe    1583 <sum_unrolled+0x29>
    170a:	e8 31 f9 ff ff       	call   1040 <clock@plt>
    170f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1713:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1717:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    171b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    171f:	df 6d c0             	fildll -0x40(%rbp)
    1722:	db 2d 08 1b 00 00    	fldt   0x1b08(%rip)        # 3230 <_IO_stdin_used+0x230>
    1728:	de f9                	fdivrp %st,%st(1)
    172a:	48 8d 05 df 1a 00 00 	lea    0x1adf(%rip),%rax        # 3210 <_IO_stdin_used+0x210>
    1731:	48 8d 64 24 f0       	lea    -0x10(%rsp),%rsp
    1736:	db 3c 24             	fstpt  (%rsp)
    1739:	48 89 c7             	mov    %rax,%rdi
    173c:	b8 00 00 00 00       	mov    $0x0,%eax
    1741:	e8 1a f9 ff ff       	call   1060 <printf@plt>
    1746:	48 83 c4 10          	add    $0x10,%rsp
    174a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    174e:	c9                   	leave
    174f:	c3                   	ret

0000000000001750 <sum_simd>:
    1750:	55                   	push   %rbp
    1751:	48 89 e5             	mov    %rsp,%rbp
    1754:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    175b:	48 89 bd c8 fe ff ff 	mov    %rdi,-0x138(%rbp)
    1762:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1769:	00 00 
    176b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    176f:	31 c0                	xor    %eax,%eax
    1771:	e8 ca f8 ff ff       	call   1040 <clock@plt>
    1776:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    177d:	c7 85 e4 fe ff ff 7f 	movl   $0x7f,-0x11c(%rbp)
    1784:	00 00 00 
    1787:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
    178d:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%rbp)
    1793:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
    1799:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
    179f:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
    17a5:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%rbp)
    17ab:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
    17b1:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%rbp)
    17b7:	66 0f 6e 85 e8 fe ff 	movd   -0x118(%rbp),%xmm0
    17be:	ff 
    17bf:	66 0f 6e 8d ec fe ff 	movd   -0x114(%rbp),%xmm1
    17c6:	ff 
    17c7:	66 0f 6f d1          	movdqa %xmm1,%xmm2
    17cb:	66 0f 62 d0          	punpckldq %xmm0,%xmm2
    17cf:	66 0f 6e 8d f0 fe ff 	movd   -0x110(%rbp),%xmm1
    17d6:	ff 
    17d7:	66 0f 6e 85 f4 fe ff 	movd   -0x10c(%rbp),%xmm0
    17de:	ff 
    17df:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
    17e3:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    17e7:	90                   	nop
    17e8:	0f 29 85 30 ff ff ff 	movaps %xmm0,-0xd0(%rbp)
    17ef:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    17f6:	00 00 00 00 
    17fa:	c7 85 d8 fe ff ff 00 	movl   $0x0,-0x128(%rbp)
    1801:	00 00 00 
    1804:	e9 9a 01 00 00       	jmp    19a3 <sum_simd+0x253>
    1809:	66 0f ef c0          	pxor   %xmm0,%xmm0
    180d:	0f 29 85 20 ff ff ff 	movaps %xmm0,-0xe0(%rbp)
    1814:	c7 85 dc fe ff ff 00 	movl   $0x0,-0x124(%rbp)
    181b:	00 00 00 
    181e:	e9 c6 00 00 00       	jmp    18e9 <sum_simd+0x199>
    1823:	8b 85 dc fe ff ff    	mov    -0x124(%rbp),%eax
    1829:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1830:	00 
    1831:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    1838:	48 01 d0             	add    %rdx,%rax
    183b:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    1842:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
    1849:	f3 0f 6f 00          	movdqu (%rax),%xmm0
    184d:	0f 29 85 40 ff ff ff 	movaps %xmm0,-0xc0(%rbp)
    1854:	66 0f 6f 85 40 ff ff 	movdqa -0xc0(%rbp),%xmm0
    185b:	ff 
    185c:	0f 29 45 b0          	movaps %xmm0,-0x50(%rbp)
    1860:	66 0f 6f 85 30 ff ff 	movdqa -0xd0(%rbp),%xmm0
    1867:	ff 
    1868:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    186c:	66 0f 6f 45 b0       	movdqa -0x50(%rbp),%xmm0
    1871:	66 0f 6f 4d c0       	movdqa -0x40(%rbp),%xmm1
    1876:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
    187a:	0f 29 85 50 ff ff ff 	movaps %xmm0,-0xb0(%rbp)
    1881:	66 0f 6f 85 40 ff ff 	movdqa -0xc0(%rbp),%xmm0
    1888:	ff 
    1889:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
    188d:	66 0f 6f 85 50 ff ff 	movdqa -0xb0(%rbp),%xmm0
    1894:	ff 
    1895:	0f 29 45 a0          	movaps %xmm0,-0x60(%rbp)
    1899:	66 0f 6f 4d 90       	movdqa -0x70(%rbp),%xmm1
    189e:	66 0f 6f 45 a0       	movdqa -0x60(%rbp),%xmm0
    18a3:	66 0f db c1          	pand   %xmm1,%xmm0
    18a7:	0f 29 85 60 ff ff ff 	movaps %xmm0,-0xa0(%rbp)
    18ae:	66 0f 6f 85 20 ff ff 	movdqa -0xe0(%rbp),%xmm0
    18b5:	ff 
    18b6:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
    18bd:	66 0f 6f 85 60 ff ff 	movdqa -0xa0(%rbp),%xmm0
    18c4:	ff 
    18c5:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    18c9:	66 0f 6f 8d 70 ff ff 	movdqa -0x90(%rbp),%xmm1
    18d0:	ff 
    18d1:	66 0f 6f 45 80       	movdqa -0x80(%rbp),%xmm0
    18d6:	66 0f fe c1          	paddd  %xmm1,%xmm0
    18da:	90                   	nop
    18db:	0f 29 85 20 ff ff ff 	movaps %xmm0,-0xe0(%rbp)
    18e2:	83 85 dc fe ff ff 04 	addl   $0x4,-0x124(%rbp)
    18e9:	81 bd dc fe ff ff 07 	cmpl   $0x10007,-0x124(%rbp)
    18f0:	00 01 00 
    18f3:	0f 86 2a ff ff ff    	jbe    1823 <sum_simd+0xd3>
    18f9:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    18fd:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
    1904:	66 0f 6f 85 20 ff ff 	movdqa -0xe0(%rbp),%xmm0
    190b:	ff 
    190c:	0f 29 45 d0          	movaps %xmm0,-0x30(%rbp)
    1910:	66 0f 6f 45 d0       	movdqa -0x30(%rbp),%xmm0
    1915:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    191c:	0f 11 00             	movups %xmm0,(%rax)
    191f:	90                   	nop
    1920:	8b 55 e0             	mov    -0x20(%rbp),%edx
    1923:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1926:	01 c2                	add    %eax,%edx
    1928:	8b 45 e8             	mov    -0x18(%rbp),%eax
    192b:	01 c2                	add    %eax,%edx
    192d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1930:	01 d0                	add    %edx,%eax
    1932:	48 98                	cltq
    1934:	48 01 85 f8 fe ff ff 	add    %rax,-0x108(%rbp)
    193b:	c7 85 e0 fe ff ff 08 	movl   $0x10008,-0x120(%rbp)
    1942:	00 01 00 
    1945:	eb 49                	jmp    1990 <sum_simd+0x240>
    1947:	8b 85 e0 fe ff ff    	mov    -0x120(%rbp),%eax
    194d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1954:	00 
    1955:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    195c:	48 01 d0             	add    %rdx,%rax
    195f:	8b 00                	mov    (%rax),%eax
    1961:	83 f8 7f             	cmp    $0x7f,%eax
    1964:	7e 23                	jle    1989 <sum_simd+0x239>
    1966:	8b 85 e0 fe ff ff    	mov    -0x120(%rbp),%eax
    196c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1973:	00 
    1974:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    197b:	48 01 d0             	add    %rdx,%rax
    197e:	8b 00                	mov    (%rax),%eax
    1980:	48 98                	cltq
    1982:	48 01 85 f8 fe ff ff 	add    %rax,-0x108(%rbp)
    1989:	83 85 e0 fe ff ff 01 	addl   $0x1,-0x120(%rbp)
    1990:	81 bd e0 fe ff ff 09 	cmpl   $0x10009,-0x120(%rbp)
    1997:	00 01 00 
    199a:	76 ab                	jbe    1947 <sum_simd+0x1f7>
    199c:	83 85 d8 fe ff ff 01 	addl   $0x1,-0x128(%rbp)
    19a3:	81 bd d8 fe ff ff ff 	cmpl   $0x3fff,-0x128(%rbp)
    19aa:	3f 00 00 
    19ad:	0f 86 56 fe ff ff    	jbe    1809 <sum_simd+0xb9>
    19b3:	e8 88 f6 ff ff       	call   1040 <clock@plt>
    19b8:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    19bf:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    19c6:	48 2b 85 00 ff ff ff 	sub    -0x100(%rbp),%rax
    19cd:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
    19d4:	df ad c0 fe ff ff    	fildll -0x140(%rbp)
    19da:	db 2d 50 18 00 00    	fldt   0x1850(%rip)        # 3230 <_IO_stdin_used+0x230>
    19e0:	de f9                	fdivrp %st,%st(1)
    19e2:	48 8d 05 27 18 00 00 	lea    0x1827(%rip),%rax        # 3210 <_IO_stdin_used+0x210>
    19e9:	48 8d 64 24 f0       	lea    -0x10(%rsp),%rsp
    19ee:	db 3c 24             	fstpt  (%rsp)
    19f1:	48 89 c7             	mov    %rax,%rdi
    19f4:	b8 00 00 00 00       	mov    $0x0,%eax
    19f9:	e8 62 f6 ff ff       	call   1060 <printf@plt>
    19fe:	48 83 c4 10          	add    $0x10,%rsp
    1a02:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    1a09:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1a0d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1a14:	00 00 
    1a16:	74 05                	je     1a1d <sum_simd+0x2cd>
    1a18:	e8 33 f6 ff ff       	call   1050 <__stack_chk_fail@plt>
    1a1d:	c9                   	leave
    1a1e:	c3                   	ret

0000000000001a1f <sum_simd_unrolled>:
    1a1f:	55                   	push   %rbp
    1a20:	48 89 e5             	mov    %rsp,%rbp
    1a23:	48 81 ec 20 04 00 00 	sub    $0x420,%rsp
    1a2a:	48 89 bd e8 fb ff ff 	mov    %rdi,-0x418(%rbp)
    1a31:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a38:	00 00 
    1a3a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a3e:	31 c0                	xor    %eax,%eax
    1a40:	e8 fb f5 ff ff       	call   1040 <clock@plt>
    1a45:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
    1a4c:	c7 85 0c fc ff ff 7f 	movl   $0x7f,-0x3f4(%rbp)
    1a53:	00 00 00 
    1a56:	8b 85 0c fc ff ff    	mov    -0x3f4(%rbp),%eax
    1a5c:	89 85 10 fc ff ff    	mov    %eax,-0x3f0(%rbp)
    1a62:	8b 85 0c fc ff ff    	mov    -0x3f4(%rbp),%eax
    1a68:	89 85 14 fc ff ff    	mov    %eax,-0x3ec(%rbp)
    1a6e:	8b 85 0c fc ff ff    	mov    -0x3f4(%rbp),%eax
    1a74:	89 85 18 fc ff ff    	mov    %eax,-0x3e8(%rbp)
    1a7a:	8b 85 0c fc ff ff    	mov    -0x3f4(%rbp),%eax
    1a80:	89 85 1c fc ff ff    	mov    %eax,-0x3e4(%rbp)
    1a86:	66 0f 6e 85 10 fc ff 	movd   -0x3f0(%rbp),%xmm0
    1a8d:	ff 
    1a8e:	66 0f 6e 8d 14 fc ff 	movd   -0x3ec(%rbp),%xmm1
    1a95:	ff 
    1a96:	66 0f 6f d1          	movdqa %xmm1,%xmm2
    1a9a:	66 0f 62 d0          	punpckldq %xmm0,%xmm2
    1a9e:	66 0f 6e 8d 18 fc ff 	movd   -0x3e8(%rbp),%xmm1
    1aa5:	ff 
    1aa6:	66 0f 6e 85 1c fc ff 	movd   -0x3e4(%rbp),%xmm0
    1aad:	ff 
    1aae:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
    1ab2:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    1ab6:	90                   	nop
    1ab7:	0f 29 85 c0 fc ff ff 	movaps %xmm0,-0x340(%rbp)
    1abe:	48 c7 85 20 fc ff ff 	movq   $0x0,-0x3e0(%rbp)
    1ac5:	00 00 00 00 
    1ac9:	c7 85 fc fb ff ff 00 	movl   $0x0,-0x404(%rbp)
    1ad0:	00 00 00 
    1ad3:	e9 39 06 00 00       	jmp    2111 <sum_simd_unrolled+0x6f2>
    1ad8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1adc:	0f 29 85 80 fc ff ff 	movaps %xmm0,-0x380(%rbp)
    1ae3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1ae7:	0f 29 85 90 fc ff ff 	movaps %xmm0,-0x370(%rbp)
    1aee:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1af2:	0f 29 85 a0 fc ff ff 	movaps %xmm0,-0x360(%rbp)
    1af9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1afd:	0f 29 85 b0 fc ff ff 	movaps %xmm0,-0x350(%rbp)
    1b04:	c7 85 00 fc ff ff 00 	movl   $0x0,-0x400(%rbp)
    1b0b:	00 00 00 
    1b0e:	e9 87 03 00 00       	jmp    1e9a <sum_simd_unrolled+0x47b>
    1b13:	8b 85 00 fc ff ff    	mov    -0x400(%rbp),%eax
    1b19:	83 c0 04             	add    $0x4,%eax
    1b1c:	89 c0                	mov    %eax,%eax
    1b1e:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1b25:	00 
    1b26:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    1b2d:	48 01 d0             	add    %rdx,%rax
    1b30:	48 89 85 50 fc ff ff 	mov    %rax,-0x3b0(%rbp)
    1b37:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
    1b3e:	f3 0f 6f 00          	movdqu (%rax),%xmm0
    1b42:	0f 29 85 00 fd ff ff 	movaps %xmm0,-0x300(%rbp)
    1b49:	66 0f 6f 85 00 fd ff 	movdqa -0x300(%rbp),%xmm0
    1b50:	ff 
    1b51:	0f 29 85 20 ff ff ff 	movaps %xmm0,-0xe0(%rbp)
    1b58:	66 0f 6f 85 c0 fc ff 	movdqa -0x340(%rbp),%xmm0
    1b5f:	ff 
    1b60:	0f 29 85 30 ff ff ff 	movaps %xmm0,-0xd0(%rbp)
    1b67:	66 0f 6f 85 20 ff ff 	movdqa -0xe0(%rbp),%xmm0
    1b6e:	ff 
    1b6f:	66 0f 6f 8d 30 ff ff 	movdqa -0xd0(%rbp),%xmm1
    1b76:	ff 
    1b77:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
    1b7b:	0f 29 85 10 fd ff ff 	movaps %xmm0,-0x2f0(%rbp)
    1b82:	66 0f 6f 85 00 fd ff 	movdqa -0x300(%rbp),%xmm0
    1b89:	ff 
    1b8a:	0f 29 85 00 ff ff ff 	movaps %xmm0,-0x100(%rbp)
    1b91:	66 0f 6f 85 10 fd ff 	movdqa -0x2f0(%rbp),%xmm0
    1b98:	ff 
    1b99:	0f 29 85 10 ff ff ff 	movaps %xmm0,-0xf0(%rbp)
    1ba0:	66 0f 6f 8d 00 ff ff 	movdqa -0x100(%rbp),%xmm1
    1ba7:	ff 
    1ba8:	66 0f 6f 85 10 ff ff 	movdqa -0xf0(%rbp),%xmm0
    1baf:	ff 
    1bb0:	66 0f db c1          	pand   %xmm1,%xmm0
    1bb4:	0f 29 85 20 fd ff ff 	movaps %xmm0,-0x2e0(%rbp)
    1bbb:	66 0f 6f 85 80 fc ff 	movdqa -0x380(%rbp),%xmm0
    1bc2:	ff 
    1bc3:	0f 29 85 e0 fe ff ff 	movaps %xmm0,-0x120(%rbp)
    1bca:	66 0f 6f 85 20 fd ff 	movdqa -0x2e0(%rbp),%xmm0
    1bd1:	ff 
    1bd2:	0f 29 85 f0 fe ff ff 	movaps %xmm0,-0x110(%rbp)
    1bd9:	66 0f 6f 8d e0 fe ff 	movdqa -0x120(%rbp),%xmm1
    1be0:	ff 
    1be1:	66 0f 6f 85 f0 fe ff 	movdqa -0x110(%rbp),%xmm0
    1be8:	ff 
    1be9:	66 0f fe c1          	paddd  %xmm1,%xmm0
    1bed:	0f 29 85 80 fc ff ff 	movaps %xmm0,-0x380(%rbp)
    1bf4:	8b 85 00 fc ff ff    	mov    -0x400(%rbp),%eax
    1bfa:	83 c0 08             	add    $0x8,%eax
    1bfd:	89 c0                	mov    %eax,%eax
    1bff:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1c06:	00 
    1c07:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    1c0e:	48 01 d0             	add    %rdx,%rax
    1c11:	48 89 85 48 fc ff ff 	mov    %rax,-0x3b8(%rbp)
    1c18:	48 8b 85 48 fc ff ff 	mov    -0x3b8(%rbp),%rax
    1c1f:	f3 0f 6f 00          	movdqu (%rax),%xmm0
    1c23:	0f 29 85 30 fd ff ff 	movaps %xmm0,-0x2d0(%rbp)
    1c2a:	66 0f 6f 85 30 fd ff 	movdqa -0x2d0(%rbp),%xmm0
    1c31:	ff 
    1c32:	0f 29 85 c0 fe ff ff 	movaps %xmm0,-0x140(%rbp)
    1c39:	66 0f 6f 85 c0 fc ff 	movdqa -0x340(%rbp),%xmm0
    1c40:	ff 
    1c41:	0f 29 85 d0 fe ff ff 	movaps %xmm0,-0x130(%rbp)
    1c48:	66 0f 6f 85 c0 fe ff 	movdqa -0x140(%rbp),%xmm0
    1c4f:	ff 
    1c50:	66 0f 6f 8d d0 fe ff 	movdqa -0x130(%rbp),%xmm1
    1c57:	ff 
    1c58:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
    1c5c:	0f 29 85 40 fd ff ff 	movaps %xmm0,-0x2c0(%rbp)
    1c63:	66 0f 6f 85 30 fd ff 	movdqa -0x2d0(%rbp),%xmm0
    1c6a:	ff 
    1c6b:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
    1c72:	66 0f 6f 85 40 fd ff 	movdqa -0x2c0(%rbp),%xmm0
    1c79:	ff 
    1c7a:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
    1c81:	66 0f 6f 8d a0 fe ff 	movdqa -0x160(%rbp),%xmm1
    1c88:	ff 
    1c89:	66 0f 6f 85 b0 fe ff 	movdqa -0x150(%rbp),%xmm0
    1c90:	ff 
    1c91:	66 0f db c1          	pand   %xmm1,%xmm0
    1c95:	0f 29 85 50 fd ff ff 	movaps %xmm0,-0x2b0(%rbp)
    1c9c:	66 0f 6f 85 90 fc ff 	movdqa -0x370(%rbp),%xmm0
    1ca3:	ff 
    1ca4:	0f 29 85 80 fe ff ff 	movaps %xmm0,-0x180(%rbp)
    1cab:	66 0f 6f 85 50 fd ff 	movdqa -0x2b0(%rbp),%xmm0
    1cb2:	ff 
    1cb3:	0f 29 85 90 fe ff ff 	movaps %xmm0,-0x170(%rbp)
    1cba:	66 0f 6f 8d 80 fe ff 	movdqa -0x180(%rbp),%xmm1
    1cc1:	ff 
    1cc2:	66 0f 6f 85 90 fe ff 	movdqa -0x170(%rbp),%xmm0
    1cc9:	ff 
    1cca:	66 0f fe c1          	paddd  %xmm1,%xmm0
    1cce:	0f 29 85 90 fc ff ff 	movaps %xmm0,-0x370(%rbp)
    1cd5:	8b 85 00 fc ff ff    	mov    -0x400(%rbp),%eax
    1cdb:	83 c0 0c             	add    $0xc,%eax
    1cde:	89 c0                	mov    %eax,%eax
    1ce0:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1ce7:	00 
    1ce8:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    1cef:	48 01 d0             	add    %rdx,%rax
    1cf2:	48 89 85 40 fc ff ff 	mov    %rax,-0x3c0(%rbp)
    1cf9:	48 8b 85 40 fc ff ff 	mov    -0x3c0(%rbp),%rax
    1d00:	f3 0f 6f 00          	movdqu (%rax),%xmm0
    1d04:	0f 29 85 60 fd ff ff 	movaps %xmm0,-0x2a0(%rbp)
    1d0b:	66 0f 6f 85 60 fd ff 	movdqa -0x2a0(%rbp),%xmm0
    1d12:	ff 
    1d13:	0f 29 85 60 fe ff ff 	movaps %xmm0,-0x1a0(%rbp)
    1d1a:	66 0f 6f 85 c0 fc ff 	movdqa -0x340(%rbp),%xmm0
    1d21:	ff 
    1d22:	0f 29 85 70 fe ff ff 	movaps %xmm0,-0x190(%rbp)
    1d29:	66 0f 6f 85 60 fe ff 	movdqa -0x1a0(%rbp),%xmm0
    1d30:	ff 
    1d31:	66 0f 6f 8d 70 fe ff 	movdqa -0x190(%rbp),%xmm1
    1d38:	ff 
    1d39:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
    1d3d:	0f 29 85 70 fd ff ff 	movaps %xmm0,-0x290(%rbp)
    1d44:	66 0f 6f 85 60 fd ff 	movdqa -0x2a0(%rbp),%xmm0
    1d4b:	ff 
    1d4c:	0f 29 85 40 fe ff ff 	movaps %xmm0,-0x1c0(%rbp)
    1d53:	66 0f 6f 85 70 fd ff 	movdqa -0x290(%rbp),%xmm0
    1d5a:	ff 
    1d5b:	0f 29 85 50 fe ff ff 	movaps %xmm0,-0x1b0(%rbp)
    1d62:	66 0f 6f 8d 40 fe ff 	movdqa -0x1c0(%rbp),%xmm1
    1d69:	ff 
    1d6a:	66 0f 6f 85 50 fe ff 	movdqa -0x1b0(%rbp),%xmm0
    1d71:	ff 
    1d72:	66 0f db c1          	pand   %xmm1,%xmm0
    1d76:	0f 29 85 80 fd ff ff 	movaps %xmm0,-0x280(%rbp)
    1d7d:	66 0f 6f 85 a0 fc ff 	movdqa -0x360(%rbp),%xmm0
    1d84:	ff 
    1d85:	0f 29 85 20 fe ff ff 	movaps %xmm0,-0x1e0(%rbp)
    1d8c:	66 0f 6f 85 80 fd ff 	movdqa -0x280(%rbp),%xmm0
    1d93:	ff 
    1d94:	0f 29 85 30 fe ff ff 	movaps %xmm0,-0x1d0(%rbp)
    1d9b:	66 0f 6f 8d 20 fe ff 	movdqa -0x1e0(%rbp),%xmm1
    1da2:	ff 
    1da3:	66 0f 6f 85 30 fe ff 	movdqa -0x1d0(%rbp),%xmm0
    1daa:	ff 
    1dab:	66 0f fe c1          	paddd  %xmm1,%xmm0
    1daf:	0f 29 85 a0 fc ff ff 	movaps %xmm0,-0x360(%rbp)
    1db6:	8b 85 00 fc ff ff    	mov    -0x400(%rbp),%eax
    1dbc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1dc3:	00 
    1dc4:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    1dcb:	48 01 d0             	add    %rdx,%rax
    1dce:	48 89 85 38 fc ff ff 	mov    %rax,-0x3c8(%rbp)
    1dd5:	48 8b 85 38 fc ff ff 	mov    -0x3c8(%rbp),%rax
    1ddc:	f3 0f 6f 00          	movdqu (%rax),%xmm0
    1de0:	0f 29 85 90 fd ff ff 	movaps %xmm0,-0x270(%rbp)
    1de7:	66 0f 6f 85 90 fd ff 	movdqa -0x270(%rbp),%xmm0
    1dee:	ff 
    1def:	0f 29 85 00 fe ff ff 	movaps %xmm0,-0x200(%rbp)
    1df6:	66 0f 6f 85 c0 fc ff 	movdqa -0x340(%rbp),%xmm0
    1dfd:	ff 
    1dfe:	0f 29 85 10 fe ff ff 	movaps %xmm0,-0x1f0(%rbp)
    1e05:	66 0f 6f 85 00 fe ff 	movdqa -0x200(%rbp),%xmm0
    1e0c:	ff 
    1e0d:	66 0f 6f 8d 10 fe ff 	movdqa -0x1f0(%rbp),%xmm1
    1e14:	ff 
    1e15:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
    1e19:	0f 29 85 a0 fd ff ff 	movaps %xmm0,-0x260(%rbp)
    1e20:	66 0f 6f 85 90 fd ff 	movdqa -0x270(%rbp),%xmm0
    1e27:	ff 
    1e28:	0f 29 85 e0 fd ff ff 	movaps %xmm0,-0x220(%rbp)
    1e2f:	66 0f 6f 85 a0 fd ff 	movdqa -0x260(%rbp),%xmm0
    1e36:	ff 
    1e37:	0f 29 85 f0 fd ff ff 	movaps %xmm0,-0x210(%rbp)
    1e3e:	66 0f 6f 8d e0 fd ff 	movdqa -0x220(%rbp),%xmm1
    1e45:	ff 
    1e46:	66 0f 6f 85 f0 fd ff 	movdqa -0x210(%rbp),%xmm0
    1e4d:	ff 
    1e4e:	66 0f db c1          	pand   %xmm1,%xmm0
    1e52:	0f 29 85 b0 fd ff ff 	movaps %xmm0,-0x250(%rbp)
    1e59:	66 0f 6f 85 b0 fc ff 	movdqa -0x350(%rbp),%xmm0
    1e60:	ff 
    1e61:	0f 29 85 c0 fd ff ff 	movaps %xmm0,-0x240(%rbp)
    1e68:	66 0f 6f 85 b0 fd ff 	movdqa -0x250(%rbp),%xmm0
    1e6f:	ff 
    1e70:	0f 29 85 d0 fd ff ff 	movaps %xmm0,-0x230(%rbp)
    1e77:	66 0f 6f 8d c0 fd ff 	movdqa -0x240(%rbp),%xmm1
    1e7e:	ff 
    1e7f:	66 0f 6f 85 d0 fd ff 	movdqa -0x230(%rbp),%xmm0
    1e86:	ff 
    1e87:	66 0f fe c1          	paddd  %xmm1,%xmm0
    1e8b:	90                   	nop
    1e8c:	0f 29 85 b0 fc ff ff 	movaps %xmm0,-0x350(%rbp)
    1e93:	83 85 00 fc ff ff 10 	addl   $0x10,-0x400(%rbp)
    1e9a:	81 bd 00 fc ff ff ff 	cmpl   $0xffff,-0x400(%rbp)
    1ea1:	ff 00 00 
    1ea4:	0f 86 69 fc ff ff    	jbe    1b13 <sum_simd_unrolled+0xf4>
    1eaa:	c7 85 04 fc ff ff 00 	movl   $0x10000,-0x3fc(%rbp)
    1eb1:	00 01 00 
    1eb4:	e9 d8 00 00 00       	jmp    1f91 <sum_simd_unrolled+0x572>
    1eb9:	8b 85 04 fc ff ff    	mov    -0x3fc(%rbp),%eax
    1ebf:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1ec6:	00 
    1ec7:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    1ece:	48 01 d0             	add    %rdx,%rax
    1ed1:	48 89 85 58 fc ff ff 	mov    %rax,-0x3a8(%rbp)
    1ed8:	48 8b 85 58 fc ff ff 	mov    -0x3a8(%rbp),%rax
    1edf:	f3 0f 6f 00          	movdqu (%rax),%xmm0
    1ee3:	0f 29 85 d0 fc ff ff 	movaps %xmm0,-0x330(%rbp)
    1eea:	66 0f 6f 85 d0 fc ff 	movdqa -0x330(%rbp),%xmm0
    1ef1:	ff 
    1ef2:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    1ef6:	66 0f 6f 85 c0 fc ff 	movdqa -0x340(%rbp),%xmm0
    1efd:	ff 
    1efe:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
    1f02:	66 0f 6f 45 80       	movdqa -0x80(%rbp),%xmm0
    1f07:	66 0f 6f 4d 90       	movdqa -0x70(%rbp),%xmm1
    1f0c:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
    1f10:	0f 29 85 e0 fc ff ff 	movaps %xmm0,-0x320(%rbp)
    1f17:	66 0f 6f 85 d0 fc ff 	movdqa -0x330(%rbp),%xmm0
    1f1e:	ff 
    1f1f:	0f 29 85 60 ff ff ff 	movaps %xmm0,-0xa0(%rbp)
    1f26:	66 0f 6f 85 e0 fc ff 	movdqa -0x320(%rbp),%xmm0
    1f2d:	ff 
    1f2e:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
    1f35:	66 0f 6f 8d 60 ff ff 	movdqa -0xa0(%rbp),%xmm1
    1f3c:	ff 
    1f3d:	66 0f 6f 85 70 ff ff 	movdqa -0x90(%rbp),%xmm0
    1f44:	ff 
    1f45:	66 0f db c1          	pand   %xmm1,%xmm0
    1f49:	0f 29 85 f0 fc ff ff 	movaps %xmm0,-0x310(%rbp)
    1f50:	66 0f 6f 85 80 fc ff 	movdqa -0x380(%rbp),%xmm0
    1f57:	ff 
    1f58:	0f 29 85 40 ff ff ff 	movaps %xmm0,-0xc0(%rbp)
    1f5f:	66 0f 6f 85 f0 fc ff 	movdqa -0x310(%rbp),%xmm0
    1f66:	ff 
    1f67:	0f 29 85 50 ff ff ff 	movaps %xmm0,-0xb0(%rbp)
    1f6e:	66 0f 6f 8d 40 ff ff 	movdqa -0xc0(%rbp),%xmm1
    1f75:	ff 
    1f76:	66 0f 6f 85 50 ff ff 	movdqa -0xb0(%rbp),%xmm0
    1f7d:	ff 
    1f7e:	66 0f fe c1          	paddd  %xmm1,%xmm0
    1f82:	90                   	nop
    1f83:	0f 29 85 80 fc ff ff 	movaps %xmm0,-0x380(%rbp)
    1f8a:	83 85 04 fc ff ff 04 	addl   $0x4,-0x3fc(%rbp)
    1f91:	81 bd 04 fc ff ff 07 	cmpl   $0x10007,-0x3fc(%rbp)
    1f98:	00 01 00 
    1f9b:	0f 86 18 ff ff ff    	jbe    1eb9 <sum_simd_unrolled+0x49a>
    1fa1:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1fa5:	48 89 85 78 fc ff ff 	mov    %rax,-0x388(%rbp)
    1fac:	66 0f 6f 85 80 fc ff 	movdqa -0x380(%rbp),%xmm0
    1fb3:	ff 
    1fb4:	0f 29 45 d0          	movaps %xmm0,-0x30(%rbp)
    1fb8:	66 0f 6f 45 d0       	movdqa -0x30(%rbp),%xmm0
    1fbd:	48 8b 85 78 fc ff ff 	mov    -0x388(%rbp),%rax
    1fc4:	0f 11 00             	movups %xmm0,(%rax)
    1fc7:	90                   	nop
    1fc8:	8b 55 e0             	mov    -0x20(%rbp),%edx
    1fcb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1fce:	01 c2                	add    %eax,%edx
    1fd0:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1fd3:	01 c2                	add    %eax,%edx
    1fd5:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1fd8:	01 d0                	add    %edx,%eax
    1fda:	48 98                	cltq
    1fdc:	48 01 85 20 fc ff ff 	add    %rax,-0x3e0(%rbp)
    1fe3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1fe7:	48 89 85 70 fc ff ff 	mov    %rax,-0x390(%rbp)
    1fee:	66 0f 6f 85 90 fc ff 	movdqa -0x370(%rbp),%xmm0
    1ff5:	ff 
    1ff6:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    1ffa:	66 0f 6f 45 c0       	movdqa -0x40(%rbp),%xmm0
    1fff:	48 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%rax
    2006:	0f 11 00             	movups %xmm0,(%rax)
    2009:	90                   	nop
    200a:	8b 55 e0             	mov    -0x20(%rbp),%edx
    200d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2010:	01 c2                	add    %eax,%edx
    2012:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2015:	01 c2                	add    %eax,%edx
    2017:	8b 45 ec             	mov    -0x14(%rbp),%eax
    201a:	01 d0                	add    %edx,%eax
    201c:	48 98                	cltq
    201e:	48 01 85 20 fc ff ff 	add    %rax,-0x3e0(%rbp)
    2025:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2029:	48 89 85 68 fc ff ff 	mov    %rax,-0x398(%rbp)
    2030:	66 0f 6f 85 a0 fc ff 	movdqa -0x360(%rbp),%xmm0
    2037:	ff 
    2038:	0f 29 45 b0          	movaps %xmm0,-0x50(%rbp)
    203c:	66 0f 6f 45 b0       	movdqa -0x50(%rbp),%xmm0
    2041:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
    2048:	0f 11 00             	movups %xmm0,(%rax)
    204b:	90                   	nop
    204c:	8b 55 e0             	mov    -0x20(%rbp),%edx
    204f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2052:	01 c2                	add    %eax,%edx
    2054:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2057:	01 c2                	add    %eax,%edx
    2059:	8b 45 ec             	mov    -0x14(%rbp),%eax
    205c:	01 d0                	add    %edx,%eax
    205e:	48 98                	cltq
    2060:	48 01 85 20 fc ff ff 	add    %rax,-0x3e0(%rbp)
    2067:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    206b:	48 89 85 60 fc ff ff 	mov    %rax,-0x3a0(%rbp)
    2072:	66 0f 6f 85 b0 fc ff 	movdqa -0x350(%rbp),%xmm0
    2079:	ff 
    207a:	0f 29 45 a0          	movaps %xmm0,-0x60(%rbp)
    207e:	66 0f 6f 45 a0       	movdqa -0x60(%rbp),%xmm0
    2083:	48 8b 85 60 fc ff ff 	mov    -0x3a0(%rbp),%rax
    208a:	0f 11 00             	movups %xmm0,(%rax)
    208d:	90                   	nop
    208e:	8b 55 e0             	mov    -0x20(%rbp),%edx
    2091:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2094:	01 c2                	add    %eax,%edx
    2096:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2099:	01 c2                	add    %eax,%edx
    209b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    209e:	01 d0                	add    %edx,%eax
    20a0:	48 98                	cltq
    20a2:	48 01 85 20 fc ff ff 	add    %rax,-0x3e0(%rbp)
    20a9:	c7 85 08 fc ff ff 08 	movl   $0x10008,-0x3f8(%rbp)
    20b0:	00 01 00 
    20b3:	eb 49                	jmp    20fe <sum_simd_unrolled+0x6df>
    20b5:	8b 85 08 fc ff ff    	mov    -0x3f8(%rbp),%eax
    20bb:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    20c2:	00 
    20c3:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    20ca:	48 01 d0             	add    %rdx,%rax
    20cd:	8b 00                	mov    (%rax),%eax
    20cf:	83 f8 7f             	cmp    $0x7f,%eax
    20d2:	7e 23                	jle    20f7 <sum_simd_unrolled+0x6d8>
    20d4:	8b 85 08 fc ff ff    	mov    -0x3f8(%rbp),%eax
    20da:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    20e1:	00 
    20e2:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    20e9:	48 01 d0             	add    %rdx,%rax
    20ec:	8b 00                	mov    (%rax),%eax
    20ee:	48 98                	cltq
    20f0:	48 01 85 20 fc ff ff 	add    %rax,-0x3e0(%rbp)
    20f7:	83 85 08 fc ff ff 01 	addl   $0x1,-0x3f8(%rbp)
    20fe:	81 bd 08 fc ff ff 09 	cmpl   $0x10009,-0x3f8(%rbp)
    2105:	00 01 00 
    2108:	76 ab                	jbe    20b5 <sum_simd_unrolled+0x696>
    210a:	83 85 fc fb ff ff 01 	addl   $0x1,-0x404(%rbp)
    2111:	81 bd fc fb ff ff ff 	cmpl   $0x3fff,-0x404(%rbp)
    2118:	3f 00 00 
    211b:	0f 86 b7 f9 ff ff    	jbe    1ad8 <sum_simd_unrolled+0xb9>
    2121:	e8 1a ef ff ff       	call   1040 <clock@plt>
    2126:	48 89 85 30 fc ff ff 	mov    %rax,-0x3d0(%rbp)
    212d:	48 8b 85 30 fc ff ff 	mov    -0x3d0(%rbp),%rax
    2134:	48 2b 85 28 fc ff ff 	sub    -0x3d8(%rbp),%rax
    213b:	48 89 85 e0 fb ff ff 	mov    %rax,-0x420(%rbp)
    2142:	df ad e0 fb ff ff    	fildll -0x420(%rbp)
    2148:	db 2d e2 10 00 00    	fldt   0x10e2(%rip)        # 3230 <_IO_stdin_used+0x230>
    214e:	de f9                	fdivrp %st,%st(1)
    2150:	48 8d 05 b9 10 00 00 	lea    0x10b9(%rip),%rax        # 3210 <_IO_stdin_used+0x210>
    2157:	48 8d 64 24 f0       	lea    -0x10(%rsp),%rsp
    215c:	db 3c 24             	fstpt  (%rsp)
    215f:	48 89 c7             	mov    %rax,%rdi
    2162:	b8 00 00 00 00       	mov    $0x0,%eax
    2167:	e8 f4 ee ff ff       	call   1060 <printf@plt>
    216c:	48 83 c4 10          	add    $0x10,%rsp
    2170:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
    2177:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    217b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2182:	00 00 
    2184:	74 05                	je     218b <sum_simd_unrolled+0x76c>
    2186:	e8 c5 ee ff ff       	call   1050 <__stack_chk_fail@plt>
    218b:	c9                   	leave
    218c:	c3                   	ret

Disassembly of section .fini:

0000000000002190 <_fini>:
    2190:	f3 0f 1e fa          	endbr64
    2194:	48 83 ec 08          	sub    $0x8,%rsp
    2198:	48 83 c4 08          	add    $0x8,%rsp
    219c:	c3                   	ret
