

ORG 0000H



SS:
  MOV P0,#00H
  
 MOV P1,#01H//GREEN1
 MOV P2,#0EH
 
 ACALL GREEN
 
 MOV P1,#30H//TWO YELLOW
  MOV P2,#0CH
 
  ACALL ORANGE
  
  MOV P1,#02H//GREEN2
  MOV P2,#0DH
  
  ACALL GREEN
  
  MOV P1,#60H
  MOV P2,#09H
  
  ACALL ORANGE
  
  
    MOV P1,#04H
  MOV P2,#0BH
  
  ACALL GREEN
  
  MOV P1,#0C0H
  MOV P2,#03H
  
  ACALL ORANGE
  
    MOV P1,#08H
  MOV P2,#07H
  
  ACALL GREEN
  
  MOV P1,#90H
  MOV P2,#06H
  
  ACALL ORANGE
  
  
  
  
  
  
  SJMP SS
  
  
  
 
  
  
  
  





GREEN:	

    SETB P2.7
  
   MOV R2,#05H
   
   ASD:
   MOV A,R2
   ACALL SEVEN
   ACALL SECOND
   DJNZ R2,ASD
   
   
   SETB P2.7
   MOV A,#00H
   ACALL SEVEN
   ACALL SECOND
   
   
   
      CLR P2.7
 
	
	MOV R3,#09H
	
	
	ASDS:
	 MOV A,R3
   ACALL SEVEN
   ACALL SECOND
   DJNZ R3,ASDS
	
	
	
	CLR  P2.7
   MOV A,#00H
   ACALL SEVEN
   ACALL SECOND
	
   
   
   
  
RET


	
	
ORANGE:


    CLR P2.7

	MOV R4,#03H
SSDS:
	 MOV A,R4
   ACALL SEVEN
   ACALL SECOND
   DJNZ R4,SSDS
   
   
   
   
	CLR  P2.7
   MOV A,#00H
   ACALL SEVEN
   ACALL SECOND


RET

	

	



SECOND: 
    MOV R7,#0EH
	XX:	ACALL DELAY1
	DJNZ R7,XX
RET












	
	DELAY1:  
	     MOV TMOD,#01H
		 MOV TL0,#01H
		 MOV TH0,#00H
		 SETB TR0
		 
		 WAIT: JNB TF0,WAIT
		     CLR TR0
			 CLR TF0
		RET
		

	
	
	
	




	 
	 
 SEVEN:
	
	 CJNE  A,#09H,NINE
	      MOV P3,#90H
		  SJMP SSE
NINE:
	    CJNE  A,#08H,EIGHT
	      MOV P3,#80H
		  SJMP SSE
EIGHT: CJNE  A,#07H,SEVEEN
	      MOV P3,#0F8H
		  SJMP SSE
		  
SEVEEN: CJNE  A,#06H,SIXE
	      MOV P3,#82H
		  SJMP SSE


SIXE: CJNE  A,#05H,FIVE
	      MOV P3,#92H
		  SJMP SSE
		  
		  
FIVE: CJNE  A,#04H,FOUR
	      MOV P3,#99H
		  SJMP SSE

FOUR: CJNE  A,#03H,THREE
	      MOV P3,#0B0H
		  SJMP SSE
		  
THREE: CJNE  A,#02H,TWO
	      MOV P3,#0A4H
		  SJMP SSE

TWO: CJNE  A,#01H,ZERO
	      MOV P3,#0F9H
		  SJMP SSE
		  
		  
ZERO: CJNE  A,#00H,SSE
	      MOV P3,#0C0H
		

SSE:  MOV R0,#0AH  
    
	YY:DJNZ R0,YY




    RET
		  
		  
	 



END
	
	
