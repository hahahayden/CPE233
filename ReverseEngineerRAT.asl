

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


(0001)                            || .cseg
(0002)                       064  || .org 0x40
(0003)                            || 
(0004)  CS-0x040  0x37DFC         || MOV R29,0xFC
(0005)  CS-0x041  0x29D01         || ADD R29,0x01
(0006)  CS-0x042  0x37EFA         || MOV R30,0xFA
(0007)  CS-0x043  0x37F05         || MOV R31,0x05
(0008)  CS-0x044  0x01EFA         || EXOR R30,R31
(0009)  CS-0x045  0x03EEA         || SUB R30,R29
(0010)  CS-0x046  0x0820B         || BRNE 0x41





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
--> No labels used


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
--> No ".EQU" directives used


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
