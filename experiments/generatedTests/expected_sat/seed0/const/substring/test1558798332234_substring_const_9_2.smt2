(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x1379 (str.substr """a""" (- 1) tmp_int2)))
 (= ?x1379 "")))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = -1


