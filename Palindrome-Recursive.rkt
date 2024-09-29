#lang scheme

(require racket/trace) ; inbuilt proceedure that helps to trace the execution of a proceedure.

;The recursive approach compares the first and last characters of the string. If they are equal, the procedure
;recursively checks the substring between them. If any pair does not match, the string is not a palindrome.

(define (palindrome-recursive string)
  (define (helper s) ; here we have defined a helper procedure that does the actual recursive calls.
    (cond ((<= (string-length s) 1) #t) ; we first check the number of cahararete in the string. if its one its not a palindrome.
          ((char=? (string-ref s 0) (string-ref s (- (string-length s) 1))) ;here we are checking whether the first and last charater are equall. 
           (helper (substring s 1 (- (string-length s) 1))))  ; Check the middle part
          (else #f)))  ; If first and last characters don't match, not a palindrome
  (helper string))

; here we are calling the palindrome-recursive on the below characters.
(trace palindrome-recursive)
(palindrome-recursive "x"); Returns false
(palindrome-recursive "mcs7101"); Returns false
(palindrome-recursive "madam")  ; Returns true
(palindrome-recursive "level")  ; Returns true
(palindrome-recursive "bad")  ; Returns false