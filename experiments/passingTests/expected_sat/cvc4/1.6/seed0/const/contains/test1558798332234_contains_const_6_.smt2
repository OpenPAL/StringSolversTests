(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1639 (str.contains "\x07" "")))
 (= $x1639 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
