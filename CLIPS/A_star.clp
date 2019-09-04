(defmodule SEARCH (import HOTEL_CF ?ALL) (export ?ALL))

(defrule SEARCH::init_structure
    (declare (salience 1000))
=>
    (bind ?id (gensym*))
    (assert (node (hotel "root")(location "")(CF -9999.0)(distance 0.0)(level 0)(children (create$))))
    (assert (best_node(id ?id)))
    (assert (cfs_list(cf(create$)))) ; LISTA VUOTA
)

(defrule SEARCH::extract_max
    (hotel_cf (name ?hotel) (CF ?CF))
    (cf_list (cf $?cf_value))
=>
    (insert$ $?cf_value (hotel_cf (name ?hotel) (CF ?CF)))
    (facts)
)

; inserisce i 40 hotel nell'albero e prende il cf migliore (modificare: deve prendere i primi 5 migliori)
; di questi 5 sottoalberi fai un cammino

(defrule SEARCH::first_layer
    (declare (salience 100))
    (hotel_cf (name ?hotel) (CF ?CF))
    ?f <- (node (hotel "root")(id ?idr)(children $?children&:(not (member$ ?id $?children))))
    (hotel (name ?hotel)(location ?loc))
=>
    (bind ?id (gensym*))
    (assert(node (parent ?idr)(id ?id)(hotel ?hotel)(location ?loc)(CF ?CF)(open 1)(level 1)(distance 0.0)(children (create$))))
    (modify ?f (children (insert$ ?children 1 ?id)))
    (printout t ?CF)
    (printout t crlf)
)

(defrule SEARCH::best_CF
    (declare (salience 10))
    ?f <- (node (id ?id)(hotel ?hotel) (CF ?CF) (open 1))
    ?g <- (best_node(id ?id))
    (node (id ?id2) (CF ?CF2&:(> ?CF ?CF2)))
=>
    (modify ?g (id ?id))
)

(defrule SEARCH::expand
    (declare (salience -1))
    (preference (name night) (value ?night))
    (best_node (id ?id))
    ?f <- (node(id ?id)(hotel ?hotel)(CF ?CF)(level ?lev&:(< ?lev ?night))) ; NON NIGHT, MA HOTEL (LOCALITà)
    (hotel (name ?hotel)(location ?loc))
    (distance (name1 ?loc)(name2 ?loc2)(dist ?d))
    (hotel (name ?hotel2) (location ?loc2))
    (hotel_cf (name ?hotel2)(CF ?CF2))
=>  
    (assert(node (parent ?id)(id (gensym*))(hotel ?hotel)(location ?loc)(CF ?CF)(open 1)(level ?lev)(distance ?d)(children (create$)))))
    (modify ?f (open 0))
)