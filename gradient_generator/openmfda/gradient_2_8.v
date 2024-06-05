module gradient_generator_2_8 (
inout
k_2_0,k_2_1,k_8_0,k_8_1,k_8_2,k_8_3,k_8_4,k_8_5,k_8_6,k_8_7
);
wire k_2;
wire k_3;
wire k_4;
wire k_5;
wire k_6;
wire k_7;
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
serpentine s_8_0 (.in(k_7), .out(k_8_0));
serpentine s_8_1 (.in(k_7), .out(k_8_1));
serpentine s_8_2 (.in(k_7), .out(k_8_2));
serpentine s_8_3 (.in(k_7), .out(k_8_3));
serpentine s_8_4 (.in(k_7), .out(k_8_4));
serpentine s_8_5 (.in(k_7), .out(k_8_5));
serpentine s_8_6 (.in(k_7), .out(k_8_6));
serpentine s_8_7 (.in(k_7), .out(k_8_7));
endmodule
