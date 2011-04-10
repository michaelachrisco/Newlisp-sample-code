(define (rec num state)
	(if (= num 0) (if
												(= state "q0") (println "true")
												(= state "q1") (println "false"))
	(if 
			(= state "q0") (rec (- num 1) "q1" (print " q0 "))
			(= state "q1") (rec (- num 1) "q0" (print " q1 ")))))
 
(rec 3 "q1")


;;created a finite state machine in lisp
;;accepts a odd number of symbols 
;;Michael Chrisco
(define (rec num state)
	(if (nil? num) (if
												(= state "q0") (return true)
												(= state "q1") (return(not true))
	(if 
			(= state "q0") (rec (rest num) "q1" (print " q0: " num))
			(= state "q1") (rec (rest num) "q0" (print " q1 "))))))


(nil?(list 1 2 3))