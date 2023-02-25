module mux_ff(
	input d,
	input rst,
	input clk,
	output q);

wire m1;

mux dut1(d,q,rst,m1);
ff dut2(m1,clk,q);

endmodule


module mux(
	input d,
	input rst,
	input q,
	output out);

assign out = rst ? q : d;
endmodule


module ff(
	input d,
	input clk,
	output q);
reg q;

always @(posedge clk)
begin
	q<= d;
end
endmodule
