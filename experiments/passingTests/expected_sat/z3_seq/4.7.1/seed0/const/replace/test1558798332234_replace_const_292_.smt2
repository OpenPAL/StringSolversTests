(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2630 (str.replace "\n" "\n" "\n")))
 (= ?x2630 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
