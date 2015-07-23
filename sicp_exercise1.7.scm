#lang scheme

(define (abs x) (if (< x 0) (- x) (x)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (sqrt x) 
  (define (sqrt-iter guess previous_guess x)
    (if (good-enough? guess previous_guess x)
      guess
      (sqrt-iter (improve guess x) guess x)))
  (define (good-enough? guess previous_guess x)
    (< (abs (- guess previous_guess)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (sqrt-iter 1.0 0.0 x))