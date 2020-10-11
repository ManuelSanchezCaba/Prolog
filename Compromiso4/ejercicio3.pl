tran(eins, one).
tran(zwei, two).
tran(drei, three).
tran(vier, four).
tran(fuenf, five).
tran(sechs, six).
tran(sieben, seven).
tran(acht, eight).
tran(neun, nine).

listtran([], []).
listtran([H1|T1], [H2|T2]) :- tran(H1, H2), listtran(T1, T2).

% Casos de prueba
listtran([eins,neun,zwei], [one, nine, two]). % True

listtran([sechs,acht,zwei], [six, eight, two]). % True

listtran([sieben,acht,vier], [seven, eight, four]). % True

listtran([sieben,acht,vier], [seven, eight, three]). % False

listtran([sechs,acht,zwei], [six, eight, two]). % False

listtran([neun,drei,zwei], [one, three, two]). % False