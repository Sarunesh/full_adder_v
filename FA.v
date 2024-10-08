module HA(a, b, sum, carry);
	output reg sum;
	output reg carry;
	input a;
	input b;

	always@* {carry,sum} = a + b;
endmodule

module FA(
		  output sum,
		  output carry,
		  input a,
		  input b,
		  input c);

	wire s1, c1, c2;

	HA h0(.a(a), .b(b), .sum(s1), .carry(c1));
	HA h1(.a(s1), .b(c), .sum(sum), .carry(c2));
	or o1(carry, c1, c2);
endmodule
