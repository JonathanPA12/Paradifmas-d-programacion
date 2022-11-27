#lang racket
(define (EsPalindrome str)
  (let* (
         [lst (string->list (string-downcase str))]
  	 [slst (remove* '(#\space) lst)])
  (string=? (list->string (reverse slst)) (list->string slst))))
;integer->list; una lista de enteros (int) unicamente 

(display "Ingrese una lista:\n")
(if (EsPalindrome (read-line))
		(display "Es palidromo\n")
		(display "No es Palindrome\n"))


;Referencia OFICIAL de Dr. Racket (scheme)
;https://docs.racket-lang.org/guide/index.html


;1° funcion/procedure string->list
;      Definicion: Devuelve una nueva lista de caracteres correspondientes al contenido de str, la
;                  longitud de la lista  y la secuencia de caracteres en str.
;https://docs.racket-lang.org/reference/strings.html#%28def._%28%28quote._~23~25kernel%29._string-~3elist%29%29
;
;
;2° funcion/procedure let*
;      Definicion: Recorre la lista y evalua una a una su contenido, creando una ubicación para cada id
;                  tan pronto como el valor esté disponible. Asigna el valor del contenido a un id para
;                  poder realizar un calculo, operacion o proceso. 
;https://docs.racket-lang.org/reference/let.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._let%2A%29%29
;
;
;3° funcion/procedure string-downcase
;      Definicion: string es una lista de caracteres, por lo cual se puede configurar para que los datos ingresados
;                  puedan ser uppercase (MAYUSCULA) o downcase (minusculas), esto por que algunas bases de datos
;                  (ORACLE), utilizan este requerimento como un estandar de seguridad de datos.
;https://docs.racket-lang.org/reference/strings.html#%28def._%28%28quote._~23~25kernel%29._string-downcase%29%29
;
;
;4° funcion '(#\space)
;      Definicion: El espacio (ASCII 32), no se considera como un caracter valido, elimina el espacio dentro de la lista
;https://docs.racket-lang.org/reference/reader.html#%28idx._%28gentag._86._%28lib._scribblings%2Freference%2Freference..scrbl%29%29%29

;5° funcion/procedure display
;     Definicion: la funcion display es parecida a la funcion println,fprinf, o prinf.
;                 Es la forma que tiene scheme de poder obtener datos por peticion y no datos ya definidos,
;                 la definicion de display en español significa "desplegar o mostrar" algo, tambien se puede definir como
;                 la peticion mediante un output de un input a un usuario.     
;https://docs.racket-lang.org/reference/Writing.html#%28def._%28%28quote._~23~25kernel%29._display%29%29
;
;
;5° funcion/procedure read-line
;    Definicion: Devuelve una cadena que contiene la siguiente línea de bytes de input.
;                De esta forma almacenamos el input del usuario  de manera recursiva,
;                consultamos el valor en la funcion EsPalindrome
;https://docs.racket-lang.org/reference/Byte_and_String_Input.html#%28def._%28%28quote._~23~25kernel%29._read-line%29%29
;
;