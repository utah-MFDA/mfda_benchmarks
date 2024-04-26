module binary_tree_2_2 (
output out_0,output out_1,input input_0,input input_1,input input_2,input input_3,input input_4,input input_5,input input_6,input input_7
);
diffmix_25px_0 mix_input_0 (.a_fluid(input_0__1_l), .b_fluid(input_0__1_r), .out_fluid(input_0));
wire input_0__1_l, input_0__1_r;
diffmix_25px_0 mix_input_0__1_l (.a_fluid(input_0__1_l__0_l), .b_fluid(input_0__1_l__0_r), .out_fluid(input_0__1_l));
wire input_0__1_l__0_l, input_0__1_l__0_r;
diffmix_25px_0 mix_input_0__1_r (.a_fluid(input_0__1_r__0_l), .b_fluid(input_0__1_r__0_r), .out_fluid(input_0__1_r));
wire input_0__1_r__0_l, input_0__1_r__0_r;
diffmix_25px_0 mix_input_1 (.a_fluid(input_1__1_l), .b_fluid(input_1__1_r), .out_fluid(input_1));
wire input_1__1_l, input_1__1_r;
diffmix_25px_0 mix_input_1__1_l (.a_fluid(input_1__1_l__0_l), .b_fluid(input_1__1_l__0_r), .out_fluid(input_1__1_l));
wire input_1__1_l__0_l, input_1__1_l__0_r;
diffmix_25px_0 mix_input_1__1_r (.a_fluid(input_1__1_r__0_l), .b_fluid(input_1__1_r__0_r), .out_fluid(input_1__1_r));
wire input_1__1_r__0_l, input_1__1_r__0_r;
assign input_0 = input_0__1_l__0_l;
assign input_1 = input_0__1_l__0_r;
assign input_2 = input_0__1_r__0_l;
assign input_3 = input_0__1_r__0_r;
assign input_4 = input_1__1_l__0_l;
assign input_5 = input_1__1_l__0_r;
assign input_6 = input_1__1_r__0_l;
assign input_7 = input_1__1_r__0_r;
endmodule
