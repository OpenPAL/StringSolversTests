(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x660 (str.replace tmp_str0 "" tmp_str2)))
 (= ?x660 "\x07-1")))
(check-sat)

(get-value (tmp_str0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = 


;actual status: sat

;model:
;String tmp_str2 = \x07-
;String tmp_str0 = 1
