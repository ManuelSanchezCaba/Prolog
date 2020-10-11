rev1([], []).
rev1([H1|T1], R) :- rev1(T1, R1), append(R1, [H1], R).
palindrome(L) :- rev1(L, L).

% Casos de prueba
palindrome([e, v, e]). % True

palindrome([a, n, a]). % true

palindrome([a, v, i, v, a]). % True

palindrome([a, r, r, o, z]). % False

palindrome([r, e, l, o, j]). % False

palindrome([s, e, r, v, e, r]). % False