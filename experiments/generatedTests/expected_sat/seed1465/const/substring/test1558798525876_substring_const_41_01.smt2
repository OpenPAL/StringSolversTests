(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1743 (str.substr tmp_str0 tmp_int1 2)))
 (= ?x1743 "\n")))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_int1 = 0


