(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2776 (str.replace tmp_str0 tmp_str0 tmp_str18)))
 (let ((?x836 (int.to.str tmp_int1)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x2764 (str.replace ?x816 ?x1363 ?x836)))
 (= ?x2764 ?x2776)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


