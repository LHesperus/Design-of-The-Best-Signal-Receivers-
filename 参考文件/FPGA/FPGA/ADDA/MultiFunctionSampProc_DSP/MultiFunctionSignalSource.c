/*------------------------------------------------------------------------------
 *上海宇志通信技术有限公司  www.caspl.cn
 *------------------------------------------------------------------------------
 *多功能信号源主函数定义
 *------------------------------------------------------------------------------*/
#define 	_TI_ENHANCED_MATH_H	1
#include 	<csl_pll.h>
#include 	<csl_irq.h>
#include 	<stdio.h>
#include	<math.h>
#include 	"reg6713.h"				//6713寄存器表格定义
#include	"ExtIntInitialize.h"	//外部中断初始化定义
#include	"Globle_Vars.h"
#include	"Globle_MainFunc.h"
#include	"Globle_InitFunc.h"
/*------------------------------------------------------------------------------*/

void main()
{
	//全局变量初始化
	MFSS_Init_Globle();
	while(1)
	{
	}
}

interrupt void
ExtInt4(void)
{
	int	*MFSS_Pointer;
	//中断标志清零
	IRQ_clear(IRQ_EVT_EXTINT4);
	//累加中断状态清零
	MFSS_Pointer = (int*)(FPGA_WRITE_CS + 4*(SYSTEM_LEVEL + CHANNEL_SYS +ADDR_INT_STATUS_CLEAR));
	*MFSS_Pointer = 0;
	//串口数据接收处理
	MFSS_SerioPort_ReseiveData(0);
	if(UART_COMMAND_VALID_FLG == 1)
	{
		UART_COMMAND_VALID_FLG = 0;
		//串口处理函数
	}
	return;
}		  

