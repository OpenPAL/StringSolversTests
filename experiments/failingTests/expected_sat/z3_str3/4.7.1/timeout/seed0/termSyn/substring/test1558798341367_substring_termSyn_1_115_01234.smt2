(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2461 (str.to.int tmp_str2)))
 (let ((?x2299 (str.len tmp_str2)))
 (let ((?x1407 (str.substr ?x229 ?x2299 ?x2461)))
 (= ?x1407 ?x229))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: timeout
