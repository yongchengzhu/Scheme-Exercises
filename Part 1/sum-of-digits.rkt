; Develop and certify a recursive program which inputs a nonnegative integer and which
; outputs the sum of its digits.

; Recursive
(define (sum-of-digits n)
  (let ((remaining-digits (quotient n 10))
        (last-digit (modulo n 10)))
   (cond ((= remaining-digits 0) n)
         (else (+ last-digit (sum-of-digits remaining-digits)))
   )
  )
)

(sum-of-digits 123)

; Iterative
(define (sum-of-digits-iter n)
  (define (iter remaining-digits result-so-far)
    (cond ((zero? remaining-digits) result-so-far)
          (else (iter (quotient remaining-digits 10) (+ result-so-far (modulo remaining-digits 10))))
    )
  )
  (iter n 0)
)

(sum-of-digits-iter 123)