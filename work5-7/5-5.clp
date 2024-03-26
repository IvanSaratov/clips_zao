(defrule bank  
    =>
     (printout t "Enter percent: " )
	 (bind ?percent (read))
     
     (printout t "Enter started sum: ")
	 (bind ?sum (read))
	 (bind ?sumMax (* ?sum 2))
	 (bind ?years 0)
	 
	 (while (< ?sum ?sumMax) do
        (bind ?years (+ ?years 1))
		(bind ?sum (+ ?sum (* ?percent (/ ?sum 100))))

		(printout t ?years " give " ?sum " money" crlf)
	 )
	 (printout t "After " ?years " years" crlf)
)

