(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1105 (str.replace tmp_str0 tmp_str24 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x97 (str.replace ?x2040 ?x2040 ?x118)))
 (= ?x97 ?x1105))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str24 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = 
;String tmp_str24 = 
