// [0]
// bootstrap
// sp = 256
@256
D=A
@SP
M=D
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
// function Ball.new 0
(Ball.new)
// [143]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [149]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL1
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL1)
// [161]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [166]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [173]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [179]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [186]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [192]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [200]
// pop this 10
@THIS
D=M
@10
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [212]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [221]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [227]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [232]
// pop this 11
@THIS
D=M
@11
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [244]
// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [253]
// pop this 12
@THIS
D=M
@12
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [265]
// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [274]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [280]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [285]
// pop this 13
@THIS
D=M
@13
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [297]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [301]
// pop this 14
@THIS
D=M
@14
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [313]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [319]
// call Ball.show 1
@1
D=A
@R13
M=D
@Ball.show
D=A
@R14
M=D
@RET_ADDRESS_CALL2
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL2)
// [331]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [336]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [342]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [344]
// function Ball.dispose 0
(Ball.dispose)
// [344]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [351]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [356]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [362]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL3
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL3)
// [374]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [379]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [383]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [385]
// function Ball.show 0
(Ball.show)
// [385]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [392]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [397]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [401]
// neg
@SP
A=M-1
M=-M
// [404]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL4
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL4)
// [416]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [421]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [427]
// call Ball.draw 1
@1
D=A
@R13
M=D
@Ball.draw
D=A
@R14
M=D
@RET_ADDRESS_CALL5
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL5)
// [439]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [444]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [448]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [450]
// function Ball.hide 0
(Ball.hide)
// [450]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [457]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [462]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [466]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL6
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL6)
// [478]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [483]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [489]
// call Ball.draw 1
@1
D=A
@R13
M=D
@Ball.draw
D=A
@R14
M=D
@RET_ADDRESS_CALL7
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL7)
// [501]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [506]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [510]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [512]
// function Ball.draw 0
(Ball.draw)
// [512]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [519]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [524]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [531]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [538]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [545]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [551]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [556]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [563]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [569]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [574]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL8
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL8)
// [586]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [591]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [595]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [597]
// function Ball.getLeft 0
(Ball.getLeft)
// [597]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [604]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [609]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [616]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [618]
// function Ball.getRight 0
(Ball.getRight)
// [618]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [625]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [630]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [637]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [643]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [648]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [650]
// function Ball.setDestination 3
(Ball.setDestination)
@3
D=A
(LOOP_Ball.setDestination)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Ball.setDestination
D;JGT

// [659]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [666]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [671]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [678]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [685]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [690]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [697]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [705]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [712]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [717]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [725]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [733]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL9
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL9)
// [745]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [751]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [760]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL10
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL10)
// [772]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [778]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [785]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [792]
// lt
@RET_ADDRESS_LT0
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT0)
// [796]
// pop this 7
@THIS
D=M
@7
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [808]
// push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [817]
// not
@SP
A=M-1
M=!M
// [820]
// if-goto Ball.setDestination.IF_0.F_CASE
@SP
AM=M-1
D=M
@Ball.setDestination$Ball.setDestination.IF_0.F_CASE
D;JNE
// [825]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [832]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [839]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [846]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [852]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [860]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [866]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [873]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [881]
// lt
@RET_ADDRESS_LT1
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT1)
// [885]
// pop this 8
@THIS
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [897]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [904]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [911]
// lt
@RET_ADDRESS_LT2
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT2)
// [915]
// pop this 9
@THIS
D=M
@9
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [927]
// goto Ball.setDestination.IF_0.CONT
@Ball.setDestination$Ball.setDestination.IF_0.CONT
0;JMP
// [929]
// label Ball.setDestination.IF_0.F_CASE
(Ball.setDestination$Ball.setDestination.IF_0.F_CASE)
// [929]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [936]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [943]
// lt
@RET_ADDRESS_LT3
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT3)
// [947]
// pop this 8
@THIS
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [959]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [966]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [974]
// lt
@RET_ADDRESS_LT4
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT4)
// [978]
// pop this 9
@THIS
D=M
@9
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [990]
// label Ball.setDestination.IF_0.CONT
(Ball.setDestination$Ball.setDestination.IF_0.CONT)
// [990]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [996]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1003]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL11
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL11)
// [1015]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1022]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1027]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [1036]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [1042]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1049]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL12
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL12)
// [1061]
// pop this 5
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [1071]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [1077]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1084]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1091]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1096]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL13
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL13)
// [1108]
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
// [1119]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1123]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [1125]
// function Ball.move 0
(Ball.move)
// [1125]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1132]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [1137]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [1143]
// call Ball.hide 1
@1
D=A
@R13
M=D
@Ball.hide
D=A
@R14
M=D
@RET_ADDRESS_CALL14
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL14)
// [1155]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [1160]
// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1169]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1173]
// lt
@RET_ADDRESS_LT5
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT5)
// [1177]
// not
@SP
A=M-1
M=!M
// [1180]
// if-goto Ball.move.IF_0.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_0.F_CASE
D;JNE
// [1185]
// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1194]
// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1203]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1208]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [1217]
// goto Ball.move.IF_0.CONT
@Ball.move$Ball.move.IF_0.CONT
0;JMP
// [1219]
// label Ball.move.IF_0.F_CASE
(Ball.move$Ball.move.IF_0.F_CASE)
// [1219]
// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1228]
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
// [1237]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1242]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [1251]
// push this 9
@THIS
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1260]
// not
@SP
A=M-1
M=!M
// [1263]
// if-goto Ball.move.IF_1.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_1.F_CASE
D;JNE
// [1268]
// push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1277]
// not
@SP
A=M-1
M=!M
// [1280]
// if-goto Ball.move.IF_2.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_2.F_CASE
D;JNE
// [1285]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1292]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1298]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1303]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1309]
// goto Ball.move.IF_2.CONT
@Ball.move$Ball.move.IF_2.CONT
0;JMP
// [1311]
// label Ball.move.IF_2.F_CASE
(Ball.move$Ball.move.IF_2.F_CASE)
// [1311]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1318]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1324]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1329]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1335]
// label Ball.move.IF_2.CONT
(Ball.move$Ball.move.IF_2.CONT)
// [1335]
// goto Ball.move.IF_1.CONT
@Ball.move$Ball.move.IF_1.CONT
0;JMP
// [1337]
// label Ball.move.IF_1.F_CASE
(Ball.move$Ball.move.IF_1.F_CASE)
// [1337]
// push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1346]
// not
@SP
A=M-1
M=!M
// [1349]
// if-goto Ball.move.IF_3.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_3.F_CASE
D;JNE
// [1354]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1361]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1367]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1372]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1378]
// goto Ball.move.IF_3.CONT
@Ball.move$Ball.move.IF_3.CONT
0;JMP
// [1380]
// label Ball.move.IF_3.F_CASE
(Ball.move$Ball.move.IF_3.F_CASE)
// [1380]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1387]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1393]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1398]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1404]
// label Ball.move.IF_3.CONT
(Ball.move$Ball.move.IF_3.CONT)
// [1404]
// label Ball.move.IF_1.CONT
(Ball.move$Ball.move.IF_1.CONT)
// [1404]
// label Ball.move.IF_0.CONT
(Ball.move$Ball.move.IF_0.CONT)
// [1404]
// push this 8
@THIS
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1413]
// not
@SP
A=M-1
M=!M
// [1416]
// if-goto Ball.move.IF_4.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_4.F_CASE
D;JNE
// [1421]
// push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1430]
// not
@SP
A=M-1
M=!M
// [1433]
// if-goto Ball.move.IF_5.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_5.F_CASE
D;JNE
// [1438]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1445]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1451]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1456]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1462]
// goto Ball.move.IF_5.CONT
@Ball.move$Ball.move.IF_5.CONT
0;JMP
// [1464]
// label Ball.move.IF_5.F_CASE
(Ball.move$Ball.move.IF_5.F_CASE)
// [1464]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1471]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1477]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1482]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1488]
// label Ball.move.IF_5.CONT
(Ball.move$Ball.move.IF_5.CONT)
// [1488]
// goto Ball.move.IF_4.CONT
@Ball.move$Ball.move.IF_4.CONT
0;JMP
// [1490]
// label Ball.move.IF_4.F_CASE
(Ball.move$Ball.move.IF_4.F_CASE)
// [1490]
// push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1499]
// not
@SP
A=M-1
M=!M
// [1502]
// if-goto Ball.move.IF_6.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_6.F_CASE
D;JNE
// [1507]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1514]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1520]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1525]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1531]
// goto Ball.move.IF_6.CONT
@Ball.move$Ball.move.IF_6.CONT
0;JMP
// [1533]
// label Ball.move.IF_6.F_CASE
(Ball.move$Ball.move.IF_6.F_CASE)
// [1533]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1540]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1546]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1551]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1557]
// label Ball.move.IF_6.CONT
(Ball.move$Ball.move.IF_6.CONT)
// [1557]
// label Ball.move.IF_4.CONT
(Ball.move$Ball.move.IF_4.CONT)
// [1557]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1564]
// push this 10
@THIS
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1573]
// gt
@RET_ADDRESS_GT0
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT0)
// [1577]
// not
@SP
A=M-1
M=!M
// [1580]
// not
@SP
A=M-1
M=!M
// [1583]
// if-goto Ball.move.IF_7.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_7.F_CASE
D;JNE
// [1588]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [1592]
// pop this 14
@THIS
D=M
@14
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [1604]
// push this 10
@THIS
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1613]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1619]
// goto Ball.move.IF_7.CONT
@Ball.move$Ball.move.IF_7.CONT
0;JMP
// [1621]
// label Ball.move.IF_7.F_CASE
(Ball.move$Ball.move.IF_7.F_CASE)
// [1621]
// label Ball.move.IF_7.CONT
(Ball.move$Ball.move.IF_7.CONT)
// [1621]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1628]
// push this 11
@THIS
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1637]
// lt
@RET_ADDRESS_LT6
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT6)
// [1641]
// not
@SP
A=M-1
M=!M
// [1644]
// not
@SP
A=M-1
M=!M
// [1647]
// if-goto Ball.move.IF_8.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_8.F_CASE
D;JNE
// [1652]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [1658]
// pop this 14
@THIS
D=M
@14
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [1670]
// push this 11
@THIS
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1679]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1685]
// goto Ball.move.IF_8.CONT
@Ball.move$Ball.move.IF_8.CONT
0;JMP
// [1687]
// label Ball.move.IF_8.F_CASE
(Ball.move$Ball.move.IF_8.F_CASE)
// [1687]
// label Ball.move.IF_8.CONT
(Ball.move$Ball.move.IF_8.CONT)
// [1687]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1694]
// push this 12
@THIS
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1703]
// gt
@RET_ADDRESS_GT1
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT1)
// [1707]
// not
@SP
A=M-1
M=!M
// [1710]
// not
@SP
A=M-1
M=!M
// [1713]
// if-goto Ball.move.IF_9.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_9.F_CASE
D;JNE
// [1718]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [1724]
// pop this 14
@THIS
D=M
@14
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [1736]
// push this 12
@THIS
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1745]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1751]
// goto Ball.move.IF_9.CONT
@Ball.move$Ball.move.IF_9.CONT
0;JMP
// [1753]
// label Ball.move.IF_9.F_CASE
(Ball.move$Ball.move.IF_9.F_CASE)
// [1753]
// label Ball.move.IF_9.CONT
(Ball.move$Ball.move.IF_9.CONT)
// [1753]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1760]
// push this 13
@THIS
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1769]
// lt
@RET_ADDRESS_LT7
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT7)
// [1773]
// not
@SP
A=M-1
M=!M
// [1776]
// not
@SP
A=M-1
M=!M
// [1779]
// if-goto Ball.move.IF_10.F_CASE
@SP
AM=M-1
D=M
@Ball.move$Ball.move.IF_10.F_CASE
D;JNE
// [1784]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1790]
// pop this 14
@THIS
D=M
@14
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [1802]
// push this 13
@THIS
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1811]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1817]
// goto Ball.move.IF_10.CONT
@Ball.move$Ball.move.IF_10.CONT
0;JMP
// [1819]
// label Ball.move.IF_10.F_CASE
(Ball.move$Ball.move.IF_10.F_CASE)
// [1819]
// label Ball.move.IF_10.CONT
(Ball.move$Ball.move.IF_10.CONT)
// [1819]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [1825]
// call Ball.show 1
@1
D=A
@R13
M=D
@Ball.show
D=A
@R14
M=D
@RET_ADDRESS_CALL15
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL15)
// [1837]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [1842]
// push this 14
@THIS
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1851]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [1853]
// function Ball.bounce 5
(Ball.bounce)
@5
D=A
(LOOP_Ball.bounce)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Ball.bounce
D;JGT

// [1862]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1869]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [1874]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1882]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [1888]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL16
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL16)
// [1900]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [1907]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [1916]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [1922]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL17
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL17)
// [1934]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [1942]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1949]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1953]
// eq
@RET_ADDRESS_EQ0
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ0)
// [1957]
// not
@SP
A=M-1
M=!M
// [1960]
// if-goto Ball.bounce.IF_0.F_CASE
@SP
AM=M-1
D=M
@Ball.bounce$Ball.bounce.IF_0.F_CASE
D;JNE
// [1965]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [1971]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [1980]
// goto Ball.bounce.IF_0.CONT
@Ball.bounce$Ball.bounce.IF_0.CONT
0;JMP
// [1982]
// label Ball.bounce.IF_0.F_CASE
(Ball.bounce$Ball.bounce.IF_0.F_CASE)
// [1982]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1990]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1994]
// lt
@RET_ADDRESS_LT8
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT8)
// [1998]
// not
@SP
A=M-1
M=!M
// [2001]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2008]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [2012]
// eq
@RET_ADDRESS_EQ1
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ1)
// [2016]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [2021]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2029]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2033]
// lt
@RET_ADDRESS_LT9
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT9)
// [2037]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2044]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [2048]
// neg
@SP
A=M-1
M=-M
// [2051]
// eq
@RET_ADDRESS_EQ2
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ2)
// [2055]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [2060]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [2065]
// not
@SP
A=M-1
M=!M
// [2068]
// if-goto Ball.bounce.IF_1.F_CASE
@SP
AM=M-1
D=M
@Ball.bounce$Ball.bounce.IF_1.F_CASE
D;JNE
// [2073]
// push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// [2079]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [2088]
// goto Ball.bounce.IF_1.CONT
@Ball.bounce$Ball.bounce.IF_1.CONT
0;JMP
// [2090]
// label Ball.bounce.IF_1.F_CASE
(Ball.bounce$Ball.bounce.IF_1.F_CASE)
// [2090]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [2096]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [2105]
// label Ball.bounce.IF_1.CONT
(Ball.bounce$Ball.bounce.IF_1.CONT)
// [2105]
// label Ball.bounce.IF_0.CONT
(Ball.bounce$Ball.bounce.IF_0.CONT)
// [2105]
// push this 14
@THIS
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [2114]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [2118]
// eq
@RET_ADDRESS_EQ3
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ3)
// [2122]
// not
@SP
A=M-1
M=!M
// [2125]
// if-goto Ball.bounce.IF_2.F_CASE
@SP
AM=M-1
D=M
@Ball.bounce$Ball.bounce.IF_2.F_CASE
D;JNE
// [2130]
// push constant 506
@506
D=A
@SP
AM=M+1
A=A-1
M=D
// [2136]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2142]
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
// [2151]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [2157]
// neg
@SP
A=M-1
M=-M
// [2160]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL18
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL18)
// [2172]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2180]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL19
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL19)
// [2192]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2198]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2205]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2212]
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
// [2221]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL20
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL20)
// [2233]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2238]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2244]
// goto Ball.bounce.IF_2.CONT
@Ball.bounce$Ball.bounce.IF_2.CONT
0;JMP
// [2246]
// label Ball.bounce.IF_2.F_CASE
(Ball.bounce$Ball.bounce.IF_2.F_CASE)
// [2246]
// push this 14
@THIS
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [2255]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [2261]
// eq
@RET_ADDRESS_EQ4
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ4)
// [2265]
// not
@SP
A=M-1
M=!M
// [2268]
// if-goto Ball.bounce.IF_3.F_CASE
@SP
AM=M-1
D=M
@Ball.bounce$Ball.bounce.IF_3.F_CASE
D;JNE
// [2273]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2277]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2283]
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
// [2292]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [2298]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL21
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL21)
// [2310]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2318]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL22
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL22)
// [2330]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2336]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2343]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2350]
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
// [2359]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL23
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL23)
// [2371]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2376]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2382]
// goto Ball.bounce.IF_3.CONT
@Ball.bounce$Ball.bounce.IF_3.CONT
0;JMP
// [2384]
// label Ball.bounce.IF_3.F_CASE
(Ball.bounce$Ball.bounce.IF_3.F_CASE)
// [2384]
// push this 14
@THIS
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [2393]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [2399]
// eq
@RET_ADDRESS_EQ5
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ5)
// [2403]
// not
@SP
A=M-1
M=!M
// [2406]
// if-goto Ball.bounce.IF_4.F_CASE
@SP
AM=M-1
D=M
@Ball.bounce$Ball.bounce.IF_4.F_CASE
D;JNE
// [2411]
// push constant 250
@250
D=A
@SP
AM=M+1
A=A-1
M=D
// [2417]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2423]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2431]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [2437]
// neg
@SP
A=M-1
M=-M
// [2440]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL24
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL24)
// [2452]
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
// [2461]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL25
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL25)
// [2473]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2479]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2486]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2493]
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
// [2502]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL26
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL26)
// [2514]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2519]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2525]
// goto Ball.bounce.IF_4.CONT
@Ball.bounce$Ball.bounce.IF_4.CONT
0;JMP
// [2527]
// label Ball.bounce.IF_4.F_CASE
(Ball.bounce$Ball.bounce.IF_4.F_CASE)
// [2527]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2531]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2537]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2545]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [2551]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL27
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL27)
// [2563]
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
// [2572]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL28
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL28)
// [2584]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2590]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2597]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2604]
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
// [2613]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL29
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL29)
// [2625]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2630]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2636]
// label Ball.bounce.IF_4.CONT
(Ball.bounce$Ball.bounce.IF_4.CONT)
// [2636]
// label Ball.bounce.IF_3.CONT
(Ball.bounce$Ball.bounce.IF_3.CONT)
// [2636]
// label Ball.bounce.IF_2.CONT
(Ball.bounce$Ball.bounce.IF_2.CONT)
// [2636]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [2642]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2649]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2656]
// call Ball.setDestination 3
@3
D=A
@R13
M=D
@Ball.setDestination
D=A
@R14
M=D
@RET_ADDRESS_CALL30
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL30)
// [2668]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2673]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2677]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [2679]
// function PongGame.new 0
(PongGame.new)
// [2679]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [2685]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL31
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL31)
// [2697]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [2702]
// call Screen.clearScreen 0
@0
D=A
@R13
M=D
@Screen.clearScreen
D=A
@R14
M=D
@RET_ADDRESS_CALL32
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL32)
// [2714]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2719]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [2725]
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
// [2736]
// push constant 230
@230
D=A
@SP
AM=M+1
A=A-1
M=D
// [2742]
// push constant 229
@229
D=A
@SP
AM=M+1
A=A-1
M=D
// [2748]
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
// [2757]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [2763]
// call Bat.new 4
@4
D=A
@R13
M=D
@Bat.new
D=A
@R14
M=D
@RET_ADDRESS_CALL33
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL33)
// [2775]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [2781]
// push constant 253
@253
D=A
@SP
AM=M+1
A=A-1
M=D
// [2787]
// push constant 222
@222
D=A
@SP
AM=M+1
A=A-1
M=D
// [2793]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2797]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [2803]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2807]
// push constant 229
@229
D=A
@SP
AM=M+1
A=A-1
M=D
// [2813]
// call Ball.new 6
@6
D=A
@R13
M=D
@Ball.new
D=A
@R14
M=D
@RET_ADDRESS_CALL34
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL34)
// [2825]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [2831]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2838]
// push constant 400
@400
D=A
@SP
AM=M+1
A=A-1
M=D
// [2844]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2848]
// call Ball.setDestination 3
@3
D=A
@R13
M=D
@Ball.setDestination
D=A
@R14
M=D
@RET_ADDRESS_CALL35
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL35)
// [2860]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2865]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2869]
// push constant 238
@238
D=A
@SP
AM=M+1
A=A-1
M=D
// [2875]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [2881]
// push constant 240
@240
D=A
@SP
AM=M+1
A=A-1
M=D
// [2887]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL36
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL36)
// [2899]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2904]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [2910]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2914]
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@RET_ADDRESS_CALL37
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL37)
// [2926]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2931]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [2937]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL38
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL38)
// [2949]
// push constant 83
@83
D=A
@SP
AM=M+1
A=A-1
M=D
// [2955]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL39
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL39)
// [2967]
// push constant 99
@99
D=A
@SP
AM=M+1
A=A-1
M=D
// [2973]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL40
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL40)
// [2985]
// push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// [2991]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL41
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL41)
// [3003]
// push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// [3009]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL42
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL42)
// [3021]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [3027]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL43
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL43)
// [3039]
// push constant 58
@58
D=A
@SP
AM=M+1
A=A-1
M=D
// [3045]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL44
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL44)
// [3057]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [3063]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL45
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL45)
// [3075]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [3081]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL46
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL46)
// [3093]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL47
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL47)
// [3105]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3110]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3114]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [3122]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3126]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [3135]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3139]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [3146]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3150]
// pop this 5
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [3160]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3166]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3168]
// function PongGame.dispose 0
(PongGame.dispose)
// [3168]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3175]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [3180]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3187]
// call Bat.dispose 1
@1
D=A
@R13
M=D
@Bat.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL48
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL48)
// [3199]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3204]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [3211]
// call Ball.dispose 1
@1
D=A
@R13
M=D
@Ball.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL49
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL49)
// [3223]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3228]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3234]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL50
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL50)
// [3246]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3251]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3255]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3257]
// function PongGame.newInstance 0
(PongGame.newInstance)
// [3257]
// call PongGame.new 0
@0
D=A
@R13
M=D
@PongGame.new
D=A
@R14
M=D
@RET_ADDRESS_CALL51
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL51)
// [3269]
// pop static PongGame.0
@SP
AM=M-1
D=M
@PongGame.0
M=D
// [3274]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3278]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3280]
// function PongGame.getInstance 0
(PongGame.getInstance)
// [3280]
// push static PongGame.0
@PongGame.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [3286]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3288]
// function PongGame.run 1
(PongGame.run)
@SP
AM=M+1
A=A-1
M=0
// [3292]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3299]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [3304]
// label PongGame.run.WHILE_0.START
(PongGame.run$PongGame.run.WHILE_0.START)
// [3304]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [3313]
// not
@SP
A=M-1
M=!M
// [3316]
// not
@SP
A=M-1
M=!M
// [3319]
// if-goto PongGame.run.WHILE_0.CONT
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.WHILE_0.CONT
D;JNE
// [3324]
// label PongGame.run.WHILE_1.START
(PongGame.run$PongGame.run.WHILE_1.START)
// [3324]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3331]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3335]
// eq
@RET_ADDRESS_EQ6
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ6)
// [3339]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [3348]
// not
@SP
A=M-1
M=!M
// [3351]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [3356]
// not
@SP
A=M-1
M=!M
// [3359]
// if-goto PongGame.run.WHILE_1.CONT
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.WHILE_1.CONT
D;JNE
// [3364]
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@RET_ADDRESS_CALL52
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL52)
// [3376]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [3382]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3389]
// call Bat.move 1
@1
D=A
@R13
M=D
@Bat.move
D=A
@R14
M=D
@RET_ADDRESS_CALL53
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL53)
// [3401]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3406]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3412]
// call PongGame.moveBall 1
@1
D=A
@R13
M=D
@PongGame.moveBall
D=A
@R14
M=D
@RET_ADDRESS_CALL54
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL54)
// [3424]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3429]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [3435]
// call Sys.wait 1
@1
D=A
@R13
M=D
@Sys.wait
D=A
@R14
M=D
@RET_ADDRESS_CALL55
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL55)
// [3447]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3452]
// goto PongGame.run.WHILE_1.START
@PongGame.run$PongGame.run.WHILE_1.START
0;JMP
// [3454]
// label PongGame.run.WHILE_1.CONT
(PongGame.run$PongGame.run.WHILE_1.CONT)
// [3454]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3461]
// push constant 130
@130
D=A
@SP
AM=M+1
A=A-1
M=D
// [3467]
// eq
@RET_ADDRESS_EQ7
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ7)
// [3471]
// not
@SP
A=M-1
M=!M
// [3474]
// if-goto PongGame.run.IF_0.F_CASE
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.IF_0.F_CASE
D;JNE
// [3479]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3486]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [3490]
// call Bat.setDirection 2
@2
D=A
@R13
M=D
@Bat.setDirection
D=A
@R14
M=D
@RET_ADDRESS_CALL56
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL56)
// [3502]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3507]
// goto PongGame.run.IF_0.CONT
@PongGame.run$PongGame.run.IF_0.CONT
0;JMP
// [3509]
// label PongGame.run.IF_0.F_CASE
(PongGame.run$PongGame.run.IF_0.F_CASE)
// [3509]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3516]
// push constant 132
@132
D=A
@SP
AM=M+1
A=A-1
M=D
// [3522]
// eq
@RET_ADDRESS_EQ8
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ8)
// [3526]
// not
@SP
A=M-1
M=!M
// [3529]
// if-goto PongGame.run.IF_1.F_CASE
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.IF_1.F_CASE
D;JNE
// [3534]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3541]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [3547]
// call Bat.setDirection 2
@2
D=A
@R13
M=D
@Bat.setDirection
D=A
@R14
M=D
@RET_ADDRESS_CALL57
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL57)
// [3559]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3564]
// goto PongGame.run.IF_1.CONT
@PongGame.run$PongGame.run.IF_1.CONT
0;JMP
// [3566]
// label PongGame.run.IF_1.F_CASE
(PongGame.run$PongGame.run.IF_1.F_CASE)
// [3566]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3573]
// push constant 140
@140
D=A
@SP
AM=M+1
A=A-1
M=D
// [3579]
// eq
@RET_ADDRESS_EQ9
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ9)
// [3583]
// not
@SP
A=M-1
M=!M
// [3586]
// if-goto PongGame.run.IF_2.F_CASE
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.IF_2.F_CASE
D;JNE
// [3591]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [3595]
// neg
@SP
A=M-1
M=-M
// [3598]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [3606]
// goto PongGame.run.IF_2.CONT
@PongGame.run$PongGame.run.IF_2.CONT
0;JMP
// [3608]
// label PongGame.run.IF_2.F_CASE
(PongGame.run$PongGame.run.IF_2.F_CASE)
// [3608]
// label PongGame.run.IF_2.CONT
(PongGame.run$PongGame.run.IF_2.CONT)
// [3608]
// label PongGame.run.IF_1.CONT
(PongGame.run$PongGame.run.IF_1.CONT)
// [3608]
// label PongGame.run.IF_0.CONT
(PongGame.run$PongGame.run.IF_0.CONT)
// [3608]
// label PongGame.run.WHILE_2.START
(PongGame.run$PongGame.run.WHILE_2.START)
// [3608]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3615]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3619]
// eq
@RET_ADDRESS_EQ10
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ10)
// [3623]
// not
@SP
A=M-1
M=!M
// [3626]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [3635]
// not
@SP
A=M-1
M=!M
// [3638]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [3643]
// not
@SP
A=M-1
M=!M
// [3646]
// if-goto PongGame.run.WHILE_2.CONT
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.WHILE_2.CONT
D;JNE
// [3651]
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@RET_ADDRESS_CALL58
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL58)
// [3663]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [3669]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3676]
// call Bat.move 1
@1
D=A
@R13
M=D
@Bat.move
D=A
@R14
M=D
@RET_ADDRESS_CALL59
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL59)
// [3688]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3693]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3699]
// call PongGame.moveBall 1
@1
D=A
@R13
M=D
@PongGame.moveBall
D=A
@R14
M=D
@RET_ADDRESS_CALL60
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL60)
// [3711]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3716]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [3722]
// call Sys.wait 1
@1
D=A
@R13
M=D
@Sys.wait
D=A
@R14
M=D
@RET_ADDRESS_CALL61
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL61)
// [3734]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3739]
// goto PongGame.run.WHILE_2.START
@PongGame.run$PongGame.run.WHILE_2.START
0;JMP
// [3741]
// label PongGame.run.WHILE_2.CONT
(PongGame.run$PongGame.run.WHILE_2.CONT)
// [3741]
// goto PongGame.run.WHILE_0.START
@PongGame.run$PongGame.run.WHILE_0.START
0;JMP
// [3743]
// label PongGame.run.WHILE_0.CONT
(PongGame.run$PongGame.run.WHILE_0.CONT)
// [3743]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [3752]
// not
@SP
A=M-1
M=!M
// [3755]
// if-goto PongGame.run.IF_3.F_CASE
@SP
AM=M-1
D=M
@PongGame.run$PongGame.run.IF_3.F_CASE
D;JNE
// [3760]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [3766]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [3772]
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@RET_ADDRESS_CALL62
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL62)
// [3784]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3789]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [3795]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL63
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL63)
// [3807]
// push constant 71
@71
D=A
@SP
AM=M+1
A=A-1
M=D
// [3813]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL64
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL64)
// [3825]
// push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// [3831]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL65
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL65)
// [3843]
// push constant 109
@109
D=A
@SP
AM=M+1
A=A-1
M=D
// [3849]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL66
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL66)
// [3861]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [3867]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL67
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL67)
// [3879]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [3885]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL68
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL68)
// [3897]
// push constant 79
@79
D=A
@SP
AM=M+1
A=A-1
M=D
// [3903]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL69
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL69)
// [3915]
// push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// [3921]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL70
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL70)
// [3933]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [3939]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL71
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL71)
// [3951]
// push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// [3957]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL72
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL72)
// [3969]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL73
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL73)
// [3981]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3986]
// goto PongGame.run.IF_3.CONT
@PongGame.run$PongGame.run.IF_3.CONT
0;JMP
// [3988]
// label PongGame.run.IF_3.F_CASE
(PongGame.run$PongGame.run.IF_3.F_CASE)
// [3988]
// label PongGame.run.IF_3.CONT
(PongGame.run$PongGame.run.IF_3.CONT)
// [3988]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3992]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3994]
// function PongGame.moveBall 5
(PongGame.moveBall)
@5
D=A
(LOOP_PongGame.moveBall)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_PongGame.moveBall
D;JGT

// [4003]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4010]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4015]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4022]
// call Ball.move 1
@1
D=A
@R13
M=D
@Ball.move
D=A
@R14
M=D
@RET_ADDRESS_CALL74
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL74)
// [4034]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [4041]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4049]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4053]
// gt
@RET_ADDRESS_GT2
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT2)
// [4057]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4065]
// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [4074]
// eq
@RET_ADDRESS_EQ11
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ11)
// [4078]
// not
@SP
A=M-1
M=!M
// [4081]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [4086]
// not
@SP
A=M-1
M=!M
// [4089]
// if-goto PongGame.moveBall.IF_0.F_CASE
@SP
AM=M-1
D=M
@PongGame.moveBall$PongGame.moveBall.IF_0.F_CASE
D;JNE
// [4094]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4102]
// pop this 5
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [4112]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4116]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [4122]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4129]
// call Bat.getLeft 1
@1
D=A
@R13
M=D
@Bat.getLeft
D=A
@R14
M=D
@RET_ADDRESS_CALL75
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL75)
// [4141]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [4147]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4154]
// call Bat.getRight 1
@1
D=A
@R13
M=D
@Bat.getRight
D=A
@R14
M=D
@RET_ADDRESS_CALL76
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL76)
// [4166]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [4173]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4180]
// call Ball.getLeft 1
@1
D=A
@R13
M=D
@Ball.getLeft
D=A
@R14
M=D
@RET_ADDRESS_CALL77
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL77)
// [4192]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [4200]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4207]
// call Ball.getRight 1
@1
D=A
@R13
M=D
@Ball.getRight
D=A
@R14
M=D
@RET_ADDRESS_CALL78
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL78)
// [4219]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [4228]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4236]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [4242]
// eq
@RET_ADDRESS_EQ12
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ12)
// [4246]
// not
@SP
A=M-1
M=!M
// [4249]
// if-goto PongGame.moveBall.IF_1.F_CASE
@SP
AM=M-1
D=M
@PongGame.moveBall$PongGame.moveBall.IF_1.F_CASE
D;JNE
// [4254]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4261]
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
// [4270]
// gt
@RET_ADDRESS_GT3
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT3)
// [4274]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4282]
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
// [4291]
// lt
@RET_ADDRESS_LT10
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT10)
// [4295]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [4300]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [4308]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [4317]
// not
@SP
A=M-1
M=!M
// [4320]
// not
@SP
A=M-1
M=!M
// [4323]
// if-goto PongGame.moveBall.IF_2.F_CASE
@SP
AM=M-1
D=M
@PongGame.moveBall$PongGame.moveBall.IF_2.F_CASE
D;JNE
// [4328]
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
// [4337]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4344]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [4350]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4355]
// lt
@RET_ADDRESS_LT11
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT11)
// [4359]
// not
@SP
A=M-1
M=!M
// [4362]
// if-goto PongGame.moveBall.IF_3.F_CASE
@SP
AM=M-1
D=M
@PongGame.moveBall$PongGame.moveBall.IF_3.F_CASE
D;JNE
// [4367]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4371]
// neg
@SP
A=M-1
M=-M
// [4374]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [4380]
// goto PongGame.moveBall.IF_3.CONT
@PongGame.moveBall$PongGame.moveBall.IF_3.CONT
0;JMP
// [4382]
// label PongGame.moveBall.IF_3.F_CASE
(PongGame.moveBall$PongGame.moveBall.IF_3.F_CASE)
// [4382]
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
// [4391]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4399]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [4405]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [4410]
// gt
@RET_ADDRESS_GT4
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT4)
// [4414]
// not
@SP
A=M-1
M=!M
// [4417]
// if-goto PongGame.moveBall.IF_4.F_CASE
@SP
AM=M-1
D=M
@PongGame.moveBall$PongGame.moveBall.IF_4.F_CASE
D;JNE
// [4422]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4426]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [4432]
// goto PongGame.moveBall.IF_4.CONT
@PongGame.moveBall$PongGame.moveBall.IF_4.CONT
0;JMP
// [4434]
// label PongGame.moveBall.IF_4.F_CASE
(PongGame.moveBall$PongGame.moveBall.IF_4.F_CASE)
// [4434]
// label PongGame.moveBall.IF_4.CONT
(PongGame.moveBall$PongGame.moveBall.IF_4.CONT)
// [4434]
// label PongGame.moveBall.IF_3.CONT
(PongGame.moveBall$PongGame.moveBall.IF_3.CONT)
// [4434]
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
// [4443]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [4449]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [4454]
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
// [4465]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4472]
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
// [4481]
// call Bat.setWidth 2
@2
D=A
@R13
M=D
@Bat.setWidth
D=A
@R14
M=D
@RET_ADDRESS_CALL79
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL79)
// [4493]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4498]
// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [4507]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4511]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4516]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [4525]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [4531]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [4537]
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@RET_ADDRESS_CALL80
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL80)
// [4549]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4554]
// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [4563]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL81
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL81)
// [4575]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4580]
// goto PongGame.moveBall.IF_2.CONT
@PongGame.moveBall$PongGame.moveBall.IF_2.CONT
0;JMP
// [4582]
// label PongGame.moveBall.IF_2.F_CASE
(PongGame.moveBall$PongGame.moveBall.IF_2.F_CASE)
// [4582]
// label PongGame.moveBall.IF_2.CONT
(PongGame.moveBall$PongGame.moveBall.IF_2.CONT)
// [4582]
// goto PongGame.moveBall.IF_1.CONT
@PongGame.moveBall$PongGame.moveBall.IF_1.CONT
0;JMP
// [4584]
// label PongGame.moveBall.IF_1.F_CASE
(PongGame.moveBall$PongGame.moveBall.IF_1.F_CASE)
// [4584]
// label PongGame.moveBall.IF_1.CONT
(PongGame.moveBall$PongGame.moveBall.IF_1.CONT)
// [4584]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4591]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4598]
// call Ball.bounce 2
@2
D=A
@R13
M=D
@Ball.bounce
D=A
@R14
M=D
@RET_ADDRESS_CALL82
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL82)
// [4610]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4615]
// goto PongGame.moveBall.IF_0.CONT
@PongGame.moveBall$PongGame.moveBall.IF_0.CONT
0;JMP
// [4617]
// label PongGame.moveBall.IF_0.F_CASE
(PongGame.moveBall$PongGame.moveBall.IF_0.F_CASE)
// [4617]
// label PongGame.moveBall.IF_0.CONT
(PongGame.moveBall$PongGame.moveBall.IF_0.CONT)
// [4617]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4621]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4623]
// function String.new 0
(String.new)
// [4623]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [4629]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL83
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL83)
// [4641]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4646]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4653]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4657]
// lt
@RET_ADDRESS_LT12
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT12)
// [4661]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.new$IF_TRUE0
D;JNE
// [4666]
// goto IF_FALSE0
@String.new$IF_FALSE0
0;JMP
// [4668]
// label IF_TRUE0
(String.new$IF_TRUE0)
// [4668]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [4674]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL84
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL84)
// [4686]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4691]
// label IF_FALSE0
(String.new$IF_FALSE0)
// [4691]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4698]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4702]
// gt
@RET_ADDRESS_GT5
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT5)
// [4706]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@String.new$IF_TRUE1
D;JNE
// [4711]
// goto IF_FALSE1
@String.new$IF_FALSE1
0;JMP
// [4713]
// label IF_TRUE1
(String.new$IF_TRUE1)
// [4713]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4720]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL85
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL85)
// [4732]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [4738]
// label IF_FALSE1
(String.new$IF_FALSE1)
// [4738]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4745]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [4751]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4755]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [4762]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [4768]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4770]
// function String.dispose 0
(String.dispose)
// [4770]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4777]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4782]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4789]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4793]
// gt
@RET_ADDRESS_GT6
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT6)
// [4797]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.dispose$IF_TRUE0
D;JNE
// [4802]
// goto IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP
// [4804]
// label IF_TRUE0
(String.dispose$IF_TRUE0)
// [4804]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4811]
// call Array.dispose 1
@1
D=A
@R13
M=D
@Array.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL86
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL86)
// [4823]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4828]
// label IF_FALSE0
(String.dispose$IF_FALSE0)
// [4828]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [4834]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL87
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL87)
// [4846]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4851]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4855]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4857]
// function String.length 0
(String.length)
// [4857]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4864]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4869]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4877]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4879]
// function String.charAt 0
(String.charAt)
// [4879]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4886]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4891]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4898]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4902]
// lt
@RET_ADDRESS_LT13
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT13)
// [4906]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4913]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4921]
// gt
@RET_ADDRESS_GT7
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT7)
// [4925]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [4930]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4937]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4945]
// eq
@RET_ADDRESS_EQ13
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ13)
// [4949]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [4954]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.charAt$IF_TRUE0
D;JNE
// [4959]
// goto IF_FALSE0
@String.charAt$IF_FALSE0
0;JMP
// [4961]
// label IF_TRUE0
(String.charAt$IF_TRUE0)
// [4961]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [4967]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL88
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL88)
// [4979]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4984]
// label IF_FALSE0
(String.charAt$IF_FALSE0)
// [4984]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4991]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4998]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5003]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5008]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5015]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5017]
// function String.setCharAt 0
(String.setCharAt)
// [5017]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5024]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5029]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5036]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5040]
// lt
@RET_ADDRESS_LT14
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT14)
// [5044]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5051]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5059]
// gt
@RET_ADDRESS_GT8
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT8)
// [5063]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [5068]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5075]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5083]
// eq
@RET_ADDRESS_EQ14
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ14)
// [5087]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [5092]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.setCharAt$IF_TRUE0
D;JNE
// [5097]
// goto IF_FALSE0
@String.setCharAt$IF_FALSE0
0;JMP
// [5099]
// label IF_TRUE0
(String.setCharAt$IF_TRUE0)
// [5099]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [5105]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL89
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL89)
// [5117]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5122]
// label IF_FALSE0
(String.setCharAt$IF_FALSE0)
// [5122]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5129]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5136]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5141]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5149]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5154]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5159]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [5165]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [5171]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5175]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5177]
// function String.appendChar 0
(String.appendChar)
// [5177]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5184]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5189]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5197]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5204]
// eq
@RET_ADDRESS_EQ15
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ15)
// [5208]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.appendChar$IF_TRUE0
D;JNE
// [5213]
// goto IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP
// [5215]
// label IF_TRUE0
(String.appendChar$IF_TRUE0)
// [5215]
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// [5221]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL90
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL90)
// [5233]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5238]
// label IF_FALSE0
(String.appendChar$IF_FALSE0)
// [5238]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5246]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5253]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5258]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5265]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5270]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5275]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [5281]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [5287]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5295]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5299]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5304]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [5311]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [5317]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5319]
// function String.eraseLastChar 0
(String.eraseLastChar)
// [5319]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5326]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5331]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5339]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5343]
// eq
@RET_ADDRESS_EQ16
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ16)
// [5347]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.eraseLastChar$IF_TRUE0
D;JNE
// [5352]
// goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP
// [5354]
// label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)
// [5354]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [5360]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL91
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL91)
// [5372]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5377]
// label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)
// [5377]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5385]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5389]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [5394]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [5401]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5405]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5407]
// function String.intValue 5
(String.intValue)
@5
D=A
(LOOP_String.intValue)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_String.intValue
D;JGT

// [5416]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5423]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5428]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5436]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5440]
// eq
@RET_ADDRESS_EQ17
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ17)
// [5444]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.intValue$IF_TRUE0
D;JNE
// [5449]
// goto IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP
// [5451]
// label IF_TRUE0
(String.intValue$IF_TRUE0)
// [5451]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5455]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5457]
// label IF_FALSE0
(String.intValue$IF_FALSE0)
// [5457]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5461]
// not
@SP
A=M-1
M=!M
// [5464]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [5472]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5476]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5483]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5488]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5493]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5500]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [5506]
// eq
@RET_ADDRESS_EQ18
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ18)
// [5510]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@String.intValue$IF_TRUE1
D;JNE
// [5515]
// goto IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP
// [5517]
// label IF_TRUE1
(String.intValue$IF_TRUE1)
// [5517]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5521]
// not
@SP
A=M-1
M=!M
// [5524]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [5533]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5537]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [5543]
// label IF_FALSE1
(String.intValue$IF_FALSE1)
// [5543]
// label WHILE_EXP0
(String.intValue$WHILE_EXP0)
// [5543]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5550]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5558]
// lt
@RET_ADDRESS_LT15
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT15)
// [5562]
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
// [5571]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [5576]
// not
@SP
A=M-1
M=!M
// [5579]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@String.intValue$WHILE_END0
D;JNE
// [5584]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5591]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5598]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5603]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5608]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5615]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [5621]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [5626]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [5633]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5641]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5645]
// lt
@RET_ADDRESS_LT16
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT16)
// [5649]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5657]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [5663]
// gt
@RET_ADDRESS_GT9
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT9)
// [5667]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [5672]
// not
@SP
A=M-1
M=!M
// [5675]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [5683]
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
// [5692]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@String.intValue$IF_TRUE2
D;JNE
// [5697]
// goto IF_FALSE2
@String.intValue$IF_FALSE2
0;JMP
// [5699]
// label IF_TRUE2
(String.intValue$IF_TRUE2)
// [5699]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5706]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [5712]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL92
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL92)
// [5724]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5732]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5737]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [5743]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5750]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5754]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5759]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [5765]
// label IF_FALSE2
(String.intValue$IF_FALSE2)
// [5765]
// goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP
// [5767]
// label WHILE_END0
(String.intValue$WHILE_END0)
// [5767]
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
// [5776]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@String.intValue$IF_TRUE3
D;JNE
// [5781]
// goto IF_FALSE3
@String.intValue$IF_FALSE3
0;JMP
// [5783]
// label IF_TRUE3
(String.intValue$IF_TRUE3)
// [5783]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5790]
// neg
@SP
A=M-1
M=-M
// [5793]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [5799]
// label IF_FALSE3
(String.intValue$IF_FALSE3)
// [5799]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5806]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5808]
// function String.setInt 4
(String.setInt)
@4
D=A
(LOOP_String.setInt)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_String.setInt
D;JGT

// [5817]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5824]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5829]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5836]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5840]
// eq
@RET_ADDRESS_EQ19
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ19)
// [5844]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.setInt$IF_TRUE0
D;JNE
// [5849]
// goto IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP
// [5851]
// label IF_TRUE0
(String.setInt$IF_TRUE0)
// [5851]
// push constant 19
@19
D=A
@SP
AM=M+1
A=A-1
M=D
// [5857]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL93
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL93)
// [5869]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5874]
// label IF_FALSE0
(String.setInt$IF_FALSE0)
// [5874]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [5880]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL94
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL94)
// [5892]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [5899]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5906]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5910]
// lt
@RET_ADDRESS_LT17
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT17)
// [5914]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@String.setInt$IF_TRUE1
D;JNE
// [5919]
// goto IF_FALSE1
@String.setInt$IF_FALSE1
0;JMP
// [5921]
// label IF_TRUE1
(String.setInt$IF_TRUE1)
// [5921]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5925]
// not
@SP
A=M-1
M=!M
// [5928]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [5936]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5943]
// neg
@SP
A=M-1
M=-M
// [5946]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [5952]
// label IF_FALSE1
(String.setInt$IF_FALSE1)
// [5952]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5959]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [5965]
// label WHILE_EXP0
(String.setInt$WHILE_EXP0)
// [5965]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5972]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5976]
// gt
@RET_ADDRESS_GT10
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT10)
// [5980]
// not
@SP
A=M-1
M=!M
// [5983]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@String.setInt$WHILE_END0
D;JNE
// [5988]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5995]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [6001]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL95
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL95)
// [6013]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [6019]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6026]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6034]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6039]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [6045]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6052]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6059]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [6065]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL96
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL96)
// [6077]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6082]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6087]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6092]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6097]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6103]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6109]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6116]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6120]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6125]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6131]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6138]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [6144]
// goto WHILE_EXP0
@String.setInt$WHILE_EXP0
0;JMP
// [6146]
// label WHILE_END0
(String.setInt$WHILE_END0)
// [6146]
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
// [6155]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@String.setInt$IF_TRUE2
D;JNE
// [6160]
// goto IF_FALSE2
@String.setInt$IF_FALSE2
0;JMP
// [6162]
// label IF_TRUE2
(String.setInt$IF_TRUE2)
// [6162]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6169]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6177]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6182]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [6188]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6193]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6198]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6204]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6210]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6217]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6221]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6226]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6232]
// label IF_FALSE2
(String.setInt$IF_FALSE2)
// [6232]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6239]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6246]
// lt
@RET_ADDRESS_LT18
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT18)
// [6250]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@String.setInt$IF_TRUE3
D;JNE
// [6255]
// goto IF_FALSE3
@String.setInt$IF_FALSE3
0;JMP
// [6257]
// label IF_TRUE3
(String.setInt$IF_TRUE3)
// [6257]
// push constant 19
@19
D=A
@SP
AM=M+1
A=A-1
M=D
// [6263]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL97
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL97)
// [6275]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6280]
// label IF_FALSE3
(String.setInt$IF_FALSE3)
// [6280]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6287]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6291]
// eq
@RET_ADDRESS_EQ20
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ20)
// [6295]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@String.setInt$IF_TRUE4
D;JNE
// [6300]
// goto IF_FALSE4
@String.setInt$IF_FALSE4
0;JMP
// [6302]
// label IF_TRUE4
(String.setInt$IF_TRUE4)
// [6302]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6306]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6313]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6318]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [6324]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6329]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6334]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6340]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6346]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6350]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [6357]
// goto IF_END4
@String.setInt$IF_END4
0;JMP
// [6359]
// label IF_FALSE4
(String.setInt$IF_FALSE4)
// [6359]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6363]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [6370]
// label WHILE_EXP1
(String.setInt$WHILE_EXP1)
// [6370]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6378]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6385]
// lt
@RET_ADDRESS_LT19
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT19)
// [6389]
// not
@SP
A=M-1
M=!M
// [6392]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@String.setInt$WHILE_END1
D;JNE
// [6397]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6405]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6412]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6417]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6424]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6432]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6436]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6441]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6446]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6454]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6459]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6464]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6471]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6476]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6481]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6487]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6493]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6501]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6505]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6510]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [6517]
// goto WHILE_EXP1
@String.setInt$WHILE_EXP1
0;JMP
// [6519]
// label WHILE_END1
(String.setInt$WHILE_END1)
// [6519]
// label IF_END4
(String.setInt$IF_END4)
// [6519]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6527]
// call Array.dispose 1
@1
D=A
@R13
M=D
@Array.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL98
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL98)
// [6539]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6544]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6548]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6550]
// function String.newLine 0
(String.newLine)
// [6550]
// push constant 128
@128
D=A
@SP
AM=M+1
A=A-1
M=D
// [6556]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6558]
// function String.backSpace 0
(String.backSpace)
// [6558]
// push constant 129
@129
D=A
@SP
AM=M+1
A=A-1
M=D
// [6564]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6566]
// function String.doubleQuote 0
(String.doubleQuote)
// [6566]
// push constant 34
@34
D=A
@SP
AM=M+1
A=A-1
M=D
// [6572]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6574]
// function Math.init 1
(Math.init)
@SP
AM=M+1
A=A-1
M=0
// [6578]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [6584]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL99
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL99)
// [6596]
// pop static Math.1
@SP
AM=M-1
D=M
@Math.1
M=D
// [6601]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [6607]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL100
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL100)
// [6619]
// pop static Math.0
@SP
AM=M-1
D=M
@Math.0
M=D
// [6624]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6628]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6634]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6639]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6643]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6648]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6653]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6659]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6665]
// label WHILE_EXP0
(Math.init$WHILE_EXP0)
// [6665]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6672]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [6678]
// lt
@RET_ADDRESS_LT20
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT20)
// [6682]
// not
@SP
A=M-1
M=!M
// [6685]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.init$WHILE_END0
D;JNE
// [6690]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6697]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6701]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6706]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6712]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6719]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6725]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6730]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6737]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6741]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6746]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6752]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6757]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6762]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6769]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6776]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6780]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6785]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6791]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6796]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6801]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6808]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6813]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6818]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6823]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6829]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6835]
// goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP
// [6837]
// label WHILE_END0
(Math.init$WHILE_END0)
// [6837]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6841]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6843]
// function Math.abs 0
(Math.abs)
// [6843]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6850]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6854]
// lt
@RET_ADDRESS_LT21
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT21)
// [6858]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.abs$IF_TRUE0
D;JNE
// [6863]
// goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP
// [6865]
// label IF_TRUE0
(Math.abs$IF_TRUE0)
// [6865]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6872]
// neg
@SP
A=M-1
M=-M
// [6875]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [6881]
// label IF_FALSE0
(Math.abs$IF_FALSE0)
// [6881]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6888]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6890]
// function Math.multiply 5
(Math.multiply)
@5
D=A
(LOOP_Math.multiply)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Math.multiply
D;JGT

// [6899]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6906]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6910]
// lt
@RET_ADDRESS_LT22
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT22)
// [6914]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6921]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6925]
// gt
@RET_ADDRESS_GT11
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT11)
// [6929]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [6934]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6941]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6945]
// gt
@RET_ADDRESS_GT12
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT12)
// [6949]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6956]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6960]
// lt
@RET_ADDRESS_LT23
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT23)
// [6964]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [6969]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [6974]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [6983]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6990]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL101
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL101)
// [7002]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [7008]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7015]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL102
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL102)
// [7027]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [7033]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7040]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7047]
// lt
@RET_ADDRESS_LT24
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT24)
// [7051]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE0
D;JNE
// [7056]
// goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP
// [7058]
// label IF_TRUE0
(Math.multiply$IF_TRUE0)
// [7058]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7065]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [7071]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7078]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [7084]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7091]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [7097]
// label IF_FALSE0
(Math.multiply$IF_FALSE0)
// [7097]
// label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
// [7097]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7105]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7109]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7114]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7121]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7125]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7130]
// lt
@RET_ADDRESS_LT25
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT25)
// [7134]
// not
@SP
A=M-1
M=!M
// [7137]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.multiply$WHILE_END0
D;JNE
// [7142]
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
// [7151]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [7157]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7162]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7167]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7174]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7181]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [7186]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7190]
// eq
@RET_ADDRESS_EQ21
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ21)
// [7194]
// not
@SP
A=M-1
M=!M
// [7197]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE1
D;JNE
// [7202]
// goto IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP
// [7204]
// label IF_TRUE1
(Math.multiply$IF_TRUE1)
// [7204]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7211]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7218]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7223]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7229]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7237]
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
// [7246]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [7252]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7257]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7262]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7269]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7274]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [7281]
// label IF_FALSE1
(Math.multiply$IF_FALSE1)
// [7281]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7288]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7295]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7300]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [7306]
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
// [7315]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7319]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7324]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [7332]
// goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP
// [7334]
// label WHILE_END0
(Math.multiply$WHILE_END0)
// [7334]
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
// [7343]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE2
D;JNE
// [7348]
// goto IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP
// [7350]
// label IF_TRUE2
(Math.multiply$IF_TRUE2)
// [7350]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7357]
// neg
@SP
A=M-1
M=-M
// [7360]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7366]
// label IF_FALSE2
(Math.multiply$IF_FALSE2)
// [7366]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7373]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7375]
// function Math.divide 4
(Math.divide)
@4
D=A
(LOOP_Math.divide)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Math.divide
D;JGT

// [7384]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7391]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7395]
// eq
@RET_ADDRESS_EQ22
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ22)
// [7399]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE0
D;JNE
// [7404]
// goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP
// [7406]
// label IF_TRUE0
(Math.divide$IF_TRUE0)
// [7406]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [7412]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL103
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL103)
// [7424]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7429]
// label IF_FALSE0
(Math.divide$IF_FALSE0)
// [7429]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7436]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7440]
// lt
@RET_ADDRESS_LT26
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT26)
// [7444]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7451]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7455]
// gt
@RET_ADDRESS_GT13
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT13)
// [7459]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [7464]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7471]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7475]
// gt
@RET_ADDRESS_GT14
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT14)
// [7479]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7486]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7490]
// lt
@RET_ADDRESS_LT27
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT27)
// [7494]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [7499]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [7504]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [7511]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7515]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7521]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7526]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7533]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL104
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL104)
// [7545]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7550]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7555]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [7561]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [7567]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7574]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL105
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL105)
// [7586]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [7592]
// label WHILE_EXP0
(Math.divide$WHILE_EXP0)
// [7592]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7599]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [7605]
// lt
@RET_ADDRESS_LT28
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT28)
// [7609]
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
// [7618]
// not
@SP
A=M-1
M=!M
// [7621]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [7626]
// not
@SP
A=M-1
M=!M
// [7629]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.divide$WHILE_END0
D;JNE
// [7634]
// push constant 32767
@32767
D=A
@SP
AM=M+1
A=A-1
M=D
// [7640]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7647]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7653]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7658]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7663]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7670]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7674]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7679]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7684]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7691]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7697]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7702]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7707]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7714]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7718]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7723]
// lt
@RET_ADDRESS_LT29
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT29)
// [7727]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [7735]
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
// [7744]
// not
@SP
A=M-1
M=!M
// [7747]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE1
D;JNE
// [7752]
// goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP
// [7754]
// label IF_TRUE1
(Math.divide$IF_TRUE1)
// [7754]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7761]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7765]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7770]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7776]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7781]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7788]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7794]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7799]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7804]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7811]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7818]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7824]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7829]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7834]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7841]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7846]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7851]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7856]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [7862]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [7868]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7875]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7879]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7884]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7890]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7895]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7900]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7907]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7911]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7916]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7923]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7927]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7932]
// gt
@RET_ADDRESS_GT15
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT15)
// [7936]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [7944]
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
// [7953]
// not
@SP
A=M-1
M=!M
// [7956]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE2
D;JNE
// [7961]
// goto IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP
// [7963]
// label IF_TRUE2
(Math.divide$IF_TRUE2)
// [7963]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7970]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7974]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7979]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7985]
// label IF_FALSE2
(Math.divide$IF_FALSE2)
// [7985]
// label IF_FALSE1
(Math.divide$IF_FALSE1)
// [7985]
// goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP
// [7987]
// label WHILE_END0
(Math.divide$WHILE_END0)
// [7987]
// label WHILE_EXP1
(Math.divide$WHILE_EXP1)
// [7987]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7994]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7998]
// neg
@SP
A=M-1
M=-M
// [8001]
// gt
@RET_ADDRESS_GT16
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT16)
// [8005]
// not
@SP
A=M-1
M=!M
// [8008]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Math.divide$WHILE_END1
D;JNE
// [8013]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8020]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8026]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8031]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8036]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8043]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8047]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [8052]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8059]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8063]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [8068]
// gt
@RET_ADDRESS_GT17
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT17)
// [8072]
// not
@SP
A=M-1
M=!M
// [8075]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE3
D;JNE
// [8080]
// goto IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP
// [8082]
// label IF_TRUE3
(Math.divide$IF_TRUE3)
// [8082]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8089]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8096]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [8102]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8107]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8112]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8119]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8124]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [8130]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8137]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8144]
// push static Math.1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8150]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8155]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8160]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8167]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [8172]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [8178]
// label IF_FALSE3
(Math.divide$IF_FALSE3)
// [8178]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8185]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8189]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [8194]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8200]
// goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP
// [8202]
// label WHILE_END1
(Math.divide$WHILE_END1)
// [8202]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8210]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE4
D;JNE
// [8215]
// goto IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP
// [8217]
// label IF_TRUE4
(Math.divide$IF_TRUE4)
// [8217]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8224]
// neg
@SP
A=M-1
M=-M
// [8227]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [8233]
// label IF_FALSE4
(Math.divide$IF_FALSE4)
// [8233]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8240]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8242]
// function Math.sqrt 4
(Math.sqrt)
@4
D=A
(LOOP_Math.sqrt)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Math.sqrt
D;JGT

// [8251]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8258]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8262]
// lt
@RET_ADDRESS_LT30
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT30)
// [8266]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.sqrt$IF_TRUE0
D;JNE
// [8271]
// goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP
// [8273]
// label IF_TRUE0
(Math.sqrt$IF_TRUE0)
// [8273]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [8279]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL106
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL106)
// [8291]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8296]
// label IF_FALSE0
(Math.sqrt$IF_FALSE0)
// [8296]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [8302]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8308]
// label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)
// [8308]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8315]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8319]
// neg
@SP
A=M-1
M=-M
// [8322]
// gt
@RET_ADDRESS_GT18
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT18)
// [8326]
// not
@SP
A=M-1
M=!M
// [8329]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.sqrt$WHILE_END0
D;JNE
// [8334]
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
// [8343]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8350]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [8356]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8361]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8366]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8373]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8378]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [8384]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8391]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8398]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL107
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL107)
// [8410]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [8417]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8425]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8432]
// gt
@RET_ADDRESS_GT19
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT19)
// [8436]
// not
@SP
A=M-1
M=!M
// [8439]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8447]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8451]
// lt
@RET_ADDRESS_LT31
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT31)
// [8455]
// not
@SP
A=M-1
M=!M
// [8458]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [8463]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.sqrt$IF_TRUE1
D;JNE
// [8468]
// goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP
// [8470]
// label IF_TRUE1
(Math.sqrt$IF_TRUE1)
// [8470]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8477]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [8485]
// label IF_FALSE1
(Math.sqrt$IF_FALSE1)
// [8485]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8492]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8496]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [8501]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8507]
// goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP
// [8509]
// label WHILE_END0
(Math.sqrt$WHILE_END0)
// [8509]
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
// [8518]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8520]
// function Math.max 0
(Math.max)
// [8520]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8527]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8534]
// gt
@RET_ADDRESS_GT20
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT20)
// [8538]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.max$IF_TRUE0
D;JNE
// [8543]
// goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP
// [8545]
// label IF_TRUE0
(Math.max$IF_TRUE0)
// [8545]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8552]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [8558]
// label IF_FALSE0
(Math.max$IF_FALSE0)
// [8558]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8565]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8567]
// function Math.min 0
(Math.min)
// [8567]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8574]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8581]
// lt
@RET_ADDRESS_LT32
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT32)
// [8585]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.min$IF_TRUE0
D;JNE
// [8590]
// goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP
// [8592]
// label IF_TRUE0
(Math.min$IF_TRUE0)
// [8592]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8599]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [8605]
// label IF_FALSE0
(Math.min$IF_FALSE0)
// [8605]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8612]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8614]
// function Array.new 0
(Array.new)
// [8614]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8621]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8625]
// gt
@RET_ADDRESS_GT21
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT21)
// [8629]
// not
@SP
A=M-1
M=!M
// [8632]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Array.new$IF_TRUE0
D;JNE
// [8637]
// goto IF_FALSE0
@Array.new$IF_FALSE0
0;JMP
// [8639]
// label IF_TRUE0
(Array.new$IF_TRUE0)
// [8639]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [8645]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL108
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL108)
// [8657]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8662]
// label IF_FALSE0
(Array.new$IF_FALSE0)
// [8662]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8669]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL109
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL109)
// [8681]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8683]
// function Array.dispose 0
(Array.dispose)
// [8683]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8690]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [8695]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [8701]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL110
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL110)
// [8713]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8718]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8722]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8724]
// function Main.main 1
(Main.main)
@SP
AM=M+1
A=A-1
M=0
// [8728]
// call PongGame.newInstance 0
@0
D=A
@R13
M=D
@PongGame.newInstance
D=A
@R14
M=D
@RET_ADDRESS_CALL111
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL111)
// [8740]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8745]
// call PongGame.getInstance 0
@0
D=A
@R13
M=D
@PongGame.getInstance
D=A
@R14
M=D
@RET_ADDRESS_CALL112
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL112)
// [8757]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8763]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8770]
// call PongGame.run 1
@1
D=A
@R13
M=D
@PongGame.run
D=A
@R14
M=D
@RET_ADDRESS_CALL113
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL113)
// [8782]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8787]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8794]
// call PongGame.dispose 1
@1
D=A
@R13
M=D
@PongGame.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL114
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL114)
// [8806]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8811]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8815]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8817]
// function Keyboard.init 0
(Keyboard.init)
// [8817]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8821]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8823]
// function Keyboard.keyPressed 0
(Keyboard.keyPressed)
// [8823]
// push constant 24576
@24576
D=A
@SP
AM=M+1
A=A-1
M=D
// [8829]
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@RET_ADDRESS_CALL115
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL115)
// [8841]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8843]
// function Keyboard.readChar 2
(Keyboard.readChar)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [8850]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8854]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL116
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL116)
// [8866]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8871]
// label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
// [8871]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8878]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8882]
// eq
@RET_ADDRESS_EQ23
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ23)
// [8886]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8893]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8897]
// gt
@RET_ADDRESS_GT22
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT22)
// [8901]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [8906]
// not
@SP
A=M-1
M=!M
// [8909]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard.readChar$WHILE_END0
D;JNE
// [8914]
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@RET_ADDRESS_CALL117
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL117)
// [8926]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8932]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8939]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8943]
// gt
@RET_ADDRESS_GT23
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT23)
// [8947]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE
// [8952]
// goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP
// [8954]
// label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)
// [8954]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8961]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [8967]
// label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)
// [8967]
// goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP
// [8969]
// label WHILE_END0
(Keyboard.readChar$WHILE_END0)
// [8969]
// call String.backSpace 0
@0
D=A
@R13
M=D
@String.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL118
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL118)
// [8981]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL119
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL119)
// [8993]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8998]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [9005]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL120
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL120)
// [9017]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9022]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [9029]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9031]
// function Keyboard.readLine 5
(Keyboard.readLine)
@5
D=A
(LOOP_Keyboard.readLine)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Keyboard.readLine
D;JGT

// [9040]
// push constant 80
@80
D=A
@SP
AM=M+1
A=A-1
M=D
// [9046]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL121
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL121)
// [9058]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [9066]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9073]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL122
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL122)
// [9085]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9090]
// call String.newLine 0
@0
D=A
@R13
M=D
@String.newLine
D=A
@R14
M=D
@RET_ADDRESS_CALL123
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL123)
// [9102]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [9108]
// call String.backSpace 0
@0
D=A
@R13
M=D
@String.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL124
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL124)
// [9120]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [9127]
// label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
// [9127]
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
// [9136]
// not
@SP
A=M-1
M=!M
// [9139]
// not
@SP
A=M-1
M=!M
// [9142]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard.readLine$WHILE_END0
D;JNE
// [9147]
// call Keyboard.readChar 0
@0
D=A
@R13
M=D
@Keyboard.readChar
D=A
@R14
M=D
@RET_ADDRESS_CALL125
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL125)
// [9159]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [9165]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9172]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [9179]
// eq
@RET_ADDRESS_EQ24
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ24)
// [9183]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [9192]
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
// [9201]
// not
@SP
A=M-1
M=!M
// [9204]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE
// [9209]
// goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP
// [9211]
// label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
// [9211]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9218]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [9226]
// eq
@RET_ADDRESS_EQ25
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ25)
// [9230]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE
// [9235]
// goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP
// [9237]
// label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)
// [9237]
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
// [9246]
// call String.eraseLastChar 1
@1
D=A
@R13
M=D
@String.eraseLastChar
D=A
@R14
M=D
@RET_ADDRESS_CALL126
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL126)
// [9258]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9263]
// goto IF_END1
@Keyboard.readLine$IF_END1
0;JMP
// [9265]
// label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)
// [9265]
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
// [9274]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9281]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL127
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL127)
// [9293]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [9301]
// label IF_END1
(Keyboard.readLine$IF_END1)
// [9301]
// label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
// [9301]
// goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP
// [9303]
// label WHILE_END0
(Keyboard.readLine$WHILE_END0)
// [9303]
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
// [9312]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9314]
// function Keyboard.readInt 2
(Keyboard.readInt)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [9321]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9328]
// call Keyboard.readLine 1
@1
D=A
@R13
M=D
@Keyboard.readLine
D=A
@R14
M=D
@RET_ADDRESS_CALL128
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL128)
// [9340]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [9346]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9353]
// call String.intValue 1
@1
D=A
@R13
M=D
@String.intValue
D=A
@R14
M=D
@RET_ADDRESS_CALL129
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL129)
// [9365]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [9371]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9378]
// call String.dispose 1
@1
D=A
@R13
M=D
@String.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL130
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL130)
// [9390]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9395]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [9402]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9404]
// function Sys.init 0
(Sys.init)
// [9404]
// call Memory.init 0
@0
D=A
@R13
M=D
@Memory.init
D=A
@R14
M=D
@RET_ADDRESS_CALL131
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL131)
// [9416]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9421]
// call Math.init 0
@0
D=A
@R13
M=D
@Math.init
D=A
@R14
M=D
@RET_ADDRESS_CALL132
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL132)
// [9433]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9438]
// call Screen.init 0
@0
D=A
@R13
M=D
@Screen.init
D=A
@R14
M=D
@RET_ADDRESS_CALL133
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL133)
// [9450]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9455]
// call Output.init 0
@0
D=A
@R13
M=D
@Output.init
D=A
@R14
M=D
@RET_ADDRESS_CALL134
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL134)
// [9467]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9472]
// call Keyboard.init 0
@0
D=A
@R13
M=D
@Keyboard.init
D=A
@R14
M=D
@RET_ADDRESS_CALL135
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL135)
// [9484]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9489]
// call Main.main 0
@0
D=A
@R13
M=D
@Main.main
D=A
@R14
M=D
@RET_ADDRESS_CALL136
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL136)
// [9501]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9506]
// call Sys.halt 0
@0
D=A
@R13
M=D
@Sys.halt
D=A
@R14
M=D
@RET_ADDRESS_CALL137
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL137)
// [9518]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9523]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9527]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9529]
// function Sys.halt 0
(Sys.halt)
// [9529]
// label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
// [9529]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9533]
// not
@SP
A=M-1
M=!M
// [9536]
// not
@SP
A=M-1
M=!M
// [9539]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Sys.halt$WHILE_END0
D;JNE
// [9544]
// goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP
// [9546]
// label WHILE_END0
(Sys.halt$WHILE_END0)
// [9546]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9550]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9552]
// function Sys.wait 1
(Sys.wait)
@SP
AM=M+1
A=A-1
M=0
// [9556]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9563]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9567]
// lt
@RET_ADDRESS_LT33
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT33)
// [9571]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Sys.wait$IF_TRUE0
D;JNE
// [9576]
// goto IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP
// [9578]
// label IF_TRUE0
(Sys.wait$IF_TRUE0)
// [9578]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [9582]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL138
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL138)
// [9594]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9599]
// label IF_FALSE0
(Sys.wait$IF_FALSE0)
// [9599]
// label WHILE_EXP0
(Sys.wait$WHILE_EXP0)
// [9599]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9606]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9610]
// gt
@RET_ADDRESS_GT24
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT24)
// [9614]
// not
@SP
A=M-1
M=!M
// [9617]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Sys.wait$WHILE_END0
D;JNE
// [9622]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [9628]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [9634]
// label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
// [9634]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9641]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9645]
// gt
@RET_ADDRESS_GT25
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT25)
// [9649]
// not
@SP
A=M-1
M=!M
// [9652]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Sys.wait$WHILE_END1
D;JNE
// [9657]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9664]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [9668]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [9673]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [9679]
// goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP
// [9681]
// label WHILE_END1
(Sys.wait$WHILE_END1)
// [9681]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9688]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [9692]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [9697]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [9703]
// goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP
// [9705]
// label WHILE_END0
(Sys.wait$WHILE_END0)
// [9705]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9709]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9711]
// function Sys.error 0
(Sys.error)
// [9711]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [9717]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL139
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL139)
// [9729]
// push constant 69
@69
D=A
@SP
AM=M+1
A=A-1
M=D
// [9735]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL140
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL140)
// [9747]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [9753]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL141
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL141)
// [9765]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [9771]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL142
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL142)
// [9783]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL143
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL143)
// [9795]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9800]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [9807]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL144
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL144)
// [9819]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9824]
// call Sys.halt 0
@0
D=A
@R13
M=D
@Sys.halt
D=A
@R14
M=D
@RET_ADDRESS_CALL145
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL145)
// [9836]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9841]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9845]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9847]
// function Output.init 0
(Output.init)
// [9847]
// push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// [9853]
// pop static Output.4
@SP
AM=M-1
D=M
@Output.4
M=D
// [9858]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9862]
// not
@SP
A=M-1
M=!M
// [9865]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [9870]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [9876]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [9881]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9885]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [9890]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9896]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL146
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL146)
// [9908]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [9913]
// call Output.initMap 0
@0
D=A
@R13
M=D
@Output.initMap
D=A
@R14
M=D
@RET_ADDRESS_CALL147
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL147)
// [9925]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9930]
// call Output.createShiftedMap 0
@0
D=A
@R13
M=D
@Output.createShiftedMap
D=A
@R14
M=D
@RET_ADDRESS_CALL148
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL148)
// [9942]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9947]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9951]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [9953]
// function Output.initMap 0
(Output.initMap)
// [9953]
// push constant 127
@127
D=A
@SP
AM=M+1
A=A-1
M=D
// [9959]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL149
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL149)
// [9971]
// pop static Output.5
@SP
AM=M-1
D=M
@Output.5
M=D
// [9976]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9980]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9986]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9992]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9998]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10004]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10010]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10016]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10022]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10028]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10034]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10038]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10042]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL150
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL150)
// [10054]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10059]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [10065]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10069]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10073]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10077]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10081]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10085]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10089]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10093]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10097]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10101]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10105]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10109]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL151
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL151)
// [10121]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10126]
// push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// [10132]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10138]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10144]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10150]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10156]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10162]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10168]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10172]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10178]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10184]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10188]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10192]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL152
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL152)
// [10204]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10209]
// push constant 34
@34
D=A
@SP
AM=M+1
A=A-1
M=D
// [10215]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [10221]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [10227]
// push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// [10233]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10237]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10241]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10245]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10249]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10253]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10257]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10261]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10265]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL153
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL153)
// [10277]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10282]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [10288]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10292]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [10298]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [10304]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10310]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [10316]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [10322]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10328]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [10334]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [10340]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10344]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10348]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL154
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL154)
// [10360]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10365]
// push constant 36
@36
D=A
@SP
AM=M+1
A=A-1
M=D
// [10371]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10377]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10383]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10389]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10395]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10401]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10407]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10413]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10419]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10425]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10431]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10435]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL155
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL155)
// [10447]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10452]
// push constant 37
@37
D=A
@SP
AM=M+1
A=A-1
M=D
// [10458]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10462]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10466]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [10472]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10478]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10484]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10490]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10496]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10502]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [10508]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10512]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10516]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL156
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL156)
// [10528]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10533]
// push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// [10539]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10545]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10551]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10557]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10563]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [10569]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [10575]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [10581]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [10587]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [10593]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10597]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10601]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL157
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL157)
// [10613]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10618]
// push constant 39
@39
D=A
@SP
AM=M+1
A=A-1
M=D
// [10624]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10630]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10636]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10642]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10646]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10650]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10654]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10658]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10662]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10666]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10670]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10674]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL158
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL158)
// [10686]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10691]
// push constant 40
@40
D=A
@SP
AM=M+1
A=A-1
M=D
// [10697]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10703]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10709]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10715]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10721]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10727]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10733]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10739]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10745]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10751]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10755]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10759]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL159
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL159)
// [10771]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10776]
// push constant 41
@41
D=A
@SP
AM=M+1
A=A-1
M=D
// [10782]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10788]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10794]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10800]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10806]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10812]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10818]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10824]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10830]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10836]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10840]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10844]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL160
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL160)
// [10856]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10861]
// push constant 42
@42
D=A
@SP
AM=M+1
A=A-1
M=D
// [10867]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10871]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10875]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10879]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10885]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10891]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10897]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10903]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10909]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10913]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10917]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10921]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL161
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL161)
// [10933]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10938]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [10944]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10948]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10952]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10956]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10962]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10968]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10974]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10980]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10986]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10990]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10994]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10998]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL162
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL162)
// [11010]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11015]
// push constant 44
@44
D=A
@SP
AM=M+1
A=A-1
M=D
// [11021]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11025]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11029]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11033]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11037]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11041]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11045]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11049]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11055]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11061]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11067]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11071]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL163
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL163)
// [11083]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11088]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [11094]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11098]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11102]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11106]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11110]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11114]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11120]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11124]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11128]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11132]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11136]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11140]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL164
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL164)
// [11152]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11157]
// push constant 46
@46
D=A
@SP
AM=M+1
A=A-1
M=D
// [11163]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11167]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11171]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11175]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11179]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11183]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11187]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11191]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11197]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11203]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11207]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11211]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL165
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL165)
// [11223]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11228]
// push constant 47
@47
D=A
@SP
AM=M+1
A=A-1
M=D
// [11234]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11238]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11242]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [11248]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11254]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11260]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11266]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11272]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11278]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [11282]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11286]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11290]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL166
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL166)
// [11302]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11307]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11313]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11319]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11325]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11331]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11337]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11343]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11349]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11355]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11361]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11367]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11371]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11375]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL167
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL167)
// [11387]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11392]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [11398]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11404]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [11410]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [11416]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11422]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11428]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11434]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11440]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11446]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11452]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11456]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11460]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL168
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL168)
// [11472]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11477]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [11483]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11489]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11495]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11501]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11507]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11513]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11519]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11525]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11531]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11537]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11541]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11545]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL169
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL169)
// [11557]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11562]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11568]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11574]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11580]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11586]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11592]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [11598]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11604]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11610]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11616]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11622]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11626]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11630]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL170
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL170)
// [11642]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11647]
// push constant 52
@52
D=A
@SP
AM=M+1
A=A-1
M=D
// [11653]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [11659]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11665]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [11671]
// push constant 26
@26
D=A
@SP
AM=M+1
A=A-1
M=D
// [11677]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [11683]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11689]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11695]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11701]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [11707]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11711]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11715]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL171
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL171)
// [11727]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11732]
// push constant 53
@53
D=A
@SP
AM=M+1
A=A-1
M=D
// [11738]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11744]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11750]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11756]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [11762]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11768]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11774]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11780]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11786]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11792]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11796]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11800]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL172
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL172)
// [11812]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11817]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [11823]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [11829]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11835]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11841]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11847]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [11853]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11859]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11865]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11871]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11877]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11881]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11885]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL173
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL173)
// [11897]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11902]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [11908]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11914]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [11920]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11926]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11932]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11938]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11944]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11950]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11956]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11962]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11966]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11970]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL174
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL174)
// [11982]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11987]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [11993]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11999]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12005]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12011]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12017]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12023]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12029]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12035]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12041]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12047]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12051]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12055]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL175
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL175)
// [12067]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12072]
// push constant 57
@57
D=A
@SP
AM=M+1
A=A-1
M=D
// [12078]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12084]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12090]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12096]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12102]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [12108]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [12114]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [12120]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12126]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [12132]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12136]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12140]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL176
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL176)
// [12152]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12157]
// push constant 58
@58
D=A
@SP
AM=M+1
A=A-1
M=D
// [12163]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12167]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12171]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12177]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12183]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12187]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12191]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12197]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12203]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12207]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12211]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12215]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL177
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL177)
// [12227]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12232]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12238]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12242]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12246]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12252]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12258]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12262]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12266]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12272]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12278]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [12284]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12288]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12292]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL178
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL178)
// [12304]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12309]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [12315]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12319]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12323]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12329]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12335]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [12341]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12347]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [12353]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12359]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12365]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12369]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12373]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL179
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL179)
// [12385]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12390]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [12396]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12400]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12404]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12408]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12414]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12418]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12422]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12428]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12432]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12436]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12440]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12444]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL180
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL180)
// [12456]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12461]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [12467]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12471]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12475]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12481]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [12487]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12493]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12499]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12505]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [12511]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12517]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12521]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12525]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL181
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL181)
// [12537]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12542]
// push constant 64
@64
D=A
@SP
AM=M+1
A=A-1
M=D
// [12548]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12554]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12560]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12566]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12572]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12578]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12584]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [12590]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12596]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12602]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12606]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12610]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL182
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL182)
// [12622]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12627]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12633]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12639]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12645]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12651]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12657]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12663]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12669]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12673]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12679]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12685]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12689]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12693]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL183
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL183)
// [12705]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12710]
// push constant 65
@65
D=A
@SP
AM=M+1
A=A-1
M=D
// [12716]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12722]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12728]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12734]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12740]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12746]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12752]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12758]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12764]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12770]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12774]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12778]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL184
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL184)
// [12790]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12795]
// push constant 66
@66
D=A
@SP
AM=M+1
A=A-1
M=D
// [12801]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [12807]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12813]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12819]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12825]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [12831]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12837]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12843]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12849]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [12855]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12859]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12863]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL185
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL185)
// [12875]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12880]
// push constant 67
@67
D=A
@SP
AM=M+1
A=A-1
M=D
// [12886]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [12892]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [12898]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12904]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12910]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12916]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12922]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12928]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [12934]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [12940]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12944]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12948]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL186
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL186)
// [12960]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12965]
// push constant 68
@68
D=A
@SP
AM=M+1
A=A-1
M=D
// [12971]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [12977]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [12983]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12989]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12995]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13001]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13007]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13013]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [13019]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [13025]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13029]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13033]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL187
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL187)
// [13045]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13050]
// push constant 69
@69
D=A
@SP
AM=M+1
A=A-1
M=D
// [13056]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13062]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13068]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [13074]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [13080]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [13086]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [13092]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [13098]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13104]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13110]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13114]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13118]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL188
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL188)
// [13130]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13135]
// push constant 70
@70
D=A
@SP
AM=M+1
A=A-1
M=D
// [13141]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13147]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13153]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [13159]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [13165]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [13171]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [13177]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13183]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13189]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13195]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13199]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13203]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL189
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL189)
// [13215]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13220]
// push constant 71
@71
D=A
@SP
AM=M+1
A=A-1
M=D
// [13226]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [13232]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [13238]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [13244]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13250]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [13256]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13262]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13268]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [13274]
// push constant 44
@44
D=A
@SP
AM=M+1
A=A-1
M=D
// [13280]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13284]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13288]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL190
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL190)
// [13300]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13305]
// push constant 72
@72
D=A
@SP
AM=M+1
A=A-1
M=D
// [13311]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13317]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13323]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13329]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13335]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13341]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13347]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13353]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13359]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13365]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13369]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13373]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL191
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL191)
// [13385]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13390]
// push constant 73
@73
D=A
@SP
AM=M+1
A=A-1
M=D
// [13396]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13402]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13408]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13414]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13420]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13426]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13432]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13438]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13444]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13450]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13454]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13458]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL192
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL192)
// [13470]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13475]
// push constant 74
@74
D=A
@SP
AM=M+1
A=A-1
M=D
// [13481]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [13487]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [13493]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [13499]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [13505]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [13511]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [13517]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [13523]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [13529]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [13535]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13539]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13543]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL193
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL193)
// [13555]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13560]
// push constant 75
@75
D=A
@SP
AM=M+1
A=A-1
M=D
// [13566]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13572]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13578]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13584]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [13590]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [13596]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [13602]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13608]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13614]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13620]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13624]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13628]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL194
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL194)
// [13640]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13645]
// push constant 76
@76
D=A
@SP
AM=M+1
A=A-1
M=D
// [13651]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13657]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13663]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13669]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13675]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13681]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13687]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [13693]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13699]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13705]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13709]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13713]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL195
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL195)
// [13725]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13730]
// push constant 77
@77
D=A
@SP
AM=M+1
A=A-1
M=D
// [13736]
// push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// [13742]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13748]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13754]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13760]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13766]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13772]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13778]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13784]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13790]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13794]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13798]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL196
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL196)
// [13810]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13815]
// push constant 78
@78
D=A
@SP
AM=M+1
A=A-1
M=D
// [13821]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13827]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13833]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [13839]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [13845]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13851]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [13857]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [13863]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13869]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13875]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13879]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13883]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL197
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL197)
// [13895]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13900]
// push constant 79
@79
D=A
@SP
AM=M+1
A=A-1
M=D
// [13906]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13912]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13918]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13924]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13930]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13936]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13942]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13948]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13954]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13960]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13964]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13968]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL198
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL198)
// [13980]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13985]
// push constant 80
@80
D=A
@SP
AM=M+1
A=A-1
M=D
// [13991]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [13997]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14003]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14009]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14015]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [14021]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14027]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14033]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14039]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14045]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14049]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14053]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL199
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL199)
// [14065]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14070]
// push constant 81
@81
D=A
@SP
AM=M+1
A=A-1
M=D
// [14076]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14082]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14088]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14094]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14100]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14106]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14112]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14118]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [14124]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14130]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14136]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14140]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL200
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL200)
// [14152]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14157]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [14163]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [14169]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14175]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14181]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14187]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [14193]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [14199]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14205]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14211]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14217]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14221]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14225]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL201
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL201)
// [14237]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14242]
// push constant 83
@83
D=A
@SP
AM=M+1
A=A-1
M=D
// [14248]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14254]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14260]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14266]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14272]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [14278]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14284]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14290]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14296]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14302]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14306]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14310]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL202
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL202)
// [14322]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14327]
// push constant 84
@84
D=A
@SP
AM=M+1
A=A-1
M=D
// [14333]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14339]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14345]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [14351]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14357]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14363]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14369]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14375]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14381]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14387]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14391]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14395]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL203
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL203)
// [14407]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14412]
// push constant 85
@85
D=A
@SP
AM=M+1
A=A-1
M=D
// [14418]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14424]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14430]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14436]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14442]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14448]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14454]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14460]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14466]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14472]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14476]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14480]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL204
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL204)
// [14492]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14497]
// push constant 86
@86
D=A
@SP
AM=M+1
A=A-1
M=D
// [14503]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14509]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14515]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14521]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14527]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14533]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14539]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14545]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14551]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14557]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14561]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14565]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL205
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL205)
// [14577]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14582]
// push constant 87
@87
D=A
@SP
AM=M+1
A=A-1
M=D
// [14588]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14594]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14600]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14606]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14612]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14618]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14624]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14630]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14636]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [14642]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14646]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14650]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL206
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL206)
// [14662]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14667]
// push constant 88
@88
D=A
@SP
AM=M+1
A=A-1
M=D
// [14673]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14679]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14685]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14691]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14697]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14703]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14709]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14715]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14721]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14727]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14731]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14735]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL207
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL207)
// [14747]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14752]
// push constant 89
@89
D=A
@SP
AM=M+1
A=A-1
M=D
// [14758]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14764]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14770]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14776]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14782]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14788]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14794]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14800]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14806]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14812]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14816]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14820]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL208
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL208)
// [14832]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14837]
// push constant 90
@90
D=A
@SP
AM=M+1
A=A-1
M=D
// [14843]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14849]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14855]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [14861]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14867]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14873]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14879]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [14885]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14891]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14897]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14901]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14905]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL209
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL209)
// [14917]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14922]
// push constant 91
@91
D=A
@SP
AM=M+1
A=A-1
M=D
// [14928]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14934]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14940]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14946]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14952]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14958]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14964]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14970]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14976]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14982]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14986]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14990]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL210
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL210)
// [15002]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15007]
// push constant 92
@92
D=A
@SP
AM=M+1
A=A-1
M=D
// [15013]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15017]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15021]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [15025]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15031]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15037]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15043]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15049]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15055]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [15061]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15065]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15069]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL211
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL211)
// [15081]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15086]
// push constant 93
@93
D=A
@SP
AM=M+1
A=A-1
M=D
// [15092]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15098]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15104]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15110]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15116]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15122]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15128]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15134]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15140]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15146]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15150]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15154]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL212
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL212)
// [15166]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15171]
// push constant 94
@94
D=A
@SP
AM=M+1
A=A-1
M=D
// [15177]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [15183]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [15189]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [15195]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15199]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15203]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15207]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15211]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15215]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15219]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15223]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15227]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL213
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL213)
// [15239]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15244]
// push constant 95
@95
D=A
@SP
AM=M+1
A=A-1
M=D
// [15250]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15254]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15258]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15262]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15266]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15270]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15274]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15278]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15282]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15286]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [15292]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15296]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL214
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL214)
// [15308]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15313]
// push constant 96
@96
D=A
@SP
AM=M+1
A=A-1
M=D
// [15319]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15325]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15331]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15337]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15341]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15345]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15349]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15353]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15357]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15361]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15365]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15369]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL215
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL215)
// [15381]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15386]
// push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// [15392]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15396]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15400]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15404]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [15410]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15416]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15422]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [15428]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [15434]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [15440]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15444]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15448]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL216
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL216)
// [15460]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15465]
// push constant 98
@98
D=A
@SP
AM=M+1
A=A-1
M=D
// [15471]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15477]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15483]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15489]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [15495]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [15501]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15507]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15513]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15519]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15525]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15529]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15533]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL217
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL217)
// [15545]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15550]
// push constant 99
@99
D=A
@SP
AM=M+1
A=A-1
M=D
// [15556]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15560]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15564]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15568]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15574]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15580]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15586]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15592]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15598]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15604]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15608]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15612]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL218
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL218)
// [15624]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15629]
// push constant 100
@100
D=A
@SP
AM=M+1
A=A-1
M=D
// [15635]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15641]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15647]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15653]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [15659]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [15665]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15671]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15677]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15683]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15689]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15693]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15697]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL219
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL219)
// [15709]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15714]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [15720]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15724]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15728]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15732]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15738]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15744]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [15750]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15756]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15762]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15768]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15772]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15776]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL220
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL220)
// [15788]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15793]
// push constant 102
@102
D=A
@SP
AM=M+1
A=A-1
M=D
// [15799]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [15805]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [15811]
// push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// [15817]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15823]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [15829]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15835]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15841]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15847]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [15853]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15857]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15861]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL221
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL221)
// [15873]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15878]
// push constant 103
@103
D=A
@SP
AM=M+1
A=A-1
M=D
// [15884]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15888]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15892]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15898]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15904]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15910]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15916]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [15922]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15928]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15934]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15940]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15944]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL222
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL222)
// [15956]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15961]
// push constant 104
@104
D=A
@SP
AM=M+1
A=A-1
M=D
// [15967]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15973]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15979]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15985]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [15991]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [15997]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16003]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16009]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16015]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16021]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16025]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16029]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL223
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL223)
// [16041]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16046]
// push constant 105
@105
D=A
@SP
AM=M+1
A=A-1
M=D
// [16052]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16058]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16064]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16068]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [16074]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16080]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16086]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16092]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16098]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16104]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16108]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16112]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL224
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL224)
// [16124]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16129]
// push constant 106
@106
D=A
@SP
AM=M+1
A=A-1
M=D
// [16135]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16141]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16147]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16151]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [16157]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16163]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16169]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16175]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16181]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16187]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16193]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16197]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL225
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL225)
// [16209]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16214]
// push constant 107
@107
D=A
@SP
AM=M+1
A=A-1
M=D
// [16220]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16226]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16232]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16238]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16244]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16250]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [16256]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [16262]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16268]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16274]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16278]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16282]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL226
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL226)
// [16294]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16299]
// push constant 108
@108
D=A
@SP
AM=M+1
A=A-1
M=D
// [16305]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [16311]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16317]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16323]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16329]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16335]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16341]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16347]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16353]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16359]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16363]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16367]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL227
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL227)
// [16379]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16384]
// push constant 109
@109
D=A
@SP
AM=M+1
A=A-1
M=D
// [16390]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16394]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16398]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16402]
// push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// [16408]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [16414]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [16420]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [16426]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [16432]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [16438]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16442]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16446]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL228
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL228)
// [16458]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16463]
// push constant 110
@110
D=A
@SP
AM=M+1
A=A-1
M=D
// [16469]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16473]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16477]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16481]
// push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// [16487]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16493]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16499]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16505]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16511]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16517]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16521]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16525]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL229
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL229)
// [16537]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16542]
// push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// [16548]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16552]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16556]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16560]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16566]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16572]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16578]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16584]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16590]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16596]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16600]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16604]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL230
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL230)
// [16616]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16621]
// push constant 112
@112
D=A
@SP
AM=M+1
A=A-1
M=D
// [16627]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16631]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16635]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16639]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16645]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16651]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16657]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16663]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [16669]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16675]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16681]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16685]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL231
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL231)
// [16697]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16702]
// push constant 113
@113
D=A
@SP
AM=M+1
A=A-1
M=D
// [16708]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16712]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16716]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16720]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16726]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16732]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16738]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16744]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [16750]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16756]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16762]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16766]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL232
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL232)
// [16778]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16783]
// push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// [16789]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16793]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16797]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16801]
// push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// [16807]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [16813]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16819]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16825]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [16831]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [16837]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16841]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16845]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL233
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL233)
// [16857]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16862]
// push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// [16868]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16872]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16876]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16880]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16886]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16892]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16898]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [16904]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16910]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16916]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16920]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16924]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL234
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL234)
// [16936]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16941]
// push constant 116
@116
D=A
@SP
AM=M+1
A=A-1
M=D
// [16947]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [16953]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16959]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16965]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [16971]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16977]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16983]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16989]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [16995]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [17001]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17005]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17009]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL235
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL235)
// [17021]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17026]
// push constant 117
@117
D=A
@SP
AM=M+1
A=A-1
M=D
// [17032]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17036]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17040]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17044]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [17050]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [17056]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [17062]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [17068]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [17074]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [17080]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17084]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17088]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL236
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL236)
// [17100]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17105]
// push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// [17111]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17115]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17119]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17123]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17129]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17135]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17141]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17147]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [17153]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17159]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17163]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17167]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL237
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL237)
// [17179]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17184]
// push constant 119
@119
D=A
@SP
AM=M+1
A=A-1
M=D
// [17190]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17194]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17198]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17202]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17208]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17214]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17220]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [17226]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [17232]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [17238]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17242]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17246]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL238
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL238)
// [17258]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17263]
// push constant 120
@120
D=A
@SP
AM=M+1
A=A-1
M=D
// [17269]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17273]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17277]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17281]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17287]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [17293]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17299]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17305]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [17311]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17317]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17321]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17325]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL239
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL239)
// [17337]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17342]
// push constant 121
@121
D=A
@SP
AM=M+1
A=A-1
M=D
// [17348]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17352]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17356]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17360]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17366]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17372]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17378]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [17384]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [17390]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [17396]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [17402]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17406]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL240
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL240)
// [17418]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17423]
// push constant 122
@122
D=A
@SP
AM=M+1
A=A-1
M=D
// [17429]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17433]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17437]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17441]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [17447]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [17453]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17459]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [17465]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [17471]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [17477]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17481]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17485]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL241
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL241)
// [17497]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17502]
// push constant 123
@123
D=A
@SP
AM=M+1
A=A-1
M=D
// [17508]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [17514]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17520]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17526]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17532]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [17538]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17544]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17550]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17556]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [17562]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17566]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17570]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL242
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL242)
// [17582]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17587]
// push constant 124
@124
D=A
@SP
AM=M+1
A=A-1
M=D
// [17593]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17599]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17605]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17611]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17617]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17623]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17629]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17635]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17641]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17647]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17651]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17655]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL243
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL243)
// [17667]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17672]
// push constant 125
@125
D=A
@SP
AM=M+1
A=A-1
M=D
// [17678]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [17684]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17690]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17696]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17702]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [17708]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17714]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17720]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [17726]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [17732]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17736]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17740]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL244
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL244)
// [17752]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17757]
// push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// [17763]
// push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// [17769]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [17775]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [17781]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17785]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17789]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17793]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17797]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17801]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17805]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17809]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17813]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL245
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL245)
// [17825]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17830]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17834]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [17836]
// function Output.create 1
(Output.create)
@SP
AM=M+1
A=A-1
M=0
// [17840]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [17846]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL246
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL246)
// [17858]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [17864]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17871]
// push static Output.5
@Output.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17877]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17882]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17889]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17894]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17899]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17905]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17911]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17915]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17922]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17927]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17934]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17939]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17944]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17950]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17956]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [17960]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17967]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17972]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17980]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17985]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17990]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17996]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18002]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [18008]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18015]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18020]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18029]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18034]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18039]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18045]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18051]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [18057]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18064]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18069]
// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18078]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18083]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18088]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18094]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18100]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [18106]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18113]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18118]
// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18127]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18132]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18137]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18143]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18149]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [18155]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18162]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18167]
// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18176]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18181]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18186]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18192]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18198]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [18204]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18211]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18216]
// push argument 7
@ARG
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18225]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18230]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18235]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18241]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18247]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [18253]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18260]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18265]
// push argument 8
@ARG
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18274]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18279]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18284]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18290]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18296]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [18302]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18309]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18314]
// push argument 9
@ARG
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18323]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18328]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18333]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18339]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18345]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [18351]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18358]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18363]
// push argument 10
@ARG
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18372]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18377]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18382]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18388]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18394]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [18400]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18407]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18412]
// push argument 11
@ARG
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [18421]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18426]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18431]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18437]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18443]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18447]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18449]
// function Output.createShiftedMap 4
(Output.createShiftedMap)
@4
D=A
(LOOP_Output.createShiftedMap)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Output.createShiftedMap
D;JGT

// [18458]
// push constant 127
@127
D=A
@SP
AM=M+1
A=A-1
M=D
// [18464]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL247
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL247)
// [18476]
// pop static Output.6
@SP
AM=M-1
D=M
@Output.6
M=D
// [18481]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18485]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [18492]
// label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)
// [18492]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18500]
// push constant 127
@127
D=A
@SP
AM=M+1
A=A-1
M=D
// [18506]
// lt
@RET_ADDRESS_LT34
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT34)
// [18510]
// not
@SP
A=M-1
M=!M
// [18513]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.createShiftedMap$WHILE_END0
D;JNE
// [18518]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18526]
// push static Output.5
@Output.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18532]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18537]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18542]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18549]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [18555]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [18561]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL248
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL248)
// [18573]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [18579]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18587]
// push static Output.6
@Output.6
D=M
@SP
AM=M+1
A=A-1
M=D
// [18593]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18598]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18605]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18610]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18615]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18621]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18627]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18631]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [18639]
// label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)
// [18639]
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
// [18648]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [18654]
// lt
@RET_ADDRESS_LT35
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT35)
// [18658]
// not
@SP
A=M-1
M=!M
// [18661]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Output.createShiftedMap$WHILE_END1
D;JNE
// [18666]
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
// [18675]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18682]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18687]
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
// [18696]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18703]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18708]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18713]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18720]
// push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// [18726]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL249
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL249)
// [18738]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18743]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18748]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18754]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18760]
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
// [18769]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18773]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18778]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [18786]
// goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP
// [18788]
// label WHILE_END1
(Output.createShiftedMap$WHILE_END1)
// [18788]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18796]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18800]
// eq
@RET_ADDRESS_EQ26
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ26)
// [18804]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.createShiftedMap$IF_TRUE0
D;JNE
// [18809]
// goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP
// [18811]
// label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)
// [18811]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [18817]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [18824]
// goto IF_END0
@Output.createShiftedMap$IF_END0
0;JMP
// [18826]
// label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)
// [18826]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18834]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18838]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18843]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [18850]
// label IF_END0
(Output.createShiftedMap$IF_END0)
// [18850]
// goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP
// [18852]
// label WHILE_END0
(Output.createShiftedMap$WHILE_END0)
// [18852]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18856]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18858]
// function Output.getMap 1
(Output.getMap)
@SP
AM=M+1
A=A-1
M=0
// [18862]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18869]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [18875]
// lt
@RET_ADDRESS_LT36
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT36)
// [18879]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18886]
// push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// [18892]
// gt
@RET_ADDRESS_GT26
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT26)
// [18896]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [18901]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.getMap$IF_TRUE0
D;JNE
// [18906]
// goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP
// [18908]
// label IF_TRUE0
(Output.getMap$IF_TRUE0)
// [18908]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18912]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [18918]
// label IF_FALSE0
(Output.getMap$IF_FALSE0)
// [18918]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [18924]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.getMap$IF_TRUE1
D;JNE
// [18929]
// goto IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP
// [18931]
// label IF_TRUE1
(Output.getMap$IF_TRUE1)
// [18931]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18938]
// push static Output.5
@Output.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18944]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18949]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18954]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18961]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [18967]
// goto IF_END1
@Output.getMap$IF_END1
0;JMP
// [18969]
// label IF_FALSE1
(Output.getMap$IF_FALSE1)
// [18969]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18976]
// push static Output.6
@Output.6
D=M
@SP
AM=M+1
A=A-1
M=D
// [18982]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18987]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18992]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18999]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19005]
// label IF_END1
(Output.getMap$IF_END1)
// [19005]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19012]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19014]
// function Output.drawChar 4
(Output.drawChar)
@4
D=A
(LOOP_Output.drawChar)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Output.drawChar
D;JGT

// [19023]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19030]
// call Output.getMap 1
@1
D=A
@R13
M=D
@Output.getMap
D=A
@R14
M=D
@RET_ADDRESS_CALL250
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL250)
// [19042]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [19049]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19055]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19061]
// label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)
// [19061]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19068]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [19074]
// lt
@RET_ADDRESS_LT37
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT37)
// [19078]
// not
@SP
A=M-1
M=!M
// [19081]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.drawChar$WHILE_END0
D;JNE
// [19086]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [19092]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.drawChar$IF_TRUE0
D;JNE
// [19097]
// goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP
// [19099]
// label IF_TRUE0
(Output.drawChar$IF_TRUE0)
// [19099]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19106]
// push static Output.4
@Output.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [19112]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19117]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19122]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19129]
// push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// [19135]
// neg
@SP
A=M-1
M=-M
// [19138]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [19143]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [19151]
// goto IF_END0
@Output.drawChar$IF_END0
0;JMP
// [19153]
// label IF_FALSE0
(Output.drawChar$IF_FALSE0)
// [19153]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19160]
// push static Output.4
@Output.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [19166]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19171]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19176]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19183]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [19189]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [19194]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [19202]
// label IF_END0
(Output.drawChar$IF_END0)
// [19202]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19209]
// push static Output.4
@Output.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [19215]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19220]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19227]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19235]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19240]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19245]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19252]
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
// [19261]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [19266]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19271]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19276]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [19282]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [19288]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19295]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [19301]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19306]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19312]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19319]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19323]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19328]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [19334]
// goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP
// [19336]
// label WHILE_END0
(Output.drawChar$WHILE_END0)
// [19336]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19340]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19342]
// function Output.moveCursor 0
(Output.moveCursor)
// [19342]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19349]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19353]
// lt
@RET_ADDRESS_LT38
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT38)
// [19357]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19364]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [19370]
// gt
@RET_ADDRESS_GT27
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT27)
// [19374]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [19379]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19386]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19390]
// lt
@RET_ADDRESS_LT39
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT39)
// [19394]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [19399]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19406]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [19412]
// gt
@RET_ADDRESS_GT28
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT28)
// [19416]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [19421]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.moveCursor$IF_TRUE0
D;JNE
// [19426]
// goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP
// [19428]
// label IF_TRUE0
(Output.moveCursor$IF_TRUE0)
// [19428]
// push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// [19434]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL251
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL251)
// [19446]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19451]
// label IF_FALSE0
(Output.moveCursor$IF_FALSE0)
// [19451]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19458]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [19464]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL252
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL252)
// [19476]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [19481]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [19487]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19494]
// push constant 352
@352
D=A
@SP
AM=M+1
A=A-1
M=D
// [19500]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL253
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL253)
// [19512]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19517]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [19523]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19528]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [19533]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19540]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [19546]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [19552]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL254
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL254)
// [19564]
// eq
@RET_ADDRESS_EQ27
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ27)
// [19568]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [19573]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [19579]
// call Output.drawChar 1
@1
D=A
@R13
M=D
@Output.drawChar
D=A
@R14
M=D
@RET_ADDRESS_CALL255
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL255)
// [19591]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19596]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19600]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19602]
// function Output.printChar 0
(Output.printChar)
// [19602]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19609]
// call String.newLine 0
@0
D=A
@R13
M=D
@String.newLine
D=A
@R14
M=D
@RET_ADDRESS_CALL256
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL256)
// [19621]
// eq
@RET_ADDRESS_EQ28
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ28)
// [19625]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE0
D;JNE
// [19630]
// goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP
// [19632]
// label IF_TRUE0
(Output.printChar$IF_TRUE0)
// [19632]
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@RET_ADDRESS_CALL257
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL257)
// [19644]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19649]
// goto IF_END0
@Output.printChar$IF_END0
0;JMP
// [19651]
// label IF_FALSE0
(Output.printChar$IF_FALSE0)
// [19651]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19658]
// call String.backSpace 0
@0
D=A
@R13
M=D
@String.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL258
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL258)
// [19670]
// eq
@RET_ADDRESS_EQ29
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ29)
// [19674]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE1
D;JNE
// [19679]
// goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP
// [19681]
// label IF_TRUE1
(Output.printChar$IF_TRUE1)
// [19681]
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL259
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL259)
// [19693]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19698]
// goto IF_END1
@Output.printChar$IF_END1
0;JMP
// [19700]
// label IF_FALSE1
(Output.printChar$IF_FALSE1)
// [19700]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19707]
// call Output.drawChar 1
@1
D=A
@R13
M=D
@Output.drawChar
D=A
@R14
M=D
@RET_ADDRESS_CALL260
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL260)
// [19719]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19724]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [19730]
// not
@SP
A=M-1
M=!M
// [19733]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE2
D;JNE
// [19738]
// goto IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP
// [19740]
// label IF_TRUE2
(Output.printChar$IF_TRUE2)
// [19740]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [19746]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19750]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19755]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [19760]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19766]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19770]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19775]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [19780]
// label IF_FALSE2
(Output.printChar$IF_FALSE2)
// [19780]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [19786]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [19792]
// eq
@RET_ADDRESS_EQ30
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ30)
// [19796]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE3
D;JNE
// [19801]
// goto IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP
// [19803]
// label IF_TRUE3
(Output.printChar$IF_TRUE3)
// [19803]
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@RET_ADDRESS_CALL261
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL261)
// [19815]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19820]
// goto IF_END3
@Output.printChar$IF_END3
0;JMP
// [19822]
// label IF_FALSE3
(Output.printChar$IF_FALSE3)
// [19822]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [19828]
// not
@SP
A=M-1
M=!M
// [19831]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [19836]
// label IF_END3
(Output.printChar$IF_END3)
// [19836]
// label IF_END1
(Output.printChar$IF_END1)
// [19836]
// label IF_END0
(Output.printChar$IF_END0)
// [19836]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19840]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19842]
// function Output.printString 2
(Output.printString)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [19849]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19856]
// call String.length 1
@1
D=A
@R13
M=D
@String.length
D=A
@R14
M=D
@RET_ADDRESS_CALL262
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL262)
// [19868]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [19874]
// label WHILE_EXP0
(Output.printString$WHILE_EXP0)
// [19874]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19881]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19888]
// lt
@RET_ADDRESS_LT40
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT40)
// [19892]
// not
@SP
A=M-1
M=!M
// [19895]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.printString$WHILE_END0
D;JNE
// [19900]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19907]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19914]
// call String.charAt 2
@2
D=A
@R13
M=D
@String.charAt
D=A
@R14
M=D
@RET_ADDRESS_CALL263
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL263)
// [19926]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL264
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL264)
// [19938]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19943]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19950]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19954]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19959]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19965]
// goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP
// [19967]
// label WHILE_END0
(Output.printString$WHILE_END0)
// [19967]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19971]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19973]
// function Output.printInt 0
(Output.printInt)
// [19973]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [19979]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19986]
// call String.setInt 2
@2
D=A
@R13
M=D
@String.setInt
D=A
@R14
M=D
@RET_ADDRESS_CALL265
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL265)
// [19998]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20003]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [20009]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL266
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL266)
// [20021]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20026]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20030]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20032]
// function Output.println 0
(Output.println)
// [20032]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20038]
// push constant 352
@352
D=A
@SP
AM=M+1
A=A-1
M=D
// [20044]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20049]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20055]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20060]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [20065]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20069]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [20074]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20078]
// not
@SP
A=M-1
M=!M
// [20081]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [20086]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20092]
// push constant 8128
@8128
D=A
@SP
AM=M+1
A=A-1
M=D
// [20098]
// eq
@RET_ADDRESS_EQ31
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ31)
// [20102]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.println$IF_TRUE0
D;JNE
// [20107]
// goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP
// [20109]
// label IF_TRUE0
(Output.println$IF_TRUE0)
// [20109]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20115]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [20120]
// label IF_FALSE0
(Output.println$IF_FALSE0)
// [20120]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20124]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20126]
// function Output.backSpace 0
(Output.backSpace)
// [20126]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [20132]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.backSpace$IF_TRUE0
D;JNE
// [20137]
// goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP
// [20139]
// label IF_TRUE0
(Output.backSpace$IF_TRUE0)
// [20139]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20145]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20149]
// gt
@RET_ADDRESS_GT29
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT29)
// [20153]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.backSpace$IF_TRUE1
D;JNE
// [20158]
// goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP
// [20160]
// label IF_TRUE1
(Output.backSpace$IF_TRUE1)
// [20160]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20166]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20170]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20175]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [20180]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20186]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20190]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20195]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [20200]
// goto IF_END1
@Output.backSpace$IF_END1
0;JMP
// [20202]
// label IF_FALSE1
(Output.backSpace$IF_FALSE1)
// [20202]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [20208]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [20213]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20219]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20225]
// eq
@RET_ADDRESS_EQ32
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ32)
// [20229]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Output.backSpace$IF_TRUE2
D;JNE
// [20234]
// goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP
// [20236]
// label IF_TRUE2
(Output.backSpace$IF_TRUE2)
// [20236]
// push constant 8128
@8128
D=A
@SP
AM=M+1
A=A-1
M=D
// [20242]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [20247]
// label IF_FALSE2
(Output.backSpace$IF_FALSE2)
// [20247]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20253]
// push constant 321
@321
D=A
@SP
AM=M+1
A=A-1
M=D
// [20259]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20264]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [20269]
// label IF_END1
(Output.backSpace$IF_END1)
// [20269]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20273]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [20278]
// goto IF_END0
@Output.backSpace$IF_END0
0;JMP
// [20280]
// label IF_FALSE0
(Output.backSpace$IF_FALSE0)
// [20280]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20284]
// not
@SP
A=M-1
M=!M
// [20287]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [20292]
// label IF_END0
(Output.backSpace$IF_END0)
// [20292]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20298]
// call Output.drawChar 1
@1
D=A
@R13
M=D
@Output.drawChar
D=A
@R14
M=D
@RET_ADDRESS_CALL267
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL267)
// [20310]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20315]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20319]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20321]
// function Screen.init 1
(Screen.init)
@SP
AM=M+1
A=A-1
M=0
// [20325]
// push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// [20331]
// pop static Screen.1
@SP
AM=M-1
D=M
@Screen.1
M=D
// [20336]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20340]
// not
@SP
A=M-1
M=!M
// [20343]
// pop static Screen.2
@SP
AM=M-1
D=M
@Screen.2
M=D
// [20348]
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// [20354]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL268
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL268)
// [20366]
// pop static Screen.0
@SP
AM=M-1
D=M
@Screen.0
M=D
// [20371]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20375]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20381]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20386]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20390]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20395]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20400]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [20406]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [20412]
// label WHILE_EXP0
(Screen.init$WHILE_EXP0)
// [20412]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20419]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20425]
// lt
@RET_ADDRESS_LT41
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT41)
// [20429]
// not
@SP
A=M-1
M=!M
// [20432]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.init$WHILE_END0
D;JNE
// [20437]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20444]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20448]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20453]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [20459]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20466]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20472]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20477]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20484]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20488]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20493]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20499]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20504]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20509]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20516]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20523]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20527]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20532]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20538]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20543]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20548]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20555]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20560]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20565]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20570]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [20576]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [20582]
// goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP
// [20584]
// label WHILE_END0
(Screen.init$WHILE_END0)
// [20584]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20588]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20590]
// function Screen.clearScreen 1
(Screen.clearScreen)
@SP
AM=M+1
A=A-1
M=0
// [20594]
// label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)
// [20594]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20601]
// push constant 8192
@8192
D=A
@SP
AM=M+1
A=A-1
M=D
// [20607]
// lt
@RET_ADDRESS_LT42
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT42)
// [20611]
// not
@SP
A=M-1
M=!M
// [20614]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.clearScreen$WHILE_END0
D;JNE
// [20619]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20626]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20632]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20637]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20641]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20646]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20651]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [20657]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [20663]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20670]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20674]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20679]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [20685]
// goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP
// [20687]
// label WHILE_END0
(Screen.clearScreen$WHILE_END0)
// [20687]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20691]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20693]
// function Screen.updateLocation 0
(Screen.updateLocation)
// [20693]
// push static Screen.2
@Screen.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [20699]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.updateLocation$IF_TRUE0
D;JNE
// [20704]
// goto IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0;JMP
// [20706]
// label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)
// [20706]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20713]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20719]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20724]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20731]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20737]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20742]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20747]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20754]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20761]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [20766]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20771]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20776]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [20782]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [20788]
// goto IF_END0
@Screen.updateLocation$IF_END0
0;JMP
// [20790]
// label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)
// [20790]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20797]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20803]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20808]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20815]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20821]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20826]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20831]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20838]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20845]
// not
@SP
A=M-1
M=!M
// [20848]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [20853]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20858]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20863]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [20869]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [20875]
// label IF_END0
(Screen.updateLocation$IF_END0)
// [20875]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20879]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20881]
// function Screen.setColor 0
(Screen.setColor)
// [20881]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20888]
// pop static Screen.2
@SP
AM=M-1
D=M
@Screen.2
M=D
// [20893]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20897]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20899]
// function Screen.drawPixel 3
(Screen.drawPixel)
@3
D=A
(LOOP_Screen.drawPixel)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawPixel
D;JGT

// [20908]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20915]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20919]
// lt
@RET_ADDRESS_LT43
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT43)
// [20923]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20930]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [20936]
// gt
@RET_ADDRESS_GT30
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT30)
// [20940]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [20945]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20952]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20956]
// lt
@RET_ADDRESS_LT44
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT44)
// [20960]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [20965]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20972]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [20978]
// gt
@RET_ADDRESS_GT31
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT31)
// [20982]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [20987]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawPixel$IF_TRUE0
D;JNE
// [20992]
// goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP
// [20994]
// label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)
// [20994]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [21000]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL269
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL269)
// [21012]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21017]
// label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
// [21017]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21024]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [21030]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL270
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL270)
// [21042]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [21048]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21055]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21062]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [21068]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL271
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL271)
// [21080]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21085]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [21091]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21098]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [21104]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL272
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL272)
// [21116]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21123]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21128]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [21135]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21143]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21150]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [21156]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21161]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [21166]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21173]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL273
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL273)
// [21185]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21190]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21194]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [21196]
// function Screen.drawConditional 0
(Screen.drawConditional)
// [21196]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21204]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawConditional$IF_TRUE0
D;JNE
// [21209]
// goto IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0;JMP
// [21211]
// label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)
// [21211]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21218]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21225]
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@RET_ADDRESS_CALL274
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL274)
// [21237]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21242]
// goto IF_END0
@Screen.drawConditional$IF_END0
0;JMP
// [21244]
// label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)
// [21244]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21251]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21258]
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@RET_ADDRESS_CALL275
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL275)
// [21270]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21275]
// label IF_END0
(Screen.drawConditional$IF_END0)
// [21275]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21279]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [21281]
// function Screen.drawLine 11
(Screen.drawLine)
@11
D=A
(LOOP_Screen.drawLine)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawLine
D;JGT

// [21290]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21297]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21301]
// lt
@RET_ADDRESS_LT45
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT45)
// [21305]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21313]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [21319]
// gt
@RET_ADDRESS_GT32
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT32)
// [21323]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [21328]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21335]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21339]
// lt
@RET_ADDRESS_LT46
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT46)
// [21343]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [21348]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21357]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [21363]
// gt
@RET_ADDRESS_GT33
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT33)
// [21367]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [21372]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE0
D;JNE
// [21377]
// goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP
// [21379]
// label IF_TRUE0
(Screen.drawLine$IF_TRUE0)
// [21379]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [21385]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL276
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL276)
// [21397]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21402]
// label IF_FALSE0
(Screen.drawLine$IF_FALSE0)
// [21402]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21410]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21417]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21422]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL277
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL277)
// [21434]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [21442]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21451]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21458]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21463]
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@RET_ADDRESS_CALL278
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL278)
// [21475]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [21482]
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
// [21491]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21499]
// lt
@RET_ADDRESS_LT47
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT47)
// [21503]
// pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [21514]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21523]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21532]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21539]
// lt
@RET_ADDRESS_LT48
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT48)
// [21543]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [21548]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21557]
// not
@SP
A=M-1
M=!M
// [21560]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21568]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21575]
// lt
@RET_ADDRESS_LT49
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT49)
// [21579]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [21584]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [21589]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE1
D;JNE
// [21594]
// goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP
// [21596]
// label IF_TRUE1
(Screen.drawLine$IF_TRUE1)
// [21596]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21603]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [21612]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21620]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [21626]
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
// [21635]
// pop argument 2
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
M=D
// [21642]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21649]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [21658]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21667]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [21673]
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
// [21682]
// pop argument 3
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
A=A+1
M=D
// [21690]
// label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
// [21690]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21699]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE2
D;JNE
// [21704]
// goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP
// [21706]
// label IF_TRUE2
(Screen.drawLine$IF_TRUE2)
// [21706]
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
// [21715]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [21724]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21732]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [21740]
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
// [21749]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [21756]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21763]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [21769]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21776]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [21782]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21791]
// pop local 8
@LCL
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [21803]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21810]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21818]
// gt
@RET_ADDRESS_GT34
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT34)
// [21822]
// pop local 7
@LCL
D=M
@7
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [21834]
// goto IF_END2
@Screen.drawLine$IF_END2
0;JMP
// [21836]
// label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
// [21836]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21843]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [21849]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21856]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [21862]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21870]
// pop local 8
@LCL
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [21882]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21889]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21898]
// gt
@RET_ADDRESS_GT35
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT35)
// [21902]
// pop local 7
@LCL
D=M
@7
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [21914]
// label IF_END2
(Screen.drawLine$IF_END2)
// [21914]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [21920]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21928]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL279
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL279)
// [21940]
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
// [21949]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21954]
// pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [21964]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [21970]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21978]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL280
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL280)
// [21990]
// pop local 9
@LCL
D=M
@9
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [22002]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [22008]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22016]
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
// [22025]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22030]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL281
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL281)
// [22042]
// pop local 10
@LCL
D=M
@10
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [22054]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22061]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22068]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22077]
// call Screen.drawConditional 3
@3
D=A
@R13
M=D
@Screen.drawConditional
D=A
@R14
M=D
@RET_ADDRESS_CALL282
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL282)
// [22089]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [22094]
// label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)
// [22094]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22101]
// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22110]
// lt
@RET_ADDRESS_LT50
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT50)
// [22114]
// not
@SP
A=M-1
M=!M
// [22117]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawLine$WHILE_END0
D;JNE
// [22122]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22131]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22135]
// lt
@RET_ADDRESS_LT51
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT51)
// [22139]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE3
D;JNE
// [22144]
// goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP
// [22146]
// label IF_TRUE3
(Screen.drawLine$IF_TRUE3)
// [22146]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22155]
// push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22164]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22169]
// pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [22179]
// goto IF_END3
@Screen.drawLine$IF_END3
0;JMP
// [22181]
// label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
// [22181]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22190]
// push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22199]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22204]
// pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [22214]
// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22223]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE4
D;JNE
// [22228]
// goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP
// [22230]
// label IF_TRUE4
(Screen.drawLine$IF_TRUE4)
// [22230]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22237]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22241]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22246]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [22252]
// goto IF_END4
@Screen.drawLine$IF_END4
0;JMP
// [22254]
// label IF_FALSE4
(Screen.drawLine$IF_FALSE4)
// [22254]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22261]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22265]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22270]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [22276]
// label IF_END4
(Screen.drawLine$IF_END4)
// [22276]
// label IF_END3
(Screen.drawLine$IF_END3)
// [22276]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22283]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22287]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22292]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [22298]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22305]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22312]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22321]
// call Screen.drawConditional 3
@3
D=A
@R13
M=D
@Screen.drawConditional
D=A
@R14
M=D
@RET_ADDRESS_CALL283
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL283)
// [22333]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [22338]
// goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP
// [22340]
// label WHILE_END0
(Screen.drawLine$WHILE_END0)
// [22340]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22344]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [22346]
// function Screen.drawRectangle 9
(Screen.drawRectangle)
@9
D=A
(LOOP_Screen.drawRectangle)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawRectangle
D;JGT

// [22355]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22362]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22370]
// gt
@RET_ADDRESS_GT36
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT36)
// [22374]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22381]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22390]
// gt
@RET_ADDRESS_GT37
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT37)
// [22394]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22399]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22406]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22410]
// lt
@RET_ADDRESS_LT52
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT52)
// [22414]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22419]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22427]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [22433]
// gt
@RET_ADDRESS_GT38
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT38)
// [22437]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22442]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22449]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22453]
// lt
@RET_ADDRESS_LT53
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT53)
// [22457]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22462]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22471]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [22477]
// gt
@RET_ADDRESS_GT39
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT39)
// [22481]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22486]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE0
D;JNE
// [22491]
// goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP
// [22493]
// label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
// [22493]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [22499]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL284
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL284)
// [22511]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [22516]
// label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
// [22516]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22523]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22529]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL285
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL285)
// [22541]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [22549]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22556]
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
// [22565]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22571]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL286
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL286)
// [22583]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22588]
// pop local 7
@LCL
D=M
@7
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [22600]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22608]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22614]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL287
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL287)
// [22626]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [22635]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22643]
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
// [22652]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22658]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL288
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL288)
// [22670]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22675]
// pop local 8
@LCL
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [22687]
// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22696]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [22702]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22707]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22712]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22719]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22723]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22728]
// not
@SP
A=M-1
M=!M
// [22731]
// pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [22742]
// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22751]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22755]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22760]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [22766]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22771]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22776]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22783]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22787]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22792]
// pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [22802]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22809]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [22815]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL289
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL289)
// [22827]
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
// [22836]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22841]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [22847]
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
// [22856]
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
// [22865]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22870]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [22877]
// label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
// [22877]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22884]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22893]
// gt
@RET_ADDRESS_GT40
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT40)
// [22897]
// not
@SP
A=M-1
M=!M
// [22900]
// not
@SP
A=M-1
M=!M
// [22903]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawRectangle$WHILE_END0
D;JNE
// [22908]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22915]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22923]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22928]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [22934]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22942]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22946]
// eq
@RET_ADDRESS_EQ33
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ33)
// [22950]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE1
D;JNE
// [22955]
// goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP
// [22957]
// label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
// [22957]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22964]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22973]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [22982]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [22987]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL290
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL290)
// [22999]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23004]
// goto IF_END1
@Screen.drawRectangle$IF_END1
0;JMP
// [23006]
// label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
// [23006]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23013]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23022]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL291
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL291)
// [23034]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23039]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23046]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23050]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23055]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [23061]
// label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
// [23061]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23068]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23075]
// lt
@RET_ADDRESS_LT54
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT54)
// [23079]
// not
@SP
A=M-1
M=!M
// [23082]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Screen.drawRectangle$WHILE_END1
D;JNE
// [23087]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23094]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23098]
// neg
@SP
A=M-1
M=-M
// [23101]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL292
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL292)
// [23113]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23118]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23125]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23129]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23134]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [23140]
// goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP
// [23142]
// label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
// [23142]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23149]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23158]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL293
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL293)
// [23170]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23175]
// label IF_END1
(Screen.drawRectangle$IF_END1)
// [23175]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23182]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23186]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23191]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [23197]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23204]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [23210]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23215]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23223]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23228]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [23234]
// goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP
// [23236]
// label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
// [23236]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23240]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [23242]
// function Screen.drawHorizontal 11
(Screen.drawHorizontal)
@11
D=A
(LOOP_Screen.drawHorizontal)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawHorizontal
D;JGT

// [23251]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23258]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23266]
// call Math.min 2
@2
D=A
@R13
M=D
@Math.min
D=A
@R14
M=D
@RET_ADDRESS_CALL294
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL294)
// [23278]
// pop local 7
@LCL
D=M
@7
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [23290]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23297]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23305]
// call Math.max 2
@2
D=A
@R13
M=D
@Math.max
D=A
@R14
M=D
@RET_ADDRESS_CALL295
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL295)
// [23317]
// pop local 8
@LCL
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [23329]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23336]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23340]
// neg
@SP
A=M-1
M=-M
// [23343]
// gt
@RET_ADDRESS_GT41
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT41)
// [23347]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23354]
// push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// [23360]
// lt
@RET_ADDRESS_LT55
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT55)
// [23364]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [23369]
// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23378]
// push constant 512
@512
D=A
@SP
AM=M+1
A=A-1
M=D
// [23384]
// lt
@RET_ADDRESS_LT56
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT56)
// [23388]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [23393]
// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23402]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23406]
// neg
@SP
A=M-1
M=-M
// [23409]
// gt
@RET_ADDRESS_GT42
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT42)
// [23413]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [23418]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawHorizontal$IF_TRUE0
D;JNE
// [23423]
// goto IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0;JMP
// [23425]
// label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)
// [23425]
// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23434]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23438]
// call Math.max 2
@2
D=A
@R13
M=D
@Math.max
D=A
@R14
M=D
@RET_ADDRESS_CALL296
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL296)
// [23450]
// pop local 7
@LCL
D=M
@7
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [23462]
// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23471]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [23477]
// call Math.min 2
@2
D=A
@R13
M=D
@Math.min
D=A
@R14
M=D
@RET_ADDRESS_CALL297
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL297)
// [23489]
// pop local 8
@LCL
D=M
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [23501]
// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23510]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [23516]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL298
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL298)
// [23528]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [23534]
// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23543]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23550]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [23556]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL299
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL299)
// [23568]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23573]
// pop local 9
@LCL
D=M
@9
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [23585]
// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23594]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [23600]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL300
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL300)
// [23612]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [23619]
// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23628]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23636]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [23642]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL301
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL301)
// [23654]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23659]
// pop local 10
@LCL
D=M
@10
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// [23671]
// push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23680]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [23686]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23691]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23696]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23703]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23707]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23712]
// not
@SP
A=M-1
M=!M
// [23715]
// pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [23725]
// push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23734]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23738]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23743]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [23749]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23754]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23759]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23766]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23770]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23775]
// pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [23784]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23791]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [23797]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL302
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL302)
// [23809]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23816]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23821]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [23827]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23835]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23842]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23847]
// pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// [23858]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23865]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23874]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23879]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [23887]
// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23896]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23900]
// eq
@RET_ADDRESS_EQ34
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ34)
// [23904]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen.drawHorizontal$IF_TRUE1
D;JNE
// [23909]
// goto IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0;JMP
// [23911]
// label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)
// [23911]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23918]
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
// [23927]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23936]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [23941]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL303
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL303)
// [23953]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23958]
// goto IF_END1
@Screen.drawHorizontal$IF_END1
0;JMP
// [23960]
// label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)
// [23960]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23967]
// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [23976]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL304
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL304)
// [23988]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23993]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24000]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [24004]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24009]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [24015]
// label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)
// [24015]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24022]
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
// [24031]
// lt
@RET_ADDRESS_LT57
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT57)
// [24035]
// not
@SP
A=M-1
M=!M
// [24038]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawHorizontal$WHILE_END0
D;JNE
// [24043]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24050]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [24054]
// neg
@SP
A=M-1
M=-M
// [24057]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL305
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL305)
// [24069]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24074]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24081]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [24085]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24090]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [24096]
// goto WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0;JMP
// [24098]
// label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)
// [24098]
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
// [24107]
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
// [24116]
// call Screen.updateLocation 2
@2
D=A
@R13
M=D
@Screen.updateLocation
D=A
@R14
M=D
@RET_ADDRESS_CALL306
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL306)
// [24128]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24133]
// label IF_END1
(Screen.drawHorizontal$IF_END1)
// [24133]
// label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)
// [24133]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24137]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24139]
// function Screen.drawSymetric 0
(Screen.drawSymetric)
// [24139]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24146]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [24155]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24160]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24167]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24175]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24180]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24187]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24195]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24200]
// call Screen.drawHorizontal 3
@3
D=A
@R13
M=D
@Screen.drawHorizontal
D=A
@R14
M=D
@RET_ADDRESS_CALL307
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL307)
// [24212]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24217]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24224]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [24233]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24238]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24245]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24253]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24258]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24265]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24273]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24278]
// call Screen.drawHorizontal 3
@3
D=A
@R13
M=D
@Screen.drawHorizontal
D=A
@R14
M=D
@RET_ADDRESS_CALL308
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL308)
// [24290]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24295]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24302]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24310]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24315]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24322]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [24331]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24336]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24343]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [24352]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24357]
// call Screen.drawHorizontal 3
@3
D=A
@R13
M=D
@Screen.drawHorizontal
D=A
@R14
M=D
@RET_ADDRESS_CALL309
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL309)
// [24369]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24374]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24381]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24389]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24394]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24401]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [24410]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24415]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24422]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [24431]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24436]
// call Screen.drawHorizontal 3
@3
D=A
@R13
M=D
@Screen.drawHorizontal
D=A
@R14
M=D
@RET_ADDRESS_CALL310
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL310)
// [24448]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24453]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24457]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24459]
// function Screen.drawCircle 3
(Screen.drawCircle)
@3
D=A
(LOOP_Screen.drawCircle)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawCircle
D;JGT

// [24468]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24475]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24479]
// lt
@RET_ADDRESS_LT58
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT58)
// [24483]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24490]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [24496]
// gt
@RET_ADDRESS_GT43
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT43)
// [24500]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [24505]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24512]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24516]
// lt
@RET_ADDRESS_LT59
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT59)
// [24520]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [24525]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24532]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [24538]
// gt
@RET_ADDRESS_GT44
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT44)
// [24542]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [24547]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawCircle$IF_TRUE0
D;JNE
// [24552]
// goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0;JMP
// [24554]
// label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)
// [24554]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [24560]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL311
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL311)
// [24572]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24577]
// label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)
// [24577]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24584]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24592]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24597]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24601]
// lt
@RET_ADDRESS_LT60
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT60)
// [24605]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24612]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24620]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24625]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [24631]
// gt
@RET_ADDRESS_GT45
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT45)
// [24635]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [24640]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24647]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24655]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24660]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24664]
// lt
@RET_ADDRESS_LT61
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT61)
// [24668]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [24673]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24680]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24688]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24693]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [24699]
// gt
@RET_ADDRESS_GT46
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT46)
// [24703]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [24708]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen.drawCircle$IF_TRUE1
D;JNE
// [24713]
// goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0;JMP
// [24715]
// label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)
// [24715]
// push constant 13
@13
D=A
@SP
AM=M+1
A=A-1
M=D
// [24721]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL312
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL312)
// [24733]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24738]
// label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)
// [24738]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24746]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [24752]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [24756]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24764]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24769]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [24776]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24783]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24790]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24797]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24804]
// call Screen.drawSymetric 4
@4
D=A
@R13
M=D
@Screen.drawSymetric
D=A
@R14
M=D
@RET_ADDRESS_CALL313
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL313)
// [24816]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24821]
// label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)
// [24821]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24828]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24835]
// gt
@RET_ADDRESS_GT47
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT47)
// [24839]
// not
@SP
A=M-1
M=!M
// [24842]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawCircle$WHILE_END0
D;JNE
// [24847]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24855]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24859]
// lt
@RET_ADDRESS_LT62
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT62)
// [24863]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Screen.drawCircle$IF_TRUE2
D;JNE
// [24868]
// goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0;JMP
// [24870]
// label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)
// [24870]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24878]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [24884]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24891]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL314
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL314)
// [24903]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24908]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [24914]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24919]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [24926]
// goto IF_END2
@Screen.drawCircle$IF_END2
0;JMP
// [24928]
// label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)
// [24928]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24936]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [24942]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24949]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24956]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24961]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL315
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL315)
// [24973]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24978]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [24984]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24989]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [24996]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25003]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25007]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [25012]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [25018]
// label IF_END2
(Screen.drawCircle$IF_END2)
// [25018]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25025]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25029]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25034]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25040]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25047]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25054]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25061]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25068]
// call Screen.drawSymetric 4
@4
D=A
@R13
M=D
@Screen.drawSymetric
D=A
@R14
M=D
@RET_ADDRESS_CALL316
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL316)
// [25080]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25085]
// goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP
// [25087]
// label WHILE_END0
(Screen.drawCircle$WHILE_END0)
// [25087]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25091]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [25093]
// function Memory.init 0
(Memory.init)
// [25093]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25097]
// pop static Memory.0
@SP
AM=M-1
D=M
@Memory.0
M=D
// [25102]
// push constant 2048
@2048
D=A
@SP
AM=M+1
A=A-1
M=D
// [25108]
// push static Memory.0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [25114]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25119]
// push constant 14334
@14334
D=A
@SP
AM=M+1
A=A-1
M=D
// [25125]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25130]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25135]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25141]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25147]
// push constant 2049
@2049
D=A
@SP
AM=M+1
A=A-1
M=D
// [25153]
// push static Memory.0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [25159]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25164]
// push constant 2050
@2050
D=A
@SP
AM=M+1
A=A-1
M=D
// [25170]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25175]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25180]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25186]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25192]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25196]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [25198]
// function Memory.peek 0
(Memory.peek)
// [25198]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25205]
// push static Memory.0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [25211]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25216]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25221]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25228]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [25230]
// function Memory.poke 0
(Memory.poke)
// [25230]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25237]
// push static Memory.0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [25243]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25248]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25255]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25260]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25265]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25271]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25277]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25281]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [25283]
// function Memory.alloc 1
(Memory.alloc)
@SP
AM=M+1
A=A-1
M=0
// [25287]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25294]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25298]
// lt
@RET_ADDRESS_LT63
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT63)
// [25302]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE0
D;JNE
// [25307]
// goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP
// [25309]
// label IF_TRUE0
(Memory.alloc$IF_TRUE0)
// [25309]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [25315]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL317
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL317)
// [25327]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25332]
// label IF_FALSE0
(Memory.alloc$IF_FALSE0)
// [25332]
// push constant 2048
@2048
D=A
@SP
AM=M+1
A=A-1
M=D
// [25338]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25344]
// label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
// [25344]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25348]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25355]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25360]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25365]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25372]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25379]
// lt
@RET_ADDRESS_LT64
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT64)
// [25383]
// not
@SP
A=M-1
M=!M
// [25386]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Memory.alloc$WHILE_END0
D;JNE
// [25391]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25395]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25402]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25407]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25412]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25419]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25425]
// goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP
// [25427]
// label WHILE_END0
(Memory.alloc$WHILE_END0)
// [25427]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25434]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25441]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25446]
// push constant 16379
@16379
D=A
@SP
AM=M+1
A=A-1
M=D
// [25452]
// gt
@RET_ADDRESS_GT48
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT48)
// [25456]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE1
D;JNE
// [25461]
// goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP
// [25463]
// label IF_TRUE1
(Memory.alloc$IF_TRUE1)
// [25463]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [25469]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL318
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL318)
// [25481]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25486]
// label IF_FALSE1
(Memory.alloc$IF_FALSE1)
// [25486]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25490]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25497]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25502]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25507]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25514]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25521]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25527]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25532]
// gt
@RET_ADDRESS_GT49
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT49)
// [25536]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE2
D;JNE
// [25541]
// goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP
// [25543]
// label IF_TRUE2
(Memory.alloc$IF_TRUE2)
// [25543]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25550]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25556]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25561]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25568]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25573]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25577]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25584]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25589]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25594]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25601]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25608]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [25613]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25619]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [25624]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25629]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25634]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25640]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25646]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25650]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25657]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25662]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25667]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25674]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25681]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25687]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25692]
// eq
@RET_ADDRESS_EQ35
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ35)
// [25696]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE3
D;JNE
// [25701]
// goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP
// [25703]
// label IF_TRUE3
(Memory.alloc$IF_TRUE3)
// [25703]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25710]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [25716]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25721]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25728]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25733]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25740]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25747]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25752]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [25758]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25763]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25768]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25773]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25779]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25785]
// goto IF_END3
@Memory.alloc$IF_END3
0;JMP
// [25787]
// label IF_FALSE3
(Memory.alloc$IF_FALSE3)
// [25787]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25794]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [25800]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25805]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25812]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25817]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25821]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25828]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25833]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25838]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25845]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25850]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25855]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25861]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25867]
// label IF_END3
(Memory.alloc$IF_END3)
// [25867]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [25871]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25878]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25883]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25890]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25897]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25902]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25908]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25913]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25918]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25923]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25929]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25935]
// label IF_FALSE2
(Memory.alloc$IF_FALSE2)
// [25935]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25939]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25946]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25951]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25955]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25960]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25965]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25971]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25977]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25984]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25990]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25995]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [25997]
// function Memory.deAlloc 2
(Memory.deAlloc)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [26004]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26011]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [26017]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [26022]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [26028]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26032]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26039]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26044]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26049]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26056]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [26062]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26066]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26073]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26078]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26083]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26090]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26094]
// eq
@RET_ADDRESS_EQ36
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ36)
// [26098]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE
// [26103]
// goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP
// [26105]
// label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
// [26105]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26109]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26116]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26121]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26125]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26132]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26137]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26142]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26149]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26156]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [26161]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [26167]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [26172]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26177]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26182]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [26188]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [26194]
// goto IF_END0
@Memory.deAlloc$IF_END0
0;JMP
// [26196]
// label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
// [26196]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26200]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26207]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26212]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26216]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26223]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26228]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26233]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26240]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26247]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [26252]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26256]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26263]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26268]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26273]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26280]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26285]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26290]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26295]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [26301]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [26307]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26311]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26318]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26323]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26328]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26335]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26342]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [26348]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26353]
// eq
@RET_ADDRESS_EQ37
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ37)
// [26357]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE1
D;JNE
// [26362]
// goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP
// [26364]
// label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)
// [26364]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26368]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26375]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26380]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26387]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [26393]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26398]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26403]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26408]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [26414]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [26420]
// goto IF_END1
@Memory.deAlloc$IF_END1
0;JMP
// [26422]
// label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)
// [26422]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26426]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26433]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26438]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26442]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26449]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26454]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26459]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26466]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26471]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [26476]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [26482]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [26488]
// label IF_END1
(Memory.deAlloc$IF_END1)
// [26488]
// label IF_END0
(Memory.deAlloc$IF_END0)
// [26488]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26492]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26494]
// function Bat.new 0
(Bat.new)
// [26494]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [26500]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL319
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL319)
// [26512]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26517]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26524]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [26530]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26537]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [26543]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26551]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [26558]
// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [26567]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [26575]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [26581]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [26590]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26596]
// call Bat.show 1
@1
D=A
@R13
M=D
@Bat.show
D=A
@R14
M=D
@RET_ADDRESS_CALL320
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL320)
// [26608]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26613]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26619]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26621]
// function Bat.dispose 0
(Bat.dispose)
// [26621]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26628]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26633]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26639]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL321
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL321)
// [26651]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26656]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26660]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26662]
// function Bat.show 0
(Bat.show)
// [26662]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26669]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26674]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26678]
// neg
@SP
A=M-1
M=-M
// [26681]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL322
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL322)
// [26693]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26698]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26704]
// call Bat.draw 1
@1
D=A
@R13
M=D
@Bat.draw
D=A
@R14
M=D
@RET_ADDRESS_CALL323
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL323)
// [26716]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26721]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26725]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26727]
// function Bat.hide 0
(Bat.hide)
// [26727]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26734]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26739]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26743]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL324
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL324)
// [26755]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26760]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26766]
// call Bat.draw 1
@1
D=A
@R13
M=D
@Bat.draw
D=A
@R14
M=D
@RET_ADDRESS_CALL325
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL325)
// [26778]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26783]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26787]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26789]
// function Bat.draw 0
(Bat.draw)
// [26789]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26796]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26801]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26808]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26815]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26822]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26830]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26835]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26842]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [26851]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26856]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL326
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL326)
// [26868]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26873]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26877]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26879]
// function Bat.setDirection 0
(Bat.setDirection)
// [26879]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26886]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26891]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26898]
// pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// [26907]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26911]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26913]
// function Bat.getLeft 0
(Bat.getLeft)
// [26913]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26920]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26925]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26932]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26934]
// function Bat.getRight 0
(Bat.getRight)
// [26934]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26941]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26946]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26953]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26961]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26966]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26968]
// function Bat.setWidth 0
(Bat.setWidth)
// [26968]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26975]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26980]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26986]
// call Bat.hide 1
@1
D=A
@R13
M=D
@Bat.hide
D=A
@R14
M=D
@RET_ADDRESS_CALL327
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL327)
// [26998]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27003]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27010]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [27017]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [27023]
// call Bat.show 1
@1
D=A
@R13
M=D
@Bat.show
D=A
@R14
M=D
@RET_ADDRESS_CALL328
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL328)
// [27035]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27040]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27044]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [27046]
// function Bat.move 0
(Bat.move)
// [27046]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27053]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [27058]
// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [27067]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [27071]
// eq
@RET_ADDRESS_EQ38
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ38)
// [27075]
// not
@SP
A=M-1
M=!M
// [27078]
// if-goto Bat.move.IF_0.F_CASE
@SP
AM=M-1
D=M
@Bat.move$Bat.move.IF_0.F_CASE
D;JNE
// [27083]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27090]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [27096]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27101]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [27107]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27114]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27118]
// lt
@RET_ADDRESS_LT65
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT65)
// [27122]
// not
@SP
A=M-1
M=!M
// [27125]
// if-goto Bat.move.IF_1.F_CASE
@SP
AM=M-1
D=M
@Bat.move$Bat.move.IF_1.F_CASE
D;JNE
// [27130]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27134]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [27140]
// goto Bat.move.IF_1.CONT
@Bat.move$Bat.move.IF_1.CONT
0;JMP
// [27142]
// label Bat.move.IF_1.F_CASE
(Bat.move$Bat.move.IF_1.F_CASE)
// [27142]
// label Bat.move.IF_1.CONT
(Bat.move$Bat.move.IF_1.CONT)
// [27142]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27146]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL329
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL329)
// [27158]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27163]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27170]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27178]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27183]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [27187]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27192]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27199]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27206]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27214]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27219]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [27225]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27230]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27237]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [27246]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27251]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL330
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL330)
// [27263]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27268]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [27272]
// neg
@SP
A=M-1
M=-M
// [27275]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL331
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL331)
// [27287]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27292]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27299]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27306]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27313]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [27319]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27324]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27331]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [27340]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27345]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL332
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL332)
// [27357]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27362]
// goto Bat.move.IF_0.CONT
@Bat.move$Bat.move.IF_0.CONT
0;JMP
// [27364]
// label Bat.move.IF_0.F_CASE
(Bat.move$Bat.move.IF_0.F_CASE)
// [27364]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27371]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [27377]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27382]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [27388]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27395]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27403]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27408]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [27414]
// gt
@RET_ADDRESS_GT50
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT50)
// [27418]
// not
@SP
A=M-1
M=!M
// [27421]
// if-goto Bat.move.IF_2.F_CASE
@SP
AM=M-1
D=M
@Bat.move$Bat.move.IF_2.F_CASE
D;JNE
// [27426]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [27432]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27440]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27445]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [27451]
// goto Bat.move.IF_2.CONT
@Bat.move$Bat.move.IF_2.CONT
0;JMP
// [27453]
// label Bat.move.IF_2.F_CASE
(Bat.move$Bat.move.IF_2.F_CASE)
// [27453]
// label Bat.move.IF_2.CONT
(Bat.move$Bat.move.IF_2.CONT)
// [27453]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27457]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL333
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL333)
// [27469]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27474]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27481]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [27487]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27492]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27499]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27506]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [27510]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27515]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27522]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [27531]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27536]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL334
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL334)
// [27548]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27553]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [27557]
// neg
@SP
A=M-1
M=-M
// [27560]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL335
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL335)
// [27572]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27577]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27584]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27592]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27597]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [27603]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27608]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27615]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27622]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27630]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27635]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27642]
// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [27651]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27656]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL336
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL336)
// [27668]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27673]
// label Bat.move.IF_0.CONT
(Bat.move$Bat.move.IF_0.CONT)
// [27673]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27677]
// return
@VM_SUBROUTINE_RETURN
0;JMP
