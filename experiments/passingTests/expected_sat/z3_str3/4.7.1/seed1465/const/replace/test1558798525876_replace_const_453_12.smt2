(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x885 (str.replace "2" tmp_str1 tmp_str2)))
 (= ?x885 "-12")))
(check-sat)

(get-value (tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str2 = -1


;actual status: sat

;model:
;String tmp_str2 = -12
;String tmp_str1 = 2
