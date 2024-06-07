module binary_tree_2_2 (
output out_0,output out_1,input input_0,input input_1,input input_2,input input_3,input input_4,input input_5,input input_6,input input_7
);
mixer mix_t0_0 (.a(t0_00), .b(t0_01), .y(t0_0));
wire t0_00, t0_01;
mixer mix_t0_00 (.a(t0_000), .b(t0_001), .y(t0_00));
wire t0_000, t0_001;
mixer mix_t0_01 (.a(t0_010), .b(t0_011), .y(t0_01));
wire t0_010, t0_011;
mixer mix_t1_0 (.a(t1_00), .b(t1_01), .y(t1_0));
wire t1_00, t1_01;
mixer mix_t1_00 (.a(t1_000), .b(t1_001), .y(t1_00));
wire t1_000, t1_001;
mixer mix_t1_01 (.a(t1_010), .b(t1_011), .y(t1_01));
wire t1_010, t1_011;
wire t0_0;
assign out_0 = t0_0;
wire t1_0;
assign out_1 = t1_0;
assign input_0 = t0_000;
assign input_1 = t0_001;
assign input_2 = t0_010;
assign input_3 = t0_011;
assign input_4 = t1_000;
assign input_5 = t1_001;
assign input_6 = t1_010;
assign input_7 = t1_011;
endmodule
