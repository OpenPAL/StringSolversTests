(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2461 (str.to.int tmp_str2)))
 (let ((?x1937 (str.at tmp_str2 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2557 (str.indexof ?x229 ?x1937 ?x2461)))
 (= ?x2557 ?x2461))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat
;((tmp_int0 (- 1))
; (tmp_str2 "0"))

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 0
