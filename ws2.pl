% ----- WS 2 -----
% no2
panjang([],0).
panjang([_|T],R) :- panjang(T,S), R is S+1.

% no3
tambahSatu(X,Y) :- tambahSatu(X,[],Y).
tambahSatu([],Y,Y).
tambahSatu([H|T],X,Y) :-
	tambahSatu(T,R,Y),
	I is H+1,
	append(X,[I],R).

tambah1([],A) :- A=[].
tambah1([X|Xs],[Y|Ys]) :-
	tambah1(Xs,Ys),
	Y is X+1.

% no4
statistik(Ls,Min,Avg):-
	findMin(Ls,Min),
	findAvg(Ls,Avg).

findMin([X],X).
findMin([X,Y|Xs],Z) :-
	X=<Y,
	findMin([X|Xs],Z).
findMin([X,Y|Xs],Z) :-
	X>Y,
	findMin([Y|Xs],Z).

findAvg(X,Y) :-
	panjang(X,R),
	sum(X,S),
	Y is S/R.

sum([],0).
sum([X|Xs],Y):-
	sum(Xs,R),
	Y is R+X.

% no5
:- op(700,xfx,melihat).
:- op(650,xfx,menggunakan).
harry melihat ron menggunakan teleskop.

% no6
:- op(600, xfy, dan).
:- op(700, xfx, adalah).
:- op(200, fy, sangat).

% 6a
dumbledore adalah penyihir.

% 6b
A dan B dan C adalah teman :- A dan B adalah teman, B dan C adalah teman.
harry dan ron adalah teman.
ron dan hermione adalah teman.

% 6c
A adalah sangat sangat hebat :- A dan B adalah teman, B adalah penyihir, B adalah sangat hebat.
harry dan p adalah teman.
p adalah penyihir.
p adalah sangat hebat.






























