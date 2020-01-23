(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str26 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1101 (str.++ tmp_str0 tmp_str26)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2563 (str.replace ?x2040 ?x2040 ?x130)))
 (= ?x2563 ?x1101))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str26 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str26 = 


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = alzB
;String tmp_str26 = 
