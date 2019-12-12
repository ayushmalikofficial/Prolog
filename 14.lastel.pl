lastl([X],X).
lastl([X|L],D):-lastl(L,X1),D is X1.
