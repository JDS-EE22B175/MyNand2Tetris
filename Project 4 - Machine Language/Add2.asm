// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Add2.asm


//RAM[2] = RAM[0] + RAM[1]
//Usage: Put Values into RAM[0] and RAM[1]
@0
D=M

@1
D=D+M

@2
M=D

(LOOP)
@LOOP
0;JEQ

