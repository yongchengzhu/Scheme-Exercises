; Recursive
(define (fact-second-guess n)
  (cond ((= n 0) 1)
        (else (* n (fact-second-guess (- n 1))))))

;Iterative
(define (fact-iter-first-guess n)
  (fact-iter-first-helper n 0 1))

(define (fact-iter-first-helper n count result)
  (cond ((= n count) result)
        (else (fact-iter-first-helper n (+ count 1) (* result (+ count 1))))))