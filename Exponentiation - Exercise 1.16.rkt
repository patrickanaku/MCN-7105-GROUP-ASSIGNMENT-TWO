#lang scheme

(require racket/trace) ; inbuilt procedure that helps to trace the execution of a procedure.

(define (exponent b n)(exponent-iterator 1 b n)) ;our proceedure takes 3 arguments, a - cumulative result, b - the base and n - the exponent.

(define (exponent-iterator a b n)
  (cond ((= n 0) a)  ; If n is 0, return the accumulated result a.
        ((even? n) (exponent-iterator a (* b b) (/ n 2)))  ; If n is even, square b and halve n.
        (else (exponent-iterator (* a b) b (- n 1)))))  ; If n is odd, multiply a by b and decrease n by 1.


(trace exponent)
(exponent 7 2)