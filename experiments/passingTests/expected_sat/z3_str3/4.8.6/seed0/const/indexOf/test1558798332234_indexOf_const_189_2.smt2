(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x2327 (str.indexof "2" "2" tmp_int2)))
 (= ?x2327 (- 1))))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = -1


;actual status: sat
;((tmp_int2 (- 1)))

;model:
;Int tmp_int2 = -1
