(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2005 (str.indexof "\x07" """a""" 0)))
 (= ?x2005 (- 1))))
(check-sat)

(get-info :reason-unknown)



