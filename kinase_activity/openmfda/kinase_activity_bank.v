module kinase_activity_bank #(parameter SIZE = 16) (
                                                    input [12:0] ctrl_a,
                                                    input [3:0] ctrl_s,
                                                    input [2:0] pump_a,
                                                    input [1:0] pump_b,
                                                    output [SIZE*IN_SIZE-1:0] flow_in_flat,
                                                    output [SIZE*OUT_SIZE-1:0] flow_out_flat,
                                                    output [SIZE*FLUSH_SIZE-1:0] flush_flat);
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

      kinase_activity device (flow_in[i], flow_out[i], ctrl_a, ctrl_s, pump_a, pump_b, flush[i]);
    end
  endgenerate
endmodule
