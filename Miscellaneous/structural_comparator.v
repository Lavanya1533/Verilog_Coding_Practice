// 4-bit comparator suing structural modeling

module struct_comparator(a,b,out);
input [3:0] a,b;
output out;
wire [3:0] q;

  xor u1(q[0], a[0], b[0]);
  xor u2(q[1], a[1], b[1]);
  xor u3(q[2], a[2], b[2]);
  xor u4(q[3], a[3], b[3]);
  and u5(out, q[0], q[1], q[2], q[3]);
endmodule
