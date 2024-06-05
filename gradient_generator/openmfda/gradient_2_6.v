module gradient_generator_2_6 (
inout
k_2_0,k_2_1,k_6_0,k_6_1,k_6_2,k_6_3,k_6_4,k_6_5
);
wire k_2;
wire k_3;
wire k_4;
wire k_5;
serpentine s_2_0 (.in(k_2_0), .out(k_2));
serpentine s_2_1 (.in(k_2_1), .out(k_2));
serpentine s_3_0 (.in(k_2), .out(k_3));
serpentine s_3_1 (.in(k_2), .out(k_3));
serpentine s_3_2 (.in(k_2), .out(k_3));
serpentine s_4_0 (.in(k_3), .out(k_4));
serpentine s_4_1 (.in(k_3), .out(k_4));
serpentine s_4_2 (.in(k_3), .out(k_4));
serpentine s_4_3 (.in(k_3), .out(k_4));
serpentine s_5_0 (.in(k_4), .out(k_5));
serpentine s_5_1 (.in(k_4), .out(k_5));
serpentine s_5_2 (.in(k_4), .out(k_5));
serpentine s_5_3 (.in(k_4), .out(k_5));
serpentine s_5_4 (.in(k_4), .out(k_5));
serpentine s_6_0 (.in(k_5), .out(k_6_0));
serpentine s_6_1 (.in(k_5), .out(k_6_1));
serpentine s_6_2 (.in(k_5), .out(k_6_2));
serpentine s_6_3 (.in(k_5), .out(k_6_3));
serpentine s_6_4 (.in(k_5), .out(k_6_4));
serpentine s_6_5 (.in(k_5), .out(k_6_5));
endmodule
