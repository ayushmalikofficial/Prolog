connected(1,7).
connected(1,8).
connected(1,3).
connected(7,4).
connected(7,20).
connected(7,17).
connected(8,6).
connected(3,9).
connected(3,12).
connected(9,19).
connected(4,42).
connected(20,28).
connected(17,10).

connected2(X,Y) :- connected(X,Y).
connected2(X,Y) :- connected(Y,X).

next_node(Current, Next, Path) :-
    connected(Current, Next),
    not(member(Next, Path)).

depth_first(Goal, Goal, _, [Goal]).
depth_first(Start, Goal, Visited, [Start|Path]) :-
    next_node(Start, Next_node, Visited),
    write(Visited), nl,
    depth_first(Next_node, Goal, [Next_node|Visited], Path).
