module hiv1_p24_immunoassay(
input Source1,
input Source2,
input Source3,
input Source4,
input Source5,
output Control,
output Out2
);
wire flow_switch4_1-Source2;
wire flow_switch4_1-Source3;
wire flow_switch4_1-Source4;
wire flow_switch4_2-Source1;
wire flow_switch4_2-flow_switch4_1;
wire flow_switch4_2-Source5;
wire Mixer1-flow_switch4_2;
wire flow_switch3_1-Control;
wire flow_switch3_1-Mixer1;
wire flow_switch3_1-Trap1;
wire Trap2-Trap1;
wire Out2-Trap2;
assign flow_switch4_2-Source1 = Source1;
assign flow_switch4_1-Source2 = Source2;
assign flow_switch4_1-Source3 = Source3;
assign flow_switch4_1-Source4 = Source4;
assign flow_switch4_2-Source5 = Source5;
Mixer Mixer1(.port0(flow_switch3_1-Mixer1),.port1(Mixer1-flow_switch4_2));
Filter Trap1(.port0(flow_switch3_1-Trap1),.port1(Trap2-Trap1));
Filter Trap2(.port0(Trap2-Trap1),.port1(Out2-Trap2));
assign Control = flow_switch3_1-Control;
assign Out2 = Out2-Trap2;
Switch flow_switch4_1(.port0(flow_switch4_1-Source3),.port1(flow_switch4_2-flow_switch4_1),.port2(flow_switch4_1-Source2),.port3(flow_switch4_1-Source4));
Switch flow_switch4_2(.port0(flow_switch4_2-Source5),.port1(flow_switch4_2-flow_switch4_1),.port2(Mixer1-flow_switch4_2),.port3(flow_switch4_2-Source1));
Switch flow_switch3_1(.port0(None),.port1(flow_switch3_1-Trap1),.port2(flow_switch3_1-Mixer1),.port3(flow_switch3_1-Control));
endmodule
