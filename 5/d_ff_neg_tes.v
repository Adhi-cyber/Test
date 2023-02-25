module d_ff_neg_tes;

reg d;
reg clk;

wire q;

d_ff_neg dut(.*);

initial
begin
	$dumpfile("wave2.vcd");
	$dumpvars(1,d_ff_neg_tes);
end

initial 
begin
	clk = 0;
	d = 1'b0;
	
	#10 d = 1'b1;
	#20 d = 1'b0;
	#30 d = 1'b1;
end

always #5 clk = ~clk;

initial #100 $finish;

endmodule
