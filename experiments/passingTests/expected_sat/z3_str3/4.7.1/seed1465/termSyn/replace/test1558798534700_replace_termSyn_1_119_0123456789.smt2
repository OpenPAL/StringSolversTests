(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (let ((?x2776 (str.replace tmp_str0 tmp_str0 tmp_str18)))
 (let ((?x307 (str.at tmp_str0 tmp_int7)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1466 (str.replace ?x2008 ?x2008 ?x307)))
 (= ?x1466 ?x2776))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = 
;String tmp_str0 = Bfm
;Int tmp_int7 = 3
