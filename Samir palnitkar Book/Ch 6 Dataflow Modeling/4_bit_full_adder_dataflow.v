module full_adder_dataflow(a, b, cin, sum, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] sum;
  output cout;

//4-bit full adder using concatenation "{}" and arithematic "+" operator
  assign {cout, sum} = a + b + cin;
  
endmodule
