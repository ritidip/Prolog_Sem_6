quicksort([X|List],Result):- partition(List,X,Left,Right), quicksort(Left,Ls), quicksort(Right, Rs), listappend(Ls,[X|Rs],Result).
quicksort([],[]).

partition([X|List], Y, [X|Ls], Rs):- X=<Y,partition(List,Y,Ls,Rs).
partition([X|List], Y, Ls,[X|Rs]):- X>Y,partition(List,Y,Ls,Rs).
partition([],_,[],[]).

listappend([],Result,Result).
listappend([X|List],Result,[X|New]):- listappend(List,Result,New).