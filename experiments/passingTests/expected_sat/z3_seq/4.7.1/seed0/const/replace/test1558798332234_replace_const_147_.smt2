(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1791 (str.replace "a" "a" "\x07")))
 (= ?x1791 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
