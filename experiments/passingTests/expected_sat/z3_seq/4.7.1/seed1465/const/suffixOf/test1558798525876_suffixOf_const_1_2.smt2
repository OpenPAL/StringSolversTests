(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (str.suffixof "" """a""") tmp_bool2))
(check-sat)

(get-value (tmp_bool2 ))
(get-info :reason-unknown)

;tmp_bool2 = true


;actual status: sat

;model:
;Bool tmp_bool2 = true
