s --> l, r.
s --> l, s, r.
l --> [a].
r --> [b].

% Casos de pruebas

s([a, b], []). % True

s([a, a, b, b], []). % True

s([a, a, a, b, b, b], []). % True

s([], []). % False

s([a, b, b], []). % False

s([a, a, a, a, b, b], []). % False