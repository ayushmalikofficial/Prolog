len([X],1).
len([X|L],Z):-len(L,Z1),Z is Z1+1.
