fact(0,1).
fact(N,F):-X is N-1,fact(X,F1), F is N*F1.