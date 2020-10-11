toptail([_|T1], X) :- append(X, [_], T1).

% Casos de prueba
toptail([a, b, c, d], [b, c]). % True

toptail([a, b], []). % True

toptail([a, b, c], [b]). % True

toptail([a, b, c, d], [b, d]). % False

toptail([a, b], [a]). % False

toptail([a, b, c], [c]). % False