//--------------------------------------------------------------------------------------------
//
//      Input file      : 
//      Component name  : ddc
//      Author          : focusface
//      Company         : uestc kea-418
//
//      Description     : DDC
//
//
//--------------------------------------------------------------------------------------------


module ddc(Clk_160, Clk_40, Rst, Prf_in, Data_in, Data_I_out, Data_Q_out, Prf_out);
   input         Clk_160;
   input         Clk_40;
   input         Rst;
   input         Prf_in;
   input [11:0]  Data_in;
   output [19:0] Data_I_out;
   reg [19:0]    Data_I_out;
   output [19:0] Data_Q_out;
   reg [19:0]    Data_Q_out;
   output        Prf_out;
   reg           Prf_out;
   reg [11:0]    Data_in_buffer[3:0];
   reg [11:0]    Ast_sink_data[3:0];
   wire [23:0]   Ast_source_data[3:0];
   wire [23:0]   Result_I;
   wire [23:0]   Result_Q;
   reg [3:0]     Cont;
   reg           Prf_in_flag;
   reg           Prf_in_flag_delay;
   reg [1:0]     Prf_in_flag_cont;
   wire          ast_sink_ready;
   reg           ast_sink_valid;
   reg           ast_source_ready;
   wire          ast_source_valid;
   wire [1:0]    ast_source_error;
   
   reg [23:0] test_DDC_I;
   reg [23:0] test_DDC_Q;
   
   always @(posedge Clk_160)
   begin
	   test_DDC_I = Result_I;
	   test_DDC_Q = Result_Q;
   end
   
   
   always @(posedge Clk_160)
   begin
      integer       i;
      begin
         if (Rst == 1'b1)
            for (i = 3; i >= 0; i = i - 1)
               Data_in_buffer[i] <= 12'b000000000000;
         else
         begin
            Data_in_buffer[0] <= Data_in;
            for (i = 3; i >= 1; i = i - 1)
               Data_in_buffer[i] <= Data_in_buffer[i - 1];
         end
      end
   end
   
   always @(posedge Clk_40)
   begin
      integer       i;
      begin
         if (Rst == 1'b1)
            for (i = 3; i >= 0; i = i - 1)
               Ast_sink_data[i] <= 12'b000000000000;
         else
            for (i = 3; i >= 0; i = i - 1)
               Ast_sink_data[i] <= Data_in_buffer[i];
      end
   end
   
   always @(posedge Clk_40)
      begin
         if (Rst == 1'b1)
         begin
            ast_sink_valid <= 1'b0;
            ast_source_ready <= 1'b1;
         end
         else
            ast_sink_valid <= 1'b1;
      end
   
   /*Fir_16_0 Fir_16_0_U(
   .clk(Clk_40), 
   .reset_n((~Rst)), 
   .coeff_in_clk(Clk_40), 
   .coeff_in_areset(1'b0), 
   .ast_sink_data(Ast_sink_data[0]), 
   .ast_sink_ready(ast_sink_ready), 
   .ast_sink_valid(ast_sink_valid), 
   .ast_sink_error(2'b00), 
   .ast_source_data(Ast_source_data[0]), 
   .ast_source_ready(ast_source_ready), 
   .ast_source_valid(ast_source_valid), 
   .ast_source_error(ast_source_error));
   */
   
   
   //Fir_16_1 Fir_16_1_U(.clk(Clk_40), .reset_n((~Rst)), .coeff_in_clk(Clk_40), 
  // .coeff_in_areset(1'b0), .ast_sink_data(Ast_sink_data[1]), .ast_sink_ready(ast_sink_ready), 
   //.ast_sink_valid(ast_sink_valid), .ast_sink_error(2'b00),
   // .ast_source_data(Ast_source_data[1]), .ast_source_ready(ast_source_ready), 
  //  .ast_source_valid(ast_source_valid), .ast_source_error(ast_source_error));
   
   //Fir_16_2 Fir_16_2_U(.clk(Clk_40), .reset_n((~Rst)), .coeff_in_clk(Clk_40), .coeff_in_areset(1'b0), .ast_sink_data(Ast_sink_data[2]), .ast_sink_ready(ast_sink_ready), .ast_sink_valid(ast_sink_valid), .ast_sink_error(2'b00), .ast_source_data(Ast_source_data[2]), .ast_source_ready(ast_source_ready), .ast_source_valid(ast_source_valid), .ast_source_error(ast_source_error));
   
   //Fir_16_3 Fir_16_3_U(.clk(Clk_40), .reset_n((~Rst)), .coeff_in_clk(Clk_40), .coeff_in_areset(1'b0), .ast_sink_data(Ast_sink_data[3]), .ast_sink_ready(ast_sink_ready), .ast_sink_valid(ast_sink_valid), .ast_sink_error(2'b00), .ast_source_data(Ast_source_data[3]), .ast_source_ready(ast_source_ready), .ast_source_valid(ast_source_valid), .ast_source_error(ast_source_error));
   
   
   //add Add_I(.aclr(Rst), .clock(Clk_40), .dataa(Ast_source_data[0]), .datab(((~Ast_source_data[2]) + 1)), .result(Result_I));
   
   //add Add_Q(.aclr(Rst), .clock(Clk_40), .dataa(((~Ast_source_data[1]) + 1)), .datab(Ast_source_data[3]), .result(Result_Q));
   
    Fir_0 Fir_0_U(
   	.clk(Clk_40),
	.reset_n((~Rst)),
	.ast_sink_data(Ast_sink_data[0]),
	.ast_sink_valid(ast_sink_valid),
	.ast_source_ready(ast_source_ready),
	.ast_sink_error(2'b00),
	.ast_source_data(Ast_source_data[0]),
	.ast_sink_ready(ast_sink_ready),
	.ast_source_valid(ast_source_valid),
	.ast_source_error(ast_source_error));
   
    Fir_0 Fir_1_U(
   	.clk(Clk_40),
	.reset_n((~Rst)),
	.ast_sink_data(Ast_sink_data[1]),
	.ast_sink_valid(ast_sink_valid),
	.ast_source_ready(ast_source_ready),
	.ast_sink_error(2'b00),
	.ast_source_data(Ast_source_data[1]),
	.ast_sink_ready(ast_sink_ready),
	.ast_source_valid(ast_source_valid),
	.ast_source_error(ast_source_error));
	
	Fir_0 Fir_2_U(
   	.clk(Clk_40),
	.reset_n((~Rst)),
	.ast_sink_data(Ast_sink_data[2]),
	.ast_sink_valid(ast_sink_valid),
	.ast_source_ready(ast_source_ready),
	.ast_sink_error(2'b00),
	.ast_source_data(Ast_source_data[2]),
	.ast_sink_ready(ast_sink_ready),
	.ast_source_valid(ast_source_valid),
	.ast_source_error(ast_source_error));
	
	Fir_0 Fir_3_U(
   	.clk(Clk_40),
	.reset_n((~Rst)),
	.ast_sink_data(Ast_sink_data[3]),
	.ast_sink_valid(ast_sink_valid),
	.ast_source_ready(ast_source_ready),
	.ast_sink_error(2'b00),
	.ast_source_data(Ast_source_data[3]),
	.ast_sink_ready(ast_sink_ready),
	.ast_source_valid(ast_source_valid),
	.ast_source_error(ast_source_error)); 
   
	add_new Add_I(
	.aclr(Rst),
	.clock(Clk_40),
	.dataa(Ast_source_data[0]),
	.datab(((~Ast_source_data[2]) + 1)),
	.result(Result_I));
	
	add_new Add_Q(
	.aclr(Rst),
	.clock(Clk_40),
	.dataa(((~Ast_source_data[1]) + 1)),
	.datab(Ast_source_data[3]),
	.result(Result_Q));
	
	
   always @(posedge Clk_40)
      
      begin
         if (Rst == 1'b1)
         begin
            Data_I_out <= 20'b00000000000000000000;
            Data_Q_out <= 20'b00000000000000000000;
         end
         else
         begin
            Data_I_out <= Result_I[19:0];
            Data_Q_out <= Result_Q[19:0];
         end
      end
   
   always @(posedge Clk_160)
      
      begin
         if (Rst == 1'b1)
         begin
            Prf_in_flag <= 1'b0;
            Prf_in_flag_cont <= 2'b00;
         end
         else
            if (Prf_in == 1'b1)
               Prf_in_flag <= 1'b1;
            else if (Prf_in_flag == 1'b1)
            begin
               if (Prf_in_flag_cont == 2'b11)
               begin
                  Prf_in_flag <= 1'b0;
                  Prf_in_flag_cont <= 2'b00;
               end
               else
                  Prf_in_flag_cont <= Prf_in_flag_cont + 1;
            end
            else
               Prf_in_flag <= 1'b0;
      end
   
   always @(posedge Clk_40)
      
      begin
         if (Rst == 1'b1)
         begin
            Prf_out <= 1'b0;
            Cont <= 4'b0000;
            Prf_in_flag_delay <= 1'b0;
         end
         else
            if (Prf_in_flag == 1'b1)
            begin
               Prf_in_flag_delay <= 1'b1;
               Cont <= 4'b0000;
            end
            else if (Prf_in_flag_delay == 1'b1)
            begin
               if (Cont == 4'b1001)
               begin
                  Cont <= 4'b0000;
                  Prf_out <= 1'b1;
                  Prf_in_flag_delay <= 1'b0;
               end
               else
                  Cont <= Cont + 1;
            end
            else
            begin
               Prf_out <= 1'b0;
               Cont <= 4'b0000;
            end
      end
   
endmodule
