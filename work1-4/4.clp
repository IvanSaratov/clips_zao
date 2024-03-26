(deffacts peoples
   (sotrudink Ivan 30 4 15000)
   (sotrudink Olga 14 2 30000)
   (sotrudink Alex 3 15 2000)
   (sotrudink Lena 45 1 45000)
   (sotrudink Andrey 13 0 60000)
)

(defrule premia
   (sotrudink ?name ?stazh ?childrens ?oklad)
   (test (or (> ?childrens 2) (> ?stazh 5)))
=>
   (assert (premia ?name (* 0.20 ?oklad)))
)

(defrule all_gets
   (forall (sotrudink ?name ?stazh ?childrens ?oklad)
    (premia ?name))
=>
   (printout t "All gets premia" crlf)
)

(defrule get_veterans
   (sotrudink ?name ?stazh ?childrens ?oklad)
   (test (> ?stazh 20))
=>
   (printout t "Peoples has veterans" crlf)
)