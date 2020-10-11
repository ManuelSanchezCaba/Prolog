sentence(S) :- go(Out), s(S, Out, []).

s(s(NP, VP)) --> np(singular, NP), vp(singular, VP).
s(s(NP, VP)) --> np(plural, NP), vp(plural, VP).

np(X, np(Det, Noun)) --> det(X, Det), noun(X, Noun).
np(X, np(Det, Noun, RlCl)) --> det(X, Det), noun(X, Noun), rlCl(X, RlCl).
np(X, np(Noun)) --> noun(X, Noun).
np(X, np(Quant, Noun)) --> quant(X, Quant), noun(X, Noun).
np(X, np(Quant, Noun, RlCl)) --> quant(X, Quant), noun(X, Noun), rlCl(X, RlCl).
np(X, np(Quant, Adj, Noun)) --> quant(X, Quant), adj(Adj), noun(X, Noun).
np(X, np(Adj, Noun, Vp)) --> adj(Adj), noun(X, Noun), vp(X, Vp).

vp(X, vp(Verb)) --> verb(X, Verb).
vp(X, vp(Verb, Np)) --> verb(X, Verb), np(X, Np).
vp(X, vp(Verb, Adj)) --> verb(X, Verb), adj(Adj).
vp(X, vp(BeVerb, Adj)) --> beVerb(X, BeVerb), adj(Adj).

rlCl(_, rlCl(Rel)) --> rel(Rel).
rlCl(X, rlCl(Rel, Vp)) --> rel(Rel), vp(X, Vp).
rlCl(X, rlCl(Rel, Np, Verb)) --> rel(Rel), np(X, Np), verb(X, Verb).

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
noun(_, noun(government)) --> [government].
noun(_, noun(flavor)) --> [flavor].
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

rel(rel(that)) --> [that].
rel(rel(like)) --> [like].

adj(adj(good)) --> [good].
adj(adj(pacifist)) --> [pacifist].
adj(adj(evil)) --> [evil].
adj(adj(divine)) --> [divine].

quant(_, quant(all)) --> [all].
quant(_, quant('All')) --> ['All'].
quant(_, quant(some)) --> [some].
quant(_, quant('Some')) --> ['Some'].

go(Out):-
	read(X),
	name(X,L),
	tokenize(L,Out).

tokenize([],[]):-!.
tokenize(L,[Word|Out]):- 
    L\==[], 
    tokenize(L,Rest,WordChs), 
    name(Word,WordChs), 
    tokenize(Rest,Out).
tokenize([],[],[]):- !.
tokenize([46|_],[],[]):- !.
tokenize([32|T],T,[]):- !.
tokenize([H|T],Rest,[H|List]) :- tokenize(T,Rest,List).