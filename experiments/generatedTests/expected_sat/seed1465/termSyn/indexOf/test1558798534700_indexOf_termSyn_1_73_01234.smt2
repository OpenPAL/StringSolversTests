(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1146 (str.to.int tmp_str4)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let ((?x151 (str.indexof ?x348 ?x348 ?x1146)))
 (= ?x151 ?x1146)))))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


