(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1542 (str.++ tmp_str2 tmp_str2)))
 (= (str.replace (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0) ?x1542) ?x1542)))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: timeout
