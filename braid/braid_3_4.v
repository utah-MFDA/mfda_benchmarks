module fanout2_braid_3_4 (
output output_0,output output_1,output output_2,input input_0,input input_1,input input_2
);
wire output_1_0, output_1_1, output_0_0;
mixer gate_output_0_0(.a(output_1_0), .b(output_1_1), .y(output_0_0));
wire output_2_0, output_2_1, output_1_0;
mixer gate_output_1_0(.a(output_2_0), .b(output_2_1), .y(output_1_0));
wire output_3_0, output_3_1, output_2_0;
mixer gate_output_2_0(.a(output_3_0), .b(output_3_1), .y(output_2_0));
wire output_1_1, output_1_2, output_0_1;
mixer gate_output_0_1(.a(output_1_1), .b(output_1_2), .y(output_0_1));
wire output_2_1, output_2_2, output_1_1;
mixer gate_output_1_1(.a(output_2_1), .b(output_2_2), .y(output_1_1));
wire output_3_1, output_3_2, output_2_1;
mixer gate_output_2_1(.a(output_3_1), .b(output_3_2), .y(output_2_1));
wire output_1_2, output_1_0, output_0_2;
mixer gate_output_0_2(.a(output_1_2), .b(output_1_0), .y(output_0_2));
wire output_2_2, output_2_0, output_1_2;
mixer gate_output_1_2(.a(output_2_2), .b(output_2_0), .y(output_1_2));
wire output_3_2, output_3_0, output_2_2;
mixer gate_output_2_2(.a(output_3_2), .b(output_3_0), .y(output_2_2));
wire output_1_3, output_1_1, output_0_3;
mixer gate_output_0_3(.a(output_1_3), .b(output_1_1), .y(output_0_3));
wire output_2_3, output_2_1, output_1_3;
mixer gate_output_1_3(.a(output_2_3), .b(output_2_1), .y(output_1_3));
wire output_3_3, output_3_1, output_2_3;
mixer gate_output_2_3(.a(output_3_3), .b(output_3_1), .y(output_2_3));
assign output_0 = output_0_0;
wire output_0_4;
assign output_0_4 = input_0;
assign output_1 = output_1_0;
wire output_1_4;
assign output_1_4 = input_1;
assign output_2 = output_2_0;
wire output_2_4;
assign output_2_4 = input_2;
endmodule
