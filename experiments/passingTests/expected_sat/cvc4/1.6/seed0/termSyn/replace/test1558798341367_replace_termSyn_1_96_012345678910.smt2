(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2482 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x1412 (str.replace ?x2321 ?x2482 ?x118)))
 (= ?x1412 (str.replace tmp_str0 tmp_str22 tmp_str0)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = 
;String tmp_str22 = 
