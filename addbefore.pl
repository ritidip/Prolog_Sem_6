add(X,L,L1):- conc([X],L,L1).
conc( [] , L , L).
conc( [ X | L1 ] , L2 , [ X | L3 ] ):- conc(L1 , L2 , L3).