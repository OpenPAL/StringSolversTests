(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (int.to.str (str.to.int tmp_str0)) (str.at tmp_str0 tmp_int6)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
