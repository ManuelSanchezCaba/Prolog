s  -->  np, vp.
s  -->  nps, vps.

np  -->  det, n.

vp  -->  v, np.
vp  -->  v.

det  -->  [the].
det  -->  [a].

n  -->  [woman].
n  -->  [man].
n  -->  [apple].
n  -->  [pear].

v  -->  [eats].
v --> [knows].

nps  -->  dets, ns.

vps  -->  vs, nps.
vps  -->  vs.

dets  -->  [the].

ns --> [men].
ns --> [women].
ns  -->  [apples].
ns  -->  [pears].

vs --> [eat].
vs --> [know].

% Casos de pruebas

s([the, men, eat], []). % True

s([the, man, eats], []). % True

s([the, man, knows], []). % True

s([the, men, eats], []). % False

s([the, man, eat], []). % False

s([the, men, knows], []). % False