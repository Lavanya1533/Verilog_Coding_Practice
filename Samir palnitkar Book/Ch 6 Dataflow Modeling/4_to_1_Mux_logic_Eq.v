
module mux(sel, IN, OUT);
  input [1:0] sel;
  input [3:0] IN;
  output OUT;

//Continuous assignment using logical operators

  assign OUT = ((!sel[1] && !sel[0] && IN[0]) ||
                (!sel[1] && sel[0] && IN[1]) ||
                (sel[1] && !sel[0] && IN[2]) ||
                (sel[1] && sel[0] && IN[3]));
endmodule
