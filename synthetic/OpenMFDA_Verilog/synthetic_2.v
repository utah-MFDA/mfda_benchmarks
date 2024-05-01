module Synthetic_2(
input Source,
output Out
);

//first row 
chamber o1(.in(Source), .out(w1));
chamber o2(.in(Source), .out(w2));
chamber o3(.in(Source), .out(w3));
chamber o4(.in(Source), .out(w4));
chamber o5(.in(Source), .out(w4));
chamber o6(.in(Source), .out(w5));
chamber o7(.in(Source), .out(w5));
chamber o8(.in(Source), .out(w6));


//second row 
chamber o9(.in(w1), .out(w7));
chamber o10(.in(w2), .out(w7));
chamber o11(.in(w3), .out(w8));
chamber o12(.in(w4), .out(w8));
chamber o13(.in(w5), .out(w9));
chamber o14(.in(w6), .out(w9));

//third row
chamber o15(.in(w7), .out(w10));
chamber o16(.in(w8), .out(w10));
chamber o17(.in(w9), .out(w11));

//fourth row 
chamber o18(.in(w10), .out(w12));
chamber o19(.in(w11), .out(w12));

//fifth row 
chamber o20(.in(w12). .out(Out));


endmodule

