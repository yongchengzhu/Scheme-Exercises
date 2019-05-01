; Procedure: subst*

; Specifications:
;   * precondition: lst is an element of the set s-exp, old is an atom, new is a s-exp.
;   * postcondition: a new lst is returned with all occurences of old replaced by new.

(define (subst* lst old new)
  (cond ((null? lst) lst)
        ((atom? (car lst))
         (cond ((eq? (car lst) old)
                (cons new (subst* (cdr lst) old new)))
               (else (cons (car lst) (subst* (cdr lst) old new)))
         )
        )
        (else (cons (subst* (car lst) old new)
                    (subst* (cdr lst) old new)))
  )
)

(define (atom? x)
  (cond ((or (pair? x) (null? x)) #f)
        (else #t)
  )
)

(subst* '((a (a b c) b) c d a b) 'b '(meow meow))