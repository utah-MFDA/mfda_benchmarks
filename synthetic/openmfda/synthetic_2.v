module synthetic_2(
input Source,
output Out
);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19;

//first row
chamber o1(.in(Source), .out(w1));
chamber o2(.in(Source), .out(w2));
chamber o3(.in(Source), .out(w3));
chamber o4(.in(Source), .out(w4));
heater o5(.in(Source), .out(w13));
filter o6(.in(Source), .out(w5));
heater o7(.in(Source), .out(w14));
chamber o8(.in(Source), .out(w6));


//second row
heater o9(.in(w1), .out(w7));
filter o10(.in(w2), .out(w15));
detector o11(.in(w3), .out(w8));
mixer o12(.a(w4), .b(w13), .y(w8));
mixer o13(.a(w5), .b(w14), .y(w16));
filter o14(.in(w6), .out(w17));

//third row
mixer o15(.a(w7), .b(w15), .y(w10));
mixer o16(.a(w8), .b(w16), .y(w18));
mixer o17(.a(w9), .b(w17), .y(w11));

//fourth row
mixer o18(.a(w10), .b(w18), .y(w12));
heater o19(.in(w11), .out(w19));

//fifth row
mixer m20(.a(w12), .b(w19), .y(Out));
endmodule
