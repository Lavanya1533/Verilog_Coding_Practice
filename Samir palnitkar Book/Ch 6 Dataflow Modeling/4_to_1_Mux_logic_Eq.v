
module mux_logic(sel, in, out);
  input [1:0] sel;
  input [3:0] in;
  output out;

//Continuous assignment using logical operators

  assign out = ((!sel[1] && !sel[0] && in[0]) ||
                (!sel[1] && sel[0] && in[1]) ||
                (sel[1] && !sel[0] && in[2]) ||
                (sel[1] && sel[0] && in[3]));
endmodule
