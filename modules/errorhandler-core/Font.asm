
; =============================================================================
; -----------------------------------------------------------------------------
; MD Debugger and Error Handler
;
; (c) 2016-2023, Vladikcomper
; -----------------------------------------------------------------------------
; Error Handler 1bpp font graphics
; -----------------------------------------------------------------------------

Art1bpp_Font:	__global
	dc.w	Art1bpp_Font_End-Art1bpp_Font_Start-1			; font size - 1

Art1bpp_Font_Start:
	dc.l	$00000000, $00000000, $183C3C18, $18001800, $6C6C6C00, $00000000, $6C6CFE6C, $FE6C6C00
	dc.l	$187EC07C, $06FC1800, $00C60C18, $3060C600, $386C3876, $CCCC7600, $18183000, $00000000
	dc.l	$18306060, $60301800, $60301818, $18306000, $00EE7CFE, $7CEE0000, $0018187E, $18180000
	dc.l	$00000000, $18183000, $000000FE, $00000000, $00000000, $00383800, $060C1830, $60C08000
	dc.l	$7CC6CEDE, $F6E67C00, $18781818, $18187E00, $7CC60C18, $3066FE00, $7CC6063C, $06C67C00
	dc.l	$0C1C3C6C, $FE0C0C00, $FEC0FC06, $06C67C00, $7CC6C0FC, $C6C67C00, $FEC6060C, $18181800
	dc.l	$7CC6C67C, $C6C67C00, $7CC6C67E, $06C67C00, $001C1C00, $001C1C00, $00181800, $00181830
	dc.l	$0C183060, $30180C00, $0000FE00, $00FE0000, $6030180C, $18306000, $7CC6060C, $18001800
	dc.l	$7CC6C6DE, $DCC07E00, $386CC6C6, $FEC6C600, $FC66667C, $6666FC00, $3C66C0C0, $C0663C00
	dc.l	$F86C6666, $666CF800, $FEC2C0F8, $C0C2FE00, $FE62607C, $6060F000, $7CC6C0C0, $DEC67C00
	dc.l	$C6C6C6FE, $C6C6C600, $3C181818, $18183C00, $3C181818, $D8D87000, $C6CCD8F0, $D8CCC600
	dc.l	$F0606060, $6062FE00, $C6EEFED6, $D6C6C600, $C6E6E6F6, $DECEC600, $7CC6C6C6, $C6C67C00
	dc.l	$FC66667C, $6060F000, $7CC6C6C6, $C6D67C06, $FCC6C6FC, $D8CCC600, $7CC6C07C, $06C67C00
	dc.l	$7E5A1818, $18183C00, $C6C6C6C6, $C6C67C00, $C6C6C6C6, $6C381000, $C6C6D6D6, $FEEEC600
	dc.l	$C66C3838, $386CC600, $6666663C, $18183C00, $FE860C18, $3062FE00, $7C606060, $60607C00
	dc.l	$C0603018, $0C060200, $7C0C0C0C, $0C0C7C00, $10386CC6, $00000000, $00000000, $000000FF
	dc.l	$30301800, $00000000, $0000780C, $7CCC7E00, $E0607C66, $6666FC00, $00007CC6, $C0C67C00
	dc.l	$1C0C7CCC, $CCCC7E00, $00007CC6, $FEC07C00, $1C3630FC, $30307800, $000076CE, $C67E067C
	dc.l	$E0607C66, $6666E600, $18003818, $18183C00, $0C001C0C, $0C0CCC78, $E060666C, $786CE600
	dc.l	$18181818, $18181C00, $00006CFE, $D6D6C600, $0000DC66, $66666600, $00007CC6, $C6C67C00
	dc.l	$0000DC66, $667C60F0, $000076CC, $CC7C0C1E, $0000DC66, $6060F000, $00007CC0, $7C067C00
	dc.l	$3030FC30, $30361C00, $0000CCCC, $CCCC7600, $0000C6C6, $6C381000, $0000C6C6, $D6FE6C00
	dc.l	$0000C66C, $386CC600, $0000C6C6, $CE76067C, $0000FC98, $3064FC00, $0E181870, $18180E00
	dc.l	$18181800, $18181800, $7018180E, $18187000, $76DC0000, $00000000

Art1bpp_Font_End:
