(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2306 (str.replace "\x07" "-1" "-1")))
 (= ?x2306 "\x07")))
(check-sat)

(get-info :reason-unknown)



