module kinase_activity_16_device (
                                  input [12:0] ctrl_a,
                                  input [3:0] ctrl_s,
                                  input [2:0] pump_a,
                                  input [1:0] pump_b,
                                  output [15*2:0] flow_in_flat,
                                  output [15*3:0] flow_out_flat,
                                  output [15*21:0] flush_flat);
  parameter FLUSH_SIZE = 22;
  parameter IN_SIZE = 3;
  parameter OUT_SIZE = 4;
  output [OUT_SIZE-1:0] flow_out [SIZE-1:0];
  output [IN_SIZE-1:0] flow_in [SIZE-1:0];
  output [FLUSH_SIZE-1:0] flush [SIZE-1:0];
  generate:
    integer i;
    for (i = 0; i < SIZE; i= i + 1) begin: devices
      assign flow_in[i] = flow_in_flat[IN_SIZE*i-1:IN_SIZE*(i-1)];
      assign flow_out[i] = flow_in_flat[OUT_SIZE*i-1:OUT_SIZE*(i-1)];
      assign flush[i] = flush_flat[FLUSH_SIZE*i-1:FLUSH_SIZE*(i-1)];
    end
  endgenerate
  kinase_activity device_0(flow_in[0], flow_out[0], ctrl_a, ctrl_s, pump_a, pump_b, flush[0]);
  kinase_activity device_1(flow_in[1], flow_out[1], ctrl_a, ctrl_s, pump_a, pump_b, flush[1]);

  kinase_activity device_2(flow_in[2], flow_out[2], ctrl_a, ctrl_s, pump_a, pump_b, flush[2]);

  kinase_activity device_3(flow_in[3], flow_out[3], ctrl_a, ctrl_s, pump_a, pump_b, flush[3]);

  kinase_activity device_4(flow_in[4], flow_out[4], ctrl_a, ctrl_s, pump_a, pump_b, flush[4]);

  kinase_activity device_5(flow_in[5], flow_out[5], ctrl_a, ctrl_s, pump_a, pump_b, flush[5]);

  kinase_activity device_6(flow_in[6], flow_out[6], ctrl_a, ctrl_s, pump_a, pump_b, flush[6]);

  kinase_activity device_7(flow_in[7], flow_out[7], ctrl_a, ctrl_s, pump_a, pump_b, flush[7]);

  kinase_activity device_8(flow_in[8], flow_out[8], ctrl_a, ctrl_s, pump_a, pump_b, flush[8]);

  kinase_activity device_9(flow_in[9], flow_out[9], ctrl_a, ctrl_s, pump_a, pump_b, flush[9]);

  kinase_activity device_10(flow_in[10], flow_out[10], ctrl_a, ctrl_s, pump_a, pump_b, flush[10]);

  kinase_activity device_11(flow_in[11], flow_out[11], ctrl_a, ctrl_s, pump_a, pump_b, flush[11]);

  kinase_activity device_12(flow_in[12], flow_out[12], ctrl_a, ctrl_s, pump_a, pump_b, flush[12]);

  kinase_activity device_13(flow_in[13], flow_out[13], ctrl_a, ctrl_s, pump_a, pump_b, flush[13]);

  kinase_activity device_14(flow_in[14], flow_out[14], ctrl_a, ctrl_s, pump_a, pump_b, flush[14]);

  kinase_activity device_15(flow_in[15], flow_out[15], ctrl_a, ctrl_s, pump_a, pump_b, flush[15]);
endmodule
