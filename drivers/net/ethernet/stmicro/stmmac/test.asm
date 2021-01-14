
stmmac_main.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <stmmac_disable_eee_mode>:
       0:	f81e0ff3 	str	x19, [sp,#-32]!
       4:	a9017bfd 	stp	x29, x30, [sp,#16]
       8:	910043fd 	add	x29, sp, #0x10
       c:	aa0003f3 	mov	x19, x0
      10:	94000000 	bl	0 <_mcount>
      14:	b340de6f 	bfxil	x15, x19, #0, #56
      18:	f9411260 	ldr	x0, [x19,#544]
      1c:	b340dc0f 	bfxil	x15, x0, #0, #56
      20:	f9400008 	ldr	x8, [x0]
      24:	b340dd0f 	bfxil	x15, x8, #0, #56
      28:	f9402908 	ldr	x8, [x8,#80]
      2c:	b340dd0f 	bfxil	x15, x8, #0, #56
      30:	f940011f 	ldr	xzr, [x8]
      34:	d63f0100 	blr	x8
      38:	91216260 	add	x0, x19, #0x858
      3c:	94000000 	bl	0 <del_timer_sync>
      40:	f940027f 	ldr	xzr, [x19]
      44:	b340de6f 	bfxil	x15, x19, #0, #56
      48:	3901327f 	strb	wzr, [x19,#76]
      4c:	a9417bfd 	ldp	x29, x30, [sp,#16]
      50:	f84207f3 	ldr	x19, [sp],#32
      54:	b340dfcf 	bfxil	x15, x30, #0, #56
      58:	f94003df 	ldr	xzr, [x30]
      5c:	d65f03c0 	ret

0000000000000060 <stmmac_eee_init>:
      60:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
      64:	a90157f6 	stp	x22, x21, [sp,#16]
      68:	a9024ff4 	stp	x20, x19, [sp,#32]
      6c:	a9037bfd 	stp	x29, x30, [sp,#48]
      70:	9100c3fd 	add	x29, sp, #0x30
      74:	aa0003f3 	mov	x19, x0
      78:	94000000 	bl	0 <_mcount>
      7c:	b340de6f 	bfxil	x15, x19, #0, #56
      80:	f9434268 	ldr	x8, [x19,#1664]
      84:	2a1f03e0 	mov	w0, wzr
      88:	b340dd0f 	bfxil	x15, x8, #0, #56
      8c:	b9400908 	ldr	w8, [x8,#8]
      90:	7100291f 	cmp	w8, #0xa
      94:	54000248 	b.hi	dc <stmmac_eee_init+0x7c>
      98:	52800029 	mov	w9, #0x1                   	// #1
      9c:	1ac82128 	lsl	w8, w9, w8
      a0:	5280f0c9 	mov	w9, #0x786                 	// #1926
      a4:	6a09011f 	tst	w8, w9
      a8:	540001a0 	b.eq	dc <stmmac_eee_init+0x7c>
      ac:	b340de6f 	bfxil	x15, x19, #0, #56
      b0:	f9411268 	ldr	x8, [x19,#544]
      b4:	b340dd0f 	bfxil	x15, x8, #0, #56
      b8:	b9405908 	ldr	w8, [x8,#88]
      bc:	7100211f 	cmp	w8, #0x8
      c0:	540001c8 	b.hi	f8 <stmmac_eee_init+0x98>
      c4:	52800029 	mov	w9, #0x1                   	// #1
      c8:	1ac82128 	lsl	w8, w9, w8
      cc:	52802249 	mov	w9, #0x112                 	// #274
      d0:	6a09011f 	tst	w8, w9
      d4:	54000120 	b.eq	f8 <stmmac_eee_init+0x98>
      d8:	2a1f03e0 	mov	w0, wzr
      dc:	a9437bfd 	ldp	x29, x30, [sp,#48]
      e0:	a9424ff4 	ldp	x20, x19, [sp,#32]
      e4:	a94157f6 	ldp	x22, x21, [sp,#16]
      e8:	a8c45ff8 	ldp	x24, x23, [sp],#64
      ec:	b340dfcf 	bfxil	x15, x30, #0, #56
      f0:	f94003df 	ldr	xzr, [x30]
      f4:	d65f03c0 	ret
      f8:	b340de6f 	bfxil	x15, x19, #0, #56
      fc:	b946ba68 	ldr	w8, [x19,#1720]
     100:	34fffec8 	cbz	w8, d8 <stmmac_eee_init+0x78>
     104:	b340de6f 	bfxil	x15, x19, #0, #56
     108:	f9412260 	ldr	x0, [x19,#576]
     10c:	b340de6f 	bfxil	x15, x19, #0, #56
     110:	b948ae76 	ldr	w22, [x19,#2220]
     114:	52800021 	mov	w1, #0x1                   	// #1
     118:	94000000 	bl	0 <phy_init_eee>
     11c:	9108a274 	add	x20, x19, #0x228
     120:	2a0003f7 	mov	w23, w0
     124:	aa1403e0 	mov	x0, x20
     128:	94000000 	bl	0 <_raw_spin_lock_irqsave>
     12c:	b340de6f 	bfxil	x15, x19, #0, #56
     130:	b948aa68 	ldr	w8, [x19,#2216]
     134:	aa0003f5 	mov	x21, x0
     138:	340002d7 	cbz	w23, 190 <stmmac_eee_init+0x130>
     13c:	340001c8 	cbz	w8, 174 <stmmac_eee_init+0x114>
     140:	91216260 	add	x0, x19, #0x858
     144:	94000000 	bl	0 <del_timer_sync>
     148:	b340de6f 	bfxil	x15, x19, #0, #56
     14c:	f9411260 	ldr	x0, [x19,#544]
     150:	2a1f03e1 	mov	w1, wzr
     154:	2a1603e2 	mov	w2, w22
     158:	b340dc0f 	bfxil	x15, x0, #0, #56
     15c:	f9400008 	ldr	x8, [x0]
     160:	b340dd0f 	bfxil	x15, x8, #0, #56
     164:	f9402d08 	ldr	x8, [x8,#88]
     168:	b340dd0f 	bfxil	x15, x8, #0, #56
     16c:	f940011f 	ldr	xzr, [x8]
     170:	d63f0100 	blr	x8
     174:	aa1403e0 	mov	x0, x20
     178:	aa1503e1 	mov	x1, x21
     17c:	f940027f 	ldr	xzr, [x19]
     180:	b340de6f 	bfxil	x15, x19, #0, #56
     184:	b908aa7f 	str	wzr, [x19,#2216]
     188:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
     18c:	17ffffd3 	b	d8 <stmmac_eee_init+0x78>
     190:	35000508 	cbnz	w8, 230 <stmmac_eee_init+0x1d0>
     194:	91216277 	add	x23, x19, #0x858
     198:	52800028 	mov	w8, #0x1                   	// #1
     19c:	aa1703e0 	mov	x0, x23
     1a0:	2a1f03e1 	mov	w1, wzr
     1a4:	aa1f03e2 	mov	x2, xzr
     1a8:	aa1f03e3 	mov	x3, xzr
     1ac:	f940027f 	ldr	xzr, [x19]
     1b0:	b340de6f 	bfxil	x15, x19, #0, #56
     1b4:	b908aa68 	str	w8, [x19,#2216]
     1b8:	94000000 	bl	0 <init_timer_key>
     1bc:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     1c0:	91000108 	add	x8, x8, #0x0
     1c4:	f940027f 	ldr	xzr, [x19]
     1c8:	b340de6f 	bfxil	x15, x19, #0, #56
     1cc:	f9043e73 	str	x19, [x19,#2168]
     1d0:	90000009 	adrp	x9, 0 <jiffies>
     1d4:	9000000a 	adrp	x10, 0 <stmmac_disable_eee_mode>
     1d8:	f940027f 	ldr	xzr, [x19]
     1dc:	b340de6f 	bfxil	x15, x19, #0, #56
     1e0:	f9043a68 	str	x8, [x19,#2160]
     1e4:	b340dd2f 	bfxil	x15, x9, #0, #56
     1e8:	f9400138 	ldr	x24, [x9]
     1ec:	b340dd4f 	bfxil	x15, x10, #0, #56
     1f0:	b9400140 	ldr	w0, [x10]
     1f4:	94000000 	bl	0 <__msecs_to_jiffies>
     1f8:	8b180001 	add	x1, x0, x24
     1fc:	aa1703e0 	mov	x0, x23
     200:	94000000 	bl	0 <mod_timer>
     204:	b340de6f 	bfxil	x15, x19, #0, #56
     208:	f9411260 	ldr	x0, [x19,#544]
     20c:	52807d01 	mov	w1, #0x3e8                 	// #1000
     210:	2a1603e2 	mov	w2, w22
     214:	b340dc0f 	bfxil	x15, x0, #0, #56
     218:	f9400008 	ldr	x8, [x0]
     21c:	b340dd0f 	bfxil	x15, x8, #0, #56
     220:	f9402d08 	ldr	x8, [x8,#88]
     224:	b340dd0f 	bfxil	x15, x8, #0, #56
     228:	f940011f 	ldr	xzr, [x8]
     22c:	d63f0100 	blr	x8
     230:	b340de6f 	bfxil	x15, x19, #0, #56
     234:	f9411260 	ldr	x0, [x19,#544]
     238:	b340de6f 	bfxil	x15, x19, #0, #56
     23c:	f9412269 	ldr	x9, [x19,#576]
     240:	b340dc0f 	bfxil	x15, x0, #0, #56
     244:	f9400008 	ldr	x8, [x0]
     248:	b340dd2f 	bfxil	x15, x9, #0, #56
     24c:	b9436521 	ldr	w1, [x9,#868]
     250:	b340dd0f 	bfxil	x15, x8, #0, #56
     254:	f9403108 	ldr	x8, [x8,#96]
     258:	b340dd0f 	bfxil	x15, x8, #0, #56
     25c:	f940011f 	ldr	xzr, [x8]
     260:	d63f0100 	blr	x8
     264:	aa1403e0 	mov	x0, x20
     268:	aa1503e1 	mov	x1, x21
     26c:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
     270:	52800020 	mov	w0, #0x1                   	// #1
     274:	17ffff9a 	b	dc <stmmac_eee_init+0x7c>

0000000000000278 <stmmac_eee_ctrl_timer>:
     278:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
     27c:	a9017bfd 	stp	x29, x30, [sp,#16]
     280:	910043fd 	add	x29, sp, #0x10
     284:	aa0003f3 	mov	x19, x0
     288:	94000000 	bl	0 <_mcount>
     28c:	b340de6f 	bfxil	x15, x19, #0, #56
     290:	29432668 	ldp	w8, w9, [x19,#24]
     294:	6b08013f 	cmp	w9, w8
     298:	540001a1 	b.ne	2cc <stmmac_eee_ctrl_timer+0x54>
     29c:	b340de6f 	bfxil	x15, x19, #0, #56
     2a0:	39413268 	ldrb	w8, [x19,#76]
     2a4:	35000148 	cbnz	w8, 2cc <stmmac_eee_ctrl_timer+0x54>
     2a8:	b340de6f 	bfxil	x15, x19, #0, #56
     2ac:	f9411260 	ldr	x0, [x19,#544]
     2b0:	b340dc0f 	bfxil	x15, x0, #0, #56
     2b4:	f9400008 	ldr	x8, [x0]
     2b8:	b340dd0f 	bfxil	x15, x8, #0, #56
     2bc:	f9402508 	ldr	x8, [x8,#72]
     2c0:	b340dd0f 	bfxil	x15, x8, #0, #56
     2c4:	f940011f 	ldr	xzr, [x8]
     2c8:	d63f0100 	blr	x8
     2cc:	90000008 	adrp	x8, 0 <jiffies>
     2d0:	90000009 	adrp	x9, 0 <stmmac_disable_eee_mode>
     2d4:	b340dd0f 	bfxil	x15, x8, #0, #56
     2d8:	f9400114 	ldr	x20, [x8]
     2dc:	b340dd2f 	bfxil	x15, x9, #0, #56
     2e0:	b9400120 	ldr	w0, [x9]
     2e4:	91216273 	add	x19, x19, #0x858
     2e8:	94000000 	bl	0 <__msecs_to_jiffies>
     2ec:	8b140001 	add	x1, x0, x20
     2f0:	aa1303e0 	mov	x0, x19
     2f4:	94000000 	bl	0 <mod_timer>
     2f8:	a9417bfd 	ldp	x29, x30, [sp,#16]
     2fc:	a8c24ff4 	ldp	x20, x19, [sp],#32
     300:	b340dfcf 	bfxil	x15, x30, #0, #56
     304:	f94003df 	ldr	xzr, [x30]
     308:	d65f03c0 	ret

000000000000030c <stmmac_dvr_probe>:
     30c:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
     310:	a90157f6 	stp	x22, x21, [sp,#16]
     314:	a9024ff4 	stp	x20, x19, [sp,#32]
     318:	a9037bfd 	stp	x29, x30, [sp,#48]
     31c:	9100c3fd 	add	x29, sp, #0x30
     320:	aa0203f5 	mov	x21, x2
     324:	aa0103f6 	mov	x22, x1
     328:	aa0003f4 	mov	x20, x0
     32c:	94000000 	bl	0 <_mcount>
     330:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     334:	90000005 	adrp	x5, 0 <stmmac_disable_eee_mode>
     338:	52800141 	mov	w1, #0xa                   	// #10
     33c:	91000000 	add	x0, x0, #0x0
     340:	910000a5 	add	x5, x5, #0x0
     344:	72a001c1 	movk	w1, #0xe, lsl #16
     348:	52800022 	mov	w2, #0x1                   	// #1
     34c:	aa1f03e3 	mov	x3, xzr
     350:	aa1f03e4 	mov	x4, xzr
     354:	94000000 	bl	0 <__alloc_workqueue_key>
     358:	90000013 	adrp	x19, 0 <stmmac_disable_eee_mode>
     35c:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     360:	91000273 	add	x19, x19, #0x0
     364:	9000000a 	adrp	x10, 0 <stmmac_disable_eee_mode>
     368:	b27b7be9 	mov	x9, #0xfffffffe0           	// #68719476704
     36c:	9100014a 	add	x10, x10, #0x0
     370:	f940011f 	ldr	xzr, [x8]
     374:	b340dd0f 	bfxil	x15, x8, #0, #56
     378:	f9000100 	str	x0, [x8]
     37c:	91002268 	add	x8, x19, #0x8
     380:	91008260 	add	x0, x19, #0x20
     384:	52a00401 	mov	w1, #0x200000              	// #2097152
     388:	aa1f03e2 	mov	x2, xzr
     38c:	aa1f03e3 	mov	x3, xzr
     390:	f940027f 	ldr	xzr, [x19]
     394:	b340de6f 	bfxil	x15, x19, #0, #56
     398:	f9000269 	str	x9, [x19]
     39c:	f940027f 	ldr	xzr, [x19]
     3a0:	b340de6f 	bfxil	x15, x19, #0, #56
     3a4:	f9000668 	str	x8, [x19,#8]
     3a8:	f940027f 	ldr	xzr, [x19]
     3ac:	b340de6f 	bfxil	x15, x19, #0, #56
     3b0:	a9012a68 	stp	x8, x10, [x19,#16]
     3b4:	94000000 	bl	0 <init_timer_key>
     3b8:	90000008 	adrp	x8, 0 <delayed_work_timer_fn>
     3bc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     3c0:	91000108 	add	x8, x8, #0x0
     3c4:	91000000 	add	x0, x0, #0x0
     3c8:	f940027f 	ldr	xzr, [x19]
     3cc:	b340de6f 	bfxil	x15, x19, #0, #56
     3d0:	a903ce68 	stp	x8, x19, [x19,#56]
     3d4:	94000000 	bl	0 <register_pm_notifier>
     3d8:	34000120 	cbz	w0, 3fc <stmmac_dvr_probe+0xf0>
     3dc:	2a0003f3 	mov	w19, w0
     3e0:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     3e4:	91000000 	add	x0, x0, #0x0
     3e8:	94000000 	bl	0 <unregister_pm_notifier>
     3ec:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     3f0:	91000000 	add	x0, x0, #0x0
     3f4:	2a1303e1 	mov	w1, w19
     3f8:	94000000 	bl	0 <printk>
     3fc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     400:	91000000 	add	x0, x0, #0x0
     404:	94000000 	bl	0 <printk>
     408:	52813800 	mov	w0, #0x9c0                 	// #2496
     40c:	52800021 	mov	w1, #0x1                   	// #1
     410:	52800022 	mov	w2, #0x1                   	// #1
     414:	94000000 	bl	0 <alloc_etherdev_mqs>
     418:	b4001bc0 	cbz	x0, 790 <stmmac_dvr_probe+0x484>
     41c:	9114d008 	add	x8, x0, #0x534
     420:	aa0003f3 	mov	x19, x0
     424:	f940011f 	ldr	xzr, [x8]
     428:	b340dd0f 	bfxil	x15, x8, #0, #56
     42c:	f9000114 	str	x20, [x8]
     430:	f940001f 	ldr	xzr, [x0]
     434:	b340dc0f 	bfxil	x15, x0, #0, #56
     438:	f9058c14 	str	x20, [x0,#2840]
     43c:	f940001f 	ldr	xzr, [x0]
     440:	b340dc0f 	bfxil	x15, x0, #0, #56
     444:	f9058800 	str	x0, [x0,#2832]
     448:	94000000 	bl	0 <stmmac_set_ethtool_ops>
     44c:	90000018 	adrp	x24, 0 <stmmac_disable_eee_mode>
     450:	b340df0f 	bfxil	x15, x24, #0, #56
     454:	b9400308 	ldr	w8, [x24]
     458:	f940027f 	ldr	xzr, [x19]
     45c:	b340de6f 	bfxil	x15, x19, #0, #56
     460:	f907c276 	str	x22, [x19,#3968]
     464:	b340de6f 	bfxil	x15, x19, #0, #56
     468:	f9458a69 	ldr	x9, [x19,#2832]
     46c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     470:	f940027f 	ldr	xzr, [x19]
     474:	b340de6f 	bfxil	x15, x19, #0, #56
     478:	b90b5a68 	str	w8, [x19,#2904]
     47c:	b340deaf 	bfxil	x15, x21, #0, #56
     480:	f94002a8 	ldr	x8, [x21]
     484:	91000000 	add	x0, x0, #0x0
     488:	f940027f 	ldr	xzr, [x19]
     48c:	b340de6f 	bfxil	x15, x19, #0, #56
     490:	f9058668 	str	x8, [x19,#2824]
     494:	b340deaf 	bfxil	x15, x21, #0, #56
     498:	f94002a8 	ldr	x8, [x21]
     49c:	f940013f 	ldr	xzr, [x9]
     4a0:	b340dd2f 	bfxil	x15, x9, #0, #56
     4a4:	f9001d28 	str	x8, [x9,#56]
     4a8:	b340de6f 	bfxil	x15, x19, #0, #56
     4ac:	f9458661 	ldr	x1, [x19,#2824]
     4b0:	94000000 	bl	0 <printk>
     4b4:	b340de6f 	bfxil	x15, x19, #0, #56
     4b8:	f9458a68 	ldr	x8, [x19,#2832]
     4bc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     4c0:	91000000 	add	x0, x0, #0x0
     4c4:	b340dd0f 	bfxil	x15, x8, #0, #56
     4c8:	f9401d01 	ldr	x1, [x8,#56]
     4cc:	94000000 	bl	0 <printk>
     4d0:	90000017 	adrp	x23, 0 <stmmac_disable_eee_mode>
     4d4:	910002f7 	add	x23, x23, #0x0
     4d8:	d5382056 	mrs	x22, tcr_el1
     4dc:	aa1703e0 	mov	x0, x23
     4e0:	aa1603e1 	mov	x1, x22
     4e4:	94000000 	bl	0 <printk>
     4e8:	926ffac1 	and	x1, x22, #0xfffffffffffeffff
     4ec:	aa1703e0 	mov	x0, x23
     4f0:	94000000 	bl	0 <printk>
     4f4:	b340deaf 	bfxil	x15, x21, #0, #56
     4f8:	b9401aa8 	ldr	w8, [x21,#24]
     4fc:	b340de6f 	bfxil	x15, x19, #0, #56
     500:	f9458a69 	ldr	x9, [x19,#2832]
     504:	f940013f 	ldr	xzr, [x9]
     508:	b340dd2f 	bfxil	x15, x9, #0, #56
     50c:	b9004128 	str	w8, [x9,#64]
     510:	b340deaf 	bfxil	x15, x21, #0, #56
     514:	b94012a8 	ldr	w8, [x21,#16]
     518:	f940027f 	ldr	xzr, [x19]
     51c:	b340de6f 	bfxil	x15, x19, #0, #56
     520:	b9113268 	str	w8, [x19,#4400]
     524:	b340deaf 	bfxil	x15, x21, #0, #56
     528:	b94016a8 	ldr	w8, [x21,#20]
     52c:	f940027f 	ldr	xzr, [x19]
     530:	b340de6f 	bfxil	x15, x19, #0, #56
     534:	b911a268 	str	w8, [x19,#4512]
     538:	b340deaf 	bfxil	x15, x21, #0, #56
     53c:	f94006a8 	ldr	x8, [x21,#8]
     540:	b4000208 	cbz	x8, 580 <stmmac_dvr_probe+0x274>
     544:	b340de6f 	bfxil	x15, x19, #0, #56
     548:	f9458a69 	ldr	x9, [x19,#2832]
     54c:	b340dd0f 	bfxil	x15, x8, #0, #56
     550:	7940090a 	ldrh	w10, [x8,#4]
     554:	b340dd0f 	bfxil	x15, x8, #0, #56
     558:	b9400108 	ldr	w8, [x8]
     55c:	910cb129 	add	x9, x9, #0x32c
     560:	b340dd2f 	bfxil	x15, x9, #0, #56
     564:	f9400129 	ldr	x9, [x9]
     568:	f940013f 	ldr	xzr, [x9]
     56c:	b340dd2f 	bfxil	x15, x9, #0, #56
     570:	7900092a 	strh	w10, [x9,#4]
     574:	f940013f 	ldr	xzr, [x9]
     578:	b340dd2f 	bfxil	x15, x9, #0, #56
     57c:	b9000128 	str	w8, [x9]
     580:	b340de6f 	bfxil	x15, x19, #0, #56
     584:	f9458a68 	ldr	x8, [x19,#2832]
     588:	90000016 	adrp	x22, 0 <stmmac_disable_eee_mode>
     58c:	f940029f 	ldr	xzr, [x20]
     590:	b340de8f 	bfxil	x15, x20, #0, #56
     594:	f9005288 	str	x8, [x20,#160]
     598:	b340decf 	bfxil	x15, x22, #0, #56
     59c:	b94002c8 	ldr	w8, [x22]
     5a0:	37f85a08 	tbnz	w8, #31, 10e0 <stmmac_dvr_probe+0xdd4>
     5a4:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     5a8:	b340dd0f 	bfxil	x15, x8, #0, #56
     5ac:	b9400109 	ldr	w9, [x8]
     5b0:	52873e2a 	mov	w10, #0x39f1                	// #14833
     5b4:	51180129 	sub	w9, w9, #0x600
     5b8:	6b0a013f 	cmp	w9, w10
     5bc:	540059c2 	b.cs	10f4 <stmmac_dvr_probe+0xde8>
     5c0:	90000015 	adrp	x21, 0 <stmmac_disable_eee_mode>
     5c4:	b340deaf 	bfxil	x15, x21, #0, #56
     5c8:	b94002a8 	ldr	w8, [x21]
     5cc:	7100051f 	cmp	w8, #0x1
     5d0:	540059cc 	b.gt	1108 <stmmac_dvr_probe+0xdfc>
     5d4:	36f800a8 	tbz	w8, #31, 5e8 <stmmac_dvr_probe+0x2dc>
     5d8:	2a1f03e8 	mov	w8, wzr
     5dc:	f94002bf 	ldr	xzr, [x21]
     5e0:	b340deaf 	bfxil	x15, x21, #0, #56
     5e4:	b90002a8 	str	w8, [x21]
     5e8:	b340df0f 	bfxil	x15, x24, #0, #56
     5ec:	b9400308 	ldr	w8, [x24]
     5f0:	7140411f 	cmp	w8, #0x10, lsl #12
     5f4:	540058e2 	b.cs	1110 <stmmac_dvr_probe+0xe04>
     5f8:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     5fc:	b340dd0f 	bfxil	x15, x8, #0, #56
     600:	b9400109 	ldr	w9, [x8]
     604:	36f800a9 	tbz	w9, #31, 618 <stmmac_dvr_probe+0x30c>
     608:	52807d09 	mov	w9, #0x3e8                 	// #1000
     60c:	f940011f 	ldr	xzr, [x8]
     610:	b340dd0f 	bfxil	x15, x8, #0, #56
     614:	b9000109 	str	w9, [x8]
     618:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     61c:	b340dd0f 	bfxil	x15, x8, #0, #56
     620:	b9400108 	ldr	w8, [x8]
     624:	71007d1f 	cmp	w8, #0x1f
     628:	540000c8 	b.hi	640 <stmmac_dvr_probe+0x334>
     62c:	b340de6f 	bfxil	x15, x19, #0, #56
     630:	f947c269 	ldr	x9, [x19,#3968]
     634:	f940013f 	ldr	xzr, [x9]
     638:	b340dd2f 	bfxil	x15, x9, #0, #56
     63c:	b9000528 	str	w8, [x9,#4]
     640:	b340de6f 	bfxil	x15, x19, #0, #56
     644:	f9458e60 	ldr	x0, [x19,#2840]
     648:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
     64c:	91000021 	add	x1, x1, #0x0
     650:	94000000 	bl	0 <devm_clk_get>
     654:	aa0003f4 	mov	x20, x0
     658:	b13ffc1f 	cmn	x0, #0xfff
     65c:	f940027f 	ldr	xzr, [x19]
     660:	b340de6f 	bfxil	x15, x19, #0, #56
     664:	f9089e60 	str	x0, [x19,#4408]
     668:	54000223 	b.cc	6ac <stmmac_dvr_probe+0x3a0>
     66c:	b340de6f 	bfxil	x15, x19, #0, #56
     670:	f9458e60 	ldr	x0, [x19,#2840]
     674:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
     678:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
     67c:	91000021 	add	x1, x1, #0x0
     680:	91000042 	add	x2, x2, #0x0
     684:	94000000 	bl	0 <dev_warn>
     688:	b340de6f 	bfxil	x15, x19, #0, #56
     68c:	f947c268 	ldr	x8, [x19,#3968]
     690:	b340dd0f 	bfxil	x15, x8, #0, #56
     694:	b9403108 	ldr	w8, [x8,#48]
     698:	34001008 	cbz	w8, 898 <stmmac_dvr_probe+0x58c>
     69c:	aa1f03f4 	mov	x20, xzr
     6a0:	f940027f 	ldr	xzr, [x19]
     6a4:	b340de6f 	bfxil	x15, x19, #0, #56
     6a8:	f9089e7f 	str	xzr, [x19,#4408]
     6ac:	aa1403e0 	mov	x0, x20
     6b0:	94000000 	bl	0 <clk_prepare>
     6b4:	350000c0 	cbnz	w0, 6cc <stmmac_dvr_probe+0x3c0>
     6b8:	aa1403e0 	mov	x0, x20
     6bc:	94000000 	bl	0 <clk_enable>
     6c0:	34000060 	cbz	w0, 6cc <stmmac_dvr_probe+0x3c0>
     6c4:	aa1403e0 	mov	x0, x20
     6c8:	94000000 	bl	0 <clk_unprepare>
     6cc:	b340de6f 	bfxil	x15, x19, #0, #56
     6d0:	f9458e60 	ldr	x0, [x19,#2840]
     6d4:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
     6d8:	91000021 	add	x1, x1, #0x0
     6dc:	94000000 	bl	0 <devm_clk_get>
     6e0:	aa0003f4 	mov	x20, x0
     6e4:	b13ffc1f 	cmn	x0, #0xfff
     6e8:	f940027f 	ldr	xzr, [x19]
     6ec:	b340de6f 	bfxil	x15, x19, #0, #56
     6f0:	f908a260 	str	x0, [x19,#4416]
     6f4:	540000e3 	b.cc	710 <stmmac_dvr_probe+0x404>
     6f8:	b108169f 	cmn	x20, #0x205
     6fc:	54000f00 	b.eq	8dc <stmmac_dvr_probe+0x5d0>
     700:	aa1f03f4 	mov	x20, xzr
     704:	f940027f 	ldr	xzr, [x19]
     708:	b340de6f 	bfxil	x15, x19, #0, #56
     70c:	f908a27f 	str	xzr, [x19,#4416]
     710:	aa1403e0 	mov	x0, x20
     714:	94000000 	bl	0 <clk_prepare>
     718:	350000c0 	cbnz	w0, 730 <stmmac_dvr_probe+0x424>
     71c:	aa1403e0 	mov	x0, x20
     720:	94000000 	bl	0 <clk_enable>
     724:	34000060 	cbz	w0, 730 <stmmac_dvr_probe+0x424>
     728:	aa1403e0 	mov	x0, x20
     72c:	94000000 	bl	0 <clk_unprepare>
     730:	b340de6f 	bfxil	x15, x19, #0, #56
     734:	f9458e60 	ldr	x0, [x19,#2840]
     738:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
     73c:	91000021 	add	x1, x1, #0x0
     740:	2a1f03e2 	mov	w2, wzr
     744:	2a1f03e3 	mov	w3, wzr
     748:	2a1f03e4 	mov	w4, wzr
     74c:	94000000 	bl	0 <__devm_reset_control_get>
     750:	b13ffc1f 	cmn	x0, #0xfff
     754:	f940027f 	ldr	xzr, [x19]
     758:	b340de6f 	bfxil	x15, x19, #0, #56
     75c:	f908a660 	str	x0, [x19,#4424]
     760:	540001c3 	b.cc	798 <stmmac_dvr_probe+0x48c>
     764:	b108141f 	cmn	x0, #0x205
     768:	54000be0 	b.eq	8e4 <stmmac_dvr_probe+0x5d8>
     76c:	b340de6f 	bfxil	x15, x19, #0, #56
     770:	f9458e60 	ldr	x0, [x19,#2840]
     774:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
     778:	91000021 	add	x1, x1, #0x0
     77c:	94000000 	bl	0 <_dev_info>
     780:	f940027f 	ldr	xzr, [x19]
     784:	b340de6f 	bfxil	x15, x19, #0, #56
     788:	f908a67f 	str	xzr, [x19,#4424]
     78c:	14000005 	b	7a0 <stmmac_dvr_probe+0x494>
     790:	12800175 	mov	w21, #0xfffffff4            	// #-12
     794:	14000228 	b	1034 <stmmac_dvr_probe+0xd28>
     798:	b4000040 	cbz	x0, 7a0 <stmmac_dvr_probe+0x494>
     79c:	94000000 	bl	0 <reset_control_deassert>
     7a0:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     7a4:	91000000 	add	x0, x0, #0x0
     7a8:	94000000 	bl	0 <printk>
     7ac:	b340de6f 	bfxil	x15, x19, #0, #56
     7b0:	f947c268 	ldr	x8, [x19,#3968]
     7b4:	b340dd0f 	bfxil	x15, x8, #0, #56
     7b8:	b9403509 	ldr	w9, [x8,#52]
     7bc:	34000409 	cbz	w9, 83c <stmmac_dvr_probe+0x530>
     7c0:	b340de6f 	bfxil	x15, x19, #0, #56
     7c4:	f9458a68 	ldr	x8, [x19,#2832]
     7c8:	b340dd0f 	bfxil	x15, x8, #0, #56
     7cc:	b9423d09 	ldr	w9, [x8,#572]
     7d0:	32140129 	orr	w9, w9, #0x1000
     7d4:	f940011f 	ldr	xzr, [x8]
     7d8:	b340dd0f 	bfxil	x15, x8, #0, #56
     7dc:	b9023d09 	str	w9, [x8,#572]
     7e0:	b340de6f 	bfxil	x15, x19, #0, #56
     7e4:	f947c268 	ldr	x8, [x19,#3968]
     7e8:	b340de6f 	bfxil	x15, x19, #0, #56
     7ec:	f9458660 	ldr	x0, [x19,#2824]
     7f0:	b340dd0f 	bfxil	x15, x8, #0, #56
     7f4:	294c0901 	ldp	w1, w2, [x8,#96]
     7f8:	52822488 	mov	w8, #0x1124                	// #4388
     7fc:	8b080263 	add	x3, x19, x8
     800:	94000000 	bl	0 <dwmac1000_setup>
     804:	b4000460 	cbz	x0, 890 <stmmac_dvr_probe+0x584>
     808:	b340de6f 	bfxil	x15, x19, #0, #56
     80c:	b9512668 	ldr	w8, [x19,#4388]
     810:	f940027f 	ldr	xzr, [x19]
     814:	b340de6f 	bfxil	x15, x19, #0, #56
     818:	f9059260 	str	x0, [x19,#2848]
     81c:	7101011f 	cmp	w8, #0x40
     820:	5400042b 	b.lt	8a4 <stmmac_dvr_probe+0x598>
     824:	90000008 	adrp	x8, 0 <dwmac4_ring_mode_ops>
     828:	91000108 	add	x8, x8, #0x0
     82c:	f940001f 	ldr	xzr, [x0]
     830:	b340dc0f 	bfxil	x15, x0, #0, #56
     834:	f9000c08 	str	x8, [x0,#24]
     838:	14000040 	b	938 <stmmac_dvr_probe+0x62c>
     83c:	b340dd0f 	bfxil	x15, x8, #0, #56
     840:	b940b108 	ldr	w8, [x8,#176]
     844:	34000548 	cbz	w8, 8ec <stmmac_dvr_probe+0x5e0>
     848:	b340de6f 	bfxil	x15, x19, #0, #56
     84c:	f9458a68 	ldr	x8, [x19,#2832]
     850:	b340dd0f 	bfxil	x15, x8, #0, #56
     854:	b9423d09 	ldr	w9, [x8,#572]
     858:	32140129 	orr	w9, w9, #0x1000
     85c:	f940011f 	ldr	xzr, [x8]
     860:	b340dd0f 	bfxil	x15, x8, #0, #56
     864:	b9023d09 	str	w9, [x8,#572]
     868:	b340de6f 	bfxil	x15, x19, #0, #56
     86c:	f947c268 	ldr	x8, [x19,#3968]
     870:	b340de6f 	bfxil	x15, x19, #0, #56
     874:	f9458660 	ldr	x0, [x19,#2824]
     878:	b340dd0f 	bfxil	x15, x8, #0, #56
     87c:	294c0901 	ldp	w1, w2, [x8,#96]
     880:	52822488 	mov	w8, #0x1124                	// #4388
     884:	8b080263 	add	x3, x19, x8
     888:	94000000 	bl	0 <dwmac4_setup>
     88c:	b5fffbe0 	cbnz	x0, 808 <stmmac_dvr_probe+0x4fc>
     890:	12800175 	mov	w21, #0xfffffff4            	// #-12
     894:	140001da 	b	ffc <stmmac_dvr_probe+0xcf0>
     898:	b340de6f 	bfxil	x15, x19, #0, #56
     89c:	b9513a75 	ldr	w21, [x19,#4408]
     8a0:	140001e3 	b	102c <stmmac_dvr_probe+0xd20>
     8a4:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     8a8:	b340dd0f 	bfxil	x15, x8, #0, #56
     8ac:	b9400108 	ldr	w8, [x8]
     8b0:	340002c8 	cbz	w8, 908 <stmmac_dvr_probe+0x5fc>
     8b4:	90000008 	adrp	x8, 0 <chain_mode_ops>
     8b8:	91000108 	add	x8, x8, #0x0
     8bc:	f940001f 	ldr	xzr, [x0]
     8c0:	b340dc0f 	bfxil	x15, x0, #0, #56
     8c4:	f9000c08 	str	x8, [x0,#24]
     8c8:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     8cc:	91000000 	add	x0, x0, #0x0
     8d0:	94000000 	bl	0 <printk>
     8d4:	52800028 	mov	w8, #0x1                   	// #1
     8d8:	14000015 	b	92c <stmmac_dvr_probe+0x620>
     8dc:	12804095 	mov	w21, #0xfffffdfb            	// #-517
     8e0:	140001cd 	b	1014 <stmmac_dvr_probe+0xd08>
     8e4:	12804095 	mov	w21, #0xfffffdfb            	// #-517
     8e8:	140001c5 	b	ffc <stmmac_dvr_probe+0xcf0>
     8ec:	b340de6f 	bfxil	x15, x19, #0, #56
     8f0:	f9458660 	ldr	x0, [x19,#2824]
     8f4:	52822488 	mov	w8, #0x1124                	// #4388
     8f8:	8b080261 	add	x1, x19, x8
     8fc:	94000000 	bl	0 <dwmac100_setup>
     900:	b5fff840 	cbnz	x0, 808 <stmmac_dvr_probe+0x4fc>
     904:	17ffffe3 	b	890 <stmmac_dvr_probe+0x584>
     908:	90000008 	adrp	x8, 0 <ring_mode_ops>
     90c:	91000108 	add	x8, x8, #0x0
     910:	f940001f 	ldr	xzr, [x0]
     914:	b340dc0f 	bfxil	x15, x0, #0, #56
     918:	f9000c08 	str	x8, [x0,#24]
     91c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     920:	91000000 	add	x0, x0, #0x0
     924:	94000000 	bl	0 <printk>
     928:	52800048 	mov	w8, #0x2                   	// #2
     92c:	f940027f 	ldr	xzr, [x19]
     930:	b340de6f 	bfxil	x15, x19, #0, #56
     934:	b911b268 	str	w8, [x19,#4528]
     938:	b340de6f 	bfxil	x15, x19, #0, #56
     93c:	f9459268 	ldr	x8, [x19,#2848]
     940:	b340dd0f 	bfxil	x15, x8, #0, #56
     944:	f9400908 	ldr	x8, [x8,#16]
     948:	b340dd0f 	bfxil	x15, x8, #0, #56
     94c:	f9403908 	ldr	x8, [x8,#112]
     950:	b4000588 	cbz	x8, a00 <stmmac_dvr_probe+0x6f4>
     954:	b340de6f 	bfxil	x15, x19, #0, #56
     958:	f9458660 	ldr	x0, [x19,#2824]
     95c:	913e2261 	add	x1, x19, #0xf88
     960:	b340dd0f 	bfxil	x15, x8, #0, #56
     964:	f940011f 	ldr	xzr, [x8]
     968:	d63f0100 	blr	x8
     96c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     970:	52800028 	mov	w8, #0x1                   	// #1
     974:	91000000 	add	x0, x0, #0x0
     978:	f940027f 	ldr	xzr, [x19]
     97c:	b340de6f 	bfxil	x15, x19, #0, #56
     980:	b9112268 	str	w8, [x19,#4384]
     984:	94000000 	bl	0 <printk>
     988:	b340de6f 	bfxil	x15, x19, #0, #56
     98c:	b94fe268 	ldr	w8, [x19,#4064]
     990:	b340de6f 	bfxil	x15, x19, #0, #56
     994:	f947c269 	ldr	x9, [x19,#3968]
     998:	f940013f 	ldr	xzr, [x9]
     99c:	b340dd2f 	bfxil	x15, x9, #0, #56
     9a0:	b9003928 	str	w8, [x9,#56]
     9a4:	b340de6f 	bfxil	x15, x19, #0, #56
     9a8:	b94fa668 	ldr	w8, [x19,#4004]
     9ac:	b340de6f 	bfxil	x15, x19, #0, #56
     9b0:	f947c269 	ldr	x9, [x19,#3968]
     9b4:	f940013f 	ldr	xzr, [x9]
     9b8:	b340dd2f 	bfxil	x15, x9, #0, #56
     9bc:	b9004928 	str	w8, [x9,#72]
     9c0:	b340de6f 	bfxil	x15, x19, #0, #56
     9c4:	f947c268 	ldr	x8, [x19,#3968]
     9c8:	b340de6f 	bfxil	x15, x19, #0, #56
     9cc:	f9459269 	ldr	x9, [x19,#2848]
     9d0:	b340dd0f 	bfxil	x15, x8, #0, #56
     9d4:	b9404908 	ldr	w8, [x8,#72]
     9d8:	f940013f 	ldr	xzr, [x9]
     9dc:	b340dd2f 	bfxil	x15, x9, #0, #56
     9e0:	b9005d28 	str	w8, [x9,#92]
     9e4:	b340de6f 	bfxil	x15, x19, #0, #56
     9e8:	f947c268 	ldr	x8, [x19,#3968]
     9ec:	b340dd0f 	bfxil	x15, x8, #0, #56
     9f0:	b9405109 	ldr	w9, [x8,#80]
     9f4:	34000149 	cbz	w9, a1c <stmmac_dvr_probe+0x710>
     9f8:	2a1f03e9 	mov	w9, wzr
     9fc:	1400000a 	b	a24 <stmmac_dvr_probe+0x718>
     a00:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     a04:	91000000 	add	x0, x0, #0x0
     a08:	f940027f 	ldr	xzr, [x19]
     a0c:	b340de6f 	bfxil	x15, x19, #0, #56
     a10:	b911227f 	str	wzr, [x19,#4384]
     a14:	94000000 	bl	0 <printk>
     a18:	1400001d 	b	a8c <stmmac_dvr_probe+0x780>
     a1c:	b340de6f 	bfxil	x15, x19, #0, #56
     a20:	b94fc669 	ldr	w9, [x19,#4036]
     a24:	f940011f 	ldr	xzr, [x8]
     a28:	b340dd0f 	bfxil	x15, x8, #0, #56
     a2c:	b9003d09 	str	w9, [x8,#60]
     a30:	b340de6f 	bfxil	x15, x19, #0, #56
     a34:	b94fca68 	ldr	w8, [x19,#4040]
     a38:	b340de6f 	bfxil	x15, x19, #0, #56
     a3c:	f947c269 	ldr	x9, [x19,#3968]
     a40:	f940013f 	ldr	xzr, [x9]
     a44:	b340dd2f 	bfxil	x15, x9, #0, #56
     a48:	b9004128 	str	w8, [x9,#64]
     a4c:	b340de6f 	bfxil	x15, x19, #0, #56
     a50:	b94fd268 	ldr	w8, [x19,#4048]
     a54:	340000a8 	cbz	w8, a68 <stmmac_dvr_probe+0x75c>
     a58:	b340de6f 	bfxil	x15, x19, #0, #56
     a5c:	f947c268 	ldr	x8, [x19,#3968]
     a60:	52800049 	mov	w9, #0x2                   	// #2
     a64:	14000007 	b	a80 <stmmac_dvr_probe+0x774>
     a68:	b340de6f 	bfxil	x15, x19, #0, #56
     a6c:	b94fce68 	ldr	w8, [x19,#4044]
     a70:	340000e8 	cbz	w8, a8c <stmmac_dvr_probe+0x780>
     a74:	b340de6f 	bfxil	x15, x19, #0, #56
     a78:	f947c268 	ldr	x8, [x19,#3968]
     a7c:	52800029 	mov	w9, #0x1                   	// #1
     a80:	f940011f 	ldr	xzr, [x8]
     a84:	b340dd0f 	bfxil	x15, x8, #0, #56
     a88:	b9004109 	str	w9, [x8,#64]
     a8c:	b340de6f 	bfxil	x15, x19, #0, #56
     a90:	b9512668 	ldr	w8, [x19,#4388]
     a94:	7100fd1f 	cmp	w8, #0x3f
     a98:	5400008d 	b.le	aa8 <stmmac_dvr_probe+0x79c>
     a9c:	90000008 	adrp	x8, 0 <dwmac4_desc_ops>
     aa0:	91000108 	add	x8, x8, #0x0
     aa4:	14000020 	b	b24 <stmmac_dvr_probe+0x818>
     aa8:	b340de6f 	bfxil	x15, x19, #0, #56
     aac:	f947c268 	ldr	x8, [x19,#3968]
     ab0:	b340dd0f 	bfxil	x15, x8, #0, #56
     ab4:	b9403908 	ldr	w8, [x8,#56]
     ab8:	34000208 	cbz	w8, af8 <stmmac_dvr_probe+0x7ec>
     abc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     ac0:	91000000 	add	x0, x0, #0x0
     ac4:	94000000 	bl	0 <printk>
     ac8:	b340de6f 	bfxil	x15, x19, #0, #56
     acc:	b9512668 	ldr	w8, [x19,#4388]
     ad0:	7100d51f 	cmp	w8, #0x35
     ad4:	540001eb 	b.lt	b10 <stmmac_dvr_probe+0x804>
     ad8:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     adc:	91000000 	add	x0, x0, #0x0
     ae0:	94000000 	bl	0 <printk>
     ae4:	52800028 	mov	w8, #0x1                   	// #1
     ae8:	f940027f 	ldr	xzr, [x19]
     aec:	b340de6f 	bfxil	x15, x19, #0, #56
     af0:	b911b668 	str	w8, [x19,#4532]
     af4:	1400000a 	b	b1c <stmmac_dvr_probe+0x810>
     af8:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     afc:	91000000 	add	x0, x0, #0x0
     b00:	94000000 	bl	0 <printk>
     b04:	90000008 	adrp	x8, 0 <ndesc_ops>
     b08:	91000108 	add	x8, x8, #0x0
     b0c:	14000006 	b	b24 <stmmac_dvr_probe+0x818>
     b10:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     b14:	91000000 	add	x0, x0, #0x0
     b18:	94000000 	bl	0 <printk>
     b1c:	90000008 	adrp	x8, 0 <enh_desc_ops>
     b20:	91000108 	add	x8, x8, #0x0
     b24:	b340de6f 	bfxil	x15, x19, #0, #56
     b28:	f9459269 	ldr	x9, [x19,#2848]
     b2c:	f940013f 	ldr	xzr, [x9]
     b30:	b340dd2f 	bfxil	x15, x9, #0, #56
     b34:	f9000528 	str	x8, [x9,#8]
     b38:	b340de6f 	bfxil	x15, x19, #0, #56
     b3c:	f947c268 	ldr	x8, [x19,#3968]
     b40:	b340dd0f 	bfxil	x15, x8, #0, #56
     b44:	b9404108 	ldr	w8, [x8,#64]
     b48:	34000288 	cbz	w8, b98 <stmmac_dvr_probe+0x88c>
     b4c:	b340de6f 	bfxil	x15, x19, #0, #56
     b50:	f9459269 	ldr	x9, [x19,#2848]
     b54:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     b58:	91000000 	add	x0, x0, #0x0
     b5c:	f940013f 	ldr	xzr, [x9]
     b60:	b340dd2f 	bfxil	x15, x9, #0, #56
     b64:	b9005528 	str	w8, [x9,#84]
     b68:	94000000 	bl	0 <printk>
     b6c:	b340de6f 	bfxil	x15, x19, #0, #56
     b70:	b9512668 	ldr	w8, [x19,#4388]
     b74:	7100fd1f 	cmp	w8, #0x3f
     b78:	5400010c 	b.gt	b98 <stmmac_dvr_probe+0x88c>
     b7c:	b340de6f 	bfxil	x15, x19, #0, #56
     b80:	f9459268 	ldr	x8, [x19,#2848]
     b84:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     b88:	91000000 	add	x0, x0, #0x0
     b8c:	b340dd0f 	bfxil	x15, x8, #0, #56
     b90:	b9405501 	ldr	w1, [x8,#84]
     b94:	94000000 	bl	0 <printk>
     b98:	b340de6f 	bfxil	x15, x19, #0, #56
     b9c:	f947c268 	ldr	x8, [x19,#3968]
     ba0:	b340dd0f 	bfxil	x15, x8, #0, #56
     ba4:	b9403d09 	ldr	w9, [x8,#60]
     ba8:	340000c9 	cbz	w9, bc0 <stmmac_dvr_probe+0x8b4>
     bac:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     bb0:	91000000 	add	x0, x0, #0x0
     bb4:	94000000 	bl	0 <printk>
     bb8:	b340de6f 	bfxil	x15, x19, #0, #56
     bbc:	f947c268 	ldr	x8, [x19,#3968]
     bc0:	b340dd0f 	bfxil	x15, x8, #0, #56
     bc4:	b9404908 	ldr	w8, [x8,#72]
     bc8:	34000108 	cbz	w8, be8 <stmmac_dvr_probe+0x8dc>
     bcc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     bd0:	91000000 	add	x0, x0, #0x0
     bd4:	94000000 	bl	0 <printk>
     bd8:	b340de6f 	bfxil	x15, x19, #0, #56
     bdc:	f9458e60 	ldr	x0, [x19,#2840]
     be0:	52800021 	mov	w1, #0x1                   	// #1
     be4:	94000000 	bl	0 <device_set_wakeup_capable>
     be8:	b340de6f 	bfxil	x15, x19, #0, #56
     bec:	b94fc268 	ldr	w8, [x19,#4032]
     bf0:	34000088 	cbz	w8, c00 <stmmac_dvr_probe+0x8f4>
     bf4:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     bf8:	91000000 	add	x0, x0, #0x0
     bfc:	94000000 	bl	0 <printk>
     c00:	b340de6f 	bfxil	x15, x19, #0, #56
     c04:	f9458a68 	ldr	x8, [x19,#2832]
     c08:	910cb108 	add	x8, x8, #0x32c
     c0c:	b340dd0f 	bfxil	x15, x8, #0, #56
     c10:	f9400101 	ldr	x1, [x8]
     c14:	b340dc2f 	bfxil	x15, x1, #0, #56
     c18:	b9400028 	ldr	w8, [x1]
     c1c:	370000a8 	tbnz	w8, #0, c30 <stmmac_dvr_probe+0x924>
     c20:	b340dc2f 	bfxil	x15, x1, #0, #56
     c24:	79400829 	ldrh	w9, [x1,#4]
     c28:	2a090108 	orr	w8, w8, w9
     c2c:	350005c8 	cbnz	w8, ce4 <stmmac_dvr_probe+0x9d8>
     c30:	b340de6f 	bfxil	x15, x19, #0, #56
     c34:	f9459260 	ldr	x0, [x19,#2848]
     c38:	2a1f03e2 	mov	w2, wzr
     c3c:	b340dc0f 	bfxil	x15, x0, #0, #56
     c40:	f9400008 	ldr	x8, [x0]
     c44:	b340dd0f 	bfxil	x15, x8, #0, #56
     c48:	f9402108 	ldr	x8, [x8,#64]
     c4c:	b340dd0f 	bfxil	x15, x8, #0, #56
     c50:	f940011f 	ldr	xzr, [x8]
     c54:	d63f0100 	blr	x8
     c58:	b340de6f 	bfxil	x15, x19, #0, #56
     c5c:	f9458a61 	ldr	x1, [x19,#2832]
     c60:	910cb028 	add	x8, x1, #0x32c
     c64:	b340dd0f 	bfxil	x15, x8, #0, #56
     c68:	f9400114 	ldr	x20, [x8]
     c6c:	b340de8f 	bfxil	x15, x20, #0, #56
     c70:	b9400288 	ldr	w8, [x20]
     c74:	370000a8 	tbnz	w8, #0, c88 <stmmac_dvr_probe+0x97c>
     c78:	b340de8f 	bfxil	x15, x20, #0, #56
     c7c:	79400a89 	ldrh	w9, [x20,#4]
     c80:	2a090108 	orr	w8, w8, w9
     c84:	35000288 	cbnz	w8, cd4 <stmmac_dvr_probe+0x9c8>
     c88:	52800028 	mov	w8, #0x1                   	// #1
     c8c:	f940003f 	ldr	xzr, [x1]
     c90:	b340dc2f 	bfxil	x15, x1, #0, #56
     c94:	3909d828 	strb	w8, [x1,#630]
     c98:	528000c1 	mov	w1, #0x6                   	// #6
     c9c:	aa1403e0 	mov	x0, x20
     ca0:	94000000 	bl	0 <get_random_bytes>
     ca4:	b340de8f 	bfxil	x15, x20, #0, #56
     ca8:	39400288 	ldrb	w8, [x20]
     cac:	121e1508 	and	w8, w8, #0xfc
     cb0:	321f0108 	orr	w8, w8, #0x2
     cb4:	f940029f 	ldr	xzr, [x20]
     cb8:	b340de8f 	bfxil	x15, x20, #0, #56
     cbc:	39000288 	strb	w8, [x20]
     cc0:	b340de6f 	bfxil	x15, x19, #0, #56
     cc4:	f9458a61 	ldr	x1, [x19,#2832]
     cc8:	910cb028 	add	x8, x1, #0x32c
     ccc:	b340dd0f 	bfxil	x15, x8, #0, #56
     cd0:	f9400114 	ldr	x20, [x8]
     cd4:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     cd8:	91000000 	add	x0, x0, #0x0
     cdc:	aa1403e2 	mov	x2, x20
     ce0:	94000000 	bl	0 <printk>
     ce4:	b340de6f 	bfxil	x15, x19, #0, #56
     ce8:	f947c269 	ldr	x9, [x19,#3968]
     cec:	d2800268 	mov	x8, #0x13                  	// #19
     cf0:	9000000a 	adrp	x10, 0 <stmmac_disable_eee_mode>
     cf4:	f2c00408 	movk	x8, #0x20, lsl #32
     cf8:	9100014a 	add	x10, x10, #0x0
     cfc:	f940027f 	ldr	xzr, [x19]
     d00:	b340de6f 	bfxil	x15, x19, #0, #56
     d04:	f9010a6a 	str	x10, [x19,#528]
     d08:	f940027f 	ldr	xzr, [x19]
     d0c:	b340de6f 	bfxil	x15, x19, #0, #56
     d10:	f9007e68 	str	x8, [x19,#248]
     d14:	b340dd2f 	bfxil	x15, x9, #0, #56
     d18:	3942d129 	ldrb	w9, [x9,#180]
     d1c:	34000229 	cbz	w9, d60 <stmmac_dvr_probe+0xa54>
     d20:	b340de6f 	bfxil	x15, x19, #0, #56
     d24:	b94fc269 	ldr	w9, [x19,#4032]
     d28:	340001c9 	cbz	w9, d60 <stmmac_dvr_probe+0xa54>
     d2c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     d30:	91404108 	add	x8, x8, #0x10, lsl #12
     d34:	52800029 	mov	w9, #0x1                   	// #1
     d38:	91000000 	add	x0, x0, #0x0
     d3c:	f940027f 	ldr	xzr, [x19]
     d40:	b340de6f 	bfxil	x15, x19, #0, #56
     d44:	f9007e68 	str	x8, [x19,#248]
     d48:	f940027f 	ldr	xzr, [x19]
     d4c:	b340de6f 	bfxil	x15, x19, #0, #56
     d50:	39266269 	strb	w9, [x19,#2456]
     d54:	94000000 	bl	0 <printk>
     d58:	b340de6f 	bfxil	x15, x19, #0, #56
     d5c:	f9407e68 	ldr	x8, [x19,#248]
     d60:	b340de6f 	bfxil	x15, x19, #0, #56
     d64:	f9407a69 	ldr	x9, [x19,#240]
     d68:	aa090108 	orr	x8, x8, x9
     d6c:	b27b0108 	orr	x8, x8, #0x20
     d70:	f940027f 	ldr	xzr, [x19]
     d74:	b340de6f 	bfxil	x15, x19, #0, #56
     d78:	f9007a68 	str	x8, [x19,#240]
     d7c:	b340decf 	bfxil	x15, x22, #0, #56
     d80:	b94002c0 	ldr	w0, [x22]
     d84:	94000000 	bl	0 <__msecs_to_jiffies>
     d88:	b340de6f 	bfxil	x15, x19, #0, #56
     d8c:	f9407a68 	ldr	x8, [x19,#240]
     d90:	b9046660 	str	w0, [x19,#1124]
     d94:	b2780108 	orr	x8, x8, #0x100
     d98:	f940027f 	ldr	xzr, [x19]
     d9c:	b340de6f 	bfxil	x15, x19, #0, #56
     da0:	f9007a68 	str	x8, [x19,#240]
     da4:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
     da8:	b340dd0f 	bfxil	x15, x8, #0, #56
     dac:	b9400108 	ldr	w8, [x8]
     db0:	71007d1f 	cmp	w8, #0x1f
     db4:	54000069 	b.ls	dc0 <stmmac_dvr_probe+0xab4>
     db8:	528007e8 	mov	w8, #0x3f                  	// #63
     dbc:	14000005 	b	dd0 <stmmac_dvr_probe+0xac4>
     dc0:	34000088 	cbz	w8, dd0 <stmmac_dvr_probe+0xac4>
     dc4:	12800009 	mov	w9, #0xffffffff            	// #-1
     dc8:	1ac82128 	lsl	w8, w9, w8
     dcc:	2a2803e8 	mvn	w8, w8
     dd0:	f940027f 	ldr	xzr, [x19]
     dd4:	b340de6f 	bfxil	x15, x19, #0, #56
     dd8:	b9112a68 	str	w8, [x19,#4392]
     ddc:	b340deaf 	bfxil	x15, x21, #0, #56
     de0:	b94002a8 	ldr	w8, [x21]
     de4:	340000a8 	cbz	w8, df8 <stmmac_dvr_probe+0xaec>
     de8:	52800068 	mov	w8, #0x3                   	// #3
     dec:	f940027f 	ldr	xzr, [x19]
     df0:	b340de6f 	bfxil	x15, x19, #0, #56
     df4:	b90b5668 	str	w8, [x19,#2900]
     df8:	b340de6f 	bfxil	x15, x19, #0, #56
     dfc:	b9512668 	ldr	w8, [x19,#4388]
     e00:	7100d51f 	cmp	w8, #0x35
     e04:	540001ab 	b.lt	e38 <stmmac_dvr_probe+0xb2c>
     e08:	b340de6f 	bfxil	x15, x19, #0, #56
     e0c:	f947c268 	ldr	x8, [x19,#3968]
     e10:	b340dd0f 	bfxil	x15, x8, #0, #56
     e14:	b9405508 	ldr	w8, [x8,#84]
     e18:	35000108 	cbnz	w8, e38 <stmmac_dvr_probe+0xb2c>
     e1c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     e20:	52800028 	mov	w8, #0x1                   	// #1
     e24:	91000000 	add	x0, x0, #0x0
     e28:	f940027f 	ldr	xzr, [x19]
     e2c:	b340de6f 	bfxil	x15, x19, #0, #56
     e30:	b9124a68 	str	w8, [x19,#4680]
     e34:	94000000 	bl	0 <printk>
     e38:	91290274 	add	x20, x19, #0xa40
     e3c:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
     e40:	91000042 	add	x2, x2, #0x0
     e44:	52800803 	mov	w3, #0x40                  	// #64
     e48:	aa1303e0 	mov	x0, x19
     e4c:	aa1403e1 	mov	x1, x20
     e50:	94000000 	bl	0 <netif_napi_add>
     e54:	b340de6f 	bfxil	x15, x19, #0, #56
     e58:	f947c268 	ldr	x8, [x19,#3968]
     e5c:	f940027f 	ldr	xzr, [x19]
     e60:	b340de6f 	bfxil	x15, x19, #0, #56
     e64:	b90b2a7f 	str	wzr, [x19,#2856]
     e68:	f940027f 	ldr	xzr, [x19]
     e6c:	b340de6f 	bfxil	x15, x19, #0, #56
     e70:	b9094a7f 	str	wzr, [x19,#2376]
     e74:	b340dd0f 	bfxil	x15, x8, #0, #56
     e78:	b9403108 	ldr	w8, [x8,#48]
     e7c:	34000248 	cbz	w8, ec4 <stmmac_dvr_probe+0xbb8>
     e80:	f940027f 	ldr	xzr, [x19]
     e84:	b340de6f 	bfxil	x15, x19, #0, #56
     e88:	b9115268 	str	w8, [x19,#4432]
     e8c:	b340de6f 	bfxil	x15, x19, #0, #56
     e90:	b94f9e68 	ldr	w8, [x19,#3996]
     e94:	34000408 	cbz	w8, f14 <stmmac_dvr_probe+0xc08>
     e98:	b340de6f 	bfxil	x15, x19, #0, #56
     e9c:	f947c268 	ldr	x8, [x19,#3968]
     ea0:	b340dd0f 	bfxil	x15, x8, #0, #56
     ea4:	b9400908 	ldr	w8, [x8,#8]
     ea8:	51001d09 	sub	w9, w8, #0x7
     eac:	71000d3f 	cmp	w9, #0x3
     eb0:	54000228 	b.hi	ef4 <stmmac_dvr_probe+0xbe8>
     eb4:	b340de6f 	bfxil	x15, x19, #0, #56
     eb8:	f9459268 	ldr	x8, [x19,#2848]
     ebc:	52800029 	mov	w9, #0x1                   	// #1
     ec0:	14000012 	b	f08 <stmmac_dvr_probe+0xbfc>
     ec4:	b340de6f 	bfxil	x15, x19, #0, #56
     ec8:	f9489e60 	ldr	x0, [x19,#4408]
     ecc:	94000000 	bl	0 <clk_get_rate>
     ed0:	52822a08 	mov	w8, #0x1150                	// #4432
     ed4:	38686a68 	ldrb	w8, [x19,x8]
     ed8:	372ffda8 	tbnz	w8, #5, e8c <stmmac_dvr_probe+0xb80>
     edc:	5281d7e8 	mov	w8, #0xebf                 	// #3775
     ee0:	72a042c8 	movk	w8, #0x216, lsl #16
     ee4:	6b08001f 	cmp	w0, w8
     ee8:	54000b68 	b.hi	1054 <stmmac_dvr_probe+0xd48>
     eec:	52800048 	mov	w8, #0x2                   	// #2
     ef0:	17ffffe4 	b	e80 <stmmac_dvr_probe+0xb74>
     ef4:	71000d1f 	cmp	w8, #0x3
     ef8:	540000e1 	b.ne	f14 <stmmac_dvr_probe+0xc08>
     efc:	b340de6f 	bfxil	x15, x19, #0, #56
     f00:	f9459268 	ldr	x8, [x19,#2848]
     f04:	52800049 	mov	w9, #0x2                   	// #2
     f08:	f940011f 	ldr	xzr, [x8]
     f0c:	b340dd0f 	bfxil	x15, x8, #0, #56
     f10:	b9005909 	str	w9, [x8,#88]
     f14:	b340de6f 	bfxil	x15, x19, #0, #56
     f18:	f9459268 	ldr	x8, [x19,#2848]
     f1c:	b340dd0f 	bfxil	x15, x8, #0, #56
     f20:	b9405908 	ldr	w8, [x8,#88]
     f24:	7100211f 	cmp	w8, #0x8
     f28:	540005e8 	b.hi	fe4 <stmmac_dvr_probe+0xcd8>
     f2c:	52800029 	mov	w9, #0x1                   	// #1
     f30:	1ac82128 	lsl	w8, w9, w8
     f34:	52802249 	mov	w9, #0x112                 	// #274
     f38:	6a09011f 	tst	w8, w9
     f3c:	54000540 	b.eq	fe4 <stmmac_dvr_probe+0xcd8>
     f40:	aa1303e0 	mov	x0, x19
     f44:	94000000 	bl	0 <register_netdev>
     f48:	340002c0 	cbz	w0, fa0 <stmmac_dvr_probe+0xc94>
     f4c:	2a0003f5 	mov	w21, w0
     f50:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
     f54:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
     f58:	91000000 	add	x0, x0, #0x0
     f5c:	91000021 	add	x1, x1, #0x0
     f60:	2a1503e2 	mov	w2, w21
     f64:	94000000 	bl	0 <printk>
     f68:	b340de6f 	bfxil	x15, x19, #0, #56
     f6c:	f9459268 	ldr	x8, [x19,#2848]
     f70:	b340dd0f 	bfxil	x15, x8, #0, #56
     f74:	b9405908 	ldr	w8, [x8,#88]
     f78:	7100211f 	cmp	w8, #0x8
     f7c:	540000c8 	b.hi	f94 <stmmac_dvr_probe+0xc88>
     f80:	52800029 	mov	w9, #0x1                   	// #1
     f84:	1ac82128 	lsl	w8, w9, w8
     f88:	52802249 	mov	w9, #0x112                 	// #274
     f8c:	6a09011f 	tst	w8, w9
     f90:	54000321 	b.ne	ff4 <stmmac_dvr_probe+0xce8>
     f94:	aa1303e0 	mov	x0, x19
     f98:	94000000 	bl	0 <stmmac_mdio_unregister>
     f9c:	14000016 	b	ff4 <stmmac_dvr_probe+0xce8>
     fa0:	b340de6f 	bfxil	x15, x19, #0, #56
     fa4:	f947c268 	ldr	x8, [x19,#3968]
     fa8:	b340de6f 	bfxil	x15, x19, #0, #56
     fac:	f945b260 	ldr	x0, [x19,#2912]
     fb0:	91240274 	add	x20, x19, #0x900
     fb4:	b340dd0f 	bfxil	x15, x8, #0, #56
     fb8:	b9400501 	ldr	w1, [x8,#4]
     fbc:	94000000 	bl	0 <mdiobus_get_phy>
     fc0:	b340de6f 	bfxil	x15, x19, #0, #56
     fc4:	f9458661 	ldr	x1, [x19,#2824]
     fc8:	94000000 	bl	0 <gmac_create_sysfs>
     fcc:	90000008 	adrp	x8, 90 <stmmac_eee_init+0x30>
     fd0:	2a0003f5 	mov	w21, w0
     fd4:	f940011f 	ldr	xzr, [x8]
     fd8:	b340dd0f 	bfxil	x15, x8, #0, #56
     fdc:	f9000114 	str	x20, [x8]
     fe0:	14000015 	b	1034 <stmmac_dvr_probe+0xd28>
     fe4:	aa1303e0 	mov	x0, x19
     fe8:	94000000 	bl	0 <stmmac_mdio_register>
     fec:	36fffaa0 	tbz	w0, #31, f40 <stmmac_dvr_probe+0xc34>
     ff0:	2a0003f5 	mov	w21, w0
     ff4:	aa1403e0 	mov	x0, x20
     ff8:	94000000 	bl	0 <netif_napi_del>
     ffc:	b340de6f 	bfxil	x15, x19, #0, #56
    1000:	f948a274 	ldr	x20, [x19,#4416]
    1004:	aa1403e0 	mov	x0, x20
    1008:	94000000 	bl	0 <clk_disable>
    100c:	aa1403e0 	mov	x0, x20
    1010:	94000000 	bl	0 <clk_unprepare>
    1014:	b340de6f 	bfxil	x15, x19, #0, #56
    1018:	f9489e74 	ldr	x20, [x19,#4408]
    101c:	aa1403e0 	mov	x0, x20
    1020:	94000000 	bl	0 <clk_disable>
    1024:	aa1403e0 	mov	x0, x20
    1028:	94000000 	bl	0 <clk_unprepare>
    102c:	aa1303e0 	mov	x0, x19
    1030:	94000000 	bl	0 <free_netdev>
    1034:	2a1503e0 	mov	w0, w21
    1038:	a9437bfd 	ldp	x29, x30, [sp,#48]
    103c:	a9424ff4 	ldp	x20, x19, [sp,#32]
    1040:	a94157f6 	ldp	x22, x21, [sp,#16]
    1044:	a8c45ff8 	ldp	x24, x23, [sp],#64
    1048:	b340dfcf 	bfxil	x15, x30, #0, #56
    104c:	f94003df 	ldr	xzr, [x30]
    1050:	d65f03c0 	ret
    1054:	5290dfe8 	mov	w8, #0x86ff                	// #34559
    1058:	72a07268 	movk	w8, #0x393, lsl #16
    105c:	6b08001f 	cmp	w0, w8
    1060:	54000068 	b.hi	106c <stmmac_dvr_probe+0xd60>
    1064:	52800068 	mov	w8, #0x3                   	// #3
    1068:	17ffff86 	b	e80 <stmmac_dvr_probe+0xb74>
    106c:	529c1fe8 	mov	w8, #0xe0ff                	// #57599
    1070:	72a0bea8 	movk	w8, #0x5f5, lsl #16
    1074:	6b08001f 	cmp	w0, w8
    1078:	54000108 	b.hi	1098 <stmmac_dvr_probe+0xd8c>
    107c:	f940027f 	ldr	xzr, [x19]
    1080:	b340de6f 	bfxil	x15, x19, #0, #56
    1084:	b911527f 	str	wzr, [x19,#4432]
    1088:	b340de6f 	bfxil	x15, x19, #0, #56
    108c:	b94f9e68 	ldr	w8, [x19,#3996]
    1090:	35fff048 	cbnz	w8, e98 <stmmac_dvr_probe+0xb8c>
    1094:	17ffffa0 	b	f14 <stmmac_dvr_probe+0xc08>
    1098:	529a2fe8 	mov	w8, #0xd17f                	// #53631
    109c:	72a11e08 	movk	w8, #0x8f0, lsl #16
    10a0:	6b08001f 	cmp	w0, w8
    10a4:	54000068 	b.hi	10b0 <stmmac_dvr_probe+0xda4>
    10a8:	52800028 	mov	w8, #0x1                   	// #1
    10ac:	17ffff75 	b	e80 <stmmac_dvr_probe+0xb74>
    10b0:	52964fe8 	mov	w8, #0xb27f                	// #45695
    10b4:	72a1dcc8 	movk	w8, #0xee6, lsl #16
    10b8:	6b08001f 	cmp	w0, w8
    10bc:	54000068 	b.hi	10c8 <stmmac_dvr_probe+0xdbc>
    10c0:	52800088 	mov	w8, #0x4                   	// #4
    10c4:	17ffff6f 	b	e80 <stmmac_dvr_probe+0xb74>
    10c8:	52945fe8 	mov	w8, #0xa2ff                	// #41727
    10cc:	72a23c28 	movk	w8, #0x11e1, lsl #16
    10d0:	6b08001f 	cmp	w0, w8
    10d4:	54ffedc8 	b.hi	e8c <stmmac_dvr_probe+0xb80>
    10d8:	528000a8 	mov	w8, #0x5                   	// #5
    10dc:	17ffff69 	b	e80 <stmmac_dvr_probe+0xb74>
    10e0:	52827108 	mov	w8, #0x1388                	// #5000
    10e4:	f94002df 	ldr	xzr, [x22]
    10e8:	b340decf 	bfxil	x15, x22, #0, #56
    10ec:	b90002c8 	str	w8, [x22]
    10f0:	17fffd2d 	b	5a4 <stmmac_dvr_probe+0x298>
    10f4:	5280c009 	mov	w9, #0x600                 	// #1536
    10f8:	f940011f 	ldr	xzr, [x8]
    10fc:	b340dd0f 	bfxil	x15, x8, #0, #56
    1100:	b9000109 	str	w9, [x8]
    1104:	17fffd2f 	b	5c0 <stmmac_dvr_probe+0x2b4>
    1108:	52800068 	mov	w8, #0x3                   	// #3
    110c:	17fffd34 	b	5dc <stmmac_dvr_probe+0x2d0>
    1110:	529fffe8 	mov	w8, #0xffff                	// #65535
    1114:	f940031f 	ldr	xzr, [x24]
    1118:	b340df0f 	bfxil	x15, x24, #0, #56
    111c:	b9000308 	str	w8, [x24]
    1120:	17fffd36 	b	5f8 <stmmac_dvr_probe+0x2ec>

0000000000001124 <moniter_tx_handler>:
    1124:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    1128:	a9017bfd 	stp	x29, x30, [sp,#16]
    112c:	910043fd 	add	x29, sp, #0x10
    1130:	94000000 	bl	0 <_mcount>
    1134:	90000014 	adrp	x20, 90 <stmmac_eee_init+0x30>
    1138:	b340de8f 	bfxil	x15, x20, #0, #56
    113c:	f9400288 	ldr	x8, [x20]
    1140:	b40002c8 	cbz	x8, 1198 <moniter_tx_handler+0x74>
    1144:	90000013 	adrp	x19, a0 <stmmac_eee_init+0x40>
    1148:	b340de6f 	bfxil	x15, x19, #0, #56
    114c:	b9400268 	ldr	w8, [x19]
    1150:	340002a8 	cbz	w8, 11a4 <moniter_tx_handler+0x80>
    1154:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    1158:	91000000 	add	x0, x0, #0x0
    115c:	94000000 	bl	0 <printk>
    1160:	b340de8f 	bfxil	x15, x20, #0, #56
    1164:	f9400288 	ldr	x8, [x20]
    1168:	b340dd0f 	bfxil	x15, x8, #0, #56
    116c:	f9410900 	ldr	x0, [x8,#528]
    1170:	94000730 	bl	2e30 <stmmac_release>
    1174:	b340de8f 	bfxil	x15, x20, #0, #56
    1178:	f9400288 	ldr	x8, [x20]
    117c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1180:	f9410900 	ldr	x0, [x8,#528]
    1184:	9400078c 	bl	2fb4 <stmmac_open>
    1188:	f940027f 	ldr	xzr, [x19]
    118c:	b340de6f 	bfxil	x15, x19, #0, #56
    1190:	b900027f 	str	wzr, [x19]
    1194:	14000004 	b	11a4 <moniter_tx_handler+0x80>
    1198:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    119c:	91000000 	add	x0, x0, #0x0
    11a0:	94000000 	bl	0 <printk>
    11a4:	a9417bfd 	ldp	x29, x30, [sp,#16]
    11a8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    11ac:	b340dfcf 	bfxil	x15, x30, #0, #56
    11b0:	f94003df 	ldr	xzr, [x30]
    11b4:	d65f03c0 	ret

00000000000011b8 <stmmac_poll>:
    11b8:	d10203ff 	sub	sp, sp, #0x80
    11bc:	a9026ffc 	stp	x28, x27, [sp,#32]
    11c0:	a90367fa 	stp	x26, x25, [sp,#48]
    11c4:	a9045ff8 	stp	x24, x23, [sp,#64]
    11c8:	a90557f6 	stp	x22, x21, [sp,#80]
    11cc:	a9064ff4 	stp	x20, x19, [sp,#96]
    11d0:	a9077bfd 	stp	x29, x30, [sp,#112]
    11d4:	9101c3fd 	add	x29, sp, #0x70
    11d8:	2a0103fb 	mov	w27, w1
    11dc:	aa0003f3 	mov	x19, x0
    11e0:	94000000 	bl	0 <_mcount>
    11e4:	b340de6f 	bfxil	x15, x19, #0, #56
    11e8:	f9418a68 	ldr	x8, [x19,#784]
    11ec:	d1050275 	sub	x21, x19, #0x140
    11f0:	aa1503e0 	mov	x0, x21
    11f4:	91000508 	add	x8, x8, #0x1
    11f8:	f940027f 	ldr	xzr, [x19]
    11fc:	b340de6f 	bfxil	x15, x19, #0, #56
    1200:	f9018a68 	str	x8, [x19,#784]
    1204:	9400157c 	bl	67f4 <stmmac_tx_clean>
    1208:	b340de6f 	bfxil	x15, x19, #0, #56
    120c:	f9407268 	ldr	x8, [x19,#224]
    1210:	b8598274 	ldur	w20, [x19,#-104]
    1214:	b340de6f 	bfxil	x15, x19, #0, #56
    1218:	395ba669 	ldrb	w9, [x19,#1769]
    121c:	f90003f3 	str	x19, [sp]
    1220:	b340dd0f 	bfxil	x15, x8, #0, #56
    1224:	b9405517 	ldr	w23, [x8,#84]
    1228:	36180309 	tbz	w9, #3, 1288 <stmmac_poll+0xd0>
    122c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    1230:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    1234:	91000000 	add	x0, x0, #0x0
    1238:	91000021 	add	x1, x1, #0x0
    123c:	94000000 	bl	0 <printk>
    1240:	b340deaf 	bfxil	x15, x21, #0, #56
    1244:	b948b6a8 	ldr	w8, [x21,#2228]
    1248:	b340deaf 	bfxil	x15, x21, #0, #56
    124c:	f94112a9 	ldr	x9, [x21,#544]
    1250:	5280190a 	mov	w10, #0xc8                  	// #200
    1254:	52804001 	mov	w1, #0x200                 	// #512
    1258:	7100011f 	cmp	w8, #0x0
    125c:	b340dd2f 	bfxil	x15, x9, #0, #56
    1260:	f9400528 	ldr	x8, [x9,#8]
    1264:	52801809 	mov	w9, #0xc0                  	// #192
    1268:	9a8a0129 	csel	x9, x9, x10, eq
    126c:	f8696aa0 	ldr	x0, [x21,x9]
    1270:	b340dd0f 	bfxil	x15, x8, #0, #56
    1274:	f9404d08 	ldr	x8, [x8,#152]
    1278:	52800022 	mov	w2, #0x1                   	// #1
    127c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1280:	f940011f 	ldr	xzr, [x8]
    1284:	d63f0100 	blr	x8
    1288:	2a1f03f6 	mov	w22, wzr
    128c:	b90017fb 	str	w27, [sp,#20]
    1290:	34003a5b 	cbz	w27, 19d8 <stmmac_poll+0x820>
    1294:	910c02a8 	add	x8, x21, #0x300
    1298:	f9000fe8 	str	x8, [sp,#24]
    129c:	910502a8 	add	x8, x21, #0x140
    12a0:	f90007e8 	str	x8, [sp,#8]
    12a4:	14000010 	b	12e4 <stmmac_poll+0x12c>
    12a8:	b340deaf 	bfxil	x15, x21, #0, #56
    12ac:	f9410aa1 	ldr	x1, [x21,#528]
    12b0:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    12b4:	91000000 	add	x0, x0, #0x0
    12b8:	94000000 	bl	0 <printk>
    12bc:	b340deaf 	bfxil	x15, x21, #0, #56
    12c0:	f9410aa8 	ldr	x8, [x21,#528]
    12c4:	b340dd0f 	bfxil	x15, x8, #0, #56
    12c8:	f940c109 	ldr	x9, [x8,#384]
    12cc:	91000529 	add	x9, x9, #0x1
    12d0:	f940011f 	ldr	xzr, [x8]
    12d4:	b340dd0f 	bfxil	x15, x8, #0, #56
    12d8:	f900c109 	str	x9, [x8,#384]
    12dc:	6b16037f 	cmp	w27, w22
    12e0:	540037a0 	b.eq	19d4 <stmmac_poll+0x81c>
    12e4:	b340deaf 	bfxil	x15, x21, #0, #56
    12e8:	b948b6a8 	ldr	w8, [x21,#2228]
    12ec:	2a1403f3 	mov	w19, w20
    12f0:	340000c8 	cbz	w8, 1308 <stmmac_poll+0x150>
    12f4:	b340deaf 	bfxil	x15, x21, #0, #56
    12f8:	f94066a8 	ldr	x8, [x21,#200]
    12fc:	93407e69 	sxtw	x9, w19
    1300:	8b09151c 	add	x28, x8, x9, lsl #5
    1304:	14000004 	b	1314 <stmmac_poll+0x15c>
    1308:	b340deaf 	bfxil	x15, x21, #0, #56
    130c:	f94062a8 	ldr	x8, [x21,#192]
    1310:	8b33d11c 	add	x28, x8, w19, sxtw #4
    1314:	b340deaf 	bfxil	x15, x21, #0, #56
    1318:	f94112a8 	ldr	x8, [x21,#544]
    131c:	b340deaf 	bfxil	x15, x21, #0, #56
    1320:	f9410aa9 	ldr	x9, [x21,#528]
    1324:	f9400fe1 	ldr	x1, [sp,#24]
    1328:	aa1c03e2 	mov	x2, x28
    132c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1330:	f9400508 	ldr	x8, [x8,#8]
    1334:	9104c120 	add	x0, x9, #0x130
    1338:	b340dd0f 	bfxil	x15, x8, #0, #56
    133c:	f9403508 	ldr	x8, [x8,#104]
    1340:	b340dd0f 	bfxil	x15, x8, #0, #56
    1344:	f940011f 	ldr	xzr, [x8]
    1348:	d63f0100 	blr	x8
    134c:	37183460 	tbnz	w0, #3, 19d8 <stmmac_poll+0x820>
    1350:	b340deaf 	bfxil	x15, x21, #0, #56
    1354:	b940daa8 	ldr	w8, [x21,#216]
    1358:	b340deaf 	bfxil	x15, x21, #0, #56
    135c:	b948b6a9 	ldr	w9, [x21,#2228]
    1360:	2a0003fa 	mov	w26, w0
    1364:	11000508 	add	w8, w8, #0x1
    1368:	12002114 	and	w20, w8, #0x1ff
    136c:	f94002bf 	ldr	xzr, [x21]
    1370:	b340deaf 	bfxil	x15, x21, #0, #56
    1374:	b900dab4 	str	w20, [x21,#216]
    1378:	340000a9 	cbz	w9, 138c <stmmac_poll+0x1d4>
    137c:	b340deaf 	bfxil	x15, x21, #0, #56
    1380:	f94066a8 	ldr	x8, [x21,#200]
    1384:	8b141518 	add	x24, x8, x20, lsl #5
    1388:	14000004 	b	1398 <stmmac_poll+0x1e0>
    138c:	b340deaf 	bfxil	x15, x21, #0, #56
    1390:	f94062a8 	ldr	x8, [x21,#192]
    1394:	8b345118 	add	x24, x8, w20, uxtw #4
    1398:	f9800300 	prfm	pldl1keep, [x24]
    139c:	b340deaf 	bfxil	x15, x21, #0, #56
    13a0:	b948b6a8 	ldr	w8, [x21,#2228]
    13a4:	34000268 	cbz	w8, 13f0 <stmmac_poll+0x238>
    13a8:	b340deaf 	bfxil	x15, x21, #0, #56
    13ac:	f94112a8 	ldr	x8, [x21,#544]
    13b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    13b4:	f9400508 	ldr	x8, [x8,#8]
    13b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    13bc:	f9403908 	ldr	x8, [x8,#112]
    13c0:	b4000188 	cbz	x8, 13f0 <stmmac_poll+0x238>
    13c4:	b340deaf 	bfxil	x15, x21, #0, #56
    13c8:	f9410aa9 	ldr	x9, [x21,#528]
    13cc:	b340deaf 	bfxil	x15, x21, #0, #56
    13d0:	f94066aa 	ldr	x10, [x21,#200]
    13d4:	f9400fe1 	ldr	x1, [sp,#24]
    13d8:	93407e6b 	sxtw	x11, w19
    13dc:	9104c120 	add	x0, x9, #0x130
    13e0:	8b0b1542 	add	x2, x10, x11, lsl #5
    13e4:	b340dd0f 	bfxil	x15, x8, #0, #56
    13e8:	f940011f 	ldr	xzr, [x8]
    13ec:	d63f0100 	blr	x8
    13f0:	7100075f 	cmp	w26, #0x1
    13f4:	110006d6 	add	w22, w22, #0x1
    13f8:	54001d40 	b.eq	17a0 <stmmac_poll+0x5e8>
    13fc:	b340deaf 	bfxil	x15, x21, #0, #56
    1400:	b94826a8 	ldr	w8, [x21,#2084]
    1404:	b340deaf 	bfxil	x15, x21, #0, #56
    1408:	f94112a9 	ldr	x9, [x21,#544]
    140c:	aa1c03e0 	mov	x0, x28
    1410:	2a1703e1 	mov	w1, w23
    1414:	7101011f 	cmp	w8, #0x40
    1418:	b340dd2f 	bfxil	x15, x9, #0, #56
    141c:	f9400528 	ldr	x8, [x9,#8]
    1420:	1a9fa7e9 	cset	w9, lt
    1424:	d37df129 	lsl	x9, x9, #3
    1428:	b8696b99 	ldr	w25, [x28,x9]
    142c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1430:	f9403108 	ldr	x8, [x8,#96]
    1434:	b340dd0f 	bfxil	x15, x8, #0, #56
    1438:	f940011f 	ldr	xzr, [x8]
    143c:	d63f0100 	blr	x8
    1440:	b340deaf 	bfxil	x15, x21, #0, #56
    1444:	b940e2a3 	ldr	w3, [x21,#224]
    1448:	2a0003e2 	mov	w2, w0
    144c:	6b03001f 	cmp	w0, w3
    1450:	54fff2c8 	b.hi	12a8 <stmmac_poll+0xf0>
    1454:	b340deaf 	bfxil	x15, x21, #0, #56
    1458:	3960a6a8 	ldrb	w8, [x21,#2089]
    145c:	51001049 	sub	w9, w2, #0x4
    1460:	7100135f 	cmp	w26, #0x4
    1464:	1a89005b 	csel	w27, w2, w9, eq
    1468:	361800e8 	tbz	w8, #3, 1484 <stmmac_poll+0x2cc>
    146c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    1470:	91000000 	add	x0, x0, #0x0
    1474:	aa1c03e1 	mov	x1, x28
    1478:	2a1303e2 	mov	w2, w19
    147c:	2a1903e3 	mov	w3, w25
    1480:	94000000 	bl	0 <printk>
    1484:	b340deaf 	bfxil	x15, x21, #0, #56
    1488:	f94342a8 	ldr	x8, [x21,#1664]
    148c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1490:	b940b108 	ldr	w8, [x8,#176]
    1494:	35000128 	cbnz	w8, 14b8 <stmmac_poll+0x300>
    1498:	b340deaf 	bfxil	x15, x21, #0, #56
    149c:	b940e6a8 	ldr	w8, [x21,#228]
    14a0:	6b08037f 	cmp	w27, w8
    14a4:	54001ec3 	b.cc	187c <stmmac_poll+0x6c4>
    14a8:	b340deaf 	bfxil	x15, x21, #0, #56
    14ac:	b940eaa8 	ldr	w8, [x21,#232]
    14b0:	7102011f 	cmp	w8, #0x80
    14b4:	54001e42 	b.cs	187c <stmmac_poll+0x6c4>
    14b8:	b340deaf 	bfxil	x15, x21, #0, #56
    14bc:	f9406aa8 	ldr	x8, [x21,#208]
    14c0:	f873d91a 	ldr	x26, [x8,w19,sxtw #3]
    14c4:	b4001c1a 	cbz	x26, 1844 <stmmac_poll+0x68c>
    14c8:	b340df4f 	bfxil	x15, x26, #0, #56
    14cc:	f940cb48 	ldr	x8, [x26,#400]
    14d0:	93407e69 	sxtw	x9, w19
    14d4:	d37df133 	lsl	x19, x9, #3
    14d8:	aa1a03e0 	mov	x0, x26
    14dc:	d1000908 	sub	x8, x8, #0x2
    14e0:	f9800100 	prfm	pldl1keep, [x8]
    14e4:	b340deaf 	bfxil	x15, x21, #0, #56
    14e8:	f9406aa8 	ldr	x8, [x21,#208]
    14ec:	2a1b03e1 	mov	w1, w27
    14f0:	f833691f 	str	xzr, [x8,x19]
    14f4:	b340deaf 	bfxil	x15, x21, #0, #56
    14f8:	b940eaa8 	ldr	w8, [x21,#232]
    14fc:	11000508 	add	w8, w8, #0x1
    1500:	f94002bf 	ldr	xzr, [x21]
    1504:	b340deaf 	bfxil	x15, x21, #0, #56
    1508:	b900eaa8 	str	w8, [x21,#232]
    150c:	94000000 	bl	0 <skb_put>
    1510:	b340deaf 	bfxil	x15, x21, #0, #56
    1514:	f9407ea8 	ldr	x8, [x21,#248]
    1518:	b340deaf 	bfxil	x15, x21, #0, #56
    151c:	f9410ea0 	ldr	x0, [x21,#536]
    1520:	b940e2a2 	ldr	w2, [x21,#224]
    1524:	f8736901 	ldr	x1, [x8,x19]
    1528:	b4000080 	cbz	x0, 1538 <stmmac_poll+0x380>
    152c:	b340dc0f 	bfxil	x15, x0, #0, #56
    1530:	f9412408 	ldr	x8, [x0,#584]
    1534:	b5000068 	cbnz	x8, 1540 <stmmac_poll+0x388>
    1538:	90000008 	adrp	x8, 0 <dummy_dma_ops>
    153c:	91000108 	add	x8, x8, #0x0
    1540:	b340dd0f 	bfxil	x15, x8, #0, #56
    1544:	f9401508 	ldr	x8, [x8,#40]
    1548:	b40000c8 	cbz	x8, 1560 <stmmac_poll+0x3a8>
    154c:	52800043 	mov	w3, #0x2                   	// #2
    1550:	aa1f03e4 	mov	x4, xzr
    1554:	b340dd0f 	bfxil	x15, x8, #0, #56
    1558:	f940011f 	ldr	xzr, [x8]
    155c:	d63f0100 	blr	x8
    1560:	b340deaf 	bfxil	x15, x21, #0, #56
    1564:	3960a6a8 	ldrb	w8, [x21,#2089]
    1568:	36200108 	tbz	w8, #4, 1588 <stmmac_poll+0x3d0>
    156c:	b340df4f 	bfxil	x15, x26, #0, #56
    1570:	f940cb42 	ldr	x2, [x26,#400]
    1574:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    1578:	93407f63 	sxtw	x3, w27
    157c:	52800041 	mov	w1, #0x2                   	// #2
    1580:	91000000 	add	x0, x0, #0x0
    1584:	94000000 	bl	0 <print_hex_dump_bytes>
    1588:	b340deaf 	bfxil	x15, x21, #0, #56
    158c:	b940f2a8 	ldr	w8, [x21,#240]
    1590:	34000688 	cbz	w8, 1660 <stmmac_poll+0x4a8>
    1594:	b340deaf 	bfxil	x15, x21, #0, #56
    1598:	f94112a8 	ldr	x8, [x21,#544]
    159c:	b340deaf 	bfxil	x15, x21, #0, #56
    15a0:	b94946a1 	ldr	w1, [x21,#2372]
    15a4:	aa1c03e0 	mov	x0, x28
    15a8:	b340dd0f 	bfxil	x15, x8, #0, #56
    15ac:	f9400508 	ldr	x8, [x8,#8]
    15b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    15b4:	f9404908 	ldr	x8, [x8,#144]
    15b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    15bc:	f940011f 	ldr	xzr, [x8]
    15c0:	d63f0100 	blr	x8
    15c4:	340000e0 	cbz	w0, 15e0 <stmmac_poll+0x428>
    15c8:	b340deaf 	bfxil	x15, x21, #0, #56
    15cc:	f9410aa0 	ldr	x0, [x21,#528]
    15d0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    15d4:	91000021 	add	x1, x1, #0x0
    15d8:	94000000 	bl	0 <netdev_err>
    15dc:	14000021 	b	1660 <stmmac_poll+0x4a8>
    15e0:	b340deaf 	bfxil	x15, x21, #0, #56
    15e4:	f94112a8 	ldr	x8, [x21,#544]
    15e8:	b340deaf 	bfxil	x15, x21, #0, #56
    15ec:	f94342a9 	ldr	x9, [x21,#1664]
    15f0:	b340deaf 	bfxil	x15, x21, #0, #56
    15f4:	b94946a1 	ldr	w1, [x21,#2372]
    15f8:	b340dd0f 	bfxil	x15, x8, #0, #56
    15fc:	f9400508 	ldr	x8, [x8,#8]
    1600:	b340dd2f 	bfxil	x15, x9, #0, #56
    1604:	b940b129 	ldr	w9, [x9,#176]
    1608:	b340dd0f 	bfxil	x15, x8, #0, #56
    160c:	f9404508 	ldr	x8, [x8,#136]
    1610:	7100013f 	cmp	w9, #0x0
    1614:	9a980380 	csel	x0, x28, x24, eq
    1618:	b340dd0f 	bfxil	x15, x8, #0, #56
    161c:	f940011f 	ldr	xzr, [x8]
    1620:	d63f0100 	blr	x8
    1624:	b340deaf 	bfxil	x15, x21, #0, #56
    1628:	f9410aa8 	ldr	x8, [x21,#528]
    162c:	aa0003f3 	mov	x19, x0
    1630:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    1634:	91000021 	add	x1, x1, #0x0
    1638:	aa0803e0 	mov	x0, x8
    163c:	aa1303e2 	mov	x2, x19
    1640:	94000000 	bl	0 <netdev_info>
    1644:	b340df4f 	bfxil	x15, x26, #0, #56
    1648:	f940c348 	ldr	x8, [x26,#384]
    164c:	b9417349 	ldr	w9, [x26,#368]
    1650:	8b090108 	add	x8, x8, x9
    1654:	f940011f 	ldr	xzr, [x8]
    1658:	b340dd0f 	bfxil	x15, x8, #0, #56
    165c:	f9000913 	str	x19, [x8,#16]
    1660:	b340deaf 	bfxil	x15, x21, #0, #56
    1664:	f9410aa1 	ldr	x1, [x21,#528]
    1668:	b340dc2f 	bfxil	x15, x1, #0, #56
    166c:	3943c428 	ldrb	w8, [x1,#241]
    1670:	360004a8 	tbz	w8, #0, 1704 <stmmac_poll+0x54c>
    1674:	b340df4f 	bfxil	x15, x26, #0, #56
    1678:	f940cb48 	ldr	x8, [x26,#400]
    167c:	5295110a 	mov	w10, #0xa888                	// #43144
    1680:	b340dd0f 	bfxil	x15, x8, #0, #56
    1684:	79401909 	ldrh	w9, [x8,#12]
    1688:	6b0a013f 	cmp	w9, w10
    168c:	54000060 	b.eq	1698 <stmmac_poll+0x4e0>
    1690:	7102053f 	cmp	w9, #0x81
    1694:	54000381 	b.ne	1704 <stmmac_poll+0x54c>
    1698:	b340dd0f 	bfxil	x15, x8, #0, #56
    169c:	f9400109 	ldr	x9, [x8]
    16a0:	b340dd0f 	bfxil	x15, x8, #0, #56
    16a4:	b940090a 	ldr	w10, [x8,#8]
    16a8:	b340dd0f 	bfxil	x15, x8, #0, #56
    16ac:	79401d13 	ldrh	w19, [x8,#14]
    16b0:	52800081 	mov	w1, #0x4                   	// #4
    16b4:	aa1a03e0 	mov	x0, x26
    16b8:	f940011f 	ldr	xzr, [x8]
    16bc:	b340dd0f 	bfxil	x15, x8, #0, #56
    16c0:	f8004109 	stur	x9, [x8,#4]
    16c4:	f940011f 	ldr	xzr, [x8]
    16c8:	b340dd0f 	bfxil	x15, x8, #0, #56
    16cc:	b9000d0a 	str	w10, [x8,#12]
    16d0:	94000000 	bl	0 <skb_pull>
    16d4:	52801028 	mov	w8, #0x81                  	// #129
    16d8:	f940035f 	ldr	xzr, [x26]
    16dc:	b340df4f 	bfxil	x15, x26, #0, #56
    16e0:	79027b48 	strh	w8, [x26,#316]
    16e4:	321c0268 	orr	w8, w19, #0x10
    16e8:	5ac00908 	rev	w8, w8
    16ec:	53107d08 	lsr	w8, w8, #16
    16f0:	f940035f 	ldr	xzr, [x26]
    16f4:	b340df4f 	bfxil	x15, x26, #0, #56
    16f8:	79027f48 	strh	w8, [x26,#318]
    16fc:	b340deaf 	bfxil	x15, x21, #0, #56
    1700:	f9410aa1 	ldr	x1, [x21,#528]
    1704:	aa1a03e0 	mov	x0, x26
    1708:	94000000 	bl	0 <eth_type_trans>
    170c:	f940035f 	ldr	xzr, [x26]
    1710:	b340df4f 	bfxil	x15, x26, #0, #56
    1714:	7902ab40 	strh	w0, [x26,#340]
    1718:	34000177 	cbz	w23, 1744 <stmmac_poll+0x58c>
    171c:	aa1a03e8 	mov	x8, x26
    1720:	784f8d09 	ldrh	w9, [x8,#248]!
    1724:	b340dd0f 	bfxil	x15, x8, #0, #56
    1728:	3940090a 	ldrb	w10, [x8,#2]
    172c:	33101d49 	bfi	w9, w10, #16, #8
    1730:	12167929 	and	w9, w9, #0xfffffdff
    1734:	32180129 	orr	w9, w9, #0x100
    1738:	f940011f 	ldr	xzr, [x8]
    173c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1740:	79000109 	strh	w9, [x8]
    1744:	f94007e0 	ldr	x0, [sp,#8]
    1748:	aa1a03e1 	mov	x1, x26
    174c:	94000000 	bl	0 <napi_gro_receive>
    1750:	b340deaf 	bfxil	x15, x21, #0, #56
    1754:	f9410aa8 	ldr	x8, [x21,#528]
    1758:	b340dd0f 	bfxil	x15, x8, #0, #56
    175c:	f9409909 	ldr	x9, [x8,#304]
    1760:	91000529 	add	x9, x9, #0x1
    1764:	f940011f 	ldr	xzr, [x8]
    1768:	b340dd0f 	bfxil	x15, x8, #0, #56
    176c:	f9009909 	str	x9, [x8,#304]
    1770:	b340deaf 	bfxil	x15, x21, #0, #56
    1774:	f9410aa8 	ldr	x8, [x21,#528]
    1778:	b340dd0f 	bfxil	x15, x8, #0, #56
    177c:	f940a109 	ldr	x9, [x8,#320]
    1780:	8b3bc129 	add	x9, x9, w27, sxtw
    1784:	f940011f 	ldr	xzr, [x8]
    1788:	b340dd0f 	bfxil	x15, x8, #0, #56
    178c:	f900a109 	str	x9, [x8,#320]
    1790:	b94017fb 	ldr	w27, [sp,#20]
    1794:	6b16037f 	cmp	w27, w22
    1798:	54ffda61 	b.ne	12e4 <stmmac_poll+0x12c>
    179c:	1400008e 	b	19d4 <stmmac_poll+0x81c>
    17a0:	b340deaf 	bfxil	x15, x21, #0, #56
    17a4:	f9410aa8 	ldr	x8, [x21,#528]
    17a8:	b340dd0f 	bfxil	x15, x8, #0, #56
    17ac:	f940a909 	ldr	x9, [x8,#336]
    17b0:	91000529 	add	x9, x9, #0x1
    17b4:	f940011f 	ldr	xzr, [x8]
    17b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    17bc:	f900a909 	str	x9, [x8,#336]
    17c0:	b340deaf 	bfxil	x15, x21, #0, #56
    17c4:	b940f2a8 	ldr	w8, [x21,#240]
    17c8:	34ffd8a8 	cbz	w8, 12dc <stmmac_poll+0x124>
    17cc:	b340deaf 	bfxil	x15, x21, #0, #56
    17d0:	b948b6a8 	ldr	w8, [x21,#2228]
    17d4:	35ffd848 	cbnz	w8, 12dc <stmmac_poll+0x124>
    17d8:	b340deaf 	bfxil	x15, x21, #0, #56
    17dc:	f9406aa8 	ldr	x8, [x21,#208]
    17e0:	937d7e69 	sbfiz	x9, x19, #3, #32
    17e4:	f829691f 	str	xzr, [x8,x9]
    17e8:	b340deaf 	bfxil	x15, x21, #0, #56
    17ec:	f9407ea8 	ldr	x8, [x21,#248]
    17f0:	b340deaf 	bfxil	x15, x21, #0, #56
    17f4:	f9410ea0 	ldr	x0, [x21,#536]
    17f8:	b940e2a2 	ldr	w2, [x21,#224]
    17fc:	f8696901 	ldr	x1, [x8,x9]
    1800:	b4000080 	cbz	x0, 1810 <stmmac_poll+0x658>
    1804:	b340dc0f 	bfxil	x15, x0, #0, #56
    1808:	f9412408 	ldr	x8, [x0,#584]
    180c:	b5000068 	cbnz	x8, 1818 <stmmac_poll+0x660>
    1810:	90000008 	adrp	x8, 0 <dummy_dma_ops>
    1814:	91000108 	add	x8, x8, #0x0
    1818:	b340dd0f 	bfxil	x15, x8, #0, #56
    181c:	f9401508 	ldr	x8, [x8,#40]
    1820:	b4ffd5e8 	cbz	x8, 12dc <stmmac_poll+0x124>
    1824:	52800043 	mov	w3, #0x2                   	// #2
    1828:	aa1f03e4 	mov	x4, xzr
    182c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1830:	f940011f 	ldr	xzr, [x8]
    1834:	d63f0100 	blr	x8
    1838:	6b16037f 	cmp	w27, w22
    183c:	54ffd541 	b.ne	12e4 <stmmac_poll+0x12c>
    1840:	14000065 	b	19d4 <stmmac_poll+0x81c>
    1844:	b340deaf 	bfxil	x15, x21, #0, #56
    1848:	f9410aa1 	ldr	x1, [x21,#528]
    184c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    1850:	91000000 	add	x0, x0, #0x0
    1854:	94000000 	bl	0 <printk>
    1858:	b340deaf 	bfxil	x15, x21, #0, #56
    185c:	f9410aa8 	ldr	x8, [x21,#528]
    1860:	b340dd0f 	bfxil	x15, x8, #0, #56
    1864:	f940b109 	ldr	x9, [x8,#352]
    1868:	91000529 	add	x9, x9, #0x1
    186c:	f940011f 	ldr	xzr, [x8]
    1870:	b340dd0f 	bfxil	x15, x8, #0, #56
    1874:	f900b109 	str	x9, [x8,#352]
    1878:	17ffffc6 	b	1790 <stmmac_poll+0x5d8>
    187c:	b340deaf 	bfxil	x15, x21, #0, #56
    1880:	f9410aa0 	ldr	x0, [x21,#528]
    1884:	52800402 	mov	w2, #0x20                  	// #32
    1888:	11000b61 	add	w1, w27, #0x2
    188c:	72a04102 	movk	w2, #0x208, lsl #16
    1890:	94000000 	bl	0 <__netdev_alloc_skb>
    1894:	b4000900 	cbz	x0, 19b4 <stmmac_poll+0x7fc>
    1898:	b340dc0f 	bfxil	x15, x0, #0, #56
    189c:	f940c808 	ldr	x8, [x0,#400]
    18a0:	b340dc0f 	bfxil	x15, x0, #0, #56
    18a4:	b9416009 	ldr	w9, [x0,#352]
    18a8:	aa0003fa 	mov	x26, x0
    18ac:	93407f79 	sxtw	x25, w27
    18b0:	91000900 	add	x0, x8, #0x2
    18b4:	11000928 	add	w8, w9, #0x2
    18b8:	f940035f 	ldr	xzr, [x26]
    18bc:	b340df4f 	bfxil	x15, x26, #0, #56
    18c0:	f900cb40 	str	x0, [x26,#400]
    18c4:	f940035f 	ldr	xzr, [x26]
    18c8:	b340df4f 	bfxil	x15, x26, #0, #56
    18cc:	b9016348 	str	w8, [x26,#352]
    18d0:	b340deaf 	bfxil	x15, x21, #0, #56
    18d4:	f9407ea9 	ldr	x9, [x21,#248]
    18d8:	b340deaf 	bfxil	x15, x21, #0, #56
    18dc:	f9410ea8 	ldr	x8, [x21,#536]
    18e0:	f873d921 	ldr	x1, [x9,w19,sxtw #3]
    18e4:	b4000088 	cbz	x8, 18f4 <stmmac_poll+0x73c>
    18e8:	b340dd0f 	bfxil	x15, x8, #0, #56
    18ec:	f9412509 	ldr	x9, [x8,#584]
    18f0:	b5000069 	cbnz	x9, 18fc <stmmac_poll+0x744>
    18f4:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    18f8:	91000129 	add	x9, x9, #0x0
    18fc:	b340dd2f 	bfxil	x15, x9, #0, #56
    1900:	f9402929 	ldr	x9, [x9,#80]
    1904:	93407e73 	sxtw	x19, w19
    1908:	b4000129 	cbz	x9, 192c <stmmac_poll+0x774>
    190c:	52800043 	mov	w3, #0x2                   	// #2
    1910:	aa0803e0 	mov	x0, x8
    1914:	aa1903e2 	mov	x2, x25
    1918:	b340dd2f 	bfxil	x15, x9, #0, #56
    191c:	f940013f 	ldr	xzr, [x9]
    1920:	d63f0120 	blr	x9
    1924:	b340df4f 	bfxil	x15, x26, #0, #56
    1928:	f940cb40 	ldr	x0, [x26,#400]
    192c:	b340deaf 	bfxil	x15, x21, #0, #56
    1930:	f9406aa8 	ldr	x8, [x21,#208]
    1934:	d37df273 	lsl	x19, x19, #3
    1938:	2a1b03e2 	mov	w2, w27
    193c:	f8736908 	ldr	x8, [x8,x19]
    1940:	b340dd0f 	bfxil	x15, x8, #0, #56
    1944:	f940c901 	ldr	x1, [x8,#400]
    1948:	94000000 	bl	0 <memcpy>
    194c:	aa1a03e0 	mov	x0, x26
    1950:	2a1b03e1 	mov	w1, w27
    1954:	94000000 	bl	0 <skb_put>
    1958:	b340deaf 	bfxil	x15, x21, #0, #56
    195c:	f9407ea8 	ldr	x8, [x21,#248]
    1960:	b340deaf 	bfxil	x15, x21, #0, #56
    1964:	f9410ea0 	ldr	x0, [x21,#536]
    1968:	f8736901 	ldr	x1, [x8,x19]
    196c:	b4000080 	cbz	x0, 197c <stmmac_poll+0x7c4>
    1970:	b340dc0f 	bfxil	x15, x0, #0, #56
    1974:	f9412408 	ldr	x8, [x0,#584]
    1978:	b5000068 	cbnz	x8, 1984 <stmmac_poll+0x7cc>
    197c:	90000008 	adrp	x8, 0 <dummy_dma_ops>
    1980:	91000108 	add	x8, x8, #0x0
    1984:	b340dd0f 	bfxil	x15, x8, #0, #56
    1988:	f9402d08 	ldr	x8, [x8,#88]
    198c:	b4ffdea8 	cbz	x8, 1560 <stmmac_poll+0x3a8>
    1990:	52800043 	mov	w3, #0x2                   	// #2
    1994:	aa1903e2 	mov	x2, x25
    1998:	b340dd0f 	bfxil	x15, x8, #0, #56
    199c:	f940011f 	ldr	xzr, [x8]
    19a0:	d63f0100 	blr	x8
    19a4:	b340deaf 	bfxil	x15, x21, #0, #56
    19a8:	3960a6a8 	ldrb	w8, [x21,#2089]
    19ac:	3727de08 	tbnz	w8, #4, 156c <stmmac_poll+0x3b4>
    19b0:	17fffef6 	b	1588 <stmmac_poll+0x3d0>
    19b4:	94000000 	bl	0 <net_ratelimit>
    19b8:	34fff500 	cbz	w0, 1858 <stmmac_poll+0x6a0>
    19bc:	b340deaf 	bfxil	x15, x21, #0, #56
    19c0:	f9410ea0 	ldr	x0, [x21,#536]
    19c4:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    19c8:	91000021 	add	x1, x1, #0x0
    19cc:	94000000 	bl	0 <dev_warn>
    19d0:	17ffffa2 	b	1858 <stmmac_poll+0x6a0>
    19d4:	2a1b03f6 	mov	w22, w27
    19d8:	b340deaf 	bfxil	x15, x21, #0, #56
    19dc:	295b5ea8 	ldp	w8, w23, [x21,#216]
    19e0:	6b170108 	subs	w8, w8, w23
    19e4:	1a9f27e9 	cset	w9, cc
    19e8:	0b092514 	add	w20, w8, w9, lsl #9
    19ec:	7100069f 	cmp	w20, #0x1
    19f0:	540017ab 	b.lt	1ce4 <stmmac_poll+0xb2c>
    19f4:	b340deaf 	bfxil	x15, x21, #0, #56
    19f8:	b980e2b8 	ldrsw	x24, [x21,#224]
    19fc:	9000001b 	adrp	x27, 0 <dummy_dma_ops>
    1a00:	9100037b 	add	x27, x27, #0x0
    1a04:	11000b19 	add	w25, w24, #0x2
    1a08:	b340deaf 	bfxil	x15, x21, #0, #56
    1a0c:	b948b6a8 	ldr	w8, [x21,#2228]
    1a10:	340000c8 	cbz	w8, 1a28 <stmmac_poll+0x870>
    1a14:	b340deaf 	bfxil	x15, x21, #0, #56
    1a18:	f94066a8 	ldr	x8, [x21,#200]
    1a1c:	2a1703fc 	mov	w28, w23
    1a20:	8b1c1513 	add	x19, x8, x28, lsl #5
    1a24:	14000005 	b	1a38 <stmmac_poll+0x880>
    1a28:	b340deaf 	bfxil	x15, x21, #0, #56
    1a2c:	f94062a8 	ldr	x8, [x21,#192]
    1a30:	2a1703fc 	mov	w28, w23
    1a34:	8b375113 	add	x19, x8, w23, uxtw #4
    1a38:	b340deaf 	bfxil	x15, x21, #0, #56
    1a3c:	f9406aa8 	ldr	x8, [x21,#208]
    1a40:	f87c7908 	ldr	x8, [x8,x28,lsl #3]
    1a44:	b5000da8 	cbnz	x8, 1bf8 <stmmac_poll+0xa40>
    1a48:	b340deaf 	bfxil	x15, x21, #0, #56
    1a4c:	f9410aa0 	ldr	x0, [x21,#528]
    1a50:	52800402 	mov	w2, #0x20                  	// #32
    1a54:	72a04102 	movk	w2, #0x208, lsl #16
    1a58:	2a1903e1 	mov	w1, w25
    1a5c:	94000000 	bl	0 <__netdev_alloc_skb>
    1a60:	b40011a0 	cbz	x0, 1c94 <stmmac_poll+0xadc>
    1a64:	b340dc0f 	bfxil	x15, x0, #0, #56
    1a68:	f940c808 	ldr	x8, [x0,#400]
    1a6c:	b340dc0f 	bfxil	x15, x0, #0, #56
    1a70:	b9416009 	ldr	w9, [x0,#352]
    1a74:	aa0003fa 	mov	x26, x0
    1a78:	91000908 	add	x8, x8, #0x2
    1a7c:	11000929 	add	w9, w9, #0x2
    1a80:	f940001f 	ldr	xzr, [x0]
    1a84:	b340dc0f 	bfxil	x15, x0, #0, #56
    1a88:	f900c808 	str	x8, [x0,#400]
    1a8c:	f940001f 	ldr	xzr, [x0]
    1a90:	b340dc0f 	bfxil	x15, x0, #0, #56
    1a94:	b9016009 	str	w9, [x0,#352]
    1a98:	b340deaf 	bfxil	x15, x21, #0, #56
    1a9c:	f9406aa8 	ldr	x8, [x21,#208]
    1aa0:	f83c7900 	str	x0, [x8,x28,lsl #3]
    1aa4:	b340deaf 	bfxil	x15, x21, #0, #56
    1aa8:	f9410ea0 	ldr	x0, [x21,#536]
    1aac:	b340df4f 	bfxil	x15, x26, #0, #56
    1ab0:	f940cb48 	ldr	x8, [x26,#400]
    1ab4:	b4000080 	cbz	x0, 1ac4 <stmmac_poll+0x90c>
    1ab8:	b340dc0f 	bfxil	x15, x0, #0, #56
    1abc:	f9412409 	ldr	x9, [x0,#584]
    1ac0:	b5000049 	cbnz	x9, 1ac8 <stmmac_poll+0x910>
    1ac4:	aa1b03e9 	mov	x9, x27
    1ac8:	b340dd2f 	bfxil	x15, x9, #0, #56
    1acc:	f9401129 	ldr	x9, [x9,#32]
    1ad0:	d346fd0a 	lsr	x10, x8, #6
    1ad4:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    1ad8:	927a654a 	and	x10, x10, #0xffffffc0
    1adc:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    1ae0:	aa0b0141 	orr	x1, x10, x11
    1ae4:	92402d02 	and	x2, x8, #0xfff
    1ae8:	52800044 	mov	w4, #0x2                   	// #2
    1aec:	aa1803e3 	mov	x3, x24
    1af0:	aa1f03e5 	mov	x5, xzr
    1af4:	b340dd2f 	bfxil	x15, x9, #0, #56
    1af8:	f940013f 	ldr	xzr, [x9]
    1afc:	d63f0120 	blr	x9
    1b00:	b340deaf 	bfxil	x15, x21, #0, #56
    1b04:	f9407ea8 	ldr	x8, [x21,#248]
    1b08:	d37df389 	lsl	x9, x28, #3
    1b0c:	f8296900 	str	x0, [x8,x9]
    1b10:	b340deaf 	bfxil	x15, x21, #0, #56
    1b14:	f9407ea8 	ldr	x8, [x21,#248]
    1b18:	b340deaf 	bfxil	x15, x21, #0, #56
    1b1c:	f9410ea0 	ldr	x0, [x21,#536]
    1b20:	f8696901 	ldr	x1, [x8,x9]
    1b24:	b4000260 	cbz	x0, 1b70 <stmmac_poll+0x9b8>
    1b28:	b340dc0f 	bfxil	x15, x0, #0, #56
    1b2c:	f9412408 	ldr	x8, [x0,#584]
    1b30:	b4000208 	cbz	x8, 1b70 <stmmac_poll+0x9b8>
    1b34:	b340dd0f 	bfxil	x15, x8, #0, #56
    1b38:	f9403908 	ldr	x8, [x8,#112]
    1b3c:	b4000228 	cbz	x8, 1b80 <stmmac_poll+0x9c8>
    1b40:	b4000080 	cbz	x0, 1b50 <stmmac_poll+0x998>
    1b44:	b340dc0f 	bfxil	x15, x0, #0, #56
    1b48:	f9412408 	ldr	x8, [x0,#584]
    1b4c:	b5000048 	cbnz	x8, 1b54 <stmmac_poll+0x99c>
    1b50:	aa1b03e8 	mov	x8, x27
    1b54:	b340dd0f 	bfxil	x15, x8, #0, #56
    1b58:	f9403908 	ldr	x8, [x8,#112]
    1b5c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1b60:	f940011f 	ldr	xzr, [x8]
    1b64:	d63f0100 	blr	x8
    1b68:	34000120 	cbz	w0, 1b8c <stmmac_poll+0x9d4>
    1b6c:	14000057 	b	1cc8 <stmmac_poll+0xb10>
    1b70:	aa1b03e8 	mov	x8, x27
    1b74:	b340dd0f 	bfxil	x15, x8, #0, #56
    1b78:	f9403908 	ldr	x8, [x8,#112]
    1b7c:	b5fffe28 	cbnz	x8, 1b40 <stmmac_poll+0x988>
    1b80:	b100043f 	cmn	x1, #0x1
    1b84:	1a9f17e0 	cset	w0, eq
    1b88:	35000a00 	cbnz	w0, 1cc8 <stmmac_poll+0xb10>
    1b8c:	b340deaf 	bfxil	x15, x21, #0, #56
    1b90:	f9407ea8 	ldr	x8, [x21,#248]
    1b94:	b340deaf 	bfxil	x15, x21, #0, #56
    1b98:	b94826a9 	ldr	w9, [x21,#2084]
    1b9c:	f87c7908 	ldr	x8, [x8,x28,lsl #3]
    1ba0:	7101013f 	cmp	w9, #0x40
    1ba4:	5400056a 	b.ge	1c50 <stmmac_poll+0xa98>
    1ba8:	b9000a68 	str	w8, [x19,#8]
    1bac:	b340deaf 	bfxil	x15, x21, #0, #56
    1bb0:	f94112a8 	ldr	x8, [x21,#544]
    1bb4:	b340dd0f 	bfxil	x15, x8, #0, #56
    1bb8:	f9400d08 	ldr	x8, [x8,#24]
    1bbc:	b340dd0f 	bfxil	x15, x8, #0, #56
    1bc0:	f9401508 	ldr	x8, [x8,#40]
    1bc4:	b40000c8 	cbz	x8, 1bdc <stmmac_poll+0xa24>
    1bc8:	aa1503e0 	mov	x0, x21
    1bcc:	aa1303e1 	mov	x1, x19
    1bd0:	b340dd0f 	bfxil	x15, x8, #0, #56
    1bd4:	f940011f 	ldr	xzr, [x8]
    1bd8:	d63f0100 	blr	x8
    1bdc:	b340deaf 	bfxil	x15, x21, #0, #56
    1be0:	b940eaa8 	ldr	w8, [x21,#232]
    1be4:	340000a8 	cbz	w8, 1bf8 <stmmac_poll+0xa40>
    1be8:	51000508 	sub	w8, w8, #0x1
    1bec:	f94002bf 	ldr	xzr, [x21]
    1bf0:	b340deaf 	bfxil	x15, x21, #0, #56
    1bf4:	b900eaa8 	str	w8, [x21,#232]
    1bf8:	d5033e9f 	dsb	st
    1bfc:	b340deaf 	bfxil	x15, x21, #0, #56
    1c00:	f94112a8 	ldr	x8, [x21,#544]
    1c04:	b340deaf 	bfxil	x15, x21, #0, #56
    1c08:	b94826a9 	ldr	w9, [x21,#2084]
    1c0c:	51000694 	sub	w20, w20, #0x1
    1c10:	b340dd0f 	bfxil	x15, x8, #0, #56
    1c14:	f9400508 	ldr	x8, [x8,#8]
    1c18:	7101013f 	cmp	w9, #0x40
    1c1c:	5400022a 	b.ge	1c60 <stmmac_poll+0xaa8>
    1c20:	b340dd0f 	bfxil	x15, x8, #0, #56
    1c24:	f9402d08 	ldr	x8, [x8,#88]
    1c28:	aa1303e0 	mov	x0, x19
    1c2c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1c30:	f940011f 	ldr	xzr, [x8]
    1c34:	d63f0100 	blr	x8
    1c38:	d5033e9f 	dsb	st
    1c3c:	110006e8 	add	w8, w23, #0x1
    1c40:	7100029f 	cmp	w20, #0x0
    1c44:	12002117 	and	w23, w8, #0x1ff
    1c48:	54ffee0c 	b.gt	1a08 <stmmac_poll+0x850>
    1c4c:	14000026 	b	1ce4 <stmmac_poll+0xb2c>
    1c50:	f940027f 	ldr	xzr, [x19]
    1c54:	b340de6f 	bfxil	x15, x19, #0, #56
    1c58:	29007e68 	stp	w8, wzr, [x19]
    1c5c:	17ffffd4 	b	1bac <stmmac_poll+0x9f4>
    1c60:	b340dd0f 	bfxil	x15, x8, #0, #56
    1c64:	f9400108 	ldr	x8, [x8]
    1c68:	b340deaf 	bfxil	x15, x21, #0, #56
    1c6c:	b9494aa1 	ldr	w1, [x21,#2376]
    1c70:	b340deaf 	bfxil	x15, x21, #0, #56
    1c74:	b940e2a4 	ldr	w4, [x21,#224]
    1c78:	aa1303e0 	mov	x0, x19
    1c7c:	2a1f03e2 	mov	w2, wzr
    1c80:	2a1f03e3 	mov	w3, wzr
    1c84:	b340dd0f 	bfxil	x15, x8, #0, #56
    1c88:	f940011f 	ldr	xzr, [x8]
    1c8c:	d63f0100 	blr	x8
    1c90:	17ffffea 	b	1c38 <stmmac_poll+0xa80>
    1c94:	52801008 	mov	w8, #0x80                  	// #128
    1c98:	f94002bf 	ldr	xzr, [x21]
    1c9c:	b340deaf 	bfxil	x15, x21, #0, #56
    1ca0:	b900eaa8 	str	w8, [x21,#232]
    1ca4:	94000000 	bl	0 <net_ratelimit>
    1ca8:	340001e0 	cbz	w0, 1ce4 <stmmac_poll+0xb2c>
    1cac:	b340deaf 	bfxil	x15, x21, #0, #56
    1cb0:	f9410ea0 	ldr	x0, [x21,#536]
    1cb4:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    1cb8:	91000021 	add	x1, x1, #0x0
    1cbc:	2a1703e2 	mov	w2, w23
    1cc0:	94000000 	bl	0 <dev_err>
    1cc4:	14000008 	b	1ce4 <stmmac_poll+0xb2c>
    1cc8:	b340deaf 	bfxil	x15, x21, #0, #56
    1ccc:	f9410ea0 	ldr	x0, [x21,#536]
    1cd0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    1cd4:	91000021 	add	x1, x1, #0x0
    1cd8:	94000000 	bl	0 <dev_err>
    1cdc:	aa1a03e0 	mov	x0, x26
    1ce0:	94000000 	bl	0 <consume_skb>
    1ce4:	b340deaf 	bfxil	x15, x21, #0, #56
    1ce8:	f9421ea8 	ldr	x8, [x21,#1080]
    1cec:	b94017e9 	ldr	w9, [sp,#20]
    1cf0:	f94002bf 	ldr	xzr, [x21]
    1cf4:	b340deaf 	bfxil	x15, x21, #0, #56
    1cf8:	b900deb7 	str	w23, [x21,#220]
    1cfc:	8b364108 	add	x8, x8, w22, uxtw
    1d00:	6b0902df 	cmp	w22, w9
    1d04:	f94002bf 	ldr	xzr, [x21]
    1d08:	b340deaf 	bfxil	x15, x21, #0, #56
    1d0c:	f9021ea8 	str	x8, [x21,#1080]
    1d10:	5400020a 	b.ge	1d50 <stmmac_poll+0xb98>
    1d14:	f94003f3 	ldr	x19, [sp]
    1d18:	2a1f03e1 	mov	w1, wzr
    1d1c:	aa1303e0 	mov	x0, x19
    1d20:	94000000 	bl	0 <napi_complete_done>
    1d24:	b340de6f 	bfxil	x15, x19, #0, #56
    1d28:	f9407268 	ldr	x8, [x19,#224]
    1d2c:	b340de6f 	bfxil	x15, x19, #0, #56
    1d30:	f9406660 	ldr	x0, [x19,#200]
    1d34:	b340dd0f 	bfxil	x15, x8, #0, #56
    1d38:	f9400908 	ldr	x8, [x8,#16]
    1d3c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1d40:	f9401d08 	ldr	x8, [x8,#56]
    1d44:	b340dd0f 	bfxil	x15, x8, #0, #56
    1d48:	f940011f 	ldr	xzr, [x8]
    1d4c:	d63f0100 	blr	x8
    1d50:	2a1603e0 	mov	w0, w22
    1d54:	a9477bfd 	ldp	x29, x30, [sp,#112]
    1d58:	a9464ff4 	ldp	x20, x19, [sp,#96]
    1d5c:	a94557f6 	ldp	x22, x21, [sp,#80]
    1d60:	a9445ff8 	ldp	x24, x23, [sp,#64]
    1d64:	a94367fa 	ldp	x26, x25, [sp,#48]
    1d68:	a9426ffc 	ldp	x28, x27, [sp,#32]
    1d6c:	910203ff 	add	sp, sp, #0x80
    1d70:	b340dfcf 	bfxil	x15, x30, #0, #56
    1d74:	f94003df 	ldr	xzr, [x30]
    1d78:	d65f03c0 	ret

0000000000001d7c <stmmac_dvr_remove>:
    1d7c:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    1d80:	a9017bfd 	stp	x29, x30, [sp,#16]
    1d84:	910043fd 	add	x29, sp, #0x10
    1d88:	aa0003f3 	mov	x19, x0
    1d8c:	94000000 	bl	0 <_mcount>
    1d90:	b340de6f 	bfxil	x15, x19, #0, #56
    1d94:	f9405273 	ldr	x19, [x19,#160]
    1d98:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    1d9c:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    1da0:	91000000 	add	x0, x0, #0x0
    1da4:	91000021 	add	x1, x1, #0x0
    1da8:	94000000 	bl	0 <printk>
    1dac:	b340de6f 	bfxil	x15, x19, #0, #56
    1db0:	f9459268 	ldr	x8, [x19,#2848]
    1db4:	b340de6f 	bfxil	x15, x19, #0, #56
    1db8:	f9458660 	ldr	x0, [x19,#2824]
    1dbc:	b340dd0f 	bfxil	x15, x8, #0, #56
    1dc0:	f9400908 	ldr	x8, [x8,#16]
    1dc4:	b340dd0f 	bfxil	x15, x8, #0, #56
    1dc8:	f9403108 	ldr	x8, [x8,#96]
    1dcc:	b340dd0f 	bfxil	x15, x8, #0, #56
    1dd0:	f940011f 	ldr	xzr, [x8]
    1dd4:	d63f0100 	blr	x8
    1dd8:	b340de6f 	bfxil	x15, x19, #0, #56
    1ddc:	f9459268 	ldr	x8, [x19,#2848]
    1de0:	b340de6f 	bfxil	x15, x19, #0, #56
    1de4:	f9458660 	ldr	x0, [x19,#2824]
    1de8:	b340dd0f 	bfxil	x15, x8, #0, #56
    1dec:	f9400908 	ldr	x8, [x8,#16]
    1df0:	b340dd0f 	bfxil	x15, x8, #0, #56
    1df4:	f9402908 	ldr	x8, [x8,#80]
    1df8:	b340dd0f 	bfxil	x15, x8, #0, #56
    1dfc:	f940011f 	ldr	xzr, [x8]
    1e00:	d63f0100 	blr	x8
    1e04:	b340de6f 	bfxil	x15, x19, #0, #56
    1e08:	f945a260 	ldr	x0, [x19,#2880]
    1e0c:	94000000 	bl	0 <gmac_remove_sysfs>
    1e10:	b340de6f 	bfxil	x15, x19, #0, #56
    1e14:	f9458660 	ldr	x0, [x19,#2824]
    1e18:	2a1f03e1 	mov	w1, wzr
    1e1c:	94000000 	bl	0 <stmmac_set_mac>
    1e20:	aa1303e0 	mov	x0, x19
    1e24:	94000000 	bl	0 <netif_carrier_off>
    1e28:	aa1303e0 	mov	x0, x19
    1e2c:	94000000 	bl	0 <unregister_netdev>
    1e30:	b340de6f 	bfxil	x15, x19, #0, #56
    1e34:	f948a660 	ldr	x0, [x19,#4424]
    1e38:	b4000040 	cbz	x0, 1e40 <stmmac_dvr_remove+0xc4>
    1e3c:	94000000 	bl	0 <reset_control_assert>
    1e40:	b340de6f 	bfxil	x15, x19, #0, #56
    1e44:	f948a274 	ldr	x20, [x19,#4416]
    1e48:	aa1403e0 	mov	x0, x20
    1e4c:	94000000 	bl	0 <clk_disable>
    1e50:	aa1403e0 	mov	x0, x20
    1e54:	94000000 	bl	0 <clk_unprepare>
    1e58:	b340de6f 	bfxil	x15, x19, #0, #56
    1e5c:	f9489e74 	ldr	x20, [x19,#4408]
    1e60:	aa1403e0 	mov	x0, x20
    1e64:	94000000 	bl	0 <clk_disable>
    1e68:	aa1403e0 	mov	x0, x20
    1e6c:	94000000 	bl	0 <clk_unprepare>
    1e70:	b340de6f 	bfxil	x15, x19, #0, #56
    1e74:	f9459268 	ldr	x8, [x19,#2848]
    1e78:	b340dd0f 	bfxil	x15, x8, #0, #56
    1e7c:	b9405908 	ldr	w8, [x8,#88]
    1e80:	7100211f 	cmp	w8, #0x8
    1e84:	540000c8 	b.hi	1e9c <stmmac_dvr_remove+0x120>
    1e88:	52800029 	mov	w9, #0x1                   	// #1
    1e8c:	1ac82128 	lsl	w8, w9, w8
    1e90:	52802249 	mov	w9, #0x112                 	// #274
    1e94:	6a09011f 	tst	w8, w9
    1e98:	54000061 	b.ne	1ea4 <stmmac_dvr_remove+0x128>
    1e9c:	aa1303e0 	mov	x0, x19
    1ea0:	94000000 	bl	0 <stmmac_mdio_unregister>
    1ea4:	aa1303e0 	mov	x0, x19
    1ea8:	94000000 	bl	0 <free_netdev>
    1eac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    1eb0:	2a1f03e0 	mov	w0, wzr
    1eb4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    1eb8:	b340dfcf 	bfxil	x15, x30, #0, #56
    1ebc:	f94003df 	ldr	xzr, [x30]
    1ec0:	d65f03c0 	ret

0000000000001ec4 <stmmac_suspend>:
    1ec4:	f81d0ff5 	str	x21, [sp,#-48]!
    1ec8:	a9014ff4 	stp	x20, x19, [sp,#16]
    1ecc:	a9027bfd 	stp	x29, x30, [sp,#32]
    1ed0:	910083fd 	add	x29, sp, #0x20
    1ed4:	aa0003f3 	mov	x19, x0
    1ed8:	94000000 	bl	0 <_mcount>
    1edc:	b340de6f 	bfxil	x15, x19, #0, #56
    1ee0:	f9405273 	ldr	x19, [x19,#160]
    1ee4:	b4000c33 	cbz	x19, 2068 <stmmac_suspend+0x1a4>
    1ee8:	b340de6f 	bfxil	x15, x19, #0, #56
    1eec:	f9402668 	ldr	x8, [x19,#72]
    1ef0:	36000bc8 	tbz	w8, #0, 2068 <stmmac_suspend+0x1a4>
    1ef4:	b340de6f 	bfxil	x15, x19, #0, #56
    1ef8:	f945a260 	ldr	x0, [x19,#2880]
    1efc:	b4000040 	cbz	x0, 1f04 <stmmac_suspend+0x40>
    1f00:	94000000 	bl	0 <phy_stop>
    1f04:	912ca274 	add	x20, x19, #0xb28
    1f08:	aa1403e0 	mov	x0, x20
    1f0c:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    1f10:	aa0003f5 	mov	x21, x0
    1f14:	aa1303e0 	mov	x0, x19
    1f18:	94000000 	bl	0 <netif_device_detach>
    1f1c:	b340de6f 	bfxil	x15, x19, #0, #56
    1f20:	f941e268 	ldr	x8, [x19,#960]
    1f24:	2a1f03e0 	mov	w0, wzr
    1f28:	91024101 	add	x1, x8, #0x90
    1f2c:	94000000 	bl	0 <set_bit>
    1f30:	aa1403e0 	mov	x0, x20
    1f34:	aa1503e1 	mov	x1, x21
    1f38:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    1f3c:	91290260 	add	x0, x19, #0xa40
    1f40:	94000000 	bl	0 <napi_disable>
    1f44:	aa1403e0 	mov	x0, x20
    1f48:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    1f4c:	aa0003f5 	mov	x21, x0
    1f50:	91254260 	add	x0, x19, #0x950
    1f54:	94000000 	bl	0 <del_timer_sync>
    1f58:	b340de6f 	bfxil	x15, x19, #0, #56
    1f5c:	f9459268 	ldr	x8, [x19,#2848]
    1f60:	b340de6f 	bfxil	x15, x19, #0, #56
    1f64:	f9458660 	ldr	x0, [x19,#2824]
    1f68:	b340dd0f 	bfxil	x15, x8, #0, #56
    1f6c:	f9400908 	ldr	x8, [x8,#16]
    1f70:	b340dd0f 	bfxil	x15, x8, #0, #56
    1f74:	f9402908 	ldr	x8, [x8,#80]
    1f78:	b340dd0f 	bfxil	x15, x8, #0, #56
    1f7c:	f940011f 	ldr	xzr, [x8]
    1f80:	d63f0100 	blr	x8
    1f84:	b340de6f 	bfxil	x15, x19, #0, #56
    1f88:	f9459268 	ldr	x8, [x19,#2848]
    1f8c:	b340de6f 	bfxil	x15, x19, #0, #56
    1f90:	f9458660 	ldr	x0, [x19,#2824]
    1f94:	b340dd0f 	bfxil	x15, x8, #0, #56
    1f98:	f9400908 	ldr	x8, [x8,#16]
    1f9c:	b340dd0f 	bfxil	x15, x8, #0, #56
    1fa0:	f9403108 	ldr	x8, [x8,#96]
    1fa4:	b340dd0f 	bfxil	x15, x8, #0, #56
    1fa8:	f940011f 	ldr	xzr, [x8]
    1fac:	d63f0100 	blr	x8
    1fb0:	b340de6f 	bfxil	x15, x19, #0, #56
    1fb4:	f9458e68 	ldr	x8, [x19,#2840]
    1fb8:	b340dd0f 	bfxil	x15, x8, #0, #56
    1fbc:	3942b109 	ldrb	w9, [x8,#172]
    1fc0:	36000269 	tbz	w9, #0, 200c <stmmac_suspend+0x148>
    1fc4:	b340dd0f 	bfxil	x15, x8, #0, #56
    1fc8:	f9407508 	ldr	x8, [x8,#232]
    1fcc:	b4000208 	cbz	x8, 200c <stmmac_suspend+0x148>
    1fd0:	b340de6f 	bfxil	x15, x19, #0, #56
    1fd4:	f9459260 	ldr	x0, [x19,#2848]
    1fd8:	52800401 	mov	w1, #0x20                  	// #32
    1fdc:	b340dc0f 	bfxil	x15, x0, #0, #56
    1fe0:	f9400008 	ldr	x8, [x0]
    1fe4:	b340dd0f 	bfxil	x15, x8, #0, #56
    1fe8:	f9401908 	ldr	x8, [x8,#48]
    1fec:	b340dd0f 	bfxil	x15, x8, #0, #56
    1ff0:	f940011f 	ldr	xzr, [x8]
    1ff4:	d63f0100 	blr	x8
    1ff8:	52800028 	mov	w8, #0x1                   	// #1
    1ffc:	f940027f 	ldr	xzr, [x19]
    2000:	b340de6f 	bfxil	x15, x19, #0, #56
    2004:	b9124e68 	str	w8, [x19,#4684]
    2008:	1400000e 	b	2040 <stmmac_suspend+0x17c>
    200c:	b340de6f 	bfxil	x15, x19, #0, #56
    2010:	f9458660 	ldr	x0, [x19,#2824]
    2014:	2a1f03e1 	mov	w1, wzr
    2018:	94000000 	bl	0 <stmmac_set_mac>
    201c:	b340de6f 	bfxil	x15, x19, #0, #56
    2020:	f9458e60 	ldr	x0, [x19,#2840]
    2024:	94000000 	bl	0 <pinctrl_pm_select_sleep_state>
    2028:	b340de6f 	bfxil	x15, x19, #0, #56
    202c:	f948a260 	ldr	x0, [x19,#4416]
    2030:	94000000 	bl	0 <clk_disable>
    2034:	b340de6f 	bfxil	x15, x19, #0, #56
    2038:	f9489e60 	ldr	x0, [x19,#4408]
    203c:	94000000 	bl	0 <clk_disable>
    2040:	aa1403e0 	mov	x0, x20
    2044:	aa1503e1 	mov	x1, x21
    2048:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    204c:	12800008 	mov	w8, #0xffffffff            	// #-1
    2050:	f940027f 	ldr	xzr, [x19]
    2054:	b340de6f 	bfxil	x15, x19, #0, #56
    2058:	f905a67f 	str	xzr, [x19,#2888]
    205c:	f940027f 	ldr	xzr, [x19]
    2060:	b340de6f 	bfxil	x15, x19, #0, #56
    2064:	b90b5268 	str	w8, [x19,#2896]
    2068:	a9427bfd 	ldp	x29, x30, [sp,#32]
    206c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    2070:	2a1f03e0 	mov	w0, wzr
    2074:	f84307f5 	ldr	x21, [sp],#48
    2078:	b340dfcf 	bfxil	x15, x30, #0, #56
    207c:	f94003df 	ldr	xzr, [x30]
    2080:	d65f03c0 	ret

0000000000002084 <stmmac_resume>:
    2084:	a9bc5ff8 	stp	x24, x23, [sp,#-64]!
    2088:	a90157f6 	stp	x22, x21, [sp,#16]
    208c:	a9024ff4 	stp	x20, x19, [sp,#32]
    2090:	a9037bfd 	stp	x29, x30, [sp,#48]
    2094:	9100c3fd 	add	x29, sp, #0x30
    2098:	aa0003f3 	mov	x19, x0
    209c:	94000000 	bl	0 <_mcount>
    20a0:	b340de6f 	bfxil	x15, x19, #0, #56
    20a4:	f9405273 	ldr	x19, [x19,#160]
    20a8:	b340de6f 	bfxil	x15, x19, #0, #56
    20ac:	f9402668 	ldr	x8, [x19,#72]
    20b0:	360010c8 	tbz	w8, #0, 22c8 <stmmac_resume+0x244>
    20b4:	b340de6f 	bfxil	x15, x19, #0, #56
    20b8:	f9458e60 	ldr	x0, [x19,#2840]
    20bc:	91240274 	add	x20, x19, #0x900
    20c0:	b340dc0f 	bfxil	x15, x0, #0, #56
    20c4:	3942b008 	ldrb	w8, [x0,#172]
    20c8:	36000348 	tbz	w8, #0, 2130 <stmmac_resume+0xac>
    20cc:	b340dc0f 	bfxil	x15, x0, #0, #56
    20d0:	f9407408 	ldr	x8, [x0,#232]
    20d4:	b40002e8 	cbz	x8, 2130 <stmmac_resume+0xac>
    20d8:	912ca275 	add	x21, x19, #0xb28
    20dc:	aa1503e0 	mov	x0, x21
    20e0:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    20e4:	b340de6f 	bfxil	x15, x19, #0, #56
    20e8:	f9459268 	ldr	x8, [x19,#2848]
    20ec:	aa0003f6 	mov	x22, x0
    20f0:	aa1f03e1 	mov	x1, xzr
    20f4:	b340dd0f 	bfxil	x15, x8, #0, #56
    20f8:	f9400109 	ldr	x9, [x8]
    20fc:	aa0803e0 	mov	x0, x8
    2100:	b340dd2f 	bfxil	x15, x9, #0, #56
    2104:	f9401929 	ldr	x9, [x9,#48]
    2108:	b340dd2f 	bfxil	x15, x9, #0, #56
    210c:	f940013f 	ldr	xzr, [x9]
    2110:	d63f0120 	blr	x9
    2114:	aa1503e0 	mov	x0, x21
    2118:	aa1603e1 	mov	x1, x22
    211c:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    2120:	f940027f 	ldr	xzr, [x19]
    2124:	b340de6f 	bfxil	x15, x19, #0, #56
    2128:	b9124e7f 	str	wzr, [x19,#4684]
    212c:	1400000c 	b	215c <stmmac_resume+0xd8>
    2130:	94000000 	bl	0 <pinctrl_pm_select_default_state>
    2134:	b340de6f 	bfxil	x15, x19, #0, #56
    2138:	f9489e60 	ldr	x0, [x19,#4408]
    213c:	94000000 	bl	0 <clk_enable>
    2140:	b340de6f 	bfxil	x15, x19, #0, #56
    2144:	f948a260 	ldr	x0, [x19,#4416]
    2148:	94000000 	bl	0 <clk_enable>
    214c:	b340de6f 	bfxil	x15, x19, #0, #56
    2150:	f945b260 	ldr	x0, [x19,#2912]
    2154:	b4000040 	cbz	x0, 215c <stmmac_resume+0xd8>
    2158:	94000000 	bl	0 <stmmac_mdio_reset>
    215c:	912ca275 	add	x21, x19, #0xb28
    2160:	aa1503e0 	mov	x0, x21
    2164:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    2168:	aa0003f6 	mov	x22, x0
    216c:	aa1403e0 	mov	x0, x20
    2170:	f940027f 	ldr	xzr, [x19]
    2174:	b340de6f 	bfxil	x15, x19, #0, #56
    2178:	f904ee7f 	str	xzr, [x19,#2520]
    217c:	f940027f 	ldr	xzr, [x19]
    2180:	b340de6f 	bfxil	x15, x19, #0, #56
    2184:	f9048e7f 	str	xzr, [x19,#2328]
    2188:	f940027f 	ldr	xzr, [x19]
    218c:	b340de6f 	bfxil	x15, x19, #0, #56
    2190:	b912727f 	str	wzr, [x19,#4720]
    2194:	94000057 	bl	22f0 <stmmac_clear_descriptors>
    2198:	aa1503e0 	mov	x0, x21
    219c:	aa1603e1 	mov	x1, x22
    21a0:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    21a4:	aa1303e0 	mov	x0, x19
    21a8:	2a1f03e1 	mov	w1, wzr
    21ac:	9400009d 	bl	2420 <stmmac_hw_setup>
    21b0:	aa1503e0 	mov	x0, x21
    21b4:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    21b8:	d2800809 	mov	x9, #0x40                  	// #64
    21bc:	91254277 	add	x23, x19, #0x950
    21c0:	aa0003f6 	mov	x22, x0
    21c4:	91249268 	add	x8, x19, #0x924
    21c8:	f2d38809 	movk	x9, #0x9c40, lsl #32
    21cc:	aa1703e0 	mov	x0, x23
    21d0:	2a1f03e1 	mov	w1, wzr
    21d4:	aa1f03e2 	mov	x2, xzr
    21d8:	aa1f03e3 	mov	x3, xzr
    21dc:	f940011f 	ldr	xzr, [x8]
    21e0:	b340dd0f 	bfxil	x15, x8, #0, #56
    21e4:	f9000109 	str	x9, [x8]
    21e8:	94000000 	bl	0 <init_timer_key>
    21ec:	90000008 	adrp	x8, 0 <jiffies>
    21f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    21f4:	f9400118 	ldr	x24, [x8]
    21f8:	b340de6f 	bfxil	x15, x19, #0, #56
    21fc:	b9492a60 	ldr	w0, [x19,#2344]
    2200:	94000000 	bl	0 <__usecs_to_jiffies>
    2204:	90000009 	adrp	x9, 0 <stmmac_disable_eee_mode>
    2208:	8b180008 	add	x8, x0, x24
    220c:	91000129 	add	x9, x9, #0x0
    2210:	aa1703e0 	mov	x0, x23
    2214:	f940027f 	ldr	xzr, [x19]
    2218:	b340de6f 	bfxil	x15, x19, #0, #56
    221c:	f904ba74 	str	x20, [x19,#2416]
    2220:	f940027f 	ldr	xzr, [x19]
    2224:	b340de6f 	bfxil	x15, x19, #0, #56
    2228:	f904b268 	str	x8, [x19,#2400]
    222c:	f940027f 	ldr	xzr, [x19]
    2230:	b340de6f 	bfxil	x15, x19, #0, #56
    2234:	f904b669 	str	x9, [x19,#2408]
    2238:	94000000 	bl	0 <add_timer>
    223c:	b340de6f 	bfxil	x15, x19, #0, #56
    2240:	f9459260 	ldr	x0, [x19,#2848]
    2244:	aa1303e1 	mov	x1, x19
    2248:	b340dc0f 	bfxil	x15, x0, #0, #56
    224c:	f9400008 	ldr	x8, [x0]
    2250:	b340dd0f 	bfxil	x15, x8, #0, #56
    2254:	f9401108 	ldr	x8, [x8,#32]
    2258:	b340dd0f 	bfxil	x15, x8, #0, #56
    225c:	f940011f 	ldr	xzr, [x8]
    2260:	d63f0100 	blr	x8
    2264:	aa1303e0 	mov	x0, x19
    2268:	94000000 	bl	0 <netif_device_attach>
    226c:	b340de6f 	bfxil	x15, x19, #0, #56
    2270:	f9452a68 	ldr	x8, [x19,#2640]
    2274:	360003a8 	tbz	w8, #0, 22e8 <stmmac_resume+0x264>
    2278:	d5033bbf 	dmb	ish
    227c:	91294274 	add	x20, x19, #0xa50
    2280:	2a1f03e0 	mov	w0, wzr
    2284:	aa1403e1 	mov	x1, x20
    2288:	94000000 	bl	0 <clear_bit>
    228c:	52800040 	mov	w0, #0x2                   	// #2
    2290:	aa1403e1 	mov	x1, x20
    2294:	94000000 	bl	0 <clear_bit>
    2298:	b340de6f 	bfxil	x15, x19, #0, #56
    229c:	f941e268 	ldr	x8, [x19,#960]
    22a0:	2a1f03e0 	mov	w0, wzr
    22a4:	91024101 	add	x1, x8, #0x90
    22a8:	94000000 	bl	0 <clear_bit>
    22ac:	aa1503e0 	mov	x0, x21
    22b0:	aa1603e1 	mov	x1, x22
    22b4:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    22b8:	b340de6f 	bfxil	x15, x19, #0, #56
    22bc:	f945a260 	ldr	x0, [x19,#2880]
    22c0:	b4000040 	cbz	x0, 22c8 <stmmac_resume+0x244>
    22c4:	94000000 	bl	0 <phy_start>
    22c8:	a9437bfd 	ldp	x29, x30, [sp,#48]
    22cc:	a9424ff4 	ldp	x20, x19, [sp,#32]
    22d0:	a94157f6 	ldp	x22, x21, [sp,#16]
    22d4:	2a1f03e0 	mov	w0, wzr
    22d8:	a8c45ff8 	ldp	x24, x23, [sp],#64
    22dc:	b340dfcf 	bfxil	x15, x30, #0, #56
    22e0:	f94003df 	ldr	xzr, [x30]
    22e4:	d65f03c0 	ret
    22e8:	d4210000 	brk	#0x800
    22ec:	14000000 	b	22ec <stmmac_resume+0x268>

00000000000022f0 <stmmac_clear_descriptors>:
    22f0:	f81d0ff5 	str	x21, [sp,#-48]!
    22f4:	a9014ff4 	stp	x20, x19, [sp,#16]
    22f8:	a9027bfd 	stp	x29, x30, [sp,#32]
    22fc:	910083fd 	add	x29, sp, #0x20
    2300:	aa0003f3 	mov	x19, x0
    2304:	94000000 	bl	0 <_mcount>
    2308:	aa1f03f4 	mov	x20, xzr
    230c:	9287fff5 	mov	x21, #0xffffffffffffc000    	// #-16384
    2310:	14000012 	b	2358 <stmmac_clear_descriptors+0x68>
    2314:	b340de6f 	bfxil	x15, x19, #0, #56
    2318:	f9406269 	ldr	x9, [x19,#192]
    231c:	8b141120 	add	x0, x9, x20, lsl #4
    2320:	b340de6f 	bfxil	x15, x19, #0, #56
    2324:	b9494a61 	ldr	w1, [x19,#2376]
    2328:	b340de6f 	bfxil	x15, x19, #0, #56
    232c:	b948b262 	ldr	w2, [x19,#2224]
    2330:	b340de6f 	bfxil	x15, x19, #0, #56
    2334:	b940e264 	ldr	w4, [x19,#224]
    2338:	b10082bf 	cmn	x21, #0x20
    233c:	1a9f17e3 	cset	w3, eq
    2340:	b340dd0f 	bfxil	x15, x8, #0, #56
    2344:	f940011f 	ldr	xzr, [x8]
    2348:	d63f0100 	blr	x8
    234c:	b10082b5 	adds	x21, x21, #0x20
    2350:	91000694 	add	x20, x20, #0x1
    2354:	540001e0 	b.eq	2390 <stmmac_clear_descriptors+0xa0>
    2358:	b340de6f 	bfxil	x15, x19, #0, #56
    235c:	f9411268 	ldr	x8, [x19,#544]
    2360:	b340de6f 	bfxil	x15, x19, #0, #56
    2364:	b948b669 	ldr	w9, [x19,#2228]
    2368:	b340dd0f 	bfxil	x15, x8, #0, #56
    236c:	f9400508 	ldr	x8, [x8,#8]
    2370:	b340dd0f 	bfxil	x15, x8, #0, #56
    2374:	f9400108 	ldr	x8, [x8]
    2378:	34fffce9 	cbz	w9, 2314 <stmmac_clear_descriptors+0x24>
    237c:	b340de6f 	bfxil	x15, x19, #0, #56
    2380:	f9406669 	ldr	x9, [x19,#200]
    2384:	8b150129 	add	x9, x9, x21
    2388:	91401120 	add	x0, x9, #0x4, lsl #12
    238c:	17ffffe5 	b	2320 <stmmac_clear_descriptors+0x30>
    2390:	aa1f03f4 	mov	x20, xzr
    2394:	9287fff5 	mov	x21, #0xffffffffffffc000    	// #-16384
    2398:	1400000e 	b	23d0 <stmmac_clear_descriptors+0xe0>
    239c:	b340de6f 	bfxil	x15, x19, #0, #56
    23a0:	f9400669 	ldr	x9, [x19,#8]
    23a4:	8b141120 	add	x0, x9, x20, lsl #4
    23a8:	b340de6f 	bfxil	x15, x19, #0, #56
    23ac:	b948b261 	ldr	w1, [x19,#2224]
    23b0:	b10082bf 	cmn	x21, #0x20
    23b4:	1a9f17e2 	cset	w2, eq
    23b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    23bc:	f940011f 	ldr	xzr, [x8]
    23c0:	d63f0100 	blr	x8
    23c4:	b10082b5 	adds	x21, x21, #0x20
    23c8:	91000694 	add	x20, x20, #0x1
    23cc:	540001e0 	b.eq	2408 <stmmac_clear_descriptors+0x118>
    23d0:	b340de6f 	bfxil	x15, x19, #0, #56
    23d4:	f9411268 	ldr	x8, [x19,#544]
    23d8:	b340de6f 	bfxil	x15, x19, #0, #56
    23dc:	b948b669 	ldr	w9, [x19,#2228]
    23e0:	b340dd0f 	bfxil	x15, x8, #0, #56
    23e4:	f9400508 	ldr	x8, [x8,#8]
    23e8:	b340dd0f 	bfxil	x15, x8, #0, #56
    23ec:	f9400508 	ldr	x8, [x8,#8]
    23f0:	34fffd69 	cbz	w9, 239c <stmmac_clear_descriptors+0xac>
    23f4:	b340de6f 	bfxil	x15, x19, #0, #56
    23f8:	f9400269 	ldr	x9, [x19]
    23fc:	8b150129 	add	x9, x9, x21
    2400:	91401120 	add	x0, x9, #0x4, lsl #12
    2404:	17ffffe9 	b	23a8 <stmmac_clear_descriptors+0xb8>
    2408:	a9427bfd 	ldp	x29, x30, [sp,#32]
    240c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    2410:	f84307f5 	ldr	x21, [sp],#48
    2414:	b340dfcf 	bfxil	x15, x30, #0, #56
    2418:	f94003df 	ldr	xzr, [x30]
    241c:	d65f03c0 	ret

0000000000002420 <stmmac_hw_setup>:
    2420:	a9bb67fa 	stp	x26, x25, [sp,#-80]!
    2424:	a9015ff8 	stp	x24, x23, [sp,#16]
    2428:	a90257f6 	stp	x22, x21, [sp,#32]
    242c:	a9034ff4 	stp	x20, x19, [sp,#48]
    2430:	a9047bfd 	stp	x29, x30, [sp,#64]
    2434:	910103fd 	add	x29, sp, #0x40
    2438:	2a0103f4 	mov	w20, w1
    243c:	aa0003f3 	mov	x19, x0
    2440:	94000000 	bl	0 <_mcount>
    2444:	b340de6f 	bfxil	x15, x19, #0, #56
    2448:	f947c268 	ldr	x8, [x19,#3968]
    244c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2450:	f9401508 	ldr	x8, [x8,#40]
    2454:	b40001e8 	cbz	x8, 2490 <stmmac_hw_setup+0x70>
    2458:	b340dd0f 	bfxil	x15, x8, #0, #56
    245c:	29405516 	ldp	w22, w21, [x8]
    2460:	b340dd0f 	bfxil	x15, x8, #0, #56
    2464:	b9400917 	ldr	w23, [x8,#8]
    2468:	b340dd0f 	bfxil	x15, x8, #0, #56
    246c:	39403118 	ldrb	w24, [x8,#12]
    2470:	b340de6f 	bfxil	x15, x19, #0, #56
    2474:	b951b668 	ldr	w8, [x19,#4532]
    2478:	340001a8 	cbz	w8, 24ac <stmmac_hw_setup+0x8c>
    247c:	b340de6f 	bfxil	x15, x19, #0, #56
    2480:	b951b268 	ldr	w8, [x19,#4528]
    2484:	7100091f 	cmp	w8, #0x2
    2488:	1a9f17f9 	cset	w25, eq
    248c:	14000009 	b	24b0 <stmmac_hw_setup+0x90>
    2490:	2a1f03f5 	mov	w21, wzr
    2494:	2a1f03f8 	mov	w24, wzr
    2498:	2a1f03f7 	mov	w23, wzr
    249c:	52800116 	mov	w22, #0x8                   	// #8
    24a0:	b340de6f 	bfxil	x15, x19, #0, #56
    24a4:	b951b668 	ldr	w8, [x19,#4532]
    24a8:	35fffea8 	cbnz	w8, 247c <stmmac_hw_setup+0x5c>
    24ac:	2a1f03f9 	mov	w25, wzr
    24b0:	b340de6f 	bfxil	x15, x19, #0, #56
    24b4:	f9459268 	ldr	x8, [x19,#2848]
    24b8:	b340de6f 	bfxil	x15, x19, #0, #56
    24bc:	f9458660 	ldr	x0, [x19,#2824]
    24c0:	b340dd0f 	bfxil	x15, x8, #0, #56
    24c4:	f9400908 	ldr	x8, [x8,#16]
    24c8:	b340dd0f 	bfxil	x15, x8, #0, #56
    24cc:	f9400108 	ldr	x8, [x8]
    24d0:	b340dd0f 	bfxil	x15, x8, #0, #56
    24d4:	f940011f 	ldr	xzr, [x8]
    24d8:	d63f0100 	blr	x8
    24dc:	340001c0 	cbz	w0, 2514 <stmmac_hw_setup+0xf4>
    24e0:	2a0003fa 	mov	w26, w0
    24e4:	b340de6f 	bfxil	x15, x19, #0, #56
    24e8:	f9458e60 	ldr	x0, [x19,#2840]
    24ec:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    24f0:	91000021 	add	x1, x1, #0x0
    24f4:	94000000 	bl	0 <dev_err>
    24f8:	36f80a9a 	tbz	w26, #31, 2648 <stmmac_hw_setup+0x228>
    24fc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2500:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2504:	91000000 	add	x0, x0, #0x0
    2508:	91000021 	add	x1, x1, #0x0
    250c:	94000000 	bl	0 <printk>
    2510:	1400021a 	b	2d78 <stmmac_hw_setup+0x958>
    2514:	b340de6f 	bfxil	x15, x19, #0, #56
    2518:	f9459268 	ldr	x8, [x19,#2848]
    251c:	b340de6f 	bfxil	x15, x19, #0, #56
    2520:	f9458660 	ldr	x0, [x19,#2824]
    2524:	b340de6f 	bfxil	x15, x19, #0, #56
    2528:	b9493a65 	ldr	w5, [x19,#2360]
    252c:	b340de6f 	bfxil	x15, x19, #0, #56
    2530:	b94a0266 	ldr	w6, [x19,#2560]
    2534:	b340dd0f 	bfxil	x15, x8, #0, #56
    2538:	f9400908 	ldr	x8, [x8,#16]
    253c:	2a1603e1 	mov	w1, w22
    2540:	2a1503e2 	mov	w2, w21
    2544:	2a1703e3 	mov	w3, w23
    2548:	b340dd0f 	bfxil	x15, x8, #0, #56
    254c:	f9400508 	ldr	x8, [x8,#8]
    2550:	2a1803e4 	mov	w4, w24
    2554:	2a1903e7 	mov	w7, w25
    2558:	b340dd0f 	bfxil	x15, x8, #0, #56
    255c:	f940011f 	ldr	xzr, [x8]
    2560:	d63f0100 	blr	x8
    2564:	b340de6f 	bfxil	x15, x19, #0, #56
    2568:	b9512668 	ldr	w8, [x19,#4388]
    256c:	7101011f 	cmp	w8, #0x40
    2570:	540004ab 	b.lt	2604 <stmmac_hw_setup+0x1e4>
    2574:	b340de6f 	bfxil	x15, x19, #0, #56
    2578:	b94a0268 	ldr	w8, [x19,#2560]
    257c:	b340de6f 	bfxil	x15, x19, #0, #56
    2580:	f9459269 	ldr	x9, [x19,#2848]
    2584:	b340de6f 	bfxil	x15, x19, #0, #56
    2588:	f9458660 	ldr	x0, [x19,#2824]
    258c:	2a1f03e2 	mov	w2, wzr
    2590:	11400901 	add	w1, w8, #0x2, lsl #12
    2594:	f940027f 	ldr	xzr, [x19]
    2598:	b340de6f 	bfxil	x15, x19, #0, #56
    259c:	b9126a61 	str	w1, [x19,#4712]
    25a0:	b340dd2f 	bfxil	x15, x9, #0, #56
    25a4:	f9400928 	ldr	x8, [x9,#16]
    25a8:	b340dd0f 	bfxil	x15, x8, #0, #56
    25ac:	f9404908 	ldr	x8, [x8,#144]
    25b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    25b4:	f940011f 	ldr	xzr, [x8]
    25b8:	d63f0100 	blr	x8
    25bc:	b340de6f 	bfxil	x15, x19, #0, #56
    25c0:	b9493a68 	ldr	w8, [x19,#2360]
    25c4:	b340de6f 	bfxil	x15, x19, #0, #56
    25c8:	f9459269 	ldr	x9, [x19,#2848]
    25cc:	b340de6f 	bfxil	x15, x19, #0, #56
    25d0:	f9458660 	ldr	x0, [x19,#2824]
    25d4:	2a1f03e2 	mov	w2, wzr
    25d8:	11400901 	add	w1, w8, #0x2, lsl #12
    25dc:	f940027f 	ldr	xzr, [x19]
    25e0:	b340de6f 	bfxil	x15, x19, #0, #56
    25e4:	b9126e61 	str	w1, [x19,#4716]
    25e8:	b340dd2f 	bfxil	x15, x9, #0, #56
    25ec:	f9400928 	ldr	x8, [x9,#16]
    25f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    25f4:	f9404d08 	ldr	x8, [x8,#152]
    25f8:	b340dd0f 	bfxil	x15, x8, #0, #56
    25fc:	f940011f 	ldr	xzr, [x8]
    2600:	d63f0100 	blr	x8
    2604:	b340de6f 	bfxil	x15, x19, #0, #56
    2608:	f947c268 	ldr	x8, [x19,#3968]
    260c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2610:	f9405501 	ldr	x1, [x8,#168]
    2614:	b40001a1 	cbz	x1, 2648 <stmmac_hw_setup+0x228>
    2618:	b340de6f 	bfxil	x15, x19, #0, #56
    261c:	f9459268 	ldr	x8, [x19,#2848]
    2620:	b340dd0f 	bfxil	x15, x8, #0, #56
    2624:	f9400908 	ldr	x8, [x8,#16]
    2628:	b340dd0f 	bfxil	x15, x8, #0, #56
    262c:	f9400908 	ldr	x8, [x8,#16]
    2630:	b40000c8 	cbz	x8, 2648 <stmmac_hw_setup+0x228>
    2634:	b340de6f 	bfxil	x15, x19, #0, #56
    2638:	f9458660 	ldr	x0, [x19,#2824]
    263c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2640:	f940011f 	ldr	xzr, [x8]
    2644:	d63f0100 	blr	x8
    2648:	b340de6f 	bfxil	x15, x19, #0, #56
    264c:	f9459260 	ldr	x0, [x19,#2848]
    2650:	910cb269 	add	x9, x19, #0x32c
    2654:	b340dd2f 	bfxil	x15, x9, #0, #56
    2658:	f9400121 	ldr	x1, [x9]
    265c:	2a1f03e2 	mov	w2, wzr
    2660:	b340dc0f 	bfxil	x15, x0, #0, #56
    2664:	f9400008 	ldr	x8, [x0]
    2668:	b340dd0f 	bfxil	x15, x8, #0, #56
    266c:	f9401d08 	ldr	x8, [x8,#56]
    2670:	b340dd0f 	bfxil	x15, x8, #0, #56
    2674:	f940011f 	ldr	xzr, [x8]
    2678:	d63f0100 	blr	x8
    267c:	b340de6f 	bfxil	x15, x19, #0, #56
    2680:	f947c268 	ldr	x8, [x19,#3968]
    2684:	b340dd0f 	bfxil	x15, x8, #0, #56
    2688:	f9403d08 	ldr	x8, [x8,#120]
    268c:	b40000c8 	cbz	x8, 26a4 <stmmac_hw_setup+0x284>
    2690:	b340de6f 	bfxil	x15, x19, #0, #56
    2694:	f9458660 	ldr	x0, [x19,#2824]
    2698:	b340dd0f 	bfxil	x15, x8, #0, #56
    269c:	f940011f 	ldr	xzr, [x8]
    26a0:	d63f0100 	blr	x8
    26a4:	b340de6f 	bfxil	x15, x19, #0, #56
    26a8:	f9459268 	ldr	x8, [x19,#2848]
    26ac:	b340dd0f 	bfxil	x15, x8, #0, #56
    26b0:	b9405909 	ldr	w9, [x8,#88]
    26b4:	340002c9 	cbz	w9, 270c <stmmac_hw_setup+0x2ec>
    26b8:	b340de6f 	bfxil	x15, x19, #0, #56
    26bc:	f947c269 	ldr	x9, [x19,#3968]
    26c0:	b340dd2f 	bfxil	x15, x9, #0, #56
    26c4:	b940b929 	ldr	w9, [x9,#184]
    26c8:	7100293f 	cmp	w9, #0xa
    26cc:	540001a0 	b.eq	2700 <stmmac_hw_setup+0x2e0>
    26d0:	7101913f 	cmp	w9, #0x64
    26d4:	54000160 	b.eq	2700 <stmmac_hw_setup+0x2e0>
    26d8:	710fa13f 	cmp	w9, #0x3e8
    26dc:	54000120 	b.eq	2700 <stmmac_hw_setup+0x2e0>
    26e0:	b340de6f 	bfxil	x15, x19, #0, #56
    26e4:	f9458e60 	ldr	x0, [x19,#2840]
    26e8:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    26ec:	91000021 	add	x1, x1, #0x0
    26f0:	94000000 	bl	0 <dev_warn>
    26f4:	b340de6f 	bfxil	x15, x19, #0, #56
    26f8:	f9459268 	ldr	x8, [x19,#2848]
    26fc:	2a1f03e9 	mov	w9, wzr
    2700:	f940011f 	ldr	xzr, [x8]
    2704:	b340dd0f 	bfxil	x15, x8, #0, #56
    2708:	b9006109 	str	w9, [x8,#96]
    270c:	b340de6f 	bfxil	x15, x19, #0, #56
    2710:	f9459260 	ldr	x0, [x19,#2848]
    2714:	b340de6f 	bfxil	x15, x19, #0, #56
    2718:	b9424a61 	ldr	w1, [x19,#584]
    271c:	b340dc0f 	bfxil	x15, x0, #0, #56
    2720:	f9400008 	ldr	x8, [x0]
    2724:	b340dd0f 	bfxil	x15, x8, #0, #56
    2728:	f9400108 	ldr	x8, [x8]
    272c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2730:	f940011f 	ldr	xzr, [x8]
    2734:	d63f0100 	blr	x8
    2738:	b340de6f 	bfxil	x15, x19, #0, #56
    273c:	f9459260 	ldr	x0, [x19,#2848]
    2740:	b340dc0f 	bfxil	x15, x0, #0, #56
    2744:	f9400008 	ldr	x8, [x0]
    2748:	b340dd0f 	bfxil	x15, x8, #0, #56
    274c:	f9400508 	ldr	x8, [x8,#8]
    2750:	b340dd0f 	bfxil	x15, x8, #0, #56
    2754:	f940011f 	ldr	xzr, [x8]
    2758:	d63f0100 	blr	x8
    275c:	350001c0 	cbnz	w0, 2794 <stmmac_hw_setup+0x374>
    2760:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2764:	91000000 	add	x0, x0, #0x0
    2768:	94000000 	bl	0 <printk>
    276c:	b340de6f 	bfxil	x15, x19, #0, #56
    2770:	f947c268 	ldr	x8, [x19,#3968]
    2774:	f940011f 	ldr	xzr, [x8]
    2778:	b340dd0f 	bfxil	x15, x8, #0, #56
    277c:	b900411f 	str	wzr, [x8,#64]
    2780:	b340de6f 	bfxil	x15, x19, #0, #56
    2784:	f9459268 	ldr	x8, [x19,#2848]
    2788:	f940011f 	ldr	xzr, [x8]
    278c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2790:	b900551f 	str	wzr, [x8,#84]
    2794:	b340de6f 	bfxil	x15, x19, #0, #56
    2798:	b9512668 	ldr	w8, [x19,#4388]
    279c:	b340de6f 	bfxil	x15, x19, #0, #56
    27a0:	f9458660 	ldr	x0, [x19,#2824]
    27a4:	52800021 	mov	w1, #0x1                   	// #1
    27a8:	7101011f 	cmp	w8, #0x40
    27ac:	5400006b 	b.lt	27b8 <stmmac_hw_setup+0x398>
    27b0:	94000000 	bl	0 <stmmac_dwmac4_set_mac>
    27b4:	14000002 	b	27bc <stmmac_hw_setup+0x39c>
    27b8:	94000000 	bl	0 <stmmac_set_mac>
    27bc:	b340de6f 	bfxil	x15, x19, #0, #56
    27c0:	f947c268 	ldr	x8, [x19,#3968]
    27c4:	b340dd0f 	bfxil	x15, x8, #0, #56
    27c8:	b9405109 	ldr	w9, [x8,#80]
    27cc:	b340dd0f 	bfxil	x15, x8, #0, #56
    27d0:	b9406d03 	ldr	w3, [x8,#108]
    27d4:	34000229 	cbz	w9, 2818 <stmmac_hw_setup+0x3f8>
    27d8:	b340de6f 	bfxil	x15, x19, #0, #56
    27dc:	f9459268 	ldr	x8, [x19,#2848]
    27e0:	90000009 	adrp	x9, 0 <stmmac_disable_eee_mode>
    27e4:	b340dd2f 	bfxil	x15, x9, #0, #56
    27e8:	b9400121 	ldr	w1, [x9]
    27ec:	b340de6f 	bfxil	x15, x19, #0, #56
    27f0:	f9458660 	ldr	x0, [x19,#2824]
    27f4:	b340dd0f 	bfxil	x15, x8, #0, #56
    27f8:	f9400908 	ldr	x8, [x8,#16]
    27fc:	2a0103e2 	mov	w2, w1
    2800:	b340dd0f 	bfxil	x15, x8, #0, #56
    2804:	f9401108 	ldr	x8, [x8,#32]
    2808:	b340dd0f 	bfxil	x15, x8, #0, #56
    280c:	f940011f 	ldr	xzr, [x8]
    2810:	d63f0100 	blr	x8
    2814:	14000018 	b	2874 <stmmac_hw_setup+0x454>
    2818:	b340dd0f 	bfxil	x15, x8, #0, #56
    281c:	b9404d09 	ldr	w9, [x8,#76]
    2820:	35000089 	cbnz	w9, 2830 <stmmac_hw_setup+0x410>
    2824:	b340dd0f 	bfxil	x15, x8, #0, #56
    2828:	b9403d08 	ldr	w8, [x8,#60]
    282c:	34002c48 	cbz	w8, 2db4 <stmmac_hw_setup+0x994>
    2830:	b340de6f 	bfxil	x15, x19, #0, #56
    2834:	f9459268 	ldr	x8, [x19,#2848]
    2838:	b340de6f 	bfxil	x15, x19, #0, #56
    283c:	f9458660 	ldr	x0, [x19,#2824]
    2840:	52800021 	mov	w1, #0x1                   	// #1
    2844:	52800022 	mov	w2, #0x1                   	// #1
    2848:	b340dd0f 	bfxil	x15, x8, #0, #56
    284c:	f9400908 	ldr	x8, [x8,#16]
    2850:	52800035 	mov	w21, #0x1                   	// #1
    2854:	b340dd0f 	bfxil	x15, x8, #0, #56
    2858:	f9401108 	ldr	x8, [x8,#32]
    285c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2860:	f940011f 	ldr	xzr, [x8]
    2864:	d63f0100 	blr	x8
    2868:	f940027f 	ldr	xzr, [x19]
    286c:	b340de6f 	bfxil	x15, x19, #0, #56
    2870:	f9069675 	str	x21, [x19,#3368]
    2874:	b340de6f 	bfxil	x15, x19, #0, #56
    2878:	b9512668 	ldr	w8, [x19,#4388]
    287c:	b340de6f 	bfxil	x15, x19, #0, #56
    2880:	f9458669 	ldr	x9, [x19,#2824]
    2884:	5280e00a 	mov	w10, #0x700                 	// #1792
    2888:	5281600b 	mov	w11, #0xb00                 	// #2816
    288c:	5280200c 	mov	w12, #0x100                 	// #256
    2890:	7100fd1f 	cmp	w8, #0x3f
    2894:	9a8ac168 	csel	x8, x11, x10, gt
    2898:	9a8cc14a 	csel	x10, x10, x12, gt
    289c:	8b080128 	add	x8, x9, x8
    28a0:	8b0a0120 	add	x0, x9, x10
    28a4:	f940027f 	ldr	xzr, [x19]
    28a8:	b340de6f 	bfxil	x15, x19, #0, #56
    28ac:	f9093268 	str	x8, [x19,#4704]
    28b0:	f940027f 	ldr	xzr, [x19]
    28b4:	b340de6f 	bfxil	x15, x19, #0, #56
    28b8:	f9092e60 	str	x0, [x19,#4696]
    28bc:	94000000 	bl	0 <dwmac_mmc_intr_all_mask>
    28c0:	b340de6f 	bfxil	x15, x19, #0, #56
    28c4:	b94fae68 	ldr	w8, [x19,#4012]
    28c8:	34000448 	cbz	w8, 2950 <stmmac_hw_setup+0x530>
    28cc:	b340de6f 	bfxil	x15, x19, #0, #56
    28d0:	f9492e60 	ldr	x0, [x19,#4696]
    28d4:	528006a1 	mov	w1, #0x35                  	// #53
    28d8:	94000000 	bl	0 <dwmac_mmc_ctrl>
    28dc:	913f9260 	add	x0, x19, #0xfe4
    28e0:	52802782 	mov	w2, #0x13c                 	// #316
    28e4:	2a1f03e1 	mov	w1, wzr
    28e8:	94000000 	bl	0 <memset>
    28ec:	36000bf4 	tbz	w20, #0, 2a68 <stmmac_hw_setup+0x648>
    28f0:	b340de6f 	bfxil	x15, x19, #0, #56
    28f4:	b94fb268 	ldr	w8, [x19,#4016]
    28f8:	35000088 	cbnz	w8, 2908 <stmmac_hw_setup+0x4e8>
    28fc:	b340de6f 	bfxil	x15, x19, #0, #56
    2900:	b94fb668 	ldr	w8, [x19,#4020]
    2904:	340024c8 	cbz	w8, 2d9c <stmmac_hw_setup+0x97c>
    2908:	b340de6f 	bfxil	x15, x19, #0, #56
    290c:	f9458e60 	ldr	x0, [x19,#2840]
    2910:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2914:	91000021 	add	x1, x1, #0x0
    2918:	94000000 	bl	0 <devm_clk_get>
    291c:	b13ffc1f 	cmn	x0, #0xfff
    2920:	f940027f 	ldr	xzr, [x19]
    2924:	b340de6f 	bfxil	x15, x19, #0, #56
    2928:	f9091e60 	str	x0, [x19,#4664]
    292c:	540001c3 	b.cc	2964 <stmmac_hw_setup+0x544>
    2930:	b340de6f 	bfxil	x15, x19, #0, #56
    2934:	f9489e60 	ldr	x0, [x19,#4408]
    2938:	94000000 	bl	0 <clk_get_rate>
    293c:	b9124260 	str	w0, [x19,#4672]
    2940:	f940027f 	ldr	xzr, [x19]
    2944:	b340de6f 	bfxil	x15, x19, #0, #56
    2948:	f9091e7f 	str	xzr, [x19,#4664]
    294c:	14000012 	b	2994 <stmmac_hw_setup+0x574>
    2950:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2954:	91000000 	add	x0, x0, #0x0
    2958:	94000000 	bl	0 <printk>
    295c:	3707fcb4 	tbnz	w20, #0, 28f0 <stmmac_hw_setup+0x4d0>
    2960:	14000042 	b	2a68 <stmmac_hw_setup+0x648>
    2964:	aa0003f4 	mov	x20, x0
    2968:	94000000 	bl	0 <clk_prepare>
    296c:	350000c0 	cbnz	w0, 2984 <stmmac_hw_setup+0x564>
    2970:	aa1403e0 	mov	x0, x20
    2974:	94000000 	bl	0 <clk_enable>
    2978:	34000060 	cbz	w0, 2984 <stmmac_hw_setup+0x564>
    297c:	aa1403e0 	mov	x0, x20
    2980:	94000000 	bl	0 <clk_unprepare>
    2984:	b340de6f 	bfxil	x15, x19, #0, #56
    2988:	f9491e60 	ldr	x0, [x19,#4664]
    298c:	94000000 	bl	0 <clk_get_rate>
    2990:	b9124260 	str	w0, [x19,#4672]
    2994:	b340de6f 	bfxil	x15, x19, #0, #56
    2998:	f947c268 	ldr	x8, [x19,#3968]
    299c:	f940027f 	ldr	xzr, [x19]
    29a0:	b340de6f 	bfxil	x15, x19, #0, #56
    29a4:	b912467f 	str	wzr, [x19,#4676]
    29a8:	b340dd0f 	bfxil	x15, x8, #0, #56
    29ac:	b940b108 	ldr	w8, [x8,#176]
    29b0:	34000088 	cbz	w8, 29c0 <stmmac_hw_setup+0x5a0>
    29b4:	b340de6f 	bfxil	x15, x19, #0, #56
    29b8:	b94fb668 	ldr	w8, [x19,#4020]
    29bc:	350000e8 	cbnz	w8, 29d8 <stmmac_hw_setup+0x5b8>
    29c0:	b340de6f 	bfxil	x15, x19, #0, #56
    29c4:	b951b668 	ldr	w8, [x19,#4532]
    29c8:	34000108 	cbz	w8, 29e8 <stmmac_hw_setup+0x5c8>
    29cc:	b340de6f 	bfxil	x15, x19, #0, #56
    29d0:	b94fb668 	ldr	w8, [x19,#4020]
    29d4:	340000a8 	cbz	w8, 29e8 <stmmac_hw_setup+0x5c8>
    29d8:	52800028 	mov	w8, #0x1                   	// #1
    29dc:	f940027f 	ldr	xzr, [x19]
    29e0:	b340de6f 	bfxil	x15, x19, #0, #56
    29e4:	b9124668 	str	w8, [x19,#4676]
    29e8:	b340de6f 	bfxil	x15, x19, #0, #56
    29ec:	b94fb269 	ldr	w9, [x19,#4016]
    29f0:	91240274 	add	x20, x19, #0x900
    29f4:	34000109 	cbz	w9, 2a14 <stmmac_hw_setup+0x5f4>
    29f8:	b340de6f 	bfxil	x15, x19, #0, #56
    29fc:	f9458a60 	ldr	x0, [x19,#2832]
    2a00:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2a04:	91000021 	add	x1, x1, #0x0
    2a08:	94000000 	bl	0 <netdev_info>
    2a0c:	b340de6f 	bfxil	x15, x19, #0, #56
    2a10:	b9524668 	ldr	w8, [x19,#4676]
    2a14:	340000c8 	cbz	w8, 2a2c <stmmac_hw_setup+0x60c>
    2a18:	b340de6f 	bfxil	x15, x19, #0, #56
    2a1c:	f9458a60 	ldr	x0, [x19,#2832]
    2a20:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2a24:	91000021 	add	x1, x1, #0x0
    2a28:	94000000 	bl	0 <netdev_info>
    2a2c:	b340de6f 	bfxil	x15, x19, #0, #56
    2a30:	f9459268 	ldr	x8, [x19,#2848]
    2a34:	90000009 	adrp	x9, 0 <stmmac_ptp>
    2a38:	91000129 	add	x9, x9, #0x0
    2a3c:	aa1403e0 	mov	x0, x20
    2a40:	f940011f 	ldr	xzr, [x8]
    2a44:	b340dd0f 	bfxil	x15, x8, #0, #56
    2a48:	f9001109 	str	x9, [x8,#32]
    2a4c:	f940027f 	ldr	xzr, [x19]
    2a50:	b340de6f 	bfxil	x15, x19, #0, #56
    2a54:	b909467f 	str	wzr, [x19,#2372]
    2a58:	f940027f 	ldr	xzr, [x19]
    2a5c:	b340de6f 	bfxil	x15, x19, #0, #56
    2a60:	b909f27f 	str	wzr, [x19,#2544]
    2a64:	94000000 	bl	0 <stmmac_ptp_register>
    2a68:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
    2a6c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2a70:	f9400101 	ldr	x1, [x8]
    2a74:	aa1303e0 	mov	x0, x19
    2a78:	94000000 	bl	0 <debugfs_create_dir>
    2a7c:	f940027f 	ldr	xzr, [x19]
    2a80:	b340de6f 	bfxil	x15, x19, #0, #56
    2a84:	f9093e60 	str	x0, [x19,#4728]
    2a88:	b4000460 	cbz	x0, 2b14 <stmmac_hw_setup+0x6f4>
    2a8c:	aa0003e2 	mov	x2, x0
    2a90:	b13ffc1f 	cmn	x0, #0xfff
    2a94:	54000402 	b.cs	2b14 <stmmac_hw_setup+0x6f4>
    2a98:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2a9c:	90000004 	adrp	x4, 0 <stmmac_disable_eee_mode>
    2aa0:	91000000 	add	x0, x0, #0x0
    2aa4:	91000084 	add	x4, x4, #0x0
    2aa8:	52802481 	mov	w1, #0x124                 	// #292
    2aac:	aa1303e3 	mov	x3, x19
    2ab0:	94000000 	bl	0 <debugfs_create_file>
    2ab4:	f940027f 	ldr	xzr, [x19]
    2ab8:	b340de6f 	bfxil	x15, x19, #0, #56
    2abc:	f9094260 	str	x0, [x19,#4736]
    2ac0:	b4000380 	cbz	x0, 2b30 <stmmac_hw_setup+0x710>
    2ac4:	b13ffc1f 	cmn	x0, #0xfff
    2ac8:	54000342 	b.cs	2b30 <stmmac_hw_setup+0x710>
    2acc:	b340de6f 	bfxil	x15, x19, #0, #56
    2ad0:	f9493e62 	ldr	x2, [x19,#4728]
    2ad4:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2ad8:	90000004 	adrp	x4, 0 <stmmac_disable_eee_mode>
    2adc:	91000000 	add	x0, x0, #0x0
    2ae0:	91000084 	add	x4, x4, #0x0
    2ae4:	52802481 	mov	w1, #0x124                 	// #292
    2ae8:	aa1303e3 	mov	x3, x19
    2aec:	94000000 	bl	0 <debugfs_create_file>
    2af0:	f940027f 	ldr	xzr, [x19]
    2af4:	b340de6f 	bfxil	x15, x19, #0, #56
    2af8:	f9094660 	str	x0, [x19,#4744]
    2afc:	b4000060 	cbz	x0, 2b08 <stmmac_hw_setup+0x6e8>
    2b00:	b13ffc1f 	cmn	x0, #0xfff
    2b04:	540002c3 	b.cc	2b5c <stmmac_hw_setup+0x73c>
    2b08:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2b0c:	91000000 	add	x0, x0, #0x0
    2b10:	1400000a 	b	2b38 <stmmac_hw_setup+0x718>
    2b14:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2b18:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2b1c:	91000000 	add	x0, x0, #0x0
    2b20:	91000021 	add	x1, x1, #0x0
    2b24:	aa1303e2 	mov	x2, x19
    2b28:	94000000 	bl	0 <printk>
    2b2c:	14000007 	b	2b48 <stmmac_hw_setup+0x728>
    2b30:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2b34:	91000000 	add	x0, x0, #0x0
    2b38:	94000000 	bl	0 <printk>
    2b3c:	b340de6f 	bfxil	x15, x19, #0, #56
    2b40:	f9493e60 	ldr	x0, [x19,#4728]
    2b44:	94000000 	bl	0 <debugfs_remove_recursive>
    2b48:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2b4c:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2b50:	91000000 	add	x0, x0, #0x0
    2b54:	91000021 	add	x1, x1, #0x0
    2b58:	94000000 	bl	0 <printk>
    2b5c:	52822528 	mov	w8, #0x1129                	// #4393
    2b60:	38686a68 	ldrb	w8, [x19,x8]
    2b64:	362802a8 	tbz	w8, #5, 2bb8 <stmmac_hw_setup+0x798>
    2b68:	b340de6f 	bfxil	x15, x19, #0, #56
    2b6c:	f9459260 	ldr	x0, [x19,#2848]
    2b70:	b340dc0f 	bfxil	x15, x0, #0, #56
    2b74:	f9400008 	ldr	x8, [x0]
    2b78:	b340dd0f 	bfxil	x15, x8, #0, #56
    2b7c:	f9400908 	ldr	x8, [x8,#16]
    2b80:	b340dd0f 	bfxil	x15, x8, #0, #56
    2b84:	f940011f 	ldr	xzr, [x8]
    2b88:	d63f0100 	blr	x8
    2b8c:	b340de6f 	bfxil	x15, x19, #0, #56
    2b90:	f9459268 	ldr	x8, [x19,#2848]
    2b94:	b340de6f 	bfxil	x15, x19, #0, #56
    2b98:	f9458660 	ldr	x0, [x19,#2824]
    2b9c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2ba0:	f9400908 	ldr	x8, [x8,#16]
    2ba4:	b340dd0f 	bfxil	x15, x8, #0, #56
    2ba8:	f9400d08 	ldr	x8, [x8,#24]
    2bac:	b340dd0f 	bfxil	x15, x8, #0, #56
    2bb0:	f940011f 	ldr	xzr, [x8]
    2bb4:	d63f0100 	blr	x8
    2bb8:	b340de6f 	bfxil	x15, x19, #0, #56
    2bbc:	b9524a68 	ldr	w8, [x19,#4680]
    2bc0:	528003c9 	mov	w9, #0x1e                  	// #30
    2bc4:	f940027f 	ldr	xzr, [x19]
    2bc8:	b340de6f 	bfxil	x15, x19, #0, #56
    2bcc:	b911ae69 	str	w9, [x19,#4524]
    2bd0:	340002c8 	cbz	w8, 2c28 <stmmac_hw_setup+0x808>
    2bd4:	b340de6f 	bfxil	x15, x19, #0, #56
    2bd8:	f9459268 	ldr	x8, [x19,#2848]
    2bdc:	b340dd0f 	bfxil	x15, x8, #0, #56
    2be0:	f9400909 	ldr	x9, [x8,#16]
    2be4:	b340dd2f 	bfxil	x15, x9, #0, #56
    2be8:	f9403d29 	ldr	x9, [x9,#120]
    2bec:	b40001e9 	cbz	x9, 2c28 <stmmac_hw_setup+0x808>
    2bf0:	52801fe9 	mov	w9, #0xff                  	// #255
    2bf4:	f940027f 	ldr	xzr, [x19]
    2bf8:	b340de6f 	bfxil	x15, x19, #0, #56
    2bfc:	b909ee69 	str	w9, [x19,#2540]
    2c00:	b340dd0f 	bfxil	x15, x8, #0, #56
    2c04:	f9400908 	ldr	x8, [x8,#16]
    2c08:	b340de6f 	bfxil	x15, x19, #0, #56
    2c0c:	f9458660 	ldr	x0, [x19,#2824]
    2c10:	52801fe1 	mov	w1, #0xff                  	// #255
    2c14:	b340dd0f 	bfxil	x15, x8, #0, #56
    2c18:	f9403d08 	ldr	x8, [x8,#120]
    2c1c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2c20:	f940011f 	ldr	xzr, [x8]
    2c24:	d63f0100 	blr	x8
    2c28:	b340de6f 	bfxil	x15, x19, #0, #56
    2c2c:	f9459260 	ldr	x0, [x19,#2848]
    2c30:	b340dc0f 	bfxil	x15, x0, #0, #56
    2c34:	b9405808 	ldr	w8, [x0,#88]
    2c38:	34000228 	cbz	w8, 2c7c <stmmac_hw_setup+0x85c>
    2c3c:	b340dc0f 	bfxil	x15, x0, #0, #56
    2c40:	f9400008 	ldr	x8, [x0]
    2c44:	b340dd0f 	bfxil	x15, x8, #0, #56
    2c48:	f9403908 	ldr	x8, [x8,#112]
    2c4c:	b4000188 	cbz	x8, 2c7c <stmmac_hw_setup+0x85c>
    2c50:	b340dc0f 	bfxil	x15, x0, #0, #56
    2c54:	b9406009 	ldr	w9, [x0,#96]
    2c58:	52800021 	mov	w1, #0x1                   	// #1
    2c5c:	2a1f03e3 	mov	w3, wzr
    2c60:	7100013f 	cmp	w9, #0x0
    2c64:	1a9f07e2 	cset	w2, ne
    2c68:	b340dd0f 	bfxil	x15, x8, #0, #56
    2c6c:	f940011f 	ldr	xzr, [x8]
    2c70:	d63f0100 	blr	x8
    2c74:	b340de6f 	bfxil	x15, x19, #0, #56
    2c78:	f9459260 	ldr	x0, [x19,#2848]
    2c7c:	b340dc0f 	bfxil	x15, x0, #0, #56
    2c80:	f9400808 	ldr	x8, [x0,#16]
    2c84:	b340dd0f 	bfxil	x15, x8, #0, #56
    2c88:	f9404109 	ldr	x9, [x8,#128]
    2c8c:	b4000169 	cbz	x9, 2cb8 <stmmac_hw_setup+0x898>
    2c90:	b340de6f 	bfxil	x15, x19, #0, #56
    2c94:	f9458660 	ldr	x0, [x19,#2824]
    2c98:	52803fe1 	mov	w1, #0x1ff                 	// #511
    2c9c:	b340dd2f 	bfxil	x15, x9, #0, #56
    2ca0:	f940013f 	ldr	xzr, [x9]
    2ca4:	d63f0120 	blr	x9
    2ca8:	b340de6f 	bfxil	x15, x19, #0, #56
    2cac:	f9459268 	ldr	x8, [x19,#2848]
    2cb0:	b340dd0f 	bfxil	x15, x8, #0, #56
    2cb4:	f9400908 	ldr	x8, [x8,#16]
    2cb8:	b340dd0f 	bfxil	x15, x8, #0, #56
    2cbc:	f9404508 	ldr	x8, [x8,#136]
    2cc0:	b40000e8 	cbz	x8, 2cdc <stmmac_hw_setup+0x8bc>
    2cc4:	b340de6f 	bfxil	x15, x19, #0, #56
    2cc8:	f9458660 	ldr	x0, [x19,#2824]
    2ccc:	52803fe1 	mov	w1, #0x1ff                 	// #511
    2cd0:	b340dd0f 	bfxil	x15, x8, #0, #56
    2cd4:	f940011f 	ldr	xzr, [x8]
    2cd8:	d63f0100 	blr	x8
    2cdc:	b340de6f 	bfxil	x15, x19, #0, #56
    2ce0:	39666268 	ldrb	w8, [x19,#2456]
    2ce4:	340001c8 	cbz	w8, 2d1c <stmmac_hw_setup+0x8fc>
    2ce8:	b340de6f 	bfxil	x15, x19, #0, #56
    2cec:	f9459268 	ldr	x8, [x19,#2848]
    2cf0:	b340de6f 	bfxil	x15, x19, #0, #56
    2cf4:	f9458660 	ldr	x0, [x19,#2824]
    2cf8:	52800021 	mov	w1, #0x1                   	// #1
    2cfc:	2a1f03e2 	mov	w2, wzr
    2d00:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d04:	f9400908 	ldr	x8, [x8,#16]
    2d08:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d0c:	f9405108 	ldr	x8, [x8,#160]
    2d10:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d14:	f940011f 	ldr	xzr, [x8]
    2d18:	d63f0100 	blr	x8
    2d1c:	b340de6f 	bfxil	x15, x19, #0, #56
    2d20:	f9459268 	ldr	x8, [x19,#2848]
    2d24:	b340de6f 	bfxil	x15, x19, #0, #56
    2d28:	f9458660 	ldr	x0, [x19,#2824]
    2d2c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d30:	f9400908 	ldr	x8, [x8,#16]
    2d34:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d38:	f9402508 	ldr	x8, [x8,#72]
    2d3c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d40:	f940011f 	ldr	xzr, [x8]
    2d44:	d63f0100 	blr	x8
    2d48:	b340de6f 	bfxil	x15, x19, #0, #56
    2d4c:	f9459268 	ldr	x8, [x19,#2848]
    2d50:	b340de6f 	bfxil	x15, x19, #0, #56
    2d54:	f9458660 	ldr	x0, [x19,#2824]
    2d58:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d5c:	f9400908 	ldr	x8, [x8,#16]
    2d60:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d64:	f9402d08 	ldr	x8, [x8,#88]
    2d68:	b340dd0f 	bfxil	x15, x8, #0, #56
    2d6c:	f940011f 	ldr	xzr, [x8]
    2d70:	d63f0100 	blr	x8
    2d74:	2a1f03fa 	mov	w26, wzr
    2d78:	a9447bfd 	ldp	x29, x30, [sp,#64]
    2d7c:	a9434ff4 	ldp	x20, x19, [sp,#48]
    2d80:	a94257f6 	ldp	x22, x21, [sp,#32]
    2d84:	a9415ff8 	ldp	x24, x23, [sp,#16]
    2d88:	2a1a03e0 	mov	w0, w26
    2d8c:	a8c567fa 	ldp	x26, x25, [sp],#80
    2d90:	b340dfcf 	bfxil	x15, x30, #0, #56
    2d94:	f94003df 	ldr	xzr, [x30]
    2d98:	d65f03c0 	ret
    2d9c:	b340de6f 	bfxil	x15, x19, #0, #56
    2da0:	f9458a60 	ldr	x0, [x19,#2832]
    2da4:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    2da8:	91000021 	add	x1, x1, #0x0
    2dac:	94000000 	bl	0 <netdev_warn>
    2db0:	17ffff2e 	b	2a68 <stmmac_hw_setup+0x648>
    2db4:	b340de6f 	bfxil	x15, x19, #0, #56
    2db8:	f9459268 	ldr	x8, [x19,#2848]
    2dbc:	90000009 	adrp	x9, 0 <stmmac_disable_eee_mode>
    2dc0:	b340de6f 	bfxil	x15, x19, #0, #56
    2dc4:	f9458660 	ldr	x0, [x19,#2824]
    2dc8:	b340dd2f 	bfxil	x15, x9, #0, #56
    2dcc:	b9400121 	ldr	w1, [x9]
    2dd0:	b340dd0f 	bfxil	x15, x8, #0, #56
    2dd4:	f9400908 	ldr	x8, [x8,#16]
    2dd8:	52800022 	mov	w2, #0x1                   	// #1
    2ddc:	17fffe89 	b	2800 <stmmac_hw_setup+0x3e0>

0000000000002de0 <stmmac_set_rx_mode>:
    2de0:	f81e0ff3 	str	x19, [sp,#-32]!
    2de4:	a9017bfd 	stp	x29, x30, [sp,#16]
    2de8:	910043fd 	add	x29, sp, #0x10
    2dec:	aa0003f3 	mov	x19, x0
    2df0:	94000000 	bl	0 <_mcount>
    2df4:	b340de6f 	bfxil	x15, x19, #0, #56
    2df8:	f9459260 	ldr	x0, [x19,#2848]
    2dfc:	aa1303e1 	mov	x1, x19
    2e00:	b340dc0f 	bfxil	x15, x0, #0, #56
    2e04:	f9400008 	ldr	x8, [x0]
    2e08:	b340dd0f 	bfxil	x15, x8, #0, #56
    2e0c:	f9401108 	ldr	x8, [x8,#32]
    2e10:	b340dd0f 	bfxil	x15, x8, #0, #56
    2e14:	f940011f 	ldr	xzr, [x8]
    2e18:	d63f0100 	blr	x8
    2e1c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    2e20:	f84207f3 	ldr	x19, [sp],#32
    2e24:	b340dfcf 	bfxil	x15, x30, #0, #56
    2e28:	f94003df 	ldr	xzr, [x30]
    2e2c:	d65f03c0 	ret

0000000000002e30 <stmmac_release>:
    2e30:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    2e34:	a9017bfd 	stp	x29, x30, [sp,#16]
    2e38:	910043fd 	add	x29, sp, #0x10
    2e3c:	aa0003f3 	mov	x19, x0
    2e40:	94000000 	bl	0 <_mcount>
    2e44:	b340de6f 	bfxil	x15, x19, #0, #56
    2e48:	b951a668 	ldr	w8, [x19,#4516]
    2e4c:	34000088 	cbz	w8, 2e5c <stmmac_release+0x2c>
    2e50:	52822b08 	mov	w8, #0x1158                	// #4440
    2e54:	8b080260 	add	x0, x19, x8
    2e58:	94000000 	bl	0 <del_timer_sync>
    2e5c:	b340de6f 	bfxil	x15, x19, #0, #56
    2e60:	f945a260 	ldr	x0, [x19,#2880]
    2e64:	b4000100 	cbz	x0, 2e84 <stmmac_release+0x54>
    2e68:	94000000 	bl	0 <phy_stop>
    2e6c:	b340de6f 	bfxil	x15, x19, #0, #56
    2e70:	f945a260 	ldr	x0, [x19,#2880]
    2e74:	94000000 	bl	0 <phy_disconnect>
    2e78:	f940027f 	ldr	xzr, [x19]
    2e7c:	b340de6f 	bfxil	x15, x19, #0, #56
    2e80:	f905a27f 	str	xzr, [x19,#2880]
    2e84:	b340de6f 	bfxil	x15, x19, #0, #56
    2e88:	f941e268 	ldr	x8, [x19,#960]
    2e8c:	2a1f03e0 	mov	w0, wzr
    2e90:	91240274 	add	x20, x19, #0x900
    2e94:	91024101 	add	x1, x8, #0x90
    2e98:	94000000 	bl	0 <set_bit>
    2e9c:	91290260 	add	x0, x19, #0xa40
    2ea0:	94000000 	bl	0 <napi_disable>
    2ea4:	91254260 	add	x0, x19, #0x950
    2ea8:	94000000 	bl	0 <del_timer_sync>
    2eac:	b340de6f 	bfxil	x15, x19, #0, #56
    2eb0:	b9404260 	ldr	w0, [x19,#64]
    2eb4:	aa1303e1 	mov	x1, x19
    2eb8:	94000000 	bl	0 <free_irq>
    2ebc:	b340de6f 	bfxil	x15, x19, #0, #56
    2ec0:	b9513260 	ldr	w0, [x19,#4400]
    2ec4:	b340de6f 	bfxil	x15, x19, #0, #56
    2ec8:	b9404268 	ldr	w8, [x19,#64]
    2ecc:	6b08001f 	cmp	w0, w8
    2ed0:	54000060 	b.eq	2edc <stmmac_release+0xac>
    2ed4:	aa1303e1 	mov	x1, x19
    2ed8:	94000000 	bl	0 <free_irq>
    2edc:	b340de6f 	bfxil	x15, x19, #0, #56
    2ee0:	b951a260 	ldr	w0, [x19,#4512]
    2ee4:	7100041f 	cmp	w0, #0x1
    2ee8:	5400006b 	b.lt	2ef4 <stmmac_release+0xc4>
    2eec:	aa1303e1 	mov	x1, x19
    2ef0:	94000000 	bl	0 <free_irq>
    2ef4:	b340de6f 	bfxil	x15, x19, #0, #56
    2ef8:	f9459268 	ldr	x8, [x19,#2848]
    2efc:	b340de6f 	bfxil	x15, x19, #0, #56
    2f00:	f9458660 	ldr	x0, [x19,#2824]
    2f04:	b340dd0f 	bfxil	x15, x8, #0, #56
    2f08:	f9400908 	ldr	x8, [x8,#16]
    2f0c:	b340dd0f 	bfxil	x15, x8, #0, #56
    2f10:	f9402908 	ldr	x8, [x8,#80]
    2f14:	b340dd0f 	bfxil	x15, x8, #0, #56
    2f18:	f940011f 	ldr	xzr, [x8]
    2f1c:	d63f0100 	blr	x8
    2f20:	b340de6f 	bfxil	x15, x19, #0, #56
    2f24:	f9459268 	ldr	x8, [x19,#2848]
    2f28:	b340de6f 	bfxil	x15, x19, #0, #56
    2f2c:	f9458660 	ldr	x0, [x19,#2824]
    2f30:	b340dd0f 	bfxil	x15, x8, #0, #56
    2f34:	f9400908 	ldr	x8, [x8,#16]
    2f38:	b340dd0f 	bfxil	x15, x8, #0, #56
    2f3c:	f9403108 	ldr	x8, [x8,#96]
    2f40:	b340dd0f 	bfxil	x15, x8, #0, #56
    2f44:	f940011f 	ldr	xzr, [x8]
    2f48:	d63f0100 	blr	x8
    2f4c:	aa1403e0 	mov	x0, x20
    2f50:	9400041c 	bl	3fc0 <free_dma_desc_resources>
    2f54:	b340de6f 	bfxil	x15, x19, #0, #56
    2f58:	f9458660 	ldr	x0, [x19,#2824]
    2f5c:	2a1f03e1 	mov	w1, wzr
    2f60:	94000000 	bl	0 <stmmac_set_mac>
    2f64:	aa1303e0 	mov	x0, x19
    2f68:	94000000 	bl	0 <netif_carrier_off>
    2f6c:	b340de6f 	bfxil	x15, x19, #0, #56
    2f70:	f9493e60 	ldr	x0, [x19,#4728]
    2f74:	94000000 	bl	0 <debugfs_remove_recursive>
    2f78:	b340de6f 	bfxil	x15, x19, #0, #56
    2f7c:	f9491e73 	ldr	x19, [x19,#4664]
    2f80:	b40000b3 	cbz	x19, 2f94 <stmmac_release+0x164>
    2f84:	aa1303e0 	mov	x0, x19
    2f88:	94000000 	bl	0 <clk_disable>
    2f8c:	aa1303e0 	mov	x0, x19
    2f90:	94000000 	bl	0 <clk_unprepare>
    2f94:	aa1403e0 	mov	x0, x20
    2f98:	94000000 	bl	0 <stmmac_ptp_unregister>
    2f9c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    2fa0:	2a1f03e0 	mov	w0, wzr
    2fa4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    2fa8:	b340dfcf 	bfxil	x15, x30, #0, #56
    2fac:	f94003df 	ldr	xzr, [x30]
    2fb0:	d65f03c0 	ret

0000000000002fb4 <stmmac_open>:
    2fb4:	d10403ff 	sub	sp, sp, #0x100
    2fb8:	a90a6ffc 	stp	x28, x27, [sp,#160]
    2fbc:	a90b67fa 	stp	x26, x25, [sp,#176]
    2fc0:	a90c5ff8 	stp	x24, x23, [sp,#192]
    2fc4:	a90d57f6 	stp	x22, x21, [sp,#208]
    2fc8:	a90e4ff4 	stp	x20, x19, [sp,#224]
    2fcc:	a90f7bfd 	stp	x29, x30, [sp,#240]
    2fd0:	9103c3fd 	add	x29, sp, #0xf0
    2fd4:	aa0003f3 	mov	x19, x0
    2fd8:	94000000 	bl	0 <_mcount>
    2fdc:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    2fe0:	91000000 	add	x0, x0, #0x0
    2fe4:	94000000 	bl	0 <printk>
    2fe8:	b340de6f 	bfxil	x15, x19, #0, #56
    2fec:	f9459268 	ldr	x8, [x19,#2848]
    2ff0:	b340dd0f 	bfxil	x15, x8, #0, #56
    2ff4:	b9405908 	ldr	w8, [x8,#88]
    2ff8:	7100211f 	cmp	w8, #0x8
    2ffc:	54000c48 	b.hi	3184 <stmmac_open+0x1d0>
    3000:	52800029 	mov	w9, #0x1                   	// #1
    3004:	1ac82128 	lsl	w8, w9, w8
    3008:	52802249 	mov	w9, #0x112                 	// #274
    300c:	6a09011f 	tst	w8, w9
    3010:	54000ba0 	b.eq	3184 <stmmac_open+0x1d0>
    3014:	52801817 	mov	w23, #0xc0                  	// #192
    3018:	91300260 	add	x0, x19, #0xc00
    301c:	52807002 	mov	w2, #0x380                 	// #896
    3020:	2a1f03e1 	mov	w1, wzr
    3024:	72a04817 	movk	w23, #0x240, lsl #16
    3028:	94000000 	bl	0 <memset>
    302c:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
    3030:	b340dd0f 	bfxil	x15, x8, #0, #56
    3034:	b9800108 	ldrsw	x8, [x8]
    3038:	90000018 	adrp	x24, 0 <stmmac_disable_eee_mode>
    303c:	52802009 	mov	w9, #0x100                 	// #256
    3040:	90000014 	adrp	x20, 0 <kmalloc_caches>
    3044:	f940027f 	ldr	xzr, [x19]
    3048:	b340de6f 	bfxil	x15, x19, #0, #56
    304c:	f9069668 	str	x8, [x19,#3368]
    3050:	b340df0f 	bfxil	x15, x24, #0, #56
    3054:	b9400308 	ldr	w8, [x24]
    3058:	f940027f 	ldr	xzr, [x19]
    305c:	b340de6f 	bfxil	x15, x19, #0, #56
    3060:	b909e669 	str	w9, [x19,#2532]
    3064:	f940027f 	ldr	xzr, [x19]
    3068:	b340de6f 	bfxil	x15, x19, #0, #56
    306c:	b912727f 	str	wzr, [x19,#4720]
    3070:	52801801 	mov	w1, #0xc0                  	// #192
    3074:	1100fd08 	add	w8, w8, #0x3f
    3078:	121a6508 	and	w8, w8, #0xffffffc0
    307c:	f940027f 	ldr	xzr, [x19]
    3080:	b340de6f 	bfxil	x15, x19, #0, #56
    3084:	b909e268 	str	w8, [x19,#2528]
    3088:	b340de8f 	bfxil	x15, x20, #0, #56
    308c:	f9400280 	ldr	x0, [x20]
    3090:	72a04801 	movk	w1, #0x240, lsl #16
    3094:	52820002 	mov	w2, #0x1000                	// #4096
    3098:	94000000 	bl	0 <kmem_cache_alloc_trace>
    309c:	f940027f 	ldr	xzr, [x19]
    30a0:	b340de6f 	bfxil	x15, x19, #0, #56
    30a4:	f904fe60 	str	x0, [x19,#2552]
    30a8:	b4003180 	cbz	x0, 36d8 <stmmac_open+0x724>
    30ac:	b340de8f 	bfxil	x15, x20, #0, #56
    30b0:	f9400280 	ldr	x0, [x20]
    30b4:	52801801 	mov	w1, #0xc0                  	// #192
    30b8:	72a04801 	movk	w1, #0x240, lsl #16
    30bc:	52820002 	mov	w2, #0x1000                	// #4096
    30c0:	94000000 	bl	0 <kmem_cache_alloc_trace>
    30c4:	f940027f 	ldr	xzr, [x19]
    30c8:	b340de6f 	bfxil	x15, x19, #0, #56
    30cc:	f904ea60 	str	x0, [x19,#2512]
    30d0:	b4002fe0 	cbz	x0, 36cc <stmmac_open+0x718>
    30d4:	52801801 	mov	w1, #0xc0                  	// #192
    30d8:	52860000 	mov	w0, #0x3000                	// #12288
    30dc:	72a04801 	movk	w1, #0x240, lsl #16
    30e0:	52800042 	mov	w2, #0x2                   	// #2
    30e4:	94000000 	bl	0 <kmalloc_order_trace>
    30e8:	f940027f 	ldr	xzr, [x19]
    30ec:	b340de6f 	bfxil	x15, x19, #0, #56
    30f0:	f9049a60 	str	x0, [x19,#2352]
    30f4:	b4002e60 	cbz	x0, 36c0 <stmmac_open+0x70c>
    30f8:	b340de8f 	bfxil	x15, x20, #0, #56
    30fc:	f9400280 	ldr	x0, [x20]
    3100:	52801801 	mov	w1, #0xc0                  	// #192
    3104:	72a04801 	movk	w1, #0x240, lsl #16
    3108:	52820002 	mov	w2, #0x1000                	// #4096
    310c:	94000000 	bl	0 <kmem_cache_alloc_trace>
    3110:	f940027f 	ldr	xzr, [x19]
    3114:	b340de6f 	bfxil	x15, x19, #0, #56
    3118:	f9048a60 	str	x0, [x19,#2320]
    311c:	b4002cc0 	cbz	x0, 36b4 <stmmac_open+0x700>
    3120:	b340de6f 	bfxil	x15, x19, #0, #56
    3124:	b951b668 	ldr	w8, [x19,#4532]
    3128:	b340de6f 	bfxil	x15, x19, #0, #56
    312c:	f9458e75 	ldr	x21, [x19,#2840]
    3130:	91240279 	add	x25, x19, #0x900
    3134:	91280276 	add	x22, x19, #0xa00
    3138:	34000e48 	cbz	w8, 3300 <stmmac_open+0x34c>
    313c:	b4000095 	cbz	x21, 314c <stmmac_open+0x198>
    3140:	b340deaf 	bfxil	x15, x21, #0, #56
    3144:	f94126b4 	ldr	x20, [x21,#584]
    3148:	b5000074 	cbnz	x20, 3154 <stmmac_open+0x1a0>
    314c:	90000014 	adrp	x20, 0 <dummy_dma_ops>
    3150:	91000294 	add	x20, x20, #0x0
    3154:	910183e3 	add	x3, sp, #0x60
    3158:	52880001 	mov	w1, #0x4000                	// #16384
    315c:	aa1503e0 	mov	x0, x21
    3160:	aa1603e2 	mov	x2, x22
    3164:	94000000 	bl	0 <dma_alloc_from_coherent>
    3168:	34000f00 	cbz	w0, 3348 <stmmac_open+0x394>
    316c:	f94033e0 	ldr	x0, [sp,#96]
    3170:	f940027f 	ldr	xzr, [x19]
    3174:	b340de6f 	bfxil	x15, x19, #0, #56
    3178:	f904e660 	str	x0, [x19,#2504]
    317c:	b5001060 	cbnz	x0, 3388 <stmmac_open+0x3d4>
    3180:	1400014a 	b	36a8 <stmmac_open+0x6f4>
    3184:	b340de6f 	bfxil	x15, x19, #0, #56
    3188:	f947c268 	ldr	x8, [x19,#3968]
    318c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3190:	91000000 	add	x0, x0, #0x0
    3194:	b340dd0f 	bfxil	x15, x8, #0, #56
    3198:	b9400914 	ldr	w20, [x8,#8]
    319c:	b340dd0f 	bfxil	x15, x8, #0, #56
    31a0:	b9405916 	ldr	w22, [x8,#88]
    31a4:	12800008 	mov	w8, #0xffffffff            	// #-1
    31a8:	f940027f 	ldr	xzr, [x19]
    31ac:	b340de6f 	bfxil	x15, x19, #0, #56
    31b0:	f905a67f 	str	xzr, [x19,#2888]
    31b4:	f940027f 	ldr	xzr, [x19]
    31b8:	b340de6f 	bfxil	x15, x19, #0, #56
    31bc:	b90b5268 	str	w8, [x19,#2896]
    31c0:	94000000 	bl	0 <printk>
    31c4:	b340de6f 	bfxil	x15, x19, #0, #56
    31c8:	f947c268 	ldr	x8, [x19,#3968]
    31cc:	b340dd0f 	bfxil	x15, x8, #0, #56
    31d0:	f9400d01 	ldr	x1, [x8,#24]
    31d4:	b4000561 	cbz	x1, 3280 <stmmac_open+0x2cc>
    31d8:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
    31dc:	91000042 	add	x2, x2, #0x0
    31e0:	aa1303e0 	mov	x0, x19
    31e4:	2a1f03e3 	mov	w3, wzr
    31e8:	2a1403e4 	mov	w4, w20
    31ec:	94000000 	bl	0 <of_phy_connect>
    31f0:	aa0003f5 	mov	x21, x0
    31f4:	b4000780 	cbz	x0, 32e4 <stmmac_open+0x330>
    31f8:	b13ffebf 	cmn	x21, #0xfff
    31fc:	54000742 	b.cs	32e4 <stmmac_open+0x330>
    3200:	7100069f 	cmp	w20, #0x1
    3204:	540000c0 	b.eq	321c <stmmac_open+0x268>
    3208:	71001a9f 	cmp	w20, #0x6
    320c:	54000080 	b.eq	321c <stmmac_open+0x268>
    3210:	510006c8 	sub	w8, w22, #0x1
    3214:	710f991f 	cmp	w8, #0x3e6
    3218:	540000e8 	b.hi	3234 <stmmac_open+0x280>
    321c:	b340deaf 	bfxil	x15, x21, #0, #56
    3220:	b94372a8 	ldr	w8, [x21,#880]
    3224:	121a7508 	and	w8, w8, #0xffffffcf
    3228:	f94002bf 	ldr	xzr, [x21]
    322c:	b340deaf 	bfxil	x15, x21, #0, #56
    3230:	b90372a8 	str	w8, [x21,#880]
    3234:	b340de6f 	bfxil	x15, x19, #0, #56
    3238:	f947c268 	ldr	x8, [x19,#3968]
    323c:	b340dd0f 	bfxil	x15, x8, #0, #56
    3240:	f9400d08 	ldr	x8, [x8,#24]
    3244:	b5000088 	cbnz	x8, 3254 <stmmac_open+0x2a0>
    3248:	b340deaf 	bfxil	x15, x21, #0, #56
    324c:	b9431aa8 	ldr	w8, [x21,#792]
    3250:	34001108 	cbz	w8, 3470 <stmmac_open+0x4bc>
    3254:	b340deaf 	bfxil	x15, x21, #0, #56
    3258:	394d0aa8 	ldrb	w8, [x21,#834]
    325c:	340000a8 	cbz	w8, 3270 <stmmac_open+0x2bc>
    3260:	12800008 	mov	w8, #0xffffffff            	// #-1
    3264:	f94002bf 	ldr	xzr, [x21]
    3268:	b340deaf 	bfxil	x15, x21, #0, #56
    326c:	b90386a8 	str	w8, [x21,#900]
    3270:	f940027f 	ldr	xzr, [x19]
    3274:	b340de6f 	bfxil	x15, x19, #0, #56
    3278:	f905a275 	str	x21, [x19,#2880]
    327c:	17ffff66 	b	3014 <stmmac_open+0x60>
    3280:	b340dd0f 	bfxil	x15, x8, #0, #56
    3284:	b9400103 	ldr	w3, [x8]
    3288:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
    328c:	91000042 	add	x2, x2, #0x0
    3290:	910083e0 	add	x0, sp, #0x20
    3294:	528007a1 	mov	w1, #0x3d                  	// #61
    3298:	94000000 	bl	0 <snprintf>
    329c:	b340de6f 	bfxil	x15, x19, #0, #56
    32a0:	f947c268 	ldr	x8, [x19,#3968]
    32a4:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
    32a8:	91000042 	add	x2, x2, #0x0
    32ac:	910183e0 	add	x0, sp, #0x60
    32b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    32b4:	b9400504 	ldr	w4, [x8,#4]
    32b8:	910083e3 	add	x3, sp, #0x20
    32bc:	52800801 	mov	w1, #0x40                  	// #64
    32c0:	94000000 	bl	0 <snprintf>
    32c4:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
    32c8:	91000042 	add	x2, x2, #0x0
    32cc:	910183e1 	add	x1, sp, #0x60
    32d0:	aa1303e0 	mov	x0, x19
    32d4:	2a1403e3 	mov	w3, w20
    32d8:	94000000 	bl	0 <phy_connect>
    32dc:	aa0003f5 	mov	x21, x0
    32e0:	b5fff8c0 	cbnz	x0, 31f8 <stmmac_open+0x244>
    32e4:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    32e8:	91000000 	add	x0, x0, #0x0
    32ec:	aa1303e1 	mov	x1, x19
    32f0:	94000000 	bl	0 <printk>
    32f4:	b4000c35 	cbz	x21, 3478 <stmmac_open+0x4c4>
    32f8:	35000c35 	cbnz	w21, 347c <stmmac_open+0x4c8>
    32fc:	17ffff46 	b	3014 <stmmac_open+0x60>
    3300:	b4000095 	cbz	x21, 3310 <stmmac_open+0x35c>
    3304:	b340deaf 	bfxil	x15, x21, #0, #56
    3308:	f94126b4 	ldr	x20, [x21,#584]
    330c:	b5000074 	cbnz	x20, 3318 <stmmac_open+0x364>
    3310:	90000014 	adrp	x20, 0 <dummy_dma_ops>
    3314:	91000294 	add	x20, x20, #0x0
    3318:	910183e3 	add	x3, sp, #0x60
    331c:	52840001 	mov	w1, #0x2000                	// #8192
    3320:	aa1503e0 	mov	x0, x21
    3324:	aa1603e2 	mov	x2, x22
    3328:	94000000 	bl	0 <dma_alloc_from_coherent>
    332c:	34000580 	cbz	w0, 33dc <stmmac_open+0x428>
    3330:	f94033e0 	ldr	x0, [sp,#96]
    3334:	f940027f 	ldr	xzr, [x19]
    3338:	b340de6f 	bfxil	x15, x19, #0, #56
    333c:	f904e260 	str	x0, [x19,#2496]
    3340:	b50006e0 	cbnz	x0, 341c <stmmac_open+0x468>
    3344:	140000d9 	b	36a8 <stmmac_open+0x6f4>
    3348:	b340de8f 	bfxil	x15, x20, #0, #56
    334c:	f9400288 	ldr	x8, [x20]
    3350:	b4000c68 	cbz	x8, 34dc <stmmac_open+0x528>
    3354:	114022e3 	add	w3, w23, #0x8, lsl #12
    3358:	52880001 	mov	w1, #0x4000                	// #16384
    335c:	aa1503e0 	mov	x0, x21
    3360:	aa1603e2 	mov	x2, x22
    3364:	aa1f03e4 	mov	x4, xzr
    3368:	b340dd0f 	bfxil	x15, x8, #0, #56
    336c:	f940011f 	ldr	xzr, [x8]
    3370:	d63f0100 	blr	x8
    3374:	f90033e0 	str	x0, [sp,#96]
    3378:	f940027f 	ldr	xzr, [x19]
    337c:	b340de6f 	bfxil	x15, x19, #0, #56
    3380:	f904e660 	str	x0, [x19,#2504]
    3384:	b4001920 	cbz	x0, 36a8 <stmmac_open+0x6f4>
    3388:	b340de6f 	bfxil	x15, x19, #0, #56
    338c:	f9458e75 	ldr	x21, [x19,#2840]
    3390:	9124e276 	add	x22, x19, #0x938
    3394:	b4000095 	cbz	x21, 33a4 <stmmac_open+0x3f0>
    3398:	b340deaf 	bfxil	x15, x21, #0, #56
    339c:	f94126b4 	ldr	x20, [x21,#584]
    33a0:	b5000074 	cbnz	x20, 33ac <stmmac_open+0x3f8>
    33a4:	90000014 	adrp	x20, 0 <dummy_dma_ops>
    33a8:	91000294 	add	x20, x20, #0x0
    33ac:	910183e3 	add	x3, sp, #0x60
    33b0:	52880001 	mov	w1, #0x4000                	// #16384
    33b4:	aa1503e0 	mov	x0, x21
    33b8:	aa1603e2 	mov	x2, x22
    33bc:	94000000 	bl	0 <dma_alloc_from_coherent>
    33c0:	340006c0 	cbz	w0, 3498 <stmmac_open+0x4e4>
    33c4:	f94033e0 	ldr	x0, [sp,#96]
    33c8:	f940033f 	ldr	xzr, [x25]
    33cc:	b340df2f 	bfxil	x15, x25, #0, #56
    33d0:	f9000320 	str	x0, [x25]
    33d4:	b5000ac0 	cbnz	x0, 352c <stmmac_open+0x578>
    33d8:	14000079 	b	35bc <stmmac_open+0x608>
    33dc:	b340de8f 	bfxil	x15, x20, #0, #56
    33e0:	f9400288 	ldr	x8, [x20]
    33e4:	b4000d68 	cbz	x8, 3590 <stmmac_open+0x5dc>
    33e8:	114022e3 	add	w3, w23, #0x8, lsl #12
    33ec:	52840001 	mov	w1, #0x2000                	// #8192
    33f0:	aa1503e0 	mov	x0, x21
    33f4:	aa1603e2 	mov	x2, x22
    33f8:	aa1f03e4 	mov	x4, xzr
    33fc:	b340dd0f 	bfxil	x15, x8, #0, #56
    3400:	f940011f 	ldr	xzr, [x8]
    3404:	d63f0100 	blr	x8
    3408:	f90033e0 	str	x0, [sp,#96]
    340c:	f940027f 	ldr	xzr, [x19]
    3410:	b340de6f 	bfxil	x15, x19, #0, #56
    3414:	f904e260 	str	x0, [x19,#2496]
    3418:	b4001480 	cbz	x0, 36a8 <stmmac_open+0x6f4>
    341c:	b340de6f 	bfxil	x15, x19, #0, #56
    3420:	f9458e75 	ldr	x21, [x19,#2840]
    3424:	9124e276 	add	x22, x19, #0x938
    3428:	b4000095 	cbz	x21, 3438 <stmmac_open+0x484>
    342c:	b340deaf 	bfxil	x15, x21, #0, #56
    3430:	f94126b4 	ldr	x20, [x21,#584]
    3434:	b5000074 	cbnz	x20, 3440 <stmmac_open+0x48c>
    3438:	90000014 	adrp	x20, 0 <dummy_dma_ops>
    343c:	91000294 	add	x20, x20, #0x0
    3440:	910183e3 	add	x3, sp, #0x60
    3444:	52840001 	mov	w1, #0x2000                	// #8192
    3448:	aa1503e0 	mov	x0, x21
    344c:	aa1603e2 	mov	x2, x22
    3450:	94000000 	bl	0 <dma_alloc_from_coherent>
    3454:	340004c0 	cbz	w0, 34ec <stmmac_open+0x538>
    3458:	f94033e0 	ldr	x0, [sp,#96]
    345c:	f940027f 	ldr	xzr, [x19]
    3460:	b340de6f 	bfxil	x15, x19, #0, #56
    3464:	f9048660 	str	x0, [x19,#2312]
    3468:	b5000620 	cbnz	x0, 352c <stmmac_open+0x578>
    346c:	14000070 	b	362c <stmmac_open+0x678>
    3470:	aa1503e0 	mov	x0, x21
    3474:	94000000 	bl	0 <phy_disconnect>
    3478:	12800255 	mov	w21, #0xffffffed            	// #-19
    347c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3480:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3484:	91000000 	add	x0, x0, #0x0
    3488:	91000021 	add	x1, x1, #0x0
    348c:	2a1503e2 	mov	w2, w21
    3490:	94000000 	bl	0 <printk>
    3494:	1400009b 	b	3700 <stmmac_open+0x74c>
    3498:	b340de8f 	bfxil	x15, x20, #0, #56
    349c:	f9400288 	ldr	x8, [x20]
    34a0:	b4000888 	cbz	x8, 35b0 <stmmac_open+0x5fc>
    34a4:	114022e3 	add	w3, w23, #0x8, lsl #12
    34a8:	52880001 	mov	w1, #0x4000                	// #16384
    34ac:	aa1503e0 	mov	x0, x21
    34b0:	aa1603e2 	mov	x2, x22
    34b4:	aa1f03e4 	mov	x4, xzr
    34b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    34bc:	f940011f 	ldr	xzr, [x8]
    34c0:	d63f0100 	blr	x8
    34c4:	f90033e0 	str	x0, [sp,#96]
    34c8:	f940033f 	ldr	xzr, [x25]
    34cc:	b340df2f 	bfxil	x15, x25, #0, #56
    34d0:	f9000320 	str	x0, [x25]
    34d4:	b50002c0 	cbnz	x0, 352c <stmmac_open+0x578>
    34d8:	14000039 	b	35bc <stmmac_open+0x608>
    34dc:	f940027f 	ldr	xzr, [x19]
    34e0:	b340de6f 	bfxil	x15, x19, #0, #56
    34e4:	f904e67f 	str	xzr, [x19,#2504]
    34e8:	14000070 	b	36a8 <stmmac_open+0x6f4>
    34ec:	b340de8f 	bfxil	x15, x20, #0, #56
    34f0:	f9400288 	ldr	x8, [x20]
    34f4:	b4000968 	cbz	x8, 3620 <stmmac_open+0x66c>
    34f8:	114022e3 	add	w3, w23, #0x8, lsl #12
    34fc:	52840001 	mov	w1, #0x2000                	// #8192
    3500:	aa1503e0 	mov	x0, x21
    3504:	aa1603e2 	mov	x2, x22
    3508:	aa1f03e4 	mov	x4, xzr
    350c:	b340dd0f 	bfxil	x15, x8, #0, #56
    3510:	f940011f 	ldr	xzr, [x8]
    3514:	d63f0100 	blr	x8
    3518:	f90033e0 	str	x0, [sp,#96]
    351c:	f940027f 	ldr	xzr, [x19]
    3520:	b340de6f 	bfxil	x15, x19, #0, #56
    3524:	f9048660 	str	x0, [x19,#2312]
    3528:	b4000820 	cbz	x0, 362c <stmmac_open+0x678>
    352c:	b340de6f 	bfxil	x15, x19, #0, #56
    3530:	f9459268 	ldr	x8, [x19,#2848]
    3534:	b340dd0f 	bfxil	x15, x8, #0, #56
    3538:	f9400d08 	ldr	x8, [x8,#24]
    353c:	b340dd0f 	bfxil	x15, x8, #0, #56
    3540:	f9400d08 	ldr	x8, [x8,#24]
    3544:	b4000128 	cbz	x8, 3568 <stmmac_open+0x5b4>
    3548:	b340de6f 	bfxil	x15, x19, #0, #56
    354c:	b9424a60 	ldr	w0, [x19,#584]
    3550:	b340dd0f 	bfxil	x15, x8, #0, #56
    3554:	f940011f 	ldr	xzr, [x8]
    3558:	d63f0100 	blr	x8
    355c:	53047c08 	lsr	w8, w0, #4
    3560:	710ff91f 	cmp	w8, #0x3fe
    3564:	54000ec8 	b.hi	373c <stmmac_open+0x788>
    3568:	b340de6f 	bfxil	x15, x19, #0, #56
    356c:	b9424a68 	ldr	w8, [x19,#584]
    3570:	7140091f 	cmp	w8, #0x2, lsl #12
    3574:	5400006b 	b.lt	3580 <stmmac_open+0x5cc>
    3578:	5287fe00 	mov	w0, #0x3ff0                	// #16368
    357c:	14000070 	b	373c <stmmac_open+0x788>
    3580:	713ffd1f 	cmp	w8, #0xfff
    3584:	540000ed 	b.le	35a0 <stmmac_open+0x5ec>
    3588:	52840000 	mov	w0, #0x2000                	// #8192
    358c:	1400006c 	b	373c <stmmac_open+0x788>
    3590:	f940027f 	ldr	xzr, [x19]
    3594:	b340de6f 	bfxil	x15, x19, #0, #56
    3598:	f904e27f 	str	xzr, [x19,#2496]
    359c:	14000043 	b	36a8 <stmmac_open+0x6f4>
    35a0:	711ffd1f 	cmp	w8, #0x7ff
    35a4:	54000c4d 	b.le	372c <stmmac_open+0x778>
    35a8:	52820000 	mov	w0, #0x1000                	// #4096
    35ac:	14000064 	b	373c <stmmac_open+0x788>
    35b0:	f940033f 	ldr	xzr, [x25]
    35b4:	b340df2f 	bfxil	x15, x25, #0, #56
    35b8:	f900033f 	str	xzr, [x25]
    35bc:	b340de6f 	bfxil	x15, x19, #0, #56
    35c0:	f9458e74 	ldr	x20, [x19,#2840]
    35c4:	b340de6f 	bfxil	x15, x19, #0, #56
    35c8:	f944e676 	ldr	x22, [x19,#2504]
    35cc:	b340de6f 	bfxil	x15, x19, #0, #56
    35d0:	f9450275 	ldr	x21, [x19,#2560]
    35d4:	b4000094 	cbz	x20, 35e4 <stmmac_open+0x630>
    35d8:	b340de8f 	bfxil	x15, x20, #0, #56
    35dc:	f9412697 	ldr	x23, [x20,#584]
    35e0:	b5000077 	cbnz	x23, 35ec <stmmac_open+0x638>
    35e4:	90000017 	adrp	x23, 0 <dummy_dma_ops>
    35e8:	910002f7 	add	x23, x23, #0x0
    35ec:	d53b4228 	mrs	x8, daif
    35f0:	37384868 	tbnz	w8, #7, 3efc <stmmac_open+0xf48>
    35f4:	52800041 	mov	w1, #0x2                   	// #2
    35f8:	aa1403e0 	mov	x0, x20
    35fc:	aa1603e2 	mov	x2, x22
    3600:	94000000 	bl	0 <dma_release_from_coherent>
    3604:	35000520 	cbnz	w0, 36a8 <stmmac_open+0x6f4>
    3608:	b4000516 	cbz	x22, 36a8 <stmmac_open+0x6f4>
    360c:	b340deef 	bfxil	x15, x23, #0, #56
    3610:	f94006e8 	ldr	x8, [x23,#8]
    3614:	b40004a8 	cbz	x8, 36a8 <stmmac_open+0x6f4>
    3618:	52880001 	mov	w1, #0x4000                	// #16384
    361c:	1400001c 	b	368c <stmmac_open+0x6d8>
    3620:	f940027f 	ldr	xzr, [x19]
    3624:	b340de6f 	bfxil	x15, x19, #0, #56
    3628:	f904867f 	str	xzr, [x19,#2312]
    362c:	b340de6f 	bfxil	x15, x19, #0, #56
    3630:	f9458e74 	ldr	x20, [x19,#2840]
    3634:	b340de6f 	bfxil	x15, x19, #0, #56
    3638:	f944e276 	ldr	x22, [x19,#2496]
    363c:	b340de6f 	bfxil	x15, x19, #0, #56
    3640:	f9450275 	ldr	x21, [x19,#2560]
    3644:	b4000094 	cbz	x20, 3654 <stmmac_open+0x6a0>
    3648:	b340de8f 	bfxil	x15, x20, #0, #56
    364c:	f9412697 	ldr	x23, [x20,#584]
    3650:	b5000077 	cbnz	x23, 365c <stmmac_open+0x6a8>
    3654:	90000017 	adrp	x23, 0 <dummy_dma_ops>
    3658:	910002f7 	add	x23, x23, #0x0
    365c:	d53b4228 	mrs	x8, daif
    3660:	37384528 	tbnz	w8, #7, 3f04 <stmmac_open+0xf50>
    3664:	52800021 	mov	w1, #0x1                   	// #1
    3668:	aa1403e0 	mov	x0, x20
    366c:	aa1603e2 	mov	x2, x22
    3670:	94000000 	bl	0 <dma_release_from_coherent>
    3674:	350001a0 	cbnz	w0, 36a8 <stmmac_open+0x6f4>
    3678:	b4000196 	cbz	x22, 36a8 <stmmac_open+0x6f4>
    367c:	b340deef 	bfxil	x15, x23, #0, #56
    3680:	f94006e8 	ldr	x8, [x23,#8]
    3684:	b4000128 	cbz	x8, 36a8 <stmmac_open+0x6f4>
    3688:	52840001 	mov	w1, #0x2000                	// #8192
    368c:	aa1403e0 	mov	x0, x20
    3690:	aa1603e2 	mov	x2, x22
    3694:	aa1503e3 	mov	x3, x21
    3698:	aa1f03e4 	mov	x4, xzr
    369c:	b340dd0f 	bfxil	x15, x8, #0, #56
    36a0:	f940011f 	ldr	xzr, [x8]
    36a4:	d63f0100 	blr	x8
    36a8:	b340de6f 	bfxil	x15, x19, #0, #56
    36ac:	f9448a60 	ldr	x0, [x19,#2320]
    36b0:	94000000 	bl	0 <kfree>
    36b4:	b340de6f 	bfxil	x15, x19, #0, #56
    36b8:	f9449a60 	ldr	x0, [x19,#2352]
    36bc:	94000000 	bl	0 <kfree>
    36c0:	b340de6f 	bfxil	x15, x19, #0, #56
    36c4:	f944ea60 	ldr	x0, [x19,#2512]
    36c8:	94000000 	bl	0 <kfree>
    36cc:	b340de6f 	bfxil	x15, x19, #0, #56
    36d0:	f944fe60 	ldr	x0, [x19,#2552]
    36d4:	94000000 	bl	0 <kfree>
    36d8:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    36dc:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    36e0:	91000000 	add	x0, x0, #0x0
    36e4:	91000021 	add	x1, x1, #0x0
    36e8:	94000000 	bl	0 <printk>
    36ec:	12800175 	mov	w21, #0xfffffff4            	// #-12
    36f0:	b340de6f 	bfxil	x15, x19, #0, #56
    36f4:	f945a260 	ldr	x0, [x19,#2880]
    36f8:	b4000040 	cbz	x0, 3700 <stmmac_open+0x74c>
    36fc:	94000000 	bl	0 <phy_disconnect>
    3700:	2a1503e0 	mov	w0, w21
    3704:	a94f7bfd 	ldp	x29, x30, [sp,#240]
    3708:	a94e4ff4 	ldp	x20, x19, [sp,#224]
    370c:	a94d57f6 	ldp	x22, x21, [sp,#208]
    3710:	a94c5ff8 	ldp	x24, x23, [sp,#192]
    3714:	a94b67fa 	ldp	x26, x25, [sp,#176]
    3718:	a94a6ffc 	ldp	x28, x27, [sp,#160]
    371c:	910403ff 	add	sp, sp, #0x100
    3720:	b340dfcf 	bfxil	x15, x30, #0, #56
    3724:	f94003df 	ldr	xzr, [x30]
    3728:	d65f03c0 	ret
    372c:	7118011f 	cmp	w8, #0x600
    3730:	5280c008 	mov	w8, #0x600                 	// #1536
    3734:	52810009 	mov	w9, #0x800                 	// #2048
    3738:	1a88c120 	csel	w0, w9, w8, gt
    373c:	90000014 	adrp	x20, 0 <dummy_dma_ops>
    3740:	d2dff7f5 	mov	x21, #0xffbf00000000        	// #281195803836416
    3744:	f9000bf9 	str	x25, [sp,#16]
    3748:	aa1f03fc 	mov	x28, xzr
    374c:	aa1f03fb 	mov	x27, xzr
    3750:	91272279 	add	x25, x19, #0x9c8
    3754:	91270268 	add	x8, x19, #0x9c0
    3758:	91000294 	add	x20, x20, #0x0
    375c:	f2fffff5 	movk	x21, #0xffff, lsl #48
    3760:	5287fe1a 	mov	w26, #0x3ff0                	// #16368
    3764:	b9000fe0 	str	w0, [sp,#12]
    3768:	f940027f 	ldr	xzr, [x19]
    376c:	b340de6f 	bfxil	x15, x19, #0, #56
    3770:	b909e260 	str	w0, [x19,#2528]
    3774:	f9000fe8 	str	x8, [sp,#24]
    3778:	b340de6f 	bfxil	x15, x19, #0, #56
    377c:	b951b668 	ldr	w8, [x19,#4532]
    3780:	35000128 	cbnz	w8, 37a4 <stmmac_open+0x7f0>
    3784:	1400000c 	b	37b4 <stmmac_open+0x800>
    3788:	9100077b 	add	x27, x27, #0x1
    378c:	f108037f 	cmp	x27, #0x200
    3790:	9100439c 	add	x28, x28, #0x10
    3794:	54001780 	b.eq	3a84 <stmmac_open+0xad0>
    3798:	b340de6f 	bfxil	x15, x19, #0, #56
    379c:	b951b668 	ldr	w8, [x19,#4532]
    37a0:	340000a8 	cbz	w8, 37b4 <stmmac_open+0x800>
    37a4:	b340df2f 	bfxil	x15, x25, #0, #56
    37a8:	f9400328 	ldr	x8, [x25]
    37ac:	8b1b1516 	add	x22, x8, x27, lsl #5
    37b0:	14000005 	b	37c4 <stmmac_open+0x810>
    37b4:	f9400fe8 	ldr	x8, [sp,#24]
    37b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    37bc:	f9400108 	ldr	x8, [x8]
    37c0:	8b1c0116 	add	x22, x8, x28
    37c4:	b340de6f 	bfxil	x15, x19, #0, #56
    37c8:	b949e268 	ldr	w8, [x19,#2528]
    37cc:	b340de6f 	bfxil	x15, x19, #0, #56
    37d0:	f9458a60 	ldr	x0, [x19,#2832]
    37d4:	52801802 	mov	w2, #0xc0                  	// #192
    37d8:	72a04802 	movk	w2, #0x240, lsl #16
    37dc:	11000901 	add	w1, w8, #0x2
    37e0:	94000000 	bl	0 <__netdev_alloc_skb>
    37e4:	b4000c40 	cbz	x0, 396c <stmmac_open+0x9b8>
    37e8:	b340dc0f 	bfxil	x15, x0, #0, #56
    37ec:	f940c808 	ldr	x8, [x0,#400]
    37f0:	b340dc0f 	bfxil	x15, x0, #0, #56
    37f4:	b9416009 	ldr	w9, [x0,#352]
    37f8:	aa0003f7 	mov	x23, x0
    37fc:	91000908 	add	x8, x8, #0x2
    3800:	11000929 	add	w9, w9, #0x2
    3804:	f940001f 	ldr	xzr, [x0]
    3808:	b340dc0f 	bfxil	x15, x0, #0, #56
    380c:	f900c808 	str	x8, [x0,#400]
    3810:	f940001f 	ldr	xzr, [x0]
    3814:	b340dc0f 	bfxil	x15, x0, #0, #56
    3818:	b9016009 	str	w9, [x0,#352]
    381c:	b340de6f 	bfxil	x15, x19, #0, #56
    3820:	f944ea68 	ldr	x8, [x19,#2512]
    3824:	f83b7900 	str	x0, [x8,x27,lsl #3]
    3828:	b340de6f 	bfxil	x15, x19, #0, #56
    382c:	f9458e60 	ldr	x0, [x19,#2840]
    3830:	b340deef 	bfxil	x15, x23, #0, #56
    3834:	f940cae8 	ldr	x8, [x23,#400]
    3838:	b949e263 	ldr	w3, [x19,#2528]
    383c:	b4000080 	cbz	x0, 384c <stmmac_open+0x898>
    3840:	b340dc0f 	bfxil	x15, x0, #0, #56
    3844:	f9412409 	ldr	x9, [x0,#584]
    3848:	b5000049 	cbnz	x9, 3850 <stmmac_open+0x89c>
    384c:	aa1403e9 	mov	x9, x20
    3850:	b340dd2f 	bfxil	x15, x9, #0, #56
    3854:	f9401129 	ldr	x9, [x9,#32]
    3858:	d346fd0a 	lsr	x10, x8, #6
    385c:	927a654a 	and	x10, x10, #0xffffffc0
    3860:	aa150141 	orr	x1, x10, x21
    3864:	92402d02 	and	x2, x8, #0xfff
    3868:	52800044 	mov	w4, #0x2                   	// #2
    386c:	aa1f03e5 	mov	x5, xzr
    3870:	b340dd2f 	bfxil	x15, x9, #0, #56
    3874:	f940013f 	ldr	xzr, [x9]
    3878:	d63f0120 	blr	x9
    387c:	b340de6f 	bfxil	x15, x19, #0, #56
    3880:	f944fe68 	ldr	x8, [x19,#2552]
    3884:	d37df369 	lsl	x9, x27, #3
    3888:	f8296900 	str	x0, [x8,x9]
    388c:	b340de6f 	bfxil	x15, x19, #0, #56
    3890:	f944fe68 	ldr	x8, [x19,#2552]
    3894:	b340de6f 	bfxil	x15, x19, #0, #56
    3898:	f9458e60 	ldr	x0, [x19,#2840]
    389c:	f8696901 	ldr	x1, [x8,x9]
    38a0:	b4000260 	cbz	x0, 38ec <stmmac_open+0x938>
    38a4:	b340dc0f 	bfxil	x15, x0, #0, #56
    38a8:	f9412408 	ldr	x8, [x0,#584]
    38ac:	b4000208 	cbz	x8, 38ec <stmmac_open+0x938>
    38b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    38b4:	f9403908 	ldr	x8, [x8,#112]
    38b8:	b4000228 	cbz	x8, 38fc <stmmac_open+0x948>
    38bc:	b4000080 	cbz	x0, 38cc <stmmac_open+0x918>
    38c0:	b340dc0f 	bfxil	x15, x0, #0, #56
    38c4:	f9412408 	ldr	x8, [x0,#584]
    38c8:	b5000048 	cbnz	x8, 38d0 <stmmac_open+0x91c>
    38cc:	aa1403e8 	mov	x8, x20
    38d0:	b340dd0f 	bfxil	x15, x8, #0, #56
    38d4:	f9403908 	ldr	x8, [x8,#112]
    38d8:	b340dd0f 	bfxil	x15, x8, #0, #56
    38dc:	f940011f 	ldr	xzr, [x8]
    38e0:	d63f0100 	blr	x8
    38e4:	34000120 	cbz	w0, 3908 <stmmac_open+0x954>
    38e8:	1400002a 	b	3990 <stmmac_open+0x9dc>
    38ec:	aa1403e8 	mov	x8, x20
    38f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    38f4:	f9403908 	ldr	x8, [x8,#112]
    38f8:	b5fffe28 	cbnz	x8, 38bc <stmmac_open+0x908>
    38fc:	b100043f 	cmn	x1, #0x1
    3900:	1a9f17e0 	cset	w0, eq
    3904:	35000460 	cbnz	w0, 3990 <stmmac_open+0x9dc>
    3908:	b340de6f 	bfxil	x15, x19, #0, #56
    390c:	f944fe68 	ldr	x8, [x19,#2552]
    3910:	b340de6f 	bfxil	x15, x19, #0, #56
    3914:	b9512669 	ldr	w9, [x19,#4388]
    3918:	f87b7908 	ldr	x8, [x8,x27,lsl #3]
    391c:	7101013f 	cmp	w9, #0x40
    3920:	1a9fa7e9 	cset	w9, lt
    3924:	d37df129 	lsl	x9, x9, #3
    3928:	b8296ac8 	str	w8, [x22,x9]
    392c:	b340de6f 	bfxil	x15, x19, #0, #56
    3930:	f9459268 	ldr	x8, [x19,#2848]
    3934:	b340dd0f 	bfxil	x15, x8, #0, #56
    3938:	f9400d08 	ldr	x8, [x8,#24]
    393c:	b340dd0f 	bfxil	x15, x8, #0, #56
    3940:	f9401108 	ldr	x8, [x8,#32]
    3944:	b4fff228 	cbz	x8, 3788 <stmmac_open+0x7d4>
    3948:	b340de6f 	bfxil	x15, x19, #0, #56
    394c:	b949e269 	ldr	w9, [x19,#2528]
    3950:	6b1a013f 	cmp	w9, w26
    3954:	54fff1a1 	b.ne	3788 <stmmac_open+0x7d4>
    3958:	aa1603e0 	mov	x0, x22
    395c:	b340dd0f 	bfxil	x15, x8, #0, #56
    3960:	f940011f 	ldr	xzr, [x8]
    3964:	d63f0100 	blr	x8
    3968:	17ffff88 	b	3788 <stmmac_open+0x7d4>
    396c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3970:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3974:	91000000 	add	x0, x0, #0x0
    3978:	91000021 	add	x1, x1, #0x0
    397c:	94000000 	bl	0 <printk>
    3980:	12800175 	mov	w21, #0xfffffff4            	// #-12
    3984:	f9400bf7 	ldr	x23, [sp,#16]
    3988:	350001bb 	cbnz	w27, 39bc <stmmac_open+0xa08>
    398c:	14000033 	b	3a58 <stmmac_open+0xaa4>
    3990:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3994:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3998:	91000000 	add	x0, x0, #0x0
    399c:	91000021 	add	x1, x1, #0x0
    39a0:	94000000 	bl	0 <printk>
    39a4:	52800021 	mov	w1, #0x1                   	// #1
    39a8:	aa1703e0 	mov	x0, x23
    39ac:	94000000 	bl	0 <__dev_kfree_skb_any>
    39b0:	128002b5 	mov	w21, #0xffffffea            	// #-22
    39b4:	f9400bf7 	ldr	x23, [sp,#16]
    39b8:	3400051b 	cbz	w27, 3a58 <stmmac_open+0xaa4>
    39bc:	90000016 	adrp	x22, 0 <dummy_dma_ops>
    39c0:	d1000774 	sub	x20, x27, #0x1
    39c4:	910002d6 	add	x22, x22, #0x0
    39c8:	14000008 	b	39e8 <stmmac_open+0xa34>
    39cc:	52800021 	mov	w1, #0x1                   	// #1
    39d0:	94000000 	bl	0 <__dev_kfree_skb_any>
    39d4:	b340de6f 	bfxil	x15, x19, #0, #56
    39d8:	f944ea68 	ldr	x8, [x19,#2512]
    39dc:	f834791f 	str	xzr, [x8,x20,lsl #3]
    39e0:	d1000694 	sub	x20, x20, #0x1
    39e4:	37f803b4 	tbnz	w20, #31, 3a58 <stmmac_open+0xaa4>
    39e8:	b340de6f 	bfxil	x15, x19, #0, #56
    39ec:	f944ea68 	ldr	x8, [x19,#2512]
    39f0:	f8747900 	ldr	x0, [x8,x20,lsl #3]
    39f4:	b4ffff40 	cbz	x0, 39dc <stmmac_open+0xa28>
    39f8:	b340de6f 	bfxil	x15, x19, #0, #56
    39fc:	f944fe69 	ldr	x9, [x19,#2552]
    3a00:	b340de6f 	bfxil	x15, x19, #0, #56
    3a04:	f9458e68 	ldr	x8, [x19,#2840]
    3a08:	b949e262 	ldr	w2, [x19,#2528]
    3a0c:	f8747921 	ldr	x1, [x9,x20,lsl #3]
    3a10:	b4000088 	cbz	x8, 3a20 <stmmac_open+0xa6c>
    3a14:	b340dd0f 	bfxil	x15, x8, #0, #56
    3a18:	f9412509 	ldr	x9, [x8,#584]
    3a1c:	b5000049 	cbnz	x9, 3a24 <stmmac_open+0xa70>
    3a20:	aa1603e9 	mov	x9, x22
    3a24:	b340dd2f 	bfxil	x15, x9, #0, #56
    3a28:	f9401529 	ldr	x9, [x9,#40]
    3a2c:	b4fffd09 	cbz	x9, 39cc <stmmac_open+0xa18>
    3a30:	52800043 	mov	w3, #0x2                   	// #2
    3a34:	aa0803e0 	mov	x0, x8
    3a38:	aa1f03e4 	mov	x4, xzr
    3a3c:	b340dd2f 	bfxil	x15, x9, #0, #56
    3a40:	f940013f 	ldr	xzr, [x9]
    3a44:	d63f0120 	blr	x9
    3a48:	b340de6f 	bfxil	x15, x19, #0, #56
    3a4c:	f944ea68 	ldr	x8, [x19,#2512]
    3a50:	f8747900 	ldr	x0, [x8,x20,lsl #3]
    3a54:	17ffffde 	b	39cc <stmmac_open+0xa18>
    3a58:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3a5c:	91000000 	add	x0, x0, #0x0
    3a60:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3a64:	91000021 	add	x1, x1, #0x0
    3a68:	94000000 	bl	0 <printk>
    3a6c:	aa1703e0 	mov	x0, x23
    3a70:	94000154 	bl	3fc0 <free_dma_desc_resources>
    3a74:	b340de6f 	bfxil	x15, x19, #0, #56
    3a78:	f945a260 	ldr	x0, [x19,#2880]
    3a7c:	b5ffe400 	cbnz	x0, 36fc <stmmac_open+0x748>
    3a80:	17ffff20 	b	3700 <stmmac_open+0x74c>
    3a84:	51080368 	sub	w8, w27, #0x200
    3a88:	b909de68 	str	w8, [x19,#2524]
    3a8c:	b9400fe8 	ldr	w8, [sp,#12]
    3a90:	f940027f 	ldr	xzr, [x19]
    3a94:	b340de6f 	bfxil	x15, x19, #0, #56
    3a98:	b909da7f 	str	wzr, [x19,#2520]
    3a9c:	f9400bf7 	ldr	x23, [sp,#16]
    3aa0:	f940031f 	ldr	xzr, [x24]
    3aa4:	b340df0f 	bfxil	x15, x24, #0, #56
    3aa8:	b9000308 	str	w8, [x24]
    3aac:	b340de6f 	bfxil	x15, x19, #0, #56
    3ab0:	b951b268 	ldr	w8, [x19,#4528]
    3ab4:	7100051f 	cmp	w8, #0x1
    3ab8:	540006c1 	b.ne	3b90 <stmmac_open+0xbdc>
    3abc:	b340de6f 	bfxil	x15, x19, #0, #56
    3ac0:	f9459268 	ldr	x8, [x19,#2848]
    3ac4:	b340de6f 	bfxil	x15, x19, #0, #56
    3ac8:	b951b669 	ldr	w9, [x19,#4532]
    3acc:	b340dd0f 	bfxil	x15, x8, #0, #56
    3ad0:	f9400d08 	ldr	x8, [x8,#24]
    3ad4:	b340dd0f 	bfxil	x15, x8, #0, #56
    3ad8:	f9400108 	ldr	x8, [x8]
    3adc:	340002a9 	cbz	w9, 3b30 <stmmac_open+0xb7c>
    3ae0:	b340de6f 	bfxil	x15, x19, #0, #56
    3ae4:	f944e660 	ldr	x0, [x19,#2504]
    3ae8:	b340de6f 	bfxil	x15, x19, #0, #56
    3aec:	f9450261 	ldr	x1, [x19,#2560]
    3af0:	52804002 	mov	w2, #0x200                 	// #512
    3af4:	52800023 	mov	w3, #0x1                   	// #1
    3af8:	b340dd0f 	bfxil	x15, x8, #0, #56
    3afc:	f940011f 	ldr	xzr, [x8]
    3b00:	d63f0100 	blr	x8
    3b04:	b340de6f 	bfxil	x15, x19, #0, #56
    3b08:	f9459268 	ldr	x8, [x19,#2848]
    3b0c:	b340de6f 	bfxil	x15, x19, #0, #56
    3b10:	f9448260 	ldr	x0, [x19,#2304]
    3b14:	b340de6f 	bfxil	x15, x19, #0, #56
    3b18:	f9449e61 	ldr	x1, [x19,#2360]
    3b1c:	52804002 	mov	w2, #0x200                 	// #512
    3b20:	b340dd0f 	bfxil	x15, x8, #0, #56
    3b24:	f9400d08 	ldr	x8, [x8,#24]
    3b28:	52800023 	mov	w3, #0x1                   	// #1
    3b2c:	14000014 	b	3b7c <stmmac_open+0xbc8>
    3b30:	b340de6f 	bfxil	x15, x19, #0, #56
    3b34:	f944e260 	ldr	x0, [x19,#2496]
    3b38:	b340de6f 	bfxil	x15, x19, #0, #56
    3b3c:	f9450261 	ldr	x1, [x19,#2560]
    3b40:	52804002 	mov	w2, #0x200                 	// #512
    3b44:	2a1f03e3 	mov	w3, wzr
    3b48:	b340dd0f 	bfxil	x15, x8, #0, #56
    3b4c:	f940011f 	ldr	xzr, [x8]
    3b50:	d63f0100 	blr	x8
    3b54:	b340de6f 	bfxil	x15, x19, #0, #56
    3b58:	f9459268 	ldr	x8, [x19,#2848]
    3b5c:	b340de6f 	bfxil	x15, x19, #0, #56
    3b60:	f9448660 	ldr	x0, [x19,#2312]
    3b64:	b340de6f 	bfxil	x15, x19, #0, #56
    3b68:	f9449e61 	ldr	x1, [x19,#2360]
    3b6c:	52804002 	mov	w2, #0x200                 	// #512
    3b70:	b340dd0f 	bfxil	x15, x8, #0, #56
    3b74:	f9400d08 	ldr	x8, [x8,#24]
    3b78:	2a1f03e3 	mov	w3, wzr
    3b7c:	b340dd0f 	bfxil	x15, x8, #0, #56
    3b80:	f9400108 	ldr	x8, [x8]
    3b84:	b340dd0f 	bfxil	x15, x8, #0, #56
    3b88:	f940011f 	ldr	xzr, [x8]
    3b8c:	d63f0100 	blr	x8
    3b90:	aa1f03e8 	mov	x8, xzr
    3b94:	aa1f03e9 	mov	x9, xzr
    3b98:	aa1f03ea 	mov	x10, xzr
    3b9c:	aa1f03eb 	mov	x11, xzr
    3ba0:	91242274 	add	x20, x19, #0x908
    3ba4:	b340de6f 	bfxil	x15, x19, #0, #56
    3ba8:	b951b66c 	ldr	w12, [x19,#4532]
    3bac:	350004cc 	cbnz	w12, 3c44 <stmmac_open+0xc90>
    3bb0:	14000029 	b	3c54 <stmmac_open+0xca0>
    3bb4:	f940019f 	ldr	xzr, [x12]
    3bb8:	b340dd8f 	bfxil	x15, x12, #0, #56
    3bbc:	b900099f 	str	wzr, [x12,#8]
    3bc0:	b340de6f 	bfxil	x15, x19, #0, #56
    3bc4:	f9449a6c 	ldr	x12, [x19,#2352]
    3bc8:	9100414a 	add	x10, x10, #0x10
    3bcc:	9100056b 	add	x11, x11, #0x1
    3bd0:	f140095f 	cmp	x10, #0x2, lsl #12
    3bd4:	f828699f 	str	xzr, [x12,x8]
    3bd8:	b340de6f 	bfxil	x15, x19, #0, #56
    3bdc:	f9449a6c 	ldr	x12, [x19,#2352]
    3be0:	8b08018c 	add	x12, x12, x8
    3be4:	f940019f 	ldr	xzr, [x12]
    3be8:	b340dd8f 	bfxil	x15, x12, #0, #56
    3bec:	3900219f 	strb	wzr, [x12,#8]
    3bf0:	b340de6f 	bfxil	x15, x19, #0, #56
    3bf4:	f9449a6c 	ldr	x12, [x19,#2352]
    3bf8:	8b08018c 	add	x12, x12, x8
    3bfc:	f940019f 	ldr	xzr, [x12]
    3c00:	b340dd8f 	bfxil	x15, x12, #0, #56
    3c04:	b9000d9f 	str	wzr, [x12,#12]
    3c08:	b340de6f 	bfxil	x15, x19, #0, #56
    3c0c:	f9449a6c 	ldr	x12, [x19,#2352]
    3c10:	8b08018c 	add	x12, x12, x8
    3c14:	f940019f 	ldr	xzr, [x12]
    3c18:	b340dd8f 	bfxil	x15, x12, #0, #56
    3c1c:	3900419f 	strb	wzr, [x12,#16]
    3c20:	b340de6f 	bfxil	x15, x19, #0, #56
    3c24:	f9448a6c 	ldr	x12, [x19,#2320]
    3c28:	91006108 	add	x8, x8, #0x18
    3c2c:	f829699f 	str	xzr, [x12,x9]
    3c30:	91002129 	add	x9, x9, #0x8
    3c34:	540002c0 	b.eq	3c8c <stmmac_open+0xcd8>
    3c38:	b340de6f 	bfxil	x15, x19, #0, #56
    3c3c:	b951b66c 	ldr	w12, [x19,#4532]
    3c40:	340000ac 	cbz	w12, 3c54 <stmmac_open+0xca0>
    3c44:	b340deef 	bfxil	x15, x23, #0, #56
    3c48:	f94002ec 	ldr	x12, [x23]
    3c4c:	8b0b158c 	add	x12, x12, x11, lsl #5
    3c50:	14000004 	b	3c60 <stmmac_open+0xcac>
    3c54:	b340de8f 	bfxil	x15, x20, #0, #56
    3c58:	f940028c 	ldr	x12, [x20]
    3c5c:	8b0a018c 	add	x12, x12, x10
    3c60:	b340de6f 	bfxil	x15, x19, #0, #56
    3c64:	b951266d 	ldr	w13, [x19,#4388]
    3c68:	710101bf 	cmp	w13, #0x40
    3c6c:	54fffa4b 	b.lt	3bb4 <stmmac_open+0xc00>
    3c70:	f940019f 	ldr	xzr, [x12]
    3c74:	b340dd8f 	bfxil	x15, x12, #0, #56
    3c78:	f900019f 	str	xzr, [x12]
    3c7c:	f940019f 	ldr	xzr, [x12]
    3c80:	b340dd8f 	bfxil	x15, x12, #0, #56
    3c84:	b9000d9f 	str	wzr, [x12,#12]
    3c88:	17ffffcb 	b	3bb4 <stmmac_open+0xc00>
    3c8c:	b340de6f 	bfxil	x15, x19, #0, #56
    3c90:	f9458a68 	ldr	x8, [x19,#2832]
    3c94:	f940027f 	ldr	xzr, [x19]
    3c98:	b340de6f 	bfxil	x15, x19, #0, #56
    3c9c:	f9048e7f 	str	xzr, [x19,#2328]
    3ca0:	52800020 	mov	w0, #0x1                   	// #1
    3ca4:	b340dd0f 	bfxil	x15, x8, #0, #56
    3ca8:	f941e115 	ldr	x21, [x8,#960]
    3cac:	910242a1 	add	x1, x21, #0x90
    3cb0:	94000000 	bl	0 <clear_bit>
    3cb4:	910302a0 	add	x0, x21, #0xc0
    3cb8:	94000000 	bl	0 <dql_reset>
    3cbc:	aa1703e0 	mov	x0, x23
    3cc0:	97fff98c 	bl	22f0 <stmmac_clear_descriptors>
    3cc4:	52822528 	mov	w8, #0x1129                	// #4393
    3cc8:	38686a68 	ldrb	w8, [x19,x8]
    3ccc:	36280448 	tbz	w8, #5, 3d54 <stmmac_open+0xda0>
    3cd0:	b340de6f 	bfxil	x15, x19, #0, #56
    3cd4:	b951b668 	ldr	w8, [x19,#4532]
    3cd8:	b340de6f 	bfxil	x15, x19, #0, #56
    3cdc:	f9459269 	ldr	x9, [x19,#2848]
    3ce0:	52804001 	mov	w1, #0x200                 	// #512
    3ce4:	52800022 	mov	w2, #0x1                   	// #1
    3ce8:	7100011f 	cmp	w8, #0x0
    3cec:	b340dd2f 	bfxil	x15, x9, #0, #56
    3cf0:	f9400528 	ldr	x8, [x9,#8]
    3cf4:	f9400fe9 	ldr	x9, [sp,#24]
    3cf8:	9a97028a 	csel	x10, x20, x23, eq
    3cfc:	b340dd4f 	bfxil	x15, x10, #0, #56
    3d00:	f9400155 	ldr	x21, [x10]
    3d04:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d08:	f9404d08 	ldr	x8, [x8,#152]
    3d0c:	9a990129 	csel	x9, x9, x25, eq
    3d10:	b340dd2f 	bfxil	x15, x9, #0, #56
    3d14:	f9400120 	ldr	x0, [x9]
    3d18:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d1c:	f940011f 	ldr	xzr, [x8]
    3d20:	d63f0100 	blr	x8
    3d24:	b340de6f 	bfxil	x15, x19, #0, #56
    3d28:	f9459268 	ldr	x8, [x19,#2848]
    3d2c:	52804001 	mov	w1, #0x200                 	// #512
    3d30:	aa1503e0 	mov	x0, x21
    3d34:	2a1f03e2 	mov	w2, wzr
    3d38:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d3c:	f9400508 	ldr	x8, [x8,#8]
    3d40:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d44:	f9404d08 	ldr	x8, [x8,#152]
    3d48:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d4c:	f940011f 	ldr	xzr, [x8]
    3d50:	d63f0100 	blr	x8
    3d54:	52800021 	mov	w1, #0x1                   	// #1
    3d58:	aa1303e0 	mov	x0, x19
    3d5c:	97fff9b1 	bl	2420 <stmmac_hw_setup>
    3d60:	37f80c60 	tbnz	w0, #31, 3eec <stmmac_open+0xf38>
    3d64:	d2800809 	mov	x9, #0x40                  	// #64
    3d68:	91254275 	add	x21, x19, #0x950
    3d6c:	91249268 	add	x8, x19, #0x924
    3d70:	f2d38809 	movk	x9, #0x9c40, lsl #32
    3d74:	aa1503e0 	mov	x0, x21
    3d78:	2a1f03e1 	mov	w1, wzr
    3d7c:	aa1f03e2 	mov	x2, xzr
    3d80:	aa1f03e3 	mov	x3, xzr
    3d84:	f940011f 	ldr	xzr, [x8]
    3d88:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d8c:	f9000109 	str	x9, [x8]
    3d90:	94000000 	bl	0 <init_timer_key>
    3d94:	90000008 	adrp	x8, 0 <jiffies>
    3d98:	b340dd0f 	bfxil	x15, x8, #0, #56
    3d9c:	f9400114 	ldr	x20, [x8]
    3da0:	b340de6f 	bfxil	x15, x19, #0, #56
    3da4:	b9492a60 	ldr	w0, [x19,#2344]
    3da8:	94000000 	bl	0 <__usecs_to_jiffies>
    3dac:	90000009 	adrp	x9, 0 <stmmac_disable_eee_mode>
    3db0:	8b140008 	add	x8, x0, x20
    3db4:	91000129 	add	x9, x9, #0x0
    3db8:	aa1503e0 	mov	x0, x21
    3dbc:	f940027f 	ldr	xzr, [x19]
    3dc0:	b340de6f 	bfxil	x15, x19, #0, #56
    3dc4:	f904ba77 	str	x23, [x19,#2416]
    3dc8:	f940027f 	ldr	xzr, [x19]
    3dcc:	b340de6f 	bfxil	x15, x19, #0, #56
    3dd0:	f904b268 	str	x8, [x19,#2400]
    3dd4:	f940027f 	ldr	xzr, [x19]
    3dd8:	b340de6f 	bfxil	x15, x19, #0, #56
    3ddc:	f904b669 	str	x9, [x19,#2408]
    3de0:	94000000 	bl	0 <add_timer>
    3de4:	b340de6f 	bfxil	x15, x19, #0, #56
    3de8:	f945a260 	ldr	x0, [x19,#2880]
    3dec:	b4000040 	cbz	x0, 3df4 <stmmac_open+0xe40>
    3df0:	94000000 	bl	0 <phy_start>
    3df4:	b340de6f 	bfxil	x15, x19, #0, #56
    3df8:	b9404260 	ldr	w0, [x19,#64]
    3dfc:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3e00:	91000021 	add	x1, x1, #0x0
    3e04:	52801003 	mov	w3, #0x80                  	// #128
    3e08:	aa1f03e2 	mov	x2, xzr
    3e0c:	aa1303e4 	mov	x4, x19
    3e10:	aa1303e5 	mov	x5, x19
    3e14:	94000000 	bl	0 <request_threaded_irq>
    3e18:	37f807a0 	tbnz	w0, #31, 3f0c <stmmac_open+0xf58>
    3e1c:	b340de6f 	bfxil	x15, x19, #0, #56
    3e20:	b9513260 	ldr	w0, [x19,#4400]
    3e24:	b340de6f 	bfxil	x15, x19, #0, #56
    3e28:	b9404268 	ldr	w8, [x19,#64]
    3e2c:	6b08001f 	cmp	w0, w8
    3e30:	54000120 	b.eq	3e54 <stmmac_open+0xea0>
    3e34:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3e38:	91000021 	add	x1, x1, #0x0
    3e3c:	52801003 	mov	w3, #0x80                  	// #128
    3e40:	aa1f03e2 	mov	x2, xzr
    3e44:	aa1303e4 	mov	x4, x19
    3e48:	aa1303e5 	mov	x5, x19
    3e4c:	94000000 	bl	0 <request_threaded_irq>
    3e50:	37f809a0 	tbnz	w0, #31, 3f84 <stmmac_open+0xfd0>
    3e54:	b340de6f 	bfxil	x15, x19, #0, #56
    3e58:	b951a260 	ldr	w0, [x19,#4512]
    3e5c:	7100041f 	cmp	w0, #0x1
    3e60:	5400012b 	b.lt	3e84 <stmmac_open+0xed0>
    3e64:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3e68:	91000021 	add	x1, x1, #0x0
    3e6c:	52801003 	mov	w3, #0x80                  	// #128
    3e70:	aa1f03e2 	mov	x2, xzr
    3e74:	aa1303e4 	mov	x4, x19
    3e78:	aa1303e5 	mov	x5, x19
    3e7c:	94000000 	bl	0 <request_threaded_irq>
    3e80:	37f805e0 	tbnz	w0, #31, 3f3c <stmmac_open+0xf88>
    3e84:	b340de6f 	bfxil	x15, x19, #0, #56
    3e88:	f9452a68 	ldr	x8, [x19,#2640]
    3e8c:	36000548 	tbz	w8, #0, 3f34 <stmmac_open+0xf80>
    3e90:	d5033bbf 	dmb	ish
    3e94:	91294274 	add	x20, x19, #0xa50
    3e98:	2a1f03e0 	mov	w0, wzr
    3e9c:	aa1403e1 	mov	x1, x20
    3ea0:	94000000 	bl	0 <clear_bit>
    3ea4:	52800040 	mov	w0, #0x2                   	// #2
    3ea8:	aa1403e1 	mov	x1, x20
    3eac:	94000000 	bl	0 <clear_bit>
    3eb0:	b340de6f 	bfxil	x15, x19, #0, #56
    3eb4:	f941e268 	ldr	x8, [x19,#960]
    3eb8:	2a1f03e0 	mov	w0, wzr
    3ebc:	91024101 	add	x1, x8, #0x90
    3ec0:	94000000 	bl	0 <clear_bit>
    3ec4:	90000008 	adrp	x8, 0 <stmmac_disable_eee_mode>
    3ec8:	b340dd0f 	bfxil	x15, x8, #0, #56
    3ecc:	f9400101 	ldr	x1, [x8]
    3ed0:	90000002 	adrp	x2, 0 <stmmac_disable_eee_mode>
    3ed4:	91000042 	add	x2, x2, #0x0
    3ed8:	52800100 	mov	w0, #0x8                   	// #8
    3edc:	52801f43 	mov	w3, #0xfa                  	// #250
    3ee0:	94000000 	bl	0 <queue_delayed_work_on>
    3ee4:	2a1f03f5 	mov	w21, wzr
    3ee8:	17fffe06 	b	3700 <stmmac_open+0x74c>
    3eec:	2a0003f5 	mov	w21, w0
    3ef0:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3ef4:	91000000 	add	x0, x0, #0x0
    3ef8:	17fffeda 	b	3a60 <stmmac_open+0xaac>
    3efc:	d4210000 	brk	#0x800
    3f00:	17fffdbd 	b	35f4 <stmmac_open+0x640>
    3f04:	d4210000 	brk	#0x800
    3f08:	17fffdd7 	b	3664 <stmmac_open+0x6b0>
    3f0c:	b340de6f 	bfxil	x15, x19, #0, #56
    3f10:	b9404262 	ldr	w2, [x19,#64]
    3f14:	2a0003f5 	mov	w21, w0
    3f18:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3f1c:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3f20:	91000000 	add	x0, x0, #0x0
    3f24:	91000021 	add	x1, x1, #0x0
    3f28:	2a1503e3 	mov	w3, w21
    3f2c:	94000000 	bl	0 <printk>
    3f30:	17fffecf 	b	3a6c <stmmac_open+0xab8>
    3f34:	d4210000 	brk	#0x800
    3f38:	14000000 	b	3f38 <stmmac_open+0xf84>
    3f3c:	b340de6f 	bfxil	x15, x19, #0, #56
    3f40:	b951a262 	ldr	w2, [x19,#4512]
    3f44:	2a0003f5 	mov	w21, w0
    3f48:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3f4c:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3f50:	91000000 	add	x0, x0, #0x0
    3f54:	91000021 	add	x1, x1, #0x0
    3f58:	2a1503e3 	mov	w3, w21
    3f5c:	94000000 	bl	0 <printk>
    3f60:	b340de6f 	bfxil	x15, x19, #0, #56
    3f64:	b9513260 	ldr	w0, [x19,#4400]
    3f68:	b340de6f 	bfxil	x15, x19, #0, #56
    3f6c:	b9404268 	ldr	w8, [x19,#64]
    3f70:	6b08001f 	cmp	w0, w8
    3f74:	540001a0 	b.eq	3fa8 <stmmac_open+0xff4>
    3f78:	aa1303e1 	mov	x1, x19
    3f7c:	94000000 	bl	0 <free_irq>
    3f80:	1400000a 	b	3fa8 <stmmac_open+0xff4>
    3f84:	b340de6f 	bfxil	x15, x19, #0, #56
    3f88:	b9513262 	ldr	w2, [x19,#4400]
    3f8c:	2a0003f5 	mov	w21, w0
    3f90:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    3f94:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    3f98:	91000000 	add	x0, x0, #0x0
    3f9c:	91000021 	add	x1, x1, #0x0
    3fa0:	2a1503e3 	mov	w3, w21
    3fa4:	94000000 	bl	0 <printk>
    3fa8:	b340de6f 	bfxil	x15, x19, #0, #56
    3fac:	b9404260 	ldr	w0, [x19,#64]
    3fb0:	aa1303e1 	mov	x1, x19
    3fb4:	94000000 	bl	0 <free_irq>
    3fb8:	f9400bf7 	ldr	x23, [sp,#16]
    3fbc:	17fffeac 	b	3a6c <stmmac_open+0xab8>

0000000000003fc0 <free_dma_desc_resources>:
    3fc0:	f81c0ff7 	str	x23, [sp,#-64]!
    3fc4:	a90157f6 	stp	x22, x21, [sp,#16]
    3fc8:	a9024ff4 	stp	x20, x19, [sp,#32]
    3fcc:	a9037bfd 	stp	x29, x30, [sp,#48]
    3fd0:	9100c3fd 	add	x29, sp, #0x30
    3fd4:	aa0003f3 	mov	x19, x0
    3fd8:	94000000 	bl	0 <_mcount>
    3fdc:	90000015 	adrp	x21, 0 <dummy_dma_ops>
    3fe0:	aa1f03f4 	mov	x20, xzr
    3fe4:	910002b5 	add	x21, x21, #0x0
    3fe8:	14000009 	b	400c <free_dma_desc_resources+0x4c>
    3fec:	52800021 	mov	w1, #0x1                   	// #1
    3ff0:	94000000 	bl	0 <__dev_kfree_skb_any>
    3ff4:	b340de6f 	bfxil	x15, x19, #0, #56
    3ff8:	f9406a68 	ldr	x8, [x19,#208]
    3ffc:	f834691f 	str	xzr, [x8,x20]
    4000:	91002294 	add	x20, x20, #0x8
    4004:	f140069f 	cmp	x20, #0x1, lsl #12
    4008:	540003a0 	b.eq	407c <free_dma_desc_resources+0xbc>
    400c:	b340de6f 	bfxil	x15, x19, #0, #56
    4010:	f9406a68 	ldr	x8, [x19,#208]
    4014:	f8746900 	ldr	x0, [x8,x20]
    4018:	b4ffff20 	cbz	x0, 3ffc <free_dma_desc_resources+0x3c>
    401c:	b340de6f 	bfxil	x15, x19, #0, #56
    4020:	f9407e69 	ldr	x9, [x19,#248]
    4024:	b340de6f 	bfxil	x15, x19, #0, #56
    4028:	f9410e68 	ldr	x8, [x19,#536]
    402c:	b940e262 	ldr	w2, [x19,#224]
    4030:	f8746921 	ldr	x1, [x9,x20]
    4034:	b4000088 	cbz	x8, 4044 <free_dma_desc_resources+0x84>
    4038:	b340dd0f 	bfxil	x15, x8, #0, #56
    403c:	f9412509 	ldr	x9, [x8,#584]
    4040:	b5000049 	cbnz	x9, 4048 <free_dma_desc_resources+0x88>
    4044:	aa1503e9 	mov	x9, x21
    4048:	b340dd2f 	bfxil	x15, x9, #0, #56
    404c:	f9401529 	ldr	x9, [x9,#40]
    4050:	b4fffce9 	cbz	x9, 3fec <free_dma_desc_resources+0x2c>
    4054:	52800043 	mov	w3, #0x2                   	// #2
    4058:	aa0803e0 	mov	x0, x8
    405c:	aa1f03e4 	mov	x4, xzr
    4060:	b340dd2f 	bfxil	x15, x9, #0, #56
    4064:	f940013f 	ldr	xzr, [x9]
    4068:	d63f0120 	blr	x9
    406c:	b340de6f 	bfxil	x15, x19, #0, #56
    4070:	f9406a68 	ldr	x8, [x19,#208]
    4074:	f8746900 	ldr	x0, [x8,x20]
    4078:	17ffffdd 	b	3fec <free_dma_desc_resources+0x2c>
    407c:	aa1303e0 	mov	x0, x19
    4080:	94000093 	bl	42cc <dma_free_tx_skbufs>
    4084:	b340de6f 	bfxil	x15, x19, #0, #56
    4088:	b948b668 	ldr	w8, [x19,#2228]
    408c:	b340de6f 	bfxil	x15, x19, #0, #56
    4090:	f9410e74 	ldr	x20, [x19,#536]
    4094:	340006e8 	cbz	w8, 4170 <free_dma_desc_resources+0x1b0>
    4098:	b340de6f 	bfxil	x15, x19, #0, #56
    409c:	f9400276 	ldr	x22, [x19]
    40a0:	b340de6f 	bfxil	x15, x19, #0, #56
    40a4:	f9401e75 	ldr	x21, [x19,#56]
    40a8:	b4000094 	cbz	x20, 40b8 <free_dma_desc_resources+0xf8>
    40ac:	b340de8f 	bfxil	x15, x20, #0, #56
    40b0:	f9412697 	ldr	x23, [x20,#584]
    40b4:	b5000077 	cbnz	x23, 40c0 <free_dma_desc_resources+0x100>
    40b8:	90000017 	adrp	x23, 0 <dummy_dma_ops>
    40bc:	910002f7 	add	x23, x23, #0x0
    40c0:	d53b4228 	mrs	x8, daif
    40c4:	37380f48 	tbnz	w8, #7, 42ac <free_dma_desc_resources+0x2ec>
    40c8:	52800041 	mov	w1, #0x2                   	// #2
    40cc:	aa1403e0 	mov	x0, x20
    40d0:	aa1603e2 	mov	x2, x22
    40d4:	94000000 	bl	0 <dma_release_from_coherent>
    40d8:	350001a0 	cbnz	w0, 410c <free_dma_desc_resources+0x14c>
    40dc:	b4000196 	cbz	x22, 410c <free_dma_desc_resources+0x14c>
    40e0:	b340deef 	bfxil	x15, x23, #0, #56
    40e4:	f94006e8 	ldr	x8, [x23,#8]
    40e8:	b4000128 	cbz	x8, 410c <free_dma_desc_resources+0x14c>
    40ec:	52880001 	mov	w1, #0x4000                	// #16384
    40f0:	aa1403e0 	mov	x0, x20
    40f4:	aa1603e2 	mov	x2, x22
    40f8:	aa1503e3 	mov	x3, x21
    40fc:	aa1f03e4 	mov	x4, xzr
    4100:	b340dd0f 	bfxil	x15, x8, #0, #56
    4104:	f940011f 	ldr	xzr, [x8]
    4108:	d63f0100 	blr	x8
    410c:	b340de6f 	bfxil	x15, x19, #0, #56
    4110:	f9410e74 	ldr	x20, [x19,#536]
    4114:	b340de6f 	bfxil	x15, x19, #0, #56
    4118:	f9406676 	ldr	x22, [x19,#200]
    411c:	b340de6f 	bfxil	x15, x19, #0, #56
    4120:	f9408275 	ldr	x21, [x19,#256]
    4124:	b4000094 	cbz	x20, 4134 <free_dma_desc_resources+0x174>
    4128:	b340de8f 	bfxil	x15, x20, #0, #56
    412c:	f9412697 	ldr	x23, [x20,#584]
    4130:	b5000077 	cbnz	x23, 413c <free_dma_desc_resources+0x17c>
    4134:	90000017 	adrp	x23, 0 <dummy_dma_ops>
    4138:	910002f7 	add	x23, x23, #0x0
    413c:	d53b4228 	mrs	x8, daif
    4140:	37380ba8 	tbnz	w8, #7, 42b4 <free_dma_desc_resources+0x2f4>
    4144:	52800041 	mov	w1, #0x2                   	// #2
    4148:	aa1403e0 	mov	x0, x20
    414c:	aa1603e2 	mov	x2, x22
    4150:	94000000 	bl	0 <dma_release_from_coherent>
    4154:	35000860 	cbnz	w0, 4260 <free_dma_desc_resources+0x2a0>
    4158:	b4000856 	cbz	x22, 4260 <free_dma_desc_resources+0x2a0>
    415c:	b340deef 	bfxil	x15, x23, #0, #56
    4160:	f94006e8 	ldr	x8, [x23,#8]
    4164:	b40007e8 	cbz	x8, 4260 <free_dma_desc_resources+0x2a0>
    4168:	52880001 	mov	w1, #0x4000                	// #16384
    416c:	14000036 	b	4244 <free_dma_desc_resources+0x284>
    4170:	b340de6f 	bfxil	x15, x19, #0, #56
    4174:	f9400676 	ldr	x22, [x19,#8]
    4178:	b340de6f 	bfxil	x15, x19, #0, #56
    417c:	f9401e75 	ldr	x21, [x19,#56]
    4180:	b4000094 	cbz	x20, 4190 <free_dma_desc_resources+0x1d0>
    4184:	b340de8f 	bfxil	x15, x20, #0, #56
    4188:	f9412697 	ldr	x23, [x20,#584]
    418c:	b5000077 	cbnz	x23, 4198 <free_dma_desc_resources+0x1d8>
    4190:	90000017 	adrp	x23, 0 <dummy_dma_ops>
    4194:	910002f7 	add	x23, x23, #0x0
    4198:	d53b4228 	mrs	x8, daif
    419c:	37380908 	tbnz	w8, #7, 42bc <free_dma_desc_resources+0x2fc>
    41a0:	52800021 	mov	w1, #0x1                   	// #1
    41a4:	aa1403e0 	mov	x0, x20
    41a8:	aa1603e2 	mov	x2, x22
    41ac:	94000000 	bl	0 <dma_release_from_coherent>
    41b0:	350001a0 	cbnz	w0, 41e4 <free_dma_desc_resources+0x224>
    41b4:	b4000196 	cbz	x22, 41e4 <free_dma_desc_resources+0x224>
    41b8:	b340deef 	bfxil	x15, x23, #0, #56
    41bc:	f94006e8 	ldr	x8, [x23,#8]
    41c0:	b4000128 	cbz	x8, 41e4 <free_dma_desc_resources+0x224>
    41c4:	52840001 	mov	w1, #0x2000                	// #8192
    41c8:	aa1403e0 	mov	x0, x20
    41cc:	aa1603e2 	mov	x2, x22
    41d0:	aa1503e3 	mov	x3, x21
    41d4:	aa1f03e4 	mov	x4, xzr
    41d8:	b340dd0f 	bfxil	x15, x8, #0, #56
    41dc:	f940011f 	ldr	xzr, [x8]
    41e0:	d63f0100 	blr	x8
    41e4:	b340de6f 	bfxil	x15, x19, #0, #56
    41e8:	f9410e74 	ldr	x20, [x19,#536]
    41ec:	b340de6f 	bfxil	x15, x19, #0, #56
    41f0:	f9406276 	ldr	x22, [x19,#192]
    41f4:	b340de6f 	bfxil	x15, x19, #0, #56
    41f8:	f9408275 	ldr	x21, [x19,#256]
    41fc:	b4000094 	cbz	x20, 420c <free_dma_desc_resources+0x24c>
    4200:	b340de8f 	bfxil	x15, x20, #0, #56
    4204:	f9412697 	ldr	x23, [x20,#584]
    4208:	b5000077 	cbnz	x23, 4214 <free_dma_desc_resources+0x254>
    420c:	90000017 	adrp	x23, 0 <dummy_dma_ops>
    4210:	910002f7 	add	x23, x23, #0x0
    4214:	d53b4228 	mrs	x8, daif
    4218:	37380568 	tbnz	w8, #7, 42c4 <free_dma_desc_resources+0x304>
    421c:	52800021 	mov	w1, #0x1                   	// #1
    4220:	aa1403e0 	mov	x0, x20
    4224:	aa1603e2 	mov	x2, x22
    4228:	94000000 	bl	0 <dma_release_from_coherent>
    422c:	350001a0 	cbnz	w0, 4260 <free_dma_desc_resources+0x2a0>
    4230:	b4000196 	cbz	x22, 4260 <free_dma_desc_resources+0x2a0>
    4234:	b340deef 	bfxil	x15, x23, #0, #56
    4238:	f94006e8 	ldr	x8, [x23,#8]
    423c:	b4000128 	cbz	x8, 4260 <free_dma_desc_resources+0x2a0>
    4240:	52840001 	mov	w1, #0x2000                	// #8192
    4244:	aa1403e0 	mov	x0, x20
    4248:	aa1603e2 	mov	x2, x22
    424c:	aa1503e3 	mov	x3, x21
    4250:	aa1f03e4 	mov	x4, xzr
    4254:	b340dd0f 	bfxil	x15, x8, #0, #56
    4258:	f940011f 	ldr	xzr, [x8]
    425c:	d63f0100 	blr	x8
    4260:	b340de6f 	bfxil	x15, x19, #0, #56
    4264:	f9407e60 	ldr	x0, [x19,#248]
    4268:	94000000 	bl	0 <kfree>
    426c:	b340de6f 	bfxil	x15, x19, #0, #56
    4270:	f9406a60 	ldr	x0, [x19,#208]
    4274:	94000000 	bl	0 <kfree>
    4278:	b340de6f 	bfxil	x15, x19, #0, #56
    427c:	f9401a60 	ldr	x0, [x19,#48]
    4280:	94000000 	bl	0 <kfree>
    4284:	b340de6f 	bfxil	x15, x19, #0, #56
    4288:	f9400a60 	ldr	x0, [x19,#16]
    428c:	94000000 	bl	0 <kfree>
    4290:	a9437bfd 	ldp	x29, x30, [sp,#48]
    4294:	a9424ff4 	ldp	x20, x19, [sp,#32]
    4298:	a94157f6 	ldp	x22, x21, [sp,#16]
    429c:	f84407f7 	ldr	x23, [sp],#64
    42a0:	b340dfcf 	bfxil	x15, x30, #0, #56
    42a4:	f94003df 	ldr	xzr, [x30]
    42a8:	d65f03c0 	ret
    42ac:	d4210000 	brk	#0x800
    42b0:	17ffff86 	b	40c8 <free_dma_desc_resources+0x108>
    42b4:	d4210000 	brk	#0x800
    42b8:	17ffffa3 	b	4144 <free_dma_desc_resources+0x184>
    42bc:	d4210000 	brk	#0x800
    42c0:	17ffffb8 	b	41a0 <free_dma_desc_resources+0x1e0>
    42c4:	d4210000 	brk	#0x800
    42c8:	17ffffd5 	b	421c <free_dma_desc_resources+0x25c>

00000000000042cc <dma_free_tx_skbufs>:
    42cc:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    42d0:	a9014ff4 	stp	x20, x19, [sp,#16]
    42d4:	a9027bfd 	stp	x29, x30, [sp,#32]
    42d8:	910083fd 	add	x29, sp, #0x20
    42dc:	aa0003f3 	mov	x19, x0
    42e0:	94000000 	bl	0 <_mcount>
    42e4:	90000016 	adrp	x22, 0 <dummy_dma_ops>
    42e8:	aa1f03f4 	mov	x20, xzr
    42ec:	aa1f03f5 	mov	x21, xzr
    42f0:	910002d6 	add	x22, x22, #0x0
    42f4:	14000005 	b	4308 <dma_free_tx_skbufs+0x3c>
    42f8:	91002294 	add	x20, x20, #0x8
    42fc:	f140069f 	cmp	x20, #0x1, lsl #12
    4300:	910062b5 	add	x21, x21, #0x18
    4304:	54000560 	b.eq	43b0 <dma_free_tx_skbufs+0xe4>
    4308:	b340de6f 	bfxil	x15, x19, #0, #56
    430c:	f9401a68 	ldr	x8, [x19,#48]
    4310:	f8756901 	ldr	x1, [x8,x21]
    4314:	b4000281 	cbz	x1, 4364 <dma_free_tx_skbufs+0x98>
    4318:	8b150108 	add	x8, x8, x21
    431c:	b340de6f 	bfxil	x15, x19, #0, #56
    4320:	f9410e60 	ldr	x0, [x19,#536]
    4324:	b9400d02 	ldr	w2, [x8,#12]
    4328:	b340dd0f 	bfxil	x15, x8, #0, #56
    432c:	39402109 	ldrb	w9, [x8,#8]
    4330:	b4000080 	cbz	x0, 4340 <dma_free_tx_skbufs+0x74>
    4334:	b340dc0f 	bfxil	x15, x0, #0, #56
    4338:	f9412408 	ldr	x8, [x0,#584]
    433c:	b5000048 	cbnz	x8, 4344 <dma_free_tx_skbufs+0x78>
    4340:	aa1603e8 	mov	x8, x22
    4344:	b340dd0f 	bfxil	x15, x8, #0, #56
    4348:	f9401508 	ldr	x8, [x8,#40]
    434c:	b40000c8 	cbz	x8, 4364 <dma_free_tx_skbufs+0x98>
    4350:	52800023 	mov	w3, #0x1                   	// #1
    4354:	aa1f03e4 	mov	x4, xzr
    4358:	b340dd0f 	bfxil	x15, x8, #0, #56
    435c:	f940011f 	ldr	xzr, [x8]
    4360:	d63f0100 	blr	x8
    4364:	b340de6f 	bfxil	x15, x19, #0, #56
    4368:	f9400a68 	ldr	x8, [x19,#16]
    436c:	f8746900 	ldr	x0, [x8,x20]
    4370:	b4fffc40 	cbz	x0, 42f8 <dma_free_tx_skbufs+0x2c>
    4374:	52800021 	mov	w1, #0x1                   	// #1
    4378:	94000000 	bl	0 <__dev_kfree_skb_any>
    437c:	b340de6f 	bfxil	x15, x19, #0, #56
    4380:	f9400a68 	ldr	x8, [x19,#16]
    4384:	f834691f 	str	xzr, [x8,x20]
    4388:	b340de6f 	bfxil	x15, x19, #0, #56
    438c:	f9401a68 	ldr	x8, [x19,#48]
    4390:	f835691f 	str	xzr, [x8,x21]
    4394:	b340de6f 	bfxil	x15, x19, #0, #56
    4398:	f9401a68 	ldr	x8, [x19,#48]
    439c:	8b150108 	add	x8, x8, x21
    43a0:	f940011f 	ldr	xzr, [x8]
    43a4:	b340dd0f 	bfxil	x15, x8, #0, #56
    43a8:	3900211f 	strb	wzr, [x8,#8]
    43ac:	17ffffd3 	b	42f8 <dma_free_tx_skbufs+0x2c>
    43b0:	a9427bfd 	ldp	x29, x30, [sp,#32]
    43b4:	a9414ff4 	ldp	x20, x19, [sp,#16]
    43b8:	a8c357f6 	ldp	x22, x21, [sp],#48
    43bc:	b340dfcf 	bfxil	x15, x30, #0, #56
    43c0:	f94003df 	ldr	xzr, [x30]
    43c4:	d65f03c0 	ret

00000000000043c8 <stmmac_interrupt>:
    43c8:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    43cc:	a9014ff4 	stp	x20, x19, [sp,#16]
    43d0:	a9027bfd 	stp	x29, x30, [sp,#32]
    43d4:	910083fd 	add	x29, sp, #0x20
    43d8:	aa0103f3 	mov	x19, x1
    43dc:	94000000 	bl	0 <_mcount>
    43e0:	b340de6f 	bfxil	x15, x19, #0, #56
    43e4:	b9524e68 	ldr	w8, [x19,#4684]
    43e8:	340000a8 	cbz	w8, 43fc <stmmac_interrupt+0x34>
    43ec:	b340de6f 	bfxil	x15, x19, #0, #56
    43f0:	f9458e60 	ldr	x0, [x19,#2840]
    43f4:	2a1f03e1 	mov	w1, wzr
    43f8:	94000000 	bl	0 <pm_wakeup_event>
    43fc:	b4000a73 	cbz	x19, 4548 <stmmac_interrupt+0x180>
    4400:	b340de6f 	bfxil	x15, x19, #0, #56
    4404:	f947c268 	ldr	x8, [x19,#3968]
    4408:	b340dd0f 	bfxil	x15, x8, #0, #56
    440c:	b9403509 	ldr	w9, [x8,#52]
    4410:	35000089 	cbnz	w9, 4420 <stmmac_interrupt+0x58>
    4414:	b340dd0f 	bfxil	x15, x8, #0, #56
    4418:	b940b108 	ldr	w8, [x8,#176]
    441c:	34000328 	cbz	w8, 4480 <stmmac_interrupt+0xb8>
    4420:	b340de6f 	bfxil	x15, x19, #0, #56
    4424:	f9459260 	ldr	x0, [x19,#2848]
    4428:	91300261 	add	x1, x19, #0xc00
    442c:	b340dc0f 	bfxil	x15, x0, #0, #56
    4430:	f9400008 	ldr	x8, [x0]
    4434:	b340dd0f 	bfxil	x15, x8, #0, #56
    4438:	f9400d08 	ldr	x8, [x8,#24]
    443c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4440:	f940011f 	ldr	xzr, [x8]
    4444:	d63f0100 	blr	x8
    4448:	35000e00 	cbnz	w0, 4608 <stmmac_interrupt+0x240>
    444c:	b340de6f 	bfxil	x15, x19, #0, #56
    4450:	f9459268 	ldr	x8, [x19,#2848]
    4454:	b340dd0f 	bfxil	x15, x8, #0, #56
    4458:	b9405908 	ldr	w8, [x8,#88]
    445c:	34000128 	cbz	w8, 4480 <stmmac_interrupt+0xb8>
    4460:	b340de6f 	bfxil	x15, x19, #0, #56
    4464:	f9474e68 	ldr	x8, [x19,#3736]
    4468:	b4000088 	cbz	x8, 4478 <stmmac_interrupt+0xb0>
    446c:	aa1303e0 	mov	x0, x19
    4470:	94000000 	bl	0 <netif_carrier_on>
    4474:	14000003 	b	4480 <stmmac_interrupt+0xb8>
    4478:	aa1303e0 	mov	x0, x19
    447c:	94000000 	bl	0 <netif_carrier_off>
    4480:	b340de6f 	bfxil	x15, x19, #0, #56
    4484:	f9459268 	ldr	x8, [x19,#2848]
    4488:	b340de6f 	bfxil	x15, x19, #0, #56
    448c:	f947c269 	ldr	x9, [x19,#3968]
    4490:	b340de6f 	bfxil	x15, x19, #0, #56
    4494:	f9458660 	ldr	x0, [x19,#2824]
    4498:	91300261 	add	x1, x19, #0xc00
    449c:	b340dd0f 	bfxil	x15, x8, #0, #56
    44a0:	f9400908 	ldr	x8, [x8,#16]
    44a4:	b340dd2f 	bfxil	x15, x9, #0, #56
    44a8:	b9406d34 	ldr	w20, [x9,#108]
    44ac:	b340dd0f 	bfxil	x15, x8, #0, #56
    44b0:	f9403508 	ldr	x8, [x8,#104]
    44b4:	b340dd0f 	bfxil	x15, x8, #0, #56
    44b8:	f940011f 	ldr	xzr, [x8]
    44bc:	d63f0100 	blr	x8
    44c0:	2a0003f5 	mov	w21, w0
    44c4:	721e041f 	tst	w0, #0xc
    44c8:	540002c0 	b.eq	4520 <stmmac_interrupt+0x158>
    44cc:	b340de6f 	bfxil	x15, x19, #0, #56
    44d0:	f9452a68 	ldr	x8, [x19,#2640]
    44d4:	37080268 	tbnz	w8, #1, 4520 <stmmac_interrupt+0x158>
    44d8:	91294261 	add	x1, x19, #0xa50
    44dc:	2a1f03e0 	mov	w0, wzr
    44e0:	94000000 	bl	0 <test_and_set_bit>
    44e4:	350001e0 	cbnz	w0, 4520 <stmmac_interrupt+0x158>
    44e8:	b340de6f 	bfxil	x15, x19, #0, #56
    44ec:	f9459268 	ldr	x8, [x19,#2848]
    44f0:	b340de6f 	bfxil	x15, x19, #0, #56
    44f4:	f9458660 	ldr	x0, [x19,#2824]
    44f8:	91290276 	add	x22, x19, #0xa40
    44fc:	b340dd0f 	bfxil	x15, x8, #0, #56
    4500:	f9400908 	ldr	x8, [x8,#16]
    4504:	b340dd0f 	bfxil	x15, x8, #0, #56
    4508:	f9402108 	ldr	x8, [x8,#64]
    450c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4510:	f940011f 	ldr	xzr, [x8]
    4514:	d63f0100 	blr	x8
    4518:	aa1603e0 	mov	x0, x22
    451c:	94000000 	bl	0 <__napi_schedule>
    4520:	37080235 	tbnz	w21, #1, 4564 <stmmac_interrupt+0x19c>
    4524:	710006bf 	cmp	w21, #0x1
    4528:	540006a0 	b.eq	45fc <stmmac_interrupt+0x234>
    452c:	52800020 	mov	w0, #0x1                   	// #1
    4530:	a9427bfd 	ldp	x29, x30, [sp,#32]
    4534:	a9414ff4 	ldp	x20, x19, [sp,#16]
    4538:	a8c357f6 	ldp	x22, x21, [sp],#48
    453c:	b340dfcf 	bfxil	x15, x30, #0, #56
    4540:	f94003df 	ldr	xzr, [x30]
    4544:	d65f03c0 	ret
    4548:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    454c:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    4550:	91000000 	add	x0, x0, #0x0
    4554:	91000021 	add	x1, x1, #0x0
    4558:	94000000 	bl	0 <printk>
    455c:	2a1f03e0 	mov	w0, wzr
    4560:	17fffff4 	b	4530 <stmmac_interrupt+0x168>
    4564:	b340de6f 	bfxil	x15, x19, #0, #56
    4568:	f9469668 	ldr	x8, [x19,#3368]
    456c:	52800020 	mov	w0, #0x1                   	// #1
    4570:	f100051f 	cmp	x8, #0x1
    4574:	54fffde0 	b.eq	4530 <stmmac_interrupt+0x168>
    4578:	90000015 	adrp	x21, 0 <stmmac_disable_eee_mode>
    457c:	b340deaf 	bfxil	x15, x21, #0, #56
    4580:	b94002a8 	ldr	w8, [x21]
    4584:	7104011f 	cmp	w8, #0x100
    4588:	54fffd4c 	b.gt	4530 <stmmac_interrupt+0x168>
    458c:	11010101 	add	w1, w8, #0x40
    4590:	f94002bf 	ldr	xzr, [x21]
    4594:	b340deaf 	bfxil	x15, x21, #0, #56
    4598:	b90002a1 	str	w1, [x21]
    459c:	b340de6f 	bfxil	x15, x19, #0, #56
    45a0:	f9459268 	ldr	x8, [x19,#2848]
    45a4:	b340de6f 	bfxil	x15, x19, #0, #56
    45a8:	f947c269 	ldr	x9, [x19,#3968]
    45ac:	b340de6f 	bfxil	x15, x19, #0, #56
    45b0:	f9458660 	ldr	x0, [x19,#2824]
    45b4:	2a1403e3 	mov	w3, w20
    45b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    45bc:	f9400908 	ldr	x8, [x8,#16]
    45c0:	b340dd2f 	bfxil	x15, x9, #0, #56
    45c4:	b9405129 	ldr	w9, [x9,#80]
    45c8:	b340dd0f 	bfxil	x15, x8, #0, #56
    45cc:	f9401108 	ldr	x8, [x8,#32]
    45d0:	7100013f 	cmp	w9, #0x0
    45d4:	1a9f1422 	csinc	w2, w1, wzr, ne
    45d8:	b340dd0f 	bfxil	x15, x8, #0, #56
    45dc:	f940011f 	ldr	xzr, [x8]
    45e0:	d63f0100 	blr	x8
    45e4:	b340deaf 	bfxil	x15, x21, #0, #56
    45e8:	b98002a8 	ldrsw	x8, [x21]
    45ec:	f940027f 	ldr	xzr, [x19]
    45f0:	b340de6f 	bfxil	x15, x19, #0, #56
    45f4:	f9069668 	str	x8, [x19,#3368]
    45f8:	17ffffcd 	b	452c <stmmac_interrupt+0x164>
    45fc:	91240260 	add	x0, x19, #0x900
    4600:	940000ee 	bl	49b8 <stmmac_tx_err>
    4604:	17ffffca 	b	452c <stmmac_interrupt+0x164>
    4608:	37000080 	tbnz	w0, #0, 4618 <stmmac_interrupt+0x250>
    460c:	37080100 	tbnz	w0, #1, 462c <stmmac_interrupt+0x264>
    4610:	3647f1e0 	tbz	w0, #8, 444c <stmmac_interrupt+0x84>
    4614:	1400000a 	b	463c <stmmac_interrupt+0x274>
    4618:	52800028 	mov	w8, #0x1                   	// #1
    461c:	f940027f 	ldr	xzr, [x19]
    4620:	b340de6f 	bfxil	x15, x19, #0, #56
    4624:	39253268 	strb	w8, [x19,#2380]
    4628:	360fff40 	tbz	w0, #1, 4610 <stmmac_interrupt+0x248>
    462c:	f940027f 	ldr	xzr, [x19]
    4630:	b340de6f 	bfxil	x15, x19, #0, #56
    4634:	3925327f 	strb	wzr, [x19,#2380]
    4638:	3647f0a0 	tbz	w0, #8, 444c <stmmac_interrupt+0x84>
    463c:	b340de6f 	bfxil	x15, x19, #0, #56
    4640:	f9459268 	ldr	x8, [x19,#2848]
    4644:	b340dd0f 	bfxil	x15, x8, #0, #56
    4648:	f9400908 	ldr	x8, [x8,#16]
    464c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4650:	f9404908 	ldr	x8, [x8,#144]
    4654:	b4ffefc8 	cbz	x8, 444c <stmmac_interrupt+0x84>
    4658:	b340de6f 	bfxil	x15, x19, #0, #56
    465c:	f9458660 	ldr	x0, [x19,#2824]
    4660:	b340de6f 	bfxil	x15, x19, #0, #56
    4664:	b9526a61 	ldr	w1, [x19,#4712]
    4668:	2a1f03e2 	mov	w2, wzr
    466c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4670:	f940011f 	ldr	xzr, [x8]
    4674:	d63f0100 	blr	x8
    4678:	17ffff75 	b	444c <stmmac_interrupt+0x84>

000000000000467c <stmmac_adjust_link>:
    467c:	a9bb67fa 	stp	x26, x25, [sp,#-80]!
    4680:	a9015ff8 	stp	x24, x23, [sp,#16]
    4684:	a90257f6 	stp	x22, x21, [sp,#32]
    4688:	a9034ff4 	stp	x20, x19, [sp,#48]
    468c:	a9047bfd 	stp	x29, x30, [sp,#64]
    4690:	910103fd 	add	x29, sp, #0x40
    4694:	aa0003f3 	mov	x19, x0
    4698:	94000000 	bl	0 <_mcount>
    469c:	b340de6f 	bfxil	x15, x19, #0, #56
    46a0:	f945a274 	ldr	x20, [x19,#2880]
    46a4:	b4001714 	cbz	x20, 4984 <stmmac_adjust_link+0x308>
    46a8:	b340de6f 	bfxil	x15, x19, #0, #56
    46ac:	b94b5677 	ldr	w23, [x19,#2900]
    46b0:	b340de6f 	bfxil	x15, x19, #0, #56
    46b4:	b94b5a78 	ldr	w24, [x19,#2904]
    46b8:	912ca275 	add	x21, x19, #0xb28
    46bc:	aa1503e0 	mov	x0, x21
    46c0:	94000000 	bl	0 <_raw_spin_lock_irqsave>
    46c4:	b340de8f 	bfxil	x15, x20, #0, #56
    46c8:	b9436688 	ldr	w8, [x20,#868]
    46cc:	aa0003f6 	mov	x22, x0
    46d0:	34000208 	cbz	w8, 4710 <stmmac_adjust_link+0x94>
    46d4:	b340de6f 	bfxil	x15, x19, #0, #56
    46d8:	f9458668 	ldr	x8, [x19,#2824]
    46dc:	b9400119 	ldr	w25, [x8]
    46e0:	d5033d9f 	dsb	ld
    46e4:	b340de8f 	bfxil	x15, x20, #0, #56
    46e8:	b9435a88 	ldr	w8, [x20,#856]
    46ec:	b340de6f 	bfxil	x15, x19, #0, #56
    46f0:	b94b5269 	ldr	w9, [x19,#2896]
    46f4:	6b09011f 	cmp	w8, w9
    46f8:	54000221 	b.ne	473c <stmmac_adjust_link+0xc0>
    46fc:	2a1f03fa 	mov	w26, wzr
    4700:	b340de8f 	bfxil	x15, x20, #0, #56
    4704:	b9435e88 	ldr	w8, [x20,#860]
    4708:	35000388 	cbnz	w8, 4778 <stmmac_adjust_link+0xfc>
    470c:	14000028 	b	47ac <stmmac_adjust_link+0x130>
    4710:	b340de6f 	bfxil	x15, x19, #0, #56
    4714:	b94b4a68 	ldr	w8, [x19,#2888]
    4718:	34001148 	cbz	w8, 4940 <stmmac_adjust_link+0x2c4>
    471c:	12800008 	mov	w8, #0xffffffff            	// #-1
    4720:	f940027f 	ldr	xzr, [x19]
    4724:	b340de6f 	bfxil	x15, x19, #0, #56
    4728:	f905a67f 	str	xzr, [x19,#2888]
    472c:	f940027f 	ldr	xzr, [x19]
    4730:	b340de6f 	bfxil	x15, x19, #0, #56
    4734:	b90b5268 	str	w8, [x19,#2896]
    4738:	1400007d 	b	492c <stmmac_adjust_link+0x2b0>
    473c:	b340de6f 	bfxil	x15, x19, #0, #56
    4740:	f9459269 	ldr	x9, [x19,#2848]
    4744:	7100011f 	cmp	w8, #0x0
    4748:	5280003a 	mov	w26, #0x1                   	// #1
    474c:	b340dd2f 	bfxil	x15, x9, #0, #56
    4750:	b9403529 	ldr	w9, [x9,#52]
    4754:	f940027f 	ldr	xzr, [x19]
    4758:	b340de6f 	bfxil	x15, x19, #0, #56
    475c:	b90b5268 	str	w8, [x19,#2896]
    4760:	2a190128 	orr	w8, w9, w25
    4764:	0a290329 	bic	w9, w25, w9
    4768:	1a880139 	csel	w25, w9, w8, eq
    476c:	b340de8f 	bfxil	x15, x20, #0, #56
    4770:	b9435e88 	ldr	w8, [x20,#860]
    4774:	340001c8 	cbz	w8, 47ac <stmmac_adjust_link+0x130>
    4778:	b340de6f 	bfxil	x15, x19, #0, #56
    477c:	f9459260 	ldr	x0, [x19,#2848]
    4780:	b340de8f 	bfxil	x15, x20, #0, #56
    4784:	b9435a81 	ldr	w1, [x20,#856]
    4788:	2a1703e2 	mov	w2, w23
    478c:	2a1803e3 	mov	w3, w24
    4790:	b340dc0f 	bfxil	x15, x0, #0, #56
    4794:	f9400008 	ldr	x8, [x0]
    4798:	b340dd0f 	bfxil	x15, x8, #0, #56
    479c:	f9401508 	ldr	x8, [x8,#40]
    47a0:	b340dd0f 	bfxil	x15, x8, #0, #56
    47a4:	f940011f 	ldr	xzr, [x8]
    47a8:	d63f0100 	blr	x8
    47ac:	b340de8f 	bfxil	x15, x20, #0, #56
    47b0:	b9435682 	ldr	w2, [x20,#852]
    47b4:	b340de6f 	bfxil	x15, x19, #0, #56
    47b8:	b94b4e68 	ldr	w8, [x19,#2892]
    47bc:	6b08005f 	cmp	w2, w8
    47c0:	540009c0 	b.eq	48f8 <stmmac_adjust_link+0x27c>
    47c4:	7100285f 	cmp	w2, #0xa
    47c8:	540002c0 	b.eq	4820 <stmmac_adjust_link+0x1a4>
    47cc:	7101905f 	cmp	w2, #0x64
    47d0:	54000280 	b.eq	4820 <stmmac_adjust_link+0x1a4>
    47d4:	710fa05f 	cmp	w2, #0x3e8
    47d8:	54000381 	b.ne	4848 <stmmac_adjust_link+0x1cc>
    47dc:	b340de6f 	bfxil	x15, x19, #0, #56
    47e0:	f947c268 	ldr	x8, [x19,#3968]
    47e4:	b340dd0f 	bfxil	x15, x8, #0, #56
    47e8:	b9403509 	ldr	w9, [x8,#52]
    47ec:	35000089 	cbnz	w9, 47fc <stmmac_adjust_link+0x180>
    47f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    47f4:	b940b109 	ldr	w9, [x8,#176]
    47f8:	340005c9 	cbz	w9, 48b0 <stmmac_adjust_link+0x234>
    47fc:	b340de6f 	bfxil	x15, x19, #0, #56
    4800:	f9459269 	ldr	x9, [x19,#2848]
    4804:	b340dd2f 	bfxil	x15, x9, #0, #56
    4808:	b9403129 	ldr	w9, [x9,#48]
    480c:	0a290339 	bic	w25, w25, w9
    4810:	b340dd0f 	bfxil	x15, x8, #0, #56
    4814:	f9403909 	ldr	x9, [x8,#112]
    4818:	b5000529 	cbnz	x9, 48bc <stmmac_adjust_link+0x240>
    481c:	14000031 	b	48e0 <stmmac_adjust_link+0x264>
    4820:	b340de6f 	bfxil	x15, x19, #0, #56
    4824:	f947c268 	ldr	x8, [x19,#3968]
    4828:	b340dd0f 	bfxil	x15, x8, #0, #56
    482c:	b9403509 	ldr	w9, [x8,#52]
    4830:	340001c9 	cbz	w9, 4868 <stmmac_adjust_link+0x1ec>
    4834:	b340de6f 	bfxil	x15, x19, #0, #56
    4838:	f9459269 	ldr	x9, [x19,#2848]
    483c:	b340dd2f 	bfxil	x15, x9, #0, #56
    4840:	b940312a 	ldr	w10, [x9,#48]
    4844:	14000010 	b	4884 <stmmac_adjust_link+0x208>
    4848:	52822508 	mov	w8, #0x1128                	// #4392
    484c:	38686a68 	ldrb	w8, [x19,x8]
    4850:	36100488 	tbz	w8, #2, 48e0 <stmmac_adjust_link+0x264>
    4854:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    4858:	91000000 	add	x0, x0, #0x0
    485c:	aa1303e1 	mov	x1, x19
    4860:	94000000 	bl	0 <printk>
    4864:	1400001f 	b	48e0 <stmmac_adjust_link+0x264>
    4868:	b340de6f 	bfxil	x15, x19, #0, #56
    486c:	f9459269 	ldr	x9, [x19,#2848]
    4870:	b340dd0f 	bfxil	x15, x8, #0, #56
    4874:	b940b10b 	ldr	w11, [x8,#176]
    4878:	b340dd2f 	bfxil	x15, x9, #0, #56
    487c:	b940312a 	ldr	w10, [x9,#48]
    4880:	3400092b 	cbz	w11, 49a4 <stmmac_adjust_link+0x328>
    4884:	b340dd2f 	bfxil	x15, x9, #0, #56
    4888:	b9403929 	ldr	w9, [x9,#56]
    488c:	7101905f 	cmp	w2, #0x64
    4890:	2a19014a 	orr	w10, w10, w25
    4894:	540000c1 	b.ne	48ac <stmmac_adjust_link+0x230>
    4898:	2a0a0139 	orr	w25, w9, w10
    489c:	b340dd0f 	bfxil	x15, x8, #0, #56
    48a0:	f9403909 	ldr	x9, [x8,#112]
    48a4:	b50000c9 	cbnz	x9, 48bc <stmmac_adjust_link+0x240>
    48a8:	1400000e 	b	48e0 <stmmac_adjust_link+0x264>
    48ac:	0a290159 	bic	w25, w10, w9
    48b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    48b4:	f9403909 	ldr	x9, [x8,#112]
    48b8:	b4000149 	cbz	x9, 48e0 <stmmac_adjust_link+0x264>
    48bc:	b340de6f 	bfxil	x15, x19, #0, #56
    48c0:	f945a26a 	ldr	x10, [x19,#2880]
    48c4:	b340dd0f 	bfxil	x15, x8, #0, #56
    48c8:	f9405100 	ldr	x0, [x8,#160]
    48cc:	b340dd4f 	bfxil	x15, x10, #0, #56
    48d0:	b9435541 	ldr	w1, [x10,#852]
    48d4:	b340dd2f 	bfxil	x15, x9, #0, #56
    48d8:	f940013f 	ldr	xzr, [x9]
    48dc:	d63f0120 	blr	x9
    48e0:	b340de8f 	bfxil	x15, x20, #0, #56
    48e4:	b9435688 	ldr	w8, [x20,#852]
    48e8:	5280003a 	mov	w26, #0x1                   	// #1
    48ec:	f940027f 	ldr	xzr, [x19]
    48f0:	b340de6f 	bfxil	x15, x19, #0, #56
    48f4:	b90b4e68 	str	w8, [x19,#2892]
    48f8:	d5033e9f 	dsb	st
    48fc:	b340de6f 	bfxil	x15, x19, #0, #56
    4900:	f9458668 	ldr	x8, [x19,#2824]
    4904:	b9000119 	str	w25, [x8]
    4908:	b340de6f 	bfxil	x15, x19, #0, #56
    490c:	b94b4a68 	ldr	w8, [x19,#2888]
    4910:	34000068 	cbz	w8, 491c <stmmac_adjust_link+0x2a0>
    4914:	350000da 	cbnz	w26, 492c <stmmac_adjust_link+0x2b0>
    4918:	1400000a 	b	4940 <stmmac_adjust_link+0x2c4>
    491c:	52800028 	mov	w8, #0x1                   	// #1
    4920:	f940027f 	ldr	xzr, [x19]
    4924:	b340de6f 	bfxil	x15, x19, #0, #56
    4928:	b90b4a68 	str	w8, [x19,#2888]
    492c:	52822508 	mov	w8, #0x1128                	// #4392
    4930:	38686a68 	ldrb	w8, [x19,x8]
    4934:	36100068 	tbz	w8, #2, 4940 <stmmac_adjust_link+0x2c4>
    4938:	aa1403e0 	mov	x0, x20
    493c:	94000000 	bl	0 <phy_print_status>
    4940:	aa1503e0 	mov	x0, x21
    4944:	aa1603e1 	mov	x1, x22
    4948:	94000000 	bl	0 <_raw_spin_unlock_irqrestore>
    494c:	b340de8f 	bfxil	x15, x20, #0, #56
    4950:	394d0a88 	ldrb	w8, [x20,#834]
    4954:	340000c8 	cbz	w8, 496c <stmmac_adjust_link+0x2f0>
    4958:	12800028 	mov	w8, #0xfffffffe            	// #-2
    495c:	f940029f 	ldr	xzr, [x20]
    4960:	b340de8f 	bfxil	x15, x20, #0, #56
    4964:	b9038688 	str	w8, [x20,#900]
    4968:	14000007 	b	4984 <stmmac_adjust_link+0x308>
    496c:	91240260 	add	x0, x19, #0x900
    4970:	97ffedbc 	bl	60 <stmmac_eee_init>
    4974:	12000008 	and	w8, w0, #0x1
    4978:	f940027f 	ldr	xzr, [x19]
    497c:	b340de6f 	bfxil	x15, x19, #0, #56
    4980:	b911a668 	str	w8, [x19,#4516]
    4984:	a9447bfd 	ldp	x29, x30, [sp,#64]
    4988:	a9434ff4 	ldp	x20, x19, [sp,#48]
    498c:	a94257f6 	ldp	x22, x21, [sp,#32]
    4990:	a9415ff8 	ldp	x24, x23, [sp,#16]
    4994:	a8c567fa 	ldp	x26, x25, [sp],#80
    4998:	b340dfcf 	bfxil	x15, x30, #0, #56
    499c:	f94003df 	ldr	xzr, [x30]
    49a0:	d65f03c0 	ret
    49a4:	0a2a0339 	bic	w25, w25, w10
    49a8:	b340dd0f 	bfxil	x15, x8, #0, #56
    49ac:	f9403909 	ldr	x9, [x8,#112]
    49b0:	b5fff869 	cbnz	x9, 48bc <stmmac_adjust_link+0x240>
    49b4:	17ffffcb 	b	48e0 <stmmac_adjust_link+0x264>

00000000000049b8 <stmmac_tx_err>:
    49b8:	f81d0ff5 	str	x21, [sp,#-48]!
    49bc:	a9014ff4 	stp	x20, x19, [sp,#16]
    49c0:	a9027bfd 	stp	x29, x30, [sp,#32]
    49c4:	910083fd 	add	x29, sp, #0x20
    49c8:	aa0003f3 	mov	x19, x0
    49cc:	94000000 	bl	0 <_mcount>
    49d0:	b340de6f 	bfxil	x15, x19, #0, #56
    49d4:	f9410a68 	ldr	x8, [x19,#528]
    49d8:	2a1f03e0 	mov	w0, wzr
    49dc:	b340dd0f 	bfxil	x15, x8, #0, #56
    49e0:	f941e108 	ldr	x8, [x8,#960]
    49e4:	91024101 	add	x1, x8, #0x90
    49e8:	94000000 	bl	0 <set_bit>
    49ec:	b340de6f 	bfxil	x15, x19, #0, #56
    49f0:	f9411268 	ldr	x8, [x19,#544]
    49f4:	b340de6f 	bfxil	x15, x19, #0, #56
    49f8:	f9410660 	ldr	x0, [x19,#520]
    49fc:	b340dd0f 	bfxil	x15, x8, #0, #56
    4a00:	f9400908 	ldr	x8, [x8,#16]
    4a04:	b340dd0f 	bfxil	x15, x8, #0, #56
    4a08:	f9402908 	ldr	x8, [x8,#80]
    4a0c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4a10:	f940011f 	ldr	xzr, [x8]
    4a14:	d63f0100 	blr	x8
    4a18:	aa1303e0 	mov	x0, x19
    4a1c:	97fffe2c 	bl	42cc <dma_free_tx_skbufs>
    4a20:	aa1f03f4 	mov	x20, xzr
    4a24:	9287fff5 	mov	x21, #0xffffffffffffc000    	// #-16384
    4a28:	1400000e 	b	4a60 <stmmac_tx_err+0xa8>
    4a2c:	b340de6f 	bfxil	x15, x19, #0, #56
    4a30:	f9400669 	ldr	x9, [x19,#8]
    4a34:	8b141120 	add	x0, x9, x20, lsl #4
    4a38:	b340de6f 	bfxil	x15, x19, #0, #56
    4a3c:	b948b261 	ldr	w1, [x19,#2224]
    4a40:	b10082bf 	cmn	x21, #0x20
    4a44:	1a9f17e2 	cset	w2, eq
    4a48:	b340dd0f 	bfxil	x15, x8, #0, #56
    4a4c:	f940011f 	ldr	xzr, [x8]
    4a50:	d63f0100 	blr	x8
    4a54:	b10082b5 	adds	x21, x21, #0x20
    4a58:	91000694 	add	x20, x20, #0x1
    4a5c:	540001e0 	b.eq	4a98 <stmmac_tx_err+0xe0>
    4a60:	b340de6f 	bfxil	x15, x19, #0, #56
    4a64:	f9411268 	ldr	x8, [x19,#544]
    4a68:	b340de6f 	bfxil	x15, x19, #0, #56
    4a6c:	b948b669 	ldr	w9, [x19,#2228]
    4a70:	b340dd0f 	bfxil	x15, x8, #0, #56
    4a74:	f9400508 	ldr	x8, [x8,#8]
    4a78:	b340dd0f 	bfxil	x15, x8, #0, #56
    4a7c:	f9400508 	ldr	x8, [x8,#8]
    4a80:	34fffd69 	cbz	w9, 4a2c <stmmac_tx_err+0x74>
    4a84:	b340de6f 	bfxil	x15, x19, #0, #56
    4a88:	f9400269 	ldr	x9, [x19]
    4a8c:	8b150129 	add	x9, x9, x21
    4a90:	91401120 	add	x0, x9, #0x4, lsl #12
    4a94:	17ffffe9 	b	4a38 <stmmac_tx_err+0x80>
    4a98:	b340de6f 	bfxil	x15, x19, #0, #56
    4a9c:	f9410a68 	ldr	x8, [x19,#528]
    4aa0:	f940027f 	ldr	xzr, [x19]
    4aa4:	b340de6f 	bfxil	x15, x19, #0, #56
    4aa8:	f9000e7f 	str	xzr, [x19,#24]
    4aac:	52800020 	mov	w0, #0x1                   	// #1
    4ab0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4ab4:	f941e114 	ldr	x20, [x8,#960]
    4ab8:	91024281 	add	x1, x20, #0x90
    4abc:	94000000 	bl	0 <clear_bit>
    4ac0:	91030280 	add	x0, x20, #0xc0
    4ac4:	94000000 	bl	0 <dql_reset>
    4ac8:	b340de6f 	bfxil	x15, x19, #0, #56
    4acc:	f9411268 	ldr	x8, [x19,#544]
    4ad0:	b340de6f 	bfxil	x15, x19, #0, #56
    4ad4:	f9410660 	ldr	x0, [x19,#520]
    4ad8:	b340dd0f 	bfxil	x15, x8, #0, #56
    4adc:	f9400908 	ldr	x8, [x8,#16]
    4ae0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4ae4:	f9402508 	ldr	x8, [x8,#72]
    4ae8:	b340dd0f 	bfxil	x15, x8, #0, #56
    4aec:	f940011f 	ldr	xzr, [x8]
    4af0:	d63f0100 	blr	x8
    4af4:	b340de6f 	bfxil	x15, x19, #0, #56
    4af8:	f9410a68 	ldr	x8, [x19,#528]
    4afc:	b340dd0f 	bfxil	x15, x8, #0, #56
    4b00:	f940ad09 	ldr	x9, [x8,#344]
    4b04:	91000529 	add	x9, x9, #0x1
    4b08:	f940011f 	ldr	xzr, [x8]
    4b0c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4b10:	f900ad09 	str	x9, [x8,#344]
    4b14:	b340de6f 	bfxil	x15, x19, #0, #56
    4b18:	f9410a68 	ldr	x8, [x19,#528]
    4b1c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4b20:	f941e100 	ldr	x0, [x8,#960]
    4b24:	94000000 	bl	0 <netif_tx_wake_queue>
    4b28:	a9427bfd 	ldp	x29, x30, [sp,#32]
    4b2c:	a9414ff4 	ldp	x20, x19, [sp,#16]
    4b30:	f84307f5 	ldr	x21, [sp],#48
    4b34:	b340dfcf 	bfxil	x15, x30, #0, #56
    4b38:	f94003df 	ldr	xzr, [x30]
    4b3c:	d65f03c0 	ret

0000000000004b40 <suspend_pm_notify>:
    4b40:	f81e0ff3 	str	x19, [sp,#-32]!
    4b44:	a9017bfd 	stp	x29, x30, [sp,#16]
    4b48:	910043fd 	add	x29, sp, #0x10
    4b4c:	aa0103f3 	mov	x19, x1
    4b50:	94000000 	bl	0 <_mcount>
    4b54:	f1000e7f 	cmp	x19, #0x3
    4b58:	54000161 	b.ne	4b84 <suspend_pm_notify+0x44>
    4b5c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    4b60:	91000000 	add	x0, x0, #0x0
    4b64:	94000000 	bl	0 <cancel_delayed_work_sync>
    4b68:	90000008 	adrp	x8, 0 <system_wq>
    4b6c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4b70:	f9400100 	ldr	x0, [x8]
    4b74:	94000000 	bl	0 <flush_workqueue>
    4b78:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    4b7c:	91000000 	add	x0, x0, #0x0
    4b80:	94000000 	bl	0 <printk>
    4b84:	a9417bfd 	ldp	x29, x30, [sp,#16]
    4b88:	2a1f03e0 	mov	w0, wzr
    4b8c:	f84207f3 	ldr	x19, [sp],#32
    4b90:	b340dfcf 	bfxil	x15, x30, #0, #56
    4b94:	f94003df 	ldr	xzr, [x30]
    4b98:	d65f03c0 	ret

0000000000004b9c <stmmac_xmit>:
    4b9c:	d102c3ff 	sub	sp, sp, #0xb0
    4ba0:	a9056ffc 	stp	x28, x27, [sp,#80]
    4ba4:	a90667fa 	stp	x26, x25, [sp,#96]
    4ba8:	a9075ff8 	stp	x24, x23, [sp,#112]
    4bac:	a90857f6 	stp	x22, x21, [sp,#128]
    4bb0:	a9094ff4 	stp	x20, x19, [sp,#144]
    4bb4:	a90a7bfd 	stp	x29, x30, [sp,#160]
    4bb8:	910283fd 	add	x29, sp, #0xa0
    4bbc:	aa0103f3 	mov	x19, x1
    4bc0:	aa0003fb 	mov	x27, x0
    4bc4:	94000000 	bl	0 <_mcount>
    4bc8:	b340df6f 	bfxil	x15, x27, #0, #56
    4bcc:	f940c368 	ldr	x8, [x27,#384]
    4bd0:	b9417369 	ldr	w9, [x27,#368]
    4bd4:	b340df6f 	bfxil	x15, x27, #0, #56
    4bd8:	b940a375 	ldr	w21, [x27,#160]
    4bdc:	b340df6f 	bfxil	x15, x27, #0, #56
    4be0:	b940b376 	ldr	w22, [x27,#176]
    4be4:	f90027fb 	str	x27, [sp,#72]
    4be8:	8b090109 	add	x9, x8, x9
    4bec:	b340dd2f 	bfxil	x15, x9, #0, #56
    4bf0:	7940052a 	ldrh	w10, [x9,#2]
    4bf4:	39400139 	ldrb	w25, [x9]
    4bf8:	f9001bf9 	str	x25, [sp,#48]
    4bfc:	3400076a 	cbz	w10, 4ce8 <stmmac_xmit+0x14c>
    4c00:	b340de6f 	bfxil	x15, x19, #0, #56
    4c04:	39666269 	ldrb	w9, [x19,#2456]
    4c08:	34000709 	cbz	w9, 4ce8 <stmmac_xmit+0x14c>
    4c0c:	7942b369 	ldrh	w9, [x27,#344]
    4c10:	8b090108 	add	x8, x8, x9
    4c14:	b340dd0f 	bfxil	x15, x8, #0, #56
    4c18:	39402508 	ldrb	w8, [x8,#9]
    4c1c:	7100191f 	cmp	w8, #0x6
    4c20:	54000641 	b.ne	4ce8 <stmmac_xmit+0x14c>
    4c24:	91252276 	add	x22, x19, #0x948
    4c28:	aa1603e0 	mov	x0, x22
    4c2c:	94000000 	bl	0 <_raw_spin_lock>
    4c30:	b340df6f 	bfxil	x15, x27, #0, #56
    4c34:	f940c368 	ldr	x8, [x27,#384]
    4c38:	7942af6a 	ldrh	w10, [x27,#342]
    4c3c:	b340df6f 	bfxil	x15, x27, #0, #56
    4c40:	b941936b 	ldr	w11, [x27,#400]
    4c44:	b340df6f 	bfxil	x15, x27, #0, #56
    4c48:	b940a369 	ldr	w9, [x27,#160]
    4c4c:	b9491a74 	ldr	w20, [x19,#2328]
    4c50:	8b0a010a 	add	x10, x8, x10
    4c54:	4b0b014b 	sub	w11, w10, w11
    4c58:	b340dd4f 	bfxil	x15, x10, #0, #56
    4c5c:	7940194a 	ldrh	w10, [x10,#12]
    4c60:	b340de6f 	bfxil	x15, x19, #0, #56
    4c64:	b9491e6c 	ldr	w12, [x19,#2332]
    4c68:	2a3403ed 	mvn	w13, w20
    4c6c:	53027d4a 	lsr	w10, w10, #2
    4c70:	121e0d4a 	and	w10, w10, #0x3c
    4c74:	0b0a016a 	add	w10, w11, w10
    4c78:	12001d57 	and	w23, w10, #0xff
    4c7c:	5280022b 	mov	w11, #0x11                  	// #17
    4c80:	4b17012a 	sub	w10, w9, w23
    4c84:	72a0008b 	movk	w11, #0x4, lsl #16
    4c88:	9bab7d4b 	umull	x11, w10, w11
    4c8c:	0b0d018d 	add	w13, w12, w13
    4c90:	6b14018c 	subs	w12, w12, w20
    4c94:	d360fd6b 	lsr	x11, x11, #32
    4c98:	1107fd8c 	add	w12, w12, #0x1ff
    4c9c:	4b0b014a 	sub	w10, w10, w11
    4ca0:	1a8c81ac 	csel	w12, w13, w12, hi
    4ca4:	0b4a056a 	add	w10, w11, w10, lsr #1
    4ca8:	6b4a359f 	cmp	w12, w10, lsr #13
    4cac:	54008b69 	b.ls	5e18 <stmmac_xmit+0x127c>
    4cb0:	b941736a 	ldr	w10, [x27,#368]
    4cb4:	b340df6f 	bfxil	x15, x27, #0, #56
    4cb8:	b940b36b 	ldr	w11, [x27,#176]
    4cbc:	8b0a0108 	add	x8, x8, x10
    4cc0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4cc4:	7940051a 	ldrh	w26, [x8,#2]
    4cc8:	b340de6f 	bfxil	x15, x19, #0, #56
    4ccc:	b9527268 	ldr	w8, [x19,#4720]
    4cd0:	4b0b0129 	sub	w9, w9, w11
    4cd4:	4b170138 	sub	w24, w9, w23
    4cd8:	6b1a011f 	cmp	w8, w26
    4cdc:	54001a41 	b.ne	5024 <stmmac_xmit+0x488>
    4ce0:	f90023ff 	str	xzr, [sp,#64]
    4ce4:	140000e8 	b	5084 <stmmac_xmit+0x4e8>
    4ce8:	91252274 	add	x20, x19, #0x948
    4cec:	aa1403e0 	mov	x0, x20
    4cf0:	94000000 	bl	0 <_raw_spin_lock>
    4cf4:	b9491a7a 	ldr	w26, [x19,#2328]
    4cf8:	b340de6f 	bfxil	x15, x19, #0, #56
    4cfc:	b9491e68 	ldr	w8, [x19,#2332]
    4d00:	2a3a03e9 	mvn	w9, w26
    4d04:	6b1a010a 	subs	w10, w8, w26
    4d08:	0b090108 	add	w8, w8, w9
    4d0c:	1107fd49 	add	w9, w10, #0x1ff
    4d10:	1a898108 	csel	w8, w8, w9, hi
    4d14:	6b19011f 	cmp	w8, w25
    4d18:	540058a9 	b.ls	582c <stmmac_xmit+0xc90>
    4d1c:	b340de6f 	bfxil	x15, x19, #0, #56
    4d20:	39653268 	ldrb	w8, [x19,#2380]
    4d24:	91240269 	add	x9, x19, #0x900
    4d28:	f90023e9 	str	x9, [sp,#64]
    4d2c:	b90027f5 	str	w21, [sp,#36]
    4d30:	b9001bf6 	str	w22, [sp,#24]
    4d34:	34000228 	cbz	w8, 4d78 <stmmac_xmit+0x1dc>
    4d38:	b340de6f 	bfxil	x15, x19, #0, #56
    4d3c:	f9459260 	ldr	x0, [x19,#2848]
    4d40:	b340dc0f 	bfxil	x15, x0, #0, #56
    4d44:	f9400008 	ldr	x8, [x0]
    4d48:	b340dd0f 	bfxil	x15, x8, #0, #56
    4d4c:	f9402908 	ldr	x8, [x8,#80]
    4d50:	b340dd0f 	bfxil	x15, x8, #0, #56
    4d54:	f940011f 	ldr	xzr, [x8]
    4d58:	d63f0100 	blr	x8
    4d5c:	52822b08 	mov	w8, #0x1158                	// #4440
    4d60:	8b080260 	add	x0, x19, x8
    4d64:	94000000 	bl	0 <del_timer_sync>
    4d68:	b9491a7a 	ldr	w26, [x19,#2328]
    4d6c:	f940027f 	ldr	xzr, [x19]
    4d70:	b340de6f 	bfxil	x15, x19, #0, #56
    4d74:	3925327f 	strb	wzr, [x19,#2380]
    4d78:	b340df6f 	bfxil	x15, x27, #0, #56
    4d7c:	7941f368 	ldrh	w8, [x27,#248]
    4d80:	b340de6f 	bfxil	x15, x19, #0, #56
    4d84:	b951b669 	ldr	w9, [x19,#4532]
    4d88:	12180508 	and	w8, w8, #0x300
    4d8c:	710c011f 	cmp	w8, #0x300
    4d90:	1a9f17f7 	cset	w23, eq
    4d94:	b9003be8 	str	w8, [sp,#56]
    4d98:	34005689 	cbz	w9, 5868 <stmmac_xmit+0xccc>
    4d9c:	f94023e8 	ldr	x8, [sp,#64]
    4da0:	93407f49 	sxtw	x9, w26
    4da4:	b340dd0f 	bfxil	x15, x8, #0, #56
    4da8:	f9400108 	ldr	x8, [x8]
    4dac:	8b091515 	add	x21, x8, x9, lsl #5
    4db0:	b340de6f 	bfxil	x15, x19, #0, #56
    4db4:	f9448a68 	ldr	x8, [x19,#2320]
    4db8:	f90017f4 	str	x20, [sp,#40]
    4dbc:	f90007fa 	str	x26, [sp,#8]
    4dc0:	f83a591b 	str	x27, [x8,w26,uxtw #3]
    4dc4:	b340de6f 	bfxil	x15, x19, #0, #56
    4dc8:	f947c268 	ldr	x8, [x19,#3968]
    4dcc:	b340dd0f 	bfxil	x15, x8, #0, #56
    4dd0:	b9403901 	ldr	w1, [x8,#56]
    4dd4:	340001a1 	cbz	w1, 4e08 <stmmac_xmit+0x26c>
    4dd8:	b340de6f 	bfxil	x15, x19, #0, #56
    4ddc:	f9459268 	ldr	x8, [x19,#2848]
    4de0:	b340df6f 	bfxil	x15, x27, #0, #56
    4de4:	b940a360 	ldr	w0, [x27,#160]
    4de8:	b340dd0f 	bfxil	x15, x8, #0, #56
    4dec:	f9400d08 	ldr	x8, [x8,#24]
    4df0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4df4:	f9400508 	ldr	x8, [x8,#8]
    4df8:	b340dd0f 	bfxil	x15, x8, #0, #56
    4dfc:	f940011f 	ldr	xzr, [x8]
    4e00:	d63f0100 	blr	x8
    4e04:	350053a0 	cbnz	w0, 5878 <stmmac_xmit+0xcdc>
    4e08:	b90013ff 	str	wzr, [sp,#16]
    4e0c:	f90003f5 	str	x21, [sp]
    4e10:	34005659 	cbz	w25, 58d8 <stmmac_xmit+0xd3c>
    4e14:	51000728 	sub	w8, w25, #0x1
    4e18:	aa1f03f5 	mov	x21, xzr
    4e1c:	d37cef36 	lsl	x22, x25, #4
    4e20:	d37ced18 	lsl	x24, x8, #4
    4e24:	14000044 	b	4f34 <stmmac_xmit+0x398>
    4e28:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    4e2c:	91000129 	add	x9, x9, #0x0
    4e30:	b340dd2f 	bfxil	x15, x9, #0, #56
    4e34:	f9403929 	ldr	x9, [x9,#112]
    4e38:	aa0803e0 	mov	x0, x8
    4e3c:	aa1703e1 	mov	x1, x23
    4e40:	b340dd2f 	bfxil	x15, x9, #0, #56
    4e44:	f940013f 	ldr	xzr, [x9]
    4e48:	d63f0120 	blr	x9
    4e4c:	350066e0 	cbnz	w0, 5b28 <stmmac_xmit+0xf8c>
    4e50:	b340de6f 	bfxil	x15, x19, #0, #56
    4e54:	f9448a68 	ldr	x8, [x19,#2320]
    4e58:	8b3a4749 	add	x9, x26, w26, uxtw #1
    4e5c:	d37df129 	lsl	x9, x9, #3
    4e60:	b9403bea 	ldr	w10, [sp,#56]
    4e64:	f83a591f 	str	xzr, [x8,w26,uxtw #3]
    4e68:	b340de6f 	bfxil	x15, x19, #0, #56
    4e6c:	f9449a68 	ldr	x8, [x19,#2352]
    4e70:	eb15031f 	cmp	x24, x21
    4e74:	1a9f17e6 	cset	w6, eq
    4e78:	710c015f 	cmp	w10, #0x300
    4e7c:	f8296917 	str	x23, [x8,x9]
    4e80:	b340de6f 	bfxil	x15, x19, #0, #56
    4e84:	b9512668 	ldr	w8, [x19,#4388]
    4e88:	1a9f17e3 	cset	w3, eq
    4e8c:	5280002a 	mov	w10, #0x1                   	// #1
    4e90:	52800025 	mov	w5, #0x1                   	// #1
    4e94:	7101011f 	cmp	w8, #0x40
    4e98:	1a9fa7e8 	cset	w8, lt
    4e9c:	d37df108 	lsl	x8, x8, #3
    4ea0:	b8286b3c 	str	w28, [x25,x8]
    4ea4:	b340de6f 	bfxil	x15, x19, #0, #56
    4ea8:	f9449a68 	ldr	x8, [x19,#2352]
    4eac:	aa1903e0 	mov	x0, x25
    4eb0:	2a1f03e1 	mov	w1, wzr
    4eb4:	2a1b03e2 	mov	w2, w27
    4eb8:	8b090108 	add	x8, x8, x9
    4ebc:	f940011f 	ldr	xzr, [x8]
    4ec0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4ec4:	3900210a 	strb	w10, [x8,#8]
    4ec8:	b340de6f 	bfxil	x15, x19, #0, #56
    4ecc:	f9449a68 	ldr	x8, [x19,#2352]
    4ed0:	8b090108 	add	x8, x8, x9
    4ed4:	f940011f 	ldr	xzr, [x8]
    4ed8:	b340dd0f 	bfxil	x15, x8, #0, #56
    4edc:	b9000d1b 	str	w27, [x8,#12]
    4ee0:	b340de6f 	bfxil	x15, x19, #0, #56
    4ee4:	f9449a68 	ldr	x8, [x19,#2352]
    4ee8:	8b090108 	add	x8, x8, x9
    4eec:	f940011f 	ldr	xzr, [x8]
    4ef0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4ef4:	39004114 	strb	w20, [x8,#16]
    4ef8:	b340de6f 	bfxil	x15, x19, #0, #56
    4efc:	f9459268 	ldr	x8, [x19,#2848]
    4f00:	b340de6f 	bfxil	x15, x19, #0, #56
    4f04:	b951b264 	ldr	w4, [x19,#4528]
    4f08:	b340dd0f 	bfxil	x15, x8, #0, #56
    4f0c:	f9400508 	ldr	x8, [x8,#8]
    4f10:	b340dd0f 	bfxil	x15, x8, #0, #56
    4f14:	f9400908 	ldr	x8, [x8,#16]
    4f18:	b340dd0f 	bfxil	x15, x8, #0, #56
    4f1c:	f940011f 	ldr	xzr, [x8]
    4f20:	d63f0100 	blr	x8
    4f24:	f94027fb 	ldr	x27, [sp,#72]
    4f28:	910042b5 	add	x21, x21, #0x10
    4f2c:	eb1502df 	cmp	x22, x21
    4f30:	54004d60 	b.eq	58dc <stmmac_xmit+0xd40>
    4f34:	b340df6f 	bfxil	x15, x27, #0, #56
    4f38:	f940c368 	ldr	x8, [x27,#384]
    4f3c:	b9417369 	ldr	w9, [x27,#368]
    4f40:	eb15031f 	cmp	x24, x21
    4f44:	1100074b 	add	w11, w26, #0x1
    4f48:	1a9f17f4 	cset	w20, eq
    4f4c:	8b09010a 	add	x10, x8, x9
    4f50:	8b15014a 	add	x10, x10, x21
    4f54:	b9403d5b 	ldr	w27, [x10,#60]
    4f58:	b340de6f 	bfxil	x15, x19, #0, #56
    4f5c:	b951b66a 	ldr	w10, [x19,#4532]
    4f60:	1200217a 	and	w26, w11, #0x1ff
    4f64:	93407f63 	sxtw	x3, w27
    4f68:	3400056a 	cbz	w10, 5014 <stmmac_xmit+0x478>
    4f6c:	f94023ea 	ldr	x10, [sp,#64]
    4f70:	b340dd4f 	bfxil	x15, x10, #0, #56
    4f74:	f940014a 	ldr	x10, [x10]
    4f78:	8b1a1559 	add	x25, x10, x26, lsl #5
    4f7c:	8b090108 	add	x8, x8, x9
    4f80:	8b150108 	add	x8, x8, x21
    4f84:	b340de6f 	bfxil	x15, x19, #0, #56
    4f88:	f9458e60 	ldr	x0, [x19,#2840]
    4f8c:	b340dd0f 	bfxil	x15, x8, #0, #56
    4f90:	f9401901 	ldr	x1, [x8,#48]
    4f94:	b9403902 	ldr	w2, [x8,#56]
    4f98:	b4000080 	cbz	x0, 4fa8 <stmmac_xmit+0x40c>
    4f9c:	b340dc0f 	bfxil	x15, x0, #0, #56
    4fa0:	f9412408 	ldr	x8, [x0,#584]
    4fa4:	b5000068 	cbnz	x8, 4fb0 <stmmac_xmit+0x414>
    4fa8:	90000008 	adrp	x8, 0 <dummy_dma_ops>
    4fac:	91000108 	add	x8, x8, #0x0
    4fb0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4fb4:	f9401108 	ldr	x8, [x8,#32]
    4fb8:	52800024 	mov	w4, #0x1                   	// #1
    4fbc:	aa1f03e5 	mov	x5, xzr
    4fc0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4fc4:	f940011f 	ldr	xzr, [x8]
    4fc8:	d63f0100 	blr	x8
    4fcc:	b340de6f 	bfxil	x15, x19, #0, #56
    4fd0:	f9458e68 	ldr	x8, [x19,#2840]
    4fd4:	aa0003fc 	mov	x28, x0
    4fd8:	92407c17 	and	x23, x0, #0xffffffff
    4fdc:	b4000088 	cbz	x8, 4fec <stmmac_xmit+0x450>
    4fe0:	b340dd0f 	bfxil	x15, x8, #0, #56
    4fe4:	f9412509 	ldr	x9, [x8,#584]
    4fe8:	b5000069 	cbnz	x9, 4ff4 <stmmac_xmit+0x458>
    4fec:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    4ff0:	91000129 	add	x9, x9, #0x0
    4ff4:	b340dd2f 	bfxil	x15, x9, #0, #56
    4ff8:	f9403929 	ldr	x9, [x9,#112]
    4ffc:	b4fff2a9 	cbz	x9, 4e50 <stmmac_xmit+0x2b4>
    5000:	b4fff148 	cbz	x8, 4e28 <stmmac_xmit+0x28c>
    5004:	b340dd0f 	bfxil	x15, x8, #0, #56
    5008:	f9412509 	ldr	x9, [x8,#584]
    500c:	b5fff129 	cbnz	x9, 4e30 <stmmac_xmit+0x294>
    5010:	17ffff86 	b	4e28 <stmmac_xmit+0x28c>
    5014:	b340de6f 	bfxil	x15, x19, #0, #56
    5018:	f944866a 	ldr	x10, [x19,#2312]
    501c:	8b3a5159 	add	x25, x10, w26, uxtw #4
    5020:	17ffffd7 	b	4f7c <stmmac_xmit+0x3e0>
    5024:	b340de6f 	bfxil	x15, x19, #0, #56
    5028:	f9459268 	ldr	x8, [x19,#2848]
    502c:	b340de6f 	bfxil	x15, x19, #0, #56
    5030:	f9448669 	ldr	x9, [x19,#2312]
    5034:	2a1a03e1 	mov	w1, w26
    5038:	b340dd0f 	bfxil	x15, x8, #0, #56
    503c:	f9400508 	ldr	x8, [x8,#8]
    5040:	8b141120 	add	x0, x9, x20, lsl #4
    5044:	f90023e0 	str	x0, [sp,#64]
    5048:	b340dd0f 	bfxil	x15, x8, #0, #56
    504c:	f9405108 	ldr	x8, [x8,#160]
    5050:	b340dd0f 	bfxil	x15, x8, #0, #56
    5054:	f940011f 	ldr	xzr, [x8]
    5058:	d63f0100 	blr	x8
    505c:	b340de6f 	bfxil	x15, x19, #0, #56
    5060:	b9491a68 	ldr	w8, [x19,#2328]
    5064:	f940027f 	ldr	xzr, [x19]
    5068:	b340de6f 	bfxil	x15, x19, #0, #56
    506c:	b912727a 	str	w26, [x19,#4720]
    5070:	11000508 	add	w8, w8, #0x1
    5074:	12002114 	and	w20, w8, #0x1ff
    5078:	f940027f 	ldr	xzr, [x19]
    507c:	b340de6f 	bfxil	x15, x19, #0, #56
    5080:	b9091a74 	str	w20, [x19,#2328]
    5084:	52822528 	mov	w8, #0x1129                	// #4393
    5088:	38686a68 	ldrb	w8, [x19,x8]
    508c:	36000328 	tbz	w8, #0, 50f0 <stmmac_xmit+0x554>
    5090:	b340df6f 	bfxil	x15, x27, #0, #56
    5094:	f940c368 	ldr	x8, [x27,#384]
    5098:	7942af69 	ldrh	w9, [x27,#342]
    509c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    50a0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    50a4:	91000000 	add	x0, x0, #0x0
    50a8:	8b090108 	add	x8, x8, x9
    50ac:	b340dd0f 	bfxil	x15, x8, #0, #56
    50b0:	79401908 	ldrh	w8, [x8,#12]
    50b4:	91000021 	add	x1, x1, #0x0
    50b8:	2a1703e3 	mov	w3, w23
    50bc:	2a1803e4 	mov	w4, w24
    50c0:	53027d08 	lsr	w8, w8, #2
    50c4:	121e0d02 	and	w2, w8, #0x3c
    50c8:	2a1a03e5 	mov	w5, w26
    50cc:	94000000 	bl	0 <printk>
    50d0:	b340df6f 	bfxil	x15, x27, #0, #56
    50d4:	b940a361 	ldr	w1, [x27,#160]
    50d8:	b340df6f 	bfxil	x15, x27, #0, #56
    50dc:	b940b362 	ldr	w2, [x27,#176]
    50e0:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    50e4:	91000000 	add	x0, x0, #0x0
    50e8:	94000000 	bl	0 <printk>
    50ec:	b9491a74 	ldr	w20, [x19,#2328]
    50f0:	b340df6f 	bfxil	x15, x27, #0, #56
    50f4:	b940a369 	ldr	w9, [x27,#160]
    50f8:	b340df6f 	bfxil	x15, x27, #0, #56
    50fc:	b940b36a 	ldr	w10, [x27,#176]
    5100:	b340de6f 	bfxil	x15, x19, #0, #56
    5104:	f9448675 	ldr	x21, [x19,#2312]
    5108:	b340de6f 	bfxil	x15, x19, #0, #56
    510c:	f9458e60 	ldr	x0, [x19,#2840]
    5110:	b340df6f 	bfxil	x15, x27, #0, #56
    5114:	f940cb68 	ldr	x8, [x27,#400]
    5118:	4b0a0123 	sub	w3, w9, w10
    511c:	b4000080 	cbz	x0, 512c <stmmac_xmit+0x590>
    5120:	b340dc0f 	bfxil	x15, x0, #0, #56
    5124:	f9412409 	ldr	x9, [x0,#584]
    5128:	b5000069 	cbnz	x9, 5134 <stmmac_xmit+0x598>
    512c:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    5130:	91000129 	add	x9, x9, #0x0
    5134:	b340dd2f 	bfxil	x15, x9, #0, #56
    5138:	f9401129 	ldr	x9, [x9,#32]
    513c:	d346fd0a 	lsr	x10, x8, #6
    5140:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    5144:	927a654a 	and	x10, x10, #0xffffffc0
    5148:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    514c:	aa0b0141 	orr	x1, x10, x11
    5150:	92402d02 	and	x2, x8, #0xfff
    5154:	52800024 	mov	w4, #0x1                   	// #1
    5158:	aa1f03e5 	mov	x5, xzr
    515c:	b340dd2f 	bfxil	x15, x9, #0, #56
    5160:	f940013f 	ldr	xzr, [x9]
    5164:	d63f0120 	blr	x9
    5168:	b340de6f 	bfxil	x15, x19, #0, #56
    516c:	f9458e68 	ldr	x8, [x19,#2840]
    5170:	aa0003fc 	mov	x28, x0
    5174:	92407c1b 	and	x27, x0, #0xffffffff
    5178:	b4000088 	cbz	x8, 5188 <stmmac_xmit+0x5ec>
    517c:	b340dd0f 	bfxil	x15, x8, #0, #56
    5180:	f9412509 	ldr	x9, [x8,#584]
    5184:	b5000069 	cbnz	x9, 5190 <stmmac_xmit+0x5f4>
    5188:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    518c:	91000129 	add	x9, x9, #0x0
    5190:	b340dd2f 	bfxil	x15, x9, #0, #56
    5194:	f9403929 	ldr	x9, [x9,#112]
    5198:	b4000229 	cbz	x9, 51dc <stmmac_xmit+0x640>
    519c:	b4000088 	cbz	x8, 51ac <stmmac_xmit+0x610>
    51a0:	b340dd0f 	bfxil	x15, x8, #0, #56
    51a4:	f9412509 	ldr	x9, [x8,#584]
    51a8:	b5000069 	cbnz	x9, 51b4 <stmmac_xmit+0x618>
    51ac:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    51b0:	91000129 	add	x9, x9, #0x0
    51b4:	b340dd2f 	bfxil	x15, x9, #0, #56
    51b8:	f9403929 	ldr	x9, [x9,#112]
    51bc:	aa0803e0 	mov	x0, x8
    51c0:	aa1b03e1 	mov	x1, x27
    51c4:	b340dd2f 	bfxil	x15, x9, #0, #56
    51c8:	f940013f 	ldr	xzr, [x9]
    51cc:	d63f0120 	blr	x9
    51d0:	34000060 	cbz	w0, 51dc <stmmac_xmit+0x640>
    51d4:	aa1603e0 	mov	x0, x22
    51d8:	14000255 	b	5b2c <stmmac_xmit+0xf90>
    51dc:	b340de6f 	bfxil	x15, x19, #0, #56
    51e0:	f9449a68 	ldr	x8, [x19,#2352]
    51e4:	2a1403fa 	mov	w26, w20
    51e8:	f94027ec 	ldr	x12, [sp,#72]
    51ec:	8b1a0749 	add	x9, x26, x26, lsl #1
    51f0:	d37df129 	lsl	x9, x9, #3
    51f4:	f829691b 	str	x27, [x8,x9]
    51f8:	b340dd8f 	bfxil	x15, x12, #0, #56
    51fc:	b940a188 	ldr	w8, [x12,#160]
    5200:	b340dd8f 	bfxil	x15, x12, #0, #56
    5204:	b940b18a 	ldr	w10, [x12,#176]
    5208:	b340de6f 	bfxil	x15, x19, #0, #56
    520c:	f9449a6b 	ldr	x11, [x19,#2352]
    5210:	f9001ff6 	str	x22, [sp,#56]
    5214:	4b0a0108 	sub	w8, w8, w10
    5218:	8b090169 	add	x9, x11, x9
    521c:	f940013f 	ldr	xzr, [x9]
    5220:	b340dd2f 	bfxil	x15, x9, #0, #56
    5224:	b9000d28 	str	w8, [x9,#12]
    5228:	b340de6f 	bfxil	x15, x19, #0, #56
    522c:	f9448a68 	ldr	x8, [x19,#2320]
    5230:	8b3452a9 	add	x9, x21, w20, uxtw #4
    5234:	f9000be9 	str	x9, [sp,#16]
    5238:	f83a790c 	str	x12, [x8,x26,lsl #3]
    523c:	f940013f 	ldr	xzr, [x9]
    5240:	b340dd2f 	bfxil	x15, x9, #0, #56
    5244:	b900013c 	str	w28, [x9]
    5248:	34000638 	cbz	w24, 530c <stmmac_xmit+0x770>
    524c:	1287ffd4 	mov	w20, #0xffffc001            	// #-16383
    5250:	8b1a12a9 	add	x9, x21, x26, lsl #4
    5254:	0b140315 	add	w21, w24, w20
    5258:	0b1c02e8 	add	w8, w23, w28
    525c:	710006bf 	cmp	w21, #0x1
    5260:	f940013f 	ldr	xzr, [x9]
    5264:	b340dd2f 	bfxil	x15, x9, #0, #56
    5268:	b9000528 	str	w8, [x9,#4]
    526c:	5400050b 	b.lt	530c <stmmac_xmit+0x770>
    5270:	5287fff6 	mov	w22, #0x3fff                	// #16383
    5274:	b340de6f 	bfxil	x15, x19, #0, #56
    5278:	b9491a68 	ldr	w8, [x19,#2328]
    527c:	b340de6f 	bfxil	x15, x19, #0, #56
    5280:	f9448669 	ldr	x9, [x19,#2312]
    5284:	7100033f 	cmp	w25, #0x0
    5288:	52800024 	mov	w4, #0x1                   	// #1
    528c:	11000508 	add	w8, w8, #0x1
    5290:	12002108 	and	w8, w8, #0x1ff
    5294:	8b285120 	add	x0, x9, w8, uxtw #4
    5298:	f940027f 	ldr	xzr, [x19]
    529c:	b340de6f 	bfxil	x15, x19, #0, #56
    52a0:	b9091a68 	str	w8, [x19,#2328]
    52a4:	f940001f 	ldr	xzr, [x0]
    52a8:	b340dc0f 	bfxil	x15, x0, #0, #56
    52ac:	b900001c 	str	w28, [x0]
    52b0:	b340de6f 	bfxil	x15, x19, #0, #56
    52b4:	f9459268 	ldr	x8, [x19,#2848]
    52b8:	1a9f17e9 	cset	w9, eq
    52bc:	6b1602bf 	cmp	w21, w22
    52c0:	1a96b2a2 	csel	w2, w21, w22, lt
    52c4:	b340dd0f 	bfxil	x15, x8, #0, #56
    52c8:	f9400508 	ldr	x8, [x8,#8]
    52cc:	714012bf 	cmp	w21, #0x4, lsl #12
    52d0:	1a9fa7ea 	cset	w10, lt
    52d4:	0a0a0125 	and	w5, w9, w10
    52d8:	b340dd0f 	bfxil	x15, x8, #0, #56
    52dc:	f9400d08 	ldr	x8, [x8,#24]
    52e0:	2a1f03e1 	mov	w1, wzr
    52e4:	2a1f03e3 	mov	w3, wzr
    52e8:	2a1f03e6 	mov	w6, wzr
    52ec:	2a1f03e7 	mov	w7, wzr
    52f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    52f4:	f940011f 	ldr	xzr, [x8]
    52f8:	d63f0100 	blr	x8
    52fc:	0b1402b5 	add	w21, w21, w20
    5300:	710002bf 	cmp	w21, #0x0
    5304:	0b16039c 	add	w28, w28, w22
    5308:	54fffb6c 	b.gt	5274 <stmmac_xmit+0x6d8>
    530c:	f9000ffa 	str	x26, [sp,#24]
    5310:	2904dff8 	stp	w24, w23, [sp,#36]
    5314:	34000d99 	cbz	w25, 54c4 <stmmac_xmit+0x928>
    5318:	aa1f03f4 	mov	x20, xzr
    531c:	51000735 	sub	w21, w25, #0x1
    5320:	5287fffb 	mov	w27, #0x3fff                	// #16383
    5324:	1287ffd8 	mov	w24, #0xffffc001            	// #-16383
    5328:	5280031a 	mov	w26, #0x18                  	// #24
    532c:	14000020 	b	53ac <stmmac_xmit+0x810>
    5330:	b9491a68 	ldr	w8, [x19,#2328]
    5334:	b340de6f 	bfxil	x15, x19, #0, #56
    5338:	f9449a69 	ldr	x9, [x19,#2352]
    533c:	92407f8a 	and	x10, x28, #0xffffffff
    5340:	f9401bf9 	ldr	x25, [sp,#48]
    5344:	9b1a7d08 	mul	x8, x8, x26
    5348:	f828692a 	str	x10, [x9,x8]
    534c:	b340de6f 	bfxil	x15, x19, #0, #56
    5350:	f9449a68 	ldr	x8, [x19,#2352]
    5354:	b9491a69 	ldr	w9, [x19,#2328]
    5358:	b340deef 	bfxil	x15, x23, #0, #56
    535c:	b94002ea 	ldr	w10, [x23]
    5360:	91000694 	add	x20, x20, #0x1
    5364:	eb19029f 	cmp	x20, x25
    5368:	9b1a2128 	madd	x8, x9, x26, x8
    536c:	f940011f 	ldr	xzr, [x8]
    5370:	b340dd0f 	bfxil	x15, x8, #0, #56
    5374:	b9000d0a 	str	w10, [x8,#12]
    5378:	b340de6f 	bfxil	x15, x19, #0, #56
    537c:	f9448a68 	ldr	x8, [x19,#2320]
    5380:	b9491a69 	ldr	w9, [x19,#2328]
    5384:	f829791f 	str	xzr, [x8,x9,lsl #3]
    5388:	b340de6f 	bfxil	x15, x19, #0, #56
    538c:	f9449a68 	ldr	x8, [x19,#2352]
    5390:	b9491a69 	ldr	w9, [x19,#2328]
    5394:	9b1a2128 	madd	x8, x9, x26, x8
    5398:	52800029 	mov	w9, #0x1                   	// #1
    539c:	f940011f 	ldr	xzr, [x8]
    53a0:	b340dd0f 	bfxil	x15, x8, #0, #56
    53a4:	39002109 	strb	w9, [x8,#8]
    53a8:	540008e0 	b.eq	54c4 <stmmac_xmit+0x928>
    53ac:	f94027e9 	ldr	x9, [sp,#72]
    53b0:	b340de6f 	bfxil	x15, x19, #0, #56
    53b4:	f9458e60 	ldr	x0, [x19,#2840]
    53b8:	b340dd2f 	bfxil	x15, x9, #0, #56
    53bc:	f940c128 	ldr	x8, [x9,#384]
    53c0:	b9417129 	ldr	w9, [x9,#368]
    53c4:	8b090108 	add	x8, x8, x9
    53c8:	8b141117 	add	x23, x8, x20, lsl #4
    53cc:	b843cee3 	ldr	w3, [x23,#60]!
    53d0:	b340deef 	bfxil	x15, x23, #0, #56
    53d4:	f85f42e1 	ldur	x1, [x23,#-12]
    53d8:	b85fc2e2 	ldur	w2, [x23,#-4]
    53dc:	b4000080 	cbz	x0, 53ec <stmmac_xmit+0x850>
    53e0:	b340dc0f 	bfxil	x15, x0, #0, #56
    53e4:	f9412408 	ldr	x8, [x0,#584]
    53e8:	b5000068 	cbnz	x8, 53f4 <stmmac_xmit+0x858>
    53ec:	90000008 	adrp	x8, 0 <dummy_dma_ops>
    53f0:	91000108 	add	x8, x8, #0x0
    53f4:	b340dd0f 	bfxil	x15, x8, #0, #56
    53f8:	f9401108 	ldr	x8, [x8,#32]
    53fc:	52800024 	mov	w4, #0x1                   	// #1
    5400:	aa1f03e5 	mov	x5, xzr
    5404:	b340dd0f 	bfxil	x15, x8, #0, #56
    5408:	f940011f 	ldr	xzr, [x8]
    540c:	d63f0100 	blr	x8
    5410:	b340deef 	bfxil	x15, x23, #0, #56
    5414:	b94002f6 	ldr	w22, [x23]
    5418:	aa0003fc 	mov	x28, x0
    541c:	710006df 	cmp	w22, #0x1
    5420:	54fff88b 	b.lt	5330 <stmmac_xmit+0x794>
    5424:	2a1c03f9 	mov	w25, w28
    5428:	b340de6f 	bfxil	x15, x19, #0, #56
    542c:	b9491a68 	ldr	w8, [x19,#2328]
    5430:	b340de6f 	bfxil	x15, x19, #0, #56
    5434:	f9448669 	ldr	x9, [x19,#2312]
    5438:	eb15029f 	cmp	x20, x21
    543c:	52800024 	mov	w4, #0x1                   	// #1
    5440:	11000508 	add	w8, w8, #0x1
    5444:	12002108 	and	w8, w8, #0x1ff
    5448:	8b285120 	add	x0, x9, w8, uxtw #4
    544c:	f940027f 	ldr	xzr, [x19]
    5450:	b340de6f 	bfxil	x15, x19, #0, #56
    5454:	b9091a68 	str	w8, [x19,#2328]
    5458:	f940001f 	ldr	xzr, [x0]
    545c:	b340dc0f 	bfxil	x15, x0, #0, #56
    5460:	b9000019 	str	w25, [x0]
    5464:	b340de6f 	bfxil	x15, x19, #0, #56
    5468:	f9459268 	ldr	x8, [x19,#2848]
    546c:	1a9f17e9 	cset	w9, eq
    5470:	6b1b02df 	cmp	w22, w27
    5474:	1a9bb2c2 	csel	w2, w22, w27, lt
    5478:	b340dd0f 	bfxil	x15, x8, #0, #56
    547c:	f9400508 	ldr	x8, [x8,#8]
    5480:	714012df 	cmp	w22, #0x4, lsl #12
    5484:	1a9fa7ea 	cset	w10, lt
    5488:	0a0a0125 	and	w5, w9, w10
    548c:	b340dd0f 	bfxil	x15, x8, #0, #56
    5490:	f9400d08 	ldr	x8, [x8,#24]
    5494:	2a1f03e1 	mov	w1, wzr
    5498:	2a1f03e3 	mov	w3, wzr
    549c:	2a1f03e6 	mov	w6, wzr
    54a0:	2a1f03e7 	mov	w7, wzr
    54a4:	b340dd0f 	bfxil	x15, x8, #0, #56
    54a8:	f940011f 	ldr	xzr, [x8]
    54ac:	d63f0100 	blr	x8
    54b0:	0b1802d6 	add	w22, w22, w24
    54b4:	710002df 	cmp	w22, #0x0
    54b8:	0b1b0339 	add	w25, w25, w27
    54bc:	54fffb6c 	b.gt	5428 <stmmac_xmit+0x88c>
    54c0:	17ffff9c 	b	5330 <stmmac_xmit+0x794>
    54c4:	b340de6f 	bfxil	x15, x19, #0, #56
    54c8:	f9449a68 	ldr	x8, [x19,#2352]
    54cc:	b9491a69 	ldr	w9, [x19,#2328]
    54d0:	5280030a 	mov	w10, #0x18                  	// #24
    54d4:	9b0a2128 	madd	x8, x9, x10, x8
    54d8:	52800029 	mov	w9, #0x1                   	// #1
    54dc:	f940011f 	ldr	xzr, [x8]
    54e0:	b340dd0f 	bfxil	x15, x8, #0, #56
    54e4:	39004109 	strb	w9, [x8,#16]
    54e8:	b340de6f 	bfxil	x15, x19, #0, #56
    54ec:	b9491a68 	ldr	w8, [x19,#2328]
    54f0:	b340de6f 	bfxil	x15, x19, #0, #56
    54f4:	b9491e69 	ldr	w9, [x19,#2332]
    54f8:	11000508 	add	w8, w8, #0x1
    54fc:	1200210a 	and	w10, w8, #0x1ff
    5500:	32175908 	orr	w8, w8, #0xfffffe00
    5504:	52002108 	eor	w8, w8, #0x1ff
    5508:	0b090108 	add	w8, w8, w9
    550c:	6b0a0129 	subs	w9, w9, w10
    5510:	1107fd29 	add	w9, w9, #0x1ff
    5514:	1a898108 	csel	w8, w8, w9, hi
    5518:	7100491f 	cmp	w8, #0x12
    551c:	f940027f 	ldr	xzr, [x19]
    5520:	b340de6f 	bfxil	x15, x19, #0, #56
    5524:	b9091a6a 	str	w10, [x19,#2328]
    5528:	54004b49 	b.ls	5e90 <stmmac_xmit+0x12f4>
    552c:	f94027f5 	ldr	x21, [sp,#72]
    5530:	b340de6f 	bfxil	x15, x19, #0, #56
    5534:	f940a669 	ldr	x9, [x19,#328]
    5538:	b340de6f 	bfxil	x15, x19, #0, #56
    553c:	f947ba6a 	ldr	x10, [x19,#3952]
    5540:	f9400bfa 	ldr	x26, [sp,#16]
    5544:	b940a2a8 	ldr	w8, [x21,#160]
    5548:	9100054a 	add	x10, x10, #0x1
    554c:	f940027f 	ldr	xzr, [x19]
    5550:	b340de6f 	bfxil	x15, x19, #0, #56
    5554:	f907ba6a 	str	x10, [x19,#3952]
    5558:	8b080128 	add	x8, x9, x8
    555c:	f940027f 	ldr	xzr, [x19]
    5560:	b340de6f 	bfxil	x15, x19, #0, #56
    5564:	f900a668 	str	x8, [x19,#328]
    5568:	b340de6f 	bfxil	x15, x19, #0, #56
    556c:	b9492268 	ldr	w8, [x19,#2336]
    5570:	b340de6f 	bfxil	x15, x19, #0, #56
    5574:	f947be69 	ldr	x9, [x19,#3960]
    5578:	b340de6f 	bfxil	x15, x19, #0, #56
    557c:	b949266a 	ldr	w10, [x19,#2340]
    5580:	0b080328 	add	w8, w25, w8
    5584:	11000508 	add	w8, w8, #0x1
    5588:	8b190129 	add	x9, x9, x25
    558c:	6b08015f 	cmp	w10, w8
    5590:	f940027f 	ldr	xzr, [x19]
    5594:	b340de6f 	bfxil	x15, x19, #0, #56
    5598:	f907be69 	str	x9, [x19,#3960]
    559c:	f940027f 	ldr	xzr, [x19]
    55a0:	b340de6f 	bfxil	x15, x19, #0, #56
    55a4:	b9092268 	str	w8, [x19,#2336]
    55a8:	54004809 	b.ls	5ea8 <stmmac_xmit+0x130c>
    55ac:	90000008 	adrp	x8, 0 <jiffies>
    55b0:	b340dd0f 	bfxil	x15, x8, #0, #56
    55b4:	f9400114 	ldr	x20, [x8]
    55b8:	b340de6f 	bfxil	x15, x19, #0, #56
    55bc:	b9492a60 	ldr	w0, [x19,#2344]
    55c0:	9125427c 	add	x28, x19, #0x950
    55c4:	94000000 	bl	0 <__usecs_to_jiffies>
    55c8:	8b140001 	add	x1, x0, x20
    55cc:	aa1c03e0 	mov	x0, x28
    55d0:	94000000 	bl	0 <mod_timer>
    55d4:	f9401ff6 	ldr	x22, [sp,#56]
    55d8:	b340de6f 	bfxil	x15, x19, #0, #56
    55dc:	b9494668 	ldr	w8, [x19,#2372]
    55e0:	2944d3f7 	ldp	w23, w20, [sp,#36]
    55e4:	f9400ff8 	ldr	x24, [sp,#24]
    55e8:	350001a8 	cbnz	w8, 561c <stmmac_xmit+0xa80>
    55ec:	b340deaf 	bfxil	x15, x21, #0, #56
    55f0:	f940c2a8 	ldr	x8, [x21,#384]
    55f4:	b94172a9 	ldr	w9, [x21,#368]
    55f8:	8b090108 	add	x8, x8, x9
    55fc:	b340dd0f 	bfxil	x15, x8, #0, #56
    5600:	39400508 	ldrb	w8, [x8,#1]
    5604:	121f0508 	and	w8, w8, #0x6
    5608:	7100091f 	cmp	w8, #0x2
    560c:	54000081 	b.ne	561c <stmmac_xmit+0xa80>
    5610:	aa1503e0 	mov	x0, x21
    5614:	aa1f03e1 	mov	x1, xzr
    5618:	94000000 	bl	0 <skb_tstamp_tx>
    561c:	b340deaf 	bfxil	x15, x21, #0, #56
    5620:	f940c2a8 	ldr	x8, [x21,#384]
    5624:	b94172a9 	ldr	w9, [x21,#368]
    5628:	8b090109 	add	x9, x8, x9
    562c:	b340dd2f 	bfxil	x15, x9, #0, #56
    5630:	3940052a 	ldrb	w10, [x9,#1]
    5634:	3600008a 	tbz	w10, #0, 5644 <stmmac_xmit+0xaa8>
    5638:	b340de6f 	bfxil	x15, x19, #0, #56
    563c:	b949466b 	ldr	w11, [x19,#2372]
    5640:	350047eb 	cbnz	w11, 5f3c <stmmac_xmit+0x13a0>
    5644:	b340de6f 	bfxil	x15, x19, #0, #56
    5648:	f9459269 	ldr	x9, [x19,#2848]
    564c:	7942aeac 	ldrh	w12, [x21,#342]
    5650:	b340de6f 	bfxil	x15, x19, #0, #56
    5654:	f9449a6a 	ldr	x10, [x19,#2352]
    5658:	5280030b 	mov	w11, #0x18                  	// #24
    565c:	b340dd2f 	bfxil	x15, x9, #0, #56
    5660:	f9400529 	ldr	x9, [x9,#8]
    5664:	8b0c0108 	add	x8, x8, x12
    5668:	b340deaf 	bfxil	x15, x21, #0, #56
    566c:	b940a2ad 	ldr	w13, [x21,#160]
    5670:	9b0b2b0a 	madd	x10, x24, x11, x10
    5674:	b340dd0f 	bfxil	x15, x8, #0, #56
    5678:	79401908 	ldrh	w8, [x8,#12]
    567c:	b340dd2f 	bfxil	x15, x9, #0, #56
    5680:	f9400d29 	ldr	x9, [x9,#24]
    5684:	b340dd4f 	bfxil	x15, x10, #0, #56
    5688:	39404145 	ldrb	w5, [x10,#16]
    568c:	4b1401a7 	sub	w7, w13, w20
    5690:	53041d06 	ubfx	w6, w8, #4, #4
    5694:	52800021 	mov	w1, #0x1                   	// #1
    5698:	52800024 	mov	w4, #0x1                   	// #1
    569c:	aa1a03e0 	mov	x0, x26
    56a0:	2a1403e2 	mov	w2, w20
    56a4:	2a1703e3 	mov	w3, w23
    56a8:	b340dd2f 	bfxil	x15, x9, #0, #56
    56ac:	f940013f 	ldr	xzr, [x9]
    56b0:	d63f0120 	blr	x9
    56b4:	f94023e0 	ldr	x0, [sp,#64]
    56b8:	b4000160 	cbz	x0, 56e4 <stmmac_xmit+0xb48>
    56bc:	d50332bf 	dmb	oshst
    56c0:	b340de6f 	bfxil	x15, x19, #0, #56
    56c4:	f9459268 	ldr	x8, [x19,#2848]
    56c8:	b340dd0f 	bfxil	x15, x8, #0, #56
    56cc:	f9400508 	ldr	x8, [x8,#8]
    56d0:	b340dd0f 	bfxil	x15, x8, #0, #56
    56d4:	f9401108 	ldr	x8, [x8,#32]
    56d8:	b340dd0f 	bfxil	x15, x8, #0, #56
    56dc:	f940011f 	ldr	xzr, [x8]
    56e0:	d63f0100 	blr	x8
    56e4:	d5033abf 	dmb	ishst
    56e8:	52822528 	mov	w8, #0x1129                	// #4393
    56ec:	38686a68 	ldrb	w8, [x19,x8]
    56f0:	36200548 	tbz	w8, #4, 5798 <stmmac_xmit+0xbfc>
    56f4:	b340de6f 	bfxil	x15, x19, #0, #56
    56f8:	b9491a62 	ldr	w2, [x19,#2328]
    56fc:	b340de6f 	bfxil	x15, x19, #0, #56
    5700:	b9491e63 	ldr	w3, [x19,#2332]
    5704:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    5708:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    570c:	91000000 	add	x0, x0, #0x0
    5710:	91000021 	add	x1, x1, #0x0
    5714:	2a1803e4 	mov	w4, w24
    5718:	2a0203e5 	mov	w5, w2
    571c:	aa1a03e6 	mov	x6, x26
    5720:	2a1903e7 	mov	w7, w25
    5724:	94000000 	bl	0 <printk>
    5728:	b340de6f 	bfxil	x15, x19, #0, #56
    572c:	f9459268 	ldr	x8, [x19,#2848]
    5730:	b340de6f 	bfxil	x15, x19, #0, #56
    5734:	f9448660 	ldr	x0, [x19,#2312]
    5738:	52804001 	mov	w1, #0x200                 	// #512
    573c:	2a1f03e2 	mov	w2, wzr
    5740:	b340dd0f 	bfxil	x15, x8, #0, #56
    5744:	f9400508 	ldr	x8, [x8,#8]
    5748:	b340dd0f 	bfxil	x15, x8, #0, #56
    574c:	f9404d08 	ldr	x8, [x8,#152]
    5750:	b340dd0f 	bfxil	x15, x8, #0, #56
    5754:	f940011f 	ldr	xzr, [x8]
    5758:	d63f0100 	blr	x8
    575c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    5760:	91000000 	add	x0, x0, #0x0
    5764:	94000000 	bl	0 <printk>
    5768:	b340deaf 	bfxil	x15, x21, #0, #56
    576c:	b940a2a8 	ldr	w8, [x21,#160]
    5770:	b340deaf 	bfxil	x15, x21, #0, #56
    5774:	b940b2a9 	ldr	w9, [x21,#176]
    5778:	b340deaf 	bfxil	x15, x21, #0, #56
    577c:	f940caa2 	ldr	x2, [x21,#400]
    5780:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    5784:	91000000 	add	x0, x0, #0x0
    5788:	4b090108 	sub	w8, w8, w9
    578c:	93407d03 	sxtw	x3, w8
    5790:	52800041 	mov	w1, #0x2                   	// #2
    5794:	94000000 	bl	0 <print_hex_dump_bytes>
    5798:	b340deaf 	bfxil	x15, x21, #0, #56
    579c:	b940a2a8 	ldr	w8, [x21,#160]
    57a0:	531c7d09 	lsr	w9, w8, #28
    57a4:	35003aa9 	cbnz	w9, 5ef8 <stmmac_xmit+0x135c>
    57a8:	b340de6f 	bfxil	x15, x19, #0, #56
    57ac:	f941e275 	ldr	x21, [x19,#960]
    57b0:	f94002bf 	ldr	xzr, [x21]
    57b4:	b340deaf 	bfxil	x15, x21, #0, #56
    57b8:	b900caa8 	str	w8, [x21,#200]
    57bc:	b340deaf 	bfxil	x15, x21, #0, #56
    57c0:	b940c2a9 	ldr	w9, [x21,#192]
    57c4:	0b080128 	add	w8, w9, w8
    57c8:	f94002bf 	ldr	xzr, [x21]
    57cc:	b340deaf 	bfxil	x15, x21, #0, #56
    57d0:	b900c2a8 	str	w8, [x21,#192]
    57d4:	b340deaf 	bfxil	x15, x21, #0, #56
    57d8:	b940c6a8 	ldr	w8, [x21,#196]
    57dc:	b340deaf 	bfxil	x15, x21, #0, #56
    57e0:	b940c2a9 	ldr	w9, [x21,#192]
    57e4:	6b09011f 	cmp	w8, w9
    57e8:	540038c4 	b.mi	5f00 <stmmac_xmit+0x1364>
    57ec:	b340de6f 	bfxil	x15, x19, #0, #56
    57f0:	f9459268 	ldr	x8, [x19,#2848]
    57f4:	b340de6f 	bfxil	x15, x19, #0, #56
    57f8:	f9458660 	ldr	x0, [x19,#2824]
    57fc:	b340de6f 	bfxil	x15, x19, #0, #56
    5800:	b9526e61 	ldr	w1, [x19,#4716]
    5804:	2a1f03e2 	mov	w2, wzr
    5808:	b340dd0f 	bfxil	x15, x8, #0, #56
    580c:	f9400908 	ldr	x8, [x8,#16]
    5810:	b340dd0f 	bfxil	x15, x8, #0, #56
    5814:	f9404d08 	ldr	x8, [x8,#152]
    5818:	b340dd0f 	bfxil	x15, x8, #0, #56
    581c:	f940011f 	ldr	xzr, [x8]
    5820:	d63f0100 	blr	x8
    5824:	aa1603e0 	mov	x0, x22
    5828:	14000143 	b	5d34 <stmmac_xmit+0x1198>
    582c:	aa1403e0 	mov	x0, x20
    5830:	94000000 	bl	0 <_raw_spin_unlock>
    5834:	b340de6f 	bfxil	x15, x19, #0, #56
    5838:	f941e261 	ldr	x1, [x19,#960]
    583c:	f8490c28 	ldr	x8, [x1,#144]!
    5840:	37002c68 	tbnz	w8, #0, 5dcc <stmmac_xmit+0x1230>
    5844:	2a1f03e0 	mov	w0, wzr
    5848:	94000000 	bl	0 <set_bit>
    584c:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    5850:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    5854:	91000000 	add	x0, x0, #0x0
    5858:	91000021 	add	x1, x1, #0x0
    585c:	94000000 	bl	0 <printk>
    5860:	52800200 	mov	w0, #0x10                  	// #16
    5864:	14000136 	b	5d3c <stmmac_xmit+0x11a0>
    5868:	b340de6f 	bfxil	x15, x19, #0, #56
    586c:	f9448668 	ldr	x8, [x19,#2312]
    5870:	8b3ad115 	add	x21, x8, w26, sxtw #4
    5874:	17fffd4f 	b	4db0 <stmmac_xmit+0x214>
    5878:	b340de6f 	bfxil	x15, x19, #0, #56
    587c:	b9512668 	ldr	w8, [x19,#4388]
    5880:	7100fd1f 	cmp	w8, #0x3f
    5884:	540037ec 	b.gt	5f80 <stmmac_xmit+0x13e4>
    5888:	b340de6f 	bfxil	x15, x19, #0, #56
    588c:	f9459268 	ldr	x8, [x19,#2848]
    5890:	f94023e0 	ldr	x0, [sp,#64]
    5894:	aa1b03e1 	mov	x1, x27
    5898:	2a1703e2 	mov	w2, w23
    589c:	b340dd0f 	bfxil	x15, x8, #0, #56
    58a0:	f9400d08 	ldr	x8, [x8,#24]
    58a4:	b340dd0f 	bfxil	x15, x8, #0, #56
    58a8:	f9400908 	ldr	x8, [x8,#16]
    58ac:	b340dd0f 	bfxil	x15, x8, #0, #56
    58b0:	f940011f 	ldr	xzr, [x8]
    58b4:	d63f0100 	blr	x8
    58b8:	37f81380 	tbnz	w0, #31, 5b28 <stmmac_xmit+0xf8c>
    58bc:	f94027fb 	ldr	x27, [sp,#72]
    58c0:	2a0003fa 	mov	w26, w0
    58c4:	52800028 	mov	w8, #0x1                   	// #1
    58c8:	b90013e8 	str	w8, [sp,#16]
    58cc:	f9401bf9 	ldr	x25, [sp,#48]
    58d0:	f90003f5 	str	x21, [sp]
    58d4:	35ffaa19 	cbnz	w25, 4e14 <stmmac_xmit+0x278>
    58d8:	aa1503f9 	mov	x25, x21
    58dc:	11000748 	add	w8, w26, #0x1
    58e0:	12002108 	and	w8, w8, #0x1ff
    58e4:	f940027f 	ldr	xzr, [x19]
    58e8:	b340de6f 	bfxil	x15, x19, #0, #56
    58ec:	b9091a68 	str	w8, [x19,#2328]
    58f0:	52822529 	mov	w9, #0x1129                	// #4393
    58f4:	38696a69 	ldrb	w9, [x19,x9]
    58f8:	362003c9 	tbz	w9, #4, 5970 <stmmac_xmit+0xdd4>
    58fc:	b340de6f 	bfxil	x15, x19, #0, #56
    5900:	b951b669 	ldr	w9, [x19,#4532]
    5904:	b340de6f 	bfxil	x15, x19, #0, #56
    5908:	f9459268 	ldr	x8, [x19,#2848]
    590c:	9124226a 	add	x10, x19, #0x908
    5910:	52804001 	mov	w1, #0x200                 	// #512
    5914:	7100013f 	cmp	w9, #0x0
    5918:	f94023e9 	ldr	x9, [sp,#64]
    591c:	b340dd0f 	bfxil	x15, x8, #0, #56
    5920:	f9400508 	ldr	x8, [x8,#8]
    5924:	2a1f03e2 	mov	w2, wzr
    5928:	9a890149 	csel	x9, x10, x9, eq
    592c:	b340dd2f 	bfxil	x15, x9, #0, #56
    5930:	f9400120 	ldr	x0, [x9]
    5934:	b340dd0f 	bfxil	x15, x8, #0, #56
    5938:	f9404d08 	ldr	x8, [x8,#152]
    593c:	b340dd0f 	bfxil	x15, x8, #0, #56
    5940:	f940011f 	ldr	xzr, [x8]
    5944:	d63f0100 	blr	x8
    5948:	b340df6f 	bfxil	x15, x27, #0, #56
    594c:	f940cb62 	ldr	x2, [x27,#400]
    5950:	b340df6f 	bfxil	x15, x27, #0, #56
    5954:	b980a363 	ldrsw	x3, [x27,#160]
    5958:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    595c:	91000000 	add	x0, x0, #0x0
    5960:	52800041 	mov	w1, #0x2                   	// #2
    5964:	94000000 	bl	0 <print_hex_dump_bytes>
    5968:	b340de6f 	bfxil	x15, x19, #0, #56
    596c:	b9491a68 	ldr	w8, [x19,#2328]
    5970:	b340de6f 	bfxil	x15, x19, #0, #56
    5974:	b9491e69 	ldr	w9, [x19,#2332]
    5978:	2a2803ea 	mvn	w10, w8
    597c:	6b080128 	subs	w8, w9, w8
    5980:	0b0a012a 	add	w10, w9, w10
    5984:	1107fd08 	add	w8, w8, #0x1ff
    5988:	1a888148 	csel	w8, w10, w8, hi
    598c:	7100491f 	cmp	w8, #0x12
    5990:	f9401be8 	ldr	x8, [sp,#48]
    5994:	11000514 	add	w20, w8, #0x1
    5998:	54001e69 	b.ls	5d64 <stmmac_xmit+0x11c8>
    599c:	b940a368 	ldr	w8, [x27,#160]
    59a0:	b340de6f 	bfxil	x15, x19, #0, #56
    59a4:	f940a669 	ldr	x9, [x19,#328]
    59a8:	b340de6f 	bfxil	x15, x19, #0, #56
    59ac:	b949226a 	ldr	w10, [x19,#2336]
    59b0:	b340de6f 	bfxil	x15, x19, #0, #56
    59b4:	b949266b 	ldr	w11, [x19,#2340]
    59b8:	8b080128 	add	x8, x9, x8
    59bc:	0b0a0289 	add	w9, w20, w10
    59c0:	6b09017f 	cmp	w11, w9
    59c4:	f940027f 	ldr	xzr, [x19]
    59c8:	b340de6f 	bfxil	x15, x19, #0, #56
    59cc:	f900a668 	str	x8, [x19,#328]
    59d0:	f940027f 	ldr	xzr, [x19]
    59d4:	b340de6f 	bfxil	x15, x19, #0, #56
    59d8:	b9092269 	str	w9, [x19,#2336]
    59dc:	54001d09 	b.ls	5d7c <stmmac_xmit+0x11e0>
    59e0:	90000008 	adrp	x8, 0 <jiffies>
    59e4:	b340dd0f 	bfxil	x15, x8, #0, #56
    59e8:	f9400114 	ldr	x20, [x8]
    59ec:	b340de6f 	bfxil	x15, x19, #0, #56
    59f0:	b9492a60 	ldr	w0, [x19,#2344]
    59f4:	91254277 	add	x23, x19, #0x950
    59f8:	94000000 	bl	0 <__usecs_to_jiffies>
    59fc:	8b140001 	add	x1, x0, x20
    5a00:	aa1703e0 	mov	x0, x23
    5a04:	94000000 	bl	0 <mod_timer>
    5a08:	f9401bf4 	ldr	x20, [sp,#48]
    5a0c:	b94027f5 	ldr	w21, [sp,#36]
    5a10:	b9401bf6 	ldr	w22, [sp,#24]
    5a14:	b94013f7 	ldr	w23, [sp,#16]
    5a18:	b340de6f 	bfxil	x15, x19, #0, #56
    5a1c:	b9494668 	ldr	w8, [x19,#2372]
    5a20:	350001a8 	cbnz	w8, 5a54 <stmmac_xmit+0xeb8>
    5a24:	b340df6f 	bfxil	x15, x27, #0, #56
    5a28:	f940c368 	ldr	x8, [x27,#384]
    5a2c:	b9417369 	ldr	w9, [x27,#368]
    5a30:	8b090108 	add	x8, x8, x9
    5a34:	b340dd0f 	bfxil	x15, x8, #0, #56
    5a38:	39400508 	ldrb	w8, [x8,#1]
    5a3c:	121f0508 	and	w8, w8, #0x6
    5a40:	7100091f 	cmp	w8, #0x2
    5a44:	54000081 	b.ne	5a54 <stmmac_xmit+0xeb8>
    5a48:	aa1b03e0 	mov	x0, x27
    5a4c:	aa1f03e1 	mov	x1, xzr
    5a50:	94000000 	bl	0 <skb_tstamp_tx>
    5a54:	370010f7 	tbnz	w23, #0, 5c70 <stmmac_xmit+0x10d4>
    5a58:	b340de6f 	bfxil	x15, x19, #0, #56
    5a5c:	f9458e60 	ldr	x0, [x19,#2840]
    5a60:	b340df6f 	bfxil	x15, x27, #0, #56
    5a64:	f940cb68 	ldr	x8, [x27,#400]
    5a68:	4b1602b8 	sub	w24, w21, w22
    5a6c:	7100029f 	cmp	w20, #0x0
    5a70:	1a9f17f4 	cset	w20, eq
    5a74:	2a1803e3 	mov	w3, w24
    5a78:	b4000080 	cbz	x0, 5a88 <stmmac_xmit+0xeec>
    5a7c:	b340dc0f 	bfxil	x15, x0, #0, #56
    5a80:	f9412409 	ldr	x9, [x0,#584]
    5a84:	b5000069 	cbnz	x9, 5a90 <stmmac_xmit+0xef4>
    5a88:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    5a8c:	91000129 	add	x9, x9, #0x0
    5a90:	b340dd2f 	bfxil	x15, x9, #0, #56
    5a94:	f9401129 	ldr	x9, [x9,#32]
    5a98:	d346fd0a 	lsr	x10, x8, #6
    5a9c:	d2dff7eb 	mov	x11, #0xffbf00000000        	// #281195803836416
    5aa0:	927a654a 	and	x10, x10, #0xffffffc0
    5aa4:	f2ffffeb 	movk	x11, #0xffff, lsl #48
    5aa8:	aa0b0141 	orr	x1, x10, x11
    5aac:	92402d02 	and	x2, x8, #0xfff
    5ab0:	52800024 	mov	w4, #0x1                   	// #1
    5ab4:	aa1f03e5 	mov	x5, xzr
    5ab8:	b340dd2f 	bfxil	x15, x9, #0, #56
    5abc:	f940013f 	ldr	xzr, [x9]
    5ac0:	d63f0120 	blr	x9
    5ac4:	b340de6f 	bfxil	x15, x19, #0, #56
    5ac8:	f9458e68 	ldr	x8, [x19,#2840]
    5acc:	aa0003f9 	mov	x25, x0
    5ad0:	92407c17 	and	x23, x0, #0xffffffff
    5ad4:	b4000508 	cbz	x8, 5b74 <stmmac_xmit+0xfd8>
    5ad8:	b340dd0f 	bfxil	x15, x8, #0, #56
    5adc:	f9412509 	ldr	x9, [x8,#584]
    5ae0:	b40004a9 	cbz	x9, 5b74 <stmmac_xmit+0xfd8>
    5ae4:	b340dd2f 	bfxil	x15, x9, #0, #56
    5ae8:	f9403929 	ldr	x9, [x9,#112]
    5aec:	b40004e9 	cbz	x9, 5b88 <stmmac_xmit+0xfec>
    5af0:	b4000088 	cbz	x8, 5b00 <stmmac_xmit+0xf64>
    5af4:	b340dd0f 	bfxil	x15, x8, #0, #56
    5af8:	f9412509 	ldr	x9, [x8,#584]
    5afc:	b5000069 	cbnz	x9, 5b08 <stmmac_xmit+0xf6c>
    5b00:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    5b04:	91000129 	add	x9, x9, #0x0
    5b08:	b340dd2f 	bfxil	x15, x9, #0, #56
    5b0c:	f9403929 	ldr	x9, [x9,#112]
    5b10:	aa0803e0 	mov	x0, x8
    5b14:	aa1703e1 	mov	x1, x23
    5b18:	b340dd2f 	bfxil	x15, x9, #0, #56
    5b1c:	f940013f 	ldr	xzr, [x9]
    5b20:	d63f0120 	blr	x9
    5b24:	34000320 	cbz	w0, 5b88 <stmmac_xmit+0xfec>
    5b28:	f94017e0 	ldr	x0, [sp,#40]
    5b2c:	94000000 	bl	0 <_raw_spin_unlock>
    5b30:	b340de6f 	bfxil	x15, x19, #0, #56
    5b34:	f9458e60 	ldr	x0, [x19,#2840]
    5b38:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    5b3c:	91000021 	add	x1, x1, #0x0
    5b40:	94000000 	bl	0 <dev_err>
    5b44:	f94027e0 	ldr	x0, [sp,#72]
    5b48:	94000000 	bl	0 <consume_skb>
    5b4c:	b340de6f 	bfxil	x15, x19, #0, #56
    5b50:	f9458a68 	ldr	x8, [x19,#2832]
    5b54:	2a1f03e0 	mov	w0, wzr
    5b58:	b340dd0f 	bfxil	x15, x8, #0, #56
    5b5c:	f940b509 	ldr	x9, [x8,#360]
    5b60:	91000529 	add	x9, x9, #0x1
    5b64:	f940011f 	ldr	xzr, [x8]
    5b68:	b340dd0f 	bfxil	x15, x8, #0, #56
    5b6c:	f900b509 	str	x9, [x8,#360]
    5b70:	14000073 	b	5d3c <stmmac_xmit+0x11a0>
    5b74:	90000009 	adrp	x9, 0 <dummy_dma_ops>
    5b78:	91000129 	add	x9, x9, #0x0
    5b7c:	b340dd2f 	bfxil	x15, x9, #0, #56
    5b80:	f9403929 	ldr	x9, [x9,#112]
    5b84:	b5fffb69 	cbnz	x9, 5af0 <stmmac_xmit+0xf54>
    5b88:	a94027f5 	ldp	x21, x9, [sp]
    5b8c:	b340de6f 	bfxil	x15, x19, #0, #56
    5b90:	f9449a68 	ldr	x8, [x19,#2352]
    5b94:	f94027fb 	ldr	x27, [sp,#72]
    5b98:	2a0903e9 	mov	w9, w9
    5b9c:	8b090529 	add	x9, x9, x9, lsl #1
    5ba0:	d37df129 	lsl	x9, x9, #3
    5ba4:	f8296917 	str	x23, [x8,x9]
    5ba8:	b340de6f 	bfxil	x15, x19, #0, #56
    5bac:	b9512668 	ldr	w8, [x19,#4388]
    5bb0:	7101011f 	cmp	w8, #0x40
    5bb4:	1a9fa7e8 	cset	w8, lt
    5bb8:	d37df108 	lsl	x8, x8, #3
    5bbc:	b8286ab9 	str	w25, [x21,x8]
    5bc0:	b340de6f 	bfxil	x15, x19, #0, #56
    5bc4:	f9449a68 	ldr	x8, [x19,#2352]
    5bc8:	8b090108 	add	x8, x8, x9
    5bcc:	f940011f 	ldr	xzr, [x8]
    5bd0:	b340dd0f 	bfxil	x15, x8, #0, #56
    5bd4:	b9000d18 	str	w24, [x8,#12]
    5bd8:	b340de6f 	bfxil	x15, x19, #0, #56
    5bdc:	f9449a68 	ldr	x8, [x19,#2352]
    5be0:	8b090108 	add	x8, x8, x9
    5be4:	f940011f 	ldr	xzr, [x8]
    5be8:	b340dd0f 	bfxil	x15, x8, #0, #56
    5bec:	39004114 	strb	w20, [x8,#16]
    5bf0:	b340df6f 	bfxil	x15, x27, #0, #56
    5bf4:	f940c368 	ldr	x8, [x27,#384]
    5bf8:	b9417369 	ldr	w9, [x27,#368]
    5bfc:	8b090108 	add	x8, x8, x9
    5c00:	b340dd0f 	bfxil	x15, x8, #0, #56
    5c04:	39400509 	ldrb	w9, [x8,#1]
    5c08:	36000089 	tbz	w9, #0, 5c18 <stmmac_xmit+0x107c>
    5c0c:	b340de6f 	bfxil	x15, x19, #0, #56
    5c10:	b949466a 	ldr	w10, [x19,#2372]
    5c14:	3500120a 	cbnz	w10, 5e54 <stmmac_xmit+0x12b8>
    5c18:	b340de6f 	bfxil	x15, x19, #0, #56
    5c1c:	f9459268 	ldr	x8, [x19,#2848]
    5c20:	f9401be9 	ldr	x9, [sp,#48]
    5c24:	b340de6f 	bfxil	x15, x19, #0, #56
    5c28:	b951b264 	ldr	w4, [x19,#4528]
    5c2c:	52800021 	mov	w1, #0x1                   	// #1
    5c30:	b340dd0f 	bfxil	x15, x8, #0, #56
    5c34:	f9400508 	ldr	x8, [x8,#8]
    5c38:	7100013f 	cmp	w9, #0x0
    5c3c:	b9403be9 	ldr	w9, [sp,#56]
    5c40:	1a9f17e6 	cset	w6, eq
    5c44:	b340dd0f 	bfxil	x15, x8, #0, #56
    5c48:	f9400908 	ldr	x8, [x8,#16]
    5c4c:	52800025 	mov	w5, #0x1                   	// #1
    5c50:	710c013f 	cmp	w9, #0x300
    5c54:	1a9f17e3 	cset	w3, eq
    5c58:	aa1503e0 	mov	x0, x21
    5c5c:	2a1803e2 	mov	w2, w24
    5c60:	b340dd0f 	bfxil	x15, x8, #0, #56
    5c64:	f940011f 	ldr	xzr, [x8]
    5c68:	d63f0100 	blr	x8
    5c6c:	d5033abf 	dmb	ishst
    5c70:	b340df6f 	bfxil	x15, x27, #0, #56
    5c74:	b940a368 	ldr	w8, [x27,#160]
    5c78:	531c7d09 	lsr	w9, w8, #28
    5c7c:	35000ac9 	cbnz	w9, 5dd4 <stmmac_xmit+0x1238>
    5c80:	b340de6f 	bfxil	x15, x19, #0, #56
    5c84:	f941e275 	ldr	x21, [x19,#960]
    5c88:	f94002bf 	ldr	xzr, [x21]
    5c8c:	b340deaf 	bfxil	x15, x21, #0, #56
    5c90:	b900caa8 	str	w8, [x21,#200]
    5c94:	b340deaf 	bfxil	x15, x21, #0, #56
    5c98:	b940c2a9 	ldr	w9, [x21,#192]
    5c9c:	0b080128 	add	w8, w9, w8
    5ca0:	f94002bf 	ldr	xzr, [x21]
    5ca4:	b340deaf 	bfxil	x15, x21, #0, #56
    5ca8:	b900c2a8 	str	w8, [x21,#192]
    5cac:	b340deaf 	bfxil	x15, x21, #0, #56
    5cb0:	b940c6a8 	ldr	w8, [x21,#196]
    5cb4:	b340deaf 	bfxil	x15, x21, #0, #56
    5cb8:	b940c2a9 	ldr	w9, [x21,#192]
    5cbc:	6b09011f 	cmp	w8, w9
    5cc0:	540008e4 	b.mi	5ddc <stmmac_xmit+0x1240>
    5cc4:	b340de6f 	bfxil	x15, x19, #0, #56
    5cc8:	f9459268 	ldr	x8, [x19,#2848]
    5ccc:	b340de6f 	bfxil	x15, x19, #0, #56
    5cd0:	b9512669 	ldr	w9, [x19,#4388]
    5cd4:	f94017f4 	ldr	x20, [sp,#40]
    5cd8:	b340dd0f 	bfxil	x15, x8, #0, #56
    5cdc:	f9400908 	ldr	x8, [x8,#16]
    5ce0:	7100fd3f 	cmp	w9, #0x3f
    5ce4:	5400012c 	b.gt	5d08 <stmmac_xmit+0x116c>
    5ce8:	b340dd0f 	bfxil	x15, x8, #0, #56
    5cec:	f9401908 	ldr	x8, [x8,#48]
    5cf0:	b340de6f 	bfxil	x15, x19, #0, #56
    5cf4:	f9458660 	ldr	x0, [x19,#2824]
    5cf8:	b340dd0f 	bfxil	x15, x8, #0, #56
    5cfc:	f940011f 	ldr	xzr, [x8]
    5d00:	d63f0100 	blr	x8
    5d04:	1400000b 	b	5d30 <stmmac_xmit+0x1194>
    5d08:	b340dd0f 	bfxil	x15, x8, #0, #56
    5d0c:	f9404d08 	ldr	x8, [x8,#152]
    5d10:	b340de6f 	bfxil	x15, x19, #0, #56
    5d14:	f9458660 	ldr	x0, [x19,#2824]
    5d18:	b340de6f 	bfxil	x15, x19, #0, #56
    5d1c:	b9526e61 	ldr	w1, [x19,#4716]
    5d20:	2a1f03e2 	mov	w2, wzr
    5d24:	b340dd0f 	bfxil	x15, x8, #0, #56
    5d28:	f940011f 	ldr	xzr, [x8]
    5d2c:	d63f0100 	blr	x8
    5d30:	aa1403e0 	mov	x0, x20
    5d34:	94000000 	bl	0 <_raw_spin_unlock>
    5d38:	2a1f03e0 	mov	w0, wzr
    5d3c:	a94a7bfd 	ldp	x29, x30, [sp,#160]
    5d40:	a9494ff4 	ldp	x20, x19, [sp,#144]
    5d44:	a94857f6 	ldp	x22, x21, [sp,#128]
    5d48:	a9475ff8 	ldp	x24, x23, [sp,#112]
    5d4c:	a94667fa 	ldp	x26, x25, [sp,#96]
    5d50:	a9456ffc 	ldp	x28, x27, [sp,#80]
    5d54:	9102c3ff 	add	sp, sp, #0xb0
    5d58:	b340dfcf 	bfxil	x15, x30, #0, #56
    5d5c:	f94003df 	ldr	xzr, [x30]
    5d60:	d65f03c0 	ret
    5d64:	b340de6f 	bfxil	x15, x19, #0, #56
    5d68:	f941e268 	ldr	x8, [x19,#960]
    5d6c:	2a1f03e0 	mov	w0, wzr
    5d70:	91024101 	add	x1, x8, #0x90
    5d74:	94000000 	bl	0 <set_bit>
    5d78:	17ffff09 	b	599c <stmmac_xmit+0xe00>
    5d7c:	b340de6f 	bfxil	x15, x19, #0, #56
    5d80:	f9459268 	ldr	x8, [x19,#2848]
    5d84:	f940027f 	ldr	xzr, [x19]
    5d88:	b340de6f 	bfxil	x15, x19, #0, #56
    5d8c:	b909227f 	str	wzr, [x19,#2336]
    5d90:	aa1903e0 	mov	x0, x25
    5d94:	b340dd0f 	bfxil	x15, x8, #0, #56
    5d98:	f9400508 	ldr	x8, [x8,#8]
    5d9c:	b340dd0f 	bfxil	x15, x8, #0, #56
    5da0:	f9401d08 	ldr	x8, [x8,#56]
    5da4:	b340dd0f 	bfxil	x15, x8, #0, #56
    5da8:	f940011f 	ldr	xzr, [x8]
    5dac:	d63f0100 	blr	x8
    5db0:	b340de6f 	bfxil	x15, x19, #0, #56
    5db4:	f946b668 	ldr	x8, [x19,#3432]
    5db8:	91000508 	add	x8, x8, #0x1
    5dbc:	f940027f 	ldr	xzr, [x19]
    5dc0:	b340de6f 	bfxil	x15, x19, #0, #56
    5dc4:	f906b668 	str	x8, [x19,#3432]
    5dc8:	17ffff10 	b	5a08 <stmmac_xmit+0xe6c>
    5dcc:	52800200 	mov	w0, #0x10                  	// #16
    5dd0:	17ffffdb 	b	5d3c <stmmac_xmit+0x11a0>
    5dd4:	d4210000 	brk	#0x800
    5dd8:	14000000 	b	5dd8 <stmmac_xmit+0x123c>
    5ddc:	910242b4 	add	x20, x21, #0x90
    5de0:	52800020 	mov	w0, #0x1                   	// #1
    5de4:	aa1403e1 	mov	x1, x20
    5de8:	94000000 	bl	0 <set_bit>
    5dec:	d5033bbf 	dmb	ish
    5df0:	b340deaf 	bfxil	x15, x21, #0, #56
    5df4:	b940c6a8 	ldr	w8, [x21,#196]
    5df8:	b340deaf 	bfxil	x15, x21, #0, #56
    5dfc:	b940c2a9 	ldr	w9, [x21,#192]
    5e00:	6b09011f 	cmp	w8, w9
    5e04:	54fff604 	b.mi	5cc4 <stmmac_xmit+0x1128>
    5e08:	52800020 	mov	w0, #0x1                   	// #1
    5e0c:	aa1403e1 	mov	x1, x20
    5e10:	94000000 	bl	0 <clear_bit>
    5e14:	17ffffac 	b	5cc4 <stmmac_xmit+0x1128>
    5e18:	b340de6f 	bfxil	x15, x19, #0, #56
    5e1c:	f941e261 	ldr	x1, [x19,#960]
    5e20:	f8490c28 	ldr	x8, [x1,#144]!
    5e24:	37000108 	tbnz	w8, #0, 5e44 <stmmac_xmit+0x12a8>
    5e28:	2a1f03e0 	mov	w0, wzr
    5e2c:	94000000 	bl	0 <set_bit>
    5e30:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    5e34:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    5e38:	91000000 	add	x0, x0, #0x0
    5e3c:	91000021 	add	x1, x1, #0x0
    5e40:	94000000 	bl	0 <printk>
    5e44:	aa1603e0 	mov	x0, x22
    5e48:	94000000 	bl	0 <_raw_spin_unlock>
    5e4c:	52800200 	mov	w0, #0x10                  	// #16
    5e50:	17ffffbb 	b	5d3c <stmmac_xmit+0x11a0>
    5e54:	321e0129 	orr	w9, w9, #0x4
    5e58:	f940011f 	ldr	xzr, [x8]
    5e5c:	b340dd0f 	bfxil	x15, x8, #0, #56
    5e60:	39000509 	strb	w9, [x8,#1]
    5e64:	b340de6f 	bfxil	x15, x19, #0, #56
    5e68:	f9459268 	ldr	x8, [x19,#2848]
    5e6c:	aa1503e0 	mov	x0, x21
    5e70:	b340dd0f 	bfxil	x15, x8, #0, #56
    5e74:	f9400508 	ldr	x8, [x8,#8]
    5e78:	b340dd0f 	bfxil	x15, x8, #0, #56
    5e7c:	f9403d08 	ldr	x8, [x8,#120]
    5e80:	b340dd0f 	bfxil	x15, x8, #0, #56
    5e84:	f940011f 	ldr	xzr, [x8]
    5e88:	d63f0100 	blr	x8
    5e8c:	17ffff63 	b	5c18 <stmmac_xmit+0x107c>
    5e90:	b340de6f 	bfxil	x15, x19, #0, #56
    5e94:	f941e268 	ldr	x8, [x19,#960]
    5e98:	2a1f03e0 	mov	w0, wzr
    5e9c:	91024101 	add	x1, x8, #0x90
    5ea0:	94000000 	bl	0 <set_bit>
    5ea4:	17fffda2 	b	552c <stmmac_xmit+0x990>
    5ea8:	b340de6f 	bfxil	x15, x19, #0, #56
    5eac:	f9459268 	ldr	x8, [x19,#2848]
    5eb0:	f940027f 	ldr	xzr, [x19]
    5eb4:	b340de6f 	bfxil	x15, x19, #0, #56
    5eb8:	b909227f 	str	wzr, [x19,#2336]
    5ebc:	aa1a03e0 	mov	x0, x26
    5ec0:	b340dd0f 	bfxil	x15, x8, #0, #56
    5ec4:	f9400508 	ldr	x8, [x8,#8]
    5ec8:	b340dd0f 	bfxil	x15, x8, #0, #56
    5ecc:	f9401d08 	ldr	x8, [x8,#56]
    5ed0:	b340dd0f 	bfxil	x15, x8, #0, #56
    5ed4:	f940011f 	ldr	xzr, [x8]
    5ed8:	d63f0100 	blr	x8
    5edc:	b340de6f 	bfxil	x15, x19, #0, #56
    5ee0:	f946b668 	ldr	x8, [x19,#3432]
    5ee4:	91000508 	add	x8, x8, #0x1
    5ee8:	f940027f 	ldr	xzr, [x19]
    5eec:	b340de6f 	bfxil	x15, x19, #0, #56
    5ef0:	f906b668 	str	x8, [x19,#3432]
    5ef4:	17fffdb8 	b	55d4 <stmmac_xmit+0xa38>
    5ef8:	d4210000 	brk	#0x800
    5efc:	14000000 	b	5efc <stmmac_xmit+0x1360>
    5f00:	910242b4 	add	x20, x21, #0x90
    5f04:	52800020 	mov	w0, #0x1                   	// #1
    5f08:	aa1403e1 	mov	x1, x20
    5f0c:	94000000 	bl	0 <set_bit>
    5f10:	d5033bbf 	dmb	ish
    5f14:	b340deaf 	bfxil	x15, x21, #0, #56
    5f18:	b940c6a8 	ldr	w8, [x21,#196]
    5f1c:	b340deaf 	bfxil	x15, x21, #0, #56
    5f20:	b940c2a9 	ldr	w9, [x21,#192]
    5f24:	6b09011f 	cmp	w8, w9
    5f28:	54ffc624 	b.mi	57ec <stmmac_xmit+0xc50>
    5f2c:	52800020 	mov	w0, #0x1                   	// #1
    5f30:	aa1403e1 	mov	x1, x20
    5f34:	94000000 	bl	0 <clear_bit>
    5f38:	17fffe2d 	b	57ec <stmmac_xmit+0xc50>
    5f3c:	321e0148 	orr	w8, w10, #0x4
    5f40:	f940013f 	ldr	xzr, [x9]
    5f44:	b340dd2f 	bfxil	x15, x9, #0, #56
    5f48:	39000528 	strb	w8, [x9,#1]
    5f4c:	b340de6f 	bfxil	x15, x19, #0, #56
    5f50:	f9459268 	ldr	x8, [x19,#2848]
    5f54:	aa1a03e0 	mov	x0, x26
    5f58:	b340dd0f 	bfxil	x15, x8, #0, #56
    5f5c:	f9400508 	ldr	x8, [x8,#8]
    5f60:	b340dd0f 	bfxil	x15, x8, #0, #56
    5f64:	f9403d08 	ldr	x8, [x8,#120]
    5f68:	b340dd0f 	bfxil	x15, x8, #0, #56
    5f6c:	f940011f 	ldr	xzr, [x8]
    5f70:	d63f0100 	blr	x8
    5f74:	b340deaf 	bfxil	x15, x21, #0, #56
    5f78:	f940c2a8 	ldr	x8, [x21,#384]
    5f7c:	17fffdb2 	b	5644 <stmmac_xmit+0xaa8>
    5f80:	52800028 	mov	w8, #0x1                   	// #1
    5f84:	f94007fa 	ldr	x26, [sp,#8]
    5f88:	b90013e8 	str	w8, [sp,#16]
    5f8c:	17fffe50 	b	58cc <stmmac_xmit+0xd30>

0000000000005f90 <stmmac_set_mac_address>:
    5f90:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    5f94:	a9017bfd 	stp	x29, x30, [sp,#16]
    5f98:	910043fd 	add	x29, sp, #0x10
    5f9c:	aa0103f3 	mov	x19, x1
    5fa0:	aa0003f4 	mov	x20, x0
    5fa4:	94000000 	bl	0 <_mcount>
    5fa8:	aa1403e0 	mov	x0, x20
    5fac:	aa1303e1 	mov	x1, x19
    5fb0:	94000000 	bl	0 <eth_mac_addr>
    5fb4:	2a0003f3 	mov	w19, w0
    5fb8:	350001c0 	cbnz	w0, 5ff0 <stmmac_set_mac_address+0x60>
    5fbc:	b340de8f 	bfxil	x15, x20, #0, #56
    5fc0:	f9459280 	ldr	x0, [x20,#2848]
    5fc4:	910cb289 	add	x9, x20, #0x32c
    5fc8:	b340dd2f 	bfxil	x15, x9, #0, #56
    5fcc:	f9400121 	ldr	x1, [x9]
    5fd0:	2a1f03e2 	mov	w2, wzr
    5fd4:	b340dc0f 	bfxil	x15, x0, #0, #56
    5fd8:	f9400008 	ldr	x8, [x0]
    5fdc:	b340dd0f 	bfxil	x15, x8, #0, #56
    5fe0:	f9401d08 	ldr	x8, [x8,#56]
    5fe4:	b340dd0f 	bfxil	x15, x8, #0, #56
    5fe8:	f940011f 	ldr	xzr, [x8]
    5fec:	d63f0100 	blr	x8
    5ff0:	a9417bfd 	ldp	x29, x30, [sp,#16]
    5ff4:	2a1303e0 	mov	w0, w19
    5ff8:	a8c24ff4 	ldp	x20, x19, [sp],#32
    5ffc:	b340dfcf 	bfxil	x15, x30, #0, #56
    6000:	f94003df 	ldr	xzr, [x30]
    6004:	d65f03c0 	ret

0000000000006008 <stmmac_ioctl>:
    6008:	d10143ff 	sub	sp, sp, #0x50
    600c:	a90257f6 	stp	x22, x21, [sp,#32]
    6010:	a9034ff4 	stp	x20, x19, [sp,#48]
    6014:	a9047bfd 	stp	x29, x30, [sp,#64]
    6018:	910103fd 	add	x29, sp, #0x40
    601c:	2a0203f5 	mov	w21, w2
    6020:	aa0103f3 	mov	x19, x1
    6024:	aa0003f4 	mov	x20, x0
    6028:	94000000 	bl	0 <_mcount>
    602c:	b340de8f 	bfxil	x15, x20, #0, #56
    6030:	f9402688 	ldr	x8, [x20,#72]
    6034:	37000068 	tbnz	w8, #0, 6040 <stmmac_ioctl+0x38>
    6038:	128002b5 	mov	w21, #0xffffffea            	// #-22
    603c:	14000144 	b	654c <stmmac_ioctl+0x544>
    6040:	129128c8 	mov	w8, #0xffff76b9            	// #-35143
    6044:	0b0802a8 	add	w8, w21, w8
    6048:	71000d1f 	cmp	w8, #0x3
    604c:	54000122 	b.cs	6070 <stmmac_ioctl+0x68>
    6050:	b340de8f 	bfxil	x15, x20, #0, #56
    6054:	f945a280 	ldr	x0, [x20,#2880]
    6058:	b4ffff00 	cbz	x0, 6038 <stmmac_ioctl+0x30>
    605c:	aa1303e1 	mov	x1, x19
    6060:	2a1503e2 	mov	w2, w21
    6064:	94000000 	bl	0 <phy_mii_ioctl>
    6068:	2a0003f5 	mov	w21, w0
    606c:	14000138 	b	654c <stmmac_ioctl+0x544>
    6070:	52913608 	mov	w8, #0x89b0                	// #35248
    6074:	6b0802bf 	cmp	w21, w8
    6078:	54000681 	b.ne	6148 <stmmac_ioctl+0x140>
    607c:	b340de8f 	bfxil	x15, x20, #0, #56
    6080:	b94fb288 	ldr	w8, [x20,#4016]
    6084:	35000088 	cbnz	w8, 6094 <stmmac_ioctl+0x8c>
    6088:	b340de8f 	bfxil	x15, x20, #0, #56
    608c:	b9524688 	ldr	w8, [x20,#4676]
    6090:	34000708 	cbz	w8, 6170 <stmmac_ioctl+0x168>
    6094:	b340de6f 	bfxil	x15, x19, #0, #56
    6098:	f9400a61 	ldr	x1, [x19,#16]
    609c:	d5384116 	mrs	x22, sp_el0
    60a0:	b340decf 	bfxil	x15, x22, #0, #56
    60a4:	f94006c8 	ldr	x8, [x22,#8]
    60a8:	aa0103e9 	mov	x9, x1
    60ac:	b1003129 	adds	x9, x9, #0xc
    60b0:	9a8883e8 	csel	x8, xzr, x8, hi
    60b4:	da9f3129 	csinv	x9, x9, xzr, cc
    60b8:	fa08013f 	sbcs	xzr, x9, x8
    60bc:	9a9f87e9 	cset	x9, ls
    60c0:	b4000489 	cbz	x9, 6150 <stmmac_ioctl+0x148>
    60c4:	910043e0 	add	x0, sp, #0x10
    60c8:	52800182 	mov	w2, #0xc                   	// #12
    60cc:	94000000 	bl	0 <__arch_copy_from_user>
    60d0:	b50024e0 	cbnz	x0, 656c <stmmac_ioctl+0x564>
    60d4:	b94013e8 	ldr	w8, [sp,#16]
    60d8:	35fffb08 	cbnz	w8, 6038 <stmmac_ioctl+0x30>
    60dc:	b94017e8 	ldr	w8, [sp,#20]
    60e0:	7100051f 	cmp	w8, #0x1
    60e4:	54000608 	b.hi	61a4 <stmmac_ioctl+0x19c>
    60e8:	b340de8f 	bfxil	x15, x20, #0, #56
    60ec:	b952468a 	ldr	w10, [x20,#4676]
    60f0:	b9401be9 	ldr	w9, [sp,#24]
    60f4:	340005ca 	cbz	w10, 61ac <stmmac_ioctl+0x1a4>
    60f8:	7100393f 	cmp	w9, #0xe
    60fc:	12800435 	mov	w21, #0xffffffde            	// #-34
    6100:	54002268 	b.hi	654c <stmmac_ioctl+0x544>
    6104:	9000000a 	adrp	x10, 0 <stmmac_disable_eee_mode>
    6108:	2a0903e9 	mov	w9, w9
    610c:	9100014a 	add	x10, x10, #0x0
    6110:	100000cb 	adr	x11, 6128 <stmmac_ioctl+0x120>
    6114:	3869694c 	ldrb	w12, [x10,x9]
    6118:	8b0c096b 	add	x11, x11, x12, lsl #2
    611c:	b340dd6f 	bfxil	x15, x11, #0, #56
    6120:	f940017f 	ldr	xzr, [x11]
    6124:	d61f0160 	br	x11
    6128:	2a1f03f1 	mov	w17, wzr
    612c:	2a1f03ee 	mov	w14, wzr
    6130:	2a1f03ef 	mov	w15, wzr
    6134:	2a1f03ed 	mov	w13, wzr
    6138:	2a1f03eb 	mov	w11, wzr
    613c:	2a1f03ec 	mov	w12, wzr
    6140:	2a1f03e9 	mov	w9, wzr
    6144:	1400002a 	b	61ec <stmmac_ioctl+0x1e4>
    6148:	12800bd5 	mov	w21, #0xffffffa1            	// #-95
    614c:	14000100 	b	654c <stmmac_ioctl+0x544>
    6150:	52800182 	mov	w2, #0xc                   	// #12
    6154:	910043e8 	add	x8, sp, #0x10
    6158:	cb020108 	sub	x8, x8, x2
    615c:	91003100 	add	x0, x8, #0xc
    6160:	2a1f03e1 	mov	w1, wzr
    6164:	94000000 	bl	0 <memset>
    6168:	128001b5 	mov	w21, #0xfffffff2            	// #-14
    616c:	140000f8 	b	654c <stmmac_ioctl+0x544>
    6170:	b340de8f 	bfxil	x15, x20, #0, #56
    6174:	f9458a80 	ldr	x0, [x20,#2832]
    6178:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    617c:	91000021 	add	x1, x1, #0x0
    6180:	94000000 	bl	0 <netdev_alert>
    6184:	f940029f 	ldr	xzr, [x20]
    6188:	b340de8f 	bfxil	x15, x20, #0, #56
    618c:	b909469f 	str	wzr, [x20,#2372]
    6190:	f940029f 	ldr	xzr, [x20]
    6194:	b340de8f 	bfxil	x15, x20, #0, #56
    6198:	b909f29f 	str	wzr, [x20,#2544]
    619c:	12800bd5 	mov	w21, #0xffffffa1            	// #-95
    61a0:	140000eb 	b	654c <stmmac_ioctl+0x544>
    61a4:	12800435 	mov	w21, #0xffffffde            	// #-34
    61a8:	140000e9 	b	654c <stmmac_ioctl+0x544>
    61ac:	34000149 	cbz	w9, 61d4 <stmmac_ioctl+0x1cc>
    61b0:	2a1f03ee 	mov	w14, wzr
    61b4:	2a1f03ef 	mov	w15, wzr
    61b8:	2a1f03ed 	mov	w13, wzr
    61bc:	2a1f03eb 	mov	w11, wzr
    61c0:	2a1f03ec 	mov	w12, wzr
    61c4:	2a1f03e9 	mov	w9, wzr
    61c8:	2a1f03ea 	mov	w10, wzr
    61cc:	52800071 	mov	w17, #0x3                   	// #3
    61d0:	14000037 	b	62ac <stmmac_ioctl+0x2a4>
    61d4:	2a1f03f1 	mov	w17, wzr
    61d8:	2a1f03ee 	mov	w14, wzr
    61dc:	2a1f03ef 	mov	w15, wzr
    61e0:	2a1f03ed 	mov	w13, wzr
    61e4:	2a1f03eb 	mov	w11, wzr
    61e8:	2a1f03ec 	mov	w12, wzr
    61ec:	2a1f03ea 	mov	w10, wzr
    61f0:	b9001bff 	str	wzr, [sp,#24]
    61f4:	52804070 	mov	w16, #0x203                 	// #515
    61f8:	14000067 	b	6394 <stmmac_ioctl+0x38c>
    61fc:	52800031 	mov	w17, #0x1                   	// #1
    6200:	2a1f03ee 	mov	w14, wzr
    6204:	2a1f03ef 	mov	w15, wzr
    6208:	2a1f03ed 	mov	w13, wzr
    620c:	2a1f03eb 	mov	w11, wzr
    6210:	2a1f03ec 	mov	w12, wzr
    6214:	2a1f03e9 	mov	w9, wzr
    6218:	2a1f03ea 	mov	w10, wzr
    621c:	b9001bf1 	str	w17, [sp,#24]
    6220:	52806070 	mov	w16, #0x303                 	// #771
    6224:	1400005c 	b	6394 <stmmac_ioctl+0x38c>
    6228:	5280006c 	mov	w12, #0x3                   	// #3
    622c:	b9001bec 	str	w12, [sp,#24]
    6230:	b340de8f 	bfxil	x15, x20, #0, #56
    6234:	f947c28c 	ldr	x12, [x20,#3968]
    6238:	52a00071 	mov	w17, #0x30000               	// #196608
    623c:	52a00032 	mov	w18, #0x10000               	// #65536
    6240:	2a1f03ee 	mov	w14, wzr
    6244:	b340dd8f 	bfxil	x15, x12, #0, #56
    6248:	b940b18c 	ldr	w12, [x12,#176]
    624c:	2a1f03eb 	mov	w11, wzr
    6250:	2a1f03e9 	mov	w9, wzr
    6254:	2a1f03ea 	mov	w10, wzr
    6258:	7100019f 	cmp	w12, #0x0
    625c:	5282000d 	mov	w13, #0x1000                	// #4096
    6260:	5284000f 	mov	w15, #0x2000                	// #8192
    6264:	52804070 	mov	w16, #0x203                 	// #515
    6268:	1a91024c 	csel	w12, w18, w17, eq
    626c:	14000049 	b	6390 <stmmac_ioctl+0x388>
    6270:	2a1f03ee 	mov	w14, wzr
    6274:	2a1f03eb 	mov	w11, wzr
    6278:	2a1f03ec 	mov	w12, wzr
    627c:	2a1f03e9 	mov	w9, wzr
    6280:	52800091 	mov	w17, #0x4                   	// #4
    6284:	5288000a 	mov	w10, #0x4000                	// #16384
    6288:	14000007 	b	62a4 <stmmac_ioctl+0x29c>
    628c:	2a1f03ee 	mov	w14, wzr
    6290:	2a1f03eb 	mov	w11, wzr
    6294:	2a1f03ec 	mov	w12, wzr
    6298:	528000b1 	mov	w17, #0x5                   	// #5
    629c:	5288000a 	mov	w10, #0x4000                	// #16384
    62a0:	52900009 	mov	w9, #0x8000                	// #32768
    62a4:	5282000d 	mov	w13, #0x1000                	// #4096
    62a8:	5284000f 	mov	w15, #0x2000                	// #8192
    62ac:	52804070 	mov	w16, #0x203                 	// #515
    62b0:	14000037 	b	638c <stmmac_ioctl+0x384>
    62b4:	528000cc 	mov	w12, #0x6                   	// #6
    62b8:	b9001bec 	str	w12, [sp,#24]
    62bc:	b340de8f 	bfxil	x15, x20, #0, #56
    62c0:	f947c28c 	ldr	x12, [x20,#3968]
    62c4:	2a1f03eb 	mov	w11, wzr
    62c8:	2a1f03e9 	mov	w9, wzr
    62cc:	2a1f03ea 	mov	w10, wzr
    62d0:	52a00071 	mov	w17, #0x30000               	// #196608
    62d4:	52a00032 	mov	w18, #0x10000               	// #65536
    62d8:	14000016 	b	6330 <stmmac_ioctl+0x328>
    62dc:	2a1f03eb 	mov	w11, wzr
    62e0:	2a1f03ec 	mov	w12, wzr
    62e4:	2a1f03e9 	mov	w9, wzr
    62e8:	528000f1 	mov	w17, #0x7                   	// #7
    62ec:	5288000a 	mov	w10, #0x4000                	// #16384
    62f0:	14000023 	b	637c <stmmac_ioctl+0x374>
    62f4:	2a1f03eb 	mov	w11, wzr
    62f8:	2a1f03ec 	mov	w12, wzr
    62fc:	52800111 	mov	w17, #0x8                   	// #8
    6300:	5288000a 	mov	w10, #0x4000                	// #16384
    6304:	52900009 	mov	w9, #0x8000                	// #32768
    6308:	1400001d 	b	637c <stmmac_ioctl+0x374>
    630c:	5280018b 	mov	w11, #0xc                   	// #12
    6310:	b9001beb 	str	w11, [sp,#24]
    6314:	b340de8f 	bfxil	x15, x20, #0, #56
    6318:	f947c28c 	ldr	x12, [x20,#3968]
    631c:	2a1f03e9 	mov	w9, wzr
    6320:	2a1f03ea 	mov	w10, wzr
    6324:	52a00071 	mov	w17, #0x30000               	// #196608
    6328:	52a00032 	mov	w18, #0x10000               	// #65536
    632c:	5281000b 	mov	w11, #0x800                 	// #2048
    6330:	b340dd8f 	bfxil	x15, x12, #0, #56
    6334:	b940b18c 	ldr	w12, [x12,#176]
    6338:	5282000d 	mov	w13, #0x1000                	// #4096
    633c:	5284000f 	mov	w15, #0x2000                	// #8192
    6340:	52804070 	mov	w16, #0x203                 	// #515
    6344:	7100019f 	cmp	w12, #0x0
    6348:	5280800e 	mov	w14, #0x400                 	// #1024
    634c:	1a91024c 	csel	w12, w18, w17, eq
    6350:	14000010 	b	6390 <stmmac_ioctl+0x388>
    6354:	2a1f03ec 	mov	w12, wzr
    6358:	2a1f03e9 	mov	w9, wzr
    635c:	528001b1 	mov	w17, #0xd                   	// #13
    6360:	5288000a 	mov	w10, #0x4000                	// #16384
    6364:	14000005 	b	6378 <stmmac_ioctl+0x370>
    6368:	2a1f03ec 	mov	w12, wzr
    636c:	528001d1 	mov	w17, #0xe                   	// #14
    6370:	5288000a 	mov	w10, #0x4000                	// #16384
    6374:	52900009 	mov	w9, #0x8000                	// #32768
    6378:	5281000b 	mov	w11, #0x800                 	// #2048
    637c:	5282000d 	mov	w13, #0x1000                	// #4096
    6380:	5284000f 	mov	w15, #0x2000                	// #8192
    6384:	52804070 	mov	w16, #0x203                 	// #515
    6388:	5280800e 	mov	w14, #0x400                 	// #1024
    638c:	b9001bf1 	str	w17, [sp,#24]
    6390:	52800031 	mov	w17, #0x1                   	// #1
    6394:	7100051f 	cmp	w8, #0x1
    6398:	1a9f17e8 	cset	w8, eq
    639c:	f940029f 	ldr	xzr, [x20]
    63a0:	b340de8f 	bfxil	x15, x20, #0, #56
    63a4:	b909f291 	str	w17, [x20,#2544]
    63a8:	f940029f 	ldr	xzr, [x20]
    63ac:	b340de8f 	bfxil	x15, x20, #0, #56
    63b0:	b9094688 	str	w8, [x20,#2372]
    63b4:	540001e0 	b.eq	63f0 <stmmac_ioctl+0x3e8>
    63b8:	370001d1 	tbnz	w17, #0, 63f0 <stmmac_ioctl+0x3e8>
    63bc:	b340de8f 	bfxil	x15, x20, #0, #56
    63c0:	f9459288 	ldr	x8, [x20,#2848]
    63c4:	b340de8f 	bfxil	x15, x20, #0, #56
    63c8:	f9493280 	ldr	x0, [x20,#4704]
    63cc:	2a1f03e1 	mov	w1, wzr
    63d0:	b340dd0f 	bfxil	x15, x8, #0, #56
    63d4:	f9401108 	ldr	x8, [x8,#32]
    63d8:	b340dd0f 	bfxil	x15, x8, #0, #56
    63dc:	f9400108 	ldr	x8, [x8]
    63e0:	b340dd0f 	bfxil	x15, x8, #0, #56
    63e4:	f940011f 	ldr	xzr, [x8]
    63e8:	d63f0100 	blr	x8
    63ec:	14000047 	b	6508 <stmmac_ioctl+0x500>
    63f0:	b340de8f 	bfxil	x15, x20, #0, #56
    63f4:	f9459288 	ldr	x8, [x20,#2848]
    63f8:	2a0e020e 	orr	w14, w16, w14
    63fc:	2a0f01ce 	orr	w14, w14, w15
    6400:	2a0d01cd 	orr	w13, w14, w13
    6404:	b340dd0f 	bfxil	x15, x8, #0, #56
    6408:	f9401108 	ldr	x8, [x8,#32]
    640c:	2a0b01ab 	orr	w11, w13, w11
    6410:	b340de8f 	bfxil	x15, x20, #0, #56
    6414:	f9493280 	ldr	x0, [x20,#4704]
    6418:	2a0c016b 	orr	w11, w11, w12
    641c:	b340dd0f 	bfxil	x15, x8, #0, #56
    6420:	f9400108 	ldr	x8, [x8]
    6424:	2a090169 	orr	w9, w11, w9
    6428:	2a0a0121 	orr	w1, w9, w10
    642c:	b340dd0f 	bfxil	x15, x8, #0, #56
    6430:	f940011f 	ldr	xzr, [x8]
    6434:	d63f0100 	blr	x8
    6438:	b340de8f 	bfxil	x15, x20, #0, #56
    643c:	f9459288 	ldr	x8, [x20,#2848]
    6440:	b340de8f 	bfxil	x15, x20, #0, #56
    6444:	f947c289 	ldr	x9, [x20,#3968]
    6448:	b340de8f 	bfxil	x15, x20, #0, #56
    644c:	f9493280 	ldr	x0, [x20,#4704]
    6450:	b340de8f 	bfxil	x15, x20, #0, #56
    6454:	b9524281 	ldr	w1, [x20,#4672]
    6458:	b340dd0f 	bfxil	x15, x8, #0, #56
    645c:	f9401108 	ldr	x8, [x8,#32]
    6460:	b340dd2f 	bfxil	x15, x9, #0, #56
    6464:	b940b122 	ldr	w2, [x9,#176]
    6468:	b340dd0f 	bfxil	x15, x8, #0, #56
    646c:	f9400508 	ldr	x8, [x8,#8]
    6470:	b340dd0f 	bfxil	x15, x8, #0, #56
    6474:	f940011f 	ldr	xzr, [x8]
    6478:	d63f0100 	blr	x8
    647c:	52994008 	mov	w8, #0xca00                	// #51712
    6480:	b9524289 	ldr	w9, [x20,#4672]
    6484:	72a77348 	movk	w8, #0x3b9a, lsl #16
    6488:	b340de8f 	bfxil	x15, x20, #0, #56
    648c:	f945928a 	ldr	x10, [x20,#2848]
    6490:	1ac00908 	udiv	w8, w8, w0
    6494:	d3607d08 	lsl	x8, x8, #32
    6498:	9ac90901 	udiv	x1, x8, x9
    649c:	f940029f 	ldr	xzr, [x20]
    64a0:	b340de8f 	bfxil	x15, x20, #0, #56
    64a4:	b9123281 	str	w1, [x20,#4656]
    64a8:	b340dd4f 	bfxil	x15, x10, #0, #56
    64ac:	f9401148 	ldr	x8, [x10,#32]
    64b0:	b340de8f 	bfxil	x15, x20, #0, #56
    64b4:	f9493280 	ldr	x0, [x20,#4704]
    64b8:	b340dd0f 	bfxil	x15, x8, #0, #56
    64bc:	f9400d08 	ldr	x8, [x8,#24]
    64c0:	b340dd0f 	bfxil	x15, x8, #0, #56
    64c4:	f940011f 	ldr	xzr, [x8]
    64c8:	d63f0100 	blr	x8
    64cc:	910003e0 	mov	x0, sp
    64d0:	94000000 	bl	0 <getnstimeofday64>
    64d4:	b340de8f 	bfxil	x15, x20, #0, #56
    64d8:	f9459288 	ldr	x8, [x20,#2848]
    64dc:	b340de8f 	bfxil	x15, x20, #0, #56
    64e0:	f9493280 	ldr	x0, [x20,#4704]
    64e4:	b9400be2 	ldr	w2, [sp,#8]
    64e8:	b94003e1 	ldr	w1, [sp]
    64ec:	b340dd0f 	bfxil	x15, x8, #0, #56
    64f0:	f9401108 	ldr	x8, [x8,#32]
    64f4:	b340dd0f 	bfxil	x15, x8, #0, #56
    64f8:	f9400908 	ldr	x8, [x8,#16]
    64fc:	b340dd0f 	bfxil	x15, x8, #0, #56
    6500:	f940011f 	ldr	xzr, [x8]
    6504:	d63f0100 	blr	x8
    6508:	b340de6f 	bfxil	x15, x19, #0, #56
    650c:	f9400a60 	ldr	x0, [x19,#16]
    6510:	b340decf 	bfxil	x15, x22, #0, #56
    6514:	f94006c8 	ldr	x8, [x22,#8]
    6518:	128001b5 	mov	w21, #0xfffffff2            	// #-14
    651c:	aa0003e9 	mov	x9, x0
    6520:	b1003129 	adds	x9, x9, #0xc
    6524:	9a8883e8 	csel	x8, xzr, x8, hi
    6528:	da9f3129 	csinv	x9, x9, xzr, cc
    652c:	fa08013f 	sbcs	xzr, x9, x8
    6530:	9a9f87e9 	cset	x9, ls
    6534:	b40000c9 	cbz	x9, 654c <stmmac_ioctl+0x544>
    6538:	910043e1 	add	x1, sp, #0x10
    653c:	52800182 	mov	w2, #0xc                   	// #12
    6540:	94000000 	bl	0 <__arch_copy_to_user>
    6544:	f100001f 	cmp	x0, #0x0
    6548:	1a9503f5 	csel	w21, wzr, w21, eq
    654c:	2a1503e0 	mov	w0, w21
    6550:	a9447bfd 	ldp	x29, x30, [sp,#64]
    6554:	a9434ff4 	ldp	x20, x19, [sp,#48]
    6558:	a94257f6 	ldp	x22, x21, [sp,#32]
    655c:	910143ff 	add	sp, sp, #0x50
    6560:	b340dfcf 	bfxil	x15, x30, #0, #56
    6564:	f94003df 	ldr	xzr, [x30]
    6568:	d65f03c0 	ret
    656c:	aa0003e2 	mov	x2, x0
    6570:	17fffef9 	b	6154 <stmmac_ioctl+0x14c>

0000000000006574 <stmmac_change_mtu>:
    6574:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    6578:	a9017bfd 	stp	x29, x30, [sp,#16]
    657c:	910043fd 	add	x29, sp, #0x10
    6580:	2a0103f4 	mov	w20, w1
    6584:	aa0003f3 	mov	x19, x0
    6588:	94000000 	bl	0 <_mcount>
    658c:	b340de6f 	bfxil	x15, x19, #0, #56
    6590:	f9402668 	ldr	x8, [x19,#72]
    6594:	37000368 	tbnz	w8, #0, 6600 <stmmac_change_mtu+0x8c>
    6598:	b340de6f 	bfxil	x15, x19, #0, #56
    659c:	f947c268 	ldr	x8, [x19,#3968]
    65a0:	52846509 	mov	w9, #0x2328                	// #9000
    65a4:	b340dd0f 	bfxil	x15, x8, #0, #56
    65a8:	b940390a 	ldr	w10, [x8,#56]
    65ac:	350000ca 	cbnz	w10, 65c4 <stmmac_change_mtu+0x50>
    65b0:	b340de6f 	bfxil	x15, x19, #0, #56
    65b4:	b951266a 	ldr	w10, [x19,#4388]
    65b8:	7100fd5f 	cmp	w10, #0x3f
    65bc:	5281cfca 	mov	w10, #0xe7e                 	// #3710
    65c0:	1a8ac129 	csel	w9, w9, w10, gt
    65c4:	b340dd0f 	bfxil	x15, x8, #0, #56
    65c8:	b9405d08 	ldr	w8, [x8,#92]
    65cc:	6b09011f 	cmp	w8, w9
    65d0:	1a89b102 	csel	w2, w8, w9, lt
    65d4:	7100ba9f 	cmp	w20, #0x2e
    65d8:	5400020b 	b.lt	6618 <stmmac_change_mtu+0xa4>
    65dc:	6b14005f 	cmp	w2, w20
    65e0:	540001cb 	b.lt	6618 <stmmac_change_mtu+0xa4>
    65e4:	aa1303e0 	mov	x0, x19
    65e8:	f940027f 	ldr	xzr, [x19]
    65ec:	b340de6f 	bfxil	x15, x19, #0, #56
    65f0:	b9024a74 	str	w20, [x19,#584]
    65f4:	94000000 	bl	0 <netdev_update_features>
    65f8:	2a1f03e0 	mov	w0, wzr
    65fc:	1400000c 	b	662c <stmmac_change_mtu+0xb8>
    6600:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    6604:	91000000 	add	x0, x0, #0x0
    6608:	aa1303e1 	mov	x1, x19
    660c:	94000000 	bl	0 <printk>
    6610:	128001e0 	mov	w0, #0xfffffff0            	// #-16
    6614:	14000006 	b	662c <stmmac_change_mtu+0xb8>
    6618:	90000000 	adrp	x0, 0 <stmmac_disable_eee_mode>
    661c:	91000000 	add	x0, x0, #0x0
    6620:	aa1303e1 	mov	x1, x19
    6624:	94000000 	bl	0 <printk>
    6628:	128002a0 	mov	w0, #0xffffffea            	// #-22
    662c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6630:	a8c24ff4 	ldp	x20, x19, [sp],#32
    6634:	b340dfcf 	bfxil	x15, x30, #0, #56
    6638:	f94003df 	ldr	xzr, [x30]
    663c:	d65f03c0 	ret

0000000000006640 <stmmac_tx_timeout>:
    6640:	f81e0ff3 	str	x19, [sp,#-32]!
    6644:	a9017bfd 	stp	x29, x30, [sp,#16]
    6648:	910043fd 	add	x29, sp, #0x10
    664c:	aa0003f3 	mov	x19, x0
    6650:	94000000 	bl	0 <_mcount>
    6654:	91240260 	add	x0, x19, #0x900
    6658:	97fff8d8 	bl	49b8 <stmmac_tx_err>
    665c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6660:	f84207f3 	ldr	x19, [sp],#32
    6664:	b340dfcf 	bfxil	x15, x30, #0, #56
    6668:	f94003df 	ldr	xzr, [x30]
    666c:	d65f03c0 	ret

0000000000006670 <stmmac_poll_controller>:
    6670:	f81e0ff3 	str	x19, [sp,#-32]!
    6674:	a9017bfd 	stp	x29, x30, [sp,#16]
    6678:	910043fd 	add	x29, sp, #0x10
    667c:	aa0003f3 	mov	x19, x0
    6680:	94000000 	bl	0 <_mcount>
    6684:	b340de6f 	bfxil	x15, x19, #0, #56
    6688:	b9404260 	ldr	w0, [x19,#64]
    668c:	94000000 	bl	0 <disable_irq>
    6690:	b340de6f 	bfxil	x15, x19, #0, #56
    6694:	b9404260 	ldr	w0, [x19,#64]
    6698:	aa1303e1 	mov	x1, x19
    669c:	97fff74b 	bl	43c8 <stmmac_interrupt>
    66a0:	b340de6f 	bfxil	x15, x19, #0, #56
    66a4:	b9404260 	ldr	w0, [x19,#64]
    66a8:	94000000 	bl	0 <enable_irq>
    66ac:	a9417bfd 	ldp	x29, x30, [sp,#16]
    66b0:	f84207f3 	ldr	x19, [sp],#32
    66b4:	b340dfcf 	bfxil	x15, x30, #0, #56
    66b8:	f94003df 	ldr	xzr, [x30]
    66bc:	d65f03c0 	ret

00000000000066c0 <stmmac_fix_features>:
    66c0:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    66c4:	a9017bfd 	stp	x29, x30, [sp,#16]
    66c8:	910043fd 	add	x29, sp, #0x10
    66cc:	aa0103f4 	mov	x20, x1
    66d0:	aa0003f3 	mov	x19, x0
    66d4:	94000000 	bl	0 <_mcount>
    66d8:	b340de6f 	bfxil	x15, x19, #0, #56
    66dc:	f947c268 	ldr	x8, [x19,#3968]
    66e0:	925afa8b 	and	x11, x20, #0xffffffdfffffffff
    66e4:	9280034c 	mov	x12, #0xffffffffffffffe5    	// #-27
    66e8:	b340dd0f 	bfxil	x15, x8, #0, #56
    66ec:	2947a50a 	ldp	w10, w9, [x8,#60]
    66f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    66f4:	b940450d 	ldr	w13, [x8,#68]
    66f8:	7100013f 	cmp	w9, #0x0
    66fc:	9a94016b 	csel	x11, x11, x20, eq
    6700:	8a0c0169 	and	x9, x11, x12
    6704:	7100015f 	cmp	w10, #0x0
    6708:	9a8b0120 	csel	x0, x9, x11, eq
    670c:	340000ad 	cbz	w13, 6720 <stmmac_fix_features+0x60>
    6710:	b340de6f 	bfxil	x15, x19, #0, #56
    6714:	b9424a6a 	ldr	w10, [x19,#584]
    6718:	7117715f 	cmp	w10, #0x5dc
    671c:	9a808120 	csel	x0, x9, x0, hi
    6720:	b340dd0f 	bfxil	x15, x8, #0, #56
    6724:	3942d108 	ldrb	w8, [x8,#180]
    6728:	340001a8 	cbz	w8, 675c <stmmac_fix_features+0x9c>
    672c:	b340de6f 	bfxil	x15, x19, #0, #56
    6730:	b94fc268 	ldr	w8, [x19,#4032]
    6734:	34000148 	cbz	w8, 675c <stmmac_fix_features+0x9c>
    6738:	378000a0 	tbnz	w0, #16, 674c <stmmac_fix_features+0x8c>
    673c:	f940027f 	ldr	xzr, [x19]
    6740:	b340de6f 	bfxil	x15, x19, #0, #56
    6744:	3926627f 	strb	wzr, [x19,#2456]
    6748:	14000005 	b	675c <stmmac_fix_features+0x9c>
    674c:	52800028 	mov	w8, #0x1                   	// #1
    6750:	f940027f 	ldr	xzr, [x19]
    6754:	b340de6f 	bfxil	x15, x19, #0, #56
    6758:	39266268 	strb	w8, [x19,#2456]
    675c:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6760:	a8c24ff4 	ldp	x20, x19, [sp],#32
    6764:	b340dfcf 	bfxil	x15, x30, #0, #56
    6768:	f94003df 	ldr	xzr, [x30]
    676c:	d65f03c0 	ret

0000000000006770 <stmmac_set_features>:
    6770:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    6774:	a9017bfd 	stp	x29, x30, [sp,#16]
    6778:	910043fd 	add	x29, sp, #0x10
    677c:	aa0103f4 	mov	x20, x1
    6780:	aa0003f3 	mov	x19, x0
    6784:	94000000 	bl	0 <_mcount>
    6788:	b7280074 	tbnz	x20, #37, 6794 <stmmac_set_features+0x24>
    678c:	2a1f03e8 	mov	w8, wzr
    6790:	14000005 	b	67a4 <stmmac_set_features+0x34>
    6794:	b340de6f 	bfxil	x15, x19, #0, #56
    6798:	f947c268 	ldr	x8, [x19,#3968]
    679c:	b340dd0f 	bfxil	x15, x8, #0, #56
    67a0:	b9404108 	ldr	w8, [x8,#64]
    67a4:	b340de6f 	bfxil	x15, x19, #0, #56
    67a8:	f9459269 	ldr	x9, [x19,#2848]
    67ac:	f940013f 	ldr	xzr, [x9]
    67b0:	b340dd2f 	bfxil	x15, x9, #0, #56
    67b4:	b9005528 	str	w8, [x9,#84]
    67b8:	b340de6f 	bfxil	x15, x19, #0, #56
    67bc:	f9459260 	ldr	x0, [x19,#2848]
    67c0:	b340dc0f 	bfxil	x15, x0, #0, #56
    67c4:	f9400008 	ldr	x8, [x0]
    67c8:	b340dd0f 	bfxil	x15, x8, #0, #56
    67cc:	f9400508 	ldr	x8, [x8,#8]
    67d0:	b340dd0f 	bfxil	x15, x8, #0, #56
    67d4:	f940011f 	ldr	xzr, [x8]
    67d8:	d63f0100 	blr	x8
    67dc:	a9417bfd 	ldp	x29, x30, [sp,#16]
    67e0:	2a1f03e0 	mov	w0, wzr
    67e4:	a8c24ff4 	ldp	x20, x19, [sp],#32
    67e8:	b340dfcf 	bfxil	x15, x30, #0, #56
    67ec:	f94003df 	ldr	xzr, [x30]
    67f0:	d65f03c0 	ret

00000000000067f4 <stmmac_tx_clean>:
    67f4:	d101c3ff 	sub	sp, sp, #0x70
    67f8:	a9016ffc 	stp	x28, x27, [sp,#16]
    67fc:	a90267fa 	stp	x26, x25, [sp,#32]
    6800:	a9035ff8 	stp	x24, x23, [sp,#48]
    6804:	a90457f6 	stp	x22, x21, [sp,#64]
    6808:	a9054ff4 	stp	x20, x19, [sp,#80]
    680c:	a9067bfd 	stp	x29, x30, [sp,#96]
    6810:	910183fd 	add	x29, sp, #0x60
    6814:	aa0003f4 	mov	x20, x0
    6818:	94000000 	bl	0 <_mcount>
    681c:	b340de8f 	bfxil	x15, x20, #0, #56
    6820:	b9401e9a 	ldr	w26, [x20,#28]
    6824:	91012293 	add	x19, x20, #0x48
    6828:	aa1303e0 	mov	x0, x19
    682c:	94000000 	bl	0 <_raw_spin_lock>
    6830:	b340de8f 	bfxil	x15, x20, #0, #56
    6834:	f9423288 	ldr	x8, [x20,#1120]
    6838:	b340de8f 	bfxil	x15, x20, #0, #56
    683c:	b9401a89 	ldr	w9, [x20,#24]
    6840:	91000508 	add	x8, x8, #0x1
    6844:	6b09035f 	cmp	w26, w9
    6848:	f940029f 	ldr	xzr, [x20]
    684c:	b340de8f 	bfxil	x15, x20, #0, #56
    6850:	f9023288 	str	x8, [x20,#1120]
    6854:	540000c1 	b.ne	686c <stmmac_tx_clean+0x78>
    6858:	f940029f 	ldr	xzr, [x20]
    685c:	b340de8f 	bfxil	x15, x20, #0, #56
    6860:	b9001e9a 	str	w26, [x20,#28]
    6864:	91084297 	add	x23, x20, #0x210
    6868:	140000e4 	b	6bf8 <stmmac_tx_clean+0x404>
    686c:	9000001c 	adrp	x28, 0 <dummy_dma_ops>
    6870:	2a1f03f5 	mov	w21, wzr
    6874:	910c0296 	add	x22, x20, #0x300
    6878:	5280031b 	mov	w27, #0x18                  	// #24
    687c:	9100039c 	add	x28, x28, #0x0
    6880:	b340de8f 	bfxil	x15, x20, #0, #56
    6884:	f9400a88 	ldr	x8, [x20,#16]
    6888:	b340de8f 	bfxil	x15, x20, #0, #56
    688c:	b948b689 	ldr	w9, [x20,#2228]
    6890:	2a1a03f7 	mov	w23, w26
    6894:	f87a5919 	ldr	x25, [x8,w26,uxtw #3]
    6898:	340000a9 	cbz	w9, 68ac <stmmac_tx_clean+0xb8>
    689c:	b340de8f 	bfxil	x15, x20, #0, #56
    68a0:	f9400288 	ldr	x8, [x20]
    68a4:	8b171518 	add	x24, x8, x23, lsl #5
    68a8:	14000004 	b	68b8 <stmmac_tx_clean+0xc4>
    68ac:	b340de8f 	bfxil	x15, x20, #0, #56
    68b0:	f9400688 	ldr	x8, [x20,#8]
    68b4:	8b171118 	add	x24, x8, x23, lsl #4
    68b8:	b340de8f 	bfxil	x15, x20, #0, #56
    68bc:	f9411288 	ldr	x8, [x20,#544]
    68c0:	b340de8f 	bfxil	x15, x20, #0, #56
    68c4:	f9410a89 	ldr	x9, [x20,#528]
    68c8:	b340de8f 	bfxil	x15, x20, #0, #56
    68cc:	f9410683 	ldr	x3, [x20,#520]
    68d0:	aa1603e1 	mov	x1, x22
    68d4:	b340dd0f 	bfxil	x15, x8, #0, #56
    68d8:	f9400508 	ldr	x8, [x8,#8]
    68dc:	9104c120 	add	x0, x9, #0x130
    68e0:	aa1803e2 	mov	x2, x24
    68e4:	b340dd0f 	bfxil	x15, x8, #0, #56
    68e8:	f9402508 	ldr	x8, [x8,#72]
    68ec:	b340dd0f 	bfxil	x15, x8, #0, #56
    68f0:	f940011f 	ldr	xzr, [x8]
    68f4:	d63f0100 	blr	x8
    68f8:	371014e0 	tbnz	w0, #2, 6b94 <stmmac_tx_clean+0x3a0>
    68fc:	d50331bf 	dmb	oshld
    6900:	37000360 	tbnz	w0, #0, 696c <stmmac_tx_clean+0x178>
    6904:	b340de8f 	bfxil	x15, x20, #0, #56
    6908:	f9410a88 	ldr	x8, [x20,#528]
    690c:	37080f00 	tbnz	w0, #1, 6aec <stmmac_tx_clean+0x2f8>
    6910:	b340dd0f 	bfxil	x15, x8, #0, #56
    6914:	f9409d09 	ldr	x9, [x8,#312]
    6918:	91000529 	add	x9, x9, #0x1
    691c:	f940011f 	ldr	xzr, [x8]
    6920:	b340dd0f 	bfxil	x15, x8, #0, #56
    6924:	f9009d09 	str	x9, [x8,#312]
    6928:	b340de8f 	bfxil	x15, x20, #0, #56
    692c:	f9421a88 	ldr	x8, [x20,#1072]
    6930:	91000508 	add	x8, x8, #0x1
    6934:	f940029f 	ldr	xzr, [x20]
    6938:	b340de8f 	bfxil	x15, x20, #0, #56
    693c:	f9021a88 	str	x8, [x20,#1072]
    6940:	b4000179 	cbz	x25, 696c <stmmac_tx_clean+0x178>
    6944:	b340de8f 	bfxil	x15, x20, #0, #56
    6948:	b9404688 	ldr	w8, [x20,#68]
    694c:	34000108 	cbz	w8, 696c <stmmac_tx_clean+0x178>
    6950:	b340df2f 	bfxil	x15, x25, #0, #56
    6954:	f940c328 	ldr	x8, [x25,#384]
    6958:	b9417329 	ldr	w9, [x25,#368]
    695c:	8b090108 	add	x8, x8, x9
    6960:	b340dd0f 	bfxil	x15, x8, #0, #56
    6964:	39400508 	ldrb	w8, [x8,#1]
    6968:	37100d28 	tbnz	w8, #2, 6b0c <stmmac_tx_clean+0x318>
    696c:	b340de8f 	bfxil	x15, x20, #0, #56
    6970:	f9401a88 	ldr	x8, [x20,#48]
    6974:	9b1b7ee9 	mul	x9, x23, x27
    6978:	f8696901 	ldr	x1, [x8,x9]
    697c:	b40004a1 	cbz	x1, 6a10 <stmmac_tx_clean+0x21c>
    6980:	9b1b22e8 	madd	x8, x23, x27, x8
    6984:	b340de8f 	bfxil	x15, x20, #0, #56
    6988:	f9410e80 	ldr	x0, [x20,#536]
    698c:	b9400d02 	ldr	w2, [x8,#12]
    6990:	b340dd0f 	bfxil	x15, x8, #0, #56
    6994:	39402109 	ldrb	w9, [x8,#8]
    6998:	b4000080 	cbz	x0, 69a8 <stmmac_tx_clean+0x1b4>
    699c:	b340dc0f 	bfxil	x15, x0, #0, #56
    69a0:	f9412408 	ldr	x8, [x0,#584]
    69a4:	b5000048 	cbnz	x8, 69ac <stmmac_tx_clean+0x1b8>
    69a8:	aa1c03e8 	mov	x8, x28
    69ac:	b340dd0f 	bfxil	x15, x8, #0, #56
    69b0:	f9401508 	ldr	x8, [x8,#40]
    69b4:	b40000c8 	cbz	x8, 69cc <stmmac_tx_clean+0x1d8>
    69b8:	52800023 	mov	w3, #0x1                   	// #1
    69bc:	aa1f03e4 	mov	x4, xzr
    69c0:	b340dd0f 	bfxil	x15, x8, #0, #56
    69c4:	f940011f 	ldr	xzr, [x8]
    69c8:	d63f0100 	blr	x8
    69cc:	b340de8f 	bfxil	x15, x20, #0, #56
    69d0:	f9401a88 	ldr	x8, [x20,#48]
    69d4:	8b1706e9 	add	x9, x23, x23, lsl #1
    69d8:	d37df129 	lsl	x9, x9, #3
    69dc:	f829691f 	str	xzr, [x8,x9]
    69e0:	b340de8f 	bfxil	x15, x20, #0, #56
    69e4:	f9401a88 	ldr	x8, [x20,#48]
    69e8:	8b090108 	add	x8, x8, x9
    69ec:	f940011f 	ldr	xzr, [x8]
    69f0:	b340dd0f 	bfxil	x15, x8, #0, #56
    69f4:	b9000d1f 	str	wzr, [x8,#12]
    69f8:	b340de8f 	bfxil	x15, x20, #0, #56
    69fc:	f9401a88 	ldr	x8, [x20,#48]
    6a00:	8b090108 	add	x8, x8, x9
    6a04:	f940011f 	ldr	xzr, [x8]
    6a08:	b340dd0f 	bfxil	x15, x8, #0, #56
    6a0c:	3900211f 	strb	wzr, [x8,#8]
    6a10:	b340de8f 	bfxil	x15, x20, #0, #56
    6a14:	f9411288 	ldr	x8, [x20,#544]
    6a18:	b340dd0f 	bfxil	x15, x8, #0, #56
    6a1c:	f9400d08 	ldr	x8, [x8,#24]
    6a20:	b340dd0f 	bfxil	x15, x8, #0, #56
    6a24:	f9401908 	ldr	x8, [x8,#48]
    6a28:	b40000c8 	cbz	x8, 6a40 <stmmac_tx_clean+0x24c>
    6a2c:	aa1403e0 	mov	x0, x20
    6a30:	aa1803e1 	mov	x1, x24
    6a34:	b340dd0f 	bfxil	x15, x8, #0, #56
    6a38:	f940011f 	ldr	xzr, [x8]
    6a3c:	d63f0100 	blr	x8
    6a40:	b340de8f 	bfxil	x15, x20, #0, #56
    6a44:	f9401a88 	ldr	x8, [x20,#48]
    6a48:	8b1706e9 	add	x9, x23, x23, lsl #1
    6a4c:	d37df129 	lsl	x9, x9, #3
    6a50:	8b090108 	add	x8, x8, x9
    6a54:	f940011f 	ldr	xzr, [x8]
    6a58:	b340dd0f 	bfxil	x15, x8, #0, #56
    6a5c:	3900411f 	strb	wzr, [x8,#16]
    6a60:	b340de8f 	bfxil	x15, x20, #0, #56
    6a64:	f9401a88 	ldr	x8, [x20,#48]
    6a68:	8b090108 	add	x8, x8, x9
    6a6c:	f940011f 	ldr	xzr, [x8]
    6a70:	b340dd0f 	bfxil	x15, x8, #0, #56
    6a74:	3900451f 	strb	wzr, [x8,#17]
    6a78:	b4000159 	cbz	x25, 6aa0 <stmmac_tx_clean+0x2ac>
    6a7c:	b340df2f 	bfxil	x15, x25, #0, #56
    6a80:	b940a328 	ldr	w8, [x25,#160]
    6a84:	aa1903e0 	mov	x0, x25
    6a88:	2a1f03e1 	mov	w1, wzr
    6a8c:	0b150115 	add	w21, w8, w21
    6a90:	94000000 	bl	0 <__dev_kfree_skb_any>
    6a94:	b340de8f 	bfxil	x15, x20, #0, #56
    6a98:	f9400a88 	ldr	x8, [x20,#16]
    6a9c:	f837791f 	str	xzr, [x8,x23,lsl #3]
    6aa0:	b340de8f 	bfxil	x15, x20, #0, #56
    6aa4:	f9411288 	ldr	x8, [x20,#544]
    6aa8:	b340de8f 	bfxil	x15, x20, #0, #56
    6aac:	b948b281 	ldr	w1, [x20,#2224]
    6ab0:	aa1803e0 	mov	x0, x24
    6ab4:	b340dd0f 	bfxil	x15, x8, #0, #56
    6ab8:	f9400508 	ldr	x8, [x8,#8]
    6abc:	b340dd0f 	bfxil	x15, x8, #0, #56
    6ac0:	f9401908 	ldr	x8, [x8,#48]
    6ac4:	b340dd0f 	bfxil	x15, x8, #0, #56
    6ac8:	f940011f 	ldr	xzr, [x8]
    6acc:	d63f0100 	blr	x8
    6ad0:	b340de8f 	bfxil	x15, x20, #0, #56
    6ad4:	b9401a88 	ldr	w8, [x20,#24]
    6ad8:	11000749 	add	w9, w26, #0x1
    6adc:	1200213a 	and	w26, w9, #0x1ff
    6ae0:	6b08035f 	cmp	w26, w8
    6ae4:	54ffece1 	b.ne	6880 <stmmac_tx_clean+0x8c>
    6ae8:	1400002b 	b	6b94 <stmmac_tx_clean+0x3a0>
    6aec:	b340dd0f 	bfxil	x15, x8, #0, #56
    6af0:	f940ad09 	ldr	x9, [x8,#344]
    6af4:	91000529 	add	x9, x9, #0x1
    6af8:	f940011f 	ldr	xzr, [x8]
    6afc:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b00:	f900ad09 	str	x9, [x8,#344]
    6b04:	b5fff219 	cbnz	x25, 6944 <stmmac_tx_clean+0x150>
    6b08:	17ffff99 	b	696c <stmmac_tx_clean+0x178>
    6b0c:	b340de8f 	bfxil	x15, x20, #0, #56
    6b10:	f9411288 	ldr	x8, [x20,#544]
    6b14:	aa1803e0 	mov	x0, x24
    6b18:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b1c:	f9400508 	ldr	x8, [x8,#8]
    6b20:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b24:	f9404108 	ldr	x8, [x8,#128]
    6b28:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b2c:	f940011f 	ldr	xzr, [x8]
    6b30:	d63f0100 	blr	x8
    6b34:	35fff1c0 	cbnz	w0, 696c <stmmac_tx_clean+0x178>
    6b38:	b340de8f 	bfxil	x15, x20, #0, #56
    6b3c:	f9411288 	ldr	x8, [x20,#544]
    6b40:	b340de8f 	bfxil	x15, x20, #0, #56
    6b44:	b9494681 	ldr	w1, [x20,#2372]
    6b48:	aa1803e0 	mov	x0, x24
    6b4c:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b50:	f9400508 	ldr	x8, [x8,#8]
    6b54:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b58:	f9404508 	ldr	x8, [x8,#136]
    6b5c:	b340dd0f 	bfxil	x15, x8, #0, #56
    6b60:	f940011f 	ldr	xzr, [x8]
    6b64:	d63f0100 	blr	x8
    6b68:	f90007e0 	str	x0, [sp,#8]
    6b6c:	aa0003e2 	mov	x2, x0
    6b70:	b340de8f 	bfxil	x15, x20, #0, #56
    6b74:	f9410a80 	ldr	x0, [x20,#528]
    6b78:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    6b7c:	91000021 	add	x1, x1, #0x0
    6b80:	94000000 	bl	0 <netdev_info>
    6b84:	910023e1 	add	x1, sp, #0x8
    6b88:	aa1903e0 	mov	x0, x25
    6b8c:	94000000 	bl	0 <skb_tstamp_tx>
    6b90:	17ffff77 	b	696c <stmmac_tx_clean+0x178>
    6b94:	91084297 	add	x23, x20, #0x210
    6b98:	f940029f 	ldr	xzr, [x20]
    6b9c:	b340de8f 	bfxil	x15, x20, #0, #56
    6ba0:	b9001e9a 	str	w26, [x20,#28]
    6ba4:	340002b5 	cbz	w21, 6bf8 <stmmac_tx_clean+0x404>
    6ba8:	b340de8f 	bfxil	x15, x20, #0, #56
    6bac:	f9410a88 	ldr	x8, [x20,#528]
    6bb0:	2a1503e1 	mov	w1, w21
    6bb4:	b340dd0f 	bfxil	x15, x8, #0, #56
    6bb8:	f941e116 	ldr	x22, [x8,#960]
    6bbc:	910302c0 	add	x0, x22, #0xc0
    6bc0:	94000000 	bl	0 <dql_completed>
    6bc4:	d5033bbf 	dmb	ish
    6bc8:	b340decf 	bfxil	x15, x22, #0, #56
    6bcc:	b940c6c8 	ldr	w8, [x22,#196]
    6bd0:	b340decf 	bfxil	x15, x22, #0, #56
    6bd4:	b940c2c9 	ldr	w9, [x22,#192]
    6bd8:	6b09011f 	cmp	w8, w9
    6bdc:	540000e4 	b.mi	6bf8 <stmmac_tx_clean+0x404>
    6be0:	910242c1 	add	x1, x22, #0x90
    6be4:	52800020 	mov	w0, #0x1                   	// #1
    6be8:	94000000 	bl	0 <test_and_clear_bit>
    6bec:	34000060 	cbz	w0, 6bf8 <stmmac_tx_clean+0x404>
    6bf0:	aa1603e0 	mov	x0, x22
    6bf4:	94000000 	bl	0 <netif_schedule_queue>
    6bf8:	b340deef 	bfxil	x15, x23, #0, #56
    6bfc:	f94002f6 	ldr	x22, [x23]
    6c00:	b340decf 	bfxil	x15, x22, #0, #56
    6c04:	f941e2c8 	ldr	x8, [x22,#960]
    6c08:	b340dd0f 	bfxil	x15, x8, #0, #56
    6c0c:	f9404908 	ldr	x8, [x8,#144]
    6c10:	36000148 	tbz	w8, #0, 6c38 <stmmac_tx_clean+0x444>
    6c14:	b340de8f 	bfxil	x15, x20, #0, #56
    6c18:	29432688 	ldp	w8, w9, [x20,#24]
    6c1c:	2a2803ea 	mvn	w10, w8
    6c20:	6b080128 	subs	w8, w9, w8
    6c24:	0b0a0129 	add	w9, w9, w10
    6c28:	1107fd08 	add	w8, w8, #0x1ff
    6c2c:	1a888128 	csel	w8, w9, w8, hi
    6c30:	7102051f 	cmp	w8, #0x81
    6c34:	54000562 	b.cs	6ce0 <stmmac_tx_clean+0x4ec>
    6c38:	b340de8f 	bfxil	x15, x20, #0, #56
    6c3c:	b948a688 	ldr	w8, [x20,#2212]
    6c40:	34000388 	cbz	w8, 6cb0 <stmmac_tx_clean+0x4bc>
    6c44:	b340de8f 	bfxil	x15, x20, #0, #56
    6c48:	39413288 	ldrb	w8, [x20,#76]
    6c4c:	35000328 	cbnz	w8, 6cb0 <stmmac_tx_clean+0x4bc>
    6c50:	b340de8f 	bfxil	x15, x20, #0, #56
    6c54:	29432688 	ldp	w8, w9, [x20,#24]
    6c58:	6b08013f 	cmp	w9, w8
    6c5c:	54000141 	b.ne	6c84 <stmmac_tx_clean+0x490>
    6c60:	b340de8f 	bfxil	x15, x20, #0, #56
    6c64:	f9411280 	ldr	x0, [x20,#544]
    6c68:	b340dc0f 	bfxil	x15, x0, #0, #56
    6c6c:	f9400008 	ldr	x8, [x0]
    6c70:	b340dd0f 	bfxil	x15, x8, #0, #56
    6c74:	f9402508 	ldr	x8, [x8,#72]
    6c78:	b340dd0f 	bfxil	x15, x8, #0, #56
    6c7c:	f940011f 	ldr	xzr, [x8]
    6c80:	d63f0100 	blr	x8
    6c84:	90000008 	adrp	x8, 0 <jiffies>
    6c88:	90000009 	adrp	x9, 0 <stmmac_disable_eee_mode>
    6c8c:	b340dd0f 	bfxil	x15, x8, #0, #56
    6c90:	f9400115 	ldr	x21, [x8]
    6c94:	b340dd2f 	bfxil	x15, x9, #0, #56
    6c98:	b9400120 	ldr	w0, [x9]
    6c9c:	91216294 	add	x20, x20, #0x858
    6ca0:	94000000 	bl	0 <__msecs_to_jiffies>
    6ca4:	8b150001 	add	x1, x0, x21
    6ca8:	aa1403e0 	mov	x0, x20
    6cac:	94000000 	bl	0 <mod_timer>
    6cb0:	aa1303e0 	mov	x0, x19
    6cb4:	94000000 	bl	0 <_raw_spin_unlock>
    6cb8:	a9467bfd 	ldp	x29, x30, [sp,#96]
    6cbc:	a9454ff4 	ldp	x20, x19, [sp,#80]
    6cc0:	a94457f6 	ldp	x22, x21, [sp,#64]
    6cc4:	a9435ff8 	ldp	x24, x23, [sp,#48]
    6cc8:	a94267fa 	ldp	x26, x25, [sp,#32]
    6ccc:	a9416ffc 	ldp	x28, x27, [sp,#16]
    6cd0:	9101c3ff 	add	sp, sp, #0x70
    6cd4:	b340dfcf 	bfxil	x15, x30, #0, #56
    6cd8:	f94003df 	ldr	xzr, [x30]
    6cdc:	d65f03c0 	ret
    6ce0:	911182c0 	add	x0, x22, #0x460
    6ce4:	94000000 	bl	0 <_raw_spin_lock>
    6ce8:	d538d088 	mrs	x8, tpidr_el1
    6cec:	b340decf 	bfxil	x15, x22, #0, #56
    6cf0:	b943cac9 	ldr	w9, [x22,#968]
    6cf4:	340003a9 	cbz	w9, 6d68 <stmmac_tx_clean+0x574>
    6cf8:	90000009 	adrp	x9, 0 <cpu_number>
    6cfc:	91000129 	add	x9, x9, #0x0
    6d00:	b869691a 	ldr	w26, [x8,x9]
    6d04:	aa1f03f8 	mov	x24, xzr
    6d08:	aa1f03f9 	mov	x25, xzr
    6d0c:	1280001b 	mov	w27, #0xffffffff            	// #-1
    6d10:	b340decf 	bfxil	x15, x22, #0, #56
    6d14:	f941e2c8 	ldr	x8, [x22,#960]
    6d18:	8b18011c 	add	x28, x8, x24
    6d1c:	91020395 	add	x21, x28, #0x80
    6d20:	aa1503e0 	mov	x0, x21
    6d24:	94000000 	bl	0 <_raw_spin_lock>
    6d28:	91024381 	add	x1, x28, #0x90
    6d2c:	52800040 	mov	w0, #0x2                   	// #2
    6d30:	f940039f 	ldr	xzr, [x28]
    6d34:	b340df8f 	bfxil	x15, x28, #0, #56
    6d38:	b900879a 	str	w26, [x28,#132]
    6d3c:	94000000 	bl	0 <set_bit>
    6d40:	aa1503e0 	mov	x0, x21
    6d44:	f940039f 	ldr	xzr, [x28]
    6d48:	b340df8f 	bfxil	x15, x28, #0, #56
    6d4c:	b900879b 	str	w27, [x28,#132]
    6d50:	94000000 	bl	0 <_raw_spin_unlock>
    6d54:	b943cac8 	ldr	w8, [x22,#968]
    6d58:	91000739 	add	x25, x25, #0x1
    6d5c:	91050318 	add	x24, x24, #0x140
    6d60:	eb08033f 	cmp	x25, x8
    6d64:	54fffd63 	b.cc	6d10 <stmmac_tx_clean+0x51c>
    6d68:	b340deef 	bfxil	x15, x23, #0, #56
    6d6c:	f94002f6 	ldr	x22, [x23]
    6d70:	b340decf 	bfxil	x15, x22, #0, #56
    6d74:	f941e2c0 	ldr	x0, [x22,#960]
    6d78:	b340dc0f 	bfxil	x15, x0, #0, #56
    6d7c:	f9404808 	ldr	x8, [x0,#144]
    6d80:	360001a8 	tbz	w8, #0, 6db4 <stmmac_tx_clean+0x5c0>
    6d84:	b340de8f 	bfxil	x15, x20, #0, #56
    6d88:	29432688 	ldp	w8, w9, [x20,#24]
    6d8c:	2a2803ea 	mvn	w10, w8
    6d90:	6b080128 	subs	w8, w9, w8
    6d94:	0b0a0129 	add	w9, w9, w10
    6d98:	1107fd08 	add	w8, w8, #0x1ff
    6d9c:	1a888128 	csel	w8, w9, w8, hi
    6da0:	7102051f 	cmp	w8, #0x81
    6da4:	54000083 	b.cc	6db4 <stmmac_tx_clean+0x5c0>
    6da8:	94000000 	bl	0 <netif_tx_wake_queue>
    6dac:	b340deef 	bfxil	x15, x23, #0, #56
    6db0:	f94002f6 	ldr	x22, [x23]
    6db4:	b340decf 	bfxil	x15, x22, #0, #56
    6db8:	b943cac8 	ldr	w8, [x22,#968]
    6dbc:	34000208 	cbz	w8, 6dfc <stmmac_tx_clean+0x608>
    6dc0:	aa1f03f7 	mov	x23, xzr
    6dc4:	52801218 	mov	w24, #0x90                  	// #144
    6dc8:	b340decf 	bfxil	x15, x22, #0, #56
    6dcc:	f941e2c8 	ldr	x8, [x22,#960]
    6dd0:	52800040 	mov	w0, #0x2                   	// #2
    6dd4:	8b180101 	add	x1, x8, x24
    6dd8:	d1024035 	sub	x21, x1, #0x90
    6ddc:	94000000 	bl	0 <clear_bit>
    6de0:	aa1503e0 	mov	x0, x21
    6de4:	94000000 	bl	0 <netif_schedule_queue>
    6de8:	b943cac8 	ldr	w8, [x22,#968]
    6dec:	910006f7 	add	x23, x23, #0x1
    6df0:	91050318 	add	x24, x24, #0x140
    6df4:	eb0802ff 	cmp	x23, x8
    6df8:	54fffe83 	b.cc	6dc8 <stmmac_tx_clean+0x5d4>
    6dfc:	911182c0 	add	x0, x22, #0x460
    6e00:	94000000 	bl	0 <_raw_spin_unlock>
    6e04:	b340de8f 	bfxil	x15, x20, #0, #56
    6e08:	b948a688 	ldr	w8, [x20,#2212]
    6e0c:	35fff1c8 	cbnz	w8, 6c44 <stmmac_tx_clean+0x450>
    6e10:	17ffffa8 	b	6cb0 <stmmac_tx_clean+0x4bc>

0000000000006e14 <stmmac_sysfs_ring_open>:
    6e14:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    6e18:	a9017bfd 	stp	x29, x30, [sp,#16]
    6e1c:	910043fd 	add	x29, sp, #0x10
    6e20:	aa0103f3 	mov	x19, x1
    6e24:	aa0003f4 	mov	x20, x0
    6e28:	94000000 	bl	0 <_mcount>
    6e2c:	b340de8f 	bfxil	x15, x20, #0, #56
    6e30:	f9411e82 	ldr	x2, [x20,#568]
    6e34:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    6e38:	91000021 	add	x1, x1, #0x0
    6e3c:	aa1303e0 	mov	x0, x19
    6e40:	94000000 	bl	0 <single_open>
    6e44:	a9417bfd 	ldp	x29, x30, [sp,#16]
    6e48:	a8c24ff4 	ldp	x20, x19, [sp],#32
    6e4c:	b340dfcf 	bfxil	x15, x30, #0, #56
    6e50:	f94003df 	ldr	xzr, [x30]
    6e54:	d65f03c0 	ret

0000000000006e58 <stmmac_sysfs_ring_read>:
    6e58:	f81a0ffb 	str	x27, [sp,#-96]!
    6e5c:	a90167fa 	stp	x26, x25, [sp,#16]
    6e60:	a9025ff8 	stp	x24, x23, [sp,#32]
    6e64:	a90357f6 	stp	x22, x21, [sp,#48]
    6e68:	a9044ff4 	stp	x20, x19, [sp,#64]
    6e6c:	a9057bfd 	stp	x29, x30, [sp,#80]
    6e70:	910143fd 	add	x29, sp, #0x50
    6e74:	aa0003f3 	mov	x19, x0
    6e78:	94000000 	bl	0 <_mcount>
    6e7c:	b340de6f 	bfxil	x15, x19, #0, #56
    6e80:	f9404277 	ldr	x23, [x19,#128]
    6e84:	b340deef 	bfxil	x15, x23, #0, #56
    6e88:	b951b6e8 	ldr	w8, [x23,#4532]
    6e8c:	34000968 	cbz	w8, 6fb8 <stmmac_sysfs_ring_read+0x160>
    6e90:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    6e94:	91000021 	add	x1, x1, #0x0
    6e98:	aa1303e0 	mov	x0, x19
    6e9c:	94000000 	bl	0 <seq_printf>
    6ea0:	b340deef 	bfxil	x15, x23, #0, #56
    6ea4:	f944e6fa 	ldr	x26, [x23,#2504]
    6ea8:	90000015 	adrp	x21, 0 <stmmac_disable_eee_mode>
    6eac:	90000016 	adrp	x22, 0 <stmmac_disable_eee_mode>
    6eb0:	2a1f03f4 	mov	w20, wzr
    6eb4:	90000018 	adrp	x24, 0 <kimage_voffset>
    6eb8:	910002b5 	add	x21, x21, #0x0
    6ebc:	910002d6 	add	x22, x22, #0x0
    6ec0:	90000019 	adrp	x25, 0 <memstart_addr>
    6ec4:	b730029a 	tbnz	x26, #38, 6f14 <stmmac_sysfs_ring_read+0xbc>
    6ec8:	b340df0f 	bfxil	x15, x24, #0, #56
    6ecc:	f9400308 	ldr	x8, [x24]
    6ed0:	cb080343 	sub	x3, x26, x8
    6ed4:	b340df4f 	bfxil	x15, x26, #0, #56
    6ed8:	29401744 	ldp	w4, w5, [x26]
    6edc:	b340df4f 	bfxil	x15, x26, #0, #56
    6ee0:	29411f46 	ldp	w6, w7, [x26,#8]
    6ee4:	aa1303e0 	mov	x0, x19
    6ee8:	aa1503e1 	mov	x1, x21
    6eec:	2a1403e2 	mov	w2, w20
    6ef0:	94000000 	bl	0 <seq_printf>
    6ef4:	aa1303e0 	mov	x0, x19
    6ef8:	aa1603e1 	mov	x1, x22
    6efc:	94000000 	bl	0 <seq_printf>
    6f00:	11000694 	add	w20, w20, #0x1
    6f04:	7108029f 	cmp	w20, #0x200
    6f08:	9100835a 	add	x26, x26, #0x20
    6f0c:	540000e0 	b.eq	6f28 <stmmac_sysfs_ring_read+0xd0>
    6f10:	b637fdda 	tbz	x26, #38, 6ec8 <stmmac_sysfs_ring_read+0x70>
    6f14:	b340df2f 	bfxil	x15, x25, #0, #56
    6f18:	f9400328 	ldr	x8, [x25]
    6f1c:	92409749 	and	x9, x26, #0x3fffffffff
    6f20:	8b090103 	add	x3, x8, x9
    6f24:	17ffffec 	b	6ed4 <stmmac_sysfs_ring_read+0x7c>
    6f28:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    6f2c:	91000021 	add	x1, x1, #0x0
    6f30:	aa1303e0 	mov	x0, x19
    6f34:	94000000 	bl	0 <seq_printf>
    6f38:	b340deef 	bfxil	x15, x23, #0, #56
    6f3c:	f94482f7 	ldr	x23, [x23,#2304]
    6f40:	90000015 	adrp	x21, 0 <stmmac_disable_eee_mode>
    6f44:	90000016 	adrp	x22, 0 <stmmac_disable_eee_mode>
    6f48:	2a1f03f4 	mov	w20, wzr
    6f4c:	910002b5 	add	x21, x21, #0x0
    6f50:	910002d6 	add	x22, x22, #0x0
    6f54:	b7300297 	tbnz	x23, #38, 6fa4 <stmmac_sysfs_ring_read+0x14c>
    6f58:	b340df0f 	bfxil	x15, x24, #0, #56
    6f5c:	f9400308 	ldr	x8, [x24]
    6f60:	cb0802e3 	sub	x3, x23, x8
    6f64:	b340deef 	bfxil	x15, x23, #0, #56
    6f68:	294016e4 	ldp	w4, w5, [x23]
    6f6c:	b340deef 	bfxil	x15, x23, #0, #56
    6f70:	29411ee6 	ldp	w6, w7, [x23,#8]
    6f74:	aa1303e0 	mov	x0, x19
    6f78:	aa1503e1 	mov	x1, x21
    6f7c:	2a1403e2 	mov	w2, w20
    6f80:	94000000 	bl	0 <seq_printf>
    6f84:	aa1303e0 	mov	x0, x19
    6f88:	aa1603e1 	mov	x1, x22
    6f8c:	94000000 	bl	0 <seq_printf>
    6f90:	11000694 	add	w20, w20, #0x1
    6f94:	7108029f 	cmp	w20, #0x200
    6f98:	910082f7 	add	x23, x23, #0x20
    6f9c:	540009a0 	b.eq	70d0 <stmmac_sysfs_ring_read+0x278>
    6fa0:	b637fdd7 	tbz	x23, #38, 6f58 <stmmac_sysfs_ring_read+0x100>
    6fa4:	b340df2f 	bfxil	x15, x25, #0, #56
    6fa8:	f9400328 	ldr	x8, [x25]
    6fac:	924096e9 	and	x9, x23, #0x3fffffffff
    6fb0:	8b090103 	add	x3, x8, x9
    6fb4:	17ffffec 	b	6f64 <stmmac_sysfs_ring_read+0x10c>
    6fb8:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    6fbc:	91000021 	add	x1, x1, #0x0
    6fc0:	aa1303e0 	mov	x0, x19
    6fc4:	94000000 	bl	0 <seq_printf>
    6fc8:	b340deef 	bfxil	x15, x23, #0, #56
    6fcc:	f944e2fa 	ldr	x26, [x23,#2496]
    6fd0:	90000015 	adrp	x21, 0 <stmmac_disable_eee_mode>
    6fd4:	90000016 	adrp	x22, 0 <stmmac_disable_eee_mode>
    6fd8:	2a1f03f4 	mov	w20, wzr
    6fdc:	90000018 	adrp	x24, 0 <memstart_addr>
    6fe0:	90000019 	adrp	x25, 0 <kimage_voffset>
    6fe4:	910002b5 	add	x21, x21, #0x0
    6fe8:	910002d6 	add	x22, x22, #0x0
    6fec:	aa1a03fb 	mov	x27, x26
    6ff0:	b340df0f 	bfxil	x15, x24, #0, #56
    6ff4:	b9400308 	ldr	w8, [x24]
    6ff8:	b340df2f 	bfxil	x15, x25, #0, #56
    6ffc:	b9400329 	ldr	w9, [x25]
    7000:	b340df6f 	bfxil	x15, x27, #0, #56
    7004:	29401764 	ldp	w4, w5, [x27]
    7008:	b340df6f 	bfxil	x15, x27, #0, #56
    700c:	29411f66 	ldp	w6, w7, [x27,#8]
    7010:	f25a035f 	tst	x26, #0x4000000000
    7014:	5a891508 	csneg	w8, w8, w9, ne
    7018:	0b1a0103 	add	w3, w8, w26
    701c:	aa1303e0 	mov	x0, x19
    7020:	aa1503e1 	mov	x1, x21
    7024:	2a1403e2 	mov	w2, w20
    7028:	94000000 	bl	0 <seq_printf>
    702c:	aa1303e0 	mov	x0, x19
    7030:	aa1603e1 	mov	x1, x22
    7034:	94000000 	bl	0 <seq_printf>
    7038:	11000694 	add	w20, w20, #0x1
    703c:	7108029f 	cmp	w20, #0x200
    7040:	9100437b 	add	x27, x27, #0x10
    7044:	54fffd61 	b.ne	6ff0 <stmmac_sysfs_ring_read+0x198>
    7048:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    704c:	91000021 	add	x1, x1, #0x0
    7050:	aa1303e0 	mov	x0, x19
    7054:	94000000 	bl	0 <seq_printf>
    7058:	b340deef 	bfxil	x15, x23, #0, #56
    705c:	f94486f7 	ldr	x23, [x23,#2312]
    7060:	90000015 	adrp	x21, 0 <stmmac_disable_eee_mode>
    7064:	90000016 	adrp	x22, 0 <stmmac_disable_eee_mode>
    7068:	2a1f03f4 	mov	w20, wzr
    706c:	910002b5 	add	x21, x21, #0x0
    7070:	910002d6 	add	x22, x22, #0x0
    7074:	aa1703fa 	mov	x26, x23
    7078:	b340df0f 	bfxil	x15, x24, #0, #56
    707c:	b9400308 	ldr	w8, [x24]
    7080:	b340df2f 	bfxil	x15, x25, #0, #56
    7084:	b9400329 	ldr	w9, [x25]
    7088:	b340df4f 	bfxil	x15, x26, #0, #56
    708c:	29401744 	ldp	w4, w5, [x26]
    7090:	b340df4f 	bfxil	x15, x26, #0, #56
    7094:	29411f46 	ldp	w6, w7, [x26,#8]
    7098:	f25a02ff 	tst	x23, #0x4000000000
    709c:	5a891508 	csneg	w8, w8, w9, ne
    70a0:	0b170103 	add	w3, w8, w23
    70a4:	aa1303e0 	mov	x0, x19
    70a8:	aa1503e1 	mov	x1, x21
    70ac:	2a1403e2 	mov	w2, w20
    70b0:	94000000 	bl	0 <seq_printf>
    70b4:	aa1303e0 	mov	x0, x19
    70b8:	aa1603e1 	mov	x1, x22
    70bc:	94000000 	bl	0 <seq_printf>
    70c0:	11000694 	add	w20, w20, #0x1
    70c4:	7108029f 	cmp	w20, #0x200
    70c8:	9100435a 	add	x26, x26, #0x10
    70cc:	54fffd61 	b.ne	7078 <stmmac_sysfs_ring_read+0x220>
    70d0:	a9457bfd 	ldp	x29, x30, [sp,#80]
    70d4:	a9444ff4 	ldp	x20, x19, [sp,#64]
    70d8:	a94357f6 	ldp	x22, x21, [sp,#48]
    70dc:	a9425ff8 	ldp	x24, x23, [sp,#32]
    70e0:	a94167fa 	ldp	x26, x25, [sp,#16]
    70e4:	2a1f03e0 	mov	w0, wzr
    70e8:	f84607fb 	ldr	x27, [sp],#96
    70ec:	b340dfcf 	bfxil	x15, x30, #0, #56
    70f0:	f94003df 	ldr	xzr, [x30]
    70f4:	d65f03c0 	ret

00000000000070f8 <stmmac_sysfs_dma_cap_open>:
    70f8:	a9be4ff4 	stp	x20, x19, [sp,#-32]!
    70fc:	a9017bfd 	stp	x29, x30, [sp,#16]
    7100:	910043fd 	add	x29, sp, #0x10
    7104:	aa0103f3 	mov	x19, x1
    7108:	aa0003f4 	mov	x20, x0
    710c:	94000000 	bl	0 <_mcount>
    7110:	b340de8f 	bfxil	x15, x20, #0, #56
    7114:	f9411e82 	ldr	x2, [x20,#568]
    7118:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    711c:	91000021 	add	x1, x1, #0x0
    7120:	aa1303e0 	mov	x0, x19
    7124:	94000000 	bl	0 <single_open>
    7128:	a9417bfd 	ldp	x29, x30, [sp,#16]
    712c:	a8c24ff4 	ldp	x20, x19, [sp],#32
    7130:	b340dfcf 	bfxil	x15, x30, #0, #56
    7134:	f94003df 	ldr	xzr, [x30]
    7138:	d65f03c0 	ret

000000000000713c <stmmac_sysfs_dma_cap_read>:
    713c:	a9bd57f6 	stp	x22, x21, [sp,#-48]!
    7140:	a9014ff4 	stp	x20, x19, [sp,#16]
    7144:	a9027bfd 	stp	x29, x30, [sp,#32]
    7148:	910083fd 	add	x29, sp, #0x20
    714c:	aa0003f3 	mov	x19, x0
    7150:	94000000 	bl	0 <_mcount>
    7154:	b340de6f 	bfxil	x15, x19, #0, #56
    7158:	f9404275 	ldr	x21, [x19,#128]
    715c:	b340deaf 	bfxil	x15, x21, #0, #56
    7160:	b95122a8 	ldr	w8, [x21,#4384]
    7164:	34001228 	cbz	w8, 73a8 <stmmac_sysfs_dma_cap_read+0x26c>
    7168:	90000014 	adrp	x20, 0 <stmmac_disable_eee_mode>
    716c:	91000294 	add	x20, x20, #0x0
    7170:	aa1303e0 	mov	x0, x19
    7174:	aa1403e1 	mov	x1, x20
    7178:	94000000 	bl	0 <seq_printf>
    717c:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7180:	91000021 	add	x1, x1, #0x0
    7184:	aa1303e0 	mov	x0, x19
    7188:	94000000 	bl	0 <seq_printf>
    718c:	aa1303e0 	mov	x0, x19
    7190:	aa1403e1 	mov	x1, x20
    7194:	94000000 	bl	0 <seq_printf>
    7198:	b340deaf 	bfxil	x15, x21, #0, #56
    719c:	b94f8aa8 	ldr	w8, [x21,#3976]
    71a0:	90000014 	adrp	x20, 0 <stmmac_disable_eee_mode>
    71a4:	90000016 	adrp	x22, 0 <stmmac_disable_eee_mode>
    71a8:	91000294 	add	x20, x20, #0x0
    71ac:	910002d6 	add	x22, x22, #0x0
    71b0:	7100011f 	cmp	w8, #0x0
    71b4:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    71b8:	9a9402c2 	csel	x2, x22, x20, eq
    71bc:	91000021 	add	x1, x1, #0x0
    71c0:	aa1303e0 	mov	x0, x19
    71c4:	94000000 	bl	0 <seq_printf>
    71c8:	b340deaf 	bfxil	x15, x21, #0, #56
    71cc:	b94f8ea8 	ldr	w8, [x21,#3980]
    71d0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    71d4:	91000021 	add	x1, x1, #0x0
    71d8:	aa1303e0 	mov	x0, x19
    71dc:	7100011f 	cmp	w8, #0x0
    71e0:	9a9402c2 	csel	x2, x22, x20, eq
    71e4:	94000000 	bl	0 <seq_printf>
    71e8:	b340deaf 	bfxil	x15, x21, #0, #56
    71ec:	b94f92a8 	ldr	w8, [x21,#3984]
    71f0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    71f4:	91000021 	add	x1, x1, #0x0
    71f8:	aa1303e0 	mov	x0, x19
    71fc:	7100011f 	cmp	w8, #0x0
    7200:	9a9402c2 	csel	x2, x22, x20, eq
    7204:	94000000 	bl	0 <seq_printf>
    7208:	b340deaf 	bfxil	x15, x21, #0, #56
    720c:	b94f96a8 	ldr	w8, [x21,#3988]
    7210:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7214:	91000021 	add	x1, x1, #0x0
    7218:	aa1303e0 	mov	x0, x19
    721c:	7100011f 	cmp	w8, #0x0
    7220:	9a9402c2 	csel	x2, x22, x20, eq
    7224:	94000000 	bl	0 <seq_printf>
    7228:	b340deaf 	bfxil	x15, x21, #0, #56
    722c:	b94f9aa8 	ldr	w8, [x21,#3992]
    7230:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7234:	91000021 	add	x1, x1, #0x0
    7238:	aa1303e0 	mov	x0, x19
    723c:	7100011f 	cmp	w8, #0x0
    7240:	9a9402c2 	csel	x2, x22, x20, eq
    7244:	94000000 	bl	0 <seq_printf>
    7248:	b340deaf 	bfxil	x15, x21, #0, #56
    724c:	b94f9ea8 	ldr	w8, [x21,#3996]
    7250:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7254:	91000021 	add	x1, x1, #0x0
    7258:	aa1303e0 	mov	x0, x19
    725c:	7100011f 	cmp	w8, #0x0
    7260:	9a9402c2 	csel	x2, x22, x20, eq
    7264:	94000000 	bl	0 <seq_printf>
    7268:	b340deaf 	bfxil	x15, x21, #0, #56
    726c:	b94fa2a8 	ldr	w8, [x21,#4000]
    7270:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7274:	91000021 	add	x1, x1, #0x0
    7278:	aa1303e0 	mov	x0, x19
    727c:	7100011f 	cmp	w8, #0x0
    7280:	9a9402c2 	csel	x2, x22, x20, eq
    7284:	94000000 	bl	0 <seq_printf>
    7288:	b340deaf 	bfxil	x15, x21, #0, #56
    728c:	b94fa6a8 	ldr	w8, [x21,#4004]
    7290:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7294:	91000021 	add	x1, x1, #0x0
    7298:	aa1303e0 	mov	x0, x19
    729c:	7100011f 	cmp	w8, #0x0
    72a0:	9a9402c2 	csel	x2, x22, x20, eq
    72a4:	94000000 	bl	0 <seq_printf>
    72a8:	b340deaf 	bfxil	x15, x21, #0, #56
    72ac:	b94faaa8 	ldr	w8, [x21,#4008]
    72b0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    72b4:	91000021 	add	x1, x1, #0x0
    72b8:	aa1303e0 	mov	x0, x19
    72bc:	7100011f 	cmp	w8, #0x0
    72c0:	9a9402c2 	csel	x2, x22, x20, eq
    72c4:	94000000 	bl	0 <seq_printf>
    72c8:	b340deaf 	bfxil	x15, x21, #0, #56
    72cc:	b94faea8 	ldr	w8, [x21,#4012]
    72d0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    72d4:	91000021 	add	x1, x1, #0x0
    72d8:	aa1303e0 	mov	x0, x19
    72dc:	7100011f 	cmp	w8, #0x0
    72e0:	9a9402c2 	csel	x2, x22, x20, eq
    72e4:	94000000 	bl	0 <seq_printf>
    72e8:	b340deaf 	bfxil	x15, x21, #0, #56
    72ec:	b94fb2a8 	ldr	w8, [x21,#4016]
    72f0:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    72f4:	91000021 	add	x1, x1, #0x0
    72f8:	aa1303e0 	mov	x0, x19
    72fc:	7100011f 	cmp	w8, #0x0
    7300:	9a9402c2 	csel	x2, x22, x20, eq
    7304:	94000000 	bl	0 <seq_printf>
    7308:	b340deaf 	bfxil	x15, x21, #0, #56
    730c:	b94fb6a8 	ldr	w8, [x21,#4020]
    7310:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7314:	91000021 	add	x1, x1, #0x0
    7318:	aa1303e0 	mov	x0, x19
    731c:	7100011f 	cmp	w8, #0x0
    7320:	9a9402c2 	csel	x2, x22, x20, eq
    7324:	94000000 	bl	0 <seq_printf>
    7328:	b340deaf 	bfxil	x15, x21, #0, #56
    732c:	b94fbaa8 	ldr	w8, [x21,#4024]
    7330:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7334:	91000021 	add	x1, x1, #0x0
    7338:	aa1303e0 	mov	x0, x19
    733c:	7100011f 	cmp	w8, #0x0
    7340:	9a9402c2 	csel	x2, x22, x20, eq
    7344:	94000000 	bl	0 <seq_printf>
    7348:	b340deaf 	bfxil	x15, x21, #0, #56
    734c:	b94fbea8 	ldr	w8, [x21,#4028]
    7350:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7354:	91000021 	add	x1, x1, #0x0
    7358:	aa1303e0 	mov	x0, x19
    735c:	7100011f 	cmp	w8, #0x0
    7360:	9a9402c2 	csel	x2, x22, x20, eq
    7364:	94000000 	bl	0 <seq_printf>
    7368:	b340deaf 	bfxil	x15, x21, #0, #56
    736c:	b94fc6a8 	ldr	w8, [x21,#4036]
    7370:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7374:	91000021 	add	x1, x1, #0x0
    7378:	aa1303e0 	mov	x0, x19
    737c:	7100011f 	cmp	w8, #0x0
    7380:	9a9402c2 	csel	x2, x22, x20, eq
    7384:	94000000 	bl	0 <seq_printf>
    7388:	b340deaf 	bfxil	x15, x21, #0, #56
    738c:	b95126a8 	ldr	w8, [x21,#4388]
    7390:	7101011f 	cmp	w8, #0x40
    7394:	5400014b 	b.lt	73bc <stmmac_sysfs_dma_cap_read+0x280>
    7398:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    739c:	913f22a8 	add	x8, x21, #0xfc8
    73a0:	91000021 	add	x1, x1, #0x0
    73a4:	14000011 	b	73e8 <stmmac_sysfs_dma_cap_read+0x2ac>
    73a8:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    73ac:	91000021 	add	x1, x1, #0x0
    73b0:	aa1303e0 	mov	x0, x19
    73b4:	94000000 	bl	0 <seq_printf>
    73b8:	1400002e 	b	7470 <stmmac_sysfs_dma_cap_read+0x334>
    73bc:	b340deaf 	bfxil	x15, x21, #0, #56
    73c0:	b94fcea8 	ldr	w8, [x21,#4044]
    73c4:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    73c8:	91000021 	add	x1, x1, #0x0
    73cc:	aa1303e0 	mov	x0, x19
    73d0:	7100011f 	cmp	w8, #0x0
    73d4:	9a9402c2 	csel	x2, x22, x20, eq
    73d8:	94000000 	bl	0 <seq_printf>
    73dc:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    73e0:	913f42a8 	add	x8, x21, #0xfd0
    73e4:	91000021 	add	x1, x1, #0x0
    73e8:	b340dd0f 	bfxil	x15, x8, #0, #56
    73ec:	b9400108 	ldr	w8, [x8]
    73f0:	aa1303e0 	mov	x0, x19
    73f4:	7100011f 	cmp	w8, #0x0
    73f8:	9a9402c2 	csel	x2, x22, x20, eq
    73fc:	94000000 	bl	0 <seq_printf>
    7400:	b340deaf 	bfxil	x15, x21, #0, #56
    7404:	b94fd6a8 	ldr	w8, [x21,#4052]
    7408:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    740c:	91000021 	add	x1, x1, #0x0
    7410:	aa1303e0 	mov	x0, x19
    7414:	7100011f 	cmp	w8, #0x0
    7418:	9a9402c2 	csel	x2, x22, x20, eq
    741c:	94000000 	bl	0 <seq_printf>
    7420:	b340deaf 	bfxil	x15, x21, #0, #56
    7424:	b94fdaa2 	ldr	w2, [x21,#4056]
    7428:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    742c:	91000021 	add	x1, x1, #0x0
    7430:	aa1303e0 	mov	x0, x19
    7434:	94000000 	bl	0 <seq_printf>
    7438:	b340deaf 	bfxil	x15, x21, #0, #56
    743c:	b94fdea2 	ldr	w2, [x21,#4060]
    7440:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    7444:	91000021 	add	x1, x1, #0x0
    7448:	aa1303e0 	mov	x0, x19
    744c:	94000000 	bl	0 <seq_printf>
    7450:	b340deaf 	bfxil	x15, x21, #0, #56
    7454:	b94fe2a8 	ldr	w8, [x21,#4064]
    7458:	90000001 	adrp	x1, 0 <stmmac_disable_eee_mode>
    745c:	91000021 	add	x1, x1, #0x0
    7460:	aa1303e0 	mov	x0, x19
    7464:	7100011f 	cmp	w8, #0x0
    7468:	9a9402c2 	csel	x2, x22, x20, eq
    746c:	94000000 	bl	0 <seq_printf>
    7470:	a9427bfd 	ldp	x29, x30, [sp,#32]
    7474:	a9414ff4 	ldp	x20, x19, [sp,#16]
    7478:	2a1f03e0 	mov	w0, wzr
    747c:	a8c357f6 	ldp	x22, x21, [sp],#48
    7480:	b340dfcf 	bfxil	x15, x30, #0, #56
    7484:	f94003df 	ldr	xzr, [x30]
    7488:	d65f03c0 	ret

000000000000748c <stmmac_tx_timer>:
    748c:	f81e0ff3 	str	x19, [sp,#-32]!
    7490:	a9017bfd 	stp	x29, x30, [sp,#16]
    7494:	910043fd 	add	x29, sp, #0x10
    7498:	aa0003f3 	mov	x19, x0
    749c:	94000000 	bl	0 <_mcount>
    74a0:	aa1303e0 	mov	x0, x19
    74a4:	97fffcd4 	bl	67f4 <stmmac_tx_clean>
    74a8:	a9417bfd 	ldp	x29, x30, [sp,#16]
    74ac:	f84207f3 	ldr	x19, [sp],#32
    74b0:	b340dfcf 	bfxil	x15, x30, #0, #56
    74b4:	f94003df 	ldr	xzr, [x30]
    74b8:	d65f03c0 	ret

Disassembly of section .init.text:

0000000000000000 <stmmac_cmdline_opt>:
   0:	d101c3ff 	sub	sp, sp, #0x70
   4:	a9016ffc 	stp	x28, x27, [sp,#16]
   8:	a90267fa 	stp	x26, x25, [sp,#32]
   c:	a9035ff8 	stp	x24, x23, [sp,#48]
  10:	a90457f6 	stp	x22, x21, [sp,#64]
  14:	a9054ff4 	stp	x20, x19, [sp,#80]
  18:	a9067bfd 	stp	x29, x30, [sp,#96]
  1c:	910183fd 	add	x29, sp, #0x60
  20:	f90007e0 	str	x0, [sp,#8]
  24:	b4001260 	cbz	x0, 270 <stmmac_cmdline_opt+0x270>
  28:	b340dc0f 	bfxil	x15, x0, #0, #56
  2c:	39400008 	ldrb	w8, [x0]
  30:	34001208 	cbz	w8, 270 <stmmac_cmdline_opt+0x270>
  34:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
  38:	91000021 	add	x1, x1, #0x0
  3c:	910023e0 	add	x0, sp, #0x8
  40:	94000000 	bl	0 <strsep>
  44:	b4001180 	cbz	x0, 274 <stmmac_cmdline_opt+0x274>
  48:	90000013 	adrp	x19, 0 <stmmac_cmdline_opt>
  4c:	90000014 	adrp	x20, 0 <stmmac_cmdline_opt>
  50:	90000015 	adrp	x21, 0 <stmmac_cmdline_opt>
  54:	90000016 	adrp	x22, 0 <stmmac_cmdline_opt>
  58:	90000017 	adrp	x23, 0 <stmmac_cmdline_opt>
  5c:	90000018 	adrp	x24, 0 <stmmac_cmdline_opt>
  60:	90000019 	adrp	x25, 0 <stmmac_cmdline_opt>
  64:	9000001a 	adrp	x26, 0 <stmmac_cmdline_opt>
  68:	9000001c 	adrp	x28, 0 <stmmac_cmdline_opt>
  6c:	aa0003fb 	mov	x27, x0
  70:	91000273 	add	x19, x19, #0x0
  74:	91000294 	add	x20, x20, #0x0
  78:	910002b5 	add	x21, x21, #0x0
  7c:	910002d6 	add	x22, x22, #0x0
  80:	910002f7 	add	x23, x23, #0x0
  84:	91000318 	add	x24, x24, #0x0
  88:	91000339 	add	x25, x25, #0x0
  8c:	9100035a 	add	x26, x26, #0x0
  90:	9100039c 	add	x28, x28, #0x0
  94:	528000c2 	mov	w2, #0x6                   	// #6
  98:	aa1b03e0 	mov	x0, x27
  9c:	aa1303e1 	mov	x1, x19
  a0:	94000000 	bl	0 <strncmp>
  a4:	34000680 	cbz	w0, 174 <stmmac_cmdline_opt+0x174>
  a8:	52800102 	mov	w2, #0x8                   	// #8
  ac:	aa1b03e0 	mov	x0, x27
  b0:	aa1603e1 	mov	x1, x22
  b4:	94000000 	bl	0 <strncmp>
  b8:	340006a0 	cbz	w0, 18c <stmmac_cmdline_opt+0x18c>
  bc:	528000e2 	mov	w2, #0x7                   	// #7
  c0:	aa1b03e0 	mov	x0, x27
  c4:	aa1803e1 	mov	x1, x24
  c8:	94000000 	bl	0 <strncmp>
  cc:	340006c0 	cbz	w0, 1a4 <stmmac_cmdline_opt+0x1a4>
  d0:	52800062 	mov	w2, #0x3                   	// #3
  d4:	aa1b03e0 	mov	x0, x27
  d8:	aa1a03e1 	mov	x1, x26
  dc:	94000000 	bl	0 <strncmp>
  e0:	340006e0 	cbz	w0, 1bc <stmmac_cmdline_opt+0x1bc>
  e4:	52800122 	mov	w2, #0x9                   	// #9
  e8:	aa1b03e0 	mov	x0, x27
  ec:	aa1c03e1 	mov	x1, x28
  f0:	94000000 	bl	0 <strncmp>
  f4:	34000720 	cbz	w0, 1d8 <stmmac_cmdline_opt+0x1d8>
  f8:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
  fc:	52800142 	mov	w2, #0xa                   	// #10
 100:	aa1b03e0 	mov	x0, x27
 104:	91000021 	add	x1, x1, #0x0
 108:	94000000 	bl	0 <strncmp>
 10c:	34000740 	cbz	w0, 1f4 <stmmac_cmdline_opt+0x1f4>
 110:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
 114:	528000c2 	mov	w2, #0x6                   	// #6
 118:	aa1b03e0 	mov	x0, x27
 11c:	91000021 	add	x1, x1, #0x0
 120:	94000000 	bl	0 <strncmp>
 124:	34000760 	cbz	w0, 210 <stmmac_cmdline_opt+0x210>
 128:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
 12c:	52800142 	mov	w2, #0xa                   	// #10
 130:	aa1b03e0 	mov	x0, x27
 134:	91000021 	add	x1, x1, #0x0
 138:	94000000 	bl	0 <strncmp>
 13c:	34000780 	cbz	w0, 22c <stmmac_cmdline_opt+0x22c>
 140:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
 144:	52800162 	mov	w2, #0xb                   	// #11
 148:	aa1b03e0 	mov	x0, x27
 14c:	91000021 	add	x1, x1, #0x0
 150:	94000000 	bl	0 <strncmp>
 154:	35000780 	cbnz	w0, 244 <stmmac_cmdline_opt+0x244>
 158:	90000002 	adrp	x2, 0 <stmmac_cmdline_opt>
 15c:	91002f60 	add	x0, x27, #0xb
 160:	2a1f03e1 	mov	w1, wzr
 164:	91000042 	add	x2, x2, #0x0
 168:	94000000 	bl	0 <kstrtoint>
 16c:	340006c0 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 170:	1400003b 	b	25c <stmmac_cmdline_opt+0x25c>
 174:	91001b60 	add	x0, x27, #0x6
 178:	2a1f03e1 	mov	w1, wzr
 17c:	aa1403e2 	mov	x2, x20
 180:	94000000 	bl	0 <kstrtoint>
 184:	34000600 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 188:	14000035 	b	25c <stmmac_cmdline_opt+0x25c>
 18c:	91002360 	add	x0, x27, #0x8
 190:	2a1f03e1 	mov	w1, wzr
 194:	aa1703e2 	mov	x2, x23
 198:	94000000 	bl	0 <kstrtoint>
 19c:	34000540 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 1a0:	1400002f 	b	25c <stmmac_cmdline_opt+0x25c>
 1a4:	91001f60 	add	x0, x27, #0x7
 1a8:	2a1f03e1 	mov	w1, wzr
 1ac:	aa1903e2 	mov	x2, x25
 1b0:	94000000 	bl	0 <kstrtoint>
 1b4:	34000480 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 1b8:	14000029 	b	25c <stmmac_cmdline_opt+0x25c>
 1bc:	90000002 	adrp	x2, 0 <stmmac_cmdline_opt>
 1c0:	91000f60 	add	x0, x27, #0x3
 1c4:	2a1f03e1 	mov	w1, wzr
 1c8:	91000042 	add	x2, x2, #0x0
 1cc:	94000000 	bl	0 <kstrtoint>
 1d0:	340003a0 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 1d4:	14000022 	b	25c <stmmac_cmdline_opt+0x25c>
 1d8:	90000002 	adrp	x2, 0 <stmmac_cmdline_opt>
 1dc:	91002760 	add	x0, x27, #0x9
 1e0:	2a1f03e1 	mov	w1, wzr
 1e4:	91000042 	add	x2, x2, #0x0
 1e8:	94000000 	bl	0 <kstrtoint>
 1ec:	340002c0 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 1f0:	1400001b 	b	25c <stmmac_cmdline_opt+0x25c>
 1f4:	90000002 	adrp	x2, 0 <stmmac_cmdline_opt>
 1f8:	91002b60 	add	x0, x27, #0xa
 1fc:	2a1f03e1 	mov	w1, wzr
 200:	91000042 	add	x2, x2, #0x0
 204:	94000000 	bl	0 <kstrtoint>
 208:	340001e0 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 20c:	14000014 	b	25c <stmmac_cmdline_opt+0x25c>
 210:	90000002 	adrp	x2, 0 <stmmac_cmdline_opt>
 214:	91001b60 	add	x0, x27, #0x6
 218:	2a1f03e1 	mov	w1, wzr
 21c:	91000042 	add	x2, x2, #0x0
 220:	94000000 	bl	0 <kstrtoint>
 224:	34000100 	cbz	w0, 244 <stmmac_cmdline_opt+0x244>
 228:	1400000d 	b	25c <stmmac_cmdline_opt+0x25c>
 22c:	90000002 	adrp	x2, 0 <stmmac_cmdline_opt>
 230:	91002b60 	add	x0, x27, #0xa
 234:	2a1f03e1 	mov	w1, wzr
 238:	91000042 	add	x2, x2, #0x0
 23c:	94000000 	bl	0 <kstrtoint>
 240:	350000e0 	cbnz	w0, 25c <stmmac_cmdline_opt+0x25c>
 244:	910023e0 	add	x0, sp, #0x8
 248:	aa1503e1 	mov	x1, x21
 24c:	94000000 	bl	0 <strsep>
 250:	aa0003fb 	mov	x27, x0
 254:	b5fff200 	cbnz	x0, 94 <stmmac_cmdline_opt+0x94>
 258:	14000007 	b	274 <stmmac_cmdline_opt+0x274>
 25c:	90000000 	adrp	x0, 0 <stmmac_cmdline_opt>
 260:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
 264:	91000000 	add	x0, x0, #0x0
 268:	91000021 	add	x1, x1, #0x0
 26c:	94000000 	bl	0 <printk>
 270:	128002a0 	mov	w0, #0xffffffea            	// #-22
 274:	a9467bfd 	ldp	x29, x30, [sp,#96]
 278:	a9454ff4 	ldp	x20, x19, [sp,#80]
 27c:	a94457f6 	ldp	x22, x21, [sp,#64]
 280:	a9435ff8 	ldp	x24, x23, [sp,#48]
 284:	a94267fa 	ldp	x26, x25, [sp,#32]
 288:	a9416ffc 	ldp	x28, x27, [sp,#16]
 28c:	9101c3ff 	add	sp, sp, #0x70
 290:	b340dfcf 	bfxil	x15, x30, #0, #56
 294:	f94003df 	ldr	xzr, [x30]
 298:	d65f03c0 	ret

000000000000029c <stmmac_init>:
 29c:	f81e0ff3 	str	x19, [sp,#-32]!
 2a0:	90000013 	adrp	x19, 0 <stmmac_cmdline_opt>
 2a4:	b340de6f 	bfxil	x15, x19, #0, #56
 2a8:	f9400268 	ldr	x8, [x19]
 2ac:	a9017bfd 	stp	x29, x30, [sp,#16]
 2b0:	910043fd 	add	x29, sp, #0x10
 2b4:	b5000168 	cbnz	x8, 2e0 <stmmac_init+0x44>
 2b8:	90000000 	adrp	x0, 0 <stmmac_cmdline_opt>
 2bc:	91000000 	add	x0, x0, #0x0
 2c0:	aa1f03e1 	mov	x1, xzr
 2c4:	94000000 	bl	0 <debugfs_create_dir>
 2c8:	f940027f 	ldr	xzr, [x19]
 2cc:	b340de6f 	bfxil	x15, x19, #0, #56
 2d0:	f9000260 	str	x0, [x19]
 2d4:	b4000100 	cbz	x0, 2f4 <stmmac_init+0x58>
 2d8:	b13ffc1f 	cmn	x0, #0xfff
 2dc:	540000c2 	b.cs	2f4 <stmmac_init+0x58>
 2e0:	90000000 	adrp	x0, 0 <stmmac_cmdline_opt>
 2e4:	91000000 	add	x0, x0, #0x0
 2e8:	94000000 	bl	0 <printk>
 2ec:	2a1f03e0 	mov	w0, wzr
 2f0:	14000007 	b	30c <stmmac_init+0x70>
 2f4:	90000000 	adrp	x0, 0 <stmmac_cmdline_opt>
 2f8:	90000001 	adrp	x1, 0 <stmmac_cmdline_opt>
 2fc:	91000000 	add	x0, x0, #0x0
 300:	91000021 	add	x1, x1, #0x0
 304:	94000000 	bl	0 <printk>
 308:	12800160 	mov	w0, #0xfffffff4            	// #-12
 30c:	a9417bfd 	ldp	x29, x30, [sp,#16]
 310:	f84207f3 	ldr	x19, [sp],#32
 314:	b340dfcf 	bfxil	x15, x30, #0, #56
 318:	f94003df 	ldr	xzr, [x30]
 31c:	d65f03c0 	ret

Disassembly of section .exit.text:

0000000000000000 <stmmac_exit>:
   0:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
   4:	90000008 	adrp	x8, 0 <stmmac_exit>
   8:	b340dd0f 	bfxil	x15, x8, #0, #56
   c:	f9400100 	ldr	x0, [x8]
  10:	910003fd 	mov	x29, sp
  14:	94000000 	bl	0 <debugfs_remove_recursive>
  18:	a8c17bfd 	ldp	x29, x30, [sp],#16
  1c:	b340dfcf 	bfxil	x15, x30, #0, #56
  20:	f94003df 	ldr	xzr, [x30]
  24:	d65f03c0 	ret
