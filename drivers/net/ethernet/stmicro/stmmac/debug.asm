
stmmac.ko:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <stmmac_disable_eee_mode>:
       0:	f81e0ff3 	str	x19, [sp,#-32]!
       4:	a9017bfd 	stp	x29, x30, [sp,#16]
       8:	910043fd 	add	x29, sp, #0x10
       c:	aa0003f3 	mov	x19, x0
      10:	94000000 	bl	0 <_mcount>
      14:	f9411260 	ldr	x0, [x19,#544]
      18:	f9400008 	ldr	x8, [x0]
      1c:	f9402908 	ldr	x8, [x8,#80]
      20:	d63f0100 	blr	x8
      24:	91216260 	add	x0, x19, #0x858
      28:	94000000 	bl	0 <del_timer_sync>
      2c:	3901327f 	strb	wzr, [x19,#76]
      30:	a9417bfd 	ldp	x29, x30, [sp,#16]
      34:	f84207f3 	ldr	x19, [sp],#32
      38:	d65f03c0 	ret

000000000000003c <stmmac_eee_init>:
      3c:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
      40:	a90157f6 	stp	x22, x21, [sp,#16]
      44:	a9024ff4 	stp	x20, x19, [sp,#32]
      48:	a9037bfd 	stp	x29, x30, [sp,#48]
      4c:	9100c3fd 	add	x29, sp, #0x30
      50:	aa0003f3 	mov	x19, x0
      54:	94000000 	bl	0 <_mcount>
      58:	f9434268 	ldr	x8, [x19,#1664]
      5c:	2a1f03e0 	mov	w0, wzr
      60:	b9400908 	ldr	w8, [x8,#8]
      64:	7100291f 	cmp	w8, #0xa
      68:	54000208 	b.hi	a8 <stmmac_eee_init+0x6c>
      6c:	52800029 	mov	w9, #0x1                   	// #1
      70:	1ac82128 	lsl	w8, w9, w8
      74:	5280f0c9 	mov	w9, #0x786                 	// #1926
      78:	6a09011f 	tst	w8, w9
      7c:	54000160 	b.eq	a8 <stmmac_eee_init+0x6c>
      80:	f9411268 	ldr	x8, [x19,#544]
      84:	b9405908 	ldr	w8, [x8,#88]
      88:	7100211f 	cmp	w8, #0x8
      8c:	54000188 	b.hi	bc <stmmac_eee_init+0x80>
      90:	52800029 	mov	w9, #0x1                   	// #1
      94:	1ac82128 	lsl	w8, w9, w8
      98:	52802249 	mov	w9, #0x112                 	// #274
      9c:	6a09011f 	tst	w8, w9
      a0:	540000e0 	b.eq	bc <stmmac_eee_init+0x80>
      a4:	2a1f03e0 	mov	w0, wzr
      a8:	a9437bfd 	ldp	x29, x30, [sp,#48]
      ac:	a9424ff4 	ldp	x20, x19, [sp,#32]
      b0:	a94157f6 	ldp	x22, x21, [sp,#16]
      b4:	a8c45ff8 	ldp	x24, x23, [sp],#64
      b8:	d65f03c0 	ret
      bc:	b946ba68 	ldr	w8, [x19,#1720]
      c0:	34ffff28 	cbz	w8, a4 <stmmac_eee_init+0x68>
      c4:	f9412260 	ldr	x0, [x19,#576]
      c8:	b948ae76 	ldr	w22, [x19,#2220]
      cc:	52800021 	mov	w1, #0x1                   	// #1
      d0:	94000000 	bl	0 <phy_init_eee>
      d4:	9108a274 	add	x20, x19, #0x228
      d8:	2a0003f7 	mov	w23, w0
      dc:	aa1403e0 	mov	x0, x20
      e0:	94000000 	bl	0 <_raw_spin_lock_irqsave>
      e4:	b948aa68 	ldr	w8, [x19,#2216]
      e8:	aa0003f5 	mov	x21, x0
      ec:	340001f7 	cbz	w23, 128 <stmmac_eee_init+0xec>
      f0:	34000128 	cbz	w8, 114 <stmmac_eee_init+0xd8>
      f4:	91216260 	add	x0, x19, #0x858
      f8:	94000000 	bl	0 <del_timer_sync>
      fc:	f9411260 	ldr	x0, [x19,#544]
     100:	2a1f03e1 	mov	w1, wzr
     104:	2a1603e2 	mov	w2, w22
     108:	f9400008 	ldr	x8, [x0]
     10c:	f9402d08 	ldr	x8, [x8,#88]
     110:	d63f0100 	blr	x8
     114:	aa1403e0 	mov	x0, x20
     118:	aa1503e1 	mov	x1, x21
     11c:	b908aa7f 	str	wzr, [x19,#2216]
     120:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
     124:	17ffffe0 	b	a4 <stmmac_eee_init+0x68>
     128:	35000468 	cbnz	w8, 1b4 <stmmac_eee_init+0x178>
     12c:	91216277 	add	x23, x19, #0x858
     130:	52800028 	mov	w8, #0x1                   	// #1
     134:	aa1703e0 	mov	x0, x23
     138:	2a1f03e1 	mov	w1, wzr
     13c:	aa1f03e2 	mov	x2, xzr
     140:	aa1f03e3 	mov	x3, xzr
     144:	b908aa68 	str	w8, [x19,#2216]
     148:	94000000 	bl	0 <init_timer_key>
     14c:	d2800008 	mov	x8, #0x0                   	// #0
     150:	f2a00008 	movk	x8, #0x0, lsl #16
     154:	f2c00008 	movk	x8, #0x0, lsl #32
     158:	f2e00008 	movk	x8, #0x0, lsl #48
     15c:	d2800009 	mov	x9, #0x0                   	// #0
     160:	f9043a68 	str	x8, [x19,#2160]
     164:	d2800008 	mov	x8, #0x0                   	// #0
     168:	f2a00009 	movk	x9, #0x0, lsl #16
     16c:	f2a00008 	movk	x8, #0x0, lsl #16
     170:	f2c00009 	movk	x9, #0x0, lsl #32
     174:	f2c00008 	movk	x8, #0x0, lsl #32
     178:	f9043e73 	str	x19, [x19,#2168]
     17c:	f2e00009 	movk	x9, #0x0, lsl #48
     180:	f2e00008 	movk	x8, #0x0, lsl #48
     184:	f9400138 	ldr	x24, [x9]
     188:	b9400100 	ldr	w0, [x8]
     18c:	94000000 	bl	0 <__msecs_to_jiffies>
     190:	8b180001 	add	x1, x0, x24
     194:	aa1703e0 	mov	x0, x23
     198:	94000000 	bl	0 <mod_timer>
     19c:	f9411260 	ldr	x0, [x19,#544]
     1a0:	52807d01 	mov	w1, #0x3e8                 	// #1000
     1a4:	2a1603e2 	mov	w2, w22
     1a8:	f9400008 	ldr	x8, [x0]
     1ac:	f9402d08 	ldr	x8, [x8,#88]
     1b0:	d63f0100 	blr	x8
     1b4:	f9411260 	ldr	x0, [x19,#544]
     1b8:	f9412269 	ldr	x9, [x19,#576]
     1bc:	f9400008 	ldr	x8, [x0]
     1c0:	b9436521 	ldr	w1, [x9,#868]
     1c4:	f9403108 	ldr	x8, [x8,#96]
     1c8:	d63f0100 	blr	x8
     1cc:	aa1403e0 	mov	x0, x20
     1d0:	aa1503e1 	mov	x1, x21
     1d4:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
     1d8:	52800020 	mov	w0, #0x1                   	// #1
     1dc:	17ffffb3 	b	a8 <stmmac_eee_init+0x6c>

00000000000001e0 <stmmac_eee_ctrl_timer>:
     1e0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
     1e4:	a9017bfd 	stp	x29, x30, [sp,#16]
     1e8:	910043fd 	add	x29, sp, #0x10
     1ec:	aa0003f3 	mov	x19, x0
     1f0:	94000000 	bl	0 <_mcount>
     1f4:	29432668 	ldp	w8, w9, [x19,#24]
     1f8:	6b08013f 	cmp	w9, w8
     1fc:	540000e1 	b.ne	218 <stmmac_eee_ctrl_timer+0x38>
     200:	39413268 	ldrb	w8, [x19,#76]
     204:	350000a8 	cbnz	w8, 218 <stmmac_eee_ctrl_timer+0x38>
     208:	f9411260 	ldr	x0, [x19,#544]
     20c:	f9400008 	ldr	x8, [x0]
     210:	f9402508 	ldr	x8, [x8,#72]
     214:	d63f0100 	blr	x8
     218:	d2800008 	mov	x8, #0x0                   	// #0
     21c:	d2800009 	mov	x9, #0x0                   	// #0
     220:	f2a00008 	movk	x8, #0x0, lsl #16
     224:	f2a00009 	movk	x9, #0x0, lsl #16
     228:	f2c00008 	movk	x8, #0x0, lsl #32
     22c:	f2c00009 	movk	x9, #0x0, lsl #32
     230:	f2e00008 	movk	x8, #0x0, lsl #48
     234:	f2e00009 	movk	x9, #0x0, lsl #48
     238:	f9400114 	ldr	x20, [x8]
     23c:	b9400120 	ldr	w0, [x9]
     240:	91216273 	add	x19, x19, #0x858
     244:	94000000 	bl	0 <__msecs_to_jiffies>
     248:	8b140001 	add	x1, x0, x20
     24c:	aa1303e0 	mov	x0, x19
     250:	94000000 	bl	0 <mod_timer>
     254:	a9417bfd 	ldp	x29, x30, [sp,#16]
     258:	a8c24ff4 	ldp	x20, x19, [sp],#32
     25c:	d65f03c0 	ret

0000000000000260 <stmmac_dvr_probe>:
     260:	f81b0ff9 	str	x25, [sp,#-80]!
     264:	a9015ff8 	stp	x24, x23, [sp,#16]
     268:	a90257f6 	stp	x22, x21, [sp,#32]
     26c:	a9034ff4 	stp	x20, x19, [sp,#48]
     270:	a9047bfd 	stp	x29, x30, [sp,#64]
     274:	910103fd 	add	x29, sp, #0x40
     278:	aa0203f5 	mov	x21, x2
     27c:	aa0103f6 	mov	x22, x1
     280:	aa0003f4 	mov	x20, x0
     284:	94000000 	bl	0 <_mcount>
     288:	d2800000 	mov	x0, #0x0                   	// #0
     28c:	f2a00000 	movk	x0, #0x0, lsl #16
     290:	f2c00000 	movk	x0, #0x0, lsl #32
     294:	f2e00000 	movk	x0, #0x0, lsl #48
     298:	94000000 	bl	0 <printk>
     29c:	52813800 	mov	w0, #0x9c0                 	// #2496
     2a0:	52800021 	mov	w1, #0x1                   	// #1
     2a4:	52800022 	mov	w2, #0x1                   	// #1
     2a8:	94000000 	bl	0 <alloc_etherdev_mqs>
     2ac:	b4002040 	cbz	x0, 6b4 <stmmac_dvr_probe+0x454>
     2b0:	9114d008 	add	x8, x0, #0x534
     2b4:	aa0003f3 	mov	x19, x0
     2b8:	f9000114 	str	x20, [x8]
     2bc:	f9058c14 	str	x20, [x0,#2840]
     2c0:	f9058800 	str	x0, [x0,#2832]
     2c4:	94000000 	bl	5b88 <stmmac_set_ethtool_ops>
     2c8:	d2800018 	mov	x24, #0x0                   	// #0
     2cc:	f2a00018 	movk	x24, #0x0, lsl #16
     2d0:	f2c00018 	movk	x24, #0x0, lsl #32
     2d4:	f2e00018 	movk	x24, #0x0, lsl #48
     2d8:	b9400308 	ldr	w8, [x24]
     2dc:	f907c276 	str	x22, [x19,#3968]
     2e0:	f9458a69 	ldr	x9, [x19,#2832]
     2e4:	d2800000 	mov	x0, #0x0                   	// #0
     2e8:	b90b5a68 	str	w8, [x19,#2904]
     2ec:	f94002a8 	ldr	x8, [x21]
     2f0:	f2a00000 	movk	x0, #0x0, lsl #16
     2f4:	f2c00000 	movk	x0, #0x0, lsl #32
     2f8:	f2e00000 	movk	x0, #0x0, lsl #48
     2fc:	f9058668 	str	x8, [x19,#2824]
     300:	f94002a8 	ldr	x8, [x21]
     304:	f9001d28 	str	x8, [x9,#56]
     308:	f9458661 	ldr	x1, [x19,#2824]
     30c:	94000000 	bl	0 <printk>
     310:	f9458a68 	ldr	x8, [x19,#2832]
     314:	d2800000 	mov	x0, #0x0                   	// #0
     318:	f2a00000 	movk	x0, #0x0, lsl #16
     31c:	f2c00000 	movk	x0, #0x0, lsl #32
     320:	f9401d01 	ldr	x1, [x8,#56]
     324:	f2e00000 	movk	x0, #0x0, lsl #48
     328:	94000000 	bl	0 <printk>
     32c:	d2800017 	mov	x23, #0x0                   	// #0
     330:	f2a00017 	movk	x23, #0x0, lsl #16
     334:	f2c00017 	movk	x23, #0x0, lsl #32
     338:	f2e00017 	movk	x23, #0x0, lsl #48
     33c:	d5382056 	mrs	x22, tcr_el1
     340:	aa1703e0 	mov	x0, x23
     344:	aa1603e1 	mov	x1, x22
     348:	94000000 	bl	0 <printk>
     34c:	926ffac1 	and	x1, x22, #0xfffffffffffeffff
     350:	aa1703e0 	mov	x0, x23
     354:	94000000 	bl	0 <printk>
     358:	b9401aa8 	ldr	w8, [x21,#24]
     35c:	f9458a69 	ldr	x9, [x19,#2832]
     360:	b9004128 	str	w8, [x9,#64]
     364:	b94012a8 	ldr	w8, [x21,#16]
     368:	b9113268 	str	w8, [x19,#4400]
     36c:	b94016a8 	ldr	w8, [x21,#20]
     370:	b911a268 	str	w8, [x19,#4512]
     374:	f94006a8 	ldr	x8, [x21,#8]
     378:	b4000108 	cbz	x8, 398 <stmmac_dvr_probe+0x138>
     37c:	f9458a69 	ldr	x9, [x19,#2832]
     380:	7940090a 	ldrh	w10, [x8,#4]
     384:	b9400108 	ldr	w8, [x8]
     388:	910cb129 	add	x9, x9, #0x32c
     38c:	f9400129 	ldr	x9, [x9]
     390:	7900092a 	strh	w10, [x9,#4]
     394:	b9000128 	str	w8, [x9]
     398:	f9458a68 	ldr	x8, [x19,#2832]
     39c:	d2800000 	mov	x0, #0x0                   	// #0
     3a0:	f2a00000 	movk	x0, #0x0, lsl #16
     3a4:	f2c00000 	movk	x0, #0x0, lsl #32
     3a8:	f2e00000 	movk	x0, #0x0, lsl #48
     3ac:	f9005288 	str	x8, [x20,#160]
     3b0:	94000000 	bl	0 <printk>
     3b4:	d2800017 	mov	x23, #0x0                   	// #0
     3b8:	f2a00017 	movk	x23, #0x0, lsl #16
     3bc:	f2c00017 	movk	x23, #0x0, lsl #32
     3c0:	f2e00017 	movk	x23, #0x0, lsl #48
     3c4:	b94002e8 	ldr	w8, [x23]
     3c8:	37f851a8 	tbnz	w8, #31, dfc <stmmac_dvr_probe+0xb9c>
     3cc:	d2800019 	mov	x25, #0x0                   	// #0
     3d0:	f2a00019 	movk	x25, #0x0, lsl #16
     3d4:	f2c00019 	movk	x25, #0x0, lsl #32
     3d8:	f2e00019 	movk	x25, #0x0, lsl #48
     3dc:	b9400328 	ldr	w8, [x25]
     3e0:	52873e29 	mov	w9, #0x39f1                	// #14833
     3e4:	51180108 	sub	w8, w8, #0x600
     3e8:	6b09011f 	cmp	w8, w9
     3ec:	540050e2 	b.cs	e08 <stmmac_dvr_probe+0xba8>
     3f0:	d2800016 	mov	x22, #0x0                   	// #0
     3f4:	f2a00016 	movk	x22, #0x0, lsl #16
     3f8:	f2c00016 	movk	x22, #0x0, lsl #32
     3fc:	f2e00016 	movk	x22, #0x0, lsl #48
     400:	b94002c8 	ldr	w8, [x22]
     404:	7100051f 	cmp	w8, #0x1
     408:	5400506c 	b.gt	e14 <stmmac_dvr_probe+0xbb4>
     40c:	36f80068 	tbz	w8, #31, 418 <stmmac_dvr_probe+0x1b8>
     410:	2a1f03e8 	mov	w8, wzr
     414:	b90002c8 	str	w8, [x22]
     418:	b9400308 	ldr	w8, [x24]
     41c:	7140411f 	cmp	w8, #0x10, lsl #12
     420:	54004fe2 	b.cs	e1c <stmmac_dvr_probe+0xbbc>
     424:	d2800015 	mov	x21, #0x0                   	// #0
     428:	f2a00015 	movk	x21, #0x0, lsl #16
     42c:	f2c00015 	movk	x21, #0x0, lsl #32
     430:	f2e00015 	movk	x21, #0x0, lsl #48
     434:	b94002a8 	ldr	w8, [x21]
     438:	36f80068 	tbz	w8, #31, 444 <stmmac_dvr_probe+0x1e4>
     43c:	52807d08 	mov	w8, #0x3e8                 	// #1000
     440:	b90002a8 	str	w8, [x21]
     444:	d2800014 	mov	x20, #0x0                   	// #0
     448:	f2a00014 	movk	x20, #0x0, lsl #16
     44c:	f2c00014 	movk	x20, #0x0, lsl #32
     450:	f2e00014 	movk	x20, #0x0, lsl #48
     454:	b9400281 	ldr	w1, [x20]
     458:	d2800000 	mov	x0, #0x0                   	// #0
     45c:	f2a00000 	movk	x0, #0x0, lsl #16
     460:	f2c00000 	movk	x0, #0x0, lsl #32
     464:	f2e00000 	movk	x0, #0x0, lsl #48
     468:	94000000 	bl	0 <printk>
     46c:	b9400321 	ldr	w1, [x25]
     470:	d2800000 	mov	x0, #0x0                   	// #0
     474:	f2a00000 	movk	x0, #0x0, lsl #16
     478:	f2c00000 	movk	x0, #0x0, lsl #32
     47c:	f2e00000 	movk	x0, #0x0, lsl #48
     480:	94000000 	bl	0 <printk>
     484:	d2800008 	mov	x8, #0x0                   	// #0
     488:	f2a00008 	movk	x8, #0x0, lsl #16
     48c:	f2c00008 	movk	x8, #0x0, lsl #32
     490:	f2e00008 	movk	x8, #0x0, lsl #48
     494:	b9400101 	ldr	w1, [x8]
     498:	d2800000 	mov	x0, #0x0                   	// #0
     49c:	f2a00000 	movk	x0, #0x0, lsl #16
     4a0:	f2c00000 	movk	x0, #0x0, lsl #32
     4a4:	f2e00000 	movk	x0, #0x0, lsl #48
     4a8:	94000000 	bl	0 <printk>
     4ac:	b94002e1 	ldr	w1, [x23]
     4b0:	d2800000 	mov	x0, #0x0                   	// #0
     4b4:	f2a00000 	movk	x0, #0x0, lsl #16
     4b8:	f2c00000 	movk	x0, #0x0, lsl #32
     4bc:	f2e00000 	movk	x0, #0x0, lsl #48
     4c0:	94000000 	bl	0 <printk>
     4c4:	b94002c1 	ldr	w1, [x22]
     4c8:	d2800000 	mov	x0, #0x0                   	// #0
     4cc:	f2a00000 	movk	x0, #0x0, lsl #16
     4d0:	f2c00000 	movk	x0, #0x0, lsl #32
     4d4:	f2e00000 	movk	x0, #0x0, lsl #48
     4d8:	94000000 	bl	0 <printk>
     4dc:	b9400301 	ldr	w1, [x24]
     4e0:	d2800000 	mov	x0, #0x0                   	// #0
     4e4:	f2a00000 	movk	x0, #0x0, lsl #16
     4e8:	f2c00000 	movk	x0, #0x0, lsl #32
     4ec:	f2e00000 	movk	x0, #0x0, lsl #48
     4f0:	94000000 	bl	0 <printk>
     4f4:	b94002a1 	ldr	w1, [x21]
     4f8:	d2800000 	mov	x0, #0x0                   	// #0
     4fc:	f2a00000 	movk	x0, #0x0, lsl #16
     500:	f2c00000 	movk	x0, #0x0, lsl #32
     504:	f2e00000 	movk	x0, #0x0, lsl #48
     508:	94000000 	bl	0 <printk>
     50c:	d2800018 	mov	x24, #0x0                   	// #0
     510:	f2a00018 	movk	x24, #0x0, lsl #16
     514:	f2c00018 	movk	x24, #0x0, lsl #32
     518:	f2e00018 	movk	x24, #0x0, lsl #48
     51c:	b9400301 	ldr	w1, [x24]
     520:	d2800000 	mov	x0, #0x0                   	// #0
     524:	f2a00000 	movk	x0, #0x0, lsl #16
     528:	f2c00000 	movk	x0, #0x0, lsl #32
     52c:	f2e00000 	movk	x0, #0x0, lsl #48
     530:	94000000 	bl	0 <printk>
     534:	b9400288 	ldr	w8, [x20]
     538:	71007d1f 	cmp	w8, #0x1f
     53c:	54000068 	b.hi	548 <stmmac_dvr_probe+0x2e8>
     540:	f947c269 	ldr	x9, [x19,#3968]
     544:	b9000528 	str	w8, [x9,#4]
     548:	d2800014 	mov	x20, #0x0                   	// #0
     54c:	f9458e60 	ldr	x0, [x19,#2840]
     550:	f2a00014 	movk	x20, #0x0, lsl #16
     554:	f2c00014 	movk	x20, #0x0, lsl #32
     558:	f2e00014 	movk	x20, #0x0, lsl #48
     55c:	aa1403e1 	mov	x1, x20
     560:	94000000 	bl	0 <devm_clk_get>
     564:	d2800008 	mov	x8, #0x0                   	// #0
     568:	d2800009 	mov	x9, #0x0                   	// #0
     56c:	f2a00008 	movk	x8, #0x0, lsl #16
     570:	f2a00009 	movk	x9, #0x0, lsl #16
     574:	f2c00008 	movk	x8, #0x0, lsl #32
     578:	f2c00009 	movk	x9, #0x0, lsl #32
     57c:	f2e00008 	movk	x8, #0x0, lsl #48
     580:	f2e00009 	movk	x9, #0x0, lsl #48
     584:	f100001f 	cmp	x0, #0x0
     588:	f9089e60 	str	x0, [x19,#4408]
     58c:	9a880120 	csel	x0, x9, x8, eq
     590:	94000000 	bl	0 <printk>
     594:	f9489e75 	ldr	x21, [x19,#4408]
     598:	b13ffebf 	cmn	x21, #0xfff
     59c:	540002a3 	b.cc	5f0 <stmmac_dvr_probe+0x390>
     5a0:	f9458e60 	ldr	x0, [x19,#2840]
     5a4:	d2800001 	mov	x1, #0x0                   	// #0
     5a8:	d2800002 	mov	x2, #0x0                   	// #0
     5ac:	f2a00001 	movk	x1, #0x0, lsl #16
     5b0:	f2a00002 	movk	x2, #0x0, lsl #16
     5b4:	f2c00001 	movk	x1, #0x0, lsl #32
     5b8:	f2c00002 	movk	x2, #0x0, lsl #32
     5bc:	f2e00001 	movk	x1, #0x0, lsl #48
     5c0:	f2e00002 	movk	x2, #0x0, lsl #48
     5c4:	94000000 	bl	0 <dev_warn>
     5c8:	d2800000 	mov	x0, #0x0                   	// #0
     5cc:	f2a00000 	movk	x0, #0x0, lsl #16
     5d0:	f2c00000 	movk	x0, #0x0, lsl #32
     5d4:	f2e00000 	movk	x0, #0x0, lsl #48
     5d8:	94000000 	bl	0 <printk>
     5dc:	f947c268 	ldr	x8, [x19,#3968]
     5e0:	b9403108 	ldr	w8, [x8,#48]
     5e4:	34000c88 	cbz	w8, 774 <stmmac_dvr_probe+0x514>
     5e8:	aa1f03f5 	mov	x21, xzr
     5ec:	f9089e7f 	str	xzr, [x19,#4408]
     5f0:	aa1503e0 	mov	x0, x21
     5f4:	94000000 	bl	0 <clk_prepare>
     5f8:	350000c0 	cbnz	w0, 610 <stmmac_dvr_probe+0x3b0>
     5fc:	aa1503e0 	mov	x0, x21
     600:	94000000 	bl	0 <clk_enable>
     604:	34000060 	cbz	w0, 610 <stmmac_dvr_probe+0x3b0>
     608:	aa1503e0 	mov	x0, x21
     60c:	94000000 	bl	0 <clk_unprepare>
     610:	f9458e60 	ldr	x0, [x19,#2840]
     614:	d2800001 	mov	x1, #0x0                   	// #0
     618:	f2a00001 	movk	x1, #0x0, lsl #16
     61c:	f2c00001 	movk	x1, #0x0, lsl #32
     620:	f2e00001 	movk	x1, #0x0, lsl #48
     624:	94000000 	bl	0 <devm_clk_get>
     628:	aa0003f5 	mov	x21, x0
     62c:	b13ffc1f 	cmn	x0, #0xfff
     630:	f908a260 	str	x0, [x19,#4416]
     634:	540000a3 	b.cc	648 <stmmac_dvr_probe+0x3e8>
     638:	b10816bf 	cmn	x21, #0x205
     63c:	54003840 	b.eq	d44 <stmmac_dvr_probe+0xae4>
     640:	aa1f03f5 	mov	x21, xzr
     644:	f908a27f 	str	xzr, [x19,#4416]
     648:	aa1503e0 	mov	x0, x21
     64c:	94000000 	bl	0 <clk_prepare>
     650:	350000c0 	cbnz	w0, 668 <stmmac_dvr_probe+0x408>
     654:	aa1503e0 	mov	x0, x21
     658:	94000000 	bl	0 <clk_enable>
     65c:	34000060 	cbz	w0, 668 <stmmac_dvr_probe+0x408>
     660:	aa1503e0 	mov	x0, x21
     664:	94000000 	bl	0 <clk_unprepare>
     668:	f9458e60 	ldr	x0, [x19,#2840]
     66c:	aa1403e1 	mov	x1, x20
     670:	2a1f03e2 	mov	w2, wzr
     674:	2a1f03e3 	mov	w3, wzr
     678:	2a1f03e4 	mov	w4, wzr
     67c:	94000000 	bl	0 <__devm_reset_control_get>
     680:	b13ffc1f 	cmn	x0, #0xfff
     684:	f908a660 	str	x0, [x19,#4424]
     688:	540001a3 	b.cc	6bc <stmmac_dvr_probe+0x45c>
     68c:	b108141f 	cmn	x0, #0x205
     690:	54000920 	b.eq	7b4 <stmmac_dvr_probe+0x554>
     694:	f9458e60 	ldr	x0, [x19,#2840]
     698:	d2800001 	mov	x1, #0x0                   	// #0
     69c:	f2a00001 	movk	x1, #0x0, lsl #16
     6a0:	f2c00001 	movk	x1, #0x0, lsl #32
     6a4:	f2e00001 	movk	x1, #0x0, lsl #48
     6a8:	94000000 	bl	0 <_dev_info>
     6ac:	f908a67f 	str	xzr, [x19,#4424]
     6b0:	14000005 	b	6c4 <stmmac_dvr_probe+0x464>
     6b4:	12800175 	mov	w21, #0xfffffff4            	// #-12
     6b8:	140001aa 	b	d60 <stmmac_dvr_probe+0xb00>
     6bc:	b4000040 	cbz	x0, 6c4 <stmmac_dvr_probe+0x464>
     6c0:	94000000 	bl	0 <reset_control_deassert>
     6c4:	d2800000 	mov	x0, #0x0                   	// #0
     6c8:	f2a00000 	movk	x0, #0x0, lsl #16
     6cc:	f2c00000 	movk	x0, #0x0, lsl #32
     6d0:	f2e00000 	movk	x0, #0x0, lsl #48
     6d4:	94000000 	bl	0 <printk>
     6d8:	f947c268 	ldr	x8, [x19,#3968]
     6dc:	b9403509 	ldr	w9, [x8,#52]
     6e0:	340002c9 	cbz	w9, 738 <stmmac_dvr_probe+0x4d8>
     6e4:	f9458a68 	ldr	x8, [x19,#2832]
     6e8:	b9423d09 	ldr	w9, [x8,#572]
     6ec:	32140129 	orr	w9, w9, #0x1000
     6f0:	b9023d09 	str	w9, [x8,#572]
     6f4:	f947c268 	ldr	x8, [x19,#3968]
     6f8:	f9458660 	ldr	x0, [x19,#2824]
     6fc:	294c0901 	ldp	w1, w2, [x8,#96]
     700:	52822488 	mov	w8, #0x1124                	// #4388
     704:	8b080263 	add	x3, x19, x8
     708:	94000000 	bl	8490 <dwmac1000_setup>
     70c:	b4000300 	cbz	x0, 76c <stmmac_dvr_probe+0x50c>
     710:	b9512668 	ldr	w8, [x19,#4388]
     714:	f9059260 	str	x0, [x19,#2848]
     718:	7101011f 	cmp	w8, #0x40
     71c:	5400030b 	b.lt	77c <stmmac_dvr_probe+0x51c>
     720:	d2800008 	mov	x8, #0x0                   	// #0
     724:	f2a00008 	movk	x8, #0x0, lsl #16
     728:	f2c00008 	movk	x8, #0x0, lsl #32
     72c:	f2e00008 	movk	x8, #0x0, lsl #48
     730:	f9000c08 	str	x8, [x0,#24]
     734:	14000034 	b	804 <stmmac_dvr_probe+0x5a4>
     738:	b940b108 	ldr	w8, [x8,#176]
     73c:	34000408 	cbz	w8, 7bc <stmmac_dvr_probe+0x55c>
     740:	f9458a68 	ldr	x8, [x19,#2832]
     744:	b9423d09 	ldr	w9, [x8,#572]
     748:	32140129 	orr	w9, w9, #0x1000
     74c:	b9023d09 	str	w9, [x8,#572]
     750:	f947c268 	ldr	x8, [x19,#3968]
     754:	f9458660 	ldr	x0, [x19,#2824]
     758:	294c0901 	ldp	w1, w2, [x8,#96]
     75c:	52822488 	mov	w8, #0x1124                	// #4388
     760:	8b080263 	add	x3, x19, x8
     764:	94000000 	bl	da04 <dwmac4_setup>
     768:	b5fffd40 	cbnz	x0, 710 <stmmac_dvr_probe+0x4b0>
     76c:	12800175 	mov	w21, #0xfffffff4            	// #-12
     770:	14000170 	b	d30 <stmmac_dvr_probe+0xad0>
     774:	b9513a75 	ldr	w21, [x19,#4408]
     778:	14000178 	b	d58 <stmmac_dvr_probe+0xaf8>
     77c:	b9400308 	ldr	w8, [x24]
     780:	340002a8 	cbz	w8, 7d4 <stmmac_dvr_probe+0x574>
     784:	d2800008 	mov	x8, #0x0                   	// #0
     788:	f2a00008 	movk	x8, #0x0, lsl #16
     78c:	f2c00008 	movk	x8, #0x0, lsl #32
     790:	f2e00008 	movk	x8, #0x0, lsl #48
     794:	f9000c08 	str	x8, [x0,#24]
     798:	d2800000 	mov	x0, #0x0                   	// #0
     79c:	f2a00000 	movk	x0, #0x0, lsl #16
     7a0:	f2c00000 	movk	x0, #0x0, lsl #32
     7a4:	f2e00000 	movk	x0, #0x0, lsl #48
     7a8:	94000000 	bl	0 <printk>
     7ac:	52800028 	mov	w8, #0x1                   	// #1
     7b0:	14000014 	b	800 <stmmac_dvr_probe+0x5a0>
     7b4:	12804095 	mov	w21, #0xfffffdfb            	// #-517
     7b8:	1400015e 	b	d30 <stmmac_dvr_probe+0xad0>
     7bc:	f9458660 	ldr	x0, [x19,#2824]
     7c0:	52822488 	mov	w8, #0x1124                	// #4388
     7c4:	8b080261 	add	x1, x19, x8
     7c8:	94000000 	bl	99f4 <dwmac100_setup>
     7cc:	b5fffa20 	cbnz	x0, 710 <stmmac_dvr_probe+0x4b0>
     7d0:	17ffffe7 	b	76c <stmmac_dvr_probe+0x50c>
     7d4:	d2800008 	mov	x8, #0x0                   	// #0
     7d8:	f2a00008 	movk	x8, #0x0, lsl #16
     7dc:	f2c00008 	movk	x8, #0x0, lsl #32
     7e0:	f2e00008 	movk	x8, #0x0, lsl #48
     7e4:	f9000c08 	str	x8, [x0,#24]
     7e8:	d2800000 	mov	x0, #0x0                   	// #0
     7ec:	f2a00000 	movk	x0, #0x0, lsl #16
     7f0:	f2c00000 	movk	x0, #0x0, lsl #32
     7f4:	f2e00000 	movk	x0, #0x0, lsl #48
     7f8:	94000000 	bl	0 <printk>
     7fc:	52800048 	mov	w8, #0x2                   	// #2
     800:	b911b268 	str	w8, [x19,#4528]
     804:	f9459268 	ldr	x8, [x19,#2848]
     808:	f9400908 	ldr	x8, [x8,#16]
     80c:	f9403908 	ldr	x8, [x8,#112]
     810:	b4000348 	cbz	x8, 878 <stmmac_dvr_probe+0x618>
     814:	f9458660 	ldr	x0, [x19,#2824]
     818:	913e2261 	add	x1, x19, #0xf88
     81c:	d63f0100 	blr	x8
     820:	d2800000 	mov	x0, #0x0                   	// #0
     824:	f2a00000 	movk	x0, #0x0, lsl #16
     828:	f2c00000 	movk	x0, #0x0, lsl #32
     82c:	52800028 	mov	w8, #0x1                   	// #1
     830:	f2e00000 	movk	x0, #0x0, lsl #48
     834:	b9112268 	str	w8, [x19,#4384]
     838:	94000000 	bl	0 <printk>
     83c:	b94fe268 	ldr	w8, [x19,#4064]
     840:	f947c269 	ldr	x9, [x19,#3968]
     844:	b9003928 	str	w8, [x9,#56]
     848:	b94fa668 	ldr	w8, [x19,#4004]
     84c:	f947c269 	ldr	x9, [x19,#3968]
     850:	b9004928 	str	w8, [x9,#72]
     854:	f947c268 	ldr	x8, [x19,#3968]
     858:	f9459269 	ldr	x9, [x19,#2848]
     85c:	b9404908 	ldr	w8, [x8,#72]
     860:	b9005d28 	str	w8, [x9,#92]
     864:	f947c268 	ldr	x8, [x19,#3968]
     868:	b9405109 	ldr	w9, [x8,#80]
     86c:	34000149 	cbz	w9, 894 <stmmac_dvr_probe+0x634>
     870:	2a1f03e9 	mov	w9, wzr
     874:	14000009 	b	898 <stmmac_dvr_probe+0x638>
     878:	d2800000 	mov	x0, #0x0                   	// #0
     87c:	f2a00000 	movk	x0, #0x0, lsl #16
     880:	f2c00000 	movk	x0, #0x0, lsl #32
     884:	f2e00000 	movk	x0, #0x0, lsl #48
     888:	b911227f 	str	wzr, [x19,#4384]
     88c:	94000000 	bl	0 <printk>
     890:	14000010 	b	8d0 <stmmac_dvr_probe+0x670>
     894:	b94fc669 	ldr	w9, [x19,#4036]
     898:	b9003d09 	str	w9, [x8,#60]
     89c:	b94fca68 	ldr	w8, [x19,#4040]
     8a0:	f947c269 	ldr	x9, [x19,#3968]
     8a4:	b9004128 	str	w8, [x9,#64]
     8a8:	b94fd268 	ldr	w8, [x19,#4048]
     8ac:	34000088 	cbz	w8, 8bc <stmmac_dvr_probe+0x65c>
     8b0:	f947c268 	ldr	x8, [x19,#3968]
     8b4:	52800049 	mov	w9, #0x2                   	// #2
     8b8:	14000005 	b	8cc <stmmac_dvr_probe+0x66c>
     8bc:	b94fce68 	ldr	w8, [x19,#4044]
     8c0:	34000088 	cbz	w8, 8d0 <stmmac_dvr_probe+0x670>
     8c4:	f947c268 	ldr	x8, [x19,#3968]
     8c8:	52800029 	mov	w9, #0x1                   	// #1
     8cc:	b9004109 	str	w9, [x8,#64]
     8d0:	b9512668 	ldr	w8, [x19,#4388]
     8d4:	7100fd1f 	cmp	w8, #0x3f
     8d8:	540000cd 	b.le	8f0 <stmmac_dvr_probe+0x690>
     8dc:	d2800008 	mov	x8, #0x0                   	// #0
     8e0:	f2a00008 	movk	x8, #0x0, lsl #16
     8e4:	f2c00008 	movk	x8, #0x0, lsl #32
     8e8:	f2e00008 	movk	x8, #0x0, lsl #48
     8ec:	14000028 	b	98c <stmmac_dvr_probe+0x72c>
     8f0:	f947c268 	ldr	x8, [x19,#3968]
     8f4:	b9403908 	ldr	w8, [x8,#56]
     8f8:	34000248 	cbz	w8, 940 <stmmac_dvr_probe+0x6e0>
     8fc:	d2800000 	mov	x0, #0x0                   	// #0
     900:	f2a00000 	movk	x0, #0x0, lsl #16
     904:	f2c00000 	movk	x0, #0x0, lsl #32
     908:	f2e00000 	movk	x0, #0x0, lsl #48
     90c:	94000000 	bl	0 <printk>
     910:	b9512668 	ldr	w8, [x19,#4388]
     914:	7100d51f 	cmp	w8, #0x35
     918:	5400028b 	b.lt	968 <stmmac_dvr_probe+0x708>
     91c:	d2800000 	mov	x0, #0x0                   	// #0
     920:	f2a00000 	movk	x0, #0x0, lsl #16
     924:	f2c00000 	movk	x0, #0x0, lsl #32
     928:	f2e00000 	movk	x0, #0x0, lsl #48
     92c:	94000000 	bl	0 <printk>
     930:	52800029 	mov	w9, #0x1                   	// #1
     934:	d2800008 	mov	x8, #0x0                   	// #0
     938:	b911b669 	str	w9, [x19,#4532]
     93c:	14000011 	b	980 <stmmac_dvr_probe+0x720>
     940:	d2800000 	mov	x0, #0x0                   	// #0
     944:	f2a00000 	movk	x0, #0x0, lsl #16
     948:	f2c00000 	movk	x0, #0x0, lsl #32
     94c:	f2e00000 	movk	x0, #0x0, lsl #48
     950:	94000000 	bl	0 <printk>
     954:	d2800008 	mov	x8, #0x0                   	// #0
     958:	f2a00008 	movk	x8, #0x0, lsl #16
     95c:	f2c00008 	movk	x8, #0x0, lsl #32
     960:	f2e00008 	movk	x8, #0x0, lsl #48
     964:	1400000a 	b	98c <stmmac_dvr_probe+0x72c>
     968:	d2800000 	mov	x0, #0x0                   	// #0
     96c:	f2a00000 	movk	x0, #0x0, lsl #16
     970:	f2c00000 	movk	x0, #0x0, lsl #32
     974:	f2e00000 	movk	x0, #0x0, lsl #48
     978:	94000000 	bl	0 <printk>
     97c:	d2800008 	mov	x8, #0x0                   	// #0
     980:	f2a00008 	movk	x8, #0x0, lsl #16
     984:	f2c00008 	movk	x8, #0x0, lsl #32
     988:	f2e00008 	movk	x8, #0x0, lsl #48
     98c:	f9459269 	ldr	x9, [x19,#2848]
     990:	f9000528 	str	x8, [x9,#8]
     994:	f947c268 	ldr	x8, [x19,#3968]
     998:	b9404108 	ldr	w8, [x8,#64]
     99c:	34000248 	cbz	w8, 9e4 <stmmac_dvr_probe+0x784>
     9a0:	f9459269 	ldr	x9, [x19,#2848]
     9a4:	d2800000 	mov	x0, #0x0                   	// #0
     9a8:	f2a00000 	movk	x0, #0x0, lsl #16
     9ac:	f2c00000 	movk	x0, #0x0, lsl #32
     9b0:	f2e00000 	movk	x0, #0x0, lsl #48
     9b4:	b9005528 	str	w8, [x9,#84]
     9b8:	94000000 	bl	0 <printk>
     9bc:	b9512668 	ldr	w8, [x19,#4388]
     9c0:	7100fd1f 	cmp	w8, #0x3f
     9c4:	5400010c 	b.gt	9e4 <stmmac_dvr_probe+0x784>
     9c8:	f9459268 	ldr	x8, [x19,#2848]
     9cc:	d2800000 	mov	x0, #0x0                   	// #0
     9d0:	f2a00000 	movk	x0, #0x0, lsl #16
     9d4:	f2c00000 	movk	x0, #0x0, lsl #32
     9d8:	b9405501 	ldr	w1, [x8,#84]
     9dc:	f2e00000 	movk	x0, #0x0, lsl #48
     9e0:	94000000 	bl	0 <printk>
     9e4:	f947c268 	ldr	x8, [x19,#3968]
     9e8:	b9403d09 	ldr	w9, [x8,#60]
     9ec:	340000e9 	cbz	w9, a08 <stmmac_dvr_probe+0x7a8>
     9f0:	d2800000 	mov	x0, #0x0                   	// #0
     9f4:	f2a00000 	movk	x0, #0x0, lsl #16
     9f8:	f2c00000 	movk	x0, #0x0, lsl #32
     9fc:	f2e00000 	movk	x0, #0x0, lsl #48
     a00:	94000000 	bl	0 <printk>
     a04:	f947c268 	ldr	x8, [x19,#3968]
     a08:	b9404908 	ldr	w8, [x8,#72]
     a0c:	34000128 	cbz	w8, a30 <stmmac_dvr_probe+0x7d0>
     a10:	d2800000 	mov	x0, #0x0                   	// #0
     a14:	f2a00000 	movk	x0, #0x0, lsl #16
     a18:	f2c00000 	movk	x0, #0x0, lsl #32
     a1c:	f2e00000 	movk	x0, #0x0, lsl #48
     a20:	94000000 	bl	0 <printk>
     a24:	f9458e60 	ldr	x0, [x19,#2840]
     a28:	52800021 	mov	w1, #0x1                   	// #1
     a2c:	94000000 	bl	0 <device_set_wakeup_capable>
     a30:	b94fc268 	ldr	w8, [x19,#4032]
     a34:	340000c8 	cbz	w8, a4c <stmmac_dvr_probe+0x7ec>
     a38:	d2800000 	mov	x0, #0x0                   	// #0
     a3c:	f2a00000 	movk	x0, #0x0, lsl #16
     a40:	f2c00000 	movk	x0, #0x0, lsl #32
     a44:	f2e00000 	movk	x0, #0x0, lsl #48
     a48:	94000000 	bl	0 <printk>
     a4c:	f9458a68 	ldr	x8, [x19,#2832]
     a50:	910cb108 	add	x8, x8, #0x32c
     a54:	f9400101 	ldr	x1, [x8]
     a58:	b9400028 	ldr	w8, [x1]
     a5c:	37000088 	tbnz	w8, #0, a6c <stmmac_dvr_probe+0x80c>
     a60:	79400829 	ldrh	w9, [x1,#4]
     a64:	2a090108 	orr	w8, w8, w9
     a68:	35000408 	cbnz	w8, ae8 <stmmac_dvr_probe+0x888>
     a6c:	f9459260 	ldr	x0, [x19,#2848]
     a70:	2a1f03e2 	mov	w2, wzr
     a74:	f9400008 	ldr	x8, [x0]
     a78:	f9402108 	ldr	x8, [x8,#64]
     a7c:	d63f0100 	blr	x8
     a80:	f9458a61 	ldr	x1, [x19,#2832]
     a84:	910cb028 	add	x8, x1, #0x32c
     a88:	f9400114 	ldr	x20, [x8]
     a8c:	b9400288 	ldr	w8, [x20]
     a90:	37000088 	tbnz	w8, #0, aa0 <stmmac_dvr_probe+0x840>
     a94:	79400a89 	ldrh	w9, [x20,#4]
     a98:	2a090108 	orr	w8, w8, w9
     a9c:	350001a8 	cbnz	w8, ad0 <stmmac_dvr_probe+0x870>
     aa0:	52800028 	mov	w8, #0x1                   	// #1
     aa4:	3909d828 	strb	w8, [x1,#630]
     aa8:	528000c1 	mov	w1, #0x6                   	// #6
     aac:	aa1403e0 	mov	x0, x20
     ab0:	94000000 	bl	0 <get_random_bytes>
     ab4:	39400288 	ldrb	w8, [x20]
     ab8:	121e1508 	and	w8, w8, #0xfc
     abc:	321f0108 	orr	w8, w8, #0x2
     ac0:	39000288 	strb	w8, [x20]
     ac4:	f9458a61 	ldr	x1, [x19,#2832]
     ac8:	910cb028 	add	x8, x1, #0x32c
     acc:	f9400114 	ldr	x20, [x8]
     ad0:	d2800000 	mov	x0, #0x0                   	// #0
     ad4:	f2a00000 	movk	x0, #0x0, lsl #16
     ad8:	f2c00000 	movk	x0, #0x0, lsl #32
     adc:	f2e00000 	movk	x0, #0x0, lsl #48
     ae0:	aa1403e2 	mov	x2, x20
     ae4:	94000000 	bl	0 <printk>
     ae8:	d2800009 	mov	x9, #0x0                   	// #0
     aec:	f947c26a 	ldr	x10, [x19,#3968]
     af0:	f2a00009 	movk	x9, #0x0, lsl #16
     af4:	d2800268 	mov	x8, #0x13                  	// #19
     af8:	f2c00009 	movk	x9, #0x0, lsl #32
     afc:	f2c00408 	movk	x8, #0x20, lsl #32
     b00:	f2e00009 	movk	x9, #0x0, lsl #48
     b04:	f9010a69 	str	x9, [x19,#528]
     b08:	f9007e68 	str	x8, [x19,#248]
     b0c:	3942d149 	ldrb	w9, [x10,#180]
     b10:	340001a9 	cbz	w9, b44 <stmmac_dvr_probe+0x8e4>
     b14:	b94fc269 	ldr	w9, [x19,#4032]
     b18:	34000169 	cbz	w9, b44 <stmmac_dvr_probe+0x8e4>
     b1c:	d2800000 	mov	x0, #0x0                   	// #0
     b20:	f2a00000 	movk	x0, #0x0, lsl #16
     b24:	f2c00000 	movk	x0, #0x0, lsl #32
     b28:	91404108 	add	x8, x8, #0x10, lsl #12
     b2c:	52800029 	mov	w9, #0x1                   	// #1
     b30:	f2e00000 	movk	x0, #0x0, lsl #48
     b34:	f9007e68 	str	x8, [x19,#248]
     b38:	39266269 	strb	w9, [x19,#2456]
     b3c:	94000000 	bl	0 <printk>
     b40:	f9407e68 	ldr	x8, [x19,#248]
     b44:	f9407a69 	ldr	x9, [x19,#240]
     b48:	aa090108 	orr	x8, x8, x9
     b4c:	b27b0108 	orr	x8, x8, #0x20
     b50:	f9007a68 	str	x8, [x19,#240]
     b54:	b94002e0 	ldr	w0, [x23]
     b58:	94000000 	bl	0 <__msecs_to_jiffies>
     b5c:	f9407a68 	ldr	x8, [x19,#240]
     b60:	d2800009 	mov	x9, #0x0                   	// #0
     b64:	f2a00009 	movk	x9, #0x0, lsl #16
     b68:	f2c00009 	movk	x9, #0x0, lsl #32
     b6c:	b2780108 	orr	x8, x8, #0x100
     b70:	b9046660 	str	w0, [x19,#1124]
     b74:	f9007a68 	str	x8, [x19,#240]
     b78:	f2e00009 	movk	x9, #0x0, lsl #48
     b7c:	b9400128 	ldr	w8, [x9]
     b80:	71007d1f 	cmp	w8, #0x1f
     b84:	54000069 	b.ls	b90 <stmmac_dvr_probe+0x930>
     b88:	528007e8 	mov	w8, #0x3f                  	// #63
     b8c:	14000005 	b	ba0 <stmmac_dvr_probe+0x940>
     b90:	34000088 	cbz	w8, ba0 <stmmac_dvr_probe+0x940>
     b94:	12800009 	mov	w9, #0xffffffff            	// #-1
     b98:	1ac82128 	lsl	w8, w9, w8
     b9c:	2a2803e8 	mvn	w8, w8
     ba0:	b9112a68 	str	w8, [x19,#4392]
     ba4:	b94002c8 	ldr	w8, [x22]
     ba8:	34000068 	cbz	w8, bb4 <stmmac_dvr_probe+0x954>
     bac:	52800068 	mov	w8, #0x3                   	// #3
     bb0:	b90b5668 	str	w8, [x19,#2900]
     bb4:	b9512668 	ldr	w8, [x19,#4388]
     bb8:	7100d51f 	cmp	w8, #0x35
     bbc:	5400016b 	b.lt	be8 <stmmac_dvr_probe+0x988>
     bc0:	f947c268 	ldr	x8, [x19,#3968]
     bc4:	b9405508 	ldr	w8, [x8,#84]
     bc8:	35000108 	cbnz	w8, be8 <stmmac_dvr_probe+0x988>
     bcc:	d2800000 	mov	x0, #0x0                   	// #0
     bd0:	f2a00000 	movk	x0, #0x0, lsl #16
     bd4:	f2c00000 	movk	x0, #0x0, lsl #32
     bd8:	52800028 	mov	w8, #0x1                   	// #1
     bdc:	f2e00000 	movk	x0, #0x0, lsl #48
     be0:	b9124a68 	str	w8, [x19,#4680]
     be4:	94000000 	bl	0 <printk>
     be8:	d2800002 	mov	x2, #0x0                   	// #0
     bec:	f2a00002 	movk	x2, #0x0, lsl #16
     bf0:	91290274 	add	x20, x19, #0xa40
     bf4:	f2c00002 	movk	x2, #0x0, lsl #32
     bf8:	f2e00002 	movk	x2, #0x0, lsl #48
     bfc:	52800803 	mov	w3, #0x40                  	// #64
     c00:	aa1303e0 	mov	x0, x19
     c04:	aa1403e1 	mov	x1, x20
     c08:	94000000 	bl	0 <netif_napi_add>
     c0c:	f947c268 	ldr	x8, [x19,#3968]
     c10:	b90b2a7f 	str	wzr, [x19,#2856]
     c14:	b9094a7f 	str	wzr, [x19,#2376]
     c18:	b9403108 	ldr	w8, [x8,#48]
     c1c:	34000188 	cbz	w8, c4c <stmmac_dvr_probe+0x9ec>
     c20:	b9115268 	str	w8, [x19,#4432]
     c24:	b94f9e68 	ldr	w8, [x19,#3996]
     c28:	34000328 	cbz	w8, c8c <stmmac_dvr_probe+0xa2c>
     c2c:	f947c268 	ldr	x8, [x19,#3968]
     c30:	b9400908 	ldr	w8, [x8,#8]
     c34:	51001d09 	sub	w9, w8, #0x7
     c38:	71000d3f 	cmp	w9, #0x3
     c3c:	540001e8 	b.hi	c78 <stmmac_dvr_probe+0xa18>
     c40:	f9459268 	ldr	x8, [x19,#2848]
     c44:	52800029 	mov	w9, #0x1                   	// #1
     c48:	14000010 	b	c88 <stmmac_dvr_probe+0xa28>
     c4c:	f9489e60 	ldr	x0, [x19,#4408]
     c50:	94000000 	bl	0 <clk_get_rate>
     c54:	52822a08 	mov	w8, #0x1150                	// #4432
     c58:	38686a68 	ldrb	w8, [x19,x8]
     c5c:	372ffe48 	tbnz	w8, #5, c24 <stmmac_dvr_probe+0x9c4>
     c60:	5281d7e8 	mov	w8, #0xebf                 	// #3775
     c64:	72a042c8 	movk	w8, #0x216, lsl #16
     c68:	6b08001f 	cmp	w0, w8
     c6c:	54000888 	b.hi	d7c <stmmac_dvr_probe+0xb1c>
     c70:	52800048 	mov	w8, #0x2                   	// #2
     c74:	17ffffeb 	b	c20 <stmmac_dvr_probe+0x9c0>
     c78:	71000d1f 	cmp	w8, #0x3
     c7c:	54000081 	b.ne	c8c <stmmac_dvr_probe+0xa2c>
     c80:	f9459268 	ldr	x8, [x19,#2848]
     c84:	52800049 	mov	w9, #0x2                   	// #2
     c88:	b9005909 	str	w9, [x8,#88]
     c8c:	f9459268 	ldr	x8, [x19,#2848]
     c90:	b9405908 	ldr	w8, [x8,#88]
     c94:	7100211f 	cmp	w8, #0x8
     c98:	54000408 	b.hi	d18 <stmmac_dvr_probe+0xab8>
     c9c:	52800029 	mov	w9, #0x1                   	// #1
     ca0:	1ac82128 	lsl	w8, w9, w8
     ca4:	52802249 	mov	w9, #0x112                 	// #274
     ca8:	6a09011f 	tst	w8, w9
     cac:	54000360 	b.eq	d18 <stmmac_dvr_probe+0xab8>
     cb0:	aa1303e0 	mov	x0, x19
     cb4:	94000000 	bl	0 <register_netdev>
     cb8:	2a0003f5 	mov	w21, w0
     cbc:	34000520 	cbz	w0, d60 <stmmac_dvr_probe+0xb00>
     cc0:	d2800000 	mov	x0, #0x0                   	// #0
     cc4:	d2800001 	mov	x1, #0x0                   	// #0
     cc8:	f2a00000 	movk	x0, #0x0, lsl #16
     ccc:	f2a00001 	movk	x1, #0x0, lsl #16
     cd0:	f2c00000 	movk	x0, #0x0, lsl #32
     cd4:	f2c00001 	movk	x1, #0x0, lsl #32
     cd8:	f2e00000 	movk	x0, #0x0, lsl #48
     cdc:	f2e00001 	movk	x1, #0x0, lsl #48
     ce0:	2a1503e2 	mov	w2, w21
     ce4:	94000000 	bl	0 <printk>
     ce8:	f9459268 	ldr	x8, [x19,#2848]
     cec:	b9405908 	ldr	w8, [x8,#88]
     cf0:	7100211f 	cmp	w8, #0x8
     cf4:	540000c8 	b.hi	d0c <stmmac_dvr_probe+0xaac>
     cf8:	52800029 	mov	w9, #0x1                   	// #1
     cfc:	1ac82128 	lsl	w8, w9, w8
     d00:	52802249 	mov	w9, #0x112                 	// #274
     d04:	6a09011f 	tst	w8, w9
     d08:	54000101 	b.ne	d28 <stmmac_dvr_probe+0xac8>
     d0c:	aa1303e0 	mov	x0, x19
     d10:	94000000 	bl	73a4 <stmmac_mdio_unregister>
     d14:	14000005 	b	d28 <stmmac_dvr_probe+0xac8>
     d18:	aa1303e0 	mov	x0, x19
     d1c:	94000000 	bl	6c5c <stmmac_mdio_register>
     d20:	36fffc80 	tbz	w0, #31, cb0 <stmmac_dvr_probe+0xa50>
     d24:	2a0003f5 	mov	w21, w0
     d28:	aa1403e0 	mov	x0, x20
     d2c:	94000000 	bl	0 <netif_napi_del>
     d30:	f948a274 	ldr	x20, [x19,#4416]
     d34:	aa1403e0 	mov	x0, x20
     d38:	94000000 	bl	0 <clk_disable>
     d3c:	aa1403e0 	mov	x0, x20
     d40:	94000000 	bl	0 <clk_unprepare>
     d44:	f9489e74 	ldr	x20, [x19,#4408]
     d48:	aa1403e0 	mov	x0, x20
     d4c:	94000000 	bl	0 <clk_disable>
     d50:	aa1403e0 	mov	x0, x20
     d54:	94000000 	bl	0 <clk_unprepare>
     d58:	aa1303e0 	mov	x0, x19
     d5c:	94000000 	bl	0 <free_netdev>
     d60:	2a1503e0 	mov	w0, w21
     d64:	a9447bfd 	ldp	x29, x30, [sp,#64]
     d68:	a9434ff4 	ldp	x20, x19, [sp,#48]
     d6c:	a94257f6 	ldp	x22, x21, [sp,#32]
     d70:	a9415ff8 	ldp	x24, x23, [sp,#16]
     d74:	f84507f9 	ldr	x25, [sp],#80
     d78:	d65f03c0 	ret
     d7c:	5290dfe8 	mov	w8, #0x86ff                	// #34559
     d80:	72a07268 	movk	w8, #0x393, lsl #16
     d84:	6b08001f 	cmp	w0, w8
     d88:	54000068 	b.hi	d94 <stmmac_dvr_probe+0xb34>
     d8c:	52800068 	mov	w8, #0x3                   	// #3
     d90:	17ffffa4 	b	c20 <stmmac_dvr_probe+0x9c0>
     d94:	529c1fe8 	mov	w8, #0xe0ff                	// #57599
     d98:	72a0bea8 	movk	w8, #0x5f5, lsl #16
     d9c:	6b08001f 	cmp	w0, w8
     da0:	540000a8 	b.hi	db4 <stmmac_dvr_probe+0xb54>
     da4:	b911527f 	str	wzr, [x19,#4432]
     da8:	b94f9e68 	ldr	w8, [x19,#3996]
     dac:	35fff408 	cbnz	w8, c2c <stmmac_dvr_probe+0x9cc>
     db0:	17ffffb7 	b	c8c <stmmac_dvr_probe+0xa2c>
     db4:	529a2fe8 	mov	w8, #0xd17f                	// #53631
     db8:	72a11e08 	movk	w8, #0x8f0, lsl #16
     dbc:	6b08001f 	cmp	w0, w8
     dc0:	54000068 	b.hi	dcc <stmmac_dvr_probe+0xb6c>
     dc4:	52800028 	mov	w8, #0x1                   	// #1
     dc8:	17ffff96 	b	c20 <stmmac_dvr_probe+0x9c0>
     dcc:	52964fe8 	mov	w8, #0xb27f                	// #45695
     dd0:	72a1dcc8 	movk	w8, #0xee6, lsl #16
     dd4:	6b08001f 	cmp	w0, w8
     dd8:	54000068 	b.hi	de4 <stmmac_dvr_probe+0xb84>
     ddc:	52800088 	mov	w8, #0x4                   	// #4
     de0:	17ffff90 	b	c20 <stmmac_dvr_probe+0x9c0>
     de4:	52945fe8 	mov	w8, #0xa2ff                	// #41727
     de8:	72a23c28 	movk	w8, #0x11e1, lsl #16
     dec:	6b08001f 	cmp	w0, w8
     df0:	54fff1a8 	b.hi	c24 <stmmac_dvr_probe+0x9c4>
     df4:	528000a8 	mov	w8, #0x5                   	// #5
     df8:	17ffff8a 	b	c20 <stmmac_dvr_probe+0x9c0>
     dfc:	52827108 	mov	w8, #0x1388                	// #5000
     e00:	b90002e8 	str	w8, [x23]
     e04:	17fffd72 	b	3cc <stmmac_dvr_probe+0x16c>
     e08:	5280c008 	mov	w8, #0x600                 	// #1536
     e0c:	b9000328 	str	w8, [x25]
     e10:	17fffd78 	b	3f0 <stmmac_dvr_probe+0x190>
     e14:	52800068 	mov	w8, #0x3                   	// #3
     e18:	17fffd7f 	b	414 <stmmac_dvr_probe+0x1b4>
     e1c:	529fffe8 	mov	w8, #0xffff                	// #65535
     e20:	b9000308 	str	w8, [x24]
     e24:	17fffd80 	b	424 <stmmac_dvr_probe+0x1c4>

0000000000000e28 <stmmac_poll>:
     e28:	d10243ff 	sub	sp, sp, #0x90
     e2c:	a9036ffc 	stp	x28, x27, [sp,#48]
     e30:	a90467fa 	stp	x26, x25, [sp,#64]
     e34:	a9055ff8 	stp	x24, x23, [sp,#80]
     e38:	a90657f6 	stp	x22, x21, [sp,#96]
     e3c:	a9074ff4 	stp	x20, x19, [sp,#112]
     e40:	a9087bfd 	stp	x29, x30, [sp,#128]
     e44:	910203fd 	add	x29, sp, #0x80
     e48:	b9002fe1 	str	w1, [sp,#44]
     e4c:	aa0003f3 	mov	x19, x0
     e50:	94000000 	bl	0 <_mcount>
     e54:	f9418a68 	ldr	x8, [x19,#784]
     e58:	d1050275 	sub	x21, x19, #0x140
     e5c:	aa1503e0 	mov	x0, x21
     e60:	91000508 	add	x8, x8, #0x1
     e64:	f9018a68 	str	x8, [x19,#784]
     e68:	94001062 	bl	4ff0 <stmmac_tx_clean>
     e6c:	f9407268 	ldr	x8, [x19,#224]
     e70:	b8598279 	ldur	w25, [x19,#-104]
     e74:	395ba669 	ldrb	w9, [x19,#1769]
     e78:	f9000bf3 	str	x19, [sp,#16]
     e7c:	b9405517 	ldr	w23, [x8,#84]
     e80:	361802c9 	tbz	w9, #3, ed8 <stmmac_poll+0xb0>
     e84:	d2800000 	mov	x0, #0x0                   	// #0
     e88:	d2800001 	mov	x1, #0x0                   	// #0
     e8c:	f2a00000 	movk	x0, #0x0, lsl #16
     e90:	f2a00001 	movk	x1, #0x0, lsl #16
     e94:	f2c00000 	movk	x0, #0x0, lsl #32
     e98:	f2c00001 	movk	x1, #0x0, lsl #32
     e9c:	f2e00000 	movk	x0, #0x0, lsl #48
     ea0:	f2e00001 	movk	x1, #0x0, lsl #48
     ea4:	94000000 	bl	0 <printk>
     ea8:	b948b6a8 	ldr	w8, [x21,#2228]
     eac:	f94112a9 	ldr	x9, [x21,#544]
     eb0:	5280190a 	mov	w10, #0xc8                  	// #200
     eb4:	52804001 	mov	w1, #0x200                 	// #512
     eb8:	7100011f 	cmp	w8, #0x0
     ebc:	f9400528 	ldr	x8, [x9,#8]
     ec0:	52801809 	mov	w9, #0xc0                  	// #192
     ec4:	9a8a0129 	csel	x9, x9, x10, eq
     ec8:	f8696aa0 	ldr	x0, [x21,x9]
     ecc:	f9404d08 	ldr	x8, [x8,#152]
     ed0:	52800022 	mov	w2, #0x1                   	// #1
     ed4:	d63f0100 	blr	x8
     ed8:	b9402fe8 	ldr	w8, [sp,#44]
     edc:	d280001b 	mov	x27, #0x0                   	// #0
     ee0:	340029a8 	cbz	w8, 1414 <stmmac_poll+0x5ec>
     ee4:	f90007fb 	str	x27, [sp,#8]
     ee8:	f2a0001b 	movk	x27, #0x0, lsl #16
     eec:	f2c0001b 	movk	x27, #0x0, lsl #32
     ef0:	2a1f03f6 	mov	w22, wzr
     ef4:	910c02b8 	add	x24, x21, #0x300
     ef8:	910502a8 	add	x8, x21, #0x140
     efc:	f2e0001b 	movk	x27, #0x0, lsl #48
     f00:	a901a3fb 	stp	x27, x8, [sp,#24]
     f04:	1400000e 	b	f3c <stmmac_poll+0x114>
     f08:	f9410aa1 	ldr	x1, [x21,#528]
     f0c:	d2800000 	mov	x0, #0x0                   	// #0
     f10:	f2a00000 	movk	x0, #0x0, lsl #16
     f14:	f2c00000 	movk	x0, #0x0, lsl #32
     f18:	f2e00000 	movk	x0, #0x0, lsl #48
     f1c:	94000000 	bl	0 <printk>
     f20:	f9410aa8 	ldr	x8, [x21,#528]
     f24:	f940c109 	ldr	x9, [x8,#384]
     f28:	91000529 	add	x9, x9, #0x1
     f2c:	f900c109 	str	x9, [x8,#384]
     f30:	b9402fe8 	ldr	w8, [sp,#44]
     f34:	6b16011f 	cmp	w8, w22
     f38:	54002680 	b.eq	1408 <stmmac_poll+0x5e0>
     f3c:	b948b6a8 	ldr	w8, [x21,#2228]
     f40:	2a1903f3 	mov	w19, w25
     f44:	340000a8 	cbz	w8, f58 <stmmac_poll+0x130>
     f48:	f94066a8 	ldr	x8, [x21,#200]
     f4c:	93407e69 	sxtw	x9, w19
     f50:	8b09151b 	add	x27, x8, x9, lsl #5
     f54:	14000003 	b	f60 <stmmac_poll+0x138>
     f58:	f94062a8 	ldr	x8, [x21,#192]
     f5c:	8b33d11b 	add	x27, x8, w19, sxtw #4
     f60:	f94112a8 	ldr	x8, [x21,#544]
     f64:	f9410aa9 	ldr	x9, [x21,#528]
     f68:	aa1803e1 	mov	x1, x24
     f6c:	aa1b03e2 	mov	x2, x27
     f70:	f9400508 	ldr	x8, [x8,#8]
     f74:	9104c120 	add	x0, x9, #0x130
     f78:	f9403508 	ldr	x8, [x8,#104]
     f7c:	d63f0100 	blr	x8
     f80:	37182460 	tbnz	w0, #3, 140c <stmmac_poll+0x5e4>
     f84:	b940daa8 	ldr	w8, [x21,#216]
     f88:	b948b6a9 	ldr	w9, [x21,#2228]
     f8c:	2a0003fa 	mov	w26, w0
     f90:	11000508 	add	w8, w8, #0x1
     f94:	12002119 	and	w25, w8, #0x1ff
     f98:	b900dab9 	str	w25, [x21,#216]
     f9c:	34000089 	cbz	w9, fac <stmmac_poll+0x184>
     fa0:	f94066a8 	ldr	x8, [x21,#200]
     fa4:	8b191514 	add	x20, x8, x25, lsl #5
     fa8:	14000003 	b	fb4 <stmmac_poll+0x18c>
     fac:	f94062a8 	ldr	x8, [x21,#192]
     fb0:	8b395114 	add	x20, x8, w25, uxtw #4
     fb4:	f9800280 	prfm	pldl1keep, [x20]
     fb8:	b948b6a8 	ldr	w8, [x21,#2228]
     fbc:	34000188 	cbz	w8, fec <stmmac_poll+0x1c4>
     fc0:	f94112a8 	ldr	x8, [x21,#544]
     fc4:	f9400508 	ldr	x8, [x8,#8]
     fc8:	f9403908 	ldr	x8, [x8,#112]
     fcc:	b4000108 	cbz	x8, fec <stmmac_poll+0x1c4>
     fd0:	f9410aa9 	ldr	x9, [x21,#528]
     fd4:	f94066aa 	ldr	x10, [x21,#200]
     fd8:	93407e6b 	sxtw	x11, w19
     fdc:	aa1803e1 	mov	x1, x24
     fe0:	9104c120 	add	x0, x9, #0x130
     fe4:	8b0b1542 	add	x2, x10, x11, lsl #5
     fe8:	d63f0100 	blr	x8
     fec:	7100075f 	cmp	w26, #0x1
     ff0:	110006d6 	add	w22, w22, #0x1
     ff4:	54001460 	b.eq	1280 <stmmac_poll+0x458>
     ff8:	b94826a8 	ldr	w8, [x21,#2084]
     ffc:	f94112a9 	ldr	x9, [x21,#544]
    1000:	aa1b03e0 	mov	x0, x27
    1004:	2a1703e1 	mov	w1, w23
    1008:	7101011f 	cmp	w8, #0x40
    100c:	f9400528 	ldr	x8, [x9,#8]
    1010:	1a9fa7e9 	cset	w9, lt
    1014:	d37df129 	lsl	x9, x9, #3
    1018:	b8696b7c 	ldr	w28, [x27,x9]
    101c:	f9403108 	ldr	x8, [x8,#96]
    1020:	d63f0100 	blr	x8
    1024:	b940e2a3 	ldr	w3, [x21,#224]
    1028:	2a0003e2 	mov	w2, w0
    102c:	6b03001f 	cmp	w0, w3
    1030:	54fff6c8 	b.hi	f08 <stmmac_poll+0xe0>
    1034:	3960a6a8 	ldrb	w8, [x21,#2089]
    1038:	51001049 	sub	w9, w2, #0x4
    103c:	7100135f 	cmp	w26, #0x4
    1040:	1a89005a 	csel	w26, w2, w9, eq
    1044:	36180128 	tbz	w8, #3, 1068 <stmmac_poll+0x240>
    1048:	d2800000 	mov	x0, #0x0                   	// #0
    104c:	f2a00000 	movk	x0, #0x0, lsl #16
    1050:	f2c00000 	movk	x0, #0x0, lsl #32
    1054:	f2e00000 	movk	x0, #0x0, lsl #48
    1058:	aa1b03e1 	mov	x1, x27
    105c:	2a1303e2 	mov	w2, w19
    1060:	2a1c03e3 	mov	w3, w28
    1064:	94000000 	bl	0 <printk>
    1068:	f94342a8 	ldr	x8, [x21,#1664]
    106c:	b940b108 	ldr	w8, [x8,#176]
    1070:	350000e8 	cbnz	w8, 108c <stmmac_poll+0x264>
    1074:	b940e6a8 	ldr	w8, [x21,#228]
    1078:	6b08035f 	cmp	w26, w8
    107c:	540014a3 	b.cc	1310 <stmmac_poll+0x4e8>
    1080:	b940eaa8 	ldr	w8, [x21,#232]
    1084:	7102011f 	cmp	w8, #0x80
    1088:	54001442 	b.cs	1310 <stmmac_poll+0x4e8>
    108c:	f9406aa8 	ldr	x8, [x21,#208]
    1090:	f873d91c 	ldr	x28, [x8,w19,sxtw #3]
    1094:	b400129c 	cbz	x28, 12e4 <stmmac_poll+0x4bc>
    1098:	f940cb88 	ldr	x8, [x28,#400]
    109c:	93407e69 	sxtw	x9, w19
    10a0:	d37df133 	lsl	x19, x9, #3
    10a4:	aa1c03e0 	mov	x0, x28
    10a8:	d1000908 	sub	x8, x8, #0x2
    10ac:	f9800100 	prfm	pldl1keep, [x8]
    10b0:	f9406aa8 	ldr	x8, [x21,#208]
    10b4:	2a1a03e1 	mov	w1, w26
    10b8:	f833691f 	str	xzr, [x8,x19]
    10bc:	b940eaa8 	ldr	w8, [x21,#232]
    10c0:	11000508 	add	w8, w8, #0x1
    10c4:	b900eaa8 	str	w8, [x21,#232]
    10c8:	94000000 	bl	0 <skb_put>
    10cc:	f9407ea8 	ldr	x8, [x21,#248]
    10d0:	f9410ea0 	ldr	x0, [x21,#536]
    10d4:	b940e2a2 	ldr	w2, [x21,#224]
    10d8:	f8736901 	ldr	x1, [x8,x19]
    10dc:	b4000060 	cbz	x0, 10e8 <stmmac_poll+0x2c0>
    10e0:	f9412408 	ldr	x8, [x0,#584]
    10e4:	b5000048 	cbnz	x8, 10ec <stmmac_poll+0x2c4>
    10e8:	f9400fe8 	ldr	x8, [sp,#24]
    10ec:	f9401508 	ldr	x8, [x8,#40]
    10f0:	b4000088 	cbz	x8, 1100 <stmmac_poll+0x2d8>
    10f4:	52800043 	mov	w3, #0x2                   	// #2
    10f8:	aa1f03e4 	mov	x4, xzr
    10fc:	d63f0100 	blr	x8
    1100:	3960a6a8 	ldrb	w8, [x21,#2089]
    1104:	36200128 	tbz	w8, #4, 1128 <stmmac_poll+0x300>
    1108:	f940cb82 	ldr	x2, [x28,#400]
    110c:	d2800000 	mov	x0, #0x0                   	// #0
    1110:	f2a00000 	movk	x0, #0x0, lsl #16
    1114:	f2c00000 	movk	x0, #0x0, lsl #32
    1118:	93407f43 	sxtw	x3, w26
    111c:	f2e00000 	movk	x0, #0x0, lsl #48
    1120:	52800041 	mov	w1, #0x2                   	// #2
    1124:	94000000 	bl	0 <print_hex_dump_bytes>
    1128:	b940f2a8 	ldr	w8, [x21,#240]
    112c:	340004a8 	cbz	w8, 11c0 <stmmac_poll+0x398>
    1130:	f94112a8 	ldr	x8, [x21,#544]
    1134:	b94946a1 	ldr	w1, [x21,#2372]
    1138:	aa1b03e0 	mov	x0, x27
    113c:	f9400508 	ldr	x8, [x8,#8]
    1140:	f9404908 	ldr	x8, [x8,#144]
    1144:	d63f0100 	blr	x8
    1148:	34000100 	cbz	w0, 1168 <stmmac_poll+0x340>
    114c:	f9410aa0 	ldr	x0, [x21,#528]
    1150:	d2800001 	mov	x1, #0x0                   	// #0
    1154:	f2a00001 	movk	x1, #0x0, lsl #16
    1158:	f2c00001 	movk	x1, #0x0, lsl #32
    115c:	f2e00001 	movk	x1, #0x0, lsl #48
    1160:	94000000 	bl	0 <netdev_err>
    1164:	14000017 	b	11c0 <stmmac_poll+0x398>
    1168:	f94112a8 	ldr	x8, [x21,#544]
    116c:	f94342a9 	ldr	x9, [x21,#1664]
    1170:	b94946a1 	ldr	w1, [x21,#2372]
    1174:	f9400508 	ldr	x8, [x8,#8]
    1178:	b940b129 	ldr	w9, [x9,#176]
    117c:	f9404508 	ldr	x8, [x8,#136]
    1180:	7100013f 	cmp	w9, #0x0
    1184:	9a940360 	csel	x0, x27, x20, eq
    1188:	d63f0100 	blr	x8
    118c:	f9410aa8 	ldr	x8, [x21,#528]
    1190:	d2800001 	mov	x1, #0x0                   	// #0
    1194:	f2a00001 	movk	x1, #0x0, lsl #16
    1198:	aa0003f3 	mov	x19, x0
    119c:	f2c00001 	movk	x1, #0x0, lsl #32
    11a0:	f2e00001 	movk	x1, #0x0, lsl #48
    11a4:	aa0803e0 	mov	x0, x8
    11a8:	aa1303e2 	mov	x2, x19
    11ac:	94000000 	bl	0 <netdev_info>
    11b0:	f940c388 	ldr	x8, [x28,#384]
    11b4:	b9417389 	ldr	w9, [x28,#368]
    11b8:	8b090108 	add	x8, x8, x9
    11bc:	f9000913 	str	x19, [x8,#16]
    11c0:	f9410aa1 	ldr	x1, [x21,#528]
    11c4:	3943c428 	ldrb	w8, [x1,#241]
    11c8:	360002e8 	tbz	w8, #0, 1224 <stmmac_poll+0x3fc>
    11cc:	f940cb88 	ldr	x8, [x28,#400]
    11d0:	5295110a 	mov	w10, #0xa888                	// #43144
    11d4:	79401909 	ldrh	w9, [x8,#12]
    11d8:	6b0a013f 	cmp	w9, w10
    11dc:	54000060 	b.eq	11e8 <stmmac_poll+0x3c0>
    11e0:	7102053f 	cmp	w9, #0x81
    11e4:	54000201 	b.ne	1224 <stmmac_poll+0x3fc>
    11e8:	f9400109 	ldr	x9, [x8]
    11ec:	b940090a 	ldr	w10, [x8,#8]
    11f0:	79401d13 	ldrh	w19, [x8,#14]
    11f4:	52800081 	mov	w1, #0x4                   	// #4
    11f8:	aa1c03e0 	mov	x0, x28
    11fc:	f8004109 	stur	x9, [x8,#4]
    1200:	b9000d0a 	str	w10, [x8,#12]
    1204:	94000000 	bl	0 <skb_pull>
    1208:	52801028 	mov	w8, #0x81                  	// #129
    120c:	79027b88 	strh	w8, [x28,#316]
    1210:	321c0268 	orr	w8, w19, #0x10
    1214:	5ac00908 	rev	w8, w8
    1218:	53107d08 	lsr	w8, w8, #16
    121c:	79027f88 	strh	w8, [x28,#318]
    1220:	f9410aa1 	ldr	x1, [x21,#528]
    1224:	aa1c03e0 	mov	x0, x28
    1228:	94000000 	bl	0 <eth_type_trans>
    122c:	7902ab80 	strh	w0, [x28,#340]
    1230:	34000117 	cbz	w23, 1250 <stmmac_poll+0x428>
    1234:	aa1c03e8 	mov	x8, x28
    1238:	784f8d09 	ldrh	w9, [x8,#248]!
    123c:	3940090a 	ldrb	w10, [x8,#2]
    1240:	33101d49 	bfi	w9, w10, #16, #8
    1244:	12167929 	and	w9, w9, #0xfffffdff
    1248:	32180129 	orr	w9, w9, #0x100
    124c:	79000109 	strh	w9, [x8]
    1250:	f94013e0 	ldr	x0, [sp,#32]
    1254:	aa1c03e1 	mov	x1, x28
    1258:	94000000 	bl	0 <napi_gro_receive>
    125c:	f9410aa8 	ldr	x8, [x21,#528]
    1260:	f9409909 	ldr	x9, [x8,#304]
    1264:	91000529 	add	x9, x9, #0x1
    1268:	f9009909 	str	x9, [x8,#304]
    126c:	f9410aa8 	ldr	x8, [x21,#528]
    1270:	f940a109 	ldr	x9, [x8,#320]
    1274:	8b3ac129 	add	x9, x9, w26, sxtw
    1278:	f900a109 	str	x9, [x8,#320]
    127c:	17ffff2d 	b	f30 <stmmac_poll+0x108>
    1280:	f9410aa8 	ldr	x8, [x21,#528]
    1284:	f940a909 	ldr	x9, [x8,#336]
    1288:	91000529 	add	x9, x9, #0x1
    128c:	f900a909 	str	x9, [x8,#336]
    1290:	b940f2a8 	ldr	w8, [x21,#240]
    1294:	34ffe4e8 	cbz	w8, f30 <stmmac_poll+0x108>
    1298:	b948b6a8 	ldr	w8, [x21,#2228]
    129c:	35ffe4a8 	cbnz	w8, f30 <stmmac_poll+0x108>
    12a0:	f9406aa8 	ldr	x8, [x21,#208]
    12a4:	937d7e69 	sbfiz	x9, x19, #3, #32
    12a8:	f829691f 	str	xzr, [x8,x9]
    12ac:	f9407ea8 	ldr	x8, [x21,#248]
    12b0:	f9410ea0 	ldr	x0, [x21,#536]
    12b4:	b940e2a2 	ldr	w2, [x21,#224]
    12b8:	f8696901 	ldr	x1, [x8,x9]
    12bc:	b4000060 	cbz	x0, 12c8 <stmmac_poll+0x4a0>
    12c0:	f9412408 	ldr	x8, [x0,#584]
    12c4:	b5000048 	cbnz	x8, 12cc <stmmac_poll+0x4a4>
    12c8:	f9400fe8 	ldr	x8, [sp,#24]
    12cc:	f9401508 	ldr	x8, [x8,#40]
    12d0:	b4ffe308 	cbz	x8, f30 <stmmac_poll+0x108>
    12d4:	52800043 	mov	w3, #0x2                   	// #2
    12d8:	aa1f03e4 	mov	x4, xzr
    12dc:	d63f0100 	blr	x8
    12e0:	17ffff14 	b	f30 <stmmac_poll+0x108>
    12e4:	f9410aa1 	ldr	x1, [x21,#528]
    12e8:	d2800000 	mov	x0, #0x0                   	// #0
    12ec:	f2a00000 	movk	x0, #0x0, lsl #16
    12f0:	f2c00000 	movk	x0, #0x0, lsl #32
    12f4:	f2e00000 	movk	x0, #0x0, lsl #48
    12f8:	94000000 	bl	0 <printk>
    12fc:	f9410aa8 	ldr	x8, [x21,#528]
    1300:	f940b109 	ldr	x9, [x8,#352]
    1304:	91000529 	add	x9, x9, #0x1
    1308:	f900b109 	str	x9, [x8,#352]
    130c:	17ffff09 	b	f30 <stmmac_poll+0x108>
    1310:	f9410aa0 	ldr	x0, [x21,#528]
    1314:	52800402 	mov	w2, #0x20                  	// #32
    1318:	11000b41 	add	w1, w26, #0x2
    131c:	72a04102 	movk	w2, #0x208, lsl #16
    1320:	94000000 	bl	0 <__netdev_alloc_skb>
    1324:	b4000600 	cbz	x0, 13e4 <stmmac_poll+0x5bc>
    1328:	f940c808 	ldr	x8, [x0,#400]
    132c:	b9416009 	ldr	w9, [x0,#352]
    1330:	aa0003fc 	mov	x28, x0
    1334:	93407f42 	sxtw	x2, w26
    1338:	91000900 	add	x0, x8, #0x2
    133c:	11000928 	add	w8, w9, #0x2
    1340:	f900cb80 	str	x0, [x28,#400]
    1344:	b9016388 	str	w8, [x28,#352]
    1348:	f9407ea9 	ldr	x9, [x21,#248]
    134c:	f9410ea8 	ldr	x8, [x21,#536]
    1350:	f873d921 	ldr	x1, [x9,w19,sxtw #3]
    1354:	b4000068 	cbz	x8, 1360 <stmmac_poll+0x538>
    1358:	f9412509 	ldr	x9, [x8,#584]
    135c:	b5000049 	cbnz	x9, 1364 <stmmac_poll+0x53c>
    1360:	f9400fe9 	ldr	x9, [sp,#24]
    1364:	f9402929 	ldr	x9, [x9,#80]
    1368:	93407e73 	sxtw	x19, w19
    136c:	f90003e2 	str	x2, [sp]
    1370:	b40000a9 	cbz	x9, 1384 <stmmac_poll+0x55c>
    1374:	52800043 	mov	w3, #0x2                   	// #2
    1378:	aa0803e0 	mov	x0, x8
    137c:	d63f0120 	blr	x9
    1380:	f940cb80 	ldr	x0, [x28,#400]
    1384:	f9406aa8 	ldr	x8, [x21,#208]
    1388:	d37df273 	lsl	x19, x19, #3
    138c:	2a1a03e2 	mov	w2, w26
    1390:	f8736908 	ldr	x8, [x8,x19]
    1394:	f940c901 	ldr	x1, [x8,#400]
    1398:	94000000 	bl	0 <memcpy>
    139c:	aa1c03e0 	mov	x0, x28
    13a0:	2a1a03e1 	mov	w1, w26
    13a4:	94000000 	bl	0 <skb_put>
    13a8:	f9407ea8 	ldr	x8, [x21,#248]
    13ac:	f9410ea0 	ldr	x0, [x21,#536]
    13b0:	f8736901 	ldr	x1, [x8,x19]
    13b4:	b4000060 	cbz	x0, 13c0 <stmmac_poll+0x598>
    13b8:	f9412408 	ldr	x8, [x0,#584]
    13bc:	b5000048 	cbnz	x8, 13c4 <stmmac_poll+0x59c>
    13c0:	f9400fe8 	ldr	x8, [sp,#24]
    13c4:	f9402d08 	ldr	x8, [x8,#88]
    13c8:	f94003e2 	ldr	x2, [sp]
    13cc:	b4ffe9a8 	cbz	x8, 1100 <stmmac_poll+0x2d8>
    13d0:	52800043 	mov	w3, #0x2                   	// #2
    13d4:	d63f0100 	blr	x8
    13d8:	3960a6a8 	ldrb	w8, [x21,#2089]
    13dc:	3727e968 	tbnz	w8, #4, 1108 <stmmac_poll+0x2e0>
    13e0:	17ffff52 	b	1128 <stmmac_poll+0x300>
    13e4:	94000000 	bl	0 <net_ratelimit>
    13e8:	34fff8a0 	cbz	w0, 12fc <stmmac_poll+0x4d4>
    13ec:	f9410ea0 	ldr	x0, [x21,#536]
    13f0:	d2800001 	mov	x1, #0x0                   	// #0
    13f4:	f2a00001 	movk	x1, #0x0, lsl #16
    13f8:	f2c00001 	movk	x1, #0x0, lsl #32
    13fc:	f2e00001 	movk	x1, #0x0, lsl #48
    1400:	94000000 	bl	0 <dev_warn>
    1404:	17ffffbe 	b	12fc <stmmac_poll+0x4d4>
    1408:	b9402ff6 	ldr	w22, [sp,#44]
    140c:	f94007fb 	ldr	x27, [sp,#8]
    1410:	14000002 	b	1418 <stmmac_poll+0x5f0>
    1414:	2a1f03f6 	mov	w22, wzr
    1418:	295b5ea8 	ldp	w8, w23, [x21,#216]
    141c:	6b170108 	subs	w8, w8, w23
    1420:	1a9f27e9 	cset	w9, cc
    1424:	0b092514 	add	w20, w8, w9, lsl #9
    1428:	7100069f 	cmp	w20, #0x1
    142c:	5400114b 	b.lt	1654 <stmmac_poll+0x82c>
    1430:	b980e2b8 	ldrsw	x24, [x21,#224]
    1434:	f2a0001b 	movk	x27, #0x0, lsl #16
    1438:	f2c0001b 	movk	x27, #0x0, lsl #32
    143c:	f2e0001b 	movk	x27, #0x0, lsl #48
    1440:	11000b19 	add	w25, w24, #0x2
    1444:	b948b6a8 	ldr	w8, [x21,#2228]
    1448:	340000a8 	cbz	w8, 145c <stmmac_poll+0x634>
    144c:	f94066a8 	ldr	x8, [x21,#200]
    1450:	2a1703fc 	mov	w28, w23
    1454:	8b1c1513 	add	x19, x8, x28, lsl #5
    1458:	14000004 	b	1468 <stmmac_poll+0x640>
    145c:	f94062a8 	ldr	x8, [x21,#192]
    1460:	2a1703fc 	mov	w28, w23
    1464:	8b375113 	add	x19, x8, w23, uxtw #4
    1468:	f9406aa8 	ldr	x8, [x21,#208]
    146c:	f87c7908 	ldr	x8, [x8,x28,lsl #3]
    1470:	b5000968 	cbnz	x8, 159c <stmmac_poll+0x774>
    1474:	f9410aa0 	ldr	x0, [x21,#528]
    1478:	52800402 	mov	w2, #0x20                  	// #32
    147c:	72a04102 	movk	w2, #0x208, lsl #16
    1480:	2a1903e1 	mov	w1, w25
    1484:	94000000 	bl	0 <__netdev_alloc_skb>
    1488:	b4000be0 	cbz	x0, 1604 <stmmac_poll+0x7dc>
    148c:	f940c808 	ldr	x8, [x0,#400]
    1490:	b9416009 	ldr	w9, [x0,#352]
    1494:	aa0003fa 	mov	x26, x0
    1498:	91000908 	add	x8, x8, #0x2
    149c:	11000929 	add	w9, w9, #0x2
    14a0:	f900c808 	str	x8, [x0,#400]
    14a4:	b9016009 	str	w9, [x0,#352]
    14a8:	f9406aa8 	ldr	x8, [x21,#208]
    14ac:	f83c7900 	str	x0, [x8,x28,lsl #3]
    14b0:	f9410ea0 	ldr	x0, [x21,#536]
    14b4:	f940cb48 	ldr	x8, [x26,#400]
    14b8:	b4000060 	cbz	x0, 14c4 <stmmac_poll+0x69c>
    14bc:	f9412409 	ldr	x9, [x0,#584]
    14c0:	b5000049 	cbnz	x9, 14c8 <stmmac_poll+0x6a0>
    14c4:	aa1b03e9 	mov	x9, x27
    14c8:	f9401129 	ldr	x9, [x9,#32]
    14cc:	d346fd0a 	lsr	x10, x8, #6
    14d0:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    14d4:	927a654a 	and	x10, x10, #0xffffffc0
    14d8:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    14dc:	aa0b0141 	orr	x1, x10, x11
    14e0:	92402d02 	and	x2, x8, #0xfff
    14e4:	52800044 	mov	w4, #0x2                   	// #2
    14e8:	aa1803e3 	mov	x3, x24
    14ec:	aa1f03e5 	mov	x5, xzr
    14f0:	d63f0120 	blr	x9
    14f4:	f9407ea8 	ldr	x8, [x21,#248]
    14f8:	d37df389 	lsl	x9, x28, #3
    14fc:	f8296900 	str	x0, [x8,x9]
    1500:	f9407ea8 	ldr	x8, [x21,#248]
    1504:	f9410ea0 	ldr	x0, [x21,#536]
    1508:	f8696901 	ldr	x1, [x8,x9]
    150c:	b40001a0 	cbz	x0, 1540 <stmmac_poll+0x718>
    1510:	f9412408 	ldr	x8, [x0,#584]
    1514:	b4000168 	cbz	x8, 1540 <stmmac_poll+0x718>
    1518:	f9403908 	ldr	x8, [x8,#112]
    151c:	b4000188 	cbz	x8, 154c <stmmac_poll+0x724>
    1520:	b4000060 	cbz	x0, 152c <stmmac_poll+0x704>
    1524:	f9412408 	ldr	x8, [x0,#584]
    1528:	b5000048 	cbnz	x8, 1530 <stmmac_poll+0x708>
    152c:	aa1b03e8 	mov	x8, x27
    1530:	f9403908 	ldr	x8, [x8,#112]
    1534:	d63f0100 	blr	x8
    1538:	34000100 	cbz	w0, 1558 <stmmac_poll+0x730>
    153c:	1400003e 	b	1634 <stmmac_poll+0x80c>
    1540:	aa1b03e8 	mov	x8, x27
    1544:	f9403908 	ldr	x8, [x8,#112]
    1548:	b5fffec8 	cbnz	x8, 1520 <stmmac_poll+0x6f8>
    154c:	b100043f 	cmn	x1, #0x1
    1550:	1a9f17e0 	cset	w0, eq
    1554:	35000700 	cbnz	w0, 1634 <stmmac_poll+0x80c>
    1558:	f9407ea8 	ldr	x8, [x21,#248]
    155c:	b94826a9 	ldr	w9, [x21,#2084]
    1560:	f87c7908 	ldr	x8, [x8,x28,lsl #3]
    1564:	7101013f 	cmp	w9, #0x40
    1568:	540003aa 	b.ge	15dc <stmmac_poll+0x7b4>
    156c:	b9000a68 	str	w8, [x19,#8]
    1570:	f94112a8 	ldr	x8, [x21,#544]
    1574:	f9400d08 	ldr	x8, [x8,#24]
    1578:	f9401508 	ldr	x8, [x8,#40]
    157c:	b4000088 	cbz	x8, 158c <stmmac_poll+0x764>
    1580:	aa1503e0 	mov	x0, x21
    1584:	aa1303e1 	mov	x1, x19
    1588:	d63f0100 	blr	x8
    158c:	b940eaa8 	ldr	w8, [x21,#232]
    1590:	34000068 	cbz	w8, 159c <stmmac_poll+0x774>
    1594:	51000508 	sub	w8, w8, #0x1
    1598:	b900eaa8 	str	w8, [x21,#232]
    159c:	d5033e9f 	dsb	st
    15a0:	f94112a8 	ldr	x8, [x21,#544]
    15a4:	b94826a9 	ldr	w9, [x21,#2084]
    15a8:	51000694 	sub	w20, w20, #0x1
    15ac:	f9400508 	ldr	x8, [x8,#8]
    15b0:	7101013f 	cmp	w9, #0x40
    15b4:	5400018a 	b.ge	15e4 <stmmac_poll+0x7bc>
    15b8:	f9402d08 	ldr	x8, [x8,#88]
    15bc:	aa1303e0 	mov	x0, x19
    15c0:	d63f0100 	blr	x8
    15c4:	d5033e9f 	dsb	st
    15c8:	110006e8 	add	w8, w23, #0x1
    15cc:	7100029f 	cmp	w20, #0x0
    15d0:	12002117 	and	w23, w8, #0x1ff
    15d4:	54fff38c 	b.gt	1444 <stmmac_poll+0x61c>
    15d8:	1400001f 	b	1654 <stmmac_poll+0x82c>
    15dc:	29007e68 	stp	w8, wzr, [x19]
    15e0:	17ffffe4 	b	1570 <stmmac_poll+0x748>
    15e4:	f9400108 	ldr	x8, [x8]
    15e8:	b9494aa1 	ldr	w1, [x21,#2376]
    15ec:	b940e2a4 	ldr	w4, [x21,#224]
    15f0:	aa1303e0 	mov	x0, x19
    15f4:	2a1f03e2 	mov	w2, wzr
    15f8:	2a1f03e3 	mov	w3, wzr
    15fc:	d63f0100 	blr	x8
    1600:	17fffff1 	b	15c4 <stmmac_poll+0x79c>
    1604:	52801008 	mov	w8, #0x80                  	// #128
    1608:	b900eaa8 	str	w8, [x21,#232]
    160c:	94000000 	bl	0 <net_ratelimit>
    1610:	34000220 	cbz	w0, 1654 <stmmac_poll+0x82c>
    1614:	f9410ea0 	ldr	x0, [x21,#536]
    1618:	d2800001 	mov	x1, #0x0                   	// #0
    161c:	f2a00001 	movk	x1, #0x0, lsl #16
    1620:	f2c00001 	movk	x1, #0x0, lsl #32
    1624:	f2e00001 	movk	x1, #0x0, lsl #48
    1628:	2a1703e2 	mov	w2, w23
    162c:	94000000 	bl	0 <dev_err>
    1630:	14000009 	b	1654 <stmmac_poll+0x82c>
    1634:	f9410ea0 	ldr	x0, [x21,#536]
    1638:	d2800001 	mov	x1, #0x0                   	// #0
    163c:	f2a00001 	movk	x1, #0x0, lsl #16
    1640:	f2c00001 	movk	x1, #0x0, lsl #32
    1644:	f2e00001 	movk	x1, #0x0, lsl #48
    1648:	94000000 	bl	0 <dev_err>
    164c:	aa1a03e0 	mov	x0, x26
    1650:	94000000 	bl	0 <consume_skb>
    1654:	f9421ea8 	ldr	x8, [x21,#1080]
    1658:	b9402fe9 	ldr	w9, [sp,#44]
    165c:	b900deb7 	str	w23, [x21,#220]
    1660:	8b364108 	add	x8, x8, w22, uxtw
    1664:	6b0902df 	cmp	w22, w9
    1668:	f9021ea8 	str	x8, [x21,#1080]
    166c:	5400014a 	b.ge	1694 <stmmac_poll+0x86c>
    1670:	f9400bf3 	ldr	x19, [sp,#16]
    1674:	2a1f03e1 	mov	w1, wzr
    1678:	aa1303e0 	mov	x0, x19
    167c:	94000000 	bl	0 <napi_complete_done>
    1680:	f9407268 	ldr	x8, [x19,#224]
    1684:	f9406660 	ldr	x0, [x19,#200]
    1688:	f9400908 	ldr	x8, [x8,#16]
    168c:	f9401d08 	ldr	x8, [x8,#56]
    1690:	d63f0100 	blr	x8
    1694:	2a1603e0 	mov	w0, w22
    1698:	a9487bfd 	ldp	x29, x30, [sp,#128]
    169c:	a9474ff4 	ldp	x20, x19, [sp,#112]
    16a0:	a94657f6 	ldp	x22, x21, [sp,#96]
    16a4:	a9455ff8 	ldp	x24, x23, [sp,#80]
    16a8:	a94467fa 	ldp	x26, x25, [sp,#64]
    16ac:	a9436ffc 	ldp	x28, x27, [sp,#48]
    16b0:	910243ff 	add	sp, sp, #0x90
    16b4:	d65f03c0 	ret

00000000000016b8 <stmmac_dvr_remove>:
    16b8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    16bc:	a9017bfd 	stp	x29, x30, [sp,#16]
    16c0:	910043fd 	add	x29, sp, #0x10
    16c4:	aa0003f3 	mov	x19, x0
    16c8:	94000000 	bl	0 <_mcount>
    16cc:	d2800000 	mov	x0, #0x0                   	// #0
    16d0:	d2800001 	mov	x1, #0x0                   	// #0
    16d4:	f9405273 	ldr	x19, [x19,#160]
    16d8:	f2a00000 	movk	x0, #0x0, lsl #16
    16dc:	f2a00001 	movk	x1, #0x0, lsl #16
    16e0:	f2c00000 	movk	x0, #0x0, lsl #32
    16e4:	f2c00001 	movk	x1, #0x0, lsl #32
    16e8:	f2e00000 	movk	x0, #0x0, lsl #48
    16ec:	f2e00001 	movk	x1, #0x0, lsl #48
    16f0:	94000000 	bl	0 <printk>
    16f4:	f9459268 	ldr	x8, [x19,#2848]
    16f8:	f9458660 	ldr	x0, [x19,#2824]
    16fc:	f9400908 	ldr	x8, [x8,#16]
    1700:	f9403108 	ldr	x8, [x8,#96]
    1704:	d63f0100 	blr	x8
    1708:	f9459268 	ldr	x8, [x19,#2848]
    170c:	f9458660 	ldr	x0, [x19,#2824]
    1710:	f9400908 	ldr	x8, [x8,#16]
    1714:	f9402908 	ldr	x8, [x8,#80]
    1718:	d63f0100 	blr	x8
    171c:	f9458660 	ldr	x0, [x19,#2824]
    1720:	2a1f03e1 	mov	w1, wzr
    1724:	94000000 	bl	83d8 <stmmac_set_mac>
    1728:	aa1303e0 	mov	x0, x19
    172c:	94000000 	bl	0 <netif_carrier_off>
    1730:	aa1303e0 	mov	x0, x19
    1734:	94000000 	bl	0 <unregister_netdev>
    1738:	f948a660 	ldr	x0, [x19,#4424]
    173c:	b4000040 	cbz	x0, 1744 <stmmac_dvr_remove+0x8c>
    1740:	94000000 	bl	0 <reset_control_assert>
    1744:	f948a274 	ldr	x20, [x19,#4416]
    1748:	aa1403e0 	mov	x0, x20
    174c:	94000000 	bl	0 <clk_disable>
    1750:	aa1403e0 	mov	x0, x20
    1754:	94000000 	bl	0 <clk_unprepare>
    1758:	f9489e74 	ldr	x20, [x19,#4408]
    175c:	aa1403e0 	mov	x0, x20
    1760:	94000000 	bl	0 <clk_disable>
    1764:	aa1403e0 	mov	x0, x20
    1768:	94000000 	bl	0 <clk_unprepare>
    176c:	f9459268 	ldr	x8, [x19,#2848]
    1770:	b9405908 	ldr	w8, [x8,#88]
    1774:	7100211f 	cmp	w8, #0x8
    1778:	540000c8 	b.hi	1790 <stmmac_dvr_remove+0xd8>
    177c:	52800029 	mov	w9, #0x1                   	// #1
    1780:	1ac82128 	lsl	w8, w9, w8
    1784:	52802249 	mov	w9, #0x112                 	// #274
    1788:	6a09011f 	tst	w8, w9
    178c:	54000061 	b.ne	1798 <stmmac_dvr_remove+0xe0>
    1790:	aa1303e0 	mov	x0, x19
    1794:	94000000 	bl	73a4 <stmmac_mdio_unregister>
    1798:	aa1303e0 	mov	x0, x19
    179c:	94000000 	bl	0 <free_netdev>
    17a0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    17a4:	2a1f03e0 	mov	w0, wzr
    17a8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    17ac:	d65f03c0 	ret

00000000000017b0 <stmmac_suspend>:
    17b0:	f81d0ff5 	str	x21, [sp,#-48]!
    17b4:	a9014ff4 	stp	x20, x19, [sp,#16]
    17b8:	a9027bfd 	stp	x29, x30, [sp,#32]
    17bc:	910083fd 	add	x29, sp, #0x20
    17c0:	aa0003f3 	mov	x19, x0
    17c4:	94000000 	bl	0 <_mcount>
    17c8:	f9405273 	ldr	x19, [x19,#160]
    17cc:	b4000813 	cbz	x19, 18cc <stmmac_suspend+0x11c>
    17d0:	f9402668 	ldr	x8, [x19,#72]
    17d4:	360007c8 	tbz	w8, #0, 18cc <stmmac_suspend+0x11c>
    17d8:	f945a260 	ldr	x0, [x19,#2880]
    17dc:	b4000040 	cbz	x0, 17e4 <stmmac_suspend+0x34>
    17e0:	94000000 	bl	0 <phy_stop>
    17e4:	912ca274 	add	x20, x19, #0xb28
    17e8:	aa1403e0 	mov	x0, x20
    17ec:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    17f0:	aa0003f5 	mov	x21, x0
    17f4:	aa1303e0 	mov	x0, x19
    17f8:	94000000 	bl	0 <netif_device_detach>
    17fc:	f941e268 	ldr	x8, [x19,#960]
    1800:	2a1f03e0 	mov	w0, wzr
    1804:	91024101 	add	x1, x8, #0x90
    1808:	94000000 	bl	0 <set_bit>
    180c:	aa1403e0 	mov	x0, x20
    1810:	aa1503e1 	mov	x1, x21
    1814:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    1818:	91290260 	add	x0, x19, #0xa40
    181c:	94000000 	bl	0 <napi_disable>
    1820:	aa1403e0 	mov	x0, x20
    1824:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    1828:	f9459268 	ldr	x8, [x19,#2848]
    182c:	aa0003f5 	mov	x21, x0
    1830:	f9400908 	ldr	x8, [x8,#16]
    1834:	f9402909 	ldr	x9, [x8,#80]
    1838:	f9458668 	ldr	x8, [x19,#2824]
    183c:	aa0803e0 	mov	x0, x8
    1840:	d63f0120 	blr	x9
    1844:	f9459268 	ldr	x8, [x19,#2848]
    1848:	f9458660 	ldr	x0, [x19,#2824]
    184c:	f9400908 	ldr	x8, [x8,#16]
    1850:	f9403108 	ldr	x8, [x8,#96]
    1854:	d63f0100 	blr	x8
    1858:	f9458e68 	ldr	x8, [x19,#2840]
    185c:	3942b109 	ldrb	w9, [x8,#172]
    1860:	36000169 	tbz	w9, #0, 188c <stmmac_suspend+0xdc>
    1864:	f9407508 	ldr	x8, [x8,#232]
    1868:	b4000128 	cbz	x8, 188c <stmmac_suspend+0xdc>
    186c:	f9459260 	ldr	x0, [x19,#2848]
    1870:	52800401 	mov	w1, #0x20                  	// #32
    1874:	f9400008 	ldr	x8, [x0]
    1878:	f9401908 	ldr	x8, [x8,#48]
    187c:	d63f0100 	blr	x8
    1880:	52800028 	mov	w8, #0x1                   	// #1
    1884:	b9124e68 	str	w8, [x19,#4684]
    1888:	1400000a 	b	18b0 <stmmac_suspend+0x100>
    188c:	f9458660 	ldr	x0, [x19,#2824]
    1890:	2a1f03e1 	mov	w1, wzr
    1894:	94000000 	bl	83d8 <stmmac_set_mac>
    1898:	f9458e60 	ldr	x0, [x19,#2840]
    189c:	94000000 	bl	0 <pinctrl_pm_select_sleep_state>
    18a0:	f948a260 	ldr	x0, [x19,#4416]
    18a4:	94000000 	bl	0 <clk_disable>
    18a8:	f9489e60 	ldr	x0, [x19,#4408]
    18ac:	94000000 	bl	0 <clk_disable>
    18b0:	aa1403e0 	mov	x0, x20
    18b4:	aa1503e1 	mov	x1, x21
    18b8:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    18bc:	6f00e400 	movi	v0.2d, #0x0
    18c0:	12800008 	mov	w8, #0xffffffff            	// #-1
    18c4:	fd05a660 	str	d0, [x19,#2888]
    18c8:	b90b5268 	str	w8, [x19,#2896]
    18cc:	a9427bfd 	ldp	x29, x30, [sp,#32]
    18d0:	a9414ff4 	ldp	x20, x19, [sp,#16]
    18d4:	2a1f03e0 	mov	w0, wzr
    18d8:	f84307f5 	ldr	x21, [sp],#48
    18dc:	d65f03c0 	ret

00000000000018e0 <stmmac_resume>:
    18e0:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    18e4:	a90157f6 	stp	x22, x21, [sp,#16]
    18e8:	a9024ff4 	stp	x20, x19, [sp,#32]
    18ec:	a9037bfd 	stp	x29, x30, [sp,#48]
    18f0:	9100c3fd 	add	x29, sp, #0x30
    18f4:	aa0003f3 	mov	x19, x0
    18f8:	94000000 	bl	0 <_mcount>
    18fc:	f9405273 	ldr	x19, [x19,#160]
    1900:	f9402668 	ldr	x8, [x19,#72]
    1904:	36000d48 	tbz	w8, #0, 1aac <stmmac_resume+0x1cc>
    1908:	f9458e60 	ldr	x0, [x19,#2840]
    190c:	91240274 	add	x20, x19, #0x900
    1910:	3942b008 	ldrb	w8, [x0,#172]
    1914:	36000248 	tbz	w8, #0, 195c <stmmac_resume+0x7c>
    1918:	f9407408 	ldr	x8, [x0,#232]
    191c:	b4000208 	cbz	x8, 195c <stmmac_resume+0x7c>
    1920:	912ca275 	add	x21, x19, #0xb28
    1924:	aa1503e0 	mov	x0, x21
    1928:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    192c:	f9459268 	ldr	x8, [x19,#2848]
    1930:	aa0003f6 	mov	x22, x0
    1934:	aa1f03e1 	mov	x1, xzr
    1938:	f9400109 	ldr	x9, [x8]
    193c:	aa0803e0 	mov	x0, x8
    1940:	f9401929 	ldr	x9, [x9,#48]
    1944:	d63f0120 	blr	x9
    1948:	aa1503e0 	mov	x0, x21
    194c:	aa1603e1 	mov	x1, x22
    1950:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    1954:	b9124e7f 	str	wzr, [x19,#4684]
    1958:	14000009 	b	197c <stmmac_resume+0x9c>
    195c:	94000000 	bl	0 <pinctrl_pm_select_default_state>
    1960:	f9489e60 	ldr	x0, [x19,#4408]
    1964:	94000000 	bl	0 <clk_enable>
    1968:	f948a260 	ldr	x0, [x19,#4416]
    196c:	94000000 	bl	0 <clk_enable>
    1970:	f945b260 	ldr	x0, [x19,#2912]
    1974:	b4000040 	cbz	x0, 197c <stmmac_resume+0x9c>
    1978:	94000000 	bl	6a90 <stmmac_mdio_reset>
    197c:	aa1303e0 	mov	x0, x19
    1980:	94000000 	bl	0 <netif_device_attach>
    1984:	912ca275 	add	x21, x19, #0xb28
    1988:	aa1503e0 	mov	x0, x21
    198c:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    1990:	aa0003f6 	mov	x22, x0
    1994:	6f00e400 	movi	v0.2d, #0x0
    1998:	aa1403e0 	mov	x0, x20
    199c:	fd04ee60 	str	d0, [x19,#2520]
    19a0:	fd048e60 	str	d0, [x19,#2328]
    19a4:	b912727f 	str	wzr, [x19,#4720]
    19a8:	94000049 	bl	1acc <stmmac_clear_descriptors>
    19ac:	aa1503e0 	mov	x0, x21
    19b0:	aa1603e1 	mov	x1, x22
    19b4:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    19b8:	aa1303e0 	mov	x0, x19
    19bc:	2a1f03e1 	mov	w1, wzr
    19c0:	94000079 	bl	1ba4 <stmmac_hw_setup>
    19c4:	aa1503e0 	mov	x0, x21
    19c8:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    19cc:	d2800008 	mov	x8, #0x0                   	// #0
    19d0:	f2a00008 	movk	x8, #0x0, lsl #16
    19d4:	f2c00008 	movk	x8, #0x0, lsl #32
    19d8:	f2e00008 	movk	x8, #0x0, lsl #48
    19dc:	fd400100 	ldr	d0, [x8]
    19e0:	91254277 	add	x23, x19, #0x950
    19e4:	aa0003f6 	mov	x22, x0
    19e8:	91249268 	add	x8, x19, #0x924
    19ec:	aa1703e0 	mov	x0, x23
    19f0:	2a1f03e1 	mov	w1, wzr
    19f4:	aa1f03e2 	mov	x2, xzr
    19f8:	aa1f03e3 	mov	x3, xzr
    19fc:	fd000100 	str	d0, [x8]
    1a00:	94000000 	bl	0 <init_timer_key>
    1a04:	d2800008 	mov	x8, #0x0                   	// #0
    1a08:	f2a00008 	movk	x8, #0x0, lsl #16
    1a0c:	f2c00008 	movk	x8, #0x0, lsl #32
    1a10:	f2e00008 	movk	x8, #0x0, lsl #48
    1a14:	f9400118 	ldr	x24, [x8]
    1a18:	b9492a60 	ldr	w0, [x19,#2344]
    1a1c:	94000000 	bl	0 <__usecs_to_jiffies>
    1a20:	d2800009 	mov	x9, #0x0                   	// #0
    1a24:	f2a00009 	movk	x9, #0x0, lsl #16
    1a28:	f2c00009 	movk	x9, #0x0, lsl #32
    1a2c:	8b180008 	add	x8, x0, x24
    1a30:	f2e00009 	movk	x9, #0x0, lsl #48
    1a34:	aa1703e0 	mov	x0, x23
    1a38:	f904ba74 	str	x20, [x19,#2416]
    1a3c:	f904b268 	str	x8, [x19,#2400]
    1a40:	f904b669 	str	x9, [x19,#2408]
    1a44:	94000000 	bl	0 <add_timer>
    1a48:	f9459260 	ldr	x0, [x19,#2848]
    1a4c:	aa1303e1 	mov	x1, x19
    1a50:	f9400008 	ldr	x8, [x0]
    1a54:	f9401108 	ldr	x8, [x8,#32]
    1a58:	d63f0100 	blr	x8
    1a5c:	f9452a68 	ldr	x8, [x19,#2640]
    1a60:	36000328 	tbz	w8, #0, 1ac4 <stmmac_resume+0x1e4>
    1a64:	d5033bbf 	dmb	ish
    1a68:	91294274 	add	x20, x19, #0xa50
    1a6c:	2a1f03e0 	mov	w0, wzr
    1a70:	aa1403e1 	mov	x1, x20
    1a74:	94000000 	bl	0 <clear_bit>
    1a78:	52800040 	mov	w0, #0x2                   	// #2
    1a7c:	aa1403e1 	mov	x1, x20
    1a80:	94000000 	bl	0 <clear_bit>
    1a84:	f941e268 	ldr	x8, [x19,#960]
    1a88:	2a1f03e0 	mov	w0, wzr
    1a8c:	91024101 	add	x1, x8, #0x90
    1a90:	94000000 	bl	0 <clear_bit>
    1a94:	aa1503e0 	mov	x0, x21
    1a98:	aa1603e1 	mov	x1, x22
    1a9c:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    1aa0:	f945a260 	ldr	x0, [x19,#2880]
    1aa4:	b4000040 	cbz	x0, 1aac <stmmac_resume+0x1cc>
    1aa8:	94000000 	bl	0 <phy_start>
    1aac:	a9437bfd 	ldp	x29, x30, [sp,#48]
    1ab0:	a9424ff4 	ldp	x20, x19, [sp,#32]
    1ab4:	a94157f6 	ldp	x22, x21, [sp,#16]
    1ab8:	2a1f03e0 	mov	w0, wzr
    1abc:	a8c45ff8 	ldp	x24, x23, [sp],#64
    1ac0:	d65f03c0 	ret
    1ac4:	d4210000 	brk	#0x800
    1ac8:	14000000 	b	1ac8 <stmmac_resume+0x1e8>

0000000000001acc <stmmac_clear_descriptors>:
    1acc:	f81d0ff5 	str	x21, [sp,#-48]!
    1ad0:	a9014ff4 	stp	x20, x19, [sp,#16]
    1ad4:	a9027bfd 	stp	x29, x30, [sp,#32]
    1ad8:	910083fd 	add	x29, sp, #0x20
    1adc:	aa0003f3 	mov	x19, x0
    1ae0:	94000000 	bl	0 <_mcount>
    1ae4:	aa1f03f4 	mov	x20, xzr
    1ae8:	9287fff5 	mov	x21, #0xffffffffffffc000    	// #-16384
    1aec:	1400000c 	b	1b1c <stmmac_clear_descriptors+0x50>
    1af0:	f9406269 	ldr	x9, [x19,#192]
    1af4:	8b141120 	add	x0, x9, x20, lsl #4
    1af8:	b9494a61 	ldr	w1, [x19,#2376]
    1afc:	b948b262 	ldr	w2, [x19,#2224]
    1b00:	b940e264 	ldr	w4, [x19,#224]
    1b04:	b10082bf 	cmn	x21, #0x20
    1b08:	1a9f17e3 	cset	w3, eq
    1b0c:	d63f0100 	blr	x8
    1b10:	b10082b5 	adds	x21, x21, #0x20
    1b14:	91000694 	add	x20, x20, #0x1
    1b18:	54000140 	b.eq	1b40 <stmmac_clear_descriptors+0x74>
    1b1c:	f9411268 	ldr	x8, [x19,#544]
    1b20:	b948b669 	ldr	w9, [x19,#2228]
    1b24:	f9400508 	ldr	x8, [x8,#8]
    1b28:	f9400108 	ldr	x8, [x8]
    1b2c:	34fffe29 	cbz	w9, 1af0 <stmmac_clear_descriptors+0x24>
    1b30:	f9406669 	ldr	x9, [x19,#200]
    1b34:	8b150129 	add	x9, x9, x21
    1b38:	91401120 	add	x0, x9, #0x4, lsl #12
    1b3c:	17ffffef 	b	1af8 <stmmac_clear_descriptors+0x2c>
    1b40:	aa1f03f4 	mov	x20, xzr
    1b44:	9287fff5 	mov	x21, #0xffffffffffffc000    	// #-16384
    1b48:	1400000a 	b	1b70 <stmmac_clear_descriptors+0xa4>
    1b4c:	f9400669 	ldr	x9, [x19,#8]
    1b50:	8b141120 	add	x0, x9, x20, lsl #4
    1b54:	b948b261 	ldr	w1, [x19,#2224]
    1b58:	b10082bf 	cmn	x21, #0x20
    1b5c:	1a9f17e2 	cset	w2, eq
    1b60:	d63f0100 	blr	x8
    1b64:	b10082b5 	adds	x21, x21, #0x20
    1b68:	91000694 	add	x20, x20, #0x1
    1b6c:	54000140 	b.eq	1b94 <stmmac_clear_descriptors+0xc8>
    1b70:	f9411268 	ldr	x8, [x19,#544]
    1b74:	b948b669 	ldr	w9, [x19,#2228]
    1b78:	f9400508 	ldr	x8, [x8,#8]
    1b7c:	f9400508 	ldr	x8, [x8,#8]
    1b80:	34fffe69 	cbz	w9, 1b4c <stmmac_clear_descriptors+0x80>
    1b84:	f9400269 	ldr	x9, [x19]
    1b88:	8b150129 	add	x9, x9, x21
    1b8c:	91401120 	add	x0, x9, #0x4, lsl #12
    1b90:	17fffff1 	b	1b54 <stmmac_clear_descriptors+0x88>
    1b94:	a9427bfd 	ldp	x29, x30, [sp,#32]
    1b98:	a9414ff4 	ldp	x20, x19, [sp,#16]
    1b9c:	f84307f5 	ldr	x21, [sp],#48
    1ba0:	d65f03c0 	ret

0000000000001ba4 <stmmac_hw_setup>:
    1ba4:	a9bb67fa 	stp	x26, x25, [sp,#-80]!
    1ba8:	a9015ff8 	stp	x24, x23, [sp,#16]
    1bac:	a90257f6 	stp	x22, x21, [sp,#32]
    1bb0:	a9034ff4 	stp	x20, x19, [sp,#48]
    1bb4:	a9047bfd 	stp	x29, x30, [sp,#64]
    1bb8:	910103fd 	add	x29, sp, #0x40
    1bbc:	2a0103f4 	mov	w20, w1
    1bc0:	aa0003f3 	mov	x19, x0
    1bc4:	94000000 	bl	0 <_mcount>
    1bc8:	f947c268 	ldr	x8, [x19,#3968]
    1bcc:	f9401508 	ldr	x8, [x8,#40]
    1bd0:	b4000148 	cbz	x8, 1bf8 <stmmac_hw_setup+0x54>
    1bd4:	29405516 	ldp	w22, w21, [x8]
    1bd8:	b9400917 	ldr	w23, [x8,#8]
    1bdc:	39403118 	ldrb	w24, [x8,#12]
    1be0:	b951b668 	ldr	w8, [x19,#4532]
    1be4:	34000168 	cbz	w8, 1c10 <stmmac_hw_setup+0x6c>
    1be8:	b951b268 	ldr	w8, [x19,#4528]
    1bec:	7100091f 	cmp	w8, #0x2
    1bf0:	1a9f17fa 	cset	w26, eq
    1bf4:	14000008 	b	1c14 <stmmac_hw_setup+0x70>
    1bf8:	2a1f03f5 	mov	w21, wzr
    1bfc:	2a1f03f8 	mov	w24, wzr
    1c00:	2a1f03f7 	mov	w23, wzr
    1c04:	52800116 	mov	w22, #0x8                   	// #8
    1c08:	b951b668 	ldr	w8, [x19,#4532]
    1c0c:	35fffee8 	cbnz	w8, 1be8 <stmmac_hw_setup+0x44>
    1c10:	2a1f03fa 	mov	w26, wzr
    1c14:	f9459268 	ldr	x8, [x19,#2848]
    1c18:	f9458660 	ldr	x0, [x19,#2824]
    1c1c:	f9400908 	ldr	x8, [x8,#16]
    1c20:	f9400108 	ldr	x8, [x8]
    1c24:	d63f0100 	blr	x8
    1c28:	34000260 	cbz	w0, 1c74 <stmmac_hw_setup+0xd0>
    1c2c:	2a0003f9 	mov	w25, w0
    1c30:	f9458e60 	ldr	x0, [x19,#2840]
    1c34:	d2800001 	mov	x1, #0x0                   	// #0
    1c38:	f2a00001 	movk	x1, #0x0, lsl #16
    1c3c:	f2c00001 	movk	x1, #0x0, lsl #32
    1c40:	f2e00001 	movk	x1, #0x0, lsl #48
    1c44:	94000000 	bl	0 <dev_err>
    1c48:	36f806b9 	tbz	w25, #31, 1d1c <stmmac_hw_setup+0x178>
    1c4c:	d2800000 	mov	x0, #0x0                   	// #0
    1c50:	d2800001 	mov	x1, #0x0                   	// #0
    1c54:	f2a00000 	movk	x0, #0x0, lsl #16
    1c58:	f2a00001 	movk	x1, #0x0, lsl #16
    1c5c:	f2c00000 	movk	x0, #0x0, lsl #32
    1c60:	f2c00001 	movk	x1, #0x0, lsl #32
    1c64:	f2e00000 	movk	x0, #0x0, lsl #48
    1c68:	f2e00001 	movk	x1, #0x0, lsl #48
    1c6c:	94000000 	bl	0 <printk>
    1c70:	14000182 	b	2278 <stmmac_hw_setup+0x6d4>
    1c74:	f9459268 	ldr	x8, [x19,#2848]
    1c78:	f9458660 	ldr	x0, [x19,#2824]
    1c7c:	b9493a65 	ldr	w5, [x19,#2360]
    1c80:	b94a0266 	ldr	w6, [x19,#2560]
    1c84:	f9400908 	ldr	x8, [x8,#16]
    1c88:	2a1603e1 	mov	w1, w22
    1c8c:	2a1503e2 	mov	w2, w21
    1c90:	2a1703e3 	mov	w3, w23
    1c94:	f9400508 	ldr	x8, [x8,#8]
    1c98:	2a1803e4 	mov	w4, w24
    1c9c:	2a1a03e7 	mov	w7, w26
    1ca0:	d63f0100 	blr	x8
    1ca4:	b9512668 	ldr	w8, [x19,#4388]
    1ca8:	7101011f 	cmp	w8, #0x40
    1cac:	5400026b 	b.lt	1cf8 <stmmac_hw_setup+0x154>
    1cb0:	b94a0268 	ldr	w8, [x19,#2560]
    1cb4:	f9459269 	ldr	x9, [x19,#2848]
    1cb8:	f9458660 	ldr	x0, [x19,#2824]
    1cbc:	2a1f03e2 	mov	w2, wzr
    1cc0:	11400901 	add	w1, w8, #0x2, lsl #12
    1cc4:	b9126a61 	str	w1, [x19,#4712]
    1cc8:	f9400928 	ldr	x8, [x9,#16]
    1ccc:	f9404908 	ldr	x8, [x8,#144]
    1cd0:	d63f0100 	blr	x8
    1cd4:	b9493a68 	ldr	w8, [x19,#2360]
    1cd8:	f9459269 	ldr	x9, [x19,#2848]
    1cdc:	f9458660 	ldr	x0, [x19,#2824]
    1ce0:	2a1f03e2 	mov	w2, wzr
    1ce4:	11400901 	add	w1, w8, #0x2, lsl #12
    1ce8:	b9126e61 	str	w1, [x19,#4716]
    1cec:	f9400928 	ldr	x8, [x9,#16]
    1cf0:	f9404d08 	ldr	x8, [x8,#152]
    1cf4:	d63f0100 	blr	x8
    1cf8:	f947c268 	ldr	x8, [x19,#3968]
    1cfc:	f9405501 	ldr	x1, [x8,#168]
    1d00:	b40000e1 	cbz	x1, 1d1c <stmmac_hw_setup+0x178>
    1d04:	f9459268 	ldr	x8, [x19,#2848]
    1d08:	f9400908 	ldr	x8, [x8,#16]
    1d0c:	f9400908 	ldr	x8, [x8,#16]
    1d10:	b4000068 	cbz	x8, 1d1c <stmmac_hw_setup+0x178>
    1d14:	f9458660 	ldr	x0, [x19,#2824]
    1d18:	d63f0100 	blr	x8
    1d1c:	f9459260 	ldr	x0, [x19,#2848]
    1d20:	910cb269 	add	x9, x19, #0x32c
    1d24:	f9400121 	ldr	x1, [x9]
    1d28:	2a1f03e2 	mov	w2, wzr
    1d2c:	f9400008 	ldr	x8, [x0]
    1d30:	f9401d08 	ldr	x8, [x8,#56]
    1d34:	d63f0100 	blr	x8
    1d38:	f947c268 	ldr	x8, [x19,#3968]
    1d3c:	f9403d08 	ldr	x8, [x8,#120]
    1d40:	b4000068 	cbz	x8, 1d4c <stmmac_hw_setup+0x1a8>
    1d44:	f9458660 	ldr	x0, [x19,#2824]
    1d48:	d63f0100 	blr	x8
    1d4c:	f9459268 	ldr	x8, [x19,#2848]
    1d50:	b9405909 	ldr	w9, [x8,#88]
    1d54:	34000249 	cbz	w9, 1d9c <stmmac_hw_setup+0x1f8>
    1d58:	f947c269 	ldr	x9, [x19,#3968]
    1d5c:	b940b929 	ldr	w9, [x9,#184]
    1d60:	7100293f 	cmp	w9, #0xa
    1d64:	540001a0 	b.eq	1d98 <stmmac_hw_setup+0x1f4>
    1d68:	7101913f 	cmp	w9, #0x64
    1d6c:	54000160 	b.eq	1d98 <stmmac_hw_setup+0x1f4>
    1d70:	710fa13f 	cmp	w9, #0x3e8
    1d74:	54000120 	b.eq	1d98 <stmmac_hw_setup+0x1f4>
    1d78:	f9458e60 	ldr	x0, [x19,#2840]
    1d7c:	d2800001 	mov	x1, #0x0                   	// #0
    1d80:	f2a00001 	movk	x1, #0x0, lsl #16
    1d84:	f2c00001 	movk	x1, #0x0, lsl #32
    1d88:	f2e00001 	movk	x1, #0x0, lsl #48
    1d8c:	94000000 	bl	0 <dev_warn>
    1d90:	f9459268 	ldr	x8, [x19,#2848]
    1d94:	2a1f03e9 	mov	w9, wzr
    1d98:	b9006109 	str	w9, [x8,#96]
    1d9c:	f9459260 	ldr	x0, [x19,#2848]
    1da0:	b9424a61 	ldr	w1, [x19,#584]
    1da4:	f9400008 	ldr	x8, [x0]
    1da8:	f9400108 	ldr	x8, [x8]
    1dac:	d63f0100 	blr	x8
    1db0:	f9459260 	ldr	x0, [x19,#2848]
    1db4:	f9400008 	ldr	x8, [x0]
    1db8:	f9400508 	ldr	x8, [x8,#8]
    1dbc:	d63f0100 	blr	x8
    1dc0:	35000140 	cbnz	w0, 1de8 <stmmac_hw_setup+0x244>
    1dc4:	d2800000 	mov	x0, #0x0                   	// #0
    1dc8:	f2a00000 	movk	x0, #0x0, lsl #16
    1dcc:	f2c00000 	movk	x0, #0x0, lsl #32
    1dd0:	f2e00000 	movk	x0, #0x0, lsl #48
    1dd4:	94000000 	bl	0 <printk>
    1dd8:	f947c268 	ldr	x8, [x19,#3968]
    1ddc:	b900411f 	str	wzr, [x8,#64]
    1de0:	f9459268 	ldr	x8, [x19,#2848]
    1de4:	b900551f 	str	wzr, [x8,#84]
    1de8:	b9512668 	ldr	w8, [x19,#4388]
    1dec:	f9458660 	ldr	x0, [x19,#2824]
    1df0:	52800021 	mov	w1, #0x1                   	// #1
    1df4:	7101011f 	cmp	w8, #0x40
    1df8:	5400006b 	b.lt	1e04 <stmmac_hw_setup+0x260>
    1dfc:	94000000 	bl	d94c <stmmac_dwmac4_set_mac>
    1e00:	14000002 	b	1e08 <stmmac_hw_setup+0x264>
    1e04:	94000000 	bl	83d8 <stmmac_set_mac>
    1e08:	f947c268 	ldr	x8, [x19,#3968]
    1e0c:	b9405109 	ldr	w9, [x8,#80]
    1e10:	b9406d03 	ldr	w3, [x8,#108]
    1e14:	340001a9 	cbz	w9, 1e48 <stmmac_hw_setup+0x2a4>
    1e18:	f9459268 	ldr	x8, [x19,#2848]
    1e1c:	d2800009 	mov	x9, #0x0                   	// #0
    1e20:	f2a00009 	movk	x9, #0x0, lsl #16
    1e24:	f2c00009 	movk	x9, #0x0, lsl #32
    1e28:	f9400908 	ldr	x8, [x8,#16]
    1e2c:	f2e00009 	movk	x9, #0x0, lsl #48
    1e30:	b9400121 	ldr	w1, [x9]
    1e34:	f9458660 	ldr	x0, [x19,#2824]
    1e38:	f9401108 	ldr	x8, [x8,#32]
    1e3c:	2a0103e2 	mov	w2, w1
    1e40:	d63f0100 	blr	x8
    1e44:	1400000e 	b	1e7c <stmmac_hw_setup+0x2d8>
    1e48:	b9404d09 	ldr	w9, [x8,#76]
    1e4c:	35000069 	cbnz	w9, 1e58 <stmmac_hw_setup+0x2b4>
    1e50:	b9403d08 	ldr	w8, [x8,#60]
    1e54:	340022e8 	cbz	w8, 22b0 <stmmac_hw_setup+0x70c>
    1e58:	f9459268 	ldr	x8, [x19,#2848]
    1e5c:	f9458660 	ldr	x0, [x19,#2824]
    1e60:	52800021 	mov	w1, #0x1                   	// #1
    1e64:	52800022 	mov	w2, #0x1                   	// #1
    1e68:	f9400908 	ldr	x8, [x8,#16]
    1e6c:	52800035 	mov	w21, #0x1                   	// #1
    1e70:	f9401108 	ldr	x8, [x8,#32]
    1e74:	d63f0100 	blr	x8
    1e78:	f9069675 	str	x21, [x19,#3368]
    1e7c:	b9512668 	ldr	w8, [x19,#4388]
    1e80:	f9458669 	ldr	x9, [x19,#2824]
    1e84:	5280e00a 	mov	w10, #0x700                 	// #1792
    1e88:	5281600b 	mov	w11, #0xb00                 	// #2816
    1e8c:	5280200c 	mov	w12, #0x100                 	// #256
    1e90:	7100fd1f 	cmp	w8, #0x3f
    1e94:	9a8ac168 	csel	x8, x11, x10, gt
    1e98:	9a8cc14a 	csel	x10, x10, x12, gt
    1e9c:	8b080128 	add	x8, x9, x8
    1ea0:	8b0a0120 	add	x0, x9, x10
    1ea4:	f9093268 	str	x8, [x19,#4704]
    1ea8:	f9092e60 	str	x0, [x19,#4696]
    1eac:	94000000 	bl	b2e8 <dwmac_mmc_intr_all_mask>
    1eb0:	b94fae68 	ldr	w8, [x19,#4012]
    1eb4:	34000488 	cbz	w8, 1f44 <stmmac_hw_setup+0x3a0>
    1eb8:	f9492e60 	ldr	x0, [x19,#4696]
    1ebc:	528006a1 	mov	w1, #0x35                  	// #53
    1ec0:	94000000 	bl	b2ac <dwmac_mmc_ctrl>
    1ec4:	913f9268 	add	x8, x19, #0xfe4
    1ec8:	6f00e400 	movi	v0.2d, #0x0
    1ecc:	3d844660 	str	q0, [x19,#4368]
    1ed0:	ad088100 	stp	q0, q0, [x8,#272]
    1ed4:	ad078100 	stp	q0, q0, [x8,#240]
    1ed8:	ad068100 	stp	q0, q0, [x8,#208]
    1edc:	ad058100 	stp	q0, q0, [x8,#176]
    1ee0:	ad048100 	stp	q0, q0, [x8,#144]
    1ee4:	ad038100 	stp	q0, q0, [x8,#112]
    1ee8:	ad028100 	stp	q0, q0, [x8,#80]
    1eec:	ad018100 	stp	q0, q0, [x8,#48]
    1ef0:	ad008100 	stp	q0, q0, [x8,#16]
    1ef4:	3d800100 	str	q0, [x8]
    1ef8:	36000994 	tbz	w20, #0, 2028 <stmmac_hw_setup+0x484>
    1efc:	b94fb268 	ldr	w8, [x19,#4016]
    1f00:	35000068 	cbnz	w8, 1f0c <stmmac_hw_setup+0x368>
    1f04:	b94fb668 	ldr	w8, [x19,#4020]
    1f08:	34001c68 	cbz	w8, 2294 <stmmac_hw_setup+0x6f0>
    1f0c:	f9458e60 	ldr	x0, [x19,#2840]
    1f10:	d2800001 	mov	x1, #0x0                   	// #0
    1f14:	f2a00001 	movk	x1, #0x0, lsl #16
    1f18:	f2c00001 	movk	x1, #0x0, lsl #32
    1f1c:	f2e00001 	movk	x1, #0x0, lsl #48
    1f20:	94000000 	bl	0 <devm_clk_get>
    1f24:	b13ffc1f 	cmn	x0, #0xfff
    1f28:	f9091e60 	str	x0, [x19,#4664]
    1f2c:	540001a3 	b.cc	1f60 <stmmac_hw_setup+0x3bc>
    1f30:	f9489e60 	ldr	x0, [x19,#4408]
    1f34:	94000000 	bl	0 <clk_get_rate>
    1f38:	b9124260 	str	w0, [x19,#4672]
    1f3c:	f9091e7f 	str	xzr, [x19,#4664]
    1f40:	14000013 	b	1f8c <stmmac_hw_setup+0x3e8>
    1f44:	d2800000 	mov	x0, #0x0                   	// #0
    1f48:	f2a00000 	movk	x0, #0x0, lsl #16
    1f4c:	f2c00000 	movk	x0, #0x0, lsl #32
    1f50:	f2e00000 	movk	x0, #0x0, lsl #48
    1f54:	94000000 	bl	0 <printk>
    1f58:	3707fd34 	tbnz	w20, #0, 1efc <stmmac_hw_setup+0x358>
    1f5c:	14000033 	b	2028 <stmmac_hw_setup+0x484>
    1f60:	aa0003f4 	mov	x20, x0
    1f64:	94000000 	bl	0 <clk_prepare>
    1f68:	350000c0 	cbnz	w0, 1f80 <stmmac_hw_setup+0x3dc>
    1f6c:	aa1403e0 	mov	x0, x20
    1f70:	94000000 	bl	0 <clk_enable>
    1f74:	34000060 	cbz	w0, 1f80 <stmmac_hw_setup+0x3dc>
    1f78:	aa1403e0 	mov	x0, x20
    1f7c:	94000000 	bl	0 <clk_unprepare>
    1f80:	f9491e60 	ldr	x0, [x19,#4664]
    1f84:	94000000 	bl	0 <clk_get_rate>
    1f88:	b9124260 	str	w0, [x19,#4672]
    1f8c:	f947c268 	ldr	x8, [x19,#3968]
    1f90:	b912467f 	str	wzr, [x19,#4676]
    1f94:	b940b108 	ldr	w8, [x8,#176]
    1f98:	34000068 	cbz	w8, 1fa4 <stmmac_hw_setup+0x400>
    1f9c:	b94fb668 	ldr	w8, [x19,#4020]
    1fa0:	350000a8 	cbnz	w8, 1fb4 <stmmac_hw_setup+0x410>
    1fa4:	b951b668 	ldr	w8, [x19,#4532]
    1fa8:	340000a8 	cbz	w8, 1fbc <stmmac_hw_setup+0x418>
    1fac:	b94fb668 	ldr	w8, [x19,#4020]
    1fb0:	34000068 	cbz	w8, 1fbc <stmmac_hw_setup+0x418>
    1fb4:	52800028 	mov	w8, #0x1                   	// #1
    1fb8:	b9124668 	str	w8, [x19,#4676]
    1fbc:	b94fb269 	ldr	w9, [x19,#4016]
    1fc0:	91240274 	add	x20, x19, #0x900
    1fc4:	34000109 	cbz	w9, 1fe4 <stmmac_hw_setup+0x440>
    1fc8:	f9458a60 	ldr	x0, [x19,#2832]
    1fcc:	d2800001 	mov	x1, #0x0                   	// #0
    1fd0:	f2a00001 	movk	x1, #0x0, lsl #16
    1fd4:	f2c00001 	movk	x1, #0x0, lsl #32
    1fd8:	f2e00001 	movk	x1, #0x0, lsl #48
    1fdc:	94000000 	bl	0 <netdev_info>
    1fe0:	b9524668 	ldr	w8, [x19,#4676]
    1fe4:	340000e8 	cbz	w8, 2000 <stmmac_hw_setup+0x45c>
    1fe8:	f9458a60 	ldr	x0, [x19,#2832]
    1fec:	d2800001 	mov	x1, #0x0                   	// #0
    1ff0:	f2a00001 	movk	x1, #0x0, lsl #16
    1ff4:	f2c00001 	movk	x1, #0x0, lsl #32
    1ff8:	f2e00001 	movk	x1, #0x0, lsl #48
    1ffc:	94000000 	bl	0 <netdev_info>
    2000:	f9459268 	ldr	x8, [x19,#2848]
    2004:	d2800009 	mov	x9, #0x0                   	// #0
    2008:	f2a00009 	movk	x9, #0x0, lsl #16
    200c:	f2c00009 	movk	x9, #0x0, lsl #32
    2010:	f2e00009 	movk	x9, #0x0, lsl #48
    2014:	aa1403e0 	mov	x0, x20
    2018:	f9001109 	str	x9, [x8,#32]
    201c:	b909467f 	str	wzr, [x19,#2372]
    2020:	b909f27f 	str	wzr, [x19,#2544]
    2024:	94000000 	bl	bed8 <stmmac_ptp_register>
    2028:	d2800008 	mov	x8, #0x0                   	// #0
    202c:	f2a00008 	movk	x8, #0x0, lsl #16
    2030:	f2c00008 	movk	x8, #0x0, lsl #32
    2034:	f2e00008 	movk	x8, #0x0, lsl #48
    2038:	f9400101 	ldr	x1, [x8]
    203c:	aa1303e0 	mov	x0, x19
    2040:	94000000 	bl	0 <debugfs_create_dir>
    2044:	f9093e60 	str	x0, [x19,#4728]
    2048:	b4000500 	cbz	x0, 20e8 <stmmac_hw_setup+0x544>
    204c:	aa0003e2 	mov	x2, x0
    2050:	b13ffc1f 	cmn	x0, #0xfff
    2054:	540004a2 	b.cs	20e8 <stmmac_hw_setup+0x544>
    2058:	d2800000 	mov	x0, #0x0                   	// #0
    205c:	d2800004 	mov	x4, #0x0                   	// #0
    2060:	f2a00000 	movk	x0, #0x0, lsl #16
    2064:	f2a00004 	movk	x4, #0x0, lsl #16
    2068:	f2c00000 	movk	x0, #0x0, lsl #32
    206c:	f2c00004 	movk	x4, #0x0, lsl #32
    2070:	f2e00000 	movk	x0, #0x0, lsl #48
    2074:	f2e00004 	movk	x4, #0x0, lsl #48
    2078:	52802481 	mov	w1, #0x124                 	// #292
    207c:	aa1303e3 	mov	x3, x19
    2080:	94000000 	bl	0 <debugfs_create_file>
    2084:	f9094260 	str	x0, [x19,#4736]
    2088:	b4000460 	cbz	x0, 2114 <stmmac_hw_setup+0x570>
    208c:	b13ffc1f 	cmn	x0, #0xfff
    2090:	54000422 	b.cs	2114 <stmmac_hw_setup+0x570>
    2094:	f9493e62 	ldr	x2, [x19,#4728]
    2098:	d2800000 	mov	x0, #0x0                   	// #0
    209c:	d2800004 	mov	x4, #0x0                   	// #0
    20a0:	f2a00000 	movk	x0, #0x0, lsl #16
    20a4:	f2a00004 	movk	x4, #0x0, lsl #16
    20a8:	f2c00000 	movk	x0, #0x0, lsl #32
    20ac:	f2c00004 	movk	x4, #0x0, lsl #32
    20b0:	f2e00000 	movk	x0, #0x0, lsl #48
    20b4:	f2e00004 	movk	x4, #0x0, lsl #48
    20b8:	52802481 	mov	w1, #0x124                 	// #292
    20bc:	aa1303e3 	mov	x3, x19
    20c0:	94000000 	bl	0 <debugfs_create_file>
    20c4:	f9094660 	str	x0, [x19,#4744]
    20c8:	b4000060 	cbz	x0, 20d4 <stmmac_hw_setup+0x530>
    20cc:	b13ffc1f 	cmn	x0, #0xfff
    20d0:	54000423 	b.cc	2154 <stmmac_hw_setup+0x5b0>
    20d4:	d2800000 	mov	x0, #0x0                   	// #0
    20d8:	f2a00000 	movk	x0, #0x0, lsl #16
    20dc:	f2c00000 	movk	x0, #0x0, lsl #32
    20e0:	f2e00000 	movk	x0, #0x0, lsl #48
    20e4:	14000010 	b	2124 <stmmac_hw_setup+0x580>
    20e8:	d2800000 	mov	x0, #0x0                   	// #0
    20ec:	d2800001 	mov	x1, #0x0                   	// #0
    20f0:	f2a00000 	movk	x0, #0x0, lsl #16
    20f4:	f2a00001 	movk	x1, #0x0, lsl #16
    20f8:	f2c00000 	movk	x0, #0x0, lsl #32
    20fc:	f2c00001 	movk	x1, #0x0, lsl #32
    2100:	f2e00000 	movk	x0, #0x0, lsl #48
    2104:	f2e00001 	movk	x1, #0x0, lsl #48
    2108:	aa1303e2 	mov	x2, x19
    210c:	94000000 	bl	0 <printk>
    2110:	14000008 	b	2130 <stmmac_hw_setup+0x58c>
    2114:	d2800000 	mov	x0, #0x0                   	// #0
    2118:	f2a00000 	movk	x0, #0x0, lsl #16
    211c:	f2c00000 	movk	x0, #0x0, lsl #32
    2120:	f2e00000 	movk	x0, #0x0, lsl #48
    2124:	94000000 	bl	0 <printk>
    2128:	f9493e60 	ldr	x0, [x19,#4728]
    212c:	94000000 	bl	0 <debugfs_remove_recursive>
    2130:	d2800000 	mov	x0, #0x0                   	// #0
    2134:	d2800001 	mov	x1, #0x0                   	// #0
    2138:	f2a00000 	movk	x0, #0x0, lsl #16
    213c:	f2a00001 	movk	x1, #0x0, lsl #16
    2140:	f2c00000 	movk	x0, #0x0, lsl #32
    2144:	f2c00001 	movk	x1, #0x0, lsl #32
    2148:	f2e00000 	movk	x0, #0x0, lsl #48
    214c:	f2e00001 	movk	x1, #0x0, lsl #48
    2150:	94000000 	bl	0 <printk>
    2154:	52822528 	mov	w8, #0x1129                	// #4393
    2158:	38686a68 	ldrb	w8, [x19,x8]
    215c:	36280148 	tbz	w8, #5, 2184 <stmmac_hw_setup+0x5e0>
    2160:	f9459260 	ldr	x0, [x19,#2848]
    2164:	f9400008 	ldr	x8, [x0]
    2168:	f9400908 	ldr	x8, [x8,#16]
    216c:	d63f0100 	blr	x8
    2170:	f9459268 	ldr	x8, [x19,#2848]
    2174:	f9458660 	ldr	x0, [x19,#2824]
    2178:	f9400908 	ldr	x8, [x8,#16]
    217c:	f9400d08 	ldr	x8, [x8,#24]
    2180:	d63f0100 	blr	x8
    2184:	b9524a68 	ldr	w8, [x19,#4680]
    2188:	528003c9 	mov	w9, #0x1e                  	// #30
    218c:	b911ae69 	str	w9, [x19,#4524]
    2190:	34000188 	cbz	w8, 21c0 <stmmac_hw_setup+0x61c>
    2194:	f9459268 	ldr	x8, [x19,#2848]
    2198:	f9400909 	ldr	x9, [x8,#16]
    219c:	f9403d29 	ldr	x9, [x9,#120]
    21a0:	b4000109 	cbz	x9, 21c0 <stmmac_hw_setup+0x61c>
    21a4:	52801fe9 	mov	w9, #0xff                  	// #255
    21a8:	b909ee69 	str	w9, [x19,#2540]
    21ac:	f9400908 	ldr	x8, [x8,#16]
    21b0:	f9458660 	ldr	x0, [x19,#2824]
    21b4:	52801fe1 	mov	w1, #0xff                  	// #255
    21b8:	f9403d08 	ldr	x8, [x8,#120]
    21bc:	d63f0100 	blr	x8
    21c0:	f9459260 	ldr	x0, [x19,#2848]
    21c4:	b9405808 	ldr	w8, [x0,#88]
    21c8:	34000168 	cbz	w8, 21f4 <stmmac_hw_setup+0x650>
    21cc:	f9400008 	ldr	x8, [x0]
    21d0:	f9403908 	ldr	x8, [x8,#112]
    21d4:	b4000108 	cbz	x8, 21f4 <stmmac_hw_setup+0x650>
    21d8:	b9406009 	ldr	w9, [x0,#96]
    21dc:	52800021 	mov	w1, #0x1                   	// #1
    21e0:	2a1f03e3 	mov	w3, wzr
    21e4:	7100013f 	cmp	w9, #0x0
    21e8:	1a9f07e2 	cset	w2, ne
    21ec:	d63f0100 	blr	x8
    21f0:	f9459260 	ldr	x0, [x19,#2848]
    21f4:	f9400808 	ldr	x8, [x0,#16]
    21f8:	f9404109 	ldr	x9, [x8,#128]
    21fc:	b40000c9 	cbz	x9, 2214 <stmmac_hw_setup+0x670>
    2200:	f9458660 	ldr	x0, [x19,#2824]
    2204:	52803fe1 	mov	w1, #0x1ff                 	// #511
    2208:	d63f0120 	blr	x9
    220c:	f9459268 	ldr	x8, [x19,#2848]
    2210:	f9400908 	ldr	x8, [x8,#16]
    2214:	f9404508 	ldr	x8, [x8,#136]
    2218:	b4000088 	cbz	x8, 2228 <stmmac_hw_setup+0x684>
    221c:	f9458660 	ldr	x0, [x19,#2824]
    2220:	52803fe1 	mov	w1, #0x1ff                 	// #511
    2224:	d63f0100 	blr	x8
    2228:	39666268 	ldrb	w8, [x19,#2456]
    222c:	34000108 	cbz	w8, 224c <stmmac_hw_setup+0x6a8>
    2230:	f9459268 	ldr	x8, [x19,#2848]
    2234:	f9458660 	ldr	x0, [x19,#2824]
    2238:	52800021 	mov	w1, #0x1                   	// #1
    223c:	2a1f03e2 	mov	w2, wzr
    2240:	f9400908 	ldr	x8, [x8,#16]
    2244:	f9405108 	ldr	x8, [x8,#160]
    2248:	d63f0100 	blr	x8
    224c:	f9459268 	ldr	x8, [x19,#2848]
    2250:	f9458660 	ldr	x0, [x19,#2824]
    2254:	f9400908 	ldr	x8, [x8,#16]
    2258:	f9402508 	ldr	x8, [x8,#72]
    225c:	d63f0100 	blr	x8
    2260:	f9459268 	ldr	x8, [x19,#2848]
    2264:	f9458660 	ldr	x0, [x19,#2824]
    2268:	f9400908 	ldr	x8, [x8,#16]
    226c:	f9402d08 	ldr	x8, [x8,#88]
    2270:	d63f0100 	blr	x8
    2274:	2a1f03f9 	mov	w25, wzr
    2278:	a9447bfd 	ldp	x29, x30, [sp,#64]
    227c:	a9434ff4 	ldp	x20, x19, [sp,#48]
    2280:	a94257f6 	ldp	x22, x21, [sp,#32]
    2284:	a9415ff8 	ldp	x24, x23, [sp,#16]
    2288:	2a1903e0 	mov	w0, w25
    228c:	a8c567fa 	ldp	x26, x25, [sp],#80
    2290:	d65f03c0 	ret
    2294:	f9458a60 	ldr	x0, [x19,#2832]
    2298:	d2800001 	mov	x1, #0x0                   	// #0
    229c:	f2a00001 	movk	x1, #0x0, lsl #16
    22a0:	f2c00001 	movk	x1, #0x0, lsl #32
    22a4:	f2e00001 	movk	x1, #0x0, lsl #48
    22a8:	94000000 	bl	0 <netdev_warn>
    22ac:	17ffff5f 	b	2028 <stmmac_hw_setup+0x484>
    22b0:	f9459268 	ldr	x8, [x19,#2848]
    22b4:	d2800009 	mov	x9, #0x0                   	// #0
    22b8:	f2a00009 	movk	x9, #0x0, lsl #16
    22bc:	f2c00009 	movk	x9, #0x0, lsl #32
    22c0:	f9400908 	ldr	x8, [x8,#16]
    22c4:	f2e00009 	movk	x9, #0x0, lsl #48
    22c8:	f9458660 	ldr	x0, [x19,#2824]
    22cc:	b9400121 	ldr	w1, [x9]
    22d0:	f9401108 	ldr	x8, [x8,#32]
    22d4:	52800022 	mov	w2, #0x1                   	// #1
    22d8:	17fffeda 	b	1e40 <stmmac_hw_setup+0x29c>

00000000000022dc <stmmac_set_rx_mode>:
    22dc:	f81e0ff3 	str	x19, [sp,#-32]!
    22e0:	a9017bfd 	stp	x29, x30, [sp,#16]
    22e4:	910043fd 	add	x29, sp, #0x10
    22e8:	aa0003f3 	mov	x19, x0
    22ec:	94000000 	bl	0 <_mcount>
    22f0:	f9459260 	ldr	x0, [x19,#2848]
    22f4:	aa1303e1 	mov	x1, x19
    22f8:	f9400008 	ldr	x8, [x0]
    22fc:	f9401108 	ldr	x8, [x8,#32]
    2300:	d63f0100 	blr	x8
    2304:	a9417bfd 	ldp	x29, x30, [sp,#16]
    2308:	f84207f3 	ldr	x19, [sp],#32
    230c:	d65f03c0 	ret

0000000000002310 <stmmac_open>:
    2310:	d10403ff 	sub	sp, sp, #0x100
    2314:	a90a6ffc 	stp	x28, x27, [sp,#160]
    2318:	a90b67fa 	stp	x26, x25, [sp,#176]
    231c:	a90c5ff8 	stp	x24, x23, [sp,#192]
    2320:	a90d57f6 	stp	x22, x21, [sp,#208]
    2324:	a90e4ff4 	stp	x20, x19, [sp,#224]
    2328:	a90f7bfd 	stp	x29, x30, [sp,#240]
    232c:	9103c3fd 	add	x29, sp, #0xf0
    2330:	aa0003f3 	mov	x19, x0
    2334:	94000000 	bl	0 <_mcount>
    2338:	d2800000 	mov	x0, #0x0                   	// #0
    233c:	f2a00000 	movk	x0, #0x0, lsl #16
    2340:	f2c00000 	movk	x0, #0x0, lsl #32
    2344:	f2e00000 	movk	x0, #0x0, lsl #48
    2348:	94000000 	bl	0 <printk>
    234c:	f9459268 	ldr	x8, [x19,#2848]
    2350:	b9405908 	ldr	w8, [x8,#88]
    2354:	7100211f 	cmp	w8, #0x8
    2358:	54000a68 	b.hi	24a4 <stmmac_open+0x194>
    235c:	52800029 	mov	w9, #0x1                   	// #1
    2360:	1ac82128 	lsl	w8, w9, w8
    2364:	52802249 	mov	w9, #0x112                 	// #274
    2368:	6a09011f 	tst	w8, w9
    236c:	540009c0 	b.eq	24a4 <stmmac_open+0x194>
    2370:	52801817 	mov	w23, #0xc0                  	// #192
    2374:	91300260 	add	x0, x19, #0xc00
    2378:	52807002 	mov	w2, #0x380                 	// #896
    237c:	2a1f03e1 	mov	w1, wzr
    2380:	72a04817 	movk	w23, #0x240, lsl #16
    2384:	94000000 	bl	0 <memset>
    2388:	d2800008 	mov	x8, #0x0                   	// #0
    238c:	f2a00008 	movk	x8, #0x0, lsl #16
    2390:	f2c00008 	movk	x8, #0x0, lsl #32
    2394:	f2e00008 	movk	x8, #0x0, lsl #48
    2398:	b9800108 	ldrsw	x8, [x8]
    239c:	d2800018 	mov	x24, #0x0                   	// #0
    23a0:	f2a00018 	movk	x24, #0x0, lsl #16
    23a4:	f2c00018 	movk	x24, #0x0, lsl #32
    23a8:	f2e00018 	movk	x24, #0x0, lsl #48
    23ac:	f9069668 	str	x8, [x19,#3368]
    23b0:	b9400308 	ldr	w8, [x24]
    23b4:	d2800014 	mov	x20, #0x0                   	// #0
    23b8:	f2a00014 	movk	x20, #0x0, lsl #16
    23bc:	52802009 	mov	w9, #0x100                 	// #256
    23c0:	1100fd08 	add	w8, w8, #0x3f
    23c4:	f2c00014 	movk	x20, #0x0, lsl #32
    23c8:	121a6508 	and	w8, w8, #0xffffffc0
    23cc:	b909e669 	str	w9, [x19,#2532]
    23d0:	b912727f 	str	wzr, [x19,#4720]
    23d4:	b909e268 	str	w8, [x19,#2528]
    23d8:	f2e00014 	movk	x20, #0x0, lsl #48
    23dc:	f9400280 	ldr	x0, [x20]
    23e0:	52801801 	mov	w1, #0xc0                  	// #192
    23e4:	72a04801 	movk	w1, #0x240, lsl #16
    23e8:	52820002 	mov	w2, #0x1000                	// #4096
    23ec:	94000000 	bl	0 <kmem_cache_alloc_trace>
    23f0:	f904fe60 	str	x0, [x19,#2552]
    23f4:	b40028e0 	cbz	x0, 2910 <stmmac_open+0x600>
    23f8:	f9400280 	ldr	x0, [x20]
    23fc:	52801801 	mov	w1, #0xc0                  	// #192
    2400:	72a04801 	movk	w1, #0x240, lsl #16
    2404:	52820002 	mov	w2, #0x1000                	// #4096
    2408:	94000000 	bl	0 <kmem_cache_alloc_trace>
    240c:	f904ea60 	str	x0, [x19,#2512]
    2410:	b40027c0 	cbz	x0, 2908 <stmmac_open+0x5f8>
    2414:	52801801 	mov	w1, #0xc0                  	// #192
    2418:	52860000 	mov	w0, #0x3000                	// #12288
    241c:	72a04801 	movk	w1, #0x240, lsl #16
    2420:	52800042 	mov	w2, #0x2                   	// #2
    2424:	94000000 	bl	0 <kmalloc_order_trace>
    2428:	f9049a60 	str	x0, [x19,#2352]
    242c:	b40026a0 	cbz	x0, 2900 <stmmac_open+0x5f0>
    2430:	f9400280 	ldr	x0, [x20]
    2434:	52801801 	mov	w1, #0xc0                  	// #192
    2438:	72a04801 	movk	w1, #0x240, lsl #16
    243c:	52820002 	mov	w2, #0x1000                	// #4096
    2440:	94000000 	bl	0 <kmem_cache_alloc_trace>
    2444:	f9048a60 	str	x0, [x19,#2320]
    2448:	b4002580 	cbz	x0, 28f8 <stmmac_open+0x5e8>
    244c:	b951b668 	ldr	w8, [x19,#4532]
    2450:	f9458e75 	ldr	x21, [x19,#2840]
    2454:	91240279 	add	x25, x19, #0x900
    2458:	91280276 	add	x22, x19, #0xa00
    245c:	34000ce8 	cbz	w8, 25f8 <stmmac_open+0x2e8>
    2460:	b4000075 	cbz	x21, 246c <stmmac_open+0x15c>
    2464:	f94126b4 	ldr	x20, [x21,#584]
    2468:	b50000b4 	cbnz	x20, 247c <stmmac_open+0x16c>
    246c:	d2800014 	mov	x20, #0x0                   	// #0
    2470:	f2a00014 	movk	x20, #0x0, lsl #16
    2474:	f2c00014 	movk	x20, #0x0, lsl #32
    2478:	f2e00014 	movk	x20, #0x0, lsl #48
    247c:	910183e3 	add	x3, sp, #0x60
    2480:	52880001 	mov	w1, #0x4000                	// #16384
    2484:	aa1503e0 	mov	x0, x21
    2488:	aa1603e2 	mov	x2, x22
    248c:	94000000 	bl	0 <dma_alloc_from_coherent>
    2490:	34000d60 	cbz	w0, 263c <stmmac_open+0x32c>
    2494:	f94033e0 	ldr	x0, [sp,#96]
    2498:	f904e660 	str	x0, [x19,#2504]
    249c:	b5000e60 	cbnz	x0, 2668 <stmmac_open+0x358>
    24a0:	14000114 	b	28f0 <stmmac_open+0x5e0>
    24a4:	f947c268 	ldr	x8, [x19,#3968]
    24a8:	d2800000 	mov	x0, #0x0                   	// #0
    24ac:	f2a00000 	movk	x0, #0x0, lsl #16
    24b0:	f2c00000 	movk	x0, #0x0, lsl #32
    24b4:	b9400914 	ldr	w20, [x8,#8]
    24b8:	b9405916 	ldr	w22, [x8,#88]
    24bc:	6f00e400 	movi	v0.2d, #0x0
    24c0:	12800008 	mov	w8, #0xffffffff            	// #-1
    24c4:	f2e00000 	movk	x0, #0x0, lsl #48
    24c8:	fd05a660 	str	d0, [x19,#2888]
    24cc:	b90b5268 	str	w8, [x19,#2896]
    24d0:	94000000 	bl	0 <printk>
    24d4:	f947c268 	ldr	x8, [x19,#3968]
    24d8:	f9400d01 	ldr	x1, [x8,#24]
    24dc:	b4000441 	cbz	x1, 2564 <stmmac_open+0x254>
    24e0:	d2800002 	mov	x2, #0x0                   	// #0
    24e4:	f2a00002 	movk	x2, #0x0, lsl #16
    24e8:	f2c00002 	movk	x2, #0x0, lsl #32
    24ec:	f2e00002 	movk	x2, #0x0, lsl #48
    24f0:	aa1303e0 	mov	x0, x19
    24f4:	2a1f03e3 	mov	w3, wzr
    24f8:	2a1403e4 	mov	w4, w20
    24fc:	94000000 	bl	0 <of_phy_connect>
    2500:	aa0003f5 	mov	x21, x0
    2504:	b4000680 	cbz	x0, 25d4 <stmmac_open+0x2c4>
    2508:	b13ffebf 	cmn	x21, #0xfff
    250c:	54000642 	b.cs	25d4 <stmmac_open+0x2c4>
    2510:	7100069f 	cmp	w20, #0x1
    2514:	540000c0 	b.eq	252c <stmmac_open+0x21c>
    2518:	71001a9f 	cmp	w20, #0x6
    251c:	54000080 	b.eq	252c <stmmac_open+0x21c>
    2520:	510006c8 	sub	w8, w22, #0x1
    2524:	710f991f 	cmp	w8, #0x3e6
    2528:	54000088 	b.hi	2538 <stmmac_open+0x228>
    252c:	b94372a8 	ldr	w8, [x21,#880]
    2530:	121a7508 	and	w8, w8, #0xffffffcf
    2534:	b90372a8 	str	w8, [x21,#880]
    2538:	f947c268 	ldr	x8, [x19,#3968]
    253c:	f9400d08 	ldr	x8, [x8,#24]
    2540:	b5000068 	cbnz	x8, 254c <stmmac_open+0x23c>
    2544:	b9431aa8 	ldr	w8, [x21,#792]
    2548:	34000f28 	cbz	w8, 272c <stmmac_open+0x41c>
    254c:	394d0aa8 	ldrb	w8, [x21,#834]
    2550:	34000068 	cbz	w8, 255c <stmmac_open+0x24c>
    2554:	12800008 	mov	w8, #0xffffffff            	// #-1
    2558:	b90386a8 	str	w8, [x21,#900]
    255c:	f905a275 	str	x21, [x19,#2880]
    2560:	17ffff84 	b	2370 <stmmac_open+0x60>
    2564:	b9400103 	ldr	w3, [x8]
    2568:	d2800002 	mov	x2, #0x0                   	// #0
    256c:	f2a00002 	movk	x2, #0x0, lsl #16
    2570:	f2c00002 	movk	x2, #0x0, lsl #32
    2574:	910083e0 	add	x0, sp, #0x20
    2578:	f2e00002 	movk	x2, #0x0, lsl #48
    257c:	528007a1 	mov	w1, #0x3d                  	// #61
    2580:	94000000 	bl	0 <snprintf>
    2584:	f947c268 	ldr	x8, [x19,#3968]
    2588:	d2800002 	mov	x2, #0x0                   	// #0
    258c:	f2a00002 	movk	x2, #0x0, lsl #16
    2590:	f2c00002 	movk	x2, #0x0, lsl #32
    2594:	b9400504 	ldr	w4, [x8,#4]
    2598:	910183e0 	add	x0, sp, #0x60
    259c:	910083e3 	add	x3, sp, #0x20
    25a0:	f2e00002 	movk	x2, #0x0, lsl #48
    25a4:	52800801 	mov	w1, #0x40                  	// #64
    25a8:	94000000 	bl	0 <snprintf>
    25ac:	d2800002 	mov	x2, #0x0                   	// #0
    25b0:	f2a00002 	movk	x2, #0x0, lsl #16
    25b4:	f2c00002 	movk	x2, #0x0, lsl #32
    25b8:	f2e00002 	movk	x2, #0x0, lsl #48
    25bc:	910183e1 	add	x1, sp, #0x60
    25c0:	aa1303e0 	mov	x0, x19
    25c4:	2a1403e3 	mov	w3, w20
    25c8:	94000000 	bl	0 <phy_connect>
    25cc:	aa0003f5 	mov	x21, x0
    25d0:	b5fff9c0 	cbnz	x0, 2508 <stmmac_open+0x1f8>
    25d4:	d2800000 	mov	x0, #0x0                   	// #0
    25d8:	f2a00000 	movk	x0, #0x0, lsl #16
    25dc:	f2c00000 	movk	x0, #0x0, lsl #32
    25e0:	f2e00000 	movk	x0, #0x0, lsl #48
    25e4:	aa1303e1 	mov	x1, x19
    25e8:	94000000 	bl	0 <printk>
    25ec:	b4000a55 	cbz	x21, 2734 <stmmac_open+0x424>
    25f0:	35000a55 	cbnz	w21, 2738 <stmmac_open+0x428>
    25f4:	17ffff5f 	b	2370 <stmmac_open+0x60>
    25f8:	b4000075 	cbz	x21, 2604 <stmmac_open+0x2f4>
    25fc:	f94126b4 	ldr	x20, [x21,#584]
    2600:	b50000b4 	cbnz	x20, 2614 <stmmac_open+0x304>
    2604:	d2800014 	mov	x20, #0x0                   	// #0
    2608:	f2a00014 	movk	x20, #0x0, lsl #16
    260c:	f2c00014 	movk	x20, #0x0, lsl #32
    2610:	f2e00014 	movk	x20, #0x0, lsl #48
    2614:	910183e3 	add	x3, sp, #0x60
    2618:	52840001 	mov	w1, #0x2000                	// #8192
    261c:	aa1503e0 	mov	x0, x21
    2620:	aa1603e2 	mov	x2, x22
    2624:	94000000 	bl	0 <dma_alloc_from_coherent>
    2628:	34000460 	cbz	w0, 26b4 <stmmac_open+0x3a4>
    262c:	f94033e0 	ldr	x0, [sp,#96]
    2630:	f904e260 	str	x0, [x19,#2496]
    2634:	b5000560 	cbnz	x0, 26e0 <stmmac_open+0x3d0>
    2638:	140000ae 	b	28f0 <stmmac_open+0x5e0>
    263c:	f9400288 	ldr	x8, [x20]
    2640:	b4000aa8 	cbz	x8, 2794 <stmmac_open+0x484>
    2644:	114022e3 	add	w3, w23, #0x8, lsl #12
    2648:	52880001 	mov	w1, #0x4000                	// #16384
    264c:	aa1503e0 	mov	x0, x21
    2650:	aa1603e2 	mov	x2, x22
    2654:	aa1f03e4 	mov	x4, xzr
    2658:	d63f0100 	blr	x8
    265c:	f90033e0 	str	x0, [sp,#96]
    2660:	f904e660 	str	x0, [x19,#2504]
    2664:	b4001460 	cbz	x0, 28f0 <stmmac_open+0x5e0>
    2668:	f9458e75 	ldr	x21, [x19,#2840]
    266c:	9124e276 	add	x22, x19, #0x938
    2670:	b4000075 	cbz	x21, 267c <stmmac_open+0x36c>
    2674:	f94126b4 	ldr	x20, [x21,#584]
    2678:	b50000b4 	cbnz	x20, 268c <stmmac_open+0x37c>
    267c:	d2800014 	mov	x20, #0x0                   	// #0
    2680:	f2a00014 	movk	x20, #0x0, lsl #16
    2684:	f2c00014 	movk	x20, #0x0, lsl #32
    2688:	f2e00014 	movk	x20, #0x0, lsl #48
    268c:	910183e3 	add	x3, sp, #0x60
    2690:	52880001 	mov	w1, #0x4000                	// #16384
    2694:	aa1503e0 	mov	x0, x21
    2698:	aa1603e2 	mov	x2, x22
    269c:	94000000 	bl	0 <dma_alloc_from_coherent>
    26a0:	34000620 	cbz	w0, 2764 <stmmac_open+0x454>
    26a4:	f94033e0 	ldr	x0, [sp,#96]
    26a8:	f9000320 	str	x0, [x25]
    26ac:	b50008e0 	cbnz	x0, 27c8 <stmmac_open+0x4b8>
    26b0:	1400005f 	b	282c <stmmac_open+0x51c>
    26b4:	f9400288 	ldr	x8, [x20]
    26b8:	b4000ac8 	cbz	x8, 2810 <stmmac_open+0x500>
    26bc:	114022e3 	add	w3, w23, #0x8, lsl #12
    26c0:	52840001 	mov	w1, #0x2000                	// #8192
    26c4:	aa1503e0 	mov	x0, x21
    26c8:	aa1603e2 	mov	x2, x22
    26cc:	aa1f03e4 	mov	x4, xzr
    26d0:	d63f0100 	blr	x8
    26d4:	f90033e0 	str	x0, [sp,#96]
    26d8:	f904e260 	str	x0, [x19,#2496]
    26dc:	b40010a0 	cbz	x0, 28f0 <stmmac_open+0x5e0>
    26e0:	f9458e75 	ldr	x21, [x19,#2840]
    26e4:	9124e276 	add	x22, x19, #0x938
    26e8:	b4000075 	cbz	x21, 26f4 <stmmac_open+0x3e4>
    26ec:	f94126b4 	ldr	x20, [x21,#584]
    26f0:	b50000b4 	cbnz	x20, 2704 <stmmac_open+0x3f4>
    26f4:	d2800014 	mov	x20, #0x0                   	// #0
    26f8:	f2a00014 	movk	x20, #0x0, lsl #16
    26fc:	f2c00014 	movk	x20, #0x0, lsl #32
    2700:	f2e00014 	movk	x20, #0x0, lsl #48
    2704:	910183e3 	add	x3, sp, #0x60
    2708:	52840001 	mov	w1, #0x2000                	// #8192
    270c:	aa1503e0 	mov	x0, x21
    2710:	aa1603e2 	mov	x2, x22
    2714:	94000000 	bl	0 <dma_alloc_from_coherent>
    2718:	34000420 	cbz	w0, 279c <stmmac_open+0x48c>
    271c:	f94033e0 	ldr	x0, [sp,#96]
    2720:	f9048660 	str	x0, [x19,#2312]
    2724:	b5000520 	cbnz	x0, 27c8 <stmmac_open+0x4b8>
    2728:	14000058 	b	2888 <stmmac_open+0x578>
    272c:	aa1503e0 	mov	x0, x21
    2730:	94000000 	bl	0 <phy_disconnect>
    2734:	12800255 	mov	w21, #0xffffffed            	// #-19
    2738:	d2800000 	mov	x0, #0x0                   	// #0
    273c:	d2800001 	mov	x1, #0x0                   	// #0
    2740:	f2a00000 	movk	x0, #0x0, lsl #16
    2744:	f2a00001 	movk	x1, #0x0, lsl #16
    2748:	f2c00000 	movk	x0, #0x0, lsl #32
    274c:	f2c00001 	movk	x1, #0x0, lsl #32
    2750:	f2e00000 	movk	x0, #0x0, lsl #48
    2754:	f2e00001 	movk	x1, #0x0, lsl #48
    2758:	2a1503e2 	mov	w2, w21
    275c:	94000000 	bl	0 <printk>
    2760:	14000079 	b	2944 <stmmac_open+0x634>
    2764:	f9400288 	ldr	x8, [x20]
    2768:	b4000608 	cbz	x8, 2828 <stmmac_open+0x518>
    276c:	114022e3 	add	w3, w23, #0x8, lsl #12
    2770:	52880001 	mov	w1, #0x4000                	// #16384
    2774:	aa1503e0 	mov	x0, x21
    2778:	aa1603e2 	mov	x2, x22
    277c:	aa1f03e4 	mov	x4, xzr
    2780:	d63f0100 	blr	x8
    2784:	f90033e0 	str	x0, [sp,#96]
    2788:	f9000320 	str	x0, [x25]
    278c:	b50001e0 	cbnz	x0, 27c8 <stmmac_open+0x4b8>
    2790:	14000027 	b	282c <stmmac_open+0x51c>
    2794:	f904e67f 	str	xzr, [x19,#2504]
    2798:	14000056 	b	28f0 <stmmac_open+0x5e0>
    279c:	f9400288 	ldr	x8, [x20]
    27a0:	b4000728 	cbz	x8, 2884 <stmmac_open+0x574>
    27a4:	114022e3 	add	w3, w23, #0x8, lsl #12
    27a8:	52840001 	mov	w1, #0x2000                	// #8192
    27ac:	aa1503e0 	mov	x0, x21
    27b0:	aa1603e2 	mov	x2, x22
    27b4:	aa1f03e4 	mov	x4, xzr
    27b8:	d63f0100 	blr	x8
    27bc:	f90033e0 	str	x0, [sp,#96]
    27c0:	f9048660 	str	x0, [x19,#2312]
    27c4:	b4000620 	cbz	x0, 2888 <stmmac_open+0x578>
    27c8:	f9459268 	ldr	x8, [x19,#2848]
    27cc:	f9400d08 	ldr	x8, [x8,#24]
    27d0:	f9400d08 	ldr	x8, [x8,#24]
    27d4:	b40000c8 	cbz	x8, 27ec <stmmac_open+0x4dc>
    27d8:	b9424a60 	ldr	w0, [x19,#584]
    27dc:	d63f0100 	blr	x8
    27e0:	53047c08 	lsr	w8, w0, #4
    27e4:	710ff91f 	cmp	w8, #0x3fe
    27e8:	54000c88 	b.hi	2978 <stmmac_open+0x668>
    27ec:	b9424a68 	ldr	w8, [x19,#584]
    27f0:	7140091f 	cmp	w8, #0x2, lsl #12
    27f4:	5400006b 	b.lt	2800 <stmmac_open+0x4f0>
    27f8:	5287fe00 	mov	w0, #0x3ff0                	// #16368
    27fc:	1400005f 	b	2978 <stmmac_open+0x668>
    2800:	713ffd1f 	cmp	w8, #0xfff
    2804:	540000ad 	b.le	2818 <stmmac_open+0x508>
    2808:	52840000 	mov	w0, #0x2000                	// #8192
    280c:	1400005b 	b	2978 <stmmac_open+0x668>
    2810:	f904e27f 	str	xzr, [x19,#2496]
    2814:	14000037 	b	28f0 <stmmac_open+0x5e0>
    2818:	711ffd1f 	cmp	w8, #0x7ff
    281c:	54000a6d 	b.le	2968 <stmmac_open+0x658>
    2820:	52820000 	mov	w0, #0x1000                	// #4096
    2824:	14000055 	b	2978 <stmmac_open+0x668>
    2828:	f900033f 	str	xzr, [x25]
    282c:	f9458e74 	ldr	x20, [x19,#2840]
    2830:	f944e676 	ldr	x22, [x19,#2504]
    2834:	f9450275 	ldr	x21, [x19,#2560]
    2838:	b4000074 	cbz	x20, 2844 <stmmac_open+0x534>
    283c:	f9412697 	ldr	x23, [x20,#584]
    2840:	b50000b7 	cbnz	x23, 2854 <stmmac_open+0x544>
    2844:	d2800017 	mov	x23, #0x0                   	// #0
    2848:	f2a00017 	movk	x23, #0x0, lsl #16
    284c:	f2c00017 	movk	x23, #0x0, lsl #32
    2850:	f2e00017 	movk	x23, #0x0, lsl #48
    2854:	d53b4228 	mrs	x8, daif
    2858:	373838c8 	tbnz	w8, #7, 2f70 <stmmac_open+0xc60>
    285c:	52800041 	mov	w1, #0x2                   	// #2
    2860:	aa1403e0 	mov	x0, x20
    2864:	aa1603e2 	mov	x2, x22
    2868:	94000000 	bl	0 <dma_release_from_coherent>
    286c:	35000420 	cbnz	w0, 28f0 <stmmac_open+0x5e0>
    2870:	b4000416 	cbz	x22, 28f0 <stmmac_open+0x5e0>
    2874:	f94006e8 	ldr	x8, [x23,#8]
    2878:	b40003c8 	cbz	x8, 28f0 <stmmac_open+0x5e0>
    287c:	52880001 	mov	w1, #0x4000                	// #16384
    2880:	14000017 	b	28dc <stmmac_open+0x5cc>
    2884:	f904867f 	str	xzr, [x19,#2312]
    2888:	f9458e74 	ldr	x20, [x19,#2840]
    288c:	f944e276 	ldr	x22, [x19,#2496]
    2890:	f9450275 	ldr	x21, [x19,#2560]
    2894:	b4000074 	cbz	x20, 28a0 <stmmac_open+0x590>
    2898:	f9412697 	ldr	x23, [x20,#584]
    289c:	b50000b7 	cbnz	x23, 28b0 <stmmac_open+0x5a0>
    28a0:	d2800017 	mov	x23, #0x0                   	// #0
    28a4:	f2a00017 	movk	x23, #0x0, lsl #16
    28a8:	f2c00017 	movk	x23, #0x0, lsl #32
    28ac:	f2e00017 	movk	x23, #0x0, lsl #48
    28b0:	d53b4228 	mrs	x8, daif
    28b4:	37383628 	tbnz	w8, #7, 2f78 <stmmac_open+0xc68>
    28b8:	52800021 	mov	w1, #0x1                   	// #1
    28bc:	aa1403e0 	mov	x0, x20
    28c0:	aa1603e2 	mov	x2, x22
    28c4:	94000000 	bl	0 <dma_release_from_coherent>
    28c8:	35000140 	cbnz	w0, 28f0 <stmmac_open+0x5e0>
    28cc:	b4000136 	cbz	x22, 28f0 <stmmac_open+0x5e0>
    28d0:	f94006e8 	ldr	x8, [x23,#8]
    28d4:	b40000e8 	cbz	x8, 28f0 <stmmac_open+0x5e0>
    28d8:	52840001 	mov	w1, #0x2000                	// #8192
    28dc:	aa1403e0 	mov	x0, x20
    28e0:	aa1603e2 	mov	x2, x22
    28e4:	aa1503e3 	mov	x3, x21
    28e8:	aa1f03e4 	mov	x4, xzr
    28ec:	d63f0100 	blr	x8
    28f0:	f9448a60 	ldr	x0, [x19,#2320]
    28f4:	94000000 	bl	0 <kfree>
    28f8:	f9449a60 	ldr	x0, [x19,#2352]
    28fc:	94000000 	bl	0 <kfree>
    2900:	f944ea60 	ldr	x0, [x19,#2512]
    2904:	94000000 	bl	0 <kfree>
    2908:	f944fe60 	ldr	x0, [x19,#2552]
    290c:	94000000 	bl	0 <kfree>
    2910:	d2800000 	mov	x0, #0x0                   	// #0
    2914:	d2800001 	mov	x1, #0x0                   	// #0
    2918:	f2a00000 	movk	x0, #0x0, lsl #16
    291c:	f2a00001 	movk	x1, #0x0, lsl #16
    2920:	f2c00000 	movk	x0, #0x0, lsl #32
    2924:	f2c00001 	movk	x1, #0x0, lsl #32
    2928:	f2e00000 	movk	x0, #0x0, lsl #48
    292c:	f2e00001 	movk	x1, #0x0, lsl #48
    2930:	94000000 	bl	0 <printk>
    2934:	12800175 	mov	w21, #0xfffffff4            	// #-12
    2938:	f945a260 	ldr	x0, [x19,#2880]
    293c:	b4000040 	cbz	x0, 2944 <stmmac_open+0x634>
    2940:	94000000 	bl	0 <phy_disconnect>
    2944:	2a1503e0 	mov	w0, w21
    2948:	a94f7bfd 	ldp	x29, x30, [sp,#240]
    294c:	a94e4ff4 	ldp	x20, x19, [sp,#224]
    2950:	a94d57f6 	ldp	x22, x21, [sp,#208]
    2954:	a94c5ff8 	ldp	x24, x23, [sp,#192]
    2958:	a94b67fa 	ldp	x26, x25, [sp,#176]
    295c:	a94a6ffc 	ldp	x28, x27, [sp,#160]
    2960:	910403ff 	add	sp, sp, #0x100
    2964:	d65f03c0 	ret
    2968:	7118011f 	cmp	w8, #0x600
    296c:	5280c008 	mov	w8, #0x600                 	// #1536
    2970:	52810009 	mov	w9, #0x800                 	// #2048
    2974:	1a88c120 	csel	w0, w9, w8, gt
    2978:	d280001b 	mov	x27, #0x0                   	// #0
    297c:	f2a0001b 	movk	x27, #0x0, lsl #16
    2980:	d2dff7f5 	mov	x21, #0xffbf00000000        	// #281195803836416
    2984:	f2c0001b 	movk	x27, #0x0, lsl #32
    2988:	f9000bf9 	str	x25, [sp,#16]
    298c:	aa1f03f4 	mov	x20, xzr
    2990:	aa1f03fc 	mov	x28, xzr
    2994:	91272279 	add	x25, x19, #0x9c8
    2998:	91270268 	add	x8, x19, #0x9c0
    299c:	f2fffff5 	movk	x21, #0xffff, lsl #48
    29a0:	f2e0001b 	movk	x27, #0x0, lsl #48
    29a4:	5287fe1a 	mov	w26, #0x3ff0                	// #16368
    29a8:	b9000fe0 	str	w0, [sp,#12]
    29ac:	b909e260 	str	w0, [x19,#2528]
    29b0:	f9000fe8 	str	x8, [sp,#24]
    29b4:	b951b668 	ldr	w8, [x19,#4532]
    29b8:	35000108 	cbnz	w8, 29d8 <stmmac_open+0x6c8>
    29bc:	1400000a 	b	29e4 <stmmac_open+0x6d4>
    29c0:	9100079c 	add	x28, x28, #0x1
    29c4:	f108039f 	cmp	x28, #0x200
    29c8:	91004294 	add	x20, x20, #0x10
    29cc:	54001300 	b.eq	2c2c <stmmac_open+0x91c>
    29d0:	b951b668 	ldr	w8, [x19,#4532]
    29d4:	34000088 	cbz	w8, 29e4 <stmmac_open+0x6d4>
    29d8:	f9400328 	ldr	x8, [x25]
    29dc:	8b1c1516 	add	x22, x8, x28, lsl #5
    29e0:	14000004 	b	29f0 <stmmac_open+0x6e0>
    29e4:	f9400fe8 	ldr	x8, [sp,#24]
    29e8:	f9400108 	ldr	x8, [x8]
    29ec:	8b140116 	add	x22, x8, x20
    29f0:	b949e268 	ldr	w8, [x19,#2528]
    29f4:	f9458a60 	ldr	x0, [x19,#2832]
    29f8:	52801802 	mov	w2, #0xc0                  	// #192
    29fc:	72a04802 	movk	w2, #0x240, lsl #16
    2a00:	11000901 	add	w1, w8, #0x2
    2a04:	94000000 	bl	0 <__netdev_alloc_skb>
    2a08:	b4000860 	cbz	x0, 2b14 <stmmac_open+0x804>
    2a0c:	f940c808 	ldr	x8, [x0,#400]
    2a10:	b9416009 	ldr	w9, [x0,#352]
    2a14:	aa0003f7 	mov	x23, x0
    2a18:	91000908 	add	x8, x8, #0x2
    2a1c:	11000929 	add	w9, w9, #0x2
    2a20:	f900c808 	str	x8, [x0,#400]
    2a24:	b9016009 	str	w9, [x0,#352]
    2a28:	f944ea68 	ldr	x8, [x19,#2512]
    2a2c:	f83c7900 	str	x0, [x8,x28,lsl #3]
    2a30:	f9458e60 	ldr	x0, [x19,#2840]
    2a34:	f940cae8 	ldr	x8, [x23,#400]
    2a38:	b949e263 	ldr	w3, [x19,#2528]
    2a3c:	b4000060 	cbz	x0, 2a48 <stmmac_open+0x738>
    2a40:	f9412409 	ldr	x9, [x0,#584]
    2a44:	b5000049 	cbnz	x9, 2a4c <stmmac_open+0x73c>
    2a48:	aa1b03e9 	mov	x9, x27
    2a4c:	f9401129 	ldr	x9, [x9,#32]
    2a50:	d346fd0a 	lsr	x10, x8, #6
    2a54:	927a654a 	and	x10, x10, #0xffffffc0
    2a58:	aa150141 	orr	x1, x10, x21
    2a5c:	92402d02 	and	x2, x8, #0xfff
    2a60:	52800044 	mov	w4, #0x2                   	// #2
    2a64:	aa1f03e5 	mov	x5, xzr
    2a68:	d63f0120 	blr	x9
    2a6c:	f944fe68 	ldr	x8, [x19,#2552]
    2a70:	d37df389 	lsl	x9, x28, #3
    2a74:	f8296900 	str	x0, [x8,x9]
    2a78:	f944fe68 	ldr	x8, [x19,#2552]
    2a7c:	f9458e60 	ldr	x0, [x19,#2840]
    2a80:	f8696901 	ldr	x1, [x8,x9]
    2a84:	b40001a0 	cbz	x0, 2ab8 <stmmac_open+0x7a8>
    2a88:	f9412408 	ldr	x8, [x0,#584]
    2a8c:	b4000168 	cbz	x8, 2ab8 <stmmac_open+0x7a8>
    2a90:	f9403908 	ldr	x8, [x8,#112]
    2a94:	b4000188 	cbz	x8, 2ac4 <stmmac_open+0x7b4>
    2a98:	b4000060 	cbz	x0, 2aa4 <stmmac_open+0x794>
    2a9c:	f9412408 	ldr	x8, [x0,#584]
    2aa0:	b5000048 	cbnz	x8, 2aa8 <stmmac_open+0x798>
    2aa4:	aa1b03e8 	mov	x8, x27
    2aa8:	f9403908 	ldr	x8, [x8,#112]
    2aac:	d63f0100 	blr	x8
    2ab0:	34000100 	cbz	w0, 2ad0 <stmmac_open+0x7c0>
    2ab4:	14000025 	b	2b48 <stmmac_open+0x838>
    2ab8:	aa1b03e8 	mov	x8, x27
    2abc:	f9403908 	ldr	x8, [x8,#112]
    2ac0:	b5fffec8 	cbnz	x8, 2a98 <stmmac_open+0x788>
    2ac4:	b100043f 	cmn	x1, #0x1
    2ac8:	1a9f17e0 	cset	w0, eq
    2acc:	350003e0 	cbnz	w0, 2b48 <stmmac_open+0x838>
    2ad0:	f944fe68 	ldr	x8, [x19,#2552]
    2ad4:	b9512669 	ldr	w9, [x19,#4388]
    2ad8:	f87c7908 	ldr	x8, [x8,x28,lsl #3]
    2adc:	7101013f 	cmp	w9, #0x40
    2ae0:	1a9fa7e9 	cset	w9, lt
    2ae4:	d37df129 	lsl	x9, x9, #3
    2ae8:	b8296ac8 	str	w8, [x22,x9]
    2aec:	f9459268 	ldr	x8, [x19,#2848]
    2af0:	f9400d08 	ldr	x8, [x8,#24]
    2af4:	f9401108 	ldr	x8, [x8,#32]
    2af8:	b4fff648 	cbz	x8, 29c0 <stmmac_open+0x6b0>
    2afc:	b949e269 	ldr	w9, [x19,#2528]
    2b00:	6b1a013f 	cmp	w9, w26
    2b04:	54fff5e1 	b.ne	29c0 <stmmac_open+0x6b0>
    2b08:	aa1603e0 	mov	x0, x22
    2b0c:	d63f0100 	blr	x8
    2b10:	17ffffac 	b	29c0 <stmmac_open+0x6b0>
    2b14:	d2800000 	mov	x0, #0x0                   	// #0
    2b18:	d2800001 	mov	x1, #0x0                   	// #0
    2b1c:	f2a00000 	movk	x0, #0x0, lsl #16
    2b20:	f2a00001 	movk	x1, #0x0, lsl #16
    2b24:	f2c00000 	movk	x0, #0x0, lsl #32
    2b28:	f2c00001 	movk	x1, #0x0, lsl #32
    2b2c:	f2e00000 	movk	x0, #0x0, lsl #48
    2b30:	f2e00001 	movk	x1, #0x0, lsl #48
    2b34:	94000000 	bl	0 <printk>
    2b38:	12800175 	mov	w21, #0xfffffff4            	// #-12
    2b3c:	f9400bf7 	ldr	x23, [sp,#16]
    2b40:	3500023c 	cbnz	w28, 2b84 <stmmac_open+0x874>
    2b44:	1400002c 	b	2bf4 <stmmac_open+0x8e4>
    2b48:	d2800000 	mov	x0, #0x0                   	// #0
    2b4c:	d2800001 	mov	x1, #0x0                   	// #0
    2b50:	f2a00000 	movk	x0, #0x0, lsl #16
    2b54:	f2a00001 	movk	x1, #0x0, lsl #16
    2b58:	f2c00000 	movk	x0, #0x0, lsl #32
    2b5c:	f2c00001 	movk	x1, #0x0, lsl #32
    2b60:	f2e00000 	movk	x0, #0x0, lsl #48
    2b64:	f2e00001 	movk	x1, #0x0, lsl #48
    2b68:	94000000 	bl	0 <printk>
    2b6c:	52800021 	mov	w1, #0x1                   	// #1
    2b70:	aa1703e0 	mov	x0, x23
    2b74:	94000000 	bl	0 <__dev_kfree_skb_any>
    2b78:	128002b5 	mov	w21, #0xffffffea            	// #-22
    2b7c:	f9400bf7 	ldr	x23, [sp,#16]
    2b80:	340003bc 	cbz	w28, 2bf4 <stmmac_open+0x8e4>
    2b84:	d1000794 	sub	x20, x28, #0x1
    2b88:	14000007 	b	2ba4 <stmmac_open+0x894>
    2b8c:	52800021 	mov	w1, #0x1                   	// #1
    2b90:	94000000 	bl	0 <__dev_kfree_skb_any>
    2b94:	f944ea68 	ldr	x8, [x19,#2512]
    2b98:	f834791f 	str	xzr, [x8,x20,lsl #3]
    2b9c:	d1000694 	sub	x20, x20, #0x1
    2ba0:	37f802b4 	tbnz	w20, #31, 2bf4 <stmmac_open+0x8e4>
    2ba4:	f944ea68 	ldr	x8, [x19,#2512]
    2ba8:	f8747900 	ldr	x0, [x8,x20,lsl #3]
    2bac:	b4ffff60 	cbz	x0, 2b98 <stmmac_open+0x888>
    2bb0:	f944fe69 	ldr	x9, [x19,#2552]
    2bb4:	f9458e68 	ldr	x8, [x19,#2840]
    2bb8:	b949e262 	ldr	w2, [x19,#2528]
    2bbc:	f8747921 	ldr	x1, [x9,x20,lsl #3]
    2bc0:	b4000068 	cbz	x8, 2bcc <stmmac_open+0x8bc>
    2bc4:	f9412509 	ldr	x9, [x8,#584]
    2bc8:	b5000049 	cbnz	x9, 2bd0 <stmmac_open+0x8c0>
    2bcc:	aa1b03e9 	mov	x9, x27
    2bd0:	f9401529 	ldr	x9, [x9,#40]
    2bd4:	b4fffdc9 	cbz	x9, 2b8c <stmmac_open+0x87c>
    2bd8:	52800043 	mov	w3, #0x2                   	// #2
    2bdc:	aa0803e0 	mov	x0, x8
    2be0:	aa1f03e4 	mov	x4, xzr
    2be4:	d63f0120 	blr	x9
    2be8:	f944ea68 	ldr	x8, [x19,#2512]
    2bec:	f8747900 	ldr	x0, [x8,x20,lsl #3]
    2bf0:	17ffffe7 	b	2b8c <stmmac_open+0x87c>
    2bf4:	d2800000 	mov	x0, #0x0                   	// #0
    2bf8:	d2800001 	mov	x1, #0x0                   	// #0
    2bfc:	f2a00000 	movk	x0, #0x0, lsl #16
    2c00:	f2a00001 	movk	x1, #0x0, lsl #16
    2c04:	f2c00000 	movk	x0, #0x0, lsl #32
    2c08:	f2c00001 	movk	x1, #0x0, lsl #32
    2c0c:	f2e00000 	movk	x0, #0x0, lsl #48
    2c10:	f2e00001 	movk	x1, #0x0, lsl #48
    2c14:	94000000 	bl	0 <printk>
    2c18:	aa1703e0 	mov	x0, x23
    2c1c:	94000758 	bl	497c <free_dma_desc_resources>
    2c20:	f945a260 	ldr	x0, [x19,#2880]
    2c24:	b5ffe8e0 	cbnz	x0, 2940 <stmmac_open+0x630>
    2c28:	17ffff47 	b	2944 <stmmac_open+0x634>
    2c2c:	51080388 	sub	w8, w28, #0x200
    2c30:	b909de68 	str	w8, [x19,#2524]
    2c34:	b9400fe8 	ldr	w8, [sp,#12]
    2c38:	b909da7f 	str	wzr, [x19,#2520]
    2c3c:	f9400bf7 	ldr	x23, [sp,#16]
    2c40:	b9000308 	str	w8, [x24]
    2c44:	b951b268 	ldr	w8, [x19,#4528]
    2c48:	7100051f 	cmp	w8, #0x1
    2c4c:	540003e1 	b.ne	2cc8 <stmmac_open+0x9b8>
    2c50:	f9459268 	ldr	x8, [x19,#2848]
    2c54:	b951b669 	ldr	w9, [x19,#4532]
    2c58:	f9400d08 	ldr	x8, [x8,#24]
    2c5c:	f9400108 	ldr	x8, [x8]
    2c60:	340001a9 	cbz	w9, 2c94 <stmmac_open+0x984>
    2c64:	f944e660 	ldr	x0, [x19,#2504]
    2c68:	f9450261 	ldr	x1, [x19,#2560]
    2c6c:	52804002 	mov	w2, #0x200                 	// #512
    2c70:	52800023 	mov	w3, #0x1                   	// #1
    2c74:	d63f0100 	blr	x8
    2c78:	f9459268 	ldr	x8, [x19,#2848]
    2c7c:	f9448260 	ldr	x0, [x19,#2304]
    2c80:	f9449e61 	ldr	x1, [x19,#2360]
    2c84:	52804002 	mov	w2, #0x200                 	// #512
    2c88:	f9400d08 	ldr	x8, [x8,#24]
    2c8c:	52800023 	mov	w3, #0x1                   	// #1
    2c90:	1400000c 	b	2cc0 <stmmac_open+0x9b0>
    2c94:	f944e260 	ldr	x0, [x19,#2496]
    2c98:	f9450261 	ldr	x1, [x19,#2560]
    2c9c:	52804002 	mov	w2, #0x200                 	// #512
    2ca0:	2a1f03e3 	mov	w3, wzr
    2ca4:	d63f0100 	blr	x8
    2ca8:	f9459268 	ldr	x8, [x19,#2848]
    2cac:	f9448660 	ldr	x0, [x19,#2312]
    2cb0:	f9449e61 	ldr	x1, [x19,#2360]
    2cb4:	52804002 	mov	w2, #0x200                 	// #512
    2cb8:	f9400d08 	ldr	x8, [x8,#24]
    2cbc:	2a1f03e3 	mov	w3, wzr
    2cc0:	f9400108 	ldr	x8, [x8]
    2cc4:	d63f0100 	blr	x8
    2cc8:	aa1f03e8 	mov	x8, xzr
    2ccc:	aa1f03e9 	mov	x9, xzr
    2cd0:	aa1f03ea 	mov	x10, xzr
    2cd4:	aa1f03eb 	mov	x11, xzr
    2cd8:	91242274 	add	x20, x19, #0x908
    2cdc:	b951b66c 	ldr	w12, [x19,#4532]
    2ce0:	3500030c 	cbnz	w12, 2d40 <stmmac_open+0xa30>
    2ce4:	1400001a 	b	2d4c <stmmac_open+0xa3c>
    2ce8:	b900099f 	str	wzr, [x12,#8]
    2cec:	f9449a6c 	ldr	x12, [x19,#2352]
    2cf0:	9100414a 	add	x10, x10, #0x10
    2cf4:	9100056b 	add	x11, x11, #0x1
    2cf8:	f140095f 	cmp	x10, #0x2, lsl #12
    2cfc:	f828699f 	str	xzr, [x12,x8]
    2d00:	f9449a6c 	ldr	x12, [x19,#2352]
    2d04:	8b08018c 	add	x12, x12, x8
    2d08:	3900219f 	strb	wzr, [x12,#8]
    2d0c:	f9449a6c 	ldr	x12, [x19,#2352]
    2d10:	8b08018c 	add	x12, x12, x8
    2d14:	b9000d9f 	str	wzr, [x12,#12]
    2d18:	f9449a6c 	ldr	x12, [x19,#2352]
    2d1c:	8b08018c 	add	x12, x12, x8
    2d20:	3900419f 	strb	wzr, [x12,#16]
    2d24:	f9448a6c 	ldr	x12, [x19,#2320]
    2d28:	91006108 	add	x8, x8, #0x18
    2d2c:	f829699f 	str	xzr, [x12,x9]
    2d30:	91002129 	add	x9, x9, #0x8
    2d34:	540001c0 	b.eq	2d6c <stmmac_open+0xa5c>
    2d38:	b951b66c 	ldr	w12, [x19,#4532]
    2d3c:	3400008c 	cbz	w12, 2d4c <stmmac_open+0xa3c>
    2d40:	f94002ec 	ldr	x12, [x23]
    2d44:	8b0b158c 	add	x12, x12, x11, lsl #5
    2d48:	14000003 	b	2d54 <stmmac_open+0xa44>
    2d4c:	f940028c 	ldr	x12, [x20]
    2d50:	8b0a018c 	add	x12, x12, x10
    2d54:	b951266d 	ldr	w13, [x19,#4388]
    2d58:	710101bf 	cmp	w13, #0x40
    2d5c:	54fffc6b 	b.lt	2ce8 <stmmac_open+0x9d8>
    2d60:	f900019f 	str	xzr, [x12]
    2d64:	b9000d9f 	str	wzr, [x12,#12]
    2d68:	17ffffe0 	b	2ce8 <stmmac_open+0x9d8>
    2d6c:	f9458a68 	ldr	x8, [x19,#2832]
    2d70:	6f00e400 	movi	v0.2d, #0x0
    2d74:	fd048e60 	str	d0, [x19,#2328]
    2d78:	52800020 	mov	w0, #0x1                   	// #1
    2d7c:	f941e115 	ldr	x21, [x8,#960]
    2d80:	910242a1 	add	x1, x21, #0x90
    2d84:	94000000 	bl	0 <clear_bit>
    2d88:	910302a0 	add	x0, x21, #0xc0
    2d8c:	94000000 	bl	0 <dql_reset>
    2d90:	aa1703e0 	mov	x0, x23
    2d94:	97fffb4e 	bl	1acc <stmmac_clear_descriptors>
    2d98:	52822528 	mov	w8, #0x1129                	// #4393
    2d9c:	38686a68 	ldrb	w8, [x19,x8]
    2da0:	362802a8 	tbz	w8, #5, 2df4 <stmmac_open+0xae4>
    2da4:	b951b668 	ldr	w8, [x19,#4532]
    2da8:	f9459269 	ldr	x9, [x19,#2848]
    2dac:	52804001 	mov	w1, #0x200                 	// #512
    2db0:	52800022 	mov	w2, #0x1                   	// #1
    2db4:	7100011f 	cmp	w8, #0x0
    2db8:	f9400528 	ldr	x8, [x9,#8]
    2dbc:	f9400fe9 	ldr	x9, [sp,#24]
    2dc0:	9a97028a 	csel	x10, x20, x23, eq
    2dc4:	f9400155 	ldr	x21, [x10]
    2dc8:	f9404d08 	ldr	x8, [x8,#152]
    2dcc:	9a990129 	csel	x9, x9, x25, eq
    2dd0:	f9400120 	ldr	x0, [x9]
    2dd4:	d63f0100 	blr	x8
    2dd8:	f9459268 	ldr	x8, [x19,#2848]
    2ddc:	52804001 	mov	w1, #0x200                 	// #512
    2de0:	aa1503e0 	mov	x0, x21
    2de4:	2a1f03e2 	mov	w2, wzr
    2de8:	f9400508 	ldr	x8, [x8,#8]
    2dec:	f9404d08 	ldr	x8, [x8,#152]
    2df0:	d63f0100 	blr	x8
    2df4:	52800021 	mov	w1, #0x1                   	// #1
    2df8:	aa1303e0 	mov	x0, x19
    2dfc:	97fffb6a 	bl	1ba4 <stmmac_hw_setup>
    2e00:	37f80a60 	tbnz	w0, #31, 2f4c <stmmac_open+0xc3c>
    2e04:	d2800008 	mov	x8, #0x0                   	// #0
    2e08:	f2a00008 	movk	x8, #0x0, lsl #16
    2e0c:	f2c00008 	movk	x8, #0x0, lsl #32
    2e10:	f2e00008 	movk	x8, #0x0, lsl #48
    2e14:	fd400100 	ldr	d0, [x8]
    2e18:	91254275 	add	x21, x19, #0x950
    2e1c:	91249268 	add	x8, x19, #0x924
    2e20:	aa1503e0 	mov	x0, x21
    2e24:	2a1f03e1 	mov	w1, wzr
    2e28:	aa1f03e2 	mov	x2, xzr
    2e2c:	aa1f03e3 	mov	x3, xzr
    2e30:	fd000100 	str	d0, [x8]
    2e34:	94000000 	bl	0 <init_timer_key>
    2e38:	d2800008 	mov	x8, #0x0                   	// #0
    2e3c:	f2a00008 	movk	x8, #0x0, lsl #16
    2e40:	f2c00008 	movk	x8, #0x0, lsl #32
    2e44:	f2e00008 	movk	x8, #0x0, lsl #48
    2e48:	f9400114 	ldr	x20, [x8]
    2e4c:	b9492a60 	ldr	w0, [x19,#2344]
    2e50:	94000000 	bl	0 <__usecs_to_jiffies>
    2e54:	d2800009 	mov	x9, #0x0                   	// #0
    2e58:	f2a00009 	movk	x9, #0x0, lsl #16
    2e5c:	f2c00009 	movk	x9, #0x0, lsl #32
    2e60:	8b140008 	add	x8, x0, x20
    2e64:	f2e00009 	movk	x9, #0x0, lsl #48
    2e68:	aa1503e0 	mov	x0, x21
    2e6c:	f904ba77 	str	x23, [x19,#2416]
    2e70:	f904b268 	str	x8, [x19,#2400]
    2e74:	f904b669 	str	x9, [x19,#2408]
    2e78:	94000000 	bl	0 <add_timer>
    2e7c:	f945a260 	ldr	x0, [x19,#2880]
    2e80:	b4000040 	cbz	x0, 2e88 <stmmac_open+0xb78>
    2e84:	94000000 	bl	0 <phy_start>
    2e88:	d2800016 	mov	x22, #0x0                   	// #0
    2e8c:	b9404260 	ldr	w0, [x19,#64]
    2e90:	f2a00016 	movk	x22, #0x0, lsl #16
    2e94:	f2c00016 	movk	x22, #0x0, lsl #32
    2e98:	f2e00016 	movk	x22, #0x0, lsl #48
    2e9c:	52801003 	mov	w3, #0x80                  	// #128
    2ea0:	aa1603e1 	mov	x1, x22
    2ea4:	aa1f03e2 	mov	x2, xzr
    2ea8:	aa1303e4 	mov	x4, x19
    2eac:	aa1303e5 	mov	x5, x19
    2eb0:	94000000 	bl	0 <request_threaded_irq>
    2eb4:	37f80660 	tbnz	w0, #31, 2f80 <stmmac_open+0xc70>
    2eb8:	b9513260 	ldr	w0, [x19,#4400]
    2ebc:	b9404268 	ldr	w8, [x19,#64]
    2ec0:	6b08001f 	cmp	w0, w8
    2ec4:	54000100 	b.eq	2ee4 <stmmac_open+0xbd4>
    2ec8:	52801003 	mov	w3, #0x80                  	// #128
    2ecc:	aa1603e1 	mov	x1, x22
    2ed0:	aa1f03e2 	mov	x2, xzr
    2ed4:	aa1303e4 	mov	x4, x19
    2ed8:	aa1303e5 	mov	x5, x19
    2edc:	94000000 	bl	0 <request_threaded_irq>
    2ee0:	37f80940 	tbnz	w0, #31, 3008 <stmmac_open+0xcf8>
    2ee4:	b951a260 	ldr	w0, [x19,#4512]
    2ee8:	7100041f 	cmp	w0, #0x1
    2eec:	5400010b 	b.lt	2f0c <stmmac_open+0xbfc>
    2ef0:	52801003 	mov	w3, #0x80                  	// #128
    2ef4:	aa1603e1 	mov	x1, x22
    2ef8:	aa1f03e2 	mov	x2, xzr
    2efc:	aa1303e4 	mov	x4, x19
    2f00:	aa1303e5 	mov	x5, x19
    2f04:	94000000 	bl	0 <request_threaded_irq>
    2f08:	37f805a0 	tbnz	w0, #31, 2fbc <stmmac_open+0xcac>
    2f0c:	f9452a68 	ldr	x8, [x19,#2640]
    2f10:	36000528 	tbz	w8, #0, 2fb4 <stmmac_open+0xca4>
    2f14:	d5033bbf 	dmb	ish
    2f18:	91294274 	add	x20, x19, #0xa50
    2f1c:	2a1f03e0 	mov	w0, wzr
    2f20:	aa1403e1 	mov	x1, x20
    2f24:	94000000 	bl	0 <clear_bit>
    2f28:	52800040 	mov	w0, #0x2                   	// #2
    2f2c:	aa1403e1 	mov	x1, x20
    2f30:	94000000 	bl	0 <clear_bit>
    2f34:	f941e268 	ldr	x8, [x19,#960]
    2f38:	2a1f03e0 	mov	w0, wzr
    2f3c:	91024101 	add	x1, x8, #0x90
    2f40:	94000000 	bl	0 <clear_bit>
    2f44:	2a1f03f5 	mov	w21, wzr
    2f48:	17fffe7f 	b	2944 <stmmac_open+0x634>
    2f4c:	2a0003f5 	mov	w21, w0
    2f50:	d2800000 	mov	x0, #0x0                   	// #0
    2f54:	d2800001 	mov	x1, #0x0                   	// #0
    2f58:	f2a00000 	movk	x0, #0x0, lsl #16
    2f5c:	f2a00001 	movk	x1, #0x0, lsl #16
    2f60:	f2c00000 	movk	x0, #0x0, lsl #32
    2f64:	f2c00001 	movk	x1, #0x0, lsl #32
    2f68:	f2e00000 	movk	x0, #0x0, lsl #48
    2f6c:	17ffff29 	b	2c10 <stmmac_open+0x900>
    2f70:	d4210000 	brk	#0x800
    2f74:	17fffe3a 	b	285c <stmmac_open+0x54c>
    2f78:	d4210000 	brk	#0x800
    2f7c:	17fffe4f 	b	28b8 <stmmac_open+0x5a8>
    2f80:	2a0003f5 	mov	w21, w0
    2f84:	b9404262 	ldr	w2, [x19,#64]
    2f88:	d2800000 	mov	x0, #0x0                   	// #0
    2f8c:	d2800001 	mov	x1, #0x0                   	// #0
    2f90:	f2a00000 	movk	x0, #0x0, lsl #16
    2f94:	f2a00001 	movk	x1, #0x0, lsl #16
    2f98:	f2c00000 	movk	x0, #0x0, lsl #32
    2f9c:	f2c00001 	movk	x1, #0x0, lsl #32
    2fa0:	f2e00000 	movk	x0, #0x0, lsl #48
    2fa4:	f2e00001 	movk	x1, #0x0, lsl #48
    2fa8:	2a1503e3 	mov	w3, w21
    2fac:	94000000 	bl	0 <printk>
    2fb0:	17ffff1a 	b	2c18 <stmmac_open+0x908>
    2fb4:	d4210000 	brk	#0x800
    2fb8:	14000000 	b	2fb8 <stmmac_open+0xca8>
    2fbc:	2a0003f5 	mov	w21, w0
    2fc0:	b951a262 	ldr	w2, [x19,#4512]
    2fc4:	d2800000 	mov	x0, #0x0                   	// #0
    2fc8:	d2800001 	mov	x1, #0x0                   	// #0
    2fcc:	f2a00000 	movk	x0, #0x0, lsl #16
    2fd0:	f2a00001 	movk	x1, #0x0, lsl #16
    2fd4:	f2c00000 	movk	x0, #0x0, lsl #32
    2fd8:	f2c00001 	movk	x1, #0x0, lsl #32
    2fdc:	f2e00000 	movk	x0, #0x0, lsl #48
    2fe0:	f2e00001 	movk	x1, #0x0, lsl #48
    2fe4:	2a1503e3 	mov	w3, w21
    2fe8:	94000000 	bl	0 <printk>
    2fec:	b9513260 	ldr	w0, [x19,#4400]
    2ff0:	b9404268 	ldr	w8, [x19,#64]
    2ff4:	6b08001f 	cmp	w0, w8
    2ff8:	54000200 	b.eq	3038 <stmmac_open+0xd28>
    2ffc:	aa1303e1 	mov	x1, x19
    3000:	94000000 	bl	0 <free_irq>
    3004:	1400000d 	b	3038 <stmmac_open+0xd28>
    3008:	2a0003f5 	mov	w21, w0
    300c:	b9513262 	ldr	w2, [x19,#4400]
    3010:	d2800000 	mov	x0, #0x0                   	// #0
    3014:	d2800001 	mov	x1, #0x0                   	// #0
    3018:	f2a00000 	movk	x0, #0x0, lsl #16
    301c:	f2a00001 	movk	x1, #0x0, lsl #16
    3020:	f2c00000 	movk	x0, #0x0, lsl #32
    3024:	f2c00001 	movk	x1, #0x0, lsl #32
    3028:	f2e00000 	movk	x0, #0x0, lsl #48
    302c:	f2e00001 	movk	x1, #0x0, lsl #48
    3030:	2a1503e3 	mov	w3, w21
    3034:	94000000 	bl	0 <printk>
    3038:	b9404260 	ldr	w0, [x19,#64]
    303c:	aa1303e1 	mov	x1, x19
    3040:	94000000 	bl	0 <free_irq>
    3044:	f9400bf7 	ldr	x23, [sp,#16]
    3048:	17fffef4 	b	2c18 <stmmac_open+0x908>

000000000000304c <stmmac_release>:
    304c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    3050:	a9017bfd 	stp	x29, x30, [sp,#16]
    3054:	910043fd 	add	x29, sp, #0x10
    3058:	aa0003f3 	mov	x19, x0
    305c:	94000000 	bl	0 <_mcount>
    3060:	b951a668 	ldr	w8, [x19,#4516]
    3064:	34000088 	cbz	w8, 3074 <stmmac_release+0x28>
    3068:	52822b08 	mov	w8, #0x1158                	// #4440
    306c:	8b080260 	add	x0, x19, x8
    3070:	94000000 	bl	0 <del_timer_sync>
    3074:	f945a260 	ldr	x0, [x19,#2880]
    3078:	b40000a0 	cbz	x0, 308c <stmmac_release+0x40>
    307c:	94000000 	bl	0 <phy_stop>
    3080:	f945a260 	ldr	x0, [x19,#2880]
    3084:	94000000 	bl	0 <phy_disconnect>
    3088:	f905a27f 	str	xzr, [x19,#2880]
    308c:	f941e268 	ldr	x8, [x19,#960]
    3090:	2a1f03e0 	mov	w0, wzr
    3094:	91240274 	add	x20, x19, #0x900
    3098:	91024101 	add	x1, x8, #0x90
    309c:	94000000 	bl	0 <set_bit>
    30a0:	91290260 	add	x0, x19, #0xa40
    30a4:	94000000 	bl	0 <napi_disable>
    30a8:	91254260 	add	x0, x19, #0x950
    30ac:	94000000 	bl	0 <del_timer_sync>
    30b0:	b9404260 	ldr	w0, [x19,#64]
    30b4:	aa1303e1 	mov	x1, x19
    30b8:	94000000 	bl	0 <free_irq>
    30bc:	b9513260 	ldr	w0, [x19,#4400]
    30c0:	b9404268 	ldr	w8, [x19,#64]
    30c4:	6b08001f 	cmp	w0, w8
    30c8:	54000060 	b.eq	30d4 <stmmac_release+0x88>
    30cc:	aa1303e1 	mov	x1, x19
    30d0:	94000000 	bl	0 <free_irq>
    30d4:	b951a260 	ldr	w0, [x19,#4512]
    30d8:	7100041f 	cmp	w0, #0x1
    30dc:	5400006b 	b.lt	30e8 <stmmac_release+0x9c>
    30e0:	aa1303e1 	mov	x1, x19
    30e4:	94000000 	bl	0 <free_irq>
    30e8:	f9459268 	ldr	x8, [x19,#2848]
    30ec:	f9458660 	ldr	x0, [x19,#2824]
    30f0:	f9400908 	ldr	x8, [x8,#16]
    30f4:	f9402908 	ldr	x8, [x8,#80]
    30f8:	d63f0100 	blr	x8
    30fc:	f9459268 	ldr	x8, [x19,#2848]
    3100:	f9458660 	ldr	x0, [x19,#2824]
    3104:	f9400908 	ldr	x8, [x8,#16]
    3108:	f9403108 	ldr	x8, [x8,#96]
    310c:	d63f0100 	blr	x8
    3110:	aa1403e0 	mov	x0, x20
    3114:	9400061a 	bl	497c <free_dma_desc_resources>
    3118:	f9458660 	ldr	x0, [x19,#2824]
    311c:	2a1f03e1 	mov	w1, wzr
    3120:	94000000 	bl	83d8 <stmmac_set_mac>
    3124:	aa1303e0 	mov	x0, x19
    3128:	94000000 	bl	0 <netif_carrier_off>
    312c:	f9493e60 	ldr	x0, [x19,#4728]
    3130:	94000000 	bl	0 <debugfs_remove_recursive>
    3134:	f9491e73 	ldr	x19, [x19,#4664]
    3138:	b40000b3 	cbz	x19, 314c <stmmac_release+0x100>
    313c:	aa1303e0 	mov	x0, x19
    3140:	94000000 	bl	0 <clk_disable>
    3144:	aa1303e0 	mov	x0, x19
    3148:	94000000 	bl	0 <clk_unprepare>
    314c:	aa1403e0 	mov	x0, x20
    3150:	94000000 	bl	bf8c <stmmac_ptp_unregister>
    3154:	a9417bfd 	ldp	x29, x30, [sp,#16]
    3158:	2a1f03e0 	mov	w0, wzr
    315c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    3160:	d65f03c0 	ret

0000000000003164 <stmmac_xmit>:
    3164:	d10303ff 	sub	sp, sp, #0xc0
    3168:	a9066ffc 	stp	x28, x27, [sp,#96]
    316c:	a90767fa 	stp	x26, x25, [sp,#112]
    3170:	a9085ff8 	stp	x24, x23, [sp,#128]
    3174:	a90957f6 	stp	x22, x21, [sp,#144]
    3178:	a90a4ff4 	stp	x20, x19, [sp,#160]
    317c:	a90b7bfd 	stp	x29, x30, [sp,#176]
    3180:	9102c3fd 	add	x29, sp, #0xb0
    3184:	aa0103f3 	mov	x19, x1
    3188:	aa0003f6 	mov	x22, x0
    318c:	94000000 	bl	0 <_mcount>
    3190:	f940c2c8 	ldr	x8, [x22,#384]
    3194:	b94172c9 	ldr	w9, [x22,#368]
    3198:	b940a2d7 	ldr	w23, [x22,#160]
    319c:	b940b2d8 	ldr	w24, [x22,#176]
    31a0:	f9002ff6 	str	x22, [sp,#88]
    31a4:	8b090109 	add	x9, x8, x9
    31a8:	7940052a 	ldrh	w10, [x9,#2]
    31ac:	39400134 	ldrb	w20, [x9]
    31b0:	d2800009 	mov	x9, #0x0                   	// #0
    31b4:	a90353e9 	stp	x9, x20, [sp,#48]
    31b8:	3400062a 	cbz	w10, 327c <stmmac_xmit+0x118>
    31bc:	39666269 	ldrb	w9, [x19,#2456]
    31c0:	340005e9 	cbz	w9, 327c <stmmac_xmit+0x118>
    31c4:	7942b2c9 	ldrh	w9, [x22,#344]
    31c8:	8b090108 	add	x8, x8, x9
    31cc:	39402508 	ldrb	w8, [x8,#9]
    31d0:	7100191f 	cmp	w8, #0x6
    31d4:	54000541 	b.ne	327c <stmmac_xmit+0x118>
    31d8:	91252277 	add	x23, x19, #0x948
    31dc:	aa1703e0 	mov	x0, x23
    31e0:	94000000 	bl	0 <_raw_spin_lock>
    31e4:	f940c2c8 	ldr	x8, [x22,#384]
    31e8:	7942aeca 	ldrh	w10, [x22,#342]
    31ec:	b94192cb 	ldr	w11, [x22,#400]
    31f0:	b940a2c9 	ldr	w9, [x22,#160]
    31f4:	b9491a75 	ldr	w21, [x19,#2328]
    31f8:	8b0a010a 	add	x10, x8, x10
    31fc:	4b0b014b 	sub	w11, w10, w11
    3200:	7940194a 	ldrh	w10, [x10,#12]
    3204:	b9491e6c 	ldr	w12, [x19,#2332]
    3208:	2a3503ed 	mvn	w13, w21
    320c:	53027d4a 	lsr	w10, w10, #2
    3210:	121e0d4a 	and	w10, w10, #0x3c
    3214:	0b0a016a 	add	w10, w11, w10
    3218:	12001d58 	and	w24, w10, #0xff
    321c:	5280022b 	mov	w11, #0x11                  	// #17
    3220:	4b18012a 	sub	w10, w9, w24
    3224:	72a0008b 	movk	w11, #0x4, lsl #16
    3228:	9bab7d4b 	umull	x11, w10, w11
    322c:	0b0d018d 	add	w13, w12, w13
    3230:	6b15018c 	subs	w12, w12, w21
    3234:	d360fd6b 	lsr	x11, x11, #32
    3238:	1107fd8c 	add	w12, w12, #0x1ff
    323c:	4b0b014a 	sub	w10, w10, w11
    3240:	1a8c81ac 	csel	w12, w13, w12, hi
    3244:	0b4a056a 	add	w10, w11, w10, lsr #1
    3248:	6b4a359f 	cmp	w12, w10, lsr #13
    324c:	54006b09 	b.ls	3fac <stmmac_xmit+0xe48>
    3250:	b94172ca 	ldr	w10, [x22,#368]
    3254:	b940b2cb 	ldr	w11, [x22,#176]
    3258:	8b0a0108 	add	x8, x8, x10
    325c:	7940051a 	ldrh	w26, [x8,#2]
    3260:	b9527268 	ldr	w8, [x19,#4720]
    3264:	4b0b0129 	sub	w9, w9, w11
    3268:	4b180139 	sub	w25, w9, w24
    326c:	6b1a011f 	cmp	w8, w26
    3270:	540013a1 	b.ne	34e4 <stmmac_xmit+0x380>
    3274:	f9002bff 	str	xzr, [sp,#80]
    3278:	140000a8 	b	3518 <stmmac_xmit+0x3b4>
    327c:	91252275 	add	x21, x19, #0x948
    3280:	aa1503e0 	mov	x0, x21
    3284:	94000000 	bl	0 <_raw_spin_lock>
    3288:	b9491a7a 	ldr	w26, [x19,#2328]
    328c:	b9491e68 	ldr	w8, [x19,#2332]
    3290:	2a3a03e9 	mvn	w9, w26
    3294:	6b1a010a 	subs	w10, w8, w26
    3298:	0b090108 	add	w8, w8, w9
    329c:	1107fd49 	add	w9, w10, #0x1ff
    32a0:	1a898108 	csel	w8, w8, w9, hi
    32a4:	6b14011f 	cmp	w8, w20
    32a8:	54004449 	b.ls	3b30 <stmmac_xmit+0x9cc>
    32ac:	39653268 	ldrb	w8, [x19,#2380]
    32b0:	91240269 	add	x9, x19, #0x900
    32b4:	f9002be9 	str	x9, [sp,#80]
    32b8:	b90023f7 	str	w23, [sp,#32]
    32bc:	34000148 	cbz	w8, 32e4 <stmmac_xmit+0x180>
    32c0:	f9459260 	ldr	x0, [x19,#2848]
    32c4:	f9400008 	ldr	x8, [x0]
    32c8:	f9402908 	ldr	x8, [x8,#80]
    32cc:	d63f0100 	blr	x8
    32d0:	52822b08 	mov	w8, #0x1158                	// #4440
    32d4:	8b080260 	add	x0, x19, x8
    32d8:	94000000 	bl	0 <del_timer_sync>
    32dc:	b9491a7a 	ldr	w26, [x19,#2328]
    32e0:	3925327f 	strb	wzr, [x19,#2380]
    32e4:	7941f2c8 	ldrh	w8, [x22,#248]
    32e8:	b951b669 	ldr	w9, [x19,#4532]
    32ec:	b9001bf8 	str	w24, [sp,#24]
    32f0:	12180508 	and	w8, w8, #0x300
    32f4:	710c011f 	cmp	w8, #0x300
    32f8:	1a9f17f7 	cset	w23, eq
    32fc:	b9004be8 	str	w8, [sp,#72]
    3300:	340043c9 	cbz	w9, 3b78 <stmmac_xmit+0xa14>
    3304:	f9402be8 	ldr	x8, [sp,#80]
    3308:	93407f49 	sxtw	x9, w26
    330c:	f9400108 	ldr	x8, [x8]
    3310:	8b091519 	add	x25, x8, x9, lsl #5
    3314:	f9448a68 	ldr	x8, [x19,#2320]
    3318:	f90017f5 	str	x21, [sp,#40]
    331c:	f90007fa 	str	x26, [sp,#8]
    3320:	f83a5916 	str	x22, [x8,w26,uxtw #3]
    3324:	f947c268 	ldr	x8, [x19,#3968]
    3328:	b9403901 	ldr	w1, [x8,#56]
    332c:	340000e1 	cbz	w1, 3348 <stmmac_xmit+0x1e4>
    3330:	f9459268 	ldr	x8, [x19,#2848]
    3334:	b940a2c0 	ldr	w0, [x22,#160]
    3338:	f9400d08 	ldr	x8, [x8,#24]
    333c:	f9400508 	ldr	x8, [x8,#8]
    3340:	d63f0100 	blr	x8
    3344:	35004200 	cbnz	w0, 3b84 <stmmac_xmit+0xa20>
    3348:	b90017ff 	str	wzr, [sp,#20]
    334c:	f90003f9 	str	x25, [sp]
    3350:	340043f4 	cbz	w20, 3bcc <stmmac_xmit+0xa68>
    3354:	51000688 	sub	w8, w20, #0x1
    3358:	d37cee89 	lsl	x9, x20, #4
    335c:	f9401bf4 	ldr	x20, [sp,#48]
    3360:	aa1f03f5 	mov	x21, xzr
    3364:	d37ced18 	lsl	x24, x8, #4
    3368:	f90023e9 	str	x9, [sp,#64]
    336c:	f2a00014 	movk	x20, #0x0, lsl #16
    3370:	f2c00014 	movk	x20, #0x0, lsl #32
    3374:	f2e00014 	movk	x20, #0x0, lsl #48
    3378:	1400002f 	b	3434 <stmmac_xmit+0x2d0>
    337c:	aa1403e9 	mov	x9, x20
    3380:	f9403929 	ldr	x9, [x9,#112]
    3384:	aa0803e0 	mov	x0, x8
    3388:	aa1703e1 	mov	x1, x23
    338c:	d63f0120 	blr	x9
    3390:	35005060 	cbnz	w0, 3d9c <stmmac_xmit+0xc38>
    3394:	f9448a68 	ldr	x8, [x19,#2320]
    3398:	8b3a4749 	add	x9, x26, w26, uxtw #1
    339c:	d37df129 	lsl	x9, x9, #3
    33a0:	b9404bea 	ldr	w10, [sp,#72]
    33a4:	f83a591f 	str	xzr, [x8,w26,uxtw #3]
    33a8:	f9449a68 	ldr	x8, [x19,#2352]
    33ac:	eb15031f 	cmp	x24, x21
    33b0:	1a9f17e6 	cset	w6, eq
    33b4:	710c015f 	cmp	w10, #0x300
    33b8:	f8296917 	str	x23, [x8,x9]
    33bc:	b9512668 	ldr	w8, [x19,#4388]
    33c0:	1a9f17e3 	cset	w3, eq
    33c4:	5280002a 	mov	w10, #0x1                   	// #1
    33c8:	52800025 	mov	w5, #0x1                   	// #1
    33cc:	7101011f 	cmp	w8, #0x40
    33d0:	1a9fa7e8 	cset	w8, lt
    33d4:	d37df108 	lsl	x8, x8, #3
    33d8:	b8286b3c 	str	w28, [x25,x8]
    33dc:	f9449a68 	ldr	x8, [x19,#2352]
    33e0:	aa1903e0 	mov	x0, x25
    33e4:	2a1f03e1 	mov	w1, wzr
    33e8:	2a1b03e2 	mov	w2, w27
    33ec:	8b090108 	add	x8, x8, x9
    33f0:	3900210a 	strb	w10, [x8,#8]
    33f4:	f9449a68 	ldr	x8, [x19,#2352]
    33f8:	8b090108 	add	x8, x8, x9
    33fc:	b9000d1b 	str	w27, [x8,#12]
    3400:	f9449a68 	ldr	x8, [x19,#2352]
    3404:	8b090108 	add	x8, x8, x9
    3408:	39004116 	strb	w22, [x8,#16]
    340c:	f9459268 	ldr	x8, [x19,#2848]
    3410:	b951b264 	ldr	w4, [x19,#4528]
    3414:	f9400508 	ldr	x8, [x8,#8]
    3418:	f9400908 	ldr	x8, [x8,#16]
    341c:	d63f0100 	blr	x8
    3420:	f94023e8 	ldr	x8, [sp,#64]
    3424:	f9402ff6 	ldr	x22, [sp,#88]
    3428:	910042b5 	add	x21, x21, #0x10
    342c:	eb15011f 	cmp	x8, x21
    3430:	54003ce0 	b.eq	3bcc <stmmac_xmit+0xa68>
    3434:	f940c2c8 	ldr	x8, [x22,#384]
    3438:	b94172c9 	ldr	w9, [x22,#368]
    343c:	eb15031f 	cmp	x24, x21
    3440:	1100074b 	add	w11, w26, #0x1
    3444:	1a9f17f6 	cset	w22, eq
    3448:	8b09010a 	add	x10, x8, x9
    344c:	8b15014a 	add	x10, x10, x21
    3450:	b9403d5b 	ldr	w27, [x10,#60]
    3454:	b951b66a 	ldr	w10, [x19,#4532]
    3458:	1200217a 	and	w26, w11, #0x1ff
    345c:	93407f63 	sxtw	x3, w27
    3460:	340003ca 	cbz	w10, 34d8 <stmmac_xmit+0x374>
    3464:	f9402bea 	ldr	x10, [sp,#80]
    3468:	f940014a 	ldr	x10, [x10]
    346c:	8b1a1559 	add	x25, x10, x26, lsl #5
    3470:	8b090108 	add	x8, x8, x9
    3474:	8b150108 	add	x8, x8, x21
    3478:	f9458e60 	ldr	x0, [x19,#2840]
    347c:	f9401901 	ldr	x1, [x8,#48]
    3480:	b9403902 	ldr	w2, [x8,#56]
    3484:	b4000060 	cbz	x0, 3490 <stmmac_xmit+0x32c>
    3488:	f9412408 	ldr	x8, [x0,#584]
    348c:	b5000048 	cbnz	x8, 3494 <stmmac_xmit+0x330>
    3490:	aa1403e8 	mov	x8, x20
    3494:	f9401108 	ldr	x8, [x8,#32]
    3498:	52800024 	mov	w4, #0x1                   	// #1
    349c:	aa1f03e5 	mov	x5, xzr
    34a0:	d63f0100 	blr	x8
    34a4:	f9458e68 	ldr	x8, [x19,#2840]
    34a8:	aa0003fc 	mov	x28, x0
    34ac:	92407c17 	and	x23, x0, #0xffffffff
    34b0:	b4000068 	cbz	x8, 34bc <stmmac_xmit+0x358>
    34b4:	f9412509 	ldr	x9, [x8,#584]
    34b8:	b5000049 	cbnz	x9, 34c0 <stmmac_xmit+0x35c>
    34bc:	aa1403e9 	mov	x9, x20
    34c0:	f9403929 	ldr	x9, [x9,#112]
    34c4:	b4fff689 	cbz	x9, 3394 <stmmac_xmit+0x230>
    34c8:	b4fff5a8 	cbz	x8, 337c <stmmac_xmit+0x218>
    34cc:	f9412509 	ldr	x9, [x8,#584]
    34d0:	b5fff589 	cbnz	x9, 3380 <stmmac_xmit+0x21c>
    34d4:	17ffffaa 	b	337c <stmmac_xmit+0x218>
    34d8:	f944866a 	ldr	x10, [x19,#2312]
    34dc:	8b3a5159 	add	x25, x10, w26, uxtw #4
    34e0:	17ffffe4 	b	3470 <stmmac_xmit+0x30c>
    34e4:	f9459268 	ldr	x8, [x19,#2848]
    34e8:	f9448669 	ldr	x9, [x19,#2312]
    34ec:	2a1a03e1 	mov	w1, w26
    34f0:	f9400508 	ldr	x8, [x8,#8]
    34f4:	8b151120 	add	x0, x9, x21, lsl #4
    34f8:	f9002be0 	str	x0, [sp,#80]
    34fc:	f9405108 	ldr	x8, [x8,#160]
    3500:	d63f0100 	blr	x8
    3504:	b9491a68 	ldr	w8, [x19,#2328]
    3508:	b912727a 	str	w26, [x19,#4720]
    350c:	11000508 	add	w8, w8, #0x1
    3510:	12002115 	and	w21, w8, #0x1ff
    3514:	b9091a75 	str	w21, [x19,#2328]
    3518:	52822528 	mov	w8, #0x1129                	// #4393
    351c:	38686a68 	ldrb	w8, [x19,x8]
    3520:	36000368 	tbz	w8, #0, 358c <stmmac_xmit+0x428>
    3524:	f940c2c8 	ldr	x8, [x22,#384]
    3528:	7942aec9 	ldrh	w9, [x22,#342]
    352c:	d2800000 	mov	x0, #0x0                   	// #0
    3530:	d2800001 	mov	x1, #0x0                   	// #0
    3534:	f2a00000 	movk	x0, #0x0, lsl #16
    3538:	8b090108 	add	x8, x8, x9
    353c:	79401908 	ldrh	w8, [x8,#12]
    3540:	f2a00001 	movk	x1, #0x0, lsl #16
    3544:	f2c00000 	movk	x0, #0x0, lsl #32
    3548:	f2c00001 	movk	x1, #0x0, lsl #32
    354c:	53027d08 	lsr	w8, w8, #2
    3550:	121e0d02 	and	w2, w8, #0x3c
    3554:	f2e00000 	movk	x0, #0x0, lsl #48
    3558:	f2e00001 	movk	x1, #0x0, lsl #48
    355c:	2a1803e3 	mov	w3, w24
    3560:	2a1903e4 	mov	w4, w25
    3564:	2a1a03e5 	mov	w5, w26
    3568:	94000000 	bl	0 <printk>
    356c:	b940a2c1 	ldr	w1, [x22,#160]
    3570:	b940b2c2 	ldr	w2, [x22,#176]
    3574:	d2800000 	mov	x0, #0x0                   	// #0
    3578:	f2a00000 	movk	x0, #0x0, lsl #16
    357c:	f2c00000 	movk	x0, #0x0, lsl #32
    3580:	f2e00000 	movk	x0, #0x0, lsl #48
    3584:	94000000 	bl	0 <printk>
    3588:	b9491a75 	ldr	w21, [x19,#2328]
    358c:	b940a2c9 	ldr	w9, [x22,#160]
    3590:	b940b2ca 	ldr	w10, [x22,#176]
    3594:	f9448674 	ldr	x20, [x19,#2312]
    3598:	f9458e60 	ldr	x0, [x19,#2840]
    359c:	f940cac8 	ldr	x8, [x22,#400]
    35a0:	4b0a0123 	sub	w3, w9, w10
    35a4:	b4000060 	cbz	x0, 35b0 <stmmac_xmit+0x44c>
    35a8:	f9412409 	ldr	x9, [x0,#584]
    35ac:	b50000a9 	cbnz	x9, 35c0 <stmmac_xmit+0x45c>
    35b0:	f9401be9 	ldr	x9, [sp,#48]
    35b4:	f2a00009 	movk	x9, #0x0, lsl #16
    35b8:	f2c00009 	movk	x9, #0x0, lsl #32
    35bc:	f2e00009 	movk	x9, #0x0, lsl #48
    35c0:	f9401129 	ldr	x9, [x9,#32]
    35c4:	d346fd0a 	lsr	x10, x8, #6
    35c8:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    35cc:	927a654a 	and	x10, x10, #0xffffffc0
    35d0:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    35d4:	aa0b0141 	orr	x1, x10, x11
    35d8:	92402d02 	and	x2, x8, #0xfff
    35dc:	52800024 	mov	w4, #0x1                   	// #1
    35e0:	aa1f03e5 	mov	x5, xzr
    35e4:	d63f0120 	blr	x9
    35e8:	f9458e68 	ldr	x8, [x19,#2840]
    35ec:	aa0003fc 	mov	x28, x0
    35f0:	92407c1b 	and	x27, x0, #0xffffffff
    35f4:	b4000068 	cbz	x8, 3600 <stmmac_xmit+0x49c>
    35f8:	f9412509 	ldr	x9, [x8,#584]
    35fc:	b50000a9 	cbnz	x9, 3610 <stmmac_xmit+0x4ac>
    3600:	f9401be9 	ldr	x9, [sp,#48]
    3604:	f2a00009 	movk	x9, #0x0, lsl #16
    3608:	f2c00009 	movk	x9, #0x0, lsl #32
    360c:	f2e00009 	movk	x9, #0x0, lsl #48
    3610:	f9403929 	ldr	x9, [x9,#112]
    3614:	b40002e9 	cbz	x9, 3670 <stmmac_xmit+0x50c>
    3618:	b4000068 	cbz	x8, 3624 <stmmac_xmit+0x4c0>
    361c:	f9412509 	ldr	x9, [x8,#584]
    3620:	b50000a9 	cbnz	x9, 3634 <stmmac_xmit+0x4d0>
    3624:	f9401be9 	ldr	x9, [sp,#48]
    3628:	f2a00009 	movk	x9, #0x0, lsl #16
    362c:	f2c00009 	movk	x9, #0x0, lsl #32
    3630:	f2e00009 	movk	x9, #0x0, lsl #48
    3634:	f9403929 	ldr	x9, [x9,#112]
    3638:	aa0803e0 	mov	x0, x8
    363c:	aa1b03e1 	mov	x1, x27
    3640:	d63f0120 	blr	x9
    3644:	34000160 	cbz	w0, 3670 <stmmac_xmit+0x50c>
    3648:	aa1703e0 	mov	x0, x23
    364c:	94000000 	bl	0 <_raw_spin_unlock>
    3650:	f9458e60 	ldr	x0, [x19,#2840]
    3654:	d2800001 	mov	x1, #0x0                   	// #0
    3658:	f2a00001 	movk	x1, #0x0, lsl #16
    365c:	f2c00001 	movk	x1, #0x0, lsl #32
    3660:	f2e00001 	movk	x1, #0x0, lsl #48
    3664:	94000000 	bl	0 <dev_err>
    3668:	aa1603e0 	mov	x0, x22
    366c:	140001d5 	b	3dc0 <stmmac_xmit+0xc5c>
    3670:	f9449a68 	ldr	x8, [x19,#2352]
    3674:	2a1503fa 	mov	w26, w21
    3678:	8b1a0749 	add	x9, x26, x26, lsl #1
    367c:	d37df129 	lsl	x9, x9, #3
    3680:	f829691b 	str	x27, [x8,x9]
    3684:	b940a2c8 	ldr	w8, [x22,#160]
    3688:	b940b2ca 	ldr	w10, [x22,#176]
    368c:	f9449a6b 	ldr	x11, [x19,#2352]
    3690:	f90027f7 	str	x23, [sp,#72]
    3694:	f9401ff7 	ldr	x23, [sp,#56]
    3698:	4b0a0108 	sub	w8, w8, w10
    369c:	8b090169 	add	x9, x11, x9
    36a0:	b9000d28 	str	w8, [x9,#12]
    36a4:	f9448a68 	ldr	x8, [x19,#2320]
    36a8:	8b355289 	add	x9, x20, w21, uxtw #4
    36ac:	f9000fe9 	str	x9, [sp,#24]
    36b0:	f83a7916 	str	x22, [x8,x26,lsl #3]
    36b4:	b900013c 	str	w28, [x9]
    36b8:	34000499 	cbz	w25, 3748 <stmmac_xmit+0x5e4>
    36bc:	8b1a1289 	add	x9, x20, x26, lsl #4
    36c0:	1287ffd4 	mov	w20, #0xffffc001            	// #-16383
    36c4:	0b140335 	add	w21, w25, w20
    36c8:	0b1c0308 	add	w8, w24, w28
    36cc:	710006bf 	cmp	w21, #0x1
    36d0:	b9000528 	str	w8, [x9,#4]
    36d4:	540003ab 	b.lt	3748 <stmmac_xmit+0x5e4>
    36d8:	5287fff6 	mov	w22, #0x3fff                	// #16383
    36dc:	b9491a68 	ldr	w8, [x19,#2328]
    36e0:	f9448669 	ldr	x9, [x19,#2312]
    36e4:	710002ff 	cmp	w23, #0x0
    36e8:	52800024 	mov	w4, #0x1                   	// #1
    36ec:	11000508 	add	w8, w8, #0x1
    36f0:	12002108 	and	w8, w8, #0x1ff
    36f4:	8b285120 	add	x0, x9, w8, uxtw #4
    36f8:	b9091a68 	str	w8, [x19,#2328]
    36fc:	b900001c 	str	w28, [x0]
    3700:	f9459268 	ldr	x8, [x19,#2848]
    3704:	1a9f17e9 	cset	w9, eq
    3708:	6b1602bf 	cmp	w21, w22
    370c:	1a96b2a2 	csel	w2, w21, w22, lt
    3710:	f9400508 	ldr	x8, [x8,#8]
    3714:	714012bf 	cmp	w21, #0x4, lsl #12
    3718:	1a9fa7ea 	cset	w10, lt
    371c:	0a0a0125 	and	w5, w9, w10
    3720:	f9400d08 	ldr	x8, [x8,#24]
    3724:	2a1f03e1 	mov	w1, wzr
    3728:	2a1f03e3 	mov	w3, wzr
    372c:	2a1f03e6 	mov	w6, wzr
    3730:	2a1f03e7 	mov	w7, wzr
    3734:	d63f0100 	blr	x8
    3738:	0b1402b5 	add	w21, w21, w20
    373c:	710002bf 	cmp	w21, #0x0
    3740:	0b16039c 	add	w28, w28, w22
    3744:	54fffccc 	b.gt	36dc <stmmac_xmit+0x578>
    3748:	f90013fa 	str	x26, [sp,#32]
    374c:	b9002bf9 	str	w25, [sp,#40]
    3750:	b90043f8 	str	w24, [sp,#64]
    3754:	34000ab7 	cbz	w23, 38a8 <stmmac_xmit+0x744>
    3758:	f9401fe8 	ldr	x8, [sp,#56]
    375c:	aa1f03f4 	mov	x20, xzr
    3760:	5287fff9 	mov	w25, #0x3fff                	// #16383
    3764:	1287ffdb 	mov	w27, #0xffffc001            	// #-16383
    3768:	51000515 	sub	w21, w8, #0x1
    376c:	f9401be8 	ldr	x8, [sp,#48]
    3770:	52800318 	mov	w24, #0x18                  	// #24
    3774:	f2a00008 	movk	x8, #0x0, lsl #16
    3778:	f2c00008 	movk	x8, #0x0, lsl #32
    377c:	f2e00008 	movk	x8, #0x0, lsl #48
    3780:	f9001be8 	str	x8, [sp,#48]
    3784:	14000017 	b	37e0 <stmmac_xmit+0x67c>
    3788:	b9491a68 	ldr	w8, [x19,#2328]
    378c:	f9449a69 	ldr	x9, [x19,#2352]
    3790:	92407f8a 	and	x10, x28, #0xffffffff
    3794:	91000694 	add	x20, x20, #0x1
    3798:	9b187d08 	mul	x8, x8, x24
    379c:	f828692a 	str	x10, [x9,x8]
    37a0:	f9449a68 	ldr	x8, [x19,#2352]
    37a4:	b9491a69 	ldr	w9, [x19,#2328]
    37a8:	b940034a 	ldr	w10, [x26]
    37ac:	9b182128 	madd	x8, x9, x24, x8
    37b0:	b9000d0a 	str	w10, [x8,#12]
    37b4:	f9448a68 	ldr	x8, [x19,#2320]
    37b8:	b9491a69 	ldr	w9, [x19,#2328]
    37bc:	f829791f 	str	xzr, [x8,x9,lsl #3]
    37c0:	f9449a68 	ldr	x8, [x19,#2352]
    37c4:	b9491a69 	ldr	w9, [x19,#2328]
    37c8:	9b182128 	madd	x8, x9, x24, x8
    37cc:	f9401fe9 	ldr	x9, [sp,#56]
    37d0:	eb09029f 	cmp	x20, x9
    37d4:	52800029 	mov	w9, #0x1                   	// #1
    37d8:	39002109 	strb	w9, [x8,#8]
    37dc:	54000660 	b.eq	38a8 <stmmac_xmit+0x744>
    37e0:	f9402fe9 	ldr	x9, [sp,#88]
    37e4:	f9458e60 	ldr	x0, [x19,#2840]
    37e8:	f940c128 	ldr	x8, [x9,#384]
    37ec:	b9417129 	ldr	w9, [x9,#368]
    37f0:	8b090108 	add	x8, x8, x9
    37f4:	8b14111a 	add	x26, x8, x20, lsl #4
    37f8:	b843cf43 	ldr	w3, [x26,#60]!
    37fc:	f85f4341 	ldur	x1, [x26,#-12]
    3800:	b85fc342 	ldur	w2, [x26,#-4]
    3804:	b4000060 	cbz	x0, 3810 <stmmac_xmit+0x6ac>
    3808:	f9412408 	ldr	x8, [x0,#584]
    380c:	b5000048 	cbnz	x8, 3814 <stmmac_xmit+0x6b0>
    3810:	f9401be8 	ldr	x8, [sp,#48]
    3814:	f9401108 	ldr	x8, [x8,#32]
    3818:	52800024 	mov	w4, #0x1                   	// #1
    381c:	aa1f03e5 	mov	x5, xzr
    3820:	d63f0100 	blr	x8
    3824:	b9400357 	ldr	w23, [x26]
    3828:	aa0003fc 	mov	x28, x0
    382c:	710006ff 	cmp	w23, #0x1
    3830:	54fffacb 	b.lt	3788 <stmmac_xmit+0x624>
    3834:	2a1c03f6 	mov	w22, w28
    3838:	b9491a68 	ldr	w8, [x19,#2328]
    383c:	f9448669 	ldr	x9, [x19,#2312]
    3840:	eb15029f 	cmp	x20, x21
    3844:	52800024 	mov	w4, #0x1                   	// #1
    3848:	11000508 	add	w8, w8, #0x1
    384c:	12002108 	and	w8, w8, #0x1ff
    3850:	8b285120 	add	x0, x9, w8, uxtw #4
    3854:	b9091a68 	str	w8, [x19,#2328]
    3858:	b9000016 	str	w22, [x0]
    385c:	f9459268 	ldr	x8, [x19,#2848]
    3860:	1a9f17e9 	cset	w9, eq
    3864:	6b1902ff 	cmp	w23, w25
    3868:	1a99b2e2 	csel	w2, w23, w25, lt
    386c:	f9400508 	ldr	x8, [x8,#8]
    3870:	714012ff 	cmp	w23, #0x4, lsl #12
    3874:	1a9fa7ea 	cset	w10, lt
    3878:	0a0a0125 	and	w5, w9, w10
    387c:	f9400d08 	ldr	x8, [x8,#24]
    3880:	2a1f03e1 	mov	w1, wzr
    3884:	2a1f03e3 	mov	w3, wzr
    3888:	2a1f03e6 	mov	w6, wzr
    388c:	2a1f03e7 	mov	w7, wzr
    3890:	d63f0100 	blr	x8
    3894:	0b1b02f7 	add	w23, w23, w27
    3898:	710002ff 	cmp	w23, #0x0
    389c:	0b1902d6 	add	w22, w22, w25
    38a0:	54fffccc 	b.gt	3838 <stmmac_xmit+0x6d4>
    38a4:	17ffffb9 	b	3788 <stmmac_xmit+0x624>
    38a8:	f9449a68 	ldr	x8, [x19,#2352]
    38ac:	b9491a69 	ldr	w9, [x19,#2328]
    38b0:	5280030a 	mov	w10, #0x18                  	// #24
    38b4:	f9402ff5 	ldr	x21, [sp,#88]
    38b8:	9b0a2128 	madd	x8, x9, x10, x8
    38bc:	52800029 	mov	w9, #0x1                   	// #1
    38c0:	39004109 	strb	w9, [x8,#16]
    38c4:	b9491a68 	ldr	w8, [x19,#2328]
    38c8:	b9491e69 	ldr	w9, [x19,#2332]
    38cc:	11000508 	add	w8, w8, #0x1
    38d0:	1200210a 	and	w10, w8, #0x1ff
    38d4:	32175908 	orr	w8, w8, #0xfffffe00
    38d8:	52002108 	eor	w8, w8, #0x1ff
    38dc:	0b090108 	add	w8, w8, w9
    38e0:	6b0a0129 	subs	w9, w9, w10
    38e4:	1107fd29 	add	w9, w9, #0x1ff
    38e8:	1a898108 	csel	w8, w8, w9, hi
    38ec:	7100491f 	cmp	w8, #0x12
    38f0:	b9091a6a 	str	w10, [x19,#2328]
    38f4:	54003909 	b.ls	4014 <stmmac_xmit+0xeb0>
    38f8:	b940a2a8 	ldr	w8, [x21,#160]
    38fc:	f940a669 	ldr	x9, [x19,#328]
    3900:	f947ba6a 	ldr	x10, [x19,#3952]
    3904:	f9401ff6 	ldr	x22, [sp,#56]
    3908:	f94027f7 	ldr	x23, [sp,#72]
    390c:	8b080128 	add	x8, x9, x8
    3910:	f900a668 	str	x8, [x19,#328]
    3914:	b9492268 	ldr	w8, [x19,#2336]
    3918:	9100054a 	add	x10, x10, #0x1
    391c:	f947be69 	ldr	x9, [x19,#3960]
    3920:	f907ba6a 	str	x10, [x19,#3952]
    3924:	b949266a 	ldr	w10, [x19,#2340]
    3928:	f9400ffa 	ldr	x26, [sp,#24]
    392c:	0b0802c8 	add	w8, w22, w8
    3930:	11000508 	add	w8, w8, #0x1
    3934:	8b160129 	add	x9, x9, x22
    3938:	6b08015f 	cmp	w10, w8
    393c:	f907be69 	str	x9, [x19,#3960]
    3940:	b9092268 	str	w8, [x19,#2336]
    3944:	54003729 	b.ls	4028 <stmmac_xmit+0xec4>
    3948:	d2800008 	mov	x8, #0x0                   	// #0
    394c:	f2a00008 	movk	x8, #0x0, lsl #16
    3950:	f2c00008 	movk	x8, #0x0, lsl #32
    3954:	f2e00008 	movk	x8, #0x0, lsl #48
    3958:	f9400114 	ldr	x20, [x8]
    395c:	b9492a60 	ldr	w0, [x19,#2344]
    3960:	9125427c 	add	x28, x19, #0x950
    3964:	94000000 	bl	0 <__usecs_to_jiffies>
    3968:	8b140001 	add	x1, x0, x20
    396c:	aa1c03e0 	mov	x0, x28
    3970:	94000000 	bl	0 <mod_timer>
    3974:	b9494668 	ldr	w8, [x19,#2372]
    3978:	b94043f4 	ldr	w20, [sp,#64]
    397c:	b9402bf8 	ldr	w24, [sp,#40]
    3980:	f94013f9 	ldr	x25, [sp,#32]
    3984:	35000168 	cbnz	w8, 39b0 <stmmac_xmit+0x84c>
    3988:	f940c2a8 	ldr	x8, [x21,#384]
    398c:	b94172a9 	ldr	w9, [x21,#368]
    3990:	8b090108 	add	x8, x8, x9
    3994:	39400508 	ldrb	w8, [x8,#1]
    3998:	121f0508 	and	w8, w8, #0x6
    399c:	7100091f 	cmp	w8, #0x2
    39a0:	54000081 	b.ne	39b0 <stmmac_xmit+0x84c>
    39a4:	aa1503e0 	mov	x0, x21
    39a8:	aa1f03e1 	mov	x1, xzr
    39ac:	94000000 	bl	0 <skb_tstamp_tx>
    39b0:	f940c2a8 	ldr	x8, [x21,#384]
    39b4:	b94172a9 	ldr	w9, [x21,#368]
    39b8:	8b090109 	add	x9, x8, x9
    39bc:	3940052a 	ldrb	w10, [x9,#1]
    39c0:	3600006a 	tbz	w10, #0, 39cc <stmmac_xmit+0x868>
    39c4:	b949466b 	ldr	w11, [x19,#2372]
    39c8:	3500362b 	cbnz	w11, 408c <stmmac_xmit+0xf28>
    39cc:	f9459269 	ldr	x9, [x19,#2848]
    39d0:	7942aeac 	ldrh	w12, [x21,#342]
    39d4:	f9449a6a 	ldr	x10, [x19,#2352]
    39d8:	5280030b 	mov	w11, #0x18                  	// #24
    39dc:	f9400529 	ldr	x9, [x9,#8]
    39e0:	8b0c0108 	add	x8, x8, x12
    39e4:	b940a2ad 	ldr	w13, [x21,#160]
    39e8:	9b0b2b2a 	madd	x10, x25, x11, x10
    39ec:	79401908 	ldrh	w8, [x8,#12]
    39f0:	f9400d29 	ldr	x9, [x9,#24]
    39f4:	39404145 	ldrb	w5, [x10,#16]
    39f8:	4b1401a7 	sub	w7, w13, w20
    39fc:	53041d06 	ubfx	w6, w8, #4, #4
    3a00:	52800021 	mov	w1, #0x1                   	// #1
    3a04:	52800024 	mov	w4, #0x1                   	// #1
    3a08:	aa1a03e0 	mov	x0, x26
    3a0c:	2a1403e2 	mov	w2, w20
    3a10:	2a1803e3 	mov	w3, w24
    3a14:	d63f0120 	blr	x9
    3a18:	f9402be0 	ldr	x0, [sp,#80]
    3a1c:	b40000c0 	cbz	x0, 3a34 <stmmac_xmit+0x8d0>
    3a20:	d50332bf 	dmb	oshst
    3a24:	f9459268 	ldr	x8, [x19,#2848]
    3a28:	f9400508 	ldr	x8, [x8,#8]
    3a2c:	f9401108 	ldr	x8, [x8,#32]
    3a30:	d63f0100 	blr	x8
    3a34:	d5033abf 	dmb	ishst
    3a38:	52822528 	mov	w8, #0x1129                	// #4393
    3a3c:	38686a68 	ldrb	w8, [x19,x8]
    3a40:	362004e8 	tbz	w8, #4, 3adc <stmmac_xmit+0x978>
    3a44:	b9491a62 	ldr	w2, [x19,#2328]
    3a48:	b9491e63 	ldr	w3, [x19,#2332]
    3a4c:	d2800000 	mov	x0, #0x0                   	// #0
    3a50:	d2800001 	mov	x1, #0x0                   	// #0
    3a54:	f2a00000 	movk	x0, #0x0, lsl #16
    3a58:	f2a00001 	movk	x1, #0x0, lsl #16
    3a5c:	f2c00000 	movk	x0, #0x0, lsl #32
    3a60:	f2c00001 	movk	x1, #0x0, lsl #32
    3a64:	f2e00000 	movk	x0, #0x0, lsl #48
    3a68:	f2e00001 	movk	x1, #0x0, lsl #48
    3a6c:	2a1903e4 	mov	w4, w25
    3a70:	2a0203e5 	mov	w5, w2
    3a74:	aa1a03e6 	mov	x6, x26
    3a78:	2a1603e7 	mov	w7, w22
    3a7c:	94000000 	bl	0 <printk>
    3a80:	f9459268 	ldr	x8, [x19,#2848]
    3a84:	f9448660 	ldr	x0, [x19,#2312]
    3a88:	52804001 	mov	w1, #0x200                 	// #512
    3a8c:	2a1f03e2 	mov	w2, wzr
    3a90:	f9400508 	ldr	x8, [x8,#8]
    3a94:	f9404d08 	ldr	x8, [x8,#152]
    3a98:	d63f0100 	blr	x8
    3a9c:	d2800000 	mov	x0, #0x0                   	// #0
    3aa0:	f2a00000 	movk	x0, #0x0, lsl #16
    3aa4:	f2c00000 	movk	x0, #0x0, lsl #32
    3aa8:	f2e00000 	movk	x0, #0x0, lsl #48
    3aac:	94000000 	bl	0 <printk>
    3ab0:	b940a2a8 	ldr	w8, [x21,#160]
    3ab4:	b940b2a9 	ldr	w9, [x21,#176]
    3ab8:	f940caa2 	ldr	x2, [x21,#400]
    3abc:	d2800000 	mov	x0, #0x0                   	// #0
    3ac0:	f2a00000 	movk	x0, #0x0, lsl #16
    3ac4:	f2c00000 	movk	x0, #0x0, lsl #32
    3ac8:	4b090108 	sub	w8, w8, w9
    3acc:	93407d03 	sxtw	x3, w8
    3ad0:	f2e00000 	movk	x0, #0x0, lsl #48
    3ad4:	52800041 	mov	w1, #0x2                   	// #2
    3ad8:	94000000 	bl	0 <print_hex_dump_bytes>
    3adc:	b940a2a8 	ldr	w8, [x21,#160]
    3ae0:	531c7d09 	lsr	w9, w8, #28
    3ae4:	35002b69 	cbnz	w9, 4050 <stmmac_xmit+0xeec>
    3ae8:	f941e275 	ldr	x21, [x19,#960]
    3aec:	b900caa8 	str	w8, [x21,#200]
    3af0:	b940c2a9 	ldr	w9, [x21,#192]
    3af4:	0b080128 	add	w8, w9, w8
    3af8:	b900c2a8 	str	w8, [x21,#192]
    3afc:	b940c6a8 	ldr	w8, [x21,#196]
    3b00:	b940c2a9 	ldr	w9, [x21,#192]
    3b04:	6b09011f 	cmp	w8, w9
    3b08:	54002a84 	b.mi	4058 <stmmac_xmit+0xef4>
    3b0c:	f9459268 	ldr	x8, [x19,#2848]
    3b10:	f9458660 	ldr	x0, [x19,#2824]
    3b14:	b9526e61 	ldr	w1, [x19,#4716]
    3b18:	2a1f03e2 	mov	w2, wzr
    3b1c:	f9400908 	ldr	x8, [x8,#16]
    3b20:	f9404d08 	ldr	x8, [x8,#152]
    3b24:	d63f0100 	blr	x8
    3b28:	aa1703e0 	mov	x0, x23
    3b2c:	140000f6 	b	3f04 <stmmac_xmit+0xda0>
    3b30:	aa1503e0 	mov	x0, x21
    3b34:	94000000 	bl	0 <_raw_spin_unlock>
    3b38:	f941e261 	ldr	x1, [x19,#960]
    3b3c:	f8490c28 	ldr	x8, [x1,#144]!
    3b40:	37002148 	tbnz	w8, #0, 3f68 <stmmac_xmit+0xe04>
    3b44:	2a1f03e0 	mov	w0, wzr
    3b48:	94000000 	bl	0 <set_bit>
    3b4c:	d2800000 	mov	x0, #0x0                   	// #0
    3b50:	d2800001 	mov	x1, #0x0                   	// #0
    3b54:	f2a00000 	movk	x0, #0x0, lsl #16
    3b58:	f2a00001 	movk	x1, #0x0, lsl #16
    3b5c:	f2c00000 	movk	x0, #0x0, lsl #32
    3b60:	f2c00001 	movk	x1, #0x0, lsl #32
    3b64:	f2e00000 	movk	x0, #0x0, lsl #48
    3b68:	f2e00001 	movk	x1, #0x0, lsl #48
    3b6c:	94000000 	bl	0 <printk>
    3b70:	52800200 	mov	w0, #0x10                  	// #16
    3b74:	140000e6 	b	3f0c <stmmac_xmit+0xda8>
    3b78:	f9448668 	ldr	x8, [x19,#2312]
    3b7c:	8b3ad119 	add	x25, x8, w26, sxtw #4
    3b80:	17fffde5 	b	3314 <stmmac_xmit+0x1b0>
    3b84:	b9512668 	ldr	w8, [x19,#4388]
    3b88:	7100fd1f 	cmp	w8, #0x3f
    3b8c:	5400292c 	b.gt	40b0 <stmmac_xmit+0xf4c>
    3b90:	f9459268 	ldr	x8, [x19,#2848]
    3b94:	f9402be0 	ldr	x0, [sp,#80]
    3b98:	aa1603e1 	mov	x1, x22
    3b9c:	2a1703e2 	mov	w2, w23
    3ba0:	f9400d08 	ldr	x8, [x8,#24]
    3ba4:	f9400908 	ldr	x8, [x8,#16]
    3ba8:	d63f0100 	blr	x8
    3bac:	37f80f80 	tbnz	w0, #31, 3d9c <stmmac_xmit+0xc38>
    3bb0:	f9402ff6 	ldr	x22, [sp,#88]
    3bb4:	2a0003fa 	mov	w26, w0
    3bb8:	52800028 	mov	w8, #0x1                   	// #1
    3bbc:	b90017e8 	str	w8, [sp,#20]
    3bc0:	f9401ff4 	ldr	x20, [sp,#56]
    3bc4:	f90003f9 	str	x25, [sp]
    3bc8:	35ffbc74 	cbnz	w20, 3354 <stmmac_xmit+0x1f0>
    3bcc:	11000748 	add	w8, w26, #0x1
    3bd0:	12002108 	and	w8, w8, #0x1ff
    3bd4:	b9091a68 	str	w8, [x19,#2328]
    3bd8:	52822529 	mov	w9, #0x1129                	// #4393
    3bdc:	38696a69 	ldrb	w9, [x19,x9]
    3be0:	362002c9 	tbz	w9, #4, 3c38 <stmmac_xmit+0xad4>
    3be4:	b951b669 	ldr	w9, [x19,#4532]
    3be8:	f9459268 	ldr	x8, [x19,#2848]
    3bec:	9124226a 	add	x10, x19, #0x908
    3bf0:	52804001 	mov	w1, #0x200                 	// #512
    3bf4:	7100013f 	cmp	w9, #0x0
    3bf8:	f9402be9 	ldr	x9, [sp,#80]
    3bfc:	f9400508 	ldr	x8, [x8,#8]
    3c00:	2a1f03e2 	mov	w2, wzr
    3c04:	9a890149 	csel	x9, x10, x9, eq
    3c08:	f9400120 	ldr	x0, [x9]
    3c0c:	f9404d08 	ldr	x8, [x8,#152]
    3c10:	d63f0100 	blr	x8
    3c14:	f940cac2 	ldr	x2, [x22,#400]
    3c18:	b980a2c3 	ldrsw	x3, [x22,#160]
    3c1c:	d2800000 	mov	x0, #0x0                   	// #0
    3c20:	f2a00000 	movk	x0, #0x0, lsl #16
    3c24:	f2c00000 	movk	x0, #0x0, lsl #32
    3c28:	f2e00000 	movk	x0, #0x0, lsl #48
    3c2c:	52800041 	mov	w1, #0x2                   	// #2
    3c30:	94000000 	bl	0 <print_hex_dump_bytes>
    3c34:	b9491a68 	ldr	w8, [x19,#2328]
    3c38:	b9491e69 	ldr	w9, [x19,#2332]
    3c3c:	f9401ff5 	ldr	x21, [sp,#56]
    3c40:	2a2803ea 	mvn	w10, w8
    3c44:	6b080128 	subs	w8, w9, w8
    3c48:	0b0a012a 	add	w10, w9, w10
    3c4c:	1107fd08 	add	w8, w8, #0x1ff
    3c50:	1a888148 	csel	w8, w10, w8, hi
    3c54:	7100491f 	cmp	w8, #0x12
    3c58:	110006b4 	add	w20, w21, #0x1
    3c5c:	54001689 	b.ls	3f2c <stmmac_xmit+0xdc8>
    3c60:	b940a2c8 	ldr	w8, [x22,#160]
    3c64:	f940a669 	ldr	x9, [x19,#328]
    3c68:	b949226a 	ldr	w10, [x19,#2336]
    3c6c:	b949266b 	ldr	w11, [x19,#2340]
    3c70:	8b080128 	add	x8, x9, x8
    3c74:	0b0a0289 	add	w9, w20, w10
    3c78:	6b09017f 	cmp	w11, w9
    3c7c:	f900a668 	str	x8, [x19,#328]
    3c80:	b9092269 	str	w9, [x19,#2336]
    3c84:	540015e9 	b.ls	3f40 <stmmac_xmit+0xddc>
    3c88:	d2800008 	mov	x8, #0x0                   	// #0
    3c8c:	f2a00008 	movk	x8, #0x0, lsl #16
    3c90:	f2c00008 	movk	x8, #0x0, lsl #32
    3c94:	f2e00008 	movk	x8, #0x0, lsl #48
    3c98:	f9400114 	ldr	x20, [x8]
    3c9c:	b9492a60 	ldr	w0, [x19,#2344]
    3ca0:	91254277 	add	x23, x19, #0x950
    3ca4:	94000000 	bl	0 <__usecs_to_jiffies>
    3ca8:	8b140001 	add	x1, x0, x20
    3cac:	aa1703e0 	mov	x0, x23
    3cb0:	94000000 	bl	0 <mod_timer>
    3cb4:	b94023f4 	ldr	w20, [sp,#32]
    3cb8:	2942dff8 	ldp	w24, w23, [sp,#20]
    3cbc:	b9494668 	ldr	w8, [x19,#2372]
    3cc0:	35000168 	cbnz	w8, 3cec <stmmac_xmit+0xb88>
    3cc4:	f940c2c8 	ldr	x8, [x22,#384]
    3cc8:	b94172c9 	ldr	w9, [x22,#368]
    3ccc:	8b090108 	add	x8, x8, x9
    3cd0:	39400508 	ldrb	w8, [x8,#1]
    3cd4:	121f0508 	and	w8, w8, #0x6
    3cd8:	7100091f 	cmp	w8, #0x2
    3cdc:	54000081 	b.ne	3cec <stmmac_xmit+0xb88>
    3ce0:	aa1603e0 	mov	x0, x22
    3ce4:	aa1f03e1 	mov	x1, xzr
    3ce8:	94000000 	bl	0 <skb_tstamp_tx>
    3cec:	37000d78 	tbnz	w24, #0, 3e98 <stmmac_xmit+0xd34>
    3cf0:	f9458e60 	ldr	x0, [x19,#2840]
    3cf4:	f940cac8 	ldr	x8, [x22,#400]
    3cf8:	4b170298 	sub	w24, w20, w23
    3cfc:	710002bf 	cmp	w21, #0x0
    3d00:	1a9f17f4 	cset	w20, eq
    3d04:	2a1803e3 	mov	w3, w24
    3d08:	b4000060 	cbz	x0, 3d14 <stmmac_xmit+0xbb0>
    3d0c:	f9412409 	ldr	x9, [x0,#584]
    3d10:	b50000a9 	cbnz	x9, 3d24 <stmmac_xmit+0xbc0>
    3d14:	f9401be9 	ldr	x9, [sp,#48]
    3d18:	f2a00009 	movk	x9, #0x0, lsl #16
    3d1c:	f2c00009 	movk	x9, #0x0, lsl #32
    3d20:	f2e00009 	movk	x9, #0x0, lsl #48
    3d24:	f9401129 	ldr	x9, [x9,#32]
    3d28:	d346fd0a 	lsr	x10, x8, #6
    3d2c:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    3d30:	927a654a 	and	x10, x10, #0xffffffc0
    3d34:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    3d38:	aa0b0141 	orr	x1, x10, x11
    3d3c:	92402d02 	and	x2, x8, #0xfff
    3d40:	52800024 	mov	w4, #0x1                   	// #1
    3d44:	aa1f03e5 	mov	x5, xzr
    3d48:	d63f0120 	blr	x9
    3d4c:	f9458e68 	ldr	x8, [x19,#2840]
    3d50:	aa0003f9 	mov	x25, x0
    3d54:	92407c1a 	and	x26, x0, #0xffffffff
    3d58:	b4000428 	cbz	x8, 3ddc <stmmac_xmit+0xc78>
    3d5c:	f9412509 	ldr	x9, [x8,#584]
    3d60:	b40003e9 	cbz	x9, 3ddc <stmmac_xmit+0xc78>
    3d64:	f9403929 	ldr	x9, [x9,#112]
    3d68:	b4000469 	cbz	x9, 3df4 <stmmac_xmit+0xc90>
    3d6c:	b4000068 	cbz	x8, 3d78 <stmmac_xmit+0xc14>
    3d70:	f9412509 	ldr	x9, [x8,#584]
    3d74:	b50000a9 	cbnz	x9, 3d88 <stmmac_xmit+0xc24>
    3d78:	f9401be9 	ldr	x9, [sp,#48]
    3d7c:	f2a00009 	movk	x9, #0x0, lsl #16
    3d80:	f2c00009 	movk	x9, #0x0, lsl #32
    3d84:	f2e00009 	movk	x9, #0x0, lsl #48
    3d88:	f9403929 	ldr	x9, [x9,#112]
    3d8c:	aa0803e0 	mov	x0, x8
    3d90:	aa1a03e1 	mov	x1, x26
    3d94:	d63f0120 	blr	x9
    3d98:	340002e0 	cbz	w0, 3df4 <stmmac_xmit+0xc90>
    3d9c:	f94017e0 	ldr	x0, [sp,#40]
    3da0:	94000000 	bl	0 <_raw_spin_unlock>
    3da4:	f9458e60 	ldr	x0, [x19,#2840]
    3da8:	d2800001 	mov	x1, #0x0                   	// #0
    3dac:	f2a00001 	movk	x1, #0x0, lsl #16
    3db0:	f2c00001 	movk	x1, #0x0, lsl #32
    3db4:	f2e00001 	movk	x1, #0x0, lsl #48
    3db8:	94000000 	bl	0 <dev_err>
    3dbc:	f9402fe0 	ldr	x0, [sp,#88]
    3dc0:	94000000 	bl	0 <consume_skb>
    3dc4:	f9458a68 	ldr	x8, [x19,#2832]
    3dc8:	2a1f03e0 	mov	w0, wzr
    3dcc:	f940b509 	ldr	x9, [x8,#360]
    3dd0:	91000529 	add	x9, x9, #0x1
    3dd4:	f900b509 	str	x9, [x8,#360]
    3dd8:	1400004d 	b	3f0c <stmmac_xmit+0xda8>
    3ddc:	f9401be9 	ldr	x9, [sp,#48]
    3de0:	f2a00009 	movk	x9, #0x0, lsl #16
    3de4:	f2c00009 	movk	x9, #0x0, lsl #32
    3de8:	f2e00009 	movk	x9, #0x0, lsl #48
    3dec:	f9403929 	ldr	x9, [x9,#112]
    3df0:	b5fffbe9 	cbnz	x9, 3d6c <stmmac_xmit+0xc08>
    3df4:	a94027f5 	ldp	x21, x9, [sp]
    3df8:	f9449a68 	ldr	x8, [x19,#2352]
    3dfc:	f9402ff6 	ldr	x22, [sp,#88]
    3e00:	2a0903e9 	mov	w9, w9
    3e04:	8b090529 	add	x9, x9, x9, lsl #1
    3e08:	d37df129 	lsl	x9, x9, #3
    3e0c:	f829691a 	str	x26, [x8,x9]
    3e10:	b9512668 	ldr	w8, [x19,#4388]
    3e14:	7101011f 	cmp	w8, #0x40
    3e18:	1a9fa7e8 	cset	w8, lt
    3e1c:	d37df108 	lsl	x8, x8, #3
    3e20:	b8286ab9 	str	w25, [x21,x8]
    3e24:	f9449a68 	ldr	x8, [x19,#2352]
    3e28:	8b090108 	add	x8, x8, x9
    3e2c:	b9000d18 	str	w24, [x8,#12]
    3e30:	f9449a68 	ldr	x8, [x19,#2352]
    3e34:	8b090108 	add	x8, x8, x9
    3e38:	39004114 	strb	w20, [x8,#16]
    3e3c:	f940c2c8 	ldr	x8, [x22,#384]
    3e40:	b94172c9 	ldr	w9, [x22,#368]
    3e44:	8b090108 	add	x8, x8, x9
    3e48:	39400509 	ldrb	w9, [x8,#1]
    3e4c:	36000069 	tbz	w9, #0, 3e58 <stmmac_xmit+0xcf4>
    3e50:	b949466a 	ldr	w10, [x19,#2372]
    3e54:	35000d0a 	cbnz	w10, 3ff4 <stmmac_xmit+0xe90>
    3e58:	f9459268 	ldr	x8, [x19,#2848]
    3e5c:	f9401fe9 	ldr	x9, [sp,#56]
    3e60:	b951b264 	ldr	w4, [x19,#4528]
    3e64:	52800021 	mov	w1, #0x1                   	// #1
    3e68:	f9400508 	ldr	x8, [x8,#8]
    3e6c:	7100013f 	cmp	w9, #0x0
    3e70:	b9404be9 	ldr	w9, [sp,#72]
    3e74:	1a9f17e6 	cset	w6, eq
    3e78:	f9400908 	ldr	x8, [x8,#16]
    3e7c:	52800025 	mov	w5, #0x1                   	// #1
    3e80:	710c013f 	cmp	w9, #0x300
    3e84:	1a9f17e3 	cset	w3, eq
    3e88:	aa1503e0 	mov	x0, x21
    3e8c:	2a1803e2 	mov	w2, w24
    3e90:	d63f0100 	blr	x8
    3e94:	d5033abf 	dmb	ishst
    3e98:	b940a2c8 	ldr	w8, [x22,#160]
    3e9c:	531c7d09 	lsr	w9, w8, #28
    3ea0:	35000689 	cbnz	w9, 3f70 <stmmac_xmit+0xe0c>
    3ea4:	f941e275 	ldr	x21, [x19,#960]
    3ea8:	b900caa8 	str	w8, [x21,#200]
    3eac:	b940c2a9 	ldr	w9, [x21,#192]
    3eb0:	0b080128 	add	w8, w9, w8
    3eb4:	b900c2a8 	str	w8, [x21,#192]
    3eb8:	b940c6a8 	ldr	w8, [x21,#196]
    3ebc:	b940c2a9 	ldr	w9, [x21,#192]
    3ec0:	6b09011f 	cmp	w8, w9
    3ec4:	540005a4 	b.mi	3f78 <stmmac_xmit+0xe14>
    3ec8:	f9459268 	ldr	x8, [x19,#2848]
    3ecc:	b9512669 	ldr	w9, [x19,#4388]
    3ed0:	f9400908 	ldr	x8, [x8,#16]
    3ed4:	7100fd3f 	cmp	w9, #0x3f
    3ed8:	540000ac 	b.gt	3eec <stmmac_xmit+0xd88>
    3edc:	f9401908 	ldr	x8, [x8,#48]
    3ee0:	f9458660 	ldr	x0, [x19,#2824]
    3ee4:	d63f0100 	blr	x8
    3ee8:	14000006 	b	3f00 <stmmac_xmit+0xd9c>
    3eec:	f9404d08 	ldr	x8, [x8,#152]
    3ef0:	f9458660 	ldr	x0, [x19,#2824]
    3ef4:	b9526e61 	ldr	w1, [x19,#4716]
    3ef8:	2a1f03e2 	mov	w2, wzr
    3efc:	d63f0100 	blr	x8
    3f00:	f94017e0 	ldr	x0, [sp,#40]
    3f04:	94000000 	bl	0 <_raw_spin_unlock>
    3f08:	2a1f03e0 	mov	w0, wzr
    3f0c:	a94b7bfd 	ldp	x29, x30, [sp,#176]
    3f10:	a94a4ff4 	ldp	x20, x19, [sp,#160]
    3f14:	a94957f6 	ldp	x22, x21, [sp,#144]
    3f18:	a9485ff8 	ldp	x24, x23, [sp,#128]
    3f1c:	a94767fa 	ldp	x26, x25, [sp,#112]
    3f20:	a9466ffc 	ldp	x28, x27, [sp,#96]
    3f24:	910303ff 	add	sp, sp, #0xc0
    3f28:	d65f03c0 	ret
    3f2c:	f941e268 	ldr	x8, [x19,#960]
    3f30:	2a1f03e0 	mov	w0, wzr
    3f34:	91024101 	add	x1, x8, #0x90
    3f38:	94000000 	bl	0 <set_bit>
    3f3c:	17ffff49 	b	3c60 <stmmac_xmit+0xafc>
    3f40:	f9459268 	ldr	x8, [x19,#2848]
    3f44:	b909227f 	str	wzr, [x19,#2336]
    3f48:	aa1903e0 	mov	x0, x25
    3f4c:	f9400508 	ldr	x8, [x8,#8]
    3f50:	f9401d08 	ldr	x8, [x8,#56]
    3f54:	d63f0100 	blr	x8
    3f58:	f946b668 	ldr	x8, [x19,#3432]
    3f5c:	91000508 	add	x8, x8, #0x1
    3f60:	f906b668 	str	x8, [x19,#3432]
    3f64:	17ffff54 	b	3cb4 <stmmac_xmit+0xb50>
    3f68:	52800200 	mov	w0, #0x10                  	// #16
    3f6c:	17ffffe8 	b	3f0c <stmmac_xmit+0xda8>
    3f70:	d4210000 	brk	#0x800
    3f74:	14000000 	b	3f74 <stmmac_xmit+0xe10>
    3f78:	910242b4 	add	x20, x21, #0x90
    3f7c:	52800020 	mov	w0, #0x1                   	// #1
    3f80:	aa1403e1 	mov	x1, x20
    3f84:	94000000 	bl	0 <set_bit>
    3f88:	d5033bbf 	dmb	ish
    3f8c:	b940c6a8 	ldr	w8, [x21,#196]
    3f90:	b940c2a9 	ldr	w9, [x21,#192]
    3f94:	6b09011f 	cmp	w8, w9
    3f98:	54fff984 	b.mi	3ec8 <stmmac_xmit+0xd64>
    3f9c:	52800020 	mov	w0, #0x1                   	// #1
    3fa0:	aa1403e1 	mov	x1, x20
    3fa4:	94000000 	bl	0 <clear_bit>
    3fa8:	17ffffc8 	b	3ec8 <stmmac_xmit+0xd64>
    3fac:	f941e261 	ldr	x1, [x19,#960]
    3fb0:	f8490c28 	ldr	x8, [x1,#144]!
    3fb4:	37000188 	tbnz	w8, #0, 3fe4 <stmmac_xmit+0xe80>
    3fb8:	2a1f03e0 	mov	w0, wzr
    3fbc:	94000000 	bl	0 <set_bit>
    3fc0:	d2800000 	mov	x0, #0x0                   	// #0
    3fc4:	d2800001 	mov	x1, #0x0                   	// #0
    3fc8:	f2a00000 	movk	x0, #0x0, lsl #16
    3fcc:	f2a00001 	movk	x1, #0x0, lsl #16
    3fd0:	f2c00000 	movk	x0, #0x0, lsl #32
    3fd4:	f2c00001 	movk	x1, #0x0, lsl #32
    3fd8:	f2e00000 	movk	x0, #0x0, lsl #48
    3fdc:	f2e00001 	movk	x1, #0x0, lsl #48
    3fe0:	94000000 	bl	0 <printk>
    3fe4:	aa1703e0 	mov	x0, x23
    3fe8:	94000000 	bl	0 <_raw_spin_unlock>
    3fec:	52800200 	mov	w0, #0x10                  	// #16
    3ff0:	17ffffc7 	b	3f0c <stmmac_xmit+0xda8>
    3ff4:	321e0129 	orr	w9, w9, #0x4
    3ff8:	39000509 	strb	w9, [x8,#1]
    3ffc:	f9459268 	ldr	x8, [x19,#2848]
    4000:	aa1503e0 	mov	x0, x21
    4004:	f9400508 	ldr	x8, [x8,#8]
    4008:	f9403d08 	ldr	x8, [x8,#120]
    400c:	d63f0100 	blr	x8
    4010:	17ffff92 	b	3e58 <stmmac_xmit+0xcf4>
    4014:	f941e268 	ldr	x8, [x19,#960]
    4018:	2a1f03e0 	mov	w0, wzr
    401c:	91024101 	add	x1, x8, #0x90
    4020:	94000000 	bl	0 <set_bit>
    4024:	17fffe35 	b	38f8 <stmmac_xmit+0x794>
    4028:	f9459268 	ldr	x8, [x19,#2848]
    402c:	b909227f 	str	wzr, [x19,#2336]
    4030:	aa1a03e0 	mov	x0, x26
    4034:	f9400508 	ldr	x8, [x8,#8]
    4038:	f9401d08 	ldr	x8, [x8,#56]
    403c:	d63f0100 	blr	x8
    4040:	f946b668 	ldr	x8, [x19,#3432]
    4044:	91000508 	add	x8, x8, #0x1
    4048:	f906b668 	str	x8, [x19,#3432]
    404c:	17fffe4a 	b	3974 <stmmac_xmit+0x810>
    4050:	d4210000 	brk	#0x800
    4054:	14000000 	b	4054 <stmmac_xmit+0xef0>
    4058:	910242b4 	add	x20, x21, #0x90
    405c:	52800020 	mov	w0, #0x1                   	// #1
    4060:	aa1403e1 	mov	x1, x20
    4064:	94000000 	bl	0 <set_bit>
    4068:	d5033bbf 	dmb	ish
    406c:	b940c6a8 	ldr	w8, [x21,#196]
    4070:	b940c2a9 	ldr	w9, [x21,#192]
    4074:	6b09011f 	cmp	w8, w9
    4078:	54ffd4a4 	b.mi	3b0c <stmmac_xmit+0x9a8>
    407c:	52800020 	mov	w0, #0x1                   	// #1
    4080:	aa1403e1 	mov	x1, x20
    4084:	94000000 	bl	0 <clear_bit>
    4088:	17fffea1 	b	3b0c <stmmac_xmit+0x9a8>
    408c:	321e0148 	orr	w8, w10, #0x4
    4090:	39000528 	strb	w8, [x9,#1]
    4094:	f9459268 	ldr	x8, [x19,#2848]
    4098:	aa1a03e0 	mov	x0, x26
    409c:	f9400508 	ldr	x8, [x8,#8]
    40a0:	f9403d08 	ldr	x8, [x8,#120]
    40a4:	d63f0100 	blr	x8
    40a8:	f940c2a8 	ldr	x8, [x21,#384]
    40ac:	17fffe48 	b	39cc <stmmac_xmit+0x868>
    40b0:	52800028 	mov	w8, #0x1                   	// #1
    40b4:	f94007fa 	ldr	x26, [sp,#8]
    40b8:	b90017e8 	str	w8, [sp,#20]
    40bc:	17fffec1 	b	3bc0 <stmmac_xmit+0xa5c>

00000000000040c0 <stmmac_set_mac_address>:
    40c0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    40c4:	a9017bfd 	stp	x29, x30, [sp,#16]
    40c8:	910043fd 	add	x29, sp, #0x10
    40cc:	aa0103f3 	mov	x19, x1
    40d0:	aa0003f4 	mov	x20, x0
    40d4:	94000000 	bl	0 <_mcount>
    40d8:	aa1403e0 	mov	x0, x20
    40dc:	aa1303e1 	mov	x1, x19
    40e0:	94000000 	bl	0 <eth_mac_addr>
    40e4:	2a0003f3 	mov	w19, w0
    40e8:	35000100 	cbnz	w0, 4108 <stmmac_set_mac_address+0x48>
    40ec:	f9459280 	ldr	x0, [x20,#2848]
    40f0:	910cb289 	add	x9, x20, #0x32c
    40f4:	f9400121 	ldr	x1, [x9]
    40f8:	2a1f03e2 	mov	w2, wzr
    40fc:	f9400008 	ldr	x8, [x0]
    4100:	f9401d08 	ldr	x8, [x8,#56]
    4104:	d63f0100 	blr	x8
    4108:	a9417bfd 	ldp	x29, x30, [sp,#16]
    410c:	2a1303e0 	mov	w0, w19
    4110:	a8c24ff4 	ldp	x20, x19, [sp],#32
    4114:	d65f03c0 	ret

0000000000004118 <stmmac_ioctl>:
    4118:	d10143ff 	sub	sp, sp, #0x50
    411c:	a90257f6 	stp	x22, x21, [sp,#32]
    4120:	a9034ff4 	stp	x20, x19, [sp,#48]
    4124:	a9047bfd 	stp	x29, x30, [sp,#64]
    4128:	910103fd 	add	x29, sp, #0x40
    412c:	2a0203f5 	mov	w21, w2
    4130:	aa0103f3 	mov	x19, x1
    4134:	aa0003f4 	mov	x20, x0
    4138:	94000000 	bl	0 <_mcount>
    413c:	f9402688 	ldr	x8, [x20,#72]
    4140:	37000068 	tbnz	w8, #0, 414c <stmmac_ioctl+0x34>
    4144:	128002b5 	mov	w21, #0xffffffea            	// #-22
    4148:	1400010d 	b	457c <stmmac_ioctl+0x464>
    414c:	129128c8 	mov	w8, #0xffff76b9            	// #-35143
    4150:	0b0802a8 	add	w8, w21, w8
    4154:	71000d1f 	cmp	w8, #0x3
    4158:	54000102 	b.cs	4178 <stmmac_ioctl+0x60>
    415c:	f945a280 	ldr	x0, [x20,#2880]
    4160:	b4ffff20 	cbz	x0, 4144 <stmmac_ioctl+0x2c>
    4164:	aa1303e1 	mov	x1, x19
    4168:	2a1503e2 	mov	w2, w21
    416c:	94000000 	bl	0 <phy_mii_ioctl>
    4170:	2a0003f5 	mov	w21, w0
    4174:	14000102 	b	457c <stmmac_ioctl+0x464>
    4178:	52913608 	mov	w8, #0x89b0                	// #35248
    417c:	6b0802bf 	cmp	w21, w8
    4180:	540005e1 	b.ne	423c <stmmac_ioctl+0x124>
    4184:	b94fb288 	ldr	w8, [x20,#4016]
    4188:	35000068 	cbnz	w8, 4194 <stmmac_ioctl+0x7c>
    418c:	b9524688 	ldr	w8, [x20,#4676]
    4190:	340006a8 	cbz	w8, 4264 <stmmac_ioctl+0x14c>
    4194:	f9400a61 	ldr	x1, [x19,#16]
    4198:	d5384116 	mrs	x22, sp_el0
    419c:	f94006c8 	ldr	x8, [x22,#8]
    41a0:	aa0103e9 	mov	x9, x1
    41a4:	b1003129 	adds	x9, x9, #0xc
    41a8:	9a8883e8 	csel	x8, xzr, x8, hi
    41ac:	da9f3129 	csinv	x9, x9, xzr, cc
    41b0:	fa08013f 	sbcs	xzr, x9, x8
    41b4:	9a9f87e9 	cset	x9, ls
    41b8:	b4000469 	cbz	x9, 4244 <stmmac_ioctl+0x12c>
    41bc:	910043e0 	add	x0, sp, #0x10
    41c0:	52800182 	mov	w2, #0xc                   	// #12
    41c4:	94000000 	bl	0 <__arch_copy_from_user>
    41c8:	b5001e60 	cbnz	x0, 4594 <stmmac_ioctl+0x47c>
    41cc:	b94013e8 	ldr	w8, [sp,#16]
    41d0:	35fffba8 	cbnz	w8, 4144 <stmmac_ioctl+0x2c>
    41d4:	b94017e8 	ldr	w8, [sp,#20]
    41d8:	7100051f 	cmp	w8, #0x1
    41dc:	54000588 	b.hi	428c <stmmac_ioctl+0x174>
    41e0:	b952468a 	ldr	w10, [x20,#4676]
    41e4:	b9401be9 	ldr	w9, [sp,#24]
    41e8:	3400056a 	cbz	w10, 4294 <stmmac_ioctl+0x17c>
    41ec:	7100393f 	cmp	w9, #0xe
    41f0:	12800435 	mov	w21, #0xffffffde            	// #-34
    41f4:	54001c48 	b.hi	457c <stmmac_ioctl+0x464>
    41f8:	d280000a 	mov	x10, #0x0                   	// #0
    41fc:	f2a0000a 	movk	x10, #0x0, lsl #16
    4200:	f2c0000a 	movk	x10, #0x0, lsl #32
    4204:	2a0903e9 	mov	w9, w9
    4208:	f2e0000a 	movk	x10, #0x0, lsl #48
    420c:	1000008b 	adr	x11, 421c <stmmac_ioctl+0x104>
    4210:	3869694c 	ldrb	w12, [x10,x9]
    4214:	8b0c096b 	add	x11, x11, x12, lsl #2
    4218:	d61f0160 	br	x11
    421c:	2a1f03f1 	mov	w17, wzr
    4220:	2a1f03ee 	mov	w14, wzr
    4224:	2a1f03ef 	mov	w15, wzr
    4228:	2a1f03ed 	mov	w13, wzr
    422c:	2a1f03eb 	mov	w11, wzr
    4230:	2a1f03ec 	mov	w12, wzr
    4234:	2a1f03e9 	mov	w9, wzr
    4238:	14000027 	b	42d4 <stmmac_ioctl+0x1bc>
    423c:	12800bd5 	mov	w21, #0xffffffa1            	// #-95
    4240:	140000cf 	b	457c <stmmac_ioctl+0x464>
    4244:	52800182 	mov	w2, #0xc                   	// #12
    4248:	910043e8 	add	x8, sp, #0x10
    424c:	cb020108 	sub	x8, x8, x2
    4250:	91003100 	add	x0, x8, #0xc
    4254:	2a1f03e1 	mov	w1, wzr
    4258:	94000000 	bl	0 <memset>
    425c:	128001b5 	mov	w21, #0xfffffff2            	// #-14
    4260:	140000c7 	b	457c <stmmac_ioctl+0x464>
    4264:	f9458a80 	ldr	x0, [x20,#2832]
    4268:	d2800001 	mov	x1, #0x0                   	// #0
    426c:	f2a00001 	movk	x1, #0x0, lsl #16
    4270:	f2c00001 	movk	x1, #0x0, lsl #32
    4274:	f2e00001 	movk	x1, #0x0, lsl #48
    4278:	94000000 	bl	0 <netdev_alert>
    427c:	b909469f 	str	wzr, [x20,#2372]
    4280:	b909f29f 	str	wzr, [x20,#2544]
    4284:	12800bd5 	mov	w21, #0xffffffa1            	// #-95
    4288:	140000bd 	b	457c <stmmac_ioctl+0x464>
    428c:	12800435 	mov	w21, #0xffffffde            	// #-34
    4290:	140000bb 	b	457c <stmmac_ioctl+0x464>
    4294:	34000149 	cbz	w9, 42bc <stmmac_ioctl+0x1a4>
    4298:	2a1f03ee 	mov	w14, wzr
    429c:	2a1f03ef 	mov	w15, wzr
    42a0:	2a1f03ed 	mov	w13, wzr
    42a4:	2a1f03eb 	mov	w11, wzr
    42a8:	2a1f03ec 	mov	w12, wzr
    42ac:	2a1f03e9 	mov	w9, wzr
    42b0:	2a1f03ea 	mov	w10, wzr
    42b4:	52800071 	mov	w17, #0x3                   	// #3
    42b8:	14000035 	b	438c <stmmac_ioctl+0x274>
    42bc:	2a1f03f1 	mov	w17, wzr
    42c0:	2a1f03ee 	mov	w14, wzr
    42c4:	2a1f03ef 	mov	w15, wzr
    42c8:	2a1f03ed 	mov	w13, wzr
    42cc:	2a1f03eb 	mov	w11, wzr
    42d0:	2a1f03ec 	mov	w12, wzr
    42d4:	2a1f03ea 	mov	w10, wzr
    42d8:	b9001bff 	str	wzr, [sp,#24]
    42dc:	52804070 	mov	w16, #0x203                 	// #515
    42e0:	14000062 	b	4468 <stmmac_ioctl+0x350>
    42e4:	52800031 	mov	w17, #0x1                   	// #1
    42e8:	2a1f03ee 	mov	w14, wzr
    42ec:	2a1f03ef 	mov	w15, wzr
    42f0:	2a1f03ed 	mov	w13, wzr
    42f4:	2a1f03eb 	mov	w11, wzr
    42f8:	2a1f03ec 	mov	w12, wzr
    42fc:	2a1f03e9 	mov	w9, wzr
    4300:	2a1f03ea 	mov	w10, wzr
    4304:	b9001bf1 	str	w17, [sp,#24]
    4308:	52806070 	mov	w16, #0x303                 	// #771
    430c:	14000057 	b	4468 <stmmac_ioctl+0x350>
    4310:	5280006c 	mov	w12, #0x3                   	// #3
    4314:	b9001bec 	str	w12, [sp,#24]
    4318:	f947c28c 	ldr	x12, [x20,#3968]
    431c:	52a00071 	mov	w17, #0x30000               	// #196608
    4320:	52a00032 	mov	w18, #0x10000               	// #65536
    4324:	2a1f03ee 	mov	w14, wzr
    4328:	b940b18c 	ldr	w12, [x12,#176]
    432c:	2a1f03eb 	mov	w11, wzr
    4330:	2a1f03e9 	mov	w9, wzr
    4334:	2a1f03ea 	mov	w10, wzr
    4338:	7100019f 	cmp	w12, #0x0
    433c:	5282000d 	mov	w13, #0x1000                	// #4096
    4340:	5284000f 	mov	w15, #0x2000                	// #8192
    4344:	52804070 	mov	w16, #0x203                 	// #515
    4348:	1a91024c 	csel	w12, w18, w17, eq
    434c:	14000046 	b	4464 <stmmac_ioctl+0x34c>
    4350:	2a1f03ee 	mov	w14, wzr
    4354:	2a1f03eb 	mov	w11, wzr
    4358:	2a1f03ec 	mov	w12, wzr
    435c:	2a1f03e9 	mov	w9, wzr
    4360:	52800091 	mov	w17, #0x4                   	// #4
    4364:	5288000a 	mov	w10, #0x4000                	// #16384
    4368:	14000007 	b	4384 <stmmac_ioctl+0x26c>
    436c:	2a1f03ee 	mov	w14, wzr
    4370:	2a1f03eb 	mov	w11, wzr
    4374:	2a1f03ec 	mov	w12, wzr
    4378:	528000b1 	mov	w17, #0x5                   	// #5
    437c:	5288000a 	mov	w10, #0x4000                	// #16384
    4380:	52900009 	mov	w9, #0x8000                	// #32768
    4384:	5282000d 	mov	w13, #0x1000                	// #4096
    4388:	5284000f 	mov	w15, #0x2000                	// #8192
    438c:	52804070 	mov	w16, #0x203                 	// #515
    4390:	14000034 	b	4460 <stmmac_ioctl+0x348>
    4394:	528000cc 	mov	w12, #0x6                   	// #6
    4398:	b9001bec 	str	w12, [sp,#24]
    439c:	f947c28c 	ldr	x12, [x20,#3968]
    43a0:	2a1f03eb 	mov	w11, wzr
    43a4:	2a1f03e9 	mov	w9, wzr
    43a8:	2a1f03ea 	mov	w10, wzr
    43ac:	52a00071 	mov	w17, #0x30000               	// #196608
    43b0:	52a00032 	mov	w18, #0x10000               	// #65536
    43b4:	14000015 	b	4408 <stmmac_ioctl+0x2f0>
    43b8:	2a1f03eb 	mov	w11, wzr
    43bc:	2a1f03ec 	mov	w12, wzr
    43c0:	2a1f03e9 	mov	w9, wzr
    43c4:	528000f1 	mov	w17, #0x7                   	// #7
    43c8:	5288000a 	mov	w10, #0x4000                	// #16384
    43cc:	14000021 	b	4450 <stmmac_ioctl+0x338>
    43d0:	2a1f03eb 	mov	w11, wzr
    43d4:	2a1f03ec 	mov	w12, wzr
    43d8:	52800111 	mov	w17, #0x8                   	// #8
    43dc:	5288000a 	mov	w10, #0x4000                	// #16384
    43e0:	52900009 	mov	w9, #0x8000                	// #32768
    43e4:	1400001b 	b	4450 <stmmac_ioctl+0x338>
    43e8:	5280018b 	mov	w11, #0xc                   	// #12
    43ec:	b9001beb 	str	w11, [sp,#24]
    43f0:	f947c28c 	ldr	x12, [x20,#3968]
    43f4:	2a1f03e9 	mov	w9, wzr
    43f8:	2a1f03ea 	mov	w10, wzr
    43fc:	52a00071 	mov	w17, #0x30000               	// #196608
    4400:	52a00032 	mov	w18, #0x10000               	// #65536
    4404:	5281000b 	mov	w11, #0x800                 	// #2048
    4408:	b940b18c 	ldr	w12, [x12,#176]
    440c:	5282000d 	mov	w13, #0x1000                	// #4096
    4410:	5284000f 	mov	w15, #0x2000                	// #8192
    4414:	52804070 	mov	w16, #0x203                 	// #515
    4418:	7100019f 	cmp	w12, #0x0
    441c:	5280800e 	mov	w14, #0x400                 	// #1024
    4420:	1a91024c 	csel	w12, w18, w17, eq
    4424:	14000010 	b	4464 <stmmac_ioctl+0x34c>
    4428:	2a1f03ec 	mov	w12, wzr
    442c:	2a1f03e9 	mov	w9, wzr
    4430:	528001b1 	mov	w17, #0xd                   	// #13
    4434:	5288000a 	mov	w10, #0x4000                	// #16384
    4438:	14000005 	b	444c <stmmac_ioctl+0x334>
    443c:	2a1f03ec 	mov	w12, wzr
    4440:	528001d1 	mov	w17, #0xe                   	// #14
    4444:	5288000a 	mov	w10, #0x4000                	// #16384
    4448:	52900009 	mov	w9, #0x8000                	// #32768
    444c:	5281000b 	mov	w11, #0x800                 	// #2048
    4450:	5282000d 	mov	w13, #0x1000                	// #4096
    4454:	5284000f 	mov	w15, #0x2000                	// #8192
    4458:	52804070 	mov	w16, #0x203                 	// #515
    445c:	5280800e 	mov	w14, #0x400                 	// #1024
    4460:	b9001bf1 	str	w17, [sp,#24]
    4464:	52800031 	mov	w17, #0x1                   	// #1
    4468:	7100051f 	cmp	w8, #0x1
    446c:	1a9f17e8 	cset	w8, eq
    4470:	b909f291 	str	w17, [x20,#2544]
    4474:	b9094688 	str	w8, [x20,#2372]
    4478:	54000120 	b.eq	449c <stmmac_ioctl+0x384>
    447c:	37000111 	tbnz	w17, #0, 449c <stmmac_ioctl+0x384>
    4480:	f9459288 	ldr	x8, [x20,#2848]
    4484:	f9493280 	ldr	x0, [x20,#4704]
    4488:	2a1f03e1 	mov	w1, wzr
    448c:	f9401108 	ldr	x8, [x8,#32]
    4490:	f9400108 	ldr	x8, [x8]
    4494:	d63f0100 	blr	x8
    4498:	1400002a 	b	4540 <stmmac_ioctl+0x428>
    449c:	f9459288 	ldr	x8, [x20,#2848]
    44a0:	2a0e020e 	orr	w14, w16, w14
    44a4:	2a0f01ce 	orr	w14, w14, w15
    44a8:	2a0d01cd 	orr	w13, w14, w13
    44ac:	f9401108 	ldr	x8, [x8,#32]
    44b0:	2a0b01ab 	orr	w11, w13, w11
    44b4:	f9493280 	ldr	x0, [x20,#4704]
    44b8:	2a0c016b 	orr	w11, w11, w12
    44bc:	f9400108 	ldr	x8, [x8]
    44c0:	2a090169 	orr	w9, w11, w9
    44c4:	2a0a0121 	orr	w1, w9, w10
    44c8:	d63f0100 	blr	x8
    44cc:	f9459288 	ldr	x8, [x20,#2848]
    44d0:	f947c289 	ldr	x9, [x20,#3968]
    44d4:	f9493280 	ldr	x0, [x20,#4704]
    44d8:	b9524281 	ldr	w1, [x20,#4672]
    44dc:	f9401108 	ldr	x8, [x8,#32]
    44e0:	b940b122 	ldr	w2, [x9,#176]
    44e4:	f9400508 	ldr	x8, [x8,#8]
    44e8:	d63f0100 	blr	x8
    44ec:	52994008 	mov	w8, #0xca00                	// #51712
    44f0:	b9524289 	ldr	w9, [x20,#4672]
    44f4:	72a77348 	movk	w8, #0x3b9a, lsl #16
    44f8:	f945928a 	ldr	x10, [x20,#2848]
    44fc:	1ac00908 	udiv	w8, w8, w0
    4500:	d3607d08 	lsl	x8, x8, #32
    4504:	9ac90901 	udiv	x1, x8, x9
    4508:	b9123281 	str	w1, [x20,#4656]
    450c:	f9401148 	ldr	x8, [x10,#32]
    4510:	f9493280 	ldr	x0, [x20,#4704]
    4514:	f9400d08 	ldr	x8, [x8,#24]
    4518:	d63f0100 	blr	x8
    451c:	910003e0 	mov	x0, sp
    4520:	94000000 	bl	0 <getnstimeofday64>
    4524:	f9459288 	ldr	x8, [x20,#2848]
    4528:	f9493280 	ldr	x0, [x20,#4704]
    452c:	b9400be2 	ldr	w2, [sp,#8]
    4530:	b94003e1 	ldr	w1, [sp]
    4534:	f9401108 	ldr	x8, [x8,#32]
    4538:	f9400908 	ldr	x8, [x8,#16]
    453c:	d63f0100 	blr	x8
    4540:	f9400a60 	ldr	x0, [x19,#16]
    4544:	f94006c8 	ldr	x8, [x22,#8]
    4548:	128001b5 	mov	w21, #0xfffffff2            	// #-14
    454c:	aa0003e9 	mov	x9, x0
    4550:	b1003129 	adds	x9, x9, #0xc
    4554:	9a8883e8 	csel	x8, xzr, x8, hi
    4558:	da9f3129 	csinv	x9, x9, xzr, cc
    455c:	fa08013f 	sbcs	xzr, x9, x8
    4560:	9a9f87e9 	cset	x9, ls
    4564:	b40000c9 	cbz	x9, 457c <stmmac_ioctl+0x464>
    4568:	910043e1 	add	x1, sp, #0x10
    456c:	52800182 	mov	w2, #0xc                   	// #12
    4570:	94000000 	bl	0 <__arch_copy_to_user>
    4574:	f100001f 	cmp	x0, #0x0
    4578:	1a9503f5 	csel	w21, wzr, w21, eq
    457c:	2a1503e0 	mov	w0, w21
    4580:	a9447bfd 	ldp	x29, x30, [sp,#64]
    4584:	a9434ff4 	ldp	x20, x19, [sp,#48]
    4588:	a94257f6 	ldp	x22, x21, [sp,#32]
    458c:	910143ff 	add	sp, sp, #0x50
    4590:	d65f03c0 	ret
    4594:	aa0003e2 	mov	x2, x0
    4598:	17ffff2c 	b	4248 <stmmac_ioctl+0x130>

000000000000459c <stmmac_change_mtu>:
    459c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    45a0:	a9017bfd 	stp	x29, x30, [sp,#16]
    45a4:	910043fd 	add	x29, sp, #0x10
    45a8:	2a0103f4 	mov	w20, w1
    45ac:	aa0003f3 	mov	x19, x0
    45b0:	94000000 	bl	0 <_mcount>
    45b4:	f9402668 	ldr	x8, [x19,#72]
    45b8:	370002a8 	tbnz	w8, #0, 460c <stmmac_change_mtu+0x70>
    45bc:	f947c268 	ldr	x8, [x19,#3968]
    45c0:	52846509 	mov	w9, #0x2328                	// #9000
    45c4:	b940390a 	ldr	w10, [x8,#56]
    45c8:	350000aa 	cbnz	w10, 45dc <stmmac_change_mtu+0x40>
    45cc:	b951266a 	ldr	w10, [x19,#4388]
    45d0:	7100fd5f 	cmp	w10, #0x3f
    45d4:	5281cfca 	mov	w10, #0xe7e                 	// #3710
    45d8:	1a8ac129 	csel	w9, w9, w10, gt
    45dc:	b9405d08 	ldr	w8, [x8,#92]
    45e0:	6b09011f 	cmp	w8, w9
    45e4:	1a89b102 	csel	w2, w8, w9, lt
    45e8:	7100ba9f 	cmp	w20, #0x2e
    45ec:	5400020b 	b.lt	462c <stmmac_change_mtu+0x90>
    45f0:	6b14005f 	cmp	w2, w20
    45f4:	540001cb 	b.lt	462c <stmmac_change_mtu+0x90>
    45f8:	aa1303e0 	mov	x0, x19
    45fc:	b9024a74 	str	w20, [x19,#584]
    4600:	94000000 	bl	0 <netdev_update_features>
    4604:	2a1f03e0 	mov	w0, wzr
    4608:	14000010 	b	4648 <stmmac_change_mtu+0xac>
    460c:	d2800000 	mov	x0, #0x0                   	// #0
    4610:	f2a00000 	movk	x0, #0x0, lsl #16
    4614:	f2c00000 	movk	x0, #0x0, lsl #32
    4618:	f2e00000 	movk	x0, #0x0, lsl #48
    461c:	aa1303e1 	mov	x1, x19
    4620:	94000000 	bl	0 <printk>
    4624:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    4628:	14000008 	b	4648 <stmmac_change_mtu+0xac>
    462c:	d2800000 	mov	x0, #0x0                   	// #0
    4630:	f2a00000 	movk	x0, #0x0, lsl #16
    4634:	f2c00000 	movk	x0, #0x0, lsl #32
    4638:	f2e00000 	movk	x0, #0x0, lsl #48
    463c:	aa1303e1 	mov	x1, x19
    4640:	94000000 	bl	0 <printk>
    4644:	128002a0 	mov	w0, #0xffffffea            	// #-22
    4648:	a9417bfd 	ldp	x29, x30, [sp,#16]
    464c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    4650:	d65f03c0 	ret

0000000000004654 <stmmac_tx_timeout>:
    4654:	f81e0ff3 	str	x19, [sp,#-32]!
    4658:	a9017bfd 	stp	x29, x30, [sp,#16]
    465c:	910043fd 	add	x29, sp, #0x10
    4660:	aa0003f3 	mov	x19, x0
    4664:	94000000 	bl	0 <_mcount>
    4668:	91240260 	add	x0, x19, #0x900
    466c:	940001f0 	bl	4e2c <stmmac_tx_err>
    4670:	a9417bfd 	ldp	x29, x30, [sp,#16]
    4674:	f84207f3 	ldr	x19, [sp],#32
    4678:	d65f03c0 	ret

000000000000467c <stmmac_poll_controller>:
    467c:	f81e0ff3 	str	x19, [sp,#-32]!
    4680:	a9017bfd 	stp	x29, x30, [sp,#16]
    4684:	910043fd 	add	x29, sp, #0x10
    4688:	aa0003f3 	mov	x19, x0
    468c:	94000000 	bl	0 <_mcount>
    4690:	b9404260 	ldr	w0, [x19,#64]
    4694:	94000000 	bl	0 <disable_irq>
    4698:	b9404260 	ldr	w0, [x19,#64]
    469c:	aa1303e1 	mov	x1, x19
    46a0:	9400003b 	bl	478c <stmmac_interrupt>
    46a4:	b9404260 	ldr	w0, [x19,#64]
    46a8:	94000000 	bl	0 <enable_irq>
    46ac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    46b0:	f84207f3 	ldr	x19, [sp],#32
    46b4:	d65f03c0 	ret

00000000000046b8 <stmmac_fix_features>:
    46b8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    46bc:	a9017bfd 	stp	x29, x30, [sp,#16]
    46c0:	910043fd 	add	x29, sp, #0x10
    46c4:	aa0103f4 	mov	x20, x1
    46c8:	aa0003f3 	mov	x19, x0
    46cc:	94000000 	bl	0 <_mcount>
    46d0:	f947c268 	ldr	x8, [x19,#3968]
    46d4:	925afa8b 	and	x11, x20, #0xffffffdfffffffff
    46d8:	9280034c 	mov	x12, #0xffffffffffffffe5    	// #-27
    46dc:	2947a50a 	ldp	w10, w9, [x8,#60]
    46e0:	b940450d 	ldr	w13, [x8,#68]
    46e4:	7100013f 	cmp	w9, #0x0
    46e8:	9a94016b 	csel	x11, x11, x20, eq
    46ec:	8a0c0169 	and	x9, x11, x12
    46f0:	7100015f 	cmp	w10, #0x0
    46f4:	9a8b0120 	csel	x0, x9, x11, eq
    46f8:	3400008d 	cbz	w13, 4708 <stmmac_fix_features+0x50>
    46fc:	b9424a6a 	ldr	w10, [x19,#584]
    4700:	7117715f 	cmp	w10, #0x5dc
    4704:	9a808120 	csel	x0, x9, x0, hi
    4708:	3942d108 	ldrb	w8, [x8,#180]
    470c:	34000108 	cbz	w8, 472c <stmmac_fix_features+0x74>
    4710:	b94fc268 	ldr	w8, [x19,#4032]
    4714:	340000c8 	cbz	w8, 472c <stmmac_fix_features+0x74>
    4718:	37800060 	tbnz	w0, #16, 4724 <stmmac_fix_features+0x6c>
    471c:	3926627f 	strb	wzr, [x19,#2456]
    4720:	14000003 	b	472c <stmmac_fix_features+0x74>
    4724:	52800028 	mov	w8, #0x1                   	// #1
    4728:	39266268 	strb	w8, [x19,#2456]
    472c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    4730:	a8c24ff4 	ldp	x20, x19, [sp],#32
    4734:	d65f03c0 	ret

0000000000004738 <stmmac_set_features>:
    4738:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    473c:	a9017bfd 	stp	x29, x30, [sp,#16]
    4740:	910043fd 	add	x29, sp, #0x10
    4744:	aa0103f4 	mov	x20, x1
    4748:	aa0003f3 	mov	x19, x0
    474c:	94000000 	bl	0 <_mcount>
    4750:	b7280074 	tbnz	x20, #37, 475c <stmmac_set_features+0x24>
    4754:	2a1f03e8 	mov	w8, wzr
    4758:	14000003 	b	4764 <stmmac_set_features+0x2c>
    475c:	f947c268 	ldr	x8, [x19,#3968]
    4760:	b9404108 	ldr	w8, [x8,#64]
    4764:	f9459269 	ldr	x9, [x19,#2848]
    4768:	b9005528 	str	w8, [x9,#84]
    476c:	f9459260 	ldr	x0, [x19,#2848]
    4770:	f9400008 	ldr	x8, [x0]
    4774:	f9400508 	ldr	x8, [x8,#8]
    4778:	d63f0100 	blr	x8
    477c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    4780:	2a1f03e0 	mov	w0, wzr
    4784:	a8c24ff4 	ldp	x20, x19, [sp],#32
    4788:	d65f03c0 	ret

000000000000478c <stmmac_interrupt>:
    478c:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    4790:	a9014ff4 	stp	x20, x19, [sp,#16]
    4794:	a9027bfd 	stp	x29, x30, [sp,#32]
    4798:	910083fd 	add	x29, sp, #0x20
    479c:	aa0103f3 	mov	x19, x1
    47a0:	94000000 	bl	0 <_mcount>
    47a4:	b9524e68 	ldr	w8, [x19,#4684]
    47a8:	34000088 	cbz	w8, 47b8 <stmmac_interrupt+0x2c>
    47ac:	f9458e60 	ldr	x0, [x19,#2840]
    47b0:	2a1f03e1 	mov	w1, wzr
    47b4:	94000000 	bl	0 <pm_wakeup_event>
    47b8:	b40006f3 	cbz	x19, 4894 <stmmac_interrupt+0x108>
    47bc:	f947c268 	ldr	x8, [x19,#3968]
    47c0:	b9403509 	ldr	w9, [x8,#52]
    47c4:	35000069 	cbnz	w9, 47d0 <stmmac_interrupt+0x44>
    47c8:	b940b108 	ldr	w8, [x8,#176]
    47cc:	34000228 	cbz	w8, 4810 <stmmac_interrupt+0x84>
    47d0:	f9459260 	ldr	x0, [x19,#2848]
    47d4:	91300261 	add	x1, x19, #0xc00
    47d8:	f9400008 	ldr	x8, [x0]
    47dc:	f9400d08 	ldr	x8, [x8,#24]
    47e0:	d63f0100 	blr	x8
    47e4:	35000a80 	cbnz	w0, 4934 <stmmac_interrupt+0x1a8>
    47e8:	f9459268 	ldr	x8, [x19,#2848]
    47ec:	b9405908 	ldr	w8, [x8,#88]
    47f0:	34000108 	cbz	w8, 4810 <stmmac_interrupt+0x84>
    47f4:	f9474e68 	ldr	x8, [x19,#3736]
    47f8:	b4000088 	cbz	x8, 4808 <stmmac_interrupt+0x7c>
    47fc:	aa1303e0 	mov	x0, x19
    4800:	94000000 	bl	0 <netif_carrier_on>
    4804:	14000003 	b	4810 <stmmac_interrupt+0x84>
    4808:	aa1303e0 	mov	x0, x19
    480c:	94000000 	bl	0 <netif_carrier_off>
    4810:	f9459268 	ldr	x8, [x19,#2848]
    4814:	f947c269 	ldr	x9, [x19,#3968]
    4818:	f9458660 	ldr	x0, [x19,#2824]
    481c:	91300261 	add	x1, x19, #0xc00
    4820:	f9400908 	ldr	x8, [x8,#16]
    4824:	b9406d34 	ldr	w20, [x9,#108]
    4828:	f9403508 	ldr	x8, [x8,#104]
    482c:	d63f0100 	blr	x8
    4830:	2a0003f5 	mov	w21, w0
    4834:	721e041f 	tst	w0, #0xc
    4838:	540001e0 	b.eq	4874 <stmmac_interrupt+0xe8>
    483c:	f9452a68 	ldr	x8, [x19,#2640]
    4840:	370801a8 	tbnz	w8, #1, 4874 <stmmac_interrupt+0xe8>
    4844:	91294261 	add	x1, x19, #0xa50
    4848:	2a1f03e0 	mov	w0, wzr
    484c:	94000000 	bl	0 <test_and_set_bit>
    4850:	35000120 	cbnz	w0, 4874 <stmmac_interrupt+0xe8>
    4854:	f9459268 	ldr	x8, [x19,#2848]
    4858:	f9458660 	ldr	x0, [x19,#2824]
    485c:	91290276 	add	x22, x19, #0xa40
    4860:	f9400908 	ldr	x8, [x8,#16]
    4864:	f9402108 	ldr	x8, [x8,#64]
    4868:	d63f0100 	blr	x8
    486c:	aa1603e0 	mov	x0, x22
    4870:	94000000 	bl	0 <__napi_schedule>
    4874:	37080275 	tbnz	w21, #1, 48c0 <stmmac_interrupt+0x134>
    4878:	710006bf 	cmp	w21, #0x1
    487c:	54000560 	b.eq	4928 <stmmac_interrupt+0x19c>
    4880:	52800020 	mov	w0, #0x1                   	// #1
    4884:	a9427bfd 	ldp	x29, x30, [sp,#32]
    4888:	a9414ff4 	ldp	x20, x19, [sp,#16]
    488c:	a8c357f6 	ldp	x22, x21, [sp],#48
    4890:	d65f03c0 	ret
    4894:	d2800000 	mov	x0, #0x0                   	// #0
    4898:	d2800001 	mov	x1, #0x0                   	// #0
    489c:	f2a00000 	movk	x0, #0x0, lsl #16
    48a0:	f2a00001 	movk	x1, #0x0, lsl #16
    48a4:	f2c00000 	movk	x0, #0x0, lsl #32
    48a8:	f2c00001 	movk	x1, #0x0, lsl #32
    48ac:	f2e00000 	movk	x0, #0x0, lsl #48
    48b0:	f2e00001 	movk	x1, #0x0, lsl #48
    48b4:	94000000 	bl	0 <printk>
    48b8:	2a1f03e0 	mov	w0, wzr
    48bc:	17fffff2 	b	4884 <stmmac_interrupt+0xf8>
    48c0:	f9469668 	ldr	x8, [x19,#3368]
    48c4:	52800020 	mov	w0, #0x1                   	// #1
    48c8:	f100051f 	cmp	x8, #0x1
    48cc:	54fffdc0 	b.eq	4884 <stmmac_interrupt+0xf8>
    48d0:	d2800015 	mov	x21, #0x0                   	// #0
    48d4:	f2a00015 	movk	x21, #0x0, lsl #16
    48d8:	f2c00015 	movk	x21, #0x0, lsl #32
    48dc:	f2e00015 	movk	x21, #0x0, lsl #48
    48e0:	b94002a8 	ldr	w8, [x21]
    48e4:	7104011f 	cmp	w8, #0x100
    48e8:	54fffcec 	b.gt	4884 <stmmac_interrupt+0xf8>
    48ec:	11010101 	add	w1, w8, #0x40
    48f0:	b90002a1 	str	w1, [x21]
    48f4:	f9459268 	ldr	x8, [x19,#2848]
    48f8:	f947c269 	ldr	x9, [x19,#3968]
    48fc:	f9458660 	ldr	x0, [x19,#2824]
    4900:	2a1403e3 	mov	w3, w20
    4904:	f9400908 	ldr	x8, [x8,#16]
    4908:	b9405129 	ldr	w9, [x9,#80]
    490c:	f9401108 	ldr	x8, [x8,#32]
    4910:	7100013f 	cmp	w9, #0x0
    4914:	1a9f1422 	csinc	w2, w1, wzr, ne
    4918:	d63f0100 	blr	x8
    491c:	b98002a8 	ldrsw	x8, [x21]
    4920:	f9069668 	str	x8, [x19,#3368]
    4924:	17ffffd7 	b	4880 <stmmac_interrupt+0xf4>
    4928:	91240260 	add	x0, x19, #0x900
    492c:	94000140 	bl	4e2c <stmmac_tx_err>
    4930:	17ffffd4 	b	4880 <stmmac_interrupt+0xf4>
    4934:	37000080 	tbnz	w0, #0, 4944 <stmmac_interrupt+0x1b8>
    4938:	370800c0 	tbnz	w0, #1, 4950 <stmmac_interrupt+0x1c4>
    493c:	3647f560 	tbz	w0, #8, 47e8 <stmmac_interrupt+0x5c>
    4940:	14000006 	b	4958 <stmmac_interrupt+0x1cc>
    4944:	52800028 	mov	w8, #0x1                   	// #1
    4948:	39253268 	strb	w8, [x19,#2380]
    494c:	360fff80 	tbz	w0, #1, 493c <stmmac_interrupt+0x1b0>
    4950:	3925327f 	strb	wzr, [x19,#2380]
    4954:	3647f4a0 	tbz	w0, #8, 47e8 <stmmac_interrupt+0x5c>
    4958:	f9459268 	ldr	x8, [x19,#2848]
    495c:	f9400908 	ldr	x8, [x8,#16]
    4960:	f9404908 	ldr	x8, [x8,#144]
    4964:	b4fff428 	cbz	x8, 47e8 <stmmac_interrupt+0x5c>
    4968:	f9458660 	ldr	x0, [x19,#2824]
    496c:	b9526a61 	ldr	w1, [x19,#4712]
    4970:	2a1f03e2 	mov	w2, wzr
    4974:	d63f0100 	blr	x8
    4978:	17ffff9c 	b	47e8 <stmmac_interrupt+0x5c>

000000000000497c <free_dma_desc_resources>:
    497c:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    4980:	a90157f6 	stp	x22, x21, [sp,#16]
    4984:	a9024ff4 	stp	x20, x19, [sp,#32]
    4988:	a9037bfd 	stp	x29, x30, [sp,#48]
    498c:	9100c3fd 	add	x29, sp, #0x30
    4990:	aa0003f3 	mov	x19, x0
    4994:	94000000 	bl	0 <_mcount>
    4998:	d2800017 	mov	x23, #0x0                   	// #0
    499c:	f2a00017 	movk	x23, #0x0, lsl #16
    49a0:	f2c00017 	movk	x23, #0x0, lsl #32
    49a4:	aa1f03f4 	mov	x20, xzr
    49a8:	f2e00017 	movk	x23, #0x0, lsl #48
    49ac:	14000008 	b	49cc <free_dma_desc_resources+0x50>
    49b0:	52800021 	mov	w1, #0x1                   	// #1
    49b4:	94000000 	bl	0 <__dev_kfree_skb_any>
    49b8:	f9406a68 	ldr	x8, [x19,#208]
    49bc:	f834691f 	str	xzr, [x8,x20]
    49c0:	91002294 	add	x20, x20, #0x8
    49c4:	f140069f 	cmp	x20, #0x1, lsl #12
    49c8:	540002a0 	b.eq	4a1c <free_dma_desc_resources+0xa0>
    49cc:	f9406a68 	ldr	x8, [x19,#208]
    49d0:	f8746900 	ldr	x0, [x8,x20]
    49d4:	b4ffff40 	cbz	x0, 49bc <free_dma_desc_resources+0x40>
    49d8:	f9407e69 	ldr	x9, [x19,#248]
    49dc:	f9410e68 	ldr	x8, [x19,#536]
    49e0:	b940e262 	ldr	w2, [x19,#224]
    49e4:	f8746921 	ldr	x1, [x9,x20]
    49e8:	b4000068 	cbz	x8, 49f4 <free_dma_desc_resources+0x78>
    49ec:	f9412509 	ldr	x9, [x8,#584]
    49f0:	b5000049 	cbnz	x9, 49f8 <free_dma_desc_resources+0x7c>
    49f4:	aa1703e9 	mov	x9, x23
    49f8:	f9401529 	ldr	x9, [x9,#40]
    49fc:	b4fffda9 	cbz	x9, 49b0 <free_dma_desc_resources+0x34>
    4a00:	52800043 	mov	w3, #0x2                   	// #2
    4a04:	aa0803e0 	mov	x0, x8
    4a08:	aa1f03e4 	mov	x4, xzr
    4a0c:	d63f0120 	blr	x9
    4a10:	f9406a68 	ldr	x8, [x19,#208]
    4a14:	f8746900 	ldr	x0, [x8,x20]
    4a18:	17ffffe6 	b	49b0 <free_dma_desc_resources+0x34>
    4a1c:	aa1303e0 	mov	x0, x19
    4a20:	94000142 	bl	4f28 <dma_free_tx_skbufs>
    4a24:	b948b668 	ldr	w8, [x19,#2228]
    4a28:	f9410e74 	ldr	x20, [x19,#536]
    4a2c:	34000548 	cbz	w8, 4ad4 <free_dma_desc_resources+0x158>
    4a30:	f9400276 	ldr	x22, [x19]
    4a34:	f9401e75 	ldr	x21, [x19,#56]
    4a38:	b4000074 	cbz	x20, 4a44 <free_dma_desc_resources+0xc8>
    4a3c:	f9412698 	ldr	x24, [x20,#584]
    4a40:	b5000058 	cbnz	x24, 4a48 <free_dma_desc_resources+0xcc>
    4a44:	aa1703f8 	mov	x24, x23
    4a48:	d53b4228 	mrs	x8, daif
    4a4c:	37380b88 	tbnz	w8, #7, 4bbc <free_dma_desc_resources+0x240>
    4a50:	52800041 	mov	w1, #0x2                   	// #2
    4a54:	aa1403e0 	mov	x0, x20
    4a58:	aa1603e2 	mov	x2, x22
    4a5c:	94000000 	bl	0 <dma_release_from_coherent>
    4a60:	35000140 	cbnz	w0, 4a88 <free_dma_desc_resources+0x10c>
    4a64:	b4000136 	cbz	x22, 4a88 <free_dma_desc_resources+0x10c>
    4a68:	f9400708 	ldr	x8, [x24,#8]
    4a6c:	b40000e8 	cbz	x8, 4a88 <free_dma_desc_resources+0x10c>
    4a70:	52880001 	mov	w1, #0x4000                	// #16384
    4a74:	aa1403e0 	mov	x0, x20
    4a78:	aa1603e2 	mov	x2, x22
    4a7c:	aa1503e3 	mov	x3, x21
    4a80:	aa1f03e4 	mov	x4, xzr
    4a84:	d63f0100 	blr	x8
    4a88:	f9410e74 	ldr	x20, [x19,#536]
    4a8c:	f9406676 	ldr	x22, [x19,#200]
    4a90:	f9408275 	ldr	x21, [x19,#256]
    4a94:	b4000074 	cbz	x20, 4aa0 <free_dma_desc_resources+0x124>
    4a98:	f9412698 	ldr	x24, [x20,#584]
    4a9c:	b5000058 	cbnz	x24, 4aa4 <free_dma_desc_resources+0x128>
    4aa0:	aa1703f8 	mov	x24, x23
    4aa4:	d53b4228 	mrs	x8, daif
    4aa8:	373808e8 	tbnz	w8, #7, 4bc4 <free_dma_desc_resources+0x248>
    4aac:	52800041 	mov	w1, #0x2                   	// #2
    4ab0:	aa1403e0 	mov	x0, x20
    4ab4:	aa1603e2 	mov	x2, x22
    4ab8:	94000000 	bl	0 <dma_release_from_coherent>
    4abc:	35000660 	cbnz	w0, 4b88 <free_dma_desc_resources+0x20c>
    4ac0:	b4000656 	cbz	x22, 4b88 <free_dma_desc_resources+0x20c>
    4ac4:	f9400708 	ldr	x8, [x24,#8]
    4ac8:	b4000608 	cbz	x8, 4b88 <free_dma_desc_resources+0x20c>
    4acc:	52880001 	mov	w1, #0x4000                	// #16384
    4ad0:	14000029 	b	4b74 <free_dma_desc_resources+0x1f8>
    4ad4:	f9400676 	ldr	x22, [x19,#8]
    4ad8:	f9401e75 	ldr	x21, [x19,#56]
    4adc:	b4000074 	cbz	x20, 4ae8 <free_dma_desc_resources+0x16c>
    4ae0:	f9412698 	ldr	x24, [x20,#584]
    4ae4:	b5000058 	cbnz	x24, 4aec <free_dma_desc_resources+0x170>
    4ae8:	aa1703f8 	mov	x24, x23
    4aec:	d53b4228 	mrs	x8, daif
    4af0:	373806e8 	tbnz	w8, #7, 4bcc <free_dma_desc_resources+0x250>
    4af4:	52800021 	mov	w1, #0x1                   	// #1
    4af8:	aa1403e0 	mov	x0, x20
    4afc:	aa1603e2 	mov	x2, x22
    4b00:	94000000 	bl	0 <dma_release_from_coherent>
    4b04:	35000140 	cbnz	w0, 4b2c <free_dma_desc_resources+0x1b0>
    4b08:	b4000136 	cbz	x22, 4b2c <free_dma_desc_resources+0x1b0>
    4b0c:	f9400708 	ldr	x8, [x24,#8]
    4b10:	b40000e8 	cbz	x8, 4b2c <free_dma_desc_resources+0x1b0>
    4b14:	52840001 	mov	w1, #0x2000                	// #8192
    4b18:	aa1403e0 	mov	x0, x20
    4b1c:	aa1603e2 	mov	x2, x22
    4b20:	aa1503e3 	mov	x3, x21
    4b24:	aa1f03e4 	mov	x4, xzr
    4b28:	d63f0100 	blr	x8
    4b2c:	f9410e74 	ldr	x20, [x19,#536]
    4b30:	f9406276 	ldr	x22, [x19,#192]
    4b34:	f9408275 	ldr	x21, [x19,#256]
    4b38:	b4000074 	cbz	x20, 4b44 <free_dma_desc_resources+0x1c8>
    4b3c:	f9412698 	ldr	x24, [x20,#584]
    4b40:	b5000058 	cbnz	x24, 4b48 <free_dma_desc_resources+0x1cc>
    4b44:	aa1703f8 	mov	x24, x23
    4b48:	d53b4228 	mrs	x8, daif
    4b4c:	37380448 	tbnz	w8, #7, 4bd4 <free_dma_desc_resources+0x258>
    4b50:	52800021 	mov	w1, #0x1                   	// #1
    4b54:	aa1403e0 	mov	x0, x20
    4b58:	aa1603e2 	mov	x2, x22
    4b5c:	94000000 	bl	0 <dma_release_from_coherent>
    4b60:	35000140 	cbnz	w0, 4b88 <free_dma_desc_resources+0x20c>
    4b64:	b4000136 	cbz	x22, 4b88 <free_dma_desc_resources+0x20c>
    4b68:	f9400708 	ldr	x8, [x24,#8]
    4b6c:	b40000e8 	cbz	x8, 4b88 <free_dma_desc_resources+0x20c>
    4b70:	52840001 	mov	w1, #0x2000                	// #8192
    4b74:	aa1403e0 	mov	x0, x20
    4b78:	aa1603e2 	mov	x2, x22
    4b7c:	aa1503e3 	mov	x3, x21
    4b80:	aa1f03e4 	mov	x4, xzr
    4b84:	d63f0100 	blr	x8
    4b88:	f9407e60 	ldr	x0, [x19,#248]
    4b8c:	94000000 	bl	0 <kfree>
    4b90:	f9406a60 	ldr	x0, [x19,#208]
    4b94:	94000000 	bl	0 <kfree>
    4b98:	f9401a60 	ldr	x0, [x19,#48]
    4b9c:	94000000 	bl	0 <kfree>
    4ba0:	f9400a60 	ldr	x0, [x19,#16]
    4ba4:	94000000 	bl	0 <kfree>
    4ba8:	a9437bfd 	ldp	x29, x30, [sp,#48]
    4bac:	a9424ff4 	ldp	x20, x19, [sp,#32]
    4bb0:	a94157f6 	ldp	x22, x21, [sp,#16]
    4bb4:	a8c45ff8 	ldp	x24, x23, [sp],#64
    4bb8:	d65f03c0 	ret
    4bbc:	d4210000 	brk	#0x800
    4bc0:	17ffffa4 	b	4a50 <free_dma_desc_resources+0xd4>
    4bc4:	d4210000 	brk	#0x800
    4bc8:	17ffffb9 	b	4aac <free_dma_desc_resources+0x130>
    4bcc:	d4210000 	brk	#0x800
    4bd0:	17ffffc9 	b	4af4 <free_dma_desc_resources+0x178>
    4bd4:	d4210000 	brk	#0x800
    4bd8:	17ffffde 	b	4b50 <free_dma_desc_resources+0x1d4>

0000000000004bdc <stmmac_adjust_link>:
    4bdc:	a9bb67fa 	stp	x26, x25, [sp,#-80]!
    4be0:	a9015ff8 	stp	x24, x23, [sp,#16]
    4be4:	a90257f6 	stp	x22, x21, [sp,#32]
    4be8:	a9034ff4 	stp	x20, x19, [sp,#48]
    4bec:	a9047bfd 	stp	x29, x30, [sp,#64]
    4bf0:	910103fd 	add	x29, sp, #0x40
    4bf4:	aa0003f3 	mov	x19, x0
    4bf8:	94000000 	bl	0 <_mcount>
    4bfc:	f945a274 	ldr	x20, [x19,#2880]
    4c00:	b4001034 	cbz	x20, 4e04 <stmmac_adjust_link+0x228>
    4c04:	b94b5677 	ldr	w23, [x19,#2900]
    4c08:	b94b5a78 	ldr	w24, [x19,#2904]
    4c0c:	912ca275 	add	x21, x19, #0xb28
    4c10:	aa1503e0 	mov	x0, x21
    4c14:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    4c18:	b9436688 	ldr	w8, [x20,#868]
    4c1c:	aa0003f6 	mov	x22, x0
    4c20:	34000188 	cbz	w8, 4c50 <stmmac_adjust_link+0x74>
    4c24:	f9458668 	ldr	x8, [x19,#2824]
    4c28:	b9400119 	ldr	w25, [x8]
    4c2c:	d5033d9f 	dsb	ld
    4c30:	b9435a88 	ldr	w8, [x20,#856]
    4c34:	b94b5269 	ldr	w9, [x19,#2896]
    4c38:	6b09011f 	cmp	w8, w9
    4c3c:	54000181 	b.ne	4c6c <stmmac_adjust_link+0x90>
    4c40:	2a1f03fa 	mov	w26, wzr
    4c44:	b9435e88 	ldr	w8, [x20,#860]
    4c48:	35000268 	cbnz	w8, 4c94 <stmmac_adjust_link+0xb8>
    4c4c:	14000019 	b	4cb0 <stmmac_adjust_link+0xd4>
    4c50:	b94b4a68 	ldr	w8, [x19,#2888]
    4c54:	34000c08 	cbz	w8, 4dd4 <stmmac_adjust_link+0x1f8>
    4c58:	6f00e400 	movi	v0.2d, #0x0
    4c5c:	12800008 	mov	w8, #0xffffffff            	// #-1
    4c60:	fd05a660 	str	d0, [x19,#2888]
    4c64:	b90b5268 	str	w8, [x19,#2896]
    4c68:	14000056 	b	4dc0 <stmmac_adjust_link+0x1e4>
    4c6c:	f9459269 	ldr	x9, [x19,#2848]
    4c70:	7100011f 	cmp	w8, #0x0
    4c74:	5280003a 	mov	w26, #0x1                   	// #1
    4c78:	b9403529 	ldr	w9, [x9,#52]
    4c7c:	b90b5268 	str	w8, [x19,#2896]
    4c80:	2a190128 	orr	w8, w9, w25
    4c84:	0a290329 	bic	w9, w25, w9
    4c88:	1a880139 	csel	w25, w9, w8, eq
    4c8c:	b9435e88 	ldr	w8, [x20,#860]
    4c90:	34000108 	cbz	w8, 4cb0 <stmmac_adjust_link+0xd4>
    4c94:	f9459260 	ldr	x0, [x19,#2848]
    4c98:	b9435a81 	ldr	w1, [x20,#856]
    4c9c:	2a1703e2 	mov	w2, w23
    4ca0:	2a1803e3 	mov	w3, w24
    4ca4:	f9400008 	ldr	x8, [x0]
    4ca8:	f9401508 	ldr	x8, [x8,#40]
    4cac:	d63f0100 	blr	x8
    4cb0:	b9435682 	ldr	w2, [x20,#852]
    4cb4:	b94b4e68 	ldr	w8, [x19,#2892]
    4cb8:	6b08005f 	cmp	w2, w8
    4cbc:	54000700 	b.eq	4d9c <stmmac_adjust_link+0x1c0>
    4cc0:	7100285f 	cmp	w2, #0xa
    4cc4:	54000200 	b.eq	4d04 <stmmac_adjust_link+0x128>
    4cc8:	7101905f 	cmp	w2, #0x64
    4ccc:	540001c0 	b.eq	4d04 <stmmac_adjust_link+0x128>
    4cd0:	710fa05f 	cmp	w2, #0x3e8
    4cd4:	54000241 	b.ne	4d1c <stmmac_adjust_link+0x140>
    4cd8:	f947c268 	ldr	x8, [x19,#3968]
    4cdc:	b9403509 	ldr	w9, [x8,#52]
    4ce0:	35000069 	cbnz	w9, 4cec <stmmac_adjust_link+0x110>
    4ce4:	b940b109 	ldr	w9, [x8,#176]
    4ce8:	34000489 	cbz	w9, 4d78 <stmmac_adjust_link+0x19c>
    4cec:	f9459269 	ldr	x9, [x19,#2848]
    4cf0:	b9403129 	ldr	w9, [x9,#48]
    4cf4:	0a290339 	bic	w25, w25, w9
    4cf8:	f9403909 	ldr	x9, [x8,#112]
    4cfc:	b5000429 	cbnz	x9, 4d80 <stmmac_adjust_link+0x1a4>
    4d00:	14000024 	b	4d90 <stmmac_adjust_link+0x1b4>
    4d04:	f947c268 	ldr	x8, [x19,#3968]
    4d08:	b9403509 	ldr	w9, [x8,#52]
    4d0c:	340001c9 	cbz	w9, 4d44 <stmmac_adjust_link+0x168>
    4d10:	f9459269 	ldr	x9, [x19,#2848]
    4d14:	b940312a 	ldr	w10, [x9,#48]
    4d18:	1400000f 	b	4d54 <stmmac_adjust_link+0x178>
    4d1c:	52822508 	mov	w8, #0x1128                	// #4392
    4d20:	38686a68 	ldrb	w8, [x19,x8]
    4d24:	36100368 	tbz	w8, #2, 4d90 <stmmac_adjust_link+0x1b4>
    4d28:	d2800000 	mov	x0, #0x0                   	// #0
    4d2c:	f2a00000 	movk	x0, #0x0, lsl #16
    4d30:	f2c00000 	movk	x0, #0x0, lsl #32
    4d34:	f2e00000 	movk	x0, #0x0, lsl #48
    4d38:	aa1303e1 	mov	x1, x19
    4d3c:	94000000 	bl	0 <printk>
    4d40:	14000014 	b	4d90 <stmmac_adjust_link+0x1b4>
    4d44:	f9459269 	ldr	x9, [x19,#2848]
    4d48:	b940b10b 	ldr	w11, [x8,#176]
    4d4c:	b940312a 	ldr	w10, [x9,#48]
    4d50:	3400066b 	cbz	w11, 4e1c <stmmac_adjust_link+0x240>
    4d54:	b9403929 	ldr	w9, [x9,#56]
    4d58:	7101905f 	cmp	w2, #0x64
    4d5c:	2a19014a 	orr	w10, w10, w25
    4d60:	540000a1 	b.ne	4d74 <stmmac_adjust_link+0x198>
    4d64:	2a0a0139 	orr	w25, w9, w10
    4d68:	f9403909 	ldr	x9, [x8,#112]
    4d6c:	b50000a9 	cbnz	x9, 4d80 <stmmac_adjust_link+0x1a4>
    4d70:	14000008 	b	4d90 <stmmac_adjust_link+0x1b4>
    4d74:	0a290159 	bic	w25, w10, w9
    4d78:	f9403909 	ldr	x9, [x8,#112]
    4d7c:	b40000a9 	cbz	x9, 4d90 <stmmac_adjust_link+0x1b4>
    4d80:	f945a26a 	ldr	x10, [x19,#2880]
    4d84:	f9405100 	ldr	x0, [x8,#160]
    4d88:	b9435541 	ldr	w1, [x10,#852]
    4d8c:	d63f0120 	blr	x9
    4d90:	b9435688 	ldr	w8, [x20,#852]
    4d94:	5280003a 	mov	w26, #0x1                   	// #1
    4d98:	b90b4e68 	str	w8, [x19,#2892]
    4d9c:	d5033e9f 	dsb	st
    4da0:	f9458668 	ldr	x8, [x19,#2824]
    4da4:	b9000119 	str	w25, [x8]
    4da8:	b94b4a68 	ldr	w8, [x19,#2888]
    4dac:	34000068 	cbz	w8, 4db8 <stmmac_adjust_link+0x1dc>
    4db0:	3500009a 	cbnz	w26, 4dc0 <stmmac_adjust_link+0x1e4>
    4db4:	14000008 	b	4dd4 <stmmac_adjust_link+0x1f8>
    4db8:	52800028 	mov	w8, #0x1                   	// #1
    4dbc:	b90b4a68 	str	w8, [x19,#2888]
    4dc0:	52822508 	mov	w8, #0x1128                	// #4392
    4dc4:	38686a68 	ldrb	w8, [x19,x8]
    4dc8:	36100068 	tbz	w8, #2, 4dd4 <stmmac_adjust_link+0x1f8>
    4dcc:	aa1403e0 	mov	x0, x20
    4dd0:	94000000 	bl	0 <phy_print_status>
    4dd4:	aa1503e0 	mov	x0, x21
    4dd8:	aa1603e1 	mov	x1, x22
    4ddc:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    4de0:	394d0a88 	ldrb	w8, [x20,#834]
    4de4:	34000088 	cbz	w8, 4df4 <stmmac_adjust_link+0x218>
    4de8:	12800028 	mov	w8, #0xfffffffe            	// #-2
    4dec:	b9038688 	str	w8, [x20,#900]
    4df0:	14000005 	b	4e04 <stmmac_adjust_link+0x228>
    4df4:	91240260 	add	x0, x19, #0x900
    4df8:	97ffec91 	bl	3c <stmmac_eee_init>
    4dfc:	12000008 	and	w8, w0, #0x1
    4e00:	b911a668 	str	w8, [x19,#4516]
    4e04:	a9447bfd 	ldp	x29, x30, [sp,#64]
    4e08:	a9434ff4 	ldp	x20, x19, [sp,#48]
    4e0c:	a94257f6 	ldp	x22, x21, [sp,#32]
    4e10:	a9415ff8 	ldp	x24, x23, [sp,#16]
    4e14:	a8c567fa 	ldp	x26, x25, [sp],#80
    4e18:	d65f03c0 	ret
    4e1c:	0a2a0339 	bic	w25, w25, w10
    4e20:	f9403909 	ldr	x9, [x8,#112]
    4e24:	b5fffae9 	cbnz	x9, 4d80 <stmmac_adjust_link+0x1a4>
    4e28:	17ffffda 	b	4d90 <stmmac_adjust_link+0x1b4>

0000000000004e2c <stmmac_tx_err>:
    4e2c:	f81d0ff5 	str	x21, [sp,#-48]!
    4e30:	a9014ff4 	stp	x20, x19, [sp,#16]
    4e34:	a9027bfd 	stp	x29, x30, [sp,#32]
    4e38:	910083fd 	add	x29, sp, #0x20
    4e3c:	aa0003f3 	mov	x19, x0
    4e40:	94000000 	bl	0 <_mcount>
    4e44:	f9410a68 	ldr	x8, [x19,#528]
    4e48:	2a1f03e0 	mov	w0, wzr
    4e4c:	f941e108 	ldr	x8, [x8,#960]
    4e50:	91024101 	add	x1, x8, #0x90
    4e54:	94000000 	bl	0 <set_bit>
    4e58:	f9411268 	ldr	x8, [x19,#544]
    4e5c:	f9410660 	ldr	x0, [x19,#520]
    4e60:	f9400908 	ldr	x8, [x8,#16]
    4e64:	f9402908 	ldr	x8, [x8,#80]
    4e68:	d63f0100 	blr	x8
    4e6c:	aa1303e0 	mov	x0, x19
    4e70:	9400002e 	bl	4f28 <dma_free_tx_skbufs>
    4e74:	aa1f03f4 	mov	x20, xzr
    4e78:	9287fff5 	mov	x21, #0xffffffffffffc000    	// #-16384
    4e7c:	1400000a 	b	4ea4 <stmmac_tx_err+0x78>
    4e80:	f9400669 	ldr	x9, [x19,#8]
    4e84:	8b141120 	add	x0, x9, x20, lsl #4
    4e88:	b948b261 	ldr	w1, [x19,#2224]
    4e8c:	b10082bf 	cmn	x21, #0x20
    4e90:	1a9f17e2 	cset	w2, eq
    4e94:	d63f0100 	blr	x8
    4e98:	b10082b5 	adds	x21, x21, #0x20
    4e9c:	91000694 	add	x20, x20, #0x1
    4ea0:	54000140 	b.eq	4ec8 <stmmac_tx_err+0x9c>
    4ea4:	f9411268 	ldr	x8, [x19,#544]
    4ea8:	b948b669 	ldr	w9, [x19,#2228]
    4eac:	f9400508 	ldr	x8, [x8,#8]
    4eb0:	f9400508 	ldr	x8, [x8,#8]
    4eb4:	34fffe69 	cbz	w9, 4e80 <stmmac_tx_err+0x54>
    4eb8:	f9400269 	ldr	x9, [x19]
    4ebc:	8b150129 	add	x9, x9, x21
    4ec0:	91401120 	add	x0, x9, #0x4, lsl #12
    4ec4:	17fffff1 	b	4e88 <stmmac_tx_err+0x5c>
    4ec8:	f9410a68 	ldr	x8, [x19,#528]
    4ecc:	f9000e7f 	str	xzr, [x19,#24]
    4ed0:	52800020 	mov	w0, #0x1                   	// #1
    4ed4:	f941e114 	ldr	x20, [x8,#960]
    4ed8:	91024281 	add	x1, x20, #0x90
    4edc:	94000000 	bl	0 <clear_bit>
    4ee0:	91030280 	add	x0, x20, #0xc0
    4ee4:	94000000 	bl	0 <dql_reset>
    4ee8:	f9411268 	ldr	x8, [x19,#544]
    4eec:	f9410660 	ldr	x0, [x19,#520]
    4ef0:	f9400908 	ldr	x8, [x8,#16]
    4ef4:	f9402508 	ldr	x8, [x8,#72]
    4ef8:	d63f0100 	blr	x8
    4efc:	f9410a68 	ldr	x8, [x19,#528]
    4f00:	f940ad09 	ldr	x9, [x8,#344]
    4f04:	91000529 	add	x9, x9, #0x1
    4f08:	f900ad09 	str	x9, [x8,#344]
    4f0c:	f9410a68 	ldr	x8, [x19,#528]
    4f10:	f941e100 	ldr	x0, [x8,#960]
    4f14:	94000000 	bl	0 <netif_tx_wake_queue>
    4f18:	a9427bfd 	ldp	x29, x30, [sp,#32]
    4f1c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    4f20:	f84307f5 	ldr	x21, [sp],#48
    4f24:	d65f03c0 	ret

0000000000004f28 <dma_free_tx_skbufs>:
    4f28:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    4f2c:	a9014ff4 	stp	x20, x19, [sp,#16]
    4f30:	a9027bfd 	stp	x29, x30, [sp,#32]
    4f34:	910083fd 	add	x29, sp, #0x20
    4f38:	aa0003f3 	mov	x19, x0
    4f3c:	94000000 	bl	0 <_mcount>
    4f40:	d2800016 	mov	x22, #0x0                   	// #0
    4f44:	f2a00016 	movk	x22, #0x0, lsl #16
    4f48:	f2c00016 	movk	x22, #0x0, lsl #32
    4f4c:	aa1f03f4 	mov	x20, xzr
    4f50:	aa1f03f5 	mov	x21, xzr
    4f54:	f2e00016 	movk	x22, #0x0, lsl #48
    4f58:	14000005 	b	4f6c <dma_free_tx_skbufs+0x44>
    4f5c:	91002294 	add	x20, x20, #0x8
    4f60:	f140069f 	cmp	x20, #0x1, lsl #12
    4f64:	910062b5 	add	x21, x21, #0x18
    4f68:	540003c0 	b.eq	4fe0 <dma_free_tx_skbufs+0xb8>
    4f6c:	f9401a68 	ldr	x8, [x19,#48]
    4f70:	f8756901 	ldr	x1, [x8,x21]
    4f74:	b40001c1 	cbz	x1, 4fac <dma_free_tx_skbufs+0x84>
    4f78:	8b150108 	add	x8, x8, x21
    4f7c:	f9410e60 	ldr	x0, [x19,#536]
    4f80:	b9400d02 	ldr	w2, [x8,#12]
    4f84:	39402109 	ldrb	w9, [x8,#8]
    4f88:	b4000060 	cbz	x0, 4f94 <dma_free_tx_skbufs+0x6c>
    4f8c:	f9412408 	ldr	x8, [x0,#584]
    4f90:	b5000048 	cbnz	x8, 4f98 <dma_free_tx_skbufs+0x70>
    4f94:	aa1603e8 	mov	x8, x22
    4f98:	f9401508 	ldr	x8, [x8,#40]
    4f9c:	b4000088 	cbz	x8, 4fac <dma_free_tx_skbufs+0x84>
    4fa0:	52800023 	mov	w3, #0x1                   	// #1
    4fa4:	aa1f03e4 	mov	x4, xzr
    4fa8:	d63f0100 	blr	x8
    4fac:	f9400a68 	ldr	x8, [x19,#16]
    4fb0:	f8746900 	ldr	x0, [x8,x20]
    4fb4:	b4fffd40 	cbz	x0, 4f5c <dma_free_tx_skbufs+0x34>
    4fb8:	52800021 	mov	w1, #0x1                   	// #1
    4fbc:	94000000 	bl	0 <__dev_kfree_skb_any>
    4fc0:	f9400a68 	ldr	x8, [x19,#16]
    4fc4:	f834691f 	str	xzr, [x8,x20]
    4fc8:	f9401a68 	ldr	x8, [x19,#48]
    4fcc:	f835691f 	str	xzr, [x8,x21]
    4fd0:	f9401a68 	ldr	x8, [x19,#48]
    4fd4:	8b150108 	add	x8, x8, x21
    4fd8:	3900211f 	strb	wzr, [x8,#8]
    4fdc:	17ffffe0 	b	4f5c <dma_free_tx_skbufs+0x34>
    4fe0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    4fe4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    4fe8:	a8c357f6 	ldp	x22, x21, [sp],#48
    4fec:	d65f03c0 	ret

0000000000004ff0 <stmmac_tx_clean>:
    4ff0:	d101c3ff 	sub	sp, sp, #0x70
    4ff4:	a9016ffc 	stp	x28, x27, [sp,#16]
    4ff8:	a90267fa 	stp	x26, x25, [sp,#32]
    4ffc:	a9035ff8 	stp	x24, x23, [sp,#48]
    5000:	a90457f6 	stp	x22, x21, [sp,#64]
    5004:	a9054ff4 	stp	x20, x19, [sp,#80]
    5008:	a9067bfd 	stp	x29, x30, [sp,#96]
    500c:	910183fd 	add	x29, sp, #0x60
    5010:	aa0003f4 	mov	x20, x0
    5014:	94000000 	bl	0 <_mcount>
    5018:	b9401e9a 	ldr	w26, [x20,#28]
    501c:	9101229c 	add	x28, x20, #0x48
    5020:	aa1c03e0 	mov	x0, x28
    5024:	94000000 	bl	0 <_raw_spin_lock>
    5028:	f9423288 	ldr	x8, [x20,#1120]
    502c:	b9401a89 	ldr	w9, [x20,#24]
    5030:	91000508 	add	x8, x8, #0x1
    5034:	6b09035f 	cmp	w26, w9
    5038:	f9023288 	str	x8, [x20,#1120]
    503c:	54000081 	b.ne	504c <stmmac_tx_clean+0x5c>
    5040:	b9001e9a 	str	w26, [x20,#28]
    5044:	91084293 	add	x19, x20, #0x210
    5048:	1400009f 	b	52c4 <stmmac_tx_clean+0x2d4>
    504c:	f90003fc 	str	x28, [sp]
    5050:	d2800017 	mov	x23, #0x0                   	// #0
    5054:	d280001c 	mov	x28, #0x0                   	// #0
    5058:	f2a00017 	movk	x23, #0x0, lsl #16
    505c:	f2a0001c 	movk	x28, #0x0, lsl #16
    5060:	f2c00017 	movk	x23, #0x0, lsl #32
    5064:	f2c0001c 	movk	x28, #0x0, lsl #32
    5068:	2a1f03f5 	mov	w21, wzr
    506c:	910c0296 	add	x22, x20, #0x300
    5070:	5280031b 	mov	w27, #0x18                  	// #24
    5074:	f2e00017 	movk	x23, #0x0, lsl #48
    5078:	f2e0001c 	movk	x28, #0x0, lsl #48
    507c:	f9400a88 	ldr	x8, [x20,#16]
    5080:	b948b689 	ldr	w9, [x20,#2228]
    5084:	2a1a03f3 	mov	w19, w26
    5088:	f87a5919 	ldr	x25, [x8,w26,uxtw #3]
    508c:	34000089 	cbz	w9, 509c <stmmac_tx_clean+0xac>
    5090:	f9400288 	ldr	x8, [x20]
    5094:	8b131518 	add	x24, x8, x19, lsl #5
    5098:	14000003 	b	50a4 <stmmac_tx_clean+0xb4>
    509c:	f9400688 	ldr	x8, [x20,#8]
    50a0:	8b131118 	add	x24, x8, x19, lsl #4
    50a4:	f9411288 	ldr	x8, [x20,#544]
    50a8:	f9410a89 	ldr	x9, [x20,#528]
    50ac:	f9410683 	ldr	x3, [x20,#520]
    50b0:	aa1603e1 	mov	x1, x22
    50b4:	f9400508 	ldr	x8, [x8,#8]
    50b8:	9104c120 	add	x0, x9, #0x130
    50bc:	aa1803e2 	mov	x2, x24
    50c0:	f9402508 	ldr	x8, [x8,#72]
    50c4:	d63f0100 	blr	x8
    50c8:	37100d60 	tbnz	w0, #2, 5274 <stmmac_tx_clean+0x284>
    50cc:	d50331bf 	dmb	oshld
    50d0:	37000220 	tbnz	w0, #0, 5114 <stmmac_tx_clean+0x124>
    50d4:	f9410a88 	ldr	x8, [x20,#528]
    50d8:	370809a0 	tbnz	w0, #1, 520c <stmmac_tx_clean+0x21c>
    50dc:	f9409d09 	ldr	x9, [x8,#312]
    50e0:	91000529 	add	x9, x9, #0x1
    50e4:	f9009d09 	str	x9, [x8,#312]
    50e8:	f9421a88 	ldr	x8, [x20,#1072]
    50ec:	91000508 	add	x8, x8, #0x1
    50f0:	f9021a88 	str	x8, [x20,#1072]
    50f4:	b4000119 	cbz	x25, 5114 <stmmac_tx_clean+0x124>
    50f8:	b9404688 	ldr	w8, [x20,#68]
    50fc:	340000c8 	cbz	w8, 5114 <stmmac_tx_clean+0x124>
    5100:	f940c328 	ldr	x8, [x25,#384]
    5104:	b9417329 	ldr	w9, [x25,#368]
    5108:	8b090108 	add	x8, x8, x9
    510c:	39400508 	ldrb	w8, [x8,#1]
    5110:	37100888 	tbnz	w8, #2, 5220 <stmmac_tx_clean+0x230>
    5114:	f9401a88 	ldr	x8, [x20,#48]
    5118:	9b1b7e69 	mul	x9, x19, x27
    511c:	f8696901 	ldr	x1, [x8,x9]
    5120:	b4000301 	cbz	x1, 5180 <stmmac_tx_clean+0x190>
    5124:	9b1b2268 	madd	x8, x19, x27, x8
    5128:	f9410e80 	ldr	x0, [x20,#536]
    512c:	b9400d02 	ldr	w2, [x8,#12]
    5130:	39402109 	ldrb	w9, [x8,#8]
    5134:	b4000060 	cbz	x0, 5140 <stmmac_tx_clean+0x150>
    5138:	f9412408 	ldr	x8, [x0,#584]
    513c:	b5000048 	cbnz	x8, 5144 <stmmac_tx_clean+0x154>
    5140:	aa1c03e8 	mov	x8, x28
    5144:	f9401508 	ldr	x8, [x8,#40]
    5148:	b4000088 	cbz	x8, 5158 <stmmac_tx_clean+0x168>
    514c:	52800023 	mov	w3, #0x1                   	// #1
    5150:	aa1f03e4 	mov	x4, xzr
    5154:	d63f0100 	blr	x8
    5158:	f9401a88 	ldr	x8, [x20,#48]
    515c:	8b130669 	add	x9, x19, x19, lsl #1
    5160:	d37df129 	lsl	x9, x9, #3
    5164:	f829691f 	str	xzr, [x8,x9]
    5168:	f9401a88 	ldr	x8, [x20,#48]
    516c:	8b090108 	add	x8, x8, x9
    5170:	b9000d1f 	str	wzr, [x8,#12]
    5174:	f9401a88 	ldr	x8, [x20,#48]
    5178:	8b090108 	add	x8, x8, x9
    517c:	3900211f 	strb	wzr, [x8,#8]
    5180:	f9411288 	ldr	x8, [x20,#544]
    5184:	f9400d08 	ldr	x8, [x8,#24]
    5188:	f9401908 	ldr	x8, [x8,#48]
    518c:	b4000088 	cbz	x8, 519c <stmmac_tx_clean+0x1ac>
    5190:	aa1403e0 	mov	x0, x20
    5194:	aa1803e1 	mov	x1, x24
    5198:	d63f0100 	blr	x8
    519c:	f9401a88 	ldr	x8, [x20,#48]
    51a0:	8b130669 	add	x9, x19, x19, lsl #1
    51a4:	d37df129 	lsl	x9, x9, #3
    51a8:	8b090108 	add	x8, x8, x9
    51ac:	3900411f 	strb	wzr, [x8,#16]
    51b0:	f9401a88 	ldr	x8, [x20,#48]
    51b4:	8b090108 	add	x8, x8, x9
    51b8:	3900451f 	strb	wzr, [x8,#17]
    51bc:	b4000119 	cbz	x25, 51dc <stmmac_tx_clean+0x1ec>
    51c0:	b940a328 	ldr	w8, [x25,#160]
    51c4:	aa1903e0 	mov	x0, x25
    51c8:	2a1f03e1 	mov	w1, wzr
    51cc:	0b150115 	add	w21, w8, w21
    51d0:	94000000 	bl	0 <__dev_kfree_skb_any>
    51d4:	f9400a88 	ldr	x8, [x20,#16]
    51d8:	f833791f 	str	xzr, [x8,x19,lsl #3]
    51dc:	f9411288 	ldr	x8, [x20,#544]
    51e0:	b948b281 	ldr	w1, [x20,#2224]
    51e4:	aa1803e0 	mov	x0, x24
    51e8:	f9400508 	ldr	x8, [x8,#8]
    51ec:	f9401908 	ldr	x8, [x8,#48]
    51f0:	d63f0100 	blr	x8
    51f4:	b9401a88 	ldr	w8, [x20,#24]
    51f8:	11000749 	add	w9, w26, #0x1
    51fc:	1200213a 	and	w26, w9, #0x1ff
    5200:	6b08035f 	cmp	w26, w8
    5204:	54fff3c1 	b.ne	507c <stmmac_tx_clean+0x8c>
    5208:	1400001b 	b	5274 <stmmac_tx_clean+0x284>
    520c:	f940ad09 	ldr	x9, [x8,#344]
    5210:	91000529 	add	x9, x9, #0x1
    5214:	f900ad09 	str	x9, [x8,#344]
    5218:	b5fff719 	cbnz	x25, 50f8 <stmmac_tx_clean+0x108>
    521c:	17ffffbe 	b	5114 <stmmac_tx_clean+0x124>
    5220:	f9411288 	ldr	x8, [x20,#544]
    5224:	aa1803e0 	mov	x0, x24
    5228:	f9400508 	ldr	x8, [x8,#8]
    522c:	f9404108 	ldr	x8, [x8,#128]
    5230:	d63f0100 	blr	x8
    5234:	35fff700 	cbnz	w0, 5114 <stmmac_tx_clean+0x124>
    5238:	f9411288 	ldr	x8, [x20,#544]
    523c:	b9494681 	ldr	w1, [x20,#2372]
    5240:	aa1803e0 	mov	x0, x24
    5244:	f9400508 	ldr	x8, [x8,#8]
    5248:	f9404508 	ldr	x8, [x8,#136]
    524c:	d63f0100 	blr	x8
    5250:	f90007e0 	str	x0, [sp,#8]
    5254:	aa0003e2 	mov	x2, x0
    5258:	f9410a80 	ldr	x0, [x20,#528]
    525c:	aa1703e1 	mov	x1, x23
    5260:	94000000 	bl	0 <netdev_info>
    5264:	910023e1 	add	x1, sp, #0x8
    5268:	aa1903e0 	mov	x0, x25
    526c:	94000000 	bl	0 <skb_tstamp_tx>
    5270:	17ffffa9 	b	5114 <stmmac_tx_clean+0x124>
    5274:	91084293 	add	x19, x20, #0x210
    5278:	b9001e9a 	str	w26, [x20,#28]
    527c:	34000855 	cbz	w21, 5384 <stmmac_tx_clean+0x394>
    5280:	f9410a88 	ldr	x8, [x20,#528]
    5284:	2a1503e1 	mov	w1, w21
    5288:	f941e116 	ldr	x22, [x8,#960]
    528c:	910302c0 	add	x0, x22, #0xc0
    5290:	94000000 	bl	0 <dql_completed>
    5294:	d5033bbf 	dmb	ish
    5298:	b940c6c8 	ldr	w8, [x22,#196]
    529c:	b940c2c9 	ldr	w9, [x22,#192]
    52a0:	f94003fc 	ldr	x28, [sp]
    52a4:	6b09011f 	cmp	w8, w9
    52a8:	540000e4 	b.mi	52c4 <stmmac_tx_clean+0x2d4>
    52ac:	910242c1 	add	x1, x22, #0x90
    52b0:	52800020 	mov	w0, #0x1                   	// #1
    52b4:	94000000 	bl	0 <test_and_clear_bit>
    52b8:	34000060 	cbz	w0, 52c4 <stmmac_tx_clean+0x2d4>
    52bc:	aa1603e0 	mov	x0, x22
    52c0:	94000000 	bl	0 <netif_schedule_queue>
    52c4:	f9400276 	ldr	x22, [x19]
    52c8:	f941e2c8 	ldr	x8, [x22,#960]
    52cc:	f9404908 	ldr	x8, [x8,#144]
    52d0:	36000128 	tbz	w8, #0, 52f4 <stmmac_tx_clean+0x304>
    52d4:	29432688 	ldp	w8, w9, [x20,#24]
    52d8:	2a2803ea 	mvn	w10, w8
    52dc:	6b080128 	subs	w8, w9, w8
    52e0:	0b0a0129 	add	w9, w9, w10
    52e4:	1107fd08 	add	w8, w8, #0x1ff
    52e8:	1a888128 	csel	w8, w9, w8, hi
    52ec:	7102051f 	cmp	w8, #0x81
    52f0:	540004e2 	b.cs	538c <stmmac_tx_clean+0x39c>
    52f4:	b948a688 	ldr	w8, [x20,#2212]
    52f8:	34000328 	cbz	w8, 535c <stmmac_tx_clean+0x36c>
    52fc:	39413288 	ldrb	w8, [x20,#76]
    5300:	350002e8 	cbnz	w8, 535c <stmmac_tx_clean+0x36c>
    5304:	29432688 	ldp	w8, w9, [x20,#24]
    5308:	6b08013f 	cmp	w9, w8
    530c:	540000a1 	b.ne	5320 <stmmac_tx_clean+0x330>
    5310:	f9411280 	ldr	x0, [x20,#544]
    5314:	f9400008 	ldr	x8, [x0]
    5318:	f9402508 	ldr	x8, [x8,#72]
    531c:	d63f0100 	blr	x8
    5320:	d2800008 	mov	x8, #0x0                   	// #0
    5324:	d2800009 	mov	x9, #0x0                   	// #0
    5328:	f2a00008 	movk	x8, #0x0, lsl #16
    532c:	f2a00009 	movk	x9, #0x0, lsl #16
    5330:	f2c00008 	movk	x8, #0x0, lsl #32
    5334:	f2c00009 	movk	x9, #0x0, lsl #32
    5338:	f2e00008 	movk	x8, #0x0, lsl #48
    533c:	f2e00009 	movk	x9, #0x0, lsl #48
    5340:	f9400113 	ldr	x19, [x8]
    5344:	b9400120 	ldr	w0, [x9]
    5348:	91216294 	add	x20, x20, #0x858
    534c:	94000000 	bl	0 <__msecs_to_jiffies>
    5350:	8b130001 	add	x1, x0, x19
    5354:	aa1403e0 	mov	x0, x20
    5358:	94000000 	bl	0 <mod_timer>
    535c:	aa1c03e0 	mov	x0, x28
    5360:	94000000 	bl	0 <_raw_spin_unlock>
    5364:	a9467bfd 	ldp	x29, x30, [sp,#96]
    5368:	a9454ff4 	ldp	x20, x19, [sp,#80]
    536c:	a94457f6 	ldp	x22, x21, [sp,#64]
    5370:	a9435ff8 	ldp	x24, x23, [sp,#48]
    5374:	a94267fa 	ldp	x26, x25, [sp,#32]
    5378:	a9416ffc 	ldp	x28, x27, [sp,#16]
    537c:	9101c3ff 	add	sp, sp, #0x70
    5380:	d65f03c0 	ret
    5384:	f94003fc 	ldr	x28, [sp]
    5388:	17ffffcf 	b	52c4 <stmmac_tx_clean+0x2d4>
    538c:	911182c0 	add	x0, x22, #0x460
    5390:	94000000 	bl	0 <_raw_spin_lock>
    5394:	d538d088 	mrs	x8, tpidr_el1
    5398:	b943cac9 	ldr	w9, [x22,#968]
    539c:	34000349 	cbz	w9, 5404 <stmmac_tx_clean+0x414>
    53a0:	d2800009 	mov	x9, #0x0                   	// #0
    53a4:	f2a00009 	movk	x9, #0x0, lsl #16
    53a8:	f2c00009 	movk	x9, #0x0, lsl #32
    53ac:	f2e00009 	movk	x9, #0x0, lsl #48
    53b0:	b8696919 	ldr	w25, [x8,x9]
    53b4:	aa1f03f7 	mov	x23, xzr
    53b8:	aa1f03f8 	mov	x24, xzr
    53bc:	1280001a 	mov	w26, #0xffffffff            	// #-1
    53c0:	f941e2c8 	ldr	x8, [x22,#960]
    53c4:	8b17011b 	add	x27, x8, x23
    53c8:	91020375 	add	x21, x27, #0x80
    53cc:	aa1503e0 	mov	x0, x21
    53d0:	94000000 	bl	0 <_raw_spin_lock>
    53d4:	91024361 	add	x1, x27, #0x90
    53d8:	52800040 	mov	w0, #0x2                   	// #2
    53dc:	b9008779 	str	w25, [x27,#132]
    53e0:	94000000 	bl	0 <set_bit>
    53e4:	aa1503e0 	mov	x0, x21
    53e8:	b900877a 	str	w26, [x27,#132]
    53ec:	94000000 	bl	0 <_raw_spin_unlock>
    53f0:	b943cac8 	ldr	w8, [x22,#968]
    53f4:	91000718 	add	x24, x24, #0x1
    53f8:	910502f7 	add	x23, x23, #0x140
    53fc:	eb08031f 	cmp	x24, x8
    5400:	54fffe03 	b.cc	53c0 <stmmac_tx_clean+0x3d0>
    5404:	f9400276 	ldr	x22, [x19]
    5408:	f941e2c0 	ldr	x0, [x22,#960]
    540c:	f9404808 	ldr	x8, [x0,#144]
    5410:	36000168 	tbz	w8, #0, 543c <stmmac_tx_clean+0x44c>
    5414:	29432688 	ldp	w8, w9, [x20,#24]
    5418:	2a2803ea 	mvn	w10, w8
    541c:	6b080128 	subs	w8, w9, w8
    5420:	0b0a0129 	add	w9, w9, w10
    5424:	1107fd08 	add	w8, w8, #0x1ff
    5428:	1a888128 	csel	w8, w9, w8, hi
    542c:	7102051f 	cmp	w8, #0x81
    5430:	54000063 	b.cc	543c <stmmac_tx_clean+0x44c>
    5434:	94000000 	bl	0 <netif_tx_wake_queue>
    5438:	f9400276 	ldr	x22, [x19]
    543c:	b943cac8 	ldr	w8, [x22,#968]
    5440:	340001e8 	cbz	w8, 547c <stmmac_tx_clean+0x48c>
    5444:	aa1f03f3 	mov	x19, xzr
    5448:	52801217 	mov	w23, #0x90                  	// #144
    544c:	f941e2c8 	ldr	x8, [x22,#960]
    5450:	52800040 	mov	w0, #0x2                   	// #2
    5454:	8b170101 	add	x1, x8, x23
    5458:	d1024035 	sub	x21, x1, #0x90
    545c:	94000000 	bl	0 <clear_bit>
    5460:	aa1503e0 	mov	x0, x21
    5464:	94000000 	bl	0 <netif_schedule_queue>
    5468:	b943cac8 	ldr	w8, [x22,#968]
    546c:	91000673 	add	x19, x19, #0x1
    5470:	910502f7 	add	x23, x23, #0x140
    5474:	eb08027f 	cmp	x19, x8
    5478:	54fffea3 	b.cc	544c <stmmac_tx_clean+0x45c>
    547c:	911182c0 	add	x0, x22, #0x460
    5480:	94000000 	bl	0 <_raw_spin_unlock>
    5484:	b948a688 	ldr	w8, [x20,#2212]
    5488:	35fff3a8 	cbnz	w8, 52fc <stmmac_tx_clean+0x30c>
    548c:	17ffffb4 	b	535c <stmmac_tx_clean+0x36c>

0000000000005490 <stmmac_sysfs_ring_open>:
    5490:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    5494:	a9017bfd 	stp	x29, x30, [sp,#16]
    5498:	910043fd 	add	x29, sp, #0x10
    549c:	aa0103f3 	mov	x19, x1
    54a0:	aa0003f4 	mov	x20, x0
    54a4:	94000000 	bl	0 <_mcount>
    54a8:	f9411e82 	ldr	x2, [x20,#568]
    54ac:	d2800001 	mov	x1, #0x0                   	// #0
    54b0:	f2a00001 	movk	x1, #0x0, lsl #16
    54b4:	f2c00001 	movk	x1, #0x0, lsl #32
    54b8:	f2e00001 	movk	x1, #0x0, lsl #48
    54bc:	aa1303e0 	mov	x0, x19
    54c0:	94000000 	bl	0 <single_open>
    54c4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    54c8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    54cc:	d65f03c0 	ret

00000000000054d0 <stmmac_sysfs_ring_read>:
    54d0:	f81a0ffb 	str	x27, [sp,#-96]!
    54d4:	a90167fa 	stp	x26, x25, [sp,#16]
    54d8:	a9025ff8 	stp	x24, x23, [sp,#32]
    54dc:	a90357f6 	stp	x22, x21, [sp,#48]
    54e0:	a9044ff4 	stp	x20, x19, [sp,#64]
    54e4:	a9057bfd 	stp	x29, x30, [sp,#80]
    54e8:	910143fd 	add	x29, sp, #0x50
    54ec:	aa0003f3 	mov	x19, x0
    54f0:	94000000 	bl	0 <_mcount>
    54f4:	f9404277 	ldr	x23, [x19,#128]
    54f8:	b951b6e8 	ldr	w8, [x23,#4532]
    54fc:	34000968 	cbz	w8, 5628 <stmmac_sysfs_ring_read+0x158>
    5500:	d2800001 	mov	x1, #0x0                   	// #0
    5504:	f2a00001 	movk	x1, #0x0, lsl #16
    5508:	f2c00001 	movk	x1, #0x0, lsl #32
    550c:	f2e00001 	movk	x1, #0x0, lsl #48
    5510:	aa1303e0 	mov	x0, x19
    5514:	94000000 	bl	0 <seq_printf>
    5518:	f944e6fa 	ldr	x26, [x23,#2504]
    551c:	d2800018 	mov	x24, #0x0                   	// #0
    5520:	d2800014 	mov	x20, #0x0                   	// #0
    5524:	d2800015 	mov	x21, #0x0                   	// #0
    5528:	d2800019 	mov	x25, #0x0                   	// #0
    552c:	f2a00018 	movk	x24, #0x0, lsl #16
    5530:	f2a00014 	movk	x20, #0x0, lsl #16
    5534:	f2a00015 	movk	x21, #0x0, lsl #16
    5538:	f2a00019 	movk	x25, #0x0, lsl #16
    553c:	f2c00018 	movk	x24, #0x0, lsl #32
    5540:	f2c00014 	movk	x20, #0x0, lsl #32
    5544:	f2c00015 	movk	x21, #0x0, lsl #32
    5548:	f2c00019 	movk	x25, #0x0, lsl #32
    554c:	2a1f03f6 	mov	w22, wzr
    5550:	f2e00018 	movk	x24, #0x0, lsl #48
    5554:	f2e00014 	movk	x20, #0x0, lsl #48
    5558:	f2e00015 	movk	x21, #0x0, lsl #48
    555c:	f2e00019 	movk	x25, #0x0, lsl #48
    5560:	b730023a 	tbnz	x26, #38, 55a4 <stmmac_sysfs_ring_read+0xd4>
    5564:	f9400308 	ldr	x8, [x24]
    5568:	cb080343 	sub	x3, x26, x8
    556c:	29401744 	ldp	w4, w5, [x26]
    5570:	29411f46 	ldp	w6, w7, [x26,#8]
    5574:	aa1303e0 	mov	x0, x19
    5578:	aa1403e1 	mov	x1, x20
    557c:	2a1603e2 	mov	w2, w22
    5580:	94000000 	bl	0 <seq_printf>
    5584:	aa1303e0 	mov	x0, x19
    5588:	aa1503e1 	mov	x1, x21
    558c:	94000000 	bl	0 <seq_printf>
    5590:	110006d6 	add	w22, w22, #0x1
    5594:	710802df 	cmp	w22, #0x200
    5598:	9100835a 	add	x26, x26, #0x20
    559c:	540000c0 	b.eq	55b4 <stmmac_sysfs_ring_read+0xe4>
    55a0:	b637fe3a 	tbz	x26, #38, 5564 <stmmac_sysfs_ring_read+0x94>
    55a4:	f9400328 	ldr	x8, [x25]
    55a8:	92409749 	and	x9, x26, #0x3fffffffff
    55ac:	8b090103 	add	x3, x8, x9
    55b0:	17ffffef 	b	556c <stmmac_sysfs_ring_read+0x9c>
    55b4:	d2800001 	mov	x1, #0x0                   	// #0
    55b8:	f2a00001 	movk	x1, #0x0, lsl #16
    55bc:	f2c00001 	movk	x1, #0x0, lsl #32
    55c0:	f2e00001 	movk	x1, #0x0, lsl #48
    55c4:	aa1303e0 	mov	x0, x19
    55c8:	94000000 	bl	0 <seq_printf>
    55cc:	f94482f7 	ldr	x23, [x23,#2304]
    55d0:	2a1f03f6 	mov	w22, wzr
    55d4:	b7300237 	tbnz	x23, #38, 5618 <stmmac_sysfs_ring_read+0x148>
    55d8:	f9400308 	ldr	x8, [x24]
    55dc:	cb0802e3 	sub	x3, x23, x8
    55e0:	294016e4 	ldp	w4, w5, [x23]
    55e4:	29411ee6 	ldp	w6, w7, [x23,#8]
    55e8:	aa1303e0 	mov	x0, x19
    55ec:	aa1403e1 	mov	x1, x20
    55f0:	2a1603e2 	mov	w2, w22
    55f4:	94000000 	bl	0 <seq_printf>
    55f8:	aa1303e0 	mov	x0, x19
    55fc:	aa1503e1 	mov	x1, x21
    5600:	94000000 	bl	0 <seq_printf>
    5604:	110006d6 	add	w22, w22, #0x1
    5608:	710802df 	cmp	w22, #0x200
    560c:	910082f7 	add	x23, x23, #0x20
    5610:	54000980 	b.eq	5740 <stmmac_sysfs_ring_read+0x270>
    5614:	b637fe37 	tbz	x23, #38, 55d8 <stmmac_sysfs_ring_read+0x108>
    5618:	f9400328 	ldr	x8, [x25]
    561c:	924096e9 	and	x9, x23, #0x3fffffffff
    5620:	8b090103 	add	x3, x8, x9
    5624:	17ffffef 	b	55e0 <stmmac_sysfs_ring_read+0x110>
    5628:	d2800001 	mov	x1, #0x0                   	// #0
    562c:	f2a00001 	movk	x1, #0x0, lsl #16
    5630:	f2c00001 	movk	x1, #0x0, lsl #32
    5634:	f2e00001 	movk	x1, #0x0, lsl #48
    5638:	aa1303e0 	mov	x0, x19
    563c:	94000000 	bl	0 <seq_printf>
    5640:	f944e2fa 	ldr	x26, [x23,#2496]
    5644:	d2800018 	mov	x24, #0x0                   	// #0
    5648:	d2800019 	mov	x25, #0x0                   	// #0
    564c:	d2800014 	mov	x20, #0x0                   	// #0
    5650:	d2800015 	mov	x21, #0x0                   	// #0
    5654:	f2a00018 	movk	x24, #0x0, lsl #16
    5658:	f2a00019 	movk	x25, #0x0, lsl #16
    565c:	f2a00014 	movk	x20, #0x0, lsl #16
    5660:	f2a00015 	movk	x21, #0x0, lsl #16
    5664:	f2c00018 	movk	x24, #0x0, lsl #32
    5668:	f2c00019 	movk	x25, #0x0, lsl #32
    566c:	f2c00014 	movk	x20, #0x0, lsl #32
    5670:	f2c00015 	movk	x21, #0x0, lsl #32
    5674:	2a1f03f6 	mov	w22, wzr
    5678:	f2e00018 	movk	x24, #0x0, lsl #48
    567c:	f2e00019 	movk	x25, #0x0, lsl #48
    5680:	f2e00014 	movk	x20, #0x0, lsl #48
    5684:	f2e00015 	movk	x21, #0x0, lsl #48
    5688:	aa1a03fb 	mov	x27, x26
    568c:	b9400308 	ldr	w8, [x24]
    5690:	b9400329 	ldr	w9, [x25]
    5694:	29401764 	ldp	w4, w5, [x27]
    5698:	29411f66 	ldp	w6, w7, [x27,#8]
    569c:	f25a035f 	tst	x26, #0x4000000000
    56a0:	5a891508 	csneg	w8, w8, w9, ne
    56a4:	0b1a0103 	add	w3, w8, w26
    56a8:	aa1303e0 	mov	x0, x19
    56ac:	aa1403e1 	mov	x1, x20
    56b0:	2a1603e2 	mov	w2, w22
    56b4:	94000000 	bl	0 <seq_printf>
    56b8:	aa1303e0 	mov	x0, x19
    56bc:	aa1503e1 	mov	x1, x21
    56c0:	94000000 	bl	0 <seq_printf>
    56c4:	110006d6 	add	w22, w22, #0x1
    56c8:	710802df 	cmp	w22, #0x200
    56cc:	9100437b 	add	x27, x27, #0x10
    56d0:	54fffde1 	b.ne	568c <stmmac_sysfs_ring_read+0x1bc>
    56d4:	d2800001 	mov	x1, #0x0                   	// #0
    56d8:	f2a00001 	movk	x1, #0x0, lsl #16
    56dc:	f2c00001 	movk	x1, #0x0, lsl #32
    56e0:	f2e00001 	movk	x1, #0x0, lsl #48
    56e4:	aa1303e0 	mov	x0, x19
    56e8:	94000000 	bl	0 <seq_printf>
    56ec:	f94486f7 	ldr	x23, [x23,#2312]
    56f0:	2a1f03f6 	mov	w22, wzr
    56f4:	aa1703fa 	mov	x26, x23
    56f8:	b9400308 	ldr	w8, [x24]
    56fc:	b9400329 	ldr	w9, [x25]
    5700:	29401744 	ldp	w4, w5, [x26]
    5704:	29411f46 	ldp	w6, w7, [x26,#8]
    5708:	f25a02ff 	tst	x23, #0x4000000000
    570c:	5a891508 	csneg	w8, w8, w9, ne
    5710:	0b170103 	add	w3, w8, w23
    5714:	aa1303e0 	mov	x0, x19
    5718:	aa1403e1 	mov	x1, x20
    571c:	2a1603e2 	mov	w2, w22
    5720:	94000000 	bl	0 <seq_printf>
    5724:	aa1303e0 	mov	x0, x19
    5728:	aa1503e1 	mov	x1, x21
    572c:	94000000 	bl	0 <seq_printf>
    5730:	110006d6 	add	w22, w22, #0x1
    5734:	710802df 	cmp	w22, #0x200
    5738:	9100435a 	add	x26, x26, #0x10
    573c:	54fffde1 	b.ne	56f8 <stmmac_sysfs_ring_read+0x228>
    5740:	a9457bfd 	ldp	x29, x30, [sp,#80]
    5744:	a9444ff4 	ldp	x20, x19, [sp,#64]
    5748:	a94357f6 	ldp	x22, x21, [sp,#48]
    574c:	a9425ff8 	ldp	x24, x23, [sp,#32]
    5750:	a94167fa 	ldp	x26, x25, [sp,#16]
    5754:	2a1f03e0 	mov	w0, wzr
    5758:	f84607fb 	ldr	x27, [sp],#96
    575c:	d65f03c0 	ret

0000000000005760 <stmmac_sysfs_dma_cap_open>:
    5760:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    5764:	a9017bfd 	stp	x29, x30, [sp,#16]
    5768:	910043fd 	add	x29, sp, #0x10
    576c:	aa0103f3 	mov	x19, x1
    5770:	aa0003f4 	mov	x20, x0
    5774:	94000000 	bl	0 <_mcount>
    5778:	f9411e82 	ldr	x2, [x20,#568]
    577c:	d2800001 	mov	x1, #0x0                   	// #0
    5780:	f2a00001 	movk	x1, #0x0, lsl #16
    5784:	f2c00001 	movk	x1, #0x0, lsl #32
    5788:	f2e00001 	movk	x1, #0x0, lsl #48
    578c:	aa1303e0 	mov	x0, x19
    5790:	94000000 	bl	0 <single_open>
    5794:	a9417bfd 	ldp	x29, x30, [sp,#16]
    5798:	a8c24ff4 	ldp	x20, x19, [sp],#32
    579c:	d65f03c0 	ret

00000000000057a0 <stmmac_sysfs_dma_cap_read>:
    57a0:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    57a4:	a9014ff4 	stp	x20, x19, [sp,#16]
    57a8:	a9027bfd 	stp	x29, x30, [sp,#32]
    57ac:	910083fd 	add	x29, sp, #0x20
    57b0:	aa0003f3 	mov	x19, x0
    57b4:	94000000 	bl	0 <_mcount>
    57b8:	f9404275 	ldr	x21, [x19,#128]
    57bc:	b95122a8 	ldr	w8, [x21,#4384]
    57c0:	34001528 	cbz	w8, 5a64 <stmmac_sysfs_dma_cap_read+0x2c4>
    57c4:	d2800014 	mov	x20, #0x0                   	// #0
    57c8:	f2a00014 	movk	x20, #0x0, lsl #16
    57cc:	f2c00014 	movk	x20, #0x0, lsl #32
    57d0:	f2e00014 	movk	x20, #0x0, lsl #48
    57d4:	aa1303e0 	mov	x0, x19
    57d8:	aa1403e1 	mov	x1, x20
    57dc:	94000000 	bl	0 <seq_printf>
    57e0:	d2800001 	mov	x1, #0x0                   	// #0
    57e4:	f2a00001 	movk	x1, #0x0, lsl #16
    57e8:	f2c00001 	movk	x1, #0x0, lsl #32
    57ec:	f2e00001 	movk	x1, #0x0, lsl #48
    57f0:	aa1303e0 	mov	x0, x19
    57f4:	94000000 	bl	0 <seq_printf>
    57f8:	aa1303e0 	mov	x0, x19
    57fc:	aa1403e1 	mov	x1, x20
    5800:	94000000 	bl	0 <seq_printf>
    5804:	b94f8aa8 	ldr	w8, [x21,#3976]
    5808:	d2800014 	mov	x20, #0x0                   	// #0
    580c:	d2800016 	mov	x22, #0x0                   	// #0
    5810:	f2a00014 	movk	x20, #0x0, lsl #16
    5814:	f2a00016 	movk	x22, #0x0, lsl #16
    5818:	d2800001 	mov	x1, #0x0                   	// #0
    581c:	f2c00014 	movk	x20, #0x0, lsl #32
    5820:	f2c00016 	movk	x22, #0x0, lsl #32
    5824:	f2a00001 	movk	x1, #0x0, lsl #16
    5828:	f2e00014 	movk	x20, #0x0, lsl #48
    582c:	f2e00016 	movk	x22, #0x0, lsl #48
    5830:	7100011f 	cmp	w8, #0x0
    5834:	f2c00001 	movk	x1, #0x0, lsl #32
    5838:	9a9402c2 	csel	x2, x22, x20, eq
    583c:	f2e00001 	movk	x1, #0x0, lsl #48
    5840:	aa1303e0 	mov	x0, x19
    5844:	94000000 	bl	0 <seq_printf>
    5848:	b94f8ea8 	ldr	w8, [x21,#3980]
    584c:	d2800001 	mov	x1, #0x0                   	// #0
    5850:	f2a00001 	movk	x1, #0x0, lsl #16
    5854:	f2c00001 	movk	x1, #0x0, lsl #32
    5858:	7100011f 	cmp	w8, #0x0
    585c:	9a9402c2 	csel	x2, x22, x20, eq
    5860:	f2e00001 	movk	x1, #0x0, lsl #48
    5864:	aa1303e0 	mov	x0, x19
    5868:	94000000 	bl	0 <seq_printf>
    586c:	b94f92a8 	ldr	w8, [x21,#3984]
    5870:	d2800001 	mov	x1, #0x0                   	// #0
    5874:	f2a00001 	movk	x1, #0x0, lsl #16
    5878:	f2c00001 	movk	x1, #0x0, lsl #32
    587c:	7100011f 	cmp	w8, #0x0
    5880:	9a9402c2 	csel	x2, x22, x20, eq
    5884:	f2e00001 	movk	x1, #0x0, lsl #48
    5888:	aa1303e0 	mov	x0, x19
    588c:	94000000 	bl	0 <seq_printf>
    5890:	b94f96a8 	ldr	w8, [x21,#3988]
    5894:	d2800001 	mov	x1, #0x0                   	// #0
    5898:	f2a00001 	movk	x1, #0x0, lsl #16
    589c:	f2c00001 	movk	x1, #0x0, lsl #32
    58a0:	7100011f 	cmp	w8, #0x0
    58a4:	9a9402c2 	csel	x2, x22, x20, eq
    58a8:	f2e00001 	movk	x1, #0x0, lsl #48
    58ac:	aa1303e0 	mov	x0, x19
    58b0:	94000000 	bl	0 <seq_printf>
    58b4:	b94f9aa8 	ldr	w8, [x21,#3992]
    58b8:	d2800001 	mov	x1, #0x0                   	// #0
    58bc:	f2a00001 	movk	x1, #0x0, lsl #16
    58c0:	f2c00001 	movk	x1, #0x0, lsl #32
    58c4:	7100011f 	cmp	w8, #0x0
    58c8:	9a9402c2 	csel	x2, x22, x20, eq
    58cc:	f2e00001 	movk	x1, #0x0, lsl #48
    58d0:	aa1303e0 	mov	x0, x19
    58d4:	94000000 	bl	0 <seq_printf>
    58d8:	b94f9ea8 	ldr	w8, [x21,#3996]
    58dc:	d2800001 	mov	x1, #0x0                   	// #0
    58e0:	f2a00001 	movk	x1, #0x0, lsl #16
    58e4:	f2c00001 	movk	x1, #0x0, lsl #32
    58e8:	7100011f 	cmp	w8, #0x0
    58ec:	9a9402c2 	csel	x2, x22, x20, eq
    58f0:	f2e00001 	movk	x1, #0x0, lsl #48
    58f4:	aa1303e0 	mov	x0, x19
    58f8:	94000000 	bl	0 <seq_printf>
    58fc:	b94fa2a8 	ldr	w8, [x21,#4000]
    5900:	d2800001 	mov	x1, #0x0                   	// #0
    5904:	f2a00001 	movk	x1, #0x0, lsl #16
    5908:	f2c00001 	movk	x1, #0x0, lsl #32
    590c:	7100011f 	cmp	w8, #0x0
    5910:	9a9402c2 	csel	x2, x22, x20, eq
    5914:	f2e00001 	movk	x1, #0x0, lsl #48
    5918:	aa1303e0 	mov	x0, x19
    591c:	94000000 	bl	0 <seq_printf>
    5920:	b94fa6a8 	ldr	w8, [x21,#4004]
    5924:	d2800001 	mov	x1, #0x0                   	// #0
    5928:	f2a00001 	movk	x1, #0x0, lsl #16
    592c:	f2c00001 	movk	x1, #0x0, lsl #32
    5930:	7100011f 	cmp	w8, #0x0
    5934:	9a9402c2 	csel	x2, x22, x20, eq
    5938:	f2e00001 	movk	x1, #0x0, lsl #48
    593c:	aa1303e0 	mov	x0, x19
    5940:	94000000 	bl	0 <seq_printf>
    5944:	b94faaa8 	ldr	w8, [x21,#4008]
    5948:	d2800001 	mov	x1, #0x0                   	// #0
    594c:	f2a00001 	movk	x1, #0x0, lsl #16
    5950:	f2c00001 	movk	x1, #0x0, lsl #32
    5954:	7100011f 	cmp	w8, #0x0
    5958:	9a9402c2 	csel	x2, x22, x20, eq
    595c:	f2e00001 	movk	x1, #0x0, lsl #48
    5960:	aa1303e0 	mov	x0, x19
    5964:	94000000 	bl	0 <seq_printf>
    5968:	b94faea8 	ldr	w8, [x21,#4012]
    596c:	d2800001 	mov	x1, #0x0                   	// #0
    5970:	f2a00001 	movk	x1, #0x0, lsl #16
    5974:	f2c00001 	movk	x1, #0x0, lsl #32
    5978:	7100011f 	cmp	w8, #0x0
    597c:	9a9402c2 	csel	x2, x22, x20, eq
    5980:	f2e00001 	movk	x1, #0x0, lsl #48
    5984:	aa1303e0 	mov	x0, x19
    5988:	94000000 	bl	0 <seq_printf>
    598c:	b94fb2a8 	ldr	w8, [x21,#4016]
    5990:	d2800001 	mov	x1, #0x0                   	// #0
    5994:	f2a00001 	movk	x1, #0x0, lsl #16
    5998:	f2c00001 	movk	x1, #0x0, lsl #32
    599c:	7100011f 	cmp	w8, #0x0
    59a0:	9a9402c2 	csel	x2, x22, x20, eq
    59a4:	f2e00001 	movk	x1, #0x0, lsl #48
    59a8:	aa1303e0 	mov	x0, x19
    59ac:	94000000 	bl	0 <seq_printf>
    59b0:	b94fb6a8 	ldr	w8, [x21,#4020]
    59b4:	d2800001 	mov	x1, #0x0                   	// #0
    59b8:	f2a00001 	movk	x1, #0x0, lsl #16
    59bc:	f2c00001 	movk	x1, #0x0, lsl #32
    59c0:	7100011f 	cmp	w8, #0x0
    59c4:	9a9402c2 	csel	x2, x22, x20, eq
    59c8:	f2e00001 	movk	x1, #0x0, lsl #48
    59cc:	aa1303e0 	mov	x0, x19
    59d0:	94000000 	bl	0 <seq_printf>
    59d4:	b94fbaa8 	ldr	w8, [x21,#4024]
    59d8:	d2800001 	mov	x1, #0x0                   	// #0
    59dc:	f2a00001 	movk	x1, #0x0, lsl #16
    59e0:	f2c00001 	movk	x1, #0x0, lsl #32
    59e4:	7100011f 	cmp	w8, #0x0
    59e8:	9a9402c2 	csel	x2, x22, x20, eq
    59ec:	f2e00001 	movk	x1, #0x0, lsl #48
    59f0:	aa1303e0 	mov	x0, x19
    59f4:	94000000 	bl	0 <seq_printf>
    59f8:	b94fbea8 	ldr	w8, [x21,#4028]
    59fc:	d2800001 	mov	x1, #0x0                   	// #0
    5a00:	f2a00001 	movk	x1, #0x0, lsl #16
    5a04:	f2c00001 	movk	x1, #0x0, lsl #32
    5a08:	7100011f 	cmp	w8, #0x0
    5a0c:	9a9402c2 	csel	x2, x22, x20, eq
    5a10:	f2e00001 	movk	x1, #0x0, lsl #48
    5a14:	aa1303e0 	mov	x0, x19
    5a18:	94000000 	bl	0 <seq_printf>
    5a1c:	b94fc6a8 	ldr	w8, [x21,#4036]
    5a20:	d2800001 	mov	x1, #0x0                   	// #0
    5a24:	f2a00001 	movk	x1, #0x0, lsl #16
    5a28:	f2c00001 	movk	x1, #0x0, lsl #32
    5a2c:	7100011f 	cmp	w8, #0x0
    5a30:	9a9402c2 	csel	x2, x22, x20, eq
    5a34:	f2e00001 	movk	x1, #0x0, lsl #48
    5a38:	aa1303e0 	mov	x0, x19
    5a3c:	94000000 	bl	0 <seq_printf>
    5a40:	b95126a8 	ldr	w8, [x21,#4388]
    5a44:	7101011f 	cmp	w8, #0x40
    5a48:	540001cb 	b.lt	5a80 <stmmac_sysfs_dma_cap_read+0x2e0>
    5a4c:	d2800001 	mov	x1, #0x0                   	// #0
    5a50:	f2a00001 	movk	x1, #0x0, lsl #16
    5a54:	f2c00001 	movk	x1, #0x0, lsl #32
    5a58:	913f22a8 	add	x8, x21, #0xfc8
    5a5c:	f2e00001 	movk	x1, #0x0, lsl #48
    5a60:	14000016 	b	5ab8 <stmmac_sysfs_dma_cap_read+0x318>
    5a64:	d2800001 	mov	x1, #0x0                   	// #0
    5a68:	f2a00001 	movk	x1, #0x0, lsl #16
    5a6c:	f2c00001 	movk	x1, #0x0, lsl #32
    5a70:	f2e00001 	movk	x1, #0x0, lsl #48
    5a74:	aa1303e0 	mov	x0, x19
    5a78:	94000000 	bl	0 <seq_printf>
    5a7c:	14000034 	b	5b4c <stmmac_sysfs_dma_cap_read+0x3ac>
    5a80:	b94fcea8 	ldr	w8, [x21,#4044]
    5a84:	d2800001 	mov	x1, #0x0                   	// #0
    5a88:	f2a00001 	movk	x1, #0x0, lsl #16
    5a8c:	f2c00001 	movk	x1, #0x0, lsl #32
    5a90:	7100011f 	cmp	w8, #0x0
    5a94:	9a9402c2 	csel	x2, x22, x20, eq
    5a98:	f2e00001 	movk	x1, #0x0, lsl #48
    5a9c:	aa1303e0 	mov	x0, x19
    5aa0:	94000000 	bl	0 <seq_printf>
    5aa4:	d2800001 	mov	x1, #0x0                   	// #0
    5aa8:	f2a00001 	movk	x1, #0x0, lsl #16
    5aac:	f2c00001 	movk	x1, #0x0, lsl #32
    5ab0:	913f42a8 	add	x8, x21, #0xfd0
    5ab4:	f2e00001 	movk	x1, #0x0, lsl #48
    5ab8:	b9400108 	ldr	w8, [x8]
    5abc:	aa1303e0 	mov	x0, x19
    5ac0:	7100011f 	cmp	w8, #0x0
    5ac4:	9a9402c2 	csel	x2, x22, x20, eq
    5ac8:	94000000 	bl	0 <seq_printf>
    5acc:	b94fd6a8 	ldr	w8, [x21,#4052]
    5ad0:	d2800001 	mov	x1, #0x0                   	// #0
    5ad4:	f2a00001 	movk	x1, #0x0, lsl #16
    5ad8:	f2c00001 	movk	x1, #0x0, lsl #32
    5adc:	7100011f 	cmp	w8, #0x0
    5ae0:	9a9402c2 	csel	x2, x22, x20, eq
    5ae4:	f2e00001 	movk	x1, #0x0, lsl #48
    5ae8:	aa1303e0 	mov	x0, x19
    5aec:	94000000 	bl	0 <seq_printf>
    5af0:	b94fdaa2 	ldr	w2, [x21,#4056]
    5af4:	d2800001 	mov	x1, #0x0                   	// #0
    5af8:	f2a00001 	movk	x1, #0x0, lsl #16
    5afc:	f2c00001 	movk	x1, #0x0, lsl #32
    5b00:	f2e00001 	movk	x1, #0x0, lsl #48
    5b04:	aa1303e0 	mov	x0, x19
    5b08:	94000000 	bl	0 <seq_printf>
    5b0c:	b94fdea2 	ldr	w2, [x21,#4060]
    5b10:	d2800001 	mov	x1, #0x0                   	// #0
    5b14:	f2a00001 	movk	x1, #0x0, lsl #16
    5b18:	f2c00001 	movk	x1, #0x0, lsl #32
    5b1c:	f2e00001 	movk	x1, #0x0, lsl #48
    5b20:	aa1303e0 	mov	x0, x19
    5b24:	94000000 	bl	0 <seq_printf>
    5b28:	b94fe2a8 	ldr	w8, [x21,#4064]
    5b2c:	d2800001 	mov	x1, #0x0                   	// #0
    5b30:	f2a00001 	movk	x1, #0x0, lsl #16
    5b34:	f2c00001 	movk	x1, #0x0, lsl #32
    5b38:	7100011f 	cmp	w8, #0x0
    5b3c:	9a9402c2 	csel	x2, x22, x20, eq
    5b40:	f2e00001 	movk	x1, #0x0, lsl #48
    5b44:	aa1303e0 	mov	x0, x19
    5b48:	94000000 	bl	0 <seq_printf>
    5b4c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    5b50:	a9414ff4 	ldp	x20, x19, [sp,#16]
    5b54:	2a1f03e0 	mov	w0, wzr
    5b58:	a8c357f6 	ldp	x22, x21, [sp],#48
    5b5c:	d65f03c0 	ret

0000000000005b60 <stmmac_tx_timer>:
    5b60:	f81e0ff3 	str	x19, [sp,#-32]!
    5b64:	a9017bfd 	stp	x29, x30, [sp,#16]
    5b68:	910043fd 	add	x29, sp, #0x10
    5b6c:	aa0003f3 	mov	x19, x0
    5b70:	94000000 	bl	0 <_mcount>
    5b74:	aa1303e0 	mov	x0, x19
    5b78:	97fffd1e 	bl	4ff0 <stmmac_tx_clean>
    5b7c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    5b80:	f84207f3 	ldr	x19, [sp],#32
    5b84:	d65f03c0 	ret

0000000000005b88 <stmmac_set_ethtool_ops>:
    5b88:	f81e0ff3 	str	x19, [sp,#-32]!
    5b8c:	a9017bfd 	stp	x29, x30, [sp,#16]
    5b90:	910043fd 	add	x29, sp, #0x10
    5b94:	aa0003f3 	mov	x19, x0
    5b98:	94000000 	bl	0 <_mcount>
    5b9c:	d2800008 	mov	x8, #0x0                   	// #0
    5ba0:	f2a00008 	movk	x8, #0x0, lsl #16
    5ba4:	f2c00008 	movk	x8, #0x0, lsl #32
    5ba8:	f2e00008 	movk	x8, #0x0, lsl #48
    5bac:	f9010e68 	str	x8, [x19,#536]
    5bb0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    5bb4:	f84207f3 	ldr	x19, [sp],#32
    5bb8:	d65f03c0 	ret

0000000000005bbc <stmmac_ethtool_getsettings>:
    5bbc:	d100c3ff 	sub	sp, sp, #0x30
    5bc0:	a9014ff4 	stp	x20, x19, [sp,#16]
    5bc4:	a9027bfd 	stp	x29, x30, [sp,#32]
    5bc8:	910083fd 	add	x29, sp, #0x20
    5bcc:	aa0103f3 	mov	x19, x1
    5bd0:	aa0003f4 	mov	x20, x0
    5bd4:	94000000 	bl	0 <_mcount>
    5bd8:	f9459288 	ldr	x8, [x20,#2848]
    5bdc:	39416108 	ldrb	w8, [x8,#88]
    5be0:	7200051f 	tst	w8, #0x3
    5be4:	54000640 	b.eq	5cac <stmmac_ethtool_getsettings+0xf0>
    5be8:	f9474e88 	ldr	x8, [x20,#3736]
    5bec:	b4000788 	cbz	x8, 5cdc <stmmac_ethtool_getsettings+0x120>
    5bf0:	f9475288 	ldr	x8, [x20,#3744]
    5bf4:	39003a68 	strb	w8, [x19,#14]
    5bf8:	f9475688 	ldr	x8, [x20,#3752]
    5bfc:	79001a68 	strh	w8, [x19,#12]
    5c00:	d3507d08 	ubfx	x8, x8, #16, #16
    5c04:	79003a68 	strh	w8, [x19,#28]
    5c08:	f9459288 	ldr	x8, [x20,#2848]
    5c0c:	f9400108 	ldr	x8, [x8]
    5c10:	f9404108 	ldr	x8, [x8,#128]
    5c14:	b4000728 	cbz	x8, 5cf8 <stmmac_ethtool_getsettings+0x13c>
    5c18:	f9458680 	ldr	x0, [x20,#2824]
    5c1c:	910003e1 	mov	x1, sp
    5c20:	d63f0100 	blr	x8
    5c24:	b94003e8 	ldr	w8, [sp]
    5c28:	37000848 	tbnz	w8, #0, 5d30 <stmmac_ethtool_getsettings+0x174>
    5c2c:	370808a8 	tbnz	w8, #1, 5d40 <stmmac_ethtool_getsettings+0x184>
    5c30:	b9400be9 	ldr	w9, [sp,#8]
    5c34:	37000909 	tbnz	w9, #0, 5d54 <stmmac_ethtool_getsettings+0x198>
    5c38:	b9402268 	ldr	w8, [x19,#32]
    5c3c:	36080069 	tbz	w9, #1, 5c48 <stmmac_ethtool_getsettings+0x8c>
    5c40:	32120108 	orr	w8, w8, #0x4000
    5c44:	b9002268 	str	w8, [x19,#32]
    5c48:	2940ae6a 	ldp	w10, w11, [x19,#4]
    5c4c:	52800809 	mov	w9, #0x40                  	// #64
    5c50:	321a010c 	orr	w12, w8, #0x40
    5c54:	39004a69 	strb	w9, [x19,#18]
    5c58:	b900226c 	str	w12, [x19,#32]
    5c5c:	321a0149 	orr	w9, w10, #0x40
    5c60:	321a016c 	orr	w12, w11, #0x40
    5c64:	2900b269 	stp	w9, w12, [x19,#4]
    5c68:	b94007e9 	ldr	w9, [sp,#4]
    5c6c:	52800d4c 	mov	w12, #0x6a                  	// #106
    5c70:	52800aad 	mov	w13, #0x55                  	// #85
    5c74:	2a1f03e0 	mov	w0, wzr
    5c78:	7100013f 	cmp	w9, #0x0
    5c7c:	1a8c01a9 	csel	w9, w13, w12, eq
    5c80:	2a09014a 	orr	w10, w10, w9
    5c84:	2a090169 	orr	w9, w11, w9
    5c88:	2900a66a 	stp	w10, w9, [x19,#4]
    5c8c:	b9400fe9 	ldr	w9, [sp,#12]
    5c90:	52801fea 	mov	w10, #0xff                  	// #255
    5c94:	39003e6a 	strb	w10, [x19,#15]
    5c98:	7100013f 	cmp	w9, #0x0
    5c9c:	1a8c01a9 	csel	w9, w13, w12, eq
    5ca0:	2a080128 	orr	w8, w9, w8
    5ca4:	b9002268 	str	w8, [x19,#32]
    5ca8:	14000034 	b	5d78 <stmmac_ethtool_getsettings+0x1bc>
    5cac:	f945a280 	ldr	x0, [x20,#2880]
    5cb0:	b4000280 	cbz	x0, 5d00 <stmmac_ethtool_getsettings+0x144>
    5cb4:	f9402688 	ldr	x8, [x20,#72]
    5cb8:	370005a8 	tbnz	w8, #0, 5d6c <stmmac_ethtool_getsettings+0x1b0>
    5cbc:	d2800000 	mov	x0, #0x0                   	// #0
    5cc0:	f2a00000 	movk	x0, #0x0, lsl #16
    5cc4:	f2c00000 	movk	x0, #0x0, lsl #32
    5cc8:	f2e00000 	movk	x0, #0x0, lsl #48
    5ccc:	aa1403e1 	mov	x1, x20
    5cd0:	94000000 	bl	0 <printk>
    5cd4:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    5cd8:	14000028 	b	5d78 <stmmac_ethtool_getsettings+0x1bc>
    5cdc:	529fffe8 	mov	w8, #0xffff                	// #65535
    5ce0:	52801fe9 	mov	w9, #0xff                  	// #255
    5ce4:	2a1f03e0 	mov	w0, wzr
    5ce8:	79001a68 	strh	w8, [x19,#12]
    5cec:	79003a68 	strh	w8, [x19,#28]
    5cf0:	39003a69 	strb	w9, [x19,#14]
    5cf4:	14000021 	b	5d78 <stmmac_ethtool_getsettings+0x1bc>
    5cf8:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    5cfc:	1400001f 	b	5d78 <stmmac_ethtool_getsettings+0x1bc>
    5d00:	d2800000 	mov	x0, #0x0                   	// #0
    5d04:	d2800001 	mov	x1, #0x0                   	// #0
    5d08:	f2a00000 	movk	x0, #0x0, lsl #16
    5d0c:	f2a00001 	movk	x1, #0x0, lsl #16
    5d10:	f2c00000 	movk	x0, #0x0, lsl #32
    5d14:	f2c00001 	movk	x1, #0x0, lsl #32
    5d18:	f2e00000 	movk	x0, #0x0, lsl #48
    5d1c:	f2e00001 	movk	x1, #0x0, lsl #48
    5d20:	aa1403e2 	mov	x2, x20
    5d24:	94000000 	bl	0 <printk>
    5d28:	12800240 	mov	w0, #0xffffffed            	// #-19
    5d2c:	14000013 	b	5d78 <stmmac_ethtool_getsettings+0x1bc>
    5d30:	b9400a69 	ldr	w9, [x19,#8]
    5d34:	32130129 	orr	w9, w9, #0x2000
    5d38:	b9000a69 	str	w9, [x19,#8]
    5d3c:	360ff7a8 	tbz	w8, #1, 5c30 <stmmac_ethtool_getsettings+0x74>
    5d40:	b9400a68 	ldr	w8, [x19,#8]
    5d44:	32120108 	orr	w8, w8, #0x4000
    5d48:	b9000a68 	str	w8, [x19,#8]
    5d4c:	b9400be9 	ldr	w9, [sp,#8]
    5d50:	3607f749 	tbz	w9, #0, 5c38 <stmmac_ethtool_getsettings+0x7c>
    5d54:	b9402268 	ldr	w8, [x19,#32]
    5d58:	32130108 	orr	w8, w8, #0x2000
    5d5c:	b9002268 	str	w8, [x19,#32]
    5d60:	b9402268 	ldr	w8, [x19,#32]
    5d64:	370ff6e9 	tbnz	w9, #1, 5c40 <stmmac_ethtool_getsettings+0x84>
    5d68:	17ffffb8 	b	5c48 <stmmac_ethtool_getsettings+0x8c>
    5d6c:	aa1303e1 	mov	x1, x19
    5d70:	3900467f 	strb	wzr, [x19,#17]
    5d74:	94000000 	bl	0 <phy_ethtool_gset>
    5d78:	a9427bfd 	ldp	x29, x30, [sp,#32]
    5d7c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    5d80:	9100c3ff 	add	sp, sp, #0x30
    5d84:	d65f03c0 	ret

0000000000005d88 <stmmac_ethtool_setsettings>:
    5d88:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    5d8c:	a9014ff4 	stp	x20, x19, [sp,#16]
    5d90:	a9027bfd 	stp	x29, x30, [sp,#32]
    5d94:	910083fd 	add	x29, sp, #0x20
    5d98:	aa0103f5 	mov	x21, x1
    5d9c:	aa0003f4 	mov	x20, x0
    5da0:	94000000 	bl	0 <_mcount>
    5da4:	f9459288 	ldr	x8, [x20,#2848]
    5da8:	39416108 	ldrb	w8, [x8,#88]
    5dac:	7200051f 	tst	w8, #0x3
    5db0:	54000280 	b.eq	5e00 <stmmac_ethtool_setsettings+0x78>
    5db4:	39404aa8 	ldrb	w8, [x21,#18]
    5db8:	7100051f 	cmp	w8, #0x1
    5dbc:	54000381 	b.ne	5e2c <stmmac_ethtool_setsettings+0xa4>
    5dc0:	912ca293 	add	x19, x20, #0xb28
    5dc4:	aa1303e0 	mov	x0, x19
    5dc8:	94000000 	bl	0 <_raw_spin_lock>
    5dcc:	f9459289 	ldr	x9, [x20,#2848]
    5dd0:	f9400128 	ldr	x8, [x9]
    5dd4:	f9403908 	ldr	x8, [x8,#112]
    5dd8:	b4000108 	cbz	x8, 5df8 <stmmac_ethtool_setsettings+0x70>
    5ddc:	b9406129 	ldr	w9, [x9,#96]
    5de0:	f9458680 	ldr	x0, [x20,#2824]
    5de4:	52800021 	mov	w1, #0x1                   	// #1
    5de8:	2a1f03e3 	mov	w3, wzr
    5dec:	7100013f 	cmp	w9, #0x0
    5df0:	1a9f07e2 	cset	w2, ne
    5df4:	d63f0100 	blr	x8
    5df8:	2a1f03f4 	mov	w20, wzr
    5dfc:	14000009 	b	5e20 <stmmac_ethtool_setsettings+0x98>
    5e00:	f945a296 	ldr	x22, [x20,#2880]
    5e04:	912ca293 	add	x19, x20, #0xb28
    5e08:	aa1303e0 	mov	x0, x19
    5e0c:	94000000 	bl	0 <_raw_spin_lock>
    5e10:	aa1603e0 	mov	x0, x22
    5e14:	aa1503e1 	mov	x1, x21
    5e18:	94000000 	bl	0 <phy_ethtool_sset>
    5e1c:	2a0003f4 	mov	w20, w0
    5e20:	aa1303e0 	mov	x0, x19
    5e24:	94000000 	bl	0 <_raw_spin_unlock>
    5e28:	14000002 	b	5e30 <stmmac_ethtool_setsettings+0xa8>
    5e2c:	128002b4 	mov	w20, #0xffffffea            	// #-22
    5e30:	2a1403e0 	mov	w0, w20
    5e34:	a9427bfd 	ldp	x29, x30, [sp,#32]
    5e38:	a9414ff4 	ldp	x20, x19, [sp,#16]
    5e3c:	a8c357f6 	ldp	x22, x21, [sp],#48
    5e40:	d65f03c0 	ret

0000000000005e44 <stmmac_ethtool_getdrvinfo>:
    5e44:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    5e48:	a9017bfd 	stp	x29, x30, [sp,#16]
    5e4c:	910043fd 	add	x29, sp, #0x10
    5e50:	aa0103f3 	mov	x19, x1
    5e54:	aa0003f4 	mov	x20, x0
    5e58:	94000000 	bl	0 <_mcount>
    5e5c:	f947c288 	ldr	x8, [x20,#3968]
    5e60:	d2800009 	mov	x9, #0x0                   	// #0
    5e64:	d280000a 	mov	x10, #0x0                   	// #0
    5e68:	f2a00009 	movk	x9, #0x0, lsl #16
    5e6c:	b9403508 	ldr	w8, [x8,#52]
    5e70:	f2a0000a 	movk	x10, #0x0, lsl #16
    5e74:	f2c00009 	movk	x9, #0x0, lsl #32
    5e78:	f2c0000a 	movk	x10, #0x0, lsl #32
    5e7c:	f2e00009 	movk	x9, #0x0, lsl #48
    5e80:	f2e0000a 	movk	x10, #0x0, lsl #48
    5e84:	7100011f 	cmp	w8, #0x0
    5e88:	91001260 	add	x0, x19, #0x4
    5e8c:	9a890141 	csel	x1, x10, x9, eq
    5e90:	52800402 	mov	w2, #0x20                  	// #32
    5e94:	94000000 	bl	0 <strlcpy>
    5e98:	d2800001 	mov	x1, #0x0                   	// #0
    5e9c:	f2a00001 	movk	x1, #0x0, lsl #16
    5ea0:	f2c00001 	movk	x1, #0x0, lsl #32
    5ea4:	91009260 	add	x0, x19, #0x24
    5ea8:	f2e00001 	movk	x1, #0x0, lsl #48
    5eac:	52800402 	mov	w2, #0x20                  	// #32
    5eb0:	94000000 	bl	0 <strlcpy>
    5eb4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    5eb8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    5ebc:	d65f03c0 	ret

0000000000005ec0 <stmmac_ethtool_get_regs_len>:
    5ec0:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    5ec4:	910003fd 	mov	x29, sp
    5ec8:	94000000 	bl	0 <_mcount>
    5ecc:	52820a80 	mov	w0, #0x1054                	// #4180
    5ed0:	a8c17bfd 	ldp	x29, x30, [sp],#16
    5ed4:	d65f03c0 	ret

0000000000005ed8 <stmmac_ethtool_gregs>:
    5ed8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    5edc:	a9017bfd 	stp	x29, x30, [sp,#16]
    5ee0:	910043fd 	add	x29, sp, #0x10
    5ee4:	aa0203f3 	mov	x19, x2
    5ee8:	aa0003f4 	mov	x20, x0
    5eec:	94000000 	bl	0 <_mcount>
    5ef0:	52820a82 	mov	w2, #0x1054                	// #4180
    5ef4:	aa1303e0 	mov	x0, x19
    5ef8:	2a1f03e1 	mov	w1, wzr
    5efc:	94000000 	bl	0 <memset>
    5f00:	f947c288 	ldr	x8, [x20,#3968]
    5f04:	b9403509 	ldr	w9, [x8,#52]
    5f08:	912c2288 	add	x8, x20, #0xb08
    5f0c:	340002c9 	cbz	w9, 5f64 <stmmac_ethtool_gregs+0x8c>
    5f10:	aa1f03e9 	mov	x9, xzr
    5f14:	f940010a 	ldr	x10, [x8]
    5f18:	8b09014a 	add	x10, x10, x9
    5f1c:	b940014a 	ldr	w10, [x10]
    5f20:	d5033d9f 	dsb	ld
    5f24:	b8296a6a 	str	w10, [x19,x9]
    5f28:	91001129 	add	x9, x9, #0x4
    5f2c:	f103713f 	cmp	x9, #0xdc
    5f30:	54ffff21 	b.ne	5f14 <stmmac_ethtool_gregs+0x3c>
    5f34:	aa1f03e9 	mov	x9, xzr
    5f38:	9103726a 	add	x10, x19, #0xdc
    5f3c:	f940010b 	ldr	x11, [x8]
    5f40:	8b09016b 	add	x11, x11, x9
    5f44:	9140056b 	add	x11, x11, #0x1, lsl #12
    5f48:	b940016b 	ldr	w11, [x11]
    5f4c:	d5033d9f 	dsb	ld
    5f50:	b829694b 	str	w11, [x10,x9]
    5f54:	91001129 	add	x9, x9, #0x4
    5f58:	f101613f 	cmp	x9, #0x58
    5f5c:	54ffff01 	b.ne	5f3c <stmmac_ethtool_gregs+0x64>
    5f60:	1400007d 	b	6154 <stmmac_ethtool_gregs+0x27c>
    5f64:	f9400109 	ldr	x9, [x8]
    5f68:	b9400129 	ldr	w9, [x9]
    5f6c:	d5033d9f 	dsb	ld
    5f70:	b9000269 	str	w9, [x19]
    5f74:	f9400109 	ldr	x9, [x8]
    5f78:	5282008a 	mov	w10, #0x1004                	// #4100
    5f7c:	91001129 	add	x9, x9, #0x4
    5f80:	b9400129 	ldr	w9, [x9]
    5f84:	d5033d9f 	dsb	ld
    5f88:	b9000669 	str	w9, [x19,#4]
    5f8c:	f9400109 	ldr	x9, [x8]
    5f90:	91002129 	add	x9, x9, #0x8
    5f94:	b9400129 	ldr	w9, [x9]
    5f98:	d5033d9f 	dsb	ld
    5f9c:	b9000a69 	str	w9, [x19,#8]
    5fa0:	f9400109 	ldr	x9, [x8]
    5fa4:	91003129 	add	x9, x9, #0xc
    5fa8:	b9400129 	ldr	w9, [x9]
    5fac:	d5033d9f 	dsb	ld
    5fb0:	b9000e69 	str	w9, [x19,#12]
    5fb4:	f9400109 	ldr	x9, [x8]
    5fb8:	91004129 	add	x9, x9, #0x10
    5fbc:	b9400129 	ldr	w9, [x9]
    5fc0:	d5033d9f 	dsb	ld
    5fc4:	b9001269 	str	w9, [x19,#16]
    5fc8:	f9400109 	ldr	x9, [x8]
    5fcc:	91005129 	add	x9, x9, #0x14
    5fd0:	b9400129 	ldr	w9, [x9]
    5fd4:	d5033d9f 	dsb	ld
    5fd8:	b9001669 	str	w9, [x19,#20]
    5fdc:	f9400109 	ldr	x9, [x8]
    5fe0:	91006129 	add	x9, x9, #0x18
    5fe4:	b9400129 	ldr	w9, [x9]
    5fe8:	d5033d9f 	dsb	ld
    5fec:	b9001a69 	str	w9, [x19,#24]
    5ff0:	f9400109 	ldr	x9, [x8]
    5ff4:	91007129 	add	x9, x9, #0x1c
    5ff8:	b9400129 	ldr	w9, [x9]
    5ffc:	d5033d9f 	dsb	ld
    6000:	b9001e69 	str	w9, [x19,#28]
    6004:	f9400109 	ldr	x9, [x8]
    6008:	91008129 	add	x9, x9, #0x20
    600c:	b9400129 	ldr	w9, [x9]
    6010:	d5033d9f 	dsb	ld
    6014:	b9002269 	str	w9, [x19,#32]
    6018:	f9400109 	ldr	x9, [x8]
    601c:	91009129 	add	x9, x9, #0x24
    6020:	b9400129 	ldr	w9, [x9]
    6024:	d5033d9f 	dsb	ld
    6028:	b9002669 	str	w9, [x19,#36]
    602c:	f9400109 	ldr	x9, [x8]
    6030:	9100a129 	add	x9, x9, #0x28
    6034:	b9400129 	ldr	w9, [x9]
    6038:	d5033d9f 	dsb	ld
    603c:	b9002a69 	str	w9, [x19,#40]
    6040:	f9400109 	ldr	x9, [x8]
    6044:	9100b129 	add	x9, x9, #0x2c
    6048:	b9400129 	ldr	w9, [x9]
    604c:	d5033d9f 	dsb	ld
    6050:	b9002e69 	str	w9, [x19,#44]
    6054:	f9400109 	ldr	x9, [x8]
    6058:	91400529 	add	x9, x9, #0x1, lsl #12
    605c:	b9400129 	ldr	w9, [x9]
    6060:	d5033d9f 	dsb	ld
    6064:	b9003269 	str	w9, [x19,#48]
    6068:	f9400109 	ldr	x9, [x8]
    606c:	8b0a0129 	add	x9, x9, x10
    6070:	b9400129 	ldr	w9, [x9]
    6074:	d5033d9f 	dsb	ld
    6078:	b9003669 	str	w9, [x19,#52]
    607c:	f9400109 	ldr	x9, [x8]
    6080:	5282010a 	mov	w10, #0x1008                	// #4104
    6084:	8b0a0129 	add	x9, x9, x10
    6088:	b9400129 	ldr	w9, [x9]
    608c:	d5033d9f 	dsb	ld
    6090:	b9003a69 	str	w9, [x19,#56]
    6094:	f9400109 	ldr	x9, [x8]
    6098:	5282018a 	mov	w10, #0x100c                	// #4108
    609c:	8b0a0129 	add	x9, x9, x10
    60a0:	b9400129 	ldr	w9, [x9]
    60a4:	d5033d9f 	dsb	ld
    60a8:	b9003e69 	str	w9, [x19,#60]
    60ac:	f9400109 	ldr	x9, [x8]
    60b0:	5282020a 	mov	w10, #0x1010                	// #4112
    60b4:	8b0a0129 	add	x9, x9, x10
    60b8:	b9400129 	ldr	w9, [x9]
    60bc:	d5033d9f 	dsb	ld
    60c0:	b9004269 	str	w9, [x19,#64]
    60c4:	f9400109 	ldr	x9, [x8]
    60c8:	5282028a 	mov	w10, #0x1014                	// #4116
    60cc:	8b0a0129 	add	x9, x9, x10
    60d0:	b9400129 	ldr	w9, [x9]
    60d4:	d5033d9f 	dsb	ld
    60d8:	b9004669 	str	w9, [x19,#68]
    60dc:	f9400109 	ldr	x9, [x8]
    60e0:	5282030a 	mov	w10, #0x1018                	// #4120
    60e4:	8b0a0129 	add	x9, x9, x10
    60e8:	b9400129 	ldr	w9, [x9]
    60ec:	d5033d9f 	dsb	ld
    60f0:	b9004a69 	str	w9, [x19,#72]
    60f4:	f9400109 	ldr	x9, [x8]
    60f8:	5282038a 	mov	w10, #0x101c                	// #4124
    60fc:	8b0a0129 	add	x9, x9, x10
    6100:	b9400129 	ldr	w9, [x9]
    6104:	d5033d9f 	dsb	ld
    6108:	b9004e69 	str	w9, [x19,#76]
    610c:	f9400109 	ldr	x9, [x8]
    6110:	5282040a 	mov	w10, #0x1020                	// #4128
    6114:	8b0a0129 	add	x9, x9, x10
    6118:	b9400129 	ldr	w9, [x9]
    611c:	d5033d9f 	dsb	ld
    6120:	b9005269 	str	w9, [x19,#80]
    6124:	f9400109 	ldr	x9, [x8]
    6128:	52820a0a 	mov	w10, #0x1050                	// #4176
    612c:	8b0a0129 	add	x9, x9, x10
    6130:	b9400129 	ldr	w9, [x9]
    6134:	d5033d9f 	dsb	ld
    6138:	b9005a69 	str	w9, [x19,#88]
    613c:	f9400108 	ldr	x8, [x8]
    6140:	52820a89 	mov	w9, #0x1054                	// #4180
    6144:	8b090108 	add	x8, x8, x9
    6148:	b9400108 	ldr	w8, [x8]
    614c:	d5033d9f 	dsb	ld
    6150:	b9005e68 	str	w8, [x19,#92]
    6154:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6158:	a8c24ff4 	ldp	x20, x19, [sp],#32
    615c:	d65f03c0 	ret

0000000000006160 <stmmac_get_wol>:
    6160:	f81d0ff5 	str	x21, [sp,#-48]!
    6164:	a9014ff4 	stp	x20, x19, [sp,#16]
    6168:	a9027bfd 	stp	x29, x30, [sp,#32]
    616c:	910083fd 	add	x29, sp, #0x20
    6170:	aa0103f3 	mov	x19, x1
    6174:	aa0003f5 	mov	x21, x0
    6178:	94000000 	bl	0 <_mcount>
    617c:	912ca2b4 	add	x20, x21, #0xb28
    6180:	aa1403e0 	mov	x0, x20
    6184:	94000000 	bl	0 <_raw_spin_lock_irq>
    6188:	f9458ea8 	ldr	x8, [x21,#2840]
    618c:	3942b108 	ldrb	w8, [x8,#172]
    6190:	360000a8 	tbz	w8, #0, 61a4 <stmmac_get_wol+0x44>
    6194:	52800448 	mov	w8, #0x22                  	// #34
    6198:	b9000668 	str	w8, [x19,#4]
    619c:	b9512ea8 	ldr	w8, [x21,#4396]
    61a0:	b9000a68 	str	w8, [x19,#8]
    61a4:	aa1403e0 	mov	x0, x20
    61a8:	94000000 	bl	0 <_raw_spin_unlock_irq>
    61ac:	a9427bfd 	ldp	x29, x30, [sp,#32]
    61b0:	a9414ff4 	ldp	x20, x19, [sp,#16]
    61b4:	f84307f5 	ldr	x21, [sp],#48
    61b8:	d65f03c0 	ret

00000000000061bc <stmmac_set_wol>:
    61bc:	f81d0ff5 	str	x21, [sp,#-48]!
    61c0:	a9014ff4 	stp	x20, x19, [sp,#16]
    61c4:	a9027bfd 	stp	x29, x30, [sp,#32]
    61c8:	910083fd 	add	x29, sp, #0x20
    61cc:	aa0103f4 	mov	x20, x1
    61d0:	aa0003f3 	mov	x19, x0
    61d4:	94000000 	bl	0 <_mcount>
    61d8:	b9512268 	ldr	w8, [x19,#4384]
    61dc:	340000c8 	cbz	w8, 61f4 <stmmac_set_wol+0x38>
    61e0:	b94faa68 	ldr	w8, [x19,#4008]
    61e4:	35000088 	cbnz	w8, 61f4 <stmmac_set_wol+0x38>
    61e8:	b9400a88 	ldr	w8, [x20,#8]
    61ec:	121a7908 	and	w8, w8, #0xffffffdf
    61f0:	b9000a88 	str	w8, [x20,#8]
    61f4:	f9458e60 	ldr	x0, [x19,#2840]
    61f8:	3942b008 	ldrb	w8, [x0,#172]
    61fc:	360000a8 	tbz	w8, #0, 6210 <stmmac_set_wol+0x54>
    6200:	b9400a88 	ldr	w8, [x20,#8]
    6204:	12800449 	mov	w9, #0xffffffdd            	// #-35
    6208:	6a09011f 	tst	w8, w9
    620c:	540000c0 	b.eq	6224 <stmmac_set_wol+0x68>
    6210:	128002a0 	mov	w0, #0xffffffea            	// #-22
    6214:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6218:	a9414ff4 	ldp	x20, x19, [sp,#16]
    621c:	f84307f5 	ldr	x21, [sp],#48
    6220:	d65f03c0 	ret
    6224:	34000168 	cbz	w8, 6250 <stmmac_set_wol+0x94>
    6228:	d2800000 	mov	x0, #0x0                   	// #0
    622c:	f2a00000 	movk	x0, #0x0, lsl #16
    6230:	f2c00000 	movk	x0, #0x0, lsl #32
    6234:	f2e00000 	movk	x0, #0x0, lsl #48
    6238:	94000000 	bl	0 <printk>
    623c:	f9458e60 	ldr	x0, [x19,#2840]
    6240:	52800021 	mov	w1, #0x1                   	// #1
    6244:	52800035 	mov	w21, #0x1                   	// #1
    6248:	94000000 	bl	0 <device_set_wakeup_enable>
    624c:	14000004 	b	625c <stmmac_set_wol+0xa0>
    6250:	2a1f03e1 	mov	w1, wzr
    6254:	94000000 	bl	0 <device_set_wakeup_enable>
    6258:	2a1f03f5 	mov	w21, wzr
    625c:	b9513260 	ldr	w0, [x19,#4400]
    6260:	2a1503e1 	mov	w1, w21
    6264:	94000000 	bl	0 <irq_set_irq_wake>
    6268:	912ca275 	add	x21, x19, #0xb28
    626c:	aa1503e0 	mov	x0, x21
    6270:	94000000 	bl	0 <_raw_spin_lock_irq>
    6274:	b9400a88 	ldr	w8, [x20,#8]
    6278:	aa1503e0 	mov	x0, x21
    627c:	b9112e68 	str	w8, [x19,#4396]
    6280:	94000000 	bl	0 <_raw_spin_unlock_irq>
    6284:	2a1f03e0 	mov	w0, wzr
    6288:	17ffffe3 	b	6214 <stmmac_set_wol+0x58>

000000000000628c <stmmac_ethtool_getmsglevel>:
    628c:	f81e0ff3 	str	x19, [sp,#-32]!
    6290:	a9017bfd 	stp	x29, x30, [sp,#16]
    6294:	910043fd 	add	x29, sp, #0x10
    6298:	aa0003f3 	mov	x19, x0
    629c:	94000000 	bl	0 <_mcount>
    62a0:	b9512a60 	ldr	w0, [x19,#4392]
    62a4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    62a8:	f84207f3 	ldr	x19, [sp],#32
    62ac:	d65f03c0 	ret

00000000000062b0 <stmmac_ethtool_setmsglevel>:
    62b0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    62b4:	a9017bfd 	stp	x29, x30, [sp,#16]
    62b8:	910043fd 	add	x29, sp, #0x10
    62bc:	2a0103f3 	mov	w19, w1
    62c0:	aa0003f4 	mov	x20, x0
    62c4:	94000000 	bl	0 <_mcount>
    62c8:	b9112a93 	str	w19, [x20,#4392]
    62cc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    62d0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    62d4:	d65f03c0 	ret

00000000000062d8 <stmmac_get_coalesce>:
    62d8:	f81d0ff5 	str	x21, [sp,#-48]!
    62dc:	a9014ff4 	stp	x20, x19, [sp,#16]
    62e0:	a9027bfd 	stp	x29, x30, [sp,#32]
    62e4:	910083fd 	add	x29, sp, #0x20
    62e8:	aa0103f3 	mov	x19, x1
    62ec:	aa0003f4 	mov	x20, x0
    62f0:	94000000 	bl	0 <_mcount>
    62f4:	b9492a88 	ldr	w8, [x20,#2344]
    62f8:	b9001668 	str	w8, [x19,#20]
    62fc:	b9492688 	ldr	w8, [x20,#2340]
    6300:	b9001a68 	str	w8, [x19,#24]
    6304:	b9524a88 	ldr	w8, [x20,#4680]
    6308:	34000208 	cbz	w8, 6348 <stmmac_get_coalesce+0x70>
    630c:	f9489e80 	ldr	x0, [x20,#4408]
    6310:	b949ee95 	ldr	w21, [x20,#2540]
    6314:	94000000 	bl	0 <clk_get_rate>
    6318:	b4000140 	cbz	x0, 6340 <stmmac_get_coalesce+0x68>
    631c:	d2869b69 	mov	x9, #0x34db                	// #13531
    6320:	f2baf6c9 	movk	x9, #0xd7b6, lsl #16
    6324:	f2dbd049 	movk	x9, #0xde82, lsl #32
    6328:	f2e86369 	movk	x9, #0x431b, lsl #48
    632c:	9bc97c09 	umulh	x9, x0, x9
    6330:	53185ea8 	lsl	w8, w21, #8
    6334:	d352fd29 	lsr	x9, x9, #18
    6338:	9ac90908 	udiv	x8, x8, x9
    633c:	14000002 	b	6344 <stmmac_get_coalesce+0x6c>
    6340:	2a1f03e8 	mov	w8, wzr
    6344:	b9000668 	str	w8, [x19,#4]
    6348:	a9427bfd 	ldp	x29, x30, [sp,#32]
    634c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    6350:	2a1f03e0 	mov	w0, wzr
    6354:	f84307f5 	ldr	x21, [sp],#48
    6358:	d65f03c0 	ret

000000000000635c <stmmac_set_coalesce>:
    635c:	f81d0ff5 	str	x21, [sp,#-48]!
    6360:	a9014ff4 	stp	x20, x19, [sp,#16]
    6364:	a9027bfd 	stp	x29, x30, [sp,#32]
    6368:	910083fd 	add	x29, sp, #0x20
    636c:	aa0103f4 	mov	x20, x1
    6370:	aa0003f3 	mov	x19, x0
    6374:	94000000 	bl	0 <_mcount>
    6378:	b9400a88 	ldr	w8, [x20,#8]
    637c:	350004a8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    6380:	b9400e88 	ldr	w8, [x20,#12]
    6384:	35000468 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    6388:	b9401288 	ldr	w8, [x20,#16]
    638c:	35000428 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    6390:	b9401e88 	ldr	w8, [x20,#28]
    6394:	350003e8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    6398:	b9402a88 	ldr	w8, [x20,#40]
    639c:	350003a8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63a0:	b9402e88 	ldr	w8, [x20,#44]
    63a4:	35000368 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63a8:	b9403288 	ldr	w8, [x20,#48]
    63ac:	35000328 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63b0:	b9403688 	ldr	w8, [x20,#52]
    63b4:	350002e8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63b8:	b9403a88 	ldr	w8, [x20,#56]
    63bc:	350002a8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63c0:	b9405288 	ldr	w8, [x20,#80]
    63c4:	35000268 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63c8:	b9404288 	ldr	w8, [x20,#64]
    63cc:	35000228 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63d0:	b9404688 	ldr	w8, [x20,#68]
    63d4:	350001e8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63d8:	b9403e88 	ldr	w8, [x20,#60]
    63dc:	350001a8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63e0:	b9404a88 	ldr	w8, [x20,#72]
    63e4:	35000168 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63e8:	b9404e88 	ldr	w8, [x20,#76]
    63ec:	35000128 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63f0:	b9402288 	ldr	w8, [x20,#32]
    63f4:	350000e8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    63f8:	b9402688 	ldr	w8, [x20,#36]
    63fc:	350000a8 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    6400:	b9405688 	ldr	w8, [x20,#84]
    6404:	35000068 	cbnz	w8, 6410 <stmmac_set_coalesce+0xb4>
    6408:	b9405a88 	ldr	w8, [x20,#88]
    640c:	340000c8 	cbz	w8, 6424 <stmmac_set_coalesce+0xc8>
    6410:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    6414:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6418:	a9414ff4 	ldp	x20, x19, [sp,#16]
    641c:	f84307f5 	ldr	x21, [sp],#48
    6420:	d65f03c0 	ret
    6424:	b9400695 	ldr	w21, [x20,#4]
    6428:	340003b5 	cbz	w21, 649c <stmmac_set_coalesce+0x140>
    642c:	b9401688 	ldr	w8, [x20,#20]
    6430:	34000128 	cbz	w8, 6454 <stmmac_set_coalesce+0xf8>
    6434:	5290d409 	mov	w9, #0x86a0                	// #34464
    6438:	72a00029 	movk	w9, #0x1, lsl #16
    643c:	6b09011f 	cmp	w8, w9
    6440:	540002e8 	b.hi	649c <stmmac_set_coalesce+0x140>
    6444:	b9401a88 	ldr	w8, [x20,#24]
    6448:	7104011f 	cmp	w8, #0x100
    644c:	54000288 	b.hi	649c <stmmac_set_coalesce+0x140>
    6450:	14000005 	b	6464 <stmmac_set_coalesce+0x108>
    6454:	b9401a88 	ldr	w8, [x20,#24]
    6458:	34000228 	cbz	w8, 649c <stmmac_set_coalesce+0x140>
    645c:	7104011f 	cmp	w8, #0x100
    6460:	540001e8 	b.hi	649c <stmmac_set_coalesce+0x140>
    6464:	f9489e60 	ldr	x0, [x19,#4408]
    6468:	94000000 	bl	0 <clk_get_rate>
    646c:	b4000180 	cbz	x0, 649c <stmmac_set_coalesce+0x140>
    6470:	d2869b68 	mov	x8, #0x34db                	// #13531
    6474:	f2baf6c8 	movk	x8, #0xd7b6, lsl #16
    6478:	f2dbd048 	movk	x8, #0xde82, lsl #32
    647c:	f2e86368 	movk	x8, #0x431b, lsl #48
    6480:	9bc87c08 	umulh	x8, x0, x8
    6484:	d352fd08 	lsr	x8, x8, #18
    6488:	9b157d08 	mul	x8, x8, x21
    648c:	d348fd01 	lsr	x1, x8, #8
    6490:	51008028 	sub	w8, w1, #0x20
    6494:	71037d1f 	cmp	w8, #0xdf
    6498:	54000069 	b.ls	64a4 <stmmac_set_coalesce+0x148>
    649c:	128002a0 	mov	w0, #0xffffffea            	// #-22
    64a0:	17ffffdd 	b	6414 <stmmac_set_coalesce+0xb8>
    64a4:	b9524a68 	ldr	w8, [x19,#4680]
    64a8:	34fffb48 	cbz	w8, 6410 <stmmac_set_coalesce+0xb4>
    64ac:	b9401a88 	ldr	w8, [x20,#24]
    64b0:	f9459269 	ldr	x9, [x19,#2848]
    64b4:	f9458660 	ldr	x0, [x19,#2824]
    64b8:	b9092668 	str	w8, [x19,#2340]
    64bc:	b9401688 	ldr	w8, [x20,#20]
    64c0:	b909ee61 	str	w1, [x19,#2540]
    64c4:	b9092a68 	str	w8, [x19,#2344]
    64c8:	f9400928 	ldr	x8, [x9,#16]
    64cc:	f9403d08 	ldr	x8, [x8,#120]
    64d0:	d63f0100 	blr	x8
    64d4:	2a1f03e0 	mov	w0, wzr
    64d8:	17ffffcf 	b	6414 <stmmac_set_coalesce+0xb8>

00000000000064dc <stmmac_get_pauseparam>:
    64dc:	d100c3ff 	sub	sp, sp, #0x30
    64e0:	a9014ff4 	stp	x20, x19, [sp,#16]
    64e4:	a9027bfd 	stp	x29, x30, [sp,#32]
    64e8:	910083fd 	add	x29, sp, #0x20
    64ec:	aa0103f3 	mov	x19, x1
    64f0:	aa0003f4 	mov	x20, x0
    64f4:	94000000 	bl	0 <_mcount>
    64f8:	f900067f 	str	xzr, [x19,#8]
    64fc:	f9459288 	ldr	x8, [x20,#2848]
    6500:	b9405909 	ldr	w9, [x8,#88]
    6504:	34000209 	cbz	w9, 6544 <stmmac_get_pauseparam+0x68>
    6508:	f9400108 	ldr	x8, [x8]
    650c:	f9404108 	ldr	x8, [x8,#128]
    6510:	b40001a8 	cbz	x8, 6544 <stmmac_get_pauseparam+0x68>
    6514:	52800028 	mov	w8, #0x1                   	// #1
    6518:	b9000668 	str	w8, [x19,#4]
    651c:	f9459288 	ldr	x8, [x20,#2848]
    6520:	f9458680 	ldr	x0, [x20,#2824]
    6524:	910003e1 	mov	x1, sp
    6528:	f9400108 	ldr	x8, [x8]
    652c:	f9404108 	ldr	x8, [x8,#128]
    6530:	d63f0100 	blr	x8
    6534:	b94003e8 	ldr	w8, [sp]
    6538:	34000248 	cbz	w8, 6580 <stmmac_get_pauseparam+0xa4>
    653c:	f945a288 	ldr	x8, [x20,#2880]
    6540:	14000006 	b	6558 <stmmac_get_pauseparam+0x7c>
    6544:	f945a288 	ldr	x8, [x20,#2880]
    6548:	b9436d09 	ldr	w9, [x8,#876]
    654c:	2a2903e9 	mvn	w9, w9
    6550:	7213053f 	tst	w9, #0x6000
    6554:	54000161 	b.ne	6580 <stmmac_get_pauseparam+0xa4>
    6558:	b9437d08 	ldr	w8, [x8,#892]
    655c:	b9000668 	str	w8, [x19,#4]
    6560:	b94b5688 	ldr	w8, [x20,#2900]
    6564:	36000088 	tbz	w8, #0, 6574 <stmmac_get_pauseparam+0x98>
    6568:	52800028 	mov	w8, #0x1                   	// #1
    656c:	b9000a68 	str	w8, [x19,#8]
    6570:	b94b5688 	ldr	w8, [x20,#2900]
    6574:	36080068 	tbz	w8, #1, 6580 <stmmac_get_pauseparam+0xa4>
    6578:	52800028 	mov	w8, #0x1                   	// #1
    657c:	b9000e68 	str	w8, [x19,#12]
    6580:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6584:	a9414ff4 	ldp	x20, x19, [sp,#16]
    6588:	9100c3ff 	add	sp, sp, #0x30
    658c:	d65f03c0 	ret

0000000000006590 <stmmac_set_pauseparam>:
    6590:	d10103ff 	sub	sp, sp, #0x40
    6594:	f9000bf5 	str	x21, [sp,#16]
    6598:	a9024ff4 	stp	x20, x19, [sp,#32]
    659c:	a9037bfd 	stp	x29, x30, [sp,#48]
    65a0:	9100c3fd 	add	x29, sp, #0x30
    65a4:	aa0103f5 	mov	x21, x1
    65a8:	aa0003f3 	mov	x19, x0
    65ac:	94000000 	bl	0 <_mcount>
    65b0:	f9459268 	ldr	x8, [x19,#2848]
    65b4:	f945a274 	ldr	x20, [x19,#2880]
    65b8:	b9405909 	ldr	w9, [x8,#88]
    65bc:	34000469 	cbz	w9, 6648 <stmmac_set_pauseparam+0xb8>
    65c0:	f9400108 	ldr	x8, [x8]
    65c4:	f9404108 	ldr	x8, [x8,#128]
    65c8:	b4000408 	cbz	x8, 6648 <stmmac_set_pauseparam+0xb8>
    65cc:	52800028 	mov	w8, #0x1                   	// #1
    65d0:	b90006a8 	str	w8, [x21,#4]
    65d4:	f9459268 	ldr	x8, [x19,#2848]
    65d8:	f9458660 	ldr	x0, [x19,#2824]
    65dc:	910003e1 	mov	x1, sp
    65e0:	f9400108 	ldr	x8, [x8]
    65e4:	f9404108 	ldr	x8, [x8,#128]
    65e8:	d63f0100 	blr	x8
    65ec:	b94003e8 	ldr	w8, [sp]
    65f0:	34000348 	cbz	w8, 6658 <stmmac_set_pauseparam+0xc8>
    65f4:	294126a8 	ldp	w8, w9, [x21,#8]
    65f8:	7100011f 	cmp	w8, #0x0
    65fc:	1a9f07e8 	cset	w8, ne
    6600:	321f010a 	orr	w10, w8, #0x2
    6604:	7100013f 	cmp	w9, #0x0
    6608:	1a8a0108 	csel	w8, w8, w10, eq
    660c:	b90b5668 	str	w8, [x19,#2900]
    6610:	b94006a8 	ldr	w8, [x21,#4]
    6614:	b9037e88 	str	w8, [x20,#892]
    6618:	34000068 	cbz	w8, 6624 <stmmac_set_pauseparam+0x94>
    661c:	f9402668 	ldr	x8, [x19,#72]
    6620:	37000208 	tbnz	w8, #0, 6660 <stmmac_set_pauseparam+0xd0>
    6624:	f9459260 	ldr	x0, [x19,#2848]
    6628:	b9435a81 	ldr	w1, [x20,#856]
    662c:	b94b5662 	ldr	w2, [x19,#2900]
    6630:	b94b5a63 	ldr	w3, [x19,#2904]
    6634:	f9400008 	ldr	x8, [x0]
    6638:	f9401508 	ldr	x8, [x8,#40]
    663c:	d63f0100 	blr	x8
    6640:	2a1f03e0 	mov	w0, wzr
    6644:	14000009 	b	6668 <stmmac_set_pauseparam+0xd8>
    6648:	b9436e88 	ldr	w8, [x20,#876]
    664c:	2a2803e8 	mvn	w8, w8
    6650:	7213051f 	tst	w8, #0x6000
    6654:	54fffd00 	b.eq	65f4 <stmmac_set_pauseparam+0x64>
    6658:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    665c:	14000003 	b	6668 <stmmac_set_pauseparam+0xd8>
    6660:	aa1403e0 	mov	x0, x20
    6664:	94000000 	bl	0 <phy_start_aneg>
    6668:	a9437bfd 	ldp	x29, x30, [sp,#48]
    666c:	a9424ff4 	ldp	x20, x19, [sp,#32]
    6670:	f9400bf5 	ldr	x21, [sp,#16]
    6674:	910103ff 	add	sp, sp, #0x40
    6678:	d65f03c0 	ret

000000000000667c <stmmac_get_strings>:
    667c:	f81d0ff5 	str	x21, [sp,#-48]!
    6680:	a9014ff4 	stp	x20, x19, [sp,#16]
    6684:	a9027bfd 	stp	x29, x30, [sp,#32]
    6688:	910083fd 	add	x29, sp, #0x20
    668c:	aa0203f3 	mov	x19, x2
    6690:	2a0103f5 	mov	w21, w1
    6694:	aa0003f4 	mov	x20, x0
    6698:	94000000 	bl	0 <_mcount>
    669c:	710006bf 	cmp	w21, #0x1
    66a0:	54000361 	b.ne	670c <stmmac_get_strings+0x90>
    66a4:	b94fae88 	ldr	w8, [x20,#4012]
    66a8:	34000188 	cbz	w8, 66d8 <stmmac_get_strings+0x5c>
    66ac:	d2800009 	mov	x9, #0x0                   	// #0
    66b0:	f2a00009 	movk	x9, #0x0, lsl #16
    66b4:	f2c00009 	movk	x9, #0x0, lsl #32
    66b8:	aa1f03e8 	mov	x8, xzr
    66bc:	f2e00009 	movk	x9, #0x0, lsl #48
    66c0:	8b08012a 	add	x10, x9, x8
    66c4:	ad400141 	ldp	q1, q0, [x10]
    66c8:	9100a108 	add	x8, x8, #0x28
    66cc:	f131611f 	cmp	x8, #0xc58
    66d0:	ac810261 	stp	q1, q0, [x19],#32
    66d4:	54ffff61 	b.ne	66c0 <stmmac_get_strings+0x44>
    66d8:	d2800009 	mov	x9, #0x0                   	// #0
    66dc:	f2a00009 	movk	x9, #0x0, lsl #16
    66e0:	f2c00009 	movk	x9, #0x0, lsl #32
    66e4:	aa1f03e8 	mov	x8, xzr
    66e8:	f2e00009 	movk	x9, #0x0, lsl #48
    66ec:	ad400520 	ldp	q0, q1, [x9]
    66f0:	8b08026a 	add	x10, x19, x8
    66f4:	91008108 	add	x8, x8, #0x20
    66f8:	f136811f 	cmp	x8, #0xda0
    66fc:	9100a129 	add	x9, x9, #0x28
    6700:	ad000540 	stp	q0, q1, [x10]
    6704:	54ffff41 	b.ne	66ec <stmmac_get_strings+0x70>
    6708:	14000002 	b	6710 <stmmac_get_strings+0x94>
    670c:	d4210000 	brk	#0x800
    6710:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6714:	a9414ff4 	ldp	x20, x19, [sp,#16]
    6718:	f84307f5 	ldr	x21, [sp],#48
    671c:	d65f03c0 	ret

0000000000006720 <stmmac_get_ethtool_stats>:
    6720:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    6724:	a9014ff4 	stp	x20, x19, [sp,#16]
    6728:	a9027bfd 	stp	x29, x30, [sp,#32]
    672c:	910083fd 	add	x29, sp, #0x20
    6730:	aa0203f3 	mov	x19, x2
    6734:	aa0003f4 	mov	x20, x0
    6738:	94000000 	bl	0 <_mcount>
    673c:	f9459288 	ldr	x8, [x20,#2848]
    6740:	91240295 	add	x21, x20, #0x900
    6744:	f9400908 	ldr	x8, [x8,#16]
    6748:	f9401508 	ldr	x8, [x8,#40]
    674c:	b40002c8 	cbz	x8, 67a4 <stmmac_get_ethtool_stats+0x84>
    6750:	f9458682 	ldr	x2, [x20,#2824]
    6754:	9104c280 	add	x0, x20, #0x130
    6758:	91300281 	add	x1, x20, #0xc00
    675c:	d63f0100 	blr	x8
    6760:	2a1f03f6 	mov	w22, wzr
    6764:	d280000a 	mov	x10, #0x0                   	// #0
    6768:	f2a0000a 	movk	x10, #0x0, lsl #16
    676c:	f2c0000a 	movk	x10, #0x0, lsl #32
    6770:	aa1f03e8 	mov	x8, xzr
    6774:	8b364e69 	add	x9, x19, w22, uxtw #3
    6778:	f2e0000a 	movk	x10, #0x0, lsl #48
    677c:	b882854b 	ldrsw	x11, [x10],#40
    6780:	f86b6aab 	ldr	x11, [x21,x11]
    6784:	f828692b 	str	x11, [x9,x8]
    6788:	91002108 	add	x8, x8, #0x8
    678c:	f10da11f 	cmp	x8, #0x368
    6790:	54ffff61 	b.ne	677c <stmmac_get_ethtool_stats+0x5c>
    6794:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6798:	a9414ff4 	ldp	x20, x19, [sp,#16]
    679c:	a8c357f6 	ldp	x22, x21, [sp],#48
    67a0:	d65f03c0 	ret
    67a4:	b94fae88 	ldr	w8, [x20,#4012]
    67a8:	34000268 	cbz	w8, 67f4 <stmmac_get_ethtool_stats+0xd4>
    67ac:	f9492e80 	ldr	x0, [x20,#4696]
    67b0:	913f9281 	add	x1, x20, #0xfe4
    67b4:	94000000 	bl	b330 <dwmac_mmc_read>
    67b8:	d2800009 	mov	x9, #0x0                   	// #0
    67bc:	f2a00009 	movk	x9, #0x0, lsl #16
    67c0:	f2c00009 	movk	x9, #0x0, lsl #32
    67c4:	aa1f03e8 	mov	x8, xzr
    67c8:	f2e00009 	movk	x9, #0x0, lsl #48
    67cc:	b882852a 	ldrsw	x10, [x9],#40
    67d0:	b86a6aaa 	ldr	w10, [x21,x10]
    67d4:	f8286a6a 	str	x10, [x19,x8]
    67d8:	91002108 	add	x8, x8, #0x8
    67dc:	f109e11f 	cmp	x8, #0x278
    67e0:	54ffff61 	b.ne	67cc <stmmac_get_ethtool_stats+0xac>
    67e4:	528009f6 	mov	w22, #0x4f                  	// #79
    67e8:	b951a688 	ldr	w8, [x20,#4516]
    67ec:	350000a8 	cbnz	w8, 6800 <stmmac_get_ethtool_stats+0xe0>
    67f0:	14000009 	b	6814 <stmmac_get_ethtool_stats+0xf4>
    67f4:	2a1f03f6 	mov	w22, wzr
    67f8:	b951a688 	ldr	w8, [x20,#4516]
    67fc:	340000c8 	cbz	w8, 6814 <stmmac_get_ethtool_stats+0xf4>
    6800:	f945a280 	ldr	x0, [x20,#2880]
    6804:	94000000 	bl	0 <phy_get_eee_err>
    6808:	34000060 	cbz	w0, 6814 <stmmac_get_ethtool_stats+0xf4>
    680c:	93407c08 	sxtw	x8, w0
    6810:	f906da88 	str	x8, [x20,#3504]
    6814:	f9459288 	ldr	x8, [x20,#2848]
    6818:	f9400108 	ldr	x8, [x8]
    681c:	f9403508 	ldr	x8, [x8,#104]
    6820:	b4fffa28 	cbz	x8, 6764 <stmmac_get_ethtool_stats+0x44>
    6824:	b9512689 	ldr	w9, [x20,#4388]
    6828:	7100d53f 	cmp	w9, #0x35
    682c:	54fff9cb 	b.lt	6764 <stmmac_get_ethtool_stats+0x44>
    6830:	f9458680 	ldr	x0, [x20,#2824]
    6834:	91300281 	add	x1, x20, #0xc00
    6838:	d63f0100 	blr	x8
    683c:	17ffffca 	b	6764 <stmmac_get_ethtool_stats+0x44>

0000000000006840 <stmmac_check_if_running>:
    6840:	f81e0ff3 	str	x19, [sp,#-32]!
    6844:	a9017bfd 	stp	x29, x30, [sp,#16]
    6848:	910043fd 	add	x29, sp, #0x10
    684c:	aa0003f3 	mov	x19, x0
    6850:	94000000 	bl	0 <_mcount>
    6854:	f9402668 	ldr	x8, [x19,#72]
    6858:	a9417bfd 	ldp	x29, x30, [sp,#16]
    685c:	f240011f 	tst	x8, #0x1
    6860:	128001e8 	mov	w8, #0xfffffff0            	// #-16
    6864:	1a9f0100 	csel	w0, w8, wzr, eq
    6868:	f84207f3 	ldr	x19, [sp],#32
    686c:	d65f03c0 	ret

0000000000006870 <stmmac_get_sset_count>:
    6870:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    6874:	a9017bfd 	stp	x29, x30, [sp,#16]
    6878:	910043fd 	add	x29, sp, #0x10
    687c:	2a0103f4 	mov	w20, w1
    6880:	aa0003f3 	mov	x19, x0
    6884:	94000000 	bl	0 <_mcount>
    6888:	7100069f 	cmp	w20, #0x1
    688c:	540000e1 	b.ne	68a8 <stmmac_get_sset_count+0x38>
    6890:	b94fae68 	ldr	w8, [x19,#4012]
    6894:	52801789 	mov	w9, #0xbc                  	// #188
    6898:	7100011f 	cmp	w8, #0x0
    689c:	52800da8 	mov	w8, #0x6d                  	// #109
    68a0:	1a890100 	csel	w0, w8, w9, eq
    68a4:	14000002 	b	68ac <stmmac_get_sset_count+0x3c>
    68a8:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    68ac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    68b0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    68b4:	d65f03c0 	ret

00000000000068b8 <stmmac_get_ts_info>:
    68b8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    68bc:	a9017bfd 	stp	x29, x30, [sp,#16]
    68c0:	910043fd 	add	x29, sp, #0x10
    68c4:	aa0103f3 	mov	x19, x1
    68c8:	aa0003f4 	mov	x20, x0
    68cc:	94000000 	bl	0 <_mcount>
    68d0:	b94fb288 	ldr	w8, [x20,#4016]
    68d4:	35000068 	cbnz	w8, 68e0 <stmmac_get_ts_info+0x28>
    68d8:	b94fb688 	ldr	w8, [x20,#4020]
    68dc:	340001e8 	cbz	w8, 6918 <stmmac_get_ts_info+0x60>
    68e0:	52800be8 	mov	w8, #0x5f                  	// #95
    68e4:	b9000668 	str	w8, [x19,#4]
    68e8:	f948de80 	ldr	x0, [x20,#4536]
    68ec:	b4000060 	cbz	x0, 68f8 <stmmac_get_ts_info+0x40>
    68f0:	94000000 	bl	0 <ptp_clock_index>
    68f4:	b9000a60 	str	w0, [x19,#8]
    68f8:	52800068 	mov	w8, #0x3                   	// #3
    68fc:	528e3f69 	mov	w9, #0x71fb                	// #29179
    6900:	2a1f03e0 	mov	w0, wzr
    6904:	b9000e68 	str	w8, [x19,#12]
    6908:	b9001e69 	str	w9, [x19,#28]
    690c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6910:	a8c24ff4 	ldp	x20, x19, [sp],#32
    6914:	d65f03c0 	ret
    6918:	aa1403e0 	mov	x0, x20
    691c:	aa1303e1 	mov	x1, x19
    6920:	94000000 	bl	0 <ethtool_op_get_ts_info>
    6924:	17fffffa 	b	690c <stmmac_get_ts_info+0x54>

0000000000006928 <stmmac_ethtool_op_get_eee>:
    6928:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    692c:	a9017bfd 	stp	x29, x30, [sp,#16]
    6930:	910043fd 	add	x29, sp, #0x10
    6934:	aa0103f3 	mov	x19, x1
    6938:	aa0003f4 	mov	x20, x0
    693c:	94000000 	bl	0 <_mcount>
    6940:	b94fba88 	ldr	w8, [x20,#4024]
    6944:	34000168 	cbz	w8, 6970 <stmmac_ethtool_op_get_eee+0x48>
    6948:	b951a688 	ldr	w8, [x20,#4516]
    694c:	aa1303e1 	mov	x1, x19
    6950:	b9001668 	str	w8, [x19,#20]
    6954:	b951aa88 	ldr	w8, [x20,#4520]
    6958:	b9001268 	str	w8, [x19,#16]
    695c:	b951ae88 	ldr	w8, [x20,#4524]
    6960:	b9001e68 	str	w8, [x19,#28]
    6964:	f945a280 	ldr	x0, [x20,#2880]
    6968:	94000000 	bl	0 <phy_ethtool_get_eee>
    696c:	14000002 	b	6974 <stmmac_ethtool_op_get_eee+0x4c>
    6970:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    6974:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6978:	a8c24ff4 	ldp	x20, x19, [sp],#32
    697c:	d65f03c0 	ret

0000000000006980 <stmmac_ethtool_op_set_eee>:
    6980:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    6984:	a9017bfd 	stp	x29, x30, [sp,#16]
    6988:	910043fd 	add	x29, sp, #0x10
    698c:	aa0103f4 	mov	x20, x1
    6990:	aa0003f3 	mov	x19, x0
    6994:	94000000 	bl	0 <_mcount>
    6998:	b9401688 	ldr	w8, [x20,#20]
    699c:	91240260 	add	x0, x19, #0x900
    69a0:	340000e8 	cbz	w8, 69bc <stmmac_ethtool_op_set_eee+0x3c>
    69a4:	94000000 	bl	3c <stmmac_eee_init>
    69a8:	12000008 	and	w8, w0, #0x1
    69ac:	b9001688 	str	w8, [x20,#20]
    69b0:	37000080 	tbnz	w0, #0, 69c0 <stmmac_ethtool_op_set_eee+0x40>
    69b4:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    69b8:	1400000b 	b	69e4 <stmmac_ethtool_op_set_eee+0x64>
    69bc:	94000000 	bl	0 <stmmac_disable_eee_mode>
    69c0:	9122be68 	add	x8, x19, #0x8af
    69c4:	f9400100 	ldr	x0, [x8]
    69c8:	aa1403e1 	mov	x1, x20
    69cc:	94000000 	bl	0 <phy_ethtool_set_eee>
    69d0:	350000a0 	cbnz	w0, 69e4 <stmmac_ethtool_op_set_eee+0x64>
    69d4:	b9401688 	ldr	w8, [x20,#20]
    69d8:	b911a668 	str	w8, [x19,#4516]
    69dc:	b9401e88 	ldr	w8, [x20,#28]
    69e0:	b911ae68 	str	w8, [x19,#4524]
    69e4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    69e8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    69ec:	d65f03c0 	ret

00000000000069f0 <stmmac_get_tunable>:
    69f0:	f81d0ff5 	str	x21, [sp,#-48]!
    69f4:	a9014ff4 	stp	x20, x19, [sp,#16]
    69f8:	a9027bfd 	stp	x29, x30, [sp,#32]
    69fc:	910083fd 	add	x29, sp, #0x20
    6a00:	aa0203f3 	mov	x19, x2
    6a04:	aa0103f5 	mov	x21, x1
    6a08:	aa0003f4 	mov	x20, x0
    6a0c:	94000000 	bl	0 <_mcount>
    6a10:	b94006a8 	ldr	w8, [x21,#4]
    6a14:	7100051f 	cmp	w8, #0x1
    6a18:	540000a1 	b.ne	6a2c <stmmac_get_tunable+0x3c>
    6a1c:	b949e688 	ldr	w8, [x20,#2532]
    6a20:	2a1f03e0 	mov	w0, wzr
    6a24:	b9000268 	str	w8, [x19]
    6a28:	14000002 	b	6a30 <stmmac_get_tunable+0x40>
    6a2c:	128002a0 	mov	w0, #0xffffffea            	// #-22
    6a30:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6a34:	a9414ff4 	ldp	x20, x19, [sp,#16]
    6a38:	f84307f5 	ldr	x21, [sp],#48
    6a3c:	d65f03c0 	ret

0000000000006a40 <stmmac_set_tunable>:
    6a40:	f81d0ff5 	str	x21, [sp,#-48]!
    6a44:	a9014ff4 	stp	x20, x19, [sp,#16]
    6a48:	a9027bfd 	stp	x29, x30, [sp,#32]
    6a4c:	910083fd 	add	x29, sp, #0x20
    6a50:	aa0203f3 	mov	x19, x2
    6a54:	aa0103f5 	mov	x21, x1
    6a58:	aa0003f4 	mov	x20, x0
    6a5c:	94000000 	bl	0 <_mcount>
    6a60:	b94006a8 	ldr	w8, [x21,#4]
    6a64:	7100051f 	cmp	w8, #0x1
    6a68:	540000a1 	b.ne	6a7c <stmmac_set_tunable+0x3c>
    6a6c:	b9400268 	ldr	w8, [x19]
    6a70:	2a1f03e0 	mov	w0, wzr
    6a74:	b909e688 	str	w8, [x20,#2532]
    6a78:	14000002 	b	6a80 <stmmac_set_tunable+0x40>
    6a7c:	128002a0 	mov	w0, #0xffffffea            	// #-22
    6a80:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6a84:	a9414ff4 	ldp	x20, x19, [sp,#16]
    6a88:	f84307f5 	ldr	x21, [sp],#48
    6a8c:	d65f03c0 	ret

0000000000006a90 <stmmac_mdio_reset>:
    6a90:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    6a94:	a9014ff4 	stp	x20, x19, [sp,#16]
    6a98:	a9027bfd 	stp	x29, x30, [sp,#32]
    6a9c:	910083fd 	add	x29, sp, #0x20
    6aa0:	aa0003f3 	mov	x19, x0
    6aa4:	94000000 	bl	0 <_mcount>
    6aa8:	f9402a74 	ldr	x20, [x19,#80]
    6aac:	f9459288 	ldr	x8, [x20,#2848]
    6ab0:	f9458e89 	ldr	x9, [x20,#2840]
    6ab4:	f947c28a 	ldr	x10, [x20,#3968]
    6ab8:	b9402915 	ldr	w21, [x8,#40]
    6abc:	f9413133 	ldr	x19, [x9,#608]
    6ac0:	f9400956 	ldr	x22, [x10,#16]
    6ac4:	b40005b3 	cbz	x19, 6b78 <stmmac_mdio_reset+0xe8>
    6ac8:	b9401ec0 	ldr	w0, [x22,#28]
    6acc:	37f80700 	tbnz	w0, #31, 6bac <stmmac_mdio_reset+0x11c>
    6ad0:	b94022c8 	ldr	w8, [x22,#32]
    6ad4:	7100011f 	cmp	w8, #0x0
    6ad8:	1a9f07f3 	cset	w19, ne
    6adc:	94000000 	bl	0 <gpio_to_desc>
    6ae0:	2a1303e1 	mov	w1, w19
    6ae4:	94000000 	bl	0 <gpiod_direction_output_raw>
    6ae8:	b94026c8 	ldr	w8, [x22,#36]
    6aec:	340000e8 	cbz	w8, 6b08 <stmmac_mdio_reset+0x78>
    6af0:	5289ba69 	mov	w9, #0x4dd3                	// #19923
    6af4:	110f9d08 	add	w8, w8, #0x3e7
    6af8:	72a20c49 	movk	w9, #0x1062, lsl #16
    6afc:	9ba97d08 	umull	x8, w8, w9
    6b00:	d366fd00 	lsr	x0, x8, #38
    6b04:	94000000 	bl	0 <msleep>
    6b08:	2943a2c0 	ldp	w0, w8, [x22,#28]
    6b0c:	7100011f 	cmp	w8, #0x0
    6b10:	1a9f17f3 	cset	w19, eq
    6b14:	94000000 	bl	0 <gpio_to_desc>
    6b18:	2a1303e1 	mov	w1, w19
    6b1c:	94000000 	bl	0 <gpiod_set_raw_value>
    6b20:	b9402ac8 	ldr	w8, [x22,#40]
    6b24:	340000e8 	cbz	w8, 6b40 <stmmac_mdio_reset+0xb0>
    6b28:	5289ba69 	mov	w9, #0x4dd3                	// #19923
    6b2c:	110f9d08 	add	w8, w8, #0x3e7
    6b30:	72a20c49 	movk	w9, #0x1062, lsl #16
    6b34:	9ba97d08 	umull	x8, w8, w9
    6b38:	d366fd00 	lsr	x0, x8, #38
    6b3c:	94000000 	bl	0 <msleep>
    6b40:	2943a2c0 	ldp	w0, w8, [x22,#28]
    6b44:	7100011f 	cmp	w8, #0x0
    6b48:	1a9f07f3 	cset	w19, ne
    6b4c:	94000000 	bl	0 <gpio_to_desc>
    6b50:	2a1303e1 	mov	w1, w19
    6b54:	94000000 	bl	0 <gpiod_set_raw_value>
    6b58:	b9402ec8 	ldr	w8, [x22,#44]
    6b5c:	340000e8 	cbz	w8, 6b78 <stmmac_mdio_reset+0xe8>
    6b60:	5289ba69 	mov	w9, #0x4dd3                	// #19923
    6b64:	110f9d08 	add	w8, w8, #0x3e7
    6b68:	72a20c49 	movk	w9, #0x1062, lsl #16
    6b6c:	9ba97d08 	umull	x8, w8, w9
    6b70:	d366fd00 	lsr	x0, x8, #38
    6b74:	94000000 	bl	0 <msleep>
    6b78:	f94002c8 	ldr	x8, [x22]
    6b7c:	b4000088 	cbz	x8, 6b8c <stmmac_mdio_reset+0xfc>
    6b80:	f947c289 	ldr	x9, [x20,#3968]
    6b84:	f9405120 	ldr	x0, [x9,#160]
    6b88:	d63f0100 	blr	x8
    6b8c:	f947c288 	ldr	x8, [x20,#3968]
    6b90:	b940b108 	ldr	w8, [x8,#176]
    6b94:	35000568 	cbnz	w8, 6c40 <stmmac_mdio_reset+0x1b0>
    6b98:	d5033e9f 	dsb	st
    6b9c:	f9458689 	ldr	x9, [x20,#2824]
    6ba0:	8b150129 	add	x9, x9, x21
    6ba4:	b9000128 	str	w8, [x9]
    6ba8:	14000026 	b	6c40 <stmmac_mdio_reset+0x1b0>
    6bac:	d2800001 	mov	x1, #0x0                   	// #0
    6bb0:	f2a00001 	movk	x1, #0x0, lsl #16
    6bb4:	f2c00001 	movk	x1, #0x0, lsl #32
    6bb8:	f2e00001 	movk	x1, #0x0, lsl #48
    6bbc:	aa1303e0 	mov	x0, x19
    6bc0:	2a1f03e2 	mov	w2, wzr
    6bc4:	aa1f03e3 	mov	x3, xzr
    6bc8:	94000000 	bl	0 <of_get_named_gpio_flags>
    6bcc:	b9001ec0 	str	w0, [x22,#28]
    6bd0:	37f80380 	tbnz	w0, #31, 6c40 <stmmac_mdio_reset+0x1b0>
    6bd4:	d2800001 	mov	x1, #0x0                   	// #0
    6bd8:	f2a00001 	movk	x1, #0x0, lsl #16
    6bdc:	f2c00001 	movk	x1, #0x0, lsl #32
    6be0:	f2e00001 	movk	x1, #0x0, lsl #48
    6be4:	aa1303e0 	mov	x0, x19
    6be8:	aa1f03e2 	mov	x2, xzr
    6bec:	94000000 	bl	0 <of_find_property>
    6bf0:	d2800001 	mov	x1, #0x0                   	// #0
    6bf4:	f2a00001 	movk	x1, #0x0, lsl #16
    6bf8:	f100001f 	cmp	x0, #0x0
    6bfc:	f2c00001 	movk	x1, #0x0, lsl #32
    6c00:	1a9f07e8 	cset	w8, ne
    6c04:	910092c2 	add	x2, x22, #0x24
    6c08:	f2e00001 	movk	x1, #0x0, lsl #48
    6c0c:	52800063 	mov	w3, #0x3                   	// #3
    6c10:	aa1303e0 	mov	x0, x19
    6c14:	aa1f03e4 	mov	x4, xzr
    6c18:	b90022c8 	str	w8, [x22,#32]
    6c1c:	94000000 	bl	0 <of_property_read_variable_u32_array>
    6c20:	f9458e80 	ldr	x0, [x20,#2840]
    6c24:	b9401ec1 	ldr	w1, [x22,#28]
    6c28:	d2800002 	mov	x2, #0x0                   	// #0
    6c2c:	f2a00002 	movk	x2, #0x0, lsl #16
    6c30:	f2c00002 	movk	x2, #0x0, lsl #32
    6c34:	f2e00002 	movk	x2, #0x0, lsl #48
    6c38:	94000000 	bl	0 <devm_gpio_request>
    6c3c:	340000c0 	cbz	w0, 6c54 <stmmac_mdio_reset+0x1c4>
    6c40:	a9427bfd 	ldp	x29, x30, [sp,#32]
    6c44:	a9414ff4 	ldp	x20, x19, [sp,#16]
    6c48:	2a1f03e0 	mov	w0, wzr
    6c4c:	a8c357f6 	ldp	x22, x21, [sp],#48
    6c50:	d65f03c0 	ret
    6c54:	b9401ec0 	ldr	w0, [x22,#28]
    6c58:	17ffff9e 	b	6ad0 <stmmac_mdio_reset+0x40>

0000000000006c5c <stmmac_mdio_register>:
    6c5c:	d10203ff 	sub	sp, sp, #0x80
    6c60:	a9026ffc 	stp	x28, x27, [sp,#32]
    6c64:	a90367fa 	stp	x26, x25, [sp,#48]
    6c68:	a9045ff8 	stp	x24, x23, [sp,#64]
    6c6c:	a90557f6 	stp	x22, x21, [sp,#80]
    6c70:	a9064ff4 	stp	x20, x19, [sp,#96]
    6c74:	a9077bfd 	stp	x29, x30, [sp,#112]
    6c78:	9101c3fd 	add	x29, sp, #0x70
    6c7c:	aa0003f4 	mov	x20, x0
    6c80:	94000000 	bl	0 <_mcount>
    6c84:	f947c288 	ldr	x8, [x20,#3968]
    6c88:	f940091a 	ldr	x26, [x8,#16]
    6c8c:	b4000ada 	cbz	x26, 6de4 <stmmac_mdio_register+0x188>
    6c90:	f9401115 	ldr	x21, [x8,#32]
    6c94:	aa1f03e0 	mov	x0, xzr
    6c98:	94000000 	bl	0 <mdiobus_alloc_size>
    6c9c:	b4000a80 	cbz	x0, 6dec <stmmac_mdio_register+0x190>
    6ca0:	f9400b48 	ldr	x8, [x26,#16]
    6ca4:	aa0003f3 	mov	x19, x0
    6ca8:	b40001a8 	cbz	x8, 6cdc <stmmac_mdio_register+0x80>
    6cac:	ad410101 	ldp	q1, q0, [x8,#32]
    6cb0:	ad400903 	ldp	q3, q2, [x8]
    6cb4:	3d813260 	str	q0, [x19,#1216]
    6cb8:	3d812e61 	str	q1, [x19,#1200]
    6cbc:	3d812a62 	str	q2, [x19,#1184]
    6cc0:	3d812663 	str	q3, [x19,#1168]
    6cc4:	ad430101 	ldp	q1, q0, [x8,#96]
    6cc8:	ad420903 	ldp	q3, q2, [x8,#64]
    6ccc:	3d814260 	str	q0, [x19,#1280]
    6cd0:	3d813e61 	str	q1, [x19,#1264]
    6cd4:	3d813a62 	str	q2, [x19,#1248]
    6cd8:	3d813663 	str	q3, [x19,#1232]
    6cdc:	f9458e88 	ldr	x8, [x20,#2840]
    6ce0:	f9413108 	ldr	x8, [x8,#608]
    6ce4:	b4000068 	cbz	x8, 6cf0 <stmmac_mdio_register+0x94>
    6ce8:	12800008 	mov	w8, #0xffffffff            	// #-1
    6cec:	b9001f48 	str	w8, [x26,#28]
    6cf0:	d2800003 	mov	x3, #0x0                   	// #0
    6cf4:	f2a00003 	movk	x3, #0x0, lsl #16
    6cf8:	f2c00003 	movk	x3, #0x0, lsl #32
    6cfc:	f2e00003 	movk	x3, #0x0, lsl #48
    6d00:	f9000663 	str	x3, [x19,#8]
    6d04:	f947c288 	ldr	x8, [x20,#3968]
    6d08:	d2800009 	mov	x9, #0x0                   	// #0
    6d0c:	d280000a 	mov	x10, #0x0                   	// #0
    6d10:	f2a00009 	movk	x9, #0x0, lsl #16
    6d14:	b940b108 	ldr	w8, [x8,#176]
    6d18:	f2a0000a 	movk	x10, #0x0, lsl #16
    6d1c:	f2c00009 	movk	x9, #0x0, lsl #32
    6d20:	f2c0000a 	movk	x10, #0x0, lsl #32
    6d24:	7100011f 	cmp	w8, #0x0
    6d28:	f2e00009 	movk	x9, #0x0, lsl #48
    6d2c:	f2e0000a 	movk	x10, #0x0, lsl #48
    6d30:	d2800008 	mov	x8, #0x0                   	// #0
    6d34:	9a890149 	csel	x9, x10, x9, eq
    6d38:	d280000a 	mov	x10, #0x0                   	// #0
    6d3c:	f2a00008 	movk	x8, #0x0, lsl #16
    6d40:	f2a0000a 	movk	x10, #0x0, lsl #16
    6d44:	f2c00008 	movk	x8, #0x0, lsl #32
    6d48:	f2c0000a 	movk	x10, #0x0, lsl #32
    6d4c:	f2e00008 	movk	x8, #0x0, lsl #48
    6d50:	f2e0000a 	movk	x10, #0x0, lsl #48
    6d54:	9a880148 	csel	x8, x10, x8, eq
    6d58:	d280000a 	mov	x10, #0x0                   	// #0
    6d5c:	f2a0000a 	movk	x10, #0x0, lsl #16
    6d60:	f2c0000a 	movk	x10, #0x0, lsl #32
    6d64:	f2e0000a 	movk	x10, #0x0, lsl #48
    6d68:	a905a269 	stp	x9, x8, [x19,#88]
    6d6c:	f900366a 	str	x10, [x19,#104]
    6d70:	f947c288 	ldr	x8, [x20,#3968]
    6d74:	d2800002 	mov	x2, #0x0                   	// #0
    6d78:	f2a00002 	movk	x2, #0x0, lsl #16
    6d7c:	f2c00002 	movk	x2, #0x0, lsl #32
    6d80:	b9400104 	ldr	w4, [x8]
    6d84:	91004260 	add	x0, x19, #0x10
    6d88:	f2e00002 	movk	x2, #0x0, lsl #48
    6d8c:	528007a1 	mov	w1, #0x3d                  	// #61
    6d90:	94000000 	bl	0 <snprintf>
    6d94:	f9002a74 	str	x20, [x19,#80]
    6d98:	b9400b48 	ldr	w8, [x26,#8]
    6d9c:	b9048a68 	str	w8, [x19,#1160]
    6da0:	f9458e88 	ldr	x8, [x20,#2840]
    6da4:	f9004e68 	str	x8, [x19,#152]
    6da8:	b4000275 	cbz	x21, 6df4 <stmmac_mdio_register+0x198>
    6dac:	aa1303e0 	mov	x0, x19
    6db0:	aa1503e1 	mov	x1, x21
    6db4:	94000000 	bl	0 <of_mdiobus_register>
    6db8:	2a0003f6 	mov	w22, w0
    6dbc:	340002c0 	cbz	w0, 6e14 <stmmac_mdio_register+0x1b8>
    6dc0:	f9400661 	ldr	x1, [x19,#8]
    6dc4:	d2800000 	mov	x0, #0x0                   	// #0
    6dc8:	f2a00000 	movk	x0, #0x0, lsl #16
    6dcc:	f2c00000 	movk	x0, #0x0, lsl #32
    6dd0:	f2e00000 	movk	x0, #0x0, lsl #48
    6dd4:	94000000 	bl	0 <printk>
    6dd8:	aa1303e0 	mov	x0, x19
    6ddc:	94000000 	bl	0 <mdiobus_free>
    6de0:	14000064 	b	6f70 <stmmac_mdio_register+0x314>
    6de4:	2a1f03f6 	mov	w22, wzr
    6de8:	14000062 	b	6f70 <stmmac_mdio_register+0x314>
    6dec:	12800176 	mov	w22, #0xfffffff4            	// #-12
    6df0:	14000060 	b	6f70 <stmmac_mdio_register+0x314>
    6df4:	d2800001 	mov	x1, #0x0                   	// #0
    6df8:	f2a00001 	movk	x1, #0x0, lsl #16
    6dfc:	f2c00001 	movk	x1, #0x0, lsl #32
    6e00:	f2e00001 	movk	x1, #0x0, lsl #48
    6e04:	aa1303e0 	mov	x0, x19
    6e08:	94000000 	bl	0 <__mdiobus_register>
    6e0c:	2a0003f6 	mov	w22, w0
    6e10:	35fffd80 	cbnz	w0, 6dc0 <stmmac_mdio_register+0x164>
    6e14:	f947c288 	ldr	x8, [x20,#3968]
    6e18:	f9400d08 	ldr	x8, [x8,#24]
    6e1c:	aa0802a8 	orr	x8, x21, x8
    6e20:	b5000a48 	cbnz	x8, 6f68 <stmmac_mdio_register+0x30c>
    6e24:	d2800008 	mov	x8, #0x0                   	// #0
    6e28:	d280001c 	mov	x28, #0x0                   	// #0
    6e2c:	d280001b 	mov	x27, #0x0                   	// #0
    6e30:	d2800016 	mov	x22, #0x0                   	// #0
    6e34:	d2800009 	mov	x9, #0x0                   	// #0
    6e38:	d280000a 	mov	x10, #0x0                   	// #0
    6e3c:	f2a00008 	movk	x8, #0x0, lsl #16
    6e40:	f2a0001c 	movk	x28, #0x0, lsl #16
    6e44:	f2a0001b 	movk	x27, #0x0, lsl #16
    6e48:	f2a00016 	movk	x22, #0x0, lsl #16
    6e4c:	f2a00009 	movk	x9, #0x0, lsl #16
    6e50:	f2a0000a 	movk	x10, #0x0, lsl #16
    6e54:	f2c00008 	movk	x8, #0x0, lsl #32
    6e58:	f2c0001c 	movk	x28, #0x0, lsl #32
    6e5c:	f2c0001b 	movk	x27, #0x0, lsl #32
    6e60:	f2c00016 	movk	x22, #0x0, lsl #32
    6e64:	f2c00009 	movk	x9, #0x0, lsl #32
    6e68:	f2c0000a 	movk	x10, #0x0, lsl #32
    6e6c:	aa1f03f5 	mov	x21, xzr
    6e70:	2a1f03f9 	mov	w25, wzr
    6e74:	f2e00008 	movk	x8, #0x0, lsl #48
    6e78:	f2e0001c 	movk	x28, #0x0, lsl #48
    6e7c:	f2e0001b 	movk	x27, #0x0, lsl #48
    6e80:	f2e00016 	movk	x22, #0x0, lsl #48
    6e84:	f2e00009 	movk	x9, #0x0, lsl #48
    6e88:	f2e0000a 	movk	x10, #0x0, lsl #48
    6e8c:	a900a3e9 	stp	x9, x8, [sp,#8]
    6e90:	f90003ea 	str	x10, [sp]
    6e94:	1400000c 	b	6ec4 <stmmac_mdio_register+0x268>
    6e98:	eb1702bf 	cmp	x21, x23
    6e9c:	9a9c0366 	csel	x6, x27, x28, eq
    6ea0:	aa1603e0 	mov	x0, x22
    6ea4:	aa1403e1 	mov	x1, x20
    6ea8:	2a1503e3 	mov	w3, w21
    6eac:	aa1903e4 	mov	x4, x25
    6eb0:	94000000 	bl	0 <printk>
    6eb4:	52800039 	mov	w25, #0x1                   	// #1
    6eb8:	910006b5 	add	x21, x21, #0x1
    6ebc:	f10082bf 	cmp	x21, #0x20
    6ec0:	54000520 	b.eq	6f64 <stmmac_mdio_register+0x308>
    6ec4:	aa1303e0 	mov	x0, x19
    6ec8:	2a1503e1 	mov	w1, w21
    6ecc:	94000000 	bl	0 <mdiobus_get_phy>
    6ed0:	b4ffff40 	cbz	x0, 6eb8 <stmmac_mdio_register+0x25c>
    6ed4:	f9400b48 	ldr	x8, [x26,#16]
    6ed8:	aa0003f8 	mov	x24, x0
    6edc:	b5000108 	cbnz	x8, 6efc <stmmac_mdio_register+0x2a0>
    6ee0:	b9401b48 	ldr	w8, [x26,#24]
    6ee4:	7100051f 	cmp	w8, #0x1
    6ee8:	540000ab 	b.lt	6efc <stmmac_mdio_register+0x2a0>
    6eec:	8b150a69 	add	x9, x19, x21, lsl #2
    6ef0:	b9049128 	str	w8, [x9,#1168]
    6ef4:	b9401b48 	ldr	w8, [x26,#24]
    6ef8:	b9038708 	str	w8, [x24,#900]
    6efc:	f947c289 	ldr	x9, [x20,#3968]
    6f00:	b9400528 	ldr	w8, [x9,#4]
    6f04:	3100051f 	cmn	w8, #0x1
    6f08:	54000081 	b.ne	6f18 <stmmac_mdio_register+0x2bc>
    6f0c:	b9000535 	str	w21, [x9,#4]
    6f10:	f947c288 	ldr	x8, [x20,#3968]
    6f14:	b9400508 	ldr	w8, [x8,#4]
    6f18:	b9438702 	ldr	w2, [x24,#900]
    6f1c:	2a0803f7 	mov	w23, w8
    6f20:	3100045f 	cmn	w2, #0x1
    6f24:	540000a0 	b.eq	6f38 <stmmac_mdio_register+0x2dc>
    6f28:	3100085f 	cmn	w2, #0x2
    6f2c:	540000a1 	b.ne	6f40 <stmmac_mdio_register+0x2e4>
    6f30:	f94007f9 	ldr	x25, [sp,#8]
    6f34:	14000007 	b	6f50 <stmmac_mdio_register+0x2f4>
    6f38:	f9400bf9 	ldr	x25, [sp,#16]
    6f3c:	14000005 	b	6f50 <stmmac_mdio_register+0x2f4>
    6f40:	f94003e1 	ldr	x1, [sp]
    6f44:	910073e0 	add	x0, sp, #0x1c
    6f48:	910073f9 	add	x25, sp, #0x1c
    6f4c:	94000000 	bl	0 <sprintf>
    6f50:	f9402b05 	ldr	x5, [x24,#80]
    6f54:	b9431b02 	ldr	w2, [x24,#792]
    6f58:	b5fffa05 	cbnz	x5, 6e98 <stmmac_mdio_register+0x23c>
    6f5c:	f9400b05 	ldr	x5, [x24,#16]
    6f60:	17ffffce 	b	6e98 <stmmac_mdio_register+0x23c>
    6f64:	34000199 	cbz	w25, 6f94 <stmmac_mdio_register+0x338>
    6f68:	2a1f03f6 	mov	w22, wzr
    6f6c:	f905b293 	str	x19, [x20,#2912]
    6f70:	2a1603e0 	mov	w0, w22
    6f74:	a9477bfd 	ldp	x29, x30, [sp,#112]
    6f78:	a9464ff4 	ldp	x20, x19, [sp,#96]
    6f7c:	a94557f6 	ldp	x22, x21, [sp,#80]
    6f80:	a9445ff8 	ldp	x24, x23, [sp,#64]
    6f84:	a94367fa 	ldp	x26, x25, [sp,#48]
    6f88:	a9426ffc 	ldp	x28, x27, [sp,#32]
    6f8c:	910203ff 	add	sp, sp, #0x80
    6f90:	d65f03c0 	ret
    6f94:	d2800000 	mov	x0, #0x0                   	// #0
    6f98:	f2a00000 	movk	x0, #0x0, lsl #16
    6f9c:	f2c00000 	movk	x0, #0x0, lsl #32
    6fa0:	f2e00000 	movk	x0, #0x0, lsl #48
    6fa4:	aa1403e1 	mov	x1, x20
    6fa8:	94000000 	bl	0 <printk>
    6fac:	aa1303e0 	mov	x0, x19
    6fb0:	94000000 	bl	0 <mdiobus_unregister>
    6fb4:	aa1303e0 	mov	x0, x19
    6fb8:	94000000 	bl	0 <mdiobus_free>
    6fbc:	12800256 	mov	w22, #0xffffffed            	// #-19
    6fc0:	17ffffec 	b	6f70 <stmmac_mdio_register+0x314>

0000000000006fc4 <stmmac_mdio_read_gmac4>:
    6fc4:	f81d0ff5 	str	x21, [sp,#-48]!
    6fc8:	a9014ff4 	stp	x20, x19, [sp,#16]
    6fcc:	a9027bfd 	stp	x29, x30, [sp,#32]
    6fd0:	910083fd 	add	x29, sp, #0x20
    6fd4:	2a0203f4 	mov	w20, w2
    6fd8:	2a0103f3 	mov	w19, w1
    6fdc:	aa0003f5 	mov	x21, x0
    6fe0:	94000000 	bl	0 <_mcount>
    6fe4:	f9402aa8 	ldr	x8, [x21,#80]
    6fe8:	d2800009 	mov	x9, #0x0                   	// #0
    6fec:	f2a00009 	movk	x9, #0x0, lsl #16
    6ff0:	f2c00009 	movk	x9, #0x0, lsl #32
    6ff4:	f945910a 	ldr	x10, [x8,#2848]
    6ff8:	f2e00009 	movk	x9, #0x0, lsl #48
    6ffc:	b951510c 	ldr	w12, [x8,#4432]
    7000:	f945850d 	ldr	x13, [x8,#2824]
    7004:	2945294b 	ldp	w11, w10, [x10,#40]
    7008:	f940012e 	ldr	x14, [x9]
    700c:	92805db0 	mov	x16, #0xfffffffffffffd12    	// #-750
    7010:	8b0b01ad 	add	x13, x13, x11
    7014:	cb0e020e 	sub	x14, x16, x14
    7018:	f9400130 	ldr	x16, [x9]
    701c:	b94001af 	ldr	w15, [x13]
    7020:	d5033d9f 	dsb	ld
    7024:	360000af 	tbz	w15, #0, 7038 <stmmac_mdio_read_gmac4+0x74>
    7028:	d503203f 	yield
    702c:	ab1001df 	cmn	x14, x16
    7030:	54ffff44 	b.mi	7018 <stmmac_mdio_read_gmac4+0x54>
    7034:	14000018 	b	7094 <stmmac_mdio_read_gmac4+0xd0>
    7038:	d5033e9f 	dsb	st
    703c:	f945850e 	ldr	x14, [x8,#2824]
    7040:	53185d8c 	lsl	w12, w12, #8
    7044:	5310128d 	ubfiz	w13, w20, #16, #5
    7048:	12100d8c 	and	w12, w12, #0xf0000
    704c:	330b126d 	bfi	w13, w19, #21, #5
    7050:	2a0c01ac 	orr	w12, w13, w12
    7054:	528001ad 	mov	w13, #0xd                   	// #13
    7058:	2a0d018c 	orr	w12, w12, w13
    705c:	8b0b01cd 	add	x13, x14, x11
    7060:	b90001ac 	str	w12, [x13]
    7064:	f945850c 	ldr	x12, [x8,#2824]
    7068:	f940012d 	ldr	x13, [x9]
    706c:	92805dae 	mov	x14, #0xfffffffffffffd12    	// #-750
    7070:	8b0b018b 	add	x11, x12, x11
    7074:	cb0d01cc 	sub	x12, x14, x13
    7078:	f940012d 	ldr	x13, [x9]
    707c:	b940016e 	ldr	w14, [x11]
    7080:	d5033d9f 	dsb	ld
    7084:	360000ce 	tbz	w14, #0, 709c <stmmac_mdio_read_gmac4+0xd8>
    7088:	d503203f 	yield
    708c:	ab0d019f 	cmn	x12, x13
    7090:	54ffff44 	b.mi	7078 <stmmac_mdio_read_gmac4+0xb4>
    7094:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    7098:	14000005 	b	70ac <stmmac_mdio_read_gmac4+0xe8>
    709c:	f9458508 	ldr	x8, [x8,#2824]
    70a0:	8b0a0108 	add	x8, x8, x10
    70a4:	b9400100 	ldr	w0, [x8]
    70a8:	d5033d9f 	dsb	ld
    70ac:	a9427bfd 	ldp	x29, x30, [sp,#32]
    70b0:	a9414ff4 	ldp	x20, x19, [sp,#16]
    70b4:	f84307f5 	ldr	x21, [sp],#48
    70b8:	d65f03c0 	ret

00000000000070bc <stmmac_mdio_write_gmac4>:
    70bc:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    70c0:	a9014ff4 	stp	x20, x19, [sp,#16]
    70c4:	a9027bfd 	stp	x29, x30, [sp,#32]
    70c8:	910083fd 	add	x29, sp, #0x20
    70cc:	2a0303f4 	mov	w20, w3
    70d0:	2a0203f5 	mov	w21, w2
    70d4:	2a0103f3 	mov	w19, w1
    70d8:	aa0003f6 	mov	x22, x0
    70dc:	94000000 	bl	0 <_mcount>
    70e0:	f9402ac9 	ldr	x9, [x22,#80]
    70e4:	d2800008 	mov	x8, #0x0                   	// #0
    70e8:	f2a00008 	movk	x8, #0x0, lsl #16
    70ec:	f2c00008 	movk	x8, #0x0, lsl #32
    70f0:	f945912c 	ldr	x12, [x9,#2848]
    70f4:	f2e00008 	movk	x8, #0x0, lsl #48
    70f8:	b951512b 	ldr	w11, [x9,#4432]
    70fc:	f945852d 	ldr	x13, [x9,#2824]
    7100:	2945318a 	ldp	w10, w12, [x12,#40]
    7104:	f940010e 	ldr	x14, [x8]
    7108:	92805db0 	mov	x16, #0xfffffffffffffd12    	// #-750
    710c:	8b0a01ad 	add	x13, x13, x10
    7110:	cb0e020e 	sub	x14, x16, x14
    7114:	f9400110 	ldr	x16, [x8]
    7118:	b94001af 	ldr	w15, [x13]
    711c:	d5033d9f 	dsb	ld
    7120:	360000af 	tbz	w15, #0, 7134 <stmmac_mdio_write_gmac4+0x78>
    7124:	d503203f 	yield
    7128:	ab1001df 	cmn	x14, x16
    712c:	54ffff44 	b.mi	7114 <stmmac_mdio_write_gmac4+0x58>
    7130:	1400001d 	b	71a4 <stmmac_mdio_write_gmac4+0xe8>
    7134:	d5033e9f 	dsb	st
    7138:	f945852d 	ldr	x13, [x9,#2824]
    713c:	12003e8e 	and	w14, w20, #0xffff
    7140:	53185d6b 	lsl	w11, w11, #8
    7144:	12100d6b 	and	w11, w11, #0xf0000
    7148:	8b0c01ac 	add	x12, x13, x12
    714c:	b900018e 	str	w14, [x12]
    7150:	d5033e9f 	dsb	st
    7154:	531012ad 	ubfiz	w13, w21, #16, #5
    7158:	f945852e 	ldr	x14, [x9,#2824]
    715c:	330b126d 	bfi	w13, w19, #21, #5
    7160:	528000ac 	mov	w12, #0x5                   	// #5
    7164:	2a0b01ab 	orr	w11, w13, w11
    7168:	2a0c016b 	orr	w11, w11, w12
    716c:	8b0a01cc 	add	x12, x14, x10
    7170:	b900018b 	str	w11, [x12]
    7174:	f9458529 	ldr	x9, [x9,#2824]
    7178:	f940010b 	ldr	x11, [x8]
    717c:	92805dac 	mov	x12, #0xfffffffffffffd12    	// #-750
    7180:	8b0a0129 	add	x9, x9, x10
    7184:	cb0b018a 	sub	x10, x12, x11
    7188:	f940010b 	ldr	x11, [x8]
    718c:	b940012c 	ldr	w12, [x9]
    7190:	d5033d9f 	dsb	ld
    7194:	360000cc 	tbz	w12, #0, 71ac <stmmac_mdio_write_gmac4+0xf0>
    7198:	d503203f 	yield
    719c:	ab0b015f 	cmn	x10, x11
    71a0:	54ffff44 	b.mi	7188 <stmmac_mdio_write_gmac4+0xcc>
    71a4:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    71a8:	14000002 	b	71b0 <stmmac_mdio_write_gmac4+0xf4>
    71ac:	2a1f03e0 	mov	w0, wzr
    71b0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    71b4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    71b8:	a8c357f6 	ldp	x22, x21, [sp],#48
    71bc:	d65f03c0 	ret

00000000000071c0 <stmmac_mdio_read>:
    71c0:	f81d0ff5 	str	x21, [sp,#-48]!
    71c4:	a9014ff4 	stp	x20, x19, [sp,#16]
    71c8:	a9027bfd 	stp	x29, x30, [sp,#32]
    71cc:	910083fd 	add	x29, sp, #0x20
    71d0:	2a0203f4 	mov	w20, w2
    71d4:	2a0103f3 	mov	w19, w1
    71d8:	aa0003f5 	mov	x21, x0
    71dc:	94000000 	bl	0 <_mcount>
    71e0:	f9402aa8 	ldr	x8, [x21,#80]
    71e4:	d2800009 	mov	x9, #0x0                   	// #0
    71e8:	f2a00009 	movk	x9, #0x0, lsl #16
    71ec:	f2c00009 	movk	x9, #0x0, lsl #32
    71f0:	f945910a 	ldr	x10, [x8,#2848]
    71f4:	f2e00009 	movk	x9, #0x0, lsl #48
    71f8:	b951510c 	ldr	w12, [x8,#4432]
    71fc:	f945850d 	ldr	x13, [x8,#2824]
    7200:	2945294b 	ldp	w11, w10, [x10,#40]
    7204:	f940012e 	ldr	x14, [x9]
    7208:	92805db0 	mov	x16, #0xfffffffffffffd12    	// #-750
    720c:	8b0b01ad 	add	x13, x13, x11
    7210:	cb0e020e 	sub	x14, x16, x14
    7214:	f9400130 	ldr	x16, [x9]
    7218:	b94001af 	ldr	w15, [x13]
    721c:	d5033d9f 	dsb	ld
    7220:	360000af 	tbz	w15, #0, 7234 <stmmac_mdio_read+0x74>
    7224:	d503203f 	yield
    7228:	ab1001df 	cmn	x14, x16
    722c:	54ffff44 	b.mi	7214 <stmmac_mdio_read+0x54>
    7230:	14000015 	b	7284 <stmmac_mdio_read+0xc4>
    7234:	d5033e9f 	dsb	st
    7238:	f945850e 	ldr	x14, [x8,#2824]
    723c:	531a128d 	ubfiz	w13, w20, #6, #5
    7240:	3315126d 	bfi	w13, w19, #11, #5
    7244:	331e0d8d 	bfi	w13, w12, #2, #4
    7248:	320001ac 	orr	w12, w13, #0x1
    724c:	8b0b01cd 	add	x13, x14, x11
    7250:	b90001ac 	str	w12, [x13]
    7254:	f945850c 	ldr	x12, [x8,#2824]
    7258:	f940012d 	ldr	x13, [x9]
    725c:	92805dae 	mov	x14, #0xfffffffffffffd12    	// #-750
    7260:	8b0b018b 	add	x11, x12, x11
    7264:	cb0d01cc 	sub	x12, x14, x13
    7268:	f940012d 	ldr	x13, [x9]
    726c:	b940016e 	ldr	w14, [x11]
    7270:	d5033d9f 	dsb	ld
    7274:	360000ce 	tbz	w14, #0, 728c <stmmac_mdio_read+0xcc>
    7278:	d503203f 	yield
    727c:	ab0d019f 	cmn	x12, x13
    7280:	54ffff44 	b.mi	7268 <stmmac_mdio_read+0xa8>
    7284:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    7288:	14000005 	b	729c <stmmac_mdio_read+0xdc>
    728c:	f9458508 	ldr	x8, [x8,#2824]
    7290:	8b0a0108 	add	x8, x8, x10
    7294:	b9400100 	ldr	w0, [x8]
    7298:	d5033d9f 	dsb	ld
    729c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    72a0:	a9414ff4 	ldp	x20, x19, [sp,#16]
    72a4:	f84307f5 	ldr	x21, [sp],#48
    72a8:	d65f03c0 	ret

00000000000072ac <stmmac_mdio_write>:
    72ac:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    72b0:	a9014ff4 	stp	x20, x19, [sp,#16]
    72b4:	a9027bfd 	stp	x29, x30, [sp,#32]
    72b8:	910083fd 	add	x29, sp, #0x20
    72bc:	2a0303f4 	mov	w20, w3
    72c0:	2a0203f5 	mov	w21, w2
    72c4:	2a0103f3 	mov	w19, w1
    72c8:	aa0003f6 	mov	x22, x0
    72cc:	94000000 	bl	0 <_mcount>
    72d0:	f9402ac9 	ldr	x9, [x22,#80]
    72d4:	d2800008 	mov	x8, #0x0                   	// #0
    72d8:	f2a00008 	movk	x8, #0x0, lsl #16
    72dc:	f2c00008 	movk	x8, #0x0, lsl #32
    72e0:	f945912c 	ldr	x12, [x9,#2848]
    72e4:	f2e00008 	movk	x8, #0x0, lsl #48
    72e8:	b951512b 	ldr	w11, [x9,#4432]
    72ec:	f945852d 	ldr	x13, [x9,#2824]
    72f0:	2945318a 	ldp	w10, w12, [x12,#40]
    72f4:	f940010e 	ldr	x14, [x8]
    72f8:	92805db0 	mov	x16, #0xfffffffffffffd12    	// #-750
    72fc:	8b0a01ad 	add	x13, x13, x10
    7300:	cb0e020e 	sub	x14, x16, x14
    7304:	f9400110 	ldr	x16, [x8]
    7308:	b94001af 	ldr	w15, [x13]
    730c:	d5033d9f 	dsb	ld
    7310:	360000af 	tbz	w15, #0, 7324 <stmmac_mdio_write+0x78>
    7314:	d503203f 	yield
    7318:	ab1001df 	cmn	x14, x16
    731c:	54ffff44 	b.mi	7304 <stmmac_mdio_write+0x58>
    7320:	1400001a 	b	7388 <stmmac_mdio_write+0xdc>
    7324:	d5033e9f 	dsb	st
    7328:	f945852d 	ldr	x13, [x9,#2824]
    732c:	12003e8f 	and	w15, w20, #0xffff
    7330:	531a12ae 	ubfiz	w14, w21, #6, #5
    7334:	3315126e 	bfi	w14, w19, #11, #5
    7338:	8b0c01ac 	add	x12, x13, x12
    733c:	b900018f 	str	w15, [x12]
    7340:	d5033e9f 	dsb	st
    7344:	f945852c 	ldr	x12, [x9,#2824]
    7348:	331e0d6e 	bfi	w14, w11, #2, #4
    734c:	320005cb 	orr	w11, w14, #0x3
    7350:	8b0a018c 	add	x12, x12, x10
    7354:	b900018b 	str	w11, [x12]
    7358:	f9458529 	ldr	x9, [x9,#2824]
    735c:	f940010b 	ldr	x11, [x8]
    7360:	92805dac 	mov	x12, #0xfffffffffffffd12    	// #-750
    7364:	8b0a0129 	add	x9, x9, x10
    7368:	cb0b018a 	sub	x10, x12, x11
    736c:	f940010b 	ldr	x11, [x8]
    7370:	b940012c 	ldr	w12, [x9]
    7374:	d5033d9f 	dsb	ld
    7378:	360000cc 	tbz	w12, #0, 7390 <stmmac_mdio_write+0xe4>
    737c:	d503203f 	yield
    7380:	ab0b015f 	cmn	x10, x11
    7384:	54ffff44 	b.mi	736c <stmmac_mdio_write+0xc0>
    7388:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    738c:	14000002 	b	7394 <stmmac_mdio_write+0xe8>
    7390:	2a1f03e0 	mov	w0, wzr
    7394:	a9427bfd 	ldp	x29, x30, [sp,#32]
    7398:	a9414ff4 	ldp	x20, x19, [sp,#16]
    739c:	a8c357f6 	ldp	x22, x21, [sp],#48
    73a0:	d65f03c0 	ret

00000000000073a4 <stmmac_mdio_unregister>:
    73a4:	f81e0ff3 	str	x19, [sp,#-32]!
    73a8:	a9017bfd 	stp	x29, x30, [sp,#16]
    73ac:	910043fd 	add	x29, sp, #0x10
    73b0:	aa0003f3 	mov	x19, x0
    73b4:	94000000 	bl	0 <_mcount>
    73b8:	f945b260 	ldr	x0, [x19,#2912]
    73bc:	b40000e0 	cbz	x0, 73d8 <stmmac_mdio_unregister+0x34>
    73c0:	94000000 	bl	0 <mdiobus_unregister>
    73c4:	f945b268 	ldr	x8, [x19,#2912]
    73c8:	f900291f 	str	xzr, [x8,#80]
    73cc:	f945b260 	ldr	x0, [x19,#2912]
    73d0:	94000000 	bl	0 <mdiobus_free>
    73d4:	f905b27f 	str	xzr, [x19,#2912]
    73d8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    73dc:	2a1f03e0 	mov	w0, wzr
    73e0:	f84207f3 	ldr	x19, [sp],#32
    73e4:	d65f03c0 	ret

00000000000073e8 <stmmac_is_jumbo_frm>:
    73e8:	f81e0ff3 	str	x19, [sp,#-32]!
    73ec:	a9017bfd 	stp	x29, x30, [sp,#16]
    73f0:	910043fd 	add	x29, sp, #0x10
    73f4:	2a0003f3 	mov	w19, w0
    73f8:	94000000 	bl	0 <_mcount>
    73fc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    7400:	713ffe7f 	cmp	w19, #0xfff
    7404:	1a9fd7e0 	cset	w0, gt
    7408:	f84207f3 	ldr	x19, [sp],#32
    740c:	d65f03c0 	ret

0000000000007410 <stmmac_jumbo_frm>:
    7410:	a9ba6ffc 	stp	x28, x27, [sp,#-96]!
    7414:	a90167fa 	stp	x26, x25, [sp,#16]
    7418:	a9025ff8 	stp	x24, x23, [sp,#32]
    741c:	a90357f6 	stp	x22, x21, [sp,#48]
    7420:	a9044ff4 	stp	x20, x19, [sp,#64]
    7424:	a9057bfd 	stp	x29, x30, [sp,#80]
    7428:	910143fd 	add	x29, sp, #0x50
    742c:	2a0203f5 	mov	w21, w2
    7430:	aa0103f8 	mov	x24, x1
    7434:	aa0003f4 	mov	x20, x0
    7438:	94000000 	bl	0 <_mcount>
    743c:	b940a308 	ldr	w8, [x24,#160]
    7440:	b940b309 	ldr	w9, [x24,#176]
    7444:	b948b68a 	ldr	w10, [x20,#2228]
    7448:	b9401a93 	ldr	w19, [x20,#24]
    744c:	4b090117 	sub	w23, w8, w9
    7450:	3400008a 	cbz	w10, 7460 <stmmac_jumbo_frm+0x50>
    7454:	f9400288 	ldr	x8, [x20]
    7458:	8b131516 	add	x22, x8, x19, lsl #5
    745c:	14000003 	b	7468 <stmmac_jumbo_frm+0x58>
    7460:	f9400688 	ldr	x8, [x20,#8]
    7464:	8b131116 	add	x22, x8, x19, lsl #4
    7468:	f9434288 	ldr	x8, [x20,#1664]
    746c:	f9410e80 	ldr	x0, [x20,#536]
    7470:	52840009 	mov	w9, #0x2000                	// #8192
    7474:	5281000b 	mov	w11, #0x800                 	// #2048
    7478:	b940390a 	ldr	w10, [x8,#56]
    747c:	f940cb08 	ldr	x8, [x24,#400]
    7480:	d2dff7fc 	mov	x28, #0xffbf00000000        	// #281195803836416
    7484:	f2fffffc 	movk	x28, #0xffff, lsl #48
    7488:	7100015f 	cmp	w10, #0x0
    748c:	1a890179 	csel	w25, w11, w9, eq
    7490:	71400aff 	cmp	w23, #0x2, lsl #12
    7494:	540004c9 	b.ls	752c <stmmac_jumbo_frm+0x11c>
    7498:	b4000060 	cbz	x0, 74a4 <stmmac_jumbo_frm+0x94>
    749c:	f9412409 	ldr	x9, [x0,#584]
    74a0:	b50000a9 	cbnz	x9, 74b4 <stmmac_jumbo_frm+0xa4>
    74a4:	d2800009 	mov	x9, #0x0                   	// #0
    74a8:	f2a00009 	movk	x9, #0x0, lsl #16
    74ac:	f2c00009 	movk	x9, #0x0, lsl #32
    74b0:	f2e00009 	movk	x9, #0x0, lsl #48
    74b4:	f9401129 	ldr	x9, [x9,#32]
    74b8:	d346fd0a 	lsr	x10, x8, #6
    74bc:	927a654a 	and	x10, x10, #0xffffffc0
    74c0:	aa1c0141 	orr	x1, x10, x28
    74c4:	92402d02 	and	x2, x8, #0xfff
    74c8:	52800024 	mov	w4, #0x1                   	// #1
    74cc:	aa1903e3 	mov	x3, x25
    74d0:	aa1f03e5 	mov	x5, xzr
    74d4:	d63f0120 	blr	x9
    74d8:	aa0003fa 	mov	x26, x0
    74dc:	b9000ada 	str	w26, [x22,#8]
    74e0:	f9410e80 	ldr	x0, [x20,#536]
    74e4:	92407f5b 	and	x27, x26, #0xffffffff
    74e8:	b40006c0 	cbz	x0, 75c0 <stmmac_jumbo_frm+0x1b0>
    74ec:	f9412408 	ldr	x8, [x0,#584]
    74f0:	b4000688 	cbz	x8, 75c0 <stmmac_jumbo_frm+0x1b0>
    74f4:	f9403908 	ldr	x8, [x8,#112]
    74f8:	b4000708 	cbz	x8, 75d8 <stmmac_jumbo_frm+0x1c8>
    74fc:	b4000060 	cbz	x0, 7508 <stmmac_jumbo_frm+0xf8>
    7500:	f9412408 	ldr	x8, [x0,#584]
    7504:	b50000a8 	cbnz	x8, 7518 <stmmac_jumbo_frm+0x108>
    7508:	d2800008 	mov	x8, #0x0                   	// #0
    750c:	f2a00008 	movk	x8, #0x0, lsl #16
    7510:	f2c00008 	movk	x8, #0x0, lsl #32
    7514:	f2e00008 	movk	x8, #0x0, lsl #48
    7518:	f9403908 	ldr	x8, [x8,#112]
    751c:	aa1b03e1 	mov	x1, x27
    7520:	d63f0100 	blr	x8
    7524:	350012c0 	cbnz	w0, 777c <stmmac_jumbo_frm+0x36c>
    7528:	1400002c 	b	75d8 <stmmac_jumbo_frm+0x1c8>
    752c:	2a1703e3 	mov	w3, w23
    7530:	b4000060 	cbz	x0, 753c <stmmac_jumbo_frm+0x12c>
    7534:	f9412409 	ldr	x9, [x0,#584]
    7538:	b50000a9 	cbnz	x9, 754c <stmmac_jumbo_frm+0x13c>
    753c:	d2800009 	mov	x9, #0x0                   	// #0
    7540:	f2a00009 	movk	x9, #0x0, lsl #16
    7544:	f2c00009 	movk	x9, #0x0, lsl #32
    7548:	f2e00009 	movk	x9, #0x0, lsl #48
    754c:	f9401129 	ldr	x9, [x9,#32]
    7550:	d346fd0a 	lsr	x10, x8, #6
    7554:	927a654a 	and	x10, x10, #0xffffffc0
    7558:	aa1c0141 	orr	x1, x10, x28
    755c:	92402d02 	and	x2, x8, #0xfff
    7560:	52800024 	mov	w4, #0x1                   	// #1
    7564:	aa1f03e5 	mov	x5, xzr
    7568:	d63f0120 	blr	x9
    756c:	aa0003f8 	mov	x24, x0
    7570:	b9000ad8 	str	w24, [x22,#8]
    7574:	f9410e80 	ldr	x0, [x20,#536]
    7578:	92407f19 	and	x25, x24, #0xffffffff
    757c:	b4000740 	cbz	x0, 7664 <stmmac_jumbo_frm+0x254>
    7580:	f9412408 	ldr	x8, [x0,#584]
    7584:	b4000708 	cbz	x8, 7664 <stmmac_jumbo_frm+0x254>
    7588:	f9403908 	ldr	x8, [x8,#112]
    758c:	b4000788 	cbz	x8, 767c <stmmac_jumbo_frm+0x26c>
    7590:	b4000060 	cbz	x0, 759c <stmmac_jumbo_frm+0x18c>
    7594:	f9412408 	ldr	x8, [x0,#584]
    7598:	b50000a8 	cbnz	x8, 75ac <stmmac_jumbo_frm+0x19c>
    759c:	d2800008 	mov	x8, #0x0                   	// #0
    75a0:	f2a00008 	movk	x8, #0x0, lsl #16
    75a4:	f2c00008 	movk	x8, #0x0, lsl #32
    75a8:	f2e00008 	movk	x8, #0x0, lsl #48
    75ac:	f9403908 	ldr	x8, [x8,#112]
    75b0:	aa1903e1 	mov	x1, x25
    75b4:	d63f0100 	blr	x8
    75b8:	35000e20 	cbnz	w0, 777c <stmmac_jumbo_frm+0x36c>
    75bc:	14000030 	b	767c <stmmac_jumbo_frm+0x26c>
    75c0:	d2800008 	mov	x8, #0x0                   	// #0
    75c4:	f2a00008 	movk	x8, #0x0, lsl #16
    75c8:	f2c00008 	movk	x8, #0x0, lsl #32
    75cc:	f2e00008 	movk	x8, #0x0, lsl #48
    75d0:	f9403908 	ldr	x8, [x8,#112]
    75d4:	b5fff948 	cbnz	x8, 74fc <stmmac_jumbo_frm+0xec>
    75d8:	f9401a88 	ldr	x8, [x20,#48]
    75dc:	8b130669 	add	x9, x19, x19, lsl #1
    75e0:	d37df129 	lsl	x9, x9, #3
    75e4:	5280002a 	mov	w10, #0x1                   	// #1
    75e8:	f829691b 	str	x27, [x8,x9]
    75ec:	f9401a88 	ldr	x8, [x20,#48]
    75f0:	1140074b 	add	w11, w26, #0x1, lsl #12
    75f4:	710002bf 	cmp	w21, #0x0
    75f8:	1a9f07e3 	cset	w3, ne
    75fc:	8b090108 	add	x8, x8, x9
    7600:	b9000d19 	str	w25, [x8,#12]
    7604:	f9401a88 	ldr	x8, [x20,#48]
    7608:	52800021 	mov	w1, #0x1                   	// #1
    760c:	52800044 	mov	w4, #0x2                   	// #2
    7610:	aa1603e0 	mov	x0, x22
    7614:	8b090108 	add	x8, x8, x9
    7618:	3900450a 	strb	w10, [x8,#17]
    761c:	b9000ecb 	str	w11, [x22,#12]
    7620:	f9411288 	ldr	x8, [x20,#544]
    7624:	2a1903e2 	mov	w2, w25
    7628:	2a1f03e5 	mov	w5, wzr
    762c:	2a1f03e6 	mov	w6, wzr
    7630:	f9400508 	ldr	x8, [x8,#8]
    7634:	4b1902f7 	sub	w23, w23, w25
    7638:	f9400908 	ldr	x8, [x8,#16]
    763c:	d63f0100 	blr	x8
    7640:	f9400a88 	ldr	x8, [x20,#16]
    7644:	11000669 	add	w9, w19, #0x1
    7648:	f833791f 	str	xzr, [x8,x19,lsl #3]
    764c:	b948b688 	ldr	w8, [x20,#2228]
    7650:	12002133 	and	w19, w9, #0x1ff
    7654:	34000428 	cbz	w8, 76d8 <stmmac_jumbo_frm+0x2c8>
    7658:	f9400288 	ldr	x8, [x20]
    765c:	8b131516 	add	x22, x8, x19, lsl #5
    7660:	14000020 	b	76e0 <stmmac_jumbo_frm+0x2d0>
    7664:	d2800008 	mov	x8, #0x0                   	// #0
    7668:	f2a00008 	movk	x8, #0x0, lsl #16
    766c:	f2c00008 	movk	x8, #0x0, lsl #32
    7670:	f2e00008 	movk	x8, #0x0, lsl #48
    7674:	f9403908 	ldr	x8, [x8,#112]
    7678:	b5fff8c8 	cbnz	x8, 7590 <stmmac_jumbo_frm+0x180>
    767c:	f9401a88 	ldr	x8, [x20,#48]
    7680:	8b130669 	add	x9, x19, x19, lsl #1
    7684:	d37df129 	lsl	x9, x9, #3
    7688:	5280002a 	mov	w10, #0x1                   	// #1
    768c:	f8296919 	str	x25, [x8,x9]
    7690:	f9401a88 	ldr	x8, [x20,#48]
    7694:	1140070b 	add	w11, w24, #0x1, lsl #12
    7698:	710002bf 	cmp	w21, #0x0
    769c:	1a9f07e3 	cset	w3, ne
    76a0:	8b090108 	add	x8, x8, x9
    76a4:	b9000d17 	str	w23, [x8,#12]
    76a8:	f9401a88 	ldr	x8, [x20,#48]
    76ac:	52800021 	mov	w1, #0x1                   	// #1
    76b0:	52800044 	mov	w4, #0x2                   	// #2
    76b4:	52800026 	mov	w6, #0x1                   	// #1
    76b8:	8b090108 	add	x8, x8, x9
    76bc:	3900450a 	strb	w10, [x8,#17]
    76c0:	b9000ecb 	str	w11, [x22,#12]
    76c4:	f9411288 	ldr	x8, [x20,#544]
    76c8:	aa1603e0 	mov	x0, x22
    76cc:	2a1703e2 	mov	w2, w23
    76d0:	2a1f03e5 	mov	w5, wzr
    76d4:	14000048 	b	77f4 <stmmac_jumbo_frm+0x3e4>
    76d8:	f9400688 	ldr	x8, [x20,#8]
    76dc:	8b335116 	add	x22, x8, w19, uxtw #4
    76e0:	f940cb08 	ldr	x8, [x24,#400]
    76e4:	f9410e80 	ldr	x0, [x20,#536]
    76e8:	2a1703e3 	mov	w3, w23
    76ec:	8b190108 	add	x8, x8, x25
    76f0:	b4000060 	cbz	x0, 76fc <stmmac_jumbo_frm+0x2ec>
    76f4:	f9412409 	ldr	x9, [x0,#584]
    76f8:	b50000a9 	cbnz	x9, 770c <stmmac_jumbo_frm+0x2fc>
    76fc:	d2800009 	mov	x9, #0x0                   	// #0
    7700:	f2a00009 	movk	x9, #0x0, lsl #16
    7704:	f2c00009 	movk	x9, #0x0, lsl #32
    7708:	f2e00009 	movk	x9, #0x0, lsl #48
    770c:	f9401129 	ldr	x9, [x9,#32]
    7710:	d346fd0a 	lsr	x10, x8, #6
    7714:	927a654a 	and	x10, x10, #0xffffffc0
    7718:	aa1c0141 	orr	x1, x10, x28
    771c:	92402d02 	and	x2, x8, #0xfff
    7720:	52800024 	mov	w4, #0x1                   	// #1
    7724:	aa1f03e5 	mov	x5, xzr
    7728:	d63f0120 	blr	x9
    772c:	aa0003f8 	mov	x24, x0
    7730:	b9000ad8 	str	w24, [x22,#8]
    7734:	f9410e80 	ldr	x0, [x20,#536]
    7738:	92407f19 	and	x25, x24, #0xffffffff
    773c:	b4000240 	cbz	x0, 7784 <stmmac_jumbo_frm+0x374>
    7740:	f9412408 	ldr	x8, [x0,#584]
    7744:	b4000208 	cbz	x8, 7784 <stmmac_jumbo_frm+0x374>
    7748:	f9403908 	ldr	x8, [x8,#112]
    774c:	b4000288 	cbz	x8, 779c <stmmac_jumbo_frm+0x38c>
    7750:	b4000060 	cbz	x0, 775c <stmmac_jumbo_frm+0x34c>
    7754:	f9412408 	ldr	x8, [x0,#584]
    7758:	b50000a8 	cbnz	x8, 776c <stmmac_jumbo_frm+0x35c>
    775c:	d2800008 	mov	x8, #0x0                   	// #0
    7760:	f2a00008 	movk	x8, #0x0, lsl #16
    7764:	f2c00008 	movk	x8, #0x0, lsl #32
    7768:	f2e00008 	movk	x8, #0x0, lsl #48
    776c:	f9403908 	ldr	x8, [x8,#112]
    7770:	aa1903e1 	mov	x1, x25
    7774:	d63f0100 	blr	x8
    7778:	34000120 	cbz	w0, 779c <stmmac_jumbo_frm+0x38c>
    777c:	12800013 	mov	w19, #0xffffffff            	// #-1
    7780:	14000021 	b	7804 <stmmac_jumbo_frm+0x3f4>
    7784:	d2800008 	mov	x8, #0x0                   	// #0
    7788:	f2a00008 	movk	x8, #0x0, lsl #16
    778c:	f2c00008 	movk	x8, #0x0, lsl #32
    7790:	f2e00008 	movk	x8, #0x0, lsl #48
    7794:	f9403908 	ldr	x8, [x8,#112]
    7798:	b5fffdc8 	cbnz	x8, 7750 <stmmac_jumbo_frm+0x340>
    779c:	f9401a88 	ldr	x8, [x20,#48]
    77a0:	52800309 	mov	w9, #0x18                  	// #24
    77a4:	9ba97e6a 	umull	x10, w19, w9
    77a8:	1140070b 	add	w11, w24, #0x1, lsl #12
    77ac:	f82a6919 	str	x25, [x8,x10]
    77b0:	f9401a88 	ldr	x8, [x20,#48]
    77b4:	5280002a 	mov	w10, #0x1                   	// #1
    77b8:	710002bf 	cmp	w21, #0x0
    77bc:	1a9f07e3 	cset	w3, ne
    77c0:	9ba92268 	umaddl	x8, w19, w9, x8
    77c4:	b9000d17 	str	w23, [x8,#12]
    77c8:	f9401a88 	ldr	x8, [x20,#48]
    77cc:	52800044 	mov	w4, #0x2                   	// #2
    77d0:	52800025 	mov	w5, #0x1                   	// #1
    77d4:	52800026 	mov	w6, #0x1                   	// #1
    77d8:	9ba92268 	umaddl	x8, w19, w9, x8
    77dc:	3900450a 	strb	w10, [x8,#17]
    77e0:	b9000ecb 	str	w11, [x22,#12]
    77e4:	f9411288 	ldr	x8, [x20,#544]
    77e8:	aa1603e0 	mov	x0, x22
    77ec:	2a1f03e1 	mov	w1, wzr
    77f0:	2a1703e2 	mov	w2, w23
    77f4:	f9400508 	ldr	x8, [x8,#8]
    77f8:	f9400908 	ldr	x8, [x8,#16]
    77fc:	d63f0100 	blr	x8
    7800:	b9001a93 	str	w19, [x20,#24]
    7804:	2a1303e0 	mov	w0, w19
    7808:	a9457bfd 	ldp	x29, x30, [sp,#80]
    780c:	a9444ff4 	ldp	x20, x19, [sp,#64]
    7810:	a94357f6 	ldp	x22, x21, [sp,#48]
    7814:	a9425ff8 	ldp	x24, x23, [sp,#32]
    7818:	a94167fa 	ldp	x26, x25, [sp,#16]
    781c:	a8c66ffc 	ldp	x28, x27, [sp],#96
    7820:	d65f03c0 	ret

0000000000007824 <stmmac_set_16kib_bfsize>:
    7824:	f81e0ff3 	str	x19, [sp,#-32]!
    7828:	a9017bfd 	stp	x29, x30, [sp,#16]
    782c:	910043fd 	add	x29, sp, #0x10
    7830:	2a0003f3 	mov	w19, w0
    7834:	94000000 	bl	0 <_mcount>
    7838:	a9417bfd 	ldp	x29, x30, [sp,#16]
    783c:	71400a7f 	cmp	w19, #0x2, lsl #12
    7840:	5287fe08 	mov	w8, #0x3ff0                	// #16368
    7844:	1a9fa100 	csel	w0, w8, wzr, ge
    7848:	f84207f3 	ldr	x19, [sp],#32
    784c:	d65f03c0 	ret

0000000000007850 <stmmac_init_desc3>:
    7850:	f81e0ff3 	str	x19, [sp,#-32]!
    7854:	a9017bfd 	stp	x29, x30, [sp,#16]
    7858:	910043fd 	add	x29, sp, #0x10
    785c:	aa0003f3 	mov	x19, x0
    7860:	94000000 	bl	0 <_mcount>
    7864:	b9400a68 	ldr	w8, [x19,#8]
    7868:	11400908 	add	w8, w8, #0x2, lsl #12
    786c:	b9000e68 	str	w8, [x19,#12]
    7870:	a9417bfd 	ldp	x29, x30, [sp,#16]
    7874:	f84207f3 	ldr	x19, [sp],#32
    7878:	d65f03c0 	ret

000000000000787c <stmmac_refill_desc3>:
    787c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    7880:	a9017bfd 	stp	x29, x30, [sp,#16]
    7884:	910043fd 	add	x29, sp, #0x10
    7888:	aa0103f3 	mov	x19, x1
    788c:	aa0003f4 	mov	x20, x0
    7890:	94000000 	bl	0 <_mcount>
    7894:	b940e288 	ldr	w8, [x20,#224]
    7898:	7140091f 	cmp	w8, #0x2, lsl #12
    789c:	54000083 	b.cc	78ac <stmmac_refill_desc3+0x30>
    78a0:	b9400a68 	ldr	w8, [x19,#8]
    78a4:	11400908 	add	w8, w8, #0x2, lsl #12
    78a8:	b9000e68 	str	w8, [x19,#12]
    78ac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    78b0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    78b4:	d65f03c0 	ret

00000000000078b8 <stmmac_clean_desc3>:
    78b8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    78bc:	a9017bfd 	stp	x29, x30, [sp,#16]
    78c0:	910043fd 	add	x29, sp, #0x10
    78c4:	aa0103f3 	mov	x19, x1
    78c8:	aa0003f4 	mov	x20, x0
    78cc:	94000000 	bl	0 <_mcount>
    78d0:	b9401e88 	ldr	w8, [x20,#28]
    78d4:	f9401a89 	ldr	x9, [x20,#48]
    78d8:	5280030a 	mov	w10, #0x18                  	// #24
    78dc:	9b0a250a 	madd	x10, x8, x10, x9
    78e0:	3940454a 	ldrb	w10, [x10,#17]
    78e4:	3500018a 	cbnz	w10, 7914 <stmmac_clean_desc3+0x5c>
    78e8:	5280030a 	mov	w10, #0x18                  	// #24
    78ec:	9b0a2508 	madd	x8, x8, x10, x9
    78f0:	39404108 	ldrb	w8, [x8,#16]
    78f4:	340000a8 	cbz	w8, 7908 <stmmac_clean_desc3+0x50>
    78f8:	b948b688 	ldr	w8, [x20,#2228]
    78fc:	35000068 	cbnz	w8, 7908 <stmmac_clean_desc3+0x50>
    7900:	b9404688 	ldr	w8, [x20,#68]
    7904:	35000088 	cbnz	w8, 7914 <stmmac_clean_desc3+0x5c>
    7908:	a9417bfd 	ldp	x29, x30, [sp,#16]
    790c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    7910:	d65f03c0 	ret
    7914:	b9000e7f 	str	wzr, [x19,#12]
    7918:	17fffffc 	b	7908 <stmmac_clean_desc3+0x50>

000000000000791c <stmmac_init_dma_chain>:
    791c:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    7920:	a9014ff4 	stp	x20, x19, [sp,#16]
    7924:	a9027bfd 	stp	x29, x30, [sp,#32]
    7928:	910083fd 	add	x29, sp, #0x20
    792c:	2a0303f6 	mov	w22, w3
    7930:	2a0203f4 	mov	w20, w2
    7934:	aa0103f3 	mov	x19, x1
    7938:	aa0003f5 	mov	x21, x0
    793c:	94000000 	bl	0 <_mcount>
    7940:	7100069f 	cmp	w20, #0x1
    7944:	34000136 	cbz	w22, 7968 <stmmac_init_dma_chain+0x4c>
    7948:	54000820 	b.eq	7a4c <stmmac_init_dma_chain+0x130>
    794c:	51000a88 	sub	w8, w20, #0x2
    7950:	9100050a 	add	x10, x8, #0x1
    7954:	f100095f 	cmp	x10, #0x2
    7958:	54000182 	b.cs	7988 <stmmac_init_dma_chain+0x6c>
    795c:	2a1f03e8 	mov	w8, wzr
    7960:	aa1303e9 	mov	x9, x19
    7964:	14000019 	b	79c8 <stmmac_init_dma_chain+0xac>
    7968:	54000720 	b.eq	7a4c <stmmac_init_dma_chain+0x130>
    796c:	51000a88 	sub	w8, w20, #0x2
    7970:	9100050a 	add	x10, x8, #0x1
    7974:	f100095f 	cmp	x10, #0x2
    7978:	540003a2 	b.cs	79ec <stmmac_init_dma_chain+0xd0>
    797c:	2a1f03e8 	mov	w8, wzr
    7980:	aa1303e9 	mov	x9, x19
    7984:	1400002a 	b	7a2c <stmmac_init_dma_chain+0x110>
    7988:	927f7d48 	and	x8, x10, #0x1fffffffe
    798c:	d37be909 	lsl	x9, x8, #5
    7990:	9100b2ab 	add	x11, x21, #0x2c
    7994:	8b0902b5 	add	x21, x21, x9
    7998:	8b130129 	add	x9, x9, x19
    799c:	1101026c 	add	w12, w19, #0x40
    79a0:	aa0803ed 	mov	x13, x8
    79a4:	5100818e 	sub	w14, w12, #0x20
    79a8:	b900016c 	str	w12, [x11]
    79ac:	f10009ad 	subs	x13, x13, #0x2
    79b0:	b81e016e 	stur	w14, [x11,#-32]
    79b4:	9101016b 	add	x11, x11, #0x40
    79b8:	1101018c 	add	w12, w12, #0x40
    79bc:	54ffff41 	b.ne	79a4 <stmmac_init_dma_chain+0x88>
    79c0:	eb08015f 	cmp	x10, x8
    79c4:	54000440 	b.eq	7a4c <stmmac_init_dma_chain+0x130>
    79c8:	2a2803e8 	mvn	w8, w8
    79cc:	11008129 	add	w9, w9, #0x20
    79d0:	0b140108 	add	w8, w8, w20
    79d4:	b9000ea9 	str	w9, [x21,#12]
    79d8:	910082b5 	add	x21, x21, #0x20
    79dc:	71000508 	subs	w8, w8, #0x1
    79e0:	11008129 	add	w9, w9, #0x20
    79e4:	54ffff81 	b.ne	79d4 <stmmac_init_dma_chain+0xb8>
    79e8:	14000019 	b	7a4c <stmmac_init_dma_chain+0x130>
    79ec:	927f7d48 	and	x8, x10, #0x1fffffffe
    79f0:	d37ced09 	lsl	x9, x8, #4
    79f4:	910072ab 	add	x11, x21, #0x1c
    79f8:	8b0902b5 	add	x21, x21, x9
    79fc:	8b130129 	add	x9, x9, x19
    7a00:	1100826c 	add	w12, w19, #0x20
    7a04:	aa0803ed 	mov	x13, x8
    7a08:	5100418e 	sub	w14, w12, #0x10
    7a0c:	b900016c 	str	w12, [x11]
    7a10:	f10009ad 	subs	x13, x13, #0x2
    7a14:	b81f016e 	stur	w14, [x11,#-16]
    7a18:	9100816b 	add	x11, x11, #0x20
    7a1c:	1100818c 	add	w12, w12, #0x20
    7a20:	54ffff41 	b.ne	7a08 <stmmac_init_dma_chain+0xec>
    7a24:	eb08015f 	cmp	x10, x8
    7a28:	54000120 	b.eq	7a4c <stmmac_init_dma_chain+0x130>
    7a2c:	2a2803e8 	mvn	w8, w8
    7a30:	11004129 	add	w9, w9, #0x10
    7a34:	0b140108 	add	w8, w8, w20
    7a38:	b9000ea9 	str	w9, [x21,#12]
    7a3c:	910042b5 	add	x21, x21, #0x10
    7a40:	71000508 	subs	w8, w8, #0x1
    7a44:	11004129 	add	w9, w9, #0x10
    7a48:	54ffff81 	b.ne	7a38 <stmmac_init_dma_chain+0x11c>
    7a4c:	b9000eb3 	str	w19, [x21,#12]
    7a50:	a9427bfd 	ldp	x29, x30, [sp,#32]
    7a54:	a9414ff4 	ldp	x20, x19, [sp,#16]
    7a58:	a8c357f6 	ldp	x22, x21, [sp],#48
    7a5c:	d65f03c0 	ret

0000000000007a60 <stmmac_is_jumbo_frm>:
    7a60:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    7a64:	a9017bfd 	stp	x29, x30, [sp,#16]
    7a68:	910043fd 	add	x29, sp, #0x10
    7a6c:	2a0103f3 	mov	w19, w1
    7a70:	2a0003f4 	mov	w20, w0
    7a74:	94000000 	bl	0 <_mcount>
    7a78:	71400a9f 	cmp	w20, #0x2, lsl #12
    7a7c:	5400004d 	b.le	7a84 <stmmac_is_jumbo_frm+0x24>
    7a80:	350000b3 	cbnz	w19, 7a94 <stmmac_is_jumbo_frm+0x34>
    7a84:	7120069f 	cmp	w20, #0x801
    7a88:	2a1f03e0 	mov	w0, wzr
    7a8c:	5400006b 	b.lt	7a98 <stmmac_is_jumbo_frm+0x38>
    7a90:	35000053 	cbnz	w19, 7a98 <stmmac_is_jumbo_frm+0x38>
    7a94:	52800020 	mov	w0, #0x1                   	// #1
    7a98:	a9417bfd 	ldp	x29, x30, [sp,#16]
    7a9c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    7aa0:	d65f03c0 	ret

0000000000007aa4 <stmmac_jumbo_frm>:
    7aa4:	d101c3ff 	sub	sp, sp, #0x70
    7aa8:	a9016ffc 	stp	x28, x27, [sp,#16]
    7aac:	a90267fa 	stp	x26, x25, [sp,#32]
    7ab0:	a9035ff8 	stp	x24, x23, [sp,#48]
    7ab4:	a90457f6 	stp	x22, x21, [sp,#64]
    7ab8:	a9054ff4 	stp	x20, x19, [sp,#80]
    7abc:	a9067bfd 	stp	x29, x30, [sp,#96]
    7ac0:	910183fd 	add	x29, sp, #0x60
    7ac4:	b9000fe2 	str	w2, [sp,#12]
    7ac8:	aa0103f5 	mov	x21, x1
    7acc:	aa0003f4 	mov	x20, x0
    7ad0:	94000000 	bl	0 <_mcount>
    7ad4:	f9434288 	ldr	x8, [x20,#1664]
    7ad8:	b9401a93 	ldr	w19, [x20,#24]
    7adc:	f9400699 	ldr	x25, [x20,#8]
    7ae0:	b940a2bc 	ldr	w28, [x21,#160]
    7ae4:	b940390a 	ldr	w10, [x8,#56]
    7ae8:	b940b2bb 	ldr	w27, [x21,#176]
    7aec:	f9410e80 	ldr	x0, [x20,#536]
    7af0:	f940caa8 	ldr	x8, [x21,#400]
    7af4:	52840009 	mov	w9, #0x2000                	// #8192
    7af8:	5281000b 	mov	w11, #0x800                 	// #2048
    7afc:	7100015f 	cmp	w10, #0x0
    7b00:	1a890177 	csel	w23, w11, w9, eq
    7b04:	d280001a 	mov	x26, #0x0                   	// #0
    7b08:	f90003f5 	str	x21, [sp]
    7b0c:	b4000060 	cbz	x0, 7b18 <stmmac_jumbo_frm+0x74>
    7b10:	f9412409 	ldr	x9, [x0,#584]
    7b14:	b50000a9 	cbnz	x9, 7b28 <stmmac_jumbo_frm+0x84>
    7b18:	aa1a03e9 	mov	x9, x26
    7b1c:	f2a00009 	movk	x9, #0x0, lsl #16
    7b20:	f2c00009 	movk	x9, #0x0, lsl #32
    7b24:	f2e00009 	movk	x9, #0x0, lsl #48
    7b28:	f9401129 	ldr	x9, [x9,#32]
    7b2c:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    7b30:	d346fd0a 	lsr	x10, x8, #6
    7b34:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    7b38:	927a654a 	and	x10, x10, #0xffffffc0
    7b3c:	aa0b0141 	orr	x1, x10, x11
    7b40:	92402d02 	and	x2, x8, #0xfff
    7b44:	52800024 	mov	w4, #0x1                   	// #1
    7b48:	aa1703e3 	mov	x3, x23
    7b4c:	aa1f03e5 	mov	x5, xzr
    7b50:	d63f0120 	blr	x9
    7b54:	aa0003e8 	mov	x8, x0
    7b58:	8b131329 	add	x9, x25, x19, lsl #4
    7b5c:	b9000928 	str	w8, [x9,#8]
    7b60:	f9410e80 	ldr	x0, [x20,#536]
    7b64:	92407d18 	and	x24, x8, #0xffffffff
    7b68:	b4000240 	cbz	x0, 7bb0 <stmmac_jumbo_frm+0x10c>
    7b6c:	f9412408 	ldr	x8, [x0,#584]
    7b70:	b4000208 	cbz	x8, 7bb0 <stmmac_jumbo_frm+0x10c>
    7b74:	f9403908 	ldr	x8, [x8,#112]
    7b78:	b4000288 	cbz	x8, 7bc8 <stmmac_jumbo_frm+0x124>
    7b7c:	b4000060 	cbz	x0, 7b88 <stmmac_jumbo_frm+0xe4>
    7b80:	f9412408 	ldr	x8, [x0,#584]
    7b84:	b50000a8 	cbnz	x8, 7b98 <stmmac_jumbo_frm+0xf4>
    7b88:	aa1a03e8 	mov	x8, x26
    7b8c:	f2a00008 	movk	x8, #0x0, lsl #16
    7b90:	f2c00008 	movk	x8, #0x0, lsl #32
    7b94:	f2e00008 	movk	x8, #0x0, lsl #48
    7b98:	f9403908 	ldr	x8, [x8,#112]
    7b9c:	aa1803e1 	mov	x1, x24
    7ba0:	d63f0100 	blr	x8
    7ba4:	34000120 	cbz	w0, 7bc8 <stmmac_jumbo_frm+0x124>
    7ba8:	12800013 	mov	w19, #0xffffffff            	// #-1
    7bac:	140000a2 	b	7e34 <stmmac_jumbo_frm+0x390>
    7bb0:	aa1a03e8 	mov	x8, x26
    7bb4:	f2a00008 	movk	x8, #0x0, lsl #16
    7bb8:	f2c00008 	movk	x8, #0x0, lsl #32
    7bbc:	f2e00008 	movk	x8, #0x0, lsl #48
    7bc0:	f9403908 	ldr	x8, [x8,#112]
    7bc4:	b5fffdc8 	cbnz	x8, 7b7c <stmmac_jumbo_frm+0xd8>
    7bc8:	f9401a88 	ldr	x8, [x20,#48]
    7bcc:	8b130669 	add	x9, x19, x19, lsl #1
    7bd0:	d37df129 	lsl	x9, x9, #3
    7bd4:	8b335320 	add	x0, x25, w19, uxtw #4
    7bd8:	f8296918 	str	x24, [x8,x9]
    7bdc:	f9401a88 	ldr	x8, [x20,#48]
    7be0:	52800021 	mov	w1, #0x1                   	// #1
    7be4:	52800024 	mov	w4, #0x1                   	// #1
    7be8:	2a1703e2 	mov	w2, w23
    7bec:	8b090108 	add	x8, x8, x9
    7bf0:	b9000d17 	str	w23, [x8,#12]
    7bf4:	f9411288 	ldr	x8, [x20,#544]
    7bf8:	4b1b0389 	sub	w9, w28, w27
    7bfc:	4b170139 	sub	w25, w9, w23
    7c00:	b9400fe9 	ldr	w9, [sp,#12]
    7c04:	f9400508 	ldr	x8, [x8,#8]
    7c08:	2a1f03e5 	mov	w5, wzr
    7c0c:	2a1f03e6 	mov	w6, wzr
    7c10:	7100013f 	cmp	w9, #0x0
    7c14:	f9400908 	ldr	x8, [x8,#16]
    7c18:	1a9f07e3 	cset	w3, ne
    7c1c:	d63f0100 	blr	x8
    7c20:	34001099 	cbz	w25, 7e30 <stmmac_jumbo_frm+0x38c>
    7c24:	f2a0001a 	movk	x26, #0x0, lsl #16
    7c28:	0b1b02e8 	add	w8, w23, w27
    7c2c:	f2c0001a 	movk	x26, #0x0, lsl #32
    7c30:	4b08039c 	sub	w28, w28, w8
    7c34:	f2e0001a 	movk	x26, #0x0, lsl #48
    7c38:	2a1703fb 	mov	w27, w23
    7c3c:	1400001e 	b	7cb4 <stmmac_jumbo_frm+0x210>
    7c40:	aa1a03e8 	mov	x8, x26
    7c44:	f9403908 	ldr	x8, [x8,#112]
    7c48:	aa1903e1 	mov	x1, x25
    7c4c:	d63f0100 	blr	x8
    7c50:	35fffac0 	cbnz	w0, 7ba8 <stmmac_jumbo_frm+0x104>
    7c54:	f9401a88 	ldr	x8, [x20,#48]
    7c58:	8b130669 	add	x9, x19, x19, lsl #1
    7c5c:	d37df129 	lsl	x9, x9, #3
    7c60:	52800024 	mov	w4, #0x1                   	// #1
    7c64:	f8296919 	str	x25, [x8,x9]
    7c68:	f9401a88 	ldr	x8, [x20,#48]
    7c6c:	52800025 	mov	w5, #0x1                   	// #1
    7c70:	aa1803e0 	mov	x0, x24
    7c74:	2a1f03e1 	mov	w1, wzr
    7c78:	8b090108 	add	x8, x8, x9
    7c7c:	b9000d17 	str	w23, [x8,#12]
    7c80:	f9411288 	ldr	x8, [x20,#544]
    7c84:	b9400fe9 	ldr	w9, [sp,#12]
    7c88:	2a1703e2 	mov	w2, w23
    7c8c:	2a1f03e6 	mov	w6, wzr
    7c90:	f9400508 	ldr	x8, [x8,#8]
    7c94:	7100013f 	cmp	w9, #0x0
    7c98:	1a9f07e3 	cset	w3, ne
    7c9c:	f9400908 	ldr	x8, [x8,#16]
    7ca0:	d63f0100 	blr	x8
    7ca4:	6b17039c 	subs	w28, w28, w23
    7ca8:	0b17037b 	add	w27, w27, w23
    7cac:	2a1503f9 	mov	w25, w21
    7cb0:	54000c00 	b.eq	7e30 <stmmac_jumbo_frm+0x38c>
    7cb4:	f9400a88 	ldr	x8, [x20,#16]
    7cb8:	11000669 	add	w9, w19, #0x1
    7cbc:	6b170335 	subs	w21, w25, w23
    7cc0:	f833591f 	str	xzr, [x8,w19,uxtw #3]
    7cc4:	f94003e8 	ldr	x8, [sp]
    7cc8:	f9400696 	ldr	x22, [x20,#8]
    7ccc:	f9410e80 	ldr	x0, [x20,#536]
    7cd0:	12002133 	and	w19, w9, #0x1ff
    7cd4:	f940c908 	ldr	x8, [x8,#400]
    7cd8:	8b3352d8 	add	x24, x22, w19, uxtw #4
    7cdc:	8b3b4108 	add	x8, x8, w27, uxtw
    7ce0:	d346fd09 	lsr	x9, x8, #6
    7ce4:	540003c9 	b.ls	7d5c <stmmac_jumbo_frm+0x2b8>
    7ce8:	b4000060 	cbz	x0, 7cf4 <stmmac_jumbo_frm+0x250>
    7cec:	f941240a 	ldr	x10, [x0,#584]
    7cf0:	b500004a 	cbnz	x10, 7cf8 <stmmac_jumbo_frm+0x254>
    7cf4:	aa1a03ea 	mov	x10, x26
    7cf8:	f940114a 	ldr	x10, [x10,#32]
    7cfc:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    7d00:	927a6529 	and	x9, x9, #0xffffffc0
    7d04:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    7d08:	aa0b0121 	orr	x1, x9, x11
    7d0c:	92402d02 	and	x2, x8, #0xfff
    7d10:	52800024 	mov	w4, #0x1                   	// #1
    7d14:	aa1703e3 	mov	x3, x23
    7d18:	aa1f03e5 	mov	x5, xzr
    7d1c:	d63f0140 	blr	x10
    7d20:	aa0003e8 	mov	x8, x0
    7d24:	8b1312c9 	add	x9, x22, x19, lsl #4
    7d28:	b9000928 	str	w8, [x9,#8]
    7d2c:	f9410e80 	ldr	x0, [x20,#536]
    7d30:	92407d19 	and	x25, x8, #0xffffffff
    7d34:	b4000060 	cbz	x0, 7d40 <stmmac_jumbo_frm+0x29c>
    7d38:	f9412408 	ldr	x8, [x0,#584]
    7d3c:	b5000048 	cbnz	x8, 7d44 <stmmac_jumbo_frm+0x2a0>
    7d40:	aa1a03e8 	mov	x8, x26
    7d44:	f9403908 	ldr	x8, [x8,#112]
    7d48:	b4fff868 	cbz	x8, 7c54 <stmmac_jumbo_frm+0x1b0>
    7d4c:	b4fff7a0 	cbz	x0, 7c40 <stmmac_jumbo_frm+0x19c>
    7d50:	f9412408 	ldr	x8, [x0,#584]
    7d54:	b5fff788 	cbnz	x8, 7c44 <stmmac_jumbo_frm+0x1a0>
    7d58:	17ffffba 	b	7c40 <stmmac_jumbo_frm+0x19c>
    7d5c:	2a1903e3 	mov	w3, w25
    7d60:	b4000060 	cbz	x0, 7d6c <stmmac_jumbo_frm+0x2c8>
    7d64:	f941240a 	ldr	x10, [x0,#584]
    7d68:	b500004a 	cbnz	x10, 7d70 <stmmac_jumbo_frm+0x2cc>
    7d6c:	aa1a03ea 	mov	x10, x26
    7d70:	f940114a 	ldr	x10, [x10,#32]
    7d74:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    7d78:	927a6529 	and	x9, x9, #0xffffffc0
    7d7c:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    7d80:	aa0b0121 	orr	x1, x9, x11
    7d84:	92402d02 	and	x2, x8, #0xfff
    7d88:	52800024 	mov	w4, #0x1                   	// #1
    7d8c:	aa1f03e5 	mov	x5, xzr
    7d90:	d63f0140 	blr	x10
    7d94:	aa0003e8 	mov	x8, x0
    7d98:	8b1312c9 	add	x9, x22, x19, lsl #4
    7d9c:	b9000928 	str	w8, [x9,#8]
    7da0:	f9410e80 	ldr	x0, [x20,#536]
    7da4:	92407d16 	and	x22, x8, #0xffffffff
    7da8:	b4000060 	cbz	x0, 7db4 <stmmac_jumbo_frm+0x310>
    7dac:	f9412408 	ldr	x8, [x0,#584]
    7db0:	b5000048 	cbnz	x8, 7db8 <stmmac_jumbo_frm+0x314>
    7db4:	aa1a03e8 	mov	x8, x26
    7db8:	f9403908 	ldr	x8, [x8,#112]
    7dbc:	b4000128 	cbz	x8, 7de0 <stmmac_jumbo_frm+0x33c>
    7dc0:	b4000060 	cbz	x0, 7dcc <stmmac_jumbo_frm+0x328>
    7dc4:	f9412408 	ldr	x8, [x0,#584]
    7dc8:	b5000048 	cbnz	x8, 7dd0 <stmmac_jumbo_frm+0x32c>
    7dcc:	aa1a03e8 	mov	x8, x26
    7dd0:	f9403908 	ldr	x8, [x8,#112]
    7dd4:	aa1603e1 	mov	x1, x22
    7dd8:	d63f0100 	blr	x8
    7ddc:	35ffee60 	cbnz	w0, 7ba8 <stmmac_jumbo_frm+0x104>
    7de0:	f9401a88 	ldr	x8, [x20,#48]
    7de4:	8b130669 	add	x9, x19, x19, lsl #1
    7de8:	d37df129 	lsl	x9, x9, #3
    7dec:	52800024 	mov	w4, #0x1                   	// #1
    7df0:	f8296916 	str	x22, [x8,x9]
    7df4:	f9401a88 	ldr	x8, [x20,#48]
    7df8:	52800025 	mov	w5, #0x1                   	// #1
    7dfc:	52800026 	mov	w6, #0x1                   	// #1
    7e00:	aa1803e0 	mov	x0, x24
    7e04:	8b090108 	add	x8, x8, x9
    7e08:	b9000d19 	str	w25, [x8,#12]
    7e0c:	f9411288 	ldr	x8, [x20,#544]
    7e10:	b9400fe9 	ldr	w9, [sp,#12]
    7e14:	2a1f03e1 	mov	w1, wzr
    7e18:	2a1903e2 	mov	w2, w25
    7e1c:	f9400508 	ldr	x8, [x8,#8]
    7e20:	7100013f 	cmp	w9, #0x0
    7e24:	1a9f07e3 	cset	w3, ne
    7e28:	f9400908 	ldr	x8, [x8,#16]
    7e2c:	d63f0100 	blr	x8
    7e30:	b9001a93 	str	w19, [x20,#24]
    7e34:	2a1303e0 	mov	w0, w19
    7e38:	a9467bfd 	ldp	x29, x30, [sp,#96]
    7e3c:	a9454ff4 	ldp	x20, x19, [sp,#80]
    7e40:	a94457f6 	ldp	x22, x21, [sp,#64]
    7e44:	a9435ff8 	ldp	x24, x23, [sp,#48]
    7e48:	a94267fa 	ldp	x26, x25, [sp,#32]
    7e4c:	a9416ffc 	ldp	x28, x27, [sp,#16]
    7e50:	9101c3ff 	add	sp, sp, #0x70
    7e54:	d65f03c0 	ret

0000000000007e58 <stmmac_refill_desc3>:
    7e58:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    7e5c:	a9017bfd 	stp	x29, x30, [sp,#16]
    7e60:	910043fd 	add	x29, sp, #0x10
    7e64:	aa0103f3 	mov	x19, x1
    7e68:	aa0003f4 	mov	x20, x0
    7e6c:	94000000 	bl	0 <_mcount>
    7e70:	b940f288 	ldr	w8, [x20,#240]
    7e74:	34000148 	cbz	w8, 7e9c <stmmac_refill_desc3+0x44>
    7e78:	b948b688 	ldr	w8, [x20,#2228]
    7e7c:	35000108 	cbnz	w8, 7e9c <stmmac_refill_desc3+0x44>
    7e80:	b940de88 	ldr	w8, [x20,#220]
    7e84:	b9410289 	ldr	w9, [x20,#256]
    7e88:	531c6d08 	lsl	w8, w8, #4
    7e8c:	11004108 	add	w8, w8, #0x10
    7e90:	121c2108 	and	w8, w8, #0x1ff0
    7e94:	0b090108 	add	w8, w8, w9
    7e98:	b9000e68 	str	w8, [x19,#12]
    7e9c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    7ea0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    7ea4:	d65f03c0 	ret

0000000000007ea8 <stmmac_clean_desc3>:
    7ea8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    7eac:	a9017bfd 	stp	x29, x30, [sp,#16]
    7eb0:	910043fd 	add	x29, sp, #0x10
    7eb4:	aa0103f3 	mov	x19, x1
    7eb8:	aa0003f4 	mov	x20, x0
    7ebc:	94000000 	bl	0 <_mcount>
    7ec0:	b9401e88 	ldr	w8, [x20,#28]
    7ec4:	f9401a89 	ldr	x9, [x20,#48]
    7ec8:	5280030a 	mov	w10, #0x18                  	// #24
    7ecc:	9b0a2509 	madd	x9, x8, x10, x9
    7ed0:	39404129 	ldrb	w9, [x9,#16]
    7ed4:	34000169 	cbz	w9, 7f00 <stmmac_clean_desc3+0x58>
    7ed8:	b948b689 	ldr	w9, [x20,#2228]
    7edc:	35000129 	cbnz	w9, 7f00 <stmmac_clean_desc3+0x58>
    7ee0:	b9404689 	ldr	w9, [x20,#68]
    7ee4:	340000e9 	cbz	w9, 7f00 <stmmac_clean_desc3+0x58>
    7ee8:	b9403a89 	ldr	w9, [x20,#56]
    7eec:	11000508 	add	w8, w8, #0x1
    7ef0:	12002108 	and	w8, w8, #0x1ff
    7ef4:	0b090108 	add	w8, w8, w9
    7ef8:	531c6d08 	lsl	w8, w8, #4
    7efc:	b9000e68 	str	w8, [x19,#12]
    7f00:	a9417bfd 	ldp	x29, x30, [sp,#16]
    7f04:	a8c24ff4 	ldp	x20, x19, [sp],#32
    7f08:	d65f03c0 	ret

0000000000007f0c <dwmac_dma_reset>:
    7f0c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    7f10:	a9017bfd 	stp	x29, x30, [sp,#16]
    7f14:	910043fd 	add	x29, sp, #0x10
    7f18:	aa0003f3 	mov	x19, x0
    7f1c:	94000000 	bl	0 <_mcount>
    7f20:	91400673 	add	x19, x19, #0x1, lsl #12
    7f24:	b9400268 	ldr	w8, [x19]
    7f28:	d5033d9f 	dsb	ld
    7f2c:	d5033e9f 	dsb	st
    7f30:	52800134 	mov	w20, #0x9                   	// #9
    7f34:	32000108 	orr	w8, w8, #0x1
    7f38:	b9000268 	str	w8, [x19]
    7f3c:	b9400268 	ldr	w8, [x19]
    7f40:	d5033d9f 	dsb	ld
    7f44:	36000448 	tbz	w8, #0, 7fcc <dwmac_dma_reset+0xc0>
    7f48:	52912b00 	mov	w0, #0x8958                	// #35160
    7f4c:	72a00820 	movk	w0, #0x41, lsl #16
    7f50:	94000000 	bl	0 <__const_udelay>
    7f54:	52912b00 	mov	w0, #0x8958                	// #35160
    7f58:	72a00820 	movk	w0, #0x41, lsl #16
    7f5c:	94000000 	bl	0 <__const_udelay>
    7f60:	52912b00 	mov	w0, #0x8958                	// #35160
    7f64:	72a00820 	movk	w0, #0x41, lsl #16
    7f68:	94000000 	bl	0 <__const_udelay>
    7f6c:	52912b00 	mov	w0, #0x8958                	// #35160
    7f70:	72a00820 	movk	w0, #0x41, lsl #16
    7f74:	94000000 	bl	0 <__const_udelay>
    7f78:	52912b00 	mov	w0, #0x8958                	// #35160
    7f7c:	72a00820 	movk	w0, #0x41, lsl #16
    7f80:	94000000 	bl	0 <__const_udelay>
    7f84:	52912b00 	mov	w0, #0x8958                	// #35160
    7f88:	72a00820 	movk	w0, #0x41, lsl #16
    7f8c:	94000000 	bl	0 <__const_udelay>
    7f90:	52912b00 	mov	w0, #0x8958                	// #35160
    7f94:	72a00820 	movk	w0, #0x41, lsl #16
    7f98:	94000000 	bl	0 <__const_udelay>
    7f9c:	52912b00 	mov	w0, #0x8958                	// #35160
    7fa0:	72a00820 	movk	w0, #0x41, lsl #16
    7fa4:	94000000 	bl	0 <__const_udelay>
    7fa8:	52912b00 	mov	w0, #0x8958                	// #35160
    7fac:	72a00820 	movk	w0, #0x41, lsl #16
    7fb0:	94000000 	bl	0 <__const_udelay>
    7fb4:	52912b00 	mov	w0, #0x8958                	// #35160
    7fb8:	72a00820 	movk	w0, #0x41, lsl #16
    7fbc:	94000000 	bl	0 <__const_udelay>
    7fc0:	51000694 	sub	w20, w20, #0x1
    7fc4:	3100069f 	cmn	w20, #0x1
    7fc8:	54fffba1 	b.ne	7f3c <dwmac_dma_reset+0x30>
    7fcc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    7fd0:	131f7e88 	asr	w8, w20, #31
    7fd4:	121c6d00 	and	w0, w8, #0xfffffff0
    7fd8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    7fdc:	d65f03c0 	ret

0000000000007fe0 <dwmac_enable_dma_transmission>:
    7fe0:	f81e0ff3 	str	x19, [sp,#-32]!
    7fe4:	a9017bfd 	stp	x29, x30, [sp,#16]
    7fe8:	910043fd 	add	x29, sp, #0x10
    7fec:	aa0003f3 	mov	x19, x0
    7ff0:	94000000 	bl	0 <_mcount>
    7ff4:	52820088 	mov	w8, #0x1004                	// #4100
    7ff8:	d5033e9f 	dsb	st
    7ffc:	8b080268 	add	x8, x19, x8
    8000:	52800029 	mov	w9, #0x1                   	// #1
    8004:	b9000109 	str	w9, [x8]
    8008:	a9417bfd 	ldp	x29, x30, [sp,#16]
    800c:	f84207f3 	ldr	x19, [sp],#32
    8010:	d65f03c0 	ret

0000000000008014 <dwmac_enable_dma_irq>:
    8014:	f81e0ff3 	str	x19, [sp,#-32]!
    8018:	a9017bfd 	stp	x29, x30, [sp,#16]
    801c:	910043fd 	add	x29, sp, #0x10
    8020:	aa0003f3 	mov	x19, x0
    8024:	94000000 	bl	0 <_mcount>
    8028:	52820388 	mov	w8, #0x101c                	// #4124
    802c:	52940c29 	mov	w9, #0xa061                	// #41057
    8030:	d5033e9f 	dsb	st
    8034:	8b080268 	add	x8, x19, x8
    8038:	72a00029 	movk	w9, #0x1, lsl #16
    803c:	b9000109 	str	w9, [x8]
    8040:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8044:	f84207f3 	ldr	x19, [sp],#32
    8048:	d65f03c0 	ret

000000000000804c <dwmac_disable_dma_irq>:
    804c:	f81e0ff3 	str	x19, [sp,#-32]!
    8050:	a9017bfd 	stp	x29, x30, [sp,#16]
    8054:	910043fd 	add	x29, sp, #0x10
    8058:	aa0003f3 	mov	x19, x0
    805c:	94000000 	bl	0 <_mcount>
    8060:	52820389 	mov	w9, #0x101c                	// #4124
    8064:	2a1f03e8 	mov	w8, wzr
    8068:	d5033e9f 	dsb	st
    806c:	8b090269 	add	x9, x19, x9
    8070:	b9000128 	str	w8, [x9]
    8074:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8078:	f84207f3 	ldr	x19, [sp],#32
    807c:	d65f03c0 	ret

0000000000008080 <dwmac_dma_start_tx>:
    8080:	f81e0ff3 	str	x19, [sp,#-32]!
    8084:	a9017bfd 	stp	x29, x30, [sp,#16]
    8088:	910043fd 	add	x29, sp, #0x10
    808c:	aa0003f3 	mov	x19, x0
    8090:	94000000 	bl	0 <_mcount>
    8094:	52820308 	mov	w8, #0x1018                	// #4120
    8098:	8b080268 	add	x8, x19, x8
    809c:	b9400109 	ldr	w9, [x8]
    80a0:	d5033d9f 	dsb	ld
    80a4:	d5033e9f 	dsb	st
    80a8:	32130129 	orr	w9, w9, #0x2000
    80ac:	b9000109 	str	w9, [x8]
    80b0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    80b4:	f84207f3 	ldr	x19, [sp],#32
    80b8:	d65f03c0 	ret

00000000000080bc <dwmac_dma_stop_tx>:
    80bc:	f81e0ff3 	str	x19, [sp,#-32]!
    80c0:	a9017bfd 	stp	x29, x30, [sp,#16]
    80c4:	910043fd 	add	x29, sp, #0x10
    80c8:	aa0003f3 	mov	x19, x0
    80cc:	94000000 	bl	0 <_mcount>
    80d0:	52820308 	mov	w8, #0x1018                	// #4120
    80d4:	8b080268 	add	x8, x19, x8
    80d8:	b9400109 	ldr	w9, [x8]
    80dc:	d5033d9f 	dsb	ld
    80e0:	d5033e9f 	dsb	st
    80e4:	12127929 	and	w9, w9, #0xffffdfff
    80e8:	b9000109 	str	w9, [x8]
    80ec:	a9417bfd 	ldp	x29, x30, [sp,#16]
    80f0:	f84207f3 	ldr	x19, [sp],#32
    80f4:	d65f03c0 	ret

00000000000080f8 <dwmac_dma_start_rx>:
    80f8:	f81e0ff3 	str	x19, [sp,#-32]!
    80fc:	a9017bfd 	stp	x29, x30, [sp,#16]
    8100:	910043fd 	add	x29, sp, #0x10
    8104:	aa0003f3 	mov	x19, x0
    8108:	94000000 	bl	0 <_mcount>
    810c:	52820308 	mov	w8, #0x1018                	// #4120
    8110:	8b080268 	add	x8, x19, x8
    8114:	b9400109 	ldr	w9, [x8]
    8118:	d5033d9f 	dsb	ld
    811c:	d5033e9f 	dsb	st
    8120:	321f0129 	orr	w9, w9, #0x2
    8124:	b9000109 	str	w9, [x8]
    8128:	a9417bfd 	ldp	x29, x30, [sp,#16]
    812c:	f84207f3 	ldr	x19, [sp],#32
    8130:	d65f03c0 	ret

0000000000008134 <dwmac_dma_stop_rx>:
    8134:	f81e0ff3 	str	x19, [sp,#-32]!
    8138:	a9017bfd 	stp	x29, x30, [sp,#16]
    813c:	910043fd 	add	x29, sp, #0x10
    8140:	aa0003f3 	mov	x19, x0
    8144:	94000000 	bl	0 <_mcount>
    8148:	52820308 	mov	w8, #0x1018                	// #4120
    814c:	8b080268 	add	x8, x19, x8
    8150:	b9400109 	ldr	w9, [x8]
    8154:	d5033d9f 	dsb	ld
    8158:	d5033e9f 	dsb	st
    815c:	121e7929 	and	w9, w9, #0xfffffffd
    8160:	b9000109 	str	w9, [x8]
    8164:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8168:	f84207f3 	ldr	x19, [sp],#32
    816c:	d65f03c0 	ret

0000000000008170 <dwmac_dma_interrupt>:
    8170:	f81c0ff7 	str	x23, [sp,#-64]!
    8174:	a90157f6 	stp	x22, x21, [sp,#16]
    8178:	a9024ff4 	stp	x20, x19, [sp,#32]
    817c:	a9037bfd 	stp	x29, x30, [sp,#48]
    8180:	9100c3fd 	add	x29, sp, #0x30
    8184:	aa0103f5 	mov	x21, x1
    8188:	aa0003f6 	mov	x22, x0
    818c:	94000000 	bl	0 <_mcount>
    8190:	52820288 	mov	w8, #0x1014                	// #4116
    8194:	8b0802d7 	add	x23, x22, x8
    8198:	b94002f3 	ldr	w19, [x23]
    819c:	d5033d9f 	dsb	ld
    81a0:	37780433 	tbnz	w19, #15, 8224 <dwmac_dma_interrupt+0xb4>
    81a4:	2a1f03f4 	mov	w20, wzr
    81a8:	36800293 	tbz	w19, #16, 81f8 <dwmac_dma_interrupt+0x88>
    81ac:	f940a2a8 	ldr	x8, [x21,#320]
    81b0:	91000508 	add	x8, x8, #0x1
    81b4:	f900a2a8 	str	x8, [x21,#320]
    81b8:	36300153 	tbz	w19, #6, 81e0 <dwmac_dma_interrupt+0x70>
    81bc:	52820388 	mov	w8, #0x101c                	// #4124
    81c0:	8b0802c8 	add	x8, x22, x8
    81c4:	b9400108 	ldr	w8, [x8]
    81c8:	d5033d9f 	dsb	ld
    81cc:	363000a8 	tbz	w8, #6, 81e0 <dwmac_dma_interrupt+0x70>
    81d0:	f940a6a8 	ldr	x8, [x21,#328]
    81d4:	321e0294 	orr	w20, w20, #0x4
    81d8:	91000508 	add	x8, x8, #0x1
    81dc:	f900a6a8 	str	x8, [x21,#328]
    81e0:	360000b3 	tbz	w19, #0, 81f4 <dwmac_dma_interrupt+0x84>
    81e4:	f940aea8 	ldr	x8, [x21,#344]
    81e8:	321d0294 	orr	w20, w20, #0x8
    81ec:	91000508 	add	x8, x8, #0x1
    81f0:	f900aea8 	str	x8, [x21,#344]
    81f4:	37700393 	tbnz	w19, #14, 8264 <dwmac_dma_interrupt+0xf4>
    81f8:	72060a7f 	tst	w19, #0x1c000000
    81fc:	540003e1 	b.ne	8278 <dwmac_dma_interrupt+0x108>
    8200:	d5033e9f 	dsb	st
    8204:	12004268 	and	w8, w19, #0x1ffff
    8208:	b90002e8 	str	w8, [x23]
    820c:	2a1403e0 	mov	w0, w20
    8210:	a9437bfd 	ldp	x29, x30, [sp,#48]
    8214:	a9424ff4 	ldp	x20, x19, [sp,#32]
    8218:	a94157f6 	ldp	x22, x21, [sp,#16]
    821c:	f84407f7 	ldr	x23, [sp],#64
    8220:	d65f03c0 	ret
    8224:	37280413 	tbnz	w19, #5, 82a4 <dwmac_dma_interrupt+0x134>
    8228:	2a1f03f4 	mov	w20, wzr
    822c:	37180473 	tbnz	w19, #3, 82b8 <dwmac_dma_interrupt+0x148>
    8230:	372004d3 	tbnz	w19, #4, 82c8 <dwmac_dma_interrupt+0x158>
    8234:	37380533 	tbnz	w19, #7, 82d8 <dwmac_dma_interrupt+0x168>
    8238:	37400593 	tbnz	w19, #8, 82e8 <dwmac_dma_interrupt+0x178>
    823c:	374805f3 	tbnz	w19, #9, 82f8 <dwmac_dma_interrupt+0x188>
    8240:	37500653 	tbnz	w19, #10, 8308 <dwmac_dma_interrupt+0x198>
    8244:	370806b3 	tbnz	w19, #1, 8318 <dwmac_dma_interrupt+0x1a8>
    8248:	366ffb13 	tbz	w19, #13, 81a8 <dwmac_dma_interrupt+0x38>
    824c:	f9408ea8 	ldr	x8, [x21,#280]
    8250:	52800034 	mov	w20, #0x1                   	// #1
    8254:	91000508 	add	x8, x8, #0x1
    8258:	f9008ea8 	str	x8, [x21,#280]
    825c:	3787fa93 	tbnz	w19, #16, 81ac <dwmac_dma_interrupt+0x3c>
    8260:	17ffffe6 	b	81f8 <dwmac_dma_interrupt+0x88>
    8264:	f94092a8 	ldr	x8, [x21,#288]
    8268:	91000508 	add	x8, x8, #0x1
    826c:	f90092a8 	str	x8, [x21,#288]
    8270:	72060a7f 	tst	w19, #0x1c000000
    8274:	54fffc60 	b.eq	8200 <dwmac_dma_interrupt+0x90>
    8278:	d2800000 	mov	x0, #0x0                   	// #0
    827c:	d2800001 	mov	x1, #0x0                   	// #0
    8280:	f2a00000 	movk	x0, #0x0, lsl #16
    8284:	f2a00001 	movk	x1, #0x0, lsl #16
    8288:	f2c00000 	movk	x0, #0x0, lsl #32
    828c:	f2c00001 	movk	x1, #0x0, lsl #32
    8290:	f2e00000 	movk	x0, #0x0, lsl #48
    8294:	f2e00001 	movk	x1, #0x0, lsl #48
    8298:	2a1303e2 	mov	w2, w19
    829c:	94000000 	bl	0 <printk>
    82a0:	17ffffd8 	b	8200 <dwmac_dma_interrupt+0x90>
    82a4:	f9406ea8 	ldr	x8, [x21,#216]
    82a8:	52800054 	mov	w20, #0x2                   	// #2
    82ac:	91000508 	add	x8, x8, #0x1
    82b0:	f9006ea8 	str	x8, [x21,#216]
    82b4:	361ffbf3 	tbz	w19, #3, 8230 <dwmac_dma_interrupt+0xc0>
    82b8:	f94076a8 	ldr	x8, [x21,#232]
    82bc:	91000508 	add	x8, x8, #0x1
    82c0:	f90076a8 	str	x8, [x21,#232]
    82c4:	3627fb93 	tbz	w19, #4, 8234 <dwmac_dma_interrupt+0xc4>
    82c8:	f9407aa8 	ldr	x8, [x21,#240]
    82cc:	91000508 	add	x8, x8, #0x1
    82d0:	f9007aa8 	str	x8, [x21,#240]
    82d4:	363ffb33 	tbz	w19, #7, 8238 <dwmac_dma_interrupt+0xc8>
    82d8:	f9407ea8 	ldr	x8, [x21,#248]
    82dc:	91000508 	add	x8, x8, #0x1
    82e0:	f9007ea8 	str	x8, [x21,#248]
    82e4:	3647fad3 	tbz	w19, #8, 823c <dwmac_dma_interrupt+0xcc>
    82e8:	f94082a8 	ldr	x8, [x21,#256]
    82ec:	91000508 	add	x8, x8, #0x1
    82f0:	f90082a8 	str	x8, [x21,#256]
    82f4:	364ffa73 	tbz	w19, #9, 8240 <dwmac_dma_interrupt+0xd0>
    82f8:	f94086a8 	ldr	x8, [x21,#264]
    82fc:	91000508 	add	x8, x8, #0x1
    8300:	f90086a8 	str	x8, [x21,#264]
    8304:	3657fa13 	tbz	w19, #10, 8244 <dwmac_dma_interrupt+0xd4>
    8308:	f9408aa8 	ldr	x8, [x21,#272]
    830c:	91000508 	add	x8, x8, #0x1
    8310:	f9008aa8 	str	x8, [x21,#272]
    8314:	360ff9b3 	tbz	w19, #1, 8248 <dwmac_dma_interrupt+0xd8>
    8318:	f94072a8 	ldr	x8, [x21,#224]
    831c:	52800034 	mov	w20, #0x1                   	// #1
    8320:	91000508 	add	x8, x8, #0x1
    8324:	f90072a8 	str	x8, [x21,#224]
    8328:	366ff413 	tbz	w19, #13, 81a8 <dwmac_dma_interrupt+0x38>
    832c:	17ffffc8 	b	824c <dwmac_dma_interrupt+0xdc>

0000000000008330 <dwmac_dma_flush_tx_fifo>:
    8330:	f81e0ff3 	str	x19, [sp,#-32]!
    8334:	a9017bfd 	stp	x29, x30, [sp,#16]
    8338:	910043fd 	add	x29, sp, #0x10
    833c:	aa0003f3 	mov	x19, x0
    8340:	94000000 	bl	0 <_mcount>
    8344:	52820308 	mov	w8, #0x1018                	// #4120
    8348:	8b080268 	add	x8, x19, x8
    834c:	b9400109 	ldr	w9, [x8]
    8350:	d5033d9f 	dsb	ld
    8354:	d5033e9f 	dsb	st
    8358:	320c0129 	orr	w9, w9, #0x100000
    835c:	b9000109 	str	w9, [x8]
    8360:	b9400109 	ldr	w9, [x8]
    8364:	d5033d9f 	dsb	ld
    8368:	37a7ffc9 	tbnz	w9, #20, 8360 <dwmac_dma_flush_tx_fifo+0x30>
    836c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8370:	f84207f3 	ldr	x19, [sp],#32
    8374:	d65f03c0 	ret

0000000000008378 <stmmac_set_mac_addr>:
    8378:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    837c:	a9014ff4 	stp	x20, x19, [sp,#16]
    8380:	a9027bfd 	stp	x29, x30, [sp,#32]
    8384:	910083fd 	add	x29, sp, #0x20
    8388:	2a0303f3 	mov	w19, w3
    838c:	2a0203f4 	mov	w20, w2
    8390:	aa0103f5 	mov	x21, x1
    8394:	aa0003f6 	mov	x22, x0
    8398:	94000000 	bl	0 <_mcount>
    839c:	394016a8 	ldrb	w8, [x21,#5]
    83a0:	394012a9 	ldrb	w9, [x21,#4]
    83a4:	d5033e9f 	dsb	st
    83a8:	8b3442ca 	add	x10, x22, w20, uxtw
    83ac:	33181d09 	bfi	w9, w8, #8, #8
    83b0:	32010128 	orr	w8, w9, #0x80000000
    83b4:	b9000148 	str	w8, [x10]
    83b8:	b94002a8 	ldr	w8, [x21]
    83bc:	d5033e9f 	dsb	st
    83c0:	8b3342c9 	add	x9, x22, w19, uxtw
    83c4:	b9000128 	str	w8, [x9]
    83c8:	a9427bfd 	ldp	x29, x30, [sp,#32]
    83cc:	a9414ff4 	ldp	x20, x19, [sp,#16]
    83d0:	a8c357f6 	ldp	x22, x21, [sp],#48
    83d4:	d65f03c0 	ret

00000000000083d8 <stmmac_set_mac>:
    83d8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    83dc:	a9017bfd 	stp	x29, x30, [sp,#16]
    83e0:	910043fd 	add	x29, sp, #0x10
    83e4:	2a0103f3 	mov	w19, w1
    83e8:	aa0003f4 	mov	x20, x0
    83ec:	94000000 	bl	0 <_mcount>
    83f0:	b9400288 	ldr	w8, [x20]
    83f4:	d5033d9f 	dsb	ld
    83f8:	321e0509 	orr	w9, w8, #0xc
    83fc:	121c7508 	and	w8, w8, #0xfffffff3
    8400:	7200027f 	tst	w19, #0x1
    8404:	d5033e9f 	dsb	st
    8408:	1a881128 	csel	w8, w9, w8, ne
    840c:	b9000288 	str	w8, [x20]
    8410:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8414:	a8c24ff4 	ldp	x20, x19, [sp],#32
    8418:	d65f03c0 	ret

000000000000841c <stmmac_get_mac_addr>:
    841c:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    8420:	a9014ff4 	stp	x20, x19, [sp,#16]
    8424:	a9027bfd 	stp	x29, x30, [sp,#32]
    8428:	910083fd 	add	x29, sp, #0x20
    842c:	2a0303f3 	mov	w19, w3
    8430:	2a0203f4 	mov	w20, w2
    8434:	aa0103f5 	mov	x21, x1
    8438:	aa0003f6 	mov	x22, x0
    843c:	94000000 	bl	0 <_mcount>
    8440:	8b3442c8 	add	x8, x22, w20, uxtw
    8444:	8b3342c9 	add	x9, x22, w19, uxtw
    8448:	b9400108 	ldr	w8, [x8]
    844c:	d5033d9f 	dsb	ld
    8450:	b9400129 	ldr	w9, [x9]
    8454:	53087d2a 	lsr	w10, w9, #8
    8458:	d5033d9f 	dsb	ld
    845c:	390002a9 	strb	w9, [x21]
    8460:	390006aa 	strb	w10, [x21,#1]
    8464:	53107d2a 	lsr	w10, w9, #16
    8468:	53187d29 	lsr	w9, w9, #24
    846c:	390012a8 	strb	w8, [x21,#4]
    8470:	53087d08 	lsr	w8, w8, #8
    8474:	39000aaa 	strb	w10, [x21,#2]
    8478:	39000ea9 	strb	w9, [x21,#3]
    847c:	390016a8 	strb	w8, [x21,#5]
    8480:	a9427bfd 	ldp	x29, x30, [sp,#32]
    8484:	a9414ff4 	ldp	x20, x19, [sp,#16]
    8488:	a8c357f6 	ldp	x22, x21, [sp],#48
    848c:	d65f03c0 	ret

0000000000008490 <dwmac1000_setup>:
    8490:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    8494:	a90157f6 	stp	x22, x21, [sp,#16]
    8498:	a9024ff4 	stp	x20, x19, [sp,#32]
    849c:	a9037bfd 	stp	x29, x30, [sp,#48]
    84a0:	9100c3fd 	add	x29, sp, #0x30
    84a4:	aa0303f3 	mov	x19, x3
    84a8:	2a0203f6 	mov	w22, w2
    84ac:	2a0103f5 	mov	w21, w1
    84b0:	aa0003f7 	mov	x23, x0
    84b4:	94000000 	bl	0 <_mcount>
    84b8:	d2800009 	mov	x9, #0x0                   	// #0
    84bc:	f2a00009 	movk	x9, #0x0, lsl #16
    84c0:	f2c00009 	movk	x9, #0x0, lsl #32
    84c4:	910082e8 	add	x8, x23, #0x20
    84c8:	b9400118 	ldr	w24, [x8]
    84cc:	d5033d9f 	dsb	ld
    84d0:	f2e00009 	movk	x9, #0x0, lsl #48
    84d4:	f9400120 	ldr	x0, [x9]
    84d8:	52901801 	mov	w1, #0x80c0                	// #32960
    84dc:	72a04801 	movk	w1, #0x240, lsl #16
    84e0:	52800d02 	mov	w2, #0x68                  	// #104
    84e4:	94000000 	bl	0 <kmem_cache_alloc_trace>
    84e8:	aa0003f4 	mov	x20, x0
    84ec:	b40004a0 	cbz	x0, 8580 <dwmac1000_setup+0xf0>
    84f0:	f9002297 	str	x23, [x20,#64]
    84f4:	29095a95 	stp	w21, w22, [x20,#72]
    84f8:	b900529f 	str	wzr, [x20,#80]
    84fc:	340000b5 	cbz	w21, 8510 <dwmac1000_setup+0x80>
    8500:	5ac012a8 	clz	w8, w21
    8504:	528003e9 	mov	w9, #0x1f                  	// #31
    8508:	4b080128 	sub	w8, w9, w8
    850c:	b9005288 	str	w8, [x20,#80]
    8510:	d2800008 	mov	x8, #0x0                   	// #0
    8514:	f2a00008 	movk	x8, #0x0, lsl #16
    8518:	f2c00008 	movk	x8, #0x0, lsl #32
    851c:	f2e00008 	movk	x8, #0x0, lsl #48
    8520:	f9000288 	str	x8, [x20]
    8524:	d2800008 	mov	x8, #0x0                   	// #0
    8528:	f2a00008 	movk	x8, #0x0, lsl #16
    852c:	f2c00008 	movk	x8, #0x0, lsl #32
    8530:	f2e00008 	movk	x8, #0x0, lsl #48
    8534:	3dc00100 	ldr	q0, [x8]
    8538:	d2800008 	mov	x8, #0x0                   	// #0
    853c:	f2a00008 	movk	x8, #0x0, lsl #16
    8540:	f2c00008 	movk	x8, #0x0, lsl #32
    8544:	f2e00008 	movk	x8, #0x0, lsl #48
    8548:	f9000a88 	str	x8, [x20,#16]
    854c:	52880008 	mov	w8, #0x4000                	// #16384
    8550:	b9003a88 	str	w8, [x20,#56]
    8554:	3c828280 	stur	q0, [x20,#40]
    8558:	34000218 	cbz	w24, 8598 <dwmac1000_setup+0x108>
    855c:	d2800000 	mov	x0, #0x0                   	// #0
    8560:	f2a00000 	movk	x0, #0x0, lsl #16
    8564:	12001f15 	and	w21, w24, #0xff
    8568:	f2c00000 	movk	x0, #0x0, lsl #32
    856c:	53083f01 	ubfx	w1, w24, #8, #8
    8570:	f2e00000 	movk	x0, #0x0, lsl #48
    8574:	2a1503e2 	mov	w2, w21
    8578:	94000000 	bl	0 <printk>
    857c:	b9000275 	str	w21, [x19]
    8580:	aa1403e0 	mov	x0, x20
    8584:	a9437bfd 	ldp	x29, x30, [sp,#48]
    8588:	a9424ff4 	ldp	x20, x19, [sp,#32]
    858c:	a94157f6 	ldp	x22, x21, [sp,#16]
    8590:	a8c45ff8 	ldp	x24, x23, [sp],#64
    8594:	d65f03c0 	ret
    8598:	2a1f03f5 	mov	w21, wzr
    859c:	17fffff8 	b	857c <dwmac1000_setup+0xec>

00000000000085a0 <dwmac1000_core_init>:
    85a0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    85a4:	a9017bfd 	stp	x29, x30, [sp,#16]
    85a8:	910043fd 	add	x29, sp, #0x10
    85ac:	2a0103f4 	mov	w20, w1
    85b0:	aa0003f3 	mov	x19, x0
    85b4:	94000000 	bl	0 <_mcount>
    85b8:	52901009 	mov	w9, #0x8080                	// #32896
    85bc:	5290100a 	mov	w10, #0x8080                	// #32896
    85c0:	f9402268 	ldr	x8, [x19,#64]
    85c4:	7117729f 	cmp	w20, #0x5dc
    85c8:	72a00c29 	movk	w9, #0x61, lsl #16
    85cc:	72a10c2a 	movk	w10, #0x861, lsl #16
    85d0:	b940010b 	ldr	w11, [x8]
    85d4:	d5033d9f 	dsb	ld
    85d8:	1a89c149 	csel	w9, w10, w9, gt
    85dc:	b940626a 	ldr	w10, [x19,#96]
    85e0:	2a090169 	orr	w9, w11, w9
    85e4:	320c012b 	orr	w11, w9, #0x100000
    85e8:	711f429f 	cmp	w20, #0x7d0
    85ec:	1a89c169 	csel	w9, w11, w9, gt
    85f0:	340001aa 	cbz	w10, 8624 <dwmac1000_core_init+0x84>
    85f4:	7100295f 	cmp	w10, #0xa
    85f8:	540000c0 	b.eq	8610 <dwmac1000_core_init+0x70>
    85fc:	710fa15f 	cmp	w10, #0x3e8
    8600:	540000e1 	b.ne	861c <dwmac1000_core_init+0x7c>
    8604:	12107929 	and	w9, w9, #0xffff7fff
    8608:	321d0129 	orr	w9, w9, #0x8
    860c:	14000006 	b	8624 <dwmac1000_core_init+0x84>
    8610:	12107529 	and	w9, w9, #0xffff3fff
    8614:	5290010a 	mov	w10, #0x8008                	// #32776
    8618:	14000002 	b	8620 <dwmac1000_core_init+0x80>
    861c:	5298010a 	mov	w10, #0xc008                	// #49160
    8620:	2a0a0129 	orr	w9, w9, w10
    8624:	d5033e9f 	dsb	st
    8628:	b9000109 	str	w9, [x8]
    862c:	b9405a69 	ldr	w9, [x19,#88]
    8630:	5280400b 	mov	w11, #0x200                 	// #512
    8634:	528040ec 	mov	w12, #0x207                 	// #519
    8638:	2a1f03ea 	mov	w10, wzr
    863c:	7100013f 	cmp	w9, #0x0
    8640:	d5033e9f 	dsb	st
    8644:	9100f10d 	add	x13, x8, #0x3c
    8648:	1a8b0189 	csel	w9, w12, w11, eq
    864c:	b90001a9 	str	w9, [x13]
    8650:	d5033e9f 	dsb	st
    8654:	91007108 	add	x8, x8, #0x1c
    8658:	b900010a 	str	w10, [x8]
    865c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8660:	a8c24ff4 	ldp	x20, x19, [sp],#32
    8664:	d65f03c0 	ret

0000000000008668 <dwmac1000_rx_ipc_enable>:
    8668:	f81e0ff3 	str	x19, [sp,#-32]!
    866c:	a9017bfd 	stp	x29, x30, [sp,#16]
    8670:	910043fd 	add	x29, sp, #0x10
    8674:	aa0003f3 	mov	x19, x0
    8678:	94000000 	bl	0 <_mcount>
    867c:	f9402268 	ldr	x8, [x19,#64]
    8680:	b9400109 	ldr	w9, [x8]
    8684:	d5033d9f 	dsb	ld
    8688:	b940566a 	ldr	w10, [x19,#84]
    868c:	3216012b 	orr	w11, w9, #0x400
    8690:	12157929 	and	w9, w9, #0xfffffbff
    8694:	d5033e9f 	dsb	st
    8698:	7100015f 	cmp	w10, #0x0
    869c:	1a8b0129 	csel	w9, w9, w11, eq
    86a0:	b9000109 	str	w9, [x8]
    86a4:	b9400108 	ldr	w8, [x8]
    86a8:	d5033d9f 	dsb	ld
    86ac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    86b0:	530a2900 	ubfx	w0, w8, #10, #1
    86b4:	f84207f3 	ldr	x19, [sp],#32
    86b8:	d65f03c0 	ret

00000000000086bc <dwmac1000_dump_regs>:
    86bc:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    86c0:	a9014ff4 	stp	x20, x19, [sp,#16]
    86c4:	a9027bfd 	stp	x29, x30, [sp,#32]
    86c8:	910083fd 	add	x29, sp, #0x20
    86cc:	aa0003f3 	mov	x19, x0
    86d0:	94000000 	bl	0 <_mcount>
    86d4:	f9402273 	ldr	x19, [x19,#64]
    86d8:	d2800000 	mov	x0, #0x0                   	// #0
    86dc:	f2a00000 	movk	x0, #0x0, lsl #16
    86e0:	f2c00000 	movk	x0, #0x0, lsl #32
    86e4:	f2e00000 	movk	x0, #0x0, lsl #48
    86e8:	aa1303e1 	mov	x1, x19
    86ec:	94000000 	bl	0 <printk>
    86f0:	d2800016 	mov	x22, #0x0                   	// #0
    86f4:	f2a00016 	movk	x22, #0x0, lsl #16
    86f8:	f2c00016 	movk	x22, #0x0, lsl #32
    86fc:	aa1f03f4 	mov	x20, xzr
    8700:	aa1f03f5 	mov	x21, xzr
    8704:	f2e00016 	movk	x22, #0x0, lsl #48
    8708:	8b140268 	add	x8, x19, x20
    870c:	b9400103 	ldr	w3, [x8]
    8710:	d5033d9f 	dsb	ld
    8714:	aa1603e0 	mov	x0, x22
    8718:	2a1503e1 	mov	w1, w21
    871c:	2a1403e2 	mov	w2, w20
    8720:	94000000 	bl	0 <printk>
    8724:	910006b5 	add	x21, x21, #0x1
    8728:	f100debf 	cmp	x21, #0x37
    872c:	91001294 	add	x20, x20, #0x4
    8730:	54fffec1 	b.ne	8708 <dwmac1000_dump_regs+0x4c>
    8734:	a9427bfd 	ldp	x29, x30, [sp,#32]
    8738:	a9414ff4 	ldp	x20, x19, [sp,#16]
    873c:	a8c357f6 	ldp	x22, x21, [sp],#48
    8740:	d65f03c0 	ret

0000000000008744 <dwmac1000_irq_status>:
    8744:	f81c0ff7 	str	x23, [sp,#-64]!
    8748:	a90157f6 	stp	x22, x21, [sp,#16]
    874c:	a9024ff4 	stp	x20, x19, [sp,#32]
    8750:	a9037bfd 	stp	x29, x30, [sp,#48]
    8754:	9100c3fd 	add	x29, sp, #0x30
    8758:	aa0103f3 	mov	x19, x1
    875c:	aa0003f4 	mov	x20, x0
    8760:	94000000 	bl	0 <_mcount>
    8764:	f9402295 	ldr	x21, [x20,#64]
    8768:	9100e2a8 	add	x8, x21, #0x38
    876c:	9100f2a9 	add	x9, x21, #0x3c
    8770:	b9400108 	ldr	w8, [x8]
    8774:	d5033d9f 	dsb	ld
    8778:	b9400129 	ldr	w9, [x9]
    877c:	d5033d9f 	dsb	ld
    8780:	0a290116 	bic	w22, w8, w9
    8784:	373000f6 	tbnz	w22, #6, 87a0 <dwmac1000_irq_status+0x5c>
    8788:	37280156 	tbnz	w22, #5, 87b0 <dwmac1000_irq_status+0x6c>
    878c:	373801b6 	tbnz	w22, #7, 87c0 <dwmac1000_irq_status+0x7c>
    8790:	37180216 	tbnz	w22, #3, 87d0 <dwmac1000_irq_status+0x8c>
    8794:	375002d6 	tbnz	w22, #10, 87ec <dwmac1000_irq_status+0xa8>
    8798:	2a1f03f4 	mov	w20, wzr
    879c:	1400001e 	b	8814 <dwmac1000_irq_status+0xd0>
    87a0:	f940be68 	ldr	x8, [x19,#376]
    87a4:	91000508 	add	x8, x8, #0x1
    87a8:	f900be68 	str	x8, [x19,#376]
    87ac:	362fff16 	tbz	w22, #5, 878c <dwmac1000_irq_status+0x48>
    87b0:	f940c268 	ldr	x8, [x19,#384]
    87b4:	91000508 	add	x8, x8, #0x1
    87b8:	f900c268 	str	x8, [x19,#384]
    87bc:	363ffeb6 	tbz	w22, #7, 8790 <dwmac1000_irq_status+0x4c>
    87c0:	f940c668 	ldr	x8, [x19,#392]
    87c4:	91000508 	add	x8, x8, #0x1
    87c8:	f900c668 	str	x8, [x19,#392]
    87cc:	361ffe56 	tbz	w22, #3, 8794 <dwmac1000_irq_status+0x50>
    87d0:	9100b2a8 	add	x8, x21, #0x2c
    87d4:	b9400108 	ldr	w8, [x8]
    87d8:	d5033d9f 	dsb	ld
    87dc:	f940ba68 	ldr	x8, [x19,#368]
    87e0:	91000508 	add	x8, x8, #0x1
    87e4:	f900ba68 	str	x8, [x19,#368]
    87e8:	3657fd96 	tbz	w22, #10, 8798 <dwmac1000_irq_status+0x54>
    87ec:	9100c2a8 	add	x8, x21, #0x30
    87f0:	b9400114 	ldr	w20, [x8]
    87f4:	d5033d9f 	dsb	ld
    87f8:	37000654 	tbnz	w20, #0, 88c0 <dwmac1000_irq_status+0x17c>
    87fc:	370806b4 	tbnz	w20, #1, 88d0 <dwmac1000_irq_status+0x18c>
    8800:	37100714 	tbnz	w20, #2, 88e0 <dwmac1000_irq_status+0x19c>
    8804:	36180094 	tbz	w20, #3, 8814 <dwmac1000_irq_status+0xd0>
    8808:	f940d668 	ldr	x8, [x19,#424]
    880c:	91000508 	add	x8, x8, #0x1
    8810:	f900d668 	str	x8, [x19,#424]
    8814:	910312a8 	add	x8, x21, #0xc4
    8818:	b9400117 	ldr	w23, [x8]
    881c:	d5033d9f 	dsb	ld
    8820:	36100156 	tbz	w22, #2, 8848 <dwmac1000_irq_status+0x104>
    8824:	f9414268 	ldr	x8, [x19,#640]
    8828:	91000508 	add	x8, x8, #0x1
    882c:	f9014268 	str	x8, [x19,#640]
    8830:	362800d7 	tbz	w23, #5, 8848 <dwmac1000_irq_status+0x104>
    8834:	d2800000 	mov	x0, #0x0                   	// #0
    8838:	f2a00000 	movk	x0, #0x0, lsl #16
    883c:	f2c00000 	movk	x0, #0x0, lsl #32
    8840:	f2e00000 	movk	x0, #0x0, lsl #48
    8844:	94000000 	bl	0 <printk>
    8848:	360801f6 	tbz	w22, #1, 8884 <dwmac1000_irq_status+0x140>
    884c:	f9414668 	ldr	x8, [x19,#648]
    8850:	d2800009 	mov	x9, #0x0                   	// #0
    8854:	d280000a 	mov	x10, #0x0                   	// #0
    8858:	f2a00009 	movk	x9, #0x0, lsl #16
    885c:	f2a0000a 	movk	x10, #0x0, lsl #16
    8860:	f2c00009 	movk	x9, #0x0, lsl #32
    8864:	f2c0000a 	movk	x10, #0x0, lsl #32
    8868:	721e02ff 	tst	w23, #0x4
    886c:	f2e00009 	movk	x9, #0x0, lsl #48
    8870:	f2e0000a 	movk	x10, #0x0, lsl #48
    8874:	91000508 	add	x8, x8, #0x1
    8878:	9a890140 	csel	x0, x10, x9, eq
    887c:	f9014668 	str	x8, [x19,#648]
    8880:	94000000 	bl	0 <printk>
    8884:	36000756 	tbz	w22, #0, 896c <dwmac1000_irq_status+0x228>
    8888:	910362a8 	add	x8, x21, #0xd8
    888c:	b9400108 	ldr	w8, [x8]
    8890:	d5033d9f 	dsb	ld
    8894:	f9414a69 	ldr	x9, [x19,#656]
    8898:	91000529 	add	x9, x9, #0x1
    889c:	f9014a69 	str	x9, [x19,#656]
    88a0:	371802a8 	tbnz	w8, #3, 88f4 <dwmac1000_irq_status+0x1b0>
    88a4:	d2800000 	mov	x0, #0x0                   	// #0
    88a8:	f2a00000 	movk	x0, #0x0, lsl #16
    88ac:	f2c00000 	movk	x0, #0x0, lsl #32
    88b0:	f2e00000 	movk	x0, #0x0, lsl #48
    88b4:	f9014e7f 	str	xzr, [x19,#664]
    88b8:	94000000 	bl	0 <printk>
    88bc:	1400002c 	b	896c <dwmac1000_irq_status+0x228>
    88c0:	f940ca68 	ldr	x8, [x19,#400]
    88c4:	91000508 	add	x8, x8, #0x1
    88c8:	f900ca68 	str	x8, [x19,#400]
    88cc:	360ff9b4 	tbz	w20, #1, 8800 <dwmac1000_irq_status+0xbc>
    88d0:	f940ce68 	ldr	x8, [x19,#408]
    88d4:	91000508 	add	x8, x8, #0x1
    88d8:	f900ce68 	str	x8, [x19,#408]
    88dc:	3617f954 	tbz	w20, #2, 8804 <dwmac1000_irq_status+0xc0>
    88e0:	f940d268 	ldr	x8, [x19,#416]
    88e4:	91000508 	add	x8, x8, #0x1
    88e8:	f900d268 	str	x8, [x19,#416]
    88ec:	371ff8f4 	tbnz	w20, #3, 8808 <dwmac1000_irq_status+0xc4>
    88f0:	17ffffc9 	b	8814 <dwmac1000_irq_status+0xd0>
    88f4:	53010909 	ubfx	w9, w8, #1, #2
    88f8:	5280002a 	mov	w10, #0x1                   	// #1
    88fc:	7100093f 	cmp	w9, #0x2
    8900:	f9014e6a 	str	x10, [x19,#664]
    8904:	54000061 	b.ne	8910 <dwmac1000_irq_status+0x1cc>
    8908:	52807d01 	mov	w1, #0x3e8                 	// #1000
    890c:	14000006 	b	8924 <dwmac1000_irq_status+0x1e0>
    8910:	7100053f 	cmp	w9, #0x1
    8914:	54000061 	b.ne	8920 <dwmac1000_irq_status+0x1dc>
    8918:	52800c81 	mov	w1, #0x64                  	// #100
    891c:	14000002 	b	8924 <dwmac1000_irq_status+0x1e0>
    8920:	52800141 	mov	w1, #0xa                   	// #10
    8924:	d280000a 	mov	x10, #0x0                   	// #0
    8928:	d280000b 	mov	x11, #0x0                   	// #0
    892c:	f2a0000a 	movk	x10, #0x0, lsl #16
    8930:	f2a0000b 	movk	x11, #0x0, lsl #16
    8934:	d2800000 	mov	x0, #0x0                   	// #0
    8938:	f2c0000a 	movk	x10, #0x0, lsl #32
    893c:	f2c0000b 	movk	x11, #0x0, lsl #32
    8940:	f2a00000 	movk	x0, #0x0, lsl #16
    8944:	f2e0000a 	movk	x10, #0x0, lsl #48
    8948:	f2e0000b 	movk	x11, #0x0, lsl #48
    894c:	7200011f 	tst	w8, #0x1
    8950:	f2c00000 	movk	x0, #0x0, lsl #32
    8954:	12000109 	and	w9, w8, #0x1
    8958:	9a8a0162 	csel	x2, x11, x10, eq
    895c:	f2e00000 	movk	x0, #0x0, lsl #48
    8960:	f9015661 	str	x1, [x19,#680]
    8964:	f9015269 	str	x9, [x19,#672]
    8968:	94000000 	bl	0 <printk>
    896c:	2a1403e0 	mov	w0, w20
    8970:	a9437bfd 	ldp	x29, x30, [sp,#48]
    8974:	a9424ff4 	ldp	x20, x19, [sp,#32]
    8978:	a94157f6 	ldp	x22, x21, [sp,#16]
    897c:	f84407f7 	ldr	x23, [sp],#64
    8980:	d65f03c0 	ret

0000000000008984 <dwmac1000_set_filter>:
    8984:	d10243ff 	sub	sp, sp, #0x90
    8988:	a9036ffc 	stp	x28, x27, [sp,#48]
    898c:	a90467fa 	stp	x26, x25, [sp,#64]
    8990:	a9055ff8 	stp	x24, x23, [sp,#80]
    8994:	a90657f6 	stp	x22, x21, [sp,#96]
    8998:	a9074ff4 	stp	x20, x19, [sp,#112]
    899c:	a9087bfd 	stp	x29, x30, [sp,#128]
    89a0:	910203fd 	add	x29, sp, #0x80
    89a4:	aa0103f4 	mov	x20, x1
    89a8:	aa0003f5 	mov	x21, x0
    89ac:	910a1037 	add	x23, x1, #0x284
    89b0:	94000000 	bl	0 <_mcount>
    89b4:	6f00e400 	movi	v0.2d, #0x0
    89b8:	f9401e93 	ldr	x19, [x20,#56]
    89bc:	2949e2b6 	ldp	w22, w24, [x21,#76]
    89c0:	ad0083e0 	stp	q0, q0, [sp,#16]
    89c4:	b9423a88 	ldr	w8, [x20,#568]
    89c8:	374000e8 	tbnz	w8, #8, 89e4 <dwmac1000_set_filter+0x60>
    89cc:	374802c8 	tbnz	w8, #9, 8a24 <dwmac1000_set_filter+0xa0>
    89d0:	b942ae88 	ldr	w8, [x20,#684]
    89d4:	35000c38 	cbnz	w24, 8b58 <dwmac1000_set_filter+0x1d4>
    89d8:	34000c08 	cbz	w8, 8b58 <dwmac1000_set_filter+0x1d4>
    89dc:	5280020c 	mov	w12, #0x10                  	// #16
    89e0:	1400001f 	b	8a5c <dwmac1000_set_filter+0xd8>
    89e4:	5280002c 	mov	w12, #0x1                   	// #1
    89e8:	7100231f 	cmp	w24, #0x8
    89ec:	54000220 	b.eq	8a30 <dwmac1000_set_filter+0xac>
    89f0:	71001f1f 	cmp	w24, #0x7
    89f4:	54000220 	b.eq	8a38 <dwmac1000_set_filter+0xb4>
    89f8:	71001b1f 	cmp	w24, #0x6
    89fc:	54000301 	b.ne	8a5c <dwmac1000_set_filter+0xd8>
    8a00:	d5033e9f 	dsb	st
    8a04:	b94013e8 	ldr	w8, [sp,#16]
    8a08:	91003269 	add	x9, x19, #0xc
    8a0c:	b9000128 	str	w8, [x9]
    8a10:	d5033e9f 	dsb	st
    8a14:	b94017e8 	ldr	w8, [sp,#20]
    8a18:	91002269 	add	x9, x19, #0x8
    8a1c:	b9000128 	str	w8, [x9]
    8a20:	1400000f 	b	8a5c <dwmac1000_set_filter+0xd8>
    8a24:	5280020c 	mov	w12, #0x10                  	// #16
    8a28:	7100231f 	cmp	w24, #0x8
    8a2c:	54fffe21 	b.ne	89f0 <dwmac1000_set_filter+0x6c>
    8a30:	52800108 	mov	w8, #0x8                   	// #8
    8a34:	14000002 	b	8a3c <dwmac1000_set_filter+0xb8>
    8a38:	52800088 	mov	w8, #0x4                   	// #4
    8a3c:	91140269 	add	x9, x19, #0x500
    8a40:	910043ea 	add	x10, sp, #0x10
    8a44:	d5033e9f 	dsb	st
    8a48:	b840454b 	ldr	w11, [x10],#4
    8a4c:	f1000508 	subs	x8, x8, #0x1
    8a50:	b900012b 	str	w11, [x9]
    8a54:	91001129 	add	x9, x9, #0x4
    8a58:	54ffff61 	b.ne	8a44 <dwmac1000_set_filter+0xc0>
    8a5c:	b9429688 	ldr	w8, [x20,#660]
    8a60:	6b16011f 	cmp	w8, w22
    8a64:	54000069 	b.ls	8a70 <dwmac1000_set_filter+0xec>
    8a68:	3200018c 	orr	w12, w12, #0x1
    8a6c:	14000030 	b	8b2c <dwmac1000_set_filter+0x1a8>
    8a70:	f94002f8 	ldr	x24, [x23]
    8a74:	52800034 	mov	w20, #0x1                   	// #1
    8a78:	b9000fec 	str	w12, [sp,#12]
    8a7c:	eb17031f 	cmp	x24, x23
    8a80:	54000260 	b.eq	8acc <dwmac1000_set_filter+0x148>
    8a84:	52800119 	mov	w25, #0x8                   	// #8
    8a88:	5280081a 	mov	w26, #0x40                  	// #64
    8a8c:	5281001b 	mov	w27, #0x800                 	// #2048
    8a90:	5280089c 	mov	w28, #0x44                  	// #68
    8a94:	52810095 	mov	w21, #0x804                 	// #2052
    8a98:	71003e9f 	cmp	w20, #0xf
    8a9c:	1a9ac368 	csel	w8, w27, w26, gt
    8aa0:	1a9cc2a9 	csel	w9, w21, w28, gt
    8aa4:	91004301 	add	x1, x24, #0x10
    8aa8:	0b190102 	add	w2, w8, w25
    8aac:	0b190123 	add	w3, w9, w25
    8ab0:	aa1303e0 	mov	x0, x19
    8ab4:	94000000 	bl	8378 <stmmac_set_mac_addr>
    8ab8:	f9400318 	ldr	x24, [x24]
    8abc:	11000694 	add	w20, w20, #0x1
    8ac0:	11002339 	add	w25, w25, #0x8
    8ac4:	eb17031f 	cmp	x24, x23
    8ac8:	54fffe81 	b.ne	8a98 <dwmac1000_set_filter+0x114>
    8acc:	6b16029f 	cmp	w20, w22
    8ad0:	540002c2 	b.cs	8b28 <dwmac1000_set_filter+0x1a4>
    8ad4:	531d7288 	lsl	w8, w20, #3
    8ad8:	52800809 	mov	w9, #0x40                  	// #64
    8adc:	5281000a 	mov	w10, #0x800                 	// #2048
    8ae0:	5280088b 	mov	w11, #0x44                  	// #68
    8ae4:	5281008c 	mov	w12, #0x804                 	// #2052
    8ae8:	71003e9f 	cmp	w20, #0xf
    8aec:	1a89c14e 	csel	w14, w10, w9, gt
    8af0:	0b0801ce 	add	w14, w14, w8
    8af4:	2a1f03ed 	mov	w13, wzr
    8af8:	d5033e9f 	dsb	st
    8afc:	8b2ec26e 	add	x14, x19, w14, sxtw
    8b00:	b90001cd 	str	w13, [x14]
    8b04:	d5033e9f 	dsb	st
    8b08:	1a8bc18f 	csel	w15, w12, w11, gt
    8b0c:	11000694 	add	w20, w20, #0x1
    8b10:	0b0801ef 	add	w15, w15, w8
    8b14:	6b1402df 	cmp	w22, w20
    8b18:	11002108 	add	w8, w8, #0x8
    8b1c:	8b2fc270 	add	x16, x19, w15, sxtw
    8b20:	b900020d 	str	w13, [x16]
    8b24:	54fffe21 	b.ne	8ae8 <dwmac1000_set_filter+0x164>
    8b28:	b9400fec 	ldr	w12, [sp,#12]
    8b2c:	d5033e9f 	dsb	st
    8b30:	91001268 	add	x8, x19, #0x4
    8b34:	b900010c 	str	w12, [x8]
    8b38:	a9487bfd 	ldp	x29, x30, [sp,#128]
    8b3c:	a9474ff4 	ldp	x20, x19, [sp,#112]
    8b40:	a94657f6 	ldp	x22, x21, [sp,#96]
    8b44:	a9455ff8 	ldp	x24, x23, [sp,#80]
    8b48:	a94467fa 	ldp	x26, x25, [sp,#64]
    8b4c:	a9436ffc 	ldp	x28, x27, [sp,#48]
    8b50:	910243ff 	add	sp, sp, #0x90
    8b54:	d65f03c0 	ret
    8b58:	340003a8 	cbz	w8, 8bcc <dwmac1000_set_filter+0x248>
    8b5c:	aa1703f5 	mov	x21, x23
    8b60:	f8418eb9 	ldr	x25, [x21,#24]!
    8b64:	eb15033f 	cmp	x25, x21
    8b68:	540002a0 	b.eq	8bbc <dwmac1000_set_filter+0x238>
    8b6c:	52800408 	mov	w8, #0x20                  	// #32
    8b70:	5280003a 	mov	w26, #0x1                   	// #1
    8b74:	4b18011b 	sub	w27, w8, w24
    8b78:	910043fc 	add	x28, sp, #0x10
    8b7c:	91004321 	add	x1, x25, #0x10
    8b80:	12800000 	mov	w0, #0xffffffff            	// #-1
    8b84:	528000c2 	mov	w2, #0x6                   	// #6
    8b88:	94000000 	bl	0 <crc32_le>
    8b8c:	2a2003e8 	mvn	w8, w0
    8b90:	5ac00108 	rbit	w8, w8
    8b94:	1adb2508 	lsr	w8, w8, w27
    8b98:	13057d09 	asr	w9, w8, #5
    8b9c:	937e7d29 	sbfiz	x9, x9, #2, #32
    8ba0:	b8696b8a 	ldr	w10, [x28,x9]
    8ba4:	1ac82348 	lsl	w8, w26, w8
    8ba8:	2a0a0108 	orr	w8, w8, w10
    8bac:	b8296b88 	str	w8, [x28,x9]
    8bb0:	f9400339 	ldr	x25, [x25]
    8bb4:	eb15033f 	cmp	x25, x21
    8bb8:	54fffe21 	b.ne	8b7c <dwmac1000_set_filter+0x1f8>
    8bbc:	5280008c 	mov	w12, #0x4                   	// #4
    8bc0:	7100231f 	cmp	w24, #0x8
    8bc4:	54fff161 	b.ne	89f0 <dwmac1000_set_filter+0x6c>
    8bc8:	17ffff9a 	b	8a30 <dwmac1000_set_filter+0xac>
    8bcc:	2a1f03ec 	mov	w12, wzr
    8bd0:	7100231f 	cmp	w24, #0x8
    8bd4:	54fff0e1 	b.ne	89f0 <dwmac1000_set_filter+0x6c>
    8bd8:	17ffff96 	b	8a30 <dwmac1000_set_filter+0xac>

0000000000008bdc <dwmac1000_flow_ctrl>:
    8bdc:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    8be0:	a9014ff4 	stp	x20, x19, [sp,#16]
    8be4:	a9027bfd 	stp	x29, x30, [sp,#32]
    8be8:	910083fd 	add	x29, sp, #0x20
    8bec:	2a0303f3 	mov	w19, w3
    8bf0:	2a0203f4 	mov	w20, w2
    8bf4:	2a0103f5 	mov	w21, w1
    8bf8:	aa0003f6 	mov	x22, x0
    8bfc:	94000000 	bl	0 <_mcount>
    8c00:	f94022c8 	ldr	x8, [x22,#64]
    8c04:	7200029f 	tst	w20, #0x1
    8c08:	52800189 	mov	w9, #0xc                   	// #12
    8c0c:	5280010a 	mov	w10, #0x8                   	// #8
    8c10:	121f028b 	and	w11, w20, #0x2
    8c14:	53103e6c 	lsl	w12, w19, #16
    8c18:	1a890149 	csel	w9, w10, w9, eq
    8c1c:	710002bf 	cmp	w21, #0x0
    8c20:	2a0b0129 	orr	w9, w9, w11
    8c24:	1a8c03ea 	csel	w10, wzr, w12, eq
    8c28:	d5033e9f 	dsb	st
    8c2c:	2a0a0129 	orr	w9, w9, w10
    8c30:	91006108 	add	x8, x8, #0x18
    8c34:	b9000109 	str	w9, [x8]
    8c38:	a9427bfd 	ldp	x29, x30, [sp,#32]
    8c3c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    8c40:	a8c357f6 	ldp	x22, x21, [sp],#48
    8c44:	d65f03c0 	ret

0000000000008c48 <dwmac1000_pmt>:
    8c48:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    8c4c:	a9017bfd 	stp	x29, x30, [sp,#16]
    8c50:	910043fd 	add	x29, sp, #0x10
    8c54:	aa0103f3 	mov	x19, x1
    8c58:	aa0003f4 	mov	x20, x0
    8c5c:	94000000 	bl	0 <_mcount>
    8c60:	f9402288 	ldr	x8, [x20,#64]
    8c64:	f27b027f 	tst	x19, #0x20
    8c68:	52800069 	mov	w9, #0x3                   	// #3
    8c6c:	528040aa 	mov	w10, #0x205                 	// #517
    8c70:	1a8903e9 	csel	w9, wzr, w9, eq
    8c74:	f27f027f 	tst	x19, #0x2
    8c78:	2a0a012a 	orr	w10, w9, w10
    8c7c:	d5033e9f 	dsb	st
    8c80:	1a8a0129 	csel	w9, w9, w10, eq
    8c84:	9100b108 	add	x8, x8, #0x2c
    8c88:	b9000109 	str	w9, [x8]
    8c8c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8c90:	a8c24ff4 	ldp	x20, x19, [sp],#32
    8c94:	d65f03c0 	ret

0000000000008c98 <dwmac1000_set_umac_addr>:
    8c98:	f81d0ff5 	str	x21, [sp,#-48]!
    8c9c:	a9014ff4 	stp	x20, x19, [sp,#16]
    8ca0:	a9027bfd 	stp	x29, x30, [sp,#32]
    8ca4:	910083fd 	add	x29, sp, #0x20
    8ca8:	2a0203f3 	mov	w19, w2
    8cac:	aa0103f4 	mov	x20, x1
    8cb0:	aa0003f5 	mov	x21, x0
    8cb4:	94000000 	bl	0 <_mcount>
    8cb8:	f94022a0 	ldr	x0, [x21,#64]
    8cbc:	71003e7f 	cmp	w19, #0xf
    8cc0:	52800808 	mov	w8, #0x40                  	// #64
    8cc4:	52810009 	mov	w9, #0x800                 	// #2048
    8cc8:	531d726a 	lsl	w10, w19, #3
    8ccc:	5280088b 	mov	w11, #0x44                  	// #68
    8cd0:	5281008c 	mov	w12, #0x804                 	// #2052
    8cd4:	1a888128 	csel	w8, w9, w8, hi
    8cd8:	0b0a0102 	add	w2, w8, w10
    8cdc:	1a8b8188 	csel	w8, w12, w11, hi
    8ce0:	0b0a0103 	add	w3, w8, w10
    8ce4:	aa1403e1 	mov	x1, x20
    8ce8:	94000000 	bl	8378 <stmmac_set_mac_addr>
    8cec:	a9427bfd 	ldp	x29, x30, [sp,#32]
    8cf0:	a9414ff4 	ldp	x20, x19, [sp,#16]
    8cf4:	f84307f5 	ldr	x21, [sp],#48
    8cf8:	d65f03c0 	ret

0000000000008cfc <dwmac1000_get_umac_addr>:
    8cfc:	f81d0ff5 	str	x21, [sp,#-48]!
    8d00:	a9014ff4 	stp	x20, x19, [sp,#16]
    8d04:	a9027bfd 	stp	x29, x30, [sp,#32]
    8d08:	910083fd 	add	x29, sp, #0x20
    8d0c:	2a0203f3 	mov	w19, w2
    8d10:	aa0103f4 	mov	x20, x1
    8d14:	aa0003f5 	mov	x21, x0
    8d18:	94000000 	bl	0 <_mcount>
    8d1c:	f94022a0 	ldr	x0, [x21,#64]
    8d20:	71003e7f 	cmp	w19, #0xf
    8d24:	52800808 	mov	w8, #0x40                  	// #64
    8d28:	52810009 	mov	w9, #0x800                 	// #2048
    8d2c:	531d726a 	lsl	w10, w19, #3
    8d30:	5280088b 	mov	w11, #0x44                  	// #68
    8d34:	5281008c 	mov	w12, #0x804                 	// #2052
    8d38:	1a888128 	csel	w8, w9, w8, hi
    8d3c:	0b0a0102 	add	w2, w8, w10
    8d40:	1a8b8188 	csel	w8, w12, w11, hi
    8d44:	0b0a0103 	add	w3, w8, w10
    8d48:	aa1403e1 	mov	x1, x20
    8d4c:	94000000 	bl	841c <stmmac_get_mac_addr>
    8d50:	a9427bfd 	ldp	x29, x30, [sp,#32]
    8d54:	a9414ff4 	ldp	x20, x19, [sp,#16]
    8d58:	f84307f5 	ldr	x21, [sp],#48
    8d5c:	d65f03c0 	ret

0000000000008d60 <dwmac1000_set_eee_mode>:
    8d60:	f81e0ff3 	str	x19, [sp,#-32]!
    8d64:	a9017bfd 	stp	x29, x30, [sp,#16]
    8d68:	910043fd 	add	x29, sp, #0x10
    8d6c:	aa0003f3 	mov	x19, x0
    8d70:	94000000 	bl	0 <_mcount>
    8d74:	f9402268 	ldr	x8, [x19,#64]
    8d78:	52a0012a 	mov	w10, #0x90000               	// #589824
    8d7c:	9100c108 	add	x8, x8, #0x30
    8d80:	b9400109 	ldr	w9, [x8]
    8d84:	d5033d9f 	dsb	ld
    8d88:	d5033e9f 	dsb	st
    8d8c:	2a0a0129 	orr	w9, w9, w10
    8d90:	b9000109 	str	w9, [x8]
    8d94:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8d98:	f84207f3 	ldr	x19, [sp],#32
    8d9c:	d65f03c0 	ret

0000000000008da0 <dwmac1000_reset_eee_mode>:
    8da0:	f81e0ff3 	str	x19, [sp,#-32]!
    8da4:	a9017bfd 	stp	x29, x30, [sp,#16]
    8da8:	910043fd 	add	x29, sp, #0x10
    8dac:	aa0003f3 	mov	x19, x0
    8db0:	94000000 	bl	0 <_mcount>
    8db4:	f9402268 	ldr	x8, [x19,#64]
    8db8:	12a0012a 	mov	w10, #0xfff6ffff            	// #-589825
    8dbc:	9100c108 	add	x8, x8, #0x30
    8dc0:	b9400109 	ldr	w9, [x8]
    8dc4:	d5033d9f 	dsb	ld
    8dc8:	d5033e9f 	dsb	st
    8dcc:	0a0a0129 	and	w9, w9, w10
    8dd0:	b9000109 	str	w9, [x8]
    8dd4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8dd8:	f84207f3 	ldr	x19, [sp],#32
    8ddc:	d65f03c0 	ret

0000000000008de0 <dwmac1000_set_eee_timer>:
    8de0:	f81d0ff5 	str	x21, [sp,#-48]!
    8de4:	a9014ff4 	stp	x20, x19, [sp,#16]
    8de8:	a9027bfd 	stp	x29, x30, [sp,#32]
    8dec:	910083fd 	add	x29, sp, #0x20
    8df0:	2a0203f3 	mov	w19, w2
    8df4:	2a0103f4 	mov	w20, w1
    8df8:	aa0003f5 	mov	x21, x0
    8dfc:	94000000 	bl	0 <_mcount>
    8e00:	f94022a8 	ldr	x8, [x21,#64]
    8e04:	12003e69 	and	w9, w19, #0xffff
    8e08:	d5033e9f 	dsb	st
    8e0c:	33102a89 	bfi	w9, w20, #16, #11
    8e10:	9100d108 	add	x8, x8, #0x34
    8e14:	b9000109 	str	w9, [x8]
    8e18:	a9427bfd 	ldp	x29, x30, [sp,#32]
    8e1c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    8e20:	f84307f5 	ldr	x21, [sp],#48
    8e24:	d65f03c0 	ret

0000000000008e28 <dwmac1000_set_eee_pls>:
    8e28:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    8e2c:	a9017bfd 	stp	x29, x30, [sp,#16]
    8e30:	910043fd 	add	x29, sp, #0x10
    8e34:	2a0103f3 	mov	w19, w1
    8e38:	aa0003f4 	mov	x20, x0
    8e3c:	94000000 	bl	0 <_mcount>
    8e40:	f9402288 	ldr	x8, [x20,#64]
    8e44:	7100027f 	cmp	w19, #0x0
    8e48:	9100c108 	add	x8, x8, #0x30
    8e4c:	b9400109 	ldr	w9, [x8]
    8e50:	d5033d9f 	dsb	ld
    8e54:	320f012a 	orr	w10, w9, #0x20000
    8e58:	120e7929 	and	w9, w9, #0xfffdffff
    8e5c:	d5033e9f 	dsb	st
    8e60:	1a8a0129 	csel	w9, w9, w10, eq
    8e64:	b9000109 	str	w9, [x8]
    8e68:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8e6c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    8e70:	d65f03c0 	ret

0000000000008e74 <dwmac1000_debug>:
    8e74:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    8e78:	a9017bfd 	stp	x29, x30, [sp,#16]
    8e7c:	910043fd 	add	x29, sp, #0x10
    8e80:	aa0103f3 	mov	x19, x1
    8e84:	aa0003f4 	mov	x20, x0
    8e88:	94000000 	bl	0 <_mcount>
    8e8c:	91009288 	add	x8, x20, #0x24
    8e90:	b9400108 	ldr	w8, [x8]
    8e94:	d5033d9f 	dsb	ld
    8e98:	2a0803e8 	mov	w8, w8
    8e9c:	37c80728 	tbnz	w8, #25, 8f80 <dwmac1000_debug+0x10c>
    8ea0:	37c00788 	tbnz	w8, #24, 8f90 <dwmac1000_debug+0x11c>
    8ea4:	37b007e8 	tbnz	w8, #22, 8fa0 <dwmac1000_debug+0x12c>
    8ea8:	f26c0509 	ands	x9, x8, #0x300000
    8eac:	54000841 	b.ne	8fb4 <dwmac1000_debug+0x140>
    8eb0:	36980088 	tbz	w8, #19, 8ec0 <dwmac1000_debug+0x4c>
    8eb4:	f9417669 	ldr	x9, [x19,#744]
    8eb8:	91000529 	add	x9, x9, #0x1
    8ebc:	f9017669 	str	x9, [x19,#744]
    8ec0:	f26f0509 	ands	x9, x8, #0x60000
    8ec4:	54000160 	b.eq	8ef0 <dwmac1000_debug+0x7c>
    8ec8:	d351fd29 	lsr	x9, x9, #17
    8ecc:	7100053f 	cmp	w9, #0x1
    8ed0:	540008a0 	b.eq	8fe4 <dwmac1000_debug+0x170>
    8ed4:	7100093f 	cmp	w9, #0x2
    8ed8:	54000900 	b.eq	8ff8 <dwmac1000_debug+0x184>
    8edc:	71000d3f 	cmp	w9, #0x3
    8ee0:	54000be1 	b.ne	905c <dwmac1000_debug+0x1e8>
    8ee4:	f9417a69 	ldr	x9, [x19,#752]
    8ee8:	91000529 	add	x9, x9, #0x1
    8eec:	f9017a69 	str	x9, [x19,#752]
    8ef0:	36800088 	tbz	w8, #16, 8f00 <dwmac1000_debug+0x8c>
    8ef4:	f9418a69 	ldr	x9, [x19,#784]
    8ef8:	91000529 	add	x9, x9, #0x1
    8efc:	f9018a69 	str	x9, [x19,#784]
    8f00:	f278051f 	tst	x8, #0x300
    8f04:	54000080 	b.eq	8f14 <dwmac1000_debug+0xa0>
    8f08:	f9419a69 	ldr	x9, [x19,#816]
    8f0c:	91000529 	add	x9, x9, #0x1
    8f10:	f9019a69 	str	x9, [x19,#816]
    8f14:	f27b0509 	ands	x9, x8, #0x60
    8f18:	54000160 	b.eq	8f44 <dwmac1000_debug+0xd0>
    8f1c:	d345fd29 	lsr	x9, x9, #5
    8f20:	7100053f 	cmp	w9, #0x1
    8f24:	54000740 	b.eq	900c <dwmac1000_debug+0x198>
    8f28:	7100093f 	cmp	w9, #0x2
    8f2c:	540007a0 	b.eq	9020 <dwmac1000_debug+0x1ac>
    8f30:	71000d3f 	cmp	w9, #0x3
    8f34:	540009e1 	b.ne	9070 <dwmac1000_debug+0x1fc>
    8f38:	f9419e69 	ldr	x9, [x19,#824]
    8f3c:	91000529 	add	x9, x9, #0x1
    8f40:	f9019e69 	str	x9, [x19,#824]
    8f44:	36200088 	tbz	w8, #4, 8f54 <dwmac1000_debug+0xe0>
    8f48:	f941ae69 	ldr	x9, [x19,#856]
    8f4c:	91000529 	add	x9, x9, #0x1
    8f50:	f901ae69 	str	x9, [x19,#856]
    8f54:	f27f0509 	ands	x9, x8, #0x6
    8f58:	54000060 	b.eq	8f64 <dwmac1000_debug+0xf0>
    8f5c:	d341fd29 	lsr	x9, x9, #1
    8f60:	f901b269 	str	x9, [x19,#864]
    8f64:	36000088 	tbz	w8, #0, 8f74 <dwmac1000_debug+0x100>
    8f68:	f941b668 	ldr	x8, [x19,#872]
    8f6c:	91000508 	add	x8, x8, #0x1
    8f70:	f901b668 	str	x8, [x19,#872]
    8f74:	a9417bfd 	ldp	x29, x30, [sp,#16]
    8f78:	a8c24ff4 	ldp	x20, x19, [sp],#32
    8f7c:	d65f03c0 	ret
    8f80:	f9415a69 	ldr	x9, [x19,#688]
    8f84:	91000529 	add	x9, x9, #0x1
    8f88:	f9015a69 	str	x9, [x19,#688]
    8f8c:	36c7f8c8 	tbz	w8, #24, 8ea4 <dwmac1000_debug+0x30>
    8f90:	f9415e69 	ldr	x9, [x19,#696]
    8f94:	91000529 	add	x9, x9, #0x1
    8f98:	f9015e69 	str	x9, [x19,#696]
    8f9c:	36b7f868 	tbz	w8, #22, 8ea8 <dwmac1000_debug+0x34>
    8fa0:	f9416269 	ldr	x9, [x19,#704]
    8fa4:	91000529 	add	x9, x9, #0x1
    8fa8:	f9016269 	str	x9, [x19,#704]
    8fac:	f26c0509 	ands	x9, x8, #0x300000
    8fb0:	54fff800 	b.eq	8eb0 <dwmac1000_debug+0x3c>
    8fb4:	d354fd29 	lsr	x9, x9, #20
    8fb8:	7100053f 	cmp	w9, #0x1
    8fbc:	540003c0 	b.eq	9034 <dwmac1000_debug+0x1c0>
    8fc0:	7100093f 	cmp	w9, #0x2
    8fc4:	54000420 	b.eq	9048 <dwmac1000_debug+0x1d4>
    8fc8:	71000d3f 	cmp	w9, #0x3
    8fcc:	540005c1 	b.ne	9084 <dwmac1000_debug+0x210>
    8fd0:	f9416669 	ldr	x9, [x19,#712]
    8fd4:	91000529 	add	x9, x9, #0x1
    8fd8:	f9016669 	str	x9, [x19,#712]
    8fdc:	379ff6c8 	tbnz	w8, #19, 8eb4 <dwmac1000_debug+0x40>
    8fe0:	17ffffb8 	b	8ec0 <dwmac1000_debug+0x4c>
    8fe4:	f9418269 	ldr	x9, [x19,#768]
    8fe8:	91000529 	add	x9, x9, #0x1
    8fec:	f9018269 	str	x9, [x19,#768]
    8ff0:	3787f828 	tbnz	w8, #16, 8ef4 <dwmac1000_debug+0x80>
    8ff4:	17ffffc3 	b	8f00 <dwmac1000_debug+0x8c>
    8ff8:	f9418669 	ldr	x9, [x19,#776]
    8ffc:	91000529 	add	x9, x9, #0x1
    9000:	f9018669 	str	x9, [x19,#776]
    9004:	3787f788 	tbnz	w8, #16, 8ef4 <dwmac1000_debug+0x80>
    9008:	17ffffbe 	b	8f00 <dwmac1000_debug+0x8c>
    900c:	f941a669 	ldr	x9, [x19,#840]
    9010:	91000529 	add	x9, x9, #0x1
    9014:	f901a669 	str	x9, [x19,#840]
    9018:	3727f988 	tbnz	w8, #4, 8f48 <dwmac1000_debug+0xd4>
    901c:	17ffffce 	b	8f54 <dwmac1000_debug+0xe0>
    9020:	f941a269 	ldr	x9, [x19,#832]
    9024:	91000529 	add	x9, x9, #0x1
    9028:	f901a269 	str	x9, [x19,#832]
    902c:	3727f8e8 	tbnz	w8, #4, 8f48 <dwmac1000_debug+0xd4>
    9030:	17ffffc9 	b	8f54 <dwmac1000_debug+0xe0>
    9034:	f9416e69 	ldr	x9, [x19,#728]
    9038:	91000529 	add	x9, x9, #0x1
    903c:	f9016e69 	str	x9, [x19,#728]
    9040:	379ff3a8 	tbnz	w8, #19, 8eb4 <dwmac1000_debug+0x40>
    9044:	17ffff9f 	b	8ec0 <dwmac1000_debug+0x4c>
    9048:	f9416a69 	ldr	x9, [x19,#720]
    904c:	91000529 	add	x9, x9, #0x1
    9050:	f9016a69 	str	x9, [x19,#720]
    9054:	379ff308 	tbnz	w8, #19, 8eb4 <dwmac1000_debug+0x40>
    9058:	17ffff9a 	b	8ec0 <dwmac1000_debug+0x4c>
    905c:	f9417e69 	ldr	x9, [x19,#760]
    9060:	91000529 	add	x9, x9, #0x1
    9064:	f9017e69 	str	x9, [x19,#760]
    9068:	3787f468 	tbnz	w8, #16, 8ef4 <dwmac1000_debug+0x80>
    906c:	17ffffa5 	b	8f00 <dwmac1000_debug+0x8c>
    9070:	f941aa69 	ldr	x9, [x19,#848]
    9074:	91000529 	add	x9, x9, #0x1
    9078:	f901aa69 	str	x9, [x19,#848]
    907c:	3727f668 	tbnz	w8, #4, 8f48 <dwmac1000_debug+0xd4>
    9080:	17ffffb5 	b	8f54 <dwmac1000_debug+0xe0>
    9084:	f9417269 	ldr	x9, [x19,#736]
    9088:	91000529 	add	x9, x9, #0x1
    908c:	f9017269 	str	x9, [x19,#736]
    9090:	379ff128 	tbnz	w8, #19, 8eb4 <dwmac1000_debug+0x40>
    9094:	17ffff8b 	b	8ec0 <dwmac1000_debug+0x4c>

0000000000009098 <dwmac1000_ctrl_ane>:
    9098:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    909c:	a9014ff4 	stp	x20, x19, [sp,#16]
    90a0:	a9027bfd 	stp	x29, x30, [sp,#32]
    90a4:	910083fd 	add	x29, sp, #0x20
    90a8:	2a0303f3 	mov	w19, w3
    90ac:	2a0203f4 	mov	w20, w2
    90b0:	2a0103f5 	mov	w21, w1
    90b4:	aa0003f6 	mov	x22, x0
    90b8:	94000000 	bl	0 <_mcount>
    90bc:	52824009 	mov	w9, #0x1200                	// #4608
    90c0:	910302c8 	add	x8, x22, #0xc0
    90c4:	720002bf 	tst	w21, #0x1
    90c8:	b940010a 	ldr	w10, [x8]
    90cc:	2a090149 	orr	w9, w10, w9
    90d0:	1a8a1129 	csel	w9, w9, w10, ne
    90d4:	7200029f 	tst	w20, #0x1
    90d8:	320e012a 	orr	w10, w9, #0x40000
    90dc:	1a891149 	csel	w9, w10, w9, ne
    90e0:	d5033d9f 	dsb	ld
    90e4:	3212012a 	orr	w10, w9, #0x4000
    90e8:	7200027f 	tst	w19, #0x1
    90ec:	d5033e9f 	dsb	st
    90f0:	1a891149 	csel	w9, w10, w9, ne
    90f4:	b9000109 	str	w9, [x8]
    90f8:	a9427bfd 	ldp	x29, x30, [sp,#32]
    90fc:	a9414ff4 	ldp	x20, x19, [sp,#16]
    9100:	a8c357f6 	ldp	x22, x21, [sp],#48
    9104:	d65f03c0 	ret

0000000000009108 <dwmac1000_rane>:
    9108:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    910c:	a9017bfd 	stp	x29, x30, [sp,#16]
    9110:	910043fd 	add	x29, sp, #0x10
    9114:	2a0103f3 	mov	w19, w1
    9118:	aa0003f4 	mov	x20, x0
    911c:	94000000 	bl	0 <_mcount>
    9120:	91030288 	add	x8, x20, #0xc0
    9124:	b9400109 	ldr	w9, [x8]
    9128:	d5033d9f 	dsb	ld
    912c:	3217012a 	orr	w10, w9, #0x200
    9130:	7200027f 	tst	w19, #0x1
    9134:	d5033e9f 	dsb	st
    9138:	1a891149 	csel	w9, w10, w9, ne
    913c:	b9000109 	str	w9, [x8]
    9140:	a9417bfd 	ldp	x29, x30, [sp,#16]
    9144:	a8c24ff4 	ldp	x20, x19, [sp],#32
    9148:	d65f03c0 	ret

000000000000914c <dwmac1000_get_adv_lp>:
    914c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    9150:	a9017bfd 	stp	x29, x30, [sp,#16]
    9154:	910043fd 	add	x29, sp, #0x10
    9158:	aa0103f3 	mov	x19, x1
    915c:	aa0003f4 	mov	x20, x0
    9160:	94000000 	bl	0 <_mcount>
    9164:	91032288 	add	x8, x20, #0xc8
    9168:	b9400108 	ldr	w8, [x8]
    916c:	d5033d9f 	dsb	ld
    9170:	36280068 	tbz	w8, #5, 917c <dwmac1000_get_adv_lp+0x30>
    9174:	52800029 	mov	w9, #0x1                   	// #1
    9178:	b9000669 	str	w9, [x19,#4]
    917c:	53072108 	ubfx	w8, w8, #7, #2
    9180:	91033289 	add	x9, x20, #0xcc
    9184:	b9000268 	str	w8, [x19]
    9188:	b9400128 	ldr	w8, [x9]
    918c:	d5033d9f 	dsb	ld
    9190:	2a0803e8 	mov	w8, w8
    9194:	36280068 	tbz	w8, #5, 91a0 <dwmac1000_get_adv_lp+0x54>
    9198:	52800029 	mov	w9, #0x1                   	// #1
    919c:	b9000e69 	str	w9, [x19,#12]
    91a0:	36300048 	tbz	w8, #6, 91a8 <dwmac1000_get_adv_lp+0x5c>
    91a4:	b9000e7f 	str	wzr, [x19,#12]
    91a8:	53072108 	ubfx	w8, w8, #7, #2
    91ac:	b9000a68 	str	w8, [x19,#8]
    91b0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    91b4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    91b8:	d65f03c0 	ret

00000000000091bc <dwmac1000_dma_init>:
    91bc:	a9bb67fa 	stp	x26, x25, [sp,#-80]!
    91c0:	a9015ff8 	stp	x24, x23, [sp,#16]
    91c4:	a90257f6 	stp	x22, x21, [sp,#32]
    91c8:	a9034ff4 	stp	x20, x19, [sp,#48]
    91cc:	a9047bfd 	stp	x29, x30, [sp,#64]
    91d0:	910103fd 	add	x29, sp, #0x40
    91d4:	2a0703f3 	mov	w19, w7
    91d8:	2a0603f4 	mov	w20, w6
    91dc:	2a0503f5 	mov	w21, w5
    91e0:	2a0403f6 	mov	w22, w4
    91e4:	2a0303f7 	mov	w23, w3
    91e8:	2a0203f8 	mov	w24, w2
    91ec:	2a0103f9 	mov	w25, w1
    91f0:	aa0003fa 	mov	x26, x0
    91f4:	94000000 	bl	0 <_mcount>
    91f8:	52981fe9 	mov	w9, #0xc0ff                	// #49407
    91fc:	7100031f 	cmp	w24, #0x0
    9200:	52a0202a 	mov	w10, #0x1010000             	// #16842752
    9204:	52a0200b 	mov	w11, #0x1000000             	// #16777216
    9208:	72bfdfe9 	movk	w9, #0xfeff, lsl #16
    920c:	1a8a016a 	csel	w10, w11, w10, eq
    9210:	91400748 	add	x8, x26, #0x1, lsl #12
    9214:	b940010c 	ldr	w12, [x8]
    9218:	0a090189 	and	w9, w12, w9
    921c:	2a19214a 	orr	w10, w10, w25, lsl #8
    9220:	2a090149 	orr	w9, w10, w9
    9224:	710002ff 	cmp	w23, #0x0
    9228:	3206012a 	orr	w10, w9, #0x4000000
    922c:	1a8a0129 	csel	w9, w9, w10, eq
    9230:	7100027f 	cmp	w19, #0x0
    9234:	3219012a 	orr	w10, w9, #0x80
    9238:	1a8a0129 	csel	w9, w9, w10, eq
    923c:	d5033d9f 	dsb	ld
    9240:	710002df 	cmp	w22, #0x0
    9244:	3207012a 	orr	w10, w9, #0x2000000
    9248:	5282038b 	mov	w11, #0x101c                	// #4124
    924c:	52940c2c 	mov	w12, #0xa061                	// #41057
    9250:	5282020d 	mov	w13, #0x1010                	// #4112
    9254:	d5033e9f 	dsb	st
    9258:	1a8a0129 	csel	w9, w9, w10, eq
    925c:	b9000109 	str	w9, [x8]
    9260:	52820188 	mov	w8, #0x100c                	// #4108
    9264:	72a0002c 	movk	w12, #0x1, lsl #16
    9268:	8b0b034b 	add	x11, x26, x11
    926c:	8b0d034d 	add	x13, x26, x13
    9270:	d5033e9f 	dsb	st
    9274:	b900016c 	str	w12, [x11]
    9278:	d5033e9f 	dsb	st
    927c:	b90001b5 	str	w21, [x13]
    9280:	d5033e9f 	dsb	st
    9284:	8b080348 	add	x8, x26, x8
    9288:	b9000114 	str	w20, [x8]
    928c:	a9447bfd 	ldp	x29, x30, [sp,#64]
    9290:	a9434ff4 	ldp	x20, x19, [sp,#48]
    9294:	a94257f6 	ldp	x22, x21, [sp,#32]
    9298:	a9415ff8 	ldp	x24, x23, [sp,#16]
    929c:	a8c567fa 	ldp	x26, x25, [sp],#80
    92a0:	d65f03c0 	ret

00000000000092a4 <dwmac1000_dma_axi>:
    92a4:	f81d0ff5 	str	x21, [sp,#-48]!
    92a8:	a9014ff4 	stp	x20, x19, [sp,#16]
    92ac:	a9027bfd 	stp	x29, x30, [sp,#32]
    92b0:	910083fd 	add	x29, sp, #0x20
    92b4:	aa0103f3 	mov	x19, x1
    92b8:	aa0003f4 	mov	x20, x0
    92bc:	94000000 	bl	0 <_mcount>
    92c0:	d2800009 	mov	x9, #0x0                   	// #0
    92c4:	d280000a 	mov	x10, #0x0                   	// #0
    92c8:	52820508 	mov	w8, #0x1028                	// #4136
    92cc:	f2a00009 	movk	x9, #0x0, lsl #16
    92d0:	f2a0000a 	movk	x10, #0x0, lsl #16
    92d4:	d2800000 	mov	x0, #0x0                   	// #0
    92d8:	8b080294 	add	x20, x20, x8
    92dc:	b9400295 	ldr	w21, [x20]
    92e0:	d5033d9f 	dsb	ld
    92e4:	f2c00009 	movk	x9, #0x0, lsl #32
    92e8:	f2c0000a 	movk	x10, #0x0, lsl #32
    92ec:	f2a00000 	movk	x0, #0x0, lsl #16
    92f0:	f2e00009 	movk	x9, #0x0, lsl #48
    92f4:	f2e0000a 	movk	x10, #0x0, lsl #48
    92f8:	720002bf 	tst	w21, #0x1
    92fc:	f2c00000 	movk	x0, #0x0, lsl #32
    9300:	9a890141 	csel	x1, x10, x9, eq
    9304:	f2e00000 	movk	x0, #0x0, lsl #48
    9308:	94000000 	bl	0 <printk>
    930c:	39400268 	ldrb	w8, [x19]
    9310:	3940066b 	ldrb	w11, [x19,#1]
    9314:	320102aa 	orr	w10, w21, #0x80000000
    9318:	2940b66c 	ldp	w12, w13, [x19,#4]
    931c:	7100011f 	cmp	w8, #0x0
    9320:	1a8a02a8 	csel	w8, w21, w10, eq
    9324:	b9401269 	ldr	w9, [x19,#16]
    9328:	7100017f 	cmp	w11, #0x0
    932c:	3202010a 	orr	w10, w8, #0x40000000
    9330:	1a8a0108 	csel	w8, w8, w10, eq
    9334:	12085d08 	and	w8, w8, #0xff00ffff
    9338:	330c0d88 	bfi	w8, w12, #20, #4
    933c:	7100fd3f 	cmp	w9, #0x3f
    9340:	33100da8 	bfi	w8, w13, #16, #4
    9344:	540001cc 	b.gt	937c <dwmac1000_dma_axi+0xd8>
    9348:	51001129 	sub	w9, w9, #0x4
    934c:	7100713f 	cmp	w9, #0x1c
    9350:	54000388 	b.hi	93c0 <dwmac1000_dma_axi+0x11c>
    9354:	d280000a 	mov	x10, #0x0                   	// #0
    9358:	f2a0000a 	movk	x10, #0x0, lsl #16
    935c:	f2c0000a 	movk	x10, #0x0, lsl #32
    9360:	f2e0000a 	movk	x10, #0x0, lsl #48
    9364:	1000008b 	adr	x11, 9374 <dwmac1000_dma_axi+0xd0>
    9368:	3869694c 	ldrb	w12, [x10,x9]
    936c:	8b0c096b 	add	x11, x11, x12, lsl #2
    9370:	d61f0160 	br	x11
    9374:	321f0108 	orr	w8, w8, #0x2
    9378:	14000012 	b	93c0 <dwmac1000_dma_axi+0x11c>
    937c:	7101013f 	cmp	w9, #0x40
    9380:	540001a0 	b.eq	93b4 <dwmac1000_dma_axi+0x110>
    9384:	7102013f 	cmp	w9, #0x80
    9388:	540001a0 	b.eq	93bc <dwmac1000_dma_axi+0x118>
    938c:	7104013f 	cmp	w9, #0x100
    9390:	54000181 	b.ne	93c0 <dwmac1000_dma_axi+0x11c>
    9394:	32190108 	orr	w8, w8, #0x80
    9398:	1400000a 	b	93c0 <dwmac1000_dma_axi+0x11c>
    939c:	321e0108 	orr	w8, w8, #0x4
    93a0:	14000008 	b	93c0 <dwmac1000_dma_axi+0x11c>
    93a4:	321d0108 	orr	w8, w8, #0x8
    93a8:	14000006 	b	93c0 <dwmac1000_dma_axi+0x11c>
    93ac:	321c0108 	orr	w8, w8, #0x10
    93b0:	14000004 	b	93c0 <dwmac1000_dma_axi+0x11c>
    93b4:	321b0108 	orr	w8, w8, #0x20
    93b8:	14000002 	b	93c0 <dwmac1000_dma_axi+0x11c>
    93bc:	321a0108 	orr	w8, w8, #0x40
    93c0:	b9401669 	ldr	w9, [x19,#20]
    93c4:	7100fd3f 	cmp	w9, #0x3f
    93c8:	540001cc 	b.gt	9400 <dwmac1000_dma_axi+0x15c>
    93cc:	51001129 	sub	w9, w9, #0x4
    93d0:	7100713f 	cmp	w9, #0x1c
    93d4:	54000388 	b.hi	9444 <dwmac1000_dma_axi+0x1a0>
    93d8:	d280000a 	mov	x10, #0x0                   	// #0
    93dc:	f2a0000a 	movk	x10, #0x0, lsl #16
    93e0:	f2c0000a 	movk	x10, #0x0, lsl #32
    93e4:	f2e0000a 	movk	x10, #0x0, lsl #48
    93e8:	1000008b 	adr	x11, 93f8 <dwmac1000_dma_axi+0x154>
    93ec:	3869694c 	ldrb	w12, [x10,x9]
    93f0:	8b0c096b 	add	x11, x11, x12, lsl #2
    93f4:	d61f0160 	br	x11
    93f8:	321f0108 	orr	w8, w8, #0x2
    93fc:	14000012 	b	9444 <dwmac1000_dma_axi+0x1a0>
    9400:	7101013f 	cmp	w9, #0x40
    9404:	540001a0 	b.eq	9438 <dwmac1000_dma_axi+0x194>
    9408:	7102013f 	cmp	w9, #0x80
    940c:	540001a0 	b.eq	9440 <dwmac1000_dma_axi+0x19c>
    9410:	7104013f 	cmp	w9, #0x100
    9414:	54000181 	b.ne	9444 <dwmac1000_dma_axi+0x1a0>
    9418:	32190108 	orr	w8, w8, #0x80
    941c:	1400000a 	b	9444 <dwmac1000_dma_axi+0x1a0>
    9420:	321e0108 	orr	w8, w8, #0x4
    9424:	14000008 	b	9444 <dwmac1000_dma_axi+0x1a0>
    9428:	321d0108 	orr	w8, w8, #0x8
    942c:	14000006 	b	9444 <dwmac1000_dma_axi+0x1a0>
    9430:	321c0108 	orr	w8, w8, #0x10
    9434:	14000004 	b	9444 <dwmac1000_dma_axi+0x1a0>
    9438:	321b0108 	orr	w8, w8, #0x20
    943c:	14000002 	b	9444 <dwmac1000_dma_axi+0x1a0>
    9440:	321a0108 	orr	w8, w8, #0x40
    9444:	b9401a69 	ldr	w9, [x19,#24]
    9448:	7100fd3f 	cmp	w9, #0x3f
    944c:	540001cc 	b.gt	9484 <dwmac1000_dma_axi+0x1e0>
    9450:	51001129 	sub	w9, w9, #0x4
    9454:	7100713f 	cmp	w9, #0x1c
    9458:	54000388 	b.hi	94c8 <dwmac1000_dma_axi+0x224>
    945c:	d280000a 	mov	x10, #0x0                   	// #0
    9460:	f2a0000a 	movk	x10, #0x0, lsl #16
    9464:	f2c0000a 	movk	x10, #0x0, lsl #32
    9468:	f2e0000a 	movk	x10, #0x0, lsl #48
    946c:	1000008b 	adr	x11, 947c <dwmac1000_dma_axi+0x1d8>
    9470:	3869694c 	ldrb	w12, [x10,x9]
    9474:	8b0c096b 	add	x11, x11, x12, lsl #2
    9478:	d61f0160 	br	x11
    947c:	321f0108 	orr	w8, w8, #0x2
    9480:	14000012 	b	94c8 <dwmac1000_dma_axi+0x224>
    9484:	7101013f 	cmp	w9, #0x40
    9488:	540001a0 	b.eq	94bc <dwmac1000_dma_axi+0x218>
    948c:	7102013f 	cmp	w9, #0x80
    9490:	540001a0 	b.eq	94c4 <dwmac1000_dma_axi+0x220>
    9494:	7104013f 	cmp	w9, #0x100
    9498:	54000181 	b.ne	94c8 <dwmac1000_dma_axi+0x224>
    949c:	32190108 	orr	w8, w8, #0x80
    94a0:	1400000a 	b	94c8 <dwmac1000_dma_axi+0x224>
    94a4:	321e0108 	orr	w8, w8, #0x4
    94a8:	14000008 	b	94c8 <dwmac1000_dma_axi+0x224>
    94ac:	321d0108 	orr	w8, w8, #0x8
    94b0:	14000006 	b	94c8 <dwmac1000_dma_axi+0x224>
    94b4:	321c0108 	orr	w8, w8, #0x10
    94b8:	14000004 	b	94c8 <dwmac1000_dma_axi+0x224>
    94bc:	321b0108 	orr	w8, w8, #0x20
    94c0:	14000002 	b	94c8 <dwmac1000_dma_axi+0x224>
    94c4:	321a0108 	orr	w8, w8, #0x40
    94c8:	b9401e69 	ldr	w9, [x19,#28]
    94cc:	7100fd3f 	cmp	w9, #0x3f
    94d0:	540001cc 	b.gt	9508 <dwmac1000_dma_axi+0x264>
    94d4:	51001129 	sub	w9, w9, #0x4
    94d8:	7100713f 	cmp	w9, #0x1c
    94dc:	54000388 	b.hi	954c <dwmac1000_dma_axi+0x2a8>
    94e0:	d280000a 	mov	x10, #0x0                   	// #0
    94e4:	f2a0000a 	movk	x10, #0x0, lsl #16
    94e8:	f2c0000a 	movk	x10, #0x0, lsl #32
    94ec:	f2e0000a 	movk	x10, #0x0, lsl #48
    94f0:	1000008b 	adr	x11, 9500 <dwmac1000_dma_axi+0x25c>
    94f4:	3869694c 	ldrb	w12, [x10,x9]
    94f8:	8b0c096b 	add	x11, x11, x12, lsl #2
    94fc:	d61f0160 	br	x11
    9500:	321f0108 	orr	w8, w8, #0x2
    9504:	14000012 	b	954c <dwmac1000_dma_axi+0x2a8>
    9508:	7101013f 	cmp	w9, #0x40
    950c:	540001a0 	b.eq	9540 <dwmac1000_dma_axi+0x29c>
    9510:	7102013f 	cmp	w9, #0x80
    9514:	540001a0 	b.eq	9548 <dwmac1000_dma_axi+0x2a4>
    9518:	7104013f 	cmp	w9, #0x100
    951c:	54000181 	b.ne	954c <dwmac1000_dma_axi+0x2a8>
    9520:	32190108 	orr	w8, w8, #0x80
    9524:	1400000a 	b	954c <dwmac1000_dma_axi+0x2a8>
    9528:	321e0108 	orr	w8, w8, #0x4
    952c:	14000008 	b	954c <dwmac1000_dma_axi+0x2a8>
    9530:	321d0108 	orr	w8, w8, #0x8
    9534:	14000006 	b	954c <dwmac1000_dma_axi+0x2a8>
    9538:	321c0108 	orr	w8, w8, #0x10
    953c:	14000004 	b	954c <dwmac1000_dma_axi+0x2a8>
    9540:	321b0108 	orr	w8, w8, #0x20
    9544:	14000002 	b	954c <dwmac1000_dma_axi+0x2a8>
    9548:	321a0108 	orr	w8, w8, #0x40
    954c:	b9402269 	ldr	w9, [x19,#32]
    9550:	7100fd3f 	cmp	w9, #0x3f
    9554:	540001cc 	b.gt	958c <dwmac1000_dma_axi+0x2e8>
    9558:	51001129 	sub	w9, w9, #0x4
    955c:	7100713f 	cmp	w9, #0x1c
    9560:	54000388 	b.hi	95d0 <dwmac1000_dma_axi+0x32c>
    9564:	d280000a 	mov	x10, #0x0                   	// #0
    9568:	f2a0000a 	movk	x10, #0x0, lsl #16
    956c:	f2c0000a 	movk	x10, #0x0, lsl #32
    9570:	f2e0000a 	movk	x10, #0x0, lsl #48
    9574:	1000008b 	adr	x11, 9584 <dwmac1000_dma_axi+0x2e0>
    9578:	3869694c 	ldrb	w12, [x10,x9]
    957c:	8b0c096b 	add	x11, x11, x12, lsl #2
    9580:	d61f0160 	br	x11
    9584:	321f0108 	orr	w8, w8, #0x2
    9588:	14000012 	b	95d0 <dwmac1000_dma_axi+0x32c>
    958c:	7101013f 	cmp	w9, #0x40
    9590:	540001a0 	b.eq	95c4 <dwmac1000_dma_axi+0x320>
    9594:	7102013f 	cmp	w9, #0x80
    9598:	540001a0 	b.eq	95cc <dwmac1000_dma_axi+0x328>
    959c:	7104013f 	cmp	w9, #0x100
    95a0:	54000181 	b.ne	95d0 <dwmac1000_dma_axi+0x32c>
    95a4:	32190108 	orr	w8, w8, #0x80
    95a8:	1400000a 	b	95d0 <dwmac1000_dma_axi+0x32c>
    95ac:	321e0108 	orr	w8, w8, #0x4
    95b0:	14000008 	b	95d0 <dwmac1000_dma_axi+0x32c>
    95b4:	321d0108 	orr	w8, w8, #0x8
    95b8:	14000006 	b	95d0 <dwmac1000_dma_axi+0x32c>
    95bc:	321c0108 	orr	w8, w8, #0x10
    95c0:	14000004 	b	95d0 <dwmac1000_dma_axi+0x32c>
    95c4:	321b0108 	orr	w8, w8, #0x20
    95c8:	14000002 	b	95d0 <dwmac1000_dma_axi+0x32c>
    95cc:	321a0108 	orr	w8, w8, #0x40
    95d0:	b9402669 	ldr	w9, [x19,#36]
    95d4:	7100fd3f 	cmp	w9, #0x3f
    95d8:	540001cc 	b.gt	9610 <dwmac1000_dma_axi+0x36c>
    95dc:	51001129 	sub	w9, w9, #0x4
    95e0:	7100713f 	cmp	w9, #0x1c
    95e4:	54000388 	b.hi	9654 <dwmac1000_dma_axi+0x3b0>
    95e8:	d280000a 	mov	x10, #0x0                   	// #0
    95ec:	f2a0000a 	movk	x10, #0x0, lsl #16
    95f0:	f2c0000a 	movk	x10, #0x0, lsl #32
    95f4:	f2e0000a 	movk	x10, #0x0, lsl #48
    95f8:	1000008b 	adr	x11, 9608 <dwmac1000_dma_axi+0x364>
    95fc:	3869694c 	ldrb	w12, [x10,x9]
    9600:	8b0c096b 	add	x11, x11, x12, lsl #2
    9604:	d61f0160 	br	x11
    9608:	321f0108 	orr	w8, w8, #0x2
    960c:	14000012 	b	9654 <dwmac1000_dma_axi+0x3b0>
    9610:	7101013f 	cmp	w9, #0x40
    9614:	540001a0 	b.eq	9648 <dwmac1000_dma_axi+0x3a4>
    9618:	7102013f 	cmp	w9, #0x80
    961c:	540001a0 	b.eq	9650 <dwmac1000_dma_axi+0x3ac>
    9620:	7104013f 	cmp	w9, #0x100
    9624:	54000181 	b.ne	9654 <dwmac1000_dma_axi+0x3b0>
    9628:	32190108 	orr	w8, w8, #0x80
    962c:	1400000a 	b	9654 <dwmac1000_dma_axi+0x3b0>
    9630:	321e0108 	orr	w8, w8, #0x4
    9634:	14000008 	b	9654 <dwmac1000_dma_axi+0x3b0>
    9638:	321d0108 	orr	w8, w8, #0x8
    963c:	14000006 	b	9654 <dwmac1000_dma_axi+0x3b0>
    9640:	321c0108 	orr	w8, w8, #0x10
    9644:	14000004 	b	9654 <dwmac1000_dma_axi+0x3b0>
    9648:	321b0108 	orr	w8, w8, #0x20
    964c:	14000002 	b	9654 <dwmac1000_dma_axi+0x3b0>
    9650:	321a0108 	orr	w8, w8, #0x40
    9654:	b9402a69 	ldr	w9, [x19,#40]
    9658:	7100fd3f 	cmp	w9, #0x3f
    965c:	540001cc 	b.gt	9694 <dwmac1000_dma_axi+0x3f0>
    9660:	51001129 	sub	w9, w9, #0x4
    9664:	7100713f 	cmp	w9, #0x1c
    9668:	54000388 	b.hi	96d8 <dwmac1000_dma_axi+0x434>
    966c:	d280000a 	mov	x10, #0x0                   	// #0
    9670:	f2a0000a 	movk	x10, #0x0, lsl #16
    9674:	f2c0000a 	movk	x10, #0x0, lsl #32
    9678:	f2e0000a 	movk	x10, #0x0, lsl #48
    967c:	1000008b 	adr	x11, 968c <dwmac1000_dma_axi+0x3e8>
    9680:	3869694c 	ldrb	w12, [x10,x9]
    9684:	8b0c096b 	add	x11, x11, x12, lsl #2
    9688:	d61f0160 	br	x11
    968c:	321f0108 	orr	w8, w8, #0x2
    9690:	14000012 	b	96d8 <dwmac1000_dma_axi+0x434>
    9694:	7101013f 	cmp	w9, #0x40
    9698:	540001a0 	b.eq	96cc <dwmac1000_dma_axi+0x428>
    969c:	7102013f 	cmp	w9, #0x80
    96a0:	540001a0 	b.eq	96d4 <dwmac1000_dma_axi+0x430>
    96a4:	7104013f 	cmp	w9, #0x100
    96a8:	54000181 	b.ne	96d8 <dwmac1000_dma_axi+0x434>
    96ac:	32190108 	orr	w8, w8, #0x80
    96b0:	1400000a 	b	96d8 <dwmac1000_dma_axi+0x434>
    96b4:	321e0108 	orr	w8, w8, #0x4
    96b8:	14000008 	b	96d8 <dwmac1000_dma_axi+0x434>
    96bc:	321d0108 	orr	w8, w8, #0x8
    96c0:	14000006 	b	96d8 <dwmac1000_dma_axi+0x434>
    96c4:	321c0108 	orr	w8, w8, #0x10
    96c8:	14000004 	b	96d8 <dwmac1000_dma_axi+0x434>
    96cc:	321b0108 	orr	w8, w8, #0x20
    96d0:	14000002 	b	96d8 <dwmac1000_dma_axi+0x434>
    96d4:	321a0108 	orr	w8, w8, #0x40
    96d8:	d5033e9f 	dsb	st
    96dc:	b9000288 	str	w8, [x20]
    96e0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    96e4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    96e8:	f84307f5 	ldr	x21, [sp],#48
    96ec:	d65f03c0 	ret

00000000000096f0 <dwmac1000_dump_dma_regs>:
    96f0:	f81c0ff7 	str	x23, [sp,#-64]!
    96f4:	a90157f6 	stp	x22, x21, [sp,#16]
    96f8:	a9024ff4 	stp	x20, x19, [sp,#32]
    96fc:	a9037bfd 	stp	x29, x30, [sp,#48]
    9700:	9100c3fd 	add	x29, sp, #0x30
    9704:	aa0003f3 	mov	x19, x0
    9708:	94000000 	bl	0 <_mcount>
    970c:	d2800000 	mov	x0, #0x0                   	// #0
    9710:	f2a00000 	movk	x0, #0x0, lsl #16
    9714:	f2c00000 	movk	x0, #0x0, lsl #32
    9718:	f2e00000 	movk	x0, #0x0, lsl #48
    971c:	94000000 	bl	0 <printk>
    9720:	d2800015 	mov	x21, #0x0                   	// #0
    9724:	f2a00015 	movk	x21, #0x0, lsl #16
    9728:	f2c00015 	movk	x21, #0x0, lsl #32
    972c:	12800116 	mov	w22, #0xfffffff7            	// #-9
    9730:	52820014 	mov	w20, #0x1000                	// #4096
    9734:	f2e00015 	movk	x21, #0x0, lsl #48
    9738:	52820b17 	mov	w23, #0x1058                	// #4184
    973c:	710026df 	cmp	w22, #0x9
    9740:	540000e2 	b.cs	975c <dwmac1000_dump_dma_regs+0x6c>
    9744:	91001294 	add	x20, x20, #0x4
    9748:	eb17029f 	cmp	x20, x23
    974c:	110006d6 	add	w22, w22, #0x1
    9750:	54000160 	b.eq	977c <dwmac1000_dump_dma_regs+0x8c>
    9754:	710026df 	cmp	w22, #0x9
    9758:	54ffff63 	b.cc	9744 <dwmac1000_dump_dma_regs+0x54>
    975c:	8b140268 	add	x8, x19, x20
    9760:	b9400103 	ldr	w3, [x8]
    9764:	d5033d9f 	dsb	ld
    9768:	110026c1 	add	w1, w22, #0x9
    976c:	aa1503e0 	mov	x0, x21
    9770:	2a1403e2 	mov	w2, w20
    9774:	94000000 	bl	0 <printk>
    9778:	17fffff3 	b	9744 <dwmac1000_dump_dma_regs+0x54>
    977c:	a9437bfd 	ldp	x29, x30, [sp,#48]
    9780:	a9424ff4 	ldp	x20, x19, [sp,#32]
    9784:	a94157f6 	ldp	x22, x21, [sp,#16]
    9788:	f84407f7 	ldr	x23, [sp],#64
    978c:	d65f03c0 	ret

0000000000009790 <dwmac1000_dma_operation_mode>:
    9790:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    9794:	a9014ff4 	stp	x20, x19, [sp,#16]
    9798:	a9027bfd 	stp	x29, x30, [sp,#32]
    979c:	910083fd 	add	x29, sp, #0x20
    97a0:	2a0303f3 	mov	w19, w3
    97a4:	2a0203f4 	mov	w20, w2
    97a8:	2a0103f5 	mov	w21, w1
    97ac:	aa0003f6 	mov	x22, x0
    97b0:	94000000 	bl	0 <_mcount>
    97b4:	52820308 	mov	w8, #0x1018                	// #4120
    97b8:	8b0802c8 	add	x8, x22, x8
    97bc:	b9400109 	ldr	w9, [x8]
    97c0:	d5033d9f 	dsb	ld
    97c4:	710006bf 	cmp	w21, #0x1
    97c8:	54000081 	b.ne	97d8 <dwmac1000_dma_operation_mode+0x48>
    97cc:	5280008a 	mov	w10, #0x4                   	// #4
    97d0:	72a0040a 	movk	w10, #0x20, lsl #16
    97d4:	14000008 	b	97f4 <dwmac1000_dma_operation_mode+0x64>
    97d8:	5287ffea 	mov	w10, #0x3fff                	// #16383
    97dc:	72bffbca 	movk	w10, #0xffde, lsl #16
    97e0:	710082bf 	cmp	w21, #0x20
    97e4:	0a0a0129 	and	w9, w9, w10
    97e8:	540001ac 	b.gt	981c <dwmac1000_dma_operation_mode+0x8c>
    97ec:	5288000a 	mov	w10, #0x4000                	// #16384
    97f0:	72a0002a 	movk	w10, #0x1, lsl #16
    97f4:	2a0a0129 	orr	w9, w9, w10
    97f8:	7100069f 	cmp	w20, #0x1
    97fc:	540001e0 	b.eq	9838 <dwmac1000_dma_operation_mode+0xa8>
    9800:	529ffcea 	mov	w10, #0xffe7                	// #65511
    9804:	72bfbfea 	movk	w10, #0xfdff, lsl #16
    9808:	7100829f 	cmp	w20, #0x20
    980c:	0a0a0129 	and	w9, w9, w10
    9810:	5400018c 	b.gt	9840 <dwmac1000_dma_operation_mode+0xb0>
    9814:	321d0129 	orr	w9, w9, #0x8
    9818:	14000017 	b	9874 <dwmac1000_dma_operation_mode+0xe4>
    981c:	710106bf 	cmp	w21, #0x41
    9820:	5400008b 	b.lt	9830 <dwmac1000_dma_operation_mode+0xa0>
    9824:	710202bf 	cmp	w21, #0x80
    9828:	5400018c 	b.gt	9858 <dwmac1000_dma_operation_mode+0xc8>
    982c:	32120129 	orr	w9, w9, #0x4000
    9830:	7100069f 	cmp	w20, #0x1
    9834:	54fffe61 	b.ne	9800 <dwmac1000_dma_operation_mode+0x70>
    9838:	32070129 	orr	w9, w9, #0x2000000
    983c:	1400000e 	b	9874 <dwmac1000_dma_operation_mode+0xe4>
    9840:	7101069f 	cmp	w20, #0x41
    9844:	5400018b 	b.lt	9874 <dwmac1000_dma_operation_mode+0xe4>
    9848:	7101829f 	cmp	w20, #0x60
    984c:	5400012c 	b.gt	9870 <dwmac1000_dma_operation_mode+0xe0>
    9850:	321c0129 	orr	w9, w9, #0x10
    9854:	14000008 	b	9874 <dwmac1000_dma_operation_mode+0xe4>
    9858:	710302bf 	cmp	w21, #0xc0
    985c:	5400026c 	b.gt	98a8 <dwmac1000_dma_operation_mode+0x118>
    9860:	32110129 	orr	w9, w9, #0x8000
    9864:	7100069f 	cmp	w20, #0x1
    9868:	54fffe80 	b.eq	9838 <dwmac1000_dma_operation_mode+0xa8>
    986c:	17ffffe5 	b	9800 <dwmac1000_dma_operation_mode+0x70>
    9870:	321d0529 	orr	w9, w9, #0x18
    9874:	529c1fea 	mov	w10, #0xe0ff                	// #57599
    9878:	72bfe7ea 	movk	w10, #0xff3f, lsl #16
    987c:	5281200b 	mov	w11, #0x900                 	// #2304
    9880:	0a0a0129 	and	w9, w9, w10
    9884:	2a0b012a 	orr	w10, w9, w11
    9888:	7140067f 	cmp	w19, #0x1, lsl #12
    988c:	d5033e9f 	dsb	st
    9890:	1a8ab129 	csel	w9, w9, w10, lt
    9894:	b9000109 	str	w9, [x8]
    9898:	a9427bfd 	ldp	x29, x30, [sp,#32]
    989c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    98a0:	a8c357f6 	ldp	x22, x21, [sp],#48
    98a4:	d65f03c0 	ret
    98a8:	32120529 	orr	w9, w9, #0xc000
    98ac:	7100069f 	cmp	w20, #0x1
    98b0:	54fffc40 	b.eq	9838 <dwmac1000_dma_operation_mode+0xa8>
    98b4:	17ffffd3 	b	9800 <dwmac1000_dma_operation_mode+0x70>

00000000000098b8 <dwmac1000_get_hw_feature>:
    98b8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    98bc:	a9017bfd 	stp	x29, x30, [sp,#16]
    98c0:	910043fd 	add	x29, sp, #0x10
    98c4:	aa0103f3 	mov	x19, x1
    98c8:	aa0003f4 	mov	x20, x0
    98cc:	94000000 	bl	0 <_mcount>
    98d0:	d2800009 	mov	x9, #0x0                   	// #0
    98d4:	f2a00009 	movk	x9, #0x0, lsl #16
    98d8:	f2c00009 	movk	x9, #0x0, lsl #32
    98dc:	f2e00009 	movk	x9, #0x0, lsl #48
    98e0:	3dc00121 	ldr	q1, [x9]
    98e4:	d2800009 	mov	x9, #0x0                   	// #0
    98e8:	f2a00009 	movk	x9, #0x0, lsl #16
    98ec:	f2c00009 	movk	x9, #0x0, lsl #32
    98f0:	f2e00009 	movk	x9, #0x0, lsl #48
    98f4:	3dc00122 	ldr	q2, [x9]
    98f8:	d2800009 	mov	x9, #0x0                   	// #0
    98fc:	f2a00009 	movk	x9, #0x0, lsl #16
    9900:	f2c00009 	movk	x9, #0x0, lsl #32
    9904:	f2e00009 	movk	x9, #0x0, lsl #48
    9908:	3dc00123 	ldr	q3, [x9]
    990c:	d2800009 	mov	x9, #0x0                   	// #0
    9910:	f2a00009 	movk	x9, #0x0, lsl #16
    9914:	f2c00009 	movk	x9, #0x0, lsl #32
    9918:	f2e00009 	movk	x9, #0x0, lsl #48
    991c:	3dc00124 	ldr	q4, [x9]
    9920:	d2800009 	mov	x9, #0x0                   	// #0
    9924:	52820b08 	mov	w8, #0x1058                	// #4184
    9928:	f2a00009 	movk	x9, #0x0, lsl #16
    992c:	8b080288 	add	x8, x20, x8
    9930:	f2c00009 	movk	x9, #0x0, lsl #32
    9934:	b9400108 	ldr	w8, [x8]
    9938:	4e040d05 	dup	v5.4s, w8
    993c:	f2e00009 	movk	x9, #0x0, lsl #48
    9940:	6ea0b821 	neg	v1.4s, v1.4s
    9944:	6ea0b842 	neg	v2.4s, v2.4s
    9948:	6ea0b863 	neg	v3.4s, v3.4s
    994c:	6ea0b884 	neg	v4.4s, v4.4s
    9950:	6ea144a1 	ushl	v1.4s, v5.4s, v1.4s
    9954:	6ea244a2 	ushl	v2.4s, v5.4s, v2.4s
    9958:	6ea344a3 	ushl	v3.4s, v5.4s, v3.4s
    995c:	6ea444a4 	ushl	v4.4s, v5.4s, v4.4s
    9960:	3dc00125 	ldr	q5, [x9]
    9964:	12000109 	and	w9, w8, #0x1
    9968:	d5033d9f 	dsb	ld
    996c:	b9000269 	str	w9, [x19]
    9970:	530f3d09 	ubfx	w9, w8, #15, #1
    9974:	4f000420 	movi	v0.4s, #0x1
    9978:	b9003669 	str	w9, [x19,#52]
    997c:	53104109 	ubfx	w9, w8, #16, #1
    9980:	4e201c21 	and	v1.16b, v1.16b, v0.16b
    9984:	4e201c42 	and	v2.16b, v2.16b, v0.16b
    9988:	4e201c60 	and	v0.16b, v3.16b, v0.16b
    998c:	4e251c83 	and	v3.16b, v4.16b, v5.16b
    9990:	b9003e69 	str	w9, [x19,#60]
    9994:	53114509 	ubfx	w9, w8, #17, #1
    9998:	53186108 	ubfx	w8, w8, #24, #1
    999c:	3c804261 	stur	q1, [x19,#4]
    99a0:	b9004669 	str	w9, [x19,#68]
    99a4:	3c814262 	stur	q2, [x19,#20]
    99a8:	3c824260 	stur	q0, [x19,#36]
    99ac:	3c848263 	stur	q3, [x19,#72]
    99b0:	b9005a68 	str	w8, [x19,#88]
    99b4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    99b8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    99bc:	d65f03c0 	ret

00000000000099c0 <dwmac1000_rx_watchdog>:
    99c0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    99c4:	a9017bfd 	stp	x29, x30, [sp,#16]
    99c8:	910043fd 	add	x29, sp, #0x10
    99cc:	2a0103f3 	mov	w19, w1
    99d0:	aa0003f4 	mov	x20, x0
    99d4:	94000000 	bl	0 <_mcount>
    99d8:	52820488 	mov	w8, #0x1024                	// #4132
    99dc:	d5033e9f 	dsb	st
    99e0:	8b080288 	add	x8, x20, x8
    99e4:	b9000113 	str	w19, [x8]
    99e8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    99ec:	a8c24ff4 	ldp	x20, x19, [sp],#32
    99f0:	d65f03c0 	ret

00000000000099f4 <dwmac100_setup>:
    99f4:	f81d0ff5 	str	x21, [sp,#-48]!
    99f8:	a9014ff4 	stp	x20, x19, [sp,#16]
    99fc:	a9027bfd 	stp	x29, x30, [sp,#32]
    9a00:	910083fd 	add	x29, sp, #0x20
    9a04:	aa0103f3 	mov	x19, x1
    9a08:	aa0003f5 	mov	x21, x0
    9a0c:	94000000 	bl	0 <_mcount>
    9a10:	d2800008 	mov	x8, #0x0                   	// #0
    9a14:	f2a00008 	movk	x8, #0x0, lsl #16
    9a18:	f2c00008 	movk	x8, #0x0, lsl #32
    9a1c:	f2e00008 	movk	x8, #0x0, lsl #48
    9a20:	f9400100 	ldr	x0, [x8]
    9a24:	52901801 	mov	w1, #0x80c0                	// #32960
    9a28:	72a04801 	movk	w1, #0x240, lsl #16
    9a2c:	52800d02 	mov	w2, #0x68                  	// #104
    9a30:	94000000 	bl	0 <kmem_cache_alloc_trace>
    9a34:	aa0003f4 	mov	x20, x0
    9a38:	b4000320 	cbz	x0, 9a9c <dwmac100_setup+0xa8>
    9a3c:	d2800000 	mov	x0, #0x0                   	// #0
    9a40:	f2a00000 	movk	x0, #0x0, lsl #16
    9a44:	f2c00000 	movk	x0, #0x0, lsl #32
    9a48:	f2e00000 	movk	x0, #0x0, lsl #48
    9a4c:	94000000 	bl	0 <printk>
    9a50:	d2800008 	mov	x8, #0x0                   	// #0
    9a54:	f2a00008 	movk	x8, #0x0, lsl #16
    9a58:	f2c00008 	movk	x8, #0x0, lsl #32
    9a5c:	f2e00008 	movk	x8, #0x0, lsl #48
    9a60:	f9000288 	str	x8, [x20]
    9a64:	d2800008 	mov	x8, #0x0                   	// #0
    9a68:	f2a00008 	movk	x8, #0x0, lsl #16
    9a6c:	f2c00008 	movk	x8, #0x0, lsl #32
    9a70:	f2e00008 	movk	x8, #0x0, lsl #48
    9a74:	3dc00100 	ldr	q0, [x8]
    9a78:	d2800008 	mov	x8, #0x0                   	// #0
    9a7c:	f2a00008 	movk	x8, #0x0, lsl #16
    9a80:	f2c00008 	movk	x8, #0x0, lsl #32
    9a84:	f2e00008 	movk	x8, #0x0, lsl #48
    9a88:	f9002295 	str	x21, [x20,#64]
    9a8c:	b9003a9f 	str	wzr, [x20,#56]
    9a90:	f9000a88 	str	x8, [x20,#16]
    9a94:	3c828280 	stur	q0, [x20,#40]
    9a98:	b900027f 	str	wzr, [x19]
    9a9c:	aa1403e0 	mov	x0, x20
    9aa0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    9aa4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    9aa8:	f84307f5 	ldr	x21, [sp],#48
    9aac:	d65f03c0 	ret

0000000000009ab0 <dwmac100_core_init>:
    9ab0:	f81e0ff3 	str	x19, [sp,#-32]!
    9ab4:	a9017bfd 	stp	x29, x30, [sp,#16]
    9ab8:	910043fd 	add	x29, sp, #0x10
    9abc:	aa0003f3 	mov	x19, x0
    9ac0:	94000000 	bl	0 <_mcount>
    9ac4:	f9402273 	ldr	x19, [x19,#64]
    9ac8:	b9400268 	ldr	w8, [x19]
    9acc:	d5033d9f 	dsb	ld
    9ad0:	d2800000 	mov	x0, #0x0                   	// #0
    9ad4:	d5033e9f 	dsb	st
    9ad8:	f2a00000 	movk	x0, #0x0, lsl #16
    9adc:	52802009 	mov	w9, #0x100                 	// #256
    9ae0:	f2c00000 	movk	x0, #0x0, lsl #32
    9ae4:	72a20009 	movk	w9, #0x1000, lsl #16
    9ae8:	f2e00000 	movk	x0, #0x0, lsl #48
    9aec:	2a090108 	orr	w8, w8, w9
    9af0:	b9000268 	str	w8, [x19]
    9af4:	94000000 	bl	0 <printk>
    9af8:	d5033e9f 	dsb	st
    9afc:	91008268 	add	x8, x19, #0x20
    9b00:	52902009 	mov	w9, #0x8100                	// #33024
    9b04:	b9000109 	str	w9, [x8]
    9b08:	a9417bfd 	ldp	x29, x30, [sp,#16]
    9b0c:	f84207f3 	ldr	x19, [sp],#32
    9b10:	d65f03c0 	ret

0000000000009b14 <dwmac100_rx_ipc_enable>:
    9b14:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    9b18:	910003fd 	mov	x29, sp
    9b1c:	94000000 	bl	0 <_mcount>
    9b20:	2a1f03e0 	mov	w0, wzr
    9b24:	a8c17bfd 	ldp	x29, x30, [sp],#16
    9b28:	d65f03c0 	ret

0000000000009b2c <dwmac100_dump_mac_regs>:
    9b2c:	f81e0ff3 	str	x19, [sp,#-32]!
    9b30:	a9017bfd 	stp	x29, x30, [sp,#16]
    9b34:	910043fd 	add	x29, sp, #0x10
    9b38:	aa0003f3 	mov	x19, x0
    9b3c:	94000000 	bl	0 <_mcount>
    9b40:	f9402273 	ldr	x19, [x19,#64]
    9b44:	d2800000 	mov	x0, #0x0                   	// #0
    9b48:	f2a00000 	movk	x0, #0x0, lsl #16
    9b4c:	f2c00000 	movk	x0, #0x0, lsl #32
    9b50:	f2e00000 	movk	x0, #0x0, lsl #48
    9b54:	aa1303e1 	mov	x1, x19
    9b58:	94000000 	bl	0 <printk>
    9b5c:	d2800000 	mov	x0, #0x0                   	// #0
    9b60:	b9400262 	ldr	w2, [x19]
    9b64:	d5033d9f 	dsb	ld
    9b68:	f2a00000 	movk	x0, #0x0, lsl #16
    9b6c:	f2c00000 	movk	x0, #0x0, lsl #32
    9b70:	f2e00000 	movk	x0, #0x0, lsl #48
    9b74:	2a1f03e1 	mov	w1, wzr
    9b78:	94000000 	bl	0 <printk>
    9b7c:	d2800000 	mov	x0, #0x0                   	// #0
    9b80:	91001268 	add	x8, x19, #0x4
    9b84:	b9400102 	ldr	w2, [x8]
    9b88:	d5033d9f 	dsb	ld
    9b8c:	f2a00000 	movk	x0, #0x0, lsl #16
    9b90:	f2c00000 	movk	x0, #0x0, lsl #32
    9b94:	f2e00000 	movk	x0, #0x0, lsl #48
    9b98:	52800081 	mov	w1, #0x4                   	// #4
    9b9c:	94000000 	bl	0 <printk>
    9ba0:	d2800000 	mov	x0, #0x0                   	// #0
    9ba4:	91002268 	add	x8, x19, #0x8
    9ba8:	b9400102 	ldr	w2, [x8]
    9bac:	d5033d9f 	dsb	ld
    9bb0:	f2a00000 	movk	x0, #0x0, lsl #16
    9bb4:	f2c00000 	movk	x0, #0x0, lsl #32
    9bb8:	f2e00000 	movk	x0, #0x0, lsl #48
    9bbc:	52800101 	mov	w1, #0x8                   	// #8
    9bc0:	94000000 	bl	0 <printk>
    9bc4:	d2800000 	mov	x0, #0x0                   	// #0
    9bc8:	91003268 	add	x8, x19, #0xc
    9bcc:	b9400102 	ldr	w2, [x8]
    9bd0:	d5033d9f 	dsb	ld
    9bd4:	f2a00000 	movk	x0, #0x0, lsl #16
    9bd8:	f2c00000 	movk	x0, #0x0, lsl #32
    9bdc:	f2e00000 	movk	x0, #0x0, lsl #48
    9be0:	52800181 	mov	w1, #0xc                   	// #12
    9be4:	94000000 	bl	0 <printk>
    9be8:	d2800000 	mov	x0, #0x0                   	// #0
    9bec:	91004268 	add	x8, x19, #0x10
    9bf0:	b9400102 	ldr	w2, [x8]
    9bf4:	d5033d9f 	dsb	ld
    9bf8:	f2a00000 	movk	x0, #0x0, lsl #16
    9bfc:	f2c00000 	movk	x0, #0x0, lsl #32
    9c00:	f2e00000 	movk	x0, #0x0, lsl #48
    9c04:	52800201 	mov	w1, #0x10                  	// #16
    9c08:	94000000 	bl	0 <printk>
    9c0c:	d2800000 	mov	x0, #0x0                   	// #0
    9c10:	91007268 	add	x8, x19, #0x1c
    9c14:	b9400102 	ldr	w2, [x8]
    9c18:	d5033d9f 	dsb	ld
    9c1c:	f2a00000 	movk	x0, #0x0, lsl #16
    9c20:	f2c00000 	movk	x0, #0x0, lsl #32
    9c24:	f2e00000 	movk	x0, #0x0, lsl #48
    9c28:	52800381 	mov	w1, #0x1c                  	// #28
    9c2c:	94000000 	bl	0 <printk>
    9c30:	d2800000 	mov	x0, #0x0                   	// #0
    9c34:	91008268 	add	x8, x19, #0x20
    9c38:	b9400102 	ldr	w2, [x8]
    9c3c:	d5033d9f 	dsb	ld
    9c40:	f2a00000 	movk	x0, #0x0, lsl #16
    9c44:	f2c00000 	movk	x0, #0x0, lsl #32
    9c48:	f2e00000 	movk	x0, #0x0, lsl #48
    9c4c:	52800401 	mov	w1, #0x20                  	// #32
    9c50:	94000000 	bl	0 <printk>
    9c54:	d2800000 	mov	x0, #0x0                   	// #0
    9c58:	91009268 	add	x8, x19, #0x24
    9c5c:	b9400102 	ldr	w2, [x8]
    9c60:	d5033d9f 	dsb	ld
    9c64:	f2a00000 	movk	x0, #0x0, lsl #16
    9c68:	f2c00000 	movk	x0, #0x0, lsl #32
    9c6c:	f2e00000 	movk	x0, #0x0, lsl #48
    9c70:	52800481 	mov	w1, #0x24                  	// #36
    9c74:	94000000 	bl	0 <printk>
    9c78:	a9417bfd 	ldp	x29, x30, [sp,#16]
    9c7c:	f84207f3 	ldr	x19, [sp],#32
    9c80:	d65f03c0 	ret

0000000000009c84 <dwmac100_irq_status>:
    9c84:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    9c88:	910003fd 	mov	x29, sp
    9c8c:	94000000 	bl	0 <_mcount>
    9c90:	2a1f03e0 	mov	w0, wzr
    9c94:	a8c17bfd 	ldp	x29, x30, [sp],#16
    9c98:	d65f03c0 	ret

0000000000009c9c <dwmac100_set_filter>:
    9c9c:	f81c0ff7 	str	x23, [sp,#-64]!
    9ca0:	a90157f6 	stp	x22, x21, [sp,#16]
    9ca4:	a9024ff4 	stp	x20, x19, [sp,#32]
    9ca8:	a9037bfd 	stp	x29, x30, [sp,#48]
    9cac:	9100c3fd 	add	x29, sp, #0x30
    9cb0:	aa0103f3 	mov	x19, x1
    9cb4:	94000000 	bl	0 <_mcount>
    9cb8:	f9401e74 	ldr	x20, [x19,#56]
    9cbc:	b9400288 	ldr	w8, [x20]
    9cc0:	d5033d9f 	dsb	ld
    9cc4:	b9423a6a 	ldr	w10, [x19,#568]
    9cc8:	3740044a 	tbnz	w10, #8, 9d50 <dwmac100_set_filter+0xb4>
    9ccc:	528bffe9 	mov	w9, #0x5fff                	// #24575
    9cd0:	72bffe29 	movk	w9, #0xfff1, lsl #16
    9cd4:	3748048a 	tbnz	w10, #9, 9d64 <dwmac100_set_filter+0xc8>
    9cd8:	b942ae6a 	ldr	w10, [x19,#684]
    9cdc:	7101055f 	cmp	w10, #0x41
    9ce0:	5400042a 	b.ge	9d64 <dwmac100_set_filter+0xc8>
    9ce4:	3400056a 	cbz	w10, 9d90 <dwmac100_set_filter+0xf4>
    9ce8:	f90007ff 	str	xzr, [sp,#8]
    9cec:	910a7275 	add	x21, x19, #0x29c
    9cf0:	f94002b6 	ldr	x22, [x21]
    9cf4:	0a090108 	and	w8, w8, w9
    9cf8:	32130113 	orr	w19, w8, #0x2000
    9cfc:	eb1502df 	cmp	x22, x21
    9d00:	540004c0 	b.eq	9d98 <dwmac100_set_filter+0xfc>
    9d04:	52800037 	mov	w23, #0x1                   	// #1
    9d08:	910042c1 	add	x1, x22, #0x10
    9d0c:	12800000 	mov	w0, #0xffffffff            	// #-1
    9d10:	528000c2 	mov	w2, #0x6                   	// #6
    9d14:	94000000 	bl	0 <crc32_le>
    9d18:	5ac00008 	rbit	w8, w0
    9d1c:	531f7d09 	lsr	w9, w8, #31
    9d20:	910023ea 	add	x10, sp, #0x8
    9d24:	b37e012a 	bfi	x10, x9, #2, #1
    9d28:	b9400149 	ldr	w9, [x10]
    9d2c:	531a7d08 	lsr	w8, w8, #26
    9d30:	1ac822e8 	lsl	w8, w23, w8
    9d34:	2a090108 	orr	w8, w8, w9
    9d38:	b9000148 	str	w8, [x10]
    9d3c:	f94002d6 	ldr	x22, [x22]
    9d40:	eb1502df 	cmp	x22, x21
    9d44:	54fffe21 	b.ne	9d08 <dwmac100_set_filter+0x6c>
    9d48:	294123e9 	ldp	w9, w8, [sp,#8]
    9d4c:	14000015 	b	9da0 <dwmac100_set_filter+0x104>
    9d50:	528bffe9 	mov	w9, #0x5fff                	// #24575
    9d54:	72bffe29 	movk	w9, #0xfff1, lsl #16
    9d58:	0a090108 	and	w8, w8, w9
    9d5c:	320e0113 	orr	w19, w8, #0x40000
    9d60:	14000016 	b	9db8 <dwmac100_set_filter+0x11c>
    9d64:	d5033e9f 	dsb	st
    9d68:	9100328a 	add	x10, x20, #0xc
    9d6c:	1280000b 	mov	w11, #0xffffffff            	// #-1
    9d70:	b900014b 	str	w11, [x10]
    9d74:	d5033e9f 	dsb	st
    9d78:	11400929 	add	w9, w9, #0x2, lsl #12
    9d7c:	0a090108 	and	w8, w8, w9
    9d80:	320d0113 	orr	w19, w8, #0x80000
    9d84:	91004288 	add	x8, x20, #0x10
    9d88:	b900010b 	str	w11, [x8]
    9d8c:	1400000b 	b	9db8 <dwmac100_set_filter+0x11c>
    9d90:	0a090113 	and	w19, w8, w9
    9d94:	14000009 	b	9db8 <dwmac100_set_filter+0x11c>
    9d98:	2a1f03e8 	mov	w8, wzr
    9d9c:	2a1f03e9 	mov	w9, wzr
    9da0:	d5033e9f 	dsb	st
    9da4:	9100428a 	add	x10, x20, #0x10
    9da8:	b9000149 	str	w9, [x10]
    9dac:	d5033e9f 	dsb	st
    9db0:	91003289 	add	x9, x20, #0xc
    9db4:	b9000128 	str	w8, [x9]
    9db8:	d5033e9f 	dsb	st
    9dbc:	b9000293 	str	w19, [x20]
    9dc0:	a9437bfd 	ldp	x29, x30, [sp,#48]
    9dc4:	a9424ff4 	ldp	x20, x19, [sp,#32]
    9dc8:	a94157f6 	ldp	x22, x21, [sp,#16]
    9dcc:	f84407f7 	ldr	x23, [sp],#64
    9dd0:	d65f03c0 	ret

0000000000009dd4 <dwmac100_flow_ctrl>:
    9dd4:	f81d0ff5 	str	x21, [sp,#-48]!
    9dd8:	a9014ff4 	stp	x20, x19, [sp,#16]
    9ddc:	a9027bfd 	stp	x29, x30, [sp,#32]
    9de0:	910083fd 	add	x29, sp, #0x20
    9de4:	2a0303f3 	mov	w19, w3
    9de8:	2a0103f4 	mov	w20, w1
    9dec:	aa0003f5 	mov	x21, x0
    9df0:	94000000 	bl	0 <_mcount>
    9df4:	f94022a8 	ldr	x8, [x21,#64]
    9df8:	5280004a 	mov	w10, #0x2                   	// #2
    9dfc:	52800049 	mov	w9, #0x2                   	// #2
    9e00:	33103e6a 	bfi	w10, w19, #16, #16
    9e04:	7100029f 	cmp	w20, #0x0
    9e08:	d5033e9f 	dsb	st
    9e0c:	1a8a0129 	csel	w9, w9, w10, eq
    9e10:	91007108 	add	x8, x8, #0x1c
    9e14:	b9000109 	str	w9, [x8]
    9e18:	a9427bfd 	ldp	x29, x30, [sp,#32]
    9e1c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    9e20:	f84307f5 	ldr	x21, [sp],#48
    9e24:	d65f03c0 	ret

0000000000009e28 <dwmac100_pmt>:
    9e28:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    9e2c:	910003fd 	mov	x29, sp
    9e30:	94000000 	bl	0 <_mcount>
    9e34:	a8c17bfd 	ldp	x29, x30, [sp],#16
    9e38:	d65f03c0 	ret

0000000000009e3c <dwmac100_set_umac_addr>:
    9e3c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    9e40:	a9017bfd 	stp	x29, x30, [sp,#16]
    9e44:	910043fd 	add	x29, sp, #0x10
    9e48:	aa0103f3 	mov	x19, x1
    9e4c:	aa0003f4 	mov	x20, x0
    9e50:	94000000 	bl	0 <_mcount>
    9e54:	f9402280 	ldr	x0, [x20,#64]
    9e58:	52800082 	mov	w2, #0x4                   	// #4
    9e5c:	52800103 	mov	w3, #0x8                   	// #8
    9e60:	aa1303e1 	mov	x1, x19
    9e64:	94000000 	bl	8378 <stmmac_set_mac_addr>
    9e68:	a9417bfd 	ldp	x29, x30, [sp,#16]
    9e6c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    9e70:	d65f03c0 	ret

0000000000009e74 <dwmac100_get_umac_addr>:
    9e74:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    9e78:	a9017bfd 	stp	x29, x30, [sp,#16]
    9e7c:	910043fd 	add	x29, sp, #0x10
    9e80:	aa0103f3 	mov	x19, x1
    9e84:	aa0003f4 	mov	x20, x0
    9e88:	94000000 	bl	0 <_mcount>
    9e8c:	f9402280 	ldr	x0, [x20,#64]
    9e90:	52800082 	mov	w2, #0x4                   	// #4
    9e94:	52800103 	mov	w3, #0x8                   	// #8
    9e98:	aa1303e1 	mov	x1, x19
    9e9c:	94000000 	bl	841c <stmmac_get_mac_addr>
    9ea0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    9ea4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    9ea8:	d65f03c0 	ret

0000000000009eac <dwmac100_dma_init>:
    9eac:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    9eb0:	a9014ff4 	stp	x20, x19, [sp,#16]
    9eb4:	a9027bfd 	stp	x29, x30, [sp,#32]
    9eb8:	910083fd 	add	x29, sp, #0x20
    9ebc:	2a0603f3 	mov	w19, w6
    9ec0:	2a0503f4 	mov	w20, w5
    9ec4:	2a0103f5 	mov	w21, w1
    9ec8:	aa0003f6 	mov	x22, x0
    9ecc:	94000000 	bl	0 <_mcount>
    9ed0:	53185ea8 	lsl	w8, w21, #8
    9ed4:	d5033e9f 	dsb	st
    9ed8:	914006c9 	add	x9, x22, #0x1, lsl #12
    9edc:	b9000128 	str	w8, [x9]
    9ee0:	52820388 	mov	w8, #0x101c                	// #4124
    9ee4:	52940c29 	mov	w9, #0xa061                	// #41057
    9ee8:	8b0802c8 	add	x8, x22, x8
    9eec:	72a00029 	movk	w9, #0x1, lsl #16
    9ef0:	d5033e9f 	dsb	st
    9ef4:	b9000109 	str	w9, [x8]
    9ef8:	52820208 	mov	w8, #0x1010                	// #4112
    9efc:	8b0802c8 	add	x8, x22, x8
    9f00:	d5033e9f 	dsb	st
    9f04:	b9000114 	str	w20, [x8]
    9f08:	52820188 	mov	w8, #0x100c                	// #4108
    9f0c:	d5033e9f 	dsb	st
    9f10:	8b0802c8 	add	x8, x22, x8
    9f14:	b9000113 	str	w19, [x8]
    9f18:	a9427bfd 	ldp	x29, x30, [sp,#32]
    9f1c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    9f20:	a8c357f6 	ldp	x22, x21, [sp],#48
    9f24:	d65f03c0 	ret

0000000000009f28 <dwmac100_dump_dma_regs>:
    9f28:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    9f2c:	910003fd 	mov	x29, sp
    9f30:	94000000 	bl	0 <_mcount>
    9f34:	a8c17bfd 	ldp	x29, x30, [sp],#16
    9f38:	d65f03c0 	ret

0000000000009f3c <dwmac100_dma_operation_mode>:
    9f3c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    9f40:	a9017bfd 	stp	x29, x30, [sp,#16]
    9f44:	910043fd 	add	x29, sp, #0x10
    9f48:	2a0103f3 	mov	w19, w1
    9f4c:	aa0003f4 	mov	x20, x0
    9f50:	94000000 	bl	0 <_mcount>
    9f54:	7101067f 	cmp	w19, #0x41
    9f58:	52900009 	mov	w9, #0x8000                	// #32768
    9f5c:	5288000a 	mov	w10, #0x4000                	// #16384
    9f60:	5290000b 	mov	w11, #0x8000                	// #32768
    9f64:	52820308 	mov	w8, #0x1018                	// #4120
    9f68:	1a89b149 	csel	w9, w10, w9, lt
    9f6c:	7100867f 	cmp	w19, #0x21
    9f70:	72a0080b 	movk	w11, #0x40, lsl #16
    9f74:	8b080288 	add	x8, x20, x8
    9f78:	b940010a 	ldr	w10, [x8]
    9f7c:	d5033d9f 	dsb	ld
    9f80:	1a89b169 	csel	w9, w11, w9, lt
    9f84:	d5033e9f 	dsb	st
    9f88:	2a090149 	orr	w9, w10, w9
    9f8c:	b9000109 	str	w9, [x8]
    9f90:	a9417bfd 	ldp	x29, x30, [sp,#16]
    9f94:	a8c24ff4 	ldp	x20, x19, [sp],#32
    9f98:	d65f03c0 	ret

0000000000009f9c <dwmac100_dma_diagnostic_fr>:
    9f9c:	f81d0ff5 	str	x21, [sp,#-48]!
    9fa0:	a9014ff4 	stp	x20, x19, [sp,#16]
    9fa4:	a9027bfd 	stp	x29, x30, [sp,#32]
    9fa8:	910083fd 	add	x29, sp, #0x20
    9fac:	aa0203f5 	mov	x21, x2
    9fb0:	aa0103f3 	mov	x19, x1
    9fb4:	aa0003f4 	mov	x20, x0
    9fb8:	94000000 	bl	0 <_mcount>
    9fbc:	52820408 	mov	w8, #0x1020                	// #4128
    9fc0:	8b0802a8 	add	x8, x21, x8
    9fc4:	b9400108 	ldr	w8, [x8]
    9fc8:	d5033d9f 	dsb	ld
    9fcc:	350000a8 	cbnz	w8, 9fe0 <dwmac100_dma_diagnostic_fr+0x44>
    9fd0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    9fd4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    9fd8:	f84307f5 	ldr	x21, [sp],#48
    9fdc:	d65f03c0 	ret
    9fe0:	f9402e8a 	ldr	x10, [x20,#88]
    9fe4:	53116d09 	ubfx	w9, w8, #17, #11
    9fe8:	7204011f 	tst	w8, #0x10000000
    9fec:	5281000b 	mov	w11, #0x800                 	// #2048
    9ff0:	1a8b0129 	csel	w9, w9, w11, eq
    9ff4:	8b09014a 	add	x10, x10, x9
    9ff8:	f9002e8a 	str	x10, [x20,#88]
    9ffc:	f940666a 	ldr	x10, [x19,#200]
    a000:	7210011f 	tst	w8, #0x10000
    a004:	8b090149 	add	x9, x10, x9
    a008:	f9006669 	str	x9, [x19,#200]
    a00c:	f9403e8a 	ldr	x10, [x20,#120]
    a010:	12003d09 	and	w9, w8, #0xffff
    a014:	529fffe8 	mov	w8, #0xffff                	// #65535
    a018:	1a880128 	csel	w8, w9, w8, eq
    a01c:	8b080149 	add	x9, x10, x8
    a020:	f9003e89 	str	x9, [x20,#120]
    a024:	f9406269 	ldr	x9, [x19,#192]
    a028:	8b080128 	add	x8, x9, x8
    a02c:	f9006268 	str	x8, [x19,#192]
    a030:	17ffffe8 	b	9fd0 <dwmac100_dma_diagnostic_fr+0x34>

000000000000a034 <enh_desc_init_rx_desc>:
    a034:	f81c0ff7 	str	x23, [sp,#-64]!
    a038:	a90157f6 	stp	x22, x21, [sp,#16]
    a03c:	a9024ff4 	stp	x20, x19, [sp,#32]
    a040:	a9037bfd 	stp	x29, x30, [sp,#48]
    a044:	9100c3fd 	add	x29, sp, #0x30
    a048:	2a0403f6 	mov	w22, w4
    a04c:	2a0303f5 	mov	w21, w3
    a050:	2a0203f7 	mov	w23, w2
    a054:	2a0103f4 	mov	w20, w1
    a058:	aa0003f3 	mov	x19, x0
    a05c:	94000000 	bl	0 <_mcount>
    a060:	29402a69 	ldp	w9, w10, [x19]
    a064:	71400adf 	cmp	w22, #0x2, lsl #12
    a068:	52840008 	mov	w8, #0x2000                	// #8192
    a06c:	1a88b2c8 	csel	w8, w22, w8, lt
    a070:	12003108 	and	w8, w8, #0x1fff
    a074:	710006ff 	cmp	w23, #0x1
    a078:	32010129 	orr	w9, w9, #0x80000000
    a07c:	2a080148 	orr	w8, w10, w8
    a080:	29002269 	stp	w9, w8, [x19]
    a084:	54000061 	b.ne	a090 <enh_desc_init_rx_desc+0x5c>
    a088:	52880009 	mov	w9, #0x4000                	// #16384
    a08c:	14000003 	b	a098 <enh_desc_init_rx_desc+0x64>
    a090:	34000095 	cbz	w21, a0a0 <enh_desc_init_rx_desc+0x6c>
    a094:	52900009 	mov	w9, #0x8000                	// #32768
    a098:	2a090108 	orr	w8, w8, w9
    a09c:	b9000668 	str	w8, [x19,#4]
    a0a0:	34000074 	cbz	w20, a0ac <enh_desc_init_rx_desc+0x78>
    a0a4:	32010108 	orr	w8, w8, #0x80000000
    a0a8:	b9000668 	str	w8, [x19,#4]
    a0ac:	a9437bfd 	ldp	x29, x30, [sp,#48]
    a0b0:	a9424ff4 	ldp	x20, x19, [sp,#32]
    a0b4:	a94157f6 	ldp	x22, x21, [sp,#16]
    a0b8:	f84407f7 	ldr	x23, [sp],#64
    a0bc:	d65f03c0 	ret

000000000000a0c0 <enh_desc_init_tx_desc>:
    a0c0:	f81d0ff5 	str	x21, [sp,#-48]!
    a0c4:	a9014ff4 	stp	x20, x19, [sp,#16]
    a0c8:	a9027bfd 	stp	x29, x30, [sp,#32]
    a0cc:	910083fd 	add	x29, sp, #0x20
    a0d0:	2a0203f4 	mov	w20, w2
    a0d4:	2a0103f5 	mov	w21, w1
    a0d8:	aa0003f3 	mov	x19, x0
    a0dc:	94000000 	bl	0 <_mcount>
    a0e0:	b9400268 	ldr	w8, [x19]
    a0e4:	710006bf 	cmp	w21, #0x1
    a0e8:	12007909 	and	w9, w8, #0x7fffffff
    a0ec:	b9000269 	str	w9, [x19]
    a0f0:	54000061 	b.ne	a0fc <enh_desc_init_tx_desc+0x3c>
    a0f4:	320c0128 	orr	w8, w9, #0x100000
    a0f8:	14000006 	b	a110 <enh_desc_init_tx_desc+0x50>
    a0fc:	12b0040a 	mov	w10, #0x7fdfffff            	// #2145386495
    a100:	320b0129 	orr	w9, w9, #0x200000
    a104:	0a0a0108 	and	w8, w8, w10
    a108:	7100029f 	cmp	w20, #0x0
    a10c:	1a890108 	csel	w8, w8, w9, eq
    a110:	b9000268 	str	w8, [x19]
    a114:	a9427bfd 	ldp	x29, x30, [sp,#32]
    a118:	a9414ff4 	ldp	x20, x19, [sp,#16]
    a11c:	f84307f5 	ldr	x21, [sp],#48
    a120:	d65f03c0 	ret

000000000000a124 <enh_desc_prepare_tx_desc>:
    a124:	f81b0ff9 	str	x25, [sp,#-80]!
    a128:	a9015ff8 	stp	x24, x23, [sp,#16]
    a12c:	a90257f6 	stp	x22, x21, [sp,#32]
    a130:	a9034ff4 	stp	x20, x19, [sp,#48]
    a134:	a9047bfd 	stp	x29, x30, [sp,#64]
    a138:	910103fd 	add	x29, sp, #0x40
    a13c:	2a0603f6 	mov	w22, w6
    a140:	2a0503f4 	mov	w20, w5
    a144:	2a0403f9 	mov	w25, w4
    a148:	2a0303f7 	mov	w23, w3
    a14c:	2a0203f8 	mov	w24, w2
    a150:	2a0103f5 	mov	w21, w1
    a154:	aa0003f3 	mov	x19, x0
    a158:	94000000 	bl	0 <_mcount>
    a15c:	b9400268 	ldr	w8, [x19]
    a160:	7100073f 	cmp	w25, #0x1
    a164:	54000060 	b.eq	a170 <enh_desc_prepare_tx_desc+0x4c>
    a168:	7140071f 	cmp	w24, #0x1, lsl #12
    a16c:	540003cc 	b.gt	a1e4 <enh_desc_prepare_tx_desc+0xc0>
    a170:	aa1303e9 	mov	x9, x19
    a174:	b8404d2a 	ldr	w10, [x9,#4]!
    a178:	1200330b 	and	w11, w24, #0x1fff
    a17c:	2a0b014a 	orr	w10, w10, w11
    a180:	b900012a 	str	w10, [x9]
    a184:	32040109 	orr	w9, w8, #0x10000000
    a188:	12037908 	and	w8, w8, #0xefffffff
    a18c:	710002bf 	cmp	w21, #0x0
    a190:	1a890108 	csel	w8, w8, w9, eq
    a194:	720002ff 	tst	w23, #0x1
    a198:	320a0509 	orr	w9, w8, #0xc00000
    a19c:	12087508 	and	w8, w8, #0xff3fffff
    a1a0:	1a881128 	csel	w8, w9, w8, ne
    a1a4:	720002df 	tst	w22, #0x1
    a1a8:	32030109 	orr	w9, w8, #0x20000000
    a1ac:	1a881128 	csel	w8, w9, w8, ne
    a1b0:	7200029f 	tst	w20, #0x1
    a1b4:	32010109 	orr	w9, w8, #0x80000000
    a1b8:	0a15028a 	and	w10, w20, w21
    a1bc:	1a881128 	csel	w8, w9, w8, ne
    a1c0:	3600004a 	tbz	w10, #0, a1c8 <enh_desc_prepare_tx_desc+0xa4>
    a1c4:	d5033e9f 	dsb	st
    a1c8:	b9000268 	str	w8, [x19]
    a1cc:	a9447bfd 	ldp	x29, x30, [sp,#64]
    a1d0:	a9434ff4 	ldp	x20, x19, [sp,#48]
    a1d4:	a94257f6 	ldp	x22, x21, [sp,#32]
    a1d8:	a9415ff8 	ldp	x24, x23, [sp,#16]
    a1dc:	f84507f9 	ldr	x25, [sp],#80
    a1e0:	d65f03c0 	ret
    a1e4:	aa1303e9 	mov	x9, x19
    a1e8:	b8404d2a 	ldr	w10, [x9,#4]!
    a1ec:	52a2000b 	mov	w11, #0x10000000            	// #268435456
    a1f0:	0b18416b 	add	w11, w11, w24, lsl #16
    a1f4:	1210316b 	and	w11, w11, #0x1fff0000
    a1f8:	2a0a016a 	orr	w10, w11, w10
    a1fc:	3214014a 	orr	w10, w10, #0x1000
    a200:	17ffffe0 	b	a180 <enh_desc_prepare_tx_desc+0x5c>

000000000000a204 <enh_desc_set_tx_owner>:
    a204:	f81e0ff3 	str	x19, [sp,#-32]!
    a208:	a9017bfd 	stp	x29, x30, [sp,#16]
    a20c:	910043fd 	add	x29, sp, #0x10
    a210:	aa0003f3 	mov	x19, x0
    a214:	94000000 	bl	0 <_mcount>
    a218:	b9400268 	ldr	w8, [x19]
    a21c:	32010108 	orr	w8, w8, #0x80000000
    a220:	b9000268 	str	w8, [x19]
    a224:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a228:	f84207f3 	ldr	x19, [sp],#32
    a22c:	d65f03c0 	ret

000000000000a230 <enh_desc_get_tx_owner>:
    a230:	f81e0ff3 	str	x19, [sp,#-32]!
    a234:	a9017bfd 	stp	x29, x30, [sp,#16]
    a238:	910043fd 	add	x29, sp, #0x10
    a23c:	aa0003f3 	mov	x19, x0
    a240:	94000000 	bl	0 <_mcount>
    a244:	b9400268 	ldr	w8, [x19]
    a248:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a24c:	531f7d00 	lsr	w0, w8, #31
    a250:	f84207f3 	ldr	x19, [sp],#32
    a254:	d65f03c0 	ret

000000000000a258 <enh_desc_release_tx_desc>:
    a258:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    a25c:	a9017bfd 	stp	x29, x30, [sp,#16]
    a260:	910043fd 	add	x29, sp, #0x10
    a264:	2a0103f3 	mov	w19, w1
    a268:	aa0003f4 	mov	x20, x0
    a26c:	94000000 	bl	0 <_mcount>
    a270:	b9400288 	ldr	w8, [x20]
    a274:	7100067f 	cmp	w19, #0x1
    a278:	52a00209 	mov	w9, #0x100000              	// #1048576
    a27c:	f900029f 	str	xzr, [x20]
    a280:	120b0108 	and	w8, w8, #0x200000
    a284:	1a880128 	csel	w8, w9, w8, eq
    a288:	b9000288 	str	w8, [x20]
    a28c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a290:	a8c24ff4 	ldp	x20, x19, [sp],#32
    a294:	d65f03c0 	ret

000000000000a298 <enh_desc_set_tx_ic>:
    a298:	f81e0ff3 	str	x19, [sp,#-32]!
    a29c:	a9017bfd 	stp	x29, x30, [sp,#16]
    a2a0:	910043fd 	add	x29, sp, #0x10
    a2a4:	aa0003f3 	mov	x19, x0
    a2a8:	94000000 	bl	0 <_mcount>
    a2ac:	b9400268 	ldr	w8, [x19]
    a2b0:	32020108 	orr	w8, w8, #0x40000000
    a2b4:	b9000268 	str	w8, [x19]
    a2b8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a2bc:	f84207f3 	ldr	x19, [sp],#32
    a2c0:	d65f03c0 	ret

000000000000a2c4 <enh_desc_get_tx_ls>:
    a2c4:	f81e0ff3 	str	x19, [sp,#-32]!
    a2c8:	a9017bfd 	stp	x29, x30, [sp,#16]
    a2cc:	910043fd 	add	x29, sp, #0x10
    a2d0:	aa0003f3 	mov	x19, x0
    a2d4:	94000000 	bl	0 <_mcount>
    a2d8:	b9400268 	ldr	w8, [x19]
    a2dc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a2e0:	531d7500 	ubfx	w0, w8, #29, #1
    a2e4:	f84207f3 	ldr	x19, [sp],#32
    a2e8:	d65f03c0 	ret

000000000000a2ec <enh_desc_get_tx_status>:
    a2ec:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    a2f0:	a9014ff4 	stp	x20, x19, [sp,#16]
    a2f4:	a9027bfd 	stp	x29, x30, [sp,#32]
    a2f8:	910083fd 	add	x29, sp, #0x20
    a2fc:	aa0303f4 	mov	x20, x3
    a300:	aa0203f6 	mov	x22, x2
    a304:	aa0103f3 	mov	x19, x1
    a308:	aa0003f5 	mov	x21, x0
    a30c:	94000000 	bl	0 <_mcount>
    a310:	b94002d6 	ldr	w22, [x22]
    a314:	37f800f6 	tbnz	w22, #31, a330 <enh_desc_get_tx_status+0x44>
    a318:	37e80116 	tbnz	w22, #29, a338 <enh_desc_get_tx_status+0x4c>
    a31c:	52800020 	mov	w0, #0x1                   	// #1
    a320:	a9427bfd 	ldp	x29, x30, [sp,#32]
    a324:	a9414ff4 	ldp	x20, x19, [sp,#16]
    a328:	a8c357f6 	ldp	x22, x21, [sp],#48
    a32c:	d65f03c0 	ret
    a330:	52800080 	mov	w0, #0x4                   	// #4
    a334:	17fffffb 	b	a320 <enh_desc_get_tx_status+0x34>
    a338:	37780116 	tbnz	w22, #15, a358 <enh_desc_get_tx_status+0x6c>
    a33c:	2a1f03e0 	mov	w0, wzr
    a340:	37000256 	tbnz	w22, #0, a388 <enh_desc_get_tx_status+0x9c>
    a344:	363ffef6 	tbz	w22, #7, a320 <enh_desc_get_tx_status+0x34>
    a348:	f9401668 	ldr	x8, [x19,#40]
    a34c:	91000508 	add	x8, x8, #0x1
    a350:	f9001668 	str	x8, [x19,#40]
    a354:	17fffff3 	b	a320 <enh_desc_get_tx_status+0x34>
    a358:	37700236 	tbnz	w22, #14, a39c <enh_desc_get_tx_status+0xb0>
    a35c:	37680296 	tbnz	w22, #13, a3ac <enh_desc_get_tx_status+0xc0>
    a360:	37580336 	tbnz	w22, #11, a3c4 <enh_desc_get_tx_status+0xd8>
    a364:	375003f6 	tbnz	w22, #10, a3e0 <enh_desc_get_tx_status+0xf4>
    a368:	374004b6 	tbnz	w22, #8, a3fc <enh_desc_get_tx_status+0x110>
    a36c:	37480496 	tbnz	w22, #9, a3fc <enh_desc_get_tx_status+0x110>
    a370:	37100516 	tbnz	w22, #2, a410 <enh_desc_get_tx_status+0x124>
    a374:	37080576 	tbnz	w22, #1, a420 <enh_desc_get_tx_status+0x134>
    a378:	37800616 	tbnz	w22, #16, a438 <enh_desc_get_tx_status+0x14c>
    a37c:	37600676 	tbnz	w22, #12, a448 <enh_desc_get_tx_status+0x15c>
    a380:	52800040 	mov	w0, #0x2                   	// #2
    a384:	3607fe16 	tbz	w22, #0, a344 <enh_desc_get_tx_status+0x58>
    a388:	f9401268 	ldr	x8, [x19,#32]
    a38c:	91000508 	add	x8, x8, #0x1
    a390:	f9001268 	str	x8, [x19,#32]
    a394:	363ffc76 	tbz	w22, #7, a320 <enh_desc_get_tx_status+0x34>
    a398:	17ffffec 	b	a348 <enh_desc_get_tx_status+0x5c>
    a39c:	f9401a68 	ldr	x8, [x19,#48]
    a3a0:	91000508 	add	x8, x8, #0x1
    a3a4:	f9001a68 	str	x8, [x19,#48]
    a3a8:	366ffdd6 	tbz	w22, #13, a360 <enh_desc_get_tx_status+0x74>
    a3ac:	f9401e68 	ldr	x8, [x19,#56]
    a3b0:	aa1403e0 	mov	x0, x20
    a3b4:	91000508 	add	x8, x8, #0x1
    a3b8:	f9001e68 	str	x8, [x19,#56]
    a3bc:	94000000 	bl	8330 <dwmac_dma_flush_tx_fifo>
    a3c0:	365ffd36 	tbz	w22, #11, a364 <enh_desc_get_tx_status+0x78>
    a3c4:	f9400a68 	ldr	x8, [x19,#16]
    a3c8:	91000508 	add	x8, x8, #0x1
    a3cc:	f9000a68 	str	x8, [x19,#16]
    a3d0:	f94046a8 	ldr	x8, [x21,#136]
    a3d4:	91000508 	add	x8, x8, #0x1
    a3d8:	f90046a8 	str	x8, [x21,#136]
    a3dc:	3657fc76 	tbz	w22, #10, a368 <enh_desc_get_tx_status+0x7c>
    a3e0:	f9400668 	ldr	x8, [x19,#8]
    a3e4:	91000508 	add	x8, x8, #0x1
    a3e8:	f9000668 	str	x8, [x19,#8]
    a3ec:	f94046a8 	ldr	x8, [x21,#136]
    a3f0:	91000508 	add	x8, x8, #0x1
    a3f4:	f90046a8 	str	x8, [x21,#136]
    a3f8:	3647fbb6 	tbz	w22, #8, a36c <enh_desc_get_tx_status+0x80>
    a3fc:	f94026a8 	ldr	x8, [x21,#72]
    a400:	d3431ac9 	ubfx	x9, x22, #3, #4
    a404:	8b090108 	add	x8, x8, x9
    a408:	f90026a8 	str	x8, [x21,#72]
    a40c:	3617fb56 	tbz	w22, #2, a374 <enh_desc_get_tx_status+0x88>
    a410:	f9401268 	ldr	x8, [x19,#32]
    a414:	91000508 	add	x8, x8, #0x1
    a418:	f9001268 	str	x8, [x19,#32]
    a41c:	360ffaf6 	tbz	w22, #1, a378 <enh_desc_get_tx_status+0x8c>
    a420:	aa1403e0 	mov	x0, x20
    a424:	94000000 	bl	8330 <dwmac_dma_flush_tx_fifo>
    a428:	f9400268 	ldr	x8, [x19]
    a42c:	91000508 	add	x8, x8, #0x1
    a430:	f9000268 	str	x8, [x19]
    a434:	3687fa56 	tbz	w22, #16, a37c <enh_desc_get_tx_status+0x90>
    a438:	f9402668 	ldr	x8, [x19,#72]
    a43c:	91000508 	add	x8, x8, #0x1
    a440:	f9002668 	str	x8, [x19,#72]
    a444:	3667f9f6 	tbz	w22, #12, a380 <enh_desc_get_tx_status+0x94>
    a448:	f9402268 	ldr	x8, [x19,#64]
    a44c:	aa1403e0 	mov	x0, x20
    a450:	91000508 	add	x8, x8, #0x1
    a454:	f9002268 	str	x8, [x19,#64]
    a458:	94000000 	bl	8330 <dwmac_dma_flush_tx_fifo>
    a45c:	52800040 	mov	w0, #0x2                   	// #2
    a460:	3607f736 	tbz	w22, #0, a344 <enh_desc_get_tx_status+0x58>
    a464:	17ffffc9 	b	a388 <enh_desc_get_tx_status+0x9c>

000000000000a468 <enh_desc_get_tx_len>:
    a468:	f81e0ff3 	str	x19, [sp,#-32]!
    a46c:	a9017bfd 	stp	x29, x30, [sp,#16]
    a470:	910043fd 	add	x29, sp, #0x10
    a474:	aa0003f3 	mov	x19, x0
    a478:	94000000 	bl	0 <_mcount>
    a47c:	b9400668 	ldr	w8, [x19,#4]
    a480:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a484:	12003100 	and	w0, w8, #0x1fff
    a488:	f84207f3 	ldr	x19, [sp],#32
    a48c:	d65f03c0 	ret

000000000000a490 <enh_desc_set_rx_owner>:
    a490:	f81e0ff3 	str	x19, [sp,#-32]!
    a494:	a9017bfd 	stp	x29, x30, [sp,#16]
    a498:	910043fd 	add	x29, sp, #0x10
    a49c:	aa0003f3 	mov	x19, x0
    a4a0:	94000000 	bl	0 <_mcount>
    a4a4:	b9400268 	ldr	w8, [x19]
    a4a8:	32010108 	orr	w8, w8, #0x80000000
    a4ac:	b9000268 	str	w8, [x19]
    a4b0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a4b4:	f84207f3 	ldr	x19, [sp],#32
    a4b8:	d65f03c0 	ret

000000000000a4bc <enh_desc_get_rx_frame_len>:
    a4bc:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    a4c0:	7100043f 	cmp	w1, #0x1
    a4c4:	a9017bfd 	stp	x29, x30, [sp,#16]
    a4c8:	910043fd 	add	x29, sp, #0x10
    a4cc:	aa0003f3 	mov	x19, x0
    a4d0:	1a9f17f4 	cset	w20, eq
    a4d4:	94000000 	bl	0 <_mcount>
    a4d8:	79400668 	ldrh	w8, [x19,#2]
    a4dc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a4e0:	12003508 	and	w8, w8, #0x3fff
    a4e4:	4b140500 	sub	w0, w8, w20, lsl #1
    a4e8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    a4ec:	d65f03c0 	ret

000000000000a4f0 <enh_desc_get_rx_status>:
    a4f0:	f81d0ff5 	str	x21, [sp,#-48]!
    a4f4:	a9014ff4 	stp	x20, x19, [sp,#16]
    a4f8:	a9027bfd 	stp	x29, x30, [sp,#32]
    a4fc:	910083fd 	add	x29, sp, #0x20
    a500:	aa0203f5 	mov	x21, x2
    a504:	aa0103f3 	mov	x19, x1
    a508:	aa0003f4 	mov	x20, x0
    a50c:	94000000 	bl	0 <_mcount>
    a510:	b94002b5 	ldr	w21, [x21]
    a514:	37f80355 	tbnz	w21, #31, a57c <enh_desc_get_rx_status+0x8c>
    a518:	36400375 	tbz	w21, #8, a584 <enh_desc_get_rx_status+0x94>
    a51c:	377803f5 	tbnz	w21, #15, a598 <enh_desc_get_rx_status+0xa8>
    a520:	d346fea8 	lsr	x8, x21, #6
    a524:	d280000a 	mov	x10, #0x0                   	// #0
    a528:	d343fea9 	lsr	x9, x21, #3
    a52c:	927f0108 	and	x8, x8, #0x2
    a530:	f2a0000a 	movk	x10, #0x0, lsl #16
    a534:	927e0129 	and	x9, x9, #0x4
    a538:	b34002a8 	bfxil	x8, x21, #0, #1
    a53c:	f2c0000a 	movk	x10, #0x0, lsl #32
    a540:	aa090108 	orr	x8, x8, x9
    a544:	f2e0000a 	movk	x10, #0x0, lsl #48
    a548:	b8687940 	ldr	w0, [x10,x8,lsl #2]
    a54c:	37100395 	tbnz	w21, #2, a5bc <enh_desc_get_rx_status+0xcc>
    a550:	376803f5 	tbnz	w21, #13, a5cc <enh_desc_get_rx_status+0xdc>
    a554:	37f00475 	tbnz	w21, #30, a5e0 <enh_desc_get_rx_status+0xf0>
    a558:	376004f5 	tbnz	w21, #12, a5f4 <enh_desc_get_rx_status+0x104>
    a55c:	36500095 	tbz	w21, #10, a56c <enh_desc_get_rx_status+0x7c>
    a560:	f9406a68 	ldr	x8, [x19,#208]
    a564:	91000508 	add	x8, x8, #0x1
    a568:	f9006a68 	str	x8, [x19,#208]
    a56c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    a570:	a9414ff4 	ldp	x20, x19, [sp,#16]
    a574:	f84307f5 	ldr	x21, [sp],#48
    a578:	d65f03c0 	ret
    a57c:	52800100 	mov	w0, #0x8                   	// #8
    a580:	17fffffb 	b	a56c <enh_desc_get_rx_status+0x7c>
    a584:	f9402a88 	ldr	x8, [x20,#80]
    a588:	52800020 	mov	w0, #0x1                   	// #1
    a58c:	91000508 	add	x8, x8, #0x1
    a590:	f9002a88 	str	x8, [x20,#80]
    a594:	17fffff6 	b	a56c <enh_desc_get_rx_status+0x7c>
    a598:	377003b5 	tbnz	w21, #14, a60c <enh_desc_get_rx_status+0x11c>
    a59c:	37580475 	tbnz	w21, #11, a628 <enh_desc_get_rx_status+0x138>
    a5a0:	373804d5 	tbnz	w21, #7, a638 <enh_desc_get_rx_status+0x148>
    a5a4:	37300575 	tbnz	w21, #6, a650 <enh_desc_get_rx_status+0x160>
    a5a8:	372005d5 	tbnz	w21, #4, a660 <enh_desc_get_rx_status+0x170>
    a5ac:	37180635 	tbnz	w21, #3, a670 <enh_desc_get_rx_status+0x180>
    a5b0:	37080695 	tbnz	w21, #1, a680 <enh_desc_get_rx_status+0x190>
    a5b4:	52800020 	mov	w0, #0x1                   	// #1
    a5b8:	3617fcd5 	tbz	w21, #2, a550 <enh_desc_get_rx_status+0x60>
    a5bc:	f9404268 	ldr	x8, [x19,#128]
    a5c0:	91000508 	add	x8, x8, #0x1
    a5c4:	f9004268 	str	x8, [x19,#128]
    a5c8:	366ffc75 	tbz	w21, #13, a554 <enh_desc_get_rx_status+0x64>
    a5cc:	f9405e68 	ldr	x8, [x19,#184]
    a5d0:	52800020 	mov	w0, #0x1                   	// #1
    a5d4:	91000508 	add	x8, x8, #0x1
    a5d8:	f9005e68 	str	x8, [x19,#184]
    a5dc:	36f7fbf5 	tbz	w21, #30, a558 <enh_desc_get_rx_status+0x68>
    a5e0:	f9405a68 	ldr	x8, [x19,#176]
    a5e4:	52800020 	mov	w0, #0x1                   	// #1
    a5e8:	91000508 	add	x8, x8, #0x1
    a5ec:	f9005a68 	str	x8, [x19,#176]
    a5f0:	3667fb75 	tbz	w21, #12, a55c <enh_desc_get_rx_status+0x6c>
    a5f4:	f9404668 	ldr	x8, [x19,#136]
    a5f8:	52800020 	mov	w0, #0x1                   	// #1
    a5fc:	91000508 	add	x8, x8, #0x1
    a600:	f9004668 	str	x8, [x19,#136]
    a604:	3757faf5 	tbnz	w21, #10, a560 <enh_desc_get_rx_status+0x70>
    a608:	17ffffd9 	b	a56c <enh_desc_get_rx_status+0x7c>
    a60c:	f9402a68 	ldr	x8, [x19,#80]
    a610:	91000508 	add	x8, x8, #0x1
    a614:	f9002a68 	str	x8, [x19,#80]
    a618:	f9402a88 	ldr	x8, [x20,#80]
    a61c:	91000508 	add	x8, x8, #0x1
    a620:	f9002a88 	str	x8, [x20,#80]
    a624:	365ffbf5 	tbz	w21, #11, a5a0 <enh_desc_get_rx_status+0xb0>
    a628:	f9405268 	ldr	x8, [x19,#160]
    a62c:	91000508 	add	x8, x8, #0x1
    a630:	f9005268 	str	x8, [x19,#160]
    a634:	363ffb95 	tbz	w21, #7, a5a4 <enh_desc_get_rx_status+0xb4>
    a638:	d2800000 	mov	x0, #0x0                   	// #0
    a63c:	f2a00000 	movk	x0, #0x0, lsl #16
    a640:	f2c00000 	movk	x0, #0x0, lsl #32
    a644:	f2e00000 	movk	x0, #0x0, lsl #48
    a648:	94000000 	bl	0 <printk>
    a64c:	3637faf5 	tbz	w21, #6, a5a8 <enh_desc_get_rx_status+0xb8>
    a650:	f9402688 	ldr	x8, [x20,#72]
    a654:	91000508 	add	x8, x8, #0x1
    a658:	f9002688 	str	x8, [x20,#72]
    a65c:	3627fa95 	tbz	w21, #4, a5ac <enh_desc_get_rx_status+0xbc>
    a660:	f9405668 	ldr	x8, [x19,#168]
    a664:	91000508 	add	x8, x8, #0x1
    a668:	f9005668 	str	x8, [x19,#168]
    a66c:	361ffa35 	tbz	w21, #3, a5b0 <enh_desc_get_rx_status+0xc0>
    a670:	f9404a68 	ldr	x8, [x19,#144]
    a674:	91000508 	add	x8, x8, #0x1
    a678:	f9004a68 	str	x8, [x19,#144]
    a67c:	360ff9d5 	tbz	w21, #1, a5b4 <enh_desc_get_rx_status+0xc4>
    a680:	f9403e68 	ldr	x8, [x19,#120]
    a684:	52800020 	mov	w0, #0x1                   	// #1
    a688:	91000508 	add	x8, x8, #0x1
    a68c:	f9003e68 	str	x8, [x19,#120]
    a690:	f9403288 	ldr	x8, [x20,#96]
    a694:	91000508 	add	x8, x8, #0x1
    a698:	f9003288 	str	x8, [x20,#96]
    a69c:	3617f5b5 	tbz	w21, #2, a550 <enh_desc_get_rx_status+0x60>
    a6a0:	17ffffc7 	b	a5bc <enh_desc_get_rx_status+0xcc>

000000000000a6a4 <enh_desc_get_ext_status>:
    a6a4:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    a6a8:	a9017bfd 	stp	x29, x30, [sp,#16]
    a6ac:	910043fd 	add	x29, sp, #0x10
    a6b0:	aa0203f4 	mov	x20, x2
    a6b4:	aa0103f3 	mov	x19, x1
    a6b8:	94000000 	bl	0 <_mcount>
    a6bc:	39400288 	ldrb	w8, [x20]
    a6c0:	37000088 	tbnz	w8, #0, a6d0 <enh_desc_get_ext_status+0x2c>
    a6c4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a6c8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    a6cc:	d65f03c0 	ret
    a6d0:	b9401288 	ldr	w8, [x20,#16]
    a6d4:	37180128 	tbnz	w8, #3, a6f8 <enh_desc_get_ext_status+0x54>
    a6d8:	37200188 	tbnz	w8, #4, a708 <enh_desc_get_ext_status+0x64>
    a6dc:	372801e8 	tbnz	w8, #5, a718 <enh_desc_get_ext_status+0x74>
    a6e0:	37300248 	tbnz	w8, #6, a728 <enh_desc_get_ext_status+0x84>
    a6e4:	53082d09 	ubfx	w9, w8, #8, #4
    a6e8:	373802a8 	tbnz	w8, #7, a73c <enh_desc_get_ext_status+0x98>
    a6ec:	71003d3f 	cmp	w9, #0xf
    a6f0:	54000309 	b.ls	a750 <enh_desc_get_ext_status+0xac>
    a6f4:	14000054 	b	a844 <enh_desc_get_ext_status+0x1a0>
    a6f8:	f940de69 	ldr	x9, [x19,#440]
    a6fc:	91000529 	add	x9, x9, #0x1
    a700:	f900de69 	str	x9, [x19,#440]
    a704:	3627fec8 	tbz	w8, #4, a6dc <enh_desc_get_ext_status+0x38>
    a708:	f940e269 	ldr	x9, [x19,#448]
    a70c:	91000529 	add	x9, x9, #0x1
    a710:	f900e269 	str	x9, [x19,#448]
    a714:	362ffe68 	tbz	w8, #5, a6e0 <enh_desc_get_ext_status+0x3c>
    a718:	f940e669 	ldr	x9, [x19,#456]
    a71c:	91000529 	add	x9, x9, #0x1
    a720:	f900e669 	str	x9, [x19,#456]
    a724:	3637fe08 	tbz	w8, #6, a6e4 <enh_desc_get_ext_status+0x40>
    a728:	f940ea69 	ldr	x9, [x19,#464]
    a72c:	91000529 	add	x9, x9, #0x1
    a730:	f900ea69 	str	x9, [x19,#464]
    a734:	53082d09 	ubfx	w9, w8, #8, #4
    a738:	363ffda8 	tbz	w8, #7, a6ec <enh_desc_get_ext_status+0x48>
    a73c:	f940ee6a 	ldr	x10, [x19,#472]
    a740:	9100054a 	add	x10, x10, #0x1
    a744:	f900ee6a 	str	x10, [x19,#472]
    a748:	71003d3f 	cmp	w9, #0xf
    a74c:	540007c8 	b.hi	a844 <enh_desc_get_ext_status+0x1a0>
    a750:	d280000a 	mov	x10, #0x0                   	// #0
    a754:	f2a0000a 	movk	x10, #0x0, lsl #16
    a758:	f2c0000a 	movk	x10, #0x0, lsl #32
    a75c:	f2e0000a 	movk	x10, #0x0, lsl #48
    a760:	1000008b 	adr	x11, a770 <enh_desc_get_ext_status+0xcc>
    a764:	3869694c 	ldrb	w12, [x10,x9]
    a768:	8b0c096b 	add	x11, x11, x12, lsl #2
    a76c:	d61f0160 	br	x11
    a770:	f940f269 	ldr	x9, [x19,#480]
    a774:	91000529 	add	x9, x9, #0x1
    a778:	f900f269 	str	x9, [x19,#480]
    a77c:	36600668 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a780:	14000040 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a784:	f940f669 	ldr	x9, [x19,#488]
    a788:	91000529 	add	x9, x9, #0x1
    a78c:	f900f669 	str	x9, [x19,#488]
    a790:	366005c8 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a794:	1400003b 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a798:	f940fa69 	ldr	x9, [x19,#496]
    a79c:	91000529 	add	x9, x9, #0x1
    a7a0:	f900fa69 	str	x9, [x19,#496]
    a7a4:	36600528 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a7a8:	14000036 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a7ac:	f940fe69 	ldr	x9, [x19,#504]
    a7b0:	91000529 	add	x9, x9, #0x1
    a7b4:	f900fe69 	str	x9, [x19,#504]
    a7b8:	36600488 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a7bc:	14000031 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a7c0:	f9410269 	ldr	x9, [x19,#512]
    a7c4:	91000529 	add	x9, x9, #0x1
    a7c8:	f9010269 	str	x9, [x19,#512]
    a7cc:	366003e8 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a7d0:	1400002c 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a7d4:	f9410669 	ldr	x9, [x19,#520]
    a7d8:	91000529 	add	x9, x9, #0x1
    a7dc:	f9010669 	str	x9, [x19,#520]
    a7e0:	36600348 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a7e4:	14000027 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a7e8:	f9410a69 	ldr	x9, [x19,#528]
    a7ec:	91000529 	add	x9, x9, #0x1
    a7f0:	f9010a69 	str	x9, [x19,#528]
    a7f4:	366002a8 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a7f8:	14000022 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a7fc:	f9410e69 	ldr	x9, [x19,#536]
    a800:	91000529 	add	x9, x9, #0x1
    a804:	f9010e69 	str	x9, [x19,#536]
    a808:	36600208 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a80c:	1400001d 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a810:	f9411669 	ldr	x9, [x19,#552]
    a814:	91000529 	add	x9, x9, #0x1
    a818:	f9011669 	str	x9, [x19,#552]
    a81c:	36600168 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a820:	14000018 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a824:	f9411a69 	ldr	x9, [x19,#560]
    a828:	91000529 	add	x9, x9, #0x1
    a82c:	f9011a69 	str	x9, [x19,#560]
    a830:	366000c8 	tbz	w8, #12, a848 <enh_desc_get_ext_status+0x1a4>
    a834:	14000013 	b	a880 <enh_desc_get_ext_status+0x1dc>
    a838:	f9411269 	ldr	x9, [x19,#544]
    a83c:	91000529 	add	x9, x9, #0x1
    a840:	f9011269 	str	x9, [x19,#544]
    a844:	376001e8 	tbnz	w8, #12, a880 <enh_desc_get_ext_status+0x1dc>
    a848:	37680248 	tbnz	w8, #13, a890 <enh_desc_get_ext_status+0x1ec>
    a84c:	377002a8 	tbnz	w8, #14, a8a0 <enh_desc_get_ext_status+0x1fc>
    a850:	37800308 	tbnz	w8, #16, a8b0 <enh_desc_get_ext_status+0x20c>
    a854:	37880368 	tbnz	w8, #17, a8c0 <enh_desc_get_ext_status+0x21c>
    a858:	f26e091f 	tst	x8, #0x1c0000
    a85c:	54000080 	b.eq	a86c <enh_desc_get_ext_status+0x1c8>
    a860:	f9413269 	ldr	x9, [x19,#608]
    a864:	91000529 	add	x9, x9, #0x1
    a868:	f9013269 	str	x9, [x19,#608]
    a86c:	37c00368 	tbnz	w8, #24, a8d8 <enh_desc_get_ext_status+0x234>
    a870:	37c803c8 	tbnz	w8, #25, a8e8 <enh_desc_get_ext_status+0x244>
    a874:	f266051f 	tst	x8, #0xc000000
    a878:	54000421 	b.ne	a8fc <enh_desc_get_ext_status+0x258>
    a87c:	17ffff92 	b	a6c4 <enh_desc_get_ext_status+0x20>
    a880:	f9411e69 	ldr	x9, [x19,#568]
    a884:	91000529 	add	x9, x9, #0x1
    a888:	f9011e69 	str	x9, [x19,#568]
    a88c:	366ffe08 	tbz	w8, #13, a84c <enh_desc_get_ext_status+0x1a8>
    a890:	f9412269 	ldr	x9, [x19,#576]
    a894:	91000529 	add	x9, x9, #0x1
    a898:	f9012269 	str	x9, [x19,#576]
    a89c:	3677fda8 	tbz	w8, #14, a850 <enh_desc_get_ext_status+0x1ac>
    a8a0:	f9412669 	ldr	x9, [x19,#584]
    a8a4:	91000529 	add	x9, x9, #0x1
    a8a8:	f9012669 	str	x9, [x19,#584]
    a8ac:	3687fd48 	tbz	w8, #16, a854 <enh_desc_get_ext_status+0x1b0>
    a8b0:	f9412a69 	ldr	x9, [x19,#592]
    a8b4:	91000529 	add	x9, x9, #0x1
    a8b8:	f9012a69 	str	x9, [x19,#592]
    a8bc:	368ffce8 	tbz	w8, #17, a858 <enh_desc_get_ext_status+0x1b4>
    a8c0:	f9412e69 	ldr	x9, [x19,#600]
    a8c4:	91000529 	add	x9, x9, #0x1
    a8c8:	f9012e69 	str	x9, [x19,#600]
    a8cc:	f26e091f 	tst	x8, #0x1c0000
    a8d0:	54fffc81 	b.ne	a860 <enh_desc_get_ext_status+0x1bc>
    a8d4:	17ffffe6 	b	a86c <enh_desc_get_ext_status+0x1c8>
    a8d8:	f9413669 	ldr	x9, [x19,#616]
    a8dc:	91000529 	add	x9, x9, #0x1
    a8e0:	f9013669 	str	x9, [x19,#616]
    a8e4:	36cffc88 	tbz	w8, #25, a874 <enh_desc_get_ext_status+0x1d0>
    a8e8:	f9413a69 	ldr	x9, [x19,#624]
    a8ec:	91000529 	add	x9, x9, #0x1
    a8f0:	f9013a69 	str	x9, [x19,#624]
    a8f4:	f266051f 	tst	x8, #0xc000000
    a8f8:	54ffee60 	b.eq	a6c4 <enh_desc_get_ext_status+0x20>
    a8fc:	f9413e68 	ldr	x8, [x19,#632]
    a900:	91000508 	add	x8, x8, #0x1
    a904:	f9013e68 	str	x8, [x19,#632]
    a908:	17ffff6f 	b	a6c4 <enh_desc_get_ext_status+0x20>

000000000000a90c <enh_desc_enable_tx_timestamp>:
    a90c:	f81e0ff3 	str	x19, [sp,#-32]!
    a910:	a9017bfd 	stp	x29, x30, [sp,#16]
    a914:	910043fd 	add	x29, sp, #0x10
    a918:	aa0003f3 	mov	x19, x0
    a91c:	94000000 	bl	0 <_mcount>
    a920:	b9400268 	ldr	w8, [x19]
    a924:	32070108 	orr	w8, w8, #0x2000000
    a928:	b9000268 	str	w8, [x19]
    a92c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a930:	f84207f3 	ldr	x19, [sp],#32
    a934:	d65f03c0 	ret

000000000000a938 <enh_desc_get_tx_timestamp_status>:
    a938:	f81e0ff3 	str	x19, [sp,#-32]!
    a93c:	a9017bfd 	stp	x29, x30, [sp,#16]
    a940:	910043fd 	add	x29, sp, #0x10
    a944:	aa0003f3 	mov	x19, x0
    a948:	94000000 	bl	0 <_mcount>
    a94c:	b9400268 	ldr	w8, [x19]
    a950:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a954:	53114500 	ubfx	w0, w8, #17, #1
    a958:	f84207f3 	ldr	x19, [sp],#32
    a95c:	d65f03c0 	ret

000000000000a960 <enh_desc_get_timestamp>:
    a960:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    a964:	a9017bfd 	stp	x29, x30, [sp,#16]
    a968:	910043fd 	add	x29, sp, #0x10
    a96c:	2a0103f3 	mov	w19, w1
    a970:	aa0003f4 	mov	x20, x0
    a974:	94000000 	bl	0 <_mcount>
    a978:	7100027f 	cmp	w19, #0x0
    a97c:	52800308 	mov	w8, #0x18                  	// #24
    a980:	52800109 	mov	w9, #0x8                   	// #8
    a984:	5280038a 	mov	w10, #0x1c                  	// #28
    a988:	5280018b 	mov	w11, #0xc                   	// #12
    a98c:	9a880128 	csel	x8, x9, x8, eq
    a990:	9a8a0169 	csel	x9, x11, x10, eq
    a994:	b8686a88 	ldr	w8, [x20,x8]
    a998:	b8696a89 	ldr	w9, [x20,x9]
    a99c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a9a0:	5299400a 	mov	w10, #0xca00                	// #51712
    a9a4:	72a7734a 	movk	w10, #0x3b9a, lsl #16
    a9a8:	9b0a2120 	madd	x0, x9, x10, x8
    a9ac:	a8c24ff4 	ldp	x20, x19, [sp],#32
    a9b0:	d65f03c0 	ret

000000000000a9b4 <enh_desc_get_rx_timestamp_status>:
    a9b4:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    a9b8:	a9017bfd 	stp	x29, x30, [sp,#16]
    a9bc:	910043fd 	add	x29, sp, #0x10
    a9c0:	2a0103f4 	mov	w20, w1
    a9c4:	aa0003f3 	mov	x19, x0
    a9c8:	94000000 	bl	0 <_mcount>
    a9cc:	34000094 	cbz	w20, a9dc <enh_desc_get_rx_timestamp_status+0x28>
    a9d0:	b9400268 	ldr	w8, [x19]
    a9d4:	53071d00 	ubfx	w0, w8, #7, #1
    a9d8:	14000008 	b	a9f8 <enh_desc_get_rx_timestamp_status+0x44>
    a9dc:	b9400a68 	ldr	w8, [x19,#8]
    a9e0:	3100051f 	cmn	w8, #0x1
    a9e4:	54000081 	b.ne	a9f4 <enh_desc_get_rx_timestamp_status+0x40>
    a9e8:	b9400e68 	ldr	w8, [x19,#12]
    a9ec:	3100051f 	cmn	w8, #0x1
    a9f0:	540000a0 	b.eq	aa04 <enh_desc_get_rx_timestamp_status+0x50>
    a9f4:	52800020 	mov	w0, #0x1                   	// #1
    a9f8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    a9fc:	a8c24ff4 	ldp	x20, x19, [sp],#32
    aa00:	d65f03c0 	ret
    aa04:	2a1f03e0 	mov	w0, wzr
    aa08:	17fffffc 	b	a9f8 <enh_desc_get_rx_timestamp_status+0x44>

000000000000aa0c <enh_desc_display_ring>:
    aa0c:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    aa10:	a90157f6 	stp	x22, x21, [sp,#16]
    aa14:	a9024ff4 	stp	x20, x19, [sp,#32]
    aa18:	a9037bfd 	stp	x29, x30, [sp,#48]
    aa1c:	9100c3fd 	add	x29, sp, #0x30
    aa20:	2a0203f5 	mov	w21, w2
    aa24:	2a0103f3 	mov	w19, w1
    aa28:	aa0003f4 	mov	x20, x0
    aa2c:	94000000 	bl	0 <_mcount>
    aa30:	d2800008 	mov	x8, #0x0                   	// #0
    aa34:	d2800009 	mov	x9, #0x0                   	// #0
    aa38:	f2a00008 	movk	x8, #0x0, lsl #16
    aa3c:	f2a00009 	movk	x9, #0x0, lsl #16
    aa40:	d2800000 	mov	x0, #0x0                   	// #0
    aa44:	f2c00008 	movk	x8, #0x0, lsl #32
    aa48:	f2c00009 	movk	x9, #0x0, lsl #32
    aa4c:	f2a00000 	movk	x0, #0x0, lsl #16
    aa50:	f2e00008 	movk	x8, #0x0, lsl #48
    aa54:	f2e00009 	movk	x9, #0x0, lsl #48
    aa58:	720002bf 	tst	w21, #0x1
    aa5c:	f2c00000 	movk	x0, #0x0, lsl #32
    aa60:	9a881121 	csel	x1, x9, x8, ne
    aa64:	f2e00000 	movk	x0, #0x0, lsl #48
    aa68:	94000000 	bl	0 <printk>
    aa6c:	34000433 	cbz	w19, aaf0 <enh_desc_display_ring+0xe4>
    aa70:	d2800017 	mov	x23, #0x0                   	// #0
    aa74:	d2800016 	mov	x22, #0x0                   	// #0
    aa78:	d2800018 	mov	x24, #0x0                   	// #0
    aa7c:	f2a00017 	movk	x23, #0x0, lsl #16
    aa80:	f2a00016 	movk	x22, #0x0, lsl #16
    aa84:	f2a00018 	movk	x24, #0x0, lsl #16
    aa88:	f2c00017 	movk	x23, #0x0, lsl #32
    aa8c:	f2c00016 	movk	x22, #0x0, lsl #32
    aa90:	f2c00018 	movk	x24, #0x0, lsl #32
    aa94:	2a1f03f5 	mov	w21, wzr
    aa98:	f2e00017 	movk	x23, #0x0, lsl #48
    aa9c:	f2e00016 	movk	x22, #0x0, lsl #48
    aaa0:	f2e00018 	movk	x24, #0x0, lsl #48
    aaa4:	f9400283 	ldr	x3, [x20]
    aaa8:	b73001d4 	tbnz	x20, #38, aae0 <enh_desc_display_ring+0xd4>
    aaac:	f94002e8 	ldr	x8, [x23]
    aab0:	cb080282 	sub	x2, x20, x8
    aab4:	29411a85 	ldp	w5, w6, [x20,#8]
    aab8:	d360fc64 	lsr	x4, x3, #32
    aabc:	aa1603e0 	mov	x0, x22
    aac0:	2a1503e1 	mov	w1, w21
    aac4:	94000000 	bl	0 <printk>
    aac8:	110006b5 	add	w21, w21, #0x1
    aacc:	6b15027f 	cmp	w19, w21
    aad0:	91008294 	add	x20, x20, #0x20
    aad4:	540000e0 	b.eq	aaf0 <enh_desc_display_ring+0xe4>
    aad8:	f9400283 	ldr	x3, [x20]
    aadc:	b637fe94 	tbz	x20, #38, aaac <enh_desc_display_ring+0xa0>
    aae0:	f9400308 	ldr	x8, [x24]
    aae4:	92409689 	and	x9, x20, #0x3fffffffff
    aae8:	8b090102 	add	x2, x8, x9
    aaec:	17fffff2 	b	aab4 <enh_desc_display_ring+0xa8>
    aaf0:	d2800000 	mov	x0, #0x0                   	// #0
    aaf4:	f2a00000 	movk	x0, #0x0, lsl #16
    aaf8:	f2c00000 	movk	x0, #0x0, lsl #32
    aafc:	f2e00000 	movk	x0, #0x0, lsl #48
    ab00:	94000000 	bl	0 <printk>
    ab04:	a9437bfd 	ldp	x29, x30, [sp,#48]
    ab08:	a9424ff4 	ldp	x20, x19, [sp,#32]
    ab0c:	a94157f6 	ldp	x22, x21, [sp,#16]
    ab10:	a8c45ff8 	ldp	x24, x23, [sp],#64
    ab14:	d65f03c0 	ret

000000000000ab18 <ndesc_init_rx_desc>:
    ab18:	f81c0ff7 	str	x23, [sp,#-64]!
    ab1c:	a90157f6 	stp	x22, x21, [sp,#16]
    ab20:	a9024ff4 	stp	x20, x19, [sp,#32]
    ab24:	a9037bfd 	stp	x29, x30, [sp,#48]
    ab28:	9100c3fd 	add	x29, sp, #0x30
    ab2c:	2a0403f6 	mov	w22, w4
    ab30:	2a0303f5 	mov	w21, w3
    ab34:	2a0203f7 	mov	w23, w2
    ab38:	2a0103f4 	mov	w20, w1
    ab3c:	aa0003f3 	mov	x19, x0
    ab40:	94000000 	bl	0 <_mcount>
    ab44:	29402a69 	ldp	w9, w10, [x19]
    ab48:	711ffedf 	cmp	w22, #0x7ff
    ab4c:	5280ffe8 	mov	w8, #0x7ff                 	// #2047
    ab50:	1a88b2c8 	csel	w8, w22, w8, lt
    ab54:	12002908 	and	w8, w8, #0x7ff
    ab58:	710006ff 	cmp	w23, #0x1
    ab5c:	32010129 	orr	w9, w9, #0x80000000
    ab60:	2a080148 	orr	w8, w10, w8
    ab64:	29002269 	stp	w9, w8, [x19]
    ab68:	54000061 	b.ne	ab74 <ndesc_init_rx_desc+0x5c>
    ab6c:	32080108 	orr	w8, w8, #0x1000000
    ab70:	1400000d 	b	aba4 <ndesc_init_rx_desc+0x8c>
    ab74:	712002df 	cmp	w22, #0x800
    ab78:	5400012b 	b.lt	ab9c <ndesc_init_rx_desc+0x84>
    ab7c:	713ffadf 	cmp	w22, #0xffe
    ab80:	5281ffc9 	mov	w9, #0xffe                 	// #4094
    ab84:	1a89b2c9 	csel	w9, w22, w9, lt
    ab88:	53155129 	lsl	w9, w9, #11
    ab8c:	11200129 	add	w9, w9, #0x800
    ab90:	12152929 	and	w9, w9, #0x3ff800
    ab94:	2a090108 	orr	w8, w8, w9
    ab98:	b9000668 	str	w8, [x19,#4]
    ab9c:	34000075 	cbz	w21, aba8 <ndesc_init_rx_desc+0x90>
    aba0:	32070108 	orr	w8, w8, #0x2000000
    aba4:	b9000668 	str	w8, [x19,#4]
    aba8:	34000074 	cbz	w20, abb4 <ndesc_init_rx_desc+0x9c>
    abac:	32010108 	orr	w8, w8, #0x80000000
    abb0:	b9000668 	str	w8, [x19,#4]
    abb4:	a9437bfd 	ldp	x29, x30, [sp,#48]
    abb8:	a9424ff4 	ldp	x20, x19, [sp,#32]
    abbc:	a94157f6 	ldp	x22, x21, [sp,#16]
    abc0:	f84407f7 	ldr	x23, [sp],#64
    abc4:	d65f03c0 	ret

000000000000abc8 <ndesc_init_tx_desc>:
    abc8:	f81d0ff5 	str	x21, [sp,#-48]!
    abcc:	a9014ff4 	stp	x20, x19, [sp,#16]
    abd0:	a9027bfd 	stp	x29, x30, [sp,#32]
    abd4:	910083fd 	add	x29, sp, #0x20
    abd8:	2a0203f4 	mov	w20, w2
    abdc:	2a0103f5 	mov	w21, w1
    abe0:	aa0003f3 	mov	x19, x0
    abe4:	94000000 	bl	0 <_mcount>
    abe8:	b9400268 	ldr	w8, [x19]
    abec:	710006bf 	cmp	w21, #0x1
    abf0:	12007908 	and	w8, w8, #0x7fffffff
    abf4:	b9000268 	str	w8, [x19]
    abf8:	54000081 	b.ne	ac08 <ndesc_init_tx_desc+0x40>
    abfc:	b9400668 	ldr	w8, [x19,#4]
    ac00:	32080108 	orr	w8, w8, #0x1000000
    ac04:	14000006 	b	ac1c <ndesc_init_tx_desc+0x54>
    ac08:	b9400668 	ldr	w8, [x19,#4]
    ac0c:	7100029f 	cmp	w20, #0x0
    ac10:	12067909 	and	w9, w8, #0xfdffffff
    ac14:	32070108 	orr	w8, w8, #0x2000000
    ac18:	1a880128 	csel	w8, w9, w8, eq
    ac1c:	b9000668 	str	w8, [x19,#4]
    ac20:	a9427bfd 	ldp	x29, x30, [sp,#32]
    ac24:	a9414ff4 	ldp	x20, x19, [sp,#16]
    ac28:	f84307f5 	ldr	x21, [sp],#48
    ac2c:	d65f03c0 	ret

000000000000ac30 <ndesc_prepare_tx_desc>:
    ac30:	f81b0ff9 	str	x25, [sp,#-80]!
    ac34:	a9015ff8 	stp	x24, x23, [sp,#16]
    ac38:	a90257f6 	stp	x22, x21, [sp,#32]
    ac3c:	a9034ff4 	stp	x20, x19, [sp,#48]
    ac40:	a9047bfd 	stp	x29, x30, [sp,#64]
    ac44:	910103fd 	add	x29, sp, #0x40
    ac48:	2a0603f6 	mov	w22, w6
    ac4c:	2a0503f4 	mov	w20, w5
    ac50:	2a0403f7 	mov	w23, w4
    ac54:	2a0303f8 	mov	w24, w3
    ac58:	2a0203f5 	mov	w21, w2
    ac5c:	2a0103f9 	mov	w25, w1
    ac60:	aa0003f3 	mov	x19, x0
    ac64:	94000000 	bl	0 <_mcount>
    ac68:	b9400668 	ldr	w8, [x19,#4]
    ac6c:	7100033f 	cmp	w25, #0x0
    ac70:	32030109 	orr	w9, w8, #0x20000000
    ac74:	12027908 	and	w8, w8, #0xdfffffff
    ac78:	1a890108 	csel	w8, w8, w9, eq
    ac7c:	7200031f 	tst	w24, #0x1
    ac80:	32050509 	orr	w9, w8, #0x18000000
    ac84:	12037508 	and	w8, w8, #0xe7ffffff
    ac88:	1a881128 	csel	w8, w9, w8, ne
    ac8c:	720002df 	tst	w22, #0x1
    ac90:	32020109 	orr	w9, w8, #0x40000000
    ac94:	1a881128 	csel	w8, w9, w8, ne
    ac98:	710006ff 	cmp	w23, #0x1
    ac9c:	b9000668 	str	w8, [x19,#4]
    aca0:	54000060 	b.eq	acac <ndesc_prepare_tx_desc+0x7c>
    aca4:	712006bf 	cmp	w21, #0x801
    aca8:	540001ca 	b.ge	ace0 <ndesc_prepare_tx_desc+0xb0>
    acac:	12002aa9 	and	w9, w21, #0x7ff
    acb0:	2a090108 	orr	w8, w8, w9
    acb4:	b9000668 	str	w8, [x19,#4]
    acb8:	36000094 	tbz	w20, #0, acc8 <ndesc_prepare_tx_desc+0x98>
    acbc:	b9400268 	ldr	w8, [x19]
    acc0:	32010108 	orr	w8, w8, #0x80000000
    acc4:	b9000268 	str	w8, [x19]
    acc8:	a9447bfd 	ldp	x29, x30, [sp,#64]
    accc:	a9434ff4 	ldp	x20, x19, [sp,#48]
    acd0:	a94257f6 	ldp	x22, x21, [sp,#32]
    acd4:	a9415ff8 	ldp	x24, x23, [sp,#16]
    acd8:	f84507f9 	ldr	x25, [sp],#80
    acdc:	d65f03c0 	ret
    ace0:	531552a9 	lsl	w9, w21, #11
    ace4:	11200129 	add	w9, w9, #0x800
    ace8:	12152929 	and	w9, w9, #0x3ff800
    acec:	2a080128 	orr	w8, w9, w8
    acf0:	32002908 	orr	w8, w8, #0x7ff
    acf4:	b9000668 	str	w8, [x19,#4]
    acf8:	3707fe34 	tbnz	w20, #0, acbc <ndesc_prepare_tx_desc+0x8c>
    acfc:	17fffff3 	b	acc8 <ndesc_prepare_tx_desc+0x98>

000000000000ad00 <ndesc_set_tx_owner>:
    ad00:	f81e0ff3 	str	x19, [sp,#-32]!
    ad04:	a9017bfd 	stp	x29, x30, [sp,#16]
    ad08:	910043fd 	add	x29, sp, #0x10
    ad0c:	aa0003f3 	mov	x19, x0
    ad10:	94000000 	bl	0 <_mcount>
    ad14:	b9400268 	ldr	w8, [x19]
    ad18:	32010108 	orr	w8, w8, #0x80000000
    ad1c:	b9000268 	str	w8, [x19]
    ad20:	a9417bfd 	ldp	x29, x30, [sp,#16]
    ad24:	f84207f3 	ldr	x19, [sp],#32
    ad28:	d65f03c0 	ret

000000000000ad2c <ndesc_get_tx_owner>:
    ad2c:	f81e0ff3 	str	x19, [sp,#-32]!
    ad30:	a9017bfd 	stp	x29, x30, [sp,#16]
    ad34:	910043fd 	add	x29, sp, #0x10
    ad38:	aa0003f3 	mov	x19, x0
    ad3c:	94000000 	bl	0 <_mcount>
    ad40:	b9400268 	ldr	w8, [x19]
    ad44:	a9417bfd 	ldp	x29, x30, [sp,#16]
    ad48:	531f7d00 	lsr	w0, w8, #31
    ad4c:	f84207f3 	ldr	x19, [sp],#32
    ad50:	d65f03c0 	ret

000000000000ad54 <ndesc_release_tx_desc>:
    ad54:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    ad58:	a9017bfd 	stp	x29, x30, [sp,#16]
    ad5c:	910043fd 	add	x29, sp, #0x10
    ad60:	2a0103f3 	mov	w19, w1
    ad64:	aa0003f4 	mov	x20, x0
    ad68:	94000000 	bl	0 <_mcount>
    ad6c:	b9400688 	ldr	w8, [x20,#4]
    ad70:	7100067f 	cmp	w19, #0x1
    ad74:	52a02009 	mov	w9, #0x1000000             	// #16777216
    ad78:	f900029f 	str	xzr, [x20]
    ad7c:	12070108 	and	w8, w8, #0x2000000
    ad80:	1a880128 	csel	w8, w9, w8, eq
    ad84:	b9000688 	str	w8, [x20,#4]
    ad88:	a9417bfd 	ldp	x29, x30, [sp,#16]
    ad8c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    ad90:	d65f03c0 	ret

000000000000ad94 <ndesc_set_tx_ic>:
    ad94:	f81e0ff3 	str	x19, [sp,#-32]!
    ad98:	a9017bfd 	stp	x29, x30, [sp,#16]
    ad9c:	910043fd 	add	x29, sp, #0x10
    ada0:	aa0003f3 	mov	x19, x0
    ada4:	94000000 	bl	0 <_mcount>
    ada8:	b9400668 	ldr	w8, [x19,#4]
    adac:	32010108 	orr	w8, w8, #0x80000000
    adb0:	b9000668 	str	w8, [x19,#4]
    adb4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    adb8:	f84207f3 	ldr	x19, [sp],#32
    adbc:	d65f03c0 	ret

000000000000adc0 <ndesc_get_tx_ls>:
    adc0:	f81e0ff3 	str	x19, [sp,#-32]!
    adc4:	a9017bfd 	stp	x29, x30, [sp,#16]
    adc8:	910043fd 	add	x29, sp, #0x10
    adcc:	aa0003f3 	mov	x19, x0
    add0:	94000000 	bl	0 <_mcount>
    add4:	b9400668 	ldr	w8, [x19,#4]
    add8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    addc:	531e7900 	ubfx	w0, w8, #30, #1
    ade0:	f84207f3 	ldr	x19, [sp],#32
    ade4:	d65f03c0 	ret

000000000000ade8 <ndesc_get_tx_status>:
    ade8:	f81d0ff5 	str	x21, [sp,#-48]!
    adec:	a9014ff4 	stp	x20, x19, [sp,#16]
    adf0:	a9027bfd 	stp	x29, x30, [sp,#32]
    adf4:	910083fd 	add	x29, sp, #0x20
    adf8:	aa0203f5 	mov	x21, x2
    adfc:	aa0103f3 	mov	x19, x1
    ae00:	aa0003f4 	mov	x20, x0
    ae04:	94000000 	bl	0 <_mcount>
    ae08:	b94002a8 	ldr	w8, [x21]
    ae0c:	37f80108 	tbnz	w8, #31, ae2c <ndesc_get_tx_status+0x44>
    ae10:	39401ea9 	ldrb	w9, [x21,#7]
    ae14:	37300109 	tbnz	w9, #6, ae34 <ndesc_get_tx_status+0x4c>
    ae18:	52800020 	mov	w0, #0x1                   	// #1
    ae1c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    ae20:	a9414ff4 	ldp	x20, x19, [sp,#16]
    ae24:	f84307f5 	ldr	x21, [sp],#48
    ae28:	d65f03c0 	ret
    ae2c:	52800080 	mov	w0, #0x4                   	// #4
    ae30:	17fffffb 	b	ae1c <ndesc_get_tx_status+0x34>
    ae34:	37780168 	tbnz	w8, #15, ae60 <ndesc_get_tx_status+0x78>
    ae38:	2a1f03e0 	mov	w0, wzr
    ae3c:	36380088 	tbz	w8, #7, ae4c <ndesc_get_tx_status+0x64>
    ae40:	f9401669 	ldr	x9, [x19,#40]
    ae44:	91000529 	add	x9, x9, #0x1
    ae48:	f9001669 	str	x9, [x19,#40]
    ae4c:	3607fe88 	tbz	w8, #0, ae1c <ndesc_get_tx_status+0x34>
    ae50:	f9401268 	ldr	x8, [x19,#32]
    ae54:	91000508 	add	x8, x8, #0x1
    ae58:	f9001268 	str	x8, [x19,#32]
    ae5c:	17fffff0 	b	ae1c <ndesc_get_tx_status+0x34>
    ae60:	37080148 	tbnz	w8, #1, ae88 <ndesc_get_tx_status+0xa0>
    ae64:	37500208 	tbnz	w8, #10, aea4 <ndesc_get_tx_status+0xbc>
    ae68:	375802c8 	tbnz	w8, #11, aec0 <ndesc_get_tx_status+0xd8>
    ae6c:	37480388 	tbnz	w8, #9, aedc <ndesc_get_tx_status+0xf4>
    ae70:	52802089 	mov	w9, #0x104                 	// #260
    ae74:	8a090109 	and	x9, x8, x9
    ae78:	b5000329 	cbnz	x9, aedc <ndesc_get_tx_status+0xf4>
    ae7c:	52800040 	mov	w0, #0x2                   	// #2
    ae80:	373ffe08 	tbnz	w8, #7, ae40 <ndesc_get_tx_status+0x58>
    ae84:	17fffff2 	b	ae4c <ndesc_get_tx_status+0x64>
    ae88:	f9400269 	ldr	x9, [x19]
    ae8c:	91000529 	add	x9, x9, #0x1
    ae90:	f9000269 	str	x9, [x19]
    ae94:	f9404a89 	ldr	x9, [x20,#144]
    ae98:	91000529 	add	x9, x9, #0x1
    ae9c:	f9004a89 	str	x9, [x20,#144]
    aea0:	3657fe48 	tbz	w8, #10, ae68 <ndesc_get_tx_status+0x80>
    aea4:	f9400669 	ldr	x9, [x19,#8]
    aea8:	91000529 	add	x9, x9, #0x1
    aeac:	f9000669 	str	x9, [x19,#8]
    aeb0:	f9404689 	ldr	x9, [x20,#136]
    aeb4:	91000529 	add	x9, x9, #0x1
    aeb8:	f9004689 	str	x9, [x20,#136]
    aebc:	365ffd88 	tbz	w8, #11, ae6c <ndesc_get_tx_status+0x84>
    aec0:	f9400a69 	ldr	x9, [x19,#16]
    aec4:	91000529 	add	x9, x9, #0x1
    aec8:	f9000a69 	str	x9, [x19,#16]
    aecc:	f9404689 	ldr	x9, [x20,#136]
    aed0:	91000529 	add	x9, x9, #0x1
    aed4:	f9004689 	str	x9, [x20,#136]
    aed8:	364ffcc8 	tbz	w8, #9, ae70 <ndesc_get_tx_status+0x88>
    aedc:	f9402689 	ldr	x9, [x20,#72]
    aee0:	d343190a 	ubfx	x10, x8, #3, #4
    aee4:	8b0a0129 	add	x9, x9, x10
    aee8:	f9002689 	str	x9, [x20,#72]
    aeec:	52800040 	mov	w0, #0x2                   	// #2
    aef0:	373ffa88 	tbnz	w8, #7, ae40 <ndesc_get_tx_status+0x58>
    aef4:	17ffffd6 	b	ae4c <ndesc_get_tx_status+0x64>

000000000000aef8 <ndesc_get_tx_len>:
    aef8:	f81e0ff3 	str	x19, [sp,#-32]!
    aefc:	a9017bfd 	stp	x29, x30, [sp,#16]
    af00:	910043fd 	add	x29, sp, #0x10
    af04:	aa0003f3 	mov	x19, x0
    af08:	94000000 	bl	0 <_mcount>
    af0c:	b9400668 	ldr	w8, [x19,#4]
    af10:	a9417bfd 	ldp	x29, x30, [sp,#16]
    af14:	12002900 	and	w0, w8, #0x7ff
    af18:	f84207f3 	ldr	x19, [sp],#32
    af1c:	d65f03c0 	ret

000000000000af20 <ndesc_set_rx_owner>:
    af20:	f81e0ff3 	str	x19, [sp,#-32]!
    af24:	a9017bfd 	stp	x29, x30, [sp,#16]
    af28:	910043fd 	add	x29, sp, #0x10
    af2c:	aa0003f3 	mov	x19, x0
    af30:	94000000 	bl	0 <_mcount>
    af34:	b9400268 	ldr	w8, [x19]
    af38:	32010108 	orr	w8, w8, #0x80000000
    af3c:	b9000268 	str	w8, [x19]
    af40:	a9417bfd 	ldp	x29, x30, [sp,#16]
    af44:	f84207f3 	ldr	x19, [sp],#32
    af48:	d65f03c0 	ret

000000000000af4c <ndesc_get_rx_frame_len>:
    af4c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    af50:	7100043f 	cmp	w1, #0x1
    af54:	a9017bfd 	stp	x29, x30, [sp,#16]
    af58:	910043fd 	add	x29, sp, #0x10
    af5c:	aa0003f3 	mov	x19, x0
    af60:	1a9f17f4 	cset	w20, eq
    af64:	94000000 	bl	0 <_mcount>
    af68:	79400668 	ldrh	w8, [x19,#2]
    af6c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    af70:	12003508 	and	w8, w8, #0x3fff
    af74:	4b140500 	sub	w0, w8, w20, lsl #1
    af78:	a8c24ff4 	ldp	x20, x19, [sp],#32
    af7c:	d65f03c0 	ret

000000000000af80 <ndesc_get_rx_status>:
    af80:	f81d0ff5 	str	x21, [sp,#-48]!
    af84:	a9014ff4 	stp	x20, x19, [sp,#16]
    af88:	a9027bfd 	stp	x29, x30, [sp,#32]
    af8c:	910083fd 	add	x29, sp, #0x20
    af90:	aa0203f5 	mov	x21, x2
    af94:	aa0103f3 	mov	x19, x1
    af98:	aa0003f4 	mov	x20, x0
    af9c:	94000000 	bl	0 <_mcount>
    afa0:	b94002a8 	ldr	w8, [x21]
    afa4:	37f801e8 	tbnz	w8, #31, afe0 <ndesc_get_rx_status+0x60>
    afa8:	36400208 	tbz	w8, #8, afe8 <ndesc_get_rx_status+0x68>
    afac:	37780288 	tbnz	w8, #15, affc <ndesc_get_rx_status+0x7c>
    afb0:	2a1f03e0 	mov	w0, wzr
    afb4:	37100348 	tbnz	w8, #2, b01c <ndesc_get_rx_status+0x9c>
    afb8:	376003a8 	tbnz	w8, #12, b02c <ndesc_get_rx_status+0xac>
    afbc:	37180428 	tbnz	w8, #3, b040 <ndesc_get_rx_status+0xc0>
    afc0:	36500088 	tbz	w8, #10, afd0 <ndesc_get_rx_status+0x50>
    afc4:	f9400e68 	ldr	x8, [x19,#24]
    afc8:	91000508 	add	x8, x8, #0x1
    afcc:	f9000e68 	str	x8, [x19,#24]
    afd0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    afd4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    afd8:	f84307f5 	ldr	x21, [sp],#48
    afdc:	d65f03c0 	ret
    afe0:	52800100 	mov	w0, #0x8                   	// #8
    afe4:	17fffffb 	b	afd0 <ndesc_get_rx_status+0x50>
    afe8:	f9402a88 	ldr	x8, [x20,#80]
    afec:	52800020 	mov	w0, #0x1                   	// #1
    aff0:	91000508 	add	x8, x8, #0x1
    aff4:	f9002a88 	str	x8, [x20,#80]
    aff8:	17fffff6 	b	afd0 <ndesc_get_rx_status+0x50>
    affc:	377002e8 	tbnz	w8, #14, b058 <ndesc_get_rx_status+0xd8>
    b000:	37680348 	tbnz	w8, #13, b068 <ndesc_get_rx_status+0xe8>
    b004:	375803a8 	tbnz	w8, #11, b078 <ndesc_get_rx_status+0xf8>
    b008:	37380408 	tbnz	w8, #7, b088 <ndesc_get_rx_status+0x108>
    b00c:	37300468 	tbnz	w8, #6, b098 <ndesc_get_rx_status+0x118>
    b010:	37080528 	tbnz	w8, #1, b0b4 <ndesc_get_rx_status+0x134>
    b014:	52800020 	mov	w0, #0x1                   	// #1
    b018:	3617fd08 	tbz	w8, #2, afb8 <ndesc_get_rx_status+0x38>
    b01c:	f9404269 	ldr	x9, [x19,#128]
    b020:	91000529 	add	x9, x9, #0x1
    b024:	f9004269 	str	x9, [x19,#128]
    b028:	3667fca8 	tbz	w8, #12, afbc <ndesc_get_rx_status+0x3c>
    b02c:	f9404669 	ldr	x9, [x19,#136]
    b030:	52800020 	mov	w0, #0x1                   	// #1
    b034:	91000529 	add	x9, x9, #0x1
    b038:	f9004669 	str	x9, [x19,#136]
    b03c:	361ffc28 	tbz	w8, #3, afc0 <ndesc_get_rx_status+0x40>
    b040:	f9404a69 	ldr	x9, [x19,#144]
    b044:	52800020 	mov	w0, #0x1                   	// #1
    b048:	91000529 	add	x9, x9, #0x1
    b04c:	f9004a69 	str	x9, [x19,#144]
    b050:	3757fba8 	tbnz	w8, #10, afc4 <ndesc_get_rx_status+0x44>
    b054:	17ffffdf 	b	afd0 <ndesc_get_rx_status+0x50>
    b058:	f9402a69 	ldr	x9, [x19,#80]
    b05c:	91000529 	add	x9, x9, #0x1
    b060:	f9002a69 	str	x9, [x19,#80]
    b064:	366ffd08 	tbz	w8, #13, b004 <ndesc_get_rx_status+0x84>
    b068:	f9402e69 	ldr	x9, [x19,#88]
    b06c:	91000529 	add	x9, x9, #0x1
    b070:	f9002e69 	str	x9, [x19,#88]
    b074:	365ffca8 	tbz	w8, #11, b008 <ndesc_get_rx_status+0x88>
    b078:	f9403269 	ldr	x9, [x19,#96]
    b07c:	91000529 	add	x9, x9, #0x1
    b080:	f9003269 	str	x9, [x19,#96]
    b084:	363ffc48 	tbz	w8, #7, b00c <ndesc_get_rx_status+0x8c>
    b088:	f9403669 	ldr	x9, [x19,#104]
    b08c:	91000529 	add	x9, x9, #0x1
    b090:	f9003669 	str	x9, [x19,#104]
    b094:	3637fbe8 	tbz	w8, #6, b010 <ndesc_get_rx_status+0x90>
    b098:	f9403a69 	ldr	x9, [x19,#112]
    b09c:	91000529 	add	x9, x9, #0x1
    b0a0:	f9003a69 	str	x9, [x19,#112]
    b0a4:	f9402689 	ldr	x9, [x20,#72]
    b0a8:	91000529 	add	x9, x9, #0x1
    b0ac:	f9002689 	str	x9, [x20,#72]
    b0b0:	360ffb28 	tbz	w8, #1, b014 <ndesc_get_rx_status+0x94>
    b0b4:	f9403e69 	ldr	x9, [x19,#120]
    b0b8:	91000529 	add	x9, x9, #0x1
    b0bc:	f9003e69 	str	x9, [x19,#120]
    b0c0:	f9403289 	ldr	x9, [x20,#96]
    b0c4:	91000529 	add	x9, x9, #0x1
    b0c8:	f9003289 	str	x9, [x20,#96]
    b0cc:	52800020 	mov	w0, #0x1                   	// #1
    b0d0:	3617f748 	tbz	w8, #2, afb8 <ndesc_get_rx_status+0x38>
    b0d4:	17ffffd2 	b	b01c <ndesc_get_rx_status+0x9c>

000000000000b0d8 <ndesc_enable_tx_timestamp>:
    b0d8:	f81e0ff3 	str	x19, [sp,#-32]!
    b0dc:	a9017bfd 	stp	x29, x30, [sp,#16]
    b0e0:	910043fd 	add	x29, sp, #0x10
    b0e4:	aa0003f3 	mov	x19, x0
    b0e8:	94000000 	bl	0 <_mcount>
    b0ec:	b9400668 	ldr	w8, [x19,#4]
    b0f0:	320a0108 	orr	w8, w8, #0x400000
    b0f4:	b9000668 	str	w8, [x19,#4]
    b0f8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    b0fc:	f84207f3 	ldr	x19, [sp],#32
    b100:	d65f03c0 	ret

000000000000b104 <ndesc_get_tx_timestamp_status>:
    b104:	f81e0ff3 	str	x19, [sp,#-32]!
    b108:	a9017bfd 	stp	x29, x30, [sp,#16]
    b10c:	910043fd 	add	x29, sp, #0x10
    b110:	aa0003f3 	mov	x19, x0
    b114:	94000000 	bl	0 <_mcount>
    b118:	b9400268 	ldr	w8, [x19]
    b11c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    b120:	53114500 	ubfx	w0, w8, #17, #1
    b124:	f84207f3 	ldr	x19, [sp],#32
    b128:	d65f03c0 	ret

000000000000b12c <ndesc_get_timestamp>:
    b12c:	f81e0ff3 	str	x19, [sp,#-32]!
    b130:	a9017bfd 	stp	x29, x30, [sp,#16]
    b134:	910043fd 	add	x29, sp, #0x10
    b138:	aa0003f3 	mov	x19, x0
    b13c:	94000000 	bl	0 <_mcount>
    b140:	29412668 	ldp	w8, w9, [x19,#8]
    b144:	a9417bfd 	ldp	x29, x30, [sp,#16]
    b148:	5299400a 	mov	w10, #0xca00                	// #51712
    b14c:	72a7734a 	movk	w10, #0x3b9a, lsl #16
    b150:	9b0a2120 	madd	x0, x9, x10, x8
    b154:	f84207f3 	ldr	x19, [sp],#32
    b158:	d65f03c0 	ret

000000000000b15c <ndesc_get_rx_timestamp_status>:
    b15c:	f81e0ff3 	str	x19, [sp,#-32]!
    b160:	a9017bfd 	stp	x29, x30, [sp,#16]
    b164:	910043fd 	add	x29, sp, #0x10
    b168:	aa0003f3 	mov	x19, x0
    b16c:	94000000 	bl	0 <_mcount>
    b170:	b9400a68 	ldr	w8, [x19,#8]
    b174:	3100051f 	cmn	w8, #0x1
    b178:	54000081 	b.ne	b188 <ndesc_get_rx_timestamp_status+0x2c>
    b17c:	b9400e68 	ldr	w8, [x19,#12]
    b180:	3100051f 	cmn	w8, #0x1
    b184:	540000a0 	b.eq	b198 <ndesc_get_rx_timestamp_status+0x3c>
    b188:	52800020 	mov	w0, #0x1                   	// #1
    b18c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    b190:	f84207f3 	ldr	x19, [sp],#32
    b194:	d65f03c0 	ret
    b198:	2a1f03e0 	mov	w0, wzr
    b19c:	17fffffc 	b	b18c <ndesc_get_rx_timestamp_status+0x30>

000000000000b1a0 <ndesc_display_ring>:
    b1a0:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    b1a4:	a90157f6 	stp	x22, x21, [sp,#16]
    b1a8:	a9024ff4 	stp	x20, x19, [sp,#32]
    b1ac:	a9037bfd 	stp	x29, x30, [sp,#48]
    b1b0:	9100c3fd 	add	x29, sp, #0x30
    b1b4:	2a0203f5 	mov	w21, w2
    b1b8:	2a0103f3 	mov	w19, w1
    b1bc:	aa0003f4 	mov	x20, x0
    b1c0:	94000000 	bl	0 <_mcount>
    b1c4:	d2800008 	mov	x8, #0x0                   	// #0
    b1c8:	d2800009 	mov	x9, #0x0                   	// #0
    b1cc:	f2a00008 	movk	x8, #0x0, lsl #16
    b1d0:	f2a00009 	movk	x9, #0x0, lsl #16
    b1d4:	d2800000 	mov	x0, #0x0                   	// #0
    b1d8:	f2c00008 	movk	x8, #0x0, lsl #32
    b1dc:	f2c00009 	movk	x9, #0x0, lsl #32
    b1e0:	f2a00000 	movk	x0, #0x0, lsl #16
    b1e4:	f2e00008 	movk	x8, #0x0, lsl #48
    b1e8:	f2e00009 	movk	x9, #0x0, lsl #48
    b1ec:	720002bf 	tst	w21, #0x1
    b1f0:	f2c00000 	movk	x0, #0x0, lsl #32
    b1f4:	9a881121 	csel	x1, x9, x8, ne
    b1f8:	f2e00000 	movk	x0, #0x0, lsl #48
    b1fc:	94000000 	bl	0 <printk>
    b200:	34000433 	cbz	w19, b284 <ndesc_display_ring+0xe4>
    b204:	d2800017 	mov	x23, #0x0                   	// #0
    b208:	d2800016 	mov	x22, #0x0                   	// #0
    b20c:	d2800018 	mov	x24, #0x0                   	// #0
    b210:	f2a00017 	movk	x23, #0x0, lsl #16
    b214:	f2a00016 	movk	x22, #0x0, lsl #16
    b218:	f2a00018 	movk	x24, #0x0, lsl #16
    b21c:	f2c00017 	movk	x23, #0x0, lsl #32
    b220:	f2c00016 	movk	x22, #0x0, lsl #32
    b224:	f2c00018 	movk	x24, #0x0, lsl #32
    b228:	2a1f03f5 	mov	w21, wzr
    b22c:	f2e00017 	movk	x23, #0x0, lsl #48
    b230:	f2e00016 	movk	x22, #0x0, lsl #48
    b234:	f2e00018 	movk	x24, #0x0, lsl #48
    b238:	f9400283 	ldr	x3, [x20]
    b23c:	b73001d4 	tbnz	x20, #38, b274 <ndesc_display_ring+0xd4>
    b240:	f94002e8 	ldr	x8, [x23]
    b244:	cb080282 	sub	x2, x20, x8
    b248:	29411a85 	ldp	w5, w6, [x20,#8]
    b24c:	d360fc64 	lsr	x4, x3, #32
    b250:	aa1603e0 	mov	x0, x22
    b254:	2a1503e1 	mov	w1, w21
    b258:	94000000 	bl	0 <printk>
    b25c:	110006b5 	add	w21, w21, #0x1
    b260:	6b15027f 	cmp	w19, w21
    b264:	91004294 	add	x20, x20, #0x10
    b268:	540000e0 	b.eq	b284 <ndesc_display_ring+0xe4>
    b26c:	f9400283 	ldr	x3, [x20]
    b270:	b637fe94 	tbz	x20, #38, b240 <ndesc_display_ring+0xa0>
    b274:	f9400308 	ldr	x8, [x24]
    b278:	92409689 	and	x9, x20, #0x3fffffffff
    b27c:	8b090102 	add	x2, x8, x9
    b280:	17fffff2 	b	b248 <ndesc_display_ring+0xa8>
    b284:	d2800000 	mov	x0, #0x0                   	// #0
    b288:	f2a00000 	movk	x0, #0x0, lsl #16
    b28c:	f2c00000 	movk	x0, #0x0, lsl #32
    b290:	f2e00000 	movk	x0, #0x0, lsl #48
    b294:	94000000 	bl	0 <printk>
    b298:	a9437bfd 	ldp	x29, x30, [sp,#48]
    b29c:	a9424ff4 	ldp	x20, x19, [sp,#32]
    b2a0:	a94157f6 	ldp	x22, x21, [sp,#16]
    b2a4:	a8c45ff8 	ldp	x24, x23, [sp],#64
    b2a8:	d65f03c0 	ret

000000000000b2ac <dwmac_mmc_ctrl>:
    b2ac:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    b2b0:	a9017bfd 	stp	x29, x30, [sp,#16]
    b2b4:	910043fd 	add	x29, sp, #0x10
    b2b8:	2a0103f3 	mov	w19, w1
    b2bc:	aa0003f4 	mov	x20, x0
    b2c0:	94000000 	bl	0 <_mcount>
    b2c4:	b9400288 	ldr	w8, [x20]
    b2c8:	d5033d9f 	dsb	ld
    b2cc:	12001669 	and	w9, w19, #0x3f
    b2d0:	d5033e9f 	dsb	st
    b2d4:	2a090108 	orr	w8, w8, w9
    b2d8:	b9000288 	str	w8, [x20]
    b2dc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    b2e0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    b2e4:	d65f03c0 	ret

000000000000b2e8 <dwmac_mmc_intr_all_mask>:
    b2e8:	f81e0ff3 	str	x19, [sp,#-32]!
    b2ec:	a9017bfd 	stp	x29, x30, [sp,#16]
    b2f0:	910043fd 	add	x29, sp, #0x10
    b2f4:	aa0003f3 	mov	x19, x0
    b2f8:	94000000 	bl	0 <_mcount>
    b2fc:	91003268 	add	x8, x19, #0xc
    b300:	d5033e9f 	dsb	st
    b304:	12800009 	mov	w9, #0xffffffff            	// #-1
    b308:	9100426a 	add	x10, x19, #0x10
    b30c:	b9000109 	str	w9, [x8]
    b310:	d5033e9f 	dsb	st
    b314:	b9000149 	str	w9, [x10]
    b318:	d5033e9f 	dsb	st
    b31c:	91040268 	add	x8, x19, #0x100
    b320:	b9000109 	str	w9, [x8]
    b324:	a9417bfd 	ldp	x29, x30, [sp,#16]
    b328:	f84207f3 	ldr	x19, [sp],#32
    b32c:	d65f03c0 	ret

000000000000b330 <dwmac_mmc_read>:
    b330:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    b334:	a9017bfd 	stp	x29, x30, [sp,#16]
    b338:	910043fd 	add	x29, sp, #0x10
    b33c:	aa0103f3 	mov	x19, x1
    b340:	aa0003f4 	mov	x20, x0
    b344:	94000000 	bl	0 <_mcount>
    b348:	91005288 	add	x8, x20, #0x14
    b34c:	b9400108 	ldr	w8, [x8]
    b350:	d5033d9f 	dsb	ld
    b354:	b9400269 	ldr	w9, [x19]
    b358:	9106128a 	add	x10, x20, #0x184
    b35c:	0b080128 	add	w8, w9, w8
    b360:	91006289 	add	x9, x20, #0x18
    b364:	b9000268 	str	w8, [x19]
    b368:	b9400128 	ldr	w8, [x9]
    b36c:	d5033d9f 	dsb	ld
    b370:	b9400669 	ldr	w9, [x19,#4]
    b374:	0b080128 	add	w8, w9, w8
    b378:	91007289 	add	x9, x20, #0x1c
    b37c:	b9000668 	str	w8, [x19,#4]
    b380:	b9400128 	ldr	w8, [x9]
    b384:	d5033d9f 	dsb	ld
    b388:	b9400a69 	ldr	w9, [x19,#8]
    b38c:	0b080128 	add	w8, w9, w8
    b390:	91008289 	add	x9, x20, #0x20
    b394:	b9000a68 	str	w8, [x19,#8]
    b398:	b9400128 	ldr	w8, [x9]
    b39c:	d5033d9f 	dsb	ld
    b3a0:	b9400e69 	ldr	w9, [x19,#12]
    b3a4:	0b080128 	add	w8, w9, w8
    b3a8:	91009289 	add	x9, x20, #0x24
    b3ac:	b9000e68 	str	w8, [x19,#12]
    b3b0:	b9400128 	ldr	w8, [x9]
    b3b4:	d5033d9f 	dsb	ld
    b3b8:	b9401269 	ldr	w9, [x19,#16]
    b3bc:	0b080128 	add	w8, w9, w8
    b3c0:	9100a289 	add	x9, x20, #0x28
    b3c4:	b9001268 	str	w8, [x19,#16]
    b3c8:	b9400128 	ldr	w8, [x9]
    b3cc:	d5033d9f 	dsb	ld
    b3d0:	b9401669 	ldr	w9, [x19,#20]
    b3d4:	0b080128 	add	w8, w9, w8
    b3d8:	9100b289 	add	x9, x20, #0x2c
    b3dc:	b9001668 	str	w8, [x19,#20]
    b3e0:	b9400128 	ldr	w8, [x9]
    b3e4:	d5033d9f 	dsb	ld
    b3e8:	b9401a69 	ldr	w9, [x19,#24]
    b3ec:	0b080128 	add	w8, w9, w8
    b3f0:	9100c289 	add	x9, x20, #0x30
    b3f4:	b9001a68 	str	w8, [x19,#24]
    b3f8:	b9400128 	ldr	w8, [x9]
    b3fc:	d5033d9f 	dsb	ld
    b400:	b9401e69 	ldr	w9, [x19,#28]
    b404:	0b080128 	add	w8, w9, w8
    b408:	9100d289 	add	x9, x20, #0x34
    b40c:	b9001e68 	str	w8, [x19,#28]
    b410:	b9400128 	ldr	w8, [x9]
    b414:	d5033d9f 	dsb	ld
    b418:	b9402269 	ldr	w9, [x19,#32]
    b41c:	0b080128 	add	w8, w9, w8
    b420:	9100e289 	add	x9, x20, #0x38
    b424:	b9002268 	str	w8, [x19,#32]
    b428:	b9400128 	ldr	w8, [x9]
    b42c:	d5033d9f 	dsb	ld
    b430:	b9402669 	ldr	w9, [x19,#36]
    b434:	0b080128 	add	w8, w9, w8
    b438:	9100f289 	add	x9, x20, #0x3c
    b43c:	b9002668 	str	w8, [x19,#36]
    b440:	b9400128 	ldr	w8, [x9]
    b444:	d5033d9f 	dsb	ld
    b448:	b9402a69 	ldr	w9, [x19,#40]
    b44c:	0b080128 	add	w8, w9, w8
    b450:	91010289 	add	x9, x20, #0x40
    b454:	b9002a68 	str	w8, [x19,#40]
    b458:	b9400128 	ldr	w8, [x9]
    b45c:	d5033d9f 	dsb	ld
    b460:	b9402e69 	ldr	w9, [x19,#44]
    b464:	0b080128 	add	w8, w9, w8
    b468:	91011289 	add	x9, x20, #0x44
    b46c:	b9002e68 	str	w8, [x19,#44]
    b470:	b9400128 	ldr	w8, [x9]
    b474:	d5033d9f 	dsb	ld
    b478:	b9403269 	ldr	w9, [x19,#48]
    b47c:	0b080128 	add	w8, w9, w8
    b480:	91012289 	add	x9, x20, #0x48
    b484:	b9003268 	str	w8, [x19,#48]
    b488:	b9400128 	ldr	w8, [x9]
    b48c:	d5033d9f 	dsb	ld
    b490:	b9403669 	ldr	w9, [x19,#52]
    b494:	0b080128 	add	w8, w9, w8
    b498:	91013289 	add	x9, x20, #0x4c
    b49c:	b9003668 	str	w8, [x19,#52]
    b4a0:	b9400128 	ldr	w8, [x9]
    b4a4:	d5033d9f 	dsb	ld
    b4a8:	b9403a69 	ldr	w9, [x19,#56]
    b4ac:	0b080128 	add	w8, w9, w8
    b4b0:	91014289 	add	x9, x20, #0x50
    b4b4:	b9003a68 	str	w8, [x19,#56]
    b4b8:	b9400128 	ldr	w8, [x9]
    b4bc:	d5033d9f 	dsb	ld
    b4c0:	b9403e69 	ldr	w9, [x19,#60]
    b4c4:	0b080128 	add	w8, w9, w8
    b4c8:	91015289 	add	x9, x20, #0x54
    b4cc:	b9003e68 	str	w8, [x19,#60]
    b4d0:	b9400128 	ldr	w8, [x9]
    b4d4:	d5033d9f 	dsb	ld
    b4d8:	b9404269 	ldr	w9, [x19,#64]
    b4dc:	0b080128 	add	w8, w9, w8
    b4e0:	91016289 	add	x9, x20, #0x58
    b4e4:	b9004268 	str	w8, [x19,#64]
    b4e8:	b9400128 	ldr	w8, [x9]
    b4ec:	d5033d9f 	dsb	ld
    b4f0:	b9404669 	ldr	w9, [x19,#68]
    b4f4:	0b080128 	add	w8, w9, w8
    b4f8:	91017289 	add	x9, x20, #0x5c
    b4fc:	b9004668 	str	w8, [x19,#68]
    b500:	b9400128 	ldr	w8, [x9]
    b504:	d5033d9f 	dsb	ld
    b508:	b9404a69 	ldr	w9, [x19,#72]
    b50c:	0b080128 	add	w8, w9, w8
    b510:	91018289 	add	x9, x20, #0x60
    b514:	b9004a68 	str	w8, [x19,#72]
    b518:	b9400128 	ldr	w8, [x9]
    b51c:	d5033d9f 	dsb	ld
    b520:	b9404e69 	ldr	w9, [x19,#76]
    b524:	0b080128 	add	w8, w9, w8
    b528:	91019289 	add	x9, x20, #0x64
    b52c:	b9004e68 	str	w8, [x19,#76]
    b530:	b9400128 	ldr	w8, [x9]
    b534:	d5033d9f 	dsb	ld
    b538:	b9405269 	ldr	w9, [x19,#80]
    b53c:	0b080128 	add	w8, w9, w8
    b540:	9101a289 	add	x9, x20, #0x68
    b544:	b9005268 	str	w8, [x19,#80]
    b548:	b9400128 	ldr	w8, [x9]
    b54c:	d5033d9f 	dsb	ld
    b550:	b9405669 	ldr	w9, [x19,#84]
    b554:	0b080128 	add	w8, w9, w8
    b558:	9101b289 	add	x9, x20, #0x6c
    b55c:	b9005668 	str	w8, [x19,#84]
    b560:	b9400128 	ldr	w8, [x9]
    b564:	d5033d9f 	dsb	ld
    b568:	b9405a69 	ldr	w9, [x19,#88]
    b56c:	0b080128 	add	w8, w9, w8
    b570:	9101c289 	add	x9, x20, #0x70
    b574:	b9005a68 	str	w8, [x19,#88]
    b578:	b9400128 	ldr	w8, [x9]
    b57c:	d5033d9f 	dsb	ld
    b580:	b9405e69 	ldr	w9, [x19,#92]
    b584:	0b080128 	add	w8, w9, w8
    b588:	9101d289 	add	x9, x20, #0x74
    b58c:	b9005e68 	str	w8, [x19,#92]
    b590:	b9400128 	ldr	w8, [x9]
    b594:	d5033d9f 	dsb	ld
    b598:	b9406269 	ldr	w9, [x19,#96]
    b59c:	0b080128 	add	w8, w9, w8
    b5a0:	91020289 	add	x9, x20, #0x80
    b5a4:	b9006268 	str	w8, [x19,#96]
    b5a8:	b9400128 	ldr	w8, [x9]
    b5ac:	d5033d9f 	dsb	ld
    b5b0:	b9406669 	ldr	w9, [x19,#100]
    b5b4:	0b080128 	add	w8, w9, w8
    b5b8:	91021289 	add	x9, x20, #0x84
    b5bc:	b9006668 	str	w8, [x19,#100]
    b5c0:	b9400128 	ldr	w8, [x9]
    b5c4:	d5033d9f 	dsb	ld
    b5c8:	b9406a69 	ldr	w9, [x19,#104]
    b5cc:	0b080128 	add	w8, w9, w8
    b5d0:	91022289 	add	x9, x20, #0x88
    b5d4:	b9006a68 	str	w8, [x19,#104]
    b5d8:	b9400128 	ldr	w8, [x9]
    b5dc:	d5033d9f 	dsb	ld
    b5e0:	b9406e69 	ldr	w9, [x19,#108]
    b5e4:	0b080128 	add	w8, w9, w8
    b5e8:	91023289 	add	x9, x20, #0x8c
    b5ec:	b9006e68 	str	w8, [x19,#108]
    b5f0:	b9400128 	ldr	w8, [x9]
    b5f4:	d5033d9f 	dsb	ld
    b5f8:	b9407269 	ldr	w9, [x19,#112]
    b5fc:	0b080128 	add	w8, w9, w8
    b600:	91024289 	add	x9, x20, #0x90
    b604:	b9007268 	str	w8, [x19,#112]
    b608:	b9400128 	ldr	w8, [x9]
    b60c:	d5033d9f 	dsb	ld
    b610:	b9407669 	ldr	w9, [x19,#116]
    b614:	0b080128 	add	w8, w9, w8
    b618:	91025289 	add	x9, x20, #0x94
    b61c:	b9007668 	str	w8, [x19,#116]
    b620:	b9400128 	ldr	w8, [x9]
    b624:	d5033d9f 	dsb	ld
    b628:	b9407a69 	ldr	w9, [x19,#120]
    b62c:	0b080128 	add	w8, w9, w8
    b630:	91026289 	add	x9, x20, #0x98
    b634:	b9007a68 	str	w8, [x19,#120]
    b638:	b9400128 	ldr	w8, [x9]
    b63c:	d5033d9f 	dsb	ld
    b640:	b9407e69 	ldr	w9, [x19,#124]
    b644:	0b080128 	add	w8, w9, w8
    b648:	91027289 	add	x9, x20, #0x9c
    b64c:	b9007e68 	str	w8, [x19,#124]
    b650:	b9400128 	ldr	w8, [x9]
    b654:	d5033d9f 	dsb	ld
    b658:	b9408269 	ldr	w9, [x19,#128]
    b65c:	0b080128 	add	w8, w9, w8
    b660:	91028289 	add	x9, x20, #0xa0
    b664:	b9008268 	str	w8, [x19,#128]
    b668:	b9400128 	ldr	w8, [x9]
    b66c:	d5033d9f 	dsb	ld
    b670:	b9408669 	ldr	w9, [x19,#132]
    b674:	0b080128 	add	w8, w9, w8
    b678:	91029289 	add	x9, x20, #0xa4
    b67c:	b9008668 	str	w8, [x19,#132]
    b680:	b9400128 	ldr	w8, [x9]
    b684:	d5033d9f 	dsb	ld
    b688:	b9408a69 	ldr	w9, [x19,#136]
    b68c:	0b080128 	add	w8, w9, w8
    b690:	9102a289 	add	x9, x20, #0xa8
    b694:	b9008a68 	str	w8, [x19,#136]
    b698:	b9400128 	ldr	w8, [x9]
    b69c:	d5033d9f 	dsb	ld
    b6a0:	b9408e69 	ldr	w9, [x19,#140]
    b6a4:	0b080128 	add	w8, w9, w8
    b6a8:	9102b289 	add	x9, x20, #0xac
    b6ac:	b9008e68 	str	w8, [x19,#140]
    b6b0:	b9400128 	ldr	w8, [x9]
    b6b4:	d5033d9f 	dsb	ld
    b6b8:	b9409269 	ldr	w9, [x19,#144]
    b6bc:	0b080128 	add	w8, w9, w8
    b6c0:	9102c289 	add	x9, x20, #0xb0
    b6c4:	b9009268 	str	w8, [x19,#144]
    b6c8:	b9400128 	ldr	w8, [x9]
    b6cc:	d5033d9f 	dsb	ld
    b6d0:	b9409669 	ldr	w9, [x19,#148]
    b6d4:	0b080128 	add	w8, w9, w8
    b6d8:	9102d289 	add	x9, x20, #0xb4
    b6dc:	b9009668 	str	w8, [x19,#148]
    b6e0:	b9400128 	ldr	w8, [x9]
    b6e4:	d5033d9f 	dsb	ld
    b6e8:	b9409a69 	ldr	w9, [x19,#152]
    b6ec:	0b080128 	add	w8, w9, w8
    b6f0:	9102e289 	add	x9, x20, #0xb8
    b6f4:	b9009a68 	str	w8, [x19,#152]
    b6f8:	b9400128 	ldr	w8, [x9]
    b6fc:	d5033d9f 	dsb	ld
    b700:	b9409e69 	ldr	w9, [x19,#156]
    b704:	0b080128 	add	w8, w9, w8
    b708:	9102f289 	add	x9, x20, #0xbc
    b70c:	b9009e68 	str	w8, [x19,#156]
    b710:	b9400128 	ldr	w8, [x9]
    b714:	d5033d9f 	dsb	ld
    b718:	b940a269 	ldr	w9, [x19,#160]
    b71c:	0b080128 	add	w8, w9, w8
    b720:	91030289 	add	x9, x20, #0xc0
    b724:	b900a268 	str	w8, [x19,#160]
    b728:	b9400128 	ldr	w8, [x9]
    b72c:	d5033d9f 	dsb	ld
    b730:	b940a669 	ldr	w9, [x19,#164]
    b734:	0b080128 	add	w8, w9, w8
    b738:	91031289 	add	x9, x20, #0xc4
    b73c:	b900a668 	str	w8, [x19,#164]
    b740:	b9400128 	ldr	w8, [x9]
    b744:	d5033d9f 	dsb	ld
    b748:	b940aa69 	ldr	w9, [x19,#168]
    b74c:	0b080128 	add	w8, w9, w8
    b750:	91032289 	add	x9, x20, #0xc8
    b754:	b900aa68 	str	w8, [x19,#168]
    b758:	b9400128 	ldr	w8, [x9]
    b75c:	d5033d9f 	dsb	ld
    b760:	b940ae69 	ldr	w9, [x19,#172]
    b764:	0b080128 	add	w8, w9, w8
    b768:	91033289 	add	x9, x20, #0xcc
    b76c:	b900ae68 	str	w8, [x19,#172]
    b770:	b9400128 	ldr	w8, [x9]
    b774:	d5033d9f 	dsb	ld
    b778:	b940b269 	ldr	w9, [x19,#176]
    b77c:	0b080128 	add	w8, w9, w8
    b780:	91034289 	add	x9, x20, #0xd0
    b784:	b900b268 	str	w8, [x19,#176]
    b788:	b9400128 	ldr	w8, [x9]
    b78c:	d5033d9f 	dsb	ld
    b790:	b940b669 	ldr	w9, [x19,#180]
    b794:	0b080128 	add	w8, w9, w8
    b798:	91035289 	add	x9, x20, #0xd4
    b79c:	b900b668 	str	w8, [x19,#180]
    b7a0:	b9400128 	ldr	w8, [x9]
    b7a4:	d5033d9f 	dsb	ld
    b7a8:	b940ba69 	ldr	w9, [x19,#184]
    b7ac:	0b080128 	add	w8, w9, w8
    b7b0:	91036289 	add	x9, x20, #0xd8
    b7b4:	b900ba68 	str	w8, [x19,#184]
    b7b8:	b9400128 	ldr	w8, [x9]
    b7bc:	d5033d9f 	dsb	ld
    b7c0:	b940be69 	ldr	w9, [x19,#188]
    b7c4:	0b080128 	add	w8, w9, w8
    b7c8:	91037289 	add	x9, x20, #0xdc
    b7cc:	b900be68 	str	w8, [x19,#188]
    b7d0:	b9400128 	ldr	w8, [x9]
    b7d4:	d5033d9f 	dsb	ld
    b7d8:	b940c269 	ldr	w9, [x19,#192]
    b7dc:	0b080128 	add	w8, w9, w8
    b7e0:	91040289 	add	x9, x20, #0x100
    b7e4:	b900c268 	str	w8, [x19,#192]
    b7e8:	b9400128 	ldr	w8, [x9]
    b7ec:	d5033d9f 	dsb	ld
    b7f0:	b940c669 	ldr	w9, [x19,#196]
    b7f4:	0b080128 	add	w8, w9, w8
    b7f8:	91042289 	add	x9, x20, #0x108
    b7fc:	b900c668 	str	w8, [x19,#196]
    b800:	b9400128 	ldr	w8, [x9]
    b804:	d5033d9f 	dsb	ld
    b808:	b940ca69 	ldr	w9, [x19,#200]
    b80c:	0b080128 	add	w8, w9, w8
    b810:	91044289 	add	x9, x20, #0x110
    b814:	b900ca68 	str	w8, [x19,#200]
    b818:	b9400128 	ldr	w8, [x9]
    b81c:	d5033d9f 	dsb	ld
    b820:	b940ce69 	ldr	w9, [x19,#204]
    b824:	0b080128 	add	w8, w9, w8
    b828:	91045289 	add	x9, x20, #0x114
    b82c:	b900ce68 	str	w8, [x19,#204]
    b830:	b9400128 	ldr	w8, [x9]
    b834:	d5033d9f 	dsb	ld
    b838:	b940d269 	ldr	w9, [x19,#208]
    b83c:	0b080128 	add	w8, w9, w8
    b840:	91046289 	add	x9, x20, #0x118
    b844:	b900d268 	str	w8, [x19,#208]
    b848:	b9400128 	ldr	w8, [x9]
    b84c:	d5033d9f 	dsb	ld
    b850:	b940d669 	ldr	w9, [x19,#212]
    b854:	0b080128 	add	w8, w9, w8
    b858:	91047289 	add	x9, x20, #0x11c
    b85c:	b900d668 	str	w8, [x19,#212]
    b860:	b9400128 	ldr	w8, [x9]
    b864:	d5033d9f 	dsb	ld
    b868:	b940da69 	ldr	w9, [x19,#216]
    b86c:	0b080128 	add	w8, w9, w8
    b870:	91048289 	add	x9, x20, #0x120
    b874:	b900da68 	str	w8, [x19,#216]
    b878:	b9400128 	ldr	w8, [x9]
    b87c:	d5033d9f 	dsb	ld
    b880:	b940de69 	ldr	w9, [x19,#220]
    b884:	0b080128 	add	w8, w9, w8
    b888:	91054289 	add	x9, x20, #0x150
    b88c:	b900de68 	str	w8, [x19,#220]
    b890:	b9400128 	ldr	w8, [x9]
    b894:	d5033d9f 	dsb	ld
    b898:	b940e269 	ldr	w9, [x19,#224]
    b89c:	0b080128 	add	w8, w9, w8
    b8a0:	91055289 	add	x9, x20, #0x154
    b8a4:	b900e268 	str	w8, [x19,#224]
    b8a8:	b9400128 	ldr	w8, [x9]
    b8ac:	d5033d9f 	dsb	ld
    b8b0:	b940e669 	ldr	w9, [x19,#228]
    b8b4:	0b080128 	add	w8, w9, w8
    b8b8:	91056289 	add	x9, x20, #0x158
    b8bc:	b900e668 	str	w8, [x19,#228]
    b8c0:	b9400128 	ldr	w8, [x9]
    b8c4:	d5033d9f 	dsb	ld
    b8c8:	b940ea69 	ldr	w9, [x19,#232]
    b8cc:	0b080128 	add	w8, w9, w8
    b8d0:	91057289 	add	x9, x20, #0x15c
    b8d4:	b900ea68 	str	w8, [x19,#232]
    b8d8:	b9400128 	ldr	w8, [x9]
    b8dc:	d5033d9f 	dsb	ld
    b8e0:	b940ee69 	ldr	w9, [x19,#236]
    b8e4:	0b080128 	add	w8, w9, w8
    b8e8:	91058289 	add	x9, x20, #0x160
    b8ec:	b900ee68 	str	w8, [x19,#236]
    b8f0:	b9400128 	ldr	w8, [x9]
    b8f4:	d5033d9f 	dsb	ld
    b8f8:	b940f269 	ldr	w9, [x19,#240]
    b8fc:	0b080128 	add	w8, w9, w8
    b900:	91059289 	add	x9, x20, #0x164
    b904:	b900f268 	str	w8, [x19,#240]
    b908:	b9400128 	ldr	w8, [x9]
    b90c:	d5033d9f 	dsb	ld
    b910:	b940f669 	ldr	w9, [x19,#244]
    b914:	0b080128 	add	w8, w9, w8
    b918:	9105a289 	add	x9, x20, #0x168
    b91c:	b900f668 	str	w8, [x19,#244]
    b920:	b9400128 	ldr	w8, [x9]
    b924:	d5033d9f 	dsb	ld
    b928:	b940fa69 	ldr	w9, [x19,#248]
    b92c:	0b080128 	add	w8, w9, w8
    b930:	9105b289 	add	x9, x20, #0x16c
    b934:	b900fa68 	str	w8, [x19,#248]
    b938:	b9400128 	ldr	w8, [x9]
    b93c:	d5033d9f 	dsb	ld
    b940:	b940fe69 	ldr	w9, [x19,#252]
    b944:	0b080128 	add	w8, w9, w8
    b948:	91049289 	add	x9, x20, #0x124
    b94c:	b900fe68 	str	w8, [x19,#252]
    b950:	b9400128 	ldr	w8, [x9]
    b954:	d5033d9f 	dsb	ld
    b958:	b9410269 	ldr	w9, [x19,#256]
    b95c:	0b080128 	add	w8, w9, w8
    b960:	9104a289 	add	x9, x20, #0x128
    b964:	b9010268 	str	w8, [x19,#256]
    b968:	b9400128 	ldr	w8, [x9]
    b96c:	d5033d9f 	dsb	ld
    b970:	b9410669 	ldr	w9, [x19,#260]
    b974:	0b080128 	add	w8, w9, w8
    b978:	9104b289 	add	x9, x20, #0x12c
    b97c:	b9010668 	str	w8, [x19,#260]
    b980:	b9400128 	ldr	w8, [x9]
    b984:	d5033d9f 	dsb	ld
    b988:	b9410a69 	ldr	w9, [x19,#264]
    b98c:	0b080128 	add	w8, w9, w8
    b990:	9104c289 	add	x9, x20, #0x130
    b994:	b9010a68 	str	w8, [x19,#264]
    b998:	b9400128 	ldr	w8, [x9]
    b99c:	d5033d9f 	dsb	ld
    b9a0:	b9410e69 	ldr	w9, [x19,#268]
    b9a4:	0b080128 	add	w8, w9, w8
    b9a8:	9104d289 	add	x9, x20, #0x134
    b9ac:	b9010e68 	str	w8, [x19,#268]
    b9b0:	b9400128 	ldr	w8, [x9]
    b9b4:	d5033d9f 	dsb	ld
    b9b8:	b9411269 	ldr	w9, [x19,#272]
    b9bc:	0b080128 	add	w8, w9, w8
    b9c0:	9104e289 	add	x9, x20, #0x138
    b9c4:	b9011268 	str	w8, [x19,#272]
    b9c8:	b9400128 	ldr	w8, [x9]
    b9cc:	d5033d9f 	dsb	ld
    b9d0:	b9411669 	ldr	w9, [x19,#276]
    b9d4:	0b080128 	add	w8, w9, w8
    b9d8:	9104f289 	add	x9, x20, #0x13c
    b9dc:	b9011668 	str	w8, [x19,#276]
    b9e0:	b9400128 	ldr	w8, [x9]
    b9e4:	d5033d9f 	dsb	ld
    b9e8:	b9411a69 	ldr	w9, [x19,#280]
    b9ec:	0b080128 	add	w8, w9, w8
    b9f0:	91050289 	add	x9, x20, #0x140
    b9f4:	b9011a68 	str	w8, [x19,#280]
    b9f8:	b9400128 	ldr	w8, [x9]
    b9fc:	d5033d9f 	dsb	ld
    ba00:	b9411e69 	ldr	w9, [x19,#284]
    ba04:	0b080128 	add	w8, w9, w8
    ba08:	91051289 	add	x9, x20, #0x144
    ba0c:	b9011e68 	str	w8, [x19,#284]
    ba10:	b9400128 	ldr	w8, [x9]
    ba14:	d5033d9f 	dsb	ld
    ba18:	b9412269 	ldr	w9, [x19,#288]
    ba1c:	0b080128 	add	w8, w9, w8
    ba20:	9105c289 	add	x9, x20, #0x170
    ba24:	b9012268 	str	w8, [x19,#288]
    ba28:	b9400128 	ldr	w8, [x9]
    ba2c:	d5033d9f 	dsb	ld
    ba30:	b9412669 	ldr	w9, [x19,#292]
    ba34:	0b080128 	add	w8, w9, w8
    ba38:	9105d289 	add	x9, x20, #0x174
    ba3c:	b9012668 	str	w8, [x19,#292]
    ba40:	b9400128 	ldr	w8, [x9]
    ba44:	d5033d9f 	dsb	ld
    ba48:	b9412a69 	ldr	w9, [x19,#296]
    ba4c:	0b080128 	add	w8, w9, w8
    ba50:	9105e289 	add	x9, x20, #0x178
    ba54:	b9012a68 	str	w8, [x19,#296]
    ba58:	b9400128 	ldr	w8, [x9]
    ba5c:	d5033d9f 	dsb	ld
    ba60:	b9412e69 	ldr	w9, [x19,#300]
    ba64:	0b080128 	add	w8, w9, w8
    ba68:	9105f289 	add	x9, x20, #0x17c
    ba6c:	b9012e68 	str	w8, [x19,#300]
    ba70:	b9400128 	ldr	w8, [x9]
    ba74:	d5033d9f 	dsb	ld
    ba78:	b9413269 	ldr	w9, [x19,#304]
    ba7c:	0b080128 	add	w8, w9, w8
    ba80:	91060289 	add	x9, x20, #0x180
    ba84:	b9013268 	str	w8, [x19,#304]
    ba88:	b9400128 	ldr	w8, [x9]
    ba8c:	d5033d9f 	dsb	ld
    ba90:	b9413669 	ldr	w9, [x19,#308]
    ba94:	0b080128 	add	w8, w9, w8
    ba98:	b9013668 	str	w8, [x19,#308]
    ba9c:	b9400148 	ldr	w8, [x10]
    baa0:	d5033d9f 	dsb	ld
    baa4:	b9413a69 	ldr	w9, [x19,#312]
    baa8:	0b080128 	add	w8, w9, w8
    baac:	b9013a68 	str	w8, [x19,#312]
    bab0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    bab4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    bab8:	d65f03c0 	ret

000000000000babc <stmmac_config_hw_tstamping>:
    babc:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    bac0:	a9017bfd 	stp	x29, x30, [sp,#16]
    bac4:	910043fd 	add	x29, sp, #0x10
    bac8:	2a0103f3 	mov	w19, w1
    bacc:	aa0003f4 	mov	x20, x0
    bad0:	94000000 	bl	0 <_mcount>
    bad4:	d5033e9f 	dsb	st
    bad8:	b9000293 	str	w19, [x20]
    badc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    bae0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    bae4:	d65f03c0 	ret

000000000000bae8 <stmmac_config_sub_second_increment>:
    bae8:	f81d0ff5 	str	x21, [sp,#-48]!
    baec:	a9014ff4 	stp	x20, x19, [sp,#16]
    baf0:	a9027bfd 	stp	x29, x30, [sp,#32]
    baf4:	910083fd 	add	x29, sp, #0x20
    baf8:	2a0203f4 	mov	w20, w2
    bafc:	2a0103f5 	mov	w21, w1
    bb00:	aa0003f3 	mov	x19, x0
    bb04:	94000000 	bl	0 <_mcount>
    bb08:	b9400268 	ldr	w8, [x19]
    bb0c:	52928009 	mov	w9, #0x9400                	// #37888
    bb10:	2a0803ea 	mov	w10, w8
    bb14:	52994008 	mov	w8, #0xca00                	// #51712
    bb18:	d5033d9f 	dsb	ld
    bb1c:	72aee6a9 	movk	w9, #0x7735, lsl #16
    bb20:	f27f015f 	tst	x10, #0x2
    bb24:	72a77348 	movk	w8, #0x3b9a, lsl #16
    bb28:	1a890108 	csel	w8, w8, w9, eq
    bb2c:	1ad50908 	udiv	w8, w8, w21
    bb30:	3748012a 	tbnz	w10, #9, bb54 <stmmac_config_sub_second_increment+0x6c>
    bb34:	52807d09 	mov	w9, #0x3e8                 	// #1000
    bb38:	9b097d08 	mul	x8, x8, x9
    bb3c:	d29e0129 	mov	x9, #0xf009                	// #61449
    bb40:	f2a01189 	movk	x9, #0x8c, lsl #16
    bb44:	f2c119e9 	movk	x9, #0x8cf, lsl #32
    bb48:	f2f19e09 	movk	x9, #0x8cf0, lsl #48
    bb4c:	9bc97d08 	umulh	x8, x8, x9
    bb50:	d348fd08 	lsr	x8, x8, #8
    bb54:	12001d00 	and	w0, w8, #0xff
    bb58:	7100029f 	cmp	w20, #0x0
    bb5c:	53103c08 	lsl	w8, w0, #16
    bb60:	d5033e9f 	dsb	st
    bb64:	1a880008 	csel	w8, w0, w8, eq
    bb68:	91001269 	add	x9, x19, #0x4
    bb6c:	b9000128 	str	w8, [x9]
    bb70:	a9427bfd 	ldp	x29, x30, [sp,#32]
    bb74:	a9414ff4 	ldp	x20, x19, [sp,#16]
    bb78:	f84307f5 	ldr	x21, [sp],#48
    bb7c:	d65f03c0 	ret

000000000000bb80 <stmmac_init_systime>:
    bb80:	f81d0ff5 	str	x21, [sp,#-48]!
    bb84:	a9014ff4 	stp	x20, x19, [sp,#16]
    bb88:	a9027bfd 	stp	x29, x30, [sp,#32]
    bb8c:	910083fd 	add	x29, sp, #0x20
    bb90:	2a0203f4 	mov	w20, w2
    bb94:	2a0103f5 	mov	w21, w1
    bb98:	aa0003f3 	mov	x19, x0
    bb9c:	94000000 	bl	0 <_mcount>
    bba0:	91004268 	add	x8, x19, #0x10
    bba4:	d5033e9f 	dsb	st
    bba8:	91005269 	add	x9, x19, #0x14
    bbac:	b9000115 	str	w21, [x8]
    bbb0:	d5033e9f 	dsb	st
    bbb4:	b9000134 	str	w20, [x9]
    bbb8:	b9400268 	ldr	w8, [x19]
    bbbc:	d5033d9f 	dsb	ld
    bbc0:	d5033e9f 	dsb	st
    bbc4:	52800134 	mov	w20, #0x9                   	// #9
    bbc8:	321e0108 	orr	w8, w8, #0x4
    bbcc:	b9000268 	str	w8, [x19]
    bbd0:	b9400268 	ldr	w8, [x19]
    bbd4:	d5033d9f 	dsb	ld
    bbd8:	36100448 	tbz	w8, #2, bc60 <stmmac_init_systime+0xe0>
    bbdc:	52912b00 	mov	w0, #0x8958                	// #35160
    bbe0:	72a00820 	movk	w0, #0x41, lsl #16
    bbe4:	94000000 	bl	0 <__const_udelay>
    bbe8:	52912b00 	mov	w0, #0x8958                	// #35160
    bbec:	72a00820 	movk	w0, #0x41, lsl #16
    bbf0:	94000000 	bl	0 <__const_udelay>
    bbf4:	52912b00 	mov	w0, #0x8958                	// #35160
    bbf8:	72a00820 	movk	w0, #0x41, lsl #16
    bbfc:	94000000 	bl	0 <__const_udelay>
    bc00:	52912b00 	mov	w0, #0x8958                	// #35160
    bc04:	72a00820 	movk	w0, #0x41, lsl #16
    bc08:	94000000 	bl	0 <__const_udelay>
    bc0c:	52912b00 	mov	w0, #0x8958                	// #35160
    bc10:	72a00820 	movk	w0, #0x41, lsl #16
    bc14:	94000000 	bl	0 <__const_udelay>
    bc18:	52912b00 	mov	w0, #0x8958                	// #35160
    bc1c:	72a00820 	movk	w0, #0x41, lsl #16
    bc20:	94000000 	bl	0 <__const_udelay>
    bc24:	52912b00 	mov	w0, #0x8958                	// #35160
    bc28:	72a00820 	movk	w0, #0x41, lsl #16
    bc2c:	94000000 	bl	0 <__const_udelay>
    bc30:	52912b00 	mov	w0, #0x8958                	// #35160
    bc34:	72a00820 	movk	w0, #0x41, lsl #16
    bc38:	94000000 	bl	0 <__const_udelay>
    bc3c:	52912b00 	mov	w0, #0x8958                	// #35160
    bc40:	72a00820 	movk	w0, #0x41, lsl #16
    bc44:	94000000 	bl	0 <__const_udelay>
    bc48:	52912b00 	mov	w0, #0x8958                	// #35160
    bc4c:	72a00820 	movk	w0, #0x41, lsl #16
    bc50:	94000000 	bl	0 <__const_udelay>
    bc54:	51000694 	sub	w20, w20, #0x1
    bc58:	3100069f 	cmn	w20, #0x1
    bc5c:	54fffba1 	b.ne	bbd0 <stmmac_init_systime+0x50>
    bc60:	131f7e88 	asr	w8, w20, #31
    bc64:	a9427bfd 	ldp	x29, x30, [sp,#32]
    bc68:	a9414ff4 	ldp	x20, x19, [sp,#16]
    bc6c:	121c6d00 	and	w0, w8, #0xfffffff0
    bc70:	f84307f5 	ldr	x21, [sp],#48
    bc74:	d65f03c0 	ret

000000000000bc78 <stmmac_config_addend>:
    bc78:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    bc7c:	a9017bfd 	stp	x29, x30, [sp,#16]
    bc80:	910043fd 	add	x29, sp, #0x10
    bc84:	2a0103f4 	mov	w20, w1
    bc88:	aa0003f3 	mov	x19, x0
    bc8c:	94000000 	bl	0 <_mcount>
    bc90:	91006268 	add	x8, x19, #0x18
    bc94:	d5033e9f 	dsb	st
    bc98:	b9000114 	str	w20, [x8]
    bc9c:	b9400268 	ldr	w8, [x19]
    bca0:	d5033d9f 	dsb	ld
    bca4:	d5033e9f 	dsb	st
    bca8:	52800134 	mov	w20, #0x9                   	// #9
    bcac:	321b0108 	orr	w8, w8, #0x20
    bcb0:	b9000268 	str	w8, [x19]
    bcb4:	b9400268 	ldr	w8, [x19]
    bcb8:	d5033d9f 	dsb	ld
    bcbc:	36280448 	tbz	w8, #5, bd44 <stmmac_config_addend+0xcc>
    bcc0:	52912b00 	mov	w0, #0x8958                	// #35160
    bcc4:	72a00820 	movk	w0, #0x41, lsl #16
    bcc8:	94000000 	bl	0 <__const_udelay>
    bccc:	52912b00 	mov	w0, #0x8958                	// #35160
    bcd0:	72a00820 	movk	w0, #0x41, lsl #16
    bcd4:	94000000 	bl	0 <__const_udelay>
    bcd8:	52912b00 	mov	w0, #0x8958                	// #35160
    bcdc:	72a00820 	movk	w0, #0x41, lsl #16
    bce0:	94000000 	bl	0 <__const_udelay>
    bce4:	52912b00 	mov	w0, #0x8958                	// #35160
    bce8:	72a00820 	movk	w0, #0x41, lsl #16
    bcec:	94000000 	bl	0 <__const_udelay>
    bcf0:	52912b00 	mov	w0, #0x8958                	// #35160
    bcf4:	72a00820 	movk	w0, #0x41, lsl #16
    bcf8:	94000000 	bl	0 <__const_udelay>
    bcfc:	52912b00 	mov	w0, #0x8958                	// #35160
    bd00:	72a00820 	movk	w0, #0x41, lsl #16
    bd04:	94000000 	bl	0 <__const_udelay>
    bd08:	52912b00 	mov	w0, #0x8958                	// #35160
    bd0c:	72a00820 	movk	w0, #0x41, lsl #16
    bd10:	94000000 	bl	0 <__const_udelay>
    bd14:	52912b00 	mov	w0, #0x8958                	// #35160
    bd18:	72a00820 	movk	w0, #0x41, lsl #16
    bd1c:	94000000 	bl	0 <__const_udelay>
    bd20:	52912b00 	mov	w0, #0x8958                	// #35160
    bd24:	72a00820 	movk	w0, #0x41, lsl #16
    bd28:	94000000 	bl	0 <__const_udelay>
    bd2c:	52912b00 	mov	w0, #0x8958                	// #35160
    bd30:	72a00820 	movk	w0, #0x41, lsl #16
    bd34:	94000000 	bl	0 <__const_udelay>
    bd38:	51000694 	sub	w20, w20, #0x1
    bd3c:	3100069f 	cmn	w20, #0x1
    bd40:	54fffba1 	b.ne	bcb4 <stmmac_config_addend+0x3c>
    bd44:	a9417bfd 	ldp	x29, x30, [sp,#16]
    bd48:	131f7e88 	asr	w8, w20, #31
    bd4c:	121c6d00 	and	w0, w8, #0xfffffff0
    bd50:	a8c24ff4 	ldp	x20, x19, [sp],#32
    bd54:	d65f03c0 	ret

000000000000bd58 <stmmac_adjust_systime>:
    bd58:	f81c0ff7 	str	x23, [sp,#-64]!
    bd5c:	a90157f6 	stp	x22, x21, [sp,#16]
    bd60:	a9024ff4 	stp	x20, x19, [sp,#32]
    bd64:	a9037bfd 	stp	x29, x30, [sp,#48]
    bd68:	9100c3fd 	add	x29, sp, #0x30
    bd6c:	2a0403f7 	mov	w23, w4
    bd70:	2a0303f5 	mov	w21, w3
    bd74:	2a0203f6 	mov	w22, w2
    bd78:	2a0103f4 	mov	w20, w1
    bd7c:	aa0003f3 	mov	x19, x0
    bd80:	94000000 	bl	0 <_mcount>
    bd84:	34000175 	cbz	w21, bdb0 <stmmac_adjust_systime+0x58>
    bd88:	b9400268 	ldr	w8, [x19]
    bd8c:	d5033d9f 	dsb	ld
    bd90:	710002ff 	cmp	w23, #0x0
    bd94:	5a940694 	cneg	w20, w20, ne
    bd98:	37480068 	tbnz	w8, #9, bda4 <stmmac_adjust_systime+0x4c>
    bd9c:	52b00008 	mov	w8, #0x80000000            	// #-2147483648
    bda0:	14000003 	b	bdac <stmmac_adjust_systime+0x54>
    bda4:	52994008 	mov	w8, #0xca00                	// #51712
    bda8:	72a77348 	movk	w8, #0x3b9a, lsl #16
    bdac:	4b160116 	sub	w22, w8, w22
    bdb0:	91004268 	add	x8, x19, #0x10
    bdb4:	d5033e9f 	dsb	st
    bdb8:	2a157ec9 	orr	w9, w22, w21, lsl #31
    bdbc:	9100526a 	add	x10, x19, #0x14
    bdc0:	b9000114 	str	w20, [x8]
    bdc4:	d5033e9f 	dsb	st
    bdc8:	b9000149 	str	w9, [x10]
    bdcc:	b9400268 	ldr	w8, [x19]
    bdd0:	d5033d9f 	dsb	ld
    bdd4:	d5033e9f 	dsb	st
    bdd8:	52800134 	mov	w20, #0x9                   	// #9
    bddc:	321d0108 	orr	w8, w8, #0x8
    bde0:	b9000268 	str	w8, [x19]
    bde4:	b9400268 	ldr	w8, [x19]
    bde8:	d5033d9f 	dsb	ld
    bdec:	36180448 	tbz	w8, #3, be74 <stmmac_adjust_systime+0x11c>
    bdf0:	52912b00 	mov	w0, #0x8958                	// #35160
    bdf4:	72a00820 	movk	w0, #0x41, lsl #16
    bdf8:	94000000 	bl	0 <__const_udelay>
    bdfc:	52912b00 	mov	w0, #0x8958                	// #35160
    be00:	72a00820 	movk	w0, #0x41, lsl #16
    be04:	94000000 	bl	0 <__const_udelay>
    be08:	52912b00 	mov	w0, #0x8958                	// #35160
    be0c:	72a00820 	movk	w0, #0x41, lsl #16
    be10:	94000000 	bl	0 <__const_udelay>
    be14:	52912b00 	mov	w0, #0x8958                	// #35160
    be18:	72a00820 	movk	w0, #0x41, lsl #16
    be1c:	94000000 	bl	0 <__const_udelay>
    be20:	52912b00 	mov	w0, #0x8958                	// #35160
    be24:	72a00820 	movk	w0, #0x41, lsl #16
    be28:	94000000 	bl	0 <__const_udelay>
    be2c:	52912b00 	mov	w0, #0x8958                	// #35160
    be30:	72a00820 	movk	w0, #0x41, lsl #16
    be34:	94000000 	bl	0 <__const_udelay>
    be38:	52912b00 	mov	w0, #0x8958                	// #35160
    be3c:	72a00820 	movk	w0, #0x41, lsl #16
    be40:	94000000 	bl	0 <__const_udelay>
    be44:	52912b00 	mov	w0, #0x8958                	// #35160
    be48:	72a00820 	movk	w0, #0x41, lsl #16
    be4c:	94000000 	bl	0 <__const_udelay>
    be50:	52912b00 	mov	w0, #0x8958                	// #35160
    be54:	72a00820 	movk	w0, #0x41, lsl #16
    be58:	94000000 	bl	0 <__const_udelay>
    be5c:	52912b00 	mov	w0, #0x8958                	// #35160
    be60:	72a00820 	movk	w0, #0x41, lsl #16
    be64:	94000000 	bl	0 <__const_udelay>
    be68:	51000694 	sub	w20, w20, #0x1
    be6c:	3100069f 	cmn	w20, #0x1
    be70:	54fffba1 	b.ne	bde4 <stmmac_adjust_systime+0x8c>
    be74:	131f7e88 	asr	w8, w20, #31
    be78:	a9437bfd 	ldp	x29, x30, [sp,#48]
    be7c:	a9424ff4 	ldp	x20, x19, [sp,#32]
    be80:	a94157f6 	ldp	x22, x21, [sp,#16]
    be84:	121c6d00 	and	w0, w8, #0xfffffff0
    be88:	f84407f7 	ldr	x23, [sp],#64
    be8c:	d65f03c0 	ret

000000000000be90 <stmmac_get_systime>:
    be90:	f81e0ff3 	str	x19, [sp,#-32]!
    be94:	a9017bfd 	stp	x29, x30, [sp,#16]
    be98:	910043fd 	add	x29, sp, #0x10
    be9c:	aa0003f3 	mov	x19, x0
    bea0:	94000000 	bl	0 <_mcount>
    bea4:	91003268 	add	x8, x19, #0xc
    bea8:	91002269 	add	x9, x19, #0x8
    beac:	b9400108 	ldr	w8, [x8]
    beb0:	d5033d9f 	dsb	ld
    beb4:	b9400129 	ldr	w9, [x9]
    beb8:	d5033d9f 	dsb	ld
    bebc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    bec0:	5299400a 	mov	w10, #0xca00                	// #51712
    bec4:	2a0803e8 	mov	w8, w8
    bec8:	72a7734a 	movk	w10, #0x3b9a, lsl #16
    becc:	9baa2120 	umaddl	x0, w9, w10, x8
    bed0:	f84207f3 	ldr	x19, [sp],#32
    bed4:	d65f03c0 	ret

000000000000bed8 <stmmac_ptp_register>:
    bed8:	f81e0ff3 	str	x19, [sp,#-32]!
    bedc:	a9017bfd 	stp	x29, x30, [sp,#16]
    bee0:	910043fd 	add	x29, sp, #0x10
    bee4:	aa0003f3 	mov	x19, x0
    bee8:	94000000 	bl	0 <_mcount>
    beec:	d2800008 	mov	x8, #0x0                   	// #0
    bef0:	f2a00008 	movk	x8, #0x0, lsl #16
    bef4:	f2c00008 	movk	x8, #0x0, lsl #32
    bef8:	f2e00008 	movk	x8, #0x0, lsl #48
    befc:	ad410101 	ldp	q1, q0, [x8,#32]
    bf00:	ad428903 	ldp	q3, q2, [x8,#80]
    bf04:	f9410e61 	ldr	x1, [x19,#536]
    bf08:	91230260 	add	x0, x19, #0x8c0
    bf0c:	3d823e60 	str	q0, [x19,#2288]
    bf10:	3dc01100 	ldr	q0, [x8,#64]
    bf14:	b909527f 	str	wzr, [x19,#2384]
    bf18:	3d824a62 	str	q2, [x19,#2336]
    bf1c:	3d824663 	str	q3, [x19,#2320]
    bf20:	ad400d02 	ldp	q2, q3, [x8]
    bf24:	3d824260 	str	q0, [x19,#2304]
    bf28:	3d823a61 	str	q1, [x19,#2272]
    bf2c:	3d823663 	str	q3, [x19,#2256]
    bf30:	3d823262 	str	q2, [x19,#2240]
    bf34:	94000000 	bl	0 <ptp_clock_register>
    bf38:	b13ffc1f 	cmn	x0, #0xfff
    bf3c:	f9045e60 	str	x0, [x19,#2232]
    bf40:	54000123 	b.cc	bf64 <stmmac_ptp_register+0x8c>
    bf44:	f9410a60 	ldr	x0, [x19,#528]
    bf48:	d2800001 	mov	x1, #0x0                   	// #0
    bf4c:	f2a00001 	movk	x1, #0x0, lsl #16
    bf50:	f2c00001 	movk	x1, #0x0, lsl #32
    bf54:	f2e00001 	movk	x1, #0x0, lsl #48
    bf58:	94000000 	bl	0 <netdev_err>
    bf5c:	f9045e7f 	str	xzr, [x19,#2232]
    bf60:	14000008 	b	bf80 <stmmac_ptp_register+0xa8>
    bf64:	b40000e0 	cbz	x0, bf80 <stmmac_ptp_register+0xa8>
    bf68:	f9410a60 	ldr	x0, [x19,#528]
    bf6c:	d2800001 	mov	x1, #0x0                   	// #0
    bf70:	f2a00001 	movk	x1, #0x0, lsl #16
    bf74:	f2c00001 	movk	x1, #0x0, lsl #32
    bf78:	f2e00001 	movk	x1, #0x0, lsl #48
    bf7c:	94000000 	bl	0 <netdev_info>
    bf80:	a9417bfd 	ldp	x29, x30, [sp,#16]
    bf84:	f84207f3 	ldr	x19, [sp],#32
    bf88:	d65f03c0 	ret

000000000000bf8c <stmmac_ptp_unregister>:
    bf8c:	f81e0ff3 	str	x19, [sp,#-32]!
    bf90:	a9017bfd 	stp	x29, x30, [sp,#16]
    bf94:	910043fd 	add	x29, sp, #0x10
    bf98:	aa0003f3 	mov	x19, x0
    bf9c:	94000000 	bl	0 <_mcount>
    bfa0:	f9445e60 	ldr	x0, [x19,#2232]
    bfa4:	b4000060 	cbz	x0, bfb0 <stmmac_ptp_unregister+0x24>
    bfa8:	94000000 	bl	0 <ptp_clock_unregister>
    bfac:	f9045e7f 	str	xzr, [x19,#2232]
    bfb0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    bfb4:	f84207f3 	ldr	x19, [sp],#32
    bfb8:	d65f03c0 	ret

000000000000bfbc <stmmac_adjust_freq>:
    bfbc:	f81d0ff5 	str	x21, [sp,#-48]!
    bfc0:	a9014ff4 	stp	x20, x19, [sp,#16]
    bfc4:	a9027bfd 	stp	x29, x30, [sp,#32]
    bfc8:	910083fd 	add	x29, sp, #0x20
    bfcc:	2a0103f3 	mov	w19, w1
    bfd0:	aa0003f4 	mov	x20, x0
    bfd4:	94000000 	bl	0 <_mcount>
    bfd8:	b9407288 	ldr	w8, [x20,#112]
    bfdc:	7100027f 	cmp	w19, #0x0
    bfe0:	d28b4a69 	mov	x9, #0x5a53                	// #23123
    bfe4:	5a93566a 	cneg	w10, w19, mi
    bfe8:	f2b41369 	movk	x9, #0xa09b, lsl #16
    bfec:	93407d4a 	sxtw	x10, w10
    bff0:	f2d705e9 	movk	x9, #0xb82f, lsl #32
    bff4:	9b0a7d0a 	mul	x10, x8, x10
    bff8:	f2e00889 	movk	x9, #0x44, lsl #48
    bffc:	d349fd4a 	lsr	x10, x10, #9
    c000:	9bc97d49 	umulh	x9, x10, x9
    c004:	d34bfd29 	lsr	x9, x9, #11
    c008:	91024295 	add	x21, x20, #0x90
    c00c:	5a89a529 	cneg	w9, w9, lt
    c010:	aa1503e0 	mov	x0, x21
    c014:	0b080133 	add	w19, w9, w8
    c018:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    c01c:	d11a8288 	sub	x8, x20, #0x6a0
    c020:	f9400108 	ldr	x8, [x8]
    c024:	2a1303e1 	mov	w1, w19
    c028:	f9401108 	ldr	x8, [x8,#32]
    c02c:	f9400d09 	ldr	x9, [x8,#24]
    c030:	f9405288 	ldr	x8, [x20,#160]
    c034:	aa0003f4 	mov	x20, x0
    c038:	aa0803e0 	mov	x0, x8
    c03c:	d63f0120 	blr	x9
    c040:	aa1503e0 	mov	x0, x21
    c044:	aa1403e1 	mov	x1, x20
    c048:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    c04c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    c050:	a9414ff4 	ldp	x20, x19, [sp,#16]
    c054:	2a1f03e0 	mov	w0, wzr
    c058:	f84307f5 	ldr	x21, [sp],#48
    c05c:	d65f03c0 	ret

000000000000c060 <stmmac_adjust_time>:
    c060:	f81c0ff7 	str	x23, [sp,#-64]!
    c064:	a90157f6 	stp	x22, x21, [sp,#16]
    c068:	a9024ff4 	stp	x20, x19, [sp,#32]
    c06c:	a9037bfd 	stp	x29, x30, [sp,#48]
    c070:	9100c3fd 	add	x29, sp, #0x30
    c074:	aa0103f3 	mov	x19, x1
    c078:	aa0003f4 	mov	x20, x0
    c07c:	94000000 	bl	0 <_mcount>
    c080:	d28b4a68 	mov	x8, #0x5a53                	// #23123
    c084:	f100027f 	cmp	x19, #0x0
    c088:	f2b41368 	movk	x8, #0xa09b, lsl #16
    c08c:	f2d705e8 	movk	x8, #0xb82f, lsl #32
    c090:	da93566a 	cneg	x10, x19, mi
    c094:	f2e00888 	movk	x8, #0x44, lsl #48
    c098:	d349fd4b 	lsr	x11, x10, #9
    c09c:	52994009 	mov	w9, #0xca00                	// #51712
    c0a0:	9bc87d68 	umulh	x8, x11, x8
    c0a4:	91024297 	add	x23, x20, #0x90
    c0a8:	d37ffe75 	lsr	x21, x19, #63
    c0ac:	72a77349 	movk	w9, #0x3b9a, lsl #16
    c0b0:	d34bfd13 	lsr	x19, x8, #11
    c0b4:	aa1703e0 	mov	x0, x23
    c0b8:	1b09aa76 	msub	w22, w19, w9, w10
    c0bc:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    c0c0:	d11a8288 	sub	x8, x20, #0x6a0
    c0c4:	f9400108 	ldr	x8, [x8]
    c0c8:	d1090289 	sub	x9, x20, #0x240
    c0cc:	f9400129 	ldr	x9, [x9]
    c0d0:	2a1303e1 	mov	w1, w19
    c0d4:	f940110a 	ldr	x10, [x8,#32]
    c0d8:	f9405288 	ldr	x8, [x20,#160]
    c0dc:	b940b124 	ldr	w4, [x9,#176]
    c0e0:	aa0003f4 	mov	x20, x0
    c0e4:	f940114a 	ldr	x10, [x10,#32]
    c0e8:	aa0803e0 	mov	x0, x8
    c0ec:	2a1603e2 	mov	w2, w22
    c0f0:	2a1503e3 	mov	w3, w21
    c0f4:	d63f0140 	blr	x10
    c0f8:	aa1703e0 	mov	x0, x23
    c0fc:	aa1403e1 	mov	x1, x20
    c100:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    c104:	a9437bfd 	ldp	x29, x30, [sp,#48]
    c108:	a9424ff4 	ldp	x20, x19, [sp,#32]
    c10c:	a94157f6 	ldp	x22, x21, [sp,#16]
    c110:	2a1f03e0 	mov	w0, wzr
    c114:	f84407f7 	ldr	x23, [sp],#64
    c118:	d65f03c0 	ret

000000000000c11c <stmmac_get_time>:
    c11c:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    c120:	a9014ff4 	stp	x20, x19, [sp,#16]
    c124:	a9027bfd 	stp	x29, x30, [sp,#32]
    c128:	910083fd 	add	x29, sp, #0x20
    c12c:	aa0103f3 	mov	x19, x1
    c130:	aa0003f4 	mov	x20, x0
    c134:	94000000 	bl	0 <_mcount>
    c138:	91024295 	add	x21, x20, #0x90
    c13c:	aa1503e0 	mov	x0, x21
    c140:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    c144:	d11a8288 	sub	x8, x20, #0x6a0
    c148:	f9400108 	ldr	x8, [x8]
    c14c:	f9401108 	ldr	x8, [x8,#32]
    c150:	f9401509 	ldr	x9, [x8,#40]
    c154:	f9405288 	ldr	x8, [x20,#160]
    c158:	aa0003f4 	mov	x20, x0
    c15c:	aa0803e0 	mov	x0, x8
    c160:	d63f0120 	blr	x9
    c164:	aa0003f6 	mov	x22, x0
    c168:	aa1503e0 	mov	x0, x21
    c16c:	aa1403e1 	mov	x1, x20
    c170:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    c174:	aa1603e0 	mov	x0, x22
    c178:	94000000 	bl	0 <ns_to_timespec>
    c17c:	a9000660 	stp	x0, x1, [x19]
    c180:	a9427bfd 	ldp	x29, x30, [sp,#32]
    c184:	a9414ff4 	ldp	x20, x19, [sp,#16]
    c188:	2a1f03e0 	mov	w0, wzr
    c18c:	a8c357f6 	ldp	x22, x21, [sp],#48
    c190:	d65f03c0 	ret

000000000000c194 <stmmac_set_time>:
    c194:	f81d0ff5 	str	x21, [sp,#-48]!
    c198:	a9014ff4 	stp	x20, x19, [sp,#16]
    c19c:	a9027bfd 	stp	x29, x30, [sp,#32]
    c1a0:	910083fd 	add	x29, sp, #0x20
    c1a4:	aa0103f3 	mov	x19, x1
    c1a8:	aa0003f4 	mov	x20, x0
    c1ac:	94000000 	bl	0 <_mcount>
    c1b0:	91024295 	add	x21, x20, #0x90
    c1b4:	aa1503e0 	mov	x0, x21
    c1b8:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    c1bc:	d11a8288 	sub	x8, x20, #0x6a0
    c1c0:	f9400108 	ldr	x8, [x8]
    c1c4:	b9400261 	ldr	w1, [x19]
    c1c8:	b9400a62 	ldr	w2, [x19,#8]
    c1cc:	aa0003f3 	mov	x19, x0
    c1d0:	f9401109 	ldr	x9, [x8,#32]
    c1d4:	f9405288 	ldr	x8, [x20,#160]
    c1d8:	f9400929 	ldr	x9, [x9,#16]
    c1dc:	aa0803e0 	mov	x0, x8
    c1e0:	d63f0120 	blr	x9
    c1e4:	aa1503e0 	mov	x0, x21
    c1e8:	aa1303e1 	mov	x1, x19
    c1ec:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    c1f0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    c1f4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    c1f8:	2a1f03e0 	mov	w0, wzr
    c1fc:	f84307f5 	ldr	x21, [sp],#48
    c200:	d65f03c0 	ret

000000000000c204 <stmmac_enable>:
    c204:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    c208:	910003fd 	mov	x29, sp
    c20c:	94000000 	bl	0 <_mcount>
    c210:	12800bc0 	mov	w0, #0xffffffa1            	// #-95
    c214:	a8c17bfd 	ldp	x29, x30, [sp],#16
    c218:	d65f03c0 	ret

000000000000c21c <dwmac4_rd_init_rx_desc>:
    c21c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    c220:	a9017bfd 	stp	x29, x30, [sp,#16]
    c224:	910043fd 	add	x29, sp, #0x10
    c228:	2a0103f3 	mov	w19, w1
    c22c:	aa0003f4 	mov	x20, x0
    c230:	94000000 	bl	0 <_mcount>
    c234:	7100027f 	cmp	w19, #0x0
    c238:	52b02008 	mov	w8, #0x81000000            	// #-2130706432
    c23c:	52b82009 	mov	w9, #0xc1000000            	// #-1056964608
    c240:	1a880128 	csel	w8, w9, w8, eq
    c244:	b9000e88 	str	w8, [x20,#12]
    c248:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c24c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    c250:	d65f03c0 	ret

000000000000c254 <dwmac4_rd_init_tx_desc>:
    c254:	f81e0ff3 	str	x19, [sp,#-32]!
    c258:	a9017bfd 	stp	x29, x30, [sp,#16]
    c25c:	910043fd 	add	x29, sp, #0x10
    c260:	aa0003f3 	mov	x19, x0
    c264:	94000000 	bl	0 <_mcount>
    c268:	a9007e7f 	stp	xzr, xzr, [x19]
    c26c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c270:	f84207f3 	ldr	x19, [sp],#32
    c274:	d65f03c0 	ret

000000000000c278 <dwmac4_rd_prepare_tx_desc>:
    c278:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    c27c:	a90157f6 	stp	x22, x21, [sp,#16]
    c280:	a9024ff4 	stp	x20, x19, [sp,#32]
    c284:	a9037bfd 	stp	x29, x30, [sp,#48]
    c288:	9100c3fd 	add	x29, sp, #0x30
    c28c:	2a0603f4 	mov	w20, w6
    c290:	2a0503f5 	mov	w21, w5
    c294:	2a0303f6 	mov	w22, w3
    c298:	2a0203f7 	mov	w23, w2
    c29c:	2a0103f8 	mov	w24, w1
    c2a0:	aa0003f3 	mov	x19, x0
    c2a4:	94000000 	bl	0 <_mcount>
    c2a8:	29412668 	ldp	w8, w9, [x19,#8]
    c2ac:	120036ea 	and	w10, w23, #0x3fff
    c2b0:	7100031f 	cmp	w24, #0x0
    c2b4:	2a0a0108 	orr	w8, w8, w10
    c2b8:	3203012a 	orr	w10, w9, #0x20000000
    c2bc:	12027929 	and	w9, w9, #0xdfffffff
    c2c0:	b9000a68 	str	w8, [x19,#8]
    c2c4:	1a8a0128 	csel	w8, w9, w10, eq
    c2c8:	720002df 	tst	w22, #0x1
    c2cc:	32100509 	orr	w9, w8, #0x30000
    c2d0:	120e7508 	and	w8, w8, #0xfffcffff
    c2d4:	1a881128 	csel	w8, w9, w8, ne
    c2d8:	7200029f 	tst	w20, #0x1
    c2dc:	32040109 	orr	w9, w8, #0x10000000
    c2e0:	12037908 	and	w8, w8, #0xefffffff
    c2e4:	1a881128 	csel	w8, w9, w8, ne
    c2e8:	720002bf 	tst	w21, #0x1
    c2ec:	32010109 	orr	w9, w8, #0x80000000
    c2f0:	0a1802aa 	and	w10, w21, w24
    c2f4:	1a881128 	csel	w8, w9, w8, ne
    c2f8:	3600004a 	tbz	w10, #0, c300 <dwmac4_rd_prepare_tx_desc+0x88>
    c2fc:	d5033e9f 	dsb	st
    c300:	b9000e68 	str	w8, [x19,#12]
    c304:	a9437bfd 	ldp	x29, x30, [sp,#48]
    c308:	a9424ff4 	ldp	x20, x19, [sp,#32]
    c30c:	a94157f6 	ldp	x22, x21, [sp,#16]
    c310:	a8c45ff8 	ldp	x24, x23, [sp],#64
    c314:	d65f03c0 	ret

000000000000c318 <dwmac4_rd_prepare_tso_tx_desc>:
    c318:	a9bb67fa 	stp	x26, x25, [sp,#-80]!
    c31c:	a9015ff8 	stp	x24, x23, [sp,#16]
    c320:	a90257f6 	stp	x22, x21, [sp,#32]
    c324:	a9034ff4 	stp	x20, x19, [sp,#48]
    c328:	a9047bfd 	stp	x29, x30, [sp,#64]
    c32c:	910103fd 	add	x29, sp, #0x40
    c330:	2a0703f8 	mov	w24, w7
    c334:	2a0603f7 	mov	w23, w6
    c338:	2a0503f6 	mov	w22, w5
    c33c:	2a0403f4 	mov	w20, w4
    c340:	2a0303f9 	mov	w25, w3
    c344:	2a0203fa 	mov	w26, w2
    c348:	2a0103f5 	mov	w21, w1
    c34c:	aa0003f3 	mov	x19, x0
    c350:	94000000 	bl	0 <_mcount>
    c354:	b9400e68 	ldr	w8, [x19,#12]
    c358:	340000ba 	cbz	w26, c36c <dwmac4_rd_prepare_tso_tx_desc+0x54>
    c35c:	b9400a69 	ldr	w9, [x19,#8]
    c360:	1200374a 	and	w10, w26, #0x3fff
    c364:	2a0a0129 	orr	w9, w9, w10
    c368:	b9000a69 	str	w9, [x19,#8]
    c36c:	340000b9 	cbz	w25, c380 <dwmac4_rd_prepare_tso_tx_desc+0x68>
    c370:	b9400a69 	ldr	w9, [x19,#8]
    c374:	5310372a 	ubfiz	w10, w25, #16, #14
    c378:	2a0a0129 	orr	w9, w9, w10
    c37c:	b9000a69 	str	w9, [x19,#8]
    c380:	340000f5 	cbz	w21, c39c <dwmac4_rd_prepare_tso_tx_desc+0x84>
    c384:	12004709 	and	w9, w24, #0x3ffff
    c388:	330d0ee9 	bfi	w9, w23, #19, #4
    c38c:	2a080128 	orr	w8, w9, w8
    c390:	52a40089 	mov	w9, #0x20040000            	// #537133056
    c394:	2a090108 	orr	w8, w8, w9
    c398:	14000002 	b	c3a0 <dwmac4_rd_prepare_tso_tx_desc+0x88>
    c39c:	12027908 	and	w8, w8, #0xdfffffff
    c3a0:	32040109 	orr	w9, w8, #0x10000000
    c3a4:	12037908 	and	w8, w8, #0xefffffff
    c3a8:	720002df 	tst	w22, #0x1
    c3ac:	1a881128 	csel	w8, w9, w8, ne
    c3b0:	7200029f 	tst	w20, #0x1
    c3b4:	32010109 	orr	w9, w8, #0x80000000
    c3b8:	0a15028a 	and	w10, w20, w21
    c3bc:	1a881128 	csel	w8, w9, w8, ne
    c3c0:	3600004a 	tbz	w10, #0, c3c8 <dwmac4_rd_prepare_tso_tx_desc+0xb0>
    c3c4:	d5033e9f 	dsb	st
    c3c8:	b9000e68 	str	w8, [x19,#12]
    c3cc:	a9447bfd 	ldp	x29, x30, [sp,#64]
    c3d0:	a9434ff4 	ldp	x20, x19, [sp,#48]
    c3d4:	a94257f6 	ldp	x22, x21, [sp,#32]
    c3d8:	a9415ff8 	ldp	x24, x23, [sp,#16]
    c3dc:	a8c567fa 	ldp	x26, x25, [sp],#80
    c3e0:	d65f03c0 	ret

000000000000c3e4 <dwmac4_set_tx_owner>:
    c3e4:	f81e0ff3 	str	x19, [sp,#-32]!
    c3e8:	a9017bfd 	stp	x29, x30, [sp,#16]
    c3ec:	910043fd 	add	x29, sp, #0x10
    c3f0:	aa0003f3 	mov	x19, x0
    c3f4:	94000000 	bl	0 <_mcount>
    c3f8:	b9400e68 	ldr	w8, [x19,#12]
    c3fc:	32010108 	orr	w8, w8, #0x80000000
    c400:	b9000e68 	str	w8, [x19,#12]
    c404:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c408:	f84207f3 	ldr	x19, [sp],#32
    c40c:	d65f03c0 	ret

000000000000c410 <dwmac4_get_tx_owner>:
    c410:	f81e0ff3 	str	x19, [sp,#-32]!
    c414:	a9017bfd 	stp	x29, x30, [sp,#16]
    c418:	910043fd 	add	x29, sp, #0x10
    c41c:	aa0003f3 	mov	x19, x0
    c420:	94000000 	bl	0 <_mcount>
    c424:	b9400e68 	ldr	w8, [x19,#12]
    c428:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c42c:	531f7d00 	lsr	w0, w8, #31
    c430:	f84207f3 	ldr	x19, [sp],#32
    c434:	d65f03c0 	ret

000000000000c438 <dwmac4_release_tx_desc>:
    c438:	f81e0ff3 	str	x19, [sp,#-32]!
    c43c:	a9017bfd 	stp	x29, x30, [sp,#16]
    c440:	910043fd 	add	x29, sp, #0x10
    c444:	aa0003f3 	mov	x19, x0
    c448:	94000000 	bl	0 <_mcount>
    c44c:	f900067f 	str	xzr, [x19,#8]
    c450:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c454:	f84207f3 	ldr	x19, [sp],#32
    c458:	d65f03c0 	ret

000000000000c45c <dwmac4_rd_set_tx_ic>:
    c45c:	f81e0ff3 	str	x19, [sp,#-32]!
    c460:	a9017bfd 	stp	x29, x30, [sp,#16]
    c464:	910043fd 	add	x29, sp, #0x10
    c468:	aa0003f3 	mov	x19, x0
    c46c:	94000000 	bl	0 <_mcount>
    c470:	b9400a68 	ldr	w8, [x19,#8]
    c474:	32010108 	orr	w8, w8, #0x80000000
    c478:	b9000a68 	str	w8, [x19,#8]
    c47c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c480:	f84207f3 	ldr	x19, [sp],#32
    c484:	d65f03c0 	ret

000000000000c488 <dwmac4_get_tx_ls>:
    c488:	f81e0ff3 	str	x19, [sp,#-32]!
    c48c:	a9017bfd 	stp	x29, x30, [sp,#16]
    c490:	910043fd 	add	x29, sp, #0x10
    c494:	aa0003f3 	mov	x19, x0
    c498:	94000000 	bl	0 <_mcount>
    c49c:	b9400e68 	ldr	w8, [x19,#12]
    c4a0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c4a4:	531c7100 	ubfx	w0, w8, #28, #1
    c4a8:	f84207f3 	ldr	x19, [sp],#32
    c4ac:	d65f03c0 	ret

000000000000c4b0 <dwmac4_wrback_get_tx_status>:
    c4b0:	f81d0ff5 	str	x21, [sp,#-48]!
    c4b4:	a9014ff4 	stp	x20, x19, [sp,#16]
    c4b8:	a9027bfd 	stp	x29, x30, [sp,#32]
    c4bc:	910083fd 	add	x29, sp, #0x20
    c4c0:	aa0203f5 	mov	x21, x2
    c4c4:	aa0103f3 	mov	x19, x1
    c4c8:	aa0003f4 	mov	x20, x0
    c4cc:	94000000 	bl	0 <_mcount>
    c4d0:	b9400ea8 	ldr	w8, [x21,#12]
    c4d4:	37f800e8 	tbnz	w8, #31, c4f0 <dwmac4_wrback_get_tx_status+0x40>
    c4d8:	37e00108 	tbnz	w8, #28, c4f8 <dwmac4_wrback_get_tx_status+0x48>
    c4dc:	52800020 	mov	w0, #0x1                   	// #1
    c4e0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    c4e4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    c4e8:	f84307f5 	ldr	x21, [sp],#48
    c4ec:	d65f03c0 	ret
    c4f0:	52800080 	mov	w0, #0x4                   	// #4
    c4f4:	17fffffb 	b	c4e0 <dwmac4_wrback_get_tx_status+0x30>
    c4f8:	377800e8 	tbnz	w8, #15, c514 <dwmac4_wrback_get_tx_status+0x64>
    c4fc:	2a1f03e0 	mov	w0, wzr
    c500:	360fff08 	tbz	w8, #1, c4e0 <dwmac4_wrback_get_tx_status+0x30>
    c504:	f9401268 	ldr	x8, [x19,#32]
    c508:	91000508 	add	x8, x8, #0x1
    c50c:	f9001268 	str	x8, [x19,#32]
    c510:	17fffff4 	b	c4e0 <dwmac4_wrback_get_tx_status+0x30>
    c514:	377001a8 	tbnz	w8, #14, c548 <dwmac4_wrback_get_tx_status+0x98>
    c518:	37680208 	tbnz	w8, #13, c558 <dwmac4_wrback_get_tx_status+0xa8>
    c51c:	37580268 	tbnz	w8, #11, c568 <dwmac4_wrback_get_tx_status+0xb8>
    c520:	37500328 	tbnz	w8, #10, c584 <dwmac4_wrback_get_tx_status+0xd4>
    c524:	374003e8 	tbnz	w8, #8, c5a0 <dwmac4_wrback_get_tx_status+0xf0>
    c528:	374803c8 	tbnz	w8, #9, c5a0 <dwmac4_wrback_get_tx_status+0xf0>
    c52c:	37180448 	tbnz	w8, #3, c5b4 <dwmac4_wrback_get_tx_status+0x104>
    c530:	371004a8 	tbnz	w8, #2, c5c4 <dwmac4_wrback_get_tx_status+0x114>
    c534:	37000508 	tbnz	w8, #0, c5d4 <dwmac4_wrback_get_tx_status+0x124>
    c538:	37600568 	tbnz	w8, #12, c5e4 <dwmac4_wrback_get_tx_status+0x134>
    c53c:	52800040 	mov	w0, #0x2                   	// #2
    c540:	360ffd08 	tbz	w8, #1, c4e0 <dwmac4_wrback_get_tx_status+0x30>
    c544:	17fffff0 	b	c504 <dwmac4_wrback_get_tx_status+0x54>
    c548:	f9401a69 	ldr	x9, [x19,#48]
    c54c:	91000529 	add	x9, x9, #0x1
    c550:	f9001a69 	str	x9, [x19,#48]
    c554:	366ffe48 	tbz	w8, #13, c51c <dwmac4_wrback_get_tx_status+0x6c>
    c558:	f9401e69 	ldr	x9, [x19,#56]
    c55c:	91000529 	add	x9, x9, #0x1
    c560:	f9001e69 	str	x9, [x19,#56]
    c564:	365ffde8 	tbz	w8, #11, c520 <dwmac4_wrback_get_tx_status+0x70>
    c568:	f9400a69 	ldr	x9, [x19,#16]
    c56c:	91000529 	add	x9, x9, #0x1
    c570:	f9000a69 	str	x9, [x19,#16]
    c574:	f9404689 	ldr	x9, [x20,#136]
    c578:	91000529 	add	x9, x9, #0x1
    c57c:	f9004689 	str	x9, [x20,#136]
    c580:	3657fd28 	tbz	w8, #10, c524 <dwmac4_wrback_get_tx_status+0x74>
    c584:	f9400669 	ldr	x9, [x19,#8]
    c588:	91000529 	add	x9, x9, #0x1
    c58c:	f9000669 	str	x9, [x19,#8]
    c590:	f9404689 	ldr	x9, [x20,#136]
    c594:	91000529 	add	x9, x9, #0x1
    c598:	f9004689 	str	x9, [x20,#136]
    c59c:	3647fc68 	tbz	w8, #8, c528 <dwmac4_wrback_get_tx_status+0x78>
    c5a0:	f9402689 	ldr	x9, [x20,#72]
    c5a4:	d3441d0a 	ubfx	x10, x8, #4, #4
    c5a8:	8b0a0129 	add	x9, x9, x10
    c5ac:	f9002689 	str	x9, [x20,#72]
    c5b0:	361ffc08 	tbz	w8, #3, c530 <dwmac4_wrback_get_tx_status+0x80>
    c5b4:	f9401269 	ldr	x9, [x19,#32]
    c5b8:	91000529 	add	x9, x9, #0x1
    c5bc:	f9001269 	str	x9, [x19,#32]
    c5c0:	3617fba8 	tbz	w8, #2, c534 <dwmac4_wrback_get_tx_status+0x84>
    c5c4:	f9400269 	ldr	x9, [x19]
    c5c8:	91000529 	add	x9, x9, #0x1
    c5cc:	f9000269 	str	x9, [x19]
    c5d0:	3607fb48 	tbz	w8, #0, c538 <dwmac4_wrback_get_tx_status+0x88>
    c5d4:	f9402669 	ldr	x9, [x19,#72]
    c5d8:	91000529 	add	x9, x9, #0x1
    c5dc:	f9002669 	str	x9, [x19,#72]
    c5e0:	3667fae8 	tbz	w8, #12, c53c <dwmac4_wrback_get_tx_status+0x8c>
    c5e4:	f9402269 	ldr	x9, [x19,#64]
    c5e8:	91000529 	add	x9, x9, #0x1
    c5ec:	f9002269 	str	x9, [x19,#64]
    c5f0:	52800040 	mov	w0, #0x2                   	// #2
    c5f4:	360ff768 	tbz	w8, #1, c4e0 <dwmac4_wrback_get_tx_status+0x30>
    c5f8:	17ffffc3 	b	c504 <dwmac4_wrback_get_tx_status+0x54>

000000000000c5fc <dwmac4_rd_get_tx_len>:
    c5fc:	f81e0ff3 	str	x19, [sp,#-32]!
    c600:	a9017bfd 	stp	x29, x30, [sp,#16]
    c604:	910043fd 	add	x29, sp, #0x10
    c608:	aa0003f3 	mov	x19, x0
    c60c:	94000000 	bl	0 <_mcount>
    c610:	b9400a68 	ldr	w8, [x19,#8]
    c614:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c618:	12003500 	and	w0, w8, #0x3fff
    c61c:	f84207f3 	ldr	x19, [sp],#32
    c620:	d65f03c0 	ret

000000000000c624 <dwmac4_set_rx_owner>:
    c624:	f81e0ff3 	str	x19, [sp,#-32]!
    c628:	a9017bfd 	stp	x29, x30, [sp,#16]
    c62c:	910043fd 	add	x29, sp, #0x10
    c630:	aa0003f3 	mov	x19, x0
    c634:	94000000 	bl	0 <_mcount>
    c638:	b9400e68 	ldr	w8, [x19,#12]
    c63c:	32010108 	orr	w8, w8, #0x80000000
    c640:	b9000e68 	str	w8, [x19,#12]
    c644:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c648:	f84207f3 	ldr	x19, [sp],#32
    c64c:	d65f03c0 	ret

000000000000c650 <dwmac4_wrback_get_rx_frame_len>:
    c650:	f81e0ff3 	str	x19, [sp,#-32]!
    c654:	a9017bfd 	stp	x29, x30, [sp,#16]
    c658:	910043fd 	add	x29, sp, #0x10
    c65c:	aa0003f3 	mov	x19, x0
    c660:	94000000 	bl	0 <_mcount>
    c664:	b9400e68 	ldr	w8, [x19,#12]
    c668:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c66c:	12003900 	and	w0, w8, #0x7fff
    c670:	f84207f3 	ldr	x19, [sp],#32
    c674:	d65f03c0 	ret

000000000000c678 <dwmac4_wrback_get_rx_status>:
    c678:	f81d0ff5 	str	x21, [sp,#-48]!
    c67c:	a9014ff4 	stp	x20, x19, [sp,#16]
    c680:	a9027bfd 	stp	x29, x30, [sp,#32]
    c684:	910083fd 	add	x29, sp, #0x20
    c688:	aa0203f5 	mov	x21, x2
    c68c:	aa0103f3 	mov	x19, x1
    c690:	aa0003f4 	mov	x20, x0
    c694:	94000000 	bl	0 <_mcount>
    c698:	b9400eaa 	ldr	w10, [x21,#12]
    c69c:	37f800ea 	tbnz	w10, #31, c6b8 <dwmac4_wrback_get_rx_status+0x40>
    c6a0:	37e0010a 	tbnz	w10, #28, c6c0 <dwmac4_wrback_get_rx_status+0x48>
    c6a4:	52800020 	mov	w0, #0x1                   	// #1
    c6a8:	a9427bfd 	ldp	x29, x30, [sp,#32]
    c6ac:	a9414ff4 	ldp	x20, x19, [sp,#16]
    c6b0:	f84307f5 	ldr	x21, [sp],#48
    c6b4:	d65f03c0 	ret
    c6b8:	52800100 	mov	w0, #0x8                   	// #8
    c6bc:	17fffffb 	b	c6a8 <dwmac4_wrback_get_rx_status+0x30>
    c6c0:	2940a2a9 	ldp	w9, w8, [x21,#4]
    c6c4:	377810aa 	tbnz	w10, #15, c8d8 <dwmac4_wrback_get_rx_status+0x260>
    c6c8:	2a1f03e0 	mov	w0, wzr
    c6cc:	36180089 	tbz	w9, #3, c6dc <dwmac4_wrback_get_rx_status+0x64>
    c6d0:	f940de6a 	ldr	x10, [x19,#440]
    c6d4:	9100054a 	add	x10, x10, #0x1
    c6d8:	f900de6a 	str	x10, [x19,#440]
    c6dc:	373000e9 	tbnz	w9, #6, c6f8 <dwmac4_wrback_get_rx_status+0x80>
    c6e0:	37200149 	tbnz	w9, #4, c708 <dwmac4_wrback_get_rx_status+0x90>
    c6e4:	53082d2a 	ubfx	w10, w9, #8, #4
    c6e8:	372801a9 	tbnz	w9, #5, c71c <dwmac4_wrback_get_rx_status+0xa4>
    c6ec:	71003d5f 	cmp	w10, #0xf
    c6f0:	54000209 	b.ls	c730 <dwmac4_wrback_get_rx_status+0xb8>
    c6f4:	1400004c 	b	c824 <dwmac4_wrback_get_rx_status+0x1ac>
    c6f8:	f940e66a 	ldr	x10, [x19,#456]
    c6fc:	9100054a 	add	x10, x10, #0x1
    c700:	f900e66a 	str	x10, [x19,#456]
    c704:	3627ff09 	tbz	w9, #4, c6e4 <dwmac4_wrback_get_rx_status+0x6c>
    c708:	f940ea6a 	ldr	x10, [x19,#464]
    c70c:	9100054a 	add	x10, x10, #0x1
    c710:	f900ea6a 	str	x10, [x19,#464]
    c714:	53082d2a 	ubfx	w10, w9, #8, #4
    c718:	362ffea9 	tbz	w9, #5, c6ec <dwmac4_wrback_get_rx_status+0x74>
    c71c:	f940ee6b 	ldr	x11, [x19,#472]
    c720:	9100056b 	add	x11, x11, #0x1
    c724:	f900ee6b 	str	x11, [x19,#472]
    c728:	71003d5f 	cmp	w10, #0xf
    c72c:	540007c8 	b.hi	c824 <dwmac4_wrback_get_rx_status+0x1ac>
    c730:	d280000b 	mov	x11, #0x0                   	// #0
    c734:	f2a0000b 	movk	x11, #0x0, lsl #16
    c738:	f2c0000b 	movk	x11, #0x0, lsl #32
    c73c:	f2e0000b 	movk	x11, #0x0, lsl #48
    c740:	1000008c 	adr	x12, c750 <dwmac4_wrback_get_rx_status+0xd8>
    c744:	386a696d 	ldrb	w13, [x11,x10]
    c748:	8b0d098c 	add	x12, x12, x13, lsl #2
    c74c:	d61f0180 	br	x12
    c750:	f940f26a 	ldr	x10, [x19,#480]
    c754:	9100054a 	add	x10, x10, #0x1
    c758:	f900f26a 	str	x10, [x19,#480]
    c75c:	36600669 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c760:	1400003b 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c764:	f940f66a 	ldr	x10, [x19,#488]
    c768:	9100054a 	add	x10, x10, #0x1
    c76c:	f900f66a 	str	x10, [x19,#488]
    c770:	366005c9 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c774:	14000036 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c778:	f940fa6a 	ldr	x10, [x19,#496]
    c77c:	9100054a 	add	x10, x10, #0x1
    c780:	f900fa6a 	str	x10, [x19,#496]
    c784:	36600529 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c788:	14000031 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c78c:	f940fe6a 	ldr	x10, [x19,#504]
    c790:	9100054a 	add	x10, x10, #0x1
    c794:	f900fe6a 	str	x10, [x19,#504]
    c798:	36600489 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c79c:	1400002c 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c7a0:	f941026a 	ldr	x10, [x19,#512]
    c7a4:	9100054a 	add	x10, x10, #0x1
    c7a8:	f901026a 	str	x10, [x19,#512]
    c7ac:	366003e9 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c7b0:	14000027 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c7b4:	f941066a 	ldr	x10, [x19,#520]
    c7b8:	9100054a 	add	x10, x10, #0x1
    c7bc:	f901066a 	str	x10, [x19,#520]
    c7c0:	36600349 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c7c4:	14000022 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c7c8:	f9410a6a 	ldr	x10, [x19,#528]
    c7cc:	9100054a 	add	x10, x10, #0x1
    c7d0:	f9010a6a 	str	x10, [x19,#528]
    c7d4:	366002a9 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c7d8:	1400001d 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c7dc:	f9410e6a 	ldr	x10, [x19,#536]
    c7e0:	9100054a 	add	x10, x10, #0x1
    c7e4:	f9010e6a 	str	x10, [x19,#536]
    c7e8:	36600209 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c7ec:	14000018 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c7f0:	f941126a 	ldr	x10, [x19,#544]
    c7f4:	9100054a 	add	x10, x10, #0x1
    c7f8:	f901126a 	str	x10, [x19,#544]
    c7fc:	36600169 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c800:	14000013 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c804:	f941166a 	ldr	x10, [x19,#552]
    c808:	9100054a 	add	x10, x10, #0x1
    c80c:	f901166a 	str	x10, [x19,#552]
    c810:	366000c9 	tbz	w9, #12, c828 <dwmac4_wrback_get_rx_status+0x1b0>
    c814:	1400000e 	b	c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c818:	f9411a6a 	ldr	x10, [x19,#560]
    c81c:	9100054a 	add	x10, x10, #0x1
    c820:	f9011a6a 	str	x10, [x19,#560]
    c824:	37600149 	tbnz	w9, #12, c84c <dwmac4_wrback_get_rx_status+0x1d4>
    c828:	376801a9 	tbnz	w9, #13, c85c <dwmac4_wrback_get_rx_status+0x1e4>
    c82c:	37780209 	tbnz	w9, #15, c86c <dwmac4_wrback_get_rx_status+0x1f4>
    c830:	37800268 	tbnz	w8, #16, c87c <dwmac4_wrback_get_rx_status+0x204>
    c834:	378802e8 	tbnz	w8, #17, c890 <dwmac4_wrback_get_rx_status+0x218>
    c838:	37d80368 	tbnz	w8, #27, c8a4 <dwmac4_wrback_get_rx_status+0x22c>
    c83c:	37e003c8 	tbnz	w8, #28, c8b4 <dwmac4_wrback_get_rx_status+0x23c>
    c840:	f266051f 	tst	x8, #0xc000000
    c844:	54000421 	b.ne	c8c8 <dwmac4_wrback_get_rx_status+0x250>
    c848:	17ffff98 	b	c6a8 <dwmac4_wrback_get_rx_status+0x30>
    c84c:	f9411e6a 	ldr	x10, [x19,#568]
    c850:	9100054a 	add	x10, x10, #0x1
    c854:	f9011e6a 	str	x10, [x19,#568]
    c858:	366ffea9 	tbz	w9, #13, c82c <dwmac4_wrback_get_rx_status+0x1b4>
    c85c:	f941226a 	ldr	x10, [x19,#576]
    c860:	9100054a 	add	x10, x10, #0x1
    c864:	f901226a 	str	x10, [x19,#576]
    c868:	367ffe49 	tbz	w9, #15, c830 <dwmac4_wrback_get_rx_status+0x1b8>
    c86c:	f9412669 	ldr	x9, [x19,#584]
    c870:	91000529 	add	x9, x9, #0x1
    c874:	f9012669 	str	x9, [x19,#584]
    c878:	3687fde8 	tbz	w8, #16, c834 <dwmac4_wrback_get_rx_status+0x1bc>
    c87c:	f9405e69 	ldr	x9, [x19,#184]
    c880:	52800020 	mov	w0, #0x1                   	// #1
    c884:	91000529 	add	x9, x9, #0x1
    c888:	f9005e69 	str	x9, [x19,#184]
    c88c:	368ffd68 	tbz	w8, #17, c838 <dwmac4_wrback_get_rx_status+0x1c0>
    c890:	f9405a69 	ldr	x9, [x19,#176]
    c894:	52800020 	mov	w0, #0x1                   	// #1
    c898:	91000529 	add	x9, x9, #0x1
    c89c:	f9005a69 	str	x9, [x19,#176]
    c8a0:	36dffce8 	tbz	w8, #27, c83c <dwmac4_wrback_get_rx_status+0x1c4>
    c8a4:	f9413669 	ldr	x9, [x19,#616]
    c8a8:	91000529 	add	x9, x9, #0x1
    c8ac:	f9013669 	str	x9, [x19,#616]
    c8b0:	36e7fc88 	tbz	w8, #28, c840 <dwmac4_wrback_get_rx_status+0x1c8>
    c8b4:	f9413a69 	ldr	x9, [x19,#624]
    c8b8:	91000529 	add	x9, x9, #0x1
    c8bc:	f9013a69 	str	x9, [x19,#624]
    c8c0:	f266051f 	tst	x8, #0xc000000
    c8c4:	54ffef20 	b.eq	c6a8 <dwmac4_wrback_get_rx_status+0x30>
    c8c8:	f9413e68 	ldr	x8, [x19,#632]
    c8cc:	91000508 	add	x8, x8, #0x1
    c8d0:	f9013e68 	str	x8, [x19,#632]
    c8d4:	17ffff75 	b	c6a8 <dwmac4_wrback_get_rx_status+0x30>
    c8d8:	37b8012a 	tbnz	w10, #23, c8fc <dwmac4_wrback_get_rx_status+0x284>
    c8dc:	37a8018a 	tbnz	w10, #21, c90c <dwmac4_wrback_get_rx_status+0x294>
    c8e0:	37b001ea 	tbnz	w10, #22, c91c <dwmac4_wrback_get_rx_status+0x2a4>
    c8e4:	37a0024a 	tbnz	w10, #20, c92c <dwmac4_wrback_get_rx_status+0x2b4>
    c8e8:	37c002aa 	tbnz	w10, #24, c93c <dwmac4_wrback_get_rx_status+0x2c4>
    c8ec:	3798036a 	tbnz	w10, #19, c958 <dwmac4_wrback_get_rx_status+0x2e0>
    c8f0:	52800020 	mov	w0, #0x1                   	// #1
    c8f4:	371feee9 	tbnz	w9, #3, c6d0 <dwmac4_wrback_get_rx_status+0x58>
    c8f8:	17ffff79 	b	c6dc <dwmac4_wrback_get_rx_status+0x64>
    c8fc:	f9402a8b 	ldr	x11, [x20,#80]
    c900:	9100056b 	add	x11, x11, #0x1
    c904:	f9002a8b 	str	x11, [x20,#80]
    c908:	36affeca 	tbz	w10, #21, c8e0 <dwmac4_wrback_get_rx_status+0x268>
    c90c:	f940526b 	ldr	x11, [x19,#160]
    c910:	9100056b 	add	x11, x11, #0x1
    c914:	f900526b 	str	x11, [x19,#160]
    c918:	36b7fe6a 	tbz	w10, #22, c8e4 <dwmac4_wrback_get_rx_status+0x26c>
    c91c:	f940566b 	ldr	x11, [x19,#168]
    c920:	9100056b 	add	x11, x11, #0x1
    c924:	f900566b 	str	x11, [x19,#168]
    c928:	36a7fe0a 	tbz	w10, #20, c8e8 <dwmac4_wrback_get_rx_status+0x270>
    c92c:	f9404a6b 	ldr	x11, [x19,#144]
    c930:	9100056b 	add	x11, x11, #0x1
    c934:	f9004a6b 	str	x11, [x19,#144]
    c938:	36c7fdaa 	tbz	w10, #24, c8ec <dwmac4_wrback_get_rx_status+0x274>
    c93c:	f9403e6b 	ldr	x11, [x19,#120]
    c940:	9100056b 	add	x11, x11, #0x1
    c944:	f9003e6b 	str	x11, [x19,#120]
    c948:	f940328b 	ldr	x11, [x20,#96]
    c94c:	9100056b 	add	x11, x11, #0x1
    c950:	f900328b 	str	x11, [x20,#96]
    c954:	369ffcea 	tbz	w10, #19, c8f0 <dwmac4_wrback_get_rx_status+0x278>
    c958:	f940426a 	ldr	x10, [x19,#128]
    c95c:	9100054a 	add	x10, x10, #0x1
    c960:	f900426a 	str	x10, [x19,#128]
    c964:	52800020 	mov	w0, #0x1                   	// #1
    c968:	371feb49 	tbnz	w9, #3, c6d0 <dwmac4_wrback_get_rx_status+0x58>
    c96c:	17ffff5c 	b	c6dc <dwmac4_wrback_get_rx_status+0x64>

000000000000c970 <dwmac4_rd_enable_tx_timestamp>:
    c970:	f81e0ff3 	str	x19, [sp,#-32]!
    c974:	a9017bfd 	stp	x29, x30, [sp,#16]
    c978:	910043fd 	add	x29, sp, #0x10
    c97c:	aa0003f3 	mov	x19, x0
    c980:	94000000 	bl	0 <_mcount>
    c984:	b9400a68 	ldr	w8, [x19,#8]
    c988:	32020108 	orr	w8, w8, #0x40000000
    c98c:	b9000a68 	str	w8, [x19,#8]
    c990:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c994:	f84207f3 	ldr	x19, [sp],#32
    c998:	d65f03c0 	ret

000000000000c99c <dwmac4_wrback_get_tx_timestamp_status>:
    c99c:	f81e0ff3 	str	x19, [sp,#-32]!
    c9a0:	a9017bfd 	stp	x29, x30, [sp,#16]
    c9a4:	910043fd 	add	x29, sp, #0x10
    c9a8:	aa0003f3 	mov	x19, x0
    c9ac:	94000000 	bl	0 <_mcount>
    c9b0:	b9400e68 	ldr	w8, [x19,#12]
    c9b4:	37f00088 	tbnz	w8, #30, c9c4 <dwmac4_wrback_get_tx_timestamp_status+0x28>
    c9b8:	52800029 	mov	w9, #0x1                   	// #1
    c9bc:	0a684520 	bic	w0, w9, w8, lsr #17
    c9c0:	14000002 	b	c9c8 <dwmac4_wrback_get_tx_timestamp_status+0x2c>
    c9c4:	128002a0 	mov	w0, #0xffffffea            	// #-22
    c9c8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    c9cc:	f84207f3 	ldr	x19, [sp],#32
    c9d0:	d65f03c0 	ret

000000000000c9d4 <dwmac4_get_timestamp>:
    c9d4:	29402408 	ldp	w8, w9, [x0]
    c9d8:	5299400a 	mov	w10, #0xca00                	// #51712
    c9dc:	72a7734a 	movk	w10, #0x3b9a, lsl #16
    c9e0:	9b0a2120 	madd	x0, x9, x10, x8
    c9e4:	d65f03c0 	ret

000000000000c9e8 <dwmac4_wrback_get_rx_timestamp_status>:
    c9e8:	f81e0ff3 	str	x19, [sp,#-32]!
    c9ec:	a9017bfd 	stp	x29, x30, [sp,#16]
    c9f0:	910043fd 	add	x29, sp, #0x10
    c9f4:	aa0003f3 	mov	x19, x0
    c9f8:	94000000 	bl	0 <_mcount>
    c9fc:	b9400e69 	ldr	w9, [x19,#12]
    ca00:	36d002c9 	tbz	w9, #26, ca58 <dwmac4_wrback_get_rx_timestamp_status+0x70>
    ca04:	b9400668 	ldr	w8, [x19,#4]
    ca08:	36700288 	tbz	w8, #14, ca58 <dwmac4_wrback_get_rx_timestamp_status+0x70>
    ca0c:	12020529 	and	w9, w9, #0xc0000000
    ca10:	5280002b 	mov	w11, #0x1                   	// #1
    ca14:	52a8000a 	mov	w10, #0x40000000            	// #1073741824
    ca18:	6b0a013f 	cmp	w9, w10
    ca1c:	540001a1 	b.ne	ca50 <dwmac4_wrback_get_rx_timestamp_status+0x68>
    ca20:	b940026c 	ldr	w12, [x19]
    ca24:	0a08018c 	and	w12, w12, w8
    ca28:	3100059f 	cmn	w12, #0x1
    ca2c:	54000160 	b.eq	ca58 <dwmac4_wrback_get_rx_timestamp_status+0x70>
    ca30:	2a1f03ec 	mov	w12, wzr
    ca34:	1100056d 	add	w13, w11, #0x1
    ca38:	7100297f 	cmp	w11, #0xa
    ca3c:	2a0d03eb 	mov	w11, w13
    ca40:	54fffecb 	b.lt	ca18 <dwmac4_wrback_get_rx_timestamp_status+0x30>
    ca44:	2a0d03eb 	mov	w11, w13
    ca48:	35fffe8c 	cbnz	w12, ca18 <dwmac4_wrback_get_rx_timestamp_status+0x30>
    ca4c:	14000005 	b	ca60 <dwmac4_wrback_get_rx_timestamp_status+0x78>
    ca50:	5280002c 	mov	w12, #0x1                   	// #1
    ca54:	17fffff8 	b	ca34 <dwmac4_wrback_get_rx_timestamp_status+0x4c>
    ca58:	128002a0 	mov	w0, #0xffffffea            	// #-22
    ca5c:	14000004 	b	ca6c <dwmac4_wrback_get_rx_timestamp_status+0x84>
    ca60:	71002dbf 	cmp	w13, #0xb
    ca64:	128001e8 	mov	w8, #0xfffffff0            	// #-16
    ca68:	1a8c0100 	csel	w0, w8, w12, eq
    ca6c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    ca70:	f84207f3 	ldr	x19, [sp],#32
    ca74:	d65f03c0 	ret

000000000000ca78 <dwmac4_display_ring>:
    ca78:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    ca7c:	a90157f6 	stp	x22, x21, [sp,#16]
    ca80:	a9024ff4 	stp	x20, x19, [sp,#32]
    ca84:	a9037bfd 	stp	x29, x30, [sp,#48]
    ca88:	9100c3fd 	add	x29, sp, #0x30
    ca8c:	2a0203f5 	mov	w21, w2
    ca90:	2a0103f3 	mov	w19, w1
    ca94:	aa0003f4 	mov	x20, x0
    ca98:	94000000 	bl	0 <_mcount>
    ca9c:	d2800008 	mov	x8, #0x0                   	// #0
    caa0:	d2800009 	mov	x9, #0x0                   	// #0
    caa4:	f2a00008 	movk	x8, #0x0, lsl #16
    caa8:	f2a00009 	movk	x9, #0x0, lsl #16
    caac:	d2800000 	mov	x0, #0x0                   	// #0
    cab0:	f2c00008 	movk	x8, #0x0, lsl #32
    cab4:	f2c00009 	movk	x9, #0x0, lsl #32
    cab8:	f2a00000 	movk	x0, #0x0, lsl #16
    cabc:	f2e00008 	movk	x8, #0x0, lsl #48
    cac0:	f2e00009 	movk	x9, #0x0, lsl #48
    cac4:	720002bf 	tst	w21, #0x1
    cac8:	f2c00000 	movk	x0, #0x0, lsl #32
    cacc:	9a881121 	csel	x1, x9, x8, ne
    cad0:	f2e00000 	movk	x0, #0x0, lsl #48
    cad4:	94000000 	bl	0 <printk>
    cad8:	340003f3 	cbz	w19, cb54 <dwmac4_display_ring+0xdc>
    cadc:	d2800017 	mov	x23, #0x0                   	// #0
    cae0:	d2800016 	mov	x22, #0x0                   	// #0
    cae4:	d2800018 	mov	x24, #0x0                   	// #0
    cae8:	f2a00017 	movk	x23, #0x0, lsl #16
    caec:	f2a00016 	movk	x22, #0x0, lsl #16
    caf0:	f2a00018 	movk	x24, #0x0, lsl #16
    caf4:	f2c00017 	movk	x23, #0x0, lsl #32
    caf8:	f2c00016 	movk	x22, #0x0, lsl #32
    cafc:	f2c00018 	movk	x24, #0x0, lsl #32
    cb00:	2a1f03f5 	mov	w21, wzr
    cb04:	f2e00017 	movk	x23, #0x0, lsl #48
    cb08:	f2e00016 	movk	x22, #0x0, lsl #48
    cb0c:	f2e00018 	movk	x24, #0x0, lsl #48
    cb10:	b73001b4 	tbnz	x20, #38, cb44 <dwmac4_display_ring+0xcc>
    cb14:	f94002e8 	ldr	x8, [x23]
    cb18:	cb080282 	sub	x2, x20, x8
    cb1c:	29401283 	ldp	w3, w4, [x20]
    cb20:	29411a85 	ldp	w5, w6, [x20,#8]
    cb24:	aa1603e0 	mov	x0, x22
    cb28:	2a1503e1 	mov	w1, w21
    cb2c:	94000000 	bl	0 <printk>
    cb30:	110006b5 	add	w21, w21, #0x1
    cb34:	6b15027f 	cmp	w19, w21
    cb38:	91004294 	add	x20, x20, #0x10
    cb3c:	540000c0 	b.eq	cb54 <dwmac4_display_ring+0xdc>
    cb40:	b637feb4 	tbz	x20, #38, cb14 <dwmac4_display_ring+0x9c>
    cb44:	f9400308 	ldr	x8, [x24]
    cb48:	92409689 	and	x9, x20, #0x3fffffffff
    cb4c:	8b090102 	add	x2, x8, x9
    cb50:	17fffff3 	b	cb1c <dwmac4_display_ring+0xa4>
    cb54:	a9437bfd 	ldp	x29, x30, [sp,#48]
    cb58:	a9424ff4 	ldp	x20, x19, [sp,#32]
    cb5c:	a94157f6 	ldp	x22, x21, [sp,#16]
    cb60:	a8c45ff8 	ldp	x24, x23, [sp],#64
    cb64:	d65f03c0 	ret

000000000000cb68 <dwmac4_set_mss_ctxt>:
    cb68:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    cb6c:	a9017bfd 	stp	x29, x30, [sp,#16]
    cb70:	910043fd 	add	x29, sp, #0x10
    cb74:	2a0103f3 	mov	w19, w1
    cb78:	aa0003f4 	mov	x20, x0
    cb7c:	94000000 	bl	0 <_mcount>
    cb80:	52a88008 	mov	w8, #0x44000000            	// #1140850688
    cb84:	f900029f 	str	xzr, [x20]
    cb88:	29012293 	stp	w19, w8, [x20,#8]
    cb8c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    cb90:	a8c24ff4 	ldp	x20, x19, [sp],#32
    cb94:	d65f03c0 	ret

000000000000cb98 <dwmac4_dma_init>:
    cb98:	f81b0ff9 	str	x25, [sp,#-80]!
    cb9c:	a9015ff8 	stp	x24, x23, [sp,#16]
    cba0:	a90257f6 	stp	x22, x21, [sp,#32]
    cba4:	a9034ff4 	stp	x20, x19, [sp,#48]
    cba8:	a9047bfd 	stp	x29, x30, [sp,#64]
    cbac:	910103fd 	add	x29, sp, #0x40
    cbb0:	2a0603f3 	mov	w19, w6
    cbb4:	2a0503f4 	mov	w20, w5
    cbb8:	2a0403f6 	mov	w22, w4
    cbbc:	2a0303f7 	mov	w23, w3
    cbc0:	2a0203f8 	mov	w24, w2
    cbc4:	2a0103f9 	mov	w25, w1
    cbc8:	aa0003f5 	mov	x21, x0
    cbcc:	94000000 	bl	0 <_mcount>
    cbd0:	7100031f 	cmp	w24, #0x0
    cbd4:	52820088 	mov	w8, #0x1004                	// #4100
    cbd8:	1a9f07eb 	cset	w11, ne
    cbdc:	8b0802a8 	add	x8, x21, x8
    cbe0:	b940010c 	ldr	w12, [x8]
    cbe4:	2a0b018b 	orr	w11, w12, w11
    cbe8:	710002ff 	cmp	w23, #0x0
    cbec:	3212016c 	orr	w12, w11, #0x4000
    cbf0:	1a8c016b 	csel	w11, w11, w12, eq
    cbf4:	710002df 	cmp	w22, #0x0
    cbf8:	3214016d 	orr	w13, w11, #0x1000
    cbfc:	5282200a 	mov	w10, #0x1100                	// #4352
    cc00:	1a8d016b 	csel	w11, w11, w13, eq
    cc04:	d5033d9f 	dsb	ld
    cc08:	d5033e9f 	dsb	st
    cc0c:	b900010b 	str	w11, [x8]
    cc10:	8b0a02aa 	add	x10, x21, x10
    cc14:	b940014b 	ldr	w11, [x10]
    cc18:	5282208c 	mov	w12, #0x1104                	// #4356
    cc1c:	d5033d9f 	dsb	ld
    cc20:	3210016b 	orr	w11, w11, #0x10000
    cc24:	53103f29 	lsl	w9, w25, #16
    cc28:	d5033e9f 	dsb	st
    cc2c:	b900014b 	str	w11, [x10]
    cc30:	8b0c02ab 	add	x11, x21, x12
    cc34:	b940016c 	ldr	w12, [x11]
    cc38:	5282210d 	mov	w13, #0x1108                	// #4360
    cc3c:	52822688 	mov	w8, #0x1134                	// #4404
    cc40:	d5033d9f 	dsb	ld
    cc44:	2a09018c 	orr	w12, w12, w9
    cc48:	5292082a 	mov	w10, #0x9041                	// #36929
    cc4c:	d5033e9f 	dsb	st
    cc50:	b900016c 	str	w12, [x11]
    cc54:	8b0d02ac 	add	x12, x21, x13
    cc58:	8b0802a8 	add	x8, x21, x8
    cc5c:	b940018d 	ldr	w13, [x12]
    cc60:	d5033d9f 	dsb	ld
    cc64:	72a0002a 	movk	w10, #0x1, lsl #16
    cc68:	5282228b 	mov	w11, #0x1114                	// #4372
    cc6c:	2a0901a9 	orr	w9, w13, w9
    cc70:	d5033e9f 	dsb	st
    cc74:	b9000189 	str	w9, [x12]
    cc78:	d5033e9f 	dsb	st
    cc7c:	b900010a 	str	w10, [x8]
    cc80:	52822388 	mov	w8, #0x111c                	// #4380
    cc84:	8b0b02ab 	add	x11, x21, x11
    cc88:	d5033e9f 	dsb	st
    cc8c:	b9000174 	str	w20, [x11]
    cc90:	d5033e9f 	dsb	st
    cc94:	8b0802a8 	add	x8, x21, x8
    cc98:	b9000113 	str	w19, [x8]
    cc9c:	a9447bfd 	ldp	x29, x30, [sp,#64]
    cca0:	a9434ff4 	ldp	x20, x19, [sp,#48]
    cca4:	a94257f6 	ldp	x22, x21, [sp,#32]
    cca8:	a9415ff8 	ldp	x24, x23, [sp,#16]
    ccac:	f84507f9 	ldr	x25, [sp],#80
    ccb0:	d65f03c0 	ret

000000000000ccb4 <dwmac4_dma_axi>:
    ccb4:	f81d0ff5 	str	x21, [sp,#-48]!
    ccb8:	a9014ff4 	stp	x20, x19, [sp,#16]
    ccbc:	a9027bfd 	stp	x29, x30, [sp,#32]
    ccc0:	910083fd 	add	x29, sp, #0x20
    ccc4:	aa0103f3 	mov	x19, x1
    ccc8:	aa0003f4 	mov	x20, x0
    cccc:	94000000 	bl	0 <_mcount>
    ccd0:	d2800009 	mov	x9, #0x0                   	// #0
    ccd4:	d280000a 	mov	x10, #0x0                   	// #0
    ccd8:	52820088 	mov	w8, #0x1004                	// #4100
    ccdc:	f2a00009 	movk	x9, #0x0, lsl #16
    cce0:	f2a0000a 	movk	x10, #0x0, lsl #16
    cce4:	d2800000 	mov	x0, #0x0                   	// #0
    cce8:	8b080294 	add	x20, x20, x8
    ccec:	b9400295 	ldr	w21, [x20]
    ccf0:	d5033d9f 	dsb	ld
    ccf4:	f2c00009 	movk	x9, #0x0, lsl #32
    ccf8:	f2c0000a 	movk	x10, #0x0, lsl #32
    ccfc:	f2a00000 	movk	x0, #0x0, lsl #16
    cd00:	f2e00009 	movk	x9, #0x0, lsl #48
    cd04:	f2e0000a 	movk	x10, #0x0, lsl #48
    cd08:	720002bf 	tst	w21, #0x1
    cd0c:	f2c00000 	movk	x0, #0x0, lsl #32
    cd10:	9a890141 	csel	x1, x10, x9, eq
    cd14:	f2e00000 	movk	x0, #0x0, lsl #48
    cd18:	94000000 	bl	0 <printk>
    cd1c:	39400268 	ldrb	w8, [x19]
    cd20:	3940066b 	ldrb	w11, [x19,#1]
    cd24:	320102aa 	orr	w10, w21, #0x80000000
    cd28:	b9401269 	ldr	w9, [x19,#16]
    cd2c:	7100011f 	cmp	w8, #0x0
    cd30:	1a8a02a8 	csel	w8, w21, w10, eq
    cd34:	7100017f 	cmp	w11, #0x0
    cd38:	3202010a 	orr	w10, w8, #0x40000000
    cd3c:	1a8a0108 	csel	w8, w8, w10, eq
    cd40:	2940aa6b 	ldp	w11, w10, [x19,#4]
    cd44:	12a1e1ec 	mov	w12, #0xf0f0ffff            	// #-252641281
    cd48:	0a0c0108 	and	w8, w8, w12
    cd4c:	7100fd3f 	cmp	w9, #0x3f
    cd50:	33080d68 	bfi	w8, w11, #24, #4
    cd54:	33100d48 	bfi	w8, w10, #16, #4
    cd58:	540001cc 	b.gt	cd90 <dwmac4_dma_axi+0xdc>
    cd5c:	51001129 	sub	w9, w9, #0x4
    cd60:	7100713f 	cmp	w9, #0x1c
    cd64:	54000388 	b.hi	cdd4 <dwmac4_dma_axi+0x120>
    cd68:	d280000a 	mov	x10, #0x0                   	// #0
    cd6c:	f2a0000a 	movk	x10, #0x0, lsl #16
    cd70:	f2c0000a 	movk	x10, #0x0, lsl #32
    cd74:	f2e0000a 	movk	x10, #0x0, lsl #48
    cd78:	1000008b 	adr	x11, cd88 <dwmac4_dma_axi+0xd4>
    cd7c:	3869694c 	ldrb	w12, [x10,x9]
    cd80:	8b0c096b 	add	x11, x11, x12, lsl #2
    cd84:	d61f0160 	br	x11
    cd88:	321f0108 	orr	w8, w8, #0x2
    cd8c:	14000012 	b	cdd4 <dwmac4_dma_axi+0x120>
    cd90:	7101013f 	cmp	w9, #0x40
    cd94:	540001a0 	b.eq	cdc8 <dwmac4_dma_axi+0x114>
    cd98:	7102013f 	cmp	w9, #0x80
    cd9c:	540001a0 	b.eq	cdd0 <dwmac4_dma_axi+0x11c>
    cda0:	7104013f 	cmp	w9, #0x100
    cda4:	54000181 	b.ne	cdd4 <dwmac4_dma_axi+0x120>
    cda8:	32190108 	orr	w8, w8, #0x80
    cdac:	1400000a 	b	cdd4 <dwmac4_dma_axi+0x120>
    cdb0:	321e0108 	orr	w8, w8, #0x4
    cdb4:	14000008 	b	cdd4 <dwmac4_dma_axi+0x120>
    cdb8:	321d0108 	orr	w8, w8, #0x8
    cdbc:	14000006 	b	cdd4 <dwmac4_dma_axi+0x120>
    cdc0:	321c0108 	orr	w8, w8, #0x10
    cdc4:	14000004 	b	cdd4 <dwmac4_dma_axi+0x120>
    cdc8:	321b0108 	orr	w8, w8, #0x20
    cdcc:	14000002 	b	cdd4 <dwmac4_dma_axi+0x120>
    cdd0:	321a0108 	orr	w8, w8, #0x40
    cdd4:	b9401669 	ldr	w9, [x19,#20]
    cdd8:	7100fd3f 	cmp	w9, #0x3f
    cddc:	540001cc 	b.gt	ce14 <dwmac4_dma_axi+0x160>
    cde0:	51001129 	sub	w9, w9, #0x4
    cde4:	7100713f 	cmp	w9, #0x1c
    cde8:	54000388 	b.hi	ce58 <dwmac4_dma_axi+0x1a4>
    cdec:	d280000a 	mov	x10, #0x0                   	// #0
    cdf0:	f2a0000a 	movk	x10, #0x0, lsl #16
    cdf4:	f2c0000a 	movk	x10, #0x0, lsl #32
    cdf8:	f2e0000a 	movk	x10, #0x0, lsl #48
    cdfc:	1000008b 	adr	x11, ce0c <dwmac4_dma_axi+0x158>
    ce00:	3869694c 	ldrb	w12, [x10,x9]
    ce04:	8b0c096b 	add	x11, x11, x12, lsl #2
    ce08:	d61f0160 	br	x11
    ce0c:	321f0108 	orr	w8, w8, #0x2
    ce10:	14000012 	b	ce58 <dwmac4_dma_axi+0x1a4>
    ce14:	7101013f 	cmp	w9, #0x40
    ce18:	540001a0 	b.eq	ce4c <dwmac4_dma_axi+0x198>
    ce1c:	7102013f 	cmp	w9, #0x80
    ce20:	540001a0 	b.eq	ce54 <dwmac4_dma_axi+0x1a0>
    ce24:	7104013f 	cmp	w9, #0x100
    ce28:	54000181 	b.ne	ce58 <dwmac4_dma_axi+0x1a4>
    ce2c:	32190108 	orr	w8, w8, #0x80
    ce30:	1400000a 	b	ce58 <dwmac4_dma_axi+0x1a4>
    ce34:	321e0108 	orr	w8, w8, #0x4
    ce38:	14000008 	b	ce58 <dwmac4_dma_axi+0x1a4>
    ce3c:	321d0108 	orr	w8, w8, #0x8
    ce40:	14000006 	b	ce58 <dwmac4_dma_axi+0x1a4>
    ce44:	321c0108 	orr	w8, w8, #0x10
    ce48:	14000004 	b	ce58 <dwmac4_dma_axi+0x1a4>
    ce4c:	321b0108 	orr	w8, w8, #0x20
    ce50:	14000002 	b	ce58 <dwmac4_dma_axi+0x1a4>
    ce54:	321a0108 	orr	w8, w8, #0x40
    ce58:	b9401a69 	ldr	w9, [x19,#24]
    ce5c:	7100fd3f 	cmp	w9, #0x3f
    ce60:	540001cc 	b.gt	ce98 <dwmac4_dma_axi+0x1e4>
    ce64:	51001129 	sub	w9, w9, #0x4
    ce68:	7100713f 	cmp	w9, #0x1c
    ce6c:	54000388 	b.hi	cedc <dwmac4_dma_axi+0x228>
    ce70:	d280000a 	mov	x10, #0x0                   	// #0
    ce74:	f2a0000a 	movk	x10, #0x0, lsl #16
    ce78:	f2c0000a 	movk	x10, #0x0, lsl #32
    ce7c:	f2e0000a 	movk	x10, #0x0, lsl #48
    ce80:	1000008b 	adr	x11, ce90 <dwmac4_dma_axi+0x1dc>
    ce84:	3869694c 	ldrb	w12, [x10,x9]
    ce88:	8b0c096b 	add	x11, x11, x12, lsl #2
    ce8c:	d61f0160 	br	x11
    ce90:	321f0108 	orr	w8, w8, #0x2
    ce94:	14000012 	b	cedc <dwmac4_dma_axi+0x228>
    ce98:	7101013f 	cmp	w9, #0x40
    ce9c:	540001a0 	b.eq	ced0 <dwmac4_dma_axi+0x21c>
    cea0:	7102013f 	cmp	w9, #0x80
    cea4:	540001a0 	b.eq	ced8 <dwmac4_dma_axi+0x224>
    cea8:	7104013f 	cmp	w9, #0x100
    ceac:	54000181 	b.ne	cedc <dwmac4_dma_axi+0x228>
    ceb0:	32190108 	orr	w8, w8, #0x80
    ceb4:	1400000a 	b	cedc <dwmac4_dma_axi+0x228>
    ceb8:	321e0108 	orr	w8, w8, #0x4
    cebc:	14000008 	b	cedc <dwmac4_dma_axi+0x228>
    cec0:	321d0108 	orr	w8, w8, #0x8
    cec4:	14000006 	b	cedc <dwmac4_dma_axi+0x228>
    cec8:	321c0108 	orr	w8, w8, #0x10
    cecc:	14000004 	b	cedc <dwmac4_dma_axi+0x228>
    ced0:	321b0108 	orr	w8, w8, #0x20
    ced4:	14000002 	b	cedc <dwmac4_dma_axi+0x228>
    ced8:	321a0108 	orr	w8, w8, #0x40
    cedc:	b9401e69 	ldr	w9, [x19,#28]
    cee0:	7100fd3f 	cmp	w9, #0x3f
    cee4:	540001cc 	b.gt	cf1c <dwmac4_dma_axi+0x268>
    cee8:	51001129 	sub	w9, w9, #0x4
    ceec:	7100713f 	cmp	w9, #0x1c
    cef0:	54000388 	b.hi	cf60 <dwmac4_dma_axi+0x2ac>
    cef4:	d280000a 	mov	x10, #0x0                   	// #0
    cef8:	f2a0000a 	movk	x10, #0x0, lsl #16
    cefc:	f2c0000a 	movk	x10, #0x0, lsl #32
    cf00:	f2e0000a 	movk	x10, #0x0, lsl #48
    cf04:	1000008b 	adr	x11, cf14 <dwmac4_dma_axi+0x260>
    cf08:	3869694c 	ldrb	w12, [x10,x9]
    cf0c:	8b0c096b 	add	x11, x11, x12, lsl #2
    cf10:	d61f0160 	br	x11
    cf14:	321f0108 	orr	w8, w8, #0x2
    cf18:	14000012 	b	cf60 <dwmac4_dma_axi+0x2ac>
    cf1c:	7101013f 	cmp	w9, #0x40
    cf20:	540001a0 	b.eq	cf54 <dwmac4_dma_axi+0x2a0>
    cf24:	7102013f 	cmp	w9, #0x80
    cf28:	540001a0 	b.eq	cf5c <dwmac4_dma_axi+0x2a8>
    cf2c:	7104013f 	cmp	w9, #0x100
    cf30:	54000181 	b.ne	cf60 <dwmac4_dma_axi+0x2ac>
    cf34:	32190108 	orr	w8, w8, #0x80
    cf38:	1400000a 	b	cf60 <dwmac4_dma_axi+0x2ac>
    cf3c:	321e0108 	orr	w8, w8, #0x4
    cf40:	14000008 	b	cf60 <dwmac4_dma_axi+0x2ac>
    cf44:	321d0108 	orr	w8, w8, #0x8
    cf48:	14000006 	b	cf60 <dwmac4_dma_axi+0x2ac>
    cf4c:	321c0108 	orr	w8, w8, #0x10
    cf50:	14000004 	b	cf60 <dwmac4_dma_axi+0x2ac>
    cf54:	321b0108 	orr	w8, w8, #0x20
    cf58:	14000002 	b	cf60 <dwmac4_dma_axi+0x2ac>
    cf5c:	321a0108 	orr	w8, w8, #0x40
    cf60:	b9402269 	ldr	w9, [x19,#32]
    cf64:	7100fd3f 	cmp	w9, #0x3f
    cf68:	540001cc 	b.gt	cfa0 <dwmac4_dma_axi+0x2ec>
    cf6c:	51001129 	sub	w9, w9, #0x4
    cf70:	7100713f 	cmp	w9, #0x1c
    cf74:	54000388 	b.hi	cfe4 <dwmac4_dma_axi+0x330>
    cf78:	d280000a 	mov	x10, #0x0                   	// #0
    cf7c:	f2a0000a 	movk	x10, #0x0, lsl #16
    cf80:	f2c0000a 	movk	x10, #0x0, lsl #32
    cf84:	f2e0000a 	movk	x10, #0x0, lsl #48
    cf88:	1000008b 	adr	x11, cf98 <dwmac4_dma_axi+0x2e4>
    cf8c:	3869694c 	ldrb	w12, [x10,x9]
    cf90:	8b0c096b 	add	x11, x11, x12, lsl #2
    cf94:	d61f0160 	br	x11
    cf98:	321f0108 	orr	w8, w8, #0x2
    cf9c:	14000012 	b	cfe4 <dwmac4_dma_axi+0x330>
    cfa0:	7101013f 	cmp	w9, #0x40
    cfa4:	540001a0 	b.eq	cfd8 <dwmac4_dma_axi+0x324>
    cfa8:	7102013f 	cmp	w9, #0x80
    cfac:	540001a0 	b.eq	cfe0 <dwmac4_dma_axi+0x32c>
    cfb0:	7104013f 	cmp	w9, #0x100
    cfb4:	54000181 	b.ne	cfe4 <dwmac4_dma_axi+0x330>
    cfb8:	32190108 	orr	w8, w8, #0x80
    cfbc:	1400000a 	b	cfe4 <dwmac4_dma_axi+0x330>
    cfc0:	321e0108 	orr	w8, w8, #0x4
    cfc4:	14000008 	b	cfe4 <dwmac4_dma_axi+0x330>
    cfc8:	321d0108 	orr	w8, w8, #0x8
    cfcc:	14000006 	b	cfe4 <dwmac4_dma_axi+0x330>
    cfd0:	321c0108 	orr	w8, w8, #0x10
    cfd4:	14000004 	b	cfe4 <dwmac4_dma_axi+0x330>
    cfd8:	321b0108 	orr	w8, w8, #0x20
    cfdc:	14000002 	b	cfe4 <dwmac4_dma_axi+0x330>
    cfe0:	321a0108 	orr	w8, w8, #0x40
    cfe4:	b9402669 	ldr	w9, [x19,#36]
    cfe8:	7100fd3f 	cmp	w9, #0x3f
    cfec:	540001cc 	b.gt	d024 <dwmac4_dma_axi+0x370>
    cff0:	51001129 	sub	w9, w9, #0x4
    cff4:	7100713f 	cmp	w9, #0x1c
    cff8:	54000388 	b.hi	d068 <dwmac4_dma_axi+0x3b4>
    cffc:	d280000a 	mov	x10, #0x0                   	// #0
    d000:	f2a0000a 	movk	x10, #0x0, lsl #16
    d004:	f2c0000a 	movk	x10, #0x0, lsl #32
    d008:	f2e0000a 	movk	x10, #0x0, lsl #48
    d00c:	1000008b 	adr	x11, d01c <dwmac4_dma_axi+0x368>
    d010:	3869694c 	ldrb	w12, [x10,x9]
    d014:	8b0c096b 	add	x11, x11, x12, lsl #2
    d018:	d61f0160 	br	x11
    d01c:	321f0108 	orr	w8, w8, #0x2
    d020:	14000012 	b	d068 <dwmac4_dma_axi+0x3b4>
    d024:	7101013f 	cmp	w9, #0x40
    d028:	540001a0 	b.eq	d05c <dwmac4_dma_axi+0x3a8>
    d02c:	7102013f 	cmp	w9, #0x80
    d030:	540001a0 	b.eq	d064 <dwmac4_dma_axi+0x3b0>
    d034:	7104013f 	cmp	w9, #0x100
    d038:	54000181 	b.ne	d068 <dwmac4_dma_axi+0x3b4>
    d03c:	32190108 	orr	w8, w8, #0x80
    d040:	1400000a 	b	d068 <dwmac4_dma_axi+0x3b4>
    d044:	321e0108 	orr	w8, w8, #0x4
    d048:	14000008 	b	d068 <dwmac4_dma_axi+0x3b4>
    d04c:	321d0108 	orr	w8, w8, #0x8
    d050:	14000006 	b	d068 <dwmac4_dma_axi+0x3b4>
    d054:	321c0108 	orr	w8, w8, #0x10
    d058:	14000004 	b	d068 <dwmac4_dma_axi+0x3b4>
    d05c:	321b0108 	orr	w8, w8, #0x20
    d060:	14000002 	b	d068 <dwmac4_dma_axi+0x3b4>
    d064:	321a0108 	orr	w8, w8, #0x40
    d068:	b9402a69 	ldr	w9, [x19,#40]
    d06c:	7100fd3f 	cmp	w9, #0x3f
    d070:	540001cc 	b.gt	d0a8 <dwmac4_dma_axi+0x3f4>
    d074:	51001129 	sub	w9, w9, #0x4
    d078:	7100713f 	cmp	w9, #0x1c
    d07c:	54000388 	b.hi	d0ec <dwmac4_dma_axi+0x438>
    d080:	d280000a 	mov	x10, #0x0                   	// #0
    d084:	f2a0000a 	movk	x10, #0x0, lsl #16
    d088:	f2c0000a 	movk	x10, #0x0, lsl #32
    d08c:	f2e0000a 	movk	x10, #0x0, lsl #48
    d090:	1000008b 	adr	x11, d0a0 <dwmac4_dma_axi+0x3ec>
    d094:	3869694c 	ldrb	w12, [x10,x9]
    d098:	8b0c096b 	add	x11, x11, x12, lsl #2
    d09c:	d61f0160 	br	x11
    d0a0:	321f0108 	orr	w8, w8, #0x2
    d0a4:	14000012 	b	d0ec <dwmac4_dma_axi+0x438>
    d0a8:	7101013f 	cmp	w9, #0x40
    d0ac:	540001a0 	b.eq	d0e0 <dwmac4_dma_axi+0x42c>
    d0b0:	7102013f 	cmp	w9, #0x80
    d0b4:	540001a0 	b.eq	d0e8 <dwmac4_dma_axi+0x434>
    d0b8:	7104013f 	cmp	w9, #0x100
    d0bc:	54000181 	b.ne	d0ec <dwmac4_dma_axi+0x438>
    d0c0:	32190108 	orr	w8, w8, #0x80
    d0c4:	1400000a 	b	d0ec <dwmac4_dma_axi+0x438>
    d0c8:	321e0108 	orr	w8, w8, #0x4
    d0cc:	14000008 	b	d0ec <dwmac4_dma_axi+0x438>
    d0d0:	321d0108 	orr	w8, w8, #0x8
    d0d4:	14000006 	b	d0ec <dwmac4_dma_axi+0x438>
    d0d8:	321c0108 	orr	w8, w8, #0x10
    d0dc:	14000004 	b	d0ec <dwmac4_dma_axi+0x438>
    d0e0:	321b0108 	orr	w8, w8, #0x20
    d0e4:	14000002 	b	d0ec <dwmac4_dma_axi+0x438>
    d0e8:	321a0108 	orr	w8, w8, #0x40
    d0ec:	d5033e9f 	dsb	st
    d0f0:	b9000288 	str	w8, [x20]
    d0f4:	a9427bfd 	ldp	x29, x30, [sp,#32]
    d0f8:	a9414ff4 	ldp	x20, x19, [sp,#16]
    d0fc:	f84307f5 	ldr	x21, [sp],#48
    d100:	d65f03c0 	ret

000000000000d104 <dwmac4_dump_dma_regs>:
    d104:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    d108:	910003fd 	mov	x29, sp
    d10c:	94000000 	bl	0 <_mcount>
    d110:	a8c17bfd 	ldp	x29, x30, [sp],#16
    d114:	d65f03c0 	ret

000000000000d118 <dwmac4_dma_operation_mode>:
    d118:	f81d0ff5 	str	x21, [sp,#-48]!
    d11c:	a9014ff4 	stp	x20, x19, [sp,#16]
    d120:	a9027bfd 	stp	x29, x30, [sp,#32]
    d124:	910083fd 	add	x29, sp, #0x20
    d128:	2a0203f4 	mov	w20, w2
    d12c:	2a0103f5 	mov	w21, w1
    d130:	aa0003f3 	mov	x19, x0
    d134:	94000000 	bl	0 <_mcount>
    d138:	91340268 	add	x8, x19, #0xd00
    d13c:	b9400109 	ldr	w9, [x8]
    d140:	d5033d9f 	dsb	ld
    d144:	710006bf 	cmp	w21, #0x1
    d148:	54000061 	b.ne	d154 <dwmac4_dma_operation_mode+0x3c>
    d14c:	321f0129 	orr	w9, w9, #0x2
    d150:	1400001d 	b	d1c4 <dwmac4_dma_operation_mode+0xac>
    d154:	710086bf 	cmp	w21, #0x21
    d158:	121c0929 	and	w9, w9, #0x70
    d15c:	5400034b 	b.lt	d1c4 <dwmac4_dma_operation_mode+0xac>
    d160:	710102bf 	cmp	w21, #0x40
    d164:	5400006c 	b.gt	d170 <dwmac4_dma_operation_mode+0x58>
    d168:	321c0129 	orr	w9, w9, #0x10
    d16c:	14000016 	b	d1c4 <dwmac4_dma_operation_mode+0xac>
    d170:	710182bf 	cmp	w21, #0x60
    d174:	5400006c 	b.gt	d180 <dwmac4_dma_operation_mode+0x68>
    d178:	321b0129 	orr	w9, w9, #0x20
    d17c:	14000012 	b	d1c4 <dwmac4_dma_operation_mode+0xac>
    d180:	710202bf 	cmp	w21, #0x80
    d184:	5400006c 	b.gt	d190 <dwmac4_dma_operation_mode+0x78>
    d188:	321c0529 	orr	w9, w9, #0x30
    d18c:	1400000e 	b	d1c4 <dwmac4_dma_operation_mode+0xac>
    d190:	710302bf 	cmp	w21, #0xc0
    d194:	5400006c 	b.gt	d1a0 <dwmac4_dma_operation_mode+0x88>
    d198:	321a0129 	orr	w9, w9, #0x40
    d19c:	1400000a 	b	d1c4 <dwmac4_dma_operation_mode+0xac>
    d1a0:	710402bf 	cmp	w21, #0x100
    d1a4:	5400008c 	b.gt	d1b4 <dwmac4_dma_operation_mode+0x9c>
    d1a8:	52800a0a 	mov	w10, #0x50                  	// #80
    d1ac:	2a0a0129 	orr	w9, w9, w10
    d1b0:	14000005 	b	d1c4 <dwmac4_dma_operation_mode+0xac>
    d1b4:	321b0529 	orr	w9, w9, #0x60
    d1b8:	710606bf 	cmp	w21, #0x181
    d1bc:	52800e0a 	mov	w10, #0x70                  	// #112
    d1c0:	1a8ab129 	csel	w9, w9, w10, lt
    d1c4:	d5033e9f 	dsb	st
    d1c8:	b9000109 	str	w9, [x8]
    d1cc:	9134c268 	add	x8, x19, #0xd30
    d1d0:	b9400109 	ldr	w9, [x8]
    d1d4:	d5033d9f 	dsb	ld
    d1d8:	7100069f 	cmp	w20, #0x1
    d1dc:	54000061 	b.ne	d1e8 <dwmac4_dma_operation_mode+0xd0>
    d1e0:	321b0129 	orr	w9, w9, #0x20
    d1e4:	1400000c 	b	d214 <dwmac4_dma_operation_mode+0xfc>
    d1e8:	7100829f 	cmp	w20, #0x20
    d1ec:	121d0529 	and	w9, w9, #0x18
    d1f0:	5400006c 	b.gt	d1fc <dwmac4_dma_operation_mode+0xe4>
    d1f4:	321d0129 	orr	w9, w9, #0x8
    d1f8:	14000007 	b	d214 <dwmac4_dma_operation_mode+0xfc>
    d1fc:	7101069f 	cmp	w20, #0x41
    d200:	540000ab 	b.lt	d214 <dwmac4_dma_operation_mode+0xfc>
    d204:	321c0129 	orr	w9, w9, #0x10
    d208:	7101869f 	cmp	w20, #0x61
    d20c:	5280030a 	mov	w10, #0x18                  	// #24
    d210:	1a8ab129 	csel	w9, w9, w10, lt
    d214:	d5033e9f 	dsb	st
    d218:	b9000109 	str	w9, [x8]
    d21c:	9134b268 	add	x8, x19, #0xd2c
    d220:	b9400109 	ldr	w9, [x8]
    d224:	d5033d9f 	dsb	ld
    d228:	d5033e9f 	dsb	st
    d22c:	32080129 	orr	w9, w9, #0x1000000
    d230:	b9000109 	str	w9, [x8]
    d234:	a9427bfd 	ldp	x29, x30, [sp,#32]
    d238:	a9414ff4 	ldp	x20, x19, [sp,#16]
    d23c:	f84307f5 	ldr	x21, [sp],#48
    d240:	d65f03c0 	ret

000000000000d244 <dwmac4_get_hw_feature>:
    d244:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d248:	a9017bfd 	stp	x29, x30, [sp,#16]
    d24c:	910043fd 	add	x29, sp, #0x10
    d250:	aa0103f3 	mov	x19, x1
    d254:	aa0003f4 	mov	x20, x0
    d258:	94000000 	bl	0 <_mcount>
    d25c:	d2800009 	mov	x9, #0x0                   	// #0
    d260:	f2a00009 	movk	x9, #0x0, lsl #16
    d264:	f2c00009 	movk	x9, #0x0, lsl #32
    d268:	f2e00009 	movk	x9, #0x0, lsl #48
    d26c:	3dc00120 	ldr	q0, [x9]
    d270:	d2800009 	mov	x9, #0x0                   	// #0
    d274:	f2a00009 	movk	x9, #0x0, lsl #16
    d278:	f2c00009 	movk	x9, #0x0, lsl #32
    d27c:	f2e00009 	movk	x9, #0x0, lsl #48
    d280:	3dc00121 	ldr	q1, [x9]
    d284:	d2800009 	mov	x9, #0x0                   	// #0
    d288:	f2a00009 	movk	x9, #0x0, lsl #16
    d28c:	f2c00009 	movk	x9, #0x0, lsl #32
    d290:	f2e00009 	movk	x9, #0x0, lsl #48
    d294:	fd400122 	ldr	d2, [x9]
    d298:	d2800009 	mov	x9, #0x0                   	// #0
    d29c:	f2a00009 	movk	x9, #0x0, lsl #16
    d2a0:	f2c00009 	movk	x9, #0x0, lsl #32
    d2a4:	f2e00009 	movk	x9, #0x0, lsl #48
    d2a8:	91047288 	add	x8, x20, #0x11c
    d2ac:	fd400124 	ldr	d4, [x9]
    d2b0:	b9400108 	ldr	w8, [x8]
    d2b4:	4e040d03 	dup	v3.4s, w8
    d2b8:	6ea0b800 	neg	v0.4s, v0.4s
    d2bc:	6ea0b821 	neg	v1.4s, v1.4s
    d2c0:	6ea04460 	ushl	v0.4s, v3.4s, v0.4s
    d2c4:	6ea14461 	ushl	v1.4s, v3.4s, v1.4s
    d2c8:	0e040d03 	dup	v3.2s, w8
    d2cc:	12000109 	and	w9, w8, #0x1
    d2d0:	53082108 	ubfx	w8, w8, #8, #1
    d2d4:	d5033d9f 	dsb	ld
    d2d8:	b9002668 	str	w8, [x19,#36]
    d2dc:	d2800008 	mov	x8, #0x0                   	// #0
    d2e0:	2ea0b842 	neg	v2.2s, v2.2s
    d2e4:	2ea0b884 	neg	v4.2s, v4.2s
    d2e8:	f2a00008 	movk	x8, #0x0, lsl #16
    d2ec:	2ea24462 	ushl	v2.2s, v3.2s, v2.2s
    d2f0:	2ea44463 	ushl	v3.2s, v3.2s, v4.2s
    d2f4:	4f000424 	movi	v4.4s, #0x1
    d2f8:	f2c00008 	movk	x8, #0x0, lsl #32
    d2fc:	4e241c21 	and	v1.16b, v1.16b, v4.16b
    d300:	f2e00008 	movk	x8, #0x0, lsl #48
    d304:	3c814261 	stur	q1, [x19,#20]
    d308:	fd400101 	ldr	d1, [x8]
    d30c:	d2800008 	mov	x8, #0x0                   	// #0
    d310:	4e241c00 	and	v0.16b, v0.16b, v4.16b
    d314:	f2a00008 	movk	x8, #0x0, lsl #16
    d318:	3c804260 	stur	q0, [x19,#4]
    d31c:	0f000420 	movi	v0.2s, #0x1
    d320:	f2c00008 	movk	x8, #0x0, lsl #32
    d324:	f2e00008 	movk	x8, #0x0, lsl #48
    d328:	0e201c42 	and	v2.8b, v2.8b, v0.8b
    d32c:	fc02c262 	stur	d2, [x19,#44]
    d330:	fd400102 	ldr	d2, [x8]
    d334:	0e201c63 	and	v3.8b, v3.8b, v0.8b
    d338:	b9000269 	str	w9, [x19]
    d33c:	91048289 	add	x9, x20, #0x120
    d340:	2ea0b821 	neg	v1.2s, v1.2s
    d344:	fc03c263 	stur	d3, [x19,#60]
    d348:	b9400128 	ldr	w8, [x9]
    d34c:	0e040d03 	dup	v3.2s, w8
    d350:	2ea14461 	ushl	v1.2s, v3.2s, v1.2s
    d354:	91049288 	add	x8, x20, #0x124
    d358:	0e201c21 	and	v1.8b, v1.8b, v0.8b
    d35c:	2ea0b842 	neg	v2.2s, v2.2s
    d360:	d5033d9f 	dsb	ld
    d364:	fc034261 	stur	d1, [x19,#52]
    d368:	b9400108 	ldr	w8, [x8]
    d36c:	0e040d01 	dup	v1.2s, w8
    d370:	2ea24421 	ushl	v1.2s, v1.2s, v2.2s
    d374:	0f0005e2 	movi	v2.2s, #0xf
    d378:	0e221c21 	and	v1.8b, v1.8b, v2.8b
    d37c:	0ea08420 	add	v0.2s, v1.2s, v0.2s
    d380:	d5033d9f 	dsb	ld
    d384:	fd002a60 	str	d0, [x19,#80]
    d388:	b9002a7f 	str	wzr, [x19,#40]
    d38c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d390:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d394:	d65f03c0 	ret

000000000000d398 <dwmac4_rx_watchdog>:
    d398:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d39c:	a9017bfd 	stp	x29, x30, [sp,#16]
    d3a0:	910043fd 	add	x29, sp, #0x10
    d3a4:	2a0103f3 	mov	w19, w1
    d3a8:	aa0003f4 	mov	x20, x0
    d3ac:	94000000 	bl	0 <_mcount>
    d3b0:	52822708 	mov	w8, #0x1138                	// #4408
    d3b4:	d5033e9f 	dsb	st
    d3b8:	8b080288 	add	x8, x20, x8
    d3bc:	b9000113 	str	w19, [x8]
    d3c0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d3c4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d3c8:	d65f03c0 	ret

000000000000d3cc <dwmac4_enable_tso>:
    d3cc:	f81d0ff5 	str	x21, [sp,#-48]!
    d3d0:	a9014ff4 	stp	x20, x19, [sp,#16]
    d3d4:	a9027bfd 	stp	x29, x30, [sp,#32]
    d3d8:	910083fd 	add	x29, sp, #0x20
    d3dc:	2a0203f3 	mov	w19, w2
    d3e0:	2a0103f4 	mov	w20, w1
    d3e4:	aa0003f5 	mov	x21, x0
    d3e8:	94000000 	bl	0 <_mcount>
    d3ec:	52822088 	mov	w8, #0x1104                	// #4356
    d3f0:	0b131d08 	add	w8, w8, w19, lsl #7
    d3f4:	8b0802a8 	add	x8, x21, x8
    d3f8:	b9400109 	ldr	w9, [x8]
    d3fc:	d5033d9f 	dsb	ld
    d400:	d5033e9f 	dsb	st
    d404:	36000094 	tbz	w20, #0, d414 <dwmac4_enable_tso+0x48>
    d408:	32140129 	orr	w9, w9, #0x1000
    d40c:	b9000109 	str	w9, [x8]
    d410:	14000003 	b	d41c <dwmac4_enable_tso+0x50>
    d414:	12137929 	and	w9, w9, #0xffffefff
    d418:	b9000109 	str	w9, [x8]
    d41c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    d420:	a9414ff4 	ldp	x20, x19, [sp,#16]
    d424:	f84307f5 	ldr	x21, [sp],#48
    d428:	d65f03c0 	ret

000000000000d42c <dwmac4_dma_reset>:
    d42c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d430:	a9017bfd 	stp	x29, x30, [sp,#16]
    d434:	910043fd 	add	x29, sp, #0x10
    d438:	aa0003f3 	mov	x19, x0
    d43c:	94000000 	bl	0 <_mcount>
    d440:	91400673 	add	x19, x19, #0x1, lsl #12
    d444:	b9400268 	ldr	w8, [x19]
    d448:	d5033d9f 	dsb	ld
    d44c:	d5033e9f 	dsb	st
    d450:	52800134 	mov	w20, #0x9                   	// #9
    d454:	32000108 	orr	w8, w8, #0x1
    d458:	b9000268 	str	w8, [x19]
    d45c:	b9400268 	ldr	w8, [x19]
    d460:	d5033d9f 	dsb	ld
    d464:	36000448 	tbz	w8, #0, d4ec <dwmac4_dma_reset+0xc0>
    d468:	52912b00 	mov	w0, #0x8958                	// #35160
    d46c:	72a00820 	movk	w0, #0x41, lsl #16
    d470:	94000000 	bl	0 <__const_udelay>
    d474:	52912b00 	mov	w0, #0x8958                	// #35160
    d478:	72a00820 	movk	w0, #0x41, lsl #16
    d47c:	94000000 	bl	0 <__const_udelay>
    d480:	52912b00 	mov	w0, #0x8958                	// #35160
    d484:	72a00820 	movk	w0, #0x41, lsl #16
    d488:	94000000 	bl	0 <__const_udelay>
    d48c:	52912b00 	mov	w0, #0x8958                	// #35160
    d490:	72a00820 	movk	w0, #0x41, lsl #16
    d494:	94000000 	bl	0 <__const_udelay>
    d498:	52912b00 	mov	w0, #0x8958                	// #35160
    d49c:	72a00820 	movk	w0, #0x41, lsl #16
    d4a0:	94000000 	bl	0 <__const_udelay>
    d4a4:	52912b00 	mov	w0, #0x8958                	// #35160
    d4a8:	72a00820 	movk	w0, #0x41, lsl #16
    d4ac:	94000000 	bl	0 <__const_udelay>
    d4b0:	52912b00 	mov	w0, #0x8958                	// #35160
    d4b4:	72a00820 	movk	w0, #0x41, lsl #16
    d4b8:	94000000 	bl	0 <__const_udelay>
    d4bc:	52912b00 	mov	w0, #0x8958                	// #35160
    d4c0:	72a00820 	movk	w0, #0x41, lsl #16
    d4c4:	94000000 	bl	0 <__const_udelay>
    d4c8:	52912b00 	mov	w0, #0x8958                	// #35160
    d4cc:	72a00820 	movk	w0, #0x41, lsl #16
    d4d0:	94000000 	bl	0 <__const_udelay>
    d4d4:	52912b00 	mov	w0, #0x8958                	// #35160
    d4d8:	72a00820 	movk	w0, #0x41, lsl #16
    d4dc:	94000000 	bl	0 <__const_udelay>
    d4e0:	51000694 	sub	w20, w20, #0x1
    d4e4:	3100069f 	cmn	w20, #0x1
    d4e8:	54fffba1 	b.ne	d45c <dwmac4_dma_reset+0x30>
    d4ec:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d4f0:	131f7e88 	asr	w8, w20, #31
    d4f4:	121c6d00 	and	w0, w8, #0xfffffff0
    d4f8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d4fc:	d65f03c0 	ret

000000000000d500 <dwmac4_set_rx_tail_ptr>:
    d500:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d504:	a9017bfd 	stp	x29, x30, [sp,#16]
    d508:	910043fd 	add	x29, sp, #0x10
    d50c:	2a0103f3 	mov	w19, w1
    d510:	aa0003f4 	mov	x20, x0
    d514:	94000000 	bl	0 <_mcount>
    d518:	52822508 	mov	w8, #0x1128                	// #4392
    d51c:	d5033e9f 	dsb	st
    d520:	8b080288 	add	x8, x20, x8
    d524:	b9000113 	str	w19, [x8]
    d528:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d52c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d530:	d65f03c0 	ret

000000000000d534 <dwmac4_set_tx_tail_ptr>:
    d534:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d538:	a9017bfd 	stp	x29, x30, [sp,#16]
    d53c:	910043fd 	add	x29, sp, #0x10
    d540:	2a0103f3 	mov	w19, w1
    d544:	aa0003f4 	mov	x20, x0
    d548:	94000000 	bl	0 <_mcount>
    d54c:	52822408 	mov	w8, #0x1120                	// #4384
    d550:	d5033e9f 	dsb	st
    d554:	8b080288 	add	x8, x20, x8
    d558:	b9000113 	str	w19, [x8]
    d55c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d560:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d564:	d65f03c0 	ret

000000000000d568 <dwmac4_dma_start_tx>:
    d568:	f81e0ff3 	str	x19, [sp,#-32]!
    d56c:	a9017bfd 	stp	x29, x30, [sp,#16]
    d570:	910043fd 	add	x29, sp, #0x10
    d574:	aa0003f3 	mov	x19, x0
    d578:	94000000 	bl	0 <_mcount>
    d57c:	52822088 	mov	w8, #0x1104                	// #4356
    d580:	8b080268 	add	x8, x19, x8
    d584:	b9400109 	ldr	w9, [x8]
    d588:	d5033d9f 	dsb	ld
    d58c:	32000129 	orr	w9, w9, #0x1
    d590:	d5033e9f 	dsb	st
    d594:	b9000109 	str	w9, [x8]
    d598:	b9400268 	ldr	w8, [x19]
    d59c:	d5033d9f 	dsb	ld
    d5a0:	d5033e9f 	dsb	st
    d5a4:	321f0108 	orr	w8, w8, #0x2
    d5a8:	b9000268 	str	w8, [x19]
    d5ac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d5b0:	f84207f3 	ldr	x19, [sp],#32
    d5b4:	d65f03c0 	ret

000000000000d5b8 <dwmac4_dma_stop_tx>:
    d5b8:	f81e0ff3 	str	x19, [sp,#-32]!
    d5bc:	a9017bfd 	stp	x29, x30, [sp,#16]
    d5c0:	910043fd 	add	x29, sp, #0x10
    d5c4:	aa0003f3 	mov	x19, x0
    d5c8:	94000000 	bl	0 <_mcount>
    d5cc:	52822088 	mov	w8, #0x1104                	// #4356
    d5d0:	8b080268 	add	x8, x19, x8
    d5d4:	b9400109 	ldr	w9, [x8]
    d5d8:	d5033d9f 	dsb	ld
    d5dc:	121f7929 	and	w9, w9, #0xfffffffe
    d5e0:	d5033e9f 	dsb	st
    d5e4:	b9000109 	str	w9, [x8]
    d5e8:	b9400268 	ldr	w8, [x19]
    d5ec:	d5033d9f 	dsb	ld
    d5f0:	d5033e9f 	dsb	st
    d5f4:	121e7908 	and	w8, w8, #0xfffffffd
    d5f8:	b9000268 	str	w8, [x19]
    d5fc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d600:	f84207f3 	ldr	x19, [sp],#32
    d604:	d65f03c0 	ret

000000000000d608 <dwmac4_dma_start_rx>:
    d608:	f81e0ff3 	str	x19, [sp,#-32]!
    d60c:	a9017bfd 	stp	x29, x30, [sp,#16]
    d610:	910043fd 	add	x29, sp, #0x10
    d614:	aa0003f3 	mov	x19, x0
    d618:	94000000 	bl	0 <_mcount>
    d61c:	52822108 	mov	w8, #0x1108                	// #4360
    d620:	8b080268 	add	x8, x19, x8
    d624:	b9400109 	ldr	w9, [x8]
    d628:	d5033d9f 	dsb	ld
    d62c:	32000129 	orr	w9, w9, #0x1
    d630:	d5033e9f 	dsb	st
    d634:	b9000109 	str	w9, [x8]
    d638:	b9400268 	ldr	w8, [x19]
    d63c:	d5033d9f 	dsb	ld
    d640:	d5033e9f 	dsb	st
    d644:	32000108 	orr	w8, w8, #0x1
    d648:	b9000268 	str	w8, [x19]
    d64c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d650:	f84207f3 	ldr	x19, [sp],#32
    d654:	d65f03c0 	ret

000000000000d658 <dwmac4_dma_stop_rx>:
    d658:	f81e0ff3 	str	x19, [sp,#-32]!
    d65c:	a9017bfd 	stp	x29, x30, [sp,#16]
    d660:	910043fd 	add	x29, sp, #0x10
    d664:	aa0003f3 	mov	x19, x0
    d668:	94000000 	bl	0 <_mcount>
    d66c:	52822108 	mov	w8, #0x1108                	// #4360
    d670:	8b080268 	add	x8, x19, x8
    d674:	b9400109 	ldr	w9, [x8]
    d678:	d5033d9f 	dsb	ld
    d67c:	121f7929 	and	w9, w9, #0xfffffffe
    d680:	d5033e9f 	dsb	st
    d684:	b9000109 	str	w9, [x8]
    d688:	b9400268 	ldr	w8, [x19]
    d68c:	d5033d9f 	dsb	ld
    d690:	d5033e9f 	dsb	st
    d694:	121f7908 	and	w8, w8, #0xfffffffe
    d698:	b9000268 	str	w8, [x19]
    d69c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d6a0:	f84207f3 	ldr	x19, [sp],#32
    d6a4:	d65f03c0 	ret

000000000000d6a8 <dwmac4_set_tx_ring_len>:
    d6a8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d6ac:	a9017bfd 	stp	x29, x30, [sp,#16]
    d6b0:	910043fd 	add	x29, sp, #0x10
    d6b4:	2a0103f3 	mov	w19, w1
    d6b8:	aa0003f4 	mov	x20, x0
    d6bc:	94000000 	bl	0 <_mcount>
    d6c0:	52822588 	mov	w8, #0x112c                	// #4396
    d6c4:	d5033e9f 	dsb	st
    d6c8:	8b080288 	add	x8, x20, x8
    d6cc:	b9000113 	str	w19, [x8]
    d6d0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d6d4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d6d8:	d65f03c0 	ret

000000000000d6dc <dwmac4_set_rx_ring_len>:
    d6dc:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d6e0:	a9017bfd 	stp	x29, x30, [sp,#16]
    d6e4:	910043fd 	add	x29, sp, #0x10
    d6e8:	2a0103f3 	mov	w19, w1
    d6ec:	aa0003f4 	mov	x20, x0
    d6f0:	94000000 	bl	0 <_mcount>
    d6f4:	52822608 	mov	w8, #0x1130                	// #4400
    d6f8:	d5033e9f 	dsb	st
    d6fc:	8b080288 	add	x8, x20, x8
    d700:	b9000113 	str	w19, [x8]
    d704:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d708:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d70c:	d65f03c0 	ret

000000000000d710 <dwmac4_enable_dma_irq>:
    d710:	f81e0ff3 	str	x19, [sp,#-32]!
    d714:	a9017bfd 	stp	x29, x30, [sp,#16]
    d718:	910043fd 	add	x29, sp, #0x10
    d71c:	aa0003f3 	mov	x19, x0
    d720:	94000000 	bl	0 <_mcount>
    d724:	52822688 	mov	w8, #0x1134                	// #4404
    d728:	52920829 	mov	w9, #0x9041                	// #36929
    d72c:	d5033e9f 	dsb	st
    d730:	8b080268 	add	x8, x19, x8
    d734:	72a00029 	movk	w9, #0x1, lsl #16
    d738:	b9000109 	str	w9, [x8]
    d73c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d740:	f84207f3 	ldr	x19, [sp],#32
    d744:	d65f03c0 	ret

000000000000d748 <dwmac410_enable_dma_irq>:
    d748:	f81e0ff3 	str	x19, [sp,#-32]!
    d74c:	a9017bfd 	stp	x29, x30, [sp,#16]
    d750:	910043fd 	add	x29, sp, #0x10
    d754:	aa0003f3 	mov	x19, x0
    d758:	94000000 	bl	0 <_mcount>
    d75c:	52822688 	mov	w8, #0x1134                	// #4404
    d760:	d5033e9f 	dsb	st
    d764:	8b080268 	add	x8, x19, x8
    d768:	529a0829 	mov	w9, #0xd041                	// #53313
    d76c:	b9000109 	str	w9, [x8]
    d770:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d774:	f84207f3 	ldr	x19, [sp],#32
    d778:	d65f03c0 	ret

000000000000d77c <dwmac4_disable_dma_irq>:
    d77c:	f81e0ff3 	str	x19, [sp,#-32]!
    d780:	a9017bfd 	stp	x29, x30, [sp,#16]
    d784:	910043fd 	add	x29, sp, #0x10
    d788:	aa0003f3 	mov	x19, x0
    d78c:	94000000 	bl	0 <_mcount>
    d790:	52822689 	mov	w9, #0x1134                	// #4404
    d794:	2a1f03e8 	mov	w8, wzr
    d798:	d5033e9f 	dsb	st
    d79c:	8b090269 	add	x9, x19, x9
    d7a0:	b9000128 	str	w8, [x9]
    d7a4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d7a8:	f84207f3 	ldr	x19, [sp],#32
    d7ac:	d65f03c0 	ret

000000000000d7b0 <dwmac4_dma_interrupt>:
    d7b0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d7b4:	a9017bfd 	stp	x29, x30, [sp,#16]
    d7b8:	910043fd 	add	x29, sp, #0x10
    d7bc:	aa0103f3 	mov	x19, x1
    d7c0:	aa0003f4 	mov	x20, x0
    d7c4:	94000000 	bl	0 <_mcount>
    d7c8:	52822c08 	mov	w8, #0x1160                	// #4448
    d7cc:	8b080288 	add	x8, x20, x8
    d7d0:	b9400109 	ldr	w9, [x8]
    d7d4:	d5033d9f 	dsb	ld
    d7d8:	377003c9 	tbnz	w9, #14, d850 <dwmac4_dma_interrupt+0xa0>
    d7dc:	2a1f03e0 	mov	w0, wzr
    d7e0:	36780289 	tbz	w9, #15, d830 <dwmac4_dma_interrupt+0x80>
    d7e4:	f940a26a 	ldr	x10, [x19,#320]
    d7e8:	9100054a 	add	x10, x10, #0x1
    d7ec:	f900a26a 	str	x10, [x19,#320]
    d7f0:	36300149 	tbz	w9, #6, d818 <dwmac4_dma_interrupt+0x68>
    d7f4:	5282268a 	mov	w10, #0x1134                	// #4404
    d7f8:	8b0a028a 	add	x10, x20, x10
    d7fc:	b940014a 	ldr	w10, [x10]
    d800:	d5033d9f 	dsb	ld
    d804:	363000aa 	tbz	w10, #6, d818 <dwmac4_dma_interrupt+0x68>
    d808:	f940a66a 	ldr	x10, [x19,#328]
    d80c:	321e0000 	orr	w0, w0, #0x4
    d810:	9100054a 	add	x10, x10, #0x1
    d814:	f900a66a 	str	x10, [x19,#328]
    d818:	360000a9 	tbz	w9, #0, d82c <dwmac4_dma_interrupt+0x7c>
    d81c:	f940ae6a 	ldr	x10, [x19,#344]
    d820:	321d0000 	orr	w0, w0, #0x8
    d824:	9100054a 	add	x10, x10, #0x1
    d828:	f900ae6a 	str	x10, [x19,#344]
    d82c:	375802c9 	tbnz	w9, #11, d884 <dwmac4_dma_interrupt+0xd4>
    d830:	529ff8ea 	mov	w10, #0xffc7                	// #65479
    d834:	72a007ea 	movk	w10, #0x3f, lsl #16
    d838:	d5033e9f 	dsb	st
    d83c:	0a0a0129 	and	w9, w9, w10
    d840:	b9000109 	str	w9, [x8]
    d844:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d848:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d84c:	d65f03c0 	ret
    d850:	37380229 	tbnz	w9, #7, d894 <dwmac4_dma_interrupt+0xe4>
    d854:	37400289 	tbnz	w9, #8, d8a4 <dwmac4_dma_interrupt+0xf4>
    d858:	374802e9 	tbnz	w9, #9, d8b4 <dwmac4_dma_interrupt+0x104>
    d85c:	37500349 	tbnz	w9, #10, d8c4 <dwmac4_dma_interrupt+0x114>
    d860:	370803a9 	tbnz	w9, #1, d8d4 <dwmac4_dma_interrupt+0x124>
    d864:	2a1f03e0 	mov	w0, wzr
    d868:	3667fbc9 	tbz	w9, #12, d7e0 <dwmac4_dma_interrupt+0x30>
    d86c:	f9408e6a 	ldr	x10, [x19,#280]
    d870:	52800020 	mov	w0, #0x1                   	// #1
    d874:	9100054a 	add	x10, x10, #0x1
    d878:	f9008e6a 	str	x10, [x19,#280]
    d87c:	377ffb49 	tbnz	w9, #15, d7e4 <dwmac4_dma_interrupt+0x34>
    d880:	17ffffec 	b	d830 <dwmac4_dma_interrupt+0x80>
    d884:	f940926a 	ldr	x10, [x19,#288]
    d888:	9100054a 	add	x10, x10, #0x1
    d88c:	f900926a 	str	x10, [x19,#288]
    d890:	17ffffe8 	b	d830 <dwmac4_dma_interrupt+0x80>
    d894:	f9407e6a 	ldr	x10, [x19,#248]
    d898:	9100054a 	add	x10, x10, #0x1
    d89c:	f9007e6a 	str	x10, [x19,#248]
    d8a0:	3647fdc9 	tbz	w9, #8, d858 <dwmac4_dma_interrupt+0xa8>
    d8a4:	f940826a 	ldr	x10, [x19,#256]
    d8a8:	9100054a 	add	x10, x10, #0x1
    d8ac:	f900826a 	str	x10, [x19,#256]
    d8b0:	364ffd69 	tbz	w9, #9, d85c <dwmac4_dma_interrupt+0xac>
    d8b4:	f940866a 	ldr	x10, [x19,#264]
    d8b8:	9100054a 	add	x10, x10, #0x1
    d8bc:	f900866a 	str	x10, [x19,#264]
    d8c0:	3657fd09 	tbz	w9, #10, d860 <dwmac4_dma_interrupt+0xb0>
    d8c4:	f9408a6a 	ldr	x10, [x19,#272]
    d8c8:	9100054a 	add	x10, x10, #0x1
    d8cc:	f9008a6a 	str	x10, [x19,#272]
    d8d0:	360ffca9 	tbz	w9, #1, d864 <dwmac4_dma_interrupt+0xb4>
    d8d4:	f940726a 	ldr	x10, [x19,#224]
    d8d8:	52800020 	mov	w0, #0x1                   	// #1
    d8dc:	9100054a 	add	x10, x10, #0x1
    d8e0:	f900726a 	str	x10, [x19,#224]
    d8e4:	3667f7e9 	tbz	w9, #12, d7e0 <dwmac4_dma_interrupt+0x30>
    d8e8:	17ffffe1 	b	d86c <dwmac4_dma_interrupt+0xbc>

000000000000d8ec <stmmac_dwmac4_set_mac_addr>:
    d8ec:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    d8f0:	a9014ff4 	stp	x20, x19, [sp,#16]
    d8f4:	a9027bfd 	stp	x29, x30, [sp,#32]
    d8f8:	910083fd 	add	x29, sp, #0x20
    d8fc:	2a0303f3 	mov	w19, w3
    d900:	2a0203f4 	mov	w20, w2
    d904:	aa0103f5 	mov	x21, x1
    d908:	aa0003f6 	mov	x22, x0
    d90c:	94000000 	bl	0 <_mcount>
    d910:	394016a8 	ldrb	w8, [x21,#5]
    d914:	394012a9 	ldrb	w9, [x21,#4]
    d918:	d5033e9f 	dsb	st
    d91c:	8b3442ca 	add	x10, x22, w20, uxtw
    d920:	33181d09 	bfi	w9, w8, #8, #8
    d924:	32010128 	orr	w8, w9, #0x80000000
    d928:	b9000148 	str	w8, [x10]
    d92c:	b94002a8 	ldr	w8, [x21]
    d930:	d5033e9f 	dsb	st
    d934:	8b3342c9 	add	x9, x22, w19, uxtw
    d938:	b9000128 	str	w8, [x9]
    d93c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    d940:	a9414ff4 	ldp	x20, x19, [sp,#16]
    d944:	a8c357f6 	ldp	x22, x21, [sp],#48
    d948:	d65f03c0 	ret

000000000000d94c <stmmac_dwmac4_set_mac>:
    d94c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    d950:	a9017bfd 	stp	x29, x30, [sp,#16]
    d954:	910043fd 	add	x29, sp, #0x10
    d958:	2a0103f3 	mov	w19, w1
    d95c:	aa0003f4 	mov	x20, x0
    d960:	94000000 	bl	0 <_mcount>
    d964:	b9400288 	ldr	w8, [x20]
    d968:	d5033d9f 	dsb	ld
    d96c:	32000509 	orr	w9, w8, #0x3
    d970:	121e7508 	and	w8, w8, #0xfffffffc
    d974:	7200027f 	tst	w19, #0x1
    d978:	d5033e9f 	dsb	st
    d97c:	1a881128 	csel	w8, w9, w8, ne
    d980:	b9000288 	str	w8, [x20]
    d984:	a9417bfd 	ldp	x29, x30, [sp,#16]
    d988:	a8c24ff4 	ldp	x20, x19, [sp],#32
    d98c:	d65f03c0 	ret

000000000000d990 <stmmac_dwmac4_get_mac_addr>:
    d990:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    d994:	a9014ff4 	stp	x20, x19, [sp,#16]
    d998:	a9027bfd 	stp	x29, x30, [sp,#32]
    d99c:	910083fd 	add	x29, sp, #0x20
    d9a0:	2a0303f3 	mov	w19, w3
    d9a4:	2a0203f4 	mov	w20, w2
    d9a8:	aa0103f5 	mov	x21, x1
    d9ac:	aa0003f6 	mov	x22, x0
    d9b0:	94000000 	bl	0 <_mcount>
    d9b4:	8b3442c8 	add	x8, x22, w20, uxtw
    d9b8:	8b3342c9 	add	x9, x22, w19, uxtw
    d9bc:	b9400108 	ldr	w8, [x8]
    d9c0:	d5033d9f 	dsb	ld
    d9c4:	b9400129 	ldr	w9, [x9]
    d9c8:	53087d2a 	lsr	w10, w9, #8
    d9cc:	d5033d9f 	dsb	ld
    d9d0:	390002a9 	strb	w9, [x21]
    d9d4:	390006aa 	strb	w10, [x21,#1]
    d9d8:	53107d2a 	lsr	w10, w9, #16
    d9dc:	53187d29 	lsr	w9, w9, #24
    d9e0:	390012a8 	strb	w8, [x21,#4]
    d9e4:	53087d08 	lsr	w8, w8, #8
    d9e8:	39000aaa 	strb	w10, [x21,#2]
    d9ec:	39000ea9 	strb	w9, [x21,#3]
    d9f0:	390016a8 	strb	w8, [x21,#5]
    d9f4:	a9427bfd 	ldp	x29, x30, [sp,#32]
    d9f8:	a9414ff4 	ldp	x20, x19, [sp,#16]
    d9fc:	a8c357f6 	ldp	x22, x21, [sp],#48
    da00:	d65f03c0 	ret

000000000000da04 <dwmac4_setup>:
    da04:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    da08:	a90157f6 	stp	x22, x21, [sp,#16]
    da0c:	a9024ff4 	stp	x20, x19, [sp,#32]
    da10:	a9037bfd 	stp	x29, x30, [sp,#48]
    da14:	9100c3fd 	add	x29, sp, #0x30
    da18:	aa0303f4 	mov	x20, x3
    da1c:	2a0203f6 	mov	w22, w2
    da20:	2a0103f5 	mov	w21, w1
    da24:	aa0003f7 	mov	x23, x0
    da28:	94000000 	bl	0 <_mcount>
    da2c:	d2800009 	mov	x9, #0x0                   	// #0
    da30:	f2a00009 	movk	x9, #0x0, lsl #16
    da34:	f2c00009 	movk	x9, #0x0, lsl #32
    da38:	910442e8 	add	x8, x23, #0x110
    da3c:	b9400118 	ldr	w24, [x8]
    da40:	d5033d9f 	dsb	ld
    da44:	f2e00009 	movk	x9, #0x0, lsl #48
    da48:	f9400120 	ldr	x0, [x9]
    da4c:	52901801 	mov	w1, #0x80c0                	// #32960
    da50:	72a04801 	movk	w1, #0x240, lsl #16
    da54:	52800d02 	mov	w2, #0x68                  	// #104
    da58:	94000000 	bl	0 <kmem_cache_alloc_trace>
    da5c:	aa0003f3 	mov	x19, x0
    da60:	b4000560 	cbz	x0, db0c <dwmac4_setup+0x108>
    da64:	f9002277 	str	x23, [x19,#64]
    da68:	29095a75 	stp	w21, w22, [x19,#72]
    da6c:	b900527f 	str	wzr, [x19,#80]
    da70:	340000b5 	cbz	w21, da84 <dwmac4_setup+0x80>
    da74:	5ac012a8 	clz	w8, w21
    da78:	528003e9 	mov	w9, #0x1f                  	// #31
    da7c:	4b080128 	sub	w8, w9, w8
    da80:	b9005268 	str	w8, [x19,#80]
    da84:	d2800009 	mov	x9, #0x0                   	// #0
    da88:	f2a00009 	movk	x9, #0x0, lsl #16
    da8c:	f2c00009 	movk	x9, #0x0, lsl #32
    da90:	d2800008 	mov	x8, #0x0                   	// #0
    da94:	f2e00009 	movk	x9, #0x0, lsl #48
    da98:	f2a00008 	movk	x8, #0x0, lsl #16
    da9c:	3dc00120 	ldr	q0, [x9]
    daa0:	f2c00008 	movk	x8, #0x0, lsl #32
    daa4:	f2e00008 	movk	x8, #0x0, lsl #48
    daa8:	f9000268 	str	x8, [x19]
    daac:	52880008 	mov	w8, #0x4000                	// #16384
    dab0:	b9003a68 	str	w8, [x19,#56]
    dab4:	3c828260 	stur	q0, [x19,#40]
    dab8:	34000378 	cbz	w24, db24 <dwmac4_setup+0x120>
    dabc:	d2800000 	mov	x0, #0x0                   	// #0
    dac0:	f2a00000 	movk	x0, #0x0, lsl #16
    dac4:	12001f15 	and	w21, w24, #0xff
    dac8:	f2c00000 	movk	x0, #0x0, lsl #32
    dacc:	53083f01 	ubfx	w1, w24, #8, #8
    dad0:	f2e00000 	movk	x0, #0x0, lsl #48
    dad4:	2a1503e2 	mov	w2, w21
    dad8:	94000000 	bl	0 <printk>
    dadc:	d2800008 	mov	x8, #0x0                   	// #0
    dae0:	d2800009 	mov	x9, #0x0                   	// #0
    dae4:	f2a00008 	movk	x8, #0x0, lsl #16
    dae8:	f2a00009 	movk	x9, #0x0, lsl #16
    daec:	f2c00008 	movk	x8, #0x0, lsl #32
    daf0:	f2c00009 	movk	x9, #0x0, lsl #32
    daf4:	f2e00008 	movk	x8, #0x0, lsl #48
    daf8:	f2e00009 	movk	x9, #0x0, lsl #48
    dafc:	710102bf 	cmp	w21, #0x40
    db00:	9a888128 	csel	x8, x9, x8, hi
    db04:	b9000295 	str	w21, [x20]
    db08:	f9000a68 	str	x8, [x19,#16]
    db0c:	aa1303e0 	mov	x0, x19
    db10:	a9437bfd 	ldp	x29, x30, [sp,#48]
    db14:	a9424ff4 	ldp	x20, x19, [sp,#32]
    db18:	a94157f6 	ldp	x22, x21, [sp,#16]
    db1c:	a8c45ff8 	ldp	x24, x23, [sp],#64
    db20:	d65f03c0 	ret
    db24:	d2800008 	mov	x8, #0x0                   	// #0
    db28:	f2a00008 	movk	x8, #0x0, lsl #16
    db2c:	f2c00008 	movk	x8, #0x0, lsl #32
    db30:	b900029f 	str	wzr, [x20]
    db34:	f2e00008 	movk	x8, #0x0, lsl #48
    db38:	17fffff4 	b	db08 <dwmac4_setup+0x104>

000000000000db3c <dwmac4_core_init>:
    db3c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    db40:	a9017bfd 	stp	x29, x30, [sp,#16]
    db44:	910043fd 	add	x29, sp, #0x10
    db48:	2a0103f4 	mov	w20, w1
    db4c:	aa0003f3 	mov	x19, x0
    db50:	94000000 	bl	0 <_mcount>
    db54:	52904009 	mov	w9, #0x8200                	// #33280
    db58:	72a002c9 	movk	w9, #0x16, lsl #16
    db5c:	f9402268 	ldr	x8, [x19,#64]
    db60:	7117729f 	cmp	w20, #0x5dc
    db64:	320a012a 	orr	w10, w9, #0x400000
    db68:	b940010b 	ldr	w11, [x8]
    db6c:	d5033d9f 	dsb	ld
    db70:	1a89c149 	csel	w9, w10, w9, gt
    db74:	b940626a 	ldr	w10, [x19,#96]
    db78:	2a090169 	orr	w9, w11, w9
    db7c:	3210012b 	orr	w11, w9, #0x10000
    db80:	711f429f 	cmp	w20, #0x7d0
    db84:	1a89c169 	csel	w9, w11, w9, gt
    db88:	340001aa 	cbz	w10, dbbc <dwmac4_core_init+0x80>
    db8c:	7100295f 	cmp	w10, #0xa
    db90:	540000c0 	b.eq	dba8 <dwmac4_core_init+0x6c>
    db94:	710fa15f 	cmp	w10, #0x3e8
    db98:	540000e1 	b.ne	dbb4 <dwmac4_core_init+0x78>
    db9c:	12107929 	and	w9, w9, #0xffff7fff
    dba0:	321f0129 	orr	w9, w9, #0x2
    dba4:	14000006 	b	dbbc <dwmac4_core_init+0x80>
    dba8:	12107529 	and	w9, w9, #0xffff3fff
    dbac:	5290004a 	mov	w10, #0x8002                	// #32770
    dbb0:	14000002 	b	dbb8 <dwmac4_core_init+0x7c>
    dbb4:	5298004a 	mov	w10, #0xc002                	// #49154
    dbb8:	2a0a0129 	orr	w9, w9, w10
    dbbc:	d5033e9f 	dsb	st
    dbc0:	b9000109 	str	w9, [x8]
    dbc4:	b9405a69 	ldr	w9, [x19,#88]
    dbc8:	d2800000 	mov	x0, #0x0                   	// #0
    dbcc:	d5033e9f 	dsb	st
    dbd0:	f2a00000 	movk	x0, #0x0, lsl #16
    dbd4:	f2c00000 	movk	x0, #0x0, lsl #32
    dbd8:	528002ea 	mov	w10, #0x17                  	// #23
    dbdc:	5280020b 	mov	w11, #0x10                  	// #16
    dbe0:	7100013f 	cmp	w9, #0x0
    dbe4:	f2e00000 	movk	x0, #0x0, lsl #48
    dbe8:	1a8a0169 	csel	w9, w11, w10, eq
    dbec:	9102d108 	add	x8, x8, #0xb4
    dbf0:	b9000109 	str	w9, [x8]
    dbf4:	94000000 	bl	0 <printk>
    dbf8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    dbfc:	a8c24ff4 	ldp	x20, x19, [sp],#32
    dc00:	d65f03c0 	ret

000000000000dc04 <dwmac4_rx_ipc_enable>:
    dc04:	f81e0ff3 	str	x19, [sp,#-32]!
    dc08:	a9017bfd 	stp	x29, x30, [sp,#16]
    dc0c:	910043fd 	add	x29, sp, #0x10
    dc10:	aa0003f3 	mov	x19, x0
    dc14:	94000000 	bl	0 <_mcount>
    dc18:	f9402268 	ldr	x8, [x19,#64]
    dc1c:	b9400109 	ldr	w9, [x8]
    dc20:	d5033d9f 	dsb	ld
    dc24:	b940566a 	ldr	w10, [x19,#84]
    dc28:	3205012b 	orr	w11, w9, #0x8000000
    dc2c:	12047929 	and	w9, w9, #0xf7ffffff
    dc30:	d5033e9f 	dsb	st
    dc34:	7100015f 	cmp	w10, #0x0
    dc38:	1a8b0129 	csel	w9, w9, w11, eq
    dc3c:	b9000109 	str	w9, [x8]
    dc40:	b9400108 	ldr	w8, [x8]
    dc44:	d5033d9f 	dsb	ld
    dc48:	a9417bfd 	ldp	x29, x30, [sp,#16]
    dc4c:	531b6d00 	ubfx	w0, w8, #27, #1
    dc50:	f84207f3 	ldr	x19, [sp],#32
    dc54:	d65f03c0 	ret

000000000000dc58 <dwmac4_dump_regs>:
    dc58:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
    dc5c:	910003fd 	mov	x29, sp
    dc60:	94000000 	bl	0 <_mcount>
    dc64:	a8c17bfd 	ldp	x29, x30, [sp],#16
    dc68:	d65f03c0 	ret

000000000000dc6c <dwmac4_irq_status>:
    dc6c:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    dc70:	a90157f6 	stp	x22, x21, [sp,#16]
    dc74:	a9024ff4 	stp	x20, x19, [sp,#32]
    dc78:	a9037bfd 	stp	x29, x30, [sp,#48]
    dc7c:	9100c3fd 	add	x29, sp, #0x30
    dc80:	aa0103f3 	mov	x19, x1
    dc84:	aa0003f4 	mov	x20, x0
    dc88:	94000000 	bl	0 <_mcount>
    dc8c:	f9402295 	ldr	x21, [x20,#64]
    dc90:	9102c2a8 	add	x8, x21, #0xb0
    dc94:	b9400116 	ldr	w22, [x8]
    dc98:	d5033d9f 	dsb	ld
    dc9c:	375001d6 	tbnz	w22, #10, dcd4 <dwmac4_irq_status+0x68>
    dca0:	37480236 	tbnz	w22, #9, dce4 <dwmac4_irq_status+0x78>
    dca4:	37580296 	tbnz	w22, #11, dcf4 <dwmac4_irq_status+0x88>
    dca8:	372002f6 	tbnz	w22, #4, dd04 <dwmac4_irq_status+0x98>
    dcac:	913082a8 	add	x8, x21, #0xc20
    dcb0:	b9400108 	ldr	w8, [x8]
    dcb4:	d5033d9f 	dsb	ld
    dcb8:	360000a8 	tbz	w8, #0, dccc <dwmac4_irq_status+0x60>
    dcbc:	9134b2a8 	add	x8, x21, #0xd2c
    dcc0:	b9400109 	ldr	w9, [x8]
    dcc4:	d5033d9f 	dsb	ld
    dcc8:	378002c9 	tbnz	w9, #16, dd20 <dwmac4_irq_status+0xb4>
    dccc:	2a1f03f4 	mov	w20, wzr
    dcd0:	14000018 	b	dd30 <dwmac4_irq_status+0xc4>
    dcd4:	f940be68 	ldr	x8, [x19,#376]
    dcd8:	91000508 	add	x8, x8, #0x1
    dcdc:	f900be68 	str	x8, [x19,#376]
    dce0:	364ffe36 	tbz	w22, #9, dca4 <dwmac4_irq_status+0x38>
    dce4:	f940c268 	ldr	x8, [x19,#384]
    dce8:	91000508 	add	x8, x8, #0x1
    dcec:	f900c268 	str	x8, [x19,#384]
    dcf0:	365ffdd6 	tbz	w22, #11, dca8 <dwmac4_irq_status+0x3c>
    dcf4:	f940c668 	ldr	x8, [x19,#392]
    dcf8:	91000508 	add	x8, x8, #0x1
    dcfc:	f900c668 	str	x8, [x19,#392]
    dd00:	3627fd76 	tbz	w22, #4, dcac <dwmac4_irq_status+0x40>
    dd04:	910302a8 	add	x8, x21, #0xc0
    dd08:	b9400108 	ldr	w8, [x8]
    dd0c:	d5033d9f 	dsb	ld
    dd10:	f940ba68 	ldr	x8, [x19,#368]
    dd14:	91000508 	add	x8, x8, #0x1
    dd18:	f900ba68 	str	x8, [x19,#368]
    dd1c:	17ffffe4 	b	dcac <dwmac4_irq_status+0x40>
    dd20:	d5033e9f 	dsb	st
    dd24:	52802014 	mov	w20, #0x100                 	// #256
    dd28:	32100129 	orr	w9, w9, #0x10000
    dd2c:	b9000109 	str	w9, [x8]
    dd30:	910392a8 	add	x8, x21, #0xe4
    dd34:	b9400117 	ldr	w23, [x8]
    dd38:	d5033d9f 	dsb	ld
    dd3c:	2a1603f8 	mov	w24, w22
    dd40:	36100158 	tbz	w24, #2, dd68 <dwmac4_irq_status+0xfc>
    dd44:	f9414268 	ldr	x8, [x19,#640]
    dd48:	91000508 	add	x8, x8, #0x1
    dd4c:	f9014268 	str	x8, [x19,#640]
    dd50:	362800d7 	tbz	w23, #5, dd68 <dwmac4_irq_status+0xfc>
    dd54:	d2800000 	mov	x0, #0x0                   	// #0
    dd58:	f2a00000 	movk	x0, #0x0, lsl #16
    dd5c:	f2c00000 	movk	x0, #0x0, lsl #32
    dd60:	f2e00000 	movk	x0, #0x0, lsl #48
    dd64:	94000000 	bl	0 <printk>
    dd68:	360801f8 	tbz	w24, #1, dda4 <dwmac4_irq_status+0x138>
    dd6c:	f9414668 	ldr	x8, [x19,#648]
    dd70:	d2800009 	mov	x9, #0x0                   	// #0
    dd74:	d280000a 	mov	x10, #0x0                   	// #0
    dd78:	f2a00009 	movk	x9, #0x0, lsl #16
    dd7c:	f2a0000a 	movk	x10, #0x0, lsl #16
    dd80:	f2c00009 	movk	x9, #0x0, lsl #32
    dd84:	f2c0000a 	movk	x10, #0x0, lsl #32
    dd88:	721e02ff 	tst	w23, #0x4
    dd8c:	f2e00009 	movk	x9, #0x0, lsl #48
    dd90:	f2e0000a 	movk	x10, #0x0, lsl #48
    dd94:	91000508 	add	x8, x8, #0x1
    dd98:	9a890140 	csel	x0, x10, x9, eq
    dd9c:	f9014668 	str	x8, [x19,#648]
    dda0:	94000000 	bl	0 <printk>
    dda4:	360005b6 	tbz	w22, #0, de58 <dwmac4_irq_status+0x1ec>
    dda8:	9103e2a8 	add	x8, x21, #0xf8
    ddac:	b9400108 	ldr	w8, [x8]
    ddb0:	d5033d9f 	dsb	ld
    ddb4:	f9414a69 	ldr	x9, [x19,#656]
    ddb8:	91000529 	add	x9, x9, #0x1
    ddbc:	f9014a69 	str	x9, [x19,#656]
    ddc0:	37980108 	tbnz	w8, #19, dde0 <dwmac4_irq_status+0x174>
    ddc4:	d2800000 	mov	x0, #0x0                   	// #0
    ddc8:	f2a00000 	movk	x0, #0x0, lsl #16
    ddcc:	f2c00000 	movk	x0, #0x0, lsl #32
    ddd0:	f2e00000 	movk	x0, #0x0, lsl #48
    ddd4:	f9014e7f 	str	xzr, [x19,#664]
    ddd8:	94000000 	bl	0 <printk>
    dddc:	1400001f 	b	de58 <dwmac4_irq_status+0x1ec>
    dde0:	53114909 	ubfx	w9, w8, #17, #2
    dde4:	5280002a 	mov	w10, #0x1                   	// #1
    dde8:	7100093f 	cmp	w9, #0x2
    ddec:	f9014e6a 	str	x10, [x19,#664]
    ddf0:	54000061 	b.ne	ddfc <dwmac4_irq_status+0x190>
    ddf4:	52807d01 	mov	w1, #0x3e8                 	// #1000
    ddf8:	14000006 	b	de10 <dwmac4_irq_status+0x1a4>
    ddfc:	7100053f 	cmp	w9, #0x1
    de00:	54000061 	b.ne	de0c <dwmac4_irq_status+0x1a0>
    de04:	52800c81 	mov	w1, #0x64                  	// #100
    de08:	14000002 	b	de10 <dwmac4_irq_status+0x1a4>
    de0c:	52800141 	mov	w1, #0xa                   	// #10
    de10:	d280000a 	mov	x10, #0x0                   	// #0
    de14:	d280000b 	mov	x11, #0x0                   	// #0
    de18:	f2a0000a 	movk	x10, #0x0, lsl #16
    de1c:	f2a0000b 	movk	x11, #0x0, lsl #16
    de20:	d2800000 	mov	x0, #0x0                   	// #0
    de24:	f2c0000a 	movk	x10, #0x0, lsl #32
    de28:	f2c0000b 	movk	x11, #0x0, lsl #32
    de2c:	f2a00000 	movk	x0, #0x0, lsl #16
    de30:	f2e0000a 	movk	x10, #0x0, lsl #48
    de34:	f2e0000b 	movk	x11, #0x0, lsl #48
    de38:	7200011f 	tst	w8, #0x1
    de3c:	f2c00000 	movk	x0, #0x0, lsl #32
    de40:	12000109 	and	w9, w8, #0x1
    de44:	9a8a0162 	csel	x2, x11, x10, eq
    de48:	f2e00000 	movk	x0, #0x0, lsl #48
    de4c:	f9015661 	str	x1, [x19,#680]
    de50:	f9015269 	str	x9, [x19,#672]
    de54:	94000000 	bl	0 <printk>
    de58:	2a1403e0 	mov	w0, w20
    de5c:	a9437bfd 	ldp	x29, x30, [sp,#48]
    de60:	a9424ff4 	ldp	x20, x19, [sp,#32]
    de64:	a94157f6 	ldp	x22, x21, [sp,#16]
    de68:	a8c45ff8 	ldp	x24, x23, [sp],#64
    de6c:	d65f03c0 	ret

000000000000de70 <dwmac4_set_filter>:
    de70:	f81b0ff9 	str	x25, [sp,#-80]!
    de74:	a9015ff8 	stp	x24, x23, [sp,#16]
    de78:	a90257f6 	stp	x22, x21, [sp,#32]
    de7c:	a9034ff4 	stp	x20, x19, [sp,#48]
    de80:	a9047bfd 	stp	x29, x30, [sp,#64]
    de84:	910103fd 	add	x29, sp, #0x40
    de88:	aa0103f4 	mov	x20, x1
    de8c:	aa0003f3 	mov	x19, x0
    de90:	910a1036 	add	x22, x1, #0x284
    de94:	94000000 	bl	0 <_mcount>
    de98:	b9423a88 	ldr	w8, [x20,#568]
    de9c:	f9401e95 	ldr	x21, [x20,#56]
    dea0:	374001c8 	tbnz	w8, #8, ded8 <dwmac4_set_filter+0x68>
    dea4:	37480088 	tbnz	w8, #9, deb4 <dwmac4_set_filter+0x44>
    dea8:	b942ae88 	ldr	w8, [x20,#684]
    deac:	7101051f 	cmp	w8, #0x41
    deb0:	5400072b 	b.lt	df94 <dwmac4_set_filter+0x124>
    deb4:	d5033e9f 	dsb	st
    deb8:	910042a8 	add	x8, x21, #0x10
    debc:	12800009 	mov	w9, #0xffffffff            	// #-1
    dec0:	b9000109 	str	w9, [x8]
    dec4:	d5033e9f 	dsb	st
    dec8:	910052a8 	add	x8, x21, #0x14
    decc:	b9000109 	str	w9, [x8]
    ded0:	52800217 	mov	w23, #0x10                  	// #16
    ded4:	14000002 	b	dedc <dwmac4_set_filter+0x6c>
    ded8:	52800037 	mov	w23, #0x1                   	// #1
    dedc:	b9429688 	ldr	w8, [x20,#660]
    dee0:	b9404e69 	ldr	w9, [x19,#76]
    dee4:	6b09011f 	cmp	w8, w9
    dee8:	5400006d 	b.le	def4 <dwmac4_set_filter+0x84>
    deec:	320002f7 	orr	w23, w23, #0x1
    def0:	14000020 	b	df70 <dwmac4_set_filter+0x100>
    def4:	f94002d9 	ldr	x25, [x22]
    def8:	52800038 	mov	w24, #0x1                   	// #1
    defc:	eb16033f 	cmp	x25, x22
    df00:	540001c0 	b.eq	df38 <dwmac4_set_filter+0xc8>
    df04:	52806194 	mov	w20, #0x30c                 	// #780
    df08:	f9402260 	ldr	x0, [x19,#64]
    df0c:	91004321 	add	x1, x25, #0x10
    df10:	51001282 	sub	w2, w20, #0x4
    df14:	2a1403e3 	mov	w3, w20
    df18:	94000000 	bl	d8ec <stmmac_dwmac4_set_mac_addr>
    df1c:	f9400339 	ldr	x25, [x25]
    df20:	11000718 	add	w24, w24, #0x1
    df24:	11002294 	add	w20, w20, #0x8
    df28:	eb16033f 	cmp	x25, x22
    df2c:	54fffee1 	b.ne	df08 <dwmac4_set_filter+0x98>
    df30:	7102031f 	cmp	w24, #0x80
    df34:	540001ec 	b.gt	df70 <dwmac4_set_filter+0x100>
    df38:	531d7308 	lsl	w8, w24, #3
    df3c:	110c1108 	add	w8, w8, #0x304
    df40:	51020709 	sub	w9, w24, #0x81
    df44:	2a1f03ea 	mov	w10, wzr
    df48:	5100110b 	sub	w11, w8, #0x4
    df4c:	d5033e9f 	dsb	st
    df50:	8b2bc2ab 	add	x11, x21, w11, sxtw
    df54:	b900016a 	str	w10, [x11]
    df58:	d5033e9f 	dsb	st
    df5c:	8b28c2ab 	add	x11, x21, w8, sxtw
    df60:	31000529 	adds	w9, w9, #0x1
    df64:	11002108 	add	w8, w8, #0x8
    df68:	b900016a 	str	w10, [x11]
    df6c:	54fffee3 	b.cc	df48 <dwmac4_set_filter+0xd8>
    df70:	d5033e9f 	dsb	st
    df74:	910022a8 	add	x8, x21, #0x8
    df78:	b9000117 	str	w23, [x8]
    df7c:	a9447bfd 	ldp	x29, x30, [sp,#64]
    df80:	a9434ff4 	ldp	x20, x19, [sp,#48]
    df84:	a94257f6 	ldp	x22, x21, [sp,#32]
    df88:	a9415ff8 	ldp	x24, x23, [sp,#16]
    df8c:	f84507f9 	ldr	x25, [sp],#80
    df90:	d65f03c0 	ret
    df94:	34000348 	cbz	w8, dffc <dwmac4_set_filter+0x18c>
    df98:	f90007ff 	str	xzr, [sp,#8]
    df9c:	aa1603f7 	mov	x23, x22
    dfa0:	f8418ef8 	ldr	x24, [x23,#24]!
    dfa4:	eb17031f 	cmp	x24, x23
    dfa8:	540002e0 	b.eq	e004 <dwmac4_set_filter+0x194>
    dfac:	52800039 	mov	w25, #0x1                   	// #1
    dfb0:	91004301 	add	x1, x24, #0x10
    dfb4:	12800000 	mov	w0, #0xffffffff            	// #-1
    dfb8:	528000c2 	mov	w2, #0x6                   	// #6
    dfbc:	94000000 	bl	0 <crc32_le>
    dfc0:	2a2003e8 	mvn	w8, w0
    dfc4:	5ac00108 	rbit	w8, w8
    dfc8:	531f7d09 	lsr	w9, w8, #31
    dfcc:	910023ea 	add	x10, sp, #0x8
    dfd0:	b37e012a 	bfi	x10, x9, #2, #1
    dfd4:	b9400149 	ldr	w9, [x10]
    dfd8:	531a7d08 	lsr	w8, w8, #26
    dfdc:	1ac82328 	lsl	w8, w25, w8
    dfe0:	2a090108 	orr	w8, w8, w9
    dfe4:	b9000148 	str	w8, [x10]
    dfe8:	f9400318 	ldr	x24, [x24]
    dfec:	eb17031f 	cmp	x24, x23
    dff0:	54fffe01 	b.ne	dfb0 <dwmac4_set_filter+0x140>
    dff4:	294123e9 	ldp	w9, w8, [sp,#8]
    dff8:	14000005 	b	e00c <dwmac4_set_filter+0x19c>
    dffc:	2a1f03f7 	mov	w23, wzr
    e000:	17ffffb7 	b	dedc <dwmac4_set_filter+0x6c>
    e004:	2a1f03e8 	mov	w8, wzr
    e008:	2a1f03e9 	mov	w9, wzr
    e00c:	d5033e9f 	dsb	st
    e010:	910042aa 	add	x10, x21, #0x10
    e014:	b9000149 	str	w9, [x10]
    e018:	d5033e9f 	dsb	st
    e01c:	52800097 	mov	w23, #0x4                   	// #4
    e020:	910052a9 	add	x9, x21, #0x14
    e024:	b9000128 	str	w8, [x9]
    e028:	17ffffad 	b	dedc <dwmac4_set_filter+0x6c>

000000000000e02c <dwmac4_flow_ctrl>:
    e02c:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    e030:	a9014ff4 	stp	x20, x19, [sp,#16]
    e034:	a9027bfd 	stp	x29, x30, [sp,#32]
    e038:	910083fd 	add	x29, sp, #0x20
    e03c:	2a0303f3 	mov	w19, w3
    e040:	2a0203f5 	mov	w21, w2
    e044:	2a0103f4 	mov	w20, w1
    e048:	aa0003f6 	mov	x22, x0
    e04c:	94000000 	bl	0 <_mcount>
    e050:	f94022c9 	ldr	x9, [x22,#64]
    e054:	37000095 	tbnz	w21, #0, e064 <dwmac4_flow_ctrl+0x38>
    e058:	52800048 	mov	w8, #0x2                   	// #2
    e05c:	37080115 	tbnz	w21, #1, e07c <dwmac4_flow_ctrl+0x50>
    e060:	1400000e 	b	e098 <dwmac4_flow_ctrl+0x6c>
    e064:	d5033e9f 	dsb	st
    e068:	91024128 	add	x8, x9, #0x90
    e06c:	5280002a 	mov	w10, #0x1                   	// #1
    e070:	b900010a 	str	w10, [x8]
    e074:	52800068 	mov	w8, #0x3                   	// #3
    e078:	36080115 	tbz	w21, #1, e098 <dwmac4_flow_ctrl+0x6c>
    e07c:	d5033e9f 	dsb	st
    e080:	9101c129 	add	x9, x9, #0x70
    e084:	b9000128 	str	w8, [x9]
    e088:	34000094 	cbz	w20, e098 <dwmac4_flow_ctrl+0x6c>
    e08c:	d5033e9f 	dsb	st
    e090:	33103e68 	bfi	w8, w19, #16, #16
    e094:	b9000128 	str	w8, [x9]
    e098:	a9427bfd 	ldp	x29, x30, [sp,#32]
    e09c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    e0a0:	a8c357f6 	ldp	x22, x21, [sp],#48
    e0a4:	d65f03c0 	ret

000000000000e0a8 <dwmac4_pmt>:
    e0a8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    e0ac:	a9017bfd 	stp	x29, x30, [sp,#16]
    e0b0:	910043fd 	add	x29, sp, #0x10
    e0b4:	aa0103f3 	mov	x19, x1
    e0b8:	aa0003f4 	mov	x20, x0
    e0bc:	94000000 	bl	0 <_mcount>
    e0c0:	f9402288 	ldr	x8, [x20,#64]
    e0c4:	f27b027f 	tst	x19, #0x20
    e0c8:	52800069 	mov	w9, #0x3                   	// #3
    e0cc:	528040aa 	mov	w10, #0x205                 	// #517
    e0d0:	1a8903e9 	csel	w9, wzr, w9, eq
    e0d4:	f27f027f 	tst	x19, #0x2
    e0d8:	2a0a012a 	orr	w10, w9, w10
    e0dc:	d5033e9f 	dsb	st
    e0e0:	1a8a0129 	csel	w9, w9, w10, eq
    e0e4:	91030108 	add	x8, x8, #0xc0
    e0e8:	b9000109 	str	w9, [x8]
    e0ec:	a9417bfd 	ldp	x29, x30, [sp,#16]
    e0f0:	a8c24ff4 	ldp	x20, x19, [sp],#32
    e0f4:	d65f03c0 	ret

000000000000e0f8 <dwmac4_set_umac_addr>:
    e0f8:	f81d0ff5 	str	x21, [sp,#-48]!
    e0fc:	a9014ff4 	stp	x20, x19, [sp,#16]
    e100:	a9027bfd 	stp	x29, x30, [sp,#32]
    e104:	910083fd 	add	x29, sp, #0x20
    e108:	2a0203f3 	mov	w19, w2
    e10c:	aa0103f4 	mov	x20, x1
    e110:	aa0003f5 	mov	x21, x0
    e114:	94000000 	bl	0 <_mcount>
    e118:	f94022a0 	ldr	x0, [x21,#64]
    e11c:	531d7268 	lsl	w8, w19, #3
    e120:	110c0102 	add	w2, w8, #0x300
    e124:	110c1103 	add	w3, w8, #0x304
    e128:	aa1403e1 	mov	x1, x20
    e12c:	94000000 	bl	d8ec <stmmac_dwmac4_set_mac_addr>
    e130:	a9427bfd 	ldp	x29, x30, [sp,#32]
    e134:	a9414ff4 	ldp	x20, x19, [sp,#16]
    e138:	f84307f5 	ldr	x21, [sp],#48
    e13c:	d65f03c0 	ret

000000000000e140 <dwmac4_get_umac_addr>:
    e140:	f81d0ff5 	str	x21, [sp,#-48]!
    e144:	a9014ff4 	stp	x20, x19, [sp,#16]
    e148:	a9027bfd 	stp	x29, x30, [sp,#32]
    e14c:	910083fd 	add	x29, sp, #0x20
    e150:	2a0203f3 	mov	w19, w2
    e154:	aa0103f4 	mov	x20, x1
    e158:	aa0003f5 	mov	x21, x0
    e15c:	94000000 	bl	0 <_mcount>
    e160:	f94022a0 	ldr	x0, [x21,#64]
    e164:	531d7268 	lsl	w8, w19, #3
    e168:	110c0102 	add	w2, w8, #0x300
    e16c:	110c1103 	add	w3, w8, #0x304
    e170:	aa1403e1 	mov	x1, x20
    e174:	94000000 	bl	d990 <stmmac_dwmac4_get_mac_addr>
    e178:	a9427bfd 	ldp	x29, x30, [sp,#32]
    e17c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    e180:	f84307f5 	ldr	x21, [sp],#48
    e184:	d65f03c0 	ret

000000000000e188 <dwmac4_debug>:
    e188:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    e18c:	a9017bfd 	stp	x29, x30, [sp,#16]
    e190:	910043fd 	add	x29, sp, #0x10
    e194:	aa0103f3 	mov	x19, x1
    e198:	aa0003f4 	mov	x20, x0
    e19c:	94000000 	bl	0 <_mcount>
    e1a0:	91342288 	add	x8, x20, #0xd08
    e1a4:	b9400108 	ldr	w8, [x8]
    e1a8:	d5033d9f 	dsb	ld
    e1ac:	2a0803e8 	mov	w8, w8
    e1b0:	37280828 	tbnz	w8, #5, e2b4 <dwmac4_debug+0x12c>
    e1b4:	37200888 	tbnz	w8, #4, e2c4 <dwmac4_debug+0x13c>
    e1b8:	371808e8 	tbnz	w8, #3, e2d4 <dwmac4_debug+0x14c>
    e1bc:	f27f0509 	ands	x9, x8, #0x6
    e1c0:	54000941 	b.ne	e2e8 <dwmac4_debug+0x160>
    e1c4:	36000088 	tbz	w8, #0, e1d4 <dwmac4_debug+0x4c>
    e1c8:	f9417668 	ldr	x8, [x19,#744]
    e1cc:	91000508 	add	x8, x8, #0x1
    e1d0:	f9017668 	str	x8, [x19,#744]
    e1d4:	9134e288 	add	x8, x20, #0xd38
    e1d8:	b9400108 	ldr	w8, [x8]
    e1dc:	d5033d9f 	dsb	ld
    e1e0:	2a0803e8 	mov	w8, w8
    e1e4:	f27c051f 	tst	x8, #0x30
    e1e8:	54000080 	b.eq	e1f8 <dwmac4_debug+0x70>
    e1ec:	f9419a69 	ldr	x9, [x19,#816]
    e1f0:	91000529 	add	x9, x9, #0x1
    e1f4:	f9019a69 	str	x9, [x19,#816]
    e1f8:	f27f0509 	ands	x9, x8, #0x6
    e1fc:	54000160 	b.eq	e228 <dwmac4_debug+0xa0>
    e200:	d341fd29 	lsr	x9, x9, #1
    e204:	7100053f 	cmp	w9, #0x1
    e208:	54000880 	b.eq	e318 <dwmac4_debug+0x190>
    e20c:	7100093f 	cmp	w9, #0x2
    e210:	540008e0 	b.eq	e32c <dwmac4_debug+0x1a4>
    e214:	71000d3f 	cmp	w9, #0x3
    e218:	54000bc1 	b.ne	e390 <dwmac4_debug+0x208>
    e21c:	f9419e69 	ldr	x9, [x19,#824]
    e220:	91000529 	add	x9, x9, #0x1
    e224:	f9019e69 	str	x9, [x19,#824]
    e228:	36000088 	tbz	w8, #0, e238 <dwmac4_debug+0xb0>
    e22c:	f941ae68 	ldr	x8, [x19,#856]
    e230:	91000508 	add	x8, x8, #0x1
    e234:	f901ae68 	str	x8, [x19,#856]
    e238:	91045288 	add	x8, x20, #0x114
    e23c:	b9400108 	ldr	w8, [x8]
    e240:	d5033d9f 	dsb	ld
    e244:	2a0803e8 	mov	w8, w8
    e248:	f26f0509 	ands	x9, x8, #0x60000
    e24c:	54000160 	b.eq	e278 <dwmac4_debug+0xf0>
    e250:	d351fd29 	lsr	x9, x9, #17
    e254:	7100053f 	cmp	w9, #0x1
    e258:	54000740 	b.eq	e340 <dwmac4_debug+0x1b8>
    e25c:	7100093f 	cmp	w9, #0x2
    e260:	540007a0 	b.eq	e354 <dwmac4_debug+0x1cc>
    e264:	71000d3f 	cmp	w9, #0x3
    e268:	540009e1 	b.ne	e3a4 <dwmac4_debug+0x21c>
    e26c:	f9417a69 	ldr	x9, [x19,#752]
    e270:	91000529 	add	x9, x9, #0x1
    e274:	f9017a69 	str	x9, [x19,#752]
    e278:	36800088 	tbz	w8, #16, e288 <dwmac4_debug+0x100>
    e27c:	f9418a69 	ldr	x9, [x19,#784]
    e280:	91000529 	add	x9, x9, #0x1
    e284:	f9018a69 	str	x9, [x19,#784]
    e288:	f27f0509 	ands	x9, x8, #0x6
    e28c:	54000060 	b.eq	e298 <dwmac4_debug+0x110>
    e290:	d341fd29 	lsr	x9, x9, #1
    e294:	f901b269 	str	x9, [x19,#864]
    e298:	36000088 	tbz	w8, #0, e2a8 <dwmac4_debug+0x120>
    e29c:	f941b668 	ldr	x8, [x19,#872]
    e2a0:	91000508 	add	x8, x8, #0x1
    e2a4:	f901b668 	str	x8, [x19,#872]
    e2a8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    e2ac:	a8c24ff4 	ldp	x20, x19, [sp],#32
    e2b0:	d65f03c0 	ret
    e2b4:	f9415a69 	ldr	x9, [x19,#688]
    e2b8:	91000529 	add	x9, x9, #0x1
    e2bc:	f9015a69 	str	x9, [x19,#688]
    e2c0:	3627f7c8 	tbz	w8, #4, e1b8 <dwmac4_debug+0x30>
    e2c4:	f9415e69 	ldr	x9, [x19,#696]
    e2c8:	91000529 	add	x9, x9, #0x1
    e2cc:	f9015e69 	str	x9, [x19,#696]
    e2d0:	361ff768 	tbz	w8, #3, e1bc <dwmac4_debug+0x34>
    e2d4:	f9416269 	ldr	x9, [x19,#704]
    e2d8:	91000529 	add	x9, x9, #0x1
    e2dc:	f9016269 	str	x9, [x19,#704]
    e2e0:	f27f0509 	ands	x9, x8, #0x6
    e2e4:	54fff700 	b.eq	e1c4 <dwmac4_debug+0x3c>
    e2e8:	d341fd29 	lsr	x9, x9, #1
    e2ec:	7100053f 	cmp	w9, #0x1
    e2f0:	540003c0 	b.eq	e368 <dwmac4_debug+0x1e0>
    e2f4:	7100093f 	cmp	w9, #0x2
    e2f8:	54000420 	b.eq	e37c <dwmac4_debug+0x1f4>
    e2fc:	71000d3f 	cmp	w9, #0x3
    e300:	540005c1 	b.ne	e3b8 <dwmac4_debug+0x230>
    e304:	f9416669 	ldr	x9, [x19,#712]
    e308:	91000529 	add	x9, x9, #0x1
    e30c:	f9016669 	str	x9, [x19,#712]
    e310:	3707f5c8 	tbnz	w8, #0, e1c8 <dwmac4_debug+0x40>
    e314:	17ffffb0 	b	e1d4 <dwmac4_debug+0x4c>
    e318:	f941a669 	ldr	x9, [x19,#840]
    e31c:	91000529 	add	x9, x9, #0x1
    e320:	f901a669 	str	x9, [x19,#840]
    e324:	3707f848 	tbnz	w8, #0, e22c <dwmac4_debug+0xa4>
    e328:	17ffffc4 	b	e238 <dwmac4_debug+0xb0>
    e32c:	f941a269 	ldr	x9, [x19,#832]
    e330:	91000529 	add	x9, x9, #0x1
    e334:	f901a269 	str	x9, [x19,#832]
    e338:	3707f7a8 	tbnz	w8, #0, e22c <dwmac4_debug+0xa4>
    e33c:	17ffffbf 	b	e238 <dwmac4_debug+0xb0>
    e340:	f9418269 	ldr	x9, [x19,#768]
    e344:	91000529 	add	x9, x9, #0x1
    e348:	f9018269 	str	x9, [x19,#768]
    e34c:	3787f988 	tbnz	w8, #16, e27c <dwmac4_debug+0xf4>
    e350:	17ffffce 	b	e288 <dwmac4_debug+0x100>
    e354:	f9418669 	ldr	x9, [x19,#776]
    e358:	91000529 	add	x9, x9, #0x1
    e35c:	f9018669 	str	x9, [x19,#776]
    e360:	3787f8e8 	tbnz	w8, #16, e27c <dwmac4_debug+0xf4>
    e364:	17ffffc9 	b	e288 <dwmac4_debug+0x100>
    e368:	f9416e69 	ldr	x9, [x19,#728]
    e36c:	91000529 	add	x9, x9, #0x1
    e370:	f9016e69 	str	x9, [x19,#728]
    e374:	3707f2a8 	tbnz	w8, #0, e1c8 <dwmac4_debug+0x40>
    e378:	17ffff97 	b	e1d4 <dwmac4_debug+0x4c>
    e37c:	f9416a69 	ldr	x9, [x19,#720]
    e380:	91000529 	add	x9, x9, #0x1
    e384:	f9016a69 	str	x9, [x19,#720]
    e388:	3707f208 	tbnz	w8, #0, e1c8 <dwmac4_debug+0x40>
    e38c:	17ffff92 	b	e1d4 <dwmac4_debug+0x4c>
    e390:	f941aa69 	ldr	x9, [x19,#848]
    e394:	91000529 	add	x9, x9, #0x1
    e398:	f901aa69 	str	x9, [x19,#848]
    e39c:	3707f488 	tbnz	w8, #0, e22c <dwmac4_debug+0xa4>
    e3a0:	17ffffa6 	b	e238 <dwmac4_debug+0xb0>
    e3a4:	f9417e69 	ldr	x9, [x19,#760]
    e3a8:	91000529 	add	x9, x9, #0x1
    e3ac:	f9017e69 	str	x9, [x19,#760]
    e3b0:	3787f668 	tbnz	w8, #16, e27c <dwmac4_debug+0xf4>
    e3b4:	17ffffb5 	b	e288 <dwmac4_debug+0x100>
    e3b8:	f9417269 	ldr	x9, [x19,#736]
    e3bc:	91000529 	add	x9, x9, #0x1
    e3c0:	f9017269 	str	x9, [x19,#736]
    e3c4:	3707f028 	tbnz	w8, #0, e1c8 <dwmac4_debug+0x40>
    e3c8:	17ffff83 	b	e1d4 <dwmac4_debug+0x4c>

000000000000e3cc <dwmac4_ctrl_ane>:
    e3cc:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    e3d0:	a9014ff4 	stp	x20, x19, [sp,#16]
    e3d4:	a9027bfd 	stp	x29, x30, [sp,#32]
    e3d8:	910083fd 	add	x29, sp, #0x20
    e3dc:	2a0303f3 	mov	w19, w3
    e3e0:	2a0203f4 	mov	w20, w2
    e3e4:	2a0103f5 	mov	w21, w1
    e3e8:	aa0003f6 	mov	x22, x0
    e3ec:	94000000 	bl	0 <_mcount>
    e3f0:	52824009 	mov	w9, #0x1200                	// #4608
    e3f4:	910382c8 	add	x8, x22, #0xe0
    e3f8:	720002bf 	tst	w21, #0x1
    e3fc:	b940010a 	ldr	w10, [x8]
    e400:	2a090149 	orr	w9, w10, w9
    e404:	1a8a1129 	csel	w9, w9, w10, ne
    e408:	7200029f 	tst	w20, #0x1
    e40c:	320e012a 	orr	w10, w9, #0x40000
    e410:	1a891149 	csel	w9, w10, w9, ne
    e414:	d5033d9f 	dsb	ld
    e418:	3212012a 	orr	w10, w9, #0x4000
    e41c:	7200027f 	tst	w19, #0x1
    e420:	d5033e9f 	dsb	st
    e424:	1a891149 	csel	w9, w10, w9, ne
    e428:	b9000109 	str	w9, [x8]
    e42c:	a9427bfd 	ldp	x29, x30, [sp,#32]
    e430:	a9414ff4 	ldp	x20, x19, [sp,#16]
    e434:	a8c357f6 	ldp	x22, x21, [sp],#48
    e438:	d65f03c0 	ret

000000000000e43c <dwmac4_rane>:
    e43c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    e440:	a9017bfd 	stp	x29, x30, [sp,#16]
    e444:	910043fd 	add	x29, sp, #0x10
    e448:	2a0103f3 	mov	w19, w1
    e44c:	aa0003f4 	mov	x20, x0
    e450:	94000000 	bl	0 <_mcount>
    e454:	91038288 	add	x8, x20, #0xe0
    e458:	b9400109 	ldr	w9, [x8]
    e45c:	d5033d9f 	dsb	ld
    e460:	3217012a 	orr	w10, w9, #0x200
    e464:	7200027f 	tst	w19, #0x1
    e468:	d5033e9f 	dsb	st
    e46c:	1a891149 	csel	w9, w10, w9, ne
    e470:	b9000109 	str	w9, [x8]
    e474:	a9417bfd 	ldp	x29, x30, [sp,#16]
    e478:	a8c24ff4 	ldp	x20, x19, [sp],#32
    e47c:	d65f03c0 	ret

000000000000e480 <dwmac4_get_adv_lp>:
    e480:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    e484:	a9017bfd 	stp	x29, x30, [sp,#16]
    e488:	910043fd 	add	x29, sp, #0x10
    e48c:	aa0103f3 	mov	x19, x1
    e490:	aa0003f4 	mov	x20, x0
    e494:	94000000 	bl	0 <_mcount>
    e498:	9103a288 	add	x8, x20, #0xe8
    e49c:	b9400108 	ldr	w8, [x8]
    e4a0:	d5033d9f 	dsb	ld
    e4a4:	36280068 	tbz	w8, #5, e4b0 <dwmac4_get_adv_lp+0x30>
    e4a8:	52800029 	mov	w9, #0x1                   	// #1
    e4ac:	b9000669 	str	w9, [x19,#4]
    e4b0:	53072108 	ubfx	w8, w8, #7, #2
    e4b4:	9103b289 	add	x9, x20, #0xec
    e4b8:	b9000268 	str	w8, [x19]
    e4bc:	b9400128 	ldr	w8, [x9]
    e4c0:	d5033d9f 	dsb	ld
    e4c4:	2a0803e8 	mov	w8, w8
    e4c8:	36280068 	tbz	w8, #5, e4d4 <dwmac4_get_adv_lp+0x54>
    e4cc:	52800029 	mov	w9, #0x1                   	// #1
    e4d0:	b9000e69 	str	w9, [x19,#12]
    e4d4:	36300048 	tbz	w8, #6, e4dc <dwmac4_get_adv_lp+0x5c>
    e4d8:	b9000e7f 	str	wzr, [x19,#12]
    e4dc:	53072108 	ubfx	w8, w8, #7, #2
    e4e0:	b9000a68 	str	w8, [x19,#8]
    e4e4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    e4e8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    e4ec:	d65f03c0 	ret

Disassembly of section .init.text:

0000000000000000 <init_module>:
   0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
   4:	d2800014 	mov	x20, #0x0                   	// #0
   8:	f2a00014 	movk	x20, #0x0, lsl #16
   c:	f2c00014 	movk	x20, #0x0, lsl #32
  10:	f2e00014 	movk	x20, #0x0, lsl #48
  14:	f9400288 	ldr	x8, [x20]
  18:	a9017bfd 	stp	x29, x30, [sp,#16]
  1c:	910043fd 	add	x29, sp, #0x10
  20:	b5000188 	cbnz	x8, 50 <init_module+0x50>
  24:	d2800013 	mov	x19, #0x0                   	// #0
  28:	f2a00013 	movk	x19, #0x0, lsl #16
  2c:	f2c00013 	movk	x19, #0x0, lsl #32
  30:	f2e00013 	movk	x19, #0x0, lsl #48
  34:	aa1303e0 	mov	x0, x19
  38:	aa1f03e1 	mov	x1, xzr
  3c:	94000000 	bl	0 <debugfs_create_dir>
  40:	f9000280 	str	x0, [x20]
  44:	b4000140 	cbz	x0, 6c <init_module+0x6c>
  48:	b13ffc1f 	cmn	x0, #0xfff
  4c:	54000102 	b.cs	6c <init_module+0x6c>
  50:	d2800000 	mov	x0, #0x0                   	// #0
  54:	f2a00000 	movk	x0, #0x0, lsl #16
  58:	f2c00000 	movk	x0, #0x0, lsl #32
  5c:	f2e00000 	movk	x0, #0x0, lsl #48
  60:	94000000 	bl	0 <printk>
  64:	2a1f03e0 	mov	w0, wzr
  68:	14000008 	b	88 <init_module+0x88>
  6c:	d2800000 	mov	x0, #0x0                   	// #0
  70:	f2a00000 	movk	x0, #0x0, lsl #16
  74:	f2c00000 	movk	x0, #0x0, lsl #32
  78:	f2e00000 	movk	x0, #0x0, lsl #48
  7c:	aa1303e1 	mov	x1, x19
  80:	94000000 	bl	0 <printk>
  84:	12800160 	mov	w0, #0xfffffff4            	// #-12
  88:	a9417bfd 	ldp	x29, x30, [sp,#16]
  8c:	a8c24ff4 	ldp	x20, x19, [sp],#32
  90:	d65f03c0 	ret

Disassembly of section .exit.text:

0000000000000000 <cleanup_module>:
   0:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
   4:	d2800008 	mov	x8, #0x0                   	// #0
   8:	f2a00008 	movk	x8, #0x0, lsl #16
   c:	f2c00008 	movk	x8, #0x0, lsl #32
  10:	f2e00008 	movk	x8, #0x0, lsl #48
  14:	f9400100 	ldr	x0, [x8]
  18:	910003fd 	mov	x29, sp
  1c:	94000000 	bl	0 <debugfs_remove_recursive>
  20:	a8c17bfd 	ldp	x29, x30, [sp],#16
  24:	d65f03c0 	ret
