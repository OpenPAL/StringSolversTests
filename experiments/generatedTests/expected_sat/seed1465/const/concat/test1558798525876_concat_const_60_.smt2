(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x617 (str.++ "2" "\n")))
 (= ?x617 "2\n")))
(check-sat)

(get-info :reason-unknown)



