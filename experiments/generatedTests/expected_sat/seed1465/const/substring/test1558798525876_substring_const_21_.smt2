(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1904 (str.substr "a" 0 (- 1))))
 (= ?x1904 "")))
(check-sat)

(get-info :reason-unknown)



