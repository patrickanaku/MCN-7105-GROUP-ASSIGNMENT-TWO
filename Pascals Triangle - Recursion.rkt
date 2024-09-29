#lang scheme

(require racket/trace) ; inbuilt procedure that helps to trace the execution of a procedure.

(define (Pascals-Tri-Recursion n k) ; we defined our proceedure for pascals triangle. It takes n as number of rows and k as the positin in the row.
  (cond ((or (= k 0) (= k n)) 1)  ; here we are initializing the values, starting with first row and setting all edges to 1.
        (else (+ (Pascals-Tri-Recursion (- n 1) (- k 1))  ;builds the triangle by suming the number directly above and the one
                                                          ;to the left of the number with the number above and to the right of it.
                 (Pascals-Tri-Recursion (- n 1) k)))))

; We defined this custom procedure to print out the results of the Pascals-Tri-Recursion
(define (print-pascals-triangle rows)
  (for ([n (in-range rows)]) ; inbuilt range function
    (begin
      (for ([k (in-range (+ 1 n))])
        (display (Pascals-Tri-Recursion n k))  ; we make a call to our Pascals-Tri-Recursion with current row (i) and position (j)
        (display " "))  ; this just prints an empty space of one charater between the numbers in a row.
      (newline))))  ; we simply moves to the new row after printing each row

; Call to trace the Pascals-Tri-Recursion function. it helped us to see progress.
;(trace Pascals-Tri-Recursion)

; Here we are simply calling our print procedure to show the triangle
(print-pascals-triangle 10)  ; the number of required rows can be adjusted as needed. 