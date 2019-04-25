; Exercise 1.31

; Use product to compute approximations to using the formula:
; (pi / 4) = [(2/3) * (4/3) * (4/5) * (6/5) * (6/7) * (8/7) * ...]


(define (pi n)
  (define (pi-term idx)
    (cond ((even? idx) (/ (+ idx 2) (* (+ idx 3) 1.0))) ; Multiply by 1.0 to display decimal results.
          ((odd? idx) (/ (+ idx 3) (+ idx 2)))
    )
  )
  (define (pi-next idx)
    (+ idx 1)
  )
  (* 4 (product 0 pi-next n pi-term))
)

(define (product a next b term)
  (cond ((> a b) 1)
        (else (* (term a) (product (next a) next b term)))
  )
)

(pi 100)
(pi 1000)