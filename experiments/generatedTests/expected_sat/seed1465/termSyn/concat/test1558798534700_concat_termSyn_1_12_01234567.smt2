(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1466 (str.at tmp_str0 tmp_int1)))
 (= (str.++ ?x1466 ?x302) (str.at tmp_str0 tmp_int16)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_int16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int16 = 0


