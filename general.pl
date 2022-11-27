

/*padre(leonardo,katherine).
padre(carlos,jason).
padre(carlos,marilyn).
todos :-
padre(X,Y),
write(X),
write(" es el padre de "),
write(Y), nl,fail.
?-todos.
*//*
le_gusta(elena,tenis).
le_gusta(jony,football).
le_gusta(tomas,baseball).
le_gusta(erik,natacion).
le_gusta(marco,tenis). 
le_gusta(marco,tenis).
le_gusta(_,tenis).
le_gusta(juan,X) :- le_gusta(tomas,X).
/*?-le_gusta(juan,tenis).*/
/*?-le_gusta(Persona,tenis),write(Persona),write("//"),fail.*/ 
?-le_gusta(X,lectura),le_gusta(X,natacion).*/
/*
carro(toyota,130000,3,rojo,12000).
carro(ford,90000,4,gris,25000).
carro(datsun,8000,1,rojo,30000).
?-carro(M,K,E,C,P), P <24000,
write(M),write(" "),write(K),write(" "),write(E),write(" "),write(C),write(" "),write(P),nl.
*/
/*?-member(X,[0,1,2,3,4,5,6,7,8,9]),write(X),nl,fail.*/
/*
lee_estudiante(e(Nombre,Nota1,Nota2,Promedio,Resultado))
:- write("Cual es su nombre? "), read(Nombre),
write("Nota en examen 1? ")read(Nota1),
write("Nota en examen 2? "),read(Nota2),
Promedio = (Nota1 + Nota2)/2,
Resultado = (Promedio >= 60 -> "Aprobado"; "Reprobado"),
write("El estudiante "), write(Nombre),
write(" tiene un promedio de "), write(Promedio), 
write(" y esta "), write(Resultado), nl.
*/
/*
lee_estudiante(e(Nombre,Nota1,Nota2,Promedio,Resultado))
:- write("Cual es su nombre? "), read(Nombre),
write("Nota en examen 1? "),read(Nota1),
write("Nota en examen 2? "), read(Nota2),
Promedio = (Nota1 + Nota2)/2,
paso(Promedio,Resultado).
/*likes(turkey, strawberry). % 'Turkeys like strawberries.'
likes(napoleon, glory). % 'Napoleon likes glory.'
/*?- likes(X, strawberry).*/
?- likes(X, strawberry), write(X).
*/

paso(Promedio,Resultado) :- Promedio >= 70,
Resultado = 'S';
Promedio < 70,
Promedio >= 60,
Resultado = 'A';
Promedio < 60,
Resultado = 'P'. 

run:- lee_estudiante(E),nl,write(E),nl,nl,
write("Desea continuar(s/n)"),read(Ch) = (Ch,'n').

run:-nl,nl,write("Digite los datos de otro estudiante"),nl,nl,run.
?-run.
*/
/*
?-random_member(X,[random(0,9,X)]),write(X),nl,fail.*/

/*Crear una lista con numeros random del 0 al 9 */
random(0, 9, W). % Se genera un numero random entre el valor 0 y 9
random(0, 9, V).
random(0, 9, U).
random(0, 9, T).
random(0, 9, S).
random(0, 9, R).
random(0, 9, Q).
random(0, 9, P).
random(0, 9, O).

/*agregar numeros randoms a una lista de 9 espacios*/

/*imprimir la lista con los valores agregados*/
lista([W,V,U,T,S,R,Q,P,O]):- write([W,V,U,T,S,R,Q,P,O]).

/*crear un vector de 9 espacios del 0 al 9, desordenados*/
vector([W,V,U,T,S,R,Q,P,O]):- 
random(0, 9, W), 
random(0, 9, V),
random(0, 9, U), 
random(0, 9, T), 
random(0, 9, S), 
random(0, 9, R), 
random(0, 9, Q), 
random(0, 9, P), 
random(0, 9, O).

/*mostrar el vector con los valores agregados*/
vector([W,V,U,T,S,R,Q,P,O]):- write([W,V,U,T,S,R,Q,P,O]).*/

/*
imprimir un vector de 9 espacios con valores ramdons
vector([W,V,U,T,S,R,Q,P,O]):-
random(0, 9, W),
random(0, 9, V),
random(0, 9, U),
random(0, 9, T),
random(0, 9, S),
random(0, 9, R),
random(0, 9, Q),
random(0, 9, P),
random(0, 9, O),
write([W,V,U,T,S,R,Q,P,O]).
?-vector([W,V,U,T,S,R,Q,P,O]).
*/
/*Pertenece a una lista*/

miembro([Lista1|_],[lista2|_]).
miembro(Lista1,[_|Tail]):-
miembro(Lista1,Tail).
?-miembro(2,[5,6,2,7,89,0]).

/*IMPRIME LISTAS*/
imprime_lista([]).
imprime_lista([H|T]) :- write(H), write(" "),
imprime lista(T).
?-imprime_lista([5,2,8,9,22]).

/*leer una lista*/
leerlista([X|Xr]):-
read(X),leerlista(Xr).
leerlista([]).
?-leerlista(X),write(X).



/*crear una lista de 9 espacios con valores generados ramdon del 0 al 9 en prolog*/
lista([W,V,U,T,S,R,Q,P,O]):-
random(0, 9, W),
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
lista([W,V,U,T,S,R,Q,P,O]):-
write([W,V,U,T,S,R,Q,P,O]).
?-lista([W,V,U,T,S,R,Q,P,O]).

/*comparar dos listas de numeros de 9 espacios*/
comparar([W,V,U,T,S,R,Q,P,O],[W1,V1,U1,T1,S1,R1,Q1,P1,O1]):-
W = W1,
V = V1,
U = U1,
T = T1,
S = S1,
R = R1,
Q = Q1,
P = P1,
O = O1,
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
?-comparar([W,V,U,T,S,R,Q,P,O],[W1,V1,U1,T1,S1,R1,Q1,P1,O1]).
/*probar la funcion comparar*/
comparar([6,8,3,8,5,8,4,1,6],[6,8,3,8,5,8,4,1,6]).
/*resultado true*/
comparar([2,4,6,8,3,5,1,7,9],[1,2,3,4,5,6,7,8,0]).
/*resultado false*/
/*
El \= es el operador de desigualdad, que se usa para comparar dos términos.
*/