#lang scheme

(require racket/trace) ; inbuilt procedure that helps to trace the execution of a procedure.

(define (multiply a b)
  (mult-iter 0 a b))

(define (mult-iter result a b)
  (cond
    ((= b 0) result)
    ((even? b) (mult-iter result (double a) (halve b)))
    (else (mult-iter (+ result a) a (- b 1)))))

(define (double x) (+ x x))

(define (halve x) (/ x 2))

(trace multiply)
(multiply 3 5)  ; This will return 15