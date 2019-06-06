`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// 文件属性：		顶层文件
// 文件功能：		AD测试程序顶层模块
// 公司: 			上海宇志通信技术有限公司
// 工程师: 	   		XLX
// 创建日期:        2012年08月12日
// 模块名:    		MultiFunctionSampProc 
// 项目名:   		MultiFunctionSampProc
// 目标器件: 		EP2S90F1020I4
// 工具版本:  		QII7.2
// 软件版本：		V1.1
// 额外标注: 
//////////////////////////////////////////////////////////////////////////////////
`include "Registers_adds.v" 				//调用寄存器地址分配文件//
//////////////////////////////////////////////////////////////////////////////////
//平台选用AD型号为AD9233BCPZ-125，12比特，采样速率最高125MSPS,设计兼容AD9246BCPZ-125，为14比特AD，故引脚接14位分配
//平台选用DA型号为AD9744ACPZ，为14比特，回放速率最高210MSPS

module	MultiFunctionSampProc                                                                                                                                                                                                   
(           
	CLK_NX,				//25MHz
	TECLKOUT,
	TCE2n,
	TSDWEn,
	TSDRASn,
	TED,
	TEA,
	EXTINT4,
	EXTINT5,
	EXTINT6,
	EXTINT7,
	RXD_232,
	TXD_232,
	ADC_CLOCK,	
	ADC1_CLK,
	ADC2_CLK,
	ADC3_CLK,
	ADC4_CLK,																																													                                                                                                                                                                                                             
	ADC1_D,                                                                                                                                                                                                                                                                                                                                                                                                                              
	ADC2_D,                                                                                                                                                                                                                                                                                                                                                                                                                             
	ADC3_D,                                                                                                                                                                                                         
	ADC4_D,
	ADC1_PDWN,     
	ADC2_PDWN,   
	ADC3_PDWN,   
	ADC4_PDWN,
	DAC1_CLK,
	DAC2_CLK,
	DAC3_CLK,
	DAC4_CLK,
	DAC1_D,                                                                                                                                                                                                                                                                                                                                                                                                                              
	DAC2_D,                                                                                                                                                                                                                                                                                                                                                                                                                             
	DAC3_D,                                                                                                                                                                                                         
	DAC4_D,
	DAC1_PDWN,     
	DAC2_PDWN,   
	DAC3_PDWN,   
	DAC4_PDWN                                                                                                                                                                                                     
);
//////////////////////////////////////////////////////////////////////////////////
//参数定义//
//////////////////////////////////////////////////////////////////////////////////
`include "parameter_define.dat" 				              //调用参数定义文件//

//////////////////////////////////////////////////////////////////////////////////
//输入输出IO引脚定义//
//////////////////////////////////////////////////////////////////////////////////
input									CLK_NX;
input									TECLKOUT;
input									TCE2n;
input									TSDWEn;
input									TSDRASn;
inout 	[31:0]							TED;
input 	[21:2]							TEA;
output 									EXTINT4,EXTINT5,EXTINT6,EXTINT7;
input 	[1:0]							RXD_232;
output 	[1:0]							TXD_232;
output									ADC_CLOCK;   
input									ADC1_CLK;  
input									ADC2_CLK;    
input									ADC3_CLK;    
input									ADC4_CLK;                                                                                                                                                                                                         
input	[13:0]							ADC1_D;                                                                                                                                                                                                                                                                                                                                                                                                                            
input	[13:0]							ADC2_D;                                                                                                                                                                                                            
input	[13:0]							ADC3_D;                                                                                                                                                                                                            
input	[13:0]							ADC4_D;                                                                                                                                                                                                                  
output									ADC1_PDWN;
output									ADC2_PDWN;
output									ADC3_PDWN;
output									ADC4_PDWN;
output									DAC1_CLK;  
output									DAC2_CLK;    
output									DAC3_CLK;    
output									DAC4_CLK;                                                                                                                                                                                                         
output	[13:0]							DAC1_D;                                                                                                                                                                                                                                                                                                                                                                                                                            
output	[13:0]							DAC2_D;                                                                                                                                                                                                            
output	[13:0]							DAC3_D;                                                                                                                                                                                                            
output	[13:0]							DAC4_D;                                                                                                                                                                                                                  
output									DAC1_PDWN;
output									DAC2_PDWN;
output									DAC3_PDWN;
output									DAC4_PDWN;
//////////////////////////////////////////////////////////////////////////////////
//信号变量定义//
//////////////////////////////////////////////////////////////////////////////////
reg										TED_INOUT_SELECT;              	//DSP数据总线控制信号,'1'选择TED作为输出,'0'选择输入
reg		[EDATA_WIDTH - 1: 0]			TED_OUT;                   		//DSP数据总线TED三态输出
reg     [31:0]                          REG_PROG_INT;					//设置中断周期
reg										REG_INT_VALID_STATUS;
reg										REG_INT_STATUS_CLEAR;
wire                                    INT_ENABLE;						//中断使能
wire									RESET;
wire	[11:0]							ADC1_D_BUF;
wire	[11:0]							ADC2_D_BUF;
wire	[11:0]							ADC3_D_BUF;
wire	[11:0]							ADC4_D_BUF;
wire									CLK100M;
/*********************************************************************************/
/************************************程序段开始***********************************/
/*********************************************************************************/ 
/////////////////////////////////////////////////////////////////
//PLL模块调用，产生25MHzx4=100MHz时钟供给ADC//
/////////////////////////////////////////////////////////////////
PLL_25MxN PLL_25MxN_M
(
	.inclk0(CLK_NX),
	.c0(ADC_CLOCK),
	.c1(CLK100M)
);

/////////////////////////////////////////////////////////////////
//内部复位信号产生//
/////////////////////////////////////////////////////////////////
Reset_Gen Reset_Gen_M
(
	.clock(CLK100M),
	.reset(RESET)
 );
/////////////////////////////////////////////////////////////////
//寄存器表格定义//
/////////////////////////////////////////////////////////////////

always @(posedge TECLKOUT)
begin
    if((TCE2n==0)&&(TEA[21:18]==4'b0001)&&(TSDWEn==0))     //寄存器输入表地址定义在CE2空间，32位偏移地址为010000H-01FFFFH
       begin
          TED_INOUT_SELECT<=0;
          case (TEA[17:2])
			//系统通道寄存器输入表格定义
			`SYSTEM_LEVEL+`CHANNEL_SYS+`ADDR_PROG_INT        			: REG_PROG_INT       	   	<= TED[31:0];		
									
			//串口寄存器输出表格定义
			//串口1
			`UART_CHANNEL+`CHANNEL_1+`ADDR_BaudRate_Config				: REG_UART_A_BaudRate		<= TED[12:0];
			//串口2
			`UART_CHANNEL+`CHANNEL_2+`ADDR_BaudRate_Config				: REG_UART_B_BaudRate		<= TED[12:0];
	       default :
	          begin
	          end
           endcase
        end
    else if((TCE2n==0)&&(TEA[21:18]==4'b0010)&&(TSDRASn==0)) //寄存器输出表地址定义在CE2空间，32位偏移地址为020000H-02FFFFH
       begin
          TED_INOUT_SELECT<=1;
          case (TEA[17:2])
			//系统通道寄存器输出表格定义
			`SYSTEM_LEVEL+`CHANNEL_SYS+`ADDR_INT_VALID_STATUS			: TED_OUT<={{31'b0},REG_INT_VALID_STATUS};
			
			//串口寄存器输出表格定义
			//串口1
			`UART_CHANNEL+`CHANNEL_1+`ADDR_RXBUFF						: TED_OUT<={{24{RXD_data_A[7]}},RXD_data_A};
			`UART_CHANNEL+`CHANNEL_1+`ADDR_RXD_DATA_VALID_STATUS		: TED_OUT<={{31{1'b0}},REG_RXD_DATA_VALID_STATUS_A};
			
			//串口2
			`UART_CHANNEL+`CHANNEL_2+`ADDR_RXBUFF						: TED_OUT<={{24{RXD_data_B[7]}},RXD_data_B};
			`UART_CHANNEL+`CHANNEL_2+`ADDR_RXD_DATA_VALID_STATUS		: TED_OUT<={{31{1'b0}},REG_RXD_DATA_VALID_STATUS_B}; 
			            
			default :
              begin
              end
          endcase
       end
    else
       TED_INOUT_SELECT<=0;
end

assign TED=TED_INOUT_SELECT ? TED_OUT:32'bz;
/////////////////////////////////////////////////////////////////
//串口发送程序模块，波特率115200//
/////////////////////////////////////////////////////////////////
reg	    								UART_A_WEn_TEMP,UART_B_WEn_TEMP;
reg										UART_A_WEn_TEMP_DEL,UART_B_WEn_TEMP_DEL;
reg										UART_A_WEn,UART_B_WEn;
reg		[12:0]							REG_UART_A_BaudRate,REG_UART_B_BaudRate;


always @(posedge TECLKOUT)
begin
	UART_A_WEn_TEMP		<= (TCE2n==0)&&(TEA[21:18]==4'b0001)&&(TSDWEn==0)&&(TEA[17:2]==`UART_CHANNEL+`CHANNEL_1+`ADDR_TXBUFF);
	UART_B_WEn_TEMP		<= (TCE2n==0)&&(TEA[21:18]==4'b0001)&&(TSDWEn==0)&&(TEA[17:2]==`UART_CHANNEL+`CHANNEL_2+`ADDR_TXBUFF);
	UART_A_WEn_TEMP_DEL <= UART_A_WEn_TEMP;
	UART_B_WEn_TEMP_DEL <= UART_B_WEn_TEMP;
	///////////////////////////////////////////////
	if((UART_A_WEn_TEMP==1'b1)&&(UART_A_WEn_TEMP_DEL==1'b0))
		UART_A_WEn <= 1'b1;
	else
		UART_A_WEn <= 1'b0;
	///////////////////////////////////////////////
	if((UART_B_WEn_TEMP==1'b1)&&(UART_B_WEn_TEMP_DEL==1'b0))
		UART_B_WEn <= 1'b1;
	else
		UART_B_WEn <= 1'b0;	
end

//串口A发送程序模块调用
UART_TXD  UART_TXD_A
(	
	.clock(TECLKOUT),
	.reset(RESET),
	.BaudRate(REG_UART_A_BaudRate),
	.fifo_data8(TED[7:0]),
	.fifo_wrreq(UART_A_WEn),
	.TXD(TXD_232[0])
);

//串口B发送程序模块调用
UART_TXD  UART_TXD_B
(	
	.clock(TECLKOUT),
	.reset(RESET),
	.BaudRate(REG_UART_B_BaudRate),
	.fifo_data8(TED[7:0]),
	.fifo_wrreq(UART_B_WEn),
	.TXD(TXD_232[1])
);
/////////////////////////////////////////////////////////////////
//串口接收程序模块，波特率115200//
/////////////////////////////////////////////////////////////////
reg										UART_A_RDn_TEMP,UART_B_RDn_TEMP;
reg										UART_A_RDn_TEMP_DEL,UART_B_RDn_TEMP_DEL;
reg										UART_A_RDn,UART_B_RDn;
wire	[7:0]							RXD_data_A,RXD_data_B;
wire									REG_RXD_DATA_VALID_STATUS_A,REG_RXD_DATA_VALID_STATUS_B;

always @(posedge TECLKOUT)
begin
	UART_A_RDn_TEMP <= (TCE2n==0)&&(TEA[21:18]==4'b0010)&&(TSDRASn==0)&&(TEA[17:2]==`UART_CHANNEL+`CHANNEL_1+`ADDR_RXBUFF);
	UART_B_RDn_TEMP <= (TCE2n==0)&&(TEA[21:18]==4'b0010)&&(TSDRASn==0)&&(TEA[17:2]==`UART_CHANNEL+`CHANNEL_2+`ADDR_RXBUFF);
	UART_A_RDn_TEMP_DEL <= UART_A_RDn_TEMP;
	UART_B_RDn_TEMP_DEL <= UART_B_RDn_TEMP;
	///////////////////////////////////////////////////
	if((UART_A_RDn_TEMP==1'b1)&&(UART_A_RDn_TEMP_DEL==1'b0))
		UART_A_RDn <= 1'b1;
	else
		UART_A_RDn <= 1'b0;
	///////////////////////////////////////////////////
	if((UART_B_RDn_TEMP==1'b1)&&(UART_B_RDn_TEMP_DEL==1'b0))
		UART_B_RDn <= 1'b1;
	else
		UART_B_RDn <= 1'b0;
end

//串口A接收程序模块
UART_RXD UART_RXD_A
(	
	.clock(TECLKOUT),
	.reset(RESET),
	.BaudRate(REG_UART_A_BaudRate),
	.RXD(RXD_232[0]),
	.fifo_rdreq(UART_A_RDn),
	.fifo_data8(RXD_data_A),
	.RXD_DATA_VALID_STATUS(REG_RXD_DATA_VALID_STATUS_A)
);

//串口B接收程序模块
UART_RXD UART_RXD_B
(	
	.clock(TECLKOUT),
	.reset(RESET),
	.BaudRate(REG_UART_B_BaudRate),
	.RXD(RXD_232[1]),
	.fifo_rdreq(UART_B_RDn),
	.fifo_data8(RXD_data_B),
	.RXD_DATA_VALID_STATUS(REG_RXD_DATA_VALID_STATUS_B)
);
/////////////////////////////////////////////////////////////////
//时基产生模块//
/////////////////////////////////////////////////////////////////

TIME_BASE TIME_BASE_M
(    
	.clock(TECLKOUT),
	.reset(RESET),				
	.PROG_INT(REG_PROG_INT), 
	.INT_ENABLE(INT_ENABLE)      								//中断使能信号输出
);

	always @(posedge TECLKOUT)
begin
	REG_INT_STATUS_CLEAR <= (TCE2n==0)&&(TEA[21:18]==4'b0001)&&(TSDWEn==0)&&(TEA[17:2]==`SYSTEM_LEVEL+`CHANNEL_SYS+`ADDR_INT_STATUS_CLEAR);
	///////////////////////////////////////////////
	if(RESET==1'b1)
		REG_INT_VALID_STATUS <= 1'b0;
	else
		begin
			if(REG_INT_STATUS_CLEAR==1'b1)
				REG_INT_VALID_STATUS	<= 0;
			else
				begin
					if(INT_ENABLE==1'b1)
						REG_INT_VALID_STATUS <= 1'b1;
					else
						REG_INT_VALID_STATUS <= REG_INT_VALID_STATUS;
				end
		end
end      
/////////////////////////////////////////////////////////////////
//AD数据锁存//
/////////////////////////////////////////////////////////////////
DATA_LATCH DATA_LATCH_CH1(.clk(ADC1_CLK),.datain(ADC1_D[13:2]),.dataout(ADC1_D_BUF));
DATA_LATCH DATA_LATCH_CH2(.clk(ADC2_CLK),.datain(ADC2_D[13:2]),.dataout(ADC2_D_BUF));
DATA_LATCH DATA_LATCH_CH3(.clk(ADC3_CLK),.datain(ADC3_D[13:2]),.dataout(ADC3_D_BUF));
DATA_LATCH DATA_LATCH_CH4(.clk(ADC4_CLK),.datain(ADC4_D[13:2]),.dataout(ADC4_D_BUF));
     


	 
////////////////////////////////////////////////////////
//DAC 数据回放//
////////////////////////////////////////////////////////
wire	[9:0]							ADDR_DAC;
wire	[13:0]							DAC1_D_BUF;
wire	[13:0]							DAC2_D_BUF;
wire	[13:0]							DAC3_D_BUF;
wire	[13:0]							DAC4_D_BUF;
reg		[31:0]							phase;
wire	[32:0]							accum_sum;

//32位相位累加//
always @(posedge CLK100M)
begin
	if(RESET==1'b1)
		phase <= 0;
	else
		phase <= accum_sum[31:0];
end
assign	accum_sum = phase + 32'h19DB22D1;			// round((10.1/100)*2^32) = 32'h19DB22D1
assign	ADDR_DAC = accum_sum[31:22];

//查找表输出//
DAC_TABLE DAC_TABLE_DAC1
(
	.address(ADDR_DAC),
	.clken(1'b1),
	.clock(CLK100M),
	.q(DAC1_D_BUF)
);
DAC_TABLE DAC_TABLE_DAC2
(
	.address(ADDR_DAC),
	.clken(1'b1),
	.clock(CLK100M),
	.q(DAC2_D_BUF)
);
DAC_TABLE DAC_TABLE_DAC3
(
	.address(ADDR_DAC),
	.clken(1'b1),
	.clock(CLK100M),
	.q(DAC3_D_BUF)
);
DAC_TABLE DAC_TABLE_DAC4
(
	.address(ADDR_DAC),
	.clken(1'b1),
	.clock(CLK100M),
	.q(DAC4_D_BUF)
);
/////////////////////////////////////////////////////////////////
//IO//
/////////////////////////////////////////////////////////////////   
assign DAC1_D = {{2{DAC1_D_BUF[13]}},DAC1_D_BUF[13:2]};
assign DAC2_D = {{2{DAC2_D_BUF[13]}},DAC2_D_BUF[13:2]};
assign DAC3_D = {{2{DAC3_D_BUF[13]}},DAC3_D_BUF[13:2]};
assign DAC4_D = {{2{DAC4_D_BUF[13]}},DAC4_D_BUF[13:2]};
assign ADC1_PDWN = 1'b0;	//Disable ADC1 Power Down Function   
assign ADC2_PDWN = 1'b0;	//Disable ADC2 Power Down Function 
assign ADC3_PDWN = 1'b0;	//Disable ADC3 Power Down Function 
assign ADC4_PDWN = 1'b0;	//Disable ADC4 Power Down Function 
assign DAC1_PDWN = 1'b0;	//Disable DAC1 Power Down Function   
assign DAC2_PDWN = 1'b0;	//Disable DAC2 Power Down Function 
assign DAC3_PDWN = 1'b0;	//Disable DAC3 Power Down Function 
assign DAC4_PDWN = 1'b0;	//Disable DAC4 Power Down Function 
assign DAC1_CLK = CLK100M;  
assign DAC2_CLK = CLK100M;    
assign DAC3_CLK = CLK100M;    
assign DAC4_CLK = CLK100M;     
assign EXTINT4 = REG_INT_VALID_STATUS;
assign EXTINT5 = 1'b0;
assign EXTINT6 = 1'b0;
assign EXTINT7 = 1'b0;                                               
/*********************************************************************************/
/************************************程序段结束***********************************/
/*********************************************************************************/                                                                                                                                                                                                                                                                                                                                           
endmodule            