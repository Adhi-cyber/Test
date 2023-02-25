module sync_fifo(
	input [31:0] data_in,
	input clk,rst,
	input wr,rd,

	output full,
	output empty,
	output reg[1024:0] fifo_cnt = 0,
	output reg [31:0] data_out);

reg [1024:0] fifo_ram [0:7];

reg [1024:0] wr_ptr;
reg[1024:0] rd_ptr;

assign empty = (fifo_cnt == 0);
assign full = (fifo_cnt == 1024);

always @(posedge clk)
begin
	if((wr && !full) || (wr && empty))
	begin
		fifo[wr_ptr] <= data_in;
		wr_ptr <= wr_ptr +1;
	end
end

always @(posedge clk)
begin
	if((rd &&full) || (rd && !empty))
	begin
		data_out <= fifo[rd_ptr];
		rd_ptr <= rd +1;
	end
end

always @(posedge clk)
begin
	if(rst) begin
		wr_ptr <= 0;
		rd_ptr <= 0;
		fifo_cnt <= 0;
	end

	else begin
		case({wr,rd})
			2'b00 : fifo_cnt <= fifo_cnt;
			2'b01 : fifo_cnt <= (fifo_cnt == 0) ? 0 : fifo_cnt-1;			    
			2'b10 : fifo_cnt <= (fifo_cnt == 1023) ? 1023 : fifo_cnt +1;
			2'b11 : fifo_cnt <= fifo_cnt;
		endcase
	end
end

endmodule

