module  decimation_3 (
						clk,
						rst_n,
						data_in,
						data_out
					  );
input clk;
input rst_n;
input [15:0] data_in;
output reg [15:0] data_out;

reg [1:0] cnt;

always @(posedge clk)
begin
	if(!rst_n)
		cnt <= 2'd0;
	else if(cnt == 2'd2)
		cnt <= 2'd0;
	else		
		cnt <= cnt + 1'b1;
end

always @(posedge clk)
begin
	if(!rst_n)
		data_out <= 16'd0;
	else if(cnt == 2'd2)
		data_out <= data_in;
	else
		data_out <= data_out;
end

endmodule 