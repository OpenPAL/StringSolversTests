(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2127 (str.replace "-1" "\n" tmp_str2)))
 (= ?x2127 "-1")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = 


