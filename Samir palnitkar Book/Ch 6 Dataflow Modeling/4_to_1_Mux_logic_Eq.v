
module mux(sel, IN, OUT);
  input [1:0] sel;
  input [3:0] IN;
  output OUT;

  assign OUT = ()
