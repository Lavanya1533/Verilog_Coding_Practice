module mag_comp_tb();
  reg [3:0] A, B;
  wire A_gt_B, A_lt_B, A_eq_B;

  //Instantiate top-level module
  mag_comp m1(.a_gt_b(A_gt_B), .a_lt_b(A_lt_B), .a_eq_b(A_eq_B), .a(A), .b(B));

  initial begin
        A = 4'd0; B = 4'd0;
    #10 A = 4'd10; B = 4'd9;
    #10 A = 4'd1; B = -4'd10;
    #10 A = 4'd2; B = 4'd11;
    #10 A = 4'd15; B = 4'd15;
    #10 $stop;
  end

  initial begin
    $monitor($time, "A = %d, B = %d, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", A, B, A_gt_B, A_lt_B, A_eq_B);
  end
endmodule
