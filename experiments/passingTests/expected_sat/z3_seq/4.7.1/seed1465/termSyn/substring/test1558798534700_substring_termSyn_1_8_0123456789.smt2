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
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x40 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x412 (str.substr ?x816 ?x40 ?x545)))
 (= ?x412 ?x2776)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str18 = \x00
;String tmp_str0 = \x00\x00\x00
