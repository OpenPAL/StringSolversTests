(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x71 (str.++ tmp_str18 tmp_str18)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x129 (int.to.str tmp_int1)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x292 (str.replace ?x2040 ?x129 ?x972)))
 (= ?x292 ?x71)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


;actual status: not_implemented
