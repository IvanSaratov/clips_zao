(defrule factorial
    =>
    (printout t "Enter N: ")
    (bind ?N (read))
    (bind ?result 1)

    (loop-for-count (?i 1 ?N) do
        (bind ?result (* ?result ?i))
    )

    (printout t "Factorial " ?N " = " ?result crlf)
)