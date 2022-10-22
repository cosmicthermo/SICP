#lang scheme
; Exercise 1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
b
a)
(cond ((= a 4) 6)
((= b 4) (+ 6 7 a))
(else 25))
(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
((< a b) b)
(else -1))
(+ a 1))

; Ex1.2
(/ (+ 5 4
      (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

; Ex1.3
(define (sq x) (* x x))
(define (sosq x y) (+ (sq x) (sq y)))
(define (soqmaxTwo x y z)
  (cond ((and (or (= x y) (< x y)) (or (= x z) (< x z))) (sosq y z))
        ((and (or (= y x) (< y x)) (or (= y z) (< y z))) (sosq x z))
        ((and (or (= z y) (< z y)) (or (= z x) (< z x))) (sosq y x))))
(soqmaxTwo 1 2 3)
(soqmaxTwo 1 1 2)
(soqmaxTwo 1 2 2)

; Ex 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
(a-plus-abs-b 1 -2)

; Ex 1.6
#|
(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))

(define (sqrt-iter guess x)
(new-if (good-enough? guess x)
guess (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? x y)
  (< (abs (- (square x) y)) 0.001))
(define (sqrt x) (sqrt-iter 1.0 x))
(define (square x) (* x x))

(sqrt 2)
Out of memory
|#

;; Ex 1.7

; Ex 1.8

