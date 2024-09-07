`include "FA.v"

module tb;
	reg a, b, c;
	wire sum, carry;

	FA dut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

	initial begin
		{a,b,c}={3{1'b0}};
		$monitor("a=%0b b=%0b c=%0b sum=%0b carry=%0b", a, b, c, sum, carry);
	end

	initial begin
		repeat(20)begin
			a=$random;b=$random;c=$random;
			#10;
		end
	end
endmodule
