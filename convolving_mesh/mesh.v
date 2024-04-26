module fanout2_mesh_2_2 (
output output_0,output output_1,input input_0,input input_1
);
wire output_1_0, output_1_1, output_0_0;
diffmix_25px_0 gate_output_0_0(.a_fluid(output_1_0), .b_fluid(output_1_1), .out_fluid(output_0_0));
wire output_2_0, output_2_1, output_1_0;
diffmix_25px_0 gate_output_1_0(.a_fluid(output_2_0), .b_fluid(output_2_1), .out_fluid(output_1_0));
wire output_1_1, output_1_0, output_0_1;
diffmix_25px_0 gate_output_0_1(.a_fluid(output_1_1), .b_fluid(output_1_0), .out_fluid(output_0_1));
wire output_2_1, output_2_0, output_1_1;
diffmix_25px_0 gate_output_1_1(.a_fluid(output_2_1), .b_fluid(output_2_0), .out_fluid(output_1_1));
assign output_0 = output_0_0;
wire output_0_2;
assign output_0_2 = input_0;
assign output_1 = output_1_0;
wire output_1_2;
assign output_1_2 = input_1;
endmodule
