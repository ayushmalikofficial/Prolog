maxl([X],X).
maxl([X|L],M):-maxl(L,M1),X > M1,M is X.
maxl([X|L],M):-maxl(L,M1),X < M1,M is M1.

