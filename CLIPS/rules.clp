(defmodule RULES (import DATA ?ALL) (export ?ALL))

; computes cost of hotel knowing his stars
(defrule RULES::cal_cost
  (hotel (name ?name)(stars ?x))
=>
  (assert (cost ?name (+ 50 (* (- ?x 1) 25))))
)

; computes distances between two locations
(defrule RULES::cal_distance
  (position (name ?name1)(latitude ?lat1)(longitude ?lon1))
  (position (name ?name2)(latitude ?lat2)(longitude ?lon2))
=>
  (bind ?earthRadius 6371)
  (bind ?dlat (- ?lat2 ?lat1))
  (bind ?dlon (- ?lon2 ?lon1))
  (bind ?rlat (/ (* ?dlat (pi)) 180))
  (bind ?rlon (/ (* ?dlon (pi)) 180))
  ;studio segno atan https://it.wikipedia.org/wiki/Arcotangente2
  (bind ?a (+ (** (sin (/ ?dlat 2)) 2) (* (* (** (sin (/ ?dlon 2)) 2) (cos ?lat1))(cos ?lat2))))
  (bind ?c (* (atan (/ ?a (- 1 ?a))) 2))
  (bind ?distance (* ?earthRadius ?c))
  (bind ?max-distance 100)
  (bind ?delta 20) ;approximation of 20 km
  (if (<= ?distance (+ ?max-distance ?delta)) then
  (assert (distance ?name1 ?name2 (* ?earthRadius ?c)))
  (assert (distance ?name2 ?name1 (* ?earthRadius ?c))))
)