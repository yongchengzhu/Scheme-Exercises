; Exercise 1.30.  The sum procedure above generates a linear recursion. The procedure can be rewritten so that the sum is performed iteratively.
; Show how to do this by filling in the missing expressions in the following definition:

;(define (sum term a next b)
;  (define (iter a result)
;    (if <??>
;        <??>
;        (iter <??> <??>)))
;  (iter <??> <??>))

(define (sigma-iter term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          (else (iter (next a) (+ result (term a))))
    )
  )
  (iter a 0)
)

(sigma-iter (lambda (x) x) 1 (lambda (x) (+ x 1)) 5)
(sigma-iter (lambda (x) (* x x)) 1 (lambda (x) (+ x 1)) 5)