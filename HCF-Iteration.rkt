#lang scheme

(require racket/trace) ; inbuilt proceedure that helps to trace the execution of a proceedure.

;our procedure that takes two numbers and ﬁnds the highest common factor (HCF) of two numbers a and b using Iteration.
(define (hcf-iterative a b)
  (let loop ((x a) (y b)) 
    (if (= y 0)   ; here within our loop we check if y == 0 and if so, we return a else calulate new modulas based on new a
        x
        (loop y (modulo x y)))))


(trace hcf-iterative)  ; this helps us to trace the recursion steps.
(hcf-iterative 18 27)