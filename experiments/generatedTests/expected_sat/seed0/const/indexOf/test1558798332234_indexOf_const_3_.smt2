(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2113 (str.indexof "" """a""" (- 1))))
 (= ?x2113 (- 1))))
(check-sat)

(get-info :reason-unknown)



