(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1103 (str.replace "" "0" "\x07")))
 (= ?x1103 "")))
(check-sat)

(get-info :reason-unknown)



