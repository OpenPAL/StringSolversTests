(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x40 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x145 (str.indexof ?x816 ?x816 ?x40)))
 (= ?x145 ?x1907))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = -618
;String tmp_str0 = \x00
