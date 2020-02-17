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
// push constant 3030
@3030
D=A
@SP
AM=M+1
A=A-1
M=D
// [135]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [140]
// push constant 3040
@3040
D=A
@SP
AM=M+1
A=A-1
M=D
// [146]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [151]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [157]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [164]
// push constant 46
@46
D=A
@SP
AM=M+1
A=A-1
M=D
// [170]
// pop that 6
@SP
AM=M-1
D=M
@THAT
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [181]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [187]
// push pointer THAT
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
// [193]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [198]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [206]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [211]
// push that 6
@THAT
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [220]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
