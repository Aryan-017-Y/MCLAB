     AREA large,CODE,READONLY
START
     LDR R0,=0X40000000
	 LDRH R1,[R0],#2
	 LDRH R2,[R0],#2
	 CMP R1,R2
	 BMI STORE
	 STR R1,[R0]
	 B SKIP
STORE STR R2,[R0]
SKIP B SKIP
    END
	