del(Y,[Y],[]).
del(X,[X|Rest],Rest).
del(X,[Y|Rest],[Y|List]):- del(X,Rest,List).

%delete first occurance of X

%del( X , [X|L] , L).
%del( X , [Y|Rest] , [Y | L]) :- del( X , Rest , L).

%delete all occurance of X
delall( X , [] , []).
delall( X , [ X | L] , L1) :- delall( X , L , L1).
delall( X , [ Y | L ] , L1) :- delall( X , L , L2) , conc([Y] , L2 , L1).

conc( [] , L , L).
conc( [ X | L1 ] , L2 , [ X | L3 ] ):- conc(L1 , L2 , L3).