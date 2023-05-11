solution([]).
solution([X/Y | Others]):-
    solution(Others),
    member(Y,[1,2,3,4,5,6,7,8]),
    noAttack(X/Y,Others).

noAttack(_ , []).
noAttack(X/Y,[X1/Y1 |Others]):-
    Y=\=Y1 , (Y1 - Y)=\=(X1-X),
    (Y1-Y)=\=(X-X1),
    noAttack(X/Y, Others).
member(X,[X|_]).
member(X,[Y|Rest]):- member(X,Rest).