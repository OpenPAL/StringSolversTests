(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1537 (str.substr "0" 0 0)))
 (= ?x1537 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
