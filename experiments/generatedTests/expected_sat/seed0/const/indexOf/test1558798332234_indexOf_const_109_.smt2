(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x588 (str.indexof "\n" "\n" 0)))
 (= ?x588 0)))
(check-sat)

(get-info :reason-unknown)



