(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x170 (str.at "2" (- 1))))
 (= ?x170 "")))
(check-sat)

(get-info :reason-unknown)



