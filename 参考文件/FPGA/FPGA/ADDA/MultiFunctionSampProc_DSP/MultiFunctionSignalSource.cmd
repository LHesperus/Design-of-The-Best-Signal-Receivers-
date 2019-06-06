/*------------------------------------------------------------------------------
 *上海宇志通信技术有限公司  www.caspl.cn
 *------------------------------------------------------------------------------
 *存储器资源分配文件
 *------------------------------------------------------------------------------*/

MEMORY
{
	L2SRAM  : o = 00000400h		l = 00040000h
	EXTERNAL: o = 80000000h		l = 80010000h
}

SECTIONS
{
	.text   >   L2SRAM
    .stack	>   L2SRAM
    .far	>   L2SRAM
    .switch	>   L2SRAM 
    .tables >   L2SRAM
    .data   >   L2SRAM
    .bss	>   L2SRAM
    .sysmem	>   L2SRAM
    .cinit	>   L2SRAM
    .const	>   L2SRAM
    .cio    >   L2SRAM
    .buffers >  EXTERNAL
}
