
target/riscv64gc-unknown-none-elf/debug/os:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 00014117     	auipc	sp, 0x14
80200004: 00010113     	mv	sp, sp
80200008: 00000097     	auipc	ra, 0x0
8020000c: 49c080e7     	jalr	0x49c(ra) <main>

0000000080200010 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h85d0850c07d0c85fE>:
;     fn write_str(&mut self, s: &str) -> fmt::Result {
80200010: 711d         	addi	sp, sp, -0x60
80200012: ec86         	sd	ra, 0x58(sp)
80200014: e8a2         	sd	s0, 0x50(sp)
80200016: 1080         	addi	s0, sp, 0x60
80200018: fac43023     	sd	a2, -0x60(s0)
8020001c: 862e         	mv	a2, a1
8020001e: fa043583     	ld	a1, -0x60(s0)
80200022: fac43423     	sd	a2, -0x58(s0)
80200026: 862a         	mv	a2, a0
80200028: fa843503     	ld	a0, -0x58(s0)
8020002c: fcc43823     	sd	a2, -0x30(s0)
80200030: fca43c23     	sd	a0, -0x28(s0)
80200034: feb43023     	sd	a1, -0x20(s0)
;         for c in s.chars() {
80200038: 00000097     	auipc	ra, 0x0
8020003c: 5fa080e7     	jalr	0x5fa(ra) <_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h66508831be11ae5cE>
80200040: 00001097     	auipc	ra, 0x1
80200044: c88080e7     	jalr	-0x378(ra) <_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc766c5bef8d159aeE>
80200048: faa43c23     	sd	a0, -0x48(s0)
8020004c: fcb43023     	sd	a1, -0x40(s0)
80200050: a009         	j	0x80200052 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h85d0850c07d0c85fE+0x42>
80200052: fb840513     	addi	a0, s0, -0x48
;         for c in s.chars() {
80200056: 00001097     	auipc	ra, 0x1
8020005a: bd2080e7     	jalr	-0x42e(ra) <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E>
8020005e: fca42623     	sw	a0, -0x34(s0)
80200062: fcc42503     	lw	a0, -0x34(s0)
80200066: 001105b7     	lui	a1, 0x110
8020006a: 00b51d63     	bne	a0, a1, 0x80200084 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h85d0850c07d0c85fE+0x74>
8020006e: a009         	j	0x80200070 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h85d0850c07d0c85fE+0x60>
80200070: 4501         	li	a0, 0x0
;         Ok(())
80200072: faa40ba3     	sb	a0, -0x49(s0)
;     }
80200076: fb744503     	lbu	a0, -0x49(s0)
8020007a: 8905         	andi	a0, a0, 0x1
8020007c: 60e6         	ld	ra, 0x58(sp)
8020007e: 6446         	ld	s0, 0x50(sp)
80200080: 6125         	addi	sp, sp, 0x60
80200082: 8082         	ret
;         for c in s.chars() {
80200084: fcc46503     	lwu	a0, -0x34(s0)
80200088: fea42623     	sw	a0, -0x14(s0)
;             sbi::console_putchar(c as usize);
8020008c: 00000097     	auipc	ra, 0x0
80200090: 5c0080e7     	jalr	0x5c0(ra) <_ZN2os3sbi15console_putchar17hf3e9192f0d47dd8bE>
80200094: bf7d         	j	0x80200052 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h85d0850c07d0c85fE+0x42>

0000000080200096 <_ZN2os7console5print17h419fae96ed6cafbaE>:
; pub fn print(args: fmt::Arguments) {
80200096: 715d         	addi	sp, sp, -0x50
80200098: e486         	sd	ra, 0x48(sp)
8020009a: e0a2         	sd	s0, 0x40(sp)
8020009c: 0880         	addi	s0, sp, 0x50
;     Stdout.write_fmt(args).unwrap();
8020009e: 750c         	ld	a1, 0x28(a0)
802000a0: feb43023     	sd	a1, -0x20(s0)
802000a4: 710c         	ld	a1, 0x20(a0)
802000a6: fcb43c23     	sd	a1, -0x28(s0)
802000aa: 6d0c         	ld	a1, 0x18(a0)
802000ac: fcb43823     	sd	a1, -0x30(s0)
802000b0: 690c         	ld	a1, 0x10(a0)
802000b2: fcb43423     	sd	a1, -0x38(s0)
802000b6: 650c         	ld	a1, 0x8(a0)
802000b8: fcb43023     	sd	a1, -0x40(s0)
802000bc: 6108         	ld	a0, 0x0(a0)
802000be: faa43c23     	sd	a0, -0x48(s0)
802000c2: fb740513     	addi	a0, s0, -0x49
802000c6: fb840593     	addi	a1, s0, -0x48
802000ca: 00001097     	auipc	ra, 0x1
802000ce: dc6080e7     	jalr	-0x23a(ra) <_ZN4core3fmt5Write9write_fmt17h8214f145809d92eeE>
802000d2: fea40723     	sb	a0, -0x12(s0)
;         match self {
802000d6: fee44503     	lbu	a0, -0x12(s0)
802000da: 8905         	andi	a0, a0, 0x1
802000dc: c515         	beqz	a0, 0x80200108 <.Lpcrel_hi2+0x18>
802000de: a009         	j	0x802000e0 <.Lpcrel_hi0>

00000000802000e0 <.Lpcrel_hi0>:
;             Err(e) => unwrap_failed("called `Result::unwrap()` on an `Err` value", &e),
802000e0: 00003517     	auipc	a0, 0x3
802000e4: f4050513     	addi	a0, a0, -0xc0

00000000802000e8 <.Lpcrel_hi1>:
802000e8: 00003597     	auipc	a1, 0x3
802000ec: f1858693     	addi	a3, a1, -0xe8

00000000802000f0 <.Lpcrel_hi2>:
802000f0: 00003597     	auipc	a1, 0x3
802000f4: f7058713     	addi	a4, a1, -0x90
802000f8: 02b00593     	li	a1, 0x2b
802000fc: fef40613     	addi	a2, s0, -0x11
80200100: 00001097     	auipc	ra, 0x1
80200104: 2b6080e7     	jalr	0x2b6(ra) <_ZN4core6result13unwrap_failed17h29324abbdc95674dE>
80200108: 60a6         	ld	ra, 0x48(sp)
8020010a: 6406         	ld	s0, 0x40(sp)
; }
8020010c: 6161         	addi	sp, sp, 0x50
8020010e: 8082         	ret

0000000080200110 <_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h402c9613bb239befE>:
;     fn next(&mut self) -> Option<A> {
80200110: 1101         	addi	sp, sp, -0x20
80200112: ec06         	sd	ra, 0x18(sp)
80200114: e822         	sd	s0, 0x10(sp)
80200116: 1000         	addi	s0, sp, 0x20
80200118: fea43423     	sd	a0, -0x18(s0)
;         self.spec_next()
8020011c: 00000097     	auipc	ra, 0x0
80200120: 080080e7     	jalr	0x80(ra) <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6903cb7222a8e560E>
80200124: 60e2         	ld	ra, 0x18(sp)
80200126: 6442         	ld	s0, 0x10(sp)
;     }
80200128: 6105         	addi	sp, sp, 0x20
8020012a: 8082         	ret

000000008020012c <_ZN4core4iter6traits8iterator8Iterator4fold17hae3b517b07e7a84eE>:
;     fn fold<B, F>(mut self, init: B, mut f: F) -> B
8020012c: 715d         	addi	sp, sp, -0x50
8020012e: e486         	sd	ra, 0x48(sp)
80200130: e0a2         	sd	s0, 0x40(sp)
80200132: 0880         	addi	s0, sp, 0x50
80200134: faa43c23     	sd	a0, -0x48(s0)
80200138: fcb43023     	sd	a1, -0x40(s0)
;         while let Some(x) = self.next() {
8020013c: a009         	j	0x8020013e <_ZN4core4iter6traits8iterator8Iterator4fold17hae3b517b07e7a84eE+0x12>
8020013e: fb840513     	addi	a0, s0, -0x48
;         while let Some(x) = self.next() {
80200142: 00000097     	auipc	ra, 0x0
80200146: fce080e7     	jalr	-0x32(ra) <_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h402c9613bb239befE>
8020014a: fca43823     	sd	a0, -0x30(s0)
8020014e: fcb43c23     	sd	a1, -0x28(s0)
80200152: fd043503     	ld	a0, -0x30(s0)
80200156: 4585         	li	a1, 0x1
80200158: 00b51e63     	bne	a0, a1, 0x80200174 <_ZN4core4iter6traits8iterator8Iterator4fold17hae3b517b07e7a84eE+0x48>
8020015c: a009         	j	0x8020015e <_ZN4core4iter6traits8iterator8Iterator4fold17hae3b517b07e7a84eE+0x32>
8020015e: fd843583     	ld	a1, -0x28(s0)
80200162: feb43423     	sd	a1, -0x18(s0)
80200166: fcf40513     	addi	a0, s0, -0x31
;             accum = f(accum, x);
8020016a: 00001097     	auipc	ra, 0x1
8020016e: f2e080e7     	jalr	-0xd2(ra) <_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h21dc12bd44ca4a5cE>
;         while let Some(x) = self.next() {
80200172: b7f1         	j	0x8020013e <_ZN4core4iter6traits8iterator8Iterator4fold17hae3b517b07e7a84eE+0x12>
80200174: 60a6         	ld	ra, 0x48(sp)
80200176: 6406         	ld	s0, 0x40(sp)
;     }
80200178: 6161         	addi	sp, sp, 0x50
8020017a: 8082         	ret

000000008020017c <_ZN4core4iter6traits8iterator8Iterator8for_each17h12ef4d5c07e1ef54E>:
;     fn for_each<F>(self, f: F)
8020017c: 7179         	addi	sp, sp, -0x30
8020017e: f406         	sd	ra, 0x28(sp)
80200180: f022         	sd	s0, 0x20(sp)
80200182: 1800         	addi	s0, sp, 0x30
80200184: fca43c23     	sd	a0, -0x28(s0)
80200188: feb43023     	sd	a1, -0x20(s0)
;         self.fold((), call(f));
8020018c: 00000097     	auipc	ra, 0x0
80200190: fa0080e7     	jalr	-0x60(ra) <_ZN4core4iter6traits8iterator8Iterator4fold17hae3b517b07e7a84eE>
80200194: 70a2         	ld	ra, 0x28(sp)
80200196: 7402         	ld	s0, 0x20(sp)
;     }
80200198: 6145         	addi	sp, sp, 0x30
8020019a: 8082         	ret

000000008020019c <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6903cb7222a8e560E>:
;     fn spec_next(&mut self) -> Option<T> {
8020019c: 711d         	addi	sp, sp, -0x60
8020019e: ec86         	sd	ra, 0x58(sp)
802001a0: e8a2         	sd	s0, 0x50(sp)
802001a2: 1080         	addi	s0, sp, 0x60
802001a4: 85aa         	mv	a1, a0
802001a6: fab43c23     	sd	a1, -0x48(s0)
802001aa: fcb43823     	sd	a1, -0x30(s0)
;         if self.start < self.end {
802001ae: 00858513     	addi	a0, a1, 0x8
802001b2: feb43023     	sd	a1, -0x20(s0)
802001b6: fea43423     	sd	a0, -0x18(s0)
;                 fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
802001ba: 6188         	ld	a0, 0x0(a1)
802001bc: 658c         	ld	a1, 0x8(a1)
;         if self.start < self.end {
802001be: 00b56763     	bltu	a0, a1, 0x802001cc <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6903cb7222a8e560E+0x30>
802001c2: a009         	j	0x802001c4 <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6903cb7222a8e560E+0x28>
802001c4: 4501         	li	a0, 0x0
;             None
802001c6: fca43023     	sd	a0, -0x40(s0)
;         if self.start < self.end {
802001ca: a825         	j	0x80200202 <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6903cb7222a8e560E+0x66>
802001cc: fb843503     	ld	a0, -0x48(s0)
;             let old = self.start;
802001d0: 6108         	ld	a0, 0x0(a0)
802001d2: faa43423     	sd	a0, -0x58(s0)
802001d6: fca43c23     	sd	a0, -0x28(s0)
802001da: 4585         	li	a1, 0x1
802001dc: fab43823     	sd	a1, -0x50(s0)
;             self.start = unsafe { Step::forward_unchecked(old, 1) };
802001e0: 00001097     	auipc	ra, 0x1
802001e4: aaa080e7     	jalr	-0x556(ra) <_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h71d94d836a7ba49dE>
802001e8: fb843683     	ld	a3, -0x48(s0)
802001ec: fa843583     	ld	a1, -0x58(s0)
802001f0: 862a         	mv	a2, a0
802001f2: fb043503     	ld	a0, -0x50(s0)
802001f6: e290         	sd	a2, 0x0(a3)
;             Some(old)
802001f8: fcb43423     	sd	a1, -0x38(s0)
802001fc: fca43023     	sd	a0, -0x40(s0)
;         if self.start < self.end {
80200200: a009         	j	0x80200202 <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6903cb7222a8e560E+0x66>
;     }
80200202: fc043503     	ld	a0, -0x40(s0)
80200206: fc843583     	ld	a1, -0x38(s0)
8020020a: 60e6         	ld	ra, 0x58(sp)
8020020c: 6446         	ld	s0, 0x50(sp)
8020020e: 6125         	addi	sp, sp, 0x60
80200210: 8082         	ret

0000000080200212 <_ZN4core3fmt2rt8Argument11new_display17h6af7766955597fa5E>:
;     pub fn new_display<T: Display>(x: &T) -> Argument<'_> {
80200212: 1101         	addi	sp, sp, -0x20
80200214: ec06         	sd	ra, 0x18(sp)
80200216: e822         	sd	s0, 0x10(sp)
80200218: 1000         	addi	s0, sp, 0x20
8020021a: feb43423     	sd	a1, -0x18(s0)

000000008020021e <.Lpcrel_hi0>:
;         Self::new(x, Display::fmt)
8020021e: 00001617     	auipc	a2, 0x1
80200222: 97460613     	addi	a2, a2, -0x68c
80200226: 00000097     	auipc	ra, 0x0
8020022a: 08e080e7     	jalr	0x8e(ra) <_ZN4core3fmt2rt8Argument3new17h72901039f69a30d4E>
8020022e: 60e2         	ld	ra, 0x18(sp)
80200230: 6442         	ld	s0, 0x10(sp)
;     }
80200232: 6105         	addi	sp, sp, 0x20
80200234: 8082         	ret

0000000080200236 <_ZN4core3fmt2rt8Argument11new_display17ha2e77db2d4489946E>:
;     pub fn new_display<T: Display>(x: &T) -> Argument<'_> {
80200236: 1101         	addi	sp, sp, -0x20
80200238: ec06         	sd	ra, 0x18(sp)
8020023a: e822         	sd	s0, 0x10(sp)
8020023c: 1000         	addi	s0, sp, 0x20
8020023e: feb43423     	sd	a1, -0x18(s0)

0000000080200242 <.Lpcrel_hi1>:
;         Self::new(x, Display::fmt)
80200242: 00001617     	auipc	a2, 0x1
80200246: db260613     	addi	a2, a2, -0x24e
8020024a: 00000097     	auipc	ra, 0x0
8020024e: 0a0080e7     	jalr	0xa0(ra) <_ZN4core3fmt2rt8Argument3new17ha4a431f52136c395E>
80200252: 60e2         	ld	ra, 0x18(sp)
80200254: 6442         	ld	s0, 0x10(sp)
;     }
80200256: 6105         	addi	sp, sp, 0x20
80200258: 8082         	ret

000000008020025a <_ZN4core3fmt2rt8Argument11new_display17hc8dd6abc9d980795E>:
;     pub fn new_display<T: Display>(x: &T) -> Argument<'_> {
8020025a: 1101         	addi	sp, sp, -0x20
8020025c: ec06         	sd	ra, 0x18(sp)
8020025e: e822         	sd	s0, 0x10(sp)
80200260: 1000         	addi	s0, sp, 0x20
80200262: feb43423     	sd	a1, -0x18(s0)

0000000080200266 <.Lpcrel_hi2>:
;         Self::new(x, Display::fmt)
80200266: 00002617     	auipc	a2, 0x2
8020026a: af460613     	addi	a2, a2, -0x50c
8020026e: 00000097     	auipc	ra, 0x0
80200272: 010080e7     	jalr	0x10(ra) <_ZN4core3fmt2rt8Argument3new17h31d3f84c0f6f2436E>
80200276: 60e2         	ld	ra, 0x18(sp)
80200278: 6442         	ld	s0, 0x10(sp)
;     }
8020027a: 6105         	addi	sp, sp, 0x20
8020027c: 8082         	ret

000000008020027e <_ZN4core3fmt2rt8Argument3new17h31d3f84c0f6f2436E>:
;     fn new<'a, T>(x: &'a T, f: fn(&T, &mut Formatter<'_>) -> Result) -> Argument<'a> {
8020027e: 7139         	addi	sp, sp, -0x40
80200280: fc06         	sd	ra, 0x38(sp)
80200282: f822         	sd	s0, 0x30(sp)
80200284: 0080         	addi	s0, sp, 0x40
80200286: fcb43423     	sd	a1, -0x38(s0)
8020028a: 85aa         	mv	a1, a0
8020028c: fc843503     	ld	a0, -0x38(s0)
80200290: fea43023     	sd	a0, -0x20(s0)
80200294: fec43423     	sd	a2, -0x18(s0)
;             ty: ArgumentType::Placeholder {
80200298: fca43823     	sd	a0, -0x30(s0)
8020029c: fcc43c23     	sd	a2, -0x28(s0)
;         Argument {
802002a0: fd843503     	ld	a0, -0x28(s0)
802002a4: e588         	sd	a0, 0x8(a1)
802002a6: fd043503     	ld	a0, -0x30(s0)
802002aa: e188         	sd	a0, 0x0(a1)
802002ac: 70e2         	ld	ra, 0x38(sp)
802002ae: 7442         	ld	s0, 0x30(sp)
;     }
802002b0: 6121         	addi	sp, sp, 0x40
802002b2: 8082         	ret

00000000802002b4 <_ZN4core3fmt2rt8Argument3new17h72901039f69a30d4E>:
;     fn new<'a, T>(x: &'a T, f: fn(&T, &mut Formatter<'_>) -> Result) -> Argument<'a> {
802002b4: 7139         	addi	sp, sp, -0x40
802002b6: fc06         	sd	ra, 0x38(sp)
802002b8: f822         	sd	s0, 0x30(sp)
802002ba: 0080         	addi	s0, sp, 0x40
802002bc: fcb43423     	sd	a1, -0x38(s0)
802002c0: 85aa         	mv	a1, a0
802002c2: fc843503     	ld	a0, -0x38(s0)
802002c6: fea43023     	sd	a0, -0x20(s0)
802002ca: fec43423     	sd	a2, -0x18(s0)
;             ty: ArgumentType::Placeholder {
802002ce: fca43823     	sd	a0, -0x30(s0)
802002d2: fcc43c23     	sd	a2, -0x28(s0)
;         Argument {
802002d6: fd843503     	ld	a0, -0x28(s0)
802002da: e588         	sd	a0, 0x8(a1)
802002dc: fd043503     	ld	a0, -0x30(s0)
802002e0: e188         	sd	a0, 0x0(a1)
802002e2: 70e2         	ld	ra, 0x38(sp)
802002e4: 7442         	ld	s0, 0x30(sp)
;     }
802002e6: 6121         	addi	sp, sp, 0x40
802002e8: 8082         	ret

00000000802002ea <_ZN4core3fmt2rt8Argument3new17ha4a431f52136c395E>:
;     fn new<'a, T>(x: &'a T, f: fn(&T, &mut Formatter<'_>) -> Result) -> Argument<'a> {
802002ea: 7139         	addi	sp, sp, -0x40
802002ec: fc06         	sd	ra, 0x38(sp)
802002ee: f822         	sd	s0, 0x30(sp)
802002f0: 0080         	addi	s0, sp, 0x40
802002f2: fcb43423     	sd	a1, -0x38(s0)
802002f6: 85aa         	mv	a1, a0
802002f8: fc843503     	ld	a0, -0x38(s0)
802002fc: fea43023     	sd	a0, -0x20(s0)
80200300: fec43423     	sd	a2, -0x18(s0)
;             ty: ArgumentType::Placeholder {
80200304: fca43823     	sd	a0, -0x30(s0)
80200308: fcc43c23     	sd	a2, -0x28(s0)
;         Argument {
8020030c: fd843503     	ld	a0, -0x28(s0)
80200310: e588         	sd	a0, 0x8(a1)
80200312: fd043503     	ld	a0, -0x30(s0)
80200316: e188         	sd	a0, 0x0(a1)
80200318: 70e2         	ld	ra, 0x38(sp)
8020031a: 7442         	ld	s0, 0x30(sp)
;     }
8020031c: 6121         	addi	sp, sp, 0x40
8020031e: 8082         	ret

0000000080200320 <_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hbf05f0c1e130dc65E>:
;             const fn precondition_check($($name:$ty),*) {
80200320: 7131         	addi	sp, sp, -0xc0
80200322: fd06         	sd	ra, 0xb8(sp)
80200324: f922         	sd	s0, 0xb0(sp)
80200326: 0180         	addi	s0, sp, 0xc0
80200328: f4d43c23     	sd	a3, -0xa8(s0)
8020032c: f6c43023     	sd	a2, -0xa0(s0)
80200330: f6b43423     	sd	a1, -0x98(s0)
80200334: f6a43823     	sd	a0, -0x90(s0)
80200338: faa43823     	sd	a0, -0x50(s0)
8020033c: fab43c23     	sd	a1, -0x48(s0)
80200340: fcc43023     	sd	a2, -0x40(s0)
80200344: fcd43423     	sd	a3, -0x38(s0)
80200348: 4581         	li	a1, 0x0
;     is_zst: bool,
8020034a: fcb40b23     	sb	a1, -0x2a(s0)
;         fn runtime$(<$($binders)*>)?($($arg: $ty),*) $( -> $ret )? {
8020034e: fcb40ba3     	sb	a1, -0x29(s0)

0000000080200352 <.Lpcrel_hi0>:
;     pub const fn new_const<const N: usize>(pieces: &'a [&'static str; N]) -> Self {
80200352: 00003597     	auipc	a1, 0x3
80200356: d5658593     	addi	a1, a1, -0x2aa
8020035a: fcb43c23     	sd	a1, -0x28(s0)
;             ub_checks::maybe_is_aligned_and_not_null(data, align, false)
8020035e: fea43023     	sd	a0, -0x20(s0)
;             return intrinsics::ctpop(self);
80200362: 00165513     	srli	a0, a2, 0x1
80200366: 555555b7     	lui	a1, 0x55555
8020036a: 5555859b     	addiw	a1, a1, 0x555
8020036e: 02059693     	slli	a3, a1, 0x20
80200372: 95b6         	add	a1, a1, a3
80200374: 8d6d         	and	a0, a0, a1
80200376: 40a605b3     	sub	a1, a2, a0
8020037a: 33333537     	lui	a0, 0x33333
8020037e: 3335051b     	addiw	a0, a0, 0x333
80200382: 02051613     	slli	a2, a0, 0x20
80200386: 962a         	add	a2, a2, a0
80200388: 00c5f533     	and	a0, a1, a2
8020038c: 8189         	srli	a1, a1, 0x2
8020038e: 8df1         	and	a1, a1, a2
80200390: 952e         	add	a0, a0, a1
80200392: 00455593     	srli	a1, a0, 0x4
80200396: 952e         	add	a0, a0, a1
80200398: 0f0f15b7     	lui	a1, 0xf0f1
8020039c: f0f5859b     	addiw	a1, a1, -0xf1
802003a0: 02059613     	slli	a2, a1, 0x20
802003a4: 95b2         	add	a1, a1, a2
802003a6: 8d6d         	and	a0, a0, a1
802003a8: 010105b7     	lui	a1, 0x1010
802003ac: 1015859b     	addiw	a1, a1, 0x101
802003b0: 02059613     	slli	a2, a1, 0x20
802003b4: 95b2         	add	a1, a1, a2
802003b6: 02b50533     	mul	a0, a0, a1
802003ba: 9161         	srli	a0, a0, 0x38
802003bc: fea42623     	sw	a0, -0x14(s0)
802003c0: fec42503     	lw	a0, -0x14(s0)
802003c4: 4585         	li	a1, 0x1
;         if !align.is_power_of_two() {
802003c6: 00b51e63     	bne	a0, a1, 0x802003e2 <.Lpcrel_hi1>
802003ca: a009         	j	0x802003cc <.Lpcrel_hi0+0x7a>
802003cc: f7043503     	ld	a0, -0x90(s0)
802003d0: f6043583     	ld	a1, -0xa0(s0)
;         unsafe { mem::transmute(self.cast::<()>()) }
802003d4: 862a         	mv	a2, a0
802003d6: f4c43823     	sd	a2, -0xb0(s0)
;         self.addr() & (align - 1) == 0
802003da: 15fd         	addi	a1, a1, -0x1
802003dc: 8d6d         	and	a0, a0, a1
;             ptr.is_aligned_to(align) && (is_zst || !ptr.is_null())
802003de: c529         	beqz	a0, 0x80200428 <.Lpcrel_hi3+0x14>
802003e0: a881         	j	0x80200430 <.Lpcrel_hi3+0x1c>

00000000802003e2 <.Lpcrel_hi1>:
;         Arguments { pieces, fmt: None, args: &[] }
802003e2: 00003517     	auipc	a0, 0x3
802003e6: cc650513     	addi	a0, a0, -0x33a
802003ea: f6a43c23     	sd	a0, -0x88(s0)
802003ee: 4505         	li	a0, 0x1
802003f0: f8a43023     	sd	a0, -0x80(s0)

00000000802003f4 <.Lpcrel_hi2>:
802003f4: 00003517     	auipc	a0, 0x3
802003f8: dfc50513     	addi	a0, a0, -0x204
802003fc: 610c         	ld	a1, 0x0(a0)
802003fe: 6508         	ld	a0, 0x8(a0)
80200400: f8b43c23     	sd	a1, -0x68(s0)
80200404: faa43023     	sd	a0, -0x60(s0)
80200408: 4521         	li	a0, 0x8
8020040a: f8a43423     	sd	a0, -0x78(s0)
8020040e: 4501         	li	a0, 0x0
80200410: f8a43823     	sd	a0, -0x70(s0)

0000000080200414 <.Lpcrel_hi3>:
;             panic!("is_aligned_to: align is not a power-of-two");
80200414: 00003517     	auipc	a0, 0x3
80200418: e6450593     	addi	a1, a0, -0x19c
8020041c: f7840513     	addi	a0, s0, -0x88
80200420: 00001097     	auipc	ra, 0x1
80200424: eac080e7     	jalr	-0x154(ra) <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>
80200428: f5043503     	ld	a0, -0xb0(s0)
;             ub_checks::maybe_is_aligned_and_not_null(data, align, false)
8020042c: e501         	bnez	a0, 0x80200434 <.Lpcrel_hi3+0x20>
8020042e: a011         	j	0x80200432 <.Lpcrel_hi3+0x1e>
80200430: a009         	j	0x80200432 <.Lpcrel_hi3+0x1e>
80200432: a8b9         	j	0x80200490 <.Lpcrel_hi5>
80200434: f6843503     	ld	a0, -0x98(s0)
;     let max_len = if size == 0 { usize::MAX } else { isize::MAX as usize / size };
80200438: 00153593     	seqz	a1, a0
8020043c: f4b43423     	sd	a1, -0xb8(s0)
80200440: e511         	bnez	a0, 0x8020044c <.Lpcrel_hi3+0x38>
80200442: a009         	j	0x80200444 <.Lpcrel_hi3+0x30>
80200444: 557d         	li	a0, -0x1
;     let max_len = if size == 0 { usize::MAX } else { isize::MAX as usize / size };
80200446: faa43423     	sd	a0, -0x58(s0)
8020044a: a031         	j	0x80200456 <.Lpcrel_hi3+0x42>
8020044c: f4843503     	ld	a0, -0xb8(s0)
;     let max_len = if size == 0 { usize::MAX } else { isize::MAX as usize / size };
80200450: 8905         	andi	a0, a0, 0x1
80200452: e115         	bnez	a0, 0x80200476 <.Lpcrel_hi4>
80200454: a801         	j	0x80200464 <.Lpcrel_hi3+0x50>
80200456: f5843583     	ld	a1, -0xa8(s0)
;     len <= max_len
8020045a: fa843503     	ld	a0, -0x58(s0)
;                 && ub_checks::is_valid_allocation_size(size, len)
8020045e: 02b57563     	bgeu	a0, a1, 0x80200488 <.Lpcrel_hi4+0x12>
80200462: a015         	j	0x80200486 <.Lpcrel_hi4+0x10>
80200464: f6843583     	ld	a1, -0x98(s0)
80200468: 557d         	li	a0, -0x1
8020046a: 8105         	srli	a0, a0, 0x1
;     let max_len = if size == 0 { usize::MAX } else { isize::MAX as usize / size };
8020046c: 02b55533     	divu	a0, a0, a1
80200470: faa43423     	sd	a0, -0x58(s0)
80200474: b7cd         	j	0x80200456 <.Lpcrel_hi3+0x42>

0000000080200476 <.Lpcrel_hi4>:
80200476: 00003517     	auipc	a0, 0x3
8020047a: cba50513     	addi	a0, a0, -0x346
8020047e: 00002097     	auipc	ra, 0x2
80200482: 84a080e7     	jalr	-0x7b6(ra) <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h6bb92d78609f04c7E>
80200486: a029         	j	0x80200490 <.Lpcrel_hi5>
80200488: 70ea         	ld	ra, 0xb8(sp)
8020048a: 744a         	ld	s0, 0xb0(sp)
;             }
8020048c: 6129         	addi	sp, sp, 0xc0
8020048e: 8082         	ret

0000000080200490 <.Lpcrel_hi5>:
;                     ::core::panicking::panic_nounwind(
80200490: 00003517     	auipc	a0, 0x3
80200494: cb850513     	addi	a0, a0, -0x348
80200498: 0a600593     	li	a1, 0xa6
8020049c: 00001097     	auipc	ra, 0x1
802004a0: ed8080e7     	jalr	-0x128(ra) <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>

00000000802004a4 <main>:
; pub fn main() -> ! {
802004a4: 715d         	addi	sp, sp, -0x50
802004a6: e486         	sd	ra, 0x48(sp)
802004a8: e0a2         	sd	s0, 0x40(sp)
802004aa: 0880         	addi	s0, sp, 0x50
;     clear_bss();
802004ac: 00000097     	auipc	ra, 0x0
802004b0: 04c080e7     	jalr	0x4c(ra) <clear_bss>

00000000802004b4 <.Lpcrel_hi1>:
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
802004b4: 00003517     	auipc	a0, 0x3
802004b8: dec50593     	addi	a1, a0, -0x214
802004bc: fb840513     	addi	a0, s0, -0x48
802004c0: faa43823     	sd	a0, -0x50(s0)
802004c4: 00001097     	auipc	ra, 0x1
802004c8: dcc080e7     	jalr	-0x234(ra) <_ZN4core3fmt9Arguments9new_const17h218a79debce51b84E>
802004cc: fb043503     	ld	a0, -0x50(s0)
802004d0: 00000097     	auipc	ra, 0x0
802004d4: bc6080e7     	jalr	-0x43a(ra) <_ZN2os7console5print17h419fae96ed6cafbaE>
802004d8: 4505         	li	a0, 0x1
;     let a = 1 / 0;
802004da: e519         	bnez	a0, 0x802004e8 <.Lpcrel_hi2>
802004dc: a009         	j	0x802004de <.Lpcrel_hi1+0x2a>
802004de: 4501         	li	a0, 0x0
;     sbi::shutdown(false);
802004e0: 00000097     	auipc	ra, 0x0
802004e4: 188080e7     	jalr	0x188(ra) <_ZN2os3sbi8shutdown17hf975f689dfdde9b7E>

00000000802004e8 <.Lpcrel_hi2>:
;     let a = 1 / 0;
802004e8: 00003517     	auipc	a0, 0x3
802004ec: dd850513     	addi	a0, a0, -0x228
802004f0: 00001097     	auipc	ra, 0x1
802004f4: 7d8080e7     	jalr	0x7d8(ra) <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h6bb92d78609f04c7E>

00000000802004f8 <clear_bss>:
; fn clear_bss() {
802004f8: 1141         	addi	sp, sp, -0x10
802004fa: e406         	sd	ra, 0x8(sp)
802004fc: e022         	sd	s0, 0x0(sp)
802004fe: 0800         	addi	s0, sp, 0x10

0000000080200500 <.Lpcrel_hi3>:
;         (sbss..ebss).for_each(|a| *(a as *mut u8) = 0);
80200500: 00014517     	auipc	a0, 0x14
80200504: b0050513     	addi	a0, a0, -0x500
80200508: 6108         	ld	a0, 0x0(a0)

000000008020050a <.Lpcrel_hi4>:
8020050a: 00014597     	auipc	a1, 0x14
8020050e: af658593     	addi	a1, a1, -0x50a
80200512: 618c         	ld	a1, 0x0(a1)
80200514: 00000097     	auipc	ra, 0x0
80200518: c68080e7     	jalr	-0x398(ra) <_ZN4core4iter6traits8iterator8Iterator8for_each17h12ef4d5c07e1ef54E>
8020051c: 60a2         	ld	ra, 0x8(sp)
8020051e: 6402         	ld	s0, 0x0(sp)
; }
80200520: 0141         	addi	sp, sp, 0x10
80200522: 8082         	ret

0000000080200524 <_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8f090284f5da06b1E>:
;             const fn precondition_check($($name:$ty),*) {
80200524: 7179         	addi	sp, sp, -0x30
80200526: f406         	sd	ra, 0x28(sp)
80200528: f022         	sd	s0, 0x20(sp)
8020052a: 1800         	addi	s0, sp, 0x30
8020052c: fcb43c23     	sd	a1, -0x28(s0)
80200530: 85aa         	mv	a1, a0
80200532: fd843503     	ld	a0, -0x28(s0)
80200536: feb43023     	sd	a1, -0x20(s0)
8020053a: fea43423     	sd	a0, -0x18(s0)
;             let (a, b) = intrinsics::add_with_overflow(self as $ActualT, rhs as $ActualT);
8020053e: 952e         	add	a0, a0, a1
;                 ) => !lhs.overflowing_add(rhs).1,
80200540: 00b56763     	bltu	a0, a1, 0x8020054e <.Lpcrel_hi0>
80200544: a009         	j	0x80200546 <_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8f090284f5da06b1E+0x22>
80200546: 70a2         	ld	ra, 0x28(sp)
80200548: 7402         	ld	s0, 0x20(sp)
;             }
8020054a: 6145         	addi	sp, sp, 0x30
8020054c: 8082         	ret

000000008020054e <.Lpcrel_hi0>:
;                     ::core::panicking::panic_nounwind(
8020054e: 00003517     	auipc	a0, 0x3
80200552: d8a50513     	addi	a0, a0, -0x276
80200556: 04500593     	li	a1, 0x45
8020055a: 00001097     	auipc	ra, 0x1
8020055e: e1a080e7     	jalr	-0x1e6(ra) <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>

0000000080200562 <_ZN6sbi_rt4srst12system_reset17h04e143021c711cd9E>:
; pub fn system_reset<T, R>(reset_type: T, reset_reason: R) -> SbiRet
80200562: 715d         	addi	sp, sp, -0x50
80200564: e486         	sd	ra, 0x48(sp)
80200566: e0a2         	sd	s0, 0x40(sp)
80200568: 0880         	addi	s0, sp, 0x50
8020056a: fbe40513     	addi	a0, s0, -0x42
;         reset_type.raw() as _,
8020056e: 00000097     	auipc	ra, 0x0
80200572: 678080e7     	jalr	0x678(ra) <_ZN66_$LT$sbi_rt..srst..Shutdown$u20$as$u20$sbi_rt..srst..ResetType$GT$3raw17hc084d07b5a6aa685E>
80200576: 1502         	slli	a0, a0, 0x20
80200578: 9101         	srli	a0, a0, 0x20
8020057a: faa43823     	sd	a0, -0x50(s0)
8020057e: fbf40513     	addi	a0, s0, -0x41
;         reset_reason.raw() as _,
80200582: 00000097     	auipc	ra, 0x0
80200586: 690080e7     	jalr	0x690(ra) <_ZN73_$LT$sbi_rt..srst..SystemFailure$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17h107dec06de85136fE>
8020058a: 85aa         	mv	a1, a0
8020058c: fb043503     	ld	a0, -0x50(s0)
80200590: 1582         	slli	a1, a1, 0x20
80200592: 9181         	srli	a1, a1, 0x20
80200594: 53525637     	lui	a2, 0x53525
80200598: 3546089b     	addiw	a7, a2, 0x354
8020059c: fd143823     	sd	a7, -0x30(s0)
802005a0: 4801         	li	a6, 0x0
802005a2: fd043c23     	sd	a6, -0x28(s0)
802005a6: fea43023     	sd	a0, -0x20(s0)
802005aa: feb43423     	sd	a1, -0x18(s0)
;         core::arch::asm!(
802005ae: 00000073     	ecall
802005b2: fca43023     	sd	a0, -0x40(s0)
802005b6: fcb43423     	sd	a1, -0x38(s0)
;     SbiRet { error, value }
802005ba: fc043503     	ld	a0, -0x40(s0)
802005be: fc843583     	ld	a1, -0x38(s0)
802005c2: 60a6         	ld	ra, 0x48(sp)
802005c4: 6406         	ld	s0, 0x40(sp)
; }
802005c6: 6161         	addi	sp, sp, 0x50
802005c8: 8082         	ret

00000000802005ca <_ZN6sbi_rt4srst12system_reset17h543745ab6ce0ed80E>:
; pub fn system_reset<T, R>(reset_type: T, reset_reason: R) -> SbiRet
802005ca: 715d         	addi	sp, sp, -0x50
802005cc: e486         	sd	ra, 0x48(sp)
802005ce: e0a2         	sd	s0, 0x40(sp)
802005d0: 0880         	addi	s0, sp, 0x50
802005d2: fbe40513     	addi	a0, s0, -0x42
;         reset_type.raw() as _,
802005d6: 00000097     	auipc	ra, 0x0
802005da: 610080e7     	jalr	0x610(ra) <_ZN66_$LT$sbi_rt..srst..Shutdown$u20$as$u20$sbi_rt..srst..ResetType$GT$3raw17hc084d07b5a6aa685E>
802005de: 1502         	slli	a0, a0, 0x20
802005e0: 9101         	srli	a0, a0, 0x20
802005e2: faa43823     	sd	a0, -0x50(s0)
802005e6: fbf40513     	addi	a0, s0, -0x41
;         reset_reason.raw() as _,
802005ea: 00000097     	auipc	ra, 0x0
802005ee: 612080e7     	jalr	0x612(ra) <_ZN68_$LT$sbi_rt..srst..NoReason$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17h13ec554ab3a1ec11E>
802005f2: 85aa         	mv	a1, a0
802005f4: fb043503     	ld	a0, -0x50(s0)
802005f8: 1582         	slli	a1, a1, 0x20
802005fa: 9181         	srli	a1, a1, 0x20
802005fc: 53525637     	lui	a2, 0x53525
80200600: 3546089b     	addiw	a7, a2, 0x354
80200604: fd143823     	sd	a7, -0x30(s0)
80200608: 4801         	li	a6, 0x0
8020060a: fd043c23     	sd	a6, -0x28(s0)
8020060e: fea43023     	sd	a0, -0x20(s0)
80200612: feb43423     	sd	a1, -0x18(s0)
;         core::arch::asm!(
80200616: 00000073     	ecall
8020061a: fca43023     	sd	a0, -0x40(s0)
8020061e: fcb43423     	sd	a1, -0x38(s0)
;     SbiRet { error, value }
80200622: fc043503     	ld	a0, -0x40(s0)
80200626: fc843583     	ld	a1, -0x38(s0)
8020062a: 60a6         	ld	ra, 0x48(sp)
8020062c: 6406         	ld	s0, 0x40(sp)
; }
8020062e: 6161         	addi	sp, sp, 0x50
80200630: 8082         	ret

0000000080200632 <_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h66508831be11ae5cE>:
;     pub fn chars(&self) -> Chars<'_> {
80200632: 1101         	addi	sp, sp, -0x20
80200634: ec06         	sd	ra, 0x18(sp)
80200636: e822         	sd	s0, 0x10(sp)
80200638: 1000         	addi	s0, sp, 0x20
8020063a: fea43023     	sd	a0, -0x20(s0)
8020063e: feb43423     	sd	a1, -0x18(s0)
;         unsafe { intrinsics::offset(self, count) }
80200642: 95aa         	add	a1, a1, a0
80200644: 60e2         	ld	ra, 0x18(sp)
80200646: 6442         	ld	s0, 0x10(sp)
;     }
80200648: 6105         	addi	sp, sp, 0x20
8020064a: 8082         	ret

000000008020064c <_ZN2os3sbi15console_putchar17hf3e9192f0d47dd8bE>:
; pub fn console_putchar(c: usize) {
8020064c: 1101         	addi	sp, sp, -0x20
8020064e: ec06         	sd	ra, 0x18(sp)
80200650: e822         	sd	s0, 0x10(sp)
80200652: 1000         	addi	s0, sp, 0x20
80200654: fea43423     	sd	a0, -0x18(s0)
;     sbi_rt::legacy::console_putchar(c);
80200658: 00000097     	auipc	ra, 0x0
8020065c: 250080e7     	jalr	0x250(ra) <_ZN6sbi_rt6legacy15console_putchar17h810bfe63a5b19927E>
80200660: 60e2         	ld	ra, 0x18(sp)
80200662: 6442         	ld	s0, 0x10(sp)
; }
80200664: 6105         	addi	sp, sp, 0x20
80200666: 8082         	ret

0000000080200668 <_ZN2os3sbi8shutdown17hf975f689dfdde9b7E>:
; pub fn shutdown(failure: bool) -> ! {
80200668: 1101         	addi	sp, sp, -0x20
8020066a: ec06         	sd	ra, 0x18(sp)
8020066c: e822         	sd	s0, 0x10(sp)
8020066e: 1000         	addi	s0, sp, 0x20
80200670: fea407a3     	sb	a0, -0x11(s0)
;     if !failure {
80200674: e519         	bnez	a0, 0x80200682 <_ZN2os3sbi8shutdown17hf975f689dfdde9b7E+0x1a>
80200676: a009         	j	0x80200678 <_ZN2os3sbi8shutdown17hf975f689dfdde9b7E+0x10>
;         sbi_rt::system_reset(sbi_rt::Shutdown, sbi_rt::NoReason);
80200678: 00000097     	auipc	ra, 0x0
8020067c: f52080e7     	jalr	-0xae(ra) <_ZN6sbi_rt4srst12system_reset17h543745ab6ce0ed80E>
80200680: a031         	j	0x8020068c <.Lpcrel_hi0>
;         sbi_rt::system_reset(sbi_rt::Shutdown, sbi_rt::SystemFailure);
80200682: 00000097     	auipc	ra, 0x0
80200686: ee0080e7     	jalr	-0x120(ra) <_ZN6sbi_rt4srst12system_reset17h04e143021c711cd9E>
8020068a: a009         	j	0x8020068c <.Lpcrel_hi0>

000000008020068c <.Lpcrel_hi0>:
;     unreachable!()
8020068c: 00003517     	auipc	a0, 0x3
80200690: c9150513     	addi	a0, a0, -0x36f

0000000080200694 <.Lpcrel_hi1>:
80200694: 00003597     	auipc	a1, 0x3
80200698: cbc58613     	addi	a2, a1, -0x344
8020069c: 02800593     	li	a1, 0x28
802006a0: 00001097     	auipc	ra, 0x1
802006a4: c9a080e7     	jalr	-0x366(ra) <_ZN4core9panicking5panic17hc74596b0f69bcd0aE>

00000000802006a8 <_ZN4core5panic8location8Location4file17h5162cbf8fdfb5e52E>:
;     pub const fn file(&self) -> &str {
802006a8: 1101         	addi	sp, sp, -0x20
802006aa: ec06         	sd	ra, 0x18(sp)
802006ac: e822         	sd	s0, 0x10(sp)
802006ae: 1000         	addi	s0, sp, 0x20
802006b0: 85aa         	mv	a1, a0
802006b2: feb43423     	sd	a1, -0x18(s0)
;         self.file
802006b6: 6188         	ld	a0, 0x0(a1)
802006b8: 658c         	ld	a1, 0x8(a1)
802006ba: 60e2         	ld	ra, 0x18(sp)
802006bc: 6442         	ld	s0, 0x10(sp)
;     }
802006be: 6105         	addi	sp, sp, 0x20
802006c0: 8082         	ret

00000000802006c2 <_ZN4core5panic8location8Location4line17h433e30ca89150d5aE>:
;     pub const fn line(&self) -> u32 {
802006c2: 1101         	addi	sp, sp, -0x20
802006c4: ec06         	sd	ra, 0x18(sp)
802006c6: e822         	sd	s0, 0x10(sp)
802006c8: 1000         	addi	s0, sp, 0x20
802006ca: fea43423     	sd	a0, -0x18(s0)
;     }
802006ce: 4908         	lw	a0, 0x10(a0)
802006d0: 60e2         	ld	ra, 0x18(sp)
802006d2: 6442         	ld	s0, 0x10(sp)
802006d4: 6105         	addi	sp, sp, 0x20
802006d6: 8082         	ret

00000000802006d8 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E>:
; pub const fn encode_utf8_raw(code: u32, dst: &mut [u8]) -> &mut [u8] {
802006d8: 7131         	addi	sp, sp, -0xc0
802006da: fd06         	sd	ra, 0xb8(sp)
802006dc: f922         	sd	s0, 0xb0(sp)
802006de: 0180         	addi	s0, sp, 0xc0
802006e0: f4c43423     	sd	a2, -0xb8(s0)
802006e4: f4b43823     	sd	a1, -0xb0(s0)
802006e8: 86aa         	mv	a3, a0
802006ea: f4d43c23     	sd	a3, -0xa8(s0)
802006ee: f6a42623     	sw	a0, -0x94(s0)
802006f2: f6b43823     	sd	a1, -0x90(s0)
802006f6: f6c43c23     	sd	a2, -0x88(s0)
802006fa: 08000593     	li	a1, 0x80
;         ..MAX_ONE_B => 1,
802006fe: 00b56963     	bltu	a0, a1, 0x80200710 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x38>
80200702: a009         	j	0x80200704 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x2c>
80200704: f5843503     	ld	a0, -0xa8(s0)
;         ..MAX_TWO_B => 2,
80200708: 00b5551b     	srliw	a0, a0, 0xb
8020070c: c105         	beqz	a0, 0x8020072c <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x54>
8020070e: a809         	j	0x80200720 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x48>
80200710: f4843503     	ld	a0, -0xb8(s0)
80200714: 4585         	li	a1, 0x1
;         ..MAX_ONE_B => 1,
80200716: f6b43023     	sd	a1, -0xa0(s0)
;         (1, [a, ..]) => {
8020071a: 14051b63     	bnez	a0, 0x80200870 <.Lpcrel_hi0+0xf8>
8020071e: a091         	j	0x80200762 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x8a>
80200720: f5843503     	ld	a0, -0xa8(s0)
;         ..MAX_THREE_B => 3,
80200724: 0105551b     	srliw	a0, a0, 0x10
80200728: c505         	beqz	a0, 0x80200750 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x78>
8020072a: a811         	j	0x8020073e <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x66>
8020072c: f4843583     	ld	a1, -0xb8(s0)
80200730: 4509         	li	a0, 0x2
;         ..MAX_TWO_B => 2,
80200732: f6a43023     	sd	a0, -0xa0(s0)
80200736: 4505         	li	a0, 0x1
;         (2, [a, b, ..]) => {
80200738: 10b56463     	bltu	a0, a1, 0x80200840 <.Lpcrel_hi0+0xc8>
8020073c: a01d         	j	0x80200762 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x8a>
8020073e: f4843583     	ld	a1, -0xb8(s0)
80200742: 4511         	li	a0, 0x4
;         _ => 4,
80200744: f6a43023     	sd	a0, -0xa0(s0)
80200748: 450d         	li	a0, 0x3
;         (4, [a, b, c, d, ..]) => {
8020074a: 02b56f63     	bltu	a0, a1, 0x80200788 <.Lpcrel_hi0+0x10>
8020074e: a811         	j	0x80200762 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x8a>
80200750: f4843583     	ld	a1, -0xb8(s0)
80200754: 450d         	li	a0, 0x3
;         ..MAX_THREE_B => 3,
80200756: f6a43023     	sd	a0, -0xa0(s0)
8020075a: 4509         	li	a0, 0x2
;         (3, [a, b, c, ..]) => {
8020075c: 08b56f63     	bltu	a0, a1, 0x802007fa <.Lpcrel_hi0+0x82>
80200760: a009         	j	0x80200762 <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E+0x8a>
80200762: f4843603     	ld	a2, -0xb8(s0)
80200766: f5843503     	ld	a0, -0xa8(s0)
;                 len: usize = len,
8020076a: f6043583     	ld	a1, -0xa0(s0)
8020076e: fcb43423     	sd	a1, -0x38(s0)
;                 dst_len: usize = dst.len(),
80200772: fcc43823     	sd	a2, -0x30(s0)
;         const_eval_select(($($val,)*), compiletime, runtime)
80200776: 2501         	sext.w	a0, a0

0000000080200778 <.Lpcrel_hi0>:
80200778: 00003697     	auipc	a3, 0x3
8020077c: c6868693     	addi	a3, a3, -0x398
80200780: 00001097     	auipc	ra, 0x1
80200784: 478080e7     	jalr	0x478(ra) <_ZN4core4char7methods15encode_utf8_raw8do_panic7runtime17hf2c5d4a1246995f1E>
80200788: f5043583     	ld	a1, -0xb0(s0)
8020078c: f5843503     	ld	a0, -0xa8(s0)
;         (4, [a, b, c, d, ..]) => {
80200790: f8b43023     	sd	a1, -0x80(s0)
80200794: 00158613     	addi	a2, a1, 0x1
80200798: f8c43423     	sd	a2, -0x78(s0)
8020079c: 00258613     	addi	a2, a1, 0x2
802007a0: f8c43823     	sd	a2, -0x70(s0)
802007a4: 00358613     	addi	a2, a1, 0x3
802007a8: f8c43c23     	sd	a2, -0x68(s0)
;             *a = (code >> 18 & 0x07) as u8 | TAG_FOUR_B;
802007ac: 02b51613     	slli	a2, a0, 0x2b
802007b0: 9275         	srli	a2, a2, 0x3d
802007b2: 0f060613     	addi	a2, a2, 0xf0
802007b6: 00c58023     	sb	a2, 0x0(a1)
;             *b = (code >> 12 & 0x3F) as u8 | TAG_CONT;
802007ba: 02e51613     	slli	a2, a0, 0x2e
802007be: 9269         	srli	a2, a2, 0x3a
802007c0: 08060613     	addi	a2, a2, 0x80
802007c4: 00c580a3     	sb	a2, 0x1(a1)
;             *c = (code >> 6 & 0x3F) as u8 | TAG_CONT;
802007c8: 03451613     	slli	a2, a0, 0x34
802007cc: 9269         	srli	a2, a2, 0x3a
802007ce: 08060613     	addi	a2, a2, 0x80
802007d2: 00c58123     	sb	a2, 0x2(a1)
;             *d = (code & 0x3F) as u8 | TAG_CONT;
802007d6: 03f57513     	andi	a0, a0, 0x3f
802007da: 08050513     	addi	a0, a0, 0x80
802007de: 00a581a3     	sb	a0, 0x3(a1)
;         }
802007e2: a009         	j	0x802007e4 <.Lpcrel_hi0+0x6c>
802007e4: f5043503     	ld	a0, -0xb0(s0)
;         self as *mut [T] as *mut T
802007e8: fea43023     	sd	a0, -0x20(s0)
;     unsafe { slice::from_raw_parts_mut(dst.as_mut_ptr(), len) }
802007ec: f6043503     	ld	a0, -0xa0(s0)
802007f0: f4a43023     	sd	a0, -0xc0(s0)
802007f4: fea43423     	sd	a0, -0x18(s0)
;             if ::core::ub_checks::$kind() {
802007f8: a069         	j	0x80200882 <.Lpcrel_hi0+0x10a>
802007fa: f5043583     	ld	a1, -0xb0(s0)
802007fe: f5843503     	ld	a0, -0xa8(s0)
;         (3, [a, b, c, ..]) => {
80200802: fab43023     	sd	a1, -0x60(s0)
80200806: 00158613     	addi	a2, a1, 0x1
8020080a: fac43423     	sd	a2, -0x58(s0)
8020080e: 00258613     	addi	a2, a1, 0x2
80200812: fac43823     	sd	a2, -0x50(s0)
;             *a = (code >> 12 & 0x0F) as u8 | TAG_THREE_B;
80200816: 03051613     	slli	a2, a0, 0x30
8020081a: 9271         	srli	a2, a2, 0x3c
8020081c: 0e060613     	addi	a2, a2, 0xe0
80200820: 00c58023     	sb	a2, 0x0(a1)
;             *b = (code >> 6 & 0x3F) as u8 | TAG_CONT;
80200824: 03451613     	slli	a2, a0, 0x34
80200828: 9269         	srli	a2, a2, 0x3a
8020082a: 08060613     	addi	a2, a2, 0x80
8020082e: 00c580a3     	sb	a2, 0x1(a1)
;             *c = (code & 0x3F) as u8 | TAG_CONT;
80200832: 03f57513     	andi	a0, a0, 0x3f
80200836: 08050513     	addi	a0, a0, 0x80
8020083a: 00a58123     	sb	a0, 0x2(a1)
;         }
8020083e: b75d         	j	0x802007e4 <.Lpcrel_hi0+0x6c>
80200840: f5043583     	ld	a1, -0xb0(s0)
80200844: f5843503     	ld	a0, -0xa8(s0)
;         (2, [a, b, ..]) => {
80200848: fab43c23     	sd	a1, -0x48(s0)
8020084c: 00158613     	addi	a2, a1, 0x1
80200850: fcc43023     	sd	a2, -0x40(s0)
;             *a = (code >> 6 & 0x1F) as u8 | TAG_TWO_B;
80200854: 03551613     	slli	a2, a0, 0x35
80200858: 926d         	srli	a2, a2, 0x3b
8020085a: 0c060613     	addi	a2, a2, 0xc0
8020085e: 00c58023     	sb	a2, 0x0(a1)
;             *b = (code & 0x3F) as u8 | TAG_CONT;
80200862: 03f57513     	andi	a0, a0, 0x3f
80200866: 08050513     	addi	a0, a0, 0x80
8020086a: 00a580a3     	sb	a0, 0x1(a1)
;         }
8020086e: bf9d         	j	0x802007e4 <.Lpcrel_hi0+0x6c>
80200870: f5843503     	ld	a0, -0xa8(s0)
80200874: f5043583     	ld	a1, -0xb0(s0)
;         (1, [a, ..]) => {
80200878: fcb43c23     	sd	a1, -0x28(s0)
;             *a = code as u8;
8020087c: 00a58023     	sb	a0, 0x0(a1)
;         }
80200880: b795         	j	0x802007e4 <.Lpcrel_hi0+0x6c>
80200882: f4043683     	ld	a3, -0xc0(s0)
80200886: f5043503     	ld	a0, -0xb0(s0)
8020088a: 4605         	li	a2, 0x1
;                 precondition_check($($arg,)*);
8020088c: 85b2         	mv	a1, a2
8020088e: 00000097     	auipc	ra, 0x0
80200892: a92080e7     	jalr	-0x56e(ra) <_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hbf05f0c1e130dc65E>
;             if ::core::ub_checks::$kind() {
80200896: a009         	j	0x80200898 <.Lpcrel_hi0+0x120>
80200898: f4043583     	ld	a1, -0xc0(s0)
8020089c: f5043503     	ld	a0, -0xb0(s0)
802008a0: 70ea         	ld	ra, 0xb8(sp)
802008a2: 744a         	ld	s0, 0xb0(sp)
; }
802008a4: 6129         	addi	sp, sp, 0xc0
802008a6: 8082         	ret

00000000802008a8 <_ZN6sbi_rt6legacy15console_putchar17h810bfe63a5b19927E>:
; pub fn console_putchar(c: usize) -> usize {
802008a8: 7179         	addi	sp, sp, -0x30
802008aa: f406         	sd	ra, 0x28(sp)
802008ac: f022         	sd	s0, 0x20(sp)
802008ae: 1800         	addi	s0, sp, 0x30
802008b0: fca43823     	sd	a0, -0x30(s0)
802008b4: 4885         	li	a7, 0x1
802008b6: ff143023     	sd	a7, -0x20(s0)
802008ba: fea43423     	sd	a0, -0x18(s0)
;         core::arch::asm!(
802008be: 00000073     	ecall
802008c2: fca43c23     	sd	a0, -0x28(s0)
;     error
802008c6: fd843503     	ld	a0, -0x28(s0)
802008ca: 70a2         	ld	ra, 0x28(sp)
802008cc: 7402         	ld	s0, 0x20(sp)
; }
802008ce: 6145         	addi	sp, sp, 0x30
802008d0: 8082         	ret

00000000802008d2 <_ZN4core3str11validations15next_code_point17h5a0828b660b2e745E>:
; pub unsafe fn next_code_point<'a, I: Iterator<Item = &'a u8>>(bytes: &mut I) -> Option<u32> {
802008d2: 7155         	addi	sp, sp, -0xd0
802008d4: e586         	sd	ra, 0xc8(sp)
802008d6: e1a2         	sd	s0, 0xc0(sp)
802008d8: 0980         	addi	s0, sp, 0xd0
802008da: f4a43823     	sd	a0, -0xb0(s0)
802008de: f8a43823     	sd	a0, -0x70(s0)
802008e2: 4589         	li	a1, 0x2
; const fn utf8_first_byte(byte: u8, width: u32) -> u32 {
802008e4: f8b42e23     	sw	a1, -0x64(s0)
;     let x = *bytes.next()?;
802008e8: 00000097     	auipc	ra, 0x0
802008ec: 1d2080e7     	jalr	0x1d2(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE>
802008f0: f6a43423     	sd	a0, -0x98(s0)
;         match self {
802008f4: f6843503     	ld	a0, -0x98(s0)
802008f8: ed09         	bnez	a0, 0x80200912 <.Lpcrel_hi0+0x16>
802008fa: a009         	j	0x802008fc <.Lpcrel_hi0>

00000000802008fc <.Lpcrel_hi0>:
;             None => None,
802008fc: 00003517     	auipc	a0, 0x3
80200900: b0450513     	addi	a0, a0, -0x4fc
80200904: 410c         	lw	a1, 0x0(a0)
80200906: 4148         	lw	a0, 0x4(a0)
80200908: f4b42c23     	sw	a1, -0xa8(s0)
8020090c: f4a42e23     	sw	a0, -0xa4(s0)
80200910: a035         	j	0x8020093c <.Lpcrel_hi0+0x40>
;             Some(v) => ControlFlow::Continue(v),
80200912: f6843503     	ld	a0, -0x98(s0)
80200916: faa43023     	sd	a0, -0x60(s0)
8020091a: f6a43023     	sd	a0, -0xa0(s0)
;     let x = *bytes.next()?;
8020091e: f6043503     	ld	a0, -0xa0(s0)
80200922: faa43423     	sd	a0, -0x58(s0)
80200926: 00050503     	lb	a0, 0x0(a0)
8020092a: 0ff57593     	andi	a1, a0, 0xff
8020092e: f4b43423     	sd	a1, -0xb8(s0)
80200932: faa409a3     	sb	a0, -0x4d(s0)
;     if x < 128 {
80200936: 02055e63     	bgez	a0, 0x80200972 <.Lpcrel_hi0+0x76>
8020093a: a809         	j	0x8020094c <.Lpcrel_hi0+0x50>
; }
8020093c: f5842503     	lw	a0, -0xa8(s0)
80200940: f5c42583     	lw	a1, -0xa4(s0)
80200944: 60ae         	ld	ra, 0xc8(sp)
80200946: 640e         	ld	s0, 0xc0(sp)
80200948: 6169         	addi	sp, sp, 0xd0
8020094a: 8082         	ret
8020094c: f5043503     	ld	a0, -0xb0(s0)
80200950: f4843583     	ld	a1, -0xb8(s0)
;     (byte & (0x7F >> width)) as u32
80200954: 89fd         	andi	a1, a1, 0x1f
80200956: f4b43023     	sd	a1, -0xc0(s0)
8020095a: fab42a23     	sw	a1, -0x4c(s0)
;     let y = unsafe { *bytes.next().unwrap_unchecked() };
8020095e: 00000097     	auipc	ra, 0x0
80200962: 15c080e7     	jalr	0x15c(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE>
80200966: f6a43823     	sd	a0, -0x90(s0)
;         match self {
8020096a: f7043503     	ld	a0, -0x90(s0)
8020096e: cd01         	beqz	a0, 0x80200986 <.Lpcrel_hi0+0x8a>
80200970: a005         	j	0x80200990 <.Lpcrel_hi0+0x94>
80200972: f4843503     	ld	a0, -0xb8(s0)
;         return Some(x as u32);
80200976: 0ff57513     	andi	a0, a0, 0xff
8020097a: f4a42e23     	sw	a0, -0xa4(s0)
8020097e: 4505         	li	a0, 0x1
80200980: f4a42c23     	sw	a0, -0xa8(s0)
80200984: bf65         	j	0x8020093c <.Lpcrel_hi0+0x40>
;                 precondition_check($($arg,)*);
80200986: 00000097     	auipc	ra, 0x0
8020098a: 652080e7     	jalr	0x652(ra) <_ZN4core4hint21unreachable_unchecked18precondition_check17hdf81b532decdea8cE>
8020098e: a82d         	j	0x802009c8 <.Lpcrel_hi0+0xcc>
80200990: f4843503     	ld	a0, -0xb8(s0)
80200994: f4043583     	ld	a1, -0xc0(s0)
;             Some(val) => val,
80200998: f7043603     	ld	a2, -0x90(s0)
8020099c: fac43c23     	sd	a2, -0x48(s0)
;     let y = unsafe { *bytes.next().unwrap_unchecked() };
802009a0: 00064603     	lbu	a2, 0x0(a2)
802009a4: f2c43c23     	sd	a2, -0xc8(s0)
802009a8: fcc403a3     	sb	a2, -0x39(s0)
;     (ch << 6) | (byte & CONT_MASK) as u32
802009ac: 0065959b     	slliw	a1, a1, 0x6
802009b0: 03f67613     	andi	a2, a2, 0x3f
802009b4: 8dd1         	or	a1, a1, a2
802009b6: f6b42e23     	sw	a1, -0x84(s0)
;     if x >= 0xE0 {
802009ba: 0ff57593     	andi	a1, a0, 0xff
802009be: 0df00513     	li	a0, 0xdf
802009c2: 00b56c63     	bltu	a0, a1, 0x802009da <.Lpcrel_hi0+0xde>
802009c6: a011         	j	0x802009ca <.Lpcrel_hi0+0xce>
802009c8: 0000         	unimp
;     Some(ch)
802009ca: f7c42503     	lw	a0, -0x84(s0)
802009ce: f4a42e23     	sw	a0, -0xa4(s0)
802009d2: 4505         	li	a0, 0x1
802009d4: f4a42c23     	sw	a0, -0xa8(s0)
; }
802009d8: b795         	j	0x8020093c <.Lpcrel_hi0+0x40>
802009da: f5043503     	ld	a0, -0xb0(s0)
;         let z = unsafe { *bytes.next().unwrap_unchecked() };
802009de: 00000097     	auipc	ra, 0x0
802009e2: 0dc080e7     	jalr	0xdc(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE>
802009e6: f8a43023     	sd	a0, -0x80(s0)
;         match self {
802009ea: f8043503     	ld	a0, -0x80(s0)
802009ee: e519         	bnez	a0, 0x802009fc <.Lpcrel_hi0+0x100>
802009f0: a009         	j	0x802009f2 <.Lpcrel_hi0+0xf6>
;                 precondition_check($($arg,)*);
802009f2: 00000097     	auipc	ra, 0x0
802009f6: 5e6080e7     	jalr	0x5e6(ra) <_ZN4core4hint21unreachable_unchecked18precondition_check17hdf81b532decdea8cE>
802009fa: b7f9         	j	0x802009c8 <.Lpcrel_hi0+0xcc>
802009fc: f4843503     	ld	a0, -0xb8(s0)
80200a00: f4043583     	ld	a1, -0xc0(s0)
80200a04: f3843603     	ld	a2, -0xc8(s0)
;             Some(val) => val,
80200a08: f8043683     	ld	a3, -0x80(s0)
80200a0c: fcd43423     	sd	a3, -0x38(s0)
;         let z = unsafe { *bytes.next().unwrap_unchecked() };
80200a10: 0006c683     	lbu	a3, 0x0(a3)
80200a14: fcd40ba3     	sb	a3, -0x29(s0)
;         let y_z = utf8_acc_cont_byte((y & CONT_MASK) as u32, z);
80200a18: 03f67613     	andi	a2, a2, 0x3f
80200a1c: fcc42c23     	sw	a2, -0x28(s0)
;     (ch << 6) | (byte & CONT_MASK) as u32
80200a20: 061a         	slli	a2, a2, 0x6
80200a22: 03f6f693     	andi	a3, a3, 0x3f
80200a26: 8e55         	or	a2, a2, a3
80200a28: f2c43823     	sd	a2, -0xd0(s0)
80200a2c: fcc42e23     	sw	a2, -0x24(s0)
;         ch = init << 12 | y_z;
80200a30: 00c5959b     	slliw	a1, a1, 0xc
80200a34: 8dd1         	or	a1, a1, a2
80200a36: f6b42e23     	sw	a1, -0x84(s0)
;         if x >= 0xF0 {
80200a3a: 0ff57593     	andi	a1, a0, 0xff
80200a3e: 0ef00513     	li	a0, 0xef
80200a42: 00b56463     	bltu	a0, a1, 0x80200a4a <.Lpcrel_hi0+0x14e>
80200a46: a009         	j	0x80200a48 <.Lpcrel_hi0+0x14c>
;     if x >= 0xE0 {
80200a48: b749         	j	0x802009ca <.Lpcrel_hi0+0xce>
80200a4a: f5043503     	ld	a0, -0xb0(s0)
;             let w = unsafe { *bytes.next().unwrap_unchecked() };
80200a4e: 00000097     	auipc	ra, 0x0
80200a52: 06c080e7     	jalr	0x6c(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE>
80200a56: f8a43423     	sd	a0, -0x78(s0)
;         match self {
80200a5a: f8843503     	ld	a0, -0x78(s0)
80200a5e: e519         	bnez	a0, 0x80200a6c <.Lpcrel_hi0+0x170>
80200a60: a009         	j	0x80200a62 <.Lpcrel_hi0+0x166>
;                 precondition_check($($arg,)*);
80200a62: 00000097     	auipc	ra, 0x0
80200a66: 576080e7     	jalr	0x576(ra) <_ZN4core4hint21unreachable_unchecked18precondition_check17hdf81b532decdea8cE>
80200a6a: bfb9         	j	0x802009c8 <.Lpcrel_hi0+0xcc>
80200a6c: f3043583     	ld	a1, -0xd0(s0)
80200a70: f4043503     	ld	a0, -0xc0(s0)
;             Some(val) => val,
80200a74: f8843603     	ld	a2, -0x78(s0)
80200a78: fec43023     	sd	a2, -0x20(s0)
;             let w = unsafe { *bytes.next().unwrap_unchecked() };
80200a7c: 00064603     	lbu	a2, 0x0(a2)
80200a80: fec407a3     	sb	a2, -0x11(s0)
;             ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
80200a84: 891d         	andi	a0, a0, 0x7
80200a86: 0125151b     	slliw	a0, a0, 0x12
;     (ch << 6) | (byte & CONT_MASK) as u32
80200a8a: 0065959b     	slliw	a1, a1, 0x6
80200a8e: 03f67613     	andi	a2, a2, 0x3f
80200a92: 8dd1         	or	a1, a1, a2
;             ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
80200a94: 8d4d         	or	a0, a0, a1
80200a96: f6a42e23     	sw	a0, -0x84(s0)
;         if x >= 0xF0 {
80200a9a: b77d         	j	0x80200a48 <.Lpcrel_hi0+0x14c>

0000000080200a9c <_ZN2os9clear_bss28_$u7b$$u7b$closure$u7d$$u7d$17hc21800ebed680f1bE>:
;         (sbss..ebss).for_each(|a| *(a as *mut u8) = 0);
80200a9c: 1101         	addi	sp, sp, -0x20
80200a9e: ec06         	sd	ra, 0x18(sp)
80200aa0: e822         	sd	s0, 0x10(sp)
80200aa2: 1000         	addi	s0, sp, 0x20
80200aa4: fea43023     	sd	a0, -0x20(s0)
80200aa8: feb43423     	sd	a1, -0x18(s0)
80200aac: 4501         	li	a0, 0x0
80200aae: 00a58023     	sb	a0, 0x0(a1)
80200ab2: 60e2         	ld	ra, 0x18(sp)
80200ab4: 6442         	ld	s0, 0x10(sp)
80200ab6: 6105         	addi	sp, sp, 0x20
80200ab8: 8082         	ret

0000000080200aba <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE>:
;             fn next(&mut self) -> Option<$elem> {
80200aba: 7175         	addi	sp, sp, -0x90
80200abc: e506         	sd	ra, 0x88(sp)
80200abe: e122         	sd	s0, 0x80(sp)
80200ac0: 0900         	addi	s0, sp, 0x90
80200ac2: f6a43c23     	sd	a0, -0x88(s0)
80200ac6: faa43023     	sd	a0, -0x60(s0)
80200aca: 4505         	li	a0, 0x1
;             unsafe fn post_inc_start(&mut self, offset: usize) -> NonNull<T> {
80200acc: faa43423     	sd	a0, -0x58(s0)
;     pub const unsafe fn add(self, count: usize) -> Self
80200ad0: faa43823     	sd	a0, -0x50(s0)
;         if T::IS_ZST {
80200ad4: a009         	j	0x80200ad6 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x1c>
80200ad6: f7843503     	ld	a0, -0x88(s0)
;             let $end = unsafe { *(&raw const $this.end_or_len).cast::<NonNull<T>>() };
80200ada: 00850593     	addi	a1, a0, 0x8
80200ade: fab43c23     	sd	a1, -0x48(s0)
80200ae2: 650c         	ld	a1, 0x8(a0)
80200ae4: f8b43823     	sd	a1, -0x70(s0)
;             end => $self.ptr == end,
80200ae8: fca43023     	sd	a0, -0x40(s0)
80200aec: f9040593     	addi	a1, s0, -0x70
80200af0: fcb43423     	sd	a1, -0x38(s0)
;         self.as_ptr() == other.as_ptr()
80200af4: 6108         	ld	a0, 0x0(a0)
;         unsafe { mem::transmute::<Self, *mut T>(self) }
80200af6: f9043583     	ld	a1, -0x70(s0)
;         self.as_ptr() == other.as_ptr()
80200afa: 8d2d         	xor	a0, a0, a1
80200afc: 00153513     	seqz	a0, a0
80200b00: f8a407a3     	sb	a0, -0x71(s0)
;         if T::IS_ZST {
80200b04: a009         	j	0x80200b06 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x4c>
;     ($this:ident, $len:ident => $zst_body:expr, $end:ident => $other_body:expr,) => {{
80200b06: f8f44503     	lbu	a0, -0x71(s0)
80200b0a: 8905         	andi	a0, a0, 0x1
80200b0c: e901         	bnez	a0, 0x80200b1c <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x62>
80200b0e: a009         	j	0x80200b10 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x56>
80200b10: f7843503     	ld	a0, -0x88(s0)
;                 let old = self.ptr;
80200b14: 6108         	ld	a0, 0x0(a0)
80200b16: f8a43c23     	sd	a0, -0x68(s0)
;         if T::IS_ZST {
80200b1a: a029         	j	0x80200b24 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x6a>
80200b1c: 4501         	li	a0, 0x0
;                         None
80200b1e: f8a43023     	sd	a0, -0x80(s0)
;                     if is_empty!(self) {
80200b22: a805         	j	0x80200b52 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x98>
80200b24: f7843583     	ld	a1, -0x88(s0)
;             let $end = unsafe { &mut *(&raw mut $this.end_or_len).cast::<NonNull<T>>() };
80200b28: 00858513     	addi	a0, a1, 0x8
80200b2c: fca43823     	sd	a0, -0x30(s0)
;         self as _
80200b30: fca43c23     	sd	a0, -0x28(s0)
;                         _end => self.ptr = self.ptr.add(offset),
80200b34: 6188         	ld	a0, 0x0(a1)
80200b36: fea43023     	sd	a0, -0x20(s0)
;         unsafe { NonNull { pointer: intrinsics::offset(self.as_ptr(), count) } }
80200b3a: 0505         	addi	a0, a0, 0x1
;                         _end => self.ptr = self.ptr.add(offset),
80200b3c: e188         	sd	a0, 0x0(a1)
;         if T::IS_ZST {
80200b3e: a009         	j	0x80200b40 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x86>
80200b40: f9840513     	addi	a0, s0, -0x68
;                     self.post_inc_start(1).$into_ref()
80200b44: fea43423     	sd	a0, -0x18(s0)
;         unsafe { mem::transmute::<Self, *mut T>(self) }
80200b48: f9843503     	ld	a0, -0x68(s0)
;                         Some(self.next_unchecked())
80200b4c: f8a43023     	sd	a0, -0x80(s0)
;                     if is_empty!(self) {
80200b50: a009         	j	0x80200b52 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb8281fdd0348f1bE+0x98>
;             }
80200b52: f8043503     	ld	a0, -0x80(s0)
80200b56: 60aa         	ld	ra, 0x88(sp)
80200b58: 640a         	ld	s0, 0x80(sp)
80200b5a: 6149         	addi	sp, sp, 0x90
80200b5c: 8082         	ret

0000000080200b5e <_ZN4core5panic10panic_info9PanicInfo7message17h3560203bd2b39260E>:
;     pub fn message(&self) -> PanicMessage<'_> {
80200b5e: 1101         	addi	sp, sp, -0x20
80200b60: ec06         	sd	ra, 0x18(sp)
80200b62: e822         	sd	s0, 0x10(sp)
80200b64: 1000         	addi	s0, sp, 0x20
80200b66: fea43423     	sd	a0, -0x18(s0)
;         PanicMessage { message: self.message }
80200b6a: 6108         	ld	a0, 0x0(a0)
80200b6c: 60e2         	ld	ra, 0x18(sp)
80200b6e: 6442         	ld	s0, 0x10(sp)
;     }
80200b70: 6105         	addi	sp, sp, 0x20
80200b72: 8082         	ret

0000000080200b74 <_ZN4core5panic10panic_info9PanicInfo8location17hf82ad9964d78f282E>:
;     pub fn location(&self) -> Option<&Location<'_>> {
80200b74: 1101         	addi	sp, sp, -0x20
80200b76: ec06         	sd	ra, 0x18(sp)
80200b78: e822         	sd	s0, 0x10(sp)
80200b7a: 1000         	addi	s0, sp, 0x20
80200b7c: fea43423     	sd	a0, -0x18(s0)
;         Some(&self.location)
80200b80: 6508         	ld	a0, 0x8(a0)
80200b82: fea43023     	sd	a0, -0x20(s0)
;     }
80200b86: fe043503     	ld	a0, -0x20(s0)
80200b8a: 60e2         	ld	ra, 0x18(sp)
80200b8c: 6442         	ld	s0, 0x10(sp)
80200b8e: 6105         	addi	sp, sp, 0x20
80200b90: 8082         	ret

0000000080200b92 <_ZN76_$LT$core..panic..panic_info..PanicMessage$u20$as$u20$core..fmt..Display$GT$3fmt17h644aa5c1492d3840E>:
;     fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
80200b92: 711d         	addi	sp, sp, -0x60
80200b94: ec86         	sd	ra, 0x58(sp)
80200b96: e8a2         	sd	s0, 0x50(sp)
80200b98: 1080         	addi	s0, sp, 0x60
80200b9a: fab43423     	sd	a1, -0x58(s0)
80200b9e: 85aa         	mv	a1, a0
80200ba0: fa843503     	ld	a0, -0x58(s0)
80200ba4: feb43023     	sd	a1, -0x20(s0)
80200ba8: fea43423     	sd	a0, -0x18(s0)
;         formatter.write_fmt(*self.message)
80200bac: 618c         	ld	a1, 0x0(a1)
80200bae: 7590         	ld	a2, 0x28(a1)
80200bb0: fcc43c23     	sd	a2, -0x28(s0)
80200bb4: 7190         	ld	a2, 0x20(a1)
80200bb6: fcc43823     	sd	a2, -0x30(s0)
80200bba: 6d90         	ld	a2, 0x18(a1)
80200bbc: fcc43423     	sd	a2, -0x38(s0)
80200bc0: 6990         	ld	a2, 0x10(a1)
80200bc2: fcc43023     	sd	a2, -0x40(s0)
80200bc6: 6590         	ld	a2, 0x8(a1)
80200bc8: fac43c23     	sd	a2, -0x48(s0)
80200bcc: 618c         	ld	a1, 0x0(a1)
80200bce: fab43823     	sd	a1, -0x50(s0)
80200bd2: fb040593     	addi	a1, s0, -0x50
80200bd6: 00000097     	auipc	ra, 0x0
80200bda: 55e080e7     	jalr	0x55e(ra) <_ZN4core3fmt9Formatter9write_fmt17hf7ff3a95e5c4bd69E>
80200bde: 60e6         	ld	ra, 0x58(sp)
80200be0: 6446         	ld	s0, 0x50(sp)
;     }
80200be2: 6125         	addi	sp, sp, 0x60
80200be4: 8082         	ret

0000000080200be6 <_ZN66_$LT$sbi_rt..srst..Shutdown$u20$as$u20$sbi_rt..srst..ResetType$GT$3raw17hc084d07b5a6aa685E>:
;                 fn raw(&self) -> u32 {
80200be6: 1101         	addi	sp, sp, -0x20
80200be8: ec06         	sd	ra, 0x18(sp)
80200bea: e822         	sd	s0, 0x10(sp)
80200bec: 1000         	addi	s0, sp, 0x20
80200bee: fea43423     	sd	a0, -0x18(s0)
80200bf2: 4501         	li	a0, 0x0
80200bf4: 60e2         	ld	ra, 0x18(sp)
80200bf6: 6442         	ld	s0, 0x10(sp)
;                 }
80200bf8: 6105         	addi	sp, sp, 0x20
80200bfa: 8082         	ret

0000000080200bfc <_ZN68_$LT$sbi_rt..srst..NoReason$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17h13ec554ab3a1ec11E>:
;                 fn raw(&self) -> u32 {
80200bfc: 1101         	addi	sp, sp, -0x20
80200bfe: ec06         	sd	ra, 0x18(sp)
80200c00: e822         	sd	s0, 0x10(sp)
80200c02: 1000         	addi	s0, sp, 0x20
80200c04: fea43423     	sd	a0, -0x18(s0)
80200c08: 4501         	li	a0, 0x0
80200c0a: 60e2         	ld	ra, 0x18(sp)
80200c0c: 6442         	ld	s0, 0x10(sp)
;                 }
80200c0e: 6105         	addi	sp, sp, 0x20
80200c10: 8082         	ret

0000000080200c12 <_ZN73_$LT$sbi_rt..srst..SystemFailure$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17h107dec06de85136fE>:
;                 fn raw(&self) -> u32 {
80200c12: 1101         	addi	sp, sp, -0x20
80200c14: ec06         	sd	ra, 0x18(sp)
80200c16: e822         	sd	s0, 0x10(sp)
80200c18: 1000         	addi	s0, sp, 0x20
80200c1a: fea43423     	sd	a0, -0x18(s0)
80200c1e: 4505         	li	a0, 0x1
80200c20: 60e2         	ld	ra, 0x18(sp)
80200c22: 6442         	ld	s0, 0x10(sp)
;                 }
80200c24: 6105         	addi	sp, sp, 0x20
80200c26: 8082         	ret

0000000080200c28 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E>:
;     fn next(&mut self) -> Option<char> {
80200c28: 7139         	addi	sp, sp, -0x40
80200c2a: fc06         	sd	ra, 0x38(sp)
80200c2c: f822         	sd	s0, 0x30(sp)
80200c2e: 0080         	addi	s0, sp, 0x40
80200c30: fea43023     	sd	a0, -0x20(s0)
;         unsafe { next_code_point(&mut self.iter).map(|ch| char::from_u32_unchecked(ch)) }
80200c34: 00000097     	auipc	ra, 0x0
80200c38: c9e080e7     	jalr	-0x362(ra) <_ZN4core3str11validations15next_code_point17h5a0828b660b2e745E>
80200c3c: fca42c23     	sw	a0, -0x28(s0)
80200c40: fcb42e23     	sw	a1, -0x24(s0)
;         match self {
80200c44: fd842503     	lw	a0, -0x28(s0)
80200c48: e519         	bnez	a0, 0x80200c56 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E+0x2e>
80200c4a: a009         	j	0x80200c4c <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E+0x24>
80200c4c: 00110537     	lui	a0, 0x110
;             None => None,
80200c50: fca42a23     	sw	a0, -0x2c(s0)
;     }
80200c54: a801         	j	0x80200c64 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E+0x3c>
;             Some(x) => Some(f(x)),
80200c56: fdc42503     	lw	a0, -0x24(s0)
80200c5a: fca43423     	sd	a0, -0x38(s0)
80200c5e: fea42623     	sw	a0, -0x14(s0)
;             if ::core::ub_checks::$kind() {
80200c62: a039         	j	0x80200c70 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E+0x48>
;     }
80200c64: fd442503     	lw	a0, -0x2c(s0)
80200c68: 70e2         	ld	ra, 0x38(sp)
80200c6a: 7442         	ld	s0, 0x30(sp)
80200c6c: 6121         	addi	sp, sp, 0x40
80200c6e: 8082         	ret
80200c70: fc843503     	ld	a0, -0x38(s0)
;                 precondition_check($($arg,)*);
80200c74: 2501         	sext.w	a0, a0
80200c76: 00000097     	auipc	ra, 0x0
80200c7a: 442080e7     	jalr	0x442(ra) <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E>
80200c7e: a009         	j	0x80200c80 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E+0x58>
80200c80: fc843503     	ld	a0, -0x38(s0)
;             Some(x) => Some(f(x)),
80200c84: fca42a23     	sw	a0, -0x2c(s0)
80200c88: bff1         	j	0x80200c64 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb19a3f516ba82f66E+0x3c>

0000000080200c8a <_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h71d94d836a7ba49dE>:
;         unsafe fn forward_unchecked(start: Self, n: usize) -> Self {
80200c8a: 7179         	addi	sp, sp, -0x30
80200c8c: f406         	sd	ra, 0x28(sp)
80200c8e: f022         	sd	s0, 0x20(sp)
80200c90: 1800         	addi	s0, sp, 0x30
80200c92: fcb43823     	sd	a1, -0x30(s0)
80200c96: fca43c23     	sd	a0, -0x28(s0)
80200c9a: fea43023     	sd	a0, -0x20(s0)
80200c9e: feb43423     	sd	a1, -0x18(s0)
;             if ::core::ub_checks::$kind() {
80200ca2: a009         	j	0x80200ca4 <_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h71d94d836a7ba49dE+0x1a>
80200ca4: fd043583     	ld	a1, -0x30(s0)
80200ca8: fd843503     	ld	a0, -0x28(s0)
;                 precondition_check($($arg,)*);
80200cac: 00000097     	auipc	ra, 0x0
80200cb0: 878080e7     	jalr	-0x788(ra) <_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8f090284f5da06b1E>
80200cb4: a009         	j	0x80200cb6 <_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h71d94d836a7ba49dE+0x2c>
80200cb6: fd843503     	ld	a0, -0x28(s0)
80200cba: fd043583     	ld	a1, -0x30(s0)
;                 intrinsics::unchecked_add(self, rhs)
80200cbe: 952e         	add	a0, a0, a1
80200cc0: 70a2         	ld	ra, 0x28(sp)
80200cc2: 7402         	ld	s0, 0x20(sp)
;         }
80200cc4: 6145         	addi	sp, sp, 0x30
80200cc6: 8082         	ret

0000000080200cc8 <_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc766c5bef8d159aeE>:
;     fn into_iter(self) -> I {
80200cc8: 1101         	addi	sp, sp, -0x20
80200cca: ec06         	sd	ra, 0x18(sp)
80200ccc: e822         	sd	s0, 0x10(sp)
80200cce: 1000         	addi	s0, sp, 0x20
80200cd0: fea43023     	sd	a0, -0x20(s0)
80200cd4: feb43423     	sd	a1, -0x18(s0)
80200cd8: 60e2         	ld	ra, 0x18(sp)
80200cda: 6442         	ld	s0, 0x10(sp)
;     }
80200cdc: 6105         	addi	sp, sp, 0x20
80200cde: 8082         	ret

0000000080200ce0 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80200ce0: 714d         	addi	sp, sp, -0x150
80200ce2: e686         	sd	ra, 0x148(sp)
80200ce4: e2a2         	sd	s0, 0x140(sp)
80200ce6: 0a80         	addi	s0, sp, 0x150
80200ce8: eca43423     	sd	a0, -0x138(s0)
80200cec: fea43023     	sd	a0, -0x20(s0)
;     if let Some(location) = info.location() {
80200cf0: 00000097     	auipc	ra, 0x0
80200cf4: e84080e7     	jalr	-0x17c(ra) <_ZN4core5panic10panic_info9PanicInfo8location17hf82ad9964d78f282E>
80200cf8: eca43823     	sd	a0, -0x130(s0)
80200cfc: ed043503     	ld	a0, -0x130(s0)
80200d00: c569         	beqz	a0, 0x80200dca <.Lpcrel_hi0+0x2a>
80200d02: a009         	j	0x80200d04 <rust_begin_unwind+0x24>
80200d04: ed043503     	ld	a0, -0x130(s0)
80200d08: eaa43c23     	sd	a0, -0x148(s0)
80200d0c: fea43423     	sd	a0, -0x18(s0)
;             location.file(),
80200d10: 00000097     	auipc	ra, 0x0
80200d14: 998080e7     	jalr	-0x668(ra) <_ZN4core5panic8location8Location4file17h5162cbf8fdfb5e52E>
80200d18: f4a43423     	sd	a0, -0xb8(s0)
80200d1c: f4b43823     	sd	a1, -0xb0(s0)
80200d20: f3840513     	addi	a0, s0, -0xc8
80200d24: f4840593     	addi	a1, s0, -0xb8
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200d28: fffff097     	auipc	ra, 0xfffff
80200d2c: 50e080e7     	jalr	0x50e(ra) <sbss+0xfffec236>
80200d30: eb843503     	ld	a0, -0x148(s0)
;             location.line(),
80200d34: 00000097     	auipc	ra, 0x0
80200d38: 98e080e7     	jalr	-0x672(ra) <_ZN4core5panic8location8Location4line17h433e30ca89150d5aE>
80200d3c: f6a42623     	sw	a0, -0x94(s0)
80200d40: f5840513     	addi	a0, s0, -0xa8
80200d44: f6c40593     	addi	a1, s0, -0x94
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200d48: fffff097     	auipc	ra, 0xfffff
80200d4c: 512080e7     	jalr	0x512(ra) <sbss+0xfffec25a>
80200d50: ec843503     	ld	a0, -0x138(s0)
;             info.message()
80200d54: 00000097     	auipc	ra, 0x0
80200d58: e0a080e7     	jalr	-0x1f6(ra) <_ZN4core5panic10panic_info9PanicInfo7message17h3560203bd2b39260E>
80200d5c: f8a43023     	sd	a0, -0x80(s0)
80200d60: f7040513     	addi	a0, s0, -0x90
80200d64: f8040593     	addi	a1, s0, -0x80
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200d68: fffff097     	auipc	ra, 0xfffff
80200d6c: 4aa080e7     	jalr	0x4aa(ra) <sbss+0xfffec212>
80200d70: f4043503     	ld	a0, -0xc0(s0)
80200d74: f0a43823     	sd	a0, -0xf0(s0)
80200d78: f3843503     	ld	a0, -0xc8(s0)
80200d7c: f0a43423     	sd	a0, -0xf8(s0)
80200d80: f6043503     	ld	a0, -0xa0(s0)
80200d84: f2a43023     	sd	a0, -0xe0(s0)
80200d88: f5843503     	ld	a0, -0xa8(s0)
80200d8c: f0a43c23     	sd	a0, -0xe8(s0)
80200d90: f7843503     	ld	a0, -0x88(s0)
80200d94: f2a43823     	sd	a0, -0xd0(s0)
80200d98: f7043503     	ld	a0, -0x90(s0)
80200d9c: f2a43423     	sd	a0, -0xd8(s0)

0000000080200da0 <.Lpcrel_hi0>:
80200da0: 00002517     	auipc	a0, 0x2
80200da4: 67850593     	addi	a1, a0, 0x678
80200da8: ed840513     	addi	a0, s0, -0x128
80200dac: eca43023     	sd	a0, -0x140(s0)
80200db0: f0840613     	addi	a2, s0, -0xf8
80200db4: 00000097     	auipc	ra, 0x0
80200db8: 2a6080e7     	jalr	0x2a6(ra) <_ZN4core3fmt9Arguments6new_v117hfad6b959419b6fa5E>
80200dbc: ec043503     	ld	a0, -0x140(s0)
80200dc0: fffff097     	auipc	ra, 0xfffff
80200dc4: 2d6080e7     	jalr	0x2d6(ra) <sbss+0xfffec096>
80200dc8: a8b1         	j	0x80200e24 <.Lpcrel_hi1+0x2a>
80200dca: ec843503     	ld	a0, -0x138(s0)
;         println!("Panicked: {}", info.message());
80200dce: 00000097     	auipc	ra, 0x0
80200dd2: d90080e7     	jalr	-0x270(ra) <_ZN4core5panic10panic_info9PanicInfo7message17h3560203bd2b39260E>
80200dd6: fca43c23     	sd	a0, -0x28(s0)
80200dda: fc840513     	addi	a0, s0, -0x38
80200dde: fd840593     	addi	a1, s0, -0x28
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200de2: fffff097     	auipc	ra, 0xfffff
80200de6: 430080e7     	jalr	0x430(ra) <sbss+0xfffec212>
80200dea: fd043503     	ld	a0, -0x30(s0)
80200dee: fca43023     	sd	a0, -0x40(s0)
80200df2: fc843503     	ld	a0, -0x38(s0)
80200df6: faa43c23     	sd	a0, -0x48(s0)

0000000080200dfa <.Lpcrel_hi1>:
80200dfa: 00002517     	auipc	a0, 0x2
80200dfe: 66e50593     	addi	a1, a0, 0x66e
80200e02: f8840513     	addi	a0, s0, -0x78
80200e06: eaa43823     	sd	a0, -0x150(s0)
80200e0a: fb840613     	addi	a2, s0, -0x48
80200e0e: 00000097     	auipc	ra, 0x0
80200e12: 20e080e7     	jalr	0x20e(ra) <_ZN4core3fmt9Arguments6new_v117h9f826df972848ba6E>
80200e16: eb043503     	ld	a0, -0x150(s0)
80200e1a: fffff097     	auipc	ra, 0xfffff
80200e1e: 27c080e7     	jalr	0x27c(ra) <sbss+0xfffec096>
80200e22: a009         	j	0x80200e24 <.Lpcrel_hi1+0x2a>
80200e24: 4505         	li	a0, 0x1
;     sbi::shutdown(true);
80200e26: 00000097     	auipc	ra, 0x0
80200e2a: 842080e7     	jalr	-0x7be(ra) <_ZN2os3sbi8shutdown17hf975f689dfdde9b7E>

0000000080200e2e <_ZN4core3fmt5Write10write_char17hf0c86f5b657dca1bE>:
;     fn write_char(&mut self, c: char) -> Result {
80200e2e: 711d         	addi	sp, sp, -0x60
80200e30: ec86         	sd	ra, 0x58(sp)
80200e32: e8a2         	sd	s0, 0x50(sp)
80200e34: 1080         	addi	s0, sp, 0x60
80200e36: fab43023     	sd	a1, -0x60(s0)
80200e3a: 85aa         	mv	a1, a0
80200e3c: fa043503     	ld	a0, -0x60(s0)
80200e40: fab43423     	sd	a1, -0x58(s0)
80200e44: fcb43023     	sd	a1, -0x40(s0)
80200e48: fca42623     	sw	a0, -0x34(s0)
80200e4c: 4581         	li	a1, 0x0
;         self.write_str(c.encode_utf8(&mut [0; 4]))
80200e4e: fab42e23     	sw	a1, -0x44(s0)
80200e52: fbc40593     	addi	a1, s0, -0x44
80200e56: fcb43823     	sd	a1, -0x30(s0)
80200e5a: 4611         	li	a2, 0x4
80200e5c: fcc43c23     	sd	a2, -0x28(s0)
;         unsafe { from_utf8_unchecked_mut(encode_utf8_raw(self as u32, dst)) }
80200e60: 00000097     	auipc	ra, 0x0
80200e64: 878080e7     	jalr	-0x788(ra) <_ZN4core4char7methods15encode_utf8_raw17h2ec16075d7027b76E>
80200e68: 862a         	mv	a2, a0
80200e6a: fa843503     	ld	a0, -0x58(s0)
80200e6e: fac43823     	sd	a2, -0x50(s0)
80200e72: 862e         	mv	a2, a1
80200e74: fb043583     	ld	a1, -0x50(s0)
80200e78: feb43023     	sd	a1, -0x20(s0)
80200e7c: fec43423     	sd	a2, -0x18(s0)
;         self.write_str(c.encode_utf8(&mut [0; 4]))
80200e80: fffff097     	auipc	ra, 0xfffff
80200e84: 190080e7     	jalr	0x190(ra) <sbss+0xfffec010>
80200e88: 60e6         	ld	ra, 0x58(sp)
80200e8a: 6446         	ld	s0, 0x50(sp)
;     }
80200e8c: 6125         	addi	sp, sp, 0x60
80200e8e: 8082         	ret

0000000080200e90 <_ZN4core3fmt5Write9write_fmt17h8214f145809d92eeE>:
;     fn write_fmt(&mut self, args: Arguments<'_>) -> Result {
80200e90: 1101         	addi	sp, sp, -0x20
80200e92: ec06         	sd	ra, 0x18(sp)
80200e94: e822         	sd	s0, 0x10(sp)
80200e96: 1000         	addi	s0, sp, 0x20
80200e98: fea43423     	sd	a0, -0x18(s0)
;         self.spec_write_fmt(args)
80200e9c: 00000097     	auipc	ra, 0x0
80200ea0: 010080e7     	jalr	0x10(ra) <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hdc2ef9ffdf28fe26E>
80200ea4: 60e2         	ld	ra, 0x18(sp)
80200ea6: 6442         	ld	s0, 0x10(sp)
;     }
80200ea8: 6105         	addi	sp, sp, 0x20
80200eaa: 8082         	ret

0000000080200eac <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hdc2ef9ffdf28fe26E>:
;             fn spec_write_fmt(self, args: Arguments<'_>) -> Result {
80200eac: 7155         	addi	sp, sp, -0xd0
80200eae: e586         	sd	ra, 0xc8(sp)
80200eb0: e1a2         	sd	s0, 0xc0(sp)
80200eb2: 0980         	addi	s0, sp, 0xd0
80200eb4: f2b43c23     	sd	a1, -0xc8(s0)
80200eb8: f4a43023     	sd	a0, -0xc0(s0)
80200ebc: f8a43423     	sd	a0, -0x78(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200ec0: f8b43823     	sd	a1, -0x70(s0)
;         match (self.pieces, self.args) {
80200ec4: 6188         	ld	a0, 0x0(a1)
80200ec6: f4a43423     	sd	a0, -0xb8(s0)
80200eca: 6588         	ld	a0, 0x8(a1)
80200ecc: f4a43823     	sd	a0, -0xb0(s0)
80200ed0: 6d8c         	ld	a1, 0x18(a1)
80200ed2: f4b43c23     	sd	a1, -0xa8(s0)
;             ([], []) => Some(""),
80200ed6: e511         	bnez	a0, 0x80200ee2 <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hdc2ef9ffdf28fe26E+0x36>
80200ed8: a009         	j	0x80200eda <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hdc2ef9ffdf28fe26E+0x2e>
80200eda: f5843503     	ld	a0, -0xa8(s0)
;             ([], []) => Some(""),
80200ede: c901         	beqz	a0, 0x80200eee <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hdc2ef9ffdf28fe26E+0x42>
80200ee0: a831         	j	0x80200efc <.Lpcrel_hi0>
80200ee2: f5043503     	ld	a0, -0xb0(s0)
80200ee6: 4585         	li	a1, 0x1
;             ([s], []) => Some(s),
80200ee8: 04b50163     	beq	a0, a1, 0x80200f2a <.Lpcrel_hi0+0x2e>
80200eec: a801         	j	0x80200efc <.Lpcrel_hi0>
80200eee: 4505         	li	a0, 0x1
;             ([], []) => Some(""),
80200ef0: f6a43c23     	sd	a0, -0x88(s0)
80200ef4: 4501         	li	a0, 0x0
80200ef6: f8a43023     	sd	a0, -0x80(s0)
80200efa: a821         	j	0x80200f12 <.Lpcrel_hi0+0x16>

0000000080200efc <.Lpcrel_hi0>:
;             _ => None,
80200efc: 00002517     	auipc	a0, 0x2
80200f00: 2f450513     	addi	a0, a0, 0x2f4
80200f04: 610c         	ld	a1, 0x0(a0)
80200f06: 6508         	ld	a0, 0x8(a0)
80200f08: f6b43c23     	sd	a1, -0x88(s0)
80200f0c: f8a43023     	sd	a0, -0x80(s0)
80200f10: a009         	j	0x80200f12 <.Lpcrel_hi0+0x16>
80200f12: f7840513     	addi	a0, s0, -0x88
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
80200f16: faa43023     	sd	a0, -0x60(s0)
80200f1a: 4501         	li	a0, 0x0
80200f1c: faa407a3     	sb	a0, -0x51(s0)
80200f20: faf44503     	lbu	a0, -0x51(s0)
80200f24: 8905         	andi	a0, a0, 0x1
80200f26: e115         	bnez	a0, 0x80200f4a <.Lpcrel_hi0+0x4e>
80200f28: a005         	j	0x80200f48 <.Lpcrel_hi0+0x4c>
80200f2a: f5843503     	ld	a0, -0xa8(s0)
;             ([s], []) => Some(s),
80200f2e: f579         	bnez	a0, 0x80200efc <.Lpcrel_hi0>
80200f30: a009         	j	0x80200f32 <.Lpcrel_hi0+0x36>
80200f32: f4843503     	ld	a0, -0xb8(s0)
;             ([s], []) => Some(s),
80200f36: f8a43c23     	sd	a0, -0x68(s0)
80200f3a: 610c         	ld	a1, 0x0(a0)
80200f3c: 6508         	ld	a0, 0x8(a0)
80200f3e: f6b43c23     	sd	a1, -0x88(s0)
80200f42: f8a43023     	sd	a0, -0x80(s0)
80200f46: b7f1         	j	0x80200f12 <.Lpcrel_hi0+0x16>
;                 if let Some(s) = args.as_statically_known_str() {
80200f48: a829         	j	0x80200f62 <.Lpcrel_hi0+0x66>
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
80200f4a: f7843583     	ld	a1, -0x88(s0)
80200f4e: f8043503     	ld	a0, -0x80(s0)
80200f52: f6b43423     	sd	a1, -0x98(s0)
80200f56: f6a43823     	sd	a0, -0x90(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200f5a: f6843503     	ld	a0, -0x98(s0)
80200f5e: e529         	bnez	a0, 0x80200fa8 <.Lpcrel_hi1+0x1a>
80200f60: a009         	j	0x80200f62 <.Lpcrel_hi0+0x66>
80200f62: f4043503     	ld	a0, -0xc0(s0)
80200f66: f3843583     	ld	a1, -0xc8(s0)
;                     write(self, args)
80200f6a: 7590         	ld	a2, 0x28(a1)
80200f6c: fec43423     	sd	a2, -0x18(s0)
80200f70: 7190         	ld	a2, 0x20(a1)
80200f72: fec43023     	sd	a2, -0x20(s0)
80200f76: 6d90         	ld	a2, 0x18(a1)
80200f78: fcc43c23     	sd	a2, -0x28(s0)
80200f7c: 6990         	ld	a2, 0x10(a1)
80200f7e: fcc43823     	sd	a2, -0x30(s0)
80200f82: 6590         	ld	a2, 0x8(a1)
80200f84: fcc43423     	sd	a2, -0x38(s0)
80200f88: 618c         	ld	a1, 0x0(a1)
80200f8a: fcb43023     	sd	a1, -0x40(s0)

0000000080200f8e <.Lpcrel_hi1>:
80200f8e: 00002597     	auipc	a1, 0x2
80200f92: 4fa58593     	addi	a1, a1, 0x4fa
80200f96: fc040613     	addi	a2, s0, -0x40
80200f9a: 00000097     	auipc	ra, 0x0
80200f9e: 48c080e7     	jalr	0x48c(ra) <_ZN4core3fmt5write17h0545e85c538fe473E>
80200fa2: f6a403a3     	sb	a0, -0x99(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200fa6: a015         	j	0x80200fca <.Lpcrel_hi1+0x3c>
80200fa8: f4043503     	ld	a0, -0xc0(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200fac: f6843583     	ld	a1, -0x98(s0)
80200fb0: f7043603     	ld	a2, -0x90(s0)
80200fb4: fab43823     	sd	a1, -0x50(s0)
80200fb8: fac43c23     	sd	a2, -0x48(s0)
;                     self.write_str(s)
80200fbc: fffff097     	auipc	ra, 0xfffff
80200fc0: 054080e7     	jalr	0x54(ra) <sbss+0xfffec010>
80200fc4: f6a403a3     	sb	a0, -0x99(s0)
80200fc8: a009         	j	0x80200fca <.Lpcrel_hi1+0x3c>
;             }
80200fca: f6744503     	lbu	a0, -0x99(s0)
80200fce: 8905         	andi	a0, a0, 0x1
80200fd0: 60ae         	ld	ra, 0xc8(sp)
80200fd2: 640e         	ld	s0, 0xc0(sp)
80200fd4: 6169         	addi	sp, sp, 0xd0
80200fd6: 8082         	ret

0000000080200fd8 <_ZN4core4hint21unreachable_unchecked18precondition_check17hdf81b532decdea8cE>:
;             const fn precondition_check($($name:$ty),*) {
80200fd8: 1141         	addi	sp, sp, -0x10
80200fda: e406         	sd	ra, 0x8(sp)
80200fdc: e022         	sd	s0, 0x0(sp)
80200fde: 0800         	addi	s0, sp, 0x10

0000000080200fe0 <.Lpcrel_hi0>:
;                     ::core::panicking::panic_nounwind(
80200fe0: 00002517     	auipc	a0, 0x2
80200fe4: 4d850513     	addi	a0, a0, 0x4d8
80200fe8: 05200593     	li	a1, 0x52
80200fec: 00000097     	auipc	ra, 0x0
80200ff0: 388080e7     	jalr	0x388(ra) <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>

0000000080200ff4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h090b47c8e296bd5fE>:
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
80200ff4: 1101         	addi	sp, sp, -0x20
80200ff6: ec06         	sd	ra, 0x18(sp)
80200ff8: e822         	sd	s0, 0x10(sp)
80200ffa: 1000         	addi	s0, sp, 0x20
80200ffc: 862e         	mv	a2, a1
80200ffe: 85aa         	mv	a1, a0
80201000: feb43023     	sd	a1, -0x20(s0)
80201004: fec43423     	sd	a2, -0x18(s0)
80201008: 6188         	ld	a0, 0x0(a1)
8020100a: 658c         	ld	a1, 0x8(a1)
8020100c: 00001097     	auipc	ra, 0x1
80201010: a24080e7     	jalr	-0x5dc(ra) <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1c6bf3111fb4e387E>
80201014: 60e2         	ld	ra, 0x18(sp)
80201016: 6442         	ld	s0, 0x10(sp)
80201018: 6105         	addi	sp, sp, 0x20
8020101a: 8082         	ret

000000008020101c <_ZN4core3fmt9Arguments6new_v117h9f826df972848ba6E>:
;     pub fn new_v1<const P: usize, const A: usize>(
8020101c: 7179         	addi	sp, sp, -0x30
8020101e: f406         	sd	ra, 0x28(sp)
80201020: f022         	sd	s0, 0x20(sp)
80201022: 1800         	addi	s0, sp, 0x30
80201024: fcb43c23     	sd	a1, -0x28(s0)
80201028: 85aa         	mv	a1, a0
8020102a: fd843503     	ld	a0, -0x28(s0)
8020102e: fea43023     	sd	a0, -0x20(s0)
80201032: fec43423     	sd	a2, -0x18(s0)
;         Arguments { pieces, fmt: None, args }
80201036: e188         	sd	a0, 0x0(a1)
80201038: 4509         	li	a0, 0x2
8020103a: e588         	sd	a0, 0x8(a1)

000000008020103c <.Lpcrel_hi0>:
8020103c: 00002517     	auipc	a0, 0x2
80201040: 1b450513     	addi	a0, a0, 0x1b4
80201044: 6114         	ld	a3, 0x0(a0)
80201046: 6508         	ld	a0, 0x8(a0)
80201048: f194         	sd	a3, 0x20(a1)
8020104a: f588         	sd	a0, 0x28(a1)
8020104c: e990         	sd	a2, 0x10(a1)
8020104e: 4505         	li	a0, 0x1
80201050: ed88         	sd	a0, 0x18(a1)
80201052: 70a2         	ld	ra, 0x28(sp)
80201054: 7402         	ld	s0, 0x20(sp)
;     }
80201056: 6145         	addi	sp, sp, 0x30
80201058: 8082         	ret

000000008020105a <_ZN4core3fmt9Arguments6new_v117hfad6b959419b6fa5E>:
;     pub fn new_v1<const P: usize, const A: usize>(
8020105a: 7179         	addi	sp, sp, -0x30
8020105c: f406         	sd	ra, 0x28(sp)
8020105e: f022         	sd	s0, 0x20(sp)
80201060: 1800         	addi	s0, sp, 0x30
80201062: fcb43c23     	sd	a1, -0x28(s0)
80201066: 85aa         	mv	a1, a0
80201068: fd843503     	ld	a0, -0x28(s0)
8020106c: fea43023     	sd	a0, -0x20(s0)
80201070: fec43423     	sd	a2, -0x18(s0)
;         Arguments { pieces, fmt: None, args }
80201074: e188         	sd	a0, 0x0(a1)
80201076: 4511         	li	a0, 0x4
80201078: e588         	sd	a0, 0x8(a1)

000000008020107a <.Lpcrel_hi1>:
8020107a: 00002517     	auipc	a0, 0x2
8020107e: 17650513     	addi	a0, a0, 0x176
80201082: 6114         	ld	a3, 0x0(a0)
80201084: 6508         	ld	a0, 0x8(a0)
80201086: f194         	sd	a3, 0x20(a1)
80201088: f588         	sd	a0, 0x28(a1)
8020108a: e990         	sd	a2, 0x10(a1)
8020108c: 450d         	li	a0, 0x3
8020108e: ed88         	sd	a0, 0x18(a1)
80201090: 70a2         	ld	ra, 0x28(sp)
80201092: 7402         	ld	s0, 0x20(sp)
;     }
80201094: 6145         	addi	sp, sp, 0x30
80201096: 8082         	ret

0000000080201098 <_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h21dc12bd44ca4a5cE>:
;             move |(), item| f(item)
80201098: 7179         	addi	sp, sp, -0x30
8020109a: f406         	sd	ra, 0x28(sp)
8020109c: f022         	sd	s0, 0x20(sp)
8020109e: 1800         	addi	s0, sp, 0x30
802010a0: fca43c23     	sd	a0, -0x28(s0)
802010a4: feb43423     	sd	a1, -0x18(s0)
802010a8: 00000097     	auipc	ra, 0x0
802010ac: 9f4080e7     	jalr	-0x60c(ra) <_ZN2os9clear_bss28_$u7b$$u7b$closure$u7d$$u7d$17hc21800ebed680f1bE>
802010b0: 70a2         	ld	ra, 0x28(sp)
802010b2: 7402         	ld	s0, 0x20(sp)
802010b4: 6145         	addi	sp, sp, 0x30
802010b6: 8082         	ret

00000000802010b8 <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E>:
;             const fn precondition_check($($name:$ty),*) {
802010b8: 7179         	addi	sp, sp, -0x30
802010ba: f406         	sd	ra, 0x28(sp)
802010bc: f022         	sd	s0, 0x20(sp)
802010be: 1800         	addi	s0, sp, 0x30
802010c0: 85aa         	mv	a1, a0
802010c2: fcb43823     	sd	a1, -0x30(s0)
802010c6: fca42e23     	sw	a0, -0x24(s0)
802010ca: 4585         	li	a1, 0x1
802010cc: 05ae         	slli	a1, a1, 0xb
;         pub const fn wrapping_sub(self, rhs: Self) -> Self {
802010ce: feb42023     	sw	a1, -0x20(s0)
802010d2: 45ed         	li	a1, 0x1b
802010d4: 05ae         	slli	a1, a1, 0xb
;     if (i ^ 0xD800).wrapping_sub(0x800) >= 0x110000 - 0x800 {
802010d6: 8d2d         	xor	a0, a0, a1
802010d8: fea42223     	sw	a0, -0x1c(s0)
;             intrinsics::wrapping_sub(self, rhs)
802010dc: 8005051b     	addiw	a0, a0, -0x800
;     if (i ^ 0xD800).wrapping_sub(0x800) >= 0x110000 - 0x800 {
802010e0: 00b5559b     	srliw	a1, a0, 0xb
802010e4: 21e00513     	li	a0, 0x21e
802010e8: 00b56863     	bltu	a0, a1, 0x802010f8 <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E+0x40>
802010ec: a009         	j	0x802010ee <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E+0x36>
802010ee: fd043503     	ld	a0, -0x30(s0)
;         Ok(unsafe { transmute(i) })
802010f2: fca42c23     	sw	a0, -0x28(s0)
;     if (i ^ 0xD800).wrapping_sub(0x800) >= 0x110000 - 0x800 {
802010f6: a031         	j	0x80201102 <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E+0x4a>
802010f8: 00110537     	lui	a0, 0x110
;         Err(CharTryFromError(()))
802010fc: fca42c23     	sw	a0, -0x28(s0)
;     if (i ^ 0xD800).wrapping_sub(0x800) >= 0x110000 - 0x800 {
80201100: a009         	j	0x80201102 <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E+0x4a>
80201102: fd840513     	addi	a0, s0, -0x28
;             (i: u32 = i) => char_try_from_u32(i).is_ok()
80201106: fea43423     	sd	a0, -0x18(s0)
;         matches!(*self, Ok(_))
8020110a: fd842503     	lw	a0, -0x28(s0)
8020110e: 001105b7     	lui	a1, 0x110
;             (i: u32 = i) => char_try_from_u32(i).is_ok()
80201112: 00b50763     	beq	a0, a1, 0x80201120 <.Lpcrel_hi0>
80201116: a009         	j	0x80201118 <_ZN4core4char7convert18from_u32_unchecked18precondition_check17h1a0e91318e2e7fa1E+0x60>
80201118: 70a2         	ld	ra, 0x28(sp)
8020111a: 7402         	ld	s0, 0x20(sp)
;             }
8020111c: 6145         	addi	sp, sp, 0x30
8020111e: 8082         	ret

0000000080201120 <.Lpcrel_hi0>:
;                     ::core::panicking::panic_nounwind(
80201120: 00002517     	auipc	a0, 0x2
80201124: 3ea50513     	addi	a0, a0, 0x3ea
80201128: 03900593     	li	a1, 0x39
8020112c: 00000097     	auipc	ra, 0x0
80201130: 248080e7     	jalr	0x248(ra) <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>

0000000080201134 <_ZN4core3fmt9Formatter9write_fmt17hf7ff3a95e5c4bd69E>:
;     pub fn write_fmt(&mut self, fmt: Arguments<'_>) -> Result {
80201134: 7155         	addi	sp, sp, -0xd0
80201136: e586         	sd	ra, 0xc8(sp)
80201138: e1a2         	sd	s0, 0xc0(sp)
8020113a: 0980         	addi	s0, sp, 0xd0
8020113c: f2b43c23     	sd	a1, -0xc8(s0)
80201140: f4a43023     	sd	a0, -0xc0(s0)
80201144: f8a43423     	sd	a0, -0x78(s0)
;         if let Some(s) = fmt.as_statically_known_str() {
80201148: f8b43823     	sd	a1, -0x70(s0)
;         match (self.pieces, self.args) {
8020114c: 6188         	ld	a0, 0x0(a1)
8020114e: f4a43423     	sd	a0, -0xb8(s0)
80201152: 6588         	ld	a0, 0x8(a1)
80201154: f4a43823     	sd	a0, -0xb0(s0)
80201158: 6d8c         	ld	a1, 0x18(a1)
8020115a: f4b43c23     	sd	a1, -0xa8(s0)
;             ([], []) => Some(""),
8020115e: e511         	bnez	a0, 0x8020116a <_ZN4core3fmt9Formatter9write_fmt17hf7ff3a95e5c4bd69E+0x36>
80201160: a009         	j	0x80201162 <_ZN4core3fmt9Formatter9write_fmt17hf7ff3a95e5c4bd69E+0x2e>
80201162: f5843503     	ld	a0, -0xa8(s0)
;             ([], []) => Some(""),
80201166: c901         	beqz	a0, 0x80201176 <_ZN4core3fmt9Formatter9write_fmt17hf7ff3a95e5c4bd69E+0x42>
80201168: a831         	j	0x80201184 <.Lpcrel_hi0>
8020116a: f5043503     	ld	a0, -0xb0(s0)
8020116e: 4585         	li	a1, 0x1
;             ([s], []) => Some(s),
80201170: 04b50163     	beq	a0, a1, 0x802011b2 <.Lpcrel_hi0+0x2e>
80201174: a801         	j	0x80201184 <.Lpcrel_hi0>
80201176: 4505         	li	a0, 0x1
;             ([], []) => Some(""),
80201178: f6a43c23     	sd	a0, -0x88(s0)
8020117c: 4501         	li	a0, 0x0
8020117e: f8a43023     	sd	a0, -0x80(s0)
80201182: a821         	j	0x8020119a <.Lpcrel_hi0+0x16>

0000000080201184 <.Lpcrel_hi0>:
;             _ => None,
80201184: 00002517     	auipc	a0, 0x2
80201188: 06c50513     	addi	a0, a0, 0x6c
8020118c: 610c         	ld	a1, 0x0(a0)
8020118e: 6508         	ld	a0, 0x8(a0)
80201190: f6b43c23     	sd	a1, -0x88(s0)
80201194: f8a43023     	sd	a0, -0x80(s0)
80201198: a009         	j	0x8020119a <.Lpcrel_hi0+0x16>
8020119a: f7840513     	addi	a0, s0, -0x88
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
8020119e: faa43023     	sd	a0, -0x60(s0)
802011a2: 4501         	li	a0, 0x0
802011a4: faa407a3     	sb	a0, -0x51(s0)
802011a8: faf44503     	lbu	a0, -0x51(s0)
802011ac: 8905         	andi	a0, a0, 0x1
802011ae: e115         	bnez	a0, 0x802011d2 <.Lpcrel_hi0+0x4e>
802011b0: a005         	j	0x802011d0 <.Lpcrel_hi0+0x4c>
802011b2: f5843503     	ld	a0, -0xa8(s0)
;             ([s], []) => Some(s),
802011b6: f579         	bnez	a0, 0x80201184 <.Lpcrel_hi0>
802011b8: a009         	j	0x802011ba <.Lpcrel_hi0+0x36>
802011ba: f4843503     	ld	a0, -0xb8(s0)
;             ([s], []) => Some(s),
802011be: f8a43c23     	sd	a0, -0x68(s0)
802011c2: 610c         	ld	a1, 0x0(a0)
802011c4: 6508         	ld	a0, 0x8(a0)
802011c6: f6b43c23     	sd	a1, -0x88(s0)
802011ca: f8a43023     	sd	a0, -0x80(s0)
802011ce: b7f1         	j	0x8020119a <.Lpcrel_hi0+0x16>
;         if let Some(s) = fmt.as_statically_known_str() {
802011d0: a829         	j	0x802011ea <.Lpcrel_hi0+0x66>
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
802011d2: f7843583     	ld	a1, -0x88(s0)
802011d6: f8043503     	ld	a0, -0x80(s0)
802011da: f6b43423     	sd	a1, -0x98(s0)
802011de: f6a43823     	sd	a0, -0x90(s0)
;         if let Some(s) = fmt.as_statically_known_str() {
802011e2: f6843503     	ld	a0, -0x98(s0)
802011e6: e139         	bnez	a0, 0x8020122c <.Lpcrel_hi0+0xa8>
802011e8: a009         	j	0x802011ea <.Lpcrel_hi0+0x66>
802011ea: f3843603     	ld	a2, -0xc8(s0)
802011ee: f4043583     	ld	a1, -0xc0(s0)
;             write(self.buf, fmt)
802011f2: 7988         	ld	a0, 0x30(a1)
802011f4: 7d8c         	ld	a1, 0x38(a1)
802011f6: 7614         	ld	a3, 0x28(a2)
802011f8: fed43423     	sd	a3, -0x18(s0)
802011fc: 7214         	ld	a3, 0x20(a2)
802011fe: fed43023     	sd	a3, -0x20(s0)
80201202: 6e14         	ld	a3, 0x18(a2)
80201204: fcd43c23     	sd	a3, -0x28(s0)
80201208: 6a14         	ld	a3, 0x10(a2)
8020120a: fcd43823     	sd	a3, -0x30(s0)
8020120e: 6614         	ld	a3, 0x8(a2)
80201210: fcd43423     	sd	a3, -0x38(s0)
80201214: 6210         	ld	a2, 0x0(a2)
80201216: fcc43023     	sd	a2, -0x40(s0)
8020121a: fc040613     	addi	a2, s0, -0x40
8020121e: 00000097     	auipc	ra, 0x0
80201222: 208080e7     	jalr	0x208(ra) <_ZN4core3fmt5write17h0545e85c538fe473E>
80201226: f6a403a3     	sb	a0, -0x99(s0)
8020122a: a015         	j	0x8020124e <.Lpcrel_hi0+0xca>
8020122c: f4043683     	ld	a3, -0xc0(s0)
;         if let Some(s) = fmt.as_statically_known_str() {
80201230: f6843583     	ld	a1, -0x98(s0)
80201234: f7043603     	ld	a2, -0x90(s0)
80201238: fab43823     	sd	a1, -0x50(s0)
8020123c: fac43c23     	sd	a2, -0x48(s0)
;             self.buf.write_str(s)
80201240: 7a88         	ld	a0, 0x30(a3)
80201242: 7e94         	ld	a3, 0x38(a3)
80201244: 6e94         	ld	a3, 0x18(a3)
80201246: 9682         	jalr	a3
80201248: f6a403a3     	sb	a0, -0x99(s0)
8020124c: a009         	j	0x8020124e <.Lpcrel_hi0+0xca>
;     }
8020124e: f6744503     	lbu	a0, -0x99(s0)
80201252: 8905         	andi	a0, a0, 0x1
80201254: 60ae         	ld	ra, 0xc8(sp)
80201256: 640e         	ld	s0, 0xc0(sp)
80201258: 6169         	addi	sp, sp, 0xd0
8020125a: 8082         	ret

000000008020125c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h8a5f40ab39f629b5E>:
; #[derive(Copy, Clone, Debug, Default, Eq, Hash, Ord, PartialEq, PartialOrd)]
8020125c: 7179         	addi	sp, sp, -0x30
8020125e: f406         	sd	ra, 0x28(sp)
80201260: f022         	sd	s0, 0x20(sp)
80201262: 1800         	addi	s0, sp, 0x30
80201264: fcb43c23     	sd	a1, -0x28(s0)
80201268: 85aa         	mv	a1, a0
8020126a: fd843503     	ld	a0, -0x28(s0)
8020126e: feb43023     	sd	a1, -0x20(s0)
80201272: fea43423     	sd	a0, -0x18(s0)

0000000080201276 <.Lpcrel_hi1>:
80201276: 00002597     	auipc	a1, 0x2
8020127a: 2cd58593     	addi	a1, a1, 0x2cd
8020127e: 4615         	li	a2, 0x5
80201280: 00000097     	auipc	ra, 0x0
80201284: 79a080e7     	jalr	0x79a(ra) <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h1dc9abc2d2ed6cceE>
80201288: 70a2         	ld	ra, 0x28(sp)
8020128a: 7402         	ld	s0, 0x20(sp)
8020128c: 6145         	addi	sp, sp, 0x30
8020128e: 8082         	ret

0000000080201290 <_ZN4core3fmt9Arguments9new_const17h218a79debce51b84E>:
;     pub const fn new_const<const N: usize>(pieces: &'a [&'static str; N]) -> Self {
80201290: 1101         	addi	sp, sp, -0x20
80201292: ec06         	sd	ra, 0x18(sp)
80201294: e822         	sd	s0, 0x10(sp)
80201296: 1000         	addi	s0, sp, 0x20
80201298: feb43023     	sd	a1, -0x20(s0)
8020129c: 85aa         	mv	a1, a0
8020129e: fe043503     	ld	a0, -0x20(s0)
802012a2: fea43423     	sd	a0, -0x18(s0)
;         Arguments { pieces, fmt: None, args: &[] }
802012a6: e188         	sd	a0, 0x0(a1)
802012a8: 4505         	li	a0, 0x1
802012aa: e588         	sd	a0, 0x8(a1)

00000000802012ac <.Lpcrel_hi1>:
802012ac: 00002517     	auipc	a0, 0x2
802012b0: f4450513     	addi	a0, a0, -0xbc
802012b4: 6110         	ld	a2, 0x0(a0)
802012b6: 6508         	ld	a0, 0x8(a0)
802012b8: f190         	sd	a2, 0x20(a1)
802012ba: f588         	sd	a0, 0x28(a1)
802012bc: 4521         	li	a0, 0x8
802012be: e988         	sd	a0, 0x10(a1)
802012c0: 4501         	li	a0, 0x0
802012c2: ed88         	sd	a0, 0x18(a1)
802012c4: 60e2         	ld	ra, 0x18(sp)
802012c6: 6442         	ld	s0, 0x10(sp)
;     }
802012c8: 6105         	addi	sp, sp, 0x20
802012ca: 8082         	ret

00000000802012cc <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>:
802012cc: 7179         	addi	sp, sp, -0x30
802012ce: f406         	sd	ra, 0x28(sp)
802012d0: f022         	sd	s0, 0x20(sp)
802012d2: 1800         	addi	s0, sp, 0x30
802012d4: fca43c23     	sd	a0, -0x28(s0)
802012d8: feb43023     	sd	a1, -0x20(s0)
802012dc: 4505         	li	a0, 0x1
802012de: fea41423     	sh	a0, -0x18(s0)
802012e2: fd840513     	addi	a0, s0, -0x28
802012e6: 00000097     	auipc	ra, 0x0
802012ea: 9fa080e7     	jalr	-0x606(ra) <rust_begin_unwind>

00000000802012ee <_ZN4core9panicking18panic_nounwind_fmt17h65db6768059e0c29E>:
802012ee: 711d         	addi	sp, sp, -0x60
802012f0: ec86         	sd	ra, 0x58(sp)
802012f2: e8a2         	sd	s0, 0x50(sp)
802012f4: 1080         	addi	s0, sp, 0x60
802012f6: 7514         	ld	a3, 0x28(a0)
802012f8: 7118         	ld	a4, 0x20(a0)
802012fa: fcd43823     	sd	a3, -0x30(s0)
802012fe: fce43423     	sd	a4, -0x38(s0)
80201302: 6d14         	ld	a3, 0x18(a0)
80201304: 6918         	ld	a4, 0x10(a0)
80201306: 651c         	ld	a5, 0x8(a0)
80201308: 6108         	ld	a0, 0x0(a0)
8020130a: fcd43023     	sd	a3, -0x40(s0)
8020130e: fae43c23     	sd	a4, -0x48(s0)
80201312: faf43823     	sd	a5, -0x50(s0)
80201316: faa43423     	sd	a0, -0x58(s0)
8020131a: fa840513     	addi	a0, s0, -0x58
8020131e: fca43c23     	sd	a0, -0x28(s0)
80201322: fec43023     	sd	a2, -0x20(s0)
80201326: fe040423     	sb	zero, -0x18(s0)
8020132a: feb404a3     	sb	a1, -0x17(s0)
8020132e: fd840513     	addi	a0, s0, -0x28
80201332: 00000097     	auipc	ra, 0x0
80201336: 9ae080e7     	jalr	-0x652(ra) <rust_begin_unwind>

000000008020133a <_ZN4core9panicking5panic17hc74596b0f69bcd0aE>:
8020133a: 715d         	addi	sp, sp, -0x50
8020133c: e486         	sd	ra, 0x48(sp)
8020133e: e0a2         	sd	s0, 0x40(sp)
80201340: 0880         	addi	s0, sp, 0x50
80201342: fea43023     	sd	a0, -0x20(s0)
80201346: feb43423     	sd	a1, -0x18(s0)
8020134a: fe040513     	addi	a0, s0, -0x20
8020134e: faa43823     	sd	a0, -0x50(s0)
80201352: 4505         	li	a0, 0x1
80201354: faa43c23     	sd	a0, -0x48(s0)
80201358: fc043823     	sd	zero, -0x30(s0)
8020135c: 4521         	li	a0, 0x8
8020135e: fca43023     	sd	a0, -0x40(s0)
80201362: fc043423     	sd	zero, -0x38(s0)
80201366: fb040513     	addi	a0, s0, -0x50
8020136a: 85b2         	mv	a1, a2
8020136c: 00000097     	auipc	ra, 0x0
80201370: f60080e7     	jalr	-0xa0(ra) <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>

0000000080201374 <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>:
80201374: 715d         	addi	sp, sp, -0x50
80201376: e486         	sd	ra, 0x48(sp)
80201378: e0a2         	sd	s0, 0x40(sp)
8020137a: 0880         	addi	s0, sp, 0x50
8020137c: fea43023     	sd	a0, -0x20(s0)
80201380: feb43423     	sd	a1, -0x18(s0)
80201384: fe040513     	addi	a0, s0, -0x20
80201388: faa43823     	sd	a0, -0x50(s0)
8020138c: 4505         	li	a0, 0x1
8020138e: faa43c23     	sd	a0, -0x48(s0)
80201392: fc043823     	sd	zero, -0x30(s0)
80201396: 4521         	li	a0, 0x8
80201398: fca43023     	sd	a0, -0x40(s0)
8020139c: fc043423     	sd	zero, -0x38(s0)

00000000802013a0 <.Lpcrel_hi339>:
802013a0: 00002517     	auipc	a0, 0x2
802013a4: 1c850613     	addi	a2, a0, 0x1c8
802013a8: fb040513     	addi	a0, s0, -0x50
802013ac: 4581         	li	a1, 0x0
802013ae: 00000097     	auipc	ra, 0x0
802013b2: f40080e7     	jalr	-0xc0(ra) <_ZN4core9panicking18panic_nounwind_fmt17h65db6768059e0c29E>

00000000802013b6 <_ZN4core6result13unwrap_failed17h29324abbdc95674dE>:
802013b6: 7119         	addi	sp, sp, -0x80
802013b8: fc86         	sd	ra, 0x78(sp)
802013ba: f8a2         	sd	s0, 0x70(sp)
802013bc: 0100         	addi	s0, sp, 0x80
802013be: f8a43023     	sd	a0, -0x80(s0)
802013c2: f8b43423     	sd	a1, -0x78(s0)
802013c6: f8c43823     	sd	a2, -0x70(s0)
802013ca: f8d43c23     	sd	a3, -0x68(s0)
802013ce: f8040513     	addi	a0, s0, -0x80
802013d2: fca43823     	sd	a0, -0x30(s0)

00000000802013d6 <.Lpcrel_hi365>:
802013d6: 00001517     	auipc	a0, 0x1
802013da: c9250513     	addi	a0, a0, -0x36e
802013de: fca43c23     	sd	a0, -0x28(s0)
802013e2: f9040513     	addi	a0, s0, -0x70
802013e6: fea43023     	sd	a0, -0x20(s0)

00000000802013ea <.Lpcrel_hi366>:
802013ea: 00001517     	auipc	a0, 0x1
802013ee: c6850513     	addi	a0, a0, -0x398
802013f2: fea43423     	sd	a0, -0x18(s0)

00000000802013f6 <.Lpcrel_hi367>:
802013f6: 00002517     	auipc	a0, 0x2
802013fa: 19250513     	addi	a0, a0, 0x192
802013fe: faa43023     	sd	a0, -0x60(s0)
80201402: 4509         	li	a0, 0x2
80201404: faa43423     	sd	a0, -0x58(s0)
80201408: fc043023     	sd	zero, -0x40(s0)
8020140c: fd040593     	addi	a1, s0, -0x30
80201410: fab43823     	sd	a1, -0x50(s0)
80201414: faa43c23     	sd	a0, -0x48(s0)
80201418: fa040513     	addi	a0, s0, -0x60
8020141c: 85ba         	mv	a1, a4
8020141e: 00000097     	auipc	ra, 0x0
80201422: eae080e7     	jalr	-0x152(ra) <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>

0000000080201426 <_ZN4core3fmt5write17h0545e85c538fe473E>:
80201426: 7175         	addi	sp, sp, -0x90
80201428: e506         	sd	ra, 0x88(sp)
8020142a: e122         	sd	s0, 0x80(sp)
8020142c: fca6         	sd	s1, 0x78(sp)
8020142e: f8ca         	sd	s2, 0x70(sp)
80201430: f4ce         	sd	s3, 0x68(sp)
80201432: f0d2         	sd	s4, 0x60(sp)
80201434: ecd6         	sd	s5, 0x58(sp)
80201436: e8da         	sd	s6, 0x50(sp)
80201438: e4de         	sd	s7, 0x48(sp)
8020143a: e0e2         	sd	s8, 0x40(sp)
8020143c: 0900         	addi	s0, sp, 0x90
8020143e: 89b2         	mv	s3, a2
80201440: f6043823     	sd	zero, -0x90(s0)
80201444: f8043023     	sd	zero, -0x80(s0)
80201448: 02000613     	li	a2, 0x20
8020144c: f8c43823     	sd	a2, -0x70(s0)
80201450: 0209b483     	ld	s1, 0x20(s3)
80201454: 460d         	li	a2, 0x3
80201456: f8c40c23     	sb	a2, -0x68(s0)
8020145a: faa43023     	sd	a0, -0x60(s0)
8020145e: fab43423     	sd	a1, -0x58(s0)
80201462: cce1         	beqz	s1, 0x8020153a <_ZN4core3fmt5write17h0545e85c538fe473E+0x114>
80201464: 0289b503     	ld	a0, 0x28(s3)
80201468: 12050463     	beqz	a0, 0x80201590 <_ZN4core3fmt5write17h0545e85c538fe473E+0x16a>
8020146c: 0009bb03     	ld	s6, 0x0(s3)
80201470: 0109ba03     	ld	s4, 0x10(s3)
80201474: fff50593     	addi	a1, a0, -0x1
80201478: 058e         	slli	a1, a1, 0x3
8020147a: 818d         	srli	a1, a1, 0x3
8020147c: 00158913     	addi	s2, a1, 0x1
80201480: 0b21         	addi	s6, s6, 0x8
80201482: 00351593     	slli	a1, a0, 0x3
80201486: 051a         	slli	a0, a0, 0x6
80201488: 40b50ab3     	sub	s5, a0, a1
8020148c: 04e1         	addi	s1, s1, 0x18
8020148e: 4b89         	li	s7, 0x2
80201490: 4c05         	li	s8, 0x1
80201492: 000b3603     	ld	a2, 0x0(s6)
80201496: ca19         	beqz	a2, 0x802014ac <_ZN4core3fmt5write17h0545e85c538fe473E+0x86>
80201498: fa843683     	ld	a3, -0x58(s0)
8020149c: fa043503     	ld	a0, -0x60(s0)
802014a0: ff8b3583     	ld	a1, -0x8(s6)
802014a4: 6e94         	ld	a3, 0x18(a3)
802014a6: 9682         	jalr	a3
802014a8: 10051863     	bnez	a0, 0x802015b8 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
802014ac: 6888         	ld	a0, 0x10(s1)
802014ae: f8a43823     	sd	a0, -0x70(s0)
802014b2: 0184c603     	lbu	a2, 0x18(s1)
802014b6: ff84b583     	ld	a1, -0x8(s1)
802014ba: 6088         	ld	a0, 0x0(s1)
802014bc: f8c40c23     	sb	a2, -0x68(s0)
802014c0: c18d         	beqz	a1, 0x802014e2 <_ZN4core3fmt5write17h0545e85c538fe473E+0xbc>
802014c2: 01859663     	bne	a1, s8, 0x802014ce <_ZN4core3fmt5write17h0545e85c538fe473E+0xa8>
802014c6: 0512         	slli	a0, a0, 0x4
802014c8: 9552         	add	a0, a0, s4
802014ca: 610c         	ld	a1, 0x0(a0)
802014cc: c991         	beqz	a1, 0x802014e0 <_ZN4core3fmt5write17h0545e85c538fe473E+0xba>
802014ce: fe84b603     	ld	a2, -0x18(s1)
802014d2: f6043823     	sd	zero, -0x90(s0)
802014d6: f6a43c23     	sd	a0, -0x88(s0)
802014da: 01761d63     	bne	a2, s7, 0x802014f4 <_ZN4core3fmt5write17h0545e85c538fe473E+0xce>
802014de: a025         	j	0x80201506 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe0>
802014e0: 6508         	ld	a0, 0x8(a0)
802014e2: 4585         	li	a1, 0x1
802014e4: fe84b603     	ld	a2, -0x18(s1)
802014e8: f6b43823     	sd	a1, -0x90(s0)
802014ec: f6a43c23     	sd	a0, -0x88(s0)
802014f0: 01760b63     	beq	a2, s7, 0x80201506 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe0>
802014f4: ff04b583     	ld	a1, -0x10(s1)
802014f8: 01861a63     	bne	a2, s8, 0x8020150c <_ZN4core3fmt5write17h0545e85c538fe473E+0xe6>
802014fc: 00459513     	slli	a0, a1, 0x4
80201500: 9552         	add	a0, a0, s4
80201502: 610c         	ld	a1, 0x0(a0)
80201504: c199         	beqz	a1, 0x8020150a <_ZN4core3fmt5write17h0545e85c538fe473E+0xe4>
80201506: 4601         	li	a2, 0x0
80201508: a019         	j	0x8020150e <_ZN4core3fmt5write17h0545e85c538fe473E+0xe8>
8020150a: 650c         	ld	a1, 0x8(a0)
8020150c: 4605         	li	a2, 0x1
8020150e: 6488         	ld	a0, 0x8(s1)
80201510: 0512         	slli	a0, a0, 0x4
80201512: 00aa06b3     	add	a3, s4, a0
80201516: 6288         	ld	a0, 0x0(a3)
80201518: 6694         	ld	a3, 0x8(a3)
8020151a: f8c43023     	sd	a2, -0x80(s0)
8020151e: f8b43423     	sd	a1, -0x78(s0)
80201522: f7040593     	addi	a1, s0, -0x90
80201526: 9682         	jalr	a3
80201528: e941         	bnez	a0, 0x802015b8 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
8020152a: 0b41         	addi	s6, s6, 0x10
8020152c: fc8a8a93     	addi	s5, s5, -0x38
80201530: 03848493     	addi	s1, s1, 0x38
80201534: f40a9fe3     	bnez	s5, 0x80201492 <_ZN4core3fmt5write17h0545e85c538fe473E+0x6c>
80201538: a0b9         	j	0x80201586 <_ZN4core3fmt5write17h0545e85c538fe473E+0x160>
8020153a: 0189b503     	ld	a0, 0x18(s3)
8020153e: c929         	beqz	a0, 0x80201590 <_ZN4core3fmt5write17h0545e85c538fe473E+0x16a>
80201540: 0109b483     	ld	s1, 0x10(s3)
80201544: 00451a13     	slli	s4, a0, 0x4
80201548: 9a26         	add	s4, s4, s1
8020154a: 0009ba83     	ld	s5, 0x0(s3)
8020154e: 157d         	addi	a0, a0, -0x1
80201550: 0512         	slli	a0, a0, 0x4
80201552: 8111         	srli	a0, a0, 0x4
80201554: 00150913     	addi	s2, a0, 0x1
80201558: 0aa1         	addi	s5, s5, 0x8
8020155a: 000ab603     	ld	a2, 0x0(s5)
8020155e: ca11         	beqz	a2, 0x80201572 <_ZN4core3fmt5write17h0545e85c538fe473E+0x14c>
80201560: fa843683     	ld	a3, -0x58(s0)
80201564: fa043503     	ld	a0, -0x60(s0)
80201568: ff8ab583     	ld	a1, -0x8(s5)
8020156c: 6e94         	ld	a3, 0x18(a3)
8020156e: 9682         	jalr	a3
80201570: e521         	bnez	a0, 0x802015b8 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
80201572: 6088         	ld	a0, 0x0(s1)
80201574: 6490         	ld	a2, 0x8(s1)
80201576: f7040593     	addi	a1, s0, -0x90
8020157a: 9602         	jalr	a2
8020157c: ed15         	bnez	a0, 0x802015b8 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
8020157e: 04c1         	addi	s1, s1, 0x10
80201580: 0ac1         	addi	s5, s5, 0x10
80201582: fd449ce3     	bne	s1, s4, 0x8020155a <_ZN4core3fmt5write17h0545e85c538fe473E+0x134>
80201586: 0089b503     	ld	a0, 0x8(s3)
8020158a: 00a96863     	bltu	s2, a0, 0x8020159a <_ZN4core3fmt5write17h0545e85c538fe473E+0x174>
8020158e: a03d         	j	0x802015bc <_ZN4core3fmt5write17h0545e85c538fe473E+0x196>
80201590: 4901         	li	s2, 0x0
80201592: 0089b503     	ld	a0, 0x8(s3)
80201596: 02a07363     	bgeu	zero, a0, 0x802015bc <_ZN4core3fmt5write17h0545e85c538fe473E+0x196>
8020159a: 0009b503     	ld	a0, 0x0(s3)
8020159e: 0912         	slli	s2, s2, 0x4
802015a0: 992a         	add	s2, s2, a0
802015a2: fa843683     	ld	a3, -0x58(s0)
802015a6: fa043503     	ld	a0, -0x60(s0)
802015aa: 00093583     	ld	a1, 0x0(s2)
802015ae: 00893603     	ld	a2, 0x8(s2)
802015b2: 6e94         	ld	a3, 0x18(a3)
802015b4: 9682         	jalr	a3
802015b6: c119         	beqz	a0, 0x802015bc <_ZN4core3fmt5write17h0545e85c538fe473E+0x196>
802015b8: 4505         	li	a0, 0x1
802015ba: a011         	j	0x802015be <_ZN4core3fmt5write17h0545e85c538fe473E+0x198>
802015bc: 4501         	li	a0, 0x0
802015be: 60aa         	ld	ra, 0x88(sp)
802015c0: 640a         	ld	s0, 0x80(sp)
802015c2: 74e6         	ld	s1, 0x78(sp)
802015c4: 7946         	ld	s2, 0x70(sp)
802015c6: 79a6         	ld	s3, 0x68(sp)
802015c8: 7a06         	ld	s4, 0x60(sp)
802015ca: 6ae6         	ld	s5, 0x58(sp)
802015cc: 6b46         	ld	s6, 0x50(sp)
802015ce: 6ba6         	ld	s7, 0x48(sp)
802015d0: 6c06         	ld	s8, 0x40(sp)
802015d2: 6149         	addi	sp, sp, 0x90
802015d4: 8082         	ret

00000000802015d6 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E>:
802015d6: 7159         	addi	sp, sp, -0x70
802015d8: f486         	sd	ra, 0x68(sp)
802015da: f0a2         	sd	s0, 0x60(sp)
802015dc: eca6         	sd	s1, 0x58(sp)
802015de: e8ca         	sd	s2, 0x50(sp)
802015e0: e4ce         	sd	s3, 0x48(sp)
802015e2: e0d2         	sd	s4, 0x40(sp)
802015e4: fc56         	sd	s5, 0x38(sp)
802015e6: f85a         	sd	s6, 0x30(sp)
802015e8: f45e         	sd	s7, 0x28(sp)
802015ea: f062         	sd	s8, 0x20(sp)
802015ec: ec66         	sd	s9, 0x18(sp)
802015ee: e86a         	sd	s10, 0x10(sp)
802015f0: e46e         	sd	s11, 0x8(sp)
802015f2: 1880         	addi	s0, sp, 0x70
802015f4: 89be         	mv	s3, a5
802015f6: 893a         	mv	s2, a4
802015f8: 8a36         	mv	s4, a3
802015fa: 8b32         	mv	s6, a2
802015fc: c5b9         	beqz	a1, 0x8020164a <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x74>
802015fe: 02456483     	lwu	s1, 0x24(a0)
80201602: 0014fc13     	andi	s8, s1, 0x1
80201606: 00110ab7     	lui	s5, 0x110
8020160a: 000c0463     	beqz	s8, 0x80201612 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x3c>
8020160e: 02b00a93     	li	s5, 0x2b
80201612: 9c4e         	add	s8, s8, s3
80201614: 0044f593     	andi	a1, s1, 0x4
80201618: c1a9         	beqz	a1, 0x8020165a <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x84>
8020161a: 02000593     	li	a1, 0x20
8020161e: 04ba7263     	bgeu	s4, a1, 0x80201662 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x8c>
80201622: 4581         	li	a1, 0x0
80201624: 000a0f63     	beqz	s4, 0x80201642 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x6c>
80201628: 014b0633     	add	a2, s6, s4
8020162c: 86da         	mv	a3, s6
8020162e: 00068703     	lb	a4, 0x0(a3)
80201632: fc072713     	slti	a4, a4, -0x40
80201636: 00174713     	xori	a4, a4, 0x1
8020163a: 0685         	addi	a3, a3, 0x1
8020163c: 95ba         	add	a1, a1, a4
8020163e: fec698e3     	bne	a3, a2, 0x8020162e <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x58>
80201642: 9c2e         	add	s8, s8, a1
80201644: 610c         	ld	a1, 0x0(a0)
80201646: c1a5         	beqz	a1, 0x802016a6 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
80201648: a815         	j	0x8020167c <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xa6>
8020164a: 5144         	lw	s1, 0x24(a0)
8020164c: 00198c13     	addi	s8, s3, 0x1
80201650: 02d00a93     	li	s5, 0x2d
80201654: 0044f593     	andi	a1, s1, 0x4
80201658: f1e9         	bnez	a1, 0x8020161a <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x44>
8020165a: 4b01         	li	s6, 0x0
8020165c: 610c         	ld	a1, 0x0(a0)
8020165e: ed99         	bnez	a1, 0x8020167c <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xa6>
80201660: a099         	j	0x802016a6 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
80201662: 8baa         	mv	s7, a0
80201664: 855a         	mv	a0, s6
80201666: 85d2         	mv	a1, s4
80201668: 00000097     	auipc	ra, 0x0
8020166c: 3e6080e7     	jalr	0x3e6(ra) <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE>
80201670: 85aa         	mv	a1, a0
80201672: 855e         	mv	a0, s7
80201674: 9c2e         	add	s8, s8, a1
80201676: 000bb583     	ld	a1, 0x0(s7)
8020167a: c595         	beqz	a1, 0x802016a6 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
8020167c: 00853c83     	ld	s9, 0x8(a0)
80201680: 039c7363     	bgeu	s8, s9, 0x802016a6 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
80201684: 88a1         	andi	s1, s1, 0x8
80201686: e0b5         	bnez	s1, 0x802016ea <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x114>
80201688: 02854583     	lbu	a1, 0x28(a0)
8020168c: 460d         	li	a2, 0x3
8020168e: 00c59363     	bne	a1, a2, 0x80201694 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xbe>
80201692: 4585         	li	a1, 0x1
80201694: 418c8cb3     	sub	s9, s9, s8
80201698: c5d5         	beqz	a1, 0x80201744 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x16e>
8020169a: 4605         	li	a2, 0x1
8020169c: 08c59f63     	bne	a1, a2, 0x8020173a <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x164>
802016a0: 85e6         	mv	a1, s9
802016a2: 4c81         	li	s9, 0x0
802016a4: a045         	j	0x80201744 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x16e>
802016a6: 03053b83     	ld	s7, 0x30(a0)
802016aa: 7d04         	ld	s1, 0x38(a0)
802016ac: 855e         	mv	a0, s7
802016ae: 85a6         	mv	a1, s1
802016b0: 8656         	mv	a2, s5
802016b2: 86da         	mv	a3, s6
802016b4: 8752         	mv	a4, s4
802016b6: 00000097     	auipc	ra, 0x0
802016ba: 144080e7     	jalr	0x144(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>
802016be: 85aa         	mv	a1, a0
802016c0: 4505         	li	a0, 0x1
802016c2: e1d5         	bnez	a1, 0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
802016c4: 6c9c         	ld	a5, 0x18(s1)
802016c6: 855e         	mv	a0, s7
802016c8: 85ca         	mv	a1, s2
802016ca: 864e         	mv	a2, s3
802016cc: 70a6         	ld	ra, 0x68(sp)
802016ce: 7406         	ld	s0, 0x60(sp)
802016d0: 64e6         	ld	s1, 0x58(sp)
802016d2: 6946         	ld	s2, 0x50(sp)
802016d4: 69a6         	ld	s3, 0x48(sp)
802016d6: 6a06         	ld	s4, 0x40(sp)
802016d8: 7ae2         	ld	s5, 0x38(sp)
802016da: 7b42         	ld	s6, 0x30(sp)
802016dc: 7ba2         	ld	s7, 0x28(sp)
802016de: 7c02         	ld	s8, 0x20(sp)
802016e0: 6ce2         	ld	s9, 0x18(sp)
802016e2: 6d42         	ld	s10, 0x10(sp)
802016e4: 6da2         	ld	s11, 0x8(sp)
802016e6: 6165         	addi	sp, sp, 0x70
802016e8: 8782         	jr	a5
802016ea: 5104         	lw	s1, 0x20(a0)
802016ec: 03000593     	li	a1, 0x30
802016f0: 02854603     	lbu	a2, 0x28(a0)
802016f4: f8c43823     	sd	a2, -0x70(s0)
802016f8: 03053b83     	ld	s7, 0x30(a0)
802016fc: 03853d03     	ld	s10, 0x38(a0)
80201700: d10c         	sw	a1, 0x20(a0)
80201702: 4585         	li	a1, 0x1
80201704: 8daa         	mv	s11, a0
80201706: 02b50423     	sb	a1, 0x28(a0)
8020170a: 855e         	mv	a0, s7
8020170c: 85ea         	mv	a1, s10
8020170e: 8656         	mv	a2, s5
80201710: 86da         	mv	a3, s6
80201712: 8752         	mv	a4, s4
80201714: 00000097     	auipc	ra, 0x0
80201718: 0e6080e7     	jalr	0xe6(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>
8020171c: e521         	bnez	a0, 0x80201764 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x18e>
8020171e: 8a26         	mv	s4, s1
80201720: 418c84b3     	sub	s1, s9, s8
80201724: 0485         	addi	s1, s1, 0x1
80201726: 14fd         	addi	s1, s1, -0x1
80201728: c4cd         	beqz	s1, 0x802017d2 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x1fc>
8020172a: 020d3603     	ld	a2, 0x20(s10)
8020172e: 03000593     	li	a1, 0x30
80201732: 855e         	mv	a0, s7
80201734: 9602         	jalr	a2
80201736: d965         	beqz	a0, 0x80201726 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x150>
80201738: a035         	j	0x80201764 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x18e>
8020173a: 001cd593     	srli	a1, s9, 0x1
8020173e: 0c85         	addi	s9, s9, 0x1
80201740: 001cdc93     	srli	s9, s9, 0x1
80201744: 03053b83     	ld	s7, 0x30(a0)
80201748: 03853d03     	ld	s10, 0x38(a0)
8020174c: 02052c03     	lw	s8, 0x20(a0)
80201750: 00158493     	addi	s1, a1, 0x1
80201754: 14fd         	addi	s1, s1, -0x1
80201756: c49d         	beqz	s1, 0x80201784 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x1ae>
80201758: 020d3603     	ld	a2, 0x20(s10)
8020175c: 855e         	mv	a0, s7
8020175e: 85e2         	mv	a1, s8
80201760: 9602         	jalr	a2
80201762: d96d         	beqz	a0, 0x80201754 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x17e>
80201764: 4505         	li	a0, 0x1
80201766: 70a6         	ld	ra, 0x68(sp)
80201768: 7406         	ld	s0, 0x60(sp)
8020176a: 64e6         	ld	s1, 0x58(sp)
8020176c: 6946         	ld	s2, 0x50(sp)
8020176e: 69a6         	ld	s3, 0x48(sp)
80201770: 6a06         	ld	s4, 0x40(sp)
80201772: 7ae2         	ld	s5, 0x38(sp)
80201774: 7b42         	ld	s6, 0x30(sp)
80201776: 7ba2         	ld	s7, 0x28(sp)
80201778: 7c02         	ld	s8, 0x20(sp)
8020177a: 6ce2         	ld	s9, 0x18(sp)
8020177c: 6d42         	ld	s10, 0x10(sp)
8020177e: 6da2         	ld	s11, 0x8(sp)
80201780: 6165         	addi	sp, sp, 0x70
80201782: 8082         	ret
80201784: 855e         	mv	a0, s7
80201786: 85ea         	mv	a1, s10
80201788: 8656         	mv	a2, s5
8020178a: 86da         	mv	a3, s6
8020178c: 8752         	mv	a4, s4
8020178e: 00000097     	auipc	ra, 0x0
80201792: 06c080e7     	jalr	0x6c(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>
80201796: 85aa         	mv	a1, a0
80201798: 4505         	li	a0, 0x1
8020179a: f5f1         	bnez	a1, 0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
8020179c: 018d3683     	ld	a3, 0x18(s10)
802017a0: 855e         	mv	a0, s7
802017a2: 85ca         	mv	a1, s2
802017a4: 864e         	mv	a2, s3
802017a6: 9682         	jalr	a3
802017a8: 85aa         	mv	a1, a0
802017aa: 4505         	li	a0, 0x1
802017ac: fdcd         	bnez	a1, 0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
802017ae: 41900933     	neg	s2, s9
802017b2: 59fd         	li	s3, -0x1
802017b4: 54fd         	li	s1, -0x1
802017b6: 00990533     	add	a0, s2, s1
802017ba: 03350d63     	beq	a0, s3, 0x802017f4 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x21e>
802017be: 020d3603     	ld	a2, 0x20(s10)
802017c2: 855e         	mv	a0, s7
802017c4: 85e2         	mv	a1, s8
802017c6: 9602         	jalr	a2
802017c8: 0485         	addi	s1, s1, 0x1
802017ca: d575         	beqz	a0, 0x802017b6 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x1e0>
802017cc: 0194b533     	sltu	a0, s1, s9
802017d0: bf59         	j	0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
802017d2: 018d3683     	ld	a3, 0x18(s10)
802017d6: 855e         	mv	a0, s7
802017d8: 85ca         	mv	a1, s2
802017da: 864e         	mv	a2, s3
802017dc: 9682         	jalr	a3
802017de: 85aa         	mv	a1, a0
802017e0: 4505         	li	a0, 0x1
802017e2: f1d1         	bnez	a1, 0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
802017e4: 4501         	li	a0, 0x0
802017e6: 034da023     	sw	s4, 0x20(s11)
802017ea: f9043583     	ld	a1, -0x70(s0)
802017ee: 02bd8423     	sb	a1, 0x28(s11)
802017f2: bf95         	j	0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
802017f4: 019cb533     	sltu	a0, s9, s9
802017f8: b7bd         	j	0x80201766 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>

00000000802017fa <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>:
802017fa: 7179         	addi	sp, sp, -0x30
802017fc: f406         	sd	ra, 0x28(sp)
802017fe: f022         	sd	s0, 0x20(sp)
80201800: ec26         	sd	s1, 0x18(sp)
80201802: e84a         	sd	s2, 0x10(sp)
80201804: e44e         	sd	s3, 0x8(sp)
80201806: e052         	sd	s4, 0x0(sp)
80201808: 1800         	addi	s0, sp, 0x30
8020180a: 001107b7     	lui	a5, 0x110
8020180e: 893a         	mv	s2, a4
80201810: 8a36         	mv	s4, a3
80201812: 89ae         	mv	s3, a1
80201814: 00f60b63     	beq	a2, a5, 0x8020182a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E+0x30>
80201818: 0209b683     	ld	a3, 0x20(s3)
8020181c: 84aa         	mv	s1, a0
8020181e: 85b2         	mv	a1, a2
80201820: 9682         	jalr	a3
80201822: 862a         	mv	a2, a0
80201824: 8526         	mv	a0, s1
80201826: 4585         	li	a1, 0x1
80201828: e205         	bnez	a2, 0x80201848 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E+0x4e>
8020182a: 000a0e63     	beqz	s4, 0x80201846 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E+0x4c>
8020182e: 0189b783     	ld	a5, 0x18(s3)
80201832: 85d2         	mv	a1, s4
80201834: 864a         	mv	a2, s2
80201836: 70a2         	ld	ra, 0x28(sp)
80201838: 7402         	ld	s0, 0x20(sp)
8020183a: 64e2         	ld	s1, 0x18(sp)
8020183c: 6942         	ld	s2, 0x10(sp)
8020183e: 69a2         	ld	s3, 0x8(sp)
80201840: 6a02         	ld	s4, 0x0(sp)
80201842: 6145         	addi	sp, sp, 0x30
80201844: 8782         	jr	a5
80201846: 4581         	li	a1, 0x0
80201848: 852e         	mv	a0, a1
8020184a: 70a2         	ld	ra, 0x28(sp)
8020184c: 7402         	ld	s0, 0x20(sp)
8020184e: 64e2         	ld	s1, 0x18(sp)
80201850: 6942         	ld	s2, 0x10(sp)
80201852: 69a2         	ld	s3, 0x8(sp)
80201854: 6a02         	ld	s4, 0x0(sp)
80201856: 6145         	addi	sp, sp, 0x30
80201858: 8082         	ret

000000008020185a <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E>:
8020185a: 715d         	addi	sp, sp, -0x50
8020185c: e486         	sd	ra, 0x48(sp)
8020185e: e0a2         	sd	s0, 0x40(sp)
80201860: fc26         	sd	s1, 0x38(sp)
80201862: f84a         	sd	s2, 0x30(sp)
80201864: f44e         	sd	s3, 0x28(sp)
80201866: f052         	sd	s4, 0x20(sp)
80201868: ec56         	sd	s5, 0x18(sp)
8020186a: e85a         	sd	s6, 0x10(sp)
8020186c: e45e         	sd	s7, 0x8(sp)
8020186e: 0880         	addi	s0, sp, 0x50
80201870: 6114         	ld	a3, 0x0(a0)
80201872: 6918         	ld	a4, 0x10(a0)
80201874: 00e6e7b3     	or	a5, a3, a4
80201878: 8932         	mv	s2, a2
8020187a: 89ae         	mv	s3, a1
8020187c: 10078163     	beqz	a5, 0x8020197e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x124>
80201880: 8b05         	andi	a4, a4, 0x1
80201882: cb51         	beqz	a4, 0x80201916 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
80201884: 6d18         	ld	a4, 0x18(a0)
80201886: 01298633     	add	a2, s3, s2
8020188a: 4581         	li	a1, 0x0
8020188c: c721         	beqz	a4, 0x802018d4 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x7a>
8020188e: 0e000893     	li	a7, 0xe0
80201892: 0f000813     	li	a6, 0xf0
80201896: 84ce         	mv	s1, s3
80201898: a809         	j	0x802018aa <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x50>
8020189a: 00148793     	addi	a5, s1, 0x1
8020189e: 8c8d         	sub	s1, s1, a1
802018a0: 177d         	addi	a4, a4, -0x1
802018a2: 409785b3     	sub	a1, a5, s1
802018a6: 84be         	mv	s1, a5
802018a8: c71d         	beqz	a4, 0x802018d6 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x7c>
802018aa: 06c48663     	beq	s1, a2, 0x80201916 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
802018ae: 00048783     	lb	a5, 0x0(s1)
802018b2: fe07d4e3     	bgez	a5, 0x8020189a <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x40>
802018b6: 0ff7f793     	andi	a5, a5, 0xff
802018ba: 0117e763     	bltu	a5, a7, 0x802018c8 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x6e>
802018be: 0107e863     	bltu	a5, a6, 0x802018ce <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x74>
802018c2: 00448793     	addi	a5, s1, 0x4
802018c6: bfe1         	j	0x8020189e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x44>
802018c8: 00248793     	addi	a5, s1, 0x2
802018cc: bfc9         	j	0x8020189e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x44>
802018ce: 00348793     	addi	a5, s1, 0x3
802018d2: b7f1         	j	0x8020189e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x44>
802018d4: 87ce         	mv	a5, s3
802018d6: 04c78063     	beq	a5, a2, 0x80201916 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
802018da: 00078603     	lb	a2, 0x0(a5)
802018de: 00065663     	bgez	a2, 0x802018ea <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x90>
802018e2: 0ff67613     	andi	a2, a2, 0xff
802018e6: 0e000713     	li	a4, 0xe0
802018ea: c18d         	beqz	a1, 0x8020190c <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xb2>
802018ec: 0125fe63     	bgeu	a1, s2, 0x80201908 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xae>
802018f0: 00b98633     	add	a2, s3, a1
802018f4: 00060603     	lb	a2, 0x0(a2)
802018f8: fc000713     	li	a4, -0x40
802018fc: 00e65863     	bge	a2, a4, 0x8020190c <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xb2>
80201900: 4601         	li	a2, 0x0
80201902: 00001863     	bnez	zero, 0x80201912 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xb8>
80201906: a801         	j	0x80201916 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
80201908: ff259ce3     	bne	a1, s2, 0x80201900 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xa6>
8020190c: 864e         	mv	a2, s3
8020190e: 00098463     	beqz	s3, 0x80201916 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
80201912: 892e         	mv	s2, a1
80201914: 89b2         	mv	s3, a2
80201916: c6a5         	beqz	a3, 0x8020197e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x124>
80201918: 6504         	ld	s1, 0x8(a0)
8020191a: 02000593     	li	a1, 0x20
8020191e: 04b97563     	bgeu	s2, a1, 0x80201968 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x10e>
80201922: 4581         	li	a1, 0x0
80201924: 00090f63     	beqz	s2, 0x80201942 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xe8>
80201928: 01298633     	add	a2, s3, s2
8020192c: 86ce         	mv	a3, s3
8020192e: 00068703     	lb	a4, 0x0(a3)
80201932: fc072713     	slti	a4, a4, -0x40
80201936: 00174713     	xori	a4, a4, 0x1
8020193a: 0685         	addi	a3, a3, 0x1
8020193c: 95ba         	add	a1, a1, a4
8020193e: fec698e3     	bne	a3, a2, 0x8020192e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xd4>
80201942: 0295fe63     	bgeu	a1, s1, 0x8020197e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x124>
80201946: 02854603     	lbu	a2, 0x28(a0)
8020194a: ffd60693     	addi	a3, a2, -0x3
8020194e: 0016b693     	seqz	a3, a3
80201952: 16fd         	addi	a3, a3, -0x1
80201954: 8e75         	and	a2, a2, a3
80201956: 40b48ab3     	sub	s5, s1, a1
8020195a: c639         	beqz	a2, 0x802019a8 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x14e>
8020195c: 4585         	li	a1, 0x1
8020195e: 04b61063     	bne	a2, a1, 0x8020199e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x144>
80201962: 8656         	mv	a2, s5
80201964: 4a81         	li	s5, 0x0
80201966: a089         	j	0x802019a8 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x14e>
80201968: 8a2a         	mv	s4, a0
8020196a: 854e         	mv	a0, s3
8020196c: 85ca         	mv	a1, s2
8020196e: 00000097     	auipc	ra, 0x0
80201972: 0e0080e7     	jalr	0xe0(ra) <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE>
80201976: 85aa         	mv	a1, a0
80201978: 8552         	mv	a0, s4
8020197a: fc95e6e3     	bltu	a1, s1, 0x80201946 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xec>
8020197e: 7d0c         	ld	a1, 0x38(a0)
80201980: 7908         	ld	a0, 0x30(a0)
80201982: 6d9c         	ld	a5, 0x18(a1)
80201984: 85ce         	mv	a1, s3
80201986: 864a         	mv	a2, s2
80201988: 60a6         	ld	ra, 0x48(sp)
8020198a: 6406         	ld	s0, 0x40(sp)
8020198c: 74e2         	ld	s1, 0x38(sp)
8020198e: 7942         	ld	s2, 0x30(sp)
80201990: 79a2         	ld	s3, 0x28(sp)
80201992: 7a02         	ld	s4, 0x20(sp)
80201994: 6ae2         	ld	s5, 0x18(sp)
80201996: 6b42         	ld	s6, 0x10(sp)
80201998: 6ba2         	ld	s7, 0x8(sp)
8020199a: 6161         	addi	sp, sp, 0x50
8020199c: 8782         	jr	a5
8020199e: 001ad613     	srli	a2, s5, 0x1
802019a2: 0a85         	addi	s5, s5, 0x1
802019a4: 001ada93     	srli	s5, s5, 0x1
802019a8: 03053a03     	ld	s4, 0x30(a0)
802019ac: 03853b83     	ld	s7, 0x38(a0)
802019b0: 02052b03     	lw	s6, 0x20(a0)
802019b4: 00160493     	addi	s1, a2, 0x1
802019b8: 14fd         	addi	s1, s1, -0x1
802019ba: c889         	beqz	s1, 0x802019cc <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x172>
802019bc: 020bb603     	ld	a2, 0x20(s7)
802019c0: 8552         	mv	a0, s4
802019c2: 85da         	mv	a1, s6
802019c4: 9602         	jalr	a2
802019c6: d96d         	beqz	a0, 0x802019b8 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x15e>
802019c8: 4505         	li	a0, 0x1
802019ca: a82d         	j	0x80201a04 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1aa>
802019cc: 018bb683     	ld	a3, 0x18(s7)
802019d0: 8552         	mv	a0, s4
802019d2: 85ce         	mv	a1, s3
802019d4: 864a         	mv	a2, s2
802019d6: 9682         	jalr	a3
802019d8: 85aa         	mv	a1, a0
802019da: 4505         	li	a0, 0x1
802019dc: e585         	bnez	a1, 0x80201a04 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1aa>
802019de: 41500933     	neg	s2, s5
802019e2: 59fd         	li	s3, -0x1
802019e4: 54fd         	li	s1, -0x1
802019e6: 00990533     	add	a0, s2, s1
802019ea: 01350a63     	beq	a0, s3, 0x802019fe <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1a4>
802019ee: 020bb603     	ld	a2, 0x20(s7)
802019f2: 8552         	mv	a0, s4
802019f4: 85da         	mv	a1, s6
802019f6: 9602         	jalr	a2
802019f8: 0485         	addi	s1, s1, 0x1
802019fa: d575         	beqz	a0, 0x802019e6 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x18c>
802019fc: a011         	j	0x80201a00 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1a6>
802019fe: 84d6         	mv	s1, s5
80201a00: 0154b533     	sltu	a0, s1, s5
80201a04: 60a6         	ld	ra, 0x48(sp)
80201a06: 6406         	ld	s0, 0x40(sp)
80201a08: 74e2         	ld	s1, 0x38(sp)
80201a0a: 7942         	ld	s2, 0x30(sp)
80201a0c: 79a2         	ld	s3, 0x28(sp)
80201a0e: 7a02         	ld	s4, 0x20(sp)
80201a10: 6ae2         	ld	s5, 0x18(sp)
80201a12: 6b42         	ld	s6, 0x10(sp)
80201a14: 6ba2         	ld	s7, 0x8(sp)
80201a16: 6161         	addi	sp, sp, 0x50
80201a18: 8082         	ret

0000000080201a1a <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h1dc9abc2d2ed6cceE>:
80201a1a: 1141         	addi	sp, sp, -0x10
80201a1c: e406         	sd	ra, 0x8(sp)
80201a1e: e022         	sd	s0, 0x0(sp)
80201a20: 0800         	addi	s0, sp, 0x10
80201a22: 7d14         	ld	a3, 0x38(a0)
80201a24: 7908         	ld	a0, 0x30(a0)
80201a26: 6e9c         	ld	a5, 0x18(a3)
80201a28: 60a2         	ld	ra, 0x8(sp)
80201a2a: 6402         	ld	s0, 0x0(sp)
80201a2c: 0141         	addi	sp, sp, 0x10
80201a2e: 8782         	jr	a5

0000000080201a30 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1c6bf3111fb4e387E>:
80201a30: 1141         	addi	sp, sp, -0x10
80201a32: e406         	sd	ra, 0x8(sp)
80201a34: e022         	sd	s0, 0x0(sp)
80201a36: 0800         	addi	s0, sp, 0x10
80201a38: 86ae         	mv	a3, a1
80201a3a: 85aa         	mv	a1, a0
80201a3c: 8532         	mv	a0, a2
80201a3e: 8636         	mv	a2, a3
80201a40: 60a2         	ld	ra, 0x8(sp)
80201a42: 6402         	ld	s0, 0x0(sp)
80201a44: 0141         	addi	sp, sp, 0x10
80201a46: 00000317     	auipc	t1, 0x0
80201a4a: e1430067     	jr	-0x1ec(t1) <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E>

0000000080201a4e <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE>:
80201a4e: 1141         	addi	sp, sp, -0x10
80201a50: e406         	sd	ra, 0x8(sp)
80201a52: e022         	sd	s0, 0x0(sp)
80201a54: 0800         	addi	s0, sp, 0x10
80201a56: 862a         	mv	a2, a0
80201a58: 00750793     	addi	a5, a0, 0x7
80201a5c: 9be1         	andi	a5, a5, -0x8
80201a5e: 40a786b3     	sub	a3, a5, a0
80201a62: 02d5f363     	bgeu	a1, a3, 0x80201a88 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x3a>
80201a66: 4501         	li	a0, 0x0
80201a68: cd81         	beqz	a1, 0x80201a80 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x32>
80201a6a: 95b2         	add	a1, a1, a2
80201a6c: 00060683     	lb	a3, 0x0(a2)
80201a70: fc06a693     	slti	a3, a3, -0x40
80201a74: 0016c693     	xori	a3, a3, 0x1
80201a78: 0605         	addi	a2, a2, 0x1
80201a7a: 9536         	add	a0, a0, a3
80201a7c: feb618e3     	bne	a2, a1, 0x80201a6c <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x1e>
80201a80: 60a2         	ld	ra, 0x8(sp)
80201a82: 6402         	ld	s0, 0x0(sp)
80201a84: 0141         	addi	sp, sp, 0x10
80201a86: 8082         	ret
80201a88: 40d58733     	sub	a4, a1, a3
80201a8c: 00375313     	srli	t1, a4, 0x3
80201a90: fc030be3     	beqz	t1, 0x80201a66 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x18>
80201a94: 96b2         	add	a3, a3, a2
80201a96: 00777813     	andi	a6, a4, 0x7
80201a9a: 4501         	li	a0, 0x0
80201a9c: 00c78c63     	beq	a5, a2, 0x80201ab4 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x66>
80201aa0: 00060583     	lb	a1, 0x0(a2)
80201aa4: fc05a593     	slti	a1, a1, -0x40
80201aa8: 0015c593     	xori	a1, a1, 0x1
80201aac: 0605         	addi	a2, a2, 0x1
80201aae: 952e         	add	a0, a0, a1
80201ab0: fed618e3     	bne	a2, a3, 0x80201aa0 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x52>
80201ab4: 4601         	li	a2, 0x0
80201ab6: 02080263     	beqz	a6, 0x80201ada <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x8c>
80201aba: ff877593     	andi	a1, a4, -0x8
80201abe: 00b68733     	add	a4, a3, a1
80201ac2: 95be         	add	a1, a1, a5
80201ac4: 95c2         	add	a1, a1, a6
80201ac6: 00070783     	lb	a5, 0x0(a4)
80201aca: fc07a793     	slti	a5, a5, -0x40
80201ace: 0017c793     	xori	a5, a5, 0x1
80201ad2: 0705         	addi	a4, a4, 0x1
80201ad4: 963e         	add	a2, a2, a5
80201ad6: feb718e3     	bne	a4, a1, 0x80201ac6 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x78>
80201ada: 010105b7     	lui	a1, 0x1010
80201ade: 1015859b     	addiw	a1, a1, 0x101
80201ae2: 02059713     	slli	a4, a1, 0x20
80201ae6: 00e58fb3     	add	t6, a1, a4
80201aea: 00ff0737     	lui	a4, 0xff0
80201aee: 0ff7089b     	addiw	a7, a4, 0xff
80201af2: 02089713     	slli	a4, a7, 0x20
80201af6: 98ba         	add	a7, a7, a4
80201af8: 6741         	lui	a4, 0x10
80201afa: 2705         	addiw	a4, a4, 0x1
80201afc: 02071813     	slli	a6, a4, 0x20
80201b00: 983a         	add	a6, a6, a4
80201b02: 9532         	add	a0, a0, a2
80201b04: 4291         	li	t0, 0x4
80201b06: a015         	j	0x80201b2a <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xdc>
80201b08: 006e06b3     	add	a3, t3, t1
80201b0c: 407e8333     	sub	t1, t4, t2
80201b10: 0033f593     	andi	a1, t2, 0x3
80201b14: 0117f633     	and	a2, a5, a7
80201b18: 83a1         	srli	a5, a5, 0x8
80201b1a: 0117f733     	and	a4, a5, a7
80201b1e: 963a         	add	a2, a2, a4
80201b20: 03060633     	mul	a2, a2, a6
80201b24: 9241         	srli	a2, a2, 0x30
80201b26: 9532         	add	a0, a0, a2
80201b28: edbd         	bnez	a1, 0x80201ba6 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x158>
80201b2a: f4030be3     	beqz	t1, 0x80201a80 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x32>
80201b2e: 8e9a         	mv	t4, t1
80201b30: 8e36         	mv	t3, a3
80201b32: 0c000613     	li	a2, 0xc0
80201b36: 839a         	mv	t2, t1
80201b38: 00c36463     	bltu	t1, a2, 0x80201b40 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xf2>
80201b3c: 0c000393     	li	t2, 0xc0
80201b40: 00339313     	slli	t1, t2, 0x3
80201b44: 4781         	li	a5, 0x0
80201b46: fc5ee1e3     	bltu	t4, t0, 0x80201b08 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xba>
80201b4a: 7e037613     	andi	a2, t1, 0x7e0
80201b4e: 00ce0f33     	add	t5, t3, a2
80201b52: 86f2         	mv	a3, t3
80201b54: 6298         	ld	a4, 0x0(a3)
80201b56: fff74613     	not	a2, a4
80201b5a: 821d         	srli	a2, a2, 0x7
80201b5c: 8319         	srli	a4, a4, 0x6
80201b5e: 668c         	ld	a1, 0x8(a3)
80201b60: 8e59         	or	a2, a2, a4
80201b62: 01f67633     	and	a2, a2, t6
80201b66: 963e         	add	a2, a2, a5
80201b68: fff5c713     	not	a4, a1
80201b6c: 831d         	srli	a4, a4, 0x7
80201b6e: 6a9c         	ld	a5, 0x10(a3)
80201b70: 8199         	srli	a1, a1, 0x6
80201b72: 8dd9         	or	a1, a1, a4
80201b74: 01f5f5b3     	and	a1, a1, t6
80201b78: fff7c713     	not	a4, a5
80201b7c: 831d         	srli	a4, a4, 0x7
80201b7e: 8399         	srli	a5, a5, 0x6
80201b80: 8f5d         	or	a4, a4, a5
80201b82: 6e9c         	ld	a5, 0x18(a3)
80201b84: 01f77733     	and	a4, a4, t6
80201b88: 95ba         	add	a1, a1, a4
80201b8a: 95b2         	add	a1, a1, a2
80201b8c: fff7c613     	not	a2, a5
80201b90: 821d         	srli	a2, a2, 0x7
80201b92: 8399         	srli	a5, a5, 0x6
80201b94: 8e5d         	or	a2, a2, a5
80201b96: 01f677b3     	and	a5, a2, t6
80201b9a: 02068693     	addi	a3, a3, 0x20
80201b9e: 97ae         	add	a5, a5, a1
80201ba0: fbe69ae3     	bne	a3, t5, 0x80201b54 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x106>
80201ba4: b795         	j	0x80201b08 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xba>
80201ba6: 4601         	li	a2, 0x0
80201ba8: 0fc3f593     	andi	a1, t2, 0xfc
80201bac: 058e         	slli	a1, a1, 0x3
80201bae: 9e2e         	add	t3, t3, a1
80201bb0: 0c0eb593     	sltiu	a1, t4, 0xc0
80201bb4: 40b005bb     	negw	a1, a1
80201bb8: 00bef5b3     	and	a1, t4, a1
80201bbc: 898d         	andi	a1, a1, 0x3
80201bbe: 00359693     	slli	a3, a1, 0x3
80201bc2: 000e3583     	ld	a1, 0x0(t3)
80201bc6: 0e21         	addi	t3, t3, 0x8
80201bc8: fff5c713     	not	a4, a1
80201bcc: 831d         	srli	a4, a4, 0x7
80201bce: 8199         	srli	a1, a1, 0x6
80201bd0: 8dd9         	or	a1, a1, a4
80201bd2: 01f5f5b3     	and	a1, a1, t6
80201bd6: 16e1         	addi	a3, a3, -0x8
80201bd8: 962e         	add	a2, a2, a1
80201bda: f6e5         	bnez	a3, 0x80201bc2 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x174>
80201bdc: 011675b3     	and	a1, a2, a7
80201be0: 8221         	srli	a2, a2, 0x8
80201be2: 01167633     	and	a2, a2, a7
80201be6: 95b2         	add	a1, a1, a2
80201be8: 030585b3     	mul	a1, a1, a6
80201bec: 91c1         	srli	a1, a1, 0x30
80201bee: 952e         	add	a0, a0, a1
80201bf0: 60a2         	ld	ra, 0x8(sp)
80201bf2: 6402         	ld	s0, 0x0(sp)
80201bf4: 0141         	addi	sp, sp, 0x10
80201bf6: 8082         	ret

0000000080201bf8 <_ZN4core4char7methods15encode_utf8_raw8do_panic7runtime17hf2c5d4a1246995f1E>:
80201bf8: 7169         	addi	sp, sp, -0x130
80201bfa: f606         	sd	ra, 0x128(sp)
80201bfc: f222         	sd	s0, 0x120(sp)
80201bfe: 1a00         	addi	s0, sp, 0x130
80201c00: eca42a23     	sw	a0, -0x12c(s0)
80201c04: ecb43c23     	sd	a1, -0x128(s0)
80201c08: eec43023     	sd	a2, -0x120(s0)
80201c0c: ed840513     	addi	a0, s0, -0x128
80201c10: f0a43c23     	sd	a0, -0xe8(s0)

0000000080201c14 <.Lpcrel_hi901>:
80201c14: 00000517     	auipc	a0, 0x0
80201c18: 2c450513     	addi	a0, a0, 0x2c4
80201c1c: f2a43023     	sd	a0, -0xe0(s0)
80201c20: ed440593     	addi	a1, s0, -0x12c
80201c24: f2b43423     	sd	a1, -0xd8(s0)

0000000080201c28 <.Lpcrel_hi902>:
80201c28: 00000597     	auipc	a1, 0x0
80201c2c: 0d658593     	addi	a1, a1, 0xd6
80201c30: f2b43823     	sd	a1, -0xd0(s0)
80201c34: ee040593     	addi	a1, s0, -0x120
80201c38: f2b43c23     	sd	a1, -0xc8(s0)
80201c3c: f4a43023     	sd	a0, -0xc0(s0)
80201c40: 4509         	li	a0, 0x2
80201c42: f4a43423     	sd	a0, -0xb8(s0)
80201c46: f4a43c23     	sd	a0, -0xa8(s0)
80201c4a: f6043423     	sd	zero, -0x98(s0)
80201c4e: 02000593     	li	a1, 0x20
80201c52: f6b43823     	sd	a1, -0x90(s0)
80201c56: 460d         	li	a2, 0x3
80201c58: f6c40c23     	sb	a2, -0x88(s0)
80201c5c: f8a43023     	sd	a0, -0x80(s0)
80201c60: f8043823     	sd	zero, -0x70(s0)
80201c64: 4711         	li	a4, 0x4
80201c66: f8e43c23     	sd	a4, -0x68(s0)
80201c6a: 4705         	li	a4, 0x1
80201c6c: fae43023     	sd	a4, -0x60(s0)
80201c70: 170e         	slli	a4, a4, 0x23
80201c72: 02070713     	addi	a4, a4, 0x20
80201c76: fae43423     	sd	a4, -0x58(s0)
80201c7a: fac40823     	sb	a2, -0x50(s0)
80201c7e: faa43c23     	sd	a0, -0x48(s0)
80201c82: fca43423     	sd	a0, -0x38(s0)
80201c86: fca43c23     	sd	a0, -0x28(s0)
80201c8a: feb43023     	sd	a1, -0x20(s0)
80201c8e: fec40423     	sb	a2, -0x18(s0)

0000000080201c92 <.Lpcrel_hi903>:
80201c92: 00002517     	auipc	a0, 0x2
80201c96: a1e50513     	addi	a0, a0, -0x5e2
80201c9a: eea43423     	sd	a0, -0x118(s0)
80201c9e: eec43823     	sd	a2, -0x110(s0)
80201ca2: f4840513     	addi	a0, s0, -0xb8
80201ca6: f0a43423     	sd	a0, -0xf8(s0)
80201caa: f0c43823     	sd	a2, -0xf0(s0)
80201cae: f1840513     	addi	a0, s0, -0xe8
80201cb2: eea43c23     	sd	a0, -0x108(s0)
80201cb6: f0c43023     	sd	a2, -0x100(s0)
80201cba: ee840513     	addi	a0, s0, -0x118
80201cbe: 85b6         	mv	a1, a3
80201cc0: fffff097     	auipc	ra, 0xfffff
80201cc4: 60c080e7     	jalr	0x60c(ra) <sbss+0xfffed2cc>

0000000080201cc8 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h6bb92d78609f04c7E>:
80201cc8: 7139         	addi	sp, sp, -0x40
80201cca: fc06         	sd	ra, 0x38(sp)
80201ccc: f822         	sd	s0, 0x30(sp)
80201cce: 0080         	addi	s0, sp, 0x40
80201cd0: 85aa         	mv	a1, a0

0000000080201cd2 <.Lpcrel_hi915>:
80201cd2: 00002517     	auipc	a0, 0x2
80201cd6: a2e50513     	addi	a0, a0, -0x5d2
80201cda: fca43023     	sd	a0, -0x40(s0)
80201cde: 4505         	li	a0, 0x1
80201ce0: fca43423     	sd	a0, -0x38(s0)
80201ce4: fe043023     	sd	zero, -0x20(s0)
80201ce8: 4521         	li	a0, 0x8
80201cea: fca43823     	sd	a0, -0x30(s0)
80201cee: fc043c23     	sd	zero, -0x28(s0)
80201cf2: fc040513     	addi	a0, s0, -0x40
80201cf6: fffff097     	auipc	ra, 0xfffff
80201cfa: 5d6080e7     	jalr	0x5d6(ra) <sbss+0xfffed2cc>

0000000080201cfe <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E>:
80201cfe: 7175         	addi	sp, sp, -0x90
80201d00: e506         	sd	ra, 0x88(sp)
80201d02: e122         	sd	s0, 0x80(sp)
80201d04: 0900         	addi	s0, sp, 0x90
80201d06: 4110         	lw	a2, 0x0(a0)
80201d08: 852e         	mv	a0, a1
80201d0a: 4781         	li	a5, 0x0
80201d0c: fef40593     	addi	a1, s0, -0x11
80201d10: 46a9         	li	a3, 0xa
80201d12: a811         	j	0x80201d26 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x28>
80201d14: 03770713     	addi	a4, a4, 0x37
80201d18: 0046561b     	srliw	a2, a2, 0x4
80201d1c: 00e58023     	sb	a4, 0x0(a1)
80201d20: 0785         	addi	a5, a5, 0x1
80201d22: 15fd         	addi	a1, a1, -0x1
80201d24: ca01         	beqz	a2, 0x80201d34 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x36>
80201d26: 00f67713     	andi	a4, a2, 0xf
80201d2a: fed775e3     	bgeu	a4, a3, 0x80201d14 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x16>
80201d2e: 03070713     	addi	a4, a4, 0x30
80201d32: b7dd         	j	0x80201d18 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x1a>
80201d34: f7040593     	addi	a1, s0, -0x90
80201d38: 8d9d         	sub	a1, a1, a5
80201d3a: 08058713     	addi	a4, a1, 0x80

0000000080201d3e <.Lpcrel_hi986>:
80201d3e: 00002597     	auipc	a1, 0x2
80201d42: 86a58613     	addi	a2, a1, -0x796
80201d46: 4585         	li	a1, 0x1
80201d48: 4689         	li	a3, 0x2
80201d4a: 00000097     	auipc	ra, 0x0
80201d4e: 88c080e7     	jalr	-0x774(ra) <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E>
80201d52: 60aa         	ld	ra, 0x88(sp)
80201d54: 640a         	ld	s0, 0x80(sp)
80201d56: 6149         	addi	sp, sp, 0x90
80201d58: 8082         	ret

0000000080201d5a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h7de6f4822c43ab60E>:
80201d5a: 1141         	addi	sp, sp, -0x10
80201d5c: e406         	sd	ra, 0x8(sp)
80201d5e: e022         	sd	s0, 0x0(sp)
80201d60: 0800         	addi	s0, sp, 0x10
80201d62: 4108         	lw	a0, 0x0(a0)
80201d64: 862e         	mv	a2, a1
80201d66: 4585         	li	a1, 0x1
80201d68: 60a2         	ld	ra, 0x8(sp)
80201d6a: 6402         	ld	s0, 0x0(sp)
80201d6c: 0141         	addi	sp, sp, 0x10
80201d6e: 00000317     	auipc	t1, 0x0
80201d72: 00830067     	jr	0x8(t1) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17ha87a78a900817107E>

0000000080201d76 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17ha87a78a900817107E>:
80201d76: 7179         	addi	sp, sp, -0x30
80201d78: f406         	sd	ra, 0x28(sp)
80201d7a: f022         	sd	s0, 0x20(sp)
80201d7c: ec26         	sd	s1, 0x18(sp)
80201d7e: e84a         	sd	s2, 0x10(sp)
80201d80: 1800         	addi	s0, sp, 0x30
80201d82: 8832         	mv	a6, a2
80201d84: 0045569b     	srliw	a3, a0, 0x4
80201d88: 4729         	li	a4, 0xa
80201d8a: 27100793     	li	a5, 0x271

0000000080201d8e <.Lpcrel_hi1011>:
80201d8e: 00002617     	auipc	a2, 0x2
80201d92: 81c60e93     	addi	t4, a2, -0x7e4
80201d96: 02f6f363     	bgeu	a3, a5, 0x80201dbc <.Lpcrel_hi1011+0x2e>
80201d9a: 06300693     	li	a3, 0x63
80201d9e: 0aa6eb63     	bltu	a3, a0, 0x80201e54 <.Lpcrel_hi1011+0xc6>
80201da2: 4629         	li	a2, 0xa
80201da4: 0ec57963     	bgeu	a0, a2, 0x80201e96 <.Lpcrel_hi1011+0x108>
80201da8: fff70693     	addi	a3, a4, -0x1
80201dac: fd640613     	addi	a2, s0, -0x2a
80201db0: 9636         	add	a2, a2, a3
80201db2: 03056513     	ori	a0, a0, 0x30
80201db6: 00a60023     	sb	a0, 0x0(a2)
80201dba: a8ed         	j	0x80201eb4 <.Lpcrel_hi1011+0x126>
80201dbc: 4701         	li	a4, 0x0
80201dbe: fdc40893     	addi	a7, s0, -0x24
80201dc2: fde40293     	addi	t0, s0, -0x22
80201dc6: d1b716b7     	lui	a3, 0xd1b71
80201dca: 75968313     	addi	t1, a3, 0x759
80201dce: 1302         	slli	t1, t1, 0x20
80201dd0: 6689         	lui	a3, 0x2
80201dd2: 71068e13     	addi	t3, a3, 0x710
80201dd6: 6685         	lui	a3, 0x1
80201dd8: 47b68f1b     	addiw	t5, a3, 0x47b
80201ddc: 06400393     	li	t2, 0x64
80201de0: 05f5e6b7     	lui	a3, 0x5f5e
80201de4: 0ff68f9b     	addiw	t6, a3, 0xff
80201de8: 892a         	mv	s2, a0
80201dea: 1502         	slli	a0, a0, 0x20
80201dec: 02653533     	mulhu	a0, a0, t1
80201df0: 9135         	srli	a0, a0, 0x2d
80201df2: 03c507b3     	mul	a5, a0, t3
80201df6: 40f9063b     	subw	a2, s2, a5
80201dfa: 03061793     	slli	a5, a2, 0x30
80201dfe: 93c9         	srli	a5, a5, 0x32
80201e00: 03e787b3     	mul	a5, a5, t5
80201e04: 0117d493     	srli	s1, a5, 0x11
80201e08: 83c1         	srli	a5, a5, 0x10
80201e0a: 7fe7f793     	andi	a5, a5, 0x7fe
80201e0e: 027484b3     	mul	s1, s1, t2
80201e12: 9e05         	subw	a2, a2, s1
80201e14: 1646         	slli	a2, a2, 0x31
80201e16: 97f6         	add	a5, a5, t4
80201e18: 0017c483     	lbu	s1, 0x1(a5)
80201e1c: 9241         	srli	a2, a2, 0x30
80201e1e: 00e886b3     	add	a3, a7, a4
80201e22: 0007c783     	lbu	a5, 0x0(a5)
80201e26: 009680a3     	sb	s1, 0x1(a3)
80201e2a: 9676         	add	a2, a2, t4
80201e2c: 00164483     	lbu	s1, 0x1(a2)
80201e30: 00064603     	lbu	a2, 0x0(a2)
80201e34: 00f68023     	sb	a5, 0x0(a3)
80201e38: 00e286b3     	add	a3, t0, a4
80201e3c: 009680a3     	sb	s1, 0x1(a3)
80201e40: 00c68023     	sb	a2, 0x0(a3)
80201e44: 1771         	addi	a4, a4, -0x4
80201e46: fb2fe1e3     	bltu	t6, s2, 0x80201de8 <.Lpcrel_hi1011+0x5a>
80201e4a: 0729         	addi	a4, a4, 0xa
80201e4c: 06300693     	li	a3, 0x63
80201e50: f4a6f9e3     	bgeu	a3, a0, 0x80201da2 <.Lpcrel_hi1011+0x14>
80201e54: 03051613     	slli	a2, a0, 0x30
80201e58: 9249         	srli	a2, a2, 0x32
80201e5a: 6685         	lui	a3, 0x1
80201e5c: 47b6869b     	addiw	a3, a3, 0x47b
80201e60: 02d60633     	mul	a2, a2, a3
80201e64: 8245         	srli	a2, a2, 0x11
80201e66: 06400693     	li	a3, 0x64
80201e6a: 02d606b3     	mul	a3, a2, a3
80201e6e: 9d15         	subw	a0, a0, a3
80201e70: 1546         	slli	a0, a0, 0x31
80201e72: 9141         	srli	a0, a0, 0x30
80201e74: 1779         	addi	a4, a4, -0x2
80201e76: 9576         	add	a0, a0, t4
80201e78: 00154683     	lbu	a3, 0x1(a0)
80201e7c: 00054503     	lbu	a0, 0x0(a0)
80201e80: fd640793     	addi	a5, s0, -0x2a
80201e84: 97ba         	add	a5, a5, a4
80201e86: 00d780a3     	sb	a3, 0x1(a5)
80201e8a: 00a78023     	sb	a0, 0x0(a5)
80201e8e: 8532         	mv	a0, a2
80201e90: 4629         	li	a2, 0xa
80201e92: f0c56be3     	bltu	a0, a2, 0x80201da8 <.Lpcrel_hi1011+0x1a>
80201e96: 0506         	slli	a0, a0, 0x1
80201e98: ffe70693     	addi	a3, a4, -0x2
80201e9c: 9576         	add	a0, a0, t4
80201e9e: 00154603     	lbu	a2, 0x1(a0)
80201ea2: 00054503     	lbu	a0, 0x0(a0)
80201ea6: fd640713     	addi	a4, s0, -0x2a
80201eaa: 9736         	add	a4, a4, a3
80201eac: 00c700a3     	sb	a2, 0x1(a4)
80201eb0: 00a70023     	sb	a0, 0x0(a4)
80201eb4: fd640713     	addi	a4, s0, -0x2a
80201eb8: 9736         	add	a4, a4, a3
80201eba: 47a9         	li	a5, 0xa
80201ebc: 8f95         	sub	a5, a5, a3
80201ebe: 4605         	li	a2, 0x1
80201ec0: 8542         	mv	a0, a6
80201ec2: 4681         	li	a3, 0x0
80201ec4: fffff097     	auipc	ra, 0xfffff
80201ec8: 712080e7     	jalr	0x712(ra) <sbss+0xfffed5d6>
80201ecc: 70a2         	ld	ra, 0x28(sp)
80201ece: 7402         	ld	s0, 0x20(sp)
80201ed0: 64e2         	ld	s1, 0x18(sp)
80201ed2: 6942         	ld	s2, 0x10(sp)
80201ed4: 6145         	addi	sp, sp, 0x30
80201ed6: 8082         	ret

0000000080201ed8 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h897181c23e5bde9dE>:
80201ed8: 1141         	addi	sp, sp, -0x10
80201eda: e406         	sd	ra, 0x8(sp)
80201edc: e022         	sd	s0, 0x0(sp)
80201ede: 0800         	addi	s0, sp, 0x10
80201ee0: 6108         	ld	a0, 0x0(a0)
80201ee2: 862e         	mv	a2, a1
80201ee4: 4585         	li	a1, 0x1
80201ee6: 60a2         	ld	ra, 0x8(sp)
80201ee8: 6402         	ld	s0, 0x0(sp)
80201eea: 0141         	addi	sp, sp, 0x10
80201eec: 00000317     	auipc	t1, 0x0
80201ef0: 00830067     	jr	0x8(t1) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h3ada4c97fe073d86E>

0000000080201ef4 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h3ada4c97fe073d86E>:
80201ef4: 7139         	addi	sp, sp, -0x40
80201ef6: fc06         	sd	ra, 0x38(sp)
80201ef8: f822         	sd	s0, 0x30(sp)
80201efa: f426         	sd	s1, 0x28(sp)
80201efc: f04a         	sd	s2, 0x20(sp)
80201efe: 0080         	addi	s0, sp, 0x40
80201f00: 8832         	mv	a6, a2
80201f02: 00455693     	srli	a3, a0, 0x4
80201f06: 4751         	li	a4, 0x14
80201f08: 27100793     	li	a5, 0x271

0000000080201f0c <.Lpcrel_hi1012>:
80201f0c: 00001617     	auipc	a2, 0x1
80201f10: 69e60e93     	addi	t4, a2, 0x69e
80201f14: 02f6f363     	bgeu	a3, a5, 0x80201f3a <.Lpcrel_hi1012+0x2e>
80201f18: 06300693     	li	a3, 0x63
80201f1c: 0aa6e963     	bltu	a3, a0, 0x80201fce <.Lpcrel_hi1013+0x8a>
80201f20: 4629         	li	a2, 0xa
80201f22: 0ec57763     	bgeu	a0, a2, 0x80202010 <.Lpcrel_hi1013+0xcc>
80201f26: fff70693     	addi	a3, a4, -0x1
80201f2a: fcc40613     	addi	a2, s0, -0x34
80201f2e: 9636         	add	a2, a2, a3
80201f30: 03056513     	ori	a0, a0, 0x30
80201f34: 00a60023     	sb	a0, 0x0(a2)
80201f38: a8dd         	j	0x8020202e <.Lpcrel_hi1013+0xea>
80201f3a: 4701         	li	a4, 0x0
80201f3c: fdc40893     	addi	a7, s0, -0x24
80201f40: fde40293     	addi	t0, s0, -0x22

0000000080201f44 <.Lpcrel_hi1013>:
80201f44: 00001697     	auipc	a3, 0x1
80201f48: 4b46b303     	ld	t1, 0x4b4(a3)
80201f4c: 6689         	lui	a3, 0x2
80201f4e: 71068e13     	addi	t3, a3, 0x710
80201f52: 6685         	lui	a3, 0x1
80201f54: 47b68f1b     	addiw	t5, a3, 0x47b
80201f58: 06400393     	li	t2, 0x64
80201f5c: 05f5e6b7     	lui	a3, 0x5f5e
80201f60: 0ff68f9b     	addiw	t6, a3, 0xff
80201f64: 892a         	mv	s2, a0
80201f66: 02653533     	mulhu	a0, a0, t1
80201f6a: 812d         	srli	a0, a0, 0xb
80201f6c: 03c507b3     	mul	a5, a0, t3
80201f70: 40f9063b     	subw	a2, s2, a5
80201f74: 03061793     	slli	a5, a2, 0x30
80201f78: 93c9         	srli	a5, a5, 0x32
80201f7a: 03e787b3     	mul	a5, a5, t5
80201f7e: 0117d493     	srli	s1, a5, 0x11
80201f82: 83c1         	srli	a5, a5, 0x10
80201f84: 7fe7f793     	andi	a5, a5, 0x7fe
80201f88: 027484b3     	mul	s1, s1, t2
80201f8c: 9e05         	subw	a2, a2, s1
80201f8e: 1646         	slli	a2, a2, 0x31
80201f90: 97f6         	add	a5, a5, t4
80201f92: 0017c483     	lbu	s1, 0x1(a5)
80201f96: 9241         	srli	a2, a2, 0x30
80201f98: 00e886b3     	add	a3, a7, a4
80201f9c: 0007c783     	lbu	a5, 0x0(a5)
80201fa0: 009680a3     	sb	s1, 0x1(a3)
80201fa4: 9676         	add	a2, a2, t4
80201fa6: 00164483     	lbu	s1, 0x1(a2)
80201faa: 00064603     	lbu	a2, 0x0(a2)
80201fae: 00f68023     	sb	a5, 0x0(a3)
80201fb2: 00e286b3     	add	a3, t0, a4
80201fb6: 009680a3     	sb	s1, 0x1(a3)
80201fba: 00c68023     	sb	a2, 0x0(a3)
80201fbe: 1771         	addi	a4, a4, -0x4
80201fc0: fb2fe2e3     	bltu	t6, s2, 0x80201f64 <.Lpcrel_hi1013+0x20>
80201fc4: 0751         	addi	a4, a4, 0x14
80201fc6: 06300693     	li	a3, 0x63
80201fca: f4a6fbe3     	bgeu	a3, a0, 0x80201f20 <.Lpcrel_hi1012+0x14>
80201fce: 03051613     	slli	a2, a0, 0x30
80201fd2: 9249         	srli	a2, a2, 0x32
80201fd4: 6685         	lui	a3, 0x1
80201fd6: 47b6869b     	addiw	a3, a3, 0x47b
80201fda: 02d60633     	mul	a2, a2, a3
80201fde: 8245         	srli	a2, a2, 0x11
80201fe0: 06400693     	li	a3, 0x64
80201fe4: 02d606b3     	mul	a3, a2, a3
80201fe8: 9d15         	subw	a0, a0, a3
80201fea: 1546         	slli	a0, a0, 0x31
80201fec: 9141         	srli	a0, a0, 0x30
80201fee: 1779         	addi	a4, a4, -0x2
80201ff0: 9576         	add	a0, a0, t4
80201ff2: 00154683     	lbu	a3, 0x1(a0)
80201ff6: 00054503     	lbu	a0, 0x0(a0)
80201ffa: fcc40793     	addi	a5, s0, -0x34
80201ffe: 97ba         	add	a5, a5, a4
80202000: 00d780a3     	sb	a3, 0x1(a5)
80202004: 00a78023     	sb	a0, 0x0(a5)
80202008: 8532         	mv	a0, a2
8020200a: 4629         	li	a2, 0xa
8020200c: f0c56de3     	bltu	a0, a2, 0x80201f26 <.Lpcrel_hi1012+0x1a>
80202010: 0506         	slli	a0, a0, 0x1
80202012: ffe70693     	addi	a3, a4, -0x2
80202016: 9576         	add	a0, a0, t4
80202018: 00154603     	lbu	a2, 0x1(a0)
8020201c: 00054503     	lbu	a0, 0x0(a0)
80202020: fcc40713     	addi	a4, s0, -0x34
80202024: 9736         	add	a4, a4, a3
80202026: 00c700a3     	sb	a2, 0x1(a4)
8020202a: 00a70023     	sb	a0, 0x0(a4)
8020202e: fcc40713     	addi	a4, s0, -0x34
80202032: 9736         	add	a4, a4, a3
80202034: 47d1         	li	a5, 0x14
80202036: 8f95         	sub	a5, a5, a3
80202038: 4605         	li	a2, 0x1
8020203a: 8542         	mv	a0, a6
8020203c: 4681         	li	a3, 0x0
8020203e: fffff097     	auipc	ra, 0xfffff
80202042: 598080e7     	jalr	0x598(ra) <sbss+0xfffed5d6>
80202046: 70e2         	ld	ra, 0x38(sp)
80202048: 7442         	ld	s0, 0x30(sp)
8020204a: 74a2         	ld	s1, 0x28(sp)
8020204c: 7902         	ld	s2, 0x20(sp)
8020204e: 6121         	addi	sp, sp, 0x40
80202050: 8082         	ret

0000000080202052 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe6338d772e74072E>:
80202052: 1141         	addi	sp, sp, -0x10
80202054: e406         	sd	ra, 0x8(sp)
80202056: e022         	sd	s0, 0x0(sp)
80202058: 0800         	addi	s0, sp, 0x10
8020205a: 6510         	ld	a2, 0x8(a0)
8020205c: 6108         	ld	a0, 0x0(a0)
8020205e: 6e1c         	ld	a5, 0x18(a2)
80202060: 60a2         	ld	ra, 0x8(sp)
80202062: 6402         	ld	s0, 0x0(sp)
80202064: 0141         	addi	sp, sp, 0x10
80202066: 8782         	jr	a5

0000000080202068 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he1afd8614e53d181E>:
80202068: 1141         	addi	sp, sp, -0x10
8020206a: e406         	sd	ra, 0x8(sp)
8020206c: e022         	sd	s0, 0x0(sp)
8020206e: 0800         	addi	s0, sp, 0x10
80202070: 6114         	ld	a3, 0x0(a0)
80202072: 6510         	ld	a2, 0x8(a0)
80202074: 852e         	mv	a0, a1
80202076: 85b6         	mv	a1, a3
80202078: 60a2         	ld	ra, 0x8(sp)
8020207a: 6402         	ld	s0, 0x0(sp)
8020207c: 0141         	addi	sp, sp, 0x10
8020207e: fffff317     	auipc	t1, 0xfffff
80202082: 7dc30067     	jr	0x7dc(t1) <sbss+0xfffed85a>
