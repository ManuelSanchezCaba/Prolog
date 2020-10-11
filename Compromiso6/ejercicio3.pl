% Primera forma
rev1([], []).
rev1([H1|T1], R) :- rev1(T1, R1), append(R1, [H1], R).

last(L, X) :- rev1(L, [H2|_]), rev1([H2], X).

% Casos de prueba
last([a, b, c, d, e], [e]). % True

last([a, b, c], [c]). % true

last([a], [a]). % True

last([a, b, c, d, e], [d]). % False

last([a, b, c], [a]). % False

last([a], [c]). % False

% Segunda forma
last([H1], H1).
last([_|T1], X) :- last(T1, X).

% Casos de prueba
last([a, b, c, d, e], e). % True

last([a, b, c], c). % true

last([a], a). % True

last([a, b, c, d, e], d). % False

last([a, b, c], a). % False

last([a], c). % False