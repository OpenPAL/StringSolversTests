(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2468 (str.contains "0" "\x07")))
 (= $x2468 false)))
(check-sat)

(get-info :reason-unknown)



