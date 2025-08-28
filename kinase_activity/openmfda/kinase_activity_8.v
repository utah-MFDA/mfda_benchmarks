module kinase_activity_8_device (
            input [12:0] ctrl_a,
            input [3:0] ctrl_s,
            input [2:0] pump_a,
            input [1:0] pump_b,
            output [2:0] flow_in [7:0],
            output [3:0] flow_out [7:0],
            output [21:0] flush [7:0],

  kinase_activity device_0(flow_in[0], flow_out[0], ctrl_a, ctrl_s, pump_a, pump_b, flush[0]);

  kinase_activity device_1(flow_in[1], flow_out[1], ctrl_a, ctrl_s, pump_a, pump_b, flush[1]);

  kinase_activity device_2(flow_in[2], flow_out[2], ctrl_a, ctrl_s, pump_a, pump_b, flush[2]);

  kinase_activity device_3(flow_in[3], flow_out[3], ctrl_a, ctrl_s, pump_a, pump_b, flush[3]);

  kinase_activity device_4(flow_in[4], flow_out[4], ctrl_a, ctrl_s, pump_a, pump_b, flush[4]);

  kinase_activity device_5(flow_in[5], flow_out[5], ctrl_a, ctrl_s, pump_a, pump_b, flush[5]);

  kinase_activity device_6(flow_in[6], flow_out[6], ctrl_a, ctrl_s, pump_a, pump_b, flush[6]);

  kinase_activity device_7(flow_in[7], flow_out[7], ctrl_a, ctrl_s, pump_a, pump_b, flush[7]);
endmodule
