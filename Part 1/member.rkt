; Procedure: member?

; -----------------------------------
; Specifications:
; -----------------------------------
; pre-condition: a is an atom, lat is a list of atoms
; post-condition: #t if a is in lat, otherwise #f.

; Iterative version
(define (member?-iter a lat)
  (define (iter remaining-lat result)
    (cond ((or result (null? remaining-lat)) result)
          (else (iter (cdr remaining-lat) (eq? (car remaining-lat) a)))
    )
  )
  (cond ((null? lat) #f)
        (else (iter lat (eq? (car lat) a)))
  )
)

(member?-iter `b `(a b c))