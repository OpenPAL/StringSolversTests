(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2633 (str.indexof "\x07" "0" (- 1))))
 (= ?x2633 (- 1))))
(check-sat)

(get-info :reason-unknown)



