(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 tmp_str2) tmp_str3))
(check-sat)

(get-value (tmp_str1 tmp_str2 tmp_str3 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str2 = 
;tmp_str3 = \n


;actual status: sat

;model:
;String tmp_str3 = \n
;String tmp_str2 = 
;String tmp_str1 = 
