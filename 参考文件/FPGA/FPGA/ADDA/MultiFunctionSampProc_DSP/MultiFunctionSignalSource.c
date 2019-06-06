/*------------------------------------------------------------------------------
 *�Ϻ���־ͨ�ż������޹�˾  www.caspl.cn
 *------------------------------------------------------------------------------
 *�๦���ź�Դ����������
 *------------------------------------------------------------------------------*/
#define 	_TI_ENHANCED_MATH_H	1
#include 	<csl_pll.h>
#include 	<csl_irq.h>
#include 	<stdio.h>
#include	<math.h>
#include 	"reg6713.h"				//6713�Ĵ��������
#include	"ExtIntInitialize.h"	//�ⲿ�жϳ�ʼ������
#include	"Globle_Vars.h"
#include	"Globle_MainFunc.h"
#include	"Globle_InitFunc.h"
/*------------------------------------------------------------------------------*/

void main()
{
	//ȫ�ֱ�����ʼ��
	MFSS_Init_Globle();
	while(1)
	{
	}
}

interrupt void
ExtInt4(void)
{
	int	*MFSS_Pointer;
	//�жϱ�־����
	IRQ_clear(IRQ_EVT_EXTINT4);
	//�ۼ��ж�״̬����
	MFSS_Pointer = (int*)(FPGA_WRITE_CS + 4*(SYSTEM_LEVEL + CHANNEL_SYS +ADDR_INT_STATUS_CLEAR));
	*MFSS_Pointer = 0;
	//�������ݽ��մ���
	MFSS_SerioPort_ReseiveData(0);
	if(UART_COMMAND_VALID_FLG == 1)
	{
		UART_COMMAND_VALID_FLG = 0;
		//���ڴ�����
	}
	return;
}		  

