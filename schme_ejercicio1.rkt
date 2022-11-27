#lang racket

;
;OrdenaAparX (7 1 4 6 9 4 3 2), 3))
;OrdenaAparX (7 1 4 6 9 4 3 2), 4))

;Implemente la función OrdenaAparX la cual busca ordenar (ascendente/descendente) una lista a partir de una posición x
;Ejemplo: (OrdenaAparX (7 1 4 6 9 4 3 2), 3) => ( 2 3 4 6 9); (9 6 4 3 2).

;lista: lista de números enteros

(define (lista)
  (list 7 1 4 6 9 4 3 2))

(define (OrdenaAparX lista x)
  (cond
    [(null? lista) '()]
    [(< x 0) (error "x debe ser mayor o igual a 0")]
    [else (OrdenaAparX2 (list-ref lista x) (OrdenaAparX (remove (list-ref lista x) lista) (- x 1)))]))

(define (OrdenaAparX2 x lista)
    (cond
        [(null? lista) (list x)]
        [(< x (car lista)) (cons x lista)]
        [else (cons (car lista) (OrdenaAparX2 x (cdr lista)))]))
;probar con un ejemplo
(OrdenaAparX (list 7 1 4 6 9 4 3 2) 3)

;output: '(2 3 4 6 9)

;EJERCICIO 1

;


#lang racket
(define (palindromop lst)
  (if lst
      (and (= (car lst) (car (last lst)))
           (palindromop (cdr (last lst))))
    write))

    ; Implemente la función EsPalindrome que determine si una lista es palindrome o no. en Dr Rackect
    ; Ejemplo: (EsPalindrome (1 2 3 2 1)) => #t; (1 2 3 4 5) => #f

    ; lista: lista de números enteros

    (define (lista)
      (list 1 2 3 2 1))

    (define (EsPalindrome lista)
        (cond
            [(null? lista) '()]
            [else (palindromop lista)]))

    (EsPalindrome (lista))

    (define (palindromop lst)
      (if lst
          (and (= (car lst) (car (last lst)))
               (palindromop (cdr (last lst))))
        write))

        

    ;output: #t


(define (palindrome str)
  (let* (
         [lst (string->list (string-downcase str))]
  	 [slst (remove* '(#\space) lst)])
  (string=? (list->string (reverse slst)) (list->string slst))))


(display "Ingrese un input numerico:\n")
(if (palindrome (read-line))
		(display "Es palidromo\n")
		(display "No es Palindrome\n"))

    /*drep*/

    