(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x16 (= tmp_str0 tmp_str0)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2149 (str.at tmp_str0 tmp_int1)))
 (let (($x2241 (str.prefixof ?x2149 ?x1783)))
 (= $x2241 $x16))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = \x00\x00\x00
