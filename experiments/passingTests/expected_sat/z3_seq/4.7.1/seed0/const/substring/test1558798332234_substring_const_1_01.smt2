(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1983 (str.substr tmp_str0 tmp_int1 0)))
 (= ?x1983 "")))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = 
