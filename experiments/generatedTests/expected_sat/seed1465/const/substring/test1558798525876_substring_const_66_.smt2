(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x638 (str.substr "2" 0 (- 1))))
 (= ?x638 "")))
(check-sat)

(get-info :reason-unknown)



