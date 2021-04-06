edge(a,w,14).
edge(a,x,7).
edge(a,y,9).

edge(b,w,9).
edge(b,z,6).

edge(w,a,14).
edge(w,b,9).
edge(w,y,2).

edge(x,a,7).
edge(x,y,10).
edge(x,z,15).

edge(y,a,9).
edge(y,w,2).
edge(y,x,10).
edge(y,z,11).

edge(z,b,6).
edge(z,x,15).
edge(z,y,11).


findapath(X, Y, W, [X,Y], _) :- edge(X, Y, W). % findapath between X and Y has weight W
                                               % if there is an edge between X and Y of weight W
findapath(X, Y, W, [X|P], V) :-                % else findapath between X and Y
	\+ member(X, V),                       % is true
	edge(X, Z, W1),                        % if we can findapath between X and Z with weight W1
	findapath(Z, Y, W2, P, [X|V]),         % and there is findapat between Z and Y of weight W2
	W is W1 + W2.                          % where W is W1 + W2

:-dynamic(solution/2).
findminpath(X, Y, W, P) :-
	\+ solution(_, _),
	findapath(X, Y, W1, P1, []),
	assertz(solution(W1, P1)),
	!, findminpath(X,Y,W,P).

findminpath(X, Y, _, _) :-
	findapath(X, Y, W1, P1, []),
	solution(W2, P2),
	W1 < W2,
	retract(solution(W2, P2)),
	asserta(solution(W1, P1)), fail.

findminpath(_, _, W, P) :- solution(W,P), retract(solution(W,P)).

main :-
    findminpath(a,b,W,P),
    write('the minimum cost that we must pay.'),
    write(W),
    nl,
    write('path that has the minimum cost.'),
    write(P),
    nl, halt.


