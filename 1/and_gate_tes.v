module and_gate_tes;

reg a;
reg b;
wire c;

and_gate_beh dut(.*);


initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(1,and_gate_tes);
end

initial 
begin
	a = 1'b0;
	b = 1'b0;

	#10 {a,b} = 1'b1;

	#20 {a,b} = 1'b1;

end

initial #20 $finish;

endmodule
