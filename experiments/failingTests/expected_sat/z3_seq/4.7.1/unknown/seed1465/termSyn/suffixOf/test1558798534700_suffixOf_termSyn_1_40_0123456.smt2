(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x2255 (str.contains tmp_str2 tmp_str2)))
 (let ((?x2809 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x348 (int.to.str tmp_int0)))
 (= (str.suffixof ?x348 ?x2809) $x2255)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: unknown
