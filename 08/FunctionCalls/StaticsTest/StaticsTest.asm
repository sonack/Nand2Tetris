@256
D=A
@SP
M=D
@BootStrap$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
@R15
M=1
(BootStrap$saveCtx.0)
@R15
D=M
@THAT
D=D-A
@BootStrap$saveCtxCont.0
D;JGT
@R15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@R15
M=M+1
@BootStrap$saveCtx.0
0;JMP
(BootStrap$saveCtxCont.0)
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(BootStrap$ret.0)
(Class1.set)
@0
D=A
(Class1.set$$INIT_LCL_VARS)
@Class1.set$$INIT_LCL_VARS_OVER
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Class1.set$$INIT_LCL_VARS
0;JMP
(Class1.set$$INIT_LCL_VARS_OVER)
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@Class1.0
D=A
@R14
M=D
@R13
D=M
@R14
A=M
M=D
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
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@Class1.1
D=A
@R14
M=D
@R13
D=M
@R14
A=M
M=D
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@endFrame
M=D
@5
A=D-A
D=M
@retAddr
M=D
@SP
M=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@endFrame
D=M
@1
A=D-A
D=M
@THAT
M=D
@endFrame
D=M
@2
A=D-A
D=M
@THIS
M=D
@endFrame
D=M
@3
A=D-A
D=M
@ARG
M=D
@endFrame
D=M
@4
A=D-A
D=M
@LCL
M=D
@retAddr
A=M
0;JMP
(Class1.get)
@0
D=A
(Class1.get$$INIT_LCL_VARS)
@Class1.get$$INIT_LCL_VARS_OVER
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Class1.get$$INIT_LCL_VARS
0;JMP
(Class1.get$$INIT_LCL_VARS_OVER)
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class1.1
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=M-D
@LCL
D=M
@endFrame
M=D
@5
A=D-A
D=M
@retAddr
M=D
@SP
M=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@endFrame
D=M
@1
A=D-A
D=M
@THAT
M=D
@endFrame
D=M
@2
A=D-A
D=M
@THIS
M=D
@endFrame
D=M
@3
A=D-A
D=M
@ARG
M=D
@endFrame
D=M
@4
A=D-A
D=M
@LCL
M=D
@retAddr
A=M
0;JMP
(Sys.init)
@0
D=A
(Sys.init$$INIT_LCL_VARS)
@Sys.init$$INIT_LCL_VARS_OVER
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.init$$INIT_LCL_VARS
0;JMP
(Sys.init$$INIT_LCL_VARS_OVER)
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
@Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
@R15
M=1
(Sys.init$saveCtx.0)
@R15
D=M
@THAT
D=D-A
@Sys.init$saveCtxCont.0
D;JGT
@R15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@R15
M=M+1
@Sys.init$saveCtx.0
0;JMP
(Sys.init$saveCtxCont.0)
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Sys.init$ret.0)
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@0
D=A
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
@Sys.init$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
@R15
M=1
(Sys.init$saveCtx.1)
@R15
D=M
@THAT
D=D-A
@Sys.init$saveCtxCont.1
D;JGT
@R15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@R15
M=M+1
@Sys.init$saveCtx.1
0;JMP
(Sys.init$saveCtxCont.1)
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Sys.init$ret.1)
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@0
D=A
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D
@Sys.init$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1
@R15
M=1
(Sys.init$saveCtx.2)
@R15
D=M
@THAT
D=D-A
@Sys.init$saveCtxCont.2
D;JGT
@R15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@R15
M=M+1
@Sys.init$saveCtx.2
0;JMP
(Sys.init$saveCtxCont.2)
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.get
0;JMP
(Sys.init$ret.2)
@Sys.init$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1
@R15
M=1
(Sys.init$saveCtx.3)
@R15
D=M
@THAT
D=D-A
@Sys.init$saveCtxCont.3
D;JGT
@R15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@R15
M=M+1
@Sys.init$saveCtx.3
0;JMP
(Sys.init$saveCtxCont.3)
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.get
0;JMP
(Sys.init$ret.3)
(Sys.init$WHILE)
@Sys.init$WHILE
0;JMP
(Class2.set)
@0
D=A
(Class2.set$$INIT_LCL_VARS)
@Class2.set$$INIT_LCL_VARS_OVER
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Class2.set$$INIT_LCL_VARS
0;JMP
(Class2.set$$INIT_LCL_VARS_OVER)
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@Class2.0
D=A
@R14
M=D
@R13
D=M
@R14
A=M
M=D
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
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@Class2.1
D=A
@R14
M=D
@R13
D=M
@R14
A=M
M=D
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@endFrame
M=D
@5
A=D-A
D=M
@retAddr
M=D
@SP
M=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@endFrame
D=M
@1
A=D-A
D=M
@THAT
M=D
@endFrame
D=M
@2
A=D-A
D=M
@THIS
M=D
@endFrame
D=M
@3
A=D-A
D=M
@ARG
M=D
@endFrame
D=M
@4
A=D-A
D=M
@LCL
M=D
@retAddr
A=M
0;JMP
(Class2.get)
@0
D=A
(Class2.get$$INIT_LCL_VARS)
@Class2.get$$INIT_LCL_VARS_OVER
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Class2.get$$INIT_LCL_VARS
0;JMP
(Class2.get$$INIT_LCL_VARS_OVER)
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class2.1
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
@SP
A=M
D=M
A=A-1
M=M-D
@LCL
D=M
@endFrame
M=D
@5
A=D-A
D=M
@retAddr
M=D
@SP
M=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@endFrame
D=M
@1
A=D-A
D=M
@THAT
M=D
@endFrame
D=M
@2
A=D-A
D=M
@THIS
M=D
@endFrame
D=M
@3
A=D-A
D=M
@ARG
M=D
@endFrame
D=M
@4
A=D-A
D=M
@LCL
M=D
@retAddr
A=M
0;JMP
