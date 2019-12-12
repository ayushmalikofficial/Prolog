gcdq(X,Y,1,1).
gcd1(X,Y,N,D):- Q1 is mod(X,N),Q2 is mod(Y,N),Q1==0,Q2==0,D is N.
gcd1(X,Y,N,D):- N1 is N-1,gcd1(X,Y,N1,D1),D is D1.


gcd(X,Y,D):-X>Y,gcd1(X,Y,Y,D1),D is D1.
gcd(X,Y,D):-X<Y,gcd1(X,Y,X,D1),D is D1.

