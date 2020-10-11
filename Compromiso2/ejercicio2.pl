directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(irina, natasha).

in(X, Y) :- directlyIn(X, Y).
in(X, Y) :- directlyIn(X, Z), in(Z, Y).

% Casos de prueba
in(katarina, natasha). % True

in(olga, natasha). % True

in(natasha, katarina). % False