(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x836 (int.to.str tmp_int1)))
 (let ((?x1157 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x448 (str.replace ?x816 ?x2321 ?x1157)))
 (= ?x448 ?x836)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = 4
;String tmp_str0 = \x00\x00\x00\x004\x00
