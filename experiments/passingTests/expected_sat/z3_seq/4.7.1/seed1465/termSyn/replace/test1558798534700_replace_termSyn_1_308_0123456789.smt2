(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2607 (str.at tmp_str0 tmp_int9)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2521 (str.replace ?x2321 ?x2321 ?x2607)))
 (= ?x2521 (int.to.str tmp_int9))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1


;actual status: sat

;model:
;String tmp_str0 = \x00\x00\x00\x00\x00\x00\x007\x00
;Int tmp_int9 = 7
