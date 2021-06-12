module S_R_latch(Sbar, Rbar, Q, Qbar);
  input Sbar, Rbar;
  output Q, Qbar;

  nand n1(Q, Sbar, Qbar);
  nand n2(Qbar, Rbar, Q);
endmodule
