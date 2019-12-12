conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).
insert(I,1,L,[I|L]).
insert(I,N,[X|L],R):-N1 is N-1,insert(I,N1,L,R1),conc([X],R1,R).