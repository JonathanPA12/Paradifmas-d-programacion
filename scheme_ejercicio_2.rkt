    #lang racket

(define OrdenaAparX (lambda (pos L1)
(cond
[(null? L1) '()]
[(> pos 0) (OrdenaAparX (- pos 1) (cdr L1))]
[else (sort L1 <)])))
(OrdenaAparX 3 (list 7 1 4 6 9 4 3 2))

;el - pos 1 es para que se vaya recorriendo la lista y se vaya ordenando
;el sort es para ordenar la lista
;el < es para que ordene de menor a mayor
;si la lista esta vacia regresa la lista vacia o 0
;lambda se utiliza para definir una funcion anonima osea que no tiene nombre y se utiliza para hacer funciones mas cortas