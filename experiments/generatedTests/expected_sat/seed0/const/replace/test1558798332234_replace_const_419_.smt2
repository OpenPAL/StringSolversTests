(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2353 (str.replace "0" "\n" "\x07")))
 (= ?x2353 "0")))
(check-sat)

(get-info :reason-unknown)



