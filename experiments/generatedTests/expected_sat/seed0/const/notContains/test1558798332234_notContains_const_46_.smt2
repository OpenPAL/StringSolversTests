(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x218 (str.contains "2" "-1")))
 (= $x218 false)))
(check-sat)

(get-info :reason-unknown)



