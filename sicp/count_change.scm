(define (count-change amount)
  (define (first-denomination kind-of-coins)
    (cond ((= kind-of-coins 1) 1)
          ((= kind-of-coins 2) 5)
          ((= kind-of-coins 3) 10)
          ((= kind-of-coins 4) 25)
          ((= kind-of-coins 5) 50)
      ))
  (define (cc amount kind-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kind-of-coins 0)) 0)
          (else (+ (cc amount (- kind-of-coins 1)) 
          		   (cc (- amount (first-denomination kind-of-coins)) kind-of-coins)))
          ))
  (cc amount 5))

(define (count-change-new-new n)
	(define (first-denomination kind-of-coins)
    (cond ((= kind-of-coins 1) 1)
          ((= kind-of-coins 2) 5)
          ((= kind-of-coins 3) 10)
          ((= kind-of-coins 4) 25)
          ((= kind-of-coins 5) 50)
      ))
  (define (fib-iter current total amount)
    (if (= n 0)
        total
        (fib-iter (+ current total) current (- n (first-denomination count)))))
  (fib-iter 1 1 n)
)