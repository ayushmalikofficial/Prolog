fib(1,1).
fib(N,T):-X is N-1,fib(X,Z),T is N+Z.