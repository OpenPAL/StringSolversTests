(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1253 (str.substr tmp_str0 tmp_int18 tmp_int18)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x167 (str.substr ?x130 ?x1081 ?x1081)))
 (= ?x167 ?x1253))))))
(check-sat)

(get-value (tmp_str0 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int18 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int18 = 0
