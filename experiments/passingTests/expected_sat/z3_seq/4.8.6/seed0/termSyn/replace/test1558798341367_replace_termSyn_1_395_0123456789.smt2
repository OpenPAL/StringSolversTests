(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2480 (str.++ tmp_str0 tmp_str22)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x129 (int.to.str tmp_int1)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1130 (str.replace ?x2040 ?x129 ?x130)))
 (= ?x1130 ?x2480)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int1 (- 2))
; (tmp_str22 ""))

;model:
;Int tmp_int1 = -2
;String tmp_str0 = \x00
;String tmp_str22 = 
