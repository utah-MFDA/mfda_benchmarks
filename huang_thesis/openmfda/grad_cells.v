// Device D
module grad_cells (
inout pb1, pb2, p1, cpb1_1, cpb1_2, cpb2_1, cpb2_2
);
wire c1;
wire c2;
wire c3;
wire c4;
wire c5;
wire c6;
wire c7;
wire c8;
wire c9;
wire c10;
wire c11;
wire c12;
wire c13;
wire cc1;
wire cc2;
wire cc3;
wire cc4;
assign c1 = pb1;
assign c2 = pb2;
assign c13 = p1;
NODE n1(.port0(c3),.port1(c1),.port2(c2));
GRADIENT_GENERATOR g(.port2(c4),.port1(c3));
MUX m1(.port2(c5),.port3(c6),.port4(c7),.port5(c8),.port1(c4),.port7(cc1),.port9(cc2),.port6(cc3),.port8(cc4));
TREE t1(.port1(c13),.port5(c9),.port4(c10),.port3(c11),.port2(c12));
LONG_CELL_TRAP ctb_1(.port0(c9),.port1(c5));
LONG_CELL_TRAP ctb_2(.port0(c10),.port1(c6));
LONG_CELL_TRAP ctb_3(.port0(c11),.port1(c7));
LONG_CELL_TRAP ctb_4(.port0(c12),.port1(c8));
assign cc1 = cpb1_1;
assign cc2 = cpb1_2;
assign cc3 = cpb2_1;
assign cc4 = cpb2_2;
endmodule
