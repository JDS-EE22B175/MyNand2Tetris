// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(LOOP)
    // Checking for Input
    @KBD
    D=M
    // If no Input, Clear the screen
    @CLEAR
    D;JEQ

    // Filling the screen
    (FILL)
        @SCREEN
        D=A
        @i
        M=D // Initializing i = 16384

        @8191
        M=D+A // Screen goes from 16384 to 24575 => M is the last address
        (FILL_LOOP) // Fill Loop
            @8191
            D=M  
            
            @i
            D=D-M //Compare i with the last address
            @LOOP
            D;JLT // If i > last address, go and check for input
            @i
            D=M // D = i
            
            A=D // At the ith address => make the i-16384th row of pixels black
            M=-1
            @i
            M=M+1  // Increment i
            @FILL_LOOP
            0;JMP // Next word

    @LOOP
    0;JMP
    
    // Clearing the screen
    (CLEAR)
        @SCREEN
        D=A
        @i
        M=D // Initializing i = 16384

        @8191
        M=D+A // Screen goes from 16384 to 24575 => M is the last address
        (CLEAR_LOOP) // Fill Loop
            @8191
            D=M  
            
            @i
            D=D-M //Compare i with the last address
            @LOOP
            D;JLT // If i > last address, go and check for input
            @i
            D=M // D = i
            
            A=D // At the ith address => make the i-16384th row of pixels white
            M=0
            @i
            M=M+1  // Increment i
            @CLEAR_LOOP
            0;JMP // Next word

    @LOOP
    0;JMP