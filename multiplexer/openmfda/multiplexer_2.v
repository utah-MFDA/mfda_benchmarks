module multiplexer_2 (
inout k_0_0,k_2_0,k_2_1,k_2_2,k_2_3,
input c_0_0, c_0_1,
input c_1_0, c_1_1,
input c_2_0, c_2_1
);
wire k_1_0,k_1_1;
valve v_1_0 (.fluid_in(k_1_0), .fluid_out(k_0_0), .air_in(c_1_0));
valve v_1_1 (.fluid_in(k_1_1), .fluid_out(k_0_0), .air_in(c_1_1));
valve v_2_0 (.fluid_in(k_2_0), .fluid_out(k_1_0), .air_in(c_2_0));
valve v_2_1 (.fluid_in(k_2_1), .fluid_out(k_1_0), .air_in(c_2_1));
valve v_2_2 (.fluid_in(k_2_2), .fluid_out(k_1_1), .air_in(c_2_0));
valve v_2_3 (.fluid_in(k_2_3), .fluid_out(k_1_1), .air_in(c_2_1));
endmodule
