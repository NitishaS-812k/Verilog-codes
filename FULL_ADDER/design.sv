// Code your design here
module full_adder(fsum, fcarry_out, a, b, c);
  input a, b, c;
  output fsum, fcarry_out;
  wire half_sum_1, half_carry_1, half_carry_2;
  half_adder HA1(half_sum_1, half_carry_1, a, b); //instance 1 of HalfAdder
  half_adder HA2(fsum, half_carry_2, half_sum_1, c); //instance 2 of HalfAdder
  or or1(fcarry_out, half_carry_2, half_carry_1);
endmodule

module half_adder(sum, carry, a, b);
  input a, b;
  output sum, carry;
  xor sum1(sum, a, b);
  and carry1(carry, a, b);
endmodule