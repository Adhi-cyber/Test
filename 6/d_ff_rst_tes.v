module d_ff_rst_tes;

reg clk;
reg rst;
reg d;

wire q;

d_ff_rst dut(.*);

initial 
begin
	$dumpfile("wave1.vcd");
	$dumpvars(1,d_ff_rst_tes);
end

initial 
begin
	clk = 1'b0;
	rst = 1'b0;

	d = 1'b0;
	#20 d = 1'b1;
	#30 d = 1'b0;
end

always #5 clk = ~clk;
always #7 rst = ~rst;

initial #100 $finish;

endmodule
