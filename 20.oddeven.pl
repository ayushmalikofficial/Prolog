len([X],1).
len([X|L],Z):-len(L,Z1),Z is Z1+1.

evenlen(L):-len(L,Z),X is mod(Z,2),X==0.
oddlen(L):-len(L,Z),X is mod(Z,2),X==1.

