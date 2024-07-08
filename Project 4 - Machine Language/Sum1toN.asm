// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Sum1toN.asm


// Computes RAM[1] = 1 + 2 + ... + N
// Usage: Put N in RAM[0]

@R0
D=M

@N
M=D // N =R0

@i
M=1
@SUM
M=0

(LOOP)
    @i
    D=M
    @N
    D=D-M
    @STOP
    D;JGT

    @SUM
    D=M
    @i
    D=D+M
    @SUM
    M=D
    @i
    M=M+1
    @LOOP
    0;JMP

(STOP)
    @SUM
    D=M
    @R1
    M=D

(END)
    @END
    0;JMP

