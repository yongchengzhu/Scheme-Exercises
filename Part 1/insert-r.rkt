; Procedure: 'insert-r'

; Specifications
;   pre-condition: lat is a list of atoms, occ is an atom, new is an atom.
;   post-condition: if occ exist is lat, then a new list of atoms is returned with new inserted to the right of occ inside of lat.
;                   otherwise, simple lat is returned.

(define (insert-r lat occ new)
  (cond ((null? lat) lat)
        ((eq? (car lat) occ)
          (append (list (car lat) new) (cdr lat))
        )
        (else (cons (car lat) (insert-r (cdr lat) occ new)))
  )
)

(insert-r `(a b c) `b `meow)