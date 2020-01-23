(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(assert
 (let (($x1015 (= tmp_str0 tmp_str16)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let (($x939 (str.suffixof ?x1634 ?x2052)))
 (= $x939 $x1015))))))
(check-sat)

(get-value (tmp_str0 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 


