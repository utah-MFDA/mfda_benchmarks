module AquaFlex-3b(
input InputB,
input InputC,
input InputD,
input InputE,
input InputF,
output OutH,
output OutI,
output OutJ
);
wire flow_switch4_0-InputC;
wire flow_switch4_0-InputD;
wire flow_switch4_0-InputE;
wire flow_switch4_0-flow_switch4_1;
wire flow_switch4_1-InputB;
wire flow_switch4_1-InputF;
wire flow_switch4_1-PumpA;
wire PumpA-Mixer1;
wire Mixer1-PumpC;
wire PumpC-flow_switch4_2;
wire flow_switch4_2-OutH;
wire flow_switch4_2-OutI;
wire flow_switch4_2-OutJ;
assign flow_switch4_1-InputB = InputB;
assign flow_switch4_0-InputC = InputC;
assign flow_switch4_0-InputD = InputD;
assign flow_switch4_0-InputE = InputE;
assign flow_switch4_1-InputF = InputF;
assign OutH = flow_switch4_2-OutH;
assign OutI = flow_switch4_2-OutI;
assign OutJ = flow_switch4_2-OutJ;
Mixer Mixer1(.port0(PumpA-Mixer1),.port1(Mixer1-PumpC));
Filter PumpA(.port0(PumpA-Mixer1),.port1(flow_switch4_1-PumpA));
Filter PumpC(.port0(Mixer1-PumpC),.port1(PumpC-flow_switch4_2));
Switch flow_switch4_0(.port0(flow_switch4_0-InputD),.port1(flow_switch4_0-flow_switch4_1),.port2(flow_switch4_0-InputC),.port3(flow_switch4_0-InputE));
Switch flow_switch4_1(.port0(flow_switch4_1-InputF),.port1(flow_switch4_0-flow_switch4_1),.port2(flow_switch4_1-PumpA),.port3(flow_switch4_1-InputB));
Switch flow_switch4_2(.port0(PumpC-flow_switch4_2),.port1(flow_switch4_2-OutJ),.port2(flow_switch4_2-OutH),.port3(flow_switch4_2-OutI));
endmodule
