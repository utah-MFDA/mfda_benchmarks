// This is literal translation from the json. No control lines? mixer with no output - mixing chamber?
module aquaflex5a(inout InputA, InputB, InputC, InputD, InputE,
                  OutF, OutG, OutH, OutI, OutJ);
wire flow_switch4_0_flow_switch4_1,
     flow_switch4_1_PumpA,
     PumpA_Mixer1,
     Mixer1_PumpC,
     PumpC_flow_switch4_2,
     flow_switch4_2_flow_switch4_3,


  mixer Mixer1(.port0(PumpA_Mixer1), .port1(Mixer1_PumpC));
  pump PumpA(.port0(PumpA_Mixer1), .port1(flow_switch4_1_PumpA));
  pump PumpC(.port0(Mixer1_PumpC), .port1(PumpC_flow_switch4_2));
  junction4 flow_switch4_0(.port0(InputD), .port1(flow_switch4_0_flow_switch4_1), .port2(InputC), .port3(InputB));
  junction4 flow_switch4_1(.port0(InputE), .port1(flow_switch4_0_flow_switch4_1), .port2(flow_switch4_1_PumpA), .port4(InputA));
  junction4 flow_switch4_2(.port0(OutJ), .port1(PumpC_flow_switch4_2), .port2(flow_switch4_2_flow_switch4_3), .port4(OutF));
  junction4 flow_switch4_3(.port0(flow_switch4_2_flow_switch4_3), .port1(OutI), .port2(OutG), .port4(OutH));
endmodule;
