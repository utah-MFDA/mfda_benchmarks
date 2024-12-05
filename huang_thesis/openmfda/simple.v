module simple (
output p1, p2, input p3, input cp1, cp2
);
  wire c3;
LONG_CELL_TRAP ct1(.port1(p3),.port2(c3));
valve v1(.air_in(cp1),.fluid_in(c3),.fluid_out(p1));
valve v2(.air_in(cp2),.fluid_in(c3),.fluid_out(p2));
endmodule

module LONG_CELL_TRAP(input port1, output port2);
  serpentine_50px_0 c(.in_fluid(port1), .out_fluid(port2));
endmodule
