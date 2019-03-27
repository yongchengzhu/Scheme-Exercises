; Write a function end that takes two arguments, lst and num, and returns the last num
; elements of lst.

(define (last-num-elements lst num)
  (last-num-elements-recur lst num (length lst)))

(define (last-num-elements-recur lst num len)
  (cond ((>= num len) lst)
        (else (last-num-elements-recur (cdr lst) (+ num 1) len))))