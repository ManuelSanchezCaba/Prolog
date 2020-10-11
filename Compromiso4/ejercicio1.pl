second(X, [_, X | _]).

% Casos de prueba

second(pedro, [juan, pedro, tomas]). % True

second(lucas, [juan, lucas, pedro, tomas]). % True

second(manzana, [pera, manzana, zanahoria, uvas]). % True

second(tomas, [juan, pedro, tomas]). % False

second(juan, [juan, lucas, pedro, tomas]). % False

second(zanahoria, [pera, manzana, zanahoria, uvas]). % False