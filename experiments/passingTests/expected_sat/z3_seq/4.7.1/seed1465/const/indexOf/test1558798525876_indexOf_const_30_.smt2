(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1379 (str.indexof """a""" "a" (- 1))))
 (= ?x1379 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
