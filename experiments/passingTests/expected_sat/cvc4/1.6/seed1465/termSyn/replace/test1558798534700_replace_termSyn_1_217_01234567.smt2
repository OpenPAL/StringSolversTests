(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1731 (str.replace tmp_str4 tmp_str4 tmp_str4)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x411 (str.replace ?x1186 ?x1186 ?x1731)))
 (= ?x411 (str.++ tmp_str4 tmp_str18))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 tmp_str18 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str18 = 
;String tmp_str4 = 
