split([], [], []).
split([H1|T1], [H1|P], N) :- H1 >= 0, split(T1, P, N).
split([H1|T1], P, [H1|N]) :- H1 < 0, split(T1, P, N).