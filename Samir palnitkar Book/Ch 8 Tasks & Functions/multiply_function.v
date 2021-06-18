module mod_mul();
  reg [3:0] num1, num2;
  reg [7:0] result;

  initial begin
    num1 = 4'd2;
    num2 = 4'd5;
    result = mul(num1, num2);
    $display("The multiplication of %d & %d is %d", num1, num2, result);
  end

  function automatic [7:0] mul (input [3:0] n1, n2);
  begin
    mul = n1 * n2;
  end
  endfunction
endmodule
