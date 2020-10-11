s --> np(singular), vp(singular).
s --> np(plural), vp(plural).

np(X) --> det(X), noun(X).
np(X) --> det(X), noun(X), rlCl.
np(X) --> quant(X), noun(X).
np(X) --> quant(X), noun(X), rlCl.
np(X) --> quant(X), adj, noun(X).
np(X) --> adj, noun(X), vp(X).
np(X) --> quant(X), noun(X), rlCl, np(X).
np(X) --> quant(X), noun(X), rlCl, vp(X).
vp(X) --> verb(X).
vp(X) --> verb(X), np(X).
vp(X) --> verb(X), adj.
vp(X) --> beVerb(X), adj.

noun(singular) --> [apple].
noun(plural) --> [apples].
noun(singular) --> [carrot].
noun(plural) --> [carrots].
noun(singular) --> [watermelon].
noun(plural) --> [watermelons].
noun(plural) --> [people].
noun(singular) --> [person].
noun(singular) --> [boy].
noun(plural) --> [boys].
noun(singular) --> [girl].
noun(plural) --> [girls].
noun(singular) --> [government].
noun(singular) --> [flavor].
noun(plural) --> [flavors].
noun(singular) --> [rabbit].
noun(plural) --> [rabbits].

verb(plural) --> [run].
verb(singular) --> [runs].
verb(plural) --> [contain].
verb(singular) --> [contains].
verb(plural) --> [eat].
verb(singular) --> [eats].
verb(plural) --> [conscript].
verb(singular) --> [conscripts].
verb(plural) --> [like].
verb(singular) --> [likes].
verb(plural) --> [taste].

beVerb(singular) --> [is].
beVerb(plural) --> [are].

det(singular) --> ['A'].
det(singular) --> [a].
det(singular) --> ['The'].
det(plural) --> ['The'].

rlCl --> [that].
rlCl --> [like].

adj --> [good].
adj --> [pacifist].
adj --> [evil].
adj --> [divine].

quant(plural) --> [all].
quant(plural) --> [some].
quant(plural) --> ['All'].
quant(plural) --> ['Some'].