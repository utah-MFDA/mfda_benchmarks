module multiplexer_5 (
inout k_0_0,k_5_0,k_5_1,k_5_2,k_5_3,k_5_4,k_5_5,k_5_6,k_5_7,k_5_8,k_5_9,k_5_10,k_5_11,k_5_12,k_5_13,k_5_14,k_5_15,k_5_16,k_5_17,k_5_18,k_5_19,k_5_20,k_5_21,k_5_22,k_5_23,k_5_24,k_5_25,k_5_26,k_5_27,k_5_28,k_5_29,k_5_30,k_5_31,
input c_0_0, c_0_1,
input c_1_0, c_1_1,
input c_2_0, c_2_1,
input c_3_0, c_3_1,
input c_4_0, c_4_1,
input c_5_0, c_5_1
);
wire k_1_0,k_1_1;
wire k_2_0,k_2_1,k_2_2,k_2_3;
wire k_3_0,k_3_1,k_3_2,k_3_3,k_3_4,k_3_5,k_3_6,k_3_7;
wire k_4_0,k_4_1,k_4_2,k_4_3,k_4_4,k_4_5,k_4_6,k_4_7,k_4_8,k_4_9,k_4_10,k_4_11,k_4_12,k_4_13,k_4_14,k_4_15;
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
valve v_5_0 (.fluid_in(k_5_0), .fluid_out(k_4_0), .air_in(c_5_0));
valve v_5_1 (.fluid_in(k_5_1), .fluid_out(k_4_0), .air_in(c_5_1));
valve v_5_2 (.fluid_in(k_5_2), .fluid_out(k_4_1), .air_in(c_5_0));
valve v_5_3 (.fluid_in(k_5_3), .fluid_out(k_4_1), .air_in(c_5_1));
valve v_5_4 (.fluid_in(k_5_4), .fluid_out(k_4_2), .air_in(c_5_0));
valve v_5_5 (.fluid_in(k_5_5), .fluid_out(k_4_2), .air_in(c_5_1));
valve v_5_6 (.fluid_in(k_5_6), .fluid_out(k_4_3), .air_in(c_5_0));
valve v_5_7 (.fluid_in(k_5_7), .fluid_out(k_4_3), .air_in(c_5_1));
valve v_5_8 (.fluid_in(k_5_8), .fluid_out(k_4_4), .air_in(c_5_0));
valve v_5_9 (.fluid_in(k_5_9), .fluid_out(k_4_4), .air_in(c_5_1));
valve v_5_10 (.fluid_in(k_5_10), .fluid_out(k_4_5), .air_in(c_5_0));
valve v_5_11 (.fluid_in(k_5_11), .fluid_out(k_4_5), .air_in(c_5_1));
valve v_5_12 (.fluid_in(k_5_12), .fluid_out(k_4_6), .air_in(c_5_0));
valve v_5_13 (.fluid_in(k_5_13), .fluid_out(k_4_6), .air_in(c_5_1));
valve v_5_14 (.fluid_in(k_5_14), .fluid_out(k_4_7), .air_in(c_5_0));
valve v_5_15 (.fluid_in(k_5_15), .fluid_out(k_4_7), .air_in(c_5_1));
valve v_5_16 (.fluid_in(k_5_16), .fluid_out(k_4_8), .air_in(c_5_0));
valve v_5_17 (.fluid_in(k_5_17), .fluid_out(k_4_8), .air_in(c_5_1));
valve v_5_18 (.fluid_in(k_5_18), .fluid_out(k_4_9), .air_in(c_5_0));
valve v_5_19 (.fluid_in(k_5_19), .fluid_out(k_4_9), .air_in(c_5_1));
valve v_5_20 (.fluid_in(k_5_20), .fluid_out(k_4_10), .air_in(c_5_0));
valve v_5_21 (.fluid_in(k_5_21), .fluid_out(k_4_10), .air_in(c_5_1));
valve v_5_22 (.fluid_in(k_5_22), .fluid_out(k_4_11), .air_in(c_5_0));
valve v_5_23 (.fluid_in(k_5_23), .fluid_out(k_4_11), .air_in(c_5_1));
valve v_5_24 (.fluid_in(k_5_24), .fluid_out(k_4_12), .air_in(c_5_0));
valve v_5_25 (.fluid_in(k_5_25), .fluid_out(k_4_12), .air_in(c_5_1));
valve v_5_26 (.fluid_in(k_5_26), .fluid_out(k_4_13), .air_in(c_5_0));
valve v_5_27 (.fluid_in(k_5_27), .fluid_out(k_4_13), .air_in(c_5_1));
valve v_5_28 (.fluid_in(k_5_28), .fluid_out(k_4_14), .air_in(c_5_0));
valve v_5_29 (.fluid_in(k_5_29), .fluid_out(k_4_14), .air_in(c_5_1));
valve v_5_30 (.fluid_in(k_5_30), .fluid_out(k_4_15), .air_in(c_5_0));
valve v_5_31 (.fluid_in(k_5_31), .fluid_out(k_4_15), .air_in(c_5_1));
endmodule
