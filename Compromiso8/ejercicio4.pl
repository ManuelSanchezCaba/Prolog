s  -->  np(singular), vp(singular).
s  -->  np(plural), vp(plural).

np(X)  -->  det(X), n(X).

vp(X)  -->  v(X), np(X).
vp(X)  -->  v(X).

det(singular)  -->  [the].
det(singular)  -->  [a].
det(plural)  -->  [the].

n(singular)  -->  [woman].
n(singular)  -->  [man].
n(singular)  -->  [apple].
n(singular)  -->  [pear].

n(plural)  -->  [women].
n(plural)  -->  [men].
n(plural)  -->  [apples].
n(plural)  -->  [pears].

v(singular)  -->  [eats].
v(singular) --> [knows].
v(plural)  -->  [eat].
v(plural) --> [know].

% Casos de pruebas

s([the, men, eat], []). % True

s([the, man, eats], []). % True

s([the, man, knows], []). % True

s([the, men, eats], []). % False

s([the, man, eat], []). % False

s([the, men, knows], []). % False