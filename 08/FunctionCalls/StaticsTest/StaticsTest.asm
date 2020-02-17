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
// function Class1.set 0
(Class1.set)
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
// pop static Class1.0
@SP
AM=M-1
D=M
@Class1.0
M=D
// [155]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [162]
// pop static Class1.1
@SP
AM=M-1
D=M
@Class1.1
M=D
// [167]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [171]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [173]
// function Class1.get 0
(Class1.get)
// [173]
// push static Class1.0
@Class1.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [179]
// push static Class1.1
@Class1.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [185]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [190]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [192]
// function Sys.init 0
(Sys.init)
// [192]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [198]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [204]
// call Class1.set 2
@2
D=A
@R13
M=D
@Class1.set
D=A
@R14
M=D
@RET_ADDRESS_CALL1
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL1)
// [216]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [221]
// push constant 23
@23
D=A
@SP
AM=M+1
A=A-1
M=D
// [227]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [233]
// call Class2.set 2
@2
D=A
@R13
M=D
@Class2.set
D=A
@R14
M=D
@RET_ADDRESS_CALL2
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL2)
// [245]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [250]
// call Class1.get 0
@0
D=A
@R13
M=D
@Class1.get
D=A
@R14
M=D
@RET_ADDRESS_CALL3
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL3)
// [262]
// call Class2.get 0
@0
D=A
@R13
M=D
@Class2.get
D=A
@R14
M=D
@RET_ADDRESS_CALL4
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL4)
// [274]
// label WHILE
(Sys.init$WHILE)
// [274]
// goto WHILE
@Sys.init$WHILE
0;JMP
// [276]
// function Class2.set 0
(Class2.set)
// [276]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [283]
// pop static Class2.0
@SP
AM=M-1
D=M
@Class2.0
M=D
// [288]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [295]
// pop static Class2.1
@SP
AM=M-1
D=M
@Class2.1
M=D
// [300]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [304]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [306]
// function Class2.get 0
(Class2.get)
// [306]
// push static Class2.0
@Class2.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [312]
// push static Class2.1
@Class2.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [318]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [323]
// return
@VM_SUBROUTINE_RETURN
0;JMP
