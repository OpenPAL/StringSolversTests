(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "-1" "") tmp_str3))
(check-sat)

(get-value (tmp_str0 tmp_str3 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str3 = 


;actual status: sat

;model:
;String tmp_str3 = aaaaB
;String tmp_str0 = aaaaB
