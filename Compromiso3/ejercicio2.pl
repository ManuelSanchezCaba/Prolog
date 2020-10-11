swap(leaf(X), leaf(X)).
swap(tree(X, Y), tree(A, B)) :- swap(X, B), swap(Y, A).

%Casos de prueba

swap(tree(tree(leaf(1),  leaf(2)),  leaf(4)), tree(leaf(4), tree(leaf(2), leaf(1)))). % True

swap(tree(leaf(1), leaf(2)), tree(leaf(2), leaf(1))). % True

swap(tree(leaf(1), tree(leaf(2), leaf(3))), tree(tree(leaf(3), leaf(2)), leaf(1))). %True

swap(tree(leaf(1), tree(leaf(2), leaf(3))), tree(tree(leaf(2), leaf(1)), leaf(3))). % False

swap(tree(leaf(1), leaf(2)), tree(leaf(1), leaf(2))). % False

swap(tree(tree(leaf(1),  leaf(2)),  leaf(4)), tree(leaf(2), tree(leaf(4), leaf(1)))). % False

