
% no1
p(1).
p(2):- !.
p(3).

% no2
% soal
kelass(Bilangan,positif) :- Bilangan > 0.
kelass(0,nol).
kelass(Bilangan,negatif) :- Bilangan < 0.
% jawaban
kelas(Bilangan,positif) :- Bilangan > 0, !.
kelas(0,nol) :- !.
kelas(_,negatif).

% no3
% a) tanpa cut
pecah([],[],[]).
pecah([H|T],[H|P],N) :-
	kelas(H,positif),
	pecah(T,P,N).
pecah([H|T],[H|P],N) :-
	kelas(H,nol),
	pecah(T,P,N).
pecah([H|T],P,[H|N]) :-
	kelas(H,negatif),
	pecah(T,P,N).

% b) dengan cut
pecah2([],[],[]).
pecah2([H|T],[H|P],N) :-
	kelas(H,positif),
	pecah2(T,P,N),
	!.
pecah2([H|T],[H|P],N) :-
	kelas(H,nol),
	pecah2(T,P,N),
	!.
pecah2([H|T],P,[H|N]) :-
	pecah2(T,P,N).

% no4
maksList([A],A).
maksList([A,B|T],X) :-
	A>B,
	maksList([A|T],X).
maksList([A,B|T],X) :-
	A=<B,
	maksList([B|T],X).

% no5
% hapusSatu(3,[0,3,4,3,8],X).
% X = [0,4,3,8].
hapusSatu(_,[],[]).
hapusSatu(H,[H|T],T).
hapusSatu(A,[H|T],[H|R]) :-
	hapusSatu(A,T,R).

% no6
suka(denny,X) :- filmHorror(X), !, fail.
suka(denny,X) :- film(X).
film(X) :- filmAction(X).
film(X) :- filmDrama(X).
film(X) :- filmHorror(X).
filmAction(terminator).
filmDrama(amelie).
filmDrama(her).
filmHorror(poltergeist).

% jawaban
% suka(denny,terminator).--> true
% suka(denny,amelie).--> true
% suka(denny,her).--> true
% suka(denny,poltergeist).--> false
% filmDrama(X).--> X = amelie,her
% \+ filmDrama(terminator).--> true
% \+ filmDrama(X). --> false

% no7
tidakUnify(X,Y) :- X\=Y.

% no8
mengalahkan(liverpool,arsenal).
mengalahkan(chelsea,liverpool).
mengalahkan(leicester,arsenal).

klasemen(Klub,Kategori) :-
	mengalahkan(Klub,_),
	\+mengalahkan(_,Klub),
	Kategori = 'atas'.
klasemen(Klub,Kategori) :-
	mengalahkan(_,Klub),
	\+mengalahkan(Klub,_),
	Kategori = 'bawah'.
klasemen(_,Kategori) :-
	Kategori = 'tengah'.

