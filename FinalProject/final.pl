% This predicate initialises the problem states. The first argument
% of solve/3 is the initial state, the 2nd the goal state, and the
% third the plan that will be produced.

% Primer caso de prueba

test(Plan):-
    solve(
        [on(robot,floor),on(box1,floor),on(box2,floor),on(box3,floor),on(box4,floor),
        at(robot, room3a), at(box1, room1d), at(box2, room1c), at(box3, room1b), at(box4, room1a),
        at(s1, room1d), at(s2, room2d), at(s3, room3d), at(s4, room4d),
        status(s1,off),status(s2,on),status(s3,on),status(s4,off),
        box(box1),box(box2),box(box3),box(box4),
        in(room1d, room1c, room1), in(room1c, room1b, room1), in(room1b, room1a, room1),
        in(room1a, room1b, room1), in(room1b, room1c, room1), in(room1c, room1d, room1),
        in(room2d, room2c, room2), in(room2c, room2b, room2), in(room2b, room2a, room2),
        in(room2a, room2b, room2), in(room2b, room2c, room2), in(room2c, room2d, room2),
        in(room3d, room3c, room3), in(room3c, room3b, room3), in(room3b, room3a, room3),
        in(room3a, room3b, room3), in(room3b, room3c, room3), in(room3c, room3d, room3),
        in(room4d, room4c, room4), in(room4c, room4b, room4), in(room4b, room4a, room4),
        in(room4a, room4b, room4), in(room4b, room4c, room4), in(room4c, room4d, room4),
        in(room1d, door1, corredor), in(room2d, door2, corredor), in(room3d, door3, corredor), in(room4d, door4, corredor),
        in(door1, corredor, corredor), in(door2, corredor, corredor), in(door3, corredor, corredor), in(door4, corredor, corredor),
        in(corredor, room1d, corredor), in(corredor, room2d, corredor), in(corredor, room3d, corredor), in(corredor, room4d, corredor)],
        [on(robot,floor),on(box1,floor),on(box2,floor),on(box3,floor),on(box4,floor),
        at(robot, room4a), at(box1, room1d), at(box2, room2b), at(box3, room1b), at(box4, room1a),
        status(s1,on),status(s2,on),status(s3,on),status(s4,off),
        box(box1),box(box2),box(box3),box(box4)],
        Plan).

% Segundo caso de prueba

test1(Plan) :-
    solve(
         [on(robot, floor), on(box1, floor), at(robot, room3a), at(box1, room3b),
         at(s1, room3d), status(s1, off),
         box(box1),
         in(room3a, room3b, room3), in(room3b, room3c, room3), in(room3c, room3d, room3)],
         [on(robot, box1), on(box1, floor), at(robot, room3d), at(box1, room3d), status(s1, on)],
         Plan).

% Tercer caso de prueba

test2(Plan) :-
    solve(
         [on(robot, floor), on(box1, floor), at(robot, room3a), at(box1, room3b),
         at(s3, room3d), status(s3, off),
         box(box1),
         in(room3a, room3b, room3), in(room3b, room3c, room3), in(room3c, room3d, room3),
         in(room3d, corredor, corredor), in(corredor, room4d, corredor),
         in(room4d, room4c, room4), in(room4c, room4b, room4), in(room4b, room4a, room4)],
         [on(robot, floor), on(box1, floor), at(robot, room4a), at(box1, room3d), status(s3, on)],
         Plan).

% Cuarto caso de prueba

test3(Plan):-
    solve(
        [on(robot,floor),on(box1,floor),
        at(robot, room3a), at(box1, room1d),
        at(s1, room1d), at(s2, room2d), at(s3, room3d), at(s4, room4d),
        status(s1,off),status(s2,on),status(s3,on),status(s4,off),
        box(box1),
        in(room3a, room3b, room3), in(room3b, room3c, room3), in(room3c, room3d, room3),
        %in(room1d, room1c, room1), in(room1c, room1b, room1), in(room1b, room1a, room1),
        %in(room1a, room1b, room1), in(room1b, room1c, room1), in(room1c, room1d, room1),
        in(room2d, room2c, room2), in(room2c, room2b, room2), %in(room2b, room2a, room2),
        %in(room2a, room2b, room2), 
        in(room2b, room2c, room2), in(room2c, room2d, room2),
        %in(room3d, room3c, room3), in(room3c, room3b, room3), in(room3b, room3a, room3),
        in(room4d, room4c, room4), in(room4c, room4b, room4), in(room4b, room4a, room4),
        %in(room4a, room4b, room4), in(room4b, room4c, room4), in(room4c, room4d, room4),
        in(room1d, door1, corredor), in(room2d, door2, corredor), in(room3d, door3, corredor), in(room4d, door4, corredor),
        in(door1, corredor, corredor), in(door2, corredor, corredor), in(door3, corredor, corredor), in(door4, corredor, corredor),
        in(corredor, room1d, corredor), in(corredor, room2d, corredor), in(corredor, room3d, corredor), in(corredor, room4d, corredor)],
        [on(robot,floor),on(box1,floor),
        at(robot, room4a), at(box1, room2b),
        status(s1, on), status(s2, on), status(s3, on), status(s4, off)],
        Plan).

% This predicate produces the plan. Once the Goal list is a subset
% of the current State the plan is complete and it is written to
% the screen using write_sol/1.

solve(State, Goal, Plan):-
    solve(State, Goal, [], Plan).

solve(State, Goal, Plan, Plan):-
    is_subset(Goal, State), nl,
    write_sol(Plan).

solve(State, Goal, Sofar, Plan):-
    opn(Op, Preconditions, Delete, Add),
    write(Op), nl,
    is_subset(Preconditions, State),
    \+ member(Op, Sofar),
    delete_list(Delete, State, Remainder),
    append(Add, Remainder, NewState),
    write(Op), nl,   % Show the operators it is trying to apply
    solve(NewState, Goal, [Op|Sofar], Plan).

% Predicado para el operador go. Este hace que el robot se mueva de X a Y.

opn(go(X,Y,R),
    [at(robot, X), on(robot, floor), in(X, Y, R)],
    [at(robot, X)],
    [at(robot, Y)]).

% Predicado para el operador push. Este hace que el robot mueva una caja (B) de X a Y.

opn(push(B,X,Y,robot),
    [at(robot, X), at(B, X), on(robot, floor), on(B, floor), box(B)],
    [at(robot, X), at(B, X)],
    [at(robot, Y), at(B, Y)]).

% Predicado para el operador climbUp. Este hace que el robot se suba a una caja (B) en la posición X.

opn(climbUp(X,B),
    [at(robot, X), at(B, X), on(robot, floor), on(B, floor), box(B)],
    [on(robot, floor)],
    [on(robot, B)]).

% Predicado para el operador climbDown. Este hace que el robot se baje de la caja (B) en la posición X.

opn(climbDown(X,B),
    [at(robot, X), at(B, X), on(robot, B), on(B, floor), box(B)],
    [on(robot, B)],
    [on(robot, floor)]).

% Predicado para el operador turnOn. Este hace que el robot encienda la luz (S) sobre una caja (B).

opn(turnOn(S,B),
    [on(robot, B), on(B, floor), status(S,off), box(B)],
    [status(S, off)],
    [status(S, on)]).

% Predicado para el operador turnOff. Este hace que el robot apague la luz (S) sobre una caja (B).

opn(turnOff(S,B),
    [on(robot, B), on(B, floor), status(S, on), box(B)],
    [status(S, on)],
    [status(S, off)]).

% Check if first list is a subset of the second

is_subset([H|T], Set):-
    member(H, Set),
    is_subset(T, Set).
is_subset([], _).

% Remove all elements of 1st list from second to create third.

delete_list([H|T], List, Final):-
    remove(H, List, Remainder),
    delete_list(T, Remainder, Final).
delete_list([], List, List).

remove(X, [X|T], T).
remove(X, [H|T], [H|R]):-
    remove(X, T, R).

write_sol([]).
write_sol([H|T]):-
    write_sol(T),
    write(H), nl.
