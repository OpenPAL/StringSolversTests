(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2416 (str.replace "2" """a""" "2")))
 (= ?x2416 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
