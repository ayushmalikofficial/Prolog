male(ayush).
male(abhishek).
male(jn).
male(hansraj).
male(vivek).
male(manish).

female(krishna).
female(mamta).
female(lakshita).
female(anju).
female(rani).

parentof(krishna,rani).
parentof(krishna,jn).
parentof(krishna,vivek).
parentof(hansraj,vivek).
parentof(hansraj,jn).
parentof(anju,abhishek).
parentof(anju,lakshita).
parentof(anju,ayush).
parentof(jn,abhishek).
parentof(jn,lakshita).
parentof(jn,ayush).
couple(jn,anju).
couple(hansraj,krishna).
couple(vivek,mamta).
couple(rani,manish).


wifeof(X,Y):-female(X),couple(X,Y).
wifeof(X,Y):-female(X),couple(Y,X).
husbandof(X,Y):-male(X),couple(X,Y).
husbandof(X,Y):-male(X),couple(Y,X).
grandfatherof(X,Y):-male(X),parentof(X,Z),parentof(Z,Y).
grandmotherof(X,Y):-female(X),parentof(X,Z),parentof(Z,Y).
sisterof(X,Y):-female(X),parentof(Z,X),parentof(Z,Y).
brotherof(X,Y):-male(X),parentof(Z,X),parentof(Z,Y).
sonof(X,Y):-male(X),parentof(Y,X).
daughterof(X,Y):-female(X),parentof(Y,X).
uncleof(X,Y):-brotherof(X,Z),parentof(Z,Y).
auntof(X,Y):-sisterof(X,Z),parentof(Z,Y).
uncleof(X,Y):-husbandof(X,Z),sisterof(Z,R),parentof(R,Y).
auntof(X,Y):-wifeof(X,Z),brotherof(Z,R),parentof(R,Y).





















