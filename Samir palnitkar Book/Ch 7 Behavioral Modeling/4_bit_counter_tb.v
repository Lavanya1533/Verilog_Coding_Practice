`timescale 1ns/1ps

module counter_tb();
  reg CLK, RST;
  wire [3:0] Q;

  //Top-level module instantiation
  counter c1(.clk(CLK), .rst(RST), .q(Q));

//Initial blk for clk generation
  initial begin
    RST = 1'b1;
    CLK = 1'b1;
    forever #5  CLK = ~CLK;   //Clock period is 10 ns
  end

  //Simulation blk for counter
  initial begin
    #1  RST = 1'b0;
    #150 RST = 1'b1;
    #10 $finish;
  end

  initial begin
    $monitor($time, "RST = %b, Q = %d", RST, Q);
  end
endmodule
