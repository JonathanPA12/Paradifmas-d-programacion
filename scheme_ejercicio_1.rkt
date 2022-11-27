#lang racket

(define L1 (list 3 4 5 -1))
(define L2 (list 1 1 2 2)) 

;imprimir los valores que no se repiten en ambas listas y ordenarlas de menor a mayor

(define (NoElemCom L1 L2)
(if (null? L1)
'()
(if (member (car L1) L2)
(NoElemCom (cdr L1) L2)
(cons (car L1) (NoElemCom (cdr L1) L2)))))
(sort (NoElemCom L1 L2) <) ; de menor a mayor
;(sort (NoElemCom L1 L2) >) ; de mayor a menor









