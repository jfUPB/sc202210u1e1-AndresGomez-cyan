// ANDRES MAURICIO GOMEZ GONZALEZ
// 000423788
// andresm.gomezg@upb.co

@70			
	D = A
	@teclaf
	M = D
	@67			
	D = A
	@teclac
	M=D

(INICIO)
	@KBD		
	D = M

	@VERIFICATECLA	
	D;JNE

	@INICIO
	0;JMP

(VERIFICATECLA)
	@tecla		
	M = D 

	@SCREEN		
	D = A
	@i
	M = D

	@linea
	M = -1

	@teclaf  	
	D = M

	@tecla		
	D = D - M	

	@NEGRO		
	D;JEQ

	@teclac
	D = M
	@tecla
	D = D - M

	@BLANCO
	D;JEQ

	@INICIO		
	0;JMP

(NEGRO)
	@LOOP
	0;JMP

(BLANCO)
	@linea
	M = 0
	@LOOP
	0;JMP

(LOOP)
	@linea
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
	@INICIO
	0;JMP