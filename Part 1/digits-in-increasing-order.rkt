; Develop and certify a recursive scheme program to test whether the digits in a
; non-negative integer are in increasing order.

; Recursive
(define (digits-in-increasing-order? n)
  (let (
        (remaining-digits (quotient n 10))
        (last-digit (modulo n 10))
       )
    (cond ((zero? remaining-digits) #t)
          ((< last-digit (modulo remaining-digits 10)) #f)
          (else (and #t (digits-in-increasing-order? remaining-digits)))
    )
  )
)

; Iterative
(define (digits-in-increasing-order? n)
  (define (iter remaining last-popped result)
    (cond ((or (zero? remaining) (eqv? result #f)) result)
          (else (iter
                 (quotient remaining 10)
                 (modulo remaining 10)
                 (> last-popped (quotient remaining 10))
                )
          )
    )
  )
  (iter n +inf.0 #t)
)

(digits-in-increasing-order? 123)
(digits-in-increasing-order? 321)

(digits-in-increasing-order? 123)
(digits-in-increasing-order? 321)