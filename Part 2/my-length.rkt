; Write your own version of length using the list functions we have discussed.  You can find
; length documented at http://www.schemers.org/Documents/Standards/R5RS/

; The idea is suggested by (my-length '(a b c d)) = 4.

(define (my-length lst)
  (cond ((null? lst) 0)
        (else (+ 1 (my-length (cdr lst))))))