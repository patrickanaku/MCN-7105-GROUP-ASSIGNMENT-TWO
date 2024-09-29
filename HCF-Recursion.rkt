#lang scheme

(require racket/trace) ; inbuilt proceedure that helps to trace the execution of a proceedure.


;procedure that takes two numbers and ﬁnds the highest common factor (HCF) of two numbers using Recursion
(define (hcf-recursive a b)
  (if (= b 0) ; this is starting poing of recursion. If b is zero, the proceedure returns a as final anwser.
      a
      (hcf-recursive b (modulo a b)))) ; else it computes the modulas of a and b


(trace hcf-recursive) ; this helps us to trace the recursion steps. and we can see in our example there are 4 recursive calls.
(hcf-recursive 18 27)

