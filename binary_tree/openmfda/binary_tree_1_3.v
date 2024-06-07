module binary_tree_1_3 (
output out_0,input input_0,input input_1,input input_2,input input_3,input input_4,input input_5,input input_6,input input_7
);
mixer mix_t0_0 (.a(t0_00), .b(t0_01), .y(t0_0));
wire t0_00, t0_01;
mixer mix_t0_00 (.a(t0_000), .b(t0_001), .y(t0_00));
wire t0_000, t0_001;
mixer mix_t0_000 (.a(t0_0000), .b(t0_0001), .y(t0_000));
wire t0_0000, t0_0001;
mixer mix_t0_001 (.a(t0_0010), .b(t0_0011), .y(t0_001));
wire t0_0010, t0_0011;
mixer mix_t0_01 (.a(t0_010), .b(t0_011), .y(t0_01));
wire t0_010, t0_011;
mixer mix_t0_010 (.a(t0_0100), .b(t0_0101), .y(t0_010));
wire t0_0100, t0_0101;
mixer mix_t0_011 (.a(t0_0110), .b(t0_0111), .y(t0_011));
wire t0_0110, t0_0111;
wire t0_0;
assign out_0 = t0_0;
assign input_0 = t0_0000;
assign input_1 = t0_0001;
assign input_2 = t0_0010;
assign input_3 = t0_0011;
assign input_4 = t0_0100;
assign input_5 = t0_0101;
assign input_6 = t0_0110;
assign input_7 = t0_0111;
endmodule
