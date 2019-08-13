;;
;;Per comprendere il funzionamento si suggerisce di eseguire il programma nella seguente configurazione
;;
;;(watch rules)
;;(set-break CHECK::goal-not-yet)
;;(set-break DEL::done)
;;ad ogni interruzione dell'engine può essere utile vedere con (facts) come viene costruito il
;;ramo di ricerca

(defmodule RESEARCH (export ?ALL) (import TEMPLATES ?ALL))

(deftemplate RESEARCH::nightsPerHotel
  (slot nightNumber (type INTEGER))
  (slot hotel) ; CONTROLLARE CHE ACCETTI GLI HOTEL
)

; node structure in which is saved each answer
(deftemplate RESEARCH::node
  (multislot tourism (default nil))
  (multislot regionOk (default nil))
  (multislot regionNo (default nil))
  (multislot nightsPerHotel (default nil))
  (slot expectedCost (default nil))
  (slot minStar (default nil))
  (slot maxStar (default nil))
  (slot nights (default nil))
  (slot personNumber (default nil))
  (slot parentNode (default nil))
  (multislot childNode (default nil))
)

(deftemplate solution (slot value (default no))) 
(deftemplate maxdepth (slot max))
(deffacts param
       (solution (value no)) 
       (maxdepth (max 0))
)

; initial state: the tree coincides with the root
(deffacts RESEARCH::S0
  (node)
)

(deffacts final
  (node
    (not (eq tourism nil))
    (not (eq regionOk nil))
    (not (eq regionNo nil))
    (not (eq nightsPerHotel nil))
    (not (eq expectedCost nil))
    (not (eq minStar nil))
    (not (eq maxStar nil))
    (not (eq nights nil))
    (not (eq personNumber nil))
  )
)

;;(deffacts final
;;	(goal ontable a NA) )


(defrule got-solution (declare (salience 100))
   (solution (value yes)) 
   (maxdepth (max ?n))
=> 
   (assert (stampa ?n))
)



(defrule stampaSol (declare (salience 101))
   ?f<-(stampa ?n)
   (exec ?n ?k ?a ?b)
=> (printout t " PASSO: "?n " " ?k " " ?a " " ?b crlf)
   (assert (stampa (- ?n 1)))
   (retract ?f)
)

(defrule stampaSol0
(declare (salience 102))
?f <- (stampa -1)
=>
  (retract ?f) 
  (halt)
)

(defrule another-solution (declare (salience -10))
?f <- (again)
?c <- (current ?)
?s <- (solution (value yes))
=>
  (retract ?f ?c)
  (modify ?s (value no))
  (focus EXPAND)
)


(defrule no-solution (declare (salience -1))
  (solution (value no))
  (maxdepth (max ?d))
 => 
  (reset)
  (assert (resetted ?d))
)


(defrule resetted
?f <- (resetted ?d)
?m <- (maxdepth (max ?))
=>
    (modify ?m (max (+ ?d 1))) 
    (printout t " fail with Maxdepth:" ?d crlf)
    (focus EXPAND)
    (retract ?f)
)

(defmodule EXPAND (import RESEARCH ?ALL) (export ?ALL))

(defrule backtrack-0 (declare (salience 5))
	?f<- (apply ?s ? ? ?)
   	(maxdepth (max ?d))
   	(test (>= ?s ?d))
=> 
	(retract ?f)
)

(defrule backtrack-1 (declare (salience 10))
	(apply ?s ? ? ?)
	(not (current ?))
?f1 <-	(status ?t&:(> ?t ?s) ? ? ?)
=> 	(retract ?f1))

(defrule backtrack-2 (declare (salience 10))
	(apply ?s ? ? ?)
	(not (current ?))
?f2 <-	(exec ?t&:(>= ?t ?s) ? ? ?)
=> 	(retract ?f2))

(defrule pick (declare (salience 2))
   (status ?s on ?x ?y)
   (status ?s clear ?x ?)
   (status ?s handempty NA NA)
   => (assert (apply ?s pick ?x ?y)))

(defrule apply-pick3 (declare (salience 5))
?f <- (apply ?s pick ?x ?y)
 =>    (retract ?f)
      (assert (delete (+ ?s 1) on ?x ?y))
      (assert (delete (+ ?s 1) clear ?x NA))
      (assert (delete (+ ?s 1) handempty NA NA))
      (assert (status (+ ?s 1) clear ?y NA))
      (assert (status (+ ?s 1) holding ?x NA))
      (assert (current ?s))
      (assert (news (+ ?s 1)))
      (assert (exec ?s pick ?x ?y )))

(defrule picktable (declare (salience 2))
   (status ?s ontable ?x ?)
   (status ?s clear ?x ?)
   (status ?s handempty NA NA)
   => (assert (apply ?s picktable ?x NA)))


(defrule apply-picktable3 (declare (salience 2))
?f <- (apply ?s picktable ?x ?y)
 =>   (retract ?f)
      (assert (delete (+ ?s 1) ontable ?x NA))
      (assert (delete (+ ?s 1) clear ?x NA))
      (assert (delete (+ ?s 1) handempty NA NA))
      (assert (status (+ ?s 1) holding ?x NA))
      (assert (current ?s))
      (assert (news (+ ?s 1)))
      (assert (exec ?s picktable ?x NA)))



(defrule put (declare (salience 2))
   (status ?s holding ?x ?)
   (status ?s clear ?y ?)
   => (assert (apply ?s put ?x ?y)))

(defrule apply-put3 (declare (salience 5))
?f <- (apply ?s put ?x ?y)
 =>   (retract ?f)
      (assert (delete  (+ ?s 1) holding ?x NA))
      (assert (delete  (+ ?s 1) clear ?y NA))
      (assert (status (+ ?s 1) on ?x ?y))
      (assert (status (+ ?s 1) clear ?x NA))
      (assert (status (+ ?s 1) handempty NA NA))
      (assert (current ?s))
      (assert (news (+ ?s 1)))
      (assert (exec ?s put ?x ?y)))

(defrule puttable (declare (salience 2))
   (status ?s holding ?x ?)
   => (assert (apply ?s puttable ?x NA)))

(defrule apply-puttable3 (declare (salience 5))
?f <- (apply ?s puttable ?x ?y)
 =>   (retract ?f)
      (assert (delete (+ ?s 1) holding ?x NA))
      (assert (status (+ ?s 1) ontable ?x NA))
      (assert (status (+ ?s 1) clear ?x NA))
      (assert (status (+ ?s 1) handempty NA NA))
      (assert (current ?s))
      (assert (news (+ ?s 1)))
      (assert (exec ?s puttable ?x NA)))

(defrule pass-to-check (declare (salience 25))
	(current ?s)
=>
	(focus CHECK)
)

(defmodule CHECK (import EXPAND ?ALL) (export ?ALL))

(defrule persistency
    (declare (salience 100))
    (current ?s)
    (status ?s ?op ?x ?y)
    (not (delete ?t&:(eq ?t (+ ?s 1)) ?op ?x ?y))
 => (assert (status (+ ?s 1) ?op ?x ?y)))

(defrule goal-not-yet
      (declare (salience 50))
      (news ?s)
      (goal ?op ?x ?y)
      (not (status ?s ?op ?x ?y))
      => (assert (task go-on)) 
         (assert (ancestor (- ?s 1)))
         (focus NEW))

(defrule solution-exist
 ?f <-  (solution (value no))
         => 
        (modify ?f (value yes))
        (pop-focus)
        (pop-focus)
)

(defmodule NEW (import CHECK ?ALL) (export ?ALL))

(defrule check-ancestor
    (declare (salience 50))
?f1 <- (ancestor ?a) 
    (or (test (> ?a 0)) (test (= ?a 0)))
    (news ?s)
    (status ?s ?op ?x ?y)
    (not (status ?a ?op ?x ?y)) 
    =>
    (assert (ancestor (- ?a 1)))
    (retract ?f1)
    (assert (diff ?a)))

(defrule all-checked
       (declare (salience 25))
       (diff 0) 
?f2 <- (news ?n)
?f3 <- (task go-on) 
=>
       (retract ?f2)
       (retract ?f3)
       (focus DEL))

(defrule already-exist
?f <- (task go-on)
      => 
	(retract ?f)
        (assert (remove newstate))
        (focus DEL))

(defmodule DEL (import NEW ?ALL))          
       
(defrule del1
(declare (salience 50))
?f <- (delete $?)
=> (retract ?f))

(defrule del2
(declare (salience 100))
?f <- (diff ?)
=> (retract ?f))

(defrule del3
(declare (salience 25))
       (remove newstate)
       (news ?n)
 ?f <- (status ?n ?  ? ?)
=> (retract ?f))

(defrule del4
(declare (salience 10))
?f1 <- (remove newstate)
?f2 <- (news ?n)
=> (retract ?f1)
   (retract ?f2))

(defrule done
 ?f <- (current ?x) => 
(retract ?f)
(pop-focus)
(pop-focus)
(pop-focus)
)

