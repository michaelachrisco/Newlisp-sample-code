(define (rec bottles)
	(if (!= 0 bottles) (print "/n" bottles " bottles of beer on the wall" bottles " bottles of beer. \nTake one down, pass it around, " (- bottles 1) " bottles of beer on the wall" (rec ( - bottles 1)))))


(rec 99)