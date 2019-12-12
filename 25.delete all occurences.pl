delete([],A,[]).
delete([H|T],A,Result) :- H=A, delete(T,A,Result).
delete([H|T],A,[H|Result]) :- delete(T,A,Result).