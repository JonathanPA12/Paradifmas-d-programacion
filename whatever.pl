divisible(X,Y) :- 0 is X mod Y, !. %si el resultado de la division es 0, entonces no es primo 
divisible(X,Y) :- X > Y+1, divisible(X, Y+1).

es_primo(2) :- true,!.
es_primo(X) :- X < 2,!,false.
es_primo(X) :- not(divisible(X, 2)).

eliminar_primos([],[]).
eliminar_primos([X|L1],L2):- es_primo(X),eliminar_primos(L1,L2).
eliminar_primos([X|L1],L2):- not(es_primo(X)),eliminar_primos(L1,L3),insertar(X,L3,L2).

insertar(X,[],[X]).
insertar(X,[Y|Ys],[X,Y|Ys]) :- X =< Y.
insertar(X,[Y|Ys],[Y|Zs]) :- X > Y, insertar(X,Ys,Zs).
?-eliminar_primos([7,6,2,3,7,4,2,4,6],L2),write("Valores no primos en la lista "), write(L2),nl.
/*
divisible(X,Y) : Representa la división principal para saber si un numero es primo
	N° primo: Numero natural que unicamente es divisible entre su propio valor o entre 1.
		Irregularidad: El numero 2 es par y primo a la vez.
		Irregularidad: No se puede dividir entre 0.
El resultado de una división puede resultar con un n = 0 (no primo) o un n <> 0 (es primo)

Lista: 
	[7,6,2,3,7,4,2,4,6]
		N:			9 
		Primos:		(2,2,3,7,7)
		No primos:	(4,4,6,6)

output: [4, 4, 6, 6]Yes.
*/
/*
divisible(X,Y) :- 0 is X mod Y, !.  % Si el resultado de la división es 0, entonces no es primo.
divisible(X,Y) :- X > Y+1, divisible(X, Y+1). % Si el resultado de la división es diferente de 0, entonces es primo. (  0 mod 3) =  0.
*/