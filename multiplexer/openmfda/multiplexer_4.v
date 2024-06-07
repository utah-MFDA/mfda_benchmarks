module multiplexer_4 (
inout k_0_0,k_4_0,k_4_1,k_4_2,k_4_3,k_4_4,k_4_5,k_4_6,k_4_7,k_4_8,k_4_9,k_4_10,k_4_11,k_4_12,k_4_13,k_4_14,k_4_15,
input c_0_0, c_0_1,
input c_1_0, c_1_1,
input c_2_0, c_2_1,
input c_3_0, c_3_1,
input c_4_0, c_4_1
);
wire k_1_0,k_1_1;
wire k_2_0,k_2_1,k_2_2,k_2_3;
wire k_3_0,k_3_1,k_3_2,k_3_3,k_3_4,k_3_5,k_3_6,k_3_7;
valve v_1_0 (.fluid_in(k_1_0), .fluid_out(k_0_0), .air_in(c_1_0));
valve v_1_1 (.fluid_in(k_1_1), .fluid_out(k_0_0), .air_in(c_1_1));
valve v_2_0 (.fluid_in(k_2_0), .fluid_out(k_1_0), .air_in(c_2_0));
valve v_2_1 (.fluid_in(k_2_1), .fluid_out(k_1_0), .air_in(c_2_1));
valve v_2_2 (.fluid_in(k_2_2), .fluid_out(k_1_1), .air_in(c_2_0));
valve v_2_3 (.fluid_in(k_2_3), .fluid_out(k_1_1), .air_in(c_2_1));
valve v_3_0 (.fluid_in(k_3_0), .fluid_out(k_2_0), .air_in(c_3_0));
valve v_3_1 (.fluid_in(k_3_1), .fluid_out(k_2_0), .air_in(c_3_1));
valve v_3_2 (.fluid_in(k_3_2), .fluid_out(k_2_1), .air_in(c_3_0));
valve v_3_3 (.fluid_in(k_3_3), .fluid_out(k_2_1), .air_in(c_3_1));
valve v_3_4 (.fluid_in(k_3_4), .fluid_out(k_2_2), .air_in(c_3_0));
valve v_3_5 (.fluid_in(k_3_5), .fluid_out(k_2_2), .air_in(c_3_1));
valve v_3_6 (.fluid_in(k_3_6), .fluid_out(k_2_3), .air_in(c_3_0));
valve v_3_7 (.fluid_in(k_3_7), .fluid_out(k_2_3), .air_in(c_3_1));
valve v_4_0 (.fluid_in(k_4_0), .fluid_out(k_3_0), .air_in(c_4_0));
valve v_4_1 (.fluid_in(k_4_1), .fluid_out(k_3_0), .air_in(c_4_1));
valve v_4_2 (.fluid_in(k_4_2), .fluid_out(k_3_1), .air_in(c_4_0));
valve v_4_3 (.fluid_in(k_4_3), .fluid_out(k_3_1), .air_in(c_4_1));
valve v_4_4 (.fluid_in(k_4_4), .fluid_out(k_3_2), .air_in(c_4_0));
valve v_4_5 (.fluid_in(k_4_5), .fluid_out(k_3_2), .air_in(c_4_1));
valve v_4_6 (.fluid_in(k_4_6), .fluid_out(k_3_3), .air_in(c_4_0));
valve v_4_7 (.fluid_in(k_4_7), .fluid_out(k_3_3), .air_in(c_4_1));
valve v_4_8 (.fluid_in(k_4_8), .fluid_out(k_3_4), .air_in(c_4_0));
valve v_4_9 (.fluid_in(k_4_9), .fluid_out(k_3_4), .air_in(c_4_1));
valve v_4_10 (.fluid_in(k_4_10), .fluid_out(k_3_5), .air_in(c_4_0));
valve v_4_11 (.fluid_in(k_4_11), .fluid_out(k_3_5), .air_in(c_4_1));
valve v_4_12 (.fluid_in(k_4_12), .fluid_out(k_3_6), .air_in(c_4_0));
valve v_4_13 (.fluid_in(k_4_13), .fluid_out(k_3_6), .air_in(c_4_1));
valve v_4_14 (.fluid_in(k_4_14), .fluid_out(k_3_7), .air_in(c_4_0));
valve v_4_15 (.fluid_in(k_4_15), .fluid_out(k_3_7), .air_in(c_4_1));
endmodule
