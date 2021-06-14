
module full_subtractor(d, b, p, q, r);
  input p, q, r;  //Here r is previous borrow
  output  d, b;

  // Computation of difference
  assign d = (~p && ~q && r) || (~p && q && ~r) || (p && ~q && ~r) || (p && q && r);

  //Computation of borrow
  assign b = (~p && q) || (~p && r) || (q && r);
endmodule
