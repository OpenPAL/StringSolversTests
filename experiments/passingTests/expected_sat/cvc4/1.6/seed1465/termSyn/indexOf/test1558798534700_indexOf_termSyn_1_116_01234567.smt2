(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2085 (str.len tmp_str0)))
 (let ((?x2149 (str.at tmp_str0 tmp_int1)))
 (let ((?x2480 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1280 (str.indexof ?x2480 ?x2149 ?x2085)))
 (= ?x1280 ?x1907)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = A
