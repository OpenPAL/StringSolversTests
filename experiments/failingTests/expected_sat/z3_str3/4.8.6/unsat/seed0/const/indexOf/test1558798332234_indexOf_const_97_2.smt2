(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x1092 (str.indexof "\n" "" tmp_int2)))
 (= ?x1092 0)))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = 0


;actual status: unsat
;(error "line 10 column 10: check annotation that says sat")
