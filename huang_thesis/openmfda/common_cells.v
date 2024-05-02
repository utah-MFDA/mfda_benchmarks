// DROPLET_GENERATOR_FLOW_FOCUS
// DROPLET GENERATOR_T
// GRADIENT_GENERATOR
// LOGIC_ARRAY
// LONG_CELL_TRAP
// MIXER
// MUX
// NODE
// ROTARY_MIXER
// SQUARE_CELL_TRAP
// TREE
// VALVE
DROPLET_GENERATOR_FLOW_FOCUS ff(.port1(c1), .port2(dropa), .port3(dropb), .port4(dropc));
DROPLET GENERATOR T t1(.port1(c1));
DROPLET GENERATOR T t2(.port1(c3));
GRADIENT_GENERATOR g(.port2(c4),.port1(c3));
LOGIC ARRAY la(.port1(c3),.port24(cca),.port25(ccb),.port26(ccc),.port13(cc10),.port14(cc11),.port12(cc9),.port15(cc12),.port11(cc8),.port16(cc13),.port10(cc7),.port17(cc14),.port9(cc6),.port18(cc15),.port3(c1),.port3(c1),.port4(cc1),.port8(cc5),.port5(cc2),.port7(cc4),.port6(cc3),.port19(cc16),.port20(cc17),.port21(cc18),.port22(cc19),.port23(cc20));
LONG_CELL_TRAP b1_1(.port0(c11),.port0(c7));
LONG_CELL_TRAP b1_1(.port0(c5),.port0(c13));
LONG_CELL_TRAP b1_2(.port0(c12),.port0(c8));
LONG_CELL_TRAP b1_2(.port0(c6),.port0(c14));
LONG_CELL_TRAP b1_3(.port0(c13),.port0(c9));
LONG_CELL_TRAP b1_3(.port0(c7),.port0(c15));
LONG_CELL_TRAP b1_4(.port0(c14),.port0(c10));
LONG_CELL_TRAP b1_4(.port0(c8),.port0(c16));
LONG_CELL_TRAP b1_5(.port0(c9),.port0(c17));
LONG_CELL_TRAP b1_6(.port0(c10),.port0(c18));
LONG_CELL_TRAP b1_7(.port0(c11),.port0(c19));
LONG_CELL_TRAP b1_8(.port0(c12),.port0(c20));
LONG CELL TRAP ct1(.port2(c4),.port1(c3));
LONG CELL TRAP ct1(.port2(c6),.port1(c5));
LONG_CELL_TRAP ctb_1(.port0(c9),.port1(c5));
LONG_CELL_TRAP ctb_2(.port0(c10),.port1(c6));
LONG_CELL_TRAP ctb_3(.port0(c11),.port1(c7));
LONG_CELL_TRAP ctb_4(.port0(c12),.port1(c8));
MIXER x1(.port2(c2),.port1(c1));
MIXER x1(.port2(c7),.port1(c6));
MIXER x2(.port1(c11),.port2(c10));
MIXER x2(.port2(c4),.port1(c3));
MUX m1(.port17(c17),.port18(cc1),.port20(cc2),.port22(cc3),.port24(cc4),.port19(cc5),.port21(cc6),.port23(cc7),.port25(cc8),.port1(c1),.port2(c2),.port3(c3),.port4(c4),.port5(c5),.port6(c6),.port7(c7),.port8(c8),.port9(c9),.port10(c10),.port11(c11),.port12(c12),.port13(c13),.port14(c14),.port15(c15),.port16(c16));
MUX m1(.port1(c3),.port2(c1),.port3(c2),.port4(cc1),.port5(cc2));
MUX m1(.port2(c5),.port3(c6),.port4(c7),.port5(c8),.port1(c4),.port7(cc1),.port9(cc2),.port6(cc3),.port8(cc4));
MUX m1(.port3(c5),.port1(c2),.port2(c4),.port4(cc1),.port5(cc2));
MUX m1(.port5(c5),.port6(cc1),.port8(cc2),.port7(cc8),.port9(cc9),.port1(c1),.port2(c2),.port3(c3),.port4(c4));
MUX m1(.port9(c0),.port10(cc21),.port11(cc22),.port12(cc23),.port13(cc24),.port14(cc25),.port15(cc26),.port1(c4),.port2(c5),.port3(c6),.port4(c7),.port5(c8),.port6(c9),.port7(c10),.port8(c11));
MUX m2(.port2(c19),.port3(c20),.port4(c21),.port5(c22),.port6(c23),.port7(c24),.port8(c25),.port9(c26),.port10(c27),.port11(c28),.port12(c29),.port13(c30),.port14(c31),.port15(c32),.port16(c33),.port17(c34),.port18(cc9),.port20(cc10),.port22(cc11),.port24(cc12),.port19(cc13),.port21(cc14),.port23(cc15),.port25(cc16),.port1(c18));
MUX m2(.port2(c7),.port3(c8),.port4(c9),.port5(c10),.port7(cc6),.port9(cc7),.port6(cc12),.port8(cc13),.port1(c6));
NODE n1(.port0(c1),.port0(c1),.port0(c0),.port0(c3));
NODE n1(.port0(c2),.port0(c1));
NODE n1(.port0(c3),.port0(c1_out),.port0(c2_out));
NODE n1(.port0(c3),.port1(c1),.port2(c2));
NODE n1(.port0(c4),.port0(c1),.port0(c2),.port0(c3));
NODE n2(.port0(c22),.port0(c23),.port0(c21));
NODE n2(.port0(c3),.port0(c2));
ROTARY_MIXER rp(.port2(c18),.port4(cc17),.port5(cc18),.port3(cc19),.port6(cc20),.port7(cc21),.port1(c17));
ROTARY_MIXER rp(.port2(c6),.port3(cc3),.port6(cc4),.port7(cc5),.port4(cc10),.port5(cc11),.port1(c5));
SQUARE_CELL_TRAP ct1(.port3(c12),.port1(c3),.port4(c7_out),.port2(c11_out));
TREE t1(.port1(c13),.port5(c9),.port4(c10),.port3(c11),.port2(c12));
TREE t1(.port1(c15),.port5(c11),.port4(c12),.port3(c13),.port2(c14));
TREE t1(.port1(c6),.port2(c4),.port3(c5));
TREE t1(.port2(c5),.port3(c6),.port4(c7),.port5(c8),.port6(c9),.port7(c10),.port8(c11),.port9(c12),.port1(c4));
TREE t2(.port1(c10),.port2(c8),.port3(c9));
TREE t2(.port9(c13),.port8(c14),.port7(c15),.port6(c16),.port5(c17),.port4(c18),.port3(c19),.port2(c20),.port1(c21));
VALVE v1(.port0(c5),.out(c1_out),.in(c1));
VALVE v1(.port0(cc3),.out(c7_out),.in(c7));
VALVE v2(.port0(c6),.out(c2_out),.in(c2));
VALVE v2(.port0(cc4),.out(c11_out),.in(c11));
