(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2561 (str.replace "\n" "a" "0")))
 (= ?x2561 "\n")))
(check-sat)

(get-info :reason-unknown)



