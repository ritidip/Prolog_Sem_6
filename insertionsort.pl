insertionsort([H|List], Result):- insertionsort(List, Temp), insertItem(H, Temp, Result).
insertionsort([],[]).
insertItem(X, [H|List], [H|Result]):- H<X, !, insertItem(X, List, Result).

insertItem(X,List,[X|List]).