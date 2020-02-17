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
// push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// [135]
// push constant 333
@333
D=A
@SP
AM=M+1
A=A-1
M=D
// [141]
// push constant 888
@888
D=A
@SP
AM=M+1
A=A-1
M=D
// [147]
// pop static StaticTest.8
@SP
AM=M-1
D=M
@StaticTest.8
M=D
// [152]
// pop static StaticTest.3
@SP
AM=M-1
D=M
@StaticTest.3
M=D
// [157]
// pop static StaticTest.1
@SP
AM=M-1
D=M
@StaticTest.1
M=D
// [162]
// push static StaticTest.3
@StaticTest.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [168]
// push static StaticTest.1
@StaticTest.1
D=M
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
// push static StaticTest.8
@StaticTest.8
D=M
@SP
AM=M+1
A=A-1
M=D
// [185]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
