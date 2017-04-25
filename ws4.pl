% no 1
nice :- sunshine,warm.
funny :- sunshine,rain.
disgusting :- rain,fog.
rain.
fog.

% 1a) ERROR: Undefined procedure: sunshine/0
% 1b) true
% 1c) ERROR: No permission to modify static procedure `fog/0'
% 1d) true
% 1e) true
% 1f) true
% 1g) true
% 1h) true
% 1i) Day = saturday
%     X   = sunny
% 1j) ERROR: Undefined procedure: bad/1
% 1k) true
% 1l) X = saturday

% no 2
% 2a)
sigma(0,0).
sigma(N,Sum):-
    Na is N-1,
    sigma(Na,Suma),
    Sum is Suma + N.
% 2b)
:- dynamic sigmares/2.
sigmab(N,Sum) :- sigmares(N,Sum), !.
sigmab(N,Sum) :-
    sigmabb(N,Sum),
    assert(sigmares(N,Sum)).
sigmabb(0,0).
sigmabb(N,Sum) :-
    Na is N-1,
    sigmabb(Na,Suma),
    Sum is Suma + N.

% 2c)
sigmac(0,0).
sigmac(N,Sum) :- sigmares(N,Sum), !.
sigmac(N,Sum) :-
    Na is N-1,
    sigmac(Na,Suma),
    Sum is Suma + N,
    assert(sigmares(N,Sum)).


% 3
age(peter,7).
age(ann,5).
age(pat,8).
age(tom,5).
%3a) bagof(Child, age(Child, 5), List).
%    List = [ann, tom].

%3b) bagof(childrenOf5(X), age(X, 5), List).
%    List = [childrenOf5(ann), childrenOf5(tom)].

%3c) bagof(Child, age(Child, Age), List).
%    Age = 5,
%    List = [ann, tom]

%3d) bagof(Child, Ageˆage(Child,Age), List).
%    List = [peter, ann, pat, tom].

%3e) findall(Child, age(Child, Age), List).
%    List = [peter, ann, pat, tom].

%3f) findall(Baby,age(Baby,1),L).
%    L = []

%3g) bagof(Baby,age(Baby,1),L).
%    false

%3h) setof(Child, Ageˆage(Child,Age), List).
%    List = [ann, pat, peter, tom]

%3i) setof(Age/Child, age(Child,Age), List).
%3j) setof(Age,Childˆage(Child,Age),L).
%3k) bagof(Age,Childˆage(Child,Age),L).





