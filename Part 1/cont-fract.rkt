; Exercise 1.37

; Suppose that n and d are procedures of one argument (the term index i) that return the Ni and Di of the terms of the continued fraction.
; Define a procedure cont-frac such that evaluating (cont-frac n d k) computes the value of the k-term finite continued fraction. Check your
; procedure by approximating 1/ using

; (cont-frac (lambda (i) 1.0)
;            (lambda (i) 1.0)
;            k)

; for successive values of k. How large must you make k in order to get an approximation that is accurate to 4 decimal places?

(define (cont-frac n d k)
  (let ((n-i (n k))
        (d-i (d k))
       )
    (cond ((= k 0) 0)
          (else (/ n-i
                   (+ d-i
                      (cont-frac n d (- k 1))
                    )
                 )
          )
    )
  )
)

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           100)