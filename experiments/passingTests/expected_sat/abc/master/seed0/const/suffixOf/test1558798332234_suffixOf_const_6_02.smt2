(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (str.suffixof tmp_str0 "0") tmp_bool2))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_bool2 = true
;actual status: sat
