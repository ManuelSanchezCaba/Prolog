s(s(NP, VP)) --> np(singular, NP), vp(singular, VP).
s(s(NP, VP)) --> np(plural, NP), vp(plural, VP).

np(X, np(Det, Noun)) --> det(X, Det), noun(X, Noun).
np(X, np(Det, Noun, RlCl)) --> det(X, Det), noun(X, Noun), rlCl(RlCl).
np(X, np(Quant, Noun)) --> quant(X, Quant), noun(X, Noun).
np(X, np(Quant, Noun, RlCl)) --> quant(X, Quant), noun(X, Noun), rlCl(RlCl).
np(X, np(Quant, Adj, Noun)) --> quant(X, Quant), adj(Adj), noun(X, Noun).
np(X, np(Adj, Noun, Vp)) --> adj(Adj), noun(X, Noun), vp(X, Vp).
np(X, np(Quant, Noun, RlCl, Np)) --> quant(X, Quant), noun(X, Noun), rlCl(RlCl), np(X, Np).
np(X, np(Quant, Noun, RlCl, Vp)) --> quant(X, Quant), noun(X, Noun), rlCl(RlCl), vp(X, Vp).
vp(X, vp(Verb)) --> verb(X, Verb).
vp(X, vp(Verb, Np)) --> verb(X, Verb), np(X, Np).
vp(X, vp(Verb, Adj)) --> verb(X, Verb), adj(Adj).
vp(X, vp(BeVerb, Adj)) --> beVerb(X, BeVerb), adj(Adj).

noun(singular, noun(apple)) --> [apple].
noun(plural, noun(apples)) --> [apples].
noun(singular, noun(carrot)) --> [carrot].
noun(plural, noun(carrots)) --> [carrots].
noun(singular, noun(watermelon)) --> [watermelon].
noun(plural, noun(watermelons)) --> [watermelons].
noun(plural, noun(people)) --> [people].
noun(singular, noun(person)) --> [person].
noun(singular, noun(boy)) --> [boy].
noun(plural, noun(boys)) --> [boys].
noun(singular, noun(girl)) --> [girl].
noun(plural, noun(girls)) --> [girls].
noun(singular, noun(government)) --> [government].
noun(singular, noun(flavor)) --> [flavor].
noun(plural, noun(flavors)) --> [flavors].
noun(singular, noun(rabbit)) --> [rabbit].
noun(plural, noun(rabbits)) --> [rabbits].

verb(plural, verb(run)) --> [run].
verb(singular, verb(runs)) --> [runs].
verb(plural, verb(contain)) --> [contain].
verb(singular, verb(contains)) --> [contains].
verb(plural, verb(eat)) --> [eat].
verb(singular, verb(eats)) --> [eats].
verb(plural, verb(conscript)) --> [conscript].
verb(singular, verb(conscripts)) --> [conscripts].
verb(plural, verb(like)) --> [like].
verb(singular, verb(likes)) --> [likes].
verb(plural, verb(taste)) --> [taste].

beVerb(singular, beVerb(is)) --> [is].
beVerb(plural, beVerb(are)) --> [are].

det(singular, det('A')) --> ['A'].
det(singular, det(a)) --> [a].
det(singular, det('The')) --> ['The'].
det(plural, det('The')) --> ['The'].

rlCl(rlCl(that)) --> [that].
rlCl(rlCl(like)) --> [like].

adj(adj(good)) --> [good].
adj(adj(pacifist)) --> [pacifist].
adj(adj(evil)) --> [evil].
adj(adj(divine)) --> [divine].

quant(plural, quant(all)) --> [all].
quant(plural, quant(some)) --> [some].
quant(plural, quant('All')) --> ['All'].
quant(plural, quant('Some')) --> ['Some'].