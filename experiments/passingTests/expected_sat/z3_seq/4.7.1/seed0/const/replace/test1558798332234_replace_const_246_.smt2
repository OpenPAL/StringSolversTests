(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2346 (str.replace "\x07" "0" "0")))
 (= ?x2346 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
