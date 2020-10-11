% This predicate initialises the problem states. The first argument
% of solve/3 is the initial state, the 2nd the goal state, and the
% third the plan that will be produced.

% Primer caso de prueba

test(Plan):-
    solve(
        [
	  connectDoor(room1, corredor, door1), 
          connectDoor(room2, corredor, door2),
          connectDoor(room3, corredor, door3),
          connectDoor(room4, corredor, door4),
          
          connectDoor(corredor, room1, door1), 
          connectDoor(corredor, room2, door2),
          connectDoor(corredor, room3, door3),
          connectDoor(corredor, room4, door4),

          on(robot, floor),
          
          on(box1, floor),
          on(box2, floor),
          on(box3, floor),
          on(box4, floor),
          
          at(robot, room3), 
        
          at(box1, room1),
          at(box2, room1),
          at(box3, room1),
          at(box4, room1),
          
          at(s1, room1),
          at(s2, room2),
          at(s3, room3),
          at(s4, room4),
          at(s5, corredor),
          
          status(s1,off),
          status(s2,on),
          status(s3,on),
          status(s4,off),
          status(s5, on),
          
          box(box1),
          box(box2),
          box(box3),
          box(box4),
          
          switch(s1),
          switch(s2),
          switch(s3),
          switch(s4),
          switch(s5)
          ],
          [
          on(robot,floor),
          on(box1,floor),
          on(box2,floor),
          on(box3,floor),
          on(box4,floor),
            
          at(robot, room4),
          at(box1, room1),
          at(box2, room2),
          at(box3, room1),
          at(box4, room1),
            
          status(s1,on),
          status(s2,on),
          status(s3,on),
          status(s4,off)],
          
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
    %write(Op), nl,
    is_subset(Preconditions, State),
    \+ member(Op, Sofar),
    delete_list(Delete, State, Remainder),
    append(Add, Remainder, NewState),
    %write(Op), nl,   % Show the operators it is trying to apply
    solve(NewState, Goal, [Op|Sofar], Plan).

% Predicado para el operador go. Este hace que el robot se mueva de X a Y.

opn(go(X,Y),
    [at(robot, X), on(robot, floor), connectDoor(X, Y, _), switch(S), at(S, X), status(S, on)],
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

% Predicado para el operador turnOn. Este hace que el robot encienda la luz (S) sobre una caja (B).

opn(turnOn(S,B),
    [on(robot, B), on(B, floor), status(S,off), box(B)],
    [status(S, off)],
    [status(S, on)]).

% Predicado para el operador climbDown. Este hace que el robot se baje de la caja (B) en la posición X.

opn(climbDown(X,B),
    [at(robot, X), at(B, X), on(robot, B), on(B, floor), box(B)],
    [on(robot, B)],
    [on(robot, floor)]).

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
