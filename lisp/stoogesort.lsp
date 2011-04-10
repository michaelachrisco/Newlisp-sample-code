;;		(define (param left right
;;				 (/ (- right (+ left 1)))))


(define (stoogesort L left right) 
(println "list : " L " left: " left " right: " right " calc: " (- right (/ (- right (+ left 1))3)))
		(if (> ( L left ) ( L right )) (swap  (L left)  (L right) )
		(if (<  1 (- left right)) (print "hello")
		(stoogesort(L left (- right (/ (- right (+ left 1))3))
		(stoogesort(L (+ left (/ (- right (+ left 1))3)) right
		(stoogesort(L left (- right (/ (- right (+ left 1))3))))))))))L)






(stoogesort (list 7 3 2 3 4 0) 0 5)