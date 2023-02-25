module d_ff_and(
	input clk,
	input en,
	input d,
	output q);

wire qclk;
reg q;

assign qclk = clk && en;

always @(posedge qclk)
begin
	q<=d;
end

endmodule


