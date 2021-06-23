
//4-bit ripple carry adder using full adder

module ripple_adder(  input [3:0] a, b,
                      input cin,
                      output [3:0] sum,
                      output cout);

    wire w1_co, w2_co, w3_co;

    full_adder f0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(w1_co));
    full_adder f1(.a(a[1]), .b(b[1]), .cin(w1_co), .sum(sum[1]), .cout(w2_co));
    full_adder f2(.a(a[2]), .b(b[2]), .cin(w2_co), .sum(sum[2]), .cout(w3_co));
    full_adder f3(.a(a[3]), .b(b[3]), .cin(w3_co), .sum(sum[3]), .cout(cout));

endmodule

module full_adder( input a, b, cin,
                  output sum, cout);
	wire w1_sum, w2_cout, w3_cout;

	//Top-bottom approach
	half_adder h1(a,b,w1_sum, w2_cout);
	half_adder h2(w1_sum, cin, sum, w3_cout);
	or o1(cout, w3_cout, w2_cout);

endmodule


module half_adder( input a, b,
                  output sum, cout);
  assign sum = a ^ b;   // Bit-wise XOR operator
  assign cout = a & b;  // Bit-wise AND operator
endmodule
