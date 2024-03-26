(deffunction func (?x ?c ?d)
   (if (< ?x ?c)
        then (- 1 (** ?x 2))
    else if (and (< ?x ?d) (<= ?c ?x))
        then 0
	else if (>= ?x ?d)
        then (+ 1 (** ?x 2))
   )
)

(defrule work
=>
	(printout t "Enter X: ")
	(bind ?x (read))

	(printout t "Enter C: ")
	(bind ?c (read))

	(printout t "Enter D: ")
	(bind ?d (read))

	(bind ?result (func ?x ?c ?d) )
	(printout t "Y=f(X) : " ?result crlf)
)