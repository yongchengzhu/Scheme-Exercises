; 2.  Write your own version of list-ref using the list functions we have discussed.  You can find
; list-ref documented at http://www.schemers.org/Documents/Standards/R5RS/

; Briefly, the idea is indicated by this example:  (my-list-ref '(a b c d) 2) = c.  Note the 0-based
; indexing.  What happens if the input index exceeds the size of the input list?

(define (my-list-ref lst idx)
  (cond ((= idx 0) (car lst))
        (else (my-list-ref (cdr lst) (- idx 1)))))