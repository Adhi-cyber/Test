module d_ff_rst(
	input d,
	input rst,
	input clk,
	output q);

reg q;

always @(posedge clk)
begin
	if(!rst)
		q <= d;
end

endmodule
