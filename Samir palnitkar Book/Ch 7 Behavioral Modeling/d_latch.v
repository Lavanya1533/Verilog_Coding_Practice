
module d_latch( input d,
                input clk,
                output reg q);

  //Active high D-latch using wait statment
  always
  begin
    wait   (clk)
      q = d;
  end
endmodule
