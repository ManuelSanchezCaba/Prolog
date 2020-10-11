child(martha,charlotte).
child(charlotte,caroline).
child(caroline,laura).
child(laura,rose).

descend(X,Y)  :-  child(X,Y).
descend(X,Y)  :-  child(X,Z), descend(Z,Y).

% Casos de prueba
descend(laura, charlotte). % False

descend(charlotte, laura). % True

descend(caroline, martha). % False

% ¿Sería problemático reformular el predicado a descend(X,Y)  :-  child(X,Y). descend(X,Y)  :-  descend(X,Z), descend(Z,Y).?

% Esto sí sería problemático porque estamos haciendo una llamada recursiva que nunca parará porque el segundo predicado hace
% llamadas recusivas a ella misma y nunca llega a un caso base.