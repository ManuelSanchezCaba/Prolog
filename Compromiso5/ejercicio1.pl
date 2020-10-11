listaSum([], []). 
listaSum([H1|T1], [H2|T2]) :- H2 is H1 + 1, listaSum(T1, T2).

% Casos de prueba
listaSum([1, 2, 3], [2, 3, 4]). % True

listaSum([50, 2, 30], [51, 3, 31]). % True

listaSum([15, 22, 0], [16, 23, 1]). % True

listaSum([1, 2, 3], [2, 1, 4]). % False

listaSum([50, 2, 30], [51, 3, 30]). % False

listaSum([15, 22, 0], [15, 22, 0]). % False