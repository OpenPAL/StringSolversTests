(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x761 (str.contains """a""" "0")))
 (= $x761 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
