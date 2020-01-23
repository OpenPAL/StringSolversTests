(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x33 (str.substr tmp_str0 tmp_int9 tmp_int9)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1225 (str.replace ?x130 ?x130 ?x33)))
 (= ?x1225 (str.++ tmp_str24 tmp_str24))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;tmp_str24 = 


