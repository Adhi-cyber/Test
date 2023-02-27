module buffer_beh(
	input d,
	input e,
	output y);

reg y;

always @(*)
begin
	if(!e)
		y= 1'bz;

	else 
		y = d;
end

endmodule
