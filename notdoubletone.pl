#check a list is not doubletone or not.
notdoubletone([]).
notdoubletone([_]).
notdoubletone([_|[_|[_|_]]]).