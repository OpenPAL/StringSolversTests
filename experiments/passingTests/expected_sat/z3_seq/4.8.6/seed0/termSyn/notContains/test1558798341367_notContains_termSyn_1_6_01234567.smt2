(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2680 (str.at tmp_str0 tmp_int1)))
 (let (($x1325 (str.contains ?x2680 ?x2052)))
 (= $x1325 (str.contains tmp_str16 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int1 (- 1))
; (tmp_str16 ""))

;model:
;Int tmp_int1 = -1
;String tmp_str0 = \x00
;String tmp_str16 = 
