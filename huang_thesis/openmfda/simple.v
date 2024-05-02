ANTLR runtime and generated code versions disagree: 4.13.1!=4.10.1
ANTLR runtime and generated code versions disagree: 4.13.1!=4.10.1
Computing Constraints
module simple (
inout p1, p2, p3, cp1, cp2
);
wire c1_out
wire c1;
wire c2_out
wire c2;
wire c3;
wire c4;
wire c5;
wire c6;
assign c1 = p1;
assign c2 = p2;
assign c4 = p3;
NODE n1(.port0(c3),.port0(c1_out),.port0(c2_out));
LONG CELL TRAP ct1(.port2(c4),.port1(c3));
assign c5 = cp1;
assign c6 = cp2;
VALVE v1(.port0(c5),.out(c1_out),.in(c1));
VALVE v2(.port0(c6),.out(c2_out),.in(c2));
endmodule
