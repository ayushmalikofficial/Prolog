multi(1,Num2,Num2).
multi(Num1,Num2,R):-Num3 is Num1-1,multi(Num3,Num2,R1),R is Num2+R1.
