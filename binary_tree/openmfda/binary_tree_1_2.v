module binary_tree_1_2 (
output out_0,input input_0,input input_1,input input_2,input input_3
);
mixer mix_t0_0 (.a(t0_00), .b(t0_01), .y(t0_0));
wire t0_00, t0_01;
mixer mix_t0_00 (.a(t0_000), .b(t0_001), .y(t0_00));
wire t0_000, t0_001;
mixer mix_t0_01 (.a(t0_010), .b(t0_011), .y(t0_01));
wire t0_010, t0_011;
wire t0_0;
assign out_0 = t0_0;
assign input_0 = t0_000;
assign input_1 = t0_001;
assign input_2 = t0_010;
assign input_3 = t0_011;
endmodule
