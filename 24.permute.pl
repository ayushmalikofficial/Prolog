del(X,[X|Tail],Tail).

del(X,[Y|Tail],[Y|Tail1]):-del(X,Tail,Tail1).

insert(X,List,BiggerList):-del(X,BiggerList,List).


permute([],[]).
permute([X|L],P):-permute(L,L1),insert(X,L1,P).