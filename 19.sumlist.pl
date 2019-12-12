suml([X],X).
suml([X|L],S):-suml(L,S1),S is X+S1.

