twice([], []).
twice([H1|T1], [H1, H1|T2]) :- twice(T1, T2).

% Casos de prueba
twice([a, 4, buggle], [a, a, 4, 4, buggle, buggle]). % True

twice([1, 2, 3, 4], [1, 1, 2, 2, 3, 3, 4, 4]). % True

twice([carlos, juan, lucas], [carlos, carlos, juan, juan, lucas, lucas]). % True

twice([a, 4, buggle], [a, a, a, 4, buggle, buggle]). % False

twice([1, 2, 3, 4], [1, 1, 2, 2, 3, 4, 4, 4]). % False

twice([carlos, juan, lucas], [carlos, juan, juan, lucas, lucas]). % False