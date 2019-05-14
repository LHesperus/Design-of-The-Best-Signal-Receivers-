module ddc(clk,
d_in,
reset_n,
d_out,fsin_o,data_i,fcos_o
);

input clk;
input reset_n;
input [13:0] d_in;
output [13:0] d_out;
output [13:0] data_i;

output	[13:0]	fsin_o;
output	[13:0]	fcos_o;
wire	[13:0]	fsin_o;
wire	[13:0]	fcos_o;

wire	[13:0]	data_i;
wire	[13:0]	data_q;

wire c0;
wire locked;
wire [13:0] hb1_out;
wire [13:0] hb2_out;
wire [13:0] fir1_in;
wire [13:0] fir1_out;
wire [13:0] fir2_in;
wire [13:0] fir2_out;
wire	[13:0]	i_out;
wire	[13:0]	q_out;

pll1 pll1(
	
	.inclk0(clk),
	.c0(c0)
	);

NCO1 NCO1(
    .phi_inc_i(32'h10000000),
	.clk(c0),
	.reset_n(1'b1),
	.clken(1'b1),
	.fsin_o(fsin_o),
	.fcos_o(fcos_o)
	);


FIR3 HB1 (.clk(c0),   
		.reset_n(reset_n),
		.ast_sink_data(data_i),
		.ast_sink_valid(1'b1),
		.ast_source_ready(1'b1),
		.ast_sink_error(2'b00),
		.ast_source_data(hb1_out),
		.ast_sink_ready(),
		.ast_source_valid(),
		.ast_source_error());
XCY cy1(.clk(c0),
.reset_n(reset_n),
.d_in(hb1_out),
.d_out(fir1_in)


);
FIR2 FIR1 (
        .clk(c0),
		.reset_n(reset_n),
		.ast_sink_data(fir1_in),
		.ast_sink_valid(1'b1),
		.ast_source_ready(1'b1),
		.ast_sink_error(2'b00),
		.ast_source_data(fir1_out),
		.ast_sink_ready(),
		.ast_source_valid(),
		.ast_source_error()
		);
XCY1 cy2(.clk(clk),
.reset_n(reset_n),
.d_in(fir1_out),
.d_out(i_out)


);
FIR3 HB2 (
		.clk(c0),   
		.reset_n(reset_n),
		.ast_sink_data(data_q),
		.ast_sink_valid(1'b1),
		.ast_source_ready(1'b1),
		.ast_sink_error(2'b00),
		.ast_source_data(hb2_out),
		.ast_sink_ready(),
		.ast_source_valid(),
		.ast_source_error());
XCY cy3(.clk(c0),
.reset_n(reset_n),
.d_in(hb2_out),
.d_out(fir2_in)


);
FIR2 FIR2 (
        .clk(c0),
		.reset_n(reset_n),
		.ast_sink_data(fir2_in),
		.ast_sink_valid(1'b1),
		.ast_source_ready(1'b1),
		.ast_sink_error(2'b00),
		.ast_source_data(fir2_out),
		.ast_sink_ready(),
		.ast_source_valid(),
		.ast_source_error());	
		
XCY1 cy4(.clk(clk),
.reset_n(reset_n),
.d_in(fir2_out),
.d_out(q_out)


);
MULT1 MULT_I( 
              .dataa (fcos_o),
			  .datab (data_in),
			   .result (data_i)

);

MULT1 MULT_Q(
                .dataa (fsin_o),
				.datab (data_in),
				.result (data_q)


);







endmodule 