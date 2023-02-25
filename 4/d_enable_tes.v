module d_enable_tes;

reg d;
reg e;

wire q;

d_enable dut(.*);

initial
begin
	$dumpfile("wave1.vcd");
	$dumpvars(0, d_enable_tes);
end

initial
begin
	{d,e} = 1'b0;

	#20 d =  1'b1;
	#20 e = 1'b1;
end

initial #100 $finish;

endmodule
