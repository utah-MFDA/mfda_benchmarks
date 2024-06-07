module chain_mixer_4 (
output j4,input j0,input k4,input k4,input k4,input k4
);
mixer m0(.a(in), .b(k0), .y(j1));
wire j1;
wire j2;
wire j3;
mixer m0(.a(j0), .b(k0), .y(j1));
mixer m1(.a(j1), .b(k1), .y(j2));
mixer m2(.a(j2), .b(k2), .y(j3));
mixer m3(.a(j3), .b(k3), .y(j4));
endmodule
