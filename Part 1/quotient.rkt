; Write a Scheme function quo of one integer argument d which returns a function of one integer
; argument n so that ((quo d) n) is the quotient on dividing n by d.  For example, ((quo 4) 6) = 1, as 4 divides 6 just one time.  
; Assume n >= 0 and d > 0.  The function returned by (quo d) should be properly recursive, and should work by repeated subtraction.

(define (quo d)
  (define (subtract-d-from-this n)
    (cond ((< n d) 0)
          (else (+ 1 (subtract-d-from-this (- n d))))))

  subtract-d-from-this)