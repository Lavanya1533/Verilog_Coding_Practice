
module repeat_loop();
  integer a = 0;
  reg clk = 1'b0;

  always
  begin
    #5 clk = ~clk;
  end

  initial begin
    repeat (10)
    begin
      @(posedge clk)  #20 a = a + 1;
    end
  end

  initial begin
    #100 $stop;
  end
endmodule
