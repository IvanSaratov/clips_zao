(deffunction deleteSub (?string ?subString)
    (bind ?length (str-length ?subString))
    (bind ?i (str-index ?subString ?string))
    
    (while (and ?i (> ?i 0))
        (bind ?left (sub-string 1 (- ?i 1) ?string))
        (bind ?right (sub-string (+ ?i ?length) (str-length ?string) ?string))
        (bind ?string (str-cat ?left ?right))

        (bind ?i (str-index ?subString ?string))
    )
    
    ?string
)

(defrule work
    =>
    (printout t "Enter string: ")
    (bind ?string (readline))

    (printout t "Enter sub-string: ")
    (bind ?subString (readline))

    (bind ?result (deleteSub ?string ?subString))
    (printout t "Result: " ?result crlf)
)

