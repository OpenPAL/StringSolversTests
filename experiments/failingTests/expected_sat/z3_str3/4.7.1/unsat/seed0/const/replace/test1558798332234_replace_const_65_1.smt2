(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x1200 (str.replace """a""" tmp_str1 """a""")))
 (= ?x1200 """a""""a""")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = 


;actual status: unsat
