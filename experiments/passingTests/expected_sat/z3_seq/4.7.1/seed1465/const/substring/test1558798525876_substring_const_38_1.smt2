(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x546 (str.substr "\n" tmp_int1 2)))
 (= ?x546 "")))
(check-sat)

(get-value (tmp_int1 ))
(get-info :reason-unknown)

;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = -1
