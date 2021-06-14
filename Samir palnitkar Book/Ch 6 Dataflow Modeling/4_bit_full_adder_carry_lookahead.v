module full_adder_carry_lookahead(a, b, cin, sum, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] sum;
  output cout;

  wire p0, p1, p2, p3, g0, g1, g2, g3;
  wire c0, c1, c2, c3, c4;

  //Computing the p for each stage
  assign  p0 = a[0] ^ b[0],
          p1 = a[1] ^ b[1],
          p2 = a[2] ^ b[2],
          p3 = a[3] ^ b[3];

  //Computing the g for each stage
  assign  g0 = a[0] & b[0],
          g1 = a[1] & b[1],
          g2 = a[2] & b[2],
          g3 = a[3] & b[3];

  //Computing the carry for each stage
  //Note: cin is equivalent ot c0 in the arithematic equation for carry llokahead equation
  assign  c1 = g0 | (p0 & cin),
          c2 = g1 | (p1 & g0) | (p1 & p0 & cin),
          c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin),
          c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & p0 & cin);

  assign  sum[0] = p0 ^ cin,
          sum[1] = p1 ^ c1,
          sum[2] = p2 ^ c2,
          sum[3] = p3 ^ c3;

  assign  cout = c4;
endmodule
