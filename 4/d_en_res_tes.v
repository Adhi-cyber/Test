module d_en_res_tes;

reg d;
reg rst;
reg en;

wire q;

d_en_res dut(.*);

initial
begin
	$dumpfile("wave2.vcd");
	$dumpvars(0, d_en_res_tes);
end

initial
begin
	{d,rst,en} = 1'b0;

	#20
	d = 1'b1;
	rst = 1'b0;
	en = 1'b1;
end

initial #100 $finish;

endmodule
