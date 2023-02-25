module d_ff_neg(
	input d,
	input clk,
	output q);

reg q;

always @(negedge clk)
begin
	q <= d;
end

endmodule
