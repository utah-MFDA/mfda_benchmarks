module binary_tree_4_4 (
output out_0,output out_1,output out_2,output out_3,input input_0,input input_1,input input_2,input input_3,input input_4,input input_5,input input_6,input input_7,input input_8,input input_9,input input_10,input input_11,input input_12,input input_13,input input_14,input input_15,input input_16,input input_17,input input_18,input input_19,input input_20,input input_21,input input_22,input input_23,input input_24,input input_25,input input_26,input input_27,input input_28,input input_29,input input_30,input input_31,input input_32,input input_33,input input_34,input input_35,input input_36,input input_37,input input_38,input input_39,input input_40,input input_41,input input_42,input input_43,input input_44,input input_45,input input_46,input input_47,input input_48,input input_49,input input_50,input input_51,input input_52,input input_53,input input_54,input input_55,input input_56,input input_57,input input_58,input input_59,input input_60,input input_61,input input_62,input input_63
);
mixer mix_t0_0 (.a(t0_00), .b(t0_01), .y(t0_0));
wire t0_00, t0_01;
mixer mix_t0_00 (.a(t0_000), .b(t0_001), .y(t0_00));
wire t0_000, t0_001;
mixer mix_t0_000 (.a(t0_0000), .b(t0_0001), .y(t0_000));
wire t0_0000, t0_0001;
mixer mix_t0_0000 (.a(t0_00000), .b(t0_00001), .y(t0_0000));
wire t0_00000, t0_00001;
mixer mix_t0_0001 (.a(t0_00010), .b(t0_00011), .y(t0_0001));
wire t0_00010, t0_00011;
mixer mix_t0_001 (.a(t0_0010), .b(t0_0011), .y(t0_001));
wire t0_0010, t0_0011;
mixer mix_t0_0010 (.a(t0_00100), .b(t0_00101), .y(t0_0010));
wire t0_00100, t0_00101;
mixer mix_t0_0011 (.a(t0_00110), .b(t0_00111), .y(t0_0011));
wire t0_00110, t0_00111;
mixer mix_t0_01 (.a(t0_010), .b(t0_011), .y(t0_01));
wire t0_010, t0_011;
mixer mix_t0_010 (.a(t0_0100), .b(t0_0101), .y(t0_010));
wire t0_0100, t0_0101;
mixer mix_t0_0100 (.a(t0_01000), .b(t0_01001), .y(t0_0100));
wire t0_01000, t0_01001;
mixer mix_t0_0101 (.a(t0_01010), .b(t0_01011), .y(t0_0101));
wire t0_01010, t0_01011;
mixer mix_t0_011 (.a(t0_0110), .b(t0_0111), .y(t0_011));
wire t0_0110, t0_0111;
mixer mix_t0_0110 (.a(t0_01100), .b(t0_01101), .y(t0_0110));
wire t0_01100, t0_01101;
mixer mix_t0_0111 (.a(t0_01110), .b(t0_01111), .y(t0_0111));
wire t0_01110, t0_01111;
mixer mix_t1_0 (.a(t1_00), .b(t1_01), .y(t1_0));
wire t1_00, t1_01;
mixer mix_t1_00 (.a(t1_000), .b(t1_001), .y(t1_00));
wire t1_000, t1_001;
mixer mix_t1_000 (.a(t1_0000), .b(t1_0001), .y(t1_000));
wire t1_0000, t1_0001;
mixer mix_t1_0000 (.a(t1_00000), .b(t1_00001), .y(t1_0000));
wire t1_00000, t1_00001;
mixer mix_t1_0001 (.a(t1_00010), .b(t1_00011), .y(t1_0001));
wire t1_00010, t1_00011;
mixer mix_t1_001 (.a(t1_0010), .b(t1_0011), .y(t1_001));
wire t1_0010, t1_0011;
mixer mix_t1_0010 (.a(t1_00100), .b(t1_00101), .y(t1_0010));
wire t1_00100, t1_00101;
mixer mix_t1_0011 (.a(t1_00110), .b(t1_00111), .y(t1_0011));
wire t1_00110, t1_00111;
mixer mix_t1_01 (.a(t1_010), .b(t1_011), .y(t1_01));
wire t1_010, t1_011;
mixer mix_t1_010 (.a(t1_0100), .b(t1_0101), .y(t1_010));
wire t1_0100, t1_0101;
mixer mix_t1_0100 (.a(t1_01000), .b(t1_01001), .y(t1_0100));
wire t1_01000, t1_01001;
mixer mix_t1_0101 (.a(t1_01010), .b(t1_01011), .y(t1_0101));
wire t1_01010, t1_01011;
mixer mix_t1_011 (.a(t1_0110), .b(t1_0111), .y(t1_011));
wire t1_0110, t1_0111;
mixer mix_t1_0110 (.a(t1_01100), .b(t1_01101), .y(t1_0110));
wire t1_01100, t1_01101;
mixer mix_t1_0111 (.a(t1_01110), .b(t1_01111), .y(t1_0111));
wire t1_01110, t1_01111;
mixer mix_t2_0 (.a(t2_00), .b(t2_01), .y(t2_0));
wire t2_00, t2_01;
mixer mix_t2_00 (.a(t2_000), .b(t2_001), .y(t2_00));
wire t2_000, t2_001;
mixer mix_t2_000 (.a(t2_0000), .b(t2_0001), .y(t2_000));
wire t2_0000, t2_0001;
mixer mix_t2_0000 (.a(t2_00000), .b(t2_00001), .y(t2_0000));
wire t2_00000, t2_00001;
mixer mix_t2_0001 (.a(t2_00010), .b(t2_00011), .y(t2_0001));
wire t2_00010, t2_00011;
mixer mix_t2_001 (.a(t2_0010), .b(t2_0011), .y(t2_001));
wire t2_0010, t2_0011;
mixer mix_t2_0010 (.a(t2_00100), .b(t2_00101), .y(t2_0010));
wire t2_00100, t2_00101;
mixer mix_t2_0011 (.a(t2_00110), .b(t2_00111), .y(t2_0011));
wire t2_00110, t2_00111;
mixer mix_t2_01 (.a(t2_010), .b(t2_011), .y(t2_01));
wire t2_010, t2_011;
mixer mix_t2_010 (.a(t2_0100), .b(t2_0101), .y(t2_010));
wire t2_0100, t2_0101;
mixer mix_t2_0100 (.a(t2_01000), .b(t2_01001), .y(t2_0100));
wire t2_01000, t2_01001;
mixer mix_t2_0101 (.a(t2_01010), .b(t2_01011), .y(t2_0101));
wire t2_01010, t2_01011;
mixer mix_t2_011 (.a(t2_0110), .b(t2_0111), .y(t2_011));
wire t2_0110, t2_0111;
mixer mix_t2_0110 (.a(t2_01100), .b(t2_01101), .y(t2_0110));
wire t2_01100, t2_01101;
mixer mix_t2_0111 (.a(t2_01110), .b(t2_01111), .y(t2_0111));
wire t2_01110, t2_01111;
mixer mix_t3_0 (.a(t3_00), .b(t3_01), .y(t3_0));
wire t3_00, t3_01;
mixer mix_t3_00 (.a(t3_000), .b(t3_001), .y(t3_00));
wire t3_000, t3_001;
mixer mix_t3_000 (.a(t3_0000), .b(t3_0001), .y(t3_000));
wire t3_0000, t3_0001;
mixer mix_t3_0000 (.a(t3_00000), .b(t3_00001), .y(t3_0000));
wire t3_00000, t3_00001;
mixer mix_t3_0001 (.a(t3_00010), .b(t3_00011), .y(t3_0001));
wire t3_00010, t3_00011;
mixer mix_t3_001 (.a(t3_0010), .b(t3_0011), .y(t3_001));
wire t3_0010, t3_0011;
mixer mix_t3_0010 (.a(t3_00100), .b(t3_00101), .y(t3_0010));
wire t3_00100, t3_00101;
mixer mix_t3_0011 (.a(t3_00110), .b(t3_00111), .y(t3_0011));
wire t3_00110, t3_00111;
mixer mix_t3_01 (.a(t3_010), .b(t3_011), .y(t3_01));
wire t3_010, t3_011;
mixer mix_t3_010 (.a(t3_0100), .b(t3_0101), .y(t3_010));
wire t3_0100, t3_0101;
mixer mix_t3_0100 (.a(t3_01000), .b(t3_01001), .y(t3_0100));
wire t3_01000, t3_01001;
mixer mix_t3_0101 (.a(t3_01010), .b(t3_01011), .y(t3_0101));
wire t3_01010, t3_01011;
mixer mix_t3_011 (.a(t3_0110), .b(t3_0111), .y(t3_011));
wire t3_0110, t3_0111;
mixer mix_t3_0110 (.a(t3_01100), .b(t3_01101), .y(t3_0110));
wire t3_01100, t3_01101;
mixer mix_t3_0111 (.a(t3_01110), .b(t3_01111), .y(t3_0111));
wire t3_01110, t3_01111;
wire t0_0;
assign out_0 = t0_0;
wire t1_0;
assign out_1 = t1_0;
wire t2_0;
assign out_2 = t2_0;
wire t3_0;
assign out_3 = t3_0;
assign input_0 = t0_00000;
assign input_1 = t0_00001;
assign input_2 = t0_00010;
assign input_3 = t0_00011;
assign input_4 = t0_00100;
assign input_5 = t0_00101;
assign input_6 = t0_00110;
assign input_7 = t0_00111;
assign input_8 = t0_01000;
assign input_9 = t0_01001;
assign input_10 = t0_01010;
assign input_11 = t0_01011;
assign input_12 = t0_01100;
assign input_13 = t0_01101;
assign input_14 = t0_01110;
assign input_15 = t0_01111;
assign input_16 = t1_00000;
assign input_17 = t1_00001;
assign input_18 = t1_00010;
assign input_19 = t1_00011;
assign input_20 = t1_00100;
assign input_21 = t1_00101;
assign input_22 = t1_00110;
assign input_23 = t1_00111;
assign input_24 = t1_01000;
assign input_25 = t1_01001;
assign input_26 = t1_01010;
assign input_27 = t1_01011;
assign input_28 = t1_01100;
assign input_29 = t1_01101;
assign input_30 = t1_01110;
assign input_31 = t1_01111;
assign input_32 = t2_00000;
assign input_33 = t2_00001;
assign input_34 = t2_00010;
assign input_35 = t2_00011;
assign input_36 = t2_00100;
assign input_37 = t2_00101;
assign input_38 = t2_00110;
assign input_39 = t2_00111;
assign input_40 = t2_01000;
assign input_41 = t2_01001;
assign input_42 = t2_01010;
assign input_43 = t2_01011;
assign input_44 = t2_01100;
assign input_45 = t2_01101;
assign input_46 = t2_01110;
assign input_47 = t2_01111;
assign input_48 = t3_00000;
assign input_49 = t3_00001;
assign input_50 = t3_00010;
assign input_51 = t3_00011;
assign input_52 = t3_00100;
assign input_53 = t3_00101;
assign input_54 = t3_00110;
assign input_55 = t3_00111;
assign input_56 = t3_01000;
assign input_57 = t3_01001;
assign input_58 = t3_01010;
assign input_59 = t3_01011;
assign input_60 = t3_01100;
assign input_61 = t3_01101;
assign input_62 = t3_01110;
assign input_63 = t3_01111;
endmodule