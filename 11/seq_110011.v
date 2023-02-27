module seq_110011(input clk,
                   input  reset,
                   input din,
                   output dout);

  parameter [2:0] S0 = 3'b000;
  parameter [2:0] S1 = 3'b001;
  parameter [2:0] S2 = 3'b010;
  parameter [2:0] S3 = 3'b011;
  parameter [2:0] S4 = 3'b100;
  parameter [2:0] S5 = 3'b101;
  parameter [2:0] S6 = 3'b110;

reg dout;
reg [2:0] state;

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dout <= 1'b0;
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          dout <=1'b0;
          if(din)
            state <= S1;
        end
        S1: begin
          dout <= 1'b0;
          if(din)  
            state <= S2;
          else
            state <= S0;
        end
        S2: begin
          dout <= 1'b0;
          if(~din)
            state <= S3;
        end

        S3: begin
          dout <= 1'b0;
          if(~din)
            state <= S4;
          else
            state <= S1;
        end
        S4: begin
          dout <= 1'b0;
          if(din)
            state <= S5;
        end
	S5: begin
          dout <= 1'b0;
          if(din)
            state <= S6;
          else
            state <= S0;
        end

	 S6: begin
          dout <= 1'b1;
          if(din)
            state <= S2;
    	  else 
             state <= S0;
        end





      endcase
    end
  end


endmodule
