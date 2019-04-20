; Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the
;                sum of the squares of the two larger numbers.

(define (larger-sum-squares a b c)
  (let ((smallest (min a b c)))
    (cond ((= smallest a) (+ (square b) (square c)))
          ((= smallest b) (+ (square a) (square c)))
          (else (+ (square a) (square b))))))

(define (square n)
  (* n n))