(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x2663 (= tmp_str9 tmp_str9)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x2812 (str.suffixof ?x1035 ?x1035)))
 (= $x2812 $x2663)))))
(check-sat)

(get-value (tmp_int0 tmp_str9 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a


