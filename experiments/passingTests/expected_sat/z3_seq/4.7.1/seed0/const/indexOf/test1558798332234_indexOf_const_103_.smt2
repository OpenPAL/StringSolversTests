(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x439 (str.indexof "\n" "a" 0)))
 (= ?x439 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
