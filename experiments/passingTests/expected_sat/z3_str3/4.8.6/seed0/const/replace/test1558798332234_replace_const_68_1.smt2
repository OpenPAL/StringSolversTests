(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x1236 (str.replace """a""" tmp_str1 "\n")))
 (= ?x1236 "\n""a""")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = 


;actual status: sat
;((tmp_str1 ""))

;model:
;String tmp_str1 = 
