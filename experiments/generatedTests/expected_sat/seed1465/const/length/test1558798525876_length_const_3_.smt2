(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2133 (str.len "\x07")))
 (= ?x2133 1)))
(check-sat)

(get-info :reason-unknown)



