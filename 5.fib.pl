fib(1,1).
fib(2,1).
fib(N,T):-X is N-1,Y is N-2,fib(X,M),fib(Y,P),T is M+P.