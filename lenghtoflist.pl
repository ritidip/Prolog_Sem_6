length([],0).
length([X|Y],N):-length(Y,N1), N is N1+1.