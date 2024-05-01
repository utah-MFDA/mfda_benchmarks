module aquaflex_3b(
input InputB,
input InputC,
input InputD,
input InputE,
input InputF,
output OutH,
output OutI,
output OutJ
);
wire flow_switch4_0_InputC;
wire flow_switch4_0_InputD;
wire flow_switch4_0_InputE;
wire flow_switch4_0_flow_switch4_1;
wire flow_switch4_1_InputB;
wire flow_switch4_1_InputF;
wire flow_switch4_1_PumpA;
wire PumpA_Mixer1;
wire Mixer1_PumpC;
wire PumpC_flow_switch4_2;
wire flow_switch4_2_OutH;
wire flow_switch4_2_OutI;
wire flow_switch4_2_OutJ;
assign flow_switch4_1_InputB = InputB;
assign flow_switch4_0_InputC = InputC;
assign flow_switch4_0_InputD = InputD;
assign flow_switch4_0_InputE = InputE;
assign flow_switch4_1_InputF = InputF;
assign OutH = flow_switch4_2_OutH;
assign OutI = flow_switch4_2_OutI;
assign OutJ = flow_switch4_2_OutJ;
mixer Mixer1(.port0(PumpA_Mixer1),.port1(Mixer1_PumpC));
filter PumpA(.port0(PumpA_Mixer1),.port1(flow_switch4_1_PumpA));
filter PumpC(.port0(Mixer1_PumpC),.port1(PumpC_flow_switch4_2));
junction4 flow_switch4_0(.port0(flow_switch4_0_InputD),.port1(flow_switch4_0_flow_switch4_1),.port2(flow_switch4_0_InputC),.port3(flow_switch4_0_InputE));
junction4 flow_switch4_1(.port0(flow_switch4_1_InputF),.port1(flow_switch4_0_flow_switch4_1),.port2(flow_switch4_1_PumpA),.port3(flow_switch4_1_InputB));
junction4 flow_switch4_2(.port0(PumpC_flow_switch4_2),.port1(flow_switch4_2_OutJ),.port2(flow_switch4_2_OutH),.port3(flow_switch4_2_OutI));
endmodule
