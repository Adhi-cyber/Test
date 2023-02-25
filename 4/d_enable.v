module d_enable(
	input d,
	input e,
	output q);

reg q;

always @(*)
begin
	if (e)
		q <= d;
end

endmodule
