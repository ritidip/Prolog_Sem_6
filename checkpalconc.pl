checkpal([]).
checkpal([_]).
checkpal([H|T]):-conc(L,[H],T),checkpal(L).

conc( [] , L , L).
conc( [ X | L1 ] , L2 , [ X | L3 ] ):- conc(L1 , L2 , L3).