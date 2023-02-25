module d_ff_and_tes;

reg clk;
reg d;
reg en;

wire q;

d_ff_and dut(.*);

initial
begin
	$dumpfile("wave1.vcd");
	$dumpvars(1,d_ff_and_tes);
end

initial
begin
	{clk,enable} = 1'b0;

	d = 1'b0;
	#10 en = 1'b1;
	#15 en = 1'b0;
	#20 en = 1'b1;
	#20 d = 1'b0;
	#20 d = 1'b1;
end

always #5 clk = ~clk;

initial #150 $finish;

endmodule
