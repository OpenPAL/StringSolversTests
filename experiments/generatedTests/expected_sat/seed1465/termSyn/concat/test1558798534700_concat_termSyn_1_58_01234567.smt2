(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x803 (str.++ tmp_str14 tmp_str14)))
 (let ((?x1466 (str.at tmp_str0 tmp_int1)))
 (let ((?x2823 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2832 (str.++ ?x2823 ?x1466)))
 (= ?x2832 ?x803))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


