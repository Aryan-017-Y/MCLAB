     AREA large,CODE,READONLY
START
     LDR R0,=0X40000000
	 LDR R1,[R0],#4
	 MOV R3,#4
LOOP LDR R2,[R0],#4
	 CMP R1,R2
	 BMI STORE
	 B SKIP
STORE MOV R1,R2
SKIP SUBS R3,#1
     BNE LOOP
	 STR R1,[R0],#4
HERE B HERE
    END
	
		 
		 
		 
		 
		 
		 
		 