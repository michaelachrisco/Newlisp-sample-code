


(define (distribute X L List2)
	(while (< (length L) X) (push 0 L));;make sure that you can add the X to the list
;;	(let (List2 '()))  for some reason this list does not work.
	(for (y 0 (- X 1) 1) (let (POS (+ (L y) 1))(println "P: "POS) ;;POS->position of pointer
		(push POS List2 )))List2);;create new list adding 1 to each element in the origional.

;;(define (over L)
;;  (let (SORTED_LIST '()))
;; 	(for (z 0 (- (length L) 1) 1) (SORTED_LIST (distribute (L z) '()))))


(define Y '(1 2))
(define T '())

(distribute 10 Y T)  


(define Sorted '())
;;now we try it over a list

(define (over L);;do recursion here
	(if (empty? L) (print "a:") (pop L)))
	

(over '(4 4 5))
(over '())

Sorted