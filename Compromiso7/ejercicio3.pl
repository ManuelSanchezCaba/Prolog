% Corte Verde (Ejercicio 3.1)
unifiable1([], _, []).
unifiable1([H1|T1], X, L2) :- \+ H1 = X, unifiable1(T1, X, L2), !.
unifiable1([H1|T1], X, [H1|L2]) :- unifiable1(T1, X, L2).

%Corte Rojo (Ejercicio 3.2)
unifiable1([], _, []).
unifiable1([H1|T1], X, L2) :- \+ H1 = X, unifiable1(T1, X, L2).
unifiable1([H1|T1], X, [H1|L2]) :- !, unifiable1(T1, X, L2).