@256
D=A
@SP
M=D
@Sys.init$RETURN0
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Sys.init
0;JMP
(Sys.init$RETURN0)
// 'function Main.fibonacci 0' (Line 0)
(Main.fibonacci)
// 'push argument 0' (Line 1)
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 2' (Line 2)
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'lt' (Line 3)
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@COMP.1.TRUE
D;JLT
@COMP.1.FALSE
0;JMP
(COMP.1.TRUE)
@SP
A=M
M=-1
@SP
M=M+1
@COMP.1.END
0;JMP
(COMP.1.FALSE)
@SP
A=M
M=0
@SP
M=M+1
(COMP.1.END)
// 'if-goto IF_TRUE' (Line 4)
@SP
AM=M-1
D=M
@Main.fibonacci$IF_TRUE
D;JNE
// 'goto IF_FALSE' (Line 5)
@Main.fibonacci$IF_FALSE
0;JMP
// 'label IF_TRUE' (Line 6)
(Main.fibonacci$IF_TRUE)
// 'push argument 0' (Line 7)
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'return' (Line 8)
@LCL
D=M
@frame
M=D	// FRAME = LCL
@5
D=D-A
A=D
D=M
@ret
M=D	// RET = *(FRAME-5)
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D	// *ARG = pop
@ARG
D=M+1
@SP
M=D	// SP = ARG+1
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D	// THAT = *(FRAME-1)
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D	// THIS = *(FRAME-2)
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D	// ARG = *(FRAME-3)
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D	// LCL = *(FRAME-4)
@ret
A=M
0;JMP	// JUMP TO Caller
// 'label IF_FALSE' (Line 9)
(Main.fibonacci$IF_FALSE)
// 'push argument 0' (Line 10)
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 2' (Line 11)
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'sub' (Line 12)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// 'call Main.fibonacci 1' (Line 13)
@Main.fibonacci$RETURN2
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@1
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Main.fibonacci
0;JMP
(Main.fibonacci$RETURN2)
// 'push argument 0' (Line 14)
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 1' (Line 15)
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'sub' (Line 16)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// 'call Main.fibonacci 1' (Line 17)
@Main.fibonacci$RETURN3
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@1
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Main.fibonacci
0;JMP
(Main.fibonacci$RETURN3)
// 'add' (Line 18)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1
// 'return' (Line 19)
@LCL
D=M
@frame
M=D	// FRAME = LCL
@5
D=D-A
A=D
D=M
@ret
M=D	// RET = *(FRAME-5)
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D	// *ARG = pop
@ARG
D=M+1
@SP
M=D	// SP = ARG+1
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D	// THAT = *(FRAME-1)
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D	// THIS = *(FRAME-2)
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D	// ARG = *(FRAME-3)
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D	// LCL = *(FRAME-4)
@ret
A=M
0;JMP	// JUMP TO Caller
// 'function Sys.init 0' (Line 0)
(Sys.init)
// 'push constant 4' (Line 1)
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'call Main.fibonacci 1' (Line 2)
@Main.fibonacci$RETURN4
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@1
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Main.fibonacci
0;JMP
(Main.fibonacci$RETURN4)
// 'label WHILE' (Line 3)
(Main.fibonacci$WHILE)
// 'goto WHILE' (Line 4)
@Main.fibonacci$WHILE
0;JMP