(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x119 (str.at "\n" tmp_int1)))
 (= ?x119 "\n")))
(check-sat)

(get-value (tmp_int1 ))
(get-info :reason-unknown)

;tmp_int1 = 0


