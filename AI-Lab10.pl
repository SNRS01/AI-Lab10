% Task1:

square_area(S, A) :-
    A is S * S.
squere_perimeters(S, P) :-
    P is 4 * S.


rectangle_area(L, W, A) :-
    A is L * W.
rectangle_perimeters(L, W, P) :-
    P is 2 * (L + W).

triangle_area(B, H, A) :-
    A is 0.5 * B * H.
triangle_perimeters(S1, S2, S3, P) :-
    P is S1 + S2 + S3.

% Task2:

user(shahad, pass123).
user(sara, acbd).
user(noor, secret).

login :- attempt(1).

attempt(N) :-
    N =< 3,
    write(' Enter your username: '), nl,
    read(U),
    write(' Enter your password: '), nl,
    read(P),
    check(U, P, N).

attempt(N) :-
    N > 3,
    write('Sorry, you exceeded the maximum number of attempts, try again later '), nl.

check(U, P, _) :-
    user(U,P), !,
    write(' login Successful'), nl.
check(_, _, N) :-
    write(' Login Unsuccessful '), nl,
    N1 is N + 1,
    attempt(N1).

% Quieries:
% 34 ?- square_area(4, A). A = 16.

%35 ?- rectangle_perimeters(5, 3, P). P = 16.

%36 ?- triangle_area(6, 4, A). A = 12.0.
%
% Task2:
%
% 38 ?- login.
% Enter your username: 
%|: shahad.
% Enter your password: 
%|: pass123.
% login Successful
%true .

