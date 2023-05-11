rev([],[]).
rev([X],[X]).
rev([X|L],L1):-rev(L,L2),conc(L2,[X],L1).

conc( [] , L , L).
conc( [ X | L1 ] , L2 , [ X | L3 ] ):- conc(L1 , L2 , L3).