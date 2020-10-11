listaSum2([], _, []).
listaSum2([H1|T1], X, [H2|T2]) :- H2 is H1 + X, listaSum2(T1, X, T2).

% Casos de prueba
listaSum2([1, 2, 3], 4, [5, 6, 7]). % True

listaSum2([1, 2, 3], 10, [11, 12, 13]). % true

listaSum2([15, 13, 20], 3, [18, 16, 23]). % True

listaSum2([1, 2, 3], 5, [5, 6, 7]). % False

listaSum2([1, 2, 3], 10, [11, 12, 19]). % False

listaSum2([15, 0, 20], 3, [18, 16, 23]). % False