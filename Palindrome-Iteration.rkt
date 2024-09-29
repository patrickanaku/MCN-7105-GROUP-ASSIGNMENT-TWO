#lang scheme

(require racket/trace) ; inbuilt proceedure that helps to trace the execution of a proceedure.

;The iterative approach uses a loop to compare the first and last characters, moving inward toward the center of the string.
;If the characters don’t match at any point, the string is not a palindrome.

(define (palindrome-iterative str)
  (let loop ((start 0) (end (- (string-length str) 1))) ; we first check the number of cahararete in the string. if its one its not a palindrome.
    (if (>= start end) ;  if the first and last character are the same, the loop ends and returns #t which means true
        #t  ; If start crosses end, it is a palindrome
        (if (char=? (string-ref str start) (string-ref str end)) 
            (loop (+ start 1) (- end 1))  ; here increase position of i.e the next character in string
            #f))))                        ;  if the first and last character are not the same, the loop ends and returns #f

; here we are calling the palindrome-recursive on the below characters.
(trace palindrome-iterative)
(palindrome-iterative "mcs7101"); Returns false
(palindrome-iterative "madam")  ; Returns true
(palindrome-iterative "level")  ; Returns true
(palindrome-iterative "bad")  ; Returns false