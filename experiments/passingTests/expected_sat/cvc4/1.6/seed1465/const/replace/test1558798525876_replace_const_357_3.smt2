(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "-1" "\n" "-1") tmp_str3))
(check-sat)

(get-value (tmp_str3 ))
(get-info :reason-unknown)

;tmp_str3 = -1


;actual status: sat

;model:
;String tmp_str3 = -1
