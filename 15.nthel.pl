nth(1,[X|L],X).
nth(N,[X|L],Z):-N1 is N-1,nth(N1,L,Z1),Z is Z1.
