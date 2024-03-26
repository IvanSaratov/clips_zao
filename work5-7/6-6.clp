(deffunction func_rec (?n)
   (if (<= ?n 1)
       then (/ 1.0 ?n)
       else (+ (/ 1.0 ?n) (func_rec (- ?n 1)))
   )
)

(defrule func_sum
=>
	(printout t "Enter N: ")
	(bind ?N (read)) 

	(bind ?result (func_rec ?N))
	(printout t "Result: " ?result crlf)
)