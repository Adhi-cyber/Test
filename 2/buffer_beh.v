module buffer_beh(
	input d,
	input e,
	output y);

always @(*)
begin
	if(e)
		d = y;
end

endmodule
