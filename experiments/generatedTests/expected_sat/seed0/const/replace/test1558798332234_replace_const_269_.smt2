(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2518 (str.replace "\n" """a""" "-1")))
 (= ?x2518 "\n")))
(check-sat)

(get-info :reason-unknown)



