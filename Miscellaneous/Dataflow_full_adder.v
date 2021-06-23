// Full-adder using dataflow modeling

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