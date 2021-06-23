// Half-adder using dataflow modeling

module half_adder( input a, b,
                  output sum, cout);
  assign sum = a ^ b;   // Bit-wise XOR operator
  assign cout = a & b;  // Bit-wise AND operator
endmodule
