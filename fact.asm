     AREA fact,CODE,READONLY
START
     LDR R0,=0X40000000
	 LDR R1,=0X40000400
	 LDR R2,=0X40000000
LOOP LDMIA R0!,{R3,R7}
     SIMIA R1!,{R3-R7}
     CMP R0,R2
     BNP LOOP	 
HERE B HERE
    END     