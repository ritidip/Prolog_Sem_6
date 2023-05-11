efface(_,[],[]).
efface(X,[X|L],L):-!.
efface(X,[Y|L],[Y|L1]):-efface(X,L,L1).