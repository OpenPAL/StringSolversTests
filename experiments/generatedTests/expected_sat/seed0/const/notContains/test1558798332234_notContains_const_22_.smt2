(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2443 (str.contains "\x07" "0")))
 (= $x2443 false)))
(check-sat)

(get-info :reason-unknown)



