module tdroplet (
inout p1, cp1, cp2
);
wire c1;
wire c2;
wire c3;
wire c4;
wire c5;
wire c6;
wire cc1;
wire cc2;
assign c6 = p1;
DROPLET_GENERATOR_T t1(.port1(c1));
MIXER x1(.port2(c2),.port1(c1));
DROPLET_GENERATOR_T t2(.port1(c3));
MIXER x2(.port2(c4),.port1(c3));
MUX m1(.port3(c5),.port1(c2),.port2(c4),.port4(cc1),.port5(cc2));
LONG CELL TRAP ct1(.port2(c6),.port1(c5));
assign cc1 = cp1;
assign cc2 = cp2;
endmodule
