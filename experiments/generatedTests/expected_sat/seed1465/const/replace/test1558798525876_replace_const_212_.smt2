(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2172 (str.replace "\x07" "a" "\n")))
 (= ?x2172 "\x07")))
(check-sat)

(get-info :reason-unknown)



