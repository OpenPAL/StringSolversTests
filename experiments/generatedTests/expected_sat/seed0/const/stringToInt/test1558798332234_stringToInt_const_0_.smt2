(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1159 (str.to.int "")))
 (= ?x1159 (- 1))))
(check-sat)

(get-info :reason-unknown)



