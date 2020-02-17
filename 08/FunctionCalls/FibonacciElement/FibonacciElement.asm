// [0]
// bootstrap
// sp = 256
@256
D=A
@SP
M=D
// [4]
// call Sys.init
// [4]
// call Sys.init 0
@0
D=A
@R13
M=D
@Sys.init
D=A
@R14
M=D
@RET_ADDRESS_CALL0
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL0)
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
// [143]
// function Main.fibonacci 0
(Main.fibonacci)
// [143]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [150]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [156]
// lt
@RET_ADDRESS_LT0
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT0)
// [160]
// if-goto IF_TRUE
@SP
AM=M-1
D=M
@Main.fibonacci$IF_TRUE
D;JNE
// [165]
// goto IF_FALSE
@Main.fibonacci$IF_FALSE
0;JMP
// [167]
// label IF_TRUE
(Main.fibonacci$IF_TRUE)
// [167]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [174]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [176]
// label IF_FALSE
(Main.fibonacci$IF_FALSE)
// [176]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [183]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [189]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [194]
// call Main.fibonacci 1
@1
D=A
@R13
M=D
@Main.fibonacci
D=A
@R14
M=D
@RET_ADDRESS_CALL1
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL1)
// [206]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [213]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [217]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [222]
// call Main.fibonacci 1
@1
D=A
@R13
M=D
@Main.fibonacci
D=A
@R14
M=D
@RET_ADDRESS_CALL2
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL2)
// [234]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [239]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [241]
// function Sys.init 0
(Sys.init)
// [241]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [247]
// call Main.fibonacci 1
@1
D=A
@R13
M=D
@Main.fibonacci
D=A
@R14
M=D
@RET_ADDRESS_CALL3
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL3)
// [259]
// label WHILE
(Sys.init$WHILE)
// [259]
// goto WHILE
@Sys.init$WHILE
0;JMP
