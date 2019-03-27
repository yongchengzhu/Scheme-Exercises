; Write a function start that takes two arguments, lst and num, and which returns the
; first num elements of lst.

(define (first-num-elements lst num)
  (cond ((= num 0) (cons (car lst) `()))
        (else (cons (car lst) (first-num-elements (cdr lst) (- num 1))))))