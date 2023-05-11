even_odd(0).
even_odd(s(s(X))):- even_odd(X).


is_odd(s(0)).
is_odd(s(s(x))):- is_odd(x).

multipleofthree(s(s(s(0)))).
multipleofthree(s(x)):-multipleofthree(x).