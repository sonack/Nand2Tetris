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
// function Sys.init 0
(Sys.init)
// [143]
// push constant 4000
@4000
D=A
@SP
AM=M+1
A=A-1
M=D
// [149]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [154]
// push constant 5000
@5000
D=A
@SP
AM=M+1
A=A-1
M=D
// [160]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [165]
// call Sys.main 0
@0
D=A
@R13
M=D
@Sys.main
D=A
@R14
M=D
@RET_ADDRESS_CALL1
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL1)
// [177]
// pop temp R6
@SP
AM=M-1
D=M
@R6
M=D
// [182]
// label LOOP
(Sys.init$LOOP)
// [182]
// goto LOOP
@Sys.init$LOOP
0;JMP
// [184]
// function Sys.main 5
(Sys.main)
@5
D=A
(LOOP_Sys.main)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Sys.main
D;JGT

// [193]
// push constant 4001
@4001
D=A
@SP
AM=M+1
A=A-1
M=D
// [199]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [204]
// push constant 5001
@5001
D=A
@SP
AM=M+1
A=A-1
M=D
// [210]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [215]
// push constant 200
@200
D=A
@SP
AM=M+1
A=A-1
M=D
// [221]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [227]
// push constant 40
@40
D=A
@SP
AM=M+1
A=A-1
M=D
// [233]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [240]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [246]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [254]
// push constant 123
@123
D=A
@SP
AM=M+1
A=A-1
M=D
// [260]
// call Sys.add12 1
@1
D=A
@R13
M=D
@Sys.add12
D=A
@R14
M=D
@RET_ADDRESS_CALL2
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL2)
// [272]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [277]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [284]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [291]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [299]
// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [308]
// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [317]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [322]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [327]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [332]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [337]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [339]
// function Sys.add12 0
(Sys.add12)
// [339]
// push constant 4002
@4002
D=A
@SP
AM=M+1
A=A-1
M=D
// [345]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [350]
// push constant 5002
@5002
D=A
@SP
AM=M+1
A=A-1
M=D
// [356]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [361]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [368]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [374]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [379]
// return
@VM_SUBROUTINE_RETURN
0;JMP
