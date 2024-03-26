(deffunction delete (?string)
   (bind ?length (str-length ?string))
   (bind ?clean "")
   (bind ?prevChar " ")

   (loop-for-count (?i 1 ?length) do 
      (bind ?char (sub-string ?i ?i ?string)) 
      (if (not (and (eq ?char " ") (eq ?prevChar " ")))
         then (bind ?clean (str-cat ?clean ?char)))
      (bind ?prevChar ?char)
   )
   ?clean 
)

(defrule work
=>
	(printout t "Enter string: ")
	(bind ?string (readline)) 

	(bind ?result (delete ?string))
	(printout t "String witout spaces: " ?result crlf)
)