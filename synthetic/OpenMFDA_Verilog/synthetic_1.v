module Synthetic_1(
input Source,
output Out
);

chamber Mix_o1(.in(Source), .out(w1));
chamber Filter_o4(.in(w1), .out(w2));
chamber Heat_o6(.in(w2), .out(w3));

chamber Mix_o2(.in(Source), .out(w4));
chamber Detect_o5(.in(w4), .out(w5));

chamber Heat_o3(.in(Source), .out(w5));

chamber Mix_o7(.in(w5), .out(w6));
chamber Filter_o8(.in(w6), .out(w3));

chamber Mix_o9(.in(w3), .out(w7));
chamber Detect_o10(.in(w7), .out(Out));

endmodule

