% facts:
% parent relatinoship, binary
parent(pam, bob).
parent(tom, bob).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(tom, liz).

% sex relatinoship, unary
female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

grandparent(G,C) :- parent(G,P), parent(P,C).
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(Z,Y), ancestor(X,Z).