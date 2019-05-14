module ddc_tb ();
reg  clk;
reg [13:0] d_in;
reg reset_n;
wire [13:0] d_out;
ddc uut (
.clk(clk),
.reset_n(reset_n),
.d_in(d_in),
.d_out(d_out)


);
initial
begin
clk=1'b0;
reset_n=1'b0;
d_in=14'b0;

#10;
reset_n=1'b1;

end
always #5 clk=~clk;
always@(posedge clk)
begin
d_in<=d_in+1;

end


endmodule 