// Demonstrated in the Lectures
@R0
D=M
@n
M=D // n = RAM[0]

@i
M=0 // I = 0

@SCREEN
D=A
@address
M=D // Address = 16384

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGT // If i > n GOTO END
    
    @address
    A=M
    M=-1 // RAM[address] = -1 (16 pixels)

    @32
    D=A
    @address
    M=D+M // address = address + 32
    @LOOP
    0;JMP

(END)
    @END
    0;JMP
    
    