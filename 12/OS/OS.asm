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
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [401]
// not
@SP
A=M-1
M=!M
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
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Ball.setDestination$IF_TRUE0
D;JNE
// [822]
// goto IF_FALSE0
@Ball.setDestination$IF_FALSE0
0;JMP
// [824]
// label IF_TRUE0
(Ball.setDestination$IF_TRUE0)
// [824]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [831]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [838]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [845]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [851]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [859]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [865]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [872]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [880]
// lt
@RET_ADDRESS_LT1
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT1)
// [884]
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
// [896]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [903]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [910]
// lt
@RET_ADDRESS_LT2
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT2)
// [914]
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
// [926]
// goto IF_END0
@Ball.setDestination$IF_END0
0;JMP
// [928]
// label IF_FALSE0
(Ball.setDestination$IF_FALSE0)
// [928]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [935]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [942]
// lt
@RET_ADDRESS_LT3
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT3)
// [946]
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
// [958]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [965]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [973]
// lt
@RET_ADDRESS_LT4
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT4)
// [977]
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
// [989]
// label IF_END0
(Ball.setDestination$IF_END0)
// [989]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [995]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1002]
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
// [1014]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1021]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1026]
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
// [1035]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [1041]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1048]
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
// [1060]
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
// [1070]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [1076]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1083]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1090]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1095]
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
// [1107]
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
// [1118]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1122]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [1124]
// function Ball.move 0
(Ball.move)
// [1124]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1131]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [1136]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [1142]
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
// [1154]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [1159]
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
// [1168]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1172]
// lt
@RET_ADDRESS_LT5
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT5)
// [1176]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE0
D;JNE
// [1181]
// goto IF_FALSE0
@Ball.move$IF_FALSE0
0;JMP
// [1183]
// label IF_TRUE0
(Ball.move$IF_TRUE0)
// [1183]
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
// [1192]
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
// [1201]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1206]
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
// [1215]
// goto IF_END0
@Ball.move$IF_END0
0;JMP
// [1217]
// label IF_FALSE0
(Ball.move$IF_FALSE0)
// [1217]
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
// [1226]
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
// [1235]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1240]
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
// [1249]
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
// [1258]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE1
D;JNE
// [1263]
// goto IF_FALSE1
@Ball.move$IF_FALSE1
0;JMP
// [1265]
// label IF_TRUE1
(Ball.move$IF_TRUE1)
// [1265]
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
// [1274]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE2
D;JNE
// [1279]
// goto IF_FALSE2
@Ball.move$IF_FALSE2
0;JMP
// [1281]
// label IF_TRUE2
(Ball.move$IF_TRUE2)
// [1281]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1288]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1294]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1299]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1305]
// goto IF_END2
@Ball.move$IF_END2
0;JMP
// [1307]
// label IF_FALSE2
(Ball.move$IF_FALSE2)
// [1307]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1314]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1320]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1325]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1331]
// label IF_END2
(Ball.move$IF_END2)
// [1331]
// goto IF_END1
@Ball.move$IF_END1
0;JMP
// [1333]
// label IF_FALSE1
(Ball.move$IF_FALSE1)
// [1333]
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
// [1342]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE3
D;JNE
// [1347]
// goto IF_FALSE3
@Ball.move$IF_FALSE3
0;JMP
// [1349]
// label IF_TRUE3
(Ball.move$IF_TRUE3)
// [1349]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1356]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1362]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1367]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1373]
// goto IF_END3
@Ball.move$IF_END3
0;JMP
// [1375]
// label IF_FALSE3
(Ball.move$IF_FALSE3)
// [1375]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1382]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1388]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1393]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1399]
// label IF_END3
(Ball.move$IF_END3)
// [1399]
// label IF_END1
(Ball.move$IF_END1)
// [1399]
// label IF_END0
(Ball.move$IF_END0)
// [1399]
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
// [1408]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE4
D;JNE
// [1413]
// goto IF_FALSE4
@Ball.move$IF_FALSE4
0;JMP
// [1415]
// label IF_TRUE4
(Ball.move$IF_TRUE4)
// [1415]
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
// [1424]
// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE5
D;JNE
// [1429]
// goto IF_FALSE5
@Ball.move$IF_FALSE5
0;JMP
// [1431]
// label IF_TRUE5
(Ball.move$IF_TRUE5)
// [1431]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1438]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1444]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1449]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1455]
// goto IF_END5
@Ball.move$IF_END5
0;JMP
// [1457]
// label IF_FALSE5
(Ball.move$IF_FALSE5)
// [1457]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1464]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1470]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [1475]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1481]
// label IF_END5
(Ball.move$IF_END5)
// [1481]
// goto IF_END4
@Ball.move$IF_END4
0;JMP
// [1483]
// label IF_FALSE4
(Ball.move$IF_FALSE4)
// [1483]
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
// [1492]
// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE6
D;JNE
// [1497]
// goto IF_FALSE6
@Ball.move$IF_FALSE6
0;JMP
// [1499]
// label IF_TRUE6
(Ball.move$IF_TRUE6)
// [1499]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1506]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1512]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1517]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1523]
// goto IF_END6
@Ball.move$IF_END6
0;JMP
// [1525]
// label IF_FALSE6
(Ball.move$IF_FALSE6)
// [1525]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1532]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1538]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [1543]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1549]
// label IF_END6
(Ball.move$IF_END6)
// [1549]
// label IF_END4
(Ball.move$IF_END4)
// [1549]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1556]
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
// [1565]
// gt
@RET_ADDRESS_GT0
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT0)
// [1569]
// not
@SP
A=M-1
M=!M
// [1572]
// if-goto IF_TRUE7
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE7
D;JNE
// [1577]
// goto IF_FALSE7
@Ball.move$IF_FALSE7
0;JMP
// [1579]
// label IF_TRUE7
(Ball.move$IF_TRUE7)
// [1579]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [1583]
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
// [1595]
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
// [1604]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1610]
// label IF_FALSE7
(Ball.move$IF_FALSE7)
// [1610]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1617]
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
// [1626]
// lt
@RET_ADDRESS_LT6
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT6)
// [1630]
// not
@SP
A=M-1
M=!M
// [1633]
// if-goto IF_TRUE8
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE8
D;JNE
// [1638]
// goto IF_FALSE8
@Ball.move$IF_FALSE8
0;JMP
// [1640]
// label IF_TRUE8
(Ball.move$IF_TRUE8)
// [1640]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [1646]
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
// [1658]
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
// [1667]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [1673]
// label IF_FALSE8
(Ball.move$IF_FALSE8)
// [1673]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1680]
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
// [1689]
// gt
@RET_ADDRESS_GT1
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT1)
// [1693]
// not
@SP
A=M-1
M=!M
// [1696]
// if-goto IF_TRUE9
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE9
D;JNE
// [1701]
// goto IF_FALSE9
@Ball.move$IF_FALSE9
0;JMP
// [1703]
// label IF_TRUE9
(Ball.move$IF_TRUE9)
// [1703]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [1709]
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
// [1721]
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
// [1730]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1736]
// label IF_FALSE9
(Ball.move$IF_FALSE9)
// [1736]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1743]
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
// [1752]
// lt
@RET_ADDRESS_LT7
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT7)
// [1756]
// not
@SP
A=M-1
M=!M
// [1759]
// if-goto IF_TRUE10
@SP
AM=M-1
D=M
@Ball.move$IF_TRUE10
D;JNE
// [1764]
// goto IF_FALSE10
@Ball.move$IF_FALSE10
0;JMP
// [1766]
// label IF_TRUE10
(Ball.move$IF_TRUE10)
// [1766]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [1772]
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
// [1784]
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
// [1793]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [1799]
// label IF_FALSE10
(Ball.move$IF_FALSE10)
// [1799]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [1805]
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
// [1817]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [1822]
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
// [1831]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [1833]
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

// [1842]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [1849]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [1854]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1862]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [1868]
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
// [1880]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [1887]
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
// [1896]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [1902]
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
// [1914]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [1922]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1929]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1933]
// eq
@RET_ADDRESS_EQ0
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ0)
// [1937]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Ball.bounce$IF_TRUE0
D;JNE
// [1942]
// goto IF_FALSE0
@Ball.bounce$IF_FALSE0
0;JMP
// [1944]
// label IF_TRUE0
(Ball.bounce$IF_TRUE0)
// [1944]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [1950]
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
// [1959]
// goto IF_END0
@Ball.bounce$IF_END0
0;JMP
// [1961]
// label IF_FALSE0
(Ball.bounce$IF_FALSE0)
// [1961]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1969]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [1973]
// lt
@RET_ADDRESS_LT8
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT8)
// [1977]
// not
@SP
A=M-1
M=!M
// [1980]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [1987]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [1991]
// eq
@RET_ADDRESS_EQ1
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ1)
// [1995]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [2000]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2008]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2012]
// lt
@RET_ADDRESS_LT9
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT9)
// [2016]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2023]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [2027]
// neg
@SP
A=M-1
M=-M
// [2030]
// eq
@RET_ADDRESS_EQ2
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ2)
// [2034]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [2039]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [2044]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Ball.bounce$IF_TRUE1
D;JNE
// [2049]
// goto IF_FALSE1
@Ball.bounce$IF_FALSE1
0;JMP
// [2051]
// label IF_TRUE1
(Ball.bounce$IF_TRUE1)
// [2051]
// push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// [2057]
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
// [2066]
// goto IF_END1
@Ball.bounce$IF_END1
0;JMP
// [2068]
// label IF_FALSE1
(Ball.bounce$IF_FALSE1)
// [2068]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [2074]
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
// [2083]
// label IF_END1
(Ball.bounce$IF_END1)
// [2083]
// label IF_END0
(Ball.bounce$IF_END0)
// [2083]
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
// [2092]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [2096]
// eq
@RET_ADDRESS_EQ3
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ3)
// [2100]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Ball.bounce$IF_TRUE2
D;JNE
// [2105]
// goto IF_FALSE2
@Ball.bounce$IF_FALSE2
0;JMP
// [2107]
// label IF_TRUE2
(Ball.bounce$IF_TRUE2)
// [2107]
// push constant 506
@506
D=A
@SP
AM=M+1
A=A-1
M=D
// [2113]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2119]
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
// [2128]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [2134]
// neg
@SP
A=M-1
M=-M
// [2137]
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
// [2149]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2157]
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
// [2169]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2175]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2182]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2189]
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
// [2198]
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
// [2210]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2215]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2221]
// goto IF_END2
@Ball.bounce$IF_END2
0;JMP
// [2223]
// label IF_FALSE2
(Ball.bounce$IF_FALSE2)
// [2223]
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
// [2232]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [2238]
// eq
@RET_ADDRESS_EQ4
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ4)
// [2242]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Ball.bounce$IF_TRUE3
D;JNE
// [2247]
// goto IF_FALSE3
@Ball.bounce$IF_FALSE3
0;JMP
// [2249]
// label IF_TRUE3
(Ball.bounce$IF_TRUE3)
// [2249]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2253]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2259]
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
// [2268]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [2274]
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
// [2286]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2294]
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
// [2306]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2312]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2319]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2326]
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
// [2335]
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
// [2347]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2352]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2358]
// goto IF_END3
@Ball.bounce$IF_END3
0;JMP
// [2360]
// label IF_FALSE3
(Ball.bounce$IF_FALSE3)
// [2360]
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
// [2369]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [2375]
// eq
@RET_ADDRESS_EQ5
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ5)
// [2379]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Ball.bounce$IF_TRUE4
D;JNE
// [2384]
// goto IF_FALSE4
@Ball.bounce$IF_FALSE4
0;JMP
// [2386]
// label IF_TRUE4
(Ball.bounce$IF_TRUE4)
// [2386]
// push constant 250
@250
D=A
@SP
AM=M+1
A=A-1
M=D
// [2392]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2398]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2406]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [2412]
// neg
@SP
A=M-1
M=-M
// [2415]
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
// [2427]
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
// [2436]
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
// [2448]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2454]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2461]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2468]
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
// [2477]
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
// [2489]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2494]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2500]
// goto IF_END4
@Ball.bounce$IF_END4
0;JMP
// [2502]
// label IF_FALSE4
(Ball.bounce$IF_FALSE4)
// [2502]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2506]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [2512]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2520]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [2526]
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
// [2538]
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
// [2547]
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
// [2559]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2565]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2572]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2579]
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
// [2588]
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
// [2600]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [2605]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [2611]
// label IF_END4
(Ball.bounce$IF_END4)
// [2611]
// label IF_END3
(Ball.bounce$IF_END3)
// [2611]
// label IF_END2
(Ball.bounce$IF_END2)
// [2611]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [2617]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [2624]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2631]
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
// [2643]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2648]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2652]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [2654]
// function PongGame.new 0
(PongGame.new)
// [2654]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [2660]
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
// [2672]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [2677]
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
// [2689]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2694]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [2700]
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
// [2711]
// push constant 230
@230
D=A
@SP
AM=M+1
A=A-1
M=D
// [2717]
// push constant 229
@229
D=A
@SP
AM=M+1
A=A-1
M=D
// [2723]
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
// [2732]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [2738]
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
// [2750]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [2756]
// push constant 253
@253
D=A
@SP
AM=M+1
A=A-1
M=D
// [2762]
// push constant 222
@222
D=A
@SP
AM=M+1
A=A-1
M=D
// [2768]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2772]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [2778]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2782]
// push constant 229
@229
D=A
@SP
AM=M+1
A=A-1
M=D
// [2788]
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
// [2800]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [2806]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [2813]
// push constant 400
@400
D=A
@SP
AM=M+1
A=A-1
M=D
// [2819]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2823]
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
// [2835]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2840]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2844]
// push constant 238
@238
D=A
@SP
AM=M+1
A=A-1
M=D
// [2850]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [2856]
// push constant 240
@240
D=A
@SP
AM=M+1
A=A-1
M=D
// [2862]
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
// [2874]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2879]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [2885]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [2889]
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
// [2901]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [2906]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [2912]
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
// [2924]
// push constant 83
@83
D=A
@SP
AM=M+1
A=A-1
M=D
// [2930]
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
// [2942]
// push constant 99
@99
D=A
@SP
AM=M+1
A=A-1
M=D
// [2948]
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
// [2960]
// push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// [2966]
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
// [2978]
// push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// [2984]
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
// [2996]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [3002]
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
// [3014]
// push constant 58
@58
D=A
@SP
AM=M+1
A=A-1
M=D
// [3020]
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
// [3032]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [3038]
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
// [3050]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [3056]
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
// [3068]
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
// [3080]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3085]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3089]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [3097]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3101]
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
// [3110]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3114]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [3121]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3125]
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
// [3135]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3141]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3143]
// function PongGame.dispose 0
(PongGame.dispose)
// [3143]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3150]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [3155]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3162]
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
// [3174]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3179]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [3186]
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
// [3198]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3203]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3209]
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
// [3221]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3226]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3230]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3232]
// function PongGame.newInstance 0
(PongGame.newInstance)
// [3232]
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
// [3244]
// pop static PongGame.0
@SP
AM=M-1
D=M
@PongGame.0
M=D
// [3249]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3253]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3255]
// function PongGame.getInstance 0
(PongGame.getInstance)
// [3255]
// push static PongGame.0
@PongGame.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [3261]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3263]
// function PongGame.run 1
(PongGame.run)
@SP
AM=M+1
A=A-1
M=0
// [3267]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3274]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [3279]
// label WHILE_EXP0
(PongGame.run$WHILE_EXP0)
// [3279]
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
// [3288]
// not
@SP
A=M-1
M=!M
// [3291]
// not
@SP
A=M-1
M=!M
// [3294]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@PongGame.run$WHILE_END0
D;JNE
// [3299]
// label WHILE_EXP1
(PongGame.run$WHILE_EXP1)
// [3299]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3306]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3310]
// eq
@RET_ADDRESS_EQ6
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ6)
// [3314]
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
// [3323]
// not
@SP
A=M-1
M=!M
// [3326]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [3331]
// not
@SP
A=M-1
M=!M
// [3334]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@PongGame.run$WHILE_END1
D;JNE
// [3339]
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
// [3351]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [3357]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3364]
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
// [3376]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3381]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3387]
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
// [3399]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3404]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [3410]
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
// [3422]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3427]
// goto WHILE_EXP1
@PongGame.run$WHILE_EXP1
0;JMP
// [3429]
// label WHILE_END1
(PongGame.run$WHILE_END1)
// [3429]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3436]
// push constant 130
@130
D=A
@SP
AM=M+1
A=A-1
M=D
// [3442]
// eq
@RET_ADDRESS_EQ7
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ7)
// [3446]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@PongGame.run$IF_TRUE0
D;JNE
// [3451]
// goto IF_FALSE0
@PongGame.run$IF_FALSE0
0;JMP
// [3453]
// label IF_TRUE0
(PongGame.run$IF_TRUE0)
// [3453]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3460]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [3464]
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
// [3476]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3481]
// goto IF_END0
@PongGame.run$IF_END0
0;JMP
// [3483]
// label IF_FALSE0
(PongGame.run$IF_FALSE0)
// [3483]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3490]
// push constant 132
@132
D=A
@SP
AM=M+1
A=A-1
M=D
// [3496]
// eq
@RET_ADDRESS_EQ8
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ8)
// [3500]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@PongGame.run$IF_TRUE1
D;JNE
// [3505]
// goto IF_FALSE1
@PongGame.run$IF_FALSE1
0;JMP
// [3507]
// label IF_TRUE1
(PongGame.run$IF_TRUE1)
// [3507]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3514]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [3520]
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
// [3532]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3537]
// goto IF_END1
@PongGame.run$IF_END1
0;JMP
// [3539]
// label IF_FALSE1
(PongGame.run$IF_FALSE1)
// [3539]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3546]
// push constant 140
@140
D=A
@SP
AM=M+1
A=A-1
M=D
// [3552]
// eq
@RET_ADDRESS_EQ9
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ9)
// [3556]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@PongGame.run$IF_TRUE2
D;JNE
// [3561]
// goto IF_FALSE2
@PongGame.run$IF_FALSE2
0;JMP
// [3563]
// label IF_TRUE2
(PongGame.run$IF_TRUE2)
// [3563]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3567]
// not
@SP
A=M-1
M=!M
// [3570]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [3578]
// label IF_FALSE2
(PongGame.run$IF_FALSE2)
// [3578]
// label IF_END1
(PongGame.run$IF_END1)
// [3578]
// label IF_END0
(PongGame.run$IF_END0)
// [3578]
// label WHILE_EXP2
(PongGame.run$WHILE_EXP2)
// [3578]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3585]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3589]
// eq
@RET_ADDRESS_EQ10
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ10)
// [3593]
// not
@SP
A=M-1
M=!M
// [3596]
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
// [3605]
// not
@SP
A=M-1
M=!M
// [3608]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [3613]
// not
@SP
A=M-1
M=!M
// [3616]
// if-goto WHILE_END2
@SP
AM=M-1
D=M
@PongGame.run$WHILE_END2
D;JNE
// [3621]
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
// [3633]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [3639]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3646]
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
// [3658]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3663]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [3669]
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
// [3681]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3686]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [3692]
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
// [3704]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3709]
// goto WHILE_EXP2
@PongGame.run$WHILE_EXP2
0;JMP
// [3711]
// label WHILE_END2
(PongGame.run$WHILE_END2)
// [3711]
// goto WHILE_EXP0
@PongGame.run$WHILE_EXP0
0;JMP
// [3713]
// label WHILE_END0
(PongGame.run$WHILE_END0)
// [3713]
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
// [3722]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@PongGame.run$IF_TRUE3
D;JNE
// [3727]
// goto IF_FALSE3
@PongGame.run$IF_FALSE3
0;JMP
// [3729]
// label IF_TRUE3
(PongGame.run$IF_TRUE3)
// [3729]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [3735]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [3741]
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
// [3753]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3758]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [3764]
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
// [3776]
// push constant 71
@71
D=A
@SP
AM=M+1
A=A-1
M=D
// [3782]
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
// [3794]
// push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// [3800]
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
// [3812]
// push constant 109
@109
D=A
@SP
AM=M+1
A=A-1
M=D
// [3818]
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
// [3830]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [3836]
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
// [3848]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [3854]
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
// [3866]
// push constant 79
@79
D=A
@SP
AM=M+1
A=A-1
M=D
// [3872]
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
// [3884]
// push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// [3890]
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
// [3902]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [3908]
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
// [3920]
// push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// [3926]
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
// [3938]
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
// [3950]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [3955]
// label IF_FALSE3
(PongGame.run$IF_FALSE3)
// [3955]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [3959]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [3961]
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

// [3970]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [3977]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [3982]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [3989]
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
// [4001]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [4008]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4016]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4020]
// gt
@RET_ADDRESS_GT2
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT2)
// [4024]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4032]
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
// [4041]
// eq
@RET_ADDRESS_EQ11
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ11)
// [4045]
// not
@SP
A=M-1
M=!M
// [4048]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [4053]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@PongGame.moveBall$IF_TRUE0
D;JNE
// [4058]
// goto IF_FALSE0
@PongGame.moveBall$IF_FALSE0
0;JMP
// [4060]
// label IF_TRUE0
(PongGame.moveBall$IF_TRUE0)
// [4060]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4068]
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
// [4078]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4082]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [4088]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4095]
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
// [4107]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [4113]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4120]
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
// [4132]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [4139]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4146]
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
// [4158]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [4166]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4173]
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
// [4185]
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
// [4194]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4202]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [4208]
// eq
@RET_ADDRESS_EQ12
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ12)
// [4212]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@PongGame.moveBall$IF_TRUE1
D;JNE
// [4217]
// goto IF_FALSE1
@PongGame.moveBall$IF_FALSE1
0;JMP
// [4219]
// label IF_TRUE1
(PongGame.moveBall$IF_TRUE1)
// [4219]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4226]
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
// [4235]
// gt
@RET_ADDRESS_GT3
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT3)
// [4239]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4247]
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
// [4256]
// lt
@RET_ADDRESS_LT10
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT10)
// [4260]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [4265]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [4273]
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
// [4282]
// not
@SP
A=M-1
M=!M
// [4285]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@PongGame.moveBall$IF_TRUE2
D;JNE
// [4290]
// goto IF_FALSE2
@PongGame.moveBall$IF_FALSE2
0;JMP
// [4292]
// label IF_TRUE2
(PongGame.moveBall$IF_TRUE2)
// [4292]
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
// [4301]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4308]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [4314]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4319]
// lt
@RET_ADDRESS_LT11
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT11)
// [4323]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@PongGame.moveBall$IF_TRUE3
D;JNE
// [4328]
// goto IF_FALSE3
@PongGame.moveBall$IF_FALSE3
0;JMP
// [4330]
// label IF_TRUE3
(PongGame.moveBall$IF_TRUE3)
// [4330]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4334]
// neg
@SP
A=M-1
M=-M
// [4337]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [4343]
// goto IF_END3
@PongGame.moveBall$IF_END3
0;JMP
// [4345]
// label IF_FALSE3
(PongGame.moveBall$IF_FALSE3)
// [4345]
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
// [4354]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4362]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [4368]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [4373]
// gt
@RET_ADDRESS_GT4
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT4)
// [4377]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@PongGame.moveBall$IF_TRUE4
D;JNE
// [4382]
// goto IF_FALSE4
@PongGame.moveBall$IF_FALSE4
0;JMP
// [4384]
// label IF_TRUE4
(PongGame.moveBall$IF_TRUE4)
// [4384]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4388]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [4394]
// label IF_FALSE4
(PongGame.moveBall$IF_FALSE4)
// [4394]
// label IF_END3
(PongGame.moveBall$IF_END3)
// [4394]
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
// [4403]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [4409]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [4414]
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
// [4425]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4432]
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
// [4441]
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
// [4453]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4458]
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
// [4467]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4471]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4476]
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
// [4485]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [4491]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [4497]
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
// [4509]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4514]
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
// [4523]
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
// [4535]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4540]
// label IF_FALSE2
(PongGame.moveBall$IF_FALSE2)
// [4540]
// label IF_FALSE1
(PongGame.moveBall$IF_FALSE1)
// [4540]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4547]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4554]
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
// [4566]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4571]
// label IF_FALSE0
(PongGame.moveBall$IF_FALSE0)
// [4571]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4575]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4577]
// function String.new 0
(String.new)
// [4577]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [4583]
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
// [4595]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4600]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4607]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4611]
// gt
@RET_ADDRESS_GT5
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT5)
// [4615]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.new$IF_TRUE0
D;JNE
// [4620]
// goto IF_FALSE0
@String.new$IF_FALSE0
0;JMP
// [4622]
// label IF_TRUE0
(String.new$IF_TRUE0)
// [4622]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4629]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL84
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL84)
// [4641]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [4648]
// label IF_FALSE0
(String.new$IF_FALSE0)
// [4648]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4655]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [4661]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4665]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [4671]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [4677]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4679]
// function String.dispose 0
(String.dispose)
// [4679]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4686]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4691]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4699]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4703]
// eq
@RET_ADDRESS_EQ13
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ13)
// [4707]
// not
@SP
A=M-1
M=!M
// [4710]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.dispose$IF_TRUE0
D;JNE
// [4715]
// goto IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP
// [4717]
// label IF_TRUE0
(String.dispose$IF_TRUE0)
// [4717]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4725]
// call Array.dispose 1
@1
D=A
@R13
M=D
@Array.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL85
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL85)
// [4737]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4742]
// label IF_FALSE0
(String.dispose$IF_FALSE0)
// [4742]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [4748]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL86
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL86)
// [4760]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4765]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4769]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4771]
// function String.length 0
(String.length)
// [4771]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4778]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4783]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4790]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4792]
// function String.charAt 0
(String.charAt)
// [4792]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4799]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4804]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4811]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4819]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4824]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [4829]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4836]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4838]
// function String.setCharAt 0
(String.setCharAt)
// [4838]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4845]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4850]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4857]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4865]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4870]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4878]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4883]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [4888]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [4894]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [4900]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [4904]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [4906]
// function String.appendChar 0
(String.appendChar)
// [4906]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4913]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [4918]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4925]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [4932]
// eq
@RET_ADDRESS_EQ14
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ14)
// [4936]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.appendChar$IF_TRUE0
D;JNE
// [4941]
// goto IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP
// [4943]
// label IF_TRUE0
(String.appendChar$IF_TRUE0)
// [4943]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [4947]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL87
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL87)
// [4959]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4964]
// goto IF_END0
@String.appendChar$IF_END0
0;JMP
// [4966]
// label IF_FALSE0
(String.appendChar$IF_FALSE0)
// [4966]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4973]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4981]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [4986]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [4993]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [4998]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5003]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [5009]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [5015]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5022]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5026]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5031]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [5037]
// label IF_END0
(String.appendChar$IF_END0)
// [5037]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [5043]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5045]
// function String.eraseLastChar 0
(String.eraseLastChar)
// [5045]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5052]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5057]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5064]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5068]
// eq
@RET_ADDRESS_EQ15
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ15)
// [5072]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.eraseLastChar$IF_TRUE0
D;JNE
// [5077]
// goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP
// [5079]
// label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)
// [5079]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5083]
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
// [5095]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5100]
// label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)
// [5100]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5107]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5111]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [5116]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [5122]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5126]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5128]
// function String.intValue 3
(String.intValue)
@3
D=A
(LOOP_String.intValue)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_String.intValue
D;JGT

// [5137]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5144]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5149]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5153]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [5160]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5167]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5171]
// gt
@RET_ADDRESS_GT6
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT6)
// [5175]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5179]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5187]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5192]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5197]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5204]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [5210]
// eq
@RET_ADDRESS_EQ16
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ16)
// [5214]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [5219]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.intValue$IF_TRUE0
D;JNE
// [5224]
// goto IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP
// [5226]
// label IF_TRUE0
(String.intValue$IF_TRUE0)
// [5226]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5230]
// neg
@SP
A=M-1
M=-M
// [5233]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [5240]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5244]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [5250]
// label IF_FALSE0
(String.intValue$IF_FALSE0)
// [5250]
// label WHILE_EXP0
(String.intValue$WHILE_EXP0)
// [5250]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5257]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5264]
// lt
@RET_ADDRESS_LT12
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT12)
// [5268]
// not
@SP
A=M-1
M=!M
// [5271]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@String.intValue$WHILE_END0
D;JNE
// [5276]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5283]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5291]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5296]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5301]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5308]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [5314]
// lt
@RET_ADDRESS_LT13
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT13)
// [5318]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5325]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5333]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5338]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5343]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5350]
// push constant 57
@57
D=A
@SP
AM=M+1
A=A-1
M=D
// [5356]
// gt
@RET_ADDRESS_GT7
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT7)
// [5360]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [5365]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@String.intValue$IF_TRUE1
D;JNE
// [5370]
// goto IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP
// [5372]
// label IF_TRUE1
(String.intValue$IF_TRUE1)
// [5372]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5380]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5387]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL89
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL89)
// [5399]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5401]
// label IF_FALSE1
(String.intValue$IF_FALSE1)
// [5401]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [5407]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5414]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL90
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL90)
// [5426]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5433]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5441]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5446]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5451]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5458]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [5464]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [5469]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5474]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [5480]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5487]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5491]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5496]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [5502]
// goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP
// [5504]
// label WHILE_END0
(String.intValue$WHILE_END0)
// [5504]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5512]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5519]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL91
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL91)
// [5531]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5533]
// function String.setInt 0
(String.setInt)
// [5533]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5540]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5545]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5549]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [5555]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5562]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5566]
// lt
@RET_ADDRESS_LT14
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT14)
// [5570]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.setInt$IF_TRUE0
D;JNE
// [5575]
// goto IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP
// [5577]
// label IF_TRUE0
(String.setInt$IF_TRUE0)
// [5577]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5584]
// neg
@SP
A=M-1
M=-M
// [5587]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [5593]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5597]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5605]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5610]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [5616]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5621]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5626]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [5632]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [5638]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5642]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [5648]
// label IF_FALSE0
(String.setInt$IF_FALSE0)
// [5648]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [5654]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5661]
// call String.int2String 2
@2
D=A
@R13
M=D
@String.int2String
D=A
@R14
M=D
@RET_ADDRESS_CALL92
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL92)
// [5673]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5678]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5682]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5684]
// function String.int2String 2
(String.int2String)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [5691]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5698]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [5703]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5710]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [5716]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL93
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL93)
// [5728]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [5734]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5741]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5748]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [5754]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL94
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL94)
// [5766]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [5771]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [5777]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5782]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [5788]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5795]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [5801]
// lt
@RET_ADDRESS_LT15
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT15)
// [5805]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String.int2String$IF_TRUE0
D;JNE
// [5810]
// goto IF_FALSE0
@String.int2String$IF_FALSE0
0;JMP
// [5812]
// label IF_TRUE0
(String.int2String$IF_TRUE0)
// [5812]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5819]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5827]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5832]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5839]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5844]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5849]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [5855]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [5861]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5868]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5872]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5877]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [5883]
// goto IF_END0
@String.int2String$IF_END0
0;JMP
// [5885]
// label IF_FALSE0
(String.int2String$IF_FALSE0)
// [5885]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [5891]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [5898]
// call String.int2String 2
@2
D=A
@R13
M=D
@String.int2String
D=A
@R14
M=D
@RET_ADDRESS_CALL95
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL95)
// [5910]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5915]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5922]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5930]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5935]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5942]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [5947]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [5952]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [5958]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [5964]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [5971]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [5975]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [5980]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [5986]
// label IF_END0
(String.int2String$IF_END0)
// [5986]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [5990]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [5992]
// function String.newLine 0
(String.newLine)
// [5992]
// push constant 128
@128
D=A
@SP
AM=M+1
A=A-1
M=D
// [5998]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6000]
// function String.backSpace 0
(String.backSpace)
// [6000]
// push constant 129
@129
D=A
@SP
AM=M+1
A=A-1
M=D
// [6006]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6008]
// function String.doubleQuote 0
(String.doubleQuote)
// [6008]
// push constant 34
@34
D=A
@SP
AM=M+1
A=A-1
M=D
// [6014]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6016]
// function Math.twoToThe 0
(Math.twoToThe)
// [6016]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6022]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6024]
// function Math.init 1
(Math.init)
@SP
AM=M+1
A=A-1
M=0
// [6028]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6032]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6038]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [6044]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL96
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL96)
// [6056]
// pop static Math.0
@SP
AM=M-1
D=M
@Math.0
M=D
// [6061]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6065]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6071]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6076]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6080]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6085]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6090]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6096]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6102]
// label WHILE_EXP0
(Math.init$WHILE_EXP0)
// [6102]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6109]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [6115]
// lt
@RET_ADDRESS_LT16
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT16)
// [6119]
// not
@SP
A=M-1
M=!M
// [6122]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.init$WHILE_END0
D;JNE
// [6127]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6134]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6140]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6145]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6152]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6156]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6161]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6167]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6172]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6177]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6184]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6191]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6195]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6200]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6206]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6211]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6216]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6223]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6228]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [6233]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6238]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [6244]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [6250]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6257]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6261]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6266]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6272]
// goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP
// [6274]
// label WHILE_END0
(Math.init$WHILE_END0)
// [6274]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6278]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6280]
// function Math.abs 0
(Math.abs)
// [6280]
// push argument 0
@ARG
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
// lt
@RET_ADDRESS_LT17
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT17)
// [6295]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.abs$IF_TRUE0
D;JNE
// [6300]
// goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP
// [6302]
// label IF_TRUE0
(Math.abs$IF_TRUE0)
// [6302]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6309]
// neg
@SP
A=M-1
M=-M
// [6312]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [6318]
// label IF_FALSE0
(Math.abs$IF_FALSE0)
// [6318]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6325]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6327]
// function Math.bit 0
(Math.bit)
// [6327]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6334]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6341]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6347]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6352]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6357]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6364]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [6369]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6376]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [6382]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6387]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [6392]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6399]
// eq
@RET_ADDRESS_EQ17
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ17)
// [6403]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.bit$IF_TRUE0
D;JNE
// [6408]
// goto IF_FALSE0
@Math.bit$IF_FALSE0
0;JMP
// [6410]
// label IF_TRUE0
(Math.bit$IF_TRUE0)
// [6410]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6414]
// not
@SP
A=M-1
M=!M
// [6417]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6419]
// label IF_FALSE0
(Math.bit$IF_FALSE0)
// [6419]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6423]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6425]
// function Math.multiply 3
(Math.multiply)
@3
D=A
(LOOP_Math.multiply)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Math.multiply
D;JGT

// [6434]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6438]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6444]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6451]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [6457]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6461]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [6468]
// label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
// [6468]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6476]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [6482]
// lt
@RET_ADDRESS_LT18
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT18)
// [6486]
// not
@SP
A=M-1
M=!M
// [6489]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.multiply$WHILE_END0
D;JNE
// [6494]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6501]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6509]
// call Math.bit 2
@2
D=A
@R13
M=D
@Math.bit
D=A
@R14
M=D
@RET_ADDRESS_CALL97
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL97)
// [6521]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE0
D;JNE
// [6526]
// goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP
// [6528]
// label IF_TRUE0
(Math.multiply$IF_TRUE0)
// [6528]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6535]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6542]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6547]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6553]
// label IF_FALSE0
(Math.multiply$IF_FALSE0)
// [6553]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6560]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6567]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6572]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [6578]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6586]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6590]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6595]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [6602]
// goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP
// [6604]
// label WHILE_END0
(Math.multiply$WHILE_END0)
// [6604]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6611]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6613]
// function Math.divide 2
(Math.divide)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [6620]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6624]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6630]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6634]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [6640]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6647]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6651]
// lt
@RET_ADDRESS_LT19
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT19)
// [6655]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE0
D;JNE
// [6660]
// goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP
// [6662]
// label IF_TRUE0
(Math.divide$IF_TRUE0)
// [6662]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6666]
// neg
@SP
A=M-1
M=-M
// [6669]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6675]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6682]
// neg
@SP
A=M-1
M=-M
// [6685]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [6691]
// label IF_FALSE0
(Math.divide$IF_FALSE0)
// [6691]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6698]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6702]
// lt
@RET_ADDRESS_LT20
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT20)
// [6706]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE1
D;JNE
// [6711]
// goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP
// [6713]
// label IF_TRUE1
(Math.divide$IF_TRUE1)
// [6713]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [6717]
// neg
@SP
A=M-1
M=-M
// [6720]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [6726]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6733]
// neg
@SP
A=M-1
M=-M
// [6736]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [6742]
// label IF_FALSE1
(Math.divide$IF_FALSE1)
// [6742]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6749]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6756]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL98
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL98)
// [6768]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6775]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6782]
// call Math.divideAbs 2
@2
D=A
@R13
M=D
@Math.divideAbs
D=A
@R14
M=D
@RET_ADDRESS_CALL99
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL99)
// [6794]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL100
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL100)
// [6806]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6808]
// function Math.divideAbs 1
(Math.divideAbs)
@SP
AM=M+1
A=A-1
M=0
// [6812]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6819]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6826]
// gt
@RET_ADDRESS_GT8
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT8)
// [6830]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6837]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6841]
// lt
@RET_ADDRESS_LT21
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT21)
// [6845]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [6850]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.divideAbs$IF_TRUE0
D;JNE
// [6855]
// goto IF_FALSE0
@Math.divideAbs$IF_FALSE0
0;JMP
// [6857]
// label IF_TRUE0
(Math.divideAbs$IF_TRUE0)
// [6857]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [6861]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [6863]
// label IF_FALSE0
(Math.divideAbs$IF_FALSE0)
// [6863]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6870]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6877]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6884]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [6889]
// call Math.divideAbs 2
@2
D=A
@R13
M=D
@Math.divideAbs
D=A
@R14
M=D
@RET_ADDRESS_CALL101
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL101)
// [6901]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [6907]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6914]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [6920]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6927]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL102
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL102)
// [6939]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6946]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL103
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL103)
// [6958]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [6963]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [6970]
// lt
@RET_ADDRESS_LT22
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT22)
// [6974]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.divideAbs$IF_TRUE1
D;JNE
// [6979]
// goto IF_FALSE1
@Math.divideAbs$IF_FALSE1
0;JMP
// [6981]
// label IF_TRUE1
(Math.divideAbs$IF_TRUE1)
// [6981]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [6987]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [6994]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL104
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL104)
// [7006]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7008]
// goto IF_END1
@Math.divideAbs$IF_END1
0;JMP
// [7010]
// label IF_FALSE1
(Math.divideAbs$IF_FALSE1)
// [7010]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [7016]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7023]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL105
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL105)
// [7035]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7039]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7044]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7046]
// label IF_END1
(Math.divideAbs$IF_END1)
// [7046]
// function Math.mod 0
(Math.mod)
// [7046]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7053]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7060]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7067]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL106
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL106)
// [7079]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7086]
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
// [7098]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7103]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7105]
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

// [7114]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7118]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7124]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [7130]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [7136]
// label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)
// [7136]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7143]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7147]
// lt
@RET_ADDRESS_LT23
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT23)
// [7151]
// not
@SP
A=M-1
M=!M
// [7154]
// not
@SP
A=M-1
M=!M
// [7157]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.sqrt$WHILE_END0
D;JNE
// [7162]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7169]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7176]
// push static Math.0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [7182]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7187]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [7192]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7199]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [7204]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [7211]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7219]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7227]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL108
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL108)
// [7239]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [7247]
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
// [7256]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7263]
// gt
@RET_ADDRESS_GT9
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT9)
// [7267]
// not
@SP
A=M-1
M=!M
// [7270]
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
// [7279]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7283]
// gt
@RET_ADDRESS_GT10
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT10)
// [7287]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [7292]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.sqrt$IF_TRUE0
D;JNE
// [7297]
// goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP
// [7299]
// label IF_TRUE0
(Math.sqrt$IF_TRUE0)
// [7299]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7307]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7313]
// label IF_FALSE0
(Math.sqrt$IF_FALSE0)
// [7313]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7320]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [7324]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [7329]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [7335]
// goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP
// [7337]
// label WHILE_END0
(Math.sqrt$WHILE_END0)
// [7337]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7344]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7346]
// function Math.max 0
(Math.max)
// [7346]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7353]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7360]
// gt
@RET_ADDRESS_GT11
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT11)
// [7364]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.max$IF_TRUE0
D;JNE
// [7369]
// goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP
// [7371]
// label IF_TRUE0
(Math.max$IF_TRUE0)
// [7371]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7378]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7380]
// label IF_FALSE0
(Math.max$IF_FALSE0)
// [7380]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7387]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7389]
// function Math.min 0
(Math.min)
// [7389]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7396]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7403]
// lt
@RET_ADDRESS_LT24
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT24)
// [7407]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.min$IF_TRUE0
D;JNE
// [7412]
// goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP
// [7414]
// label IF_TRUE0
(Math.min$IF_TRUE0)
// [7414]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7421]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7423]
// label IF_FALSE0
(Math.min$IF_FALSE0)
// [7423]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7430]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7432]
// function Array.new 0
(Array.new)
// [7432]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7439]
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
// [7451]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7453]
// function Array.dispose 0
(Array.dispose)
// [7453]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7460]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [7465]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [7471]
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
// [7483]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7488]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7492]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7494]
// function Main.main 1
(Main.main)
@SP
AM=M+1
A=A-1
M=0
// [7498]
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
// [7510]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7515]
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
// [7527]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7533]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7540]
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
// [7552]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7557]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7564]
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
// [7576]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7581]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7585]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7587]
// function Keyboard.init 0
(Keyboard.init)
// [7587]
// push constant 24576
@24576
D=A
@SP
AM=M+1
A=A-1
M=D
// [7593]
// pop static Keyboard.0
@SP
AM=M-1
D=M
@Keyboard.0
M=D
// [7598]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7602]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7604]
// function Keyboard.keyPressed 0
(Keyboard.keyPressed)
// [7604]
// push static Keyboard.0
@Keyboard.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [7610]
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
// [7622]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7624]
// function Keyboard.displayCursor 0
(Keyboard.displayCursor)
// [7624]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7628]
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
// [7640]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7645]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7649]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7651]
// function Keyboard.readChar 1
(Keyboard.readChar)
@SP
AM=M+1
A=A-1
M=0
// [7655]
// call Keyboard.displayCursor 0
@0
D=A
@R13
M=D
@Keyboard.displayCursor
D=A
@R14
M=D
@RET_ADDRESS_CALL117
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL117)
// [7667]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7672]
// label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
// [7672]
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@RET_ADDRESS_CALL118
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL118)
// [7684]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7688]
// eq
@RET_ADDRESS_EQ18
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ18)
// [7692]
// not
@SP
A=M-1
M=!M
// [7695]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard.readChar$WHILE_END0
D;JNE
// [7700]
// goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP
// [7702]
// label WHILE_END0
(Keyboard.readChar$WHILE_END0)
// [7702]
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@RET_ADDRESS_CALL119
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL119)
// [7714]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7720]
// label WHILE_EXP1
(Keyboard.readChar$WHILE_EXP1)
// [7720]
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@RET_ADDRESS_CALL120
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL120)
// [7732]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [7736]
// eq
@RET_ADDRESS_EQ19
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ19)
// [7740]
// not
@SP
A=M-1
M=!M
// [7743]
// not
@SP
A=M-1
M=!M
// [7746]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Keyboard.readChar$WHILE_END1
D;JNE
// [7751]
// goto WHILE_EXP1
@Keyboard.readChar$WHILE_EXP1
0;JMP
// [7753]
// label WHILE_END1
(Keyboard.readChar$WHILE_END1)
// [7753]
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL121
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL121)
// [7765]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7770]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7777]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [7783]
// lt
@RET_ADDRESS_LT25
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT25)
// [7787]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7794]
// push constant 128
@128
D=A
@SP
AM=M+1
A=A-1
M=D
// [7800]
// gt
@RET_ADDRESS_GT12
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT12)
// [7804]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [7809]
// not
@SP
A=M-1
M=!M
// [7812]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE
// [7817]
// goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP
// [7819]
// label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)
// [7819]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7826]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL122
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL122)
// [7838]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7843]
// label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)
// [7843]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7850]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [7852]
// function Keyboard.readLine 2
(Keyboard.readLine)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [7859]
// push constant 128
@128
D=A
@SP
AM=M+1
A=A-1
M=D
// [7865]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL123
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL123)
// [7877]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [7883]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [7890]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL124
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL124)
// [7902]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [7907]
// label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
// [7907]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7914]
// call String.newLine 0
@0
D=A
@R13
M=D
@String.newLine
D=A
@R14
M=D
@RET_ADDRESS_CALL125
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL125)
// [7926]
// eq
@RET_ADDRESS_EQ20
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ20)
// [7930]
// not
@SP
A=M-1
M=!M
// [7933]
// not
@SP
A=M-1
M=!M
// [7936]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard.readLine$WHILE_END0
D;JNE
// [7941]
// call Keyboard.readChar 0
@0
D=A
@R13
M=D
@Keyboard.readChar
D=A
@R14
M=D
@RET_ADDRESS_CALL126
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL126)
// [7953]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [7959]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7966]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [7972]
// lt
@RET_ADDRESS_LT26
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT26)
// [7976]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [7983]
// push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// [7989]
// gt
@RET_ADDRESS_GT13
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT13)
// [7993]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [7998]
// not
@SP
A=M-1
M=!M
// [8001]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE
// [8006]
// goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP
// [8008]
// label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
// [8008]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8015]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8022]
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
// [8034]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8040]
// goto IF_END0
@Keyboard.readLine$IF_END0
0;JMP
// [8042]
// label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
// [8042]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [8049]
// call String.backSpace 0
@0
D=A
@R13
M=D
@String.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL128
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL128)
// [8061]
// eq
@RET_ADDRESS_EQ21
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ21)
// [8065]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE
// [8070]
// goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP
// [8072]
// label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)
// [8072]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8079]
// call String.length 1
@1
D=A
@R13
M=D
@String.length
D=A
@R14
M=D
@RET_ADDRESS_CALL129
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL129)
// [8091]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8095]
// gt
@RET_ADDRESS_GT14
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT14)
// [8099]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE2
D;JNE
// [8104]
// goto IF_FALSE2
@Keyboard.readLine$IF_FALSE2
0;JMP
// [8106]
// label IF_TRUE2
(Keyboard.readLine$IF_TRUE2)
// [8106]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8113]
// call String.eraseLastChar 1
@1
D=A
@R13
M=D
@String.eraseLastChar
D=A
@R14
M=D
@RET_ADDRESS_CALL130
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL130)
// [8125]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8130]
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL131
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL131)
// [8142]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8147]
// label IF_FALSE2
(Keyboard.readLine$IF_FALSE2)
// [8147]
// label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)
// [8147]
// label IF_END0
(Keyboard.readLine$IF_END0)
// [8147]
// goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP
// [8149]
// label WHILE_END0
(Keyboard.readLine$WHILE_END0)
// [8149]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8156]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8158]
// function Keyboard.readInt 1
(Keyboard.readInt)
@SP
AM=M+1
A=A-1
M=0
// [8162]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8169]
// call Keyboard.readLine 1
@1
D=A
@R13
M=D
@Keyboard.readLine
D=A
@R14
M=D
@RET_ADDRESS_CALL132
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL132)
// [8181]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8187]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8194]
// call String.intValue 1
@1
D=A
@R13
M=D
@String.intValue
D=A
@R14
M=D
@RET_ADDRESS_CALL133
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL133)
// [8206]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8208]
// function Sys.init 0
(Sys.init)
// [8208]
// call Memory.init 0
@0
D=A
@R13
M=D
@Memory.init
D=A
@R14
M=D
@RET_ADDRESS_CALL134
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL134)
// [8220]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8225]
// call Math.init 0
@0
D=A
@R13
M=D
@Math.init
D=A
@R14
M=D
@RET_ADDRESS_CALL135
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL135)
// [8237]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8242]
// call Output.init 0
@0
D=A
@R13
M=D
@Output.init
D=A
@R14
M=D
@RET_ADDRESS_CALL136
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL136)
// [8254]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8259]
// call Keyboard.init 0
@0
D=A
@R13
M=D
@Keyboard.init
D=A
@R14
M=D
@RET_ADDRESS_CALL137
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL137)
// [8271]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8276]
// call Screen.init 0
@0
D=A
@R13
M=D
@Screen.init
D=A
@R14
M=D
@RET_ADDRESS_CALL138
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL138)
// [8288]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8293]
// call Main.main 0
@0
D=A
@R13
M=D
@Main.main
D=A
@R14
M=D
@RET_ADDRESS_CALL139
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL139)
// [8305]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8310]
// call Sys.halt 0
@0
D=A
@R13
M=D
@Sys.halt
D=A
@R14
M=D
@RET_ADDRESS_CALL140
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL140)
// [8322]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8327]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8331]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8333]
// function Sys.halt 0
(Sys.halt)
// [8333]
// label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
// [8333]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8337]
// not
@SP
A=M-1
M=!M
// [8340]
// not
@SP
A=M-1
M=!M
// [8343]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Sys.halt$WHILE_END0
D;JNE
// [8348]
// goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP
// [8350]
// label WHILE_END0
(Sys.halt$WHILE_END0)
// [8350]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8354]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8356]
// function Sys.wait 1
(Sys.wait)
@SP
AM=M+1
A=A-1
M=0
// [8360]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8367]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8371]
// lt
@RET_ADDRESS_LT27
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT27)
// [8375]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Sys.wait$IF_TRUE0
D;JNE
// [8380]
// goto IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP
// [8382]
// label IF_TRUE0
(Sys.wait$IF_TRUE0)
// [8382]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8386]
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@RET_ADDRESS_CALL141
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL141)
// [8398]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8403]
// label IF_FALSE0
(Sys.wait$IF_FALSE0)
// [8403]
// label WHILE_EXP0
(Sys.wait$WHILE_EXP0)
// [8403]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8410]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8414]
// gt
@RET_ADDRESS_GT15
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT15)
// [8418]
// not
@SP
A=M-1
M=!M
// [8421]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Sys.wait$WHILE_END0
D;JNE
// [8426]
// push constant 100
@100
D=A
@SP
AM=M+1
A=A-1
M=D
// [8432]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8438]
// label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
// [8438]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8445]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8449]
// gt
@RET_ADDRESS_GT16
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT16)
// [8453]
// not
@SP
A=M-1
M=!M
// [8456]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Sys.wait$WHILE_END1
D;JNE
// [8461]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8468]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8472]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [8477]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [8483]
// goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP
// [8485]
// label WHILE_END1
(Sys.wait$WHILE_END1)
// [8485]
// push argument 0
@ARG
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
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [8507]
// goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP
// [8509]
// label WHILE_END0
(Sys.wait$WHILE_END0)
// [8509]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8513]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8515]
// function Sys.error 0
(Sys.error)
// [8515]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [8521]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL142
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL142)
// [8533]
// push constant 69
@69
D=A
@SP
AM=M+1
A=A-1
M=D
// [8539]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL143
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL143)
// [8551]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [8557]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL144
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL144)
// [8569]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [8575]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL145
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL145)
// [8587]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL146
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL146)
// [8599]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8604]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [8611]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL147
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL147)
// [8623]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8628]
// call Sys.halt 0
@0
D=A
@R13
M=D
@Sys.halt
D=A
@R14
M=D
@RET_ADDRESS_CALL148
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL148)
// [8640]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8645]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8649]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8651]
// function Output.init 0
(Output.init)
// [8651]
// call Output.initMap 0
@0
D=A
@R13
M=D
@Output.initMap
D=A
@R14
M=D
@RET_ADDRESS_CALL149
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL149)
// [8663]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8668]
// push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// [8674]
// pop static Output.1
@SP
AM=M-1
D=M
@Output.1
M=D
// [8679]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8683]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [8688]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8692]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [8697]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [8703]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL150
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL150)
// [8715]
// pop static Output.4
@SP
AM=M-1
D=M
@Output.4
M=D
// [8720]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8724]
// push static Output.4
@Output.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [8730]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8735]
// push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// [8741]
// neg
@SP
A=M-1
M=-M
// [8744]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8749]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8754]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [8760]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [8766]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8770]
// push static Output.4
@Output.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [8776]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8781]
// push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// [8787]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8792]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8797]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [8803]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [8809]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [8815]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL151
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL151)
// [8827]
// pop static Output.5
@SP
AM=M-1
D=M
@Output.5
M=D
// [8832]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8836]
// push static Output.5
@Output.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [8842]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8847]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8851]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8856]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8861]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [8867]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [8873]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [8877]
// push static Output.5
@Output.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [8883]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [8888]
// push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// [8894]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [8899]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [8904]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [8910]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [8916]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8920]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [8922]
// function Output.initMap 1
(Output.initMap)
@SP
AM=M+1
A=A-1
M=0
// [8926]
// push constant 127
@127
D=A
@SP
AM=M+1
A=A-1
M=D
// [8932]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL152
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL152)
// [8944]
// pop static Output.0
@SP
AM=M-1
D=M
@Output.0
M=D
// [8949]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [8953]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8959]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8965]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8971]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8977]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8983]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8989]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [8995]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9001]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9007]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9011]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9015]
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
// [9027]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9032]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [9038]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9042]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9046]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9050]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9054]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9058]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9062]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9066]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9070]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9074]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9078]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9082]
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
// [9094]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9099]
// push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// [9105]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9111]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9117]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9123]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9129]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9135]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9141]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9145]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9151]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9157]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9161]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9165]
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
// [9177]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9182]
// push constant 34
@34
D=A
@SP
AM=M+1
A=A-1
M=D
// [9188]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [9194]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [9200]
// push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// [9206]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9210]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9214]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9218]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9222]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9226]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9230]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9234]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9238]
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
// [9250]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9255]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [9261]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9265]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [9271]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [9277]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9283]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [9289]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [9295]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9301]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [9307]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [9313]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9317]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9321]
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
// [9333]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9338]
// push constant 36
@36
D=A
@SP
AM=M+1
A=A-1
M=D
// [9344]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9350]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9356]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [9362]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [9368]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9374]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [9380]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [9386]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9392]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9398]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9404]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9408]
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
// [9420]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9425]
// push constant 37
@37
D=A
@SP
AM=M+1
A=A-1
M=D
// [9431]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9435]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9439]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [9445]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [9451]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9457]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9463]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9469]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [9475]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [9481]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9485]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9489]
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
// [9501]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9506]
// push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// [9512]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9518]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9524]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9530]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9536]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [9542]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [9548]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [9554]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [9560]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [9566]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9570]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9574]
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
// [9586]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9591]
// push constant 39
@39
D=A
@SP
AM=M+1
A=A-1
M=D
// [9597]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9603]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9609]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9615]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9619]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9623]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9627]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9631]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9635]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9639]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9643]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9647]
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
// [9659]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9664]
// push constant 40
@40
D=A
@SP
AM=M+1
A=A-1
M=D
// [9670]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9676]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9682]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9688]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9694]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9700]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9706]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9712]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9718]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9724]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9728]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9732]
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
// [9744]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9749]
// push constant 41
@41
D=A
@SP
AM=M+1
A=A-1
M=D
// [9755]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9761]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9767]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9773]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9779]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9785]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9791]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [9797]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9803]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [9809]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9813]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9817]
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
// [9829]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9834]
// push constant 42
@42
D=A
@SP
AM=M+1
A=A-1
M=D
// [9840]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9844]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9848]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9852]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [9858]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9864]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9870]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [9876]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [9882]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9886]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9890]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9894]
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
// [9906]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9911]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [9917]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9921]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9925]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9929]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9935]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9941]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [9947]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9953]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [9959]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9963]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9967]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9971]
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
// [9983]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [9988]
// push constant 44
@44
D=A
@SP
AM=M+1
A=A-1
M=D
// [9994]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [9998]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10002]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10006]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10010]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10014]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10018]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10022]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10028]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10034]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10040]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10044]
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
// [10056]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10061]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [10067]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10071]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10075]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10079]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10083]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10087]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
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
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10113]
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
// [10125]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10130]
// push constant 46
@46
D=A
@SP
AM=M+1
A=A-1
M=D
// [10136]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10140]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10144]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10148]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10152]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10156]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10160]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10164]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10170]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10176]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10180]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10184]
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
// [10196]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10201]
// push constant 47
@47
D=A
@SP
AM=M+1
A=A-1
M=D
// [10207]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10211]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10215]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [10221]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10227]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10233]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10239]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10245]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10251]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [10255]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10259]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10263]
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
// [10275]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10280]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10286]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10292]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10298]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10304]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10310]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10316]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10322]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10328]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10334]
// push constant 12
@12
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
@RET_ADDRESS_CALL170
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL170)
// [10360]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10365]
// push constant 49
@49
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
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [10383]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [10389]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10395]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10401]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10407]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10413]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10419]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10425]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10429]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10433]
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
// [10445]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10450]
// push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// [10456]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10462]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10468]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10474]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10480]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10486]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10492]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10498]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10504]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10510]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10514]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10518]
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
// [10530]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10535]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10541]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10547]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10553]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10559]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10565]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [10571]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10577]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10583]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10589]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10595]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10599]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10603]
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
// [10615]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10620]
// push constant 52
@52
D=A
@SP
AM=M+1
A=A-1
M=D
// [10626]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [10632]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10638]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [10644]
// push constant 26
@26
D=A
@SP
AM=M+1
A=A-1
M=D
// [10650]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [10656]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10662]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10668]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10674]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [10680]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10684]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10688]
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
// [10700]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10705]
// push constant 53
@53
D=A
@SP
AM=M+1
A=A-1
M=D
// [10711]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10717]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10723]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10729]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [10735]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10741]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10747]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10753]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10759]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10765]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10769]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10773]
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
// [10785]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10790]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [10796]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [10802]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [10808]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10814]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [10820]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [10826]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10832]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10838]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10844]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10850]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10854]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10858]
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
// [10870]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10875]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [10881]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [10887]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [10893]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10899]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [10905]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [10911]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10917]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10923]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10929]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [10935]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10939]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [10943]
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
// [10955]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [10960]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [10966]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10972]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10978]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10984]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [10990]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [10996]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11002]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11008]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11014]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11020]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11024]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11028]
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
// [11040]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11045]
// push constant 57
@57
D=A
@SP
AM=M+1
A=A-1
M=D
// [11051]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11057]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11063]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11069]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11075]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [11081]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11087]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [11093]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11099]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [11105]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11109]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11113]
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
// [11125]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11130]
// push constant 58
@58
D=A
@SP
AM=M+1
A=A-1
M=D
// [11136]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11140]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11144]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11150]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11156]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11160]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11164]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11170]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11176]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11180]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11184]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11188]
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
// [11200]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11205]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [11211]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11215]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11219]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11225]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11231]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11235]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11239]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11245]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11251]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11257]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11261]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11265]
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
// [11277]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11282]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [11288]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11292]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11296]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11302]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11308]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11314]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11320]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11326]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11332]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11338]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11342]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11346]
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
// [11358]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11363]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [11369]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11373]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11377]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11381]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11387]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11391]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11395]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11401]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11405]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11409]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11413]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11417]
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
// [11429]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11434]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [11440]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11444]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11448]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11454]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11460]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11466]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11472]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11478]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [11484]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11490]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11494]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11498]
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
// [11510]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11515]
// push constant 64
@64
D=A
@SP
AM=M+1
A=A-1
M=D
// [11521]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11527]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11533]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11539]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [11545]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [11551]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [11557]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [11563]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11569]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11575]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11579]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11583]
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
// [11595]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11600]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11606]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11612]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11618]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11624]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [11630]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11636]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11642]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11646]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11652]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11658]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11662]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11666]
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
// [11678]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11683]
// push constant 65
@65
D=A
@SP
AM=M+1
A=A-1
M=D
// [11689]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [11695]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [11701]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11707]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11713]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [11719]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11725]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11731]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11737]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11743]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11747]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11751]
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
// [11763]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11768]
// push constant 66
@66
D=A
@SP
AM=M+1
A=A-1
M=D
// [11774]
// push constant 31
@31
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
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11792]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11798]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [11804]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11810]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11816]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11822]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [11828]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11832]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11836]
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
// [11848]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11853]
// push constant 67
@67
D=A
@SP
AM=M+1
A=A-1
M=D
// [11859]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [11865]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [11871]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [11877]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11883]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11889]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [11895]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [11901]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [11907]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [11913]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11917]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [11921]
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
// [11933]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [11938]
// push constant 68
@68
D=A
@SP
AM=M+1
A=A-1
M=D
// [11944]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [11950]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [11956]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11962]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11968]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11974]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11980]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [11986]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [11992]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [11998]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12002]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12006]
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
// [12018]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12023]
// push constant 69
@69
D=A
@SP
AM=M+1
A=A-1
M=D
// [12029]
// push constant 63
@63
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
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12047]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [12053]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [12059]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [12065]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12071]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12077]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12083]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12087]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12091]
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
// [12103]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12108]
// push constant 70
@70
D=A
@SP
AM=M+1
A=A-1
M=D
// [12114]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12120]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12126]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12132]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [12138]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [12144]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [12150]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12156]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12162]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12168]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12172]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12176]
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
// [12188]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12193]
// push constant 71
@71
D=A
@SP
AM=M+1
A=A-1
M=D
// [12199]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [12205]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [12211]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12217]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12223]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12229]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12235]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12241]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [12247]
// push constant 44
@44
D=A
@SP
AM=M+1
A=A-1
M=D
// [12253]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12257]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12261]
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
// [12273]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12278]
// push constant 72
@72
D=A
@SP
AM=M+1
A=A-1
M=D
// [12284]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12290]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12296]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12302]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12308]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12314]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12320]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12326]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12332]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12338]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12342]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12346]
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
// [12358]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12363]
// push constant 73
@73
D=A
@SP
AM=M+1
A=A-1
M=D
// [12369]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12375]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12381]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12387]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12393]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12399]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12405]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12411]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [12417]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12423]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12427]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12431]
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
// [12443]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12448]
// push constant 74
@74
D=A
@SP
AM=M+1
A=A-1
M=D
// [12454]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [12460]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12466]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12472]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12478]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12484]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [12490]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [12496]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [12502]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [12508]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12512]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12516]
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
// [12528]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12533]
// push constant 75
@75
D=A
@SP
AM=M+1
A=A-1
M=D
// [12539]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12545]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12551]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12557]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [12563]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [12569]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [12575]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12581]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12587]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12593]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12597]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12601]
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
// [12613]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12618]
// push constant 76
@76
D=A
@SP
AM=M+1
A=A-1
M=D
// [12624]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12630]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12636]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12642]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12648]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12654]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [12660]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [12666]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12672]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12678]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12682]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12686]
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
// [12698]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12703]
// push constant 77
@77
D=A
@SP
AM=M+1
A=A-1
M=D
// [12709]
// push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// [12715]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12721]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12727]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12733]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12739]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12745]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12751]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12757]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12763]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12767]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12771]
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
// [12783]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12788]
// push constant 78
@78
D=A
@SP
AM=M+1
A=A-1
M=D
// [12794]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12800]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12806]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [12812]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [12818]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [12824]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12830]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [12836]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12842]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12848]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12852]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12856]
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
// [12868]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12873]
// push constant 79
@79
D=A
@SP
AM=M+1
A=A-1
M=D
// [12879]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12885]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12891]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12897]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12903]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12909]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12915]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12921]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12927]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [12933]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12937]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [12941]
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
// [12953]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [12958]
// push constant 80
@80
D=A
@SP
AM=M+1
A=A-1
M=D
// [12964]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [12970]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12976]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12982]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [12988]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [12994]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13000]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13006]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13012]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [13018]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13022]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13026]
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
// [13038]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13043]
// push constant 81
@81
D=A
@SP
AM=M+1
A=A-1
M=D
// [13049]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13055]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13061]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13067]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13073]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13079]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13085]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13091]
// push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// [13097]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13103]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [13109]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13113]
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
// [13125]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13130]
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// [13136]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [13142]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13148]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13154]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13160]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [13166]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [13172]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13178]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13184]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13190]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13194]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13198]
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
// [13210]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13215]
// push constant 83
@83
D=A
@SP
AM=M+1
A=A-1
M=D
// [13221]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13227]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13233]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13239]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13245]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [13251]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [13257]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13263]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13269]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13275]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13279]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13283]
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
// [13295]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13300]
// push constant 84
@84
D=A
@SP
AM=M+1
A=A-1
M=D
// [13306]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13312]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13318]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [13324]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13330]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13336]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13342]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13348]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13354]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13360]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13364]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13368]
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
// [13380]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13385]
// push constant 85
@85
D=A
@SP
AM=M+1
A=A-1
M=D
// [13391]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13397]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13403]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13409]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13415]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13421]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13427]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13433]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13439]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13445]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13449]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13453]
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
// [13465]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13470]
// push constant 86
@86
D=A
@SP
AM=M+1
A=A-1
M=D
// [13476]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13482]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13488]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13494]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13500]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13506]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13512]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13518]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13524]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13530]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13534]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13538]
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
// [13550]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13555]
// push constant 87
@87
D=A
@SP
AM=M+1
A=A-1
M=D
// [13561]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13567]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13573]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13579]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13585]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13591]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13597]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13603]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13609]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [13615]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13619]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13623]
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
// [13635]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13640]
// push constant 88
@88
D=A
@SP
AM=M+1
A=A-1
M=D
// [13646]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13652]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13658]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13664]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13670]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13676]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13682]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13688]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13694]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13700]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13704]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13708]
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
// [13720]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13725]
// push constant 89
@89
D=A
@SP
AM=M+1
A=A-1
M=D
// [13731]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13737]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13743]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13749]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13755]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13761]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13767]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13773]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13779]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13785]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13789]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13793]
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
// [13805]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13810]
// push constant 90
@90
D=A
@SP
AM=M+1
A=A-1
M=D
// [13816]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13822]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13828]
// push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// [13834]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [13840]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [13846]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13852]
// push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// [13858]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [13864]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [13870]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13874]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13878]
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
// [13890]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13895]
// push constant 91
@91
D=A
@SP
AM=M+1
A=A-1
M=D
// [13901]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13907]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13913]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13919]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13925]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13931]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13937]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13943]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [13949]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [13955]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13959]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13963]
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
// [13975]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [13980]
// push constant 92
@92
D=A
@SP
AM=M+1
A=A-1
M=D
// [13986]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13990]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [13994]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [13998]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14004]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14010]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14016]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14022]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14028]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [14034]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14038]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14042]
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
// [14054]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14059]
// push constant 93
@93
D=A
@SP
AM=M+1
A=A-1
M=D
// [14065]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14071]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14077]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14083]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14089]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14095]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14101]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14107]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14113]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14119]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14123]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14127]
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
// [14139]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14144]
// push constant 94
@94
D=A
@SP
AM=M+1
A=A-1
M=D
// [14150]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [14156]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [14162]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [14168]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14172]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14176]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14180]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14184]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14188]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14192]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14196]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14200]
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
// [14212]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14217]
// push constant 95
@95
D=A
@SP
AM=M+1
A=A-1
M=D
// [14223]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14227]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14231]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14235]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14239]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14243]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14247]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14251]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14255]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14259]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14265]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14269]
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
// [14281]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14286]
// push constant 96
@96
D=A
@SP
AM=M+1
A=A-1
M=D
// [14292]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14298]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [14304]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14310]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14314]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14318]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14322]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14326]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14330]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14334]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14338]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14342]
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
// [14354]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14359]
// push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// [14365]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14369]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14373]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14377]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [14383]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [14389]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14395]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [14401]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [14407]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [14413]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14417]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14421]
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
// [14433]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14438]
// push constant 98
@98
D=A
@SP
AM=M+1
A=A-1
M=D
// [14444]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14450]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14456]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14462]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [14468]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [14474]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14480]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14486]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14492]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14498]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14502]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14506]
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
// [14518]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14523]
// push constant 99
@99
D=A
@SP
AM=M+1
A=A-1
M=D
// [14529]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14533]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14537]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14541]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14547]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14553]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14559]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14565]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14571]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14577]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14581]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14585]
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
// [14597]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14602]
// push constant 100
@100
D=A
@SP
AM=M+1
A=A-1
M=D
// [14608]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14614]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14620]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14626]
// push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// [14632]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [14638]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14644]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14650]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14656]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14662]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14666]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14670]
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
// [14682]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14687]
// push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// [14693]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14697]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14701]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14705]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14711]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14717]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [14723]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14729]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14735]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14741]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14745]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14749]
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
// [14761]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14766]
// push constant 102
@102
D=A
@SP
AM=M+1
A=A-1
M=D
// [14772]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [14778]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [14784]
// push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// [14790]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14796]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [14802]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14808]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14814]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [14820]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [14826]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14830]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14834]
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
// [14846]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14851]
// push constant 103
@103
D=A
@SP
AM=M+1
A=A-1
M=D
// [14857]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14861]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14865]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14871]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14877]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14883]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14889]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [14895]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [14901]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14907]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [14913]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14917]
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
// [14929]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [14934]
// push constant 104
@104
D=A
@SP
AM=M+1
A=A-1
M=D
// [14940]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14946]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14952]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [14958]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [14964]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [14970]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14976]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14982]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14988]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [14994]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [14998]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15002]
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
// [15014]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15019]
// push constant 105
@105
D=A
@SP
AM=M+1
A=A-1
M=D
// [15025]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15031]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15037]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15041]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [15047]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15053]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15059]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15065]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15071]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15077]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15081]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15085]
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
// [15097]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15102]
// push constant 106
@106
D=A
@SP
AM=M+1
A=A-1
M=D
// [15108]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15114]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15120]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15124]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [15130]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15136]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15142]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15148]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15154]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15160]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15166]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15170]
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
// [15182]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15187]
// push constant 107
@107
D=A
@SP
AM=M+1
A=A-1
M=D
// [15193]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15199]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15205]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15211]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15217]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [15223]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [15229]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [15235]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [15241]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15247]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15251]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15255]
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
// [15267]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15272]
// push constant 108
@108
D=A
@SP
AM=M+1
A=A-1
M=D
// [15278]
// push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// [15284]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15290]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15296]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15302]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15308]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15314]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15320]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [15326]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15332]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15336]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15340]
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
// [15352]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15357]
// push constant 109
@109
D=A
@SP
AM=M+1
A=A-1
M=D
// [15363]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15367]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15371]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15375]
// push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// [15381]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [15387]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [15393]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [15399]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [15405]
// push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// [15411]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15415]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15419]
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
// [15431]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15436]
// push constant 110
@110
D=A
@SP
AM=M+1
A=A-1
M=D
// [15442]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15446]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15450]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15454]
// push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// [15460]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15466]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15472]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15478]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15484]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15490]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15494]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15498]
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
// [15510]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15515]
// push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// [15521]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
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
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15539]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15545]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15551]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15557]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15563]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15569]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15573]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15577]
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
// [15589]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15594]
// push constant 112
@112
D=A
@SP
AM=M+1
A=A-1
M=D
// [15600]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
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
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15618]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15624]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15630]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15636]
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// [15642]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15648]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15654]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15658]
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
// [15670]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15675]
// push constant 113
@113
D=A
@SP
AM=M+1
A=A-1
M=D
// [15681]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15685]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15689]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15693]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15699]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15705]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15711]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15717]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [15723]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15729]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [15735]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15739]
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
// [15751]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15756]
// push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// [15762]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15766]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15770]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15774]
// push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// [15780]
// push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// [15786]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15792]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15798]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [15804]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [15810]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15814]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15818]
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
// [15830]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15835]
// push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// [15841]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15845]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15849]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15853]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15859]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15865]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15871]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [15877]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [15883]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [15889]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15893]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15897]
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
// [15909]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15914]
// push constant 116
@116
D=A
@SP
AM=M+1
A=A-1
M=D
// [15920]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [15926]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15932]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15938]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [15944]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15950]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15956]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [15962]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [15968]
// push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// [15974]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15978]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [15982]
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
// [15994]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [15999]
// push constant 117
@117
D=A
@SP
AM=M+1
A=A-1
M=D
// [16005]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16009]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16013]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16017]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16023]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16029]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16035]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16041]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16047]
// push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// [16053]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16057]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16061]
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
// [16073]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16078]
// push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// [16084]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16088]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16092]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16096]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16102]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16108]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16114]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16120]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16126]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16132]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16136]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16140]
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
// [16152]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16157]
// push constant 119
@119
D=A
@SP
AM=M+1
A=A-1
M=D
// [16163]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16167]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16171]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16175]
// push constant 51
@51
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
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16193]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [16199]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [16205]
// push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// [16211]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16215]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16219]
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
// [16231]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16236]
// push constant 120
@120
D=A
@SP
AM=M+1
A=A-1
M=D
// [16242]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16246]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16250]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16254]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16260]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16266]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16272]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16278]
// push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// [16284]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16290]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16294]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16298]
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
// [16310]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16315]
// push constant 121
@121
D=A
@SP
AM=M+1
A=A-1
M=D
// [16321]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16325]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16329]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16333]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16339]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16345]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16351]
// push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// [16357]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [16363]
// push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// [16369]
// push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// [16375]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16379]
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
// [16391]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16396]
// push constant 122
@122
D=A
@SP
AM=M+1
A=A-1
M=D
// [16402]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16406]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16410]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16414]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [16420]
// push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// [16426]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16432]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [16438]
// push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// [16444]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [16450]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16454]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16458]
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
// [16470]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16475]
// push constant 123
@123
D=A
@SP
AM=M+1
A=A-1
M=D
// [16481]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [16487]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16493]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16499]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16505]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [16511]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16517]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16523]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16529]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [16535]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16539]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16543]
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
// [16555]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16560]
// push constant 124
@124
D=A
@SP
AM=M+1
A=A-1
M=D
// [16566]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16572]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16578]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16584]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16590]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16596]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16602]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16608]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16614]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16620]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16624]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16628]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL246
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL246)
// [16640]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16645]
// push constant 125
@125
D=A
@SP
AM=M+1
A=A-1
M=D
// [16651]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [16657]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16663]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16669]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16675]
// push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// [16681]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16687]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16693]
// push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// [16699]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [16705]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16709]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16713]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL247
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL247)
// [16725]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16730]
// push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// [16736]
// push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// [16742]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [16748]
// push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// [16754]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16758]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16762]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16766]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16770]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16774]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16778]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16782]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16786]
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@RET_ADDRESS_CALL248
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL248)
// [16798]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16803]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16807]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [16809]
// function Output.create 1
(Output.create)
@SP
AM=M+1
A=A-1
M=0
// [16813]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [16819]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL249
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL249)
// [16831]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [16837]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [16844]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [16850]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [16855]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [16862]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16867]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [16872]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [16878]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [16884]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [16888]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [16895]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [16900]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [16907]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16912]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [16917]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [16923]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [16929]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [16933]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [16940]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [16945]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [16953]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [16958]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [16963]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [16969]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [16975]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [16981]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [16988]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [16993]
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
// [17002]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17007]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17012]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17018]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17024]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [17030]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17037]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17042]
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
// [17051]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17056]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17061]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17067]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17073]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [17079]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17086]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17091]
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
// [17100]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17105]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17110]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17116]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17122]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [17128]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17135]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17140]
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
// [17149]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17154]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17159]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17165]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17171]
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// [17177]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17184]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17189]
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
// [17198]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17203]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17208]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17214]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17220]
// push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// [17226]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17233]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17238]
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
// [17247]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17252]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17257]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17263]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17269]
// push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// [17275]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17282]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17287]
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
// [17296]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17301]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17306]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17312]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17318]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [17324]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17331]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17336]
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
// [17345]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17350]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17355]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17361]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17367]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [17373]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17380]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17385]
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
// [17394]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17399]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17404]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [17410]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [17416]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17420]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [17422]
// function Output.getMap 0
(Output.getMap)
// [17422]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17429]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [17435]
// lt
@RET_ADDRESS_LT28
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT28)
// [17439]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17446]
// push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// [17452]
// gt
@RET_ADDRESS_GT17
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT17)
// [17456]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [17461]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.getMap$IF_TRUE0
D;JNE
// [17466]
// goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP
// [17468]
// label IF_TRUE0
(Output.getMap$IF_TRUE0)
// [17468]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17472]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [17478]
// label IF_FALSE0
(Output.getMap$IF_FALSE0)
// [17478]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17485]
// push static Output.0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [17491]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17496]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17501]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17508]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [17510]
// function Output.moveCursor 0
(Output.moveCursor)
// [17510]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17517]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [17522]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17529]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [17534]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [17540]
// call Output.renderChar 1
@1
D=A
@R13
M=D
@Output.renderChar
D=A
@R14
M=D
@RET_ADDRESS_CALL250
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL250)
// [17552]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [17557]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17561]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [17563]
// function Output.moveCursorForward 0
(Output.moveCursorForward)
// [17563]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [17569]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [17573]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17578]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [17583]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [17589]
// push constant 64
@64
D=A
@SP
AM=M+1
A=A-1
M=D
// [17595]
// eq
@RET_ADDRESS_EQ22
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ22)
// [17599]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.moveCursorForward$IF_TRUE0
D;JNE
// [17604]
// goto IF_FALSE0
@Output.moveCursorForward$IF_FALSE0
0;JMP
// [17606]
// label IF_TRUE0
(Output.moveCursorForward$IF_TRUE0)
// [17606]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17610]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [17615]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [17621]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [17625]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17630]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [17635]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [17641]
// push constant 23
@23
D=A
@SP
AM=M+1
A=A-1
M=D
// [17647]
// eq
@RET_ADDRESS_EQ23
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ23)
// [17651]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.moveCursorForward$IF_TRUE1
D;JNE
// [17656]
// goto IF_FALSE1
@Output.moveCursorForward$IF_FALSE1
0;JMP
// [17658]
// label IF_TRUE1
(Output.moveCursorForward$IF_TRUE1)
// [17658]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17662]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [17667]
// label IF_FALSE1
(Output.moveCursorForward$IF_FALSE1)
// [17667]
// label IF_FALSE0
(Output.moveCursorForward$IF_FALSE0)
// [17667]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17671]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [17673]
// function Output.moveCursorBackward 0
(Output.moveCursorBackward)
// [17673]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [17679]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [17683]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [17688]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [17693]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [17699]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17703]
// lt
@RET_ADDRESS_LT29
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT29)
// [17707]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.moveCursorBackward$IF_TRUE0
D;JNE
// [17712]
// goto IF_FALSE0
@Output.moveCursorBackward$IF_FALSE0
0;JMP
// [17714]
// label IF_TRUE0
(Output.moveCursorBackward$IF_TRUE0)
// [17714]
// push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// [17720]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [17725]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [17731]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [17735]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [17740]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [17745]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [17751]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17755]
// lt
@RET_ADDRESS_LT30
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT30)
// [17759]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.moveCursorBackward$IF_TRUE1
D;JNE
// [17764]
// goto IF_FALSE1
@Output.moveCursorBackward$IF_FALSE1
0;JMP
// [17766]
// label IF_TRUE1
(Output.moveCursorBackward$IF_TRUE1)
// [17766]
// push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// [17772]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [17777]
// label IF_FALSE1
(Output.moveCursorBackward$IF_FALSE1)
// [17777]
// label IF_FALSE0
(Output.moveCursorBackward$IF_FALSE0)
// [17777]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [17781]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [17783]
// function Output.renderChar 5
(Output.renderChar)
@5
D=A
(LOOP_Output.renderChar)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Output.renderChar
D;JGT

// [17792]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17799]
// call Output.getMap 1
@1
D=A
@R13
M=D
@Output.getMap
D=A
@R14
M=D
@RET_ADDRESS_CALL251
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL251)
// [17811]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [17817]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [17823]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [17829]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL252
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL252)
// [17841]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [17847]
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
// [17859]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [17865]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [17871]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL254
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL254)
// [17883]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17888]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [17895]
// push static Output.2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [17901]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [17905]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [17910]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [17918]
// label WHILE_EXP0
(Output.renderChar$WHILE_EXP0)
// [17918]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17925]
// push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// [17931]
// lt
@RET_ADDRESS_LT31
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT31)
// [17935]
// not
@SP
A=M-1
M=!M
// [17938]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.renderChar$WHILE_END0
D;JNE
// [17943]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17951]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17957]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17962]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17970]
// push static Output.1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [17976]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [17981]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [17986]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [17993]
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
// [18002]
// push static Output.4
@Output.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [18008]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18013]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18018]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18025]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [18030]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18037]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18044]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18049]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18054]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18061]
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
// [18070]
// push static Output.5
@Output.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18076]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18081]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18086]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18093]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL255
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL255)
// [18105]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [18110]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18115]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18120]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18126]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18132]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18140]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [18146]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18151]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [18158]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18165]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18169]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18174]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [18180]
// goto WHILE_EXP0
@Output.renderChar$WHILE_EXP0
0;JMP
// [18182]
// label WHILE_END0
(Output.renderChar$WHILE_END0)
// [18182]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18186]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18188]
// function Output.printChar 0
(Output.printChar)
// [18188]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18195]
// call String.backSpace 0
@0
D=A
@R13
M=D
@String.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL256
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL256)
// [18207]
// eq
@RET_ADDRESS_EQ24
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ24)
// [18211]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE0
D;JNE
// [18216]
// goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP
// [18218]
// label IF_TRUE0
(Output.printChar$IF_TRUE0)
// [18218]
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@RET_ADDRESS_CALL257
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL257)
// [18230]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18235]
// goto IF_END0
@Output.printChar$IF_END0
0;JMP
// [18237]
// label IF_FALSE0
(Output.printChar$IF_FALSE0)
// [18237]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18244]
// call String.newLine 0
@0
D=A
@R13
M=D
@String.newLine
D=A
@R14
M=D
@RET_ADDRESS_CALL258
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL258)
// [18256]
// eq
@RET_ADDRESS_EQ25
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ25)
// [18260]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE1
D;JNE
// [18265]
// goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP
// [18267]
// label IF_TRUE1
(Output.printChar$IF_TRUE1)
// [18267]
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@RET_ADDRESS_CALL259
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL259)
// [18279]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18284]
// goto IF_END1
@Output.printChar$IF_END1
0;JMP
// [18286]
// label IF_FALSE1
(Output.printChar$IF_FALSE1)
// [18286]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18293]
// call Output.renderChar 1
@1
D=A
@R13
M=D
@Output.renderChar
D=A
@R14
M=D
@RET_ADDRESS_CALL260
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL260)
// [18305]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18310]
// call Output.moveCursorForward 0
@0
D=A
@R13
M=D
@Output.moveCursorForward
D=A
@R14
M=D
@RET_ADDRESS_CALL261
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL261)
// [18322]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18327]
// label IF_END1
(Output.printChar$IF_END1)
// [18327]
// label IF_END0
(Output.printChar$IF_END0)
// [18327]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18331]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18333]
// function Output.printString 2
(Output.printString)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [18340]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18347]
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
// [18359]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [18365]
// label WHILE_EXP0
(Output.printString$WHILE_EXP0)
// [18365]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18372]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18379]
// lt
@RET_ADDRESS_LT32
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT32)
// [18383]
// not
@SP
A=M-1
M=!M
// [18386]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.printString$WHILE_END0
D;JNE
// [18391]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18398]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18405]
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
// [18417]
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
// [18429]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18434]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18441]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18445]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18450]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [18456]
// goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP
// [18458]
// label WHILE_END0
(Output.printString$WHILE_END0)
// [18458]
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@RET_ADDRESS_CALL265
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL265)
// [18470]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18475]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18482]
// call String.dispose 1
@1
D=A
@R13
M=D
@String.dispose
D=A
@R14
M=D
@RET_ADDRESS_CALL266
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL266)
// [18494]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18499]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18503]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18505]
// function Output.printInt 0
(Output.printInt)
// [18505]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18512]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18516]
// lt
@RET_ADDRESS_LT33
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT33)
// [18520]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.printInt$IF_TRUE0
D;JNE
// [18525]
// goto IF_FALSE0
@Output.printInt$IF_FALSE0
0;JMP
// [18527]
// label IF_TRUE0
(Output.printInt$IF_TRUE0)
// [18527]
// push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// [18533]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL267
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL267)
// [18545]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18550]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18557]
// neg
@SP
A=M-1
M=-M
// [18560]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [18566]
// label IF_FALSE0
(Output.printInt$IF_FALSE0)
// [18566]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18573]
// call Output.printIntAbs 1
@1
D=A
@R13
M=D
@Output.printIntAbs
D=A
@R14
M=D
@RET_ADDRESS_CALL268
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL268)
// [18585]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18590]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18594]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18596]
// function Output.printIntAbs 2
(Output.printIntAbs)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [18603]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18610]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [18616]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL269
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL269)
// [18628]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [18634]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18641]
// push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// [18647]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18654]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL270
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL270)
// [18666]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [18671]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [18677]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18684]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18688]
// gt
@RET_ADDRESS_GT18
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT18)
// [18692]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.printIntAbs$IF_TRUE0
D;JNE
// [18697]
// goto IF_FALSE0
@Output.printIntAbs$IF_FALSE0
0;JMP
// [18699]
// label IF_TRUE0
(Output.printIntAbs$IF_TRUE0)
// [18699]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [18706]
// call Output.printIntAbs 1
@1
D=A
@R13
M=D
@Output.printIntAbs
D=A
@R14
M=D
@RET_ADDRESS_CALL271
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL271)
// [18718]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18723]
// label IF_FALSE0
(Output.printIntAbs$IF_FALSE0)
// [18723]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [18730]
// push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// [18736]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18741]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL272
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL272)
// [18753]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18758]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18762]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18764]
// function Output.println 0
(Output.println)
// [18764]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18768]
// pop static Output.2
@SP
AM=M-1
D=M
@Output.2
M=D
// [18773]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [18779]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18783]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18788]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [18793]
// push static Output.3
@Output.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [18799]
// push constant 23
@23
D=A
@SP
AM=M+1
A=A-1
M=D
// [18805]
// eq
@RET_ADDRESS_EQ26
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ26)
// [18809]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.println$IF_TRUE0
D;JNE
// [18814]
// goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP
// [18816]
// label IF_TRUE0
(Output.println$IF_TRUE0)
// [18816]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18820]
// pop static Output.3
@SP
AM=M-1
D=M
@Output.3
M=D
// [18825]
// label IF_FALSE0
(Output.println$IF_FALSE0)
// [18825]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18829]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18831]
// function Output.backSpace 0
(Output.backSpace)
// [18831]
// call Output.moveCursorBackward 0
@0
D=A
@R13
M=D
@Output.moveCursorBackward
D=A
@R14
M=D
@RET_ADDRESS_CALL273
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL273)
// [18843]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18848]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [18854]
// call Output.renderChar 1
@1
D=A
@R13
M=D
@Output.renderChar
D=A
@R14
M=D
@RET_ADDRESS_CALL274
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL274)
// [18866]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18871]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18875]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [18877]
// function Screen.init 1
(Screen.init)
@SP
AM=M+1
A=A-1
M=0
// [18881]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18885]
// not
@SP
A=M-1
M=!M
// [18888]
// pop static Screen.0
@SP
AM=M-1
D=M
@Screen.0
M=D
// [18893]
// push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// [18899]
// pop static Screen.1
@SP
AM=M-1
D=M
@Screen.1
M=D
// [18904]
// call Math.twoToThe 0
@0
D=A
@R13
M=D
@Math.twoToThe
D=A
@R14
M=D
@RET_ADDRESS_CALL275
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL275)
// [18916]
// pop static Screen.2
@SP
AM=M-1
D=M
@Screen.2
M=D
// [18921]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [18927]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL276
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL276)
// [18939]
// pop static Screen.3
@SP
AM=M-1
D=M
@Screen.3
M=D
// [18944]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [18948]
// push static Screen.3
@Screen.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [18954]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [18959]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18963]
// neg
@SP
A=M-1
M=-M
// [18966]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [18971]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [18976]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [18982]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [18988]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [18992]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [18998]
// label WHILE_EXP0
(Screen.init$WHILE_EXP0)
// [18998]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19005]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [19011]
// lt
@RET_ADDRESS_LT34
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT34)
// [19015]
// not
@SP
A=M-1
M=!M
// [19018]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.init$WHILE_END0
D;JNE
// [19023]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19030]
// push static Screen.3
@Screen.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [19036]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19041]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19048]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19052]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [19057]
// push static Screen.3
@Screen.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [19063]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19068]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19073]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19080]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19087]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19091]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [19096]
// push static Screen.2
@Screen.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [19102]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19107]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19112]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19119]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [19124]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19129]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19134]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [19140]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [19146]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19153]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19157]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19162]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19168]
// goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP
// [19170]
// label WHILE_END0
(Screen.init$WHILE_END0)
// [19170]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [19176]
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@RET_ADDRESS_CALL277
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL277)
// [19188]
// pop static Screen.4
@SP
AM=M-1
D=M
@Screen.4
M=D
// [19193]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19197]
// push static Screen.4
@Screen.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [19203]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19208]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19212]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19217]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19222]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [19228]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [19234]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19238]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19244]
// label WHILE_EXP1
(Screen.init$WHILE_EXP1)
// [19244]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19251]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [19257]
// lt
@RET_ADDRESS_LT35
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT35)
// [19261]
// not
@SP
A=M-1
M=!M
// [19264]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Screen.init$WHILE_END1
D;JNE
// [19269]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19276]
// push static Screen.4
@Screen.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [19282]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19287]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19294]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19298]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [19303]
// push static Screen.4
@Screen.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [19309]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19314]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19319]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19326]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19333]
// push static Screen.2
@Screen.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [19339]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19344]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19349]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19356]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19361]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19366]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19371]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [19377]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [19383]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19390]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19394]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19399]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19405]
// goto WHILE_EXP1
@Screen.init$WHILE_EXP1
0;JMP
// [19407]
// label WHILE_END1
(Screen.init$WHILE_END1)
// [19407]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19411]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19413]
// function Screen.clearScreen 1
(Screen.clearScreen)
@SP
AM=M+1
A=A-1
M=0
// [19417]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19421]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19427]
// label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)
// [19427]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19434]
// push constant 8096
@8096
D=A
@SP
AM=M+1
A=A-1
M=D
// [19440]
// eq
@RET_ADDRESS_EQ27
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ27)
// [19444]
// not
@SP
A=M-1
M=!M
// [19447]
// not
@SP
A=M-1
M=!M
// [19450]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.clearScreen$WHILE_END0
D;JNE
// [19455]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19462]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19468]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19473]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19477]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19482]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19487]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [19493]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [19499]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19506]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [19510]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19515]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19521]
// goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP
// [19523]
// label WHILE_END0
(Screen.clearScreen$WHILE_END0)
// [19523]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19527]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19529]
// function Screen.setColor 0
(Screen.setColor)
// [19529]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19536]
// pop static Screen.0
@SP
AM=M-1
D=M
@Screen.0
M=D
// [19541]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19545]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19547]
// function Screen.drawPixel 4
(Screen.drawPixel)
@4
D=A
(LOOP_Screen.drawPixel)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawPixel
D;JGT

// [19556]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [19562]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19569]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL278
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL278)
// [19581]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19588]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [19594]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL279
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL279)
// [19606]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19611]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [19617]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19624]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [19630]
// call Math.mod 2
@2
D=A
@R13
M=D
@Math.mod
D=A
@R14
M=D
@RET_ADDRESS_CALL280
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL280)
// [19642]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [19648]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19655]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19661]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19666]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19671]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19678]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [19685]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19692]
// push static Screen.2
@Screen.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [19698]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19703]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19708]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19715]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [19723]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [19729]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawPixel$IF_TRUE0
D;JNE
// [19734]
// goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP
// [19736]
// label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)
// [19736]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19744]
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
// [19753]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [19758]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [19765]
// goto IF_END0
@Screen.drawPixel$IF_END0
0;JMP
// [19767]
// label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
// [19767]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19775]
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
// [19784]
// not
@SP
A=M-1
M=!M
// [19787]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [19792]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [19799]
// label IF_END0
(Screen.drawPixel$IF_END0)
// [19799]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19806]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19812]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [19817]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19825]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [19830]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [19835]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [19841]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [19847]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [19851]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [19853]
// function Screen.drawLine 15
(Screen.drawLine)
@15
D=A
(LOOP_Screen.drawLine)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawLine
D;JGT

// [19862]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19869]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19877]
// eq
@RET_ADDRESS_EQ28
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ28)
// [19881]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE0
D;JNE
// [19886]
// goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP
// [19888]
// label IF_TRUE0
(Screen.drawLine$IF_TRUE0)
// [19888]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19895]
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
// [19904]
// gt
@RET_ADDRESS_GT19
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT19)
// [19908]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE1
D;JNE
// [19913]
// goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP
// [19915]
// label IF_TRUE1
(Screen.drawLine$IF_TRUE1)
// [19915]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19922]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [19930]
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
// [19939]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [19945]
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
// [19954]
// pop argument 3
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
A=A+1
M=D
// [19962]
// label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
// [19962]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [19968]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [19975]
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
// [19987]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [19994]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20000]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL282
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL282)
// [20012]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20017]
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
// [20029]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20035]
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
// [20044]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL283
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL283)
// [20056]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20064]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20070]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL284
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL284)
// [20082]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20087]
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
// [20099]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20106]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20112]
// call Math.mod 2
@2
D=A
@R13
M=D
@Math.mod
D=A
@R14
M=D
@RET_ADDRESS_CALL285
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL285)
// [20124]
// push static Screen.2
@Screen.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [20130]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20135]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20140]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20147]
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
// [20159]
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
// [20168]
// pop local 12
@LCL
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
// [20180]
// label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)
// [20180]
// push local 12
@LCL
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20189]
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
// [20198]
// gt
@RET_ADDRESS_GT20
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT20)
// [20202]
// not
@SP
A=M-1
M=!M
// [20205]
// not
@SP
A=M-1
M=!M
// [20208]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawLine$WHILE_END0
D;JNE
// [20213]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20219]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE2
D;JNE
// [20224]
// goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP
// [20226]
// label IF_TRUE2
(Screen.drawLine$IF_TRUE2)
// [20226]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20235]
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
// [20244]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [20249]
// pop local 13
@LCL
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
// [20261]
// goto IF_END2
@Screen.drawLine$IF_END2
0;JMP
// [20263]
// label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
// [20263]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20272]
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
// [20281]
// not
@SP
A=M-1
M=!M
// [20284]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [20289]
// pop local 13
@LCL
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
// [20301]
// label IF_END2
(Screen.drawLine$IF_END2)
// [20301]
// push local 12
@LCL
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20310]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20316]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20321]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20330]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20335]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20340]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [20346]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [20352]
// push local 12
@LCL
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20361]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20367]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20372]
// pop local 12
@LCL
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
// [20384]
// goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP
// [20386]
// label WHILE_END0
(Screen.drawLine$WHILE_END0)
// [20386]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [20390]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [20392]
// label IF_FALSE0
(Screen.drawLine$IF_FALSE0)
// [20392]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20399]
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
// [20408]
// eq
@RET_ADDRESS_EQ29
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ29)
// [20412]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE3
D;JNE
// [20417]
// goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP
// [20419]
// label IF_TRUE3
(Screen.drawLine$IF_TRUE3)
// [20419]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20426]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20434]
// gt
@RET_ADDRESS_GT21
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT21)
// [20438]
// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE4
D;JNE
// [20443]
// goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP
// [20445]
// label IF_TRUE4
(Screen.drawLine$IF_TRUE4)
// [20445]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20452]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [20460]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20468]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [20474]
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
// [20483]
// pop argument 2
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
M=D
// [20490]
// label IF_FALSE4
(Screen.drawLine$IF_FALSE4)
// [20490]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20496]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20503]
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
// [20515]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20522]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20528]
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
// [20540]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20545]
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
// [20557]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [20563]
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
// [20572]
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
// [20584]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20592]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20598]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL289
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL289)
// [20610]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20615]
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
// [20627]
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
// [20636]
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
// [20645]
// eq
@RET_ADDRESS_EQ30
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ30)
// [20649]
// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE5
D;JNE
// [20654]
// goto IF_FALSE5
@Screen.drawLine$IF_FALSE5
0;JMP
// [20656]
// label IF_TRUE5
(Screen.drawLine$IF_TRUE5)
// [20656]
// label WHILE_EXP1
(Screen.drawLine$WHILE_EXP1)
// [20656]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20663]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20671]
// gt
@RET_ADDRESS_GT22
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT22)
// [20675]
// not
@SP
A=M-1
M=!M
// [20678]
// not
@SP
A=M-1
M=!M
// [20681]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Screen.drawLine$WHILE_END1
D;JNE
// [20686]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20693]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20700]
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@RET_ADDRESS_CALL290
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL290)
// [20712]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [20717]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20724]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20728]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20733]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [20739]
// goto WHILE_EXP1
@Screen.drawLine$WHILE_EXP1
0;JMP
// [20741]
// label WHILE_END1
(Screen.drawLine$WHILE_END1)
// [20741]
// goto IF_END5
@Screen.drawLine$IF_END5
0;JMP
// [20743]
// label IF_FALSE5
(Screen.drawLine$IF_FALSE5)
// [20743]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20750]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20756]
// call Math.mod 2
@2
D=A
@R13
M=D
@Math.mod
D=A
@R14
M=D
@RET_ADDRESS_CALL291
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL291)
// [20768]
// push static Screen.3
@Screen.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [20774]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20779]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20784]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20791]
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
// [20803]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20811]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [20817]
// call Math.mod 2
@2
D=A
@R13
M=D
@Math.mod
D=A
@R14
M=D
@RET_ADDRESS_CALL292
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL292)
// [20829]
// push static Screen.4
@Screen.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [20835]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20840]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20845]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20852]
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
// [20864]
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
// [20873]
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
// [20882]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20887]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [20891]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [20896]
// pop local 11
@LCL
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
// [20908]
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
// [20917]
// pop local 14
@LCL
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
// [20929]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20938]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [20944]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [20949]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [20954]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [20961]
// pop local 13
@LCL
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
// [20973]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [20979]
// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE6
D;JNE
// [20984]
// goto IF_FALSE6
@Screen.drawLine$IF_FALSE6
0;JMP
// [20986]
// label IF_TRUE6
(Screen.drawLine$IF_TRUE6)
// [20986]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [20995]
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
// [21004]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [21009]
// pop local 13
@LCL
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
// [21021]
// goto IF_END6
@Screen.drawLine$IF_END6
0;JMP
// [21023]
// label IF_FALSE6
(Screen.drawLine$IF_FALSE6)
// [21023]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21032]
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
// [21041]
// not
@SP
A=M-1
M=!M
// [21044]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [21049]
// pop local 13
@LCL
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
// [21061]
// label IF_END6
(Screen.drawLine$IF_END6)
// [21061]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21070]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21076]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21081]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21090]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21095]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [21100]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [21106]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [21112]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21116]
// pop local 12
@LCL
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
// [21128]
// label WHILE_EXP2
(Screen.drawLine$WHILE_EXP2)
// [21128]
// push local 12
@LCL
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21137]
// push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21146]
// lt
@RET_ADDRESS_LT36
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT36)
// [21150]
// not
@SP
A=M-1
M=!M
// [21153]
// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Screen.drawLine$WHILE_END2
D;JNE
// [21158]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21167]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [21171]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21176]
// pop local 14
@LCL
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
// [21188]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21197]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21203]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21208]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [21214]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21219]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [21224]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [21230]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [21236]
// push local 12
@LCL
D=M
@12
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21245]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [21249]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21254]
// pop local 12
@LCL
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
// [21266]
// goto WHILE_EXP2
@Screen.drawLine$WHILE_EXP2
0;JMP
// [21268]
// label WHILE_END2
(Screen.drawLine$WHILE_END2)
// [21268]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21277]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [21281]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21286]
// pop local 14
@LCL
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
// [21298]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21307]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21313]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21318]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [21323]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21330]
// pop local 13
@LCL
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
// [21342]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [21348]
// if-goto IF_TRUE7
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE7
D;JNE
// [21353]
// goto IF_FALSE7
@Screen.drawLine$IF_FALSE7
0;JMP
// [21355]
// label IF_TRUE7
(Screen.drawLine$IF_TRUE7)
// [21355]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21364]
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
// [21373]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [21378]
// pop local 13
@LCL
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
// [21390]
// goto IF_END7
@Screen.drawLine$IF_END7
0;JMP
// [21392]
// label IF_FALSE7
(Screen.drawLine$IF_FALSE7)
// [21392]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21401]
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
// [21410]
// not
@SP
A=M-1
M=!M
// [21413]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [21418]
// pop local 13
@LCL
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
// [21430]
// label IF_END7
(Screen.drawLine$IF_END7)
// [21430]
// push local 14
@LCL
D=M
@14
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21439]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21445]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21450]
// push local 13
@LCL
D=M
@13
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// [21459]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21464]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [21469]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [21475]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [21481]
// label IF_END5
(Screen.drawLine$IF_END5)
// [21481]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21485]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [21487]
// label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
// [21487]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21494]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21502]
// gt
@RET_ADDRESS_GT23
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT23)
// [21506]
// if-goto IF_TRUE8
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE8
D;JNE
// [21511]
// goto IF_FALSE8
@Screen.drawLine$IF_FALSE8
0;JMP
// [21513]
// label IF_TRUE8
(Screen.drawLine$IF_TRUE8)
// [21513]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21520]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [21528]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21536]
// pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// [21542]
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
// [21551]
// pop argument 2
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
M=D
// [21558]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21565]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [21573]
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
// [21582]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [21588]
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
// [21597]
// pop argument 3
@SP
AM=M-1
D=M
@ARG
A=M+1
A=A+1
A=A+1
M=D
// [21605]
// label IF_FALSE8
(Screen.drawLine$IF_FALSE8)
// [21605]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [21609]
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
// [21620]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21628]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21635]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21640]
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
// [21649]
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
// [21658]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21665]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21670]
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
// [21680]
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
// [21689]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21693]
// lt
@RET_ADDRESS_LT37
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT37)
// [21697]
// if-goto IF_TRUE9
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE9
D;JNE
// [21702]
// goto IF_FALSE9
@Screen.drawLine$IF_FALSE9
0;JMP
// [21704]
// label IF_TRUE9
(Screen.drawLine$IF_TRUE9)
// [21704]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [21708]
// neg
@SP
A=M-1
M=-M
// [21711]
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
// [21722]
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
// [21731]
// neg
@SP
A=M-1
M=-M
// [21734]
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
// [21744]
// label IF_FALSE9
(Screen.drawLine$IF_FALSE9)
// [21744]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21751]
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
// [21760]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL293
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL293)
// [21772]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21779]
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
// [21788]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL294
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL294)
// [21800]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [21805]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [21812]
// label WHILE_EXP3
(Screen.drawLine$WHILE_EXP3)
// [21812]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21819]
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
// [21828]
// gt
@RET_ADDRESS_GT24
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT24)
// [21832]
// not
@SP
A=M-1
M=!M
// [21835]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21842]
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
// [21851]
// gt
@RET_ADDRESS_GT25
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT25)
// [21855]
// not
@SP
A=M-1
M=!M
// [21858]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [21863]
// not
@SP
A=M-1
M=!M
// [21866]
// if-goto WHILE_END3
@SP
AM=M-1
D=M
@Screen.drawLine$WHILE_END3
D;JNE
// [21871]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21878]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21885]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21890]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21897]
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
// [21906]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21913]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL295
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL295)
// [21925]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21930]
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@RET_ADDRESS_CALL296
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL296)
// [21942]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [21947]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [21955]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [21959]
// lt
@RET_ADDRESS_LT38
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT38)
// [21963]
// if-goto IF_TRUE10
@SP
AM=M-1
D=M
@Screen.drawLine$IF_TRUE10
D;JNE
// [21968]
// goto IF_FALSE10
@Screen.drawLine$IF_FALSE10
0;JMP
// [21970]
// label IF_TRUE10
(Screen.drawLine$IF_TRUE10)
// [21970]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [21977]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [21981]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [21986]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [21992]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22000]
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
// [22009]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22014]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [22021]
// goto IF_END10
@Screen.drawLine$IF_END10
0;JMP
// [22023]
// label IF_FALSE10
(Screen.drawLine$IF_FALSE10)
// [22023]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22030]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22034]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22039]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [22045]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22053]
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
// [22062]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22067]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [22074]
// label IF_END10
(Screen.drawLine$IF_END10)
// [22074]
// goto WHILE_EXP3
@Screen.drawLine$WHILE_EXP3
0;JMP
// [22076]
// label WHILE_END3
(Screen.drawLine$WHILE_END3)
// [22076]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22080]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [22082]
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

// [22091]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22099]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22105]
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@RET_ADDRESS_CALL297
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL297)
// [22117]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22124]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22130]
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
// [22142]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22147]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22151]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [22156]
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
// [22166]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [22172]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22179]
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
// [22191]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22198]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22204]
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
// [22216]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22221]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [22227]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22234]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22240]
// call Math.mod 2
@2
D=A
@R13
M=D
@Math.mod
D=A
@R14
M=D
@RET_ADDRESS_CALL301
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL301)
// [22252]
// push static Screen.3
@Screen.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [22258]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22263]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22268]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22275]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [22283]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22291]
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// [22297]
// call Math.mod 2
@2
D=A
@R13
M=D
@Math.mod
D=A
@R14
M=D
@RET_ADDRESS_CALL302
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL302)
// [22309]
// push static Screen.4
@Screen.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [22315]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22320]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22325]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22332]
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
// [22341]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22348]
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
// [22359]
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
// [22368]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22372]
// lt
@RET_ADDRESS_LT39
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT39)
// [22376]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE0
D;JNE
// [22381]
// goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP
// [22383]
// label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
// [22383]
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
// [22392]
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
// [22401]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [22406]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [22414]
// label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
// [22414]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22421]
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
// [22430]
// gt
@RET_ADDRESS_GT26
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT26)
// [22434]
// not
@SP
A=M-1
M=!M
// [22437]
// not
@SP
A=M-1
M=!M
// [22440]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawRectangle$WHILE_END0
D;JNE
// [22445]
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
// [22454]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22460]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22465]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22470]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22477]
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
// [22489]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [22495]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE1
D;JNE
// [22500]
// goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP
// [22502]
// label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
// [22502]
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
// [22511]
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
// [22520]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22525]
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
// [22537]
// goto IF_END1
@Screen.drawRectangle$IF_END1
0;JMP
// [22539]
// label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
// [22539]
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
// [22548]
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
// [22557]
// not
@SP
A=M-1
M=!M
// [22560]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [22565]
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
// [22577]
// label IF_END1
(Screen.drawRectangle$IF_END1)
// [22577]
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
// [22586]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22592]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22597]
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
// [22606]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [22611]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22616]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [22622]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [22628]
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
// [22637]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [22643]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22648]
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
// [22659]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22666]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22670]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22675]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [22681]
// goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP
// [22683]
// label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
// [22683]
// goto IF_END0
@Screen.drawRectangle$IF_END0
0;JMP
// [22685]
// label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
// [22685]
// label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
// [22685]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22692]
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
// [22701]
// gt
@RET_ADDRESS_GT27
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT27)
// [22705]
// not
@SP
A=M-1
M=!M
// [22708]
// not
@SP
A=M-1
M=!M
// [22711]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Screen.drawRectangle$WHILE_END1
D;JNE
// [22716]
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
// [22725]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22731]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22736]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22741]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [22748]
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
// [22760]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [22766]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE2
D;JNE
// [22771]
// goto IF_FALSE2
@Screen.drawRectangle$IF_FALSE2
0;JMP
// [22773]
// label IF_TRUE2
(Screen.drawRectangle$IF_TRUE2)
// [22773]
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
// [22782]
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
// [22791]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [22796]
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
// [22808]
// goto IF_END2
@Screen.drawRectangle$IF_END2
0;JMP
// [22810]
// label IF_FALSE2
(Screen.drawRectangle$IF_FALSE2)
// [22810]
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
// [22819]
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
// [22828]
// not
@SP
A=M-1
M=!M
// [22831]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [22836]
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
// [22848]
// label IF_END2
(Screen.drawRectangle$IF_END2)
// [22848]
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
// [22857]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22863]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22868]
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
// [22877]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [22882]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [22887]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [22893]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [22899]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [22903]
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
// [22915]
// label WHILE_EXP2
(Screen.drawRectangle$WHILE_EXP2)
// [22915]
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
// [22924]
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
// [22933]
// lt
@RET_ADDRESS_LT40
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT40)
// [22937]
// not
@SP
A=M-1
M=!M
// [22940]
// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Screen.drawRectangle$WHILE_END2
D;JNE
// [22945]
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
// [22954]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [22958]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22963]
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
// [22974]
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
// [22983]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [22989]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [22994]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [23000]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23005]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23010]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [23016]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [23022]
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
// [23031]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23035]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23040]
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
// [23052]
// goto WHILE_EXP2
@Screen.drawRectangle$WHILE_EXP2
0;JMP
// [23054]
// label WHILE_END2
(Screen.drawRectangle$WHILE_END2)
// [23054]
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
// [23063]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23067]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23072]
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
// [23083]
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
// [23092]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23098]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23103]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23108]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23115]
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
// [23127]
// push static Screen.0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [23133]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE3
D;JNE
// [23138]
// goto IF_FALSE3
@Screen.drawRectangle$IF_FALSE3
0;JMP
// [23140]
// label IF_TRUE3
(Screen.drawRectangle$IF_TRUE3)
// [23140]
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
// [23149]
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
// [23158]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [23163]
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
// [23175]
// goto IF_END3
@Screen.drawRectangle$IF_END3
0;JMP
// [23177]
// label IF_FALSE3
(Screen.drawRectangle$IF_FALSE3)
// [23177]
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
// [23186]
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
// [23195]
// not
@SP
A=M-1
M=!M
// [23198]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [23203]
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
// [23215]
// label IF_END3
(Screen.drawRectangle$IF_END3)
// [23215]
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
// [23224]
// push static Screen.1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23230]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23235]
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
// [23244]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23249]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23254]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [23260]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [23266]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23273]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [23279]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23284]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [23290]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23297]
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
// [23308]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23315]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23319]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23324]
// pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// [23330]
// goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP
// [23332]
// label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
// [23332]
// label IF_END0
(Screen.drawRectangle$IF_END0)
// [23332]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23336]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [23338]
// function Screen.drawCircle 8
(Screen.drawCircle)
@8
D=A
(LOOP_Screen.drawCircle)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Screen.drawCircle
D;JGT

// [23347]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23351]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [23357]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23365]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23373]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL303
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL303)
// [23385]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [23392]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23399]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23406]
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@RET_ADDRESS_CALL304
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL304)
// [23418]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [23424]
// label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)
// [23424]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23431]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23439]
// gt
@RET_ADDRESS_GT28
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT28)
// [23443]
// not
@SP
A=M-1
M=!M
// [23446]
// not
@SP
A=M-1
M=!M
// [23449]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen.drawCircle$WHILE_END0
D;JNE
// [23454]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23462]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23469]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23474]
// call Math.sqrt 1
@1
D=A
@R13
M=D
@Math.sqrt
D=A
@R14
M=D
@RET_ADDRESS_CALL305
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL305)
// [23486]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [23494]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23501]
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
// [23510]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23515]
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
// [23524]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23531]
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
// [23540]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23545]
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
// [23555]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23562]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23569]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23574]
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
// [23585]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23592]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23599]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23604]
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
// [23616]
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
// [23625]
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
// [23634]
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
// [23643]
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
// [23652]
// call Screen.drawLine 4
@4
D=A
@R13
M=D
@Screen.drawLine
D=A
@R14
M=D
@RET_ADDRESS_CALL306
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL306)
// [23664]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23669]
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
// [23678]
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
// [23687]
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
// [23696]
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
// [23705]
// call Screen.drawLine 4
@4
D=A
@R13
M=D
@Screen.drawLine
D=A
@R14
M=D
@RET_ADDRESS_CALL307
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL307)
// [23717]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23722]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [23729]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23733]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23738]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23745]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23750]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23757]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23762]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [23768]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23775]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23779]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23784]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [23790]
// goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP
// [23792]
// label WHILE_END0
(Screen.drawCircle$WHILE_END0)
// [23792]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23796]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [23798]
// function Memory.init 0
(Memory.init)
// [23798]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23802]
// pop static Memory.0
@SP
AM=M-1
D=M
@Memory.0
M=D
// [23807]
// push constant 2048
@2048
D=A
@SP
AM=M+1
A=A-1
M=D
// [23813]
// pop static Memory.2
@SP
AM=M-1
D=M
@Memory.2
M=D
// [23818]
// push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// [23824]
// pop static Memory.3
@SP
AM=M-1
D=M
@Memory.3
M=D
// [23829]
// push static Memory.2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [23835]
// pop static Memory.1
@SP
AM=M-1
D=M
@Memory.1
M=D
// [23840]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23844]
// pop static Memory.5
@SP
AM=M-1
D=M
@Memory.5
M=D
// [23849]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [23853]
// pop static Memory.4
@SP
AM=M-1
D=M
@Memory.4
M=D
// [23858]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23862]
// not
@SP
A=M-1
M=!M
// [23865]
// pop static Memory.6
@SP
AM=M-1
D=M
@Memory.6
M=D
// [23870]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [23876]
// push static Memory.2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [23882]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23887]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [23893]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23898]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23903]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [23909]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [23915]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [23921]
// push static Memory.2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [23927]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [23932]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [23938]
// push static Memory.2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// [23944]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23949]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [23955]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [23960]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [23965]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [23970]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [23976]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [23982]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [23986]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [23988]
// function Memory.peek 0
(Memory.peek)
// [23988]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [23995]
// push static Memory.0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [24001]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24006]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24011]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24018]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24020]
// function Memory.poke 0
(Memory.poke)
// [24020]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24027]
// push static Memory.0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// [24033]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24038]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24045]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24050]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24055]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24061]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [24067]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24071]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24073]
// function Memory.alloc 6
(Memory.alloc)
@6
D=A
(LOOP_Memory.alloc)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Memory.alloc
D;JGT

// [24082]
// push static Memory.1
@Memory.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24088]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [24094]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24098]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [24106]
// label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
// [24106]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24113]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [24119]
// eq
@RET_ADDRESS_EQ31
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ31)
// [24123]
// not
@SP
A=M-1
M=!M
// [24126]
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
// [24135]
// not
@SP
A=M-1
M=!M
// [24138]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [24143]
// not
@SP
A=M-1
M=!M
// [24146]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Memory.alloc$WHILE_END0
D;JNE
// [24151]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24157]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24164]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24169]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24174]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24181]
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
// [24190]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24197]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [24203]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24208]
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
// [24218]
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
// [24227]
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
// [24236]
// lt
@RET_ADDRESS_LT41
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT41)
// [24240]
// not
@SP
A=M-1
M=!M
// [24243]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE0
D;JNE
// [24248]
// goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP
// [24250]
// label IF_TRUE0
(Memory.alloc$IF_TRUE0)
// [24250]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24257]
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
// [24266]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24271]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [24278]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24284]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24292]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24297]
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
// [24306]
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
// [24315]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24320]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24325]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24330]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24336]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [24342]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [24348]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24356]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24361]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [24367]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24374]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24379]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24384]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24391]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24396]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24401]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24407]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [24413]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [24419]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24426]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24431]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24439]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24444]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24449]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24455]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [24461]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24467]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24474]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24479]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24483]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24488]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24493]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24499]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [24505]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24512]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [24518]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24523]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [24529]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24533]
// not
@SP
A=M-1
M=!M
// [24536]
// pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// [24544]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24551]
// push static Memory.1
@Memory.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24557]
// eq
@RET_ADDRESS_EQ32
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ32)
// [24561]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE1
D;JNE
// [24566]
// goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP
// [24568]
// label IF_TRUE1
(Memory.alloc$IF_TRUE1)
// [24568]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [24574]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24581]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24586]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24591]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24598]
// pop static Memory.1
@SP
AM=M-1
D=M
@Memory.1
M=D
// [24603]
// label IF_FALSE1
(Memory.alloc$IF_FALSE1)
// [24603]
// label IF_FALSE0
(Memory.alloc$IF_FALSE0)
// [24603]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [24609]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24616]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24621]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24626]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24633]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [24639]
// goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP
// [24641]
// label WHILE_END0
(Memory.alloc$WHILE_END0)
// [24641]
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
// [24650]
// not
@SP
A=M-1
M=!M
// [24653]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE2
D;JNE
// [24658]
// goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP
// [24660]
// label IF_TRUE2
(Memory.alloc$IF_TRUE2)
// [24660]
// push static Memory.6
@Memory.6
D=M
@SP
AM=M+1
A=A-1
M=D
// [24666]
// not
@SP
A=M-1
M=!M
// [24669]
// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE3
D;JNE
// [24674]
// goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP
// [24676]
// label IF_TRUE3
(Memory.alloc$IF_TRUE3)
// [24676]
// call Memory.deFrag 0
@0
D=A
@R13
M=D
@Memory.deFrag
D=A
@R14
M=D
@RET_ADDRESS_CALL308
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL308)
// [24688]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24693]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24700]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL309
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL309)
// [24712]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24714]
// goto IF_END3
@Memory.alloc$IF_END3
0;JMP
// [24716]
// label IF_FALSE3
(Memory.alloc$IF_FALSE3)
// [24716]
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
// [24725]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL310
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL310)
// [24737]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24742]
// label IF_END3
(Memory.alloc$IF_END3)
// [24742]
// label IF_FALSE2
(Memory.alloc$IF_FALSE2)
// [24742]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24749]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24751]
// function Memory.deAlloc 2
(Memory.deAlloc)
@SP
A=M
M=0
AD=A+1
M=0
@SP
M=D+1
// [24758]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24762]
// pop static Memory.6
@SP
AM=M-1
D=M
@Memory.6
M=D
// [24767]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24774]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [24780]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24785]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [24791]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24797]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24804]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24809]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [24815]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24822]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [24827]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24832]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24839]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24846]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [24851]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24856]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [24861]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [24867]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [24873]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24880]
// push static Memory.1
@Memory.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24886]
// lt
@RET_ADDRESS_LT42
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT42)
// [24890]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE
// [24895]
// goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP
// [24897]
// label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
// [24897]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24904]
// pop static Memory.1
@SP
AM=M-1
D=M
@Memory.1
M=D
// [24909]
// label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
// [24909]
// call Memory.deFrag 0
@0
D=A
@R13
M=D
@Memory.deFrag
D=A
@R14
M=D
@RET_ADDRESS_CALL311
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL311)
// [24921]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [24926]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24930]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [24932]
// function Memory.deFrag 3
(Memory.deFrag)
@3
D=A
(LOOP_Memory.deFrag)
D=D-1
@SP
AM=M+1
A=A-1
M=0
@LOOP_Memory.deFrag
D;JGT

// [24941]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [24945]
// not
@SP
A=M-1
M=!M
// [24948]
// pop static Memory.6
@SP
AM=M-1
D=M
@Memory.6
M=D
// [24953]
// push static Memory.1
@Memory.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24959]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [24965]
// push static Memory.1
@Memory.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [24971]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [24977]
// label WHILE_EXP0
(Memory.deFrag$WHILE_EXP0)
// [24977]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [24984]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [24990]
// eq
@RET_ADDRESS_EQ33
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ33)
// [24994]
// not
@SP
A=M-1
M=!M
// [24997]
// not
@SP
A=M-1
M=!M
// [25000]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Memory.deFrag$WHILE_END0
D;JNE
// [25005]
// label WHILE_EXP1
(Memory.deFrag$WHILE_EXP1)
// [25005]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25012]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [25018]
// eq
@RET_ADDRESS_EQ34
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ34)
// [25022]
// not
@SP
A=M-1
M=!M
// [25025]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25031]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25038]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25043]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25048]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25055]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25062]
// eq
@RET_ADDRESS_EQ35
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ35)
// [25066]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25072]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25077]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25083]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25090]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25095]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25100]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25107]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25111]
// gt
@RET_ADDRESS_GT29
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT29)
// [25115]
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// [25120]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [25125]
// not
@SP
A=M-1
M=!M
// [25128]
// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Memory.deFrag$WHILE_END1
D;JNE
// [25133]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25139]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25146]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25151]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25156]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25163]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25169]
// goto WHILE_EXP1
@Memory.deFrag$WHILE_EXP1
0;JMP
// [25171]
// label WHILE_END1
(Memory.deFrag$WHILE_END1)
// [25171]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25178]
// pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// [25185]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25193]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25199]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25206]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25211]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25216]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25223]
// gt
@RET_ADDRESS_GT30
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT30)
// [25227]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.deFrag$IF_TRUE0
D;JNE
// [25232]
// goto IF_FALSE0
@Memory.deFrag$IF_FALSE0
0;JMP
// [25234]
// label IF_TRUE0
(Memory.deFrag$IF_TRUE0)
// [25234]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25240]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25247]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25252]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25260]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25265]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25270]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25276]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25282]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25288]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25295]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25300]
// push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25308]
// push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25315]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [25320]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25326]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [25331]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25336]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25341]
// push temp R5
@R5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25347]
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D
// [25353]
// label IF_FALSE0
(Memory.deFrag$IF_FALSE0)
// [25353]
// label WHILE_EXP2
(Memory.deFrag$WHILE_EXP2)
// [25353]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25360]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [25366]
// eq
@RET_ADDRESS_EQ36
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ36)
// [25370]
// not
@SP
A=M-1
M=!M
// [25373]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25379]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25386]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25391]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25396]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25403]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25410]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [25416]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25421]
// gt
@RET_ADDRESS_GT31
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT31)
// [25425]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25431]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25438]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25443]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25448]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25455]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25459]
// eq
@RET_ADDRESS_EQ37
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ37)
// [25463]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [25468]
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// [25473]
// not
@SP
A=M-1
M=!M
// [25476]
// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Memory.deFrag$WHILE_END2
D;JNE
// [25481]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25487]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25494]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25499]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25504]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25511]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25517]
// goto WHILE_EXP2
@Memory.deFrag$WHILE_EXP2
0;JMP
// [25519]
// label WHILE_END2
(Memory.deFrag$WHILE_END2)
// [25519]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25526]
// pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// [25532]
// goto WHILE_EXP0
@Memory.deFrag$WHILE_EXP0
0;JMP
// [25534]
// label WHILE_END0
(Memory.deFrag$WHILE_END0)
// [25534]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [25538]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [25540]
// function Memory.inspect 1
(Memory.inspect)
@SP
AM=M+1
A=A-1
M=0
// [25544]
// push static Memory.1
@Memory.1
D=M
@SP
AM=M+1
A=A-1
M=D
// [25550]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25556]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [25562]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL312
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL312)
// [25574]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25580]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL313
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL313)
// [25592]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25598]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL314
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL314)
// [25610]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25616]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL315
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL315)
// [25628]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25634]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL316
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL316)
// [25646]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25652]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL317
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL317)
// [25664]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25670]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL318
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL318)
// [25682]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25688]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL319
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL319)
// [25700]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25706]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL320
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL320)
// [25718]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [25724]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL321
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL321)
// [25736]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL322
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL322)
// [25748]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25753]
// label WHILE_EXP0
(Memory.inspect$WHILE_EXP0)
// [25753]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25760]
// push static Memory.3
@Memory.3
D=M
@SP
AM=M+1
A=A-1
M=D
// [25766]
// eq
@RET_ADDRESS_EQ38
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ38)
// [25770]
// not
@SP
A=M-1
M=!M
// [25773]
// not
@SP
A=M-1
M=!M
// [25776]
// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Memory.inspect$WHILE_END0
D;JNE
// [25781]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25788]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL323
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL323)
// [25800]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25805]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [25811]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL324
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL324)
// [25823]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25828]
// push static Memory.5
@Memory.5
D=M
@SP
AM=M+1
A=A-1
M=D
// [25834]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25841]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25846]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25851]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25858]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL325
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL325)
// [25870]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25875]
// push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// [25881]
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@RET_ADDRESS_CALL326
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL326)
// [25893]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25898]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25904]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25911]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25916]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25921]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25928]
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@RET_ADDRESS_CALL327
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL327)
// [25940]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25945]
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@RET_ADDRESS_CALL328
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL328)
// [25957]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [25962]
// push static Memory.4
@Memory.4
D=M
@SP
AM=M+1
A=A-1
M=D
// [25968]
// push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25975]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [25980]
// pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
// [25985]
// push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [25992]
// pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// [25998]
// goto WHILE_EXP0
@Memory.inspect$WHILE_EXP0
0;JMP
// [26000]
// label WHILE_END0
(Memory.inspect$WHILE_END0)
// [26000]
// push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// [26006]
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@RET_ADDRESS_CALL329
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL329)
// [26018]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26024]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL330
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL330)
// [26036]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26042]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL331
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL331)
// [26054]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26060]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL332
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL332)
// [26072]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26078]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL333
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL333)
// [26090]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26096]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL334
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL334)
// [26108]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26114]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL335
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL335)
// [26126]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26132]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL336
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL336)
// [26144]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26150]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL337
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL337)
// [26162]
// push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// [26168]
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@RET_ADDRESS_CALL338
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL338)
// [26180]
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@RET_ADDRESS_CALL339
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL339)
// [26192]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26197]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26201]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26203]
// function Bat.new 0
(Bat.new)
// [26203]
// push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// [26209]
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@RET_ADDRESS_CALL340
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL340)
// [26221]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26226]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26233]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [26239]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26246]
// pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// [26252]
// push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26260]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [26267]
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
// [26276]
// pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// [26284]
// push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// [26290]
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
// [26299]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26305]
// call Bat.show 1
@1
D=A
@R13
M=D
@Bat.show
D=A
@R14
M=D
@RET_ADDRESS_CALL341
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL341)
// [26317]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26322]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26328]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26330]
// function Bat.dispose 0
(Bat.dispose)
// [26330]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26337]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26342]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26348]
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@RET_ADDRESS_CALL342
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL342)
// [26360]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26365]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26369]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26371]
// function Bat.show 0
(Bat.show)
// [26371]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26378]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26383]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26387]
// not
@SP
A=M-1
M=!M
// [26390]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL343
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL343)
// [26402]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26407]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26413]
// call Bat.draw 1
@1
D=A
@R13
M=D
@Bat.draw
D=A
@R14
M=D
@RET_ADDRESS_CALL344
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL344)
// [26425]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26430]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26434]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26436]
// function Bat.hide 0
(Bat.hide)
// [26436]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26443]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26448]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26452]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL345
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL345)
// [26464]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26469]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26475]
// call Bat.draw 1
@1
D=A
@R13
M=D
@Bat.draw
D=A
@R14
M=D
@RET_ADDRESS_CALL346
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL346)
// [26487]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26492]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26496]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26498]
// function Bat.draw 0
(Bat.draw)
// [26498]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26505]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26510]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26517]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26524]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26531]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26539]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26544]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26551]
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
// [26560]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26565]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL347
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL347)
// [26577]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26582]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26586]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26588]
// function Bat.setDirection 0
(Bat.setDirection)
// [26588]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26595]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26600]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26607]
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
// [26616]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26620]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26622]
// function Bat.getLeft 0
(Bat.getLeft)
// [26622]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26629]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26634]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26641]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26643]
// function Bat.getRight 0
(Bat.getRight)
// [26643]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26650]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26655]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26662]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26670]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26675]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26677]
// function Bat.setWidth 0
(Bat.setWidth)
// [26677]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26684]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26689]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26695]
// call Bat.hide 1
@1
D=A
@R13
M=D
@Bat.hide
D=A
@R14
M=D
@RET_ADDRESS_CALL348
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL348)
// [26707]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26712]
// push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26719]
// pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// [26726]
// push pointer THIS
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
// [26732]
// call Bat.show 1
@1
D=A
@R13
M=D
@Bat.show
D=A
@R14
M=D
@RET_ADDRESS_CALL349
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL349)
// [26744]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26749]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26753]
// return
@VM_SUBROUTINE_RETURN
0;JMP
// [26755]
// function Bat.move 0
(Bat.move)
// [26755]
// push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26762]
// pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
// [26767]
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
// [26776]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26780]
// eq
@RET_ADDRESS_EQ39
D=A
@VM_SUBROUTINE_EQ
0;JMP
(RET_ADDRESS_EQ39)
// [26784]
// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Bat.move$IF_TRUE0
D;JNE
// [26789]
// goto IF_FALSE0
@Bat.move$IF_FALSE0
0;JMP
// [26791]
// label IF_TRUE0
(Bat.move$IF_TRUE0)
// [26791]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26798]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [26804]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [26809]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
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
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26826]
// lt
@RET_ADDRESS_LT43
D=A
@VM_SUBROUTINE_LT
0;JMP
(RET_ADDRESS_LT43)
// [26830]
// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Bat.move$IF_TRUE1
D;JNE
// [26835]
// goto IF_FALSE1
@Bat.move$IF_FALSE1
0;JMP
// [26837]
// label IF_TRUE1
(Bat.move$IF_TRUE1)
// [26837]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26841]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [26847]
// label IF_FALSE1
(Bat.move$IF_FALSE1)
// [26847]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26851]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL350
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL350)
// [26863]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26868]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26875]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26883]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26888]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [26892]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26897]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26904]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [26911]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26919]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26924]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [26930]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26935]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [26942]
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
// [26951]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [26956]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL351
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL351)
// [26968]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26973]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [26977]
// not
@SP
A=M-1
M=!M
// [26980]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL352
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL352)
// [26992]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [26997]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27004]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27011]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27018]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [27024]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27029]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27036]
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
// [27045]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27050]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL353
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL353)
// [27062]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27067]
// goto IF_END0
@Bat.move$IF_END0
0;JMP
// [27069]
// label IF_FALSE0
(Bat.move$IF_FALSE0)
// [27069]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27076]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [27082]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27087]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [27093]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27100]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27108]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27113]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [27119]
// gt
@RET_ADDRESS_GT32
D=A
@VM_SUBROUTINE_GT
0;JMP
(RET_ADDRESS_GT32)
// [27123]
// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Bat.move$IF_TRUE2
D;JNE
// [27128]
// goto IF_FALSE2
@Bat.move$IF_FALSE2
0;JMP
// [27130]
// label IF_TRUE2
(Bat.move$IF_TRUE2)
// [27130]
// push constant 511
@511
D=A
@SP
AM=M+1
A=A-1
M=D
// [27136]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27144]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27149]
// pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// [27155]
// label IF_FALSE2
(Bat.move$IF_FALSE2)
// [27155]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27159]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL354
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL354)
// [27171]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27176]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27183]
// push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// [27189]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27194]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27201]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27208]
// push constant 1
@SP
AM=M+1
A=A-1
M=1
// [27212]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27217]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27224]
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
// [27233]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27238]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL355
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL355)
// [27250]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27255]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27259]
// not
@SP
A=M-1
M=!M
// [27262]
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@RET_ADDRESS_CALL356
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL356)
// [27274]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27279]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27286]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27294]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27299]
// push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// [27305]
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// [27310]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27317]
// push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// [27324]
// push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27332]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27337]
// push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// [27344]
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
// [27353]
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// [27358]
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@RET_ADDRESS_CALL357
D=A
@VM_SUBROUTINE_CALL
0;JMP
(RET_ADDRESS_CALL357)
// [27370]
// pop temp R5
@SP
AM=M-1
D=M
@R5
M=D
// [27375]
// label IF_END0
(Bat.move$IF_END0)
// [27375]
// push constant 0
@SP
AM=M+1
A=A-1
M=0
// [27379]
// return
@VM_SUBROUTINE_RETURN
0;JMP
