module structural_mux(input a, b, sel, output Y);
  wire and1, and2, not1;

  not u1(not1, sel);
  and u2(and1, a, sel);
  and u3(and2, b, not1);
  or u4(Y, and1, and2);
  endmodule
