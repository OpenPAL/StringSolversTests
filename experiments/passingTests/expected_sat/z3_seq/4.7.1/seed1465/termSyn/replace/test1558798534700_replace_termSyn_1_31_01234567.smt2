(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2643 (str.++ tmp_str16 tmp_str16)))
 (let ((?x836 (int.to.str tmp_int1)))
 (let ((?x1157 (str.++ tmp_str0 tmp_str0)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x2163 (str.replace ?x816 ?x1157 ?x836)))
 (= ?x2163 ?x2643)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = \x00\x00
;String tmp_str16 = 
