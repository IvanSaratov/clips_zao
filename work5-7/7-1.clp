(deffunction replaceChar (?string ?old ?new)
    (bind ?length (str-length ?string))
    (bind ?i (str-index ?old ?string))

    (while (and ?i (> ?i 0))
        (bind ?left (sub-string 1 (- ?i 1) ?string))
        (bind ?right (sub-string (+ ?i 1) ?length ?string))
        (bind ?string (str-cat ?left ?new ?right))
        (bind ?i (str-index ?old ?string))
    )

    ?string
)

(defrule work
    =>
    (printout t "Enter string: ")
    (bind ?string (readline))

    (printout t "Enter old char: ")
    (bind ?oldChar (read))

    (printout t "Enter new char: ")
    (bind ?newChar (read))

    (bind ?result (replaceChar ?string ?oldChar ?newChar))
    (printout t "Result: " ?result crlf)
)
