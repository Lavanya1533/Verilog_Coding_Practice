module asynch_d_ff( input clk, rst,
                    input d,
                    output reg q);

  //Active high asynchronous Reset

  always @(negedge clk or posedge rst)
  begin
    if (rst)
      q <= 1'b0;
    else
      q <= d;
  end
endmodule
