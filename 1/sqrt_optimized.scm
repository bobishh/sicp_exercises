; exercise 1.7
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? current-guess previous-guess)
  (< (abs (- current-guess previous-guess)) 0.00001)
  )

(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) guess x)
      )
  )

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter (/ x 2) 0.0 x))
