(defrule spisok_sotr
    =>
    (printout t "Count of sotrudnik? ")
    (bind ?count (read))

    (loop-for-count ?count do
        (printout t "Enter Name: ")
        (bind ?name (readline))

        (printout t "Enter job: ")
        (bind ?job (readline))

        (assert (sotrudnik ?name ?job))
    )
)