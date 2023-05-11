mergesort([],[]).
mergesort([A],[A]).
mergesort([A,B|Rest],S):-divide([A,B|Rest],L1,L2), mergesort(L1,S1),mergesort(L2,S2),merge(S1,S2,S).

divide([],[],[]).
divide([X],[X],[]).
divide([A,B| R],[A|Ra],[B|Rb]):- divide(R,Ra,Rb).

merge(A,[],A).
merge([],B,B).
merge([A|Ra],[B|Rb],[A|M]):- A=<B,merge(Ra,[B|Rb],M).
merge([A|Ra],[B|Rb],[A|M]):- A>B,merge([A|Ra],Rb,M).