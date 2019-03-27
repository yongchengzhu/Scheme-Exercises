; Write a function but-last that takes two arguments, lst and num, and which returns the
; list of all but the last num elements of lst.
(define (but-last lst num)
  (but-last-recur lst num (length lst)))

(define (but-last-recur lst num len)
  (cond ((>= num len) `())
        (else (cons (car lst) (but-last-recur (cdr lst) (+ num 1) len)))))