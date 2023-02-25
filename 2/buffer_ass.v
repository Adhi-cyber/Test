module buffer_ass(
	input d,
	input e,
	output y);

assign y = e ? d : 1'b0;

endmodule
