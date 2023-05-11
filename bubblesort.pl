bubblesort( List, SortedList) :-swap( List, List1 ), ! ,bubblesort( List1, SortedList) .
bubblesort( List, List).

swap( [ X, Y | Rest ], [ Y, X | Rest ] ) :- X > Y, ! .
swap( [ Z | Rest ], [ Z | Rest1 ] ) :- swap(Rest, Rest1 ).