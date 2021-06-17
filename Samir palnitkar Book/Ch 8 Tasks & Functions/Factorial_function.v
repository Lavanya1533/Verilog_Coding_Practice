module mod_fact();
  reg [3:0] in1, in2;
  reg [31:0] result1, result2;

  initial begin
    in1 = 4'd4;
    result1 = fact(in1);
    $display("The factorial of %d is %d", in1, result1);
  end

  initial begin
  #10  in2 = 4'd5;
      result2 = fact(in2);
      $display("The factorial of %d is %d", in2, result2);
  end

  function automatic [31:0] fact (input [3:0] num);
  begin
    if (num > 1)
      fact = fact(num-1) * num;
    else
      fact = 4'b1;
  end
  endfunction
endmodule
