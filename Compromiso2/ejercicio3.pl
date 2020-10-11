directTrain(saarbruecken, dudweiler).
directTrain(forbach, saarbruecken).
directTrain(freyming, forbach).
directTrain(stAvold, freyming).
directTrain(fahlquemont, stAvold).
directTrain(metz, fahlquemont).
directTrain(nancy, metz).

travelFromTo(X, Y) :- directTrain(X, Y).
travelFromTo(X, Y) :- directTrain(X, Z), travelFromTo(Z, Y).

% Casos de prueba

travelFromTo(metz, stAvold). % true

travelFromTo(freyming, dudweiler). % true

travelFromTo(dudweiler, fahlquemont). %false