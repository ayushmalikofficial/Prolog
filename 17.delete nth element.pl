del(1,[X|L],L).
del(N,[X|L],[X|L1]):-N1 is N-1,del(N1,L,L1).
