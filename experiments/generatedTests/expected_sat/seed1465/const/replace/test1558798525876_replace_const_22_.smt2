(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x905 (str.replace "" "a" "0")))
 (= ?x905 "")))
(check-sat)

(get-info :reason-unknown)



