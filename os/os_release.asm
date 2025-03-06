
target/riscv64gc-unknown-none-elf/release/os:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 00013117     	auipc	sp, 0x13
80200004: 00010113     	mv	sp, sp
80200008: 00001097     	auipc	ra, 0x1
8020000c: f74080e7     	jalr	-0x8c(ra) <main>

0000000080200010 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h018b3186d69af112E>:
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
80200010: 1101         	addi	sp, sp, -0x20
80200012: ec06         	sd	ra, 0x18(sp)
80200014: e822         	sd	s0, 0x10(sp)
80200016: 1000         	addi	s0, sp, 0x20
80200018: 862e         	mv	a2, a1
8020001a: 85aa         	mv	a1, a0
8020001c: feb43023     	sd	a1, -0x20(s0)
80200020: fec43423     	sd	a2, -0x18(s0)
80200024: 6188         	ld	a0, 0x0(a1)
80200026: 658c         	ld	a1, 0x8(a1)
80200028: 00001097     	auipc	ra, 0x1
8020002c: 792080e7     	jalr	0x792(ra) <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1c6bf3111fb4e387E>
80200030: 60e2         	ld	ra, 0x18(sp)
80200032: 6442         	ld	s0, 0x10(sp)
80200034: 6105         	addi	sp, sp, 0x20
80200036: 8082         	ret

0000000080200038 <_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h57ae0e7ea963d223E>:
;         unsafe fn forward_unchecked(start: Self, n: usize) -> Self {
80200038: 7179         	addi	sp, sp, -0x30
8020003a: f406         	sd	ra, 0x28(sp)
8020003c: f022         	sd	s0, 0x20(sp)
8020003e: 1800         	addi	s0, sp, 0x30
80200040: fcb43823     	sd	a1, -0x30(s0)
80200044: fca43c23     	sd	a0, -0x28(s0)
80200048: fea43023     	sd	a0, -0x20(s0)
8020004c: feb43423     	sd	a1, -0x18(s0)
;             if ::core::ub_checks::$kind() {
80200050: a009         	j	0x80200052 <_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h57ae0e7ea963d223E+0x1a>
80200052: fd843503     	ld	a0, -0x28(s0)
80200056: fd043583     	ld	a1, -0x30(s0)
;                 intrinsics::unchecked_add(self, rhs)
8020005a: 952e         	add	a0, a0, a1
8020005c: 70a2         	ld	ra, 0x28(sp)
8020005e: 7402         	ld	s0, 0x20(sp)
;         }
80200060: 6145         	addi	sp, sp, 0x30
80200062: 8082         	ret

0000000080200064 <_ZN4core3fmt2rt8Argument11new_display17h3c1b74128cf5cecfE>:
;     pub fn new_display<T: Display>(x: &T) -> Argument<'_> {
80200064: 1101         	addi	sp, sp, -0x20
80200066: ec06         	sd	ra, 0x18(sp)
80200068: e822         	sd	s0, 0x10(sp)
8020006a: 1000         	addi	s0, sp, 0x20
8020006c: feb43423     	sd	a1, -0x18(s0)

0000000080200070 <.Lpcrel_hi1>:
;         Self::new(x, Display::fmt)
80200070: 00002617     	auipc	a2, 0x2
80200074: a7460613     	addi	a2, a2, -0x58c
80200078: 00000097     	auipc	ra, 0x0
8020007c: 0c4080e7     	jalr	0xc4(ra) <_ZN4core3fmt2rt8Argument3new17h948f1339e357bafcE>
80200080: 60e2         	ld	ra, 0x18(sp)
80200082: 6442         	ld	s0, 0x10(sp)
;     }
80200084: 6105         	addi	sp, sp, 0x20
80200086: 8082         	ret

0000000080200088 <_ZN4core3fmt2rt8Argument11new_display17hc2c8a02785e2d0baE>:
;     pub fn new_display<T: Display>(x: &T) -> Argument<'_> {
80200088: 1101         	addi	sp, sp, -0x20
8020008a: ec06         	sd	ra, 0x18(sp)
8020008c: e822         	sd	s0, 0x10(sp)
8020008e: 1000         	addi	s0, sp, 0x20
80200090: feb43423     	sd	a1, -0x18(s0)

0000000080200094 <.Lpcrel_hi2>:
;         Self::new(x, Display::fmt)
80200094: 00001617     	auipc	a2, 0x1
80200098: a7e60613     	addi	a2, a2, -0x582
8020009c: 00000097     	auipc	ra, 0x0
802000a0: 06a080e7     	jalr	0x6a(ra) <_ZN4core3fmt2rt8Argument3new17h75e6a410080d9110E>
802000a4: 60e2         	ld	ra, 0x18(sp)
802000a6: 6442         	ld	s0, 0x10(sp)
;     }
802000a8: 6105         	addi	sp, sp, 0x20
802000aa: 8082         	ret

00000000802000ac <_ZN4core3fmt2rt8Argument11new_display17hf5c57aedb9b75c45E>:
;     pub fn new_display<T: Display>(x: &T) -> Argument<'_> {
802000ac: 1101         	addi	sp, sp, -0x20
802000ae: ec06         	sd	ra, 0x18(sp)
802000b0: e822         	sd	s0, 0x10(sp)
802000b2: 1000         	addi	s0, sp, 0x20
802000b4: feb43423     	sd	a1, -0x18(s0)

00000000802000b8 <.Lpcrel_hi3>:
;         Self::new(x, Display::fmt)
802000b8: 00000617     	auipc	a2, 0x0
802000bc: f5860613     	addi	a2, a2, -0xa8
802000c0: 00000097     	auipc	ra, 0x0
802000c4: 010080e7     	jalr	0x10(ra) <_ZN4core3fmt2rt8Argument3new17h40d6f8b04ab8c399E>
802000c8: 60e2         	ld	ra, 0x18(sp)
802000ca: 6442         	ld	s0, 0x10(sp)
;     }
802000cc: 6105         	addi	sp, sp, 0x20
802000ce: 8082         	ret

00000000802000d0 <_ZN4core3fmt2rt8Argument3new17h40d6f8b04ab8c399E>:
;     fn new<'a, T>(x: &'a T, f: fn(&T, &mut Formatter<'_>) -> Result) -> Argument<'a> {
802000d0: 7139         	addi	sp, sp, -0x40
802000d2: fc06         	sd	ra, 0x38(sp)
802000d4: f822         	sd	s0, 0x30(sp)
802000d6: 0080         	addi	s0, sp, 0x40
802000d8: fcb43423     	sd	a1, -0x38(s0)
802000dc: 85aa         	mv	a1, a0
802000de: fc843503     	ld	a0, -0x38(s0)
802000e2: fea43023     	sd	a0, -0x20(s0)
802000e6: fec43423     	sd	a2, -0x18(s0)
;             ty: ArgumentType::Placeholder {
802000ea: fca43823     	sd	a0, -0x30(s0)
802000ee: fcc43c23     	sd	a2, -0x28(s0)
;         Argument {
802000f2: fd843503     	ld	a0, -0x28(s0)
802000f6: e588         	sd	a0, 0x8(a1)
802000f8: fd043503     	ld	a0, -0x30(s0)
802000fc: e188         	sd	a0, 0x0(a1)
802000fe: 70e2         	ld	ra, 0x38(sp)
80200100: 7442         	ld	s0, 0x30(sp)
;     }
80200102: 6121         	addi	sp, sp, 0x40
80200104: 8082         	ret

0000000080200106 <_ZN4core3fmt2rt8Argument3new17h75e6a410080d9110E>:
;     fn new<'a, T>(x: &'a T, f: fn(&T, &mut Formatter<'_>) -> Result) -> Argument<'a> {
80200106: 7139         	addi	sp, sp, -0x40
80200108: fc06         	sd	ra, 0x38(sp)
8020010a: f822         	sd	s0, 0x30(sp)
8020010c: 0080         	addi	s0, sp, 0x40
8020010e: fcb43423     	sd	a1, -0x38(s0)
80200112: 85aa         	mv	a1, a0
80200114: fc843503     	ld	a0, -0x38(s0)
80200118: fea43023     	sd	a0, -0x20(s0)
8020011c: fec43423     	sd	a2, -0x18(s0)
;             ty: ArgumentType::Placeholder {
80200120: fca43823     	sd	a0, -0x30(s0)
80200124: fcc43c23     	sd	a2, -0x28(s0)
;         Argument {
80200128: fd843503     	ld	a0, -0x28(s0)
8020012c: e588         	sd	a0, 0x8(a1)
8020012e: fd043503     	ld	a0, -0x30(s0)
80200132: e188         	sd	a0, 0x0(a1)
80200134: 70e2         	ld	ra, 0x38(sp)
80200136: 7442         	ld	s0, 0x30(sp)
;     }
80200138: 6121         	addi	sp, sp, 0x40
8020013a: 8082         	ret

000000008020013c <_ZN4core3fmt2rt8Argument3new17h948f1339e357bafcE>:
;     fn new<'a, T>(x: &'a T, f: fn(&T, &mut Formatter<'_>) -> Result) -> Argument<'a> {
8020013c: 7139         	addi	sp, sp, -0x40
8020013e: fc06         	sd	ra, 0x38(sp)
80200140: f822         	sd	s0, 0x30(sp)
80200142: 0080         	addi	s0, sp, 0x40
80200144: fcb43423     	sd	a1, -0x38(s0)
80200148: 85aa         	mv	a1, a0
8020014a: fc843503     	ld	a0, -0x38(s0)
8020014e: fea43023     	sd	a0, -0x20(s0)
80200152: fec43423     	sd	a2, -0x18(s0)
;             ty: ArgumentType::Placeholder {
80200156: fca43823     	sd	a0, -0x30(s0)
8020015a: fcc43c23     	sd	a2, -0x28(s0)
;         Argument {
8020015e: fd843503     	ld	a0, -0x28(s0)
80200162: e588         	sd	a0, 0x8(a1)
80200164: fd043503     	ld	a0, -0x30(s0)
80200168: e188         	sd	a0, 0x0(a1)
8020016a: 70e2         	ld	ra, 0x38(sp)
8020016c: 7442         	ld	s0, 0x30(sp)
;     }
8020016e: 6121         	addi	sp, sp, 0x40
80200170: 8082         	ret

0000000080200172 <_ZN4core3fmt5Write10write_char17h9cc4efda046189a1E>:
;     fn write_char(&mut self, c: char) -> Result {
80200172: 711d         	addi	sp, sp, -0x60
80200174: ec86         	sd	ra, 0x58(sp)
80200176: e8a2         	sd	s0, 0x50(sp)
80200178: 1080         	addi	s0, sp, 0x60
8020017a: fab43023     	sd	a1, -0x60(s0)
8020017e: 85aa         	mv	a1, a0
80200180: fa043503     	ld	a0, -0x60(s0)
80200184: fab43423     	sd	a1, -0x58(s0)
80200188: fcb43023     	sd	a1, -0x40(s0)
8020018c: fca42623     	sw	a0, -0x34(s0)
80200190: 4581         	li	a1, 0x0
;         self.write_str(c.encode_utf8(&mut [0; 4]))
80200192: fab42e23     	sw	a1, -0x44(s0)
80200196: fbc40593     	addi	a1, s0, -0x44
8020019a: fcb43823     	sd	a1, -0x30(s0)
8020019e: 4611         	li	a2, 0x4
802001a0: fcc43c23     	sd	a2, -0x28(s0)
;         unsafe { from_utf8_unchecked_mut(encode_utf8_raw(self as u32, dst)) }
802001a4: 00000097     	auipc	ra, 0x0
802001a8: 3d4080e7     	jalr	0x3d4(ra) <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E>
802001ac: 862a         	mv	a2, a0
802001ae: fa843503     	ld	a0, -0x58(s0)
802001b2: fac43823     	sd	a2, -0x50(s0)
802001b6: 862e         	mv	a2, a1
802001b8: fb043583     	ld	a1, -0x50(s0)
802001bc: feb43023     	sd	a1, -0x20(s0)
802001c0: fec43423     	sd	a2, -0x18(s0)
;         self.write_str(c.encode_utf8(&mut [0; 4]))
802001c4: 00001097     	auipc	ra, 0x1
802001c8: b0e080e7     	jalr	-0x4f2(ra) <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E>
802001cc: 60e6         	ld	ra, 0x58(sp)
802001ce: 6446         	ld	s0, 0x50(sp)
;     }
802001d0: 6125         	addi	sp, sp, 0x60
802001d2: 8082         	ret

00000000802001d4 <_ZN4core3fmt5Write9write_fmt17h58fefac205fb42a9E>:
;     fn write_fmt(&mut self, args: Arguments<'_>) -> Result {
802001d4: 1101         	addi	sp, sp, -0x20
802001d6: ec06         	sd	ra, 0x18(sp)
802001d8: e822         	sd	s0, 0x10(sp)
802001da: 1000         	addi	s0, sp, 0x20
802001dc: fea43423     	sd	a0, -0x18(s0)
;         self.spec_write_fmt(args)
802001e0: 00001097     	auipc	ra, 0x1
802001e4: 806080e7     	jalr	-0x7fa(ra) <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hddcad9b17072e0aaE>
802001e8: 60e2         	ld	ra, 0x18(sp)
802001ea: 6442         	ld	s0, 0x10(sp)
;     }
802001ec: 6105         	addi	sp, sp, 0x20
802001ee: 8082         	ret

00000000802001f0 <_ZN4core3fmt9Arguments6new_v117h203dee55945d0fedE>:
;     pub fn new_v1<const P: usize, const A: usize>(
802001f0: 7179         	addi	sp, sp, -0x30
802001f2: f406         	sd	ra, 0x28(sp)
802001f4: f022         	sd	s0, 0x20(sp)
802001f6: 1800         	addi	s0, sp, 0x30
802001f8: fcb43c23     	sd	a1, -0x28(s0)
802001fc: 85aa         	mv	a1, a0
802001fe: fd843503     	ld	a0, -0x28(s0)
80200202: fea43023     	sd	a0, -0x20(s0)
80200206: fec43423     	sd	a2, -0x18(s0)
;         Arguments { pieces, fmt: None, args }
8020020a: e188         	sd	a0, 0x0(a1)
8020020c: 4511         	li	a0, 0x4
8020020e: e588         	sd	a0, 0x8(a1)

0000000080200210 <.Lpcrel_hi4>:
80200210: 00002517     	auipc	a0, 0x2
80200214: df050513     	addi	a0, a0, -0x210
80200218: 6114         	ld	a3, 0x0(a0)
8020021a: 6508         	ld	a0, 0x8(a0)
8020021c: f194         	sd	a3, 0x20(a1)
8020021e: f588         	sd	a0, 0x28(a1)
80200220: e990         	sd	a2, 0x10(a1)
80200222: 450d         	li	a0, 0x3
80200224: ed88         	sd	a0, 0x18(a1)
80200226: 70a2         	ld	ra, 0x28(sp)
80200228: 7402         	ld	s0, 0x20(sp)
;     }
8020022a: 6145         	addi	sp, sp, 0x30
8020022c: 8082         	ret

000000008020022e <_ZN4core3fmt9Arguments6new_v117hb41a9c4b80d4a237E>:
;     pub fn new_v1<const P: usize, const A: usize>(
8020022e: 7179         	addi	sp, sp, -0x30
80200230: f406         	sd	ra, 0x28(sp)
80200232: f022         	sd	s0, 0x20(sp)
80200234: 1800         	addi	s0, sp, 0x30
80200236: fcb43c23     	sd	a1, -0x28(s0)
8020023a: 85aa         	mv	a1, a0
8020023c: fd843503     	ld	a0, -0x28(s0)
80200240: fea43023     	sd	a0, -0x20(s0)
80200244: fec43423     	sd	a2, -0x18(s0)
;         Arguments { pieces, fmt: None, args }
80200248: e188         	sd	a0, 0x0(a1)
8020024a: 4509         	li	a0, 0x2
8020024c: e588         	sd	a0, 0x8(a1)

000000008020024e <.Lpcrel_hi5>:
8020024e: 00002517     	auipc	a0, 0x2
80200252: db250513     	addi	a0, a0, -0x24e
80200256: 6114         	ld	a3, 0x0(a0)
80200258: 6508         	ld	a0, 0x8(a0)
8020025a: f194         	sd	a3, 0x20(a1)
8020025c: f588         	sd	a0, 0x28(a1)
8020025e: e990         	sd	a2, 0x10(a1)
80200260: 4505         	li	a0, 0x1
80200262: ed88         	sd	a0, 0x18(a1)
80200264: 70a2         	ld	ra, 0x28(sp)
80200266: 7402         	ld	s0, 0x20(sp)
;     }
80200268: 6145         	addi	sp, sp, 0x30
8020026a: 8082         	ret

000000008020026c <_ZN4core3fmt9Formatter9write_fmt17had78ac26003c7beeE>:
;     pub fn write_fmt(&mut self, fmt: Arguments<'_>) -> Result {
8020026c: 7155         	addi	sp, sp, -0xd0
8020026e: e586         	sd	ra, 0xc8(sp)
80200270: e1a2         	sd	s0, 0xc0(sp)
80200272: 0980         	addi	s0, sp, 0xd0
80200274: f2b43c23     	sd	a1, -0xc8(s0)
80200278: f4a43023     	sd	a0, -0xc0(s0)
8020027c: f8a43423     	sd	a0, -0x78(s0)
;         if let Some(s) = fmt.as_statically_known_str() {
80200280: f8b43823     	sd	a1, -0x70(s0)
;         match (self.pieces, self.args) {
80200284: 6188         	ld	a0, 0x0(a1)
80200286: f4a43423     	sd	a0, -0xb8(s0)
8020028a: 6588         	ld	a0, 0x8(a1)
8020028c: f4a43823     	sd	a0, -0xb0(s0)
80200290: 6d8c         	ld	a1, 0x18(a1)
80200292: f4b43c23     	sd	a1, -0xa8(s0)
;             ([], []) => Some(""),
80200296: e511         	bnez	a0, 0x802002a2 <_ZN4core3fmt9Formatter9write_fmt17had78ac26003c7beeE+0x36>
80200298: a009         	j	0x8020029a <_ZN4core3fmt9Formatter9write_fmt17had78ac26003c7beeE+0x2e>
8020029a: f5843503     	ld	a0, -0xa8(s0)
;             ([], []) => Some(""),
8020029e: c901         	beqz	a0, 0x802002ae <_ZN4core3fmt9Formatter9write_fmt17had78ac26003c7beeE+0x42>
802002a0: a831         	j	0x802002bc <.Lpcrel_hi6>
802002a2: f5043503     	ld	a0, -0xb0(s0)
802002a6: 4585         	li	a1, 0x1
;             ([s], []) => Some(s),
802002a8: 04b50163     	beq	a0, a1, 0x802002ea <.Lpcrel_hi6+0x2e>
802002ac: a801         	j	0x802002bc <.Lpcrel_hi6>
802002ae: 4505         	li	a0, 0x1
;             ([], []) => Some(""),
802002b0: f6a43c23     	sd	a0, -0x88(s0)
802002b4: 4501         	li	a0, 0x0
802002b6: f8a43023     	sd	a0, -0x80(s0)
802002ba: a821         	j	0x802002d2 <.Lpcrel_hi6+0x16>

00000000802002bc <.Lpcrel_hi6>:
;             _ => None,
802002bc: 00002517     	auipc	a0, 0x2
802002c0: d4450513     	addi	a0, a0, -0x2bc
802002c4: 610c         	ld	a1, 0x0(a0)
802002c6: 6508         	ld	a0, 0x8(a0)
802002c8: f6b43c23     	sd	a1, -0x88(s0)
802002cc: f8a43023     	sd	a0, -0x80(s0)
802002d0: a009         	j	0x802002d2 <.Lpcrel_hi6+0x16>
802002d2: f7840513     	addi	a0, s0, -0x88
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
802002d6: faa43023     	sd	a0, -0x60(s0)
802002da: 4501         	li	a0, 0x0
802002dc: faa407a3     	sb	a0, -0x51(s0)
802002e0: faf44503     	lbu	a0, -0x51(s0)
802002e4: 8905         	andi	a0, a0, 0x1
802002e6: e115         	bnez	a0, 0x8020030a <.Lpcrel_hi6+0x4e>
802002e8: a005         	j	0x80200308 <.Lpcrel_hi6+0x4c>
802002ea: f5843503     	ld	a0, -0xa8(s0)
;             ([s], []) => Some(s),
802002ee: f579         	bnez	a0, 0x802002bc <.Lpcrel_hi6>
802002f0: a009         	j	0x802002f2 <.Lpcrel_hi6+0x36>
802002f2: f4843503     	ld	a0, -0xb8(s0)
;             ([s], []) => Some(s),
802002f6: f8a43c23     	sd	a0, -0x68(s0)
802002fa: 610c         	ld	a1, 0x0(a0)
802002fc: 6508         	ld	a0, 0x8(a0)
802002fe: f6b43c23     	sd	a1, -0x88(s0)
80200302: f8a43023     	sd	a0, -0x80(s0)
80200306: b7f1         	j	0x802002d2 <.Lpcrel_hi6+0x16>
;         if let Some(s) = fmt.as_statically_known_str() {
80200308: a829         	j	0x80200322 <.Lpcrel_hi6+0x66>
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
8020030a: f7843583     	ld	a1, -0x88(s0)
8020030e: f8043503     	ld	a0, -0x80(s0)
80200312: f6b43423     	sd	a1, -0x98(s0)
80200316: f6a43823     	sd	a0, -0x90(s0)
;         if let Some(s) = fmt.as_statically_known_str() {
8020031a: f6843503     	ld	a0, -0x98(s0)
8020031e: e139         	bnez	a0, 0x80200364 <.Lpcrel_hi6+0xa8>
80200320: a009         	j	0x80200322 <.Lpcrel_hi6+0x66>
80200322: f3843603     	ld	a2, -0xc8(s0)
80200326: f4043583     	ld	a1, -0xc0(s0)
;             write(self.buf, fmt)
8020032a: 7988         	ld	a0, 0x30(a1)
8020032c: 7d8c         	ld	a1, 0x38(a1)
8020032e: 7614         	ld	a3, 0x28(a2)
80200330: fed43423     	sd	a3, -0x18(s0)
80200334: 7214         	ld	a3, 0x20(a2)
80200336: fed43023     	sd	a3, -0x20(s0)
8020033a: 6e14         	ld	a3, 0x18(a2)
8020033c: fcd43c23     	sd	a3, -0x28(s0)
80200340: 6a14         	ld	a3, 0x10(a2)
80200342: fcd43823     	sd	a3, -0x30(s0)
80200346: 6614         	ld	a3, 0x8(a2)
80200348: fcd43423     	sd	a3, -0x38(s0)
8020034c: 6210         	ld	a2, 0x0(a2)
8020034e: fcc43023     	sd	a2, -0x40(s0)
80200352: fc040613     	addi	a2, s0, -0x40
80200356: 00001097     	auipc	ra, 0x1
8020035a: e5a080e7     	jalr	-0x1a6(ra) <_ZN4core3fmt5write17h0545e85c538fe473E>
8020035e: f6a403a3     	sb	a0, -0x99(s0)
80200362: a015         	j	0x80200386 <.Lpcrel_hi6+0xca>
80200364: f4043683     	ld	a3, -0xc0(s0)
;         if let Some(s) = fmt.as_statically_known_str() {
80200368: f6843583     	ld	a1, -0x98(s0)
8020036c: f7043603     	ld	a2, -0x90(s0)
80200370: fab43823     	sd	a1, -0x50(s0)
80200374: fac43c23     	sd	a2, -0x48(s0)
;             self.buf.write_str(s)
80200378: 7a88         	ld	a0, 0x30(a3)
8020037a: 7e94         	ld	a3, 0x38(a3)
8020037c: 6e94         	ld	a3, 0x18(a3)
8020037e: 9682         	jalr	a3
80200380: f6a403a3     	sb	a0, -0x99(s0)
80200384: a009         	j	0x80200386 <.Lpcrel_hi6+0xca>
;     }
80200386: f6744503     	lbu	a0, -0x99(s0)
8020038a: 8905         	andi	a0, a0, 0x1
8020038c: 60ae         	ld	ra, 0xc8(sp)
8020038e: 640e         	ld	s0, 0xc0(sp)
80200390: 6169         	addi	sp, sp, 0xd0
80200392: 8082         	ret

0000000080200394 <_ZN4core3str11validations15next_code_point17h68a7c57b085effdbE>:
; pub unsafe fn next_code_point<'a, I: Iterator<Item = &'a u8>>(bytes: &mut I) -> Option<u32> {
80200394: 7155         	addi	sp, sp, -0xd0
80200396: e586         	sd	ra, 0xc8(sp)
80200398: e1a2         	sd	s0, 0xc0(sp)
8020039a: 0980         	addi	s0, sp, 0xd0
8020039c: f4a43823     	sd	a0, -0xb0(s0)
802003a0: f8a43823     	sd	a0, -0x70(s0)
802003a4: 4589         	li	a1, 0x2
; const fn utf8_first_byte(byte: u8, width: u32) -> u32 {
802003a6: f8b42e23     	sw	a1, -0x64(s0)
;     let x = *bytes.next()?;
802003aa: 00001097     	auipc	ra, 0x1
802003ae: 884080e7     	jalr	-0x77c(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE>
802003b2: f6a43423     	sd	a0, -0x98(s0)
;         match self {
802003b6: f6843503     	ld	a0, -0x98(s0)
802003ba: ed09         	bnez	a0, 0x802003d4 <.Lpcrel_hi7+0x16>
802003bc: a009         	j	0x802003be <.Lpcrel_hi7>

00000000802003be <.Lpcrel_hi7>:
;             None => None,
802003be: 00002517     	auipc	a0, 0x2
802003c2: c5a50513     	addi	a0, a0, -0x3a6
802003c6: 410c         	lw	a1, 0x0(a0)
802003c8: 4148         	lw	a0, 0x4(a0)
802003ca: f4b42c23     	sw	a1, -0xa8(s0)
802003ce: f4a42e23     	sw	a0, -0xa4(s0)
802003d2: a035         	j	0x802003fe <.Lpcrel_hi7+0x40>
;             Some(v) => ControlFlow::Continue(v),
802003d4: f6843503     	ld	a0, -0x98(s0)
802003d8: faa43023     	sd	a0, -0x60(s0)
802003dc: f6a43023     	sd	a0, -0xa0(s0)
;     let x = *bytes.next()?;
802003e0: f6043503     	ld	a0, -0xa0(s0)
802003e4: faa43423     	sd	a0, -0x58(s0)
802003e8: 00050503     	lb	a0, 0x0(a0)
802003ec: 0ff57593     	andi	a1, a0, 0xff
802003f0: f4b43423     	sd	a1, -0xb8(s0)
802003f4: faa409a3     	sb	a0, -0x4d(s0)
;     if x < 128 {
802003f8: 02055e63     	bgez	a0, 0x80200434 <.Lpcrel_hi7+0x76>
802003fc: a809         	j	0x8020040e <.Lpcrel_hi7+0x50>
; }
802003fe: f5842503     	lw	a0, -0xa8(s0)
80200402: f5c42583     	lw	a1, -0xa4(s0)
80200406: 60ae         	ld	ra, 0xc8(sp)
80200408: 640e         	ld	s0, 0xc0(sp)
8020040a: 6169         	addi	sp, sp, 0xd0
8020040c: 8082         	ret
8020040e: f5043503     	ld	a0, -0xb0(s0)
80200412: f4843583     	ld	a1, -0xb8(s0)
;     (byte & (0x7F >> width)) as u32
80200416: 89fd         	andi	a1, a1, 0x1f
80200418: f4b43023     	sd	a1, -0xc0(s0)
8020041c: fab42a23     	sw	a1, -0x4c(s0)
;     let y = unsafe { *bytes.next().unwrap_unchecked() };
80200420: 00001097     	auipc	ra, 0x1
80200424: 80e080e7     	jalr	-0x7f2(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE>
80200428: f6a43823     	sd	a0, -0x90(s0)
;         match self {
8020042c: f7043503     	ld	a0, -0x90(s0)
80200430: cd01         	beqz	a0, 0x80200448 <.Lpcrel_hi7+0x8a>
80200432: a005         	j	0x80200452 <.Lpcrel_hi7+0x94>
80200434: f4843503     	ld	a0, -0xb8(s0)
;         return Some(x as u32);
80200438: 0ff57513     	andi	a0, a0, 0xff
8020043c: f4a42e23     	sw	a0, -0xa4(s0)
80200440: 4505         	li	a0, 0x1
80200442: f4a42c23     	sw	a0, -0xa8(s0)
80200446: bf65         	j	0x802003fe <.Lpcrel_hi7+0x40>
;                 precondition_check($($arg,)*);
80200448: 00000097     	auipc	ra, 0x0
8020044c: 2ea080e7     	jalr	0x2ea(ra) <_ZN4core4hint21unreachable_unchecked18precondition_check17h355ae8b271d6ae55E>
80200450: a82d         	j	0x8020048a <.Lpcrel_hi7+0xcc>
80200452: f4843503     	ld	a0, -0xb8(s0)
80200456: f4043583     	ld	a1, -0xc0(s0)
;             Some(val) => val,
8020045a: f7043603     	ld	a2, -0x90(s0)
8020045e: fac43c23     	sd	a2, -0x48(s0)
;     let y = unsafe { *bytes.next().unwrap_unchecked() };
80200462: 00064603     	lbu	a2, 0x0(a2)
80200466: f2c43c23     	sd	a2, -0xc8(s0)
8020046a: fcc403a3     	sb	a2, -0x39(s0)
;     (ch << 6) | (byte & CONT_MASK) as u32
8020046e: 0065959b     	slliw	a1, a1, 0x6
80200472: 03f67613     	andi	a2, a2, 0x3f
80200476: 8dd1         	or	a1, a1, a2
80200478: f6b42e23     	sw	a1, -0x84(s0)
;     if x >= 0xE0 {
8020047c: 0ff57593     	andi	a1, a0, 0xff
80200480: 0df00513     	li	a0, 0xdf
80200484: 00b56c63     	bltu	a0, a1, 0x8020049c <.Lpcrel_hi7+0xde>
80200488: a011         	j	0x8020048c <.Lpcrel_hi7+0xce>
8020048a: 0000         	unimp
;     Some(ch)
8020048c: f7c42503     	lw	a0, -0x84(s0)
80200490: f4a42e23     	sw	a0, -0xa4(s0)
80200494: 4505         	li	a0, 0x1
80200496: f4a42c23     	sw	a0, -0xa8(s0)
; }
8020049a: b795         	j	0x802003fe <.Lpcrel_hi7+0x40>
8020049c: f5043503     	ld	a0, -0xb0(s0)
;         let z = unsafe { *bytes.next().unwrap_unchecked() };
802004a0: 00000097     	auipc	ra, 0x0
802004a4: 78e080e7     	jalr	0x78e(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE>
802004a8: f8a43023     	sd	a0, -0x80(s0)
;         match self {
802004ac: f8043503     	ld	a0, -0x80(s0)
802004b0: e519         	bnez	a0, 0x802004be <.Lpcrel_hi7+0x100>
802004b2: a009         	j	0x802004b4 <.Lpcrel_hi7+0xf6>
;                 precondition_check($($arg,)*);
802004b4: 00000097     	auipc	ra, 0x0
802004b8: 27e080e7     	jalr	0x27e(ra) <_ZN4core4hint21unreachable_unchecked18precondition_check17h355ae8b271d6ae55E>
802004bc: b7f9         	j	0x8020048a <.Lpcrel_hi7+0xcc>
802004be: f4843503     	ld	a0, -0xb8(s0)
802004c2: f4043583     	ld	a1, -0xc0(s0)
802004c6: f3843603     	ld	a2, -0xc8(s0)
;             Some(val) => val,
802004ca: f8043683     	ld	a3, -0x80(s0)
802004ce: fcd43423     	sd	a3, -0x38(s0)
;         let z = unsafe { *bytes.next().unwrap_unchecked() };
802004d2: 0006c683     	lbu	a3, 0x0(a3)
802004d6: fcd40ba3     	sb	a3, -0x29(s0)
;         let y_z = utf8_acc_cont_byte((y & CONT_MASK) as u32, z);
802004da: 03f67613     	andi	a2, a2, 0x3f
802004de: fcc42c23     	sw	a2, -0x28(s0)
;     (ch << 6) | (byte & CONT_MASK) as u32
802004e2: 061a         	slli	a2, a2, 0x6
802004e4: 03f6f693     	andi	a3, a3, 0x3f
802004e8: 8e55         	or	a2, a2, a3
802004ea: f2c43823     	sd	a2, -0xd0(s0)
802004ee: fcc42e23     	sw	a2, -0x24(s0)
;         ch = init << 12 | y_z;
802004f2: 00c5959b     	slliw	a1, a1, 0xc
802004f6: 8dd1         	or	a1, a1, a2
802004f8: f6b42e23     	sw	a1, -0x84(s0)
;         if x >= 0xF0 {
802004fc: 0ff57593     	andi	a1, a0, 0xff
80200500: 0ef00513     	li	a0, 0xef
80200504: 00b56463     	bltu	a0, a1, 0x8020050c <.Lpcrel_hi7+0x14e>
80200508: a009         	j	0x8020050a <.Lpcrel_hi7+0x14c>
;     if x >= 0xE0 {
8020050a: b749         	j	0x8020048c <.Lpcrel_hi7+0xce>
8020050c: f5043503     	ld	a0, -0xb0(s0)
;             let w = unsafe { *bytes.next().unwrap_unchecked() };
80200510: 00000097     	auipc	ra, 0x0
80200514: 71e080e7     	jalr	0x71e(ra) <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE>
80200518: f8a43423     	sd	a0, -0x78(s0)
;         match self {
8020051c: f8843503     	ld	a0, -0x78(s0)
80200520: e519         	bnez	a0, 0x8020052e <.Lpcrel_hi7+0x170>
80200522: a009         	j	0x80200524 <.Lpcrel_hi7+0x166>
;                 precondition_check($($arg,)*);
80200524: 00000097     	auipc	ra, 0x0
80200528: 20e080e7     	jalr	0x20e(ra) <_ZN4core4hint21unreachable_unchecked18precondition_check17h355ae8b271d6ae55E>
8020052c: bfb9         	j	0x8020048a <.Lpcrel_hi7+0xcc>
8020052e: f3043583     	ld	a1, -0xd0(s0)
80200532: f4043503     	ld	a0, -0xc0(s0)
;             Some(val) => val,
80200536: f8843603     	ld	a2, -0x78(s0)
8020053a: fec43023     	sd	a2, -0x20(s0)
;             let w = unsafe { *bytes.next().unwrap_unchecked() };
8020053e: 00064603     	lbu	a2, 0x0(a2)
80200542: fec407a3     	sb	a2, -0x11(s0)
;             ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
80200546: 891d         	andi	a0, a0, 0x7
80200548: 0125151b     	slliw	a0, a0, 0x12
;     (ch << 6) | (byte & CONT_MASK) as u32
8020054c: 0065959b     	slliw	a1, a1, 0x6
80200550: 03f67613     	andi	a2, a2, 0x3f
80200554: 8dd1         	or	a1, a1, a2
;             ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
80200556: 8d4d         	or	a0, a0, a1
80200558: f6a42e23     	sw	a0, -0x84(s0)
;         if x >= 0xF0 {
8020055c: b77d         	j	0x8020050a <.Lpcrel_hi7+0x14c>

000000008020055e <_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hbffa073e999f27d7E>:
;     pub fn chars(&self) -> Chars<'_> {
8020055e: 1101         	addi	sp, sp, -0x20
80200560: ec06         	sd	ra, 0x18(sp)
80200562: e822         	sd	s0, 0x10(sp)
80200564: 1000         	addi	s0, sp, 0x20
80200566: fea43023     	sd	a0, -0x20(s0)
8020056a: feb43423     	sd	a1, -0x18(s0)
;         unsafe { intrinsics::offset(self, count) }
8020056e: 95aa         	add	a1, a1, a0
80200570: 60e2         	ld	ra, 0x18(sp)
80200572: 6442         	ld	s0, 0x10(sp)
;     }
80200574: 6105         	addi	sp, sp, 0x20
80200576: 8082         	ret

0000000080200578 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E>:
; pub const fn encode_utf8_raw(code: u32, dst: &mut [u8]) -> &mut [u8] {
80200578: 7131         	addi	sp, sp, -0xc0
8020057a: fd06         	sd	ra, 0xb8(sp)
8020057c: f922         	sd	s0, 0xb0(sp)
8020057e: 0180         	addi	s0, sp, 0xc0
80200580: f4c43423     	sd	a2, -0xb8(s0)
80200584: f4b43823     	sd	a1, -0xb0(s0)
80200588: 86aa         	mv	a3, a0
8020058a: f4d43c23     	sd	a3, -0xa8(s0)
8020058e: f6a42623     	sw	a0, -0x94(s0)
80200592: f6b43823     	sd	a1, -0x90(s0)
80200596: f6c43c23     	sd	a2, -0x88(s0)
8020059a: 08000593     	li	a1, 0x80
;         ..MAX_ONE_B => 1,
8020059e: 00b56963     	bltu	a0, a1, 0x802005b0 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x38>
802005a2: a009         	j	0x802005a4 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x2c>
802005a4: f5843503     	ld	a0, -0xa8(s0)
;         ..MAX_TWO_B => 2,
802005a8: 00b5551b     	srliw	a0, a0, 0xb
802005ac: c105         	beqz	a0, 0x802005cc <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x54>
802005ae: a809         	j	0x802005c0 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x48>
802005b0: f4843503     	ld	a0, -0xb8(s0)
802005b4: 4585         	li	a1, 0x1
;         ..MAX_ONE_B => 1,
802005b6: f6b43023     	sd	a1, -0xa0(s0)
;         (1, [a, ..]) => {
802005ba: 14051b63     	bnez	a0, 0x80200710 <.Lpcrel_hi8+0xf8>
802005be: a091         	j	0x80200602 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x8a>
802005c0: f5843503     	ld	a0, -0xa8(s0)
;         ..MAX_THREE_B => 3,
802005c4: 0105551b     	srliw	a0, a0, 0x10
802005c8: c505         	beqz	a0, 0x802005f0 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x78>
802005ca: a811         	j	0x802005de <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x66>
802005cc: f4843583     	ld	a1, -0xb8(s0)
802005d0: 4509         	li	a0, 0x2
;         ..MAX_TWO_B => 2,
802005d2: f6a43023     	sd	a0, -0xa0(s0)
802005d6: 4505         	li	a0, 0x1
;         (2, [a, b, ..]) => {
802005d8: 10b56463     	bltu	a0, a1, 0x802006e0 <.Lpcrel_hi8+0xc8>
802005dc: a01d         	j	0x80200602 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x8a>
802005de: f4843583     	ld	a1, -0xb8(s0)
802005e2: 4511         	li	a0, 0x4
;         _ => 4,
802005e4: f6a43023     	sd	a0, -0xa0(s0)
802005e8: 450d         	li	a0, 0x3
;         (4, [a, b, c, d, ..]) => {
802005ea: 02b56f63     	bltu	a0, a1, 0x80200628 <.Lpcrel_hi8+0x10>
802005ee: a811         	j	0x80200602 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x8a>
802005f0: f4843583     	ld	a1, -0xb8(s0)
802005f4: 450d         	li	a0, 0x3
;         ..MAX_THREE_B => 3,
802005f6: f6a43023     	sd	a0, -0xa0(s0)
802005fa: 4509         	li	a0, 0x2
;         (3, [a, b, c, ..]) => {
802005fc: 08b56f63     	bltu	a0, a1, 0x8020069a <.Lpcrel_hi8+0x82>
80200600: a009         	j	0x80200602 <_ZN4core4char7methods15encode_utf8_raw17h5cd2965c1bfb9289E+0x8a>
80200602: f4843603     	ld	a2, -0xb8(s0)
80200606: f5843503     	ld	a0, -0xa8(s0)
;                 len: usize = len,
8020060a: f6043583     	ld	a1, -0xa0(s0)
8020060e: fcb43423     	sd	a1, -0x38(s0)
;                 dst_len: usize = dst.len(),
80200612: fcc43823     	sd	a2, -0x30(s0)
;         const_eval_select(($($val,)*), compiletime, runtime)
80200616: 2501         	sext.w	a0, a0

0000000080200618 <.Lpcrel_hi8>:
80200618: 00002697     	auipc	a3, 0x2
8020061c: a8068693     	addi	a3, a3, -0x580
80200620: 00001097     	auipc	ra, 0x1
80200624: 362080e7     	jalr	0x362(ra) <_ZN4core4char7methods15encode_utf8_raw8do_panic7runtime17hf2c5d4a1246995f1E>
80200628: f5043583     	ld	a1, -0xb0(s0)
8020062c: f5843503     	ld	a0, -0xa8(s0)
;         (4, [a, b, c, d, ..]) => {
80200630: f8b43023     	sd	a1, -0x80(s0)
80200634: 00158613     	addi	a2, a1, 0x1
80200638: f8c43423     	sd	a2, -0x78(s0)
8020063c: 00258613     	addi	a2, a1, 0x2
80200640: f8c43823     	sd	a2, -0x70(s0)
80200644: 00358613     	addi	a2, a1, 0x3
80200648: f8c43c23     	sd	a2, -0x68(s0)
;             *a = (code >> 18 & 0x07) as u8 | TAG_FOUR_B;
8020064c: 02b51613     	slli	a2, a0, 0x2b
80200650: 9275         	srli	a2, a2, 0x3d
80200652: 0f060613     	addi	a2, a2, 0xf0
80200656: 00c58023     	sb	a2, 0x0(a1)
;             *b = (code >> 12 & 0x3F) as u8 | TAG_CONT;
8020065a: 02e51613     	slli	a2, a0, 0x2e
8020065e: 9269         	srli	a2, a2, 0x3a
80200660: 08060613     	addi	a2, a2, 0x80
80200664: 00c580a3     	sb	a2, 0x1(a1)
;             *c = (code >> 6 & 0x3F) as u8 | TAG_CONT;
80200668: 03451613     	slli	a2, a0, 0x34
8020066c: 9269         	srli	a2, a2, 0x3a
8020066e: 08060613     	addi	a2, a2, 0x80
80200672: 00c58123     	sb	a2, 0x2(a1)
;             *d = (code & 0x3F) as u8 | TAG_CONT;
80200676: 03f57513     	andi	a0, a0, 0x3f
8020067a: 08050513     	addi	a0, a0, 0x80
8020067e: 00a581a3     	sb	a0, 0x3(a1)
;         }
80200682: a009         	j	0x80200684 <.Lpcrel_hi8+0x6c>
80200684: f5043503     	ld	a0, -0xb0(s0)
;         self as *mut [T] as *mut T
80200688: fea43023     	sd	a0, -0x20(s0)
;     unsafe { slice::from_raw_parts_mut(dst.as_mut_ptr(), len) }
8020068c: f6043503     	ld	a0, -0xa0(s0)
80200690: f4a43023     	sd	a0, -0xc0(s0)
80200694: fea43423     	sd	a0, -0x18(s0)
;             if ::core::ub_checks::$kind() {
80200698: a069         	j	0x80200722 <.Lpcrel_hi8+0x10a>
8020069a: f5043583     	ld	a1, -0xb0(s0)
8020069e: f5843503     	ld	a0, -0xa8(s0)
;         (3, [a, b, c, ..]) => {
802006a2: fab43023     	sd	a1, -0x60(s0)
802006a6: 00158613     	addi	a2, a1, 0x1
802006aa: fac43423     	sd	a2, -0x58(s0)
802006ae: 00258613     	addi	a2, a1, 0x2
802006b2: fac43823     	sd	a2, -0x50(s0)
;             *a = (code >> 12 & 0x0F) as u8 | TAG_THREE_B;
802006b6: 03051613     	slli	a2, a0, 0x30
802006ba: 9271         	srli	a2, a2, 0x3c
802006bc: 0e060613     	addi	a2, a2, 0xe0
802006c0: 00c58023     	sb	a2, 0x0(a1)
;             *b = (code >> 6 & 0x3F) as u8 | TAG_CONT;
802006c4: 03451613     	slli	a2, a0, 0x34
802006c8: 9269         	srli	a2, a2, 0x3a
802006ca: 08060613     	addi	a2, a2, 0x80
802006ce: 00c580a3     	sb	a2, 0x1(a1)
;             *c = (code & 0x3F) as u8 | TAG_CONT;
802006d2: 03f57513     	andi	a0, a0, 0x3f
802006d6: 08050513     	addi	a0, a0, 0x80
802006da: 00a58123     	sb	a0, 0x2(a1)
;         }
802006de: b75d         	j	0x80200684 <.Lpcrel_hi8+0x6c>
802006e0: f5043583     	ld	a1, -0xb0(s0)
802006e4: f5843503     	ld	a0, -0xa8(s0)
;         (2, [a, b, ..]) => {
802006e8: fab43c23     	sd	a1, -0x48(s0)
802006ec: 00158613     	addi	a2, a1, 0x1
802006f0: fcc43023     	sd	a2, -0x40(s0)
;             *a = (code >> 6 & 0x1F) as u8 | TAG_TWO_B;
802006f4: 03551613     	slli	a2, a0, 0x35
802006f8: 926d         	srli	a2, a2, 0x3b
802006fa: 0c060613     	addi	a2, a2, 0xc0
802006fe: 00c58023     	sb	a2, 0x0(a1)
;             *b = (code & 0x3F) as u8 | TAG_CONT;
80200702: 03f57513     	andi	a0, a0, 0x3f
80200706: 08050513     	addi	a0, a0, 0x80
8020070a: 00a580a3     	sb	a0, 0x1(a1)
;         }
8020070e: bf9d         	j	0x80200684 <.Lpcrel_hi8+0x6c>
80200710: f5843503     	ld	a0, -0xa8(s0)
80200714: f5043583     	ld	a1, -0xb0(s0)
;         (1, [a, ..]) => {
80200718: fcb43c23     	sd	a1, -0x28(s0)
;             *a = code as u8;
8020071c: 00a58023     	sb	a0, 0x0(a1)
;         }
80200720: b795         	j	0x80200684 <.Lpcrel_hi8+0x6c>
80200722: f4043583     	ld	a1, -0xc0(s0)
80200726: f5043503     	ld	a0, -0xb0(s0)
8020072a: 70ea         	ld	ra, 0xb8(sp)
8020072c: 744a         	ld	s0, 0xb0(sp)
; }
8020072e: 6129         	addi	sp, sp, 0xc0
80200730: 8082         	ret

0000000080200732 <_ZN4core4hint21unreachable_unchecked18precondition_check17h355ae8b271d6ae55E>:
;             const fn precondition_check($($name:$ty),*) {
80200732: 1141         	addi	sp, sp, -0x10
80200734: e406         	sd	ra, 0x8(sp)
80200736: e022         	sd	s0, 0x0(sp)
80200738: 0800         	addi	s0, sp, 0x10

000000008020073a <.Lpcrel_hi9>:
;                     ::core::panicking::panic_nounwind(
8020073a: 00002517     	auipc	a0, 0x2
8020073e: 97650513     	addi	a0, a0, -0x68a
80200742: 05200593     	li	a1, 0x52
80200746: 00001097     	auipc	ra, 0x1
8020074a: 9b8080e7     	jalr	-0x648(ra) <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>

000000008020074e <_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h20d5e9c813aef263E>:
;     fn next(&mut self) -> Option<A> {
8020074e: 1101         	addi	sp, sp, -0x20
80200750: ec06         	sd	ra, 0x18(sp)
80200752: e822         	sd	s0, 0x10(sp)
80200754: 1000         	addi	s0, sp, 0x20
80200756: fea43423     	sd	a0, -0x18(s0)
;         self.spec_next()
8020075a: 00000097     	auipc	ra, 0x0
8020075e: 45e080e7     	jalr	0x45e(ra) <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he837e67425218f38E>
80200762: 60e2         	ld	ra, 0x18(sp)
80200764: 6442         	ld	s0, 0x10(sp)
;     }
80200766: 6105         	addi	sp, sp, 0x20
80200768: 8082         	ret

000000008020076a <_ZN4core4iter6traits8iterator8Iterator4fold17ha341d1ab69f831b7E>:
;     fn fold<B, F>(mut self, init: B, mut f: F) -> B
8020076a: 715d         	addi	sp, sp, -0x50
8020076c: e486         	sd	ra, 0x48(sp)
8020076e: e0a2         	sd	s0, 0x40(sp)
80200770: 0880         	addi	s0, sp, 0x50
80200772: faa43c23     	sd	a0, -0x48(s0)
80200776: fcb43023     	sd	a1, -0x40(s0)
;         while let Some(x) = self.next() {
8020077a: a009         	j	0x8020077c <_ZN4core4iter6traits8iterator8Iterator4fold17ha341d1ab69f831b7E+0x12>
8020077c: fb840513     	addi	a0, s0, -0x48
;         while let Some(x) = self.next() {
80200780: 00000097     	auipc	ra, 0x0
80200784: fce080e7     	jalr	-0x32(ra) <_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h20d5e9c813aef263E>
80200788: fca43823     	sd	a0, -0x30(s0)
8020078c: fcb43c23     	sd	a1, -0x28(s0)
80200790: fd043503     	ld	a0, -0x30(s0)
80200794: 4585         	li	a1, 0x1
80200796: 00b51e63     	bne	a0, a1, 0x802007b2 <_ZN4core4iter6traits8iterator8Iterator4fold17ha341d1ab69f831b7E+0x48>
8020079a: a009         	j	0x8020079c <_ZN4core4iter6traits8iterator8Iterator4fold17ha341d1ab69f831b7E+0x32>
8020079c: fd843583     	ld	a1, -0x28(s0)
802007a0: feb43423     	sd	a1, -0x18(s0)
802007a4: fcf40513     	addi	a0, s0, -0x31
;             accum = f(accum, x);
802007a8: 00000097     	auipc	ra, 0x0
802007ac: 032080e7     	jalr	0x32(ra) <_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbe5b8f057aaf7643E>
;         while let Some(x) = self.next() {
802007b0: b7f1         	j	0x8020077c <_ZN4core4iter6traits8iterator8Iterator4fold17ha341d1ab69f831b7E+0x12>
802007b2: 60a6         	ld	ra, 0x48(sp)
802007b4: 6406         	ld	s0, 0x40(sp)
;     }
802007b6: 6161         	addi	sp, sp, 0x50
802007b8: 8082         	ret

00000000802007ba <_ZN4core4iter6traits8iterator8Iterator8for_each17h678b44265140c4d1E>:
;     fn for_each<F>(self, f: F)
802007ba: 7179         	addi	sp, sp, -0x30
802007bc: f406         	sd	ra, 0x28(sp)
802007be: f022         	sd	s0, 0x20(sp)
802007c0: 1800         	addi	s0, sp, 0x30
802007c2: fca43c23     	sd	a0, -0x28(s0)
802007c6: feb43023     	sd	a1, -0x20(s0)
;         self.fold((), call(f));
802007ca: 00000097     	auipc	ra, 0x0
802007ce: fa0080e7     	jalr	-0x60(ra) <_ZN4core4iter6traits8iterator8Iterator4fold17ha341d1ab69f831b7E>
802007d2: 70a2         	ld	ra, 0x28(sp)
802007d4: 7402         	ld	s0, 0x20(sp)
;     }
802007d6: 6145         	addi	sp, sp, 0x30
802007d8: 8082         	ret

00000000802007da <_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbe5b8f057aaf7643E>:
;             move |(), item| f(item)
802007da: 7179         	addi	sp, sp, -0x30
802007dc: f406         	sd	ra, 0x28(sp)
802007de: f022         	sd	s0, 0x20(sp)
802007e0: 1800         	addi	s0, sp, 0x30
802007e2: fca43c23     	sd	a0, -0x28(s0)
802007e6: feb43423     	sd	a1, -0x18(s0)
802007ea: 00001097     	auipc	ra, 0x1
802007ee: 812080e7     	jalr	-0x7ee(ra) <_ZN2os9clear_bss28_$u7b$$u7b$closure$u7d$$u7d$17hd8b33e38be2827f7E>
802007f2: 70a2         	ld	ra, 0x28(sp)
802007f4: 7402         	ld	s0, 0x20(sp)
802007f6: 6145         	addi	sp, sp, 0x30
802007f8: 8082         	ret

00000000802007fa <_ZN4core5panic10panic_info9PanicInfo7message17h29dfc6c7794c29b0E>:
;     pub fn message(&self) -> PanicMessage<'_> {
802007fa: 1101         	addi	sp, sp, -0x20
802007fc: ec06         	sd	ra, 0x18(sp)
802007fe: e822         	sd	s0, 0x10(sp)
80200800: 1000         	addi	s0, sp, 0x20
80200802: fea43423     	sd	a0, -0x18(s0)
;         PanicMessage { message: self.message }
80200806: 6108         	ld	a0, 0x0(a0)
80200808: 60e2         	ld	ra, 0x18(sp)
8020080a: 6442         	ld	s0, 0x10(sp)
;     }
8020080c: 6105         	addi	sp, sp, 0x20
8020080e: 8082         	ret

0000000080200810 <_ZN4core5panic10panic_info9PanicInfo8location17h4061a47aa38db3a3E>:
;     pub fn location(&self) -> Option<&Location<'_>> {
80200810: 1101         	addi	sp, sp, -0x20
80200812: ec06         	sd	ra, 0x18(sp)
80200814: e822         	sd	s0, 0x10(sp)
80200816: 1000         	addi	s0, sp, 0x20
80200818: fea43423     	sd	a0, -0x18(s0)
;         Some(&self.location)
8020081c: 6508         	ld	a0, 0x8(a0)
8020081e: fea43023     	sd	a0, -0x20(s0)
;     }
80200822: fe043503     	ld	a0, -0x20(s0)
80200826: 60e2         	ld	ra, 0x18(sp)
80200828: 6442         	ld	s0, 0x10(sp)
8020082a: 6105         	addi	sp, sp, 0x20
8020082c: 8082         	ret

000000008020082e <_ZN4core5panic8location8Location4file17h48945c56529dc1d6E>:
;     pub const fn file(&self) -> &str {
8020082e: 1101         	addi	sp, sp, -0x20
80200830: ec06         	sd	ra, 0x18(sp)
80200832: e822         	sd	s0, 0x10(sp)
80200834: 1000         	addi	s0, sp, 0x20
80200836: 85aa         	mv	a1, a0
80200838: feb43423     	sd	a1, -0x18(s0)
;         self.file
8020083c: 6188         	ld	a0, 0x0(a1)
8020083e: 658c         	ld	a1, 0x8(a1)
80200840: 60e2         	ld	ra, 0x18(sp)
80200842: 6442         	ld	s0, 0x10(sp)
;     }
80200844: 6105         	addi	sp, sp, 0x20
80200846: 8082         	ret

0000000080200848 <_ZN4core5panic8location8Location4line17h46c4f2b86d9a1878E>:
;     pub const fn line(&self) -> u32 {
80200848: 1101         	addi	sp, sp, -0x20
8020084a: ec06         	sd	ra, 0x18(sp)
8020084c: e822         	sd	s0, 0x10(sp)
8020084e: 1000         	addi	s0, sp, 0x20
80200850: fea43423     	sd	a0, -0x18(s0)
;     }
80200854: 4908         	lw	a0, 0x10(a0)
80200856: 60e2         	ld	ra, 0x18(sp)
80200858: 6442         	ld	s0, 0x10(sp)
8020085a: 6105         	addi	sp, sp, 0x20
8020085c: 8082         	ret

000000008020085e <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h6e9c84718f673f85E>:
; #[derive(Copy, Clone, Debug, Default, Eq, Hash, Ord, PartialEq, PartialOrd)]
8020085e: 7179         	addi	sp, sp, -0x30
80200860: f406         	sd	ra, 0x28(sp)
80200862: f022         	sd	s0, 0x20(sp)
80200864: 1800         	addi	s0, sp, 0x30
80200866: fcb43c23     	sd	a1, -0x28(s0)
8020086a: 85aa         	mv	a1, a0
8020086c: fd843503     	ld	a0, -0x28(s0)
80200870: feb43023     	sd	a1, -0x20(s0)
80200874: fea43423     	sd	a0, -0x18(s0)

0000000080200878 <.Lpcrel_hi10>:
80200878: 00002597     	auipc	a1, 0x2
8020087c: 8db58593     	addi	a1, a1, -0x725
80200880: 4615         	li	a2, 0x5
80200882: 00001097     	auipc	ra, 0x1
80200886: f22080e7     	jalr	-0xde(ra) <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h1dc9abc2d2ed6cceE>
8020088a: 70a2         	ld	ra, 0x28(sp)
8020088c: 7402         	ld	s0, 0x20(sp)
8020088e: 6145         	addi	sp, sp, 0x30
80200890: 8082         	ret

0000000080200892 <_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1debe40bef682170E>:
;     fn into_iter(self) -> I {
80200892: 1101         	addi	sp, sp, -0x20
80200894: ec06         	sd	ra, 0x18(sp)
80200896: e822         	sd	s0, 0x10(sp)
80200898: 1000         	addi	s0, sp, 0x20
8020089a: fea43023     	sd	a0, -0x20(s0)
8020089e: feb43423     	sd	a1, -0x18(s0)
802008a2: 60e2         	ld	ra, 0x18(sp)
802008a4: 6442         	ld	s0, 0x10(sp)
;     }
802008a6: 6105         	addi	sp, sp, 0x20
802008a8: 8082         	ret

00000000802008aa <_ZN66_$LT$sbi_rt..srst..Shutdown$u20$as$u20$sbi_rt..srst..ResetType$GT$3raw17hc3522a0e9db9b856E>:
;                 fn raw(&self) -> u32 {
802008aa: 1101         	addi	sp, sp, -0x20
802008ac: ec06         	sd	ra, 0x18(sp)
802008ae: e822         	sd	s0, 0x10(sp)
802008b0: 1000         	addi	s0, sp, 0x20
802008b2: fea43423     	sd	a0, -0x18(s0)
802008b6: 4501         	li	a0, 0x0
802008b8: 60e2         	ld	ra, 0x18(sp)
802008ba: 6442         	ld	s0, 0x10(sp)
;                 }
802008bc: 6105         	addi	sp, sp, 0x20
802008be: 8082         	ret

00000000802008c0 <_ZN68_$LT$sbi_rt..srst..NoReason$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17h72209cc776ea83deE>:
;                 fn raw(&self) -> u32 {
802008c0: 1101         	addi	sp, sp, -0x20
802008c2: ec06         	sd	ra, 0x18(sp)
802008c4: e822         	sd	s0, 0x10(sp)
802008c6: 1000         	addi	s0, sp, 0x20
802008c8: fea43423     	sd	a0, -0x18(s0)
802008cc: 4501         	li	a0, 0x0
802008ce: 60e2         	ld	ra, 0x18(sp)
802008d0: 6442         	ld	s0, 0x10(sp)
;                 }
802008d2: 6105         	addi	sp, sp, 0x20
802008d4: 8082         	ret

00000000802008d6 <_ZN6sbi_rt4srst12system_reset17h304ab0b847167d6aE>:
; pub fn system_reset<T, R>(reset_type: T, reset_reason: R) -> SbiRet
802008d6: 715d         	addi	sp, sp, -0x50
802008d8: e486         	sd	ra, 0x48(sp)
802008da: e0a2         	sd	s0, 0x40(sp)
802008dc: 0880         	addi	s0, sp, 0x50
802008de: fbe40513     	addi	a0, s0, -0x42
;         reset_type.raw() as _,
802008e2: 00000097     	auipc	ra, 0x0
802008e6: fc8080e7     	jalr	-0x38(ra) <_ZN66_$LT$sbi_rt..srst..Shutdown$u20$as$u20$sbi_rt..srst..ResetType$GT$3raw17hc3522a0e9db9b856E>
802008ea: 1502         	slli	a0, a0, 0x20
802008ec: 9101         	srli	a0, a0, 0x20
802008ee: faa43823     	sd	a0, -0x50(s0)
802008f2: fbf40513     	addi	a0, s0, -0x41
;         reset_reason.raw() as _,
802008f6: 00000097     	auipc	ra, 0x0
802008fa: 0da080e7     	jalr	0xda(ra) <_ZN73_$LT$sbi_rt..srst..SystemFailure$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17hcc8ea3606c5dd7b4E>
802008fe: 85aa         	mv	a1, a0
80200900: fb043503     	ld	a0, -0x50(s0)
80200904: 1582         	slli	a1, a1, 0x20
80200906: 9181         	srli	a1, a1, 0x20
80200908: 53525637     	lui	a2, 0x53525
8020090c: 3546089b     	addiw	a7, a2, 0x354
80200910: fd143823     	sd	a7, -0x30(s0)
80200914: 4801         	li	a6, 0x0
80200916: fd043c23     	sd	a6, -0x28(s0)
8020091a: fea43023     	sd	a0, -0x20(s0)
8020091e: feb43423     	sd	a1, -0x18(s0)
;         core::arch::asm!(
80200922: 00000073     	ecall
80200926: fca43023     	sd	a0, -0x40(s0)
8020092a: fcb43423     	sd	a1, -0x38(s0)
;     SbiRet { error, value }
8020092e: fc043503     	ld	a0, -0x40(s0)
80200932: fc843583     	ld	a1, -0x38(s0)
80200936: 60a6         	ld	ra, 0x48(sp)
80200938: 6406         	ld	s0, 0x40(sp)
; }
8020093a: 6161         	addi	sp, sp, 0x50
8020093c: 8082         	ret

000000008020093e <_ZN6sbi_rt4srst12system_reset17h882fe221abbde9a2E>:
; pub fn system_reset<T, R>(reset_type: T, reset_reason: R) -> SbiRet
8020093e: 715d         	addi	sp, sp, -0x50
80200940: e486         	sd	ra, 0x48(sp)
80200942: e0a2         	sd	s0, 0x40(sp)
80200944: 0880         	addi	s0, sp, 0x50
80200946: fbe40513     	addi	a0, s0, -0x42
;         reset_type.raw() as _,
8020094a: 00000097     	auipc	ra, 0x0
8020094e: f60080e7     	jalr	-0xa0(ra) <_ZN66_$LT$sbi_rt..srst..Shutdown$u20$as$u20$sbi_rt..srst..ResetType$GT$3raw17hc3522a0e9db9b856E>
80200952: 1502         	slli	a0, a0, 0x20
80200954: 9101         	srli	a0, a0, 0x20
80200956: faa43823     	sd	a0, -0x50(s0)
8020095a: fbf40513     	addi	a0, s0, -0x41
;         reset_reason.raw() as _,
8020095e: 00000097     	auipc	ra, 0x0
80200962: f62080e7     	jalr	-0x9e(ra) <_ZN68_$LT$sbi_rt..srst..NoReason$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17h72209cc776ea83deE>
80200966: 85aa         	mv	a1, a0
80200968: fb043503     	ld	a0, -0x50(s0)
8020096c: 1582         	slli	a1, a1, 0x20
8020096e: 9181         	srli	a1, a1, 0x20
80200970: 53525637     	lui	a2, 0x53525
80200974: 3546089b     	addiw	a7, a2, 0x354
80200978: fd143823     	sd	a7, -0x30(s0)
8020097c: 4801         	li	a6, 0x0
8020097e: fd043c23     	sd	a6, -0x28(s0)
80200982: fea43023     	sd	a0, -0x20(s0)
80200986: feb43423     	sd	a1, -0x18(s0)
;         core::arch::asm!(
8020098a: 00000073     	ecall
8020098e: fca43023     	sd	a0, -0x40(s0)
80200992: fcb43423     	sd	a1, -0x38(s0)
;     SbiRet { error, value }
80200996: fc043503     	ld	a0, -0x40(s0)
8020099a: fc843583     	ld	a1, -0x38(s0)
8020099e: 60a6         	ld	ra, 0x48(sp)
802009a0: 6406         	ld	s0, 0x40(sp)
; }
802009a2: 6161         	addi	sp, sp, 0x50
802009a4: 8082         	ret

00000000802009a6 <_ZN6sbi_rt6legacy15console_putchar17hd690160b7ccd7914E>:
; pub fn console_putchar(c: usize) -> usize {
802009a6: 7179         	addi	sp, sp, -0x30
802009a8: f406         	sd	ra, 0x28(sp)
802009aa: f022         	sd	s0, 0x20(sp)
802009ac: 1800         	addi	s0, sp, 0x30
802009ae: fca43823     	sd	a0, -0x30(s0)
802009b2: 4885         	li	a7, 0x1
802009b4: ff143023     	sd	a7, -0x20(s0)
802009b8: fea43423     	sd	a0, -0x18(s0)
;         core::arch::asm!(
802009bc: 00000073     	ecall
802009c0: fca43c23     	sd	a0, -0x28(s0)
;     error
802009c4: fd843503     	ld	a0, -0x28(s0)
802009c8: 70a2         	ld	ra, 0x28(sp)
802009ca: 7402         	ld	s0, 0x20(sp)
; }
802009cc: 6145         	addi	sp, sp, 0x30
802009ce: 8082         	ret

00000000802009d0 <_ZN73_$LT$sbi_rt..srst..SystemFailure$u20$as$u20$sbi_rt..srst..ResetReason$GT$3raw17hcc8ea3606c5dd7b4E>:
;                 fn raw(&self) -> u32 {
802009d0: 1101         	addi	sp, sp, -0x20
802009d2: ec06         	sd	ra, 0x18(sp)
802009d4: e822         	sd	s0, 0x10(sp)
802009d6: 1000         	addi	s0, sp, 0x20
802009d8: fea43423     	sd	a0, -0x18(s0)
802009dc: 4505         	li	a0, 0x1
802009de: 60e2         	ld	ra, 0x18(sp)
802009e0: 6442         	ld	s0, 0x10(sp)
;                 }
802009e2: 6105         	addi	sp, sp, 0x20
802009e4: 8082         	ret

00000000802009e6 <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hddcad9b17072e0aaE>:
;             fn spec_write_fmt(self, args: Arguments<'_>) -> Result {
802009e6: 7155         	addi	sp, sp, -0xd0
802009e8: e586         	sd	ra, 0xc8(sp)
802009ea: e1a2         	sd	s0, 0xc0(sp)
802009ec: 0980         	addi	s0, sp, 0xd0
802009ee: f2b43c23     	sd	a1, -0xc8(s0)
802009f2: f4a43023     	sd	a0, -0xc0(s0)
802009f6: f8a43423     	sd	a0, -0x78(s0)
;                 if let Some(s) = args.as_statically_known_str() {
802009fa: f8b43823     	sd	a1, -0x70(s0)
;         match (self.pieces, self.args) {
802009fe: 6188         	ld	a0, 0x0(a1)
80200a00: f4a43423     	sd	a0, -0xb8(s0)
80200a04: 6588         	ld	a0, 0x8(a1)
80200a06: f4a43823     	sd	a0, -0xb0(s0)
80200a0a: 6d8c         	ld	a1, 0x18(a1)
80200a0c: f4b43c23     	sd	a1, -0xa8(s0)
;             ([], []) => Some(""),
80200a10: e511         	bnez	a0, 0x80200a1c <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hddcad9b17072e0aaE+0x36>
80200a12: a009         	j	0x80200a14 <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hddcad9b17072e0aaE+0x2e>
80200a14: f5843503     	ld	a0, -0xa8(s0)
;             ([], []) => Some(""),
80200a18: c901         	beqz	a0, 0x80200a28 <_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hddcad9b17072e0aaE+0x42>
80200a1a: a831         	j	0x80200a36 <.Lpcrel_hi11>
80200a1c: f5043503     	ld	a0, -0xb0(s0)
80200a20: 4585         	li	a1, 0x1
;             ([s], []) => Some(s),
80200a22: 04b50163     	beq	a0, a1, 0x80200a64 <.Lpcrel_hi11+0x2e>
80200a26: a801         	j	0x80200a36 <.Lpcrel_hi11>
80200a28: 4505         	li	a0, 0x1
;             ([], []) => Some(""),
80200a2a: f6a43c23     	sd	a0, -0x88(s0)
80200a2e: 4501         	li	a0, 0x0
80200a30: f8a43023     	sd	a0, -0x80(s0)
80200a34: a821         	j	0x80200a4c <.Lpcrel_hi11+0x16>

0000000080200a36 <.Lpcrel_hi11>:
;             _ => None,
80200a36: 00001517     	auipc	a0, 0x1
80200a3a: 5ca50513     	addi	a0, a0, 0x5ca
80200a3e: 610c         	ld	a1, 0x0(a0)
80200a40: 6508         	ld	a0, 0x8(a0)
80200a42: f6b43c23     	sd	a1, -0x88(s0)
80200a46: f8a43023     	sd	a0, -0x80(s0)
80200a4a: a009         	j	0x80200a4c <.Lpcrel_hi11+0x16>
80200a4c: f7840513     	addi	a0, s0, -0x88
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
80200a50: faa43023     	sd	a0, -0x60(s0)
80200a54: 4501         	li	a0, 0x0
80200a56: faa407a3     	sb	a0, -0x51(s0)
80200a5a: faf44503     	lbu	a0, -0x51(s0)
80200a5e: 8905         	andi	a0, a0, 0x1
80200a60: e115         	bnez	a0, 0x80200a84 <.Lpcrel_hi11+0x4e>
80200a62: a005         	j	0x80200a82 <.Lpcrel_hi11+0x4c>
80200a64: f5843503     	ld	a0, -0xa8(s0)
;             ([s], []) => Some(s),
80200a68: f579         	bnez	a0, 0x80200a36 <.Lpcrel_hi11>
80200a6a: a009         	j	0x80200a6c <.Lpcrel_hi11+0x36>
80200a6c: f4843503     	ld	a0, -0xb8(s0)
;             ([s], []) => Some(s),
80200a70: f8a43c23     	sd	a0, -0x68(s0)
80200a74: 610c         	ld	a1, 0x0(a0)
80200a76: 6508         	ld	a0, 0x8(a0)
80200a78: f6b43c23     	sd	a1, -0x88(s0)
80200a7c: f8a43023     	sd	a0, -0x80(s0)
80200a80: b7f1         	j	0x80200a4c <.Lpcrel_hi11+0x16>
;                 if let Some(s) = args.as_statically_known_str() {
80200a82: a829         	j	0x80200a9c <.Lpcrel_hi11+0x66>
;         if core::intrinsics::is_val_statically_known(s.is_some()) { s } else { None }
80200a84: f7843583     	ld	a1, -0x88(s0)
80200a88: f8043503     	ld	a0, -0x80(s0)
80200a8c: f6b43423     	sd	a1, -0x98(s0)
80200a90: f6a43823     	sd	a0, -0x90(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200a94: f6843503     	ld	a0, -0x98(s0)
80200a98: e529         	bnez	a0, 0x80200ae2 <.Lpcrel_hi12+0x1a>
80200a9a: a009         	j	0x80200a9c <.Lpcrel_hi11+0x66>
80200a9c: f4043503     	ld	a0, -0xc0(s0)
80200aa0: f3843583     	ld	a1, -0xc8(s0)
;                     write(self, args)
80200aa4: 7590         	ld	a2, 0x28(a1)
80200aa6: fec43423     	sd	a2, -0x18(s0)
80200aaa: 7190         	ld	a2, 0x20(a1)
80200aac: fec43023     	sd	a2, -0x20(s0)
80200ab0: 6d90         	ld	a2, 0x18(a1)
80200ab2: fcc43c23     	sd	a2, -0x28(s0)
80200ab6: 6990         	ld	a2, 0x10(a1)
80200ab8: fcc43823     	sd	a2, -0x30(s0)
80200abc: 6590         	ld	a2, 0x8(a1)
80200abe: fcc43423     	sd	a2, -0x38(s0)
80200ac2: 618c         	ld	a1, 0x0(a1)
80200ac4: fcb43023     	sd	a1, -0x40(s0)

0000000080200ac8 <.Lpcrel_hi12>:
80200ac8: 00001597     	auipc	a1, 0x1
80200acc: 69058593     	addi	a1, a1, 0x690
80200ad0: fc040613     	addi	a2, s0, -0x40
80200ad4: 00000097     	auipc	ra, 0x0
80200ad8: 6dc080e7     	jalr	0x6dc(ra) <_ZN4core3fmt5write17h0545e85c538fe473E>
80200adc: f6a403a3     	sb	a0, -0x99(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200ae0: a015         	j	0x80200b04 <.Lpcrel_hi12+0x3c>
80200ae2: f4043503     	ld	a0, -0xc0(s0)
;                 if let Some(s) = args.as_statically_known_str() {
80200ae6: f6843583     	ld	a1, -0x98(s0)
80200aea: f7043603     	ld	a2, -0x90(s0)
80200aee: fab43823     	sd	a1, -0x50(s0)
80200af2: fac43c23     	sd	a2, -0x48(s0)
;                     self.write_str(s)
80200af6: 00000097     	auipc	ra, 0x0
80200afa: 1dc080e7     	jalr	0x1dc(ra) <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E>
80200afe: f6a403a3     	sb	a0, -0x99(s0)
80200b02: a009         	j	0x80200b04 <.Lpcrel_hi12+0x3c>
;             }
80200b04: f6744503     	lbu	a0, -0x99(s0)
80200b08: 8905         	andi	a0, a0, 0x1
80200b0a: 60ae         	ld	ra, 0xc8(sp)
80200b0c: 640e         	ld	s0, 0xc0(sp)
80200b0e: 6169         	addi	sp, sp, 0xd0
80200b10: 8082         	ret

0000000080200b12 <_ZN76_$LT$core..panic..panic_info..PanicMessage$u20$as$u20$core..fmt..Display$GT$3fmt17he1d8c6985f1cdadcE>:
;     fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
80200b12: 711d         	addi	sp, sp, -0x60
80200b14: ec86         	sd	ra, 0x58(sp)
80200b16: e8a2         	sd	s0, 0x50(sp)
80200b18: 1080         	addi	s0, sp, 0x60
80200b1a: fab43423     	sd	a1, -0x58(s0)
80200b1e: 85aa         	mv	a1, a0
80200b20: fa843503     	ld	a0, -0x58(s0)
80200b24: feb43023     	sd	a1, -0x20(s0)
80200b28: fea43423     	sd	a0, -0x18(s0)
;         formatter.write_fmt(*self.message)
80200b2c: 618c         	ld	a1, 0x0(a1)
80200b2e: 7590         	ld	a2, 0x28(a1)
80200b30: fcc43c23     	sd	a2, -0x28(s0)
80200b34: 7190         	ld	a2, 0x20(a1)
80200b36: fcc43823     	sd	a2, -0x30(s0)
80200b3a: 6d90         	ld	a2, 0x18(a1)
80200b3c: fcc43423     	sd	a2, -0x38(s0)
80200b40: 6990         	ld	a2, 0x10(a1)
80200b42: fcc43023     	sd	a2, -0x40(s0)
80200b46: 6590         	ld	a2, 0x8(a1)
80200b48: fac43c23     	sd	a2, -0x48(s0)
80200b4c: 618c         	ld	a1, 0x0(a1)
80200b4e: fab43823     	sd	a1, -0x50(s0)
80200b52: fb040593     	addi	a1, s0, -0x50
80200b56: fffff097     	auipc	ra, 0xfffff
80200b5a: 716080e7     	jalr	0x716(ra) <sbss+0xfffed26c>
80200b5e: 60e6         	ld	ra, 0x58(sp)
80200b60: 6446         	ld	s0, 0x50(sp)
;     }
80200b62: 6125         	addi	sp, sp, 0x60
80200b64: 8082         	ret

0000000080200b66 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E>:
;     fn next(&mut self) -> Option<char> {
80200b66: 7139         	addi	sp, sp, -0x40
80200b68: fc06         	sd	ra, 0x38(sp)
80200b6a: f822         	sd	s0, 0x30(sp)
80200b6c: 0080         	addi	s0, sp, 0x40
80200b6e: fea43023     	sd	a0, -0x20(s0)
;         unsafe { next_code_point(&mut self.iter).map(|ch| char::from_u32_unchecked(ch)) }
80200b72: 00000097     	auipc	ra, 0x0
80200b76: 822080e7     	jalr	-0x7de(ra) <_ZN4core3str11validations15next_code_point17h68a7c57b085effdbE>
80200b7a: fca42c23     	sw	a0, -0x28(s0)
80200b7e: fcb42e23     	sw	a1, -0x24(s0)
;         match self {
80200b82: fd842503     	lw	a0, -0x28(s0)
80200b86: e519         	bnez	a0, 0x80200b94 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E+0x2e>
80200b88: a009         	j	0x80200b8a <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E+0x24>
80200b8a: 00110537     	lui	a0, 0x110
;             None => None,
80200b8e: fca42a23     	sw	a0, -0x2c(s0)
;     }
80200b92: a801         	j	0x80200ba2 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E+0x3c>
;             Some(x) => Some(f(x)),
80200b94: fdc42503     	lw	a0, -0x24(s0)
80200b98: fca43423     	sd	a0, -0x38(s0)
80200b9c: fea42623     	sw	a0, -0x14(s0)
;             if ::core::ub_checks::$kind() {
80200ba0: a039         	j	0x80200bae <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E+0x48>
;     }
80200ba2: fd442503     	lw	a0, -0x2c(s0)
80200ba6: 70e2         	ld	ra, 0x38(sp)
80200ba8: 7442         	ld	s0, 0x30(sp)
80200baa: 6121         	addi	sp, sp, 0x40
80200bac: 8082         	ret
80200bae: fc843503     	ld	a0, -0x38(s0)
;             Some(x) => Some(f(x)),
80200bb2: fca42a23     	sw	a0, -0x2c(s0)
80200bb6: b7f5         	j	0x80200ba2 <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E+0x3c>

0000000080200bb8 <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he837e67425218f38E>:
;     fn spec_next(&mut self) -> Option<T> {
80200bb8: 711d         	addi	sp, sp, -0x60
80200bba: ec86         	sd	ra, 0x58(sp)
80200bbc: e8a2         	sd	s0, 0x50(sp)
80200bbe: 1080         	addi	s0, sp, 0x60
80200bc0: 85aa         	mv	a1, a0
80200bc2: fab43c23     	sd	a1, -0x48(s0)
80200bc6: fcb43823     	sd	a1, -0x30(s0)
;         if self.start < self.end {
80200bca: 00858513     	addi	a0, a1, 0x8
80200bce: feb43023     	sd	a1, -0x20(s0)
80200bd2: fea43423     	sd	a0, -0x18(s0)
;                 fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
80200bd6: 6188         	ld	a0, 0x0(a1)
80200bd8: 658c         	ld	a1, 0x8(a1)
;         if self.start < self.end {
80200bda: 00b56763     	bltu	a0, a1, 0x80200be8 <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he837e67425218f38E+0x30>
80200bde: a009         	j	0x80200be0 <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he837e67425218f38E+0x28>
80200be0: 4501         	li	a0, 0x0
;             None
80200be2: fca43023     	sd	a0, -0x40(s0)
;         if self.start < self.end {
80200be6: a825         	j	0x80200c1e <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he837e67425218f38E+0x66>
80200be8: fb843503     	ld	a0, -0x48(s0)
;             let old = self.start;
80200bec: 6108         	ld	a0, 0x0(a0)
80200bee: faa43423     	sd	a0, -0x58(s0)
80200bf2: fca43c23     	sd	a0, -0x28(s0)
80200bf6: 4585         	li	a1, 0x1
80200bf8: fab43823     	sd	a1, -0x50(s0)
;             self.start = unsafe { Step::forward_unchecked(old, 1) };
80200bfc: fffff097     	auipc	ra, 0xfffff
80200c00: 43c080e7     	jalr	0x43c(ra) <sbss+0xfffed038>
80200c04: fb843683     	ld	a3, -0x48(s0)
80200c08: fa843583     	ld	a1, -0x58(s0)
80200c0c: 862a         	mv	a2, a0
80200c0e: fb043503     	ld	a0, -0x50(s0)
80200c12: e290         	sd	a2, 0x0(a3)
;             Some(old)
80200c14: fcb43423     	sd	a1, -0x38(s0)
80200c18: fca43023     	sd	a0, -0x40(s0)
;         if self.start < self.end {
80200c1c: a009         	j	0x80200c1e <_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he837e67425218f38E+0x66>
;     }
80200c1e: fc043503     	ld	a0, -0x40(s0)
80200c22: fc843583     	ld	a1, -0x38(s0)
80200c26: 60e6         	ld	ra, 0x58(sp)
80200c28: 6446         	ld	s0, 0x50(sp)
80200c2a: 6125         	addi	sp, sp, 0x60
80200c2c: 8082         	ret

0000000080200c2e <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE>:
;             fn next(&mut self) -> Option<$elem> {
80200c2e: 7175         	addi	sp, sp, -0x90
80200c30: e506         	sd	ra, 0x88(sp)
80200c32: e122         	sd	s0, 0x80(sp)
80200c34: 0900         	addi	s0, sp, 0x90
80200c36: f6a43c23     	sd	a0, -0x88(s0)
80200c3a: faa43023     	sd	a0, -0x60(s0)
80200c3e: 4505         	li	a0, 0x1
;             unsafe fn post_inc_start(&mut self, offset: usize) -> NonNull<T> {
80200c40: faa43423     	sd	a0, -0x58(s0)
;     pub const unsafe fn add(self, count: usize) -> Self
80200c44: faa43823     	sd	a0, -0x50(s0)
;         if T::IS_ZST {
80200c48: a009         	j	0x80200c4a <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x1c>
80200c4a: f7843503     	ld	a0, -0x88(s0)
;             let $end = unsafe { *(&raw const $this.end_or_len).cast::<NonNull<T>>() };
80200c4e: 00850593     	addi	a1, a0, 0x8
80200c52: fab43c23     	sd	a1, -0x48(s0)
80200c56: 650c         	ld	a1, 0x8(a0)
80200c58: f8b43823     	sd	a1, -0x70(s0)
;             end => $self.ptr == end,
80200c5c: fca43023     	sd	a0, -0x40(s0)
80200c60: f9040593     	addi	a1, s0, -0x70
80200c64: fcb43423     	sd	a1, -0x38(s0)
;         self.as_ptr() == other.as_ptr()
80200c68: 6108         	ld	a0, 0x0(a0)
;         unsafe { mem::transmute::<Self, *mut T>(self) }
80200c6a: f9043583     	ld	a1, -0x70(s0)
;         self.as_ptr() == other.as_ptr()
80200c6e: 8d2d         	xor	a0, a0, a1
80200c70: 00153513     	seqz	a0, a0
80200c74: f8a407a3     	sb	a0, -0x71(s0)
;         if T::IS_ZST {
80200c78: a009         	j	0x80200c7a <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x4c>
;     ($this:ident, $len:ident => $zst_body:expr, $end:ident => $other_body:expr,) => {{
80200c7a: f8f44503     	lbu	a0, -0x71(s0)
80200c7e: 8905         	andi	a0, a0, 0x1
80200c80: e901         	bnez	a0, 0x80200c90 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x62>
80200c82: a009         	j	0x80200c84 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x56>
80200c84: f7843503     	ld	a0, -0x88(s0)
;                 let old = self.ptr;
80200c88: 6108         	ld	a0, 0x0(a0)
80200c8a: f8a43c23     	sd	a0, -0x68(s0)
;         if T::IS_ZST {
80200c8e: a029         	j	0x80200c98 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x6a>
80200c90: 4501         	li	a0, 0x0
;                         None
80200c92: f8a43023     	sd	a0, -0x80(s0)
;                     if is_empty!(self) {
80200c96: a805         	j	0x80200cc6 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x98>
80200c98: f7843583     	ld	a1, -0x88(s0)
;             let $end = unsafe { &mut *(&raw mut $this.end_or_len).cast::<NonNull<T>>() };
80200c9c: 00858513     	addi	a0, a1, 0x8
80200ca0: fca43823     	sd	a0, -0x30(s0)
;         self as _
80200ca4: fca43c23     	sd	a0, -0x28(s0)
;                         _end => self.ptr = self.ptr.add(offset),
80200ca8: 6188         	ld	a0, 0x0(a1)
80200caa: fea43023     	sd	a0, -0x20(s0)
;         unsafe { NonNull { pointer: intrinsics::offset(self.as_ptr(), count) } }
80200cae: 0505         	addi	a0, a0, 0x1
;                         _end => self.ptr = self.ptr.add(offset),
80200cb0: e188         	sd	a0, 0x0(a1)
;         if T::IS_ZST {
80200cb2: a009         	j	0x80200cb4 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x86>
80200cb4: f9840513     	addi	a0, s0, -0x68
;                     self.post_inc_start(1).$into_ref()
80200cb8: fea43423     	sd	a0, -0x18(s0)
;         unsafe { mem::transmute::<Self, *mut T>(self) }
80200cbc: f9843503     	ld	a0, -0x68(s0)
;                         Some(self.next_unchecked())
80200cc0: f8a43023     	sd	a0, -0x80(s0)
;                     if is_empty!(self) {
80200cc4: a009         	j	0x80200cc6 <_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78bbd493fe75676cE+0x98>
;             }
80200cc6: f8043503     	ld	a0, -0x80(s0)
80200cca: 60aa         	ld	ra, 0x88(sp)
80200ccc: 640a         	ld	s0, 0x80(sp)
80200cce: 6149         	addi	sp, sp, 0x90
80200cd0: 8082         	ret

0000000080200cd2 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E>:
;     fn write_str(&mut self, s: &str) -> fmt::Result {
80200cd2: 711d         	addi	sp, sp, -0x60
80200cd4: ec86         	sd	ra, 0x58(sp)
80200cd6: e8a2         	sd	s0, 0x50(sp)
80200cd8: 1080         	addi	s0, sp, 0x60
80200cda: fac43023     	sd	a2, -0x60(s0)
80200cde: 862e         	mv	a2, a1
80200ce0: fa043583     	ld	a1, -0x60(s0)
80200ce4: fac43423     	sd	a2, -0x58(s0)
80200ce8: 862a         	mv	a2, a0
80200cea: fa843503     	ld	a0, -0x58(s0)
80200cee: fcc43823     	sd	a2, -0x30(s0)
80200cf2: fca43c23     	sd	a0, -0x28(s0)
80200cf6: feb43023     	sd	a1, -0x20(s0)
;         for c in s.chars() {
80200cfa: 00000097     	auipc	ra, 0x0
80200cfe: 864080e7     	jalr	-0x79c(ra) <_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hbffa073e999f27d7E>
80200d02: 00000097     	auipc	ra, 0x0
80200d06: b90080e7     	jalr	-0x470(ra) <_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1debe40bef682170E>
80200d0a: faa43c23     	sd	a0, -0x48(s0)
80200d0e: fcb43023     	sd	a1, -0x40(s0)
80200d12: a009         	j	0x80200d14 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E+0x42>
80200d14: fb840513     	addi	a0, s0, -0x48
;         for c in s.chars() {
80200d18: 00000097     	auipc	ra, 0x0
80200d1c: e4e080e7     	jalr	-0x1b2(ra) <_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc02e0044be410d59E>
80200d20: fca42623     	sw	a0, -0x34(s0)
80200d24: fcc42503     	lw	a0, -0x34(s0)
80200d28: 001105b7     	lui	a1, 0x110
80200d2c: 00b51d63     	bne	a0, a1, 0x80200d46 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E+0x74>
80200d30: a009         	j	0x80200d32 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E+0x60>
80200d32: 4501         	li	a0, 0x0
;         Ok(())
80200d34: faa40ba3     	sb	a0, -0x49(s0)
;     }
80200d38: fb744503     	lbu	a0, -0x49(s0)
80200d3c: 8905         	andi	a0, a0, 0x1
80200d3e: 60e6         	ld	ra, 0x58(sp)
80200d40: 6446         	ld	s0, 0x50(sp)
80200d42: 6125         	addi	sp, sp, 0x60
80200d44: 8082         	ret
;         for c in s.chars() {
80200d46: fcc46503     	lwu	a0, -0x34(s0)
80200d4a: fea42623     	sw	a0, -0x14(s0)
;             sbi::console_putchar(c as usize);
80200d4e: 00000097     	auipc	ra, 0x0
80200d52: 1d2080e7     	jalr	0x1d2(ra) <_ZN2os3sbi15console_putchar17h0826d50610953832E>
80200d56: bf7d         	j	0x80200d14 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h8f7924a8c5689551E+0x42>

0000000080200d58 <_ZN2os7console5print17hcf06e481d408b188E>:
; pub fn print(args: fmt::Arguments) {
80200d58: 715d         	addi	sp, sp, -0x50
80200d5a: e486         	sd	ra, 0x48(sp)
80200d5c: e0a2         	sd	s0, 0x40(sp)
80200d5e: 0880         	addi	s0, sp, 0x50
;     Stdout.write_fmt(args).unwrap();
80200d60: 750c         	ld	a1, 0x28(a0)
80200d62: feb43023     	sd	a1, -0x20(s0)
80200d66: 710c         	ld	a1, 0x20(a0)
80200d68: fcb43c23     	sd	a1, -0x28(s0)
80200d6c: 6d0c         	ld	a1, 0x18(a0)
80200d6e: fcb43823     	sd	a1, -0x30(s0)
80200d72: 690c         	ld	a1, 0x10(a0)
80200d74: fcb43423     	sd	a1, -0x38(s0)
80200d78: 650c         	ld	a1, 0x8(a0)
80200d7a: fcb43023     	sd	a1, -0x40(s0)
80200d7e: 6108         	ld	a0, 0x0(a0)
80200d80: faa43c23     	sd	a0, -0x48(s0)
80200d84: fb740513     	addi	a0, s0, -0x49
80200d88: fb840593     	addi	a1, s0, -0x48
80200d8c: fffff097     	auipc	ra, 0xfffff
80200d90: 448080e7     	jalr	0x448(ra) <sbss+0xfffed1d4>
80200d94: fea40723     	sb	a0, -0x12(s0)
;         match self {
80200d98: fee44503     	lbu	a0, -0x12(s0)
80200d9c: 8905         	andi	a0, a0, 0x1
80200d9e: c515         	beqz	a0, 0x80200dca <.Lpcrel_hi15+0x18>
80200da0: a009         	j	0x80200da2 <.Lpcrel_hi13>

0000000080200da2 <.Lpcrel_hi13>:
;             Err(e) => unwrap_failed("called `Result::unwrap()` on an `Err` value", &e),
80200da2: 00001517     	auipc	a0, 0x1
80200da6: 38650513     	addi	a0, a0, 0x386

0000000080200daa <.Lpcrel_hi14>:
80200daa: 00001597     	auipc	a1, 0x1
80200dae: 35e58693     	addi	a3, a1, 0x35e

0000000080200db2 <.Lpcrel_hi15>:
80200db2: 00001597     	auipc	a1, 0x1
80200db6: 3e658713     	addi	a4, a1, 0x3e6
80200dba: 02b00593     	li	a1, 0x2b
80200dbe: fef40613     	addi	a2, s0, -0x11
80200dc2: 00000097     	auipc	ra, 0x0
80200dc6: 37e080e7     	jalr	0x37e(ra) <_ZN4core6result13unwrap_failed17h29324abbdc95674dE>
80200dca: 60a6         	ld	ra, 0x48(sp)
80200dcc: 6406         	ld	s0, 0x40(sp)
; }
80200dce: 6161         	addi	sp, sp, 0x50
80200dd0: 8082         	ret

0000000080200dd2 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80200dd2: 714d         	addi	sp, sp, -0x150
80200dd4: e686         	sd	ra, 0x148(sp)
80200dd6: e2a2         	sd	s0, 0x140(sp)
80200dd8: 0a80         	addi	s0, sp, 0x150
80200dda: eca43423     	sd	a0, -0x138(s0)
80200dde: fea43023     	sd	a0, -0x20(s0)
;     if let Some(location) = info.location() {
80200de2: 00000097     	auipc	ra, 0x0
80200de6: a2e080e7     	jalr	-0x5d2(ra) <_ZN4core5panic10panic_info9PanicInfo8location17h4061a47aa38db3a3E>
80200dea: eca43823     	sd	a0, -0x130(s0)
80200dee: ed043503     	ld	a0, -0x130(s0)
80200df2: c569         	beqz	a0, 0x80200ebc <.Lpcrel_hi16+0x2a>
80200df4: a009         	j	0x80200df6 <rust_begin_unwind+0x24>
80200df6: ed043503     	ld	a0, -0x130(s0)
80200dfa: eaa43c23     	sd	a0, -0x148(s0)
80200dfe: fea43423     	sd	a0, -0x18(s0)
;             location.file(),
80200e02: 00000097     	auipc	ra, 0x0
80200e06: a2c080e7     	jalr	-0x5d4(ra) <_ZN4core5panic8location8Location4file17h48945c56529dc1d6E>
80200e0a: f4a43423     	sd	a0, -0xb8(s0)
80200e0e: f4b43823     	sd	a1, -0xb0(s0)
80200e12: f3840513     	addi	a0, s0, -0xc8
80200e16: f4840593     	addi	a1, s0, -0xb8
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200e1a: fffff097     	auipc	ra, 0xfffff
80200e1e: 292080e7     	jalr	0x292(ra) <sbss+0xfffed0ac>
80200e22: eb843503     	ld	a0, -0x148(s0)
;             location.line(),
80200e26: 00000097     	auipc	ra, 0x0
80200e2a: a22080e7     	jalr	-0x5de(ra) <_ZN4core5panic8location8Location4line17h46c4f2b86d9a1878E>
80200e2e: f6a42623     	sw	a0, -0x94(s0)
80200e32: f5840513     	addi	a0, s0, -0xa8
80200e36: f6c40593     	addi	a1, s0, -0x94
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200e3a: fffff097     	auipc	ra, 0xfffff
80200e3e: 22a080e7     	jalr	0x22a(ra) <sbss+0xfffed064>
80200e42: ec843503     	ld	a0, -0x138(s0)
;             info.message()
80200e46: 00000097     	auipc	ra, 0x0
80200e4a: 9b4080e7     	jalr	-0x64c(ra) <_ZN4core5panic10panic_info9PanicInfo7message17h29dfc6c7794c29b0E>
80200e4e: f8a43023     	sd	a0, -0x80(s0)
80200e52: f7040513     	addi	a0, s0, -0x90
80200e56: f8040593     	addi	a1, s0, -0x80
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200e5a: fffff097     	auipc	ra, 0xfffff
80200e5e: 22e080e7     	jalr	0x22e(ra) <sbss+0xfffed088>
80200e62: f4043503     	ld	a0, -0xc0(s0)
80200e66: f0a43823     	sd	a0, -0xf0(s0)
80200e6a: f3843503     	ld	a0, -0xc8(s0)
80200e6e: f0a43423     	sd	a0, -0xf8(s0)
80200e72: f6043503     	ld	a0, -0xa0(s0)
80200e76: f2a43023     	sd	a0, -0xe0(s0)
80200e7a: f5843503     	ld	a0, -0xa8(s0)
80200e7e: f0a43c23     	sd	a0, -0xe8(s0)
80200e82: f7843503     	ld	a0, -0x88(s0)
80200e86: f2a43823     	sd	a0, -0xd0(s0)
80200e8a: f7043503     	ld	a0, -0x90(s0)
80200e8e: f2a43423     	sd	a0, -0xd8(s0)

0000000080200e92 <.Lpcrel_hi16>:
80200e92: 00001517     	auipc	a0, 0x1
80200e96: 32e50593     	addi	a1, a0, 0x32e
80200e9a: ed840513     	addi	a0, s0, -0x128
80200e9e: eca43023     	sd	a0, -0x140(s0)
80200ea2: f0840613     	addi	a2, s0, -0xf8
80200ea6: fffff097     	auipc	ra, 0xfffff
80200eaa: 34a080e7     	jalr	0x34a(ra) <sbss+0xfffed1f0>
80200eae: ec043503     	ld	a0, -0x140(s0)
80200eb2: 00000097     	auipc	ra, 0x0
80200eb6: ea6080e7     	jalr	-0x15a(ra) <_ZN2os7console5print17hcf06e481d408b188E>
80200eba: a8b1         	j	0x80200f16 <.Lpcrel_hi17+0x2a>
80200ebc: ec843503     	ld	a0, -0x138(s0)
;         println!("Panicked: {}", info.message());
80200ec0: 00000097     	auipc	ra, 0x0
80200ec4: 93a080e7     	jalr	-0x6c6(ra) <_ZN4core5panic10panic_info9PanicInfo7message17h29dfc6c7794c29b0E>
80200ec8: fca43c23     	sd	a0, -0x28(s0)
80200ecc: fc840513     	addi	a0, s0, -0x38
80200ed0: fd840593     	addi	a1, s0, -0x28
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200ed4: fffff097     	auipc	ra, 0xfffff
80200ed8: 1b4080e7     	jalr	0x1b4(ra) <sbss+0xfffed088>
80200edc: fd043503     	ld	a0, -0x30(s0)
80200ee0: fca43023     	sd	a0, -0x40(s0)
80200ee4: fc843503     	ld	a0, -0x38(s0)
80200ee8: faa43c23     	sd	a0, -0x48(s0)

0000000080200eec <.Lpcrel_hi17>:
80200eec: 00001517     	auipc	a0, 0x1
80200ef0: 32450593     	addi	a1, a0, 0x324
80200ef4: f8840513     	addi	a0, s0, -0x78
80200ef8: eaa43823     	sd	a0, -0x150(s0)
80200efc: fb840613     	addi	a2, s0, -0x48
80200f00: fffff097     	auipc	ra, 0xfffff
80200f04: 32e080e7     	jalr	0x32e(ra) <sbss+0xfffed22e>
80200f08: eb043503     	ld	a0, -0x150(s0)
80200f0c: 00000097     	auipc	ra, 0x0
80200f10: e4c080e7     	jalr	-0x1b4(ra) <_ZN2os7console5print17hcf06e481d408b188E>
80200f14: a009         	j	0x80200f16 <.Lpcrel_hi17+0x2a>
80200f16: 4505         	li	a0, 0x1
;     sbi::shutdown(true);
80200f18: 00000097     	auipc	ra, 0x0
80200f1c: 024080e7     	jalr	0x24(ra) <_ZN2os3sbi8shutdown17h83fd544d04dd038bE>

0000000080200f20 <_ZN2os3sbi15console_putchar17h0826d50610953832E>:
; pub fn console_putchar(c: usize) {
80200f20: 1101         	addi	sp, sp, -0x20
80200f22: ec06         	sd	ra, 0x18(sp)
80200f24: e822         	sd	s0, 0x10(sp)
80200f26: 1000         	addi	s0, sp, 0x20
80200f28: fea43423     	sd	a0, -0x18(s0)
;     sbi_rt::legacy::console_putchar(c);
80200f2c: 00000097     	auipc	ra, 0x0
80200f30: a7a080e7     	jalr	-0x586(ra) <_ZN6sbi_rt6legacy15console_putchar17hd690160b7ccd7914E>
80200f34: 60e2         	ld	ra, 0x18(sp)
80200f36: 6442         	ld	s0, 0x10(sp)
; }
80200f38: 6105         	addi	sp, sp, 0x20
80200f3a: 8082         	ret

0000000080200f3c <_ZN2os3sbi8shutdown17h83fd544d04dd038bE>:
; pub fn shutdown(failure: bool) -> ! {
80200f3c: 1101         	addi	sp, sp, -0x20
80200f3e: ec06         	sd	ra, 0x18(sp)
80200f40: e822         	sd	s0, 0x10(sp)
80200f42: 1000         	addi	s0, sp, 0x20
80200f44: fea407a3     	sb	a0, -0x11(s0)
;     if !failure {
80200f48: e519         	bnez	a0, 0x80200f56 <_ZN2os3sbi8shutdown17h83fd544d04dd038bE+0x1a>
80200f4a: a009         	j	0x80200f4c <_ZN2os3sbi8shutdown17h83fd544d04dd038bE+0x10>
;         sbi_rt::system_reset(sbi_rt::Shutdown, sbi_rt::NoReason);
80200f4c: 00000097     	auipc	ra, 0x0
80200f50: 9f2080e7     	jalr	-0x60e(ra) <_ZN6sbi_rt4srst12system_reset17h882fe221abbde9a2E>
80200f54: a031         	j	0x80200f60 <.Lpcrel_hi18>
;         sbi_rt::system_reset(sbi_rt::Shutdown, sbi_rt::SystemFailure);
80200f56: 00000097     	auipc	ra, 0x0
80200f5a: 980080e7     	jalr	-0x680(ra) <_ZN6sbi_rt4srst12system_reset17h304ab0b847167d6aE>
80200f5e: a009         	j	0x80200f60 <.Lpcrel_hi18>

0000000080200f60 <.Lpcrel_hi18>:
;     unreachable!()
80200f60: 00001517     	auipc	a0, 0x1
80200f64: 2d050513     	addi	a0, a0, 0x2d0

0000000080200f68 <.Lpcrel_hi19>:
80200f68: 00001597     	auipc	a1, 0x1
80200f6c: 30058613     	addi	a2, a1, 0x300
80200f70: 02800593     	li	a1, 0x28
80200f74: 00000097     	auipc	ra, 0x0
80200f78: 150080e7     	jalr	0x150(ra) <_ZN4core9panicking5panic17hc74596b0f69bcd0aE>

0000000080200f7c <main>:
; pub fn main() -> ! {
80200f7c: 715d         	addi	sp, sp, -0x50
80200f7e: e486         	sd	ra, 0x48(sp)
80200f80: e0a2         	sd	s0, 0x40(sp)
80200f82: 0880         	addi	s0, sp, 0x50
;     clear_bss();
80200f84: 00000097     	auipc	ra, 0x0
80200f88: 04c080e7     	jalr	0x4c(ra) <clear_bss>

0000000080200f8c <.Lpcrel_hi20>:
;         $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
80200f8c: 00001517     	auipc	a0, 0x1
80200f90: 30450593     	addi	a1, a0, 0x304
80200f94: fb840513     	addi	a0, s0, -0x48
80200f98: faa43823     	sd	a0, -0x50(s0)
80200f9c: 00000097     	auipc	ra, 0x0
80200fa0: 07e080e7     	jalr	0x7e(ra) <_ZN4core3fmt9Arguments9new_const17h28471e3c2a199b00E>
80200fa4: fb043503     	ld	a0, -0x50(s0)
80200fa8: 00000097     	auipc	ra, 0x0
80200fac: db0080e7     	jalr	-0x250(ra) <_ZN2os7console5print17hcf06e481d408b188E>
80200fb0: 4505         	li	a0, 0x1
;     let a = 1 / 0;
80200fb2: e519         	bnez	a0, 0x80200fc0 <.Lpcrel_hi21>
80200fb4: a009         	j	0x80200fb6 <.Lpcrel_hi20+0x2a>
80200fb6: 4501         	li	a0, 0x0
;     sbi::shutdown(false);
80200fb8: 00000097     	auipc	ra, 0x0
80200fbc: f84080e7     	jalr	-0x7c(ra) <_ZN2os3sbi8shutdown17h83fd544d04dd038bE>

0000000080200fc0 <.Lpcrel_hi21>:
;     let a = 1 / 0;
80200fc0: 00001517     	auipc	a0, 0x1
80200fc4: 2f050513     	addi	a0, a0, 0x2f0
80200fc8: 00001097     	auipc	ra, 0x1
80200fcc: a8a080e7     	jalr	-0x576(ra) <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h6bb92d78609f04c7E>

0000000080200fd0 <clear_bss>:
; fn clear_bss() {
80200fd0: 1141         	addi	sp, sp, -0x10
80200fd2: e406         	sd	ra, 0x8(sp)
80200fd4: e022         	sd	s0, 0x0(sp)
80200fd6: 0800         	addi	s0, sp, 0x10

0000000080200fd8 <.Lpcrel_hi22>:
;         (sbss..ebss).for_each(|a| *(a as *mut u8) = 0);
80200fd8: 00012517     	auipc	a0, 0x12
80200fdc: 02850513     	addi	a0, a0, 0x28
80200fe0: 6108         	ld	a0, 0x0(a0)

0000000080200fe2 <.Lpcrel_hi23>:
80200fe2: 00012597     	auipc	a1, 0x12
80200fe6: 01e58593     	addi	a1, a1, 0x1e
80200fea: 618c         	ld	a1, 0x0(a1)
80200fec: fffff097     	auipc	ra, 0xfffff
80200ff0: 7ce080e7     	jalr	0x7ce(ra) <sbss+0xfffed7ba>
80200ff4: 60a2         	ld	ra, 0x8(sp)
80200ff6: 6402         	ld	s0, 0x0(sp)
; }
80200ff8: 0141         	addi	sp, sp, 0x10
80200ffa: 8082         	ret

0000000080200ffc <_ZN2os9clear_bss28_$u7b$$u7b$closure$u7d$$u7d$17hd8b33e38be2827f7E>:
;         (sbss..ebss).for_each(|a| *(a as *mut u8) = 0);
80200ffc: 1101         	addi	sp, sp, -0x20
80200ffe: ec06         	sd	ra, 0x18(sp)
80201000: e822         	sd	s0, 0x10(sp)
80201002: 1000         	addi	s0, sp, 0x20
80201004: fea43023     	sd	a0, -0x20(s0)
80201008: feb43423     	sd	a1, -0x18(s0)
8020100c: 4501         	li	a0, 0x0
8020100e: 00a58023     	sb	a0, 0x0(a1)
80201012: 60e2         	ld	ra, 0x18(sp)
80201014: 6442         	ld	s0, 0x10(sp)
80201016: 6105         	addi	sp, sp, 0x20
80201018: 8082         	ret

000000008020101a <_ZN4core3fmt9Arguments9new_const17h28471e3c2a199b00E>:
;     pub const fn new_const<const N: usize>(pieces: &'a [&'static str; N]) -> Self {
8020101a: 1101         	addi	sp, sp, -0x20
8020101c: ec06         	sd	ra, 0x18(sp)
8020101e: e822         	sd	s0, 0x10(sp)
80201020: 1000         	addi	s0, sp, 0x20
80201022: feb43023     	sd	a1, -0x20(s0)
80201026: 85aa         	mv	a1, a0
80201028: fe043503     	ld	a0, -0x20(s0)
8020102c: fea43423     	sd	a0, -0x18(s0)
;         Arguments { pieces, fmt: None, args: &[] }
80201030: e188         	sd	a0, 0x0(a1)
80201032: 4505         	li	a0, 0x1
80201034: e588         	sd	a0, 0x8(a1)

0000000080201036 <.Lpcrel_hi1>:
80201036: 00001517     	auipc	a0, 0x1
8020103a: fca50513     	addi	a0, a0, -0x36
8020103e: 6110         	ld	a2, 0x0(a0)
80201040: 6508         	ld	a0, 0x8(a0)
80201042: f190         	sd	a2, 0x20(a1)
80201044: f588         	sd	a0, 0x28(a1)
80201046: 4521         	li	a0, 0x8
80201048: e988         	sd	a0, 0x10(a1)
8020104a: 4501         	li	a0, 0x0
8020104c: ed88         	sd	a0, 0x18(a1)
8020104e: 60e2         	ld	ra, 0x18(sp)
80201050: 6442         	ld	s0, 0x10(sp)
;     }
80201052: 6105         	addi	sp, sp, 0x20
80201054: 8082         	ret

0000000080201056 <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>:
80201056: 7179         	addi	sp, sp, -0x30
80201058: f406         	sd	ra, 0x28(sp)
8020105a: f022         	sd	s0, 0x20(sp)
8020105c: 1800         	addi	s0, sp, 0x30
8020105e: fca43c23     	sd	a0, -0x28(s0)
80201062: feb43023     	sd	a1, -0x20(s0)
80201066: 4505         	li	a0, 0x1
80201068: fea41423     	sh	a0, -0x18(s0)
8020106c: fd840513     	addi	a0, s0, -0x28
80201070: 00000097     	auipc	ra, 0x0
80201074: d62080e7     	jalr	-0x29e(ra) <rust_begin_unwind>

0000000080201078 <_ZN4core9panicking18panic_nounwind_fmt17h65db6768059e0c29E>:
80201078: 711d         	addi	sp, sp, -0x60
8020107a: ec86         	sd	ra, 0x58(sp)
8020107c: e8a2         	sd	s0, 0x50(sp)
8020107e: 1080         	addi	s0, sp, 0x60
80201080: 7514         	ld	a3, 0x28(a0)
80201082: 7118         	ld	a4, 0x20(a0)
80201084: fcd43823     	sd	a3, -0x30(s0)
80201088: fce43423     	sd	a4, -0x38(s0)
8020108c: 6d14         	ld	a3, 0x18(a0)
8020108e: 6918         	ld	a4, 0x10(a0)
80201090: 651c         	ld	a5, 0x8(a0)
80201092: 6108         	ld	a0, 0x0(a0)
80201094: fcd43023     	sd	a3, -0x40(s0)
80201098: fae43c23     	sd	a4, -0x48(s0)
8020109c: faf43823     	sd	a5, -0x50(s0)
802010a0: faa43423     	sd	a0, -0x58(s0)
802010a4: fa840513     	addi	a0, s0, -0x58
802010a8: fca43c23     	sd	a0, -0x28(s0)
802010ac: fec43023     	sd	a2, -0x20(s0)
802010b0: fe040423     	sb	zero, -0x18(s0)
802010b4: feb404a3     	sb	a1, -0x17(s0)
802010b8: fd840513     	addi	a0, s0, -0x28
802010bc: 00000097     	auipc	ra, 0x0
802010c0: d16080e7     	jalr	-0x2ea(ra) <rust_begin_unwind>

00000000802010c4 <_ZN4core9panicking5panic17hc74596b0f69bcd0aE>:
802010c4: 715d         	addi	sp, sp, -0x50
802010c6: e486         	sd	ra, 0x48(sp)
802010c8: e0a2         	sd	s0, 0x40(sp)
802010ca: 0880         	addi	s0, sp, 0x50
802010cc: fea43023     	sd	a0, -0x20(s0)
802010d0: feb43423     	sd	a1, -0x18(s0)
802010d4: fe040513     	addi	a0, s0, -0x20
802010d8: faa43823     	sd	a0, -0x50(s0)
802010dc: 4505         	li	a0, 0x1
802010de: faa43c23     	sd	a0, -0x48(s0)
802010e2: fc043823     	sd	zero, -0x30(s0)
802010e6: 4521         	li	a0, 0x8
802010e8: fca43023     	sd	a0, -0x40(s0)
802010ec: fc043423     	sd	zero, -0x38(s0)
802010f0: fb040513     	addi	a0, s0, -0x50
802010f4: 85b2         	mv	a1, a2
802010f6: 00000097     	auipc	ra, 0x0
802010fa: f60080e7     	jalr	-0xa0(ra) <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>

00000000802010fe <_ZN4core9panicking14panic_nounwind17h375837043f1b7448E>:
802010fe: 715d         	addi	sp, sp, -0x50
80201100: e486         	sd	ra, 0x48(sp)
80201102: e0a2         	sd	s0, 0x40(sp)
80201104: 0880         	addi	s0, sp, 0x50
80201106: fea43023     	sd	a0, -0x20(s0)
8020110a: feb43423     	sd	a1, -0x18(s0)
8020110e: fe040513     	addi	a0, s0, -0x20
80201112: faa43823     	sd	a0, -0x50(s0)
80201116: 4505         	li	a0, 0x1
80201118: faa43c23     	sd	a0, -0x48(s0)
8020111c: fc043823     	sd	zero, -0x30(s0)
80201120: 4521         	li	a0, 0x8
80201122: fca43023     	sd	a0, -0x40(s0)
80201126: fc043423     	sd	zero, -0x38(s0)

000000008020112a <.Lpcrel_hi339>:
8020112a: 00001517     	auipc	a0, 0x1
8020112e: 1be50613     	addi	a2, a0, 0x1be
80201132: fb040513     	addi	a0, s0, -0x50
80201136: 4581         	li	a1, 0x0
80201138: 00000097     	auipc	ra, 0x0
8020113c: f40080e7     	jalr	-0xc0(ra) <_ZN4core9panicking18panic_nounwind_fmt17h65db6768059e0c29E>

0000000080201140 <_ZN4core6result13unwrap_failed17h29324abbdc95674dE>:
80201140: 7119         	addi	sp, sp, -0x80
80201142: fc86         	sd	ra, 0x78(sp)
80201144: f8a2         	sd	s0, 0x70(sp)
80201146: 0100         	addi	s0, sp, 0x80
80201148: f8a43023     	sd	a0, -0x80(s0)
8020114c: f8b43423     	sd	a1, -0x78(s0)
80201150: f8c43823     	sd	a2, -0x70(s0)
80201154: f8d43c23     	sd	a3, -0x68(s0)
80201158: f8040513     	addi	a0, s0, -0x80
8020115c: fca43823     	sd	a0, -0x30(s0)

0000000080201160 <.Lpcrel_hi365>:
80201160: 00001517     	auipc	a0, 0x1
80201164: c9250513     	addi	a0, a0, -0x36e
80201168: fca43c23     	sd	a0, -0x28(s0)
8020116c: f9040513     	addi	a0, s0, -0x70
80201170: fea43023     	sd	a0, -0x20(s0)

0000000080201174 <.Lpcrel_hi366>:
80201174: 00001517     	auipc	a0, 0x1
80201178: c6850513     	addi	a0, a0, -0x398
8020117c: fea43423     	sd	a0, -0x18(s0)

0000000080201180 <.Lpcrel_hi367>:
80201180: 00001517     	auipc	a0, 0x1
80201184: 18850513     	addi	a0, a0, 0x188
80201188: faa43023     	sd	a0, -0x60(s0)
8020118c: 4509         	li	a0, 0x2
8020118e: faa43423     	sd	a0, -0x58(s0)
80201192: fc043023     	sd	zero, -0x40(s0)
80201196: fd040593     	addi	a1, s0, -0x30
8020119a: fab43823     	sd	a1, -0x50(s0)
8020119e: faa43c23     	sd	a0, -0x48(s0)
802011a2: fa040513     	addi	a0, s0, -0x60
802011a6: 85ba         	mv	a1, a4
802011a8: 00000097     	auipc	ra, 0x0
802011ac: eae080e7     	jalr	-0x152(ra) <_ZN4core9panicking9panic_fmt17hc3d875fe2140aa6eE>

00000000802011b0 <_ZN4core3fmt5write17h0545e85c538fe473E>:
802011b0: 7175         	addi	sp, sp, -0x90
802011b2: e506         	sd	ra, 0x88(sp)
802011b4: e122         	sd	s0, 0x80(sp)
802011b6: fca6         	sd	s1, 0x78(sp)
802011b8: f8ca         	sd	s2, 0x70(sp)
802011ba: f4ce         	sd	s3, 0x68(sp)
802011bc: f0d2         	sd	s4, 0x60(sp)
802011be: ecd6         	sd	s5, 0x58(sp)
802011c0: e8da         	sd	s6, 0x50(sp)
802011c2: e4de         	sd	s7, 0x48(sp)
802011c4: e0e2         	sd	s8, 0x40(sp)
802011c6: 0900         	addi	s0, sp, 0x90
802011c8: 89b2         	mv	s3, a2
802011ca: f6043823     	sd	zero, -0x90(s0)
802011ce: f8043023     	sd	zero, -0x80(s0)
802011d2: 02000613     	li	a2, 0x20
802011d6: f8c43823     	sd	a2, -0x70(s0)
802011da: 0209b483     	ld	s1, 0x20(s3)
802011de: 460d         	li	a2, 0x3
802011e0: f8c40c23     	sb	a2, -0x68(s0)
802011e4: faa43023     	sd	a0, -0x60(s0)
802011e8: fab43423     	sd	a1, -0x58(s0)
802011ec: cce1         	beqz	s1, 0x802012c4 <_ZN4core3fmt5write17h0545e85c538fe473E+0x114>
802011ee: 0289b503     	ld	a0, 0x28(s3)
802011f2: 12050463     	beqz	a0, 0x8020131a <_ZN4core3fmt5write17h0545e85c538fe473E+0x16a>
802011f6: 0009bb03     	ld	s6, 0x0(s3)
802011fa: 0109ba03     	ld	s4, 0x10(s3)
802011fe: fff50593     	addi	a1, a0, -0x1
80201202: 058e         	slli	a1, a1, 0x3
80201204: 818d         	srli	a1, a1, 0x3
80201206: 00158913     	addi	s2, a1, 0x1
8020120a: 0b21         	addi	s6, s6, 0x8
8020120c: 00351593     	slli	a1, a0, 0x3
80201210: 051a         	slli	a0, a0, 0x6
80201212: 40b50ab3     	sub	s5, a0, a1
80201216: 04e1         	addi	s1, s1, 0x18
80201218: 4b89         	li	s7, 0x2
8020121a: 4c05         	li	s8, 0x1
8020121c: 000b3603     	ld	a2, 0x0(s6)
80201220: ca19         	beqz	a2, 0x80201236 <_ZN4core3fmt5write17h0545e85c538fe473E+0x86>
80201222: fa843683     	ld	a3, -0x58(s0)
80201226: fa043503     	ld	a0, -0x60(s0)
8020122a: ff8b3583     	ld	a1, -0x8(s6)
8020122e: 6e94         	ld	a3, 0x18(a3)
80201230: 9682         	jalr	a3
80201232: 10051863     	bnez	a0, 0x80201342 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
80201236: 6888         	ld	a0, 0x10(s1)
80201238: f8a43823     	sd	a0, -0x70(s0)
8020123c: 0184c603     	lbu	a2, 0x18(s1)
80201240: ff84b583     	ld	a1, -0x8(s1)
80201244: 6088         	ld	a0, 0x0(s1)
80201246: f8c40c23     	sb	a2, -0x68(s0)
8020124a: c18d         	beqz	a1, 0x8020126c <_ZN4core3fmt5write17h0545e85c538fe473E+0xbc>
8020124c: 01859663     	bne	a1, s8, 0x80201258 <_ZN4core3fmt5write17h0545e85c538fe473E+0xa8>
80201250: 0512         	slli	a0, a0, 0x4
80201252: 9552         	add	a0, a0, s4
80201254: 610c         	ld	a1, 0x0(a0)
80201256: c991         	beqz	a1, 0x8020126a <_ZN4core3fmt5write17h0545e85c538fe473E+0xba>
80201258: fe84b603     	ld	a2, -0x18(s1)
8020125c: f6043823     	sd	zero, -0x90(s0)
80201260: f6a43c23     	sd	a0, -0x88(s0)
80201264: 01761d63     	bne	a2, s7, 0x8020127e <_ZN4core3fmt5write17h0545e85c538fe473E+0xce>
80201268: a025         	j	0x80201290 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe0>
8020126a: 6508         	ld	a0, 0x8(a0)
8020126c: 4585         	li	a1, 0x1
8020126e: fe84b603     	ld	a2, -0x18(s1)
80201272: f6b43823     	sd	a1, -0x90(s0)
80201276: f6a43c23     	sd	a0, -0x88(s0)
8020127a: 01760b63     	beq	a2, s7, 0x80201290 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe0>
8020127e: ff04b583     	ld	a1, -0x10(s1)
80201282: 01861a63     	bne	a2, s8, 0x80201296 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe6>
80201286: 00459513     	slli	a0, a1, 0x4
8020128a: 9552         	add	a0, a0, s4
8020128c: 610c         	ld	a1, 0x0(a0)
8020128e: c199         	beqz	a1, 0x80201294 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe4>
80201290: 4601         	li	a2, 0x0
80201292: a019         	j	0x80201298 <_ZN4core3fmt5write17h0545e85c538fe473E+0xe8>
80201294: 650c         	ld	a1, 0x8(a0)
80201296: 4605         	li	a2, 0x1
80201298: 6488         	ld	a0, 0x8(s1)
8020129a: 0512         	slli	a0, a0, 0x4
8020129c: 00aa06b3     	add	a3, s4, a0
802012a0: 6288         	ld	a0, 0x0(a3)
802012a2: 6694         	ld	a3, 0x8(a3)
802012a4: f8c43023     	sd	a2, -0x80(s0)
802012a8: f8b43423     	sd	a1, -0x78(s0)
802012ac: f7040593     	addi	a1, s0, -0x90
802012b0: 9682         	jalr	a3
802012b2: e941         	bnez	a0, 0x80201342 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
802012b4: 0b41         	addi	s6, s6, 0x10
802012b6: fc8a8a93     	addi	s5, s5, -0x38
802012ba: 03848493     	addi	s1, s1, 0x38
802012be: f40a9fe3     	bnez	s5, 0x8020121c <_ZN4core3fmt5write17h0545e85c538fe473E+0x6c>
802012c2: a0b9         	j	0x80201310 <_ZN4core3fmt5write17h0545e85c538fe473E+0x160>
802012c4: 0189b503     	ld	a0, 0x18(s3)
802012c8: c929         	beqz	a0, 0x8020131a <_ZN4core3fmt5write17h0545e85c538fe473E+0x16a>
802012ca: 0109b483     	ld	s1, 0x10(s3)
802012ce: 00451a13     	slli	s4, a0, 0x4
802012d2: 9a26         	add	s4, s4, s1
802012d4: 0009ba83     	ld	s5, 0x0(s3)
802012d8: 157d         	addi	a0, a0, -0x1
802012da: 0512         	slli	a0, a0, 0x4
802012dc: 8111         	srli	a0, a0, 0x4
802012de: 00150913     	addi	s2, a0, 0x1
802012e2: 0aa1         	addi	s5, s5, 0x8
802012e4: 000ab603     	ld	a2, 0x0(s5)
802012e8: ca11         	beqz	a2, 0x802012fc <_ZN4core3fmt5write17h0545e85c538fe473E+0x14c>
802012ea: fa843683     	ld	a3, -0x58(s0)
802012ee: fa043503     	ld	a0, -0x60(s0)
802012f2: ff8ab583     	ld	a1, -0x8(s5)
802012f6: 6e94         	ld	a3, 0x18(a3)
802012f8: 9682         	jalr	a3
802012fa: e521         	bnez	a0, 0x80201342 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
802012fc: 6088         	ld	a0, 0x0(s1)
802012fe: 6490         	ld	a2, 0x8(s1)
80201300: f7040593     	addi	a1, s0, -0x90
80201304: 9602         	jalr	a2
80201306: ed15         	bnez	a0, 0x80201342 <_ZN4core3fmt5write17h0545e85c538fe473E+0x192>
80201308: 04c1         	addi	s1, s1, 0x10
8020130a: 0ac1         	addi	s5, s5, 0x10
8020130c: fd449ce3     	bne	s1, s4, 0x802012e4 <_ZN4core3fmt5write17h0545e85c538fe473E+0x134>
80201310: 0089b503     	ld	a0, 0x8(s3)
80201314: 00a96863     	bltu	s2, a0, 0x80201324 <_ZN4core3fmt5write17h0545e85c538fe473E+0x174>
80201318: a03d         	j	0x80201346 <_ZN4core3fmt5write17h0545e85c538fe473E+0x196>
8020131a: 4901         	li	s2, 0x0
8020131c: 0089b503     	ld	a0, 0x8(s3)
80201320: 02a07363     	bgeu	zero, a0, 0x80201346 <_ZN4core3fmt5write17h0545e85c538fe473E+0x196>
80201324: 0009b503     	ld	a0, 0x0(s3)
80201328: 0912         	slli	s2, s2, 0x4
8020132a: 992a         	add	s2, s2, a0
8020132c: fa843683     	ld	a3, -0x58(s0)
80201330: fa043503     	ld	a0, -0x60(s0)
80201334: 00093583     	ld	a1, 0x0(s2)
80201338: 00893603     	ld	a2, 0x8(s2)
8020133c: 6e94         	ld	a3, 0x18(a3)
8020133e: 9682         	jalr	a3
80201340: c119         	beqz	a0, 0x80201346 <_ZN4core3fmt5write17h0545e85c538fe473E+0x196>
80201342: 4505         	li	a0, 0x1
80201344: a011         	j	0x80201348 <_ZN4core3fmt5write17h0545e85c538fe473E+0x198>
80201346: 4501         	li	a0, 0x0
80201348: 60aa         	ld	ra, 0x88(sp)
8020134a: 640a         	ld	s0, 0x80(sp)
8020134c: 74e6         	ld	s1, 0x78(sp)
8020134e: 7946         	ld	s2, 0x70(sp)
80201350: 79a6         	ld	s3, 0x68(sp)
80201352: 7a06         	ld	s4, 0x60(sp)
80201354: 6ae6         	ld	s5, 0x58(sp)
80201356: 6b46         	ld	s6, 0x50(sp)
80201358: 6ba6         	ld	s7, 0x48(sp)
8020135a: 6c06         	ld	s8, 0x40(sp)
8020135c: 6149         	addi	sp, sp, 0x90
8020135e: 8082         	ret

0000000080201360 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E>:
80201360: 7159         	addi	sp, sp, -0x70
80201362: f486         	sd	ra, 0x68(sp)
80201364: f0a2         	sd	s0, 0x60(sp)
80201366: eca6         	sd	s1, 0x58(sp)
80201368: e8ca         	sd	s2, 0x50(sp)
8020136a: e4ce         	sd	s3, 0x48(sp)
8020136c: e0d2         	sd	s4, 0x40(sp)
8020136e: fc56         	sd	s5, 0x38(sp)
80201370: f85a         	sd	s6, 0x30(sp)
80201372: f45e         	sd	s7, 0x28(sp)
80201374: f062         	sd	s8, 0x20(sp)
80201376: ec66         	sd	s9, 0x18(sp)
80201378: e86a         	sd	s10, 0x10(sp)
8020137a: e46e         	sd	s11, 0x8(sp)
8020137c: 1880         	addi	s0, sp, 0x70
8020137e: 89be         	mv	s3, a5
80201380: 893a         	mv	s2, a4
80201382: 8a36         	mv	s4, a3
80201384: 8b32         	mv	s6, a2
80201386: c5b9         	beqz	a1, 0x802013d4 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x74>
80201388: 02456483     	lwu	s1, 0x24(a0)
8020138c: 0014fc13     	andi	s8, s1, 0x1
80201390: 00110ab7     	lui	s5, 0x110
80201394: 000c0463     	beqz	s8, 0x8020139c <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x3c>
80201398: 02b00a93     	li	s5, 0x2b
8020139c: 9c4e         	add	s8, s8, s3
8020139e: 0044f593     	andi	a1, s1, 0x4
802013a2: c1a9         	beqz	a1, 0x802013e4 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x84>
802013a4: 02000593     	li	a1, 0x20
802013a8: 04ba7263     	bgeu	s4, a1, 0x802013ec <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x8c>
802013ac: 4581         	li	a1, 0x0
802013ae: 000a0f63     	beqz	s4, 0x802013cc <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x6c>
802013b2: 014b0633     	add	a2, s6, s4
802013b6: 86da         	mv	a3, s6
802013b8: 00068703     	lb	a4, 0x0(a3)
802013bc: fc072713     	slti	a4, a4, -0x40
802013c0: 00174713     	xori	a4, a4, 0x1
802013c4: 0685         	addi	a3, a3, 0x1
802013c6: 95ba         	add	a1, a1, a4
802013c8: fec698e3     	bne	a3, a2, 0x802013b8 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x58>
802013cc: 9c2e         	add	s8, s8, a1
802013ce: 610c         	ld	a1, 0x0(a0)
802013d0: c1a5         	beqz	a1, 0x80201430 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
802013d2: a815         	j	0x80201406 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xa6>
802013d4: 5144         	lw	s1, 0x24(a0)
802013d6: 00198c13     	addi	s8, s3, 0x1
802013da: 02d00a93     	li	s5, 0x2d
802013de: 0044f593     	andi	a1, s1, 0x4
802013e2: f1e9         	bnez	a1, 0x802013a4 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x44>
802013e4: 4b01         	li	s6, 0x0
802013e6: 610c         	ld	a1, 0x0(a0)
802013e8: ed99         	bnez	a1, 0x80201406 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xa6>
802013ea: a099         	j	0x80201430 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
802013ec: 8baa         	mv	s7, a0
802013ee: 855a         	mv	a0, s6
802013f0: 85d2         	mv	a1, s4
802013f2: 00000097     	auipc	ra, 0x0
802013f6: 3e6080e7     	jalr	0x3e6(ra) <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE>
802013fa: 85aa         	mv	a1, a0
802013fc: 855e         	mv	a0, s7
802013fe: 9c2e         	add	s8, s8, a1
80201400: 000bb583     	ld	a1, 0x0(s7)
80201404: c595         	beqz	a1, 0x80201430 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
80201406: 00853c83     	ld	s9, 0x8(a0)
8020140a: 039c7363     	bgeu	s8, s9, 0x80201430 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xd0>
8020140e: 88a1         	andi	s1, s1, 0x8
80201410: e0b5         	bnez	s1, 0x80201474 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x114>
80201412: 02854583     	lbu	a1, 0x28(a0)
80201416: 460d         	li	a2, 0x3
80201418: 00c59363     	bne	a1, a2, 0x8020141e <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0xbe>
8020141c: 4585         	li	a1, 0x1
8020141e: 418c8cb3     	sub	s9, s9, s8
80201422: c5d5         	beqz	a1, 0x802014ce <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x16e>
80201424: 4605         	li	a2, 0x1
80201426: 08c59f63     	bne	a1, a2, 0x802014c4 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x164>
8020142a: 85e6         	mv	a1, s9
8020142c: 4c81         	li	s9, 0x0
8020142e: a045         	j	0x802014ce <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x16e>
80201430: 03053b83     	ld	s7, 0x30(a0)
80201434: 7d04         	ld	s1, 0x38(a0)
80201436: 855e         	mv	a0, s7
80201438: 85a6         	mv	a1, s1
8020143a: 8656         	mv	a2, s5
8020143c: 86da         	mv	a3, s6
8020143e: 8752         	mv	a4, s4
80201440: 00000097     	auipc	ra, 0x0
80201444: 144080e7     	jalr	0x144(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>
80201448: 85aa         	mv	a1, a0
8020144a: 4505         	li	a0, 0x1
8020144c: e1d5         	bnez	a1, 0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
8020144e: 6c9c         	ld	a5, 0x18(s1)
80201450: 855e         	mv	a0, s7
80201452: 85ca         	mv	a1, s2
80201454: 864e         	mv	a2, s3
80201456: 70a6         	ld	ra, 0x68(sp)
80201458: 7406         	ld	s0, 0x60(sp)
8020145a: 64e6         	ld	s1, 0x58(sp)
8020145c: 6946         	ld	s2, 0x50(sp)
8020145e: 69a6         	ld	s3, 0x48(sp)
80201460: 6a06         	ld	s4, 0x40(sp)
80201462: 7ae2         	ld	s5, 0x38(sp)
80201464: 7b42         	ld	s6, 0x30(sp)
80201466: 7ba2         	ld	s7, 0x28(sp)
80201468: 7c02         	ld	s8, 0x20(sp)
8020146a: 6ce2         	ld	s9, 0x18(sp)
8020146c: 6d42         	ld	s10, 0x10(sp)
8020146e: 6da2         	ld	s11, 0x8(sp)
80201470: 6165         	addi	sp, sp, 0x70
80201472: 8782         	jr	a5
80201474: 5104         	lw	s1, 0x20(a0)
80201476: 03000593     	li	a1, 0x30
8020147a: 02854603     	lbu	a2, 0x28(a0)
8020147e: f8c43823     	sd	a2, -0x70(s0)
80201482: 03053b83     	ld	s7, 0x30(a0)
80201486: 03853d03     	ld	s10, 0x38(a0)
8020148a: d10c         	sw	a1, 0x20(a0)
8020148c: 4585         	li	a1, 0x1
8020148e: 8daa         	mv	s11, a0
80201490: 02b50423     	sb	a1, 0x28(a0)
80201494: 855e         	mv	a0, s7
80201496: 85ea         	mv	a1, s10
80201498: 8656         	mv	a2, s5
8020149a: 86da         	mv	a3, s6
8020149c: 8752         	mv	a4, s4
8020149e: 00000097     	auipc	ra, 0x0
802014a2: 0e6080e7     	jalr	0xe6(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>
802014a6: e521         	bnez	a0, 0x802014ee <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x18e>
802014a8: 8a26         	mv	s4, s1
802014aa: 418c84b3     	sub	s1, s9, s8
802014ae: 0485         	addi	s1, s1, 0x1
802014b0: 14fd         	addi	s1, s1, -0x1
802014b2: c4cd         	beqz	s1, 0x8020155c <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x1fc>
802014b4: 020d3603     	ld	a2, 0x20(s10)
802014b8: 03000593     	li	a1, 0x30
802014bc: 855e         	mv	a0, s7
802014be: 9602         	jalr	a2
802014c0: d965         	beqz	a0, 0x802014b0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x150>
802014c2: a035         	j	0x802014ee <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x18e>
802014c4: 001cd593     	srli	a1, s9, 0x1
802014c8: 0c85         	addi	s9, s9, 0x1
802014ca: 001cdc93     	srli	s9, s9, 0x1
802014ce: 03053b83     	ld	s7, 0x30(a0)
802014d2: 03853d03     	ld	s10, 0x38(a0)
802014d6: 02052c03     	lw	s8, 0x20(a0)
802014da: 00158493     	addi	s1, a1, 0x1
802014de: 14fd         	addi	s1, s1, -0x1
802014e0: c49d         	beqz	s1, 0x8020150e <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x1ae>
802014e2: 020d3603     	ld	a2, 0x20(s10)
802014e6: 855e         	mv	a0, s7
802014e8: 85e2         	mv	a1, s8
802014ea: 9602         	jalr	a2
802014ec: d96d         	beqz	a0, 0x802014de <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x17e>
802014ee: 4505         	li	a0, 0x1
802014f0: 70a6         	ld	ra, 0x68(sp)
802014f2: 7406         	ld	s0, 0x60(sp)
802014f4: 64e6         	ld	s1, 0x58(sp)
802014f6: 6946         	ld	s2, 0x50(sp)
802014f8: 69a6         	ld	s3, 0x48(sp)
802014fa: 6a06         	ld	s4, 0x40(sp)
802014fc: 7ae2         	ld	s5, 0x38(sp)
802014fe: 7b42         	ld	s6, 0x30(sp)
80201500: 7ba2         	ld	s7, 0x28(sp)
80201502: 7c02         	ld	s8, 0x20(sp)
80201504: 6ce2         	ld	s9, 0x18(sp)
80201506: 6d42         	ld	s10, 0x10(sp)
80201508: 6da2         	ld	s11, 0x8(sp)
8020150a: 6165         	addi	sp, sp, 0x70
8020150c: 8082         	ret
8020150e: 855e         	mv	a0, s7
80201510: 85ea         	mv	a1, s10
80201512: 8656         	mv	a2, s5
80201514: 86da         	mv	a3, s6
80201516: 8752         	mv	a4, s4
80201518: 00000097     	auipc	ra, 0x0
8020151c: 06c080e7     	jalr	0x6c(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>
80201520: 85aa         	mv	a1, a0
80201522: 4505         	li	a0, 0x1
80201524: f5f1         	bnez	a1, 0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
80201526: 018d3683     	ld	a3, 0x18(s10)
8020152a: 855e         	mv	a0, s7
8020152c: 85ca         	mv	a1, s2
8020152e: 864e         	mv	a2, s3
80201530: 9682         	jalr	a3
80201532: 85aa         	mv	a1, a0
80201534: 4505         	li	a0, 0x1
80201536: fdcd         	bnez	a1, 0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
80201538: 41900933     	neg	s2, s9
8020153c: 59fd         	li	s3, -0x1
8020153e: 54fd         	li	s1, -0x1
80201540: 00990533     	add	a0, s2, s1
80201544: 03350d63     	beq	a0, s3, 0x8020157e <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x21e>
80201548: 020d3603     	ld	a2, 0x20(s10)
8020154c: 855e         	mv	a0, s7
8020154e: 85e2         	mv	a1, s8
80201550: 9602         	jalr	a2
80201552: 0485         	addi	s1, s1, 0x1
80201554: d575         	beqz	a0, 0x80201540 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x1e0>
80201556: 0194b533     	sltu	a0, s1, s9
8020155a: bf59         	j	0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
8020155c: 018d3683     	ld	a3, 0x18(s10)
80201560: 855e         	mv	a0, s7
80201562: 85ca         	mv	a1, s2
80201564: 864e         	mv	a2, s3
80201566: 9682         	jalr	a3
80201568: 85aa         	mv	a1, a0
8020156a: 4505         	li	a0, 0x1
8020156c: f1d1         	bnez	a1, 0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
8020156e: 4501         	li	a0, 0x0
80201570: 034da023     	sw	s4, 0x20(s11)
80201574: f9043583     	ld	a1, -0x70(s0)
80201578: 02bd8423     	sb	a1, 0x28(s11)
8020157c: bf95         	j	0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>
8020157e: 019cb533     	sltu	a0, s9, s9
80201582: b7bd         	j	0x802014f0 <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E+0x190>

0000000080201584 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E>:
80201584: 7179         	addi	sp, sp, -0x30
80201586: f406         	sd	ra, 0x28(sp)
80201588: f022         	sd	s0, 0x20(sp)
8020158a: ec26         	sd	s1, 0x18(sp)
8020158c: e84a         	sd	s2, 0x10(sp)
8020158e: e44e         	sd	s3, 0x8(sp)
80201590: e052         	sd	s4, 0x0(sp)
80201592: 1800         	addi	s0, sp, 0x30
80201594: 001107b7     	lui	a5, 0x110
80201598: 893a         	mv	s2, a4
8020159a: 8a36         	mv	s4, a3
8020159c: 89ae         	mv	s3, a1
8020159e: 00f60b63     	beq	a2, a5, 0x802015b4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E+0x30>
802015a2: 0209b683     	ld	a3, 0x20(s3)
802015a6: 84aa         	mv	s1, a0
802015a8: 85b2         	mv	a1, a2
802015aa: 9682         	jalr	a3
802015ac: 862a         	mv	a2, a0
802015ae: 8526         	mv	a0, s1
802015b0: 4585         	li	a1, 0x1
802015b2: e205         	bnez	a2, 0x802015d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E+0x4e>
802015b4: 000a0e63     	beqz	s4, 0x802015d0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb7935c8ee3f8b327E+0x4c>
802015b8: 0189b783     	ld	a5, 0x18(s3)
802015bc: 85d2         	mv	a1, s4
802015be: 864a         	mv	a2, s2
802015c0: 70a2         	ld	ra, 0x28(sp)
802015c2: 7402         	ld	s0, 0x20(sp)
802015c4: 64e2         	ld	s1, 0x18(sp)
802015c6: 6942         	ld	s2, 0x10(sp)
802015c8: 69a2         	ld	s3, 0x8(sp)
802015ca: 6a02         	ld	s4, 0x0(sp)
802015cc: 6145         	addi	sp, sp, 0x30
802015ce: 8782         	jr	a5
802015d0: 4581         	li	a1, 0x0
802015d2: 852e         	mv	a0, a1
802015d4: 70a2         	ld	ra, 0x28(sp)
802015d6: 7402         	ld	s0, 0x20(sp)
802015d8: 64e2         	ld	s1, 0x18(sp)
802015da: 6942         	ld	s2, 0x10(sp)
802015dc: 69a2         	ld	s3, 0x8(sp)
802015de: 6a02         	ld	s4, 0x0(sp)
802015e0: 6145         	addi	sp, sp, 0x30
802015e2: 8082         	ret

00000000802015e4 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E>:
802015e4: 715d         	addi	sp, sp, -0x50
802015e6: e486         	sd	ra, 0x48(sp)
802015e8: e0a2         	sd	s0, 0x40(sp)
802015ea: fc26         	sd	s1, 0x38(sp)
802015ec: f84a         	sd	s2, 0x30(sp)
802015ee: f44e         	sd	s3, 0x28(sp)
802015f0: f052         	sd	s4, 0x20(sp)
802015f2: ec56         	sd	s5, 0x18(sp)
802015f4: e85a         	sd	s6, 0x10(sp)
802015f6: e45e         	sd	s7, 0x8(sp)
802015f8: 0880         	addi	s0, sp, 0x50
802015fa: 6114         	ld	a3, 0x0(a0)
802015fc: 6918         	ld	a4, 0x10(a0)
802015fe: 00e6e7b3     	or	a5, a3, a4
80201602: 8932         	mv	s2, a2
80201604: 89ae         	mv	s3, a1
80201606: 10078163     	beqz	a5, 0x80201708 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x124>
8020160a: 8b05         	andi	a4, a4, 0x1
8020160c: cb51         	beqz	a4, 0x802016a0 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
8020160e: 6d18         	ld	a4, 0x18(a0)
80201610: 01298633     	add	a2, s3, s2
80201614: 4581         	li	a1, 0x0
80201616: c721         	beqz	a4, 0x8020165e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x7a>
80201618: 0e000893     	li	a7, 0xe0
8020161c: 0f000813     	li	a6, 0xf0
80201620: 84ce         	mv	s1, s3
80201622: a809         	j	0x80201634 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x50>
80201624: 00148793     	addi	a5, s1, 0x1
80201628: 8c8d         	sub	s1, s1, a1
8020162a: 177d         	addi	a4, a4, -0x1
8020162c: 409785b3     	sub	a1, a5, s1
80201630: 84be         	mv	s1, a5
80201632: c71d         	beqz	a4, 0x80201660 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x7c>
80201634: 06c48663     	beq	s1, a2, 0x802016a0 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
80201638: 00048783     	lb	a5, 0x0(s1)
8020163c: fe07d4e3     	bgez	a5, 0x80201624 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x40>
80201640: 0ff7f793     	andi	a5, a5, 0xff
80201644: 0117e763     	bltu	a5, a7, 0x80201652 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x6e>
80201648: 0107e863     	bltu	a5, a6, 0x80201658 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x74>
8020164c: 00448793     	addi	a5, s1, 0x4
80201650: bfe1         	j	0x80201628 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x44>
80201652: 00248793     	addi	a5, s1, 0x2
80201656: bfc9         	j	0x80201628 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x44>
80201658: 00348793     	addi	a5, s1, 0x3
8020165c: b7f1         	j	0x80201628 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x44>
8020165e: 87ce         	mv	a5, s3
80201660: 04c78063     	beq	a5, a2, 0x802016a0 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
80201664: 00078603     	lb	a2, 0x0(a5)
80201668: 00065663     	bgez	a2, 0x80201674 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x90>
8020166c: 0ff67613     	andi	a2, a2, 0xff
80201670: 0e000713     	li	a4, 0xe0
80201674: c18d         	beqz	a1, 0x80201696 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xb2>
80201676: 0125fe63     	bgeu	a1, s2, 0x80201692 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xae>
8020167a: 00b98633     	add	a2, s3, a1
8020167e: 00060603     	lb	a2, 0x0(a2)
80201682: fc000713     	li	a4, -0x40
80201686: 00e65863     	bge	a2, a4, 0x80201696 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xb2>
8020168a: 4601         	li	a2, 0x0
8020168c: 00001863     	bnez	zero, 0x8020169c <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xb8>
80201690: a801         	j	0x802016a0 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
80201692: ff259ce3     	bne	a1, s2, 0x8020168a <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xa6>
80201696: 864e         	mv	a2, s3
80201698: 00098463     	beqz	s3, 0x802016a0 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xbc>
8020169c: 892e         	mv	s2, a1
8020169e: 89b2         	mv	s3, a2
802016a0: c6a5         	beqz	a3, 0x80201708 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x124>
802016a2: 6504         	ld	s1, 0x8(a0)
802016a4: 02000593     	li	a1, 0x20
802016a8: 04b97563     	bgeu	s2, a1, 0x802016f2 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x10e>
802016ac: 4581         	li	a1, 0x0
802016ae: 00090f63     	beqz	s2, 0x802016cc <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xe8>
802016b2: 01298633     	add	a2, s3, s2
802016b6: 86ce         	mv	a3, s3
802016b8: 00068703     	lb	a4, 0x0(a3)
802016bc: fc072713     	slti	a4, a4, -0x40
802016c0: 00174713     	xori	a4, a4, 0x1
802016c4: 0685         	addi	a3, a3, 0x1
802016c6: 95ba         	add	a1, a1, a4
802016c8: fec698e3     	bne	a3, a2, 0x802016b8 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xd4>
802016cc: 0295fe63     	bgeu	a1, s1, 0x80201708 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x124>
802016d0: 02854603     	lbu	a2, 0x28(a0)
802016d4: ffd60693     	addi	a3, a2, -0x3
802016d8: 0016b693     	seqz	a3, a3
802016dc: 16fd         	addi	a3, a3, -0x1
802016de: 8e75         	and	a2, a2, a3
802016e0: 40b48ab3     	sub	s5, s1, a1
802016e4: c639         	beqz	a2, 0x80201732 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x14e>
802016e6: 4585         	li	a1, 0x1
802016e8: 04b61063     	bne	a2, a1, 0x80201728 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x144>
802016ec: 8656         	mv	a2, s5
802016ee: 4a81         	li	s5, 0x0
802016f0: a089         	j	0x80201732 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x14e>
802016f2: 8a2a         	mv	s4, a0
802016f4: 854e         	mv	a0, s3
802016f6: 85ca         	mv	a1, s2
802016f8: 00000097     	auipc	ra, 0x0
802016fc: 0e0080e7     	jalr	0xe0(ra) <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE>
80201700: 85aa         	mv	a1, a0
80201702: 8552         	mv	a0, s4
80201704: fc95e6e3     	bltu	a1, s1, 0x802016d0 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0xec>
80201708: 7d0c         	ld	a1, 0x38(a0)
8020170a: 7908         	ld	a0, 0x30(a0)
8020170c: 6d9c         	ld	a5, 0x18(a1)
8020170e: 85ce         	mv	a1, s3
80201710: 864a         	mv	a2, s2
80201712: 60a6         	ld	ra, 0x48(sp)
80201714: 6406         	ld	s0, 0x40(sp)
80201716: 74e2         	ld	s1, 0x38(sp)
80201718: 7942         	ld	s2, 0x30(sp)
8020171a: 79a2         	ld	s3, 0x28(sp)
8020171c: 7a02         	ld	s4, 0x20(sp)
8020171e: 6ae2         	ld	s5, 0x18(sp)
80201720: 6b42         	ld	s6, 0x10(sp)
80201722: 6ba2         	ld	s7, 0x8(sp)
80201724: 6161         	addi	sp, sp, 0x50
80201726: 8782         	jr	a5
80201728: 001ad613     	srli	a2, s5, 0x1
8020172c: 0a85         	addi	s5, s5, 0x1
8020172e: 001ada93     	srli	s5, s5, 0x1
80201732: 03053a03     	ld	s4, 0x30(a0)
80201736: 03853b83     	ld	s7, 0x38(a0)
8020173a: 02052b03     	lw	s6, 0x20(a0)
8020173e: 00160493     	addi	s1, a2, 0x1
80201742: 14fd         	addi	s1, s1, -0x1
80201744: c889         	beqz	s1, 0x80201756 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x172>
80201746: 020bb603     	ld	a2, 0x20(s7)
8020174a: 8552         	mv	a0, s4
8020174c: 85da         	mv	a1, s6
8020174e: 9602         	jalr	a2
80201750: d96d         	beqz	a0, 0x80201742 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x15e>
80201752: 4505         	li	a0, 0x1
80201754: a82d         	j	0x8020178e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1aa>
80201756: 018bb683     	ld	a3, 0x18(s7)
8020175a: 8552         	mv	a0, s4
8020175c: 85ce         	mv	a1, s3
8020175e: 864a         	mv	a2, s2
80201760: 9682         	jalr	a3
80201762: 85aa         	mv	a1, a0
80201764: 4505         	li	a0, 0x1
80201766: e585         	bnez	a1, 0x8020178e <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1aa>
80201768: 41500933     	neg	s2, s5
8020176c: 59fd         	li	s3, -0x1
8020176e: 54fd         	li	s1, -0x1
80201770: 00990533     	add	a0, s2, s1
80201774: 01350a63     	beq	a0, s3, 0x80201788 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1a4>
80201778: 020bb603     	ld	a2, 0x20(s7)
8020177c: 8552         	mv	a0, s4
8020177e: 85da         	mv	a1, s6
80201780: 9602         	jalr	a2
80201782: 0485         	addi	s1, s1, 0x1
80201784: d575         	beqz	a0, 0x80201770 <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x18c>
80201786: a011         	j	0x8020178a <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E+0x1a6>
80201788: 84d6         	mv	s1, s5
8020178a: 0154b533     	sltu	a0, s1, s5
8020178e: 60a6         	ld	ra, 0x48(sp)
80201790: 6406         	ld	s0, 0x40(sp)
80201792: 74e2         	ld	s1, 0x38(sp)
80201794: 7942         	ld	s2, 0x30(sp)
80201796: 79a2         	ld	s3, 0x28(sp)
80201798: 7a02         	ld	s4, 0x20(sp)
8020179a: 6ae2         	ld	s5, 0x18(sp)
8020179c: 6b42         	ld	s6, 0x10(sp)
8020179e: 6ba2         	ld	s7, 0x8(sp)
802017a0: 6161         	addi	sp, sp, 0x50
802017a2: 8082         	ret

00000000802017a4 <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h1dc9abc2d2ed6cceE>:
802017a4: 1141         	addi	sp, sp, -0x10
802017a6: e406         	sd	ra, 0x8(sp)
802017a8: e022         	sd	s0, 0x0(sp)
802017aa: 0800         	addi	s0, sp, 0x10
802017ac: 7d14         	ld	a3, 0x38(a0)
802017ae: 7908         	ld	a0, 0x30(a0)
802017b0: 6e9c         	ld	a5, 0x18(a3)
802017b2: 60a2         	ld	ra, 0x8(sp)
802017b4: 6402         	ld	s0, 0x0(sp)
802017b6: 0141         	addi	sp, sp, 0x10
802017b8: 8782         	jr	a5

00000000802017ba <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1c6bf3111fb4e387E>:
802017ba: 1141         	addi	sp, sp, -0x10
802017bc: e406         	sd	ra, 0x8(sp)
802017be: e022         	sd	s0, 0x0(sp)
802017c0: 0800         	addi	s0, sp, 0x10
802017c2: 86ae         	mv	a3, a1
802017c4: 85aa         	mv	a1, a0
802017c6: 8532         	mv	a0, a2
802017c8: 8636         	mv	a2, a3
802017ca: 60a2         	ld	ra, 0x8(sp)
802017cc: 6402         	ld	s0, 0x0(sp)
802017ce: 0141         	addi	sp, sp, 0x10
802017d0: 00000317     	auipc	t1, 0x0
802017d4: e1430067     	jr	-0x1ec(t1) <_ZN4core3fmt9Formatter3pad17h601e0c1a15193b14E>

00000000802017d8 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE>:
802017d8: 1141         	addi	sp, sp, -0x10
802017da: e406         	sd	ra, 0x8(sp)
802017dc: e022         	sd	s0, 0x0(sp)
802017de: 0800         	addi	s0, sp, 0x10
802017e0: 862a         	mv	a2, a0
802017e2: 00750793     	addi	a5, a0, 0x7
802017e6: 9be1         	andi	a5, a5, -0x8
802017e8: 40a786b3     	sub	a3, a5, a0
802017ec: 02d5f363     	bgeu	a1, a3, 0x80201812 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x3a>
802017f0: 4501         	li	a0, 0x0
802017f2: cd81         	beqz	a1, 0x8020180a <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x32>
802017f4: 95b2         	add	a1, a1, a2
802017f6: 00060683     	lb	a3, 0x0(a2)
802017fa: fc06a693     	slti	a3, a3, -0x40
802017fe: 0016c693     	xori	a3, a3, 0x1
80201802: 0605         	addi	a2, a2, 0x1
80201804: 9536         	add	a0, a0, a3
80201806: feb618e3     	bne	a2, a1, 0x802017f6 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x1e>
8020180a: 60a2         	ld	ra, 0x8(sp)
8020180c: 6402         	ld	s0, 0x0(sp)
8020180e: 0141         	addi	sp, sp, 0x10
80201810: 8082         	ret
80201812: 40d58733     	sub	a4, a1, a3
80201816: 00375313     	srli	t1, a4, 0x3
8020181a: fc030be3     	beqz	t1, 0x802017f0 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x18>
8020181e: 96b2         	add	a3, a3, a2
80201820: 00777813     	andi	a6, a4, 0x7
80201824: 4501         	li	a0, 0x0
80201826: 00c78c63     	beq	a5, a2, 0x8020183e <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x66>
8020182a: 00060583     	lb	a1, 0x0(a2)
8020182e: fc05a593     	slti	a1, a1, -0x40
80201832: 0015c593     	xori	a1, a1, 0x1
80201836: 0605         	addi	a2, a2, 0x1
80201838: 952e         	add	a0, a0, a1
8020183a: fed618e3     	bne	a2, a3, 0x8020182a <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x52>
8020183e: 4601         	li	a2, 0x0
80201840: 02080263     	beqz	a6, 0x80201864 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x8c>
80201844: ff877593     	andi	a1, a4, -0x8
80201848: 00b68733     	add	a4, a3, a1
8020184c: 95be         	add	a1, a1, a5
8020184e: 95c2         	add	a1, a1, a6
80201850: 00070783     	lb	a5, 0x0(a4)
80201854: fc07a793     	slti	a5, a5, -0x40
80201858: 0017c793     	xori	a5, a5, 0x1
8020185c: 0705         	addi	a4, a4, 0x1
8020185e: 963e         	add	a2, a2, a5
80201860: feb718e3     	bne	a4, a1, 0x80201850 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x78>
80201864: 010105b7     	lui	a1, 0x1010
80201868: 1015859b     	addiw	a1, a1, 0x101
8020186c: 02059713     	slli	a4, a1, 0x20
80201870: 00e58fb3     	add	t6, a1, a4
80201874: 00ff0737     	lui	a4, 0xff0
80201878: 0ff7089b     	addiw	a7, a4, 0xff
8020187c: 02089713     	slli	a4, a7, 0x20
80201880: 98ba         	add	a7, a7, a4
80201882: 6741         	lui	a4, 0x10
80201884: 2705         	addiw	a4, a4, 0x1
80201886: 02071813     	slli	a6, a4, 0x20
8020188a: 983a         	add	a6, a6, a4
8020188c: 9532         	add	a0, a0, a2
8020188e: 4291         	li	t0, 0x4
80201890: a015         	j	0x802018b4 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xdc>
80201892: 006e06b3     	add	a3, t3, t1
80201896: 407e8333     	sub	t1, t4, t2
8020189a: 0033f593     	andi	a1, t2, 0x3
8020189e: 0117f633     	and	a2, a5, a7
802018a2: 83a1         	srli	a5, a5, 0x8
802018a4: 0117f733     	and	a4, a5, a7
802018a8: 963a         	add	a2, a2, a4
802018aa: 03060633     	mul	a2, a2, a6
802018ae: 9241         	srli	a2, a2, 0x30
802018b0: 9532         	add	a0, a0, a2
802018b2: edbd         	bnez	a1, 0x80201930 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x158>
802018b4: f4030be3     	beqz	t1, 0x8020180a <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x32>
802018b8: 8e9a         	mv	t4, t1
802018ba: 8e36         	mv	t3, a3
802018bc: 0c000613     	li	a2, 0xc0
802018c0: 839a         	mv	t2, t1
802018c2: 00c36463     	bltu	t1, a2, 0x802018ca <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xf2>
802018c6: 0c000393     	li	t2, 0xc0
802018ca: 00339313     	slli	t1, t2, 0x3
802018ce: 4781         	li	a5, 0x0
802018d0: fc5ee1e3     	bltu	t4, t0, 0x80201892 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xba>
802018d4: 7e037613     	andi	a2, t1, 0x7e0
802018d8: 00ce0f33     	add	t5, t3, a2
802018dc: 86f2         	mv	a3, t3
802018de: 6298         	ld	a4, 0x0(a3)
802018e0: fff74613     	not	a2, a4
802018e4: 821d         	srli	a2, a2, 0x7
802018e6: 8319         	srli	a4, a4, 0x6
802018e8: 668c         	ld	a1, 0x8(a3)
802018ea: 8e59         	or	a2, a2, a4
802018ec: 01f67633     	and	a2, a2, t6
802018f0: 963e         	add	a2, a2, a5
802018f2: fff5c713     	not	a4, a1
802018f6: 831d         	srli	a4, a4, 0x7
802018f8: 6a9c         	ld	a5, 0x10(a3)
802018fa: 8199         	srli	a1, a1, 0x6
802018fc: 8dd9         	or	a1, a1, a4
802018fe: 01f5f5b3     	and	a1, a1, t6
80201902: fff7c713     	not	a4, a5
80201906: 831d         	srli	a4, a4, 0x7
80201908: 8399         	srli	a5, a5, 0x6
8020190a: 8f5d         	or	a4, a4, a5
8020190c: 6e9c         	ld	a5, 0x18(a3)
8020190e: 01f77733     	and	a4, a4, t6
80201912: 95ba         	add	a1, a1, a4
80201914: 95b2         	add	a1, a1, a2
80201916: fff7c613     	not	a2, a5
8020191a: 821d         	srli	a2, a2, 0x7
8020191c: 8399         	srli	a5, a5, 0x6
8020191e: 8e5d         	or	a2, a2, a5
80201920: 01f677b3     	and	a5, a2, t6
80201924: 02068693     	addi	a3, a3, 0x20
80201928: 97ae         	add	a5, a5, a1
8020192a: fbe69ae3     	bne	a3, t5, 0x802018de <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x106>
8020192e: b795         	j	0x80201892 <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0xba>
80201930: 4601         	li	a2, 0x0
80201932: 0fc3f593     	andi	a1, t2, 0xfc
80201936: 058e         	slli	a1, a1, 0x3
80201938: 9e2e         	add	t3, t3, a1
8020193a: 0c0eb593     	sltiu	a1, t4, 0xc0
8020193e: 40b005bb     	negw	a1, a1
80201942: 00bef5b3     	and	a1, t4, a1
80201946: 898d         	andi	a1, a1, 0x3
80201948: 00359693     	slli	a3, a1, 0x3
8020194c: 000e3583     	ld	a1, 0x0(t3)
80201950: 0e21         	addi	t3, t3, 0x8
80201952: fff5c713     	not	a4, a1
80201956: 831d         	srli	a4, a4, 0x7
80201958: 8199         	srli	a1, a1, 0x6
8020195a: 8dd9         	or	a1, a1, a4
8020195c: 01f5f5b3     	and	a1, a1, t6
80201960: 16e1         	addi	a3, a3, -0x8
80201962: 962e         	add	a2, a2, a1
80201964: f6e5         	bnez	a3, 0x8020194c <_ZN4core3str5count14do_count_chars17h10048e06a3c8ed6aE+0x174>
80201966: 011675b3     	and	a1, a2, a7
8020196a: 8221         	srli	a2, a2, 0x8
8020196c: 01167633     	and	a2, a2, a7
80201970: 95b2         	add	a1, a1, a2
80201972: 030585b3     	mul	a1, a1, a6
80201976: 91c1         	srli	a1, a1, 0x30
80201978: 952e         	add	a0, a0, a1
8020197a: 60a2         	ld	ra, 0x8(sp)
8020197c: 6402         	ld	s0, 0x0(sp)
8020197e: 0141         	addi	sp, sp, 0x10
80201980: 8082         	ret

0000000080201982 <_ZN4core4char7methods15encode_utf8_raw8do_panic7runtime17hf2c5d4a1246995f1E>:
80201982: 7169         	addi	sp, sp, -0x130
80201984: f606         	sd	ra, 0x128(sp)
80201986: f222         	sd	s0, 0x120(sp)
80201988: 1a00         	addi	s0, sp, 0x130
8020198a: eca42a23     	sw	a0, -0x12c(s0)
8020198e: ecb43c23     	sd	a1, -0x128(s0)
80201992: eec43023     	sd	a2, -0x120(s0)
80201996: ed840513     	addi	a0, s0, -0x128
8020199a: f0a43c23     	sd	a0, -0xe8(s0)

000000008020199e <.Lpcrel_hi901>:
8020199e: 00000517     	auipc	a0, 0x0
802019a2: 2c450513     	addi	a0, a0, 0x2c4
802019a6: f2a43023     	sd	a0, -0xe0(s0)
802019aa: ed440593     	addi	a1, s0, -0x12c
802019ae: f2b43423     	sd	a1, -0xd8(s0)

00000000802019b2 <.Lpcrel_hi902>:
802019b2: 00000597     	auipc	a1, 0x0
802019b6: 0d658593     	addi	a1, a1, 0xd6
802019ba: f2b43823     	sd	a1, -0xd0(s0)
802019be: ee040593     	addi	a1, s0, -0x120
802019c2: f2b43c23     	sd	a1, -0xc8(s0)
802019c6: f4a43023     	sd	a0, -0xc0(s0)
802019ca: 4509         	li	a0, 0x2
802019cc: f4a43423     	sd	a0, -0xb8(s0)
802019d0: f4a43c23     	sd	a0, -0xa8(s0)
802019d4: f6043423     	sd	zero, -0x98(s0)
802019d8: 02000593     	li	a1, 0x20
802019dc: f6b43823     	sd	a1, -0x90(s0)
802019e0: 460d         	li	a2, 0x3
802019e2: f6c40c23     	sb	a2, -0x88(s0)
802019e6: f8a43023     	sd	a0, -0x80(s0)
802019ea: f8043823     	sd	zero, -0x70(s0)
802019ee: 4711         	li	a4, 0x4
802019f0: f8e43c23     	sd	a4, -0x68(s0)
802019f4: 4705         	li	a4, 0x1
802019f6: fae43023     	sd	a4, -0x60(s0)
802019fa: 170e         	slli	a4, a4, 0x23
802019fc: 02070713     	addi	a4, a4, 0x20
80201a00: fae43423     	sd	a4, -0x58(s0)
80201a04: fac40823     	sb	a2, -0x50(s0)
80201a08: faa43c23     	sd	a0, -0x48(s0)
80201a0c: fca43423     	sd	a0, -0x38(s0)
80201a10: fca43c23     	sd	a0, -0x28(s0)
80201a14: feb43023     	sd	a1, -0x20(s0)
80201a18: fec40423     	sb	a2, -0x18(s0)

0000000080201a1c <.Lpcrel_hi903>:
80201a1c: 00001517     	auipc	a0, 0x1
80201a20: a1450513     	addi	a0, a0, -0x5ec
80201a24: eea43423     	sd	a0, -0x118(s0)
80201a28: eec43823     	sd	a2, -0x110(s0)
80201a2c: f4840513     	addi	a0, s0, -0xb8
80201a30: f0a43423     	sd	a0, -0xf8(s0)
80201a34: f0c43823     	sd	a2, -0xf0(s0)
80201a38: f1840513     	addi	a0, s0, -0xe8
80201a3c: eea43c23     	sd	a0, -0x108(s0)
80201a40: f0c43023     	sd	a2, -0x100(s0)
80201a44: ee840513     	addi	a0, s0, -0x118
80201a48: 85b6         	mv	a1, a3
80201a4a: fffff097     	auipc	ra, 0xfffff
80201a4e: 60c080e7     	jalr	0x60c(ra) <sbss+0xfffee056>

0000000080201a52 <_ZN4core9panicking11panic_const23panic_const_div_by_zero17h6bb92d78609f04c7E>:
80201a52: 7139         	addi	sp, sp, -0x40
80201a54: fc06         	sd	ra, 0x38(sp)
80201a56: f822         	sd	s0, 0x30(sp)
80201a58: 0080         	addi	s0, sp, 0x40
80201a5a: 85aa         	mv	a1, a0

0000000080201a5c <.Lpcrel_hi915>:
80201a5c: 00001517     	auipc	a0, 0x1
80201a60: a2450513     	addi	a0, a0, -0x5dc
80201a64: fca43023     	sd	a0, -0x40(s0)
80201a68: 4505         	li	a0, 0x1
80201a6a: fca43423     	sd	a0, -0x38(s0)
80201a6e: fe043023     	sd	zero, -0x20(s0)
80201a72: 4521         	li	a0, 0x8
80201a74: fca43823     	sd	a0, -0x30(s0)
80201a78: fc043c23     	sd	zero, -0x28(s0)
80201a7c: fc040513     	addi	a0, s0, -0x40
80201a80: fffff097     	auipc	ra, 0xfffff
80201a84: 5d6080e7     	jalr	0x5d6(ra) <sbss+0xfffee056>

0000000080201a88 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E>:
80201a88: 7175         	addi	sp, sp, -0x90
80201a8a: e506         	sd	ra, 0x88(sp)
80201a8c: e122         	sd	s0, 0x80(sp)
80201a8e: 0900         	addi	s0, sp, 0x90
80201a90: 4110         	lw	a2, 0x0(a0)
80201a92: 852e         	mv	a0, a1
80201a94: 4781         	li	a5, 0x0
80201a96: fef40593     	addi	a1, s0, -0x11
80201a9a: 46a9         	li	a3, 0xa
80201a9c: a811         	j	0x80201ab0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x28>
80201a9e: 03770713     	addi	a4, a4, 0x37
80201aa2: 0046561b     	srliw	a2, a2, 0x4
80201aa6: 00e58023     	sb	a4, 0x0(a1)
80201aaa: 0785         	addi	a5, a5, 0x1
80201aac: 15fd         	addi	a1, a1, -0x1
80201aae: ca01         	beqz	a2, 0x80201abe <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x36>
80201ab0: 00f67713     	andi	a4, a2, 0xf
80201ab4: fed775e3     	bgeu	a4, a3, 0x80201a9e <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x16>
80201ab8: 03070713     	addi	a4, a4, 0x30
80201abc: b7dd         	j	0x80201aa2 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h67f01f15db0825e6E+0x1a>
80201abe: f7040593     	addi	a1, s0, -0x90
80201ac2: 8d9d         	sub	a1, a1, a5
80201ac4: 08058713     	addi	a4, a1, 0x80

0000000080201ac8 <.Lpcrel_hi986>:
80201ac8: 00001597     	auipc	a1, 0x1
80201acc: 86058613     	addi	a2, a1, -0x7a0
80201ad0: 4585         	li	a1, 0x1
80201ad2: 4689         	li	a3, 0x2
80201ad4: 00000097     	auipc	ra, 0x0
80201ad8: 88c080e7     	jalr	-0x774(ra) <_ZN4core3fmt9Formatter12pad_integral17h08eddc1554efab46E>
80201adc: 60aa         	ld	ra, 0x88(sp)
80201ade: 640a         	ld	s0, 0x80(sp)
80201ae0: 6149         	addi	sp, sp, 0x90
80201ae2: 8082         	ret

0000000080201ae4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h7de6f4822c43ab60E>:
80201ae4: 1141         	addi	sp, sp, -0x10
80201ae6: e406         	sd	ra, 0x8(sp)
80201ae8: e022         	sd	s0, 0x0(sp)
80201aea: 0800         	addi	s0, sp, 0x10
80201aec: 4108         	lw	a0, 0x0(a0)
80201aee: 862e         	mv	a2, a1
80201af0: 4585         	li	a1, 0x1
80201af2: 60a2         	ld	ra, 0x8(sp)
80201af4: 6402         	ld	s0, 0x0(sp)
80201af6: 0141         	addi	sp, sp, 0x10
80201af8: 00000317     	auipc	t1, 0x0
80201afc: 00830067     	jr	0x8(t1) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17ha87a78a900817107E>

0000000080201b00 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17ha87a78a900817107E>:
80201b00: 7179         	addi	sp, sp, -0x30
80201b02: f406         	sd	ra, 0x28(sp)
80201b04: f022         	sd	s0, 0x20(sp)
80201b06: ec26         	sd	s1, 0x18(sp)
80201b08: e84a         	sd	s2, 0x10(sp)
80201b0a: 1800         	addi	s0, sp, 0x30
80201b0c: 8832         	mv	a6, a2
80201b0e: 0045569b     	srliw	a3, a0, 0x4
80201b12: 4729         	li	a4, 0xa
80201b14: 27100793     	li	a5, 0x271

0000000080201b18 <.Lpcrel_hi1011>:
80201b18: 00001617     	auipc	a2, 0x1
80201b1c: 81260e93     	addi	t4, a2, -0x7ee
80201b20: 02f6f363     	bgeu	a3, a5, 0x80201b46 <.Lpcrel_hi1011+0x2e>
80201b24: 06300693     	li	a3, 0x63
80201b28: 0aa6eb63     	bltu	a3, a0, 0x80201bde <.Lpcrel_hi1011+0xc6>
80201b2c: 4629         	li	a2, 0xa
80201b2e: 0ec57963     	bgeu	a0, a2, 0x80201c20 <.Lpcrel_hi1011+0x108>
80201b32: fff70693     	addi	a3, a4, -0x1
80201b36: fd640613     	addi	a2, s0, -0x2a
80201b3a: 9636         	add	a2, a2, a3
80201b3c: 03056513     	ori	a0, a0, 0x30
80201b40: 00a60023     	sb	a0, 0x0(a2)
80201b44: a8ed         	j	0x80201c3e <.Lpcrel_hi1011+0x126>
80201b46: 4701         	li	a4, 0x0
80201b48: fdc40893     	addi	a7, s0, -0x24
80201b4c: fde40293     	addi	t0, s0, -0x22
80201b50: d1b716b7     	lui	a3, 0xd1b71
80201b54: 75968313     	addi	t1, a3, 0x759
80201b58: 1302         	slli	t1, t1, 0x20
80201b5a: 6689         	lui	a3, 0x2
80201b5c: 71068e13     	addi	t3, a3, 0x710
80201b60: 6685         	lui	a3, 0x1
80201b62: 47b68f1b     	addiw	t5, a3, 0x47b
80201b66: 06400393     	li	t2, 0x64
80201b6a: 05f5e6b7     	lui	a3, 0x5f5e
80201b6e: 0ff68f9b     	addiw	t6, a3, 0xff
80201b72: 892a         	mv	s2, a0
80201b74: 1502         	slli	a0, a0, 0x20
80201b76: 02653533     	mulhu	a0, a0, t1
80201b7a: 9135         	srli	a0, a0, 0x2d
80201b7c: 03c507b3     	mul	a5, a0, t3
80201b80: 40f9063b     	subw	a2, s2, a5
80201b84: 03061793     	slli	a5, a2, 0x30
80201b88: 93c9         	srli	a5, a5, 0x32
80201b8a: 03e787b3     	mul	a5, a5, t5
80201b8e: 0117d493     	srli	s1, a5, 0x11
80201b92: 83c1         	srli	a5, a5, 0x10
80201b94: 7fe7f793     	andi	a5, a5, 0x7fe
80201b98: 027484b3     	mul	s1, s1, t2
80201b9c: 9e05         	subw	a2, a2, s1
80201b9e: 1646         	slli	a2, a2, 0x31
80201ba0: 97f6         	add	a5, a5, t4
80201ba2: 0017c483     	lbu	s1, 0x1(a5)
80201ba6: 9241         	srli	a2, a2, 0x30
80201ba8: 00e886b3     	add	a3, a7, a4
80201bac: 0007c783     	lbu	a5, 0x0(a5)
80201bb0: 009680a3     	sb	s1, 0x1(a3)
80201bb4: 9676         	add	a2, a2, t4
80201bb6: 00164483     	lbu	s1, 0x1(a2)
80201bba: 00064603     	lbu	a2, 0x0(a2)
80201bbe: 00f68023     	sb	a5, 0x0(a3)
80201bc2: 00e286b3     	add	a3, t0, a4
80201bc6: 009680a3     	sb	s1, 0x1(a3)
80201bca: 00c68023     	sb	a2, 0x0(a3)
80201bce: 1771         	addi	a4, a4, -0x4
80201bd0: fb2fe1e3     	bltu	t6, s2, 0x80201b72 <.Lpcrel_hi1011+0x5a>
80201bd4: 0729         	addi	a4, a4, 0xa
80201bd6: 06300693     	li	a3, 0x63
80201bda: f4a6f9e3     	bgeu	a3, a0, 0x80201b2c <.Lpcrel_hi1011+0x14>
80201bde: 03051613     	slli	a2, a0, 0x30
80201be2: 9249         	srli	a2, a2, 0x32
80201be4: 6685         	lui	a3, 0x1
80201be6: 47b6869b     	addiw	a3, a3, 0x47b
80201bea: 02d60633     	mul	a2, a2, a3
80201bee: 8245         	srli	a2, a2, 0x11
80201bf0: 06400693     	li	a3, 0x64
80201bf4: 02d606b3     	mul	a3, a2, a3
80201bf8: 9d15         	subw	a0, a0, a3
80201bfa: 1546         	slli	a0, a0, 0x31
80201bfc: 9141         	srli	a0, a0, 0x30
80201bfe: 1779         	addi	a4, a4, -0x2
80201c00: 9576         	add	a0, a0, t4
80201c02: 00154683     	lbu	a3, 0x1(a0)
80201c06: 00054503     	lbu	a0, 0x0(a0)
80201c0a: fd640793     	addi	a5, s0, -0x2a
80201c0e: 97ba         	add	a5, a5, a4
80201c10: 00d780a3     	sb	a3, 0x1(a5)
80201c14: 00a78023     	sb	a0, 0x0(a5)
80201c18: 8532         	mv	a0, a2
80201c1a: 4629         	li	a2, 0xa
80201c1c: f0c56be3     	bltu	a0, a2, 0x80201b32 <.Lpcrel_hi1011+0x1a>
80201c20: 0506         	slli	a0, a0, 0x1
80201c22: ffe70693     	addi	a3, a4, -0x2
80201c26: 9576         	add	a0, a0, t4
80201c28: 00154603     	lbu	a2, 0x1(a0)
80201c2c: 00054503     	lbu	a0, 0x0(a0)
80201c30: fd640713     	addi	a4, s0, -0x2a
80201c34: 9736         	add	a4, a4, a3
80201c36: 00c700a3     	sb	a2, 0x1(a4)
80201c3a: 00a70023     	sb	a0, 0x0(a4)
80201c3e: fd640713     	addi	a4, s0, -0x2a
80201c42: 9736         	add	a4, a4, a3
80201c44: 47a9         	li	a5, 0xa
80201c46: 8f95         	sub	a5, a5, a3
80201c48: 4605         	li	a2, 0x1
80201c4a: 8542         	mv	a0, a6
80201c4c: 4681         	li	a3, 0x0
80201c4e: fffff097     	auipc	ra, 0xfffff
80201c52: 712080e7     	jalr	0x712(ra) <sbss+0xfffee360>
80201c56: 70a2         	ld	ra, 0x28(sp)
80201c58: 7402         	ld	s0, 0x20(sp)
80201c5a: 64e2         	ld	s1, 0x18(sp)
80201c5c: 6942         	ld	s2, 0x10(sp)
80201c5e: 6145         	addi	sp, sp, 0x30
80201c60: 8082         	ret

0000000080201c62 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h897181c23e5bde9dE>:
80201c62: 1141         	addi	sp, sp, -0x10
80201c64: e406         	sd	ra, 0x8(sp)
80201c66: e022         	sd	s0, 0x0(sp)
80201c68: 0800         	addi	s0, sp, 0x10
80201c6a: 6108         	ld	a0, 0x0(a0)
80201c6c: 862e         	mv	a2, a1
80201c6e: 4585         	li	a1, 0x1
80201c70: 60a2         	ld	ra, 0x8(sp)
80201c72: 6402         	ld	s0, 0x0(sp)
80201c74: 0141         	addi	sp, sp, 0x10
80201c76: 00000317     	auipc	t1, 0x0
80201c7a: 00830067     	jr	0x8(t1) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h3ada4c97fe073d86E>

0000000080201c7e <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h3ada4c97fe073d86E>:
80201c7e: 7139         	addi	sp, sp, -0x40
80201c80: fc06         	sd	ra, 0x38(sp)
80201c82: f822         	sd	s0, 0x30(sp)
80201c84: f426         	sd	s1, 0x28(sp)
80201c86: f04a         	sd	s2, 0x20(sp)
80201c88: 0080         	addi	s0, sp, 0x40
80201c8a: 8832         	mv	a6, a2
80201c8c: 00455693     	srli	a3, a0, 0x4
80201c90: 4751         	li	a4, 0x14
80201c92: 27100793     	li	a5, 0x271

0000000080201c96 <.Lpcrel_hi1012>:
80201c96: 00000617     	auipc	a2, 0x0
80201c9a: 69460e93     	addi	t4, a2, 0x694
80201c9e: 02f6f363     	bgeu	a3, a5, 0x80201cc4 <.Lpcrel_hi1012+0x2e>
80201ca2: 06300693     	li	a3, 0x63
80201ca6: 0aa6e963     	bltu	a3, a0, 0x80201d58 <.Lpcrel_hi1013+0x8a>
80201caa: 4629         	li	a2, 0xa
80201cac: 0ec57763     	bgeu	a0, a2, 0x80201d9a <.Lpcrel_hi1013+0xcc>
80201cb0: fff70693     	addi	a3, a4, -0x1
80201cb4: fcc40613     	addi	a2, s0, -0x34
80201cb8: 9636         	add	a2, a2, a3
80201cba: 03056513     	ori	a0, a0, 0x30
80201cbe: 00a60023     	sb	a0, 0x0(a2)
80201cc2: a8dd         	j	0x80201db8 <.Lpcrel_hi1013+0xea>
80201cc4: 4701         	li	a4, 0x0
80201cc6: fdc40893     	addi	a7, s0, -0x24
80201cca: fde40293     	addi	t0, s0, -0x22

0000000080201cce <.Lpcrel_hi1013>:
80201cce: 00000697     	auipc	a3, 0x0
80201cd2: 3426b303     	ld	t1, 0x342(a3)
80201cd6: 6689         	lui	a3, 0x2
80201cd8: 71068e13     	addi	t3, a3, 0x710
80201cdc: 6685         	lui	a3, 0x1
80201cde: 47b68f1b     	addiw	t5, a3, 0x47b
80201ce2: 06400393     	li	t2, 0x64
80201ce6: 05f5e6b7     	lui	a3, 0x5f5e
80201cea: 0ff68f9b     	addiw	t6, a3, 0xff
80201cee: 892a         	mv	s2, a0
80201cf0: 02653533     	mulhu	a0, a0, t1
80201cf4: 812d         	srli	a0, a0, 0xb
80201cf6: 03c507b3     	mul	a5, a0, t3
80201cfa: 40f9063b     	subw	a2, s2, a5
80201cfe: 03061793     	slli	a5, a2, 0x30
80201d02: 93c9         	srli	a5, a5, 0x32
80201d04: 03e787b3     	mul	a5, a5, t5
80201d08: 0117d493     	srli	s1, a5, 0x11
80201d0c: 83c1         	srli	a5, a5, 0x10
80201d0e: 7fe7f793     	andi	a5, a5, 0x7fe
80201d12: 027484b3     	mul	s1, s1, t2
80201d16: 9e05         	subw	a2, a2, s1
80201d18: 1646         	slli	a2, a2, 0x31
80201d1a: 97f6         	add	a5, a5, t4
80201d1c: 0017c483     	lbu	s1, 0x1(a5)
80201d20: 9241         	srli	a2, a2, 0x30
80201d22: 00e886b3     	add	a3, a7, a4
80201d26: 0007c783     	lbu	a5, 0x0(a5)
80201d2a: 009680a3     	sb	s1, 0x1(a3)
80201d2e: 9676         	add	a2, a2, t4
80201d30: 00164483     	lbu	s1, 0x1(a2)
80201d34: 00064603     	lbu	a2, 0x0(a2)
80201d38: 00f68023     	sb	a5, 0x0(a3)
80201d3c: 00e286b3     	add	a3, t0, a4
80201d40: 009680a3     	sb	s1, 0x1(a3)
80201d44: 00c68023     	sb	a2, 0x0(a3)
80201d48: 1771         	addi	a4, a4, -0x4
80201d4a: fb2fe2e3     	bltu	t6, s2, 0x80201cee <.Lpcrel_hi1013+0x20>
80201d4e: 0751         	addi	a4, a4, 0x14
80201d50: 06300693     	li	a3, 0x63
80201d54: f4a6fbe3     	bgeu	a3, a0, 0x80201caa <.Lpcrel_hi1012+0x14>
80201d58: 03051613     	slli	a2, a0, 0x30
80201d5c: 9249         	srli	a2, a2, 0x32
80201d5e: 6685         	lui	a3, 0x1
80201d60: 47b6869b     	addiw	a3, a3, 0x47b
80201d64: 02d60633     	mul	a2, a2, a3
80201d68: 8245         	srli	a2, a2, 0x11
80201d6a: 06400693     	li	a3, 0x64
80201d6e: 02d606b3     	mul	a3, a2, a3
80201d72: 9d15         	subw	a0, a0, a3
80201d74: 1546         	slli	a0, a0, 0x31
80201d76: 9141         	srli	a0, a0, 0x30
80201d78: 1779         	addi	a4, a4, -0x2
80201d7a: 9576         	add	a0, a0, t4
80201d7c: 00154683     	lbu	a3, 0x1(a0)
80201d80: 00054503     	lbu	a0, 0x0(a0)
80201d84: fcc40793     	addi	a5, s0, -0x34
80201d88: 97ba         	add	a5, a5, a4
80201d8a: 00d780a3     	sb	a3, 0x1(a5)
80201d8e: 00a78023     	sb	a0, 0x0(a5)
80201d92: 8532         	mv	a0, a2
80201d94: 4629         	li	a2, 0xa
80201d96: f0c56de3     	bltu	a0, a2, 0x80201cb0 <.Lpcrel_hi1012+0x1a>
80201d9a: 0506         	slli	a0, a0, 0x1
80201d9c: ffe70693     	addi	a3, a4, -0x2
80201da0: 9576         	add	a0, a0, t4
80201da2: 00154603     	lbu	a2, 0x1(a0)
80201da6: 00054503     	lbu	a0, 0x0(a0)
80201daa: fcc40713     	addi	a4, s0, -0x34
80201dae: 9736         	add	a4, a4, a3
80201db0: 00c700a3     	sb	a2, 0x1(a4)
80201db4: 00a70023     	sb	a0, 0x0(a4)
80201db8: fcc40713     	addi	a4, s0, -0x34
80201dbc: 9736         	add	a4, a4, a3
80201dbe: 47d1         	li	a5, 0x14
80201dc0: 8f95         	sub	a5, a5, a3
80201dc2: 4605         	li	a2, 0x1
80201dc4: 8542         	mv	a0, a6
80201dc6: 4681         	li	a3, 0x0
80201dc8: fffff097     	auipc	ra, 0xfffff
80201dcc: 598080e7     	jalr	0x598(ra) <sbss+0xfffee360>
80201dd0: 70e2         	ld	ra, 0x38(sp)
80201dd2: 7442         	ld	s0, 0x30(sp)
80201dd4: 74a2         	ld	s1, 0x28(sp)
80201dd6: 7902         	ld	s2, 0x20(sp)
80201dd8: 6121         	addi	sp, sp, 0x40
80201dda: 8082         	ret

0000000080201ddc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe6338d772e74072E>:
80201ddc: 1141         	addi	sp, sp, -0x10
80201dde: e406         	sd	ra, 0x8(sp)
80201de0: e022         	sd	s0, 0x0(sp)
80201de2: 0800         	addi	s0, sp, 0x10
80201de4: 6510         	ld	a2, 0x8(a0)
80201de6: 6108         	ld	a0, 0x0(a0)
80201de8: 6e1c         	ld	a5, 0x18(a2)
80201dea: 60a2         	ld	ra, 0x8(sp)
80201dec: 6402         	ld	s0, 0x0(sp)
80201dee: 0141         	addi	sp, sp, 0x10
80201df0: 8782         	jr	a5

0000000080201df2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he1afd8614e53d181E>:
80201df2: 1141         	addi	sp, sp, -0x10
80201df4: e406         	sd	ra, 0x8(sp)
80201df6: e022         	sd	s0, 0x0(sp)
80201df8: 0800         	addi	s0, sp, 0x10
80201dfa: 6114         	ld	a3, 0x0(a0)
80201dfc: 6510         	ld	a2, 0x8(a0)
80201dfe: 852e         	mv	a0, a1
80201e00: 85b6         	mv	a1, a3
80201e02: 60a2         	ld	ra, 0x8(sp)
80201e04: 6402         	ld	s0, 0x0(sp)
80201e06: 0141         	addi	sp, sp, 0x10
80201e08: fffff317     	auipc	t1, 0xfffff
80201e0c: 7dc30067     	jr	0x7dc(t1) <sbss+0xfffee5e4>
