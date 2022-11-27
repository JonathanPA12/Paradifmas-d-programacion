
/*crear una lista de 9 espacios con valores generados ramdon del 0 al 9 en prolog*/
lista([W,V,U,T,S,R,Q,P,O]):-
random(9, 0, W),
random(0, 9, V),
random(0, 9, U),
random(0, 9, T),
random(0, 9, S),
random(0, 9, R),
random(0, 9, Q),
random(0, 9, P),
random(0, 9, O).
?-lista([W,V,U,T,S,R,Q,P,O]).

/*imprimir una lista de 9 espacios con valores generados ramdon del 0 al 9 en prolog*/
/*lista([W,V,U,T,S,R,Q,P,O]):-
write([W,V,U,T,S,R,Q,P,O]).
?-lista([W,V,U,T,S,R,Q,P,O]).*/

/*comparar dos listas de numeros de 9 espacios*/
comparar([W,V,U,T,S,R,Q,P,O],[W1,V1,U1,T1,S1,R1,Q1,P1,O1]):-
W = W1,/*fail,*/
V = V1,/*fail,*/
U = U1,/*fail,*/
T = T1,/*fail,*/
S = S1,/*fail,*/
R = R1,/*fail,*/
Q = Q1,/*fail,*/
P = P1,/*fail,*/
O = O1,/*fail,*/
write("Las listas son iguales").
comparar([W,V,U,T,S,R,Q,P,O],[W1,V1,U1,T1,S1,R1,Q1,P1,O1]):-
W \= W1,
V \= V1,
U \= U1,
T \= T1,
S \= S1,
R \= R1,
Q \= Q1,
P \= P1,
O \= O1,
write("Las listas son diferentes").


/*TEST 01*/

?-comparar([W,V,U,T,S,R,Q,P,O],[W1,V1,U1,T1,S1,R1,Q1,P1,O1]),nl,write("Primera Lista: "),
write([W,V,U,T,S,R,Q,P,O]),nl,write("Segunda lista: "),write([W1,V1,U1,T1,S1,R1,Q1,P1,O1]),nl.


/*TEST 02*/
/*
?-comparar([6,8,3,8,5,8,4,1,6],[6,8,3,8,5,8,4,1,6]),nl.
/*resultado true*/*/


/*TEST 03*/
/*
?-comparar([2,4,6,8,3,5,1,7,9],[1,2,3,4,5,6,7,8,0]),nl.
/*resultado false*/*/

/*
Generalidades
---
El \= es el operador de desigualdad, que se usa para comparar dos términos.
Irregularidad de version:
	Se debe agregar el fail al final de cada sentencia de comparacion, el fail
	haría que el valor sea buscado entre el rango de valores hasta que haga match,
	si el valor no es encontrado, se detiene ya que no existe registro de ese valor y
	debería salirse, regresar un 0, o un false como valor a esa peticion.
Documentacion oficial de strawberry prolog
https://dobrev.com/help/tut/Tutorial_in_Strawberry_Prolog.html#t11
*/

