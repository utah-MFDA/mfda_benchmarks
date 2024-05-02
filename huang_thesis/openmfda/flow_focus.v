ANTLR runtime and generated code versions disagree: 4.13.1!=4.10.1
ANTLR runtime and generated code versions disagree: 4.13.1!=4.10.1
Computing Constraints
module flow_focus (
inout p, dropa, dropb, dropc
);
wire c1;
wire c2;
wire c3;
assign c3 = p;
DROPLET_GENERATOR_FLOW_FOCUS ff(.port1(c1), .port2(dropa), .port3(dropb), .port4(dropc));
NODE n1(.port0(c2),.port0(c1));
NODE n2(.port0(c3),.port0(c2));
endmodule
