/*------------------------------------------------------------------------------
 *上海宇志通信技术有限公司  www.caspl.cn
 *------------------------------------------------------------------------------
 *全局变量定义
 *------------------------------------------------------------------------------*/
#include	"FPGA_Addr_Map.h"
#include	"Globle_Define.h"

/*--------------------------------- FPGA通道地址映射----------------------------*/
int							CHANNEL_ADDR_FPGA[CHANNEL_COUNT] = {CHANNEL_1,CHANNEL_2,CHANNEL_3,CHANNEL_4,CHANNEL_5,CHANNEL_6,CHANNEL_7,CHANNEL_8,CHANNEL_9,CHANNEL_10,CHANNEL_11,CHANNEL_12};
int							UART_DATA_VALID_FLG = 0;
int							UART_COMMAND_VALID_FLG = 0;
