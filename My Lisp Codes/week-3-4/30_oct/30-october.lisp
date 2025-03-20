; Exercise 4.1
; Construct the lists formed by the below expressions, using only CONS, elements,
; and NIL – do not forget the quotes where needed.
; (a)(list 'a 'b 'c)

;note that cons takes only two elements. If you want to print nil, use "nil nil"
(cons 'a (cons 'b (cons 'c nil) ))


; output will be    (A B C )
; if you are coming inside CDR, you can not take a parentheses
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;      (list 'a 'b NIL)


(cons 'a   (cons 'b   (cons nil nil)  )  )

; (A B NIL)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Exercise 4.2
; Write forms consisting only of CONS, NIL, ', A, B, C, D, which evaluate to the lists below.

;     (A B C D)

(cons 'A   (cons  'B (cons   'C   ( cons  'D  nil) ) ) )

; ( A  B  C  D)

; if you forget to use '   then it will give error "unbound variable" since 
; it does not know these symbols

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cons     (cons  'a  nil)   nil)

; this is     ((A))   
; because it does come from CAR not CDR.

(cons    nil   (cons  'a  nil))

; will return    (NIL A)

; element as a CAR will appear inside parentheses, however the element as a CDR 
; will appear without parentheses.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cons   '(c d)    nil)

((C D))      since coming from the CAR


(cons  'a    (cons   '(c d)    nil)  )
(A (C D))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;   (A            (B       (C D)   )              )


(cons 'A                   (cons      (cons 'B       (cons '(c d)  nil)        )   nil   )                   ) 

;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(A    (B (C) D

(cons 'A        (cons    (cons   'B    (cons  (cons   '(C) nil )     (cons 'D   nil))))

; to avoid dot "."   you have to extent to the nil   or


(cons 'A     (cons '(B (C D)) nil) )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


      

(            (       (       A (B (C) D)     )       )          )


(cons '((A (B (C) D)))    nil)

; always count the parantheses, because one additional comes from the procedure itself.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

