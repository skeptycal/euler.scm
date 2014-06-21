;; Problem 1
;;
;; If we list all the natural numbers below 10 that are
;; multiples of 3 or 5, we get 3, 5, 6 and 9. The sum
;; of these multiples is 23. Find the sum of all the
;; multiples of 3 or 5 below 1000.

(define (sum-of-multiples-of-three-or-five-below n)
  (define sum 0)
  (let loop ()
    (set! n (- n 1))
    (if (or (zero? (modulo n 3))
            (zero? (modulo n 5)))
        (set! sum (+ sum n)))
    (if (positive? n)
        (loop)
        sum)))

(display (sum-of-multiples-of-three-or-five-below 1000))
(exit)

;; Note that I switch from using (zero?) to using
;; (positive?) on line 15. I wanted 'sum to be the
;; last expression in the method to be clear that
;; it's what is being returned.
