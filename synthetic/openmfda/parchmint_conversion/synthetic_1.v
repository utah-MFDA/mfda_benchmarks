module Planar_Synthetic_1(
input Source1,
input Source2,
output Out1
);
wire flow_switch3_0_Source1;
wire flow_switch3_0_Source2;
wire flow_switch3_0_flow_switch4_1;
wire flow_switch4_1_flow_switch4_2;
wire flow_switch4_1_flow_switch4_4;
wire flow_switch4_2_flow_switch4_5;
wire flow_switch4_2_Mixer1;
wire flow_switch4_2_Mixer2;
wire flow_switch4_4_flow_switch4_7;
wire flow_switch4_4_Mixer3;
wire flow_switch4_4_Mixer4;
wire flow_switch4_5_flow_switch4_8;
wire flow_switch4_5_Heater1;
wire flow_switch4_5_Heater2;
wire flow_switch4_7_flow_switch4_8;
wire flow_switch4_7_Heater3;
wire flow_switch4_7_Heater4;
wire flow_switch4_8_flow_switch4_9;
wire flow_switch4_9_Filter1;
wire flow_switch4_9_Filter2;
wire flow_switch4_9_Out1;
assign flow_switch3_0_Source1 = Source1;
assign flow_switch3_0_Source2 = Source2;
assign Out1 = flow_switch4_9_Out1;
chamber Mixer1(.port1(flow_switch4_2_Mixer1));
chamber Mixer2(.port1(flow_switch4_2_Mixer2));
chamber Mixer3(.port0(flow_switch4_4_Mixer3));
chamber Mixer4(.port1(flow_switch4_4_Mixer4));
heater Heater1(.port0(flow_switch4_5_Heater1));
heater Heater2(.port0(flow_switch4_5_Heater2));
heater Heater3(.port0(flow_switch4_7_Heater3));
heater Heater4(.port0(flow_switch4_7_Heater4));
filter Filter1(.port1(flow_switch4_9_Filter1));
filter Filter2(.port1(flow_switch4_9_Filter2));
junction4 flow_switch3_0(.port1(flow_switch3_0_Source2),.port2(flow_switch3_0_Source1),.port3(flow_switch3_0_flow_switch4_1));
junction4 flow_switch4_1(.port0(flow_switch4_1_flow_switch4_4),.port1(flow_switch4_1_flow_switch4_2),.port2(flow_switch3_0_flow_switch4_1));
junction4 flow_switch4_2(.port0(flow_switch4_2_Mixer2),.port1(flow_switch4_2_flow_switch4_5),.port2(flow_switch4_1_flow_switch4_2),.port3(flow_switch4_2_Mixer1));
junction4 flow_switch4_4(.port0(flow_switch4_4_flow_switch4_7),.port1(flow_switch4_1_flow_switch4_4),.port2(flow_switch4_4_Mixer3),.port3(flow_switch4_4_Mixer4));
junction4 flow_switch4_5(.port0(flow_switch4_5_Heater2),.port1(flow_switch4_2_flow_switch4_5),.port2(flow_switch4_5_flow_switch4_8),.port3(flow_switch4_5_Heater1));
junction4 flow_switch4_7(.port0(flow_switch4_7_Heater4),.port1(flow_switch4_7_flow_switch4_8),.port2(flow_switch4_4_flow_switch4_7),.port3(flow_switch4_7_Heater3));
junction4 flow_switch4_8(.port0(flow_switch4_8_flow_switch4_9),.port2(flow_switch4_7_flow_switch4_8),.port3(flow_switch4_5_flow_switch4_8));
junction4 flow_switch4_9(.port0(flow_switch4_9_Filter2),.port1(flow_switch4_8_flow_switch4_9),.port2(flow_switch4_9_Out1),.port3(flow_switch4_9_Filter1));
endmodule
