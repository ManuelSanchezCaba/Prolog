s --> [].
s --> l, s, r.
l --> [a].
r --> [b, b].

% Casos de pruebas

s([], []). % True

s([a, b, b], []). % True

s([a, a, a, b, b, b, b, b, b], []). % True

s([a, b, b, b], []). % False

s([a, a, a, b, b, b], []). % False

s([a, a, a, a, b, b, b, b, b, b], []). % False