// 4-bit comparator using Dataflow modeling

module  Dataflow_comparator (input [3:0] a, b, output out);
  assign out = & (a ~^ b);

endmodule
