even([]).
odd([_]).
odd([X,Y|T]):-odd(T).
even([X,Y|T]):-even(T).