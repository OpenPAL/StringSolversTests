(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x1760 (str.indexof "a" "\x07" tmp_int2)))
 (= ?x1760 (- 1))))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = -1


