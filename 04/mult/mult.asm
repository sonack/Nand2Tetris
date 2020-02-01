// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


// 注意到，得益于补码表示法，这个算法对负整数也适用。
// Put your code here.

// i = 0
@i
M = 0
// sum = 0
@sum
M = 0

(LOOP)
// if i == R0, break
@R0
D = M
@i
D = M - D
@WRITE
D; JEQ

// sum += R1
@R1
D = M
@sum
M = M + D

// i++
@i
M = M + 1

// loop back
@LOOP
0; JMP

// write sum back to R2
(WRITE)
@sum
D = M
@R2
M = D

// terminate the program
(END)
@END
0; JMP