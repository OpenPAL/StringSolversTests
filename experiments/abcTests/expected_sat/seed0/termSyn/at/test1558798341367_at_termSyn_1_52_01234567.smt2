(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.len tmp_str0)) (str.substr tmp_str0 tmp_int14 tmp_int14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int14 = -1
