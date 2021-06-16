`timescale 1ns / 1ps

module d_ff_tb();
  reg D;
  reg CLK, RST;
  wire Q;

  //Top-level module instantiatation
  d_ff d1(.d(D), .clk(CLK), .rst(RST), .q(Q));

  initial
  begin
      CLK = 1'b0;
      RST = 1'b1;
      D   = 1'b1;
  #3  RST = 1'b0;
  #3  D   = 1'b0;
  #3  D   = 1'b1;
  #3  D   = 1'b0;
  #10 $stop;
  end

  always
  begin
    forever #5 CLK = ~CLK;
  end

  initial begin
    $monitor($time, "Reset = %b, Data = %b, Output = %b", RST, D, Q);
  end
endmodule
