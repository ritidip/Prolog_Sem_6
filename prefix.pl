prefix([],L).
prefix([X|Y],[X|Y1]):-prefix(Y,Y1).

suffix(L,L).
suffix(L1,[_|L2]):- suffix(L1,L2).