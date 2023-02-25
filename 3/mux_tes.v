module mux_tes;

reg a;
reg c;
reg sel;

wire b;

mux_beh dut(.*);

initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(0,mux_tes);
end

initial
begin
	{a,c} = 1'b0;

	#10 a = 1'b1;
	#5  c = 1'b0;

	#20 a = 1'b1;
	#15 c = 1'b1;
end

initial #100 $finish;

endmodule

