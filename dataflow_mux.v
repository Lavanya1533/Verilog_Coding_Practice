module dataflow_mux(input a, b, sel, output Y);
  assign Y = (a & sel) | (b & ~sel);
  endmodule
