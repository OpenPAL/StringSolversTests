(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.indexof "\"a\"" "" 2) 2))
(check-sat)

(get-info :reason-unknown)
