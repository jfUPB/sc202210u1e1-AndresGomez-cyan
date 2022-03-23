// ANDRES MAURICIO GOMEZ GONZALEZ
// 000423788
// andresm.gomezg@upb.co

(START)
	@KBD
	D=M
	@FILLORCLEAR
	D;JNE
	@START
	0;JMP

(FILLORCLEAR)
	@j
	M = D // save key
	@70  // press f
	D = D-A
	@FILL
	D;JEQ
	@j
	D = M
	@67
	D = D - A
	@CLEAR
	D;JEQ
	@START
	0;JMP

(FILL)
	@value
	M = -1
	@DRAW
	0;JMP

(CLEAR)
	@value
	M = 0
	@DRAW
	0;JMP

(DRAW)
	@SCREEN
	D = A
	@i
	M = D

(LOOP)
	@value
	D = M
	@i
	A = M
	M = D
	@i
	M = M + 1
	@24576
	D = A
	@i
	D = M - D
	@LOOP
	D;JNE
	@START
	0;JMP