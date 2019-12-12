conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

rev([X],[X]).
rev([X|L],N):-rev(L,N1),conc(N1,[X],N).