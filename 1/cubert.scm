; exercise 1.8
(define (good-enough? current-guess previous-guess)
  (< (abs (- current-guess previous-guess)) 0.00001)
  )

(define (improve-cube guess x)
  (/
   (+
    (* 2 guess)
    (/ x (square guess)))
   3)
  )

(define (cubert-iter guess previous-guess x)
  (if (good-enough? previous-guess guess)
      guess
      (cubert-iter (improve-cube guess x) guess x)
      )
  )
(define (cubert x) (cubert-iter 1.0 0.0 x))
