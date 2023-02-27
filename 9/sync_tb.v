module sync_tb;

reg clk;
reg rst;

reg [31:0] data_in;
reg wr;
reg rd;

wire full;
wire empty;
wire [31:0] data_out;
wire [1023:0] fifo_cnt;

sync_fifo dut(.*);

initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(1,sync_tb);
end

initial
begin
	clk = 0;
	rst = 0;
	
	#10 rst = 1;
	#20 rst = 0;
end

always #5 clk = ~clk;

initial
begin
	


end
initial #500 $finish;

endmodule
