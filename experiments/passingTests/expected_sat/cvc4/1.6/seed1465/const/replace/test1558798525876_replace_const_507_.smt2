(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1849 (str.replace "2" "2" "\x07")))
 (= ?x1849 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
