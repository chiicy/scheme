(define (p col row)
  (cond ((= row 1) 1)
        ((= col 1) 1)
        ((< row 1) 0)
        ((< col 1) 0)
        ((= row col) 1)
        (else (+ (p (- col 1) (- row 1)) (p col (- row 1)))))
)