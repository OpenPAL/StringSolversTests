(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x2184 (str.substr """a""" 0 tmp_int2)))
 (= ?x2184 """a")))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = 2


;actual status: sat

;model:
;Int tmp_int2 = 2
