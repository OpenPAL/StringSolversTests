(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x901 (str.indexof "a" "2" 0)))
 (= ?x901 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
