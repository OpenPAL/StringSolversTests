(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "\x07") tmp_str3))
(check-sat)

(get-value (tmp_str1 tmp_str3 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str3 = 0


;actual status: unknown
