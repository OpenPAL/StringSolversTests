(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let (($x725 (str.contains tmp_str0 tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let (($x490 (str.contains ?x2052 ?x2052)))
 (= $x490 $x725)))))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = a


