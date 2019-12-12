speaks(bob,russian).
speaks(mary,russian).
speaks(john,english).
speaks(mary,english).

understands(X,Y):-speaks(X,A),speaks(Y,A),X\=Y.