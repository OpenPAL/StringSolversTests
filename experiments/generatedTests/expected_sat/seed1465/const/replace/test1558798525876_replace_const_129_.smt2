(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1643 (str.replace "a" "" """a""")))
 (= ?x1643 """a""a")))
(check-sat)

(get-info :reason-unknown)



