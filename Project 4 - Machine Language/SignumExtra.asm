//If R0 > 0 -> R1 = 1
//Else R1 = 0

@R0
D=M

@POSITIVE
D;JGT

@NON_POSITIVE
D;JLE

(POSITIVE) // Line 6
@R1        // Line 6
M=1

@END
0;JEQ

(NON_POSITIVE) // Line 10
@R1            // Line 10
M=0

@END
0;JEQ

(END) // Line 14
@END  // Line 14
0;JEQ