; exercise 1.7
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001)
  )

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)
      )
  )

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter (/ x 2) x))

(display (sqrt 15.0))
