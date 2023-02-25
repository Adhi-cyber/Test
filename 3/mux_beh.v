module mux_beh(
	input a,
	input c,
	input sel,
	output b);

reg b;

always @(*)
begin
	case(sel)
		1'b0 : b = a;
		1'b1 : b = c;
	endcase
end

endmodule
