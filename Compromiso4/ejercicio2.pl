swap12([X, Y | T], [Y, X | T]).

% Casos de prueba

swap12([manzana, pera, zanahoria, uvas], [pera, manzana, zanahoria, uvas]). % True

swap12([juan, pedro, lucas], [pedro, juan, lucas]). % True

swap12([lapiz, borra, mochila], [borra, lapiz, mochila]). % True

swap12([lapiz, borra, mochila], [borra, lapiz, lapicero]). % False

swap12([juan, pedro, lucas], [pedro, lucas, juan]). % False

swap12([manzana, pera, zanahoria, uvas], [uvas, manzana, zanahoria, pera]). % False