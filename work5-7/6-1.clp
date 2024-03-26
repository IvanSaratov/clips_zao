(deffunction D (?a1 ?b1 ?a2 ?b2)
   (sqrt (+ (** (- ?b1 ?a1) 2) (** (- ?b2 ?a2) 2)))
)

(deffunction P (?a1 ?a2 ?b1 ?b2 ?c1 ?c2)
   (+ (D ?a1 ?b1 ?a2 ?b2) (D ?a1 ?c1 ?a2 ?c2) (D ?b1 ?c1 ?b2 ?c2))
)  

(defrule perim_treug
=>
	(printout t "Start enter points" crlf)
	(printout t "A1: ")
	(bind ?a1 (read)) 
	(printout t "A2: ")
	(bind ?a2 (read)) 
	(printout t "B1: ")
	(bind ?b1 (read))
	(printout t "B2: ")
	(bind ?b2 (read)) 	
	(printout t "C1: ")
	(bind ?c1 (read)) 
	(printout t "C2: ")
	(bind ?c2 (read)) 

	(bind ?result (P ?a1 ?a2 ?b1 ?b2 ?c1 ?c2))
	(printout t "P = " ?result crlf)
)