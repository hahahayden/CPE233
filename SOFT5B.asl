

List FileKey 
----------------------------------------------------------------------
C1      C2      C3      C4    || C5
--------------------------------------------------------------
C1:  Address (decimal) of instruction in source file. 
C2:  Segment (code or data) and address (in code or data segment) 
       of inforation associated with current linte. Note that not all
       source lines will contain information in this field.  
C3:  Opcode bits (this field only appears for valid instructions.
C4:  Data field; lists data for labels and assorted directives. 
C5:  Raw line from source code.
----------------------------------------------------------------------


(0001)                            || .DSEG
(0002)                       005  || .ORG 0x05
(0003)  DS-0x005             00A  || a: .DB 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
(0004)                            || 
(0005)                       r1   || .DEF ARRAY_IN = R1
(0006)                       r2   || .DEF ARRAY_POINT = R2
(0007)                       r3   || .DEF ARRAY_SIZE = R3
(0008)                       r4   || .DEF COUNT = R4
(0009)                       r5   || .DEF START = R5 
(0010)                       r6   || .DEF CURR = R6
(0011)                       r7   || .DEF BEGIN = R7
(0012)                       r9   || .DEF CURRENT = R9
(0013)                       r8   || .DEF MIN = R8
(0014)                            || 
(0015)                            || .CSEG
(0016)                       096  || .ORG 0X60
-------------------------------------------------------------------------------------------
-STUP-  CS-0x000  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x001  0x3A005  0x005  ||              LD      r0,0x05     ; place reg data in mem 
-STUP-  CS-0x002  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x003  0x3A006  0x006  ||              LD      r0,0x06     ; place reg data in mem 
-STUP-  CS-0x004  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x005  0x3A007  0x007  ||              LD      r0,0x07     ; place reg data in mem 
-STUP-  CS-0x006  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x007  0x3A008  0x008  ||              LD      r0,0x08     ; place reg data in mem 
-STUP-  CS-0x008  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x009  0x3A009  0x009  ||              LD      r0,0x09     ; place reg data in mem 
-STUP-  CS-0x00A  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x00B  0x3A00A  0x00A  ||              LD      r0,0x0A     ; place reg data in mem 
-STUP-  CS-0x00C  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x00D  0x3A00B  0x00B  ||              LD      r0,0x0B     ; place reg data in mem 
-STUP-  CS-0x00E  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x00F  0x3A00C  0x00C  ||              LD      r0,0x0C     ; place reg data in mem 
-STUP-  CS-0x010  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x011  0x3A00D  0x00D  ||              LD      r0,0x0D     ; place reg data in mem 
-STUP-  CS-0x012  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x013  0x3A00E  0x00E  ||              LD      r0,0x0E     ; place reg data in mem 
-STUP-  CS-0x014  0x08300  0x100  ||              BRN     0x60        ; jump to start of .cseg in program mem 
-------------------------------------------------------------------------------------------
(0017)  CS-0x060  0x36400         || MOV COUNT,0x00
(0018)  CS-0x061  0x36205         || MOV ARRAY_POINT,0X05
(0019)  CS-0x062  0x36305         || MOV ARRAY_SIZE,0X05
(0020)  CS-0x063  0x36400         || MOV COUNT,0x00
(0021)  CS-0x064  0x3219A  0x064  || INPUT:	IN R1, 0X9A
(0022)  CS-0x065  0x04113         || 		ST R1,(R2)
(0023)  CS-0x066  0x28201         || 		ADD ARRAY_POINT,0X01
(0024)  CS-0x067  0x28401         || 		ADD COUNT,0x01
(0025)  CS-0x068  0x04418         || 		CMP COUNT,ARRAY_SIZE
(0026)  CS-0x069  0x0A320         || 		BRCS INPUT
(0027)                            || 
(0028)  CS-0x06A  0x36404         || MOV COUNT, 0x04;  counter for inputs
(0029)  CS-0x06B  0x36505         || MOV START, 0x05;   pointer
(0030)  CS-0x06C  0x36905         || MOV CURRENT, 0x05;   second pointer
(0031)  CS-0x06D  0x36605         || MOV CURR, 0X05
(0032)  CS-0x06E  0x02348         || ADD ARRAY_SIZE,CURRENT
(0033)  CS-0x06F  0x04629  0x06F  || LOOP:	MOV R6,START
(0034)  CS-0x070  0x0472A         || 		LD R7,(R5)	;LOAD IN INITIAL VALUE
(0035)  CS-0x071  0x08390         || 		BRN COMPARE
(0036)                            || 		
(0037)  CS-0x072  0x28601  0x072  || COMPARE:ADD CURR,0x01
(0038)  CS-0x073  0x04618         || 		CMP CURR,ARRAY_SIZE
(0039)  CS-0x074  0x08412         || 		BREQ RESET
(0040)  CS-0x075  0x04932         || 		LD R9,(R6)
(0041)  CS-0x076  0x04938         || 		CMP CURRENT,BEGIN
(0042)  CS-0x077  0x0A391         || 		BRCC COMPARE
(0043)  CS-0x078  0x04849         || MOV MIN,CURRENT
(0044)  CS-0x079  0x04C31         || MOV R12,R6		
(0045)  CS-0x07A  0x04962  0x07A  || SMALL: 	LD R9,(R12)
(0046)  CS-0x07B  0x04C18         || 		CMP R12,ARRAY_SIZE
(0047)  CS-0x07C  0x08442         || 		BREQ SWAP
(0048)  CS-0x07D  0x28C01         || 		ADD R12,0X01
(0049)  CS-0x07E  0x04848         || 		CMP MIN,CURRENT
(0050)  CS-0x07F  0x0A3D0         || 		BRCS SMALL
(0051)  CS-0x080  0x04849         || 		MOV MIN, CURRENT
(0052)  CS-0x081  0x083D0         || 		BRN SMALL 
(0053)                            || 														
(0054)  CS-0x082  0x04A29  0x082  || RESET:  MOV R10,START
(0055)  CS-0x083  0x28A01         || 		ADD R10,0X01
(0056)  CS-0x084  0x04A18         || 		CMP R10, ARRAY_SIZE
(0057)  CS-0x085  0x0846A         || 		BREQ DONE
(0058)  CS-0x086  0x28501         || 		ADD START,0X01
(0059)  CS-0x087  0x0837B         || 		BRNE LOOP
(0060)                            || 		
(0061)  CS-0x088  0x0482B  0x088  || SWAP: 	ST R8,(R5)
(0062)  CS-0x089  0x04763         || 		ST R7,(R12)
(0063)  CS-0x08A  0x28501         || 		ADD START,0X01
(0064)  CS-0x08B  0x04518         || 		CMP START,ARRAY_SIZE
(0065)  CS-0x08C  0x0A378         || 		BRCS LOOP
(0066)                            || 		
(0067)                            || 				
(0068)  CS-0x08D  0x34842  0x08D  || DONE: OUT R8,0x42





Symbol Table Key 
----------------------------------------------------------------------
C1             C2     C3      ||  C4+
-------------  ----   ----        -------
C1:  name of symbol
C2:  the value of symbol 
C3:  source code line number where symbol defined
C4+: source code line number of where symbol is referenced 
----------------------------------------------------------------------


-- Labels
------------------------------------------------------------ 
COMPARE        0x072   (0037)  ||  0035 0042 
DONE           0x08D   (0068)  ||  0057 
INPUT          0x064   (0021)  ||  0026 
LOOP           0x06F   (0033)  ||  0059 0065 
RESET          0x082   (0054)  ||  0039 
SMALL          0x07A   (0045)  ||  0050 0052 
SWAP           0x088   (0061)  ||  0047 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
--> No ".EQU" directives used


-- Directives: .DEF
------------------------------------------------------------ 
ARRAY_IN         r1    (0005)  ||  
ARRAY_POINT      r2    (0006)  ||  0018 0023 
ARRAY_SIZE       r3    (0007)  ||  0019 0025 0032 0038 0046 0056 0064 
BEGIN            r7    (0011)  ||  0041 
COUNT            r4    (0008)  ||  0017 0020 0024 0025 0028 
CURR             r6    (0010)  ||  0031 0037 0038 
CURRENT          r9    (0012)  ||  0030 0032 0041 0043 0049 0051 
MIN              r8    (0013)  ||  0043 0049 0051 
START            r5    (0009)  ||  0029 0033 0054 0058 0063 0064 


-- Directives: .DB
------------------------------------------------------------ 
A              0x00F   (0003)  ||  
