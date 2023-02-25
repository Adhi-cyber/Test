module buffer_tes;

reg d;
reg e;

wire y;

buffer_ass dut(.*);

initial 
begin
	$dumpfile("wave.vcd");
	$dumpvars(1,buffer_tes);
end

initial
begin
	d = 1'b0;
	e = 1'b0;

	#20 {d,e} = 1'b1;
	#20 {d,e} = 1'b0;
end

initial #20 $finish;

endmodule

