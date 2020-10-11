listaMapSum([], 0).
listaMapSum([H1|T1], X) :- listaMapSum(T1, X1), X is X1 + H1.

% Casos de prueba
listaMapSum([1, 3, 3], 7). % True

listaMapSum([5, 6, 10], 21). % True

listaMapSum([50, 60, 70], 180). % True

listaMapSum([1, 3, 3], 6). % False

listaMapSum([5, 7, 10], 21). % False

listaMapSum([50, 60, 70], 200). % False