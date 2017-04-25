tambah(X,o,X).
tambah(X,s(Y),s(Z)) :- tambah(X,Y,Z).

% no2A
kali(o,_,o).
kali(s(X),Y,Z) :- kali(X,Y,Z1), tambah(Z1,Y,Z).

ganjil(s(o)).
ganjil(s(s(X))) :- ganjil(X).

kurang_dr(o,s(_)).
kurang_dr(s(X),s(Y)) :- kurang_dr(X,Y).

% no3
kebalikan(X,Y) :- kebalikan(X,[],Y).
kebalikan([],Y,Y).
kebalikan([H|T],Z,Y) :- kebalikan(T,[H|Z],Y).

% no4A
lshift([A|B],X) :- append(B,[A],X).

% no4B
rshift(X,[A|B]) :- append(B,[A],X).

% no5A
terakhir(X,Y) :- kebalikan(X,[Y|_]).

% no5B
terakhir2([A|[]],A).
terakhir2([_|B],X) :- terakhir2(B,X).

% no6
palindrome(X) :- kebalikan(X,X).

% no7
%duplikat([X|Y],R) :- append([X],[X],R),duplikat(Y,R).
duplikat([],[]).
duplikat([X|Y],Z) :- duplikat(Y,R),append([X,X],R,Z).

% no8
hapus([],A,A).
hapus([H|T],X,Y) :- delMember(H,X,R), hapus(T,R,Y).

delMember(_, [], []).
delMember(X, [X|Xs], Y) :-
    delMember(X, Xs, Y).
delMember(X, [T|Xs], [T|Y]) :-
    dif(X, T),
    delMember(X, Xs, Y).








