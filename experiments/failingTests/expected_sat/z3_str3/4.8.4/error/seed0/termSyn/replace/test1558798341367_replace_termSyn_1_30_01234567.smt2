(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (= (str.replace ?x2321 (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int1)) ?x2321)))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: not_implemented
