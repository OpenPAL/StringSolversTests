(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x237 (str.substr tmp_str0 2 tmp_int2)))
 (= ?x237 """")))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_int2 = 2


