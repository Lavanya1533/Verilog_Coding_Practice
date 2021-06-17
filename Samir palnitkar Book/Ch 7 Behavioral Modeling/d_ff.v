module d_ff(  input d,
              input clk, rst,
              output reg q);

//Active high synchronous D Flip Flop

  always @ (negedge clk) begin
    if (rst)
      q <= 1'b0;
    else
      q <= d;
  end
endmodule
