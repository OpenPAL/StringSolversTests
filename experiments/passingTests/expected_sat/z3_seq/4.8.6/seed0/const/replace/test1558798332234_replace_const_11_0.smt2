(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x821 (str.replace tmp_str0 """a""" "\x07")))
 (= ?x821 "")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 


;actual status: sat
;((tmp_str0 ""))

;model:
;String tmp_str0 = 
