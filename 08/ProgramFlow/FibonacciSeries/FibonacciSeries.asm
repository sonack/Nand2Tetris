// [0]
// goto START
@BAREBONE$START
0;JMP
(VM_SUBROUTINE_EQ)
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=0
@END_EQ
D;JNE
@SP
A=M-1
M=-1
(END_EQ)
@R15
A=M
0;JMP
(VM_SUBROUTINE_GT)
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=0
@END_GT
D;JLE
@SP
A=M-1
M=-1
(END_GT)
@R15
A=M
0;JMP
(VM_SUBROUTINE_LT)
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=0
@END_LT
D;JGE
@SP
A=M-1
M=-1
(END_LT)
@R15
A=M
0;JMP
(VM_SUBROUTINE_RETURN)
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@LCL
D=M
@R14
AM=D-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(VM_SUBROUTINE_CALL)
@SP
A=M
M=D
@LCL
D=M
@SP
AM=M+1
M=D
@ARG
D=M
@SP
AM=M+1
M=D
@THIS
D=M
@SP
AM=M+1
M=D
@THAT
D=M
@SP
AM=M+1
M=D
@4
D=A
@R13
D=D+M
@SP
D=M-D
@ARG
M=D
@SP
MD=M+1
@LCL
M=D
@R14
A=M
0;JMP
// [129]
// label START
(BAREBONE$START)
// [129]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [136]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [141]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [145]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [151]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [155]
// pop that 1
@SP
AM=M-1
D=M
@THAT
A=M+1
M=D
// [161]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [168]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [174]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [179]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [185]
// label MAIN_LOOP_START
(BAREBONE$MAIN_LOOP_START)
// [185]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [192]
// if-goto COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@BAREBONE$COMPUTE_ELEMENT
D;JNE
// [197]
// goto END_PROGRAM
@BAREBONE$END_PROGRAM
0;JMP
// [199]
// label COMPUTE_ELEMENT
(BAREBONE$COMPUTE_ELEMENT)
// [199]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [206]
// push that 1
@THAT
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [213]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [218]
// pop that 2
@SP
AM=M-1
D=M
@THAT
A=M+1
A=A+1
M=D
// [225]
// push pointer THAT
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
// [231]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [235]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [240]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [245]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [252]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [256]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [261]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [267]
// goto MAIN_LOOP_START
@BAREBONE$MAIN_LOOP_START
0;JMP
// [269]
// label END_PROGRAM
(BAREBONE$END_PROGRAM)
