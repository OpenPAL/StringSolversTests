(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x89 (str.at "a" (- 1))))
 (= ?x89 "")))
(check-sat)

(get-info :reason-unknown)



