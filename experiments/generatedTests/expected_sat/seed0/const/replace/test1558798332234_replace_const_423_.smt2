(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x357 (str.replace "0" "\n" "2")))
 (= ?x357 "0")))
(check-sat)

(get-info :reason-unknown)



