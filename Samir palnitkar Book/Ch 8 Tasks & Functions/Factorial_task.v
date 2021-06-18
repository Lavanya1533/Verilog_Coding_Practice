module factorial_task();
  reg [3:0] num;
  reg [31:0] result;

  initial begin
    num = 4'd5;
    fact (num, result);
    $display("The factorial of %d is %d", num, result);
  end

  task automatic fact(input [3:0] in, output [31:0] RESULT);
  integer i = 1;
  integer temp = 1;
  begin
    while (i<=in) begin
      temp = temp * i;
      i = i + 1;
      end
      RESULT = i;
    end
  endtask
endmodule
