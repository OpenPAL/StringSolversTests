(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2431 (str.indexof "\n" "" 0)))
 (= ?x2431 0)))
(check-sat)

(get-info :reason-unknown)



