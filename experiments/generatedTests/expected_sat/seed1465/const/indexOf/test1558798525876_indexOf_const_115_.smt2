(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x958 (str.indexof "\n" "0" 0)))
 (= ?x958 (- 1))))
(check-sat)

(get-info :reason-unknown)



