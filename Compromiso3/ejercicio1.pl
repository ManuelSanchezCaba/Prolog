greater_than(_, 0).
greater_than(succ(X), succ(Y)) :- greater_than(X, Y).

% Casos de prueba

greater_than(succ(succ(succ(succ(0)))),succ(succ(succ(0)))). % True

greater_than(succ(succ(succ(0))),succ(0)). % True

greater_than(succ(succ(succ(succ(succ(0))))),succ(succ(succ(succ(0))))). % True

greater_than(succ(succ(0)), succ(succ(succ(succ(succ(0)))))). % False

greater_than(succ(succ(0)),succ(succ(succ(0)))). % False

greater_than(succ(0), succ(succ(0))). %False