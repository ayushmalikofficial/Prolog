conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).


mmerge([],[Y],[Y]).
mmerge([X],[],[X]).
mmerge([X],[Y],L):-X<Y,conc([X],[Y],L).
mmerge([X],[Y],L):-conc([Y],[X],L).
mmerge([X|L1],[Y|L2],L3):-mmerge(L1,L2,L4),X>Y,conc([X],L4,L5),conc([Y],L5,L3).
mmerge([X|L1],[Y|L2],L3):-mmerge(L1,L2,L4),conc([Y],L4,L5),conc([X],L5,L3).
