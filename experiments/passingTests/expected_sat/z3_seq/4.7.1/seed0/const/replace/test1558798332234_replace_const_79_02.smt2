(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x793 (str.replace tmp_str0 """a""" tmp_str2)))
 (= ?x793 "2")))
(check-sat)

(get-value (tmp_str0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str2 = 2


;actual status: sat

;model:
;String tmp_str2 = 2
;String tmp_str0 = ""a""
