// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@0
D=A
@LCL
D=D+M
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop argument 2
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@2
D=A
@ARG
D=D+M
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// pop argument 1
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@1
D=A
@ARG
D=D+M
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 6
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@6
D=A
@THIS
D=D+M
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 5
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@5
D=A
@THAT
D=D+M
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// pop that 2
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@2
D=A
@THAT
D=D+M
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 6
@SP
M=M-1
@SP
A=M
D=M
@tmp
M=D
@6
D=A
@5
D=D+A
@addr
M=D
@tmp
D=M
@addr
A=M
M=D
// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push that 5
@5
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=D+M
// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=M-D
// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=D+M
// sub
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=M-D
// push temp 6
@6
D=A
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=D+M
