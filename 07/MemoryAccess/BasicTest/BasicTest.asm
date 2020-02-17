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
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [135]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [141]
// push constant 21
@21
D=A
@SP
AM=M+1
A=A-1
M=D
// [147]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [153]
// pop argument 2
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
M=D
// [160]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [166]
// push constant 36
@36
D=A
@SP
AM=M+1
A=A-1
M=D
// [172]
// pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [183]
// push constant 42
@42
D=A
@SP
AM=M+1
A=A-1
M=D
// [189]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [195]
// pop that 5
@SP
AM=M-1
D=M
@THAT
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [205]
// pop that 2
@SP
AM=M-1
D=M
@THAT
A=M+1
A=A+1
M=D
// [212]
// push constant 510
@510
D=A
@SP
AM=M+1
A=A-1
M=D
// [218]
// pop temp R11
@SP
AM=M-1
D=M
@R11
M=D
// [223]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [230]
// push that 5
@THAT
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [239]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [244]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [251]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [256]
// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [265]
// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [274]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [279]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [284]
// push temp R11
@R11
D=M
@SP
AM=M+1
A=A-1
M=D
// [290]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
