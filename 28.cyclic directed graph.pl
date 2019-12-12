edge(p,q).
edge(q,r).
edge(q,r).
edge(q,s).
edge(s,t).

route(A,A).
route(A,B):-edge(C,B),route(A,C).
