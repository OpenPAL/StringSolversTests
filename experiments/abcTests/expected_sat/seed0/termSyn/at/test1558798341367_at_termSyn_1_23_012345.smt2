(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.at tmp_str0 tmp_int12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int12 = -1
