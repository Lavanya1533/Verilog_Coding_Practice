module ripple_caary_counter(q, clock, clear);
  input clock, clear;
  output [3:0] q;

  T_FF t1(clock, clear, q[0]);
  T_FF t2(q[0], clear, q[1]);
  T_FF t3(q[1], clear, q[2]);
  T_FF t4(q[2], clear, q[3]);
endmodule

module T_FF(clock, reset, q);
  input clock, reset;
  output q;

  D_FF d1(q, , ~q, clock, reset);
endmodule

module D_FF(q, qbar, d, clk, clear);
  output q, qbar;
  input d;
  input clk, clear;

  wire cbar, s, sbar, r, rbar;

  assign cbar = ~clear;

  assign  sbar  = ~(rbar & s),
          s     = ~(sbar & cbar & ~clk),
          r     = ~(s & ~clk & rbar),
          rbar  = ~(r & cbar & d);

  assign  q   = ~(s & qbar),
          qbar  = ~(q & cbar & r);
endmodule
