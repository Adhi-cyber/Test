module mux_ff_tes;

reg clk;
reg d;
reg rst;

wire q;

mux_ff dut(.*);

initial 
begin
	$dumpfile("wave2.vcd");
	$dumpvars(0,mux_ff_tes);
end

initial
begin
	{clk, rst} = 1'b0;

	d = 1'b0;
	#20 d = 1'b0;
	#30 d = 1'b1;
	#20 d = 1'b0;
end

always #5 clk = ~clk;
always #7 rst = ~rst;

initial #100 $finish;

endmodule
