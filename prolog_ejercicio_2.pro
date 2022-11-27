cantidad_repetidos([],0).
cantidad_repetidos([X|L],N):- cantidad_repetidos(L,N1), repetido(X,L), N is N1+1.
cantidad_repetidos([X|L],N):- cantidad_repetidos(L,N).
repetido(X,[X|_]).
repetido(X,[_|L]):- repetido(X,L).
?- cantidad_repetidos([1,1,2,2,3,3,4,4],N), write("Existen "),write(N),write(" valores repetidos. ").
/*
El 1 se repite : 2 veces
El 2 se repite : 2 veces
El 3 se repite : 2 veces
El 4 se Repite : 2 veces
Por lo cual existen 4 numeros de los 8 elementos que se repite [4/8]
[1,2,3,4]*/
