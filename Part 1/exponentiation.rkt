; Recursive
(define (exp-first-guess base pow)
  (cond ((= pow 0) 1)
        (else (* base (exp-first-guess base (- pow 1))))))

; Iterative:
(define (exp-iter-first-guess base pow)
  (exp-iter-first-guess-helper base pow 0 1))

(define (exp-iter-first-guess-helper base pow count result)
  (cond ((= pow count) result)
        (else (exp-iter-first-guess-helper base pow (+ count 1) (* result base)))))