(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr tmp_str0 tmp_int1 0) tmp_str3))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str3 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int1 = -1
;tmp_str3 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str3 = 
;String tmp_str0 = 
