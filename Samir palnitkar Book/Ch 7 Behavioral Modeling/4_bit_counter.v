module counter( input clk, rst,
                output reg [3:0] q);
//  integer count = 0;

  always @(posedge clk or negedge rst)
  begin
    if (rst)
      q = 4'b0;
    else
      q = q + 1;
  end
endmodule
