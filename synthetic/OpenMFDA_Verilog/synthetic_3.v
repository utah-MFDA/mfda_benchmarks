module Synthetic_3(
input Source,
output Out
);

mixer m1(.a(), .b(), .out());
chamber o1(.in(Source), .out(w1));

//first row 
chamber o1(.in(Source), .out(w1));
chamber o2(.in(Source), .out(w2));
chamber o3(.in(Source), .out(w3));
chamber o4(.in(Source), .out(w3));
chamber o5(.in(Source), .out(w4));
chamber o6(.in(Source), .out(w5));
chamber o7(.in(Source), .out(w5));
chamber o8(.in(Source), .out(w6));
chamber o9(.in(Source), .out(w6));
chamber o10(.in(Source), .out(w7));
chamber o11(.in(Source), .out(w8));

//Second row

mixer m12(.a(w1), .b(Source), .out(w9));
chamber o13(.in(w2), .out(w9));
mixer m14(.a(w3), .b(w3), .out(w10));
chamber o15(.in(w4), .out(w11));
mixer m16(.a(w5), .b(w5), .out(w12));
mixer m17(.a(w6), .b(w6), .out(w12));
chamber o18(.in(w7), .out(w13));
chamber o19(.in(w8), .out(w13));

//Third row

mixer m20(.a(w9), .b(w9), .out(w14));
chamber o21(.in(w10), .out(w14));
chamber o22(.in(w11), .out(w15));
mixer m23(.a(w12), .b(w12), .out(w15));
mixer m24(.a(w13), .b(w13), .out(w16));

//Fourth row

mixer m25(.a(w14), .b(w14), .out(w17));
mixer m26(.a(w15), .b(w15), .out(w17));
chamber o27(.in(w16), .out(w18));

//Fifth row
mixer m28(.a(w17), .b(w17), .out(w18));

//Sixth row 
mixer m29(.a(w18), .b(w18), .out(w19));

//Seventh row
chamber o30(.in(w19), .out(Out));









