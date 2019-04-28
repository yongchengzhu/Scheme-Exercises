; Procedure: 'multisubst'

; Specifications:
;   * pre-condition: lat is a list of atoms, old is an atom, new is an atom
;   * post-condition: If old is in lat, then a new lat is returned with all old replaced by new.
;                     Otherwise, lat is returned.

(define (multisubst lat old new)
  (cond ((null? lat) lat)
        ((eq? (car lat) old) (cons new (multisubst (cdr lat) old new)))
        (else (cons (car lat) (multisubst (cdr lat) old new)))
  )
)

(multisubst `(a b c d b e b) `b `meow)