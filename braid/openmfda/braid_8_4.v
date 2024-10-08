module fanout2_braid_8_4 (
output output_0,output output_1,output output_2,output output_3,output output_4,output output_5,output output_6,output output_7,input input_0,input input_1,input input_2,input input_3,input input_4,input input_5,input input_6,input input_7
);
wire output_1_0, output_1_1, output_0_0;
mixer gate_output_0_0(.a(output_1_0), .b(output_1_1), .y(output_0_0));
wire output_2_0, output_2_1, output_1_0;
mixer gate_output_1_0(.a(output_2_0), .b(output_2_1), .y(output_1_0));
wire output_3_0, output_3_1, output_2_0;
mixer gate_output_2_0(.a(output_3_0), .b(output_3_1), .y(output_2_0));
wire output_4_0, output_4_1, output_3_0;
mixer gate_output_3_0(.a(output_4_0), .b(output_4_1), .y(output_3_0));
wire output_5_0, output_5_1, output_4_0;
mixer gate_output_4_0(.a(output_5_0), .b(output_5_1), .y(output_4_0));
wire output_6_0, output_6_1, output_5_0;
mixer gate_output_5_0(.a(output_6_0), .b(output_6_1), .y(output_5_0));
wire output_7_0, output_7_1, output_6_0;
mixer gate_output_6_0(.a(output_7_0), .b(output_7_1), .y(output_6_0));
wire output_8_0, output_8_1, output_7_0;
mixer gate_output_7_0(.a(output_8_0), .b(output_8_1), .y(output_7_0));
wire output_1_1, output_1_2, output_0_1;
mixer gate_output_0_1(.a(output_1_1), .b(output_1_2), .y(output_0_1));
wire output_2_1, output_2_2, output_1_1;
mixer gate_output_1_1(.a(output_2_1), .b(output_2_2), .y(output_1_1));
wire output_3_1, output_3_2, output_2_1;
mixer gate_output_2_1(.a(output_3_1), .b(output_3_2), .y(output_2_1));
wire output_4_1, output_4_2, output_3_1;
mixer gate_output_3_1(.a(output_4_1), .b(output_4_2), .y(output_3_1));
wire output_5_1, output_5_2, output_4_1;
mixer gate_output_4_1(.a(output_5_1), .b(output_5_2), .y(output_4_1));
wire output_6_1, output_6_2, output_5_1;
mixer gate_output_5_1(.a(output_6_1), .b(output_6_2), .y(output_5_1));
wire output_7_1, output_7_2, output_6_1;
mixer gate_output_6_1(.a(output_7_1), .b(output_7_2), .y(output_6_1));
wire output_8_1, output_8_2, output_7_1;
mixer gate_output_7_1(.a(output_8_1), .b(output_8_2), .y(output_7_1));
wire output_1_2, output_1_3, output_0_2;
mixer gate_output_0_2(.a(output_1_2), .b(output_1_3), .y(output_0_2));
wire output_2_2, output_2_3, output_1_2;
mixer gate_output_1_2(.a(output_2_2), .b(output_2_3), .y(output_1_2));
wire output_3_2, output_3_3, output_2_2;
mixer gate_output_2_2(.a(output_3_2), .b(output_3_3), .y(output_2_2));
wire output_4_2, output_4_3, output_3_2;
mixer gate_output_3_2(.a(output_4_2), .b(output_4_3), .y(output_3_2));
wire output_5_2, output_5_3, output_4_2;
mixer gate_output_4_2(.a(output_5_2), .b(output_5_3), .y(output_4_2));
wire output_6_2, output_6_3, output_5_2;
mixer gate_output_5_2(.a(output_6_2), .b(output_6_3), .y(output_5_2));
wire output_7_2, output_7_3, output_6_2;
mixer gate_output_6_2(.a(output_7_2), .b(output_7_3), .y(output_6_2));
wire output_8_2, output_8_3, output_7_2;
mixer gate_output_7_2(.a(output_8_2), .b(output_8_3), .y(output_7_2));
wire output_1_3, output_1_4, output_0_3;
mixer gate_output_0_3(.a(output_1_3), .b(output_1_4), .y(output_0_3));
wire output_2_3, output_2_4, output_1_3;
mixer gate_output_1_3(.a(output_2_3), .b(output_2_4), .y(output_1_3));
wire output_3_3, output_3_4, output_2_3;
mixer gate_output_2_3(.a(output_3_3), .b(output_3_4), .y(output_2_3));
wire output_4_3, output_4_4, output_3_3;
mixer gate_output_3_3(.a(output_4_3), .b(output_4_4), .y(output_3_3));
wire output_5_3, output_5_4, output_4_3;
mixer gate_output_4_3(.a(output_5_3), .b(output_5_4), .y(output_4_3));
wire output_6_3, output_6_4, output_5_3;
mixer gate_output_5_3(.a(output_6_3), .b(output_6_4), .y(output_5_3));
wire output_7_3, output_7_4, output_6_3;
mixer gate_output_6_3(.a(output_7_3), .b(output_7_4), .y(output_6_3));
wire output_8_3, output_8_4, output_7_3;
mixer gate_output_7_3(.a(output_8_3), .b(output_8_4), .y(output_7_3));
assign output_0 = output_0_0;
wire output_0_4;
assign output_0_4 = input_0;
assign output_1 = output_1_0;
wire output_1_4;
assign output_1_4 = input_1;
assign output_2 = output_2_0;
wire output_2_4;
assign output_2_4 = input_2;
assign output_3 = output_3_0;
wire output_3_4;
assign output_3_4 = input_3;
assign output_4 = output_4_0;
wire output_4_4;
assign output_4_4 = input_4;
assign output_5 = output_5_0;
wire output_5_4;
assign output_5_4 = input_5;
assign output_6 = output_6_0;
wire output_6_4;
assign output_6_4 = input_6;
assign output_7 = output_7_0;
wire output_7_4;
assign output_7_4 = input_7;
endmodule
