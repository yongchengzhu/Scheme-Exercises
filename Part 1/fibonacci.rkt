; Recursive
(define (fib-rec n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib-rec (- n 1)) (fib-rec (- n 2))))))

; Iterative
(define (fib-iter n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (fib-iter-helper n 0 1 2 1))))

(define (fib-iter-helper n pre-previous previous count result)
  (cond ((= count n) result)
        (else (fib-iter-helper n previous result (+ count 1) (+ previous result)))))