(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int7 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x307 (str.at tmp_str0 tmp_int7)))
 (let ((?x195 (str.substr tmp_str0 tmp_int7 tmp_int7)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.replace ?x2008 ?x2008 ?x195) ?x307)))))
(check-sat)

(get-value (tmp_str0 tmp_int7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1


