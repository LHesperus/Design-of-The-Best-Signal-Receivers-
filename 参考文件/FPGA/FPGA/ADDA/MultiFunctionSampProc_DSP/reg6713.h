/*------------------------------------------------------------------------------
 *上海宇志通信技术有限公司  www.caspl.cn
 *------------------------------------------------------------------------------
 *6713寄存器表格定义
 *------------------------------------------------------------------------------*/

// PLL Registers define
#define		PLLPID     			0x01B7C000 
#define		PLLCSR     			0x01B7C100
// PLLCSR RegisterPLL disabled
#define		PLL_DISABLED		0x00000000
#define		PLL_ENABLED			0x00000001
#define		PLL_POWERON			0x00000000
#define		PLL_POWEROFF		0x00000002
#define		PLL_RESETON			0x00000008
#define		PLL_RESETOFF		0x00000000
#define		PLL_CLOCK_STABLE	0x00000040
#define		PLL_CLOCK_INSTABLE	0x00000000
// End define of PLLCSR
#define		PLLM				0x01B7C110
#define		PLLDIV0				0x01B7C114
#define		PLLDIV1				0x01B7C118
#define		PLLDIV2				0x01B7C11C
#define		PLLDIV3				0x01B7C120
#define		OSCDIV1				0x01B7C124
// EMIF Registers define
#define		EMIF_GCTL       	0x01800000
#define		EMIF_CE1        	0x01800004
#define		EMIF_CE0        	0x01800008
#define		EMIF_CE2        	0x01800010
#define		EMIF_CE3        	0x01800014
#define		EMIF_SDRAMCTL   	0x01800018
#define		EMIF_SDRAMTIMING  	0x0180001C
#define		EMIF_SDRAMEXT     	0x01800020
#define		GBLCTL     			0x01800000 
#define		CECTL1     			0x01800004 
#define		CECTL0     			0x01800008 
#define		CECTL2     			0x01800010 
#define		CECTL3     			0x01800014 
#define		SDCTL      			0x01800018 
#define		SDTIM      			0x0180001C 
#define		SDEXT      			0x01800020 
// GPIO Registers define
#define		GPEN      			0x01B00000 
#define		GPDIR      			0x01B00004 
#define		GPVAL      			0x01B00008 
#define		GPDH       			0x01B00010 
#define		GPHM       			0x01B00014 
#define		GPDL       			0x01B00018 
#define		GPLM       			0x01B0001C 
#define		GPGC       			0x01B00020 
#define		GPPOL      			0x01B00024    
// Interrupt Selector Registers define
#define		MUXH       			0x019C0000 
#define		MUXL       			0x019C0004 
#define		EXTPOL     			0x019C0008   
// McBSP Registers Define
#define		McBSP0_DRR       	0x018C0000
#define		McBSP0_DXR       	0x018C0004
#define		McBSP0_SPCR      	0x018C0008
#define		McBSP0_RCR       	0x018C000C
#define		McBSP0_XCR       	0x018C0010
#define		McBSP0_SRGR      	0x018C0014
#define		McBSP0_MCR       	0x018C0018
#define		McBSP0_RCER     	0x018C001C
#define		McBSP0_XCER      	0x018C0020
#define		McBSP0_PCR       	0x018C0024
