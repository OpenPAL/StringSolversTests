(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x246 (str.++ "" "2")))
 (= ?x246 "2")))
(check-sat)

(get-info :reason-unknown)



