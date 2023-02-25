module d_en_res (
	input d,
	input rst,
	input en,
	output q);

reg q;

always @(*)
begin
	if(!rst && en)
		q <=d;
	else 
		q <= 1'b0;
end

endmodule

