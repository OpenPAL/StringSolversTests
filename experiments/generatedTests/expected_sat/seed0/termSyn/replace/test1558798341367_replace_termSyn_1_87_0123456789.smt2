(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2430 (int.to.str tmp_int1)))
 (let ((?x2482 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2649 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x1661 (str.replace ?x2321 ?x2649 ?x2482)))
 (= ?x1661 ?x2430)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


