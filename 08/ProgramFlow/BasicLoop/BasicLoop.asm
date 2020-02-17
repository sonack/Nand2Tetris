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
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [133]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [139]
// label LOOP_START
(BAREBONE$LOOP_START)
// [139]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [146]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [153]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [158]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [164]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [171]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [175]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [180]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [186]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [193]
// if-goto LOOP_START
@SP
AM=M-1
D=M
@BAREBONE$LOOP_START
D;JNE
// [198]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
