// my Implementation of Rectangle.asm
@32
M=A

@R0
D=M

@SCREEN
D=A
@index
M=D

@i
M=0

@SCREEN
(RECT)
    @index
    A=M
    M=-1

    @i
    M=M+1
    D=M
    @R0
    D=D-M
    @END
    D;JGE
    
    @32
    D=M
    @index
    M=D+M
        
    @RECT
    0;JMP

(END)
    @END
    0;JMP
    
    