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
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// [135]
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// [141]
// eq
@RET_ADDRESS_EQ0
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ0)
// [145]
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// [151]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [157]
// eq
@RET_ADDRESS_EQ1
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ1)
// [161]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [167]
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// [173]
// eq
@RET_ADDRESS_EQ2
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ2)
// [177]
// push constant 892
@892
D=A
@SP
AM=M+1
A=A-1
M=D
// [183]
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// [189]
// lt
@RET_ADDRESS_LT0
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT0)
// [193]
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// [199]
// push constant 892
@892
D=A
@SP
AM=M+1
A=A-1
M=D
// [205]
// lt
@RET_ADDRESS_LT1
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT1)
// [209]
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// [215]
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// [221]
// lt
@RET_ADDRESS_LT2
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT2)
// [225]
// push constant 32767
@32767
D=A
@SP
AM=M+1
A=A-1
M=D
// [231]
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// [237]
// gt
@RET_ADDRESS_GT0
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT0)
// [241]
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// [247]
// push constant 32767
@32767
D=A
@SP
AM=M+1
A=A-1
M=D
// [253]
// gt
@RET_ADDRESS_GT1
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT1)
// [257]
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// [263]
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// [269]
// gt
@RET_ADDRESS_GT2
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT2)
// [273]
// push constant 57
@57
D=A
@SP
AM=M+1
A=A-1
M=D
// [279]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [285]
// push constant 53
@53
D=A
@SP
AM=M+1
A=A-1
M=D
// [291]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [296]
// push constant 112
@112
D=A
@SP
AM=M+1
A=A-1
M=D
// [302]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [307]
// neg
@SP
A=M-1
M=-M
// [310]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [315]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [321]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [326]
// not
@SP
A=M-1
M=!M
