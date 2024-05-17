module synthetic_1(
input incoming,
output outgoing
);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
chamber o1(.in(incoming), .out(w1));
filter o4(.in(w1), .out(w2));
heater o6(.in(w2), .out(w3));

chamber o2(.in(incoming), .out(w4));
detector o5(.in(w4), .out(w5));

heater o3(.in(incoming), .out(w5));

mixer o7(.a(w5), .b(w8), .y(w6));
filter o8(.in(w6), .out(w9));

mixer o9(.a(w9), .b(w3), .y(w7));

detector o10(.in(w7), .out(outgoing));

endmodule
