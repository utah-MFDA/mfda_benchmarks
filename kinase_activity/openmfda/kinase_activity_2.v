module kinase_activity_2_device (
            input [12:0] ctrl_a,
            input [3:0] ctrl_s,
            input [2:0] pump_a,
            input [1:0] pump_b,
            output [2:0] flow_in [1:0],
            output [3:0] flow_out [1:0],
            output [21:0] flush,

  kinase_activity device_0(flow_in[0], flow_out[0], ctrl_a, ctrl_s, pump_a, pump_b, flush);

  kinase_activity device_1(flow_in[1], flow_out[1], ctrl_a, ctrl_s, pump_a, pump_b, flush);
endmodule
