(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1937 (str.at tmp_str2 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (= (str.replace ?x229 ?x1071 ?x229) ?x1937)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
