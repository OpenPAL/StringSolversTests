(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x86 (str.replace "-1" "" "0")))
 (= ?x86 "0-1")))
(check-sat)

(get-info :reason-unknown)



