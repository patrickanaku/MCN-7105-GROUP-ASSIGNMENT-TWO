#lang scheme

(require racket/trace)
         
(define (* a b)
  (multiplication-iterator 0 a b)) ; we define a multiplication procedure that takes two parameters, a - the multiplicand and b - the multiplier.

(define (multiplication-iterator result a b)
  (cond
    ((= b 0) result)  ; if b is 0, return the accumulated result
    ((even? b) (multiplication-iterator result (double a) (halve b)))  ; If b is even, double a and halve b
    (else (multiplication-iterator (+ result a) a (- b 1)))))  ; If b is odd, add a to result and decrement b by 1

(define (double x) (+ x x))  ; Define double as adding the number to itself

(define (halve x) (/ x 2))  ; Define halve as dividing the number by 2

(trace multiplication-iterator)
(multiplication-iterator 0 3 5)