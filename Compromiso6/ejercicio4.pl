rev1([], []).
rev1([H1|T1], R) :- rev1(T1, R1), append(R1, [H1], R).

swapfl([H1|T1], [H2|T2]) :- rev1(T1, [H2|X]), rev1(T2, [H1|X]).

swapfl([a, b, c], [c, b, a]). % True

swapfl([a, b, c, d], [d, b, c, a]). % True

swapfl([a, b], [b, a]). % True

swapfl([a], [a]). % False

swapfl([a, b, c], [c, a, b]). % False

swapfl([a, b, c, d], [d, c, b, a]). % False