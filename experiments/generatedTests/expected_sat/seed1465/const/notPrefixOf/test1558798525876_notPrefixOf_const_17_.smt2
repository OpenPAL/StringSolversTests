(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x226 (str.prefixof "\x07" "\n")))
 (= $x226 false)))
(check-sat)

(get-info :reason-unknown)



