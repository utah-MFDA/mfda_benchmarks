module chain_mixer_16 (
output j16,input j0,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16,input k16
);
mixer m0(.a(in), .b(k0), .y(j1));
wire j1;
wire j2;
wire j3;
wire j4;
wire j5;
wire j6;
wire j7;
wire j8;
wire j9;
wire j10;
wire j11;
wire j12;
wire j13;
wire j14;
wire j15;
mixer m0(.a(j0), .b(k0), .y(j1));
mixer m1(.a(j1), .b(k1), .y(j2));
mixer m2(.a(j2), .b(k2), .y(j3));
mixer m3(.a(j3), .b(k3), .y(j4));
mixer m4(.a(j4), .b(k4), .y(j5));
mixer m5(.a(j5), .b(k5), .y(j6));
mixer m6(.a(j6), .b(k6), .y(j7));
mixer m7(.a(j7), .b(k7), .y(j8));
mixer m8(.a(j8), .b(k8), .y(j9));
mixer m9(.a(j9), .b(k9), .y(j10));
mixer m10(.a(j10), .b(k10), .y(j11));
mixer m11(.a(j11), .b(k11), .y(j12));
mixer m12(.a(j12), .b(k12), .y(j13));
mixer m13(.a(j13), .b(k13), .y(j14));
mixer m14(.a(j14), .b(k14), .y(j15));
mixer m15(.a(j15), .b(k15), .y(j16));
endmodule
