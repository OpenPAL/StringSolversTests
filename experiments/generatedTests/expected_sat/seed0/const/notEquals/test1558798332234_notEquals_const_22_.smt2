(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1282 (= "\x07" """a""")))
 (= $x1282 false)))
(check-sat)

(get-info :reason-unknown)



