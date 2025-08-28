`define FLATTENED(width, name, len) [len*width-1:0] name
`define UNFLATTENED(width, flatten, len, unflatten) \
wire [width-1:0] unflatten [len-1:0]; \
generate \
  genvar i;  \
  for (i = 0; i < len; i = i + 1) begin \
    assign unflatten[i] = flatten[width*(i+1)-1:width*i]; \
  end \
endgenerate

`define UNFLATTEN(width, unflatten, len) \
wire [width-1:0] unflatten [len-1:0]; \
generate \
  genvar i;  \
  parameter gen_width = width; \
  for (i = 0; i < len; i = i + 1) begin \
    assign unflatten[i]

`define FROM_FLATTENED(flatten) \
      = flatten[gen_width*(i+1)-1:gen_width*i]; \
  end \
endgenerate

`define FLATTEN(len, width, unflatten, flatten) \
generate \
  genvar i;  \
  for (i = 0; i < len; i = i + 1) begin \
    assign flatten[width*(i+1)-1:width*i] = unflatten[i]; \
  end \
endgenerate

module kinase_activity_bank #(parameter SIZE = 16) (input `FLATTENED(IN_SIZE, flow_in_flat, SIZE),
                                                    output `FLATTENED(OUT_SIZE, flow_out_flat, SIZE),
                                                    input [12:0] ctrl_a,
                                                    input [3:0] ctrl_s,
                                                    input [2:0] pump_a,
                                                    input [1:0] pump_b,
                                                    output `FLATTENED(FLUSH_SIZE, flush_flat, SIZE));
  parameter FLUSH_SIZE = 22;
  parameter IN_SIZE = 3;
  parameter OUT_SIZE = 4;
  `UNFLATTEN(IN_SIZE, flow_in, SIZE) `FROM_FLATTENED(flow_in_flat)
  `UNFLATTENED(OUT_SIZE, flow_out_flat, SIZE, flow_out);
  `UNFLATTENED(FLUSH_SIZE, flush_flat, SIZE, flush);
  generate
    genvar i;
    for (i = 0; i < SIZE; i= i + 1) begin: devices
      kinase_activity device (flow_in[i], flow_out[i], ctrl_a, ctrl_s, pump_a, pump_b, flush[i]);
    end
  endgenerate
endmodule
