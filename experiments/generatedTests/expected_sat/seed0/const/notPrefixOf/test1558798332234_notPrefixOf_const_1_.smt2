(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2186 (str.prefixof """a""" "a")))
 (= $x2186 false)))
(check-sat)

(get-info :reason-unknown)



