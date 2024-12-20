module gradient_generator_2_10 (
inout
k_2_0,k_2_1,k_10_0,k_10_1,k_10_2,k_10_3,k_10_4,k_10_5,k_10_6,k_10_7,k_10_8,k_10_9
);
wire k_2;
wire k_3;
wire k_4;
wire k_5;
wire k_6;
wire k_7;
wire k_8;
wire k_9;
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
serpentine s_6_0 (.in(k_5), .out(k_6));
serpentine s_6_1 (.in(k_5), .out(k_6));
serpentine s_6_2 (.in(k_5), .out(k_6));
serpentine s_6_3 (.in(k_5), .out(k_6));
serpentine s_6_4 (.in(k_5), .out(k_6));
serpentine s_6_5 (.in(k_5), .out(k_6));
serpentine s_7_0 (.in(k_6), .out(k_7));
serpentine s_7_1 (.in(k_6), .out(k_7));
serpentine s_7_2 (.in(k_6), .out(k_7));
serpentine s_7_3 (.in(k_6), .out(k_7));
serpentine s_7_4 (.in(k_6), .out(k_7));
serpentine s_7_5 (.in(k_6), .out(k_7));
serpentine s_7_6 (.in(k_6), .out(k_7));
serpentine s_8_0 (.in(k_7), .out(k_8));
serpentine s_8_1 (.in(k_7), .out(k_8));
serpentine s_8_2 (.in(k_7), .out(k_8));
serpentine s_8_3 (.in(k_7), .out(k_8));
serpentine s_8_4 (.in(k_7), .out(k_8));
serpentine s_8_5 (.in(k_7), .out(k_8));
serpentine s_8_6 (.in(k_7), .out(k_8));
serpentine s_8_7 (.in(k_7), .out(k_8));
serpentine s_9_0 (.in(k_8), .out(k_9));
serpentine s_9_1 (.in(k_8), .out(k_9));
serpentine s_9_2 (.in(k_8), .out(k_9));
serpentine s_9_3 (.in(k_8), .out(k_9));
serpentine s_9_4 (.in(k_8), .out(k_9));
serpentine s_9_5 (.in(k_8), .out(k_9));
serpentine s_9_6 (.in(k_8), .out(k_9));
serpentine s_9_7 (.in(k_8), .out(k_9));
serpentine s_9_8 (.in(k_8), .out(k_9));
serpentine s_10_0 (.in(k_9), .out(k_10_0));
serpentine s_10_1 (.in(k_9), .out(k_10_1));
serpentine s_10_2 (.in(k_9), .out(k_10_2));
serpentine s_10_3 (.in(k_9), .out(k_10_3));
serpentine s_10_4 (.in(k_9), .out(k_10_4));
serpentine s_10_5 (.in(k_9), .out(k_10_5));
serpentine s_10_6 (.in(k_9), .out(k_10_6));
serpentine s_10_7 (.in(k_9), .out(k_10_7));
serpentine s_10_8 (.in(k_9), .out(k_10_8));
serpentine s_10_9 (.in(k_9), .out(k_10_9));
endmodule
