(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2546 (str.replace "\n" "a" "a")))
 (= ?x2546 "\n")))
(check-sat)

(get-info :reason-unknown)



