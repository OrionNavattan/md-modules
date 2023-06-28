	if def(_MACRO_DEFS)=0
_MACRO_DEFS:	equ	1

; ===============================================================
; ---------------------------------------------------------------
; Error handling and debugging modules
;
; (c) 2016-2023, Vladikcomper
; ---------------------------------------------------------------
; Macros definitions file
; ---------------------------------------------------------------

VDP_Data		equ 	$C00000
VDP_Ctrl		equ 	$C00004

; Generate VRAM write command
vram	macro
		if (narg=1)
				move.l	#($40000000+((\1&$3FFF)<<16)+((\1&$C000)>>14)),($C00004).l
		else
				move.l	#($40000000+((\1&$3FFF)<<16)+((\1&$C000)>>14)),\2
		endc
		endm

; Generate dc.l constant with VRAM write command
dcvram	macro
		dc.l	($40000000+((\1&$3FFF)<<16)+((\1&$C000)>>14))
		endm


; Generate CRAM write command
cram	macro	offset,operand
		if (narg=1)
				move.l	#($C0000000+(\1<<16)),VDP_Ctrl
		else
				move.l	#($C0000000+(\1<<16)),\operand
		endc
		endm
		
; A special macro to define externally visible symbols
__global macro	*
	if def(__global__\*)=0
__global__\*:
	endc
\*:
		endm

; A special macro to define injectables in linkable builds
__injectable	macro	*
	if def(_LINKABLE_)
; Fallback to illegal instruction unless injection is successful
\*:		illegal
	endc
		endm

	endc	; _MACRO_DEFS
