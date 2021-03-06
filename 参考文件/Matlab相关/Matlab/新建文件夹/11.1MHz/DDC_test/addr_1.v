module  addr_1 (
						clk,
						rst_n,
						
						data_out
					  );
input clk;
input rst_n;

output reg [8:0] data_out;

reg [8:0] cnt;

always @(posedge clk)
begin
	if(!rst_n)
		cnt <= 9'd0;
	else if(cnt == 9'd511)
		cnt <= 9'd0;
	else		
		cnt <= cnt + 1'b1;
end

always @(posedge clk)
begin
	if(!rst_n)
		data_out <= 9'd0;
	else if(cnt == 9'd511)
		data_out <= 9'd0;
	else
		data_out <= data_out;
end

endmodule 