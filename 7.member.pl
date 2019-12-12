member(X,[X|L]).
member(Z,[X|L]):-member(Z,L).