#lang scheme

(define (abs x) (if (< x 0) (- x) x))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (cube x) (* (* x x) x))

(define (curt x) 
  (define (curt-iter guess previous_guess x)
    (if (good-enough? guess previous_guess x)
      guess
      (curt-iter (improve guess x) guess x)))
  (define (good-enough? guess previous_guess x)
    (< (abs (- guess previous_guess)) 0.001))
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (curt-iter 1.0 0.0 x))