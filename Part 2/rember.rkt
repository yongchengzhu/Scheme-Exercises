; Procedure 'rember'

; Specifications
; pre-condition: a is an atom, lat is a list of atoms.
; post-condition: returns a new lat where 'a' is removed from 'lat'.

(define (rember? a lat)
  (cond ((null? lat) lat)
        ((eq? a (car lat)) (cdr lat))
        (else (cons (car lat) (rember? a (cdr lat))))
  )
)

(rember? `a `(d a e d f))