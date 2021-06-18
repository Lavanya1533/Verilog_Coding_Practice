module mod_parity();
  reg [15:0] num;
  reg parity;
  reg clk;

  always
      forever #5 clk = ~clk;

  initial begin
        clk = 1'b0;
        num = 16'd10;
        parity_check(num, parity);
    //#10 num = 16'd8;
        //parity_check(num, parity);
    #100 $stop;
  end

  initial begin
    $monitor($time, "The parity of %d is %b", num, parity);
  end

  task automatic parity_check(input [15:0] num, output result);
  begin
    repeat(3) @(posedge clk);
    result = ^num;
  end
  endtask
endmodule
