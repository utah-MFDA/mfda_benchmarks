module chain_mixer_8 (
output j8,input j0,input k8,input k8,input k8,input k8,input k8,input k8,input k8,input k8
);
mixer m0(.a(in), .b(k0), .y(j1));
wire j1;
wire j2;
wire j3;
wire j4;
wire j5;
wire j6;
wire j7;
mixer m0(.a(j0), .b(k0), .y(j1));
mixer m1(.a(j1), .b(k1), .y(j2));
mixer m2(.a(j2), .b(k2), .y(j3));
mixer m3(.a(j3), .b(k3), .y(j4));
mixer m4(.a(j4), .b(k4), .y(j5));
mixer m5(.a(j5), .b(k5), .y(j6));
mixer m6(.a(j6), .b(k6), .y(j7));
mixer m7(.a(j7), .b(k7), .y(j8));
endmodule
