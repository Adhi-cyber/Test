module seq_110011_tb;

reg clk;
reg rst;
reg din;

wire dout;

seq_110011 uut(.clk(clk),
	.reset(rst),
	.din(din),
	.dout(dout));

initial 
begin 
$dumpfile("seq_110011_wave.vcd");
$dumpvars(0,seq_110011_tb);
clk = 1'b0;
rst = 1'b0;
din = 1'b0;
end

always #2 clk = clk + 1'b1;
always #4 rst = rst + 1'b1;
always #1 din = din + 1'b1;

initial #50 $finish;

endmodule
