(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x875 (str.replace "" "a" """a""")))
 (= ?x875 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
