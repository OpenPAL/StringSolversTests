(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int7 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1348 (str.substr tmp_str0 tmp_int7 tmp_int7)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2188 (str.replace ?x118 ?x118 ?x1348)))
 (= ?x2188 (str.++ tmp_str20 tmp_str20))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;String tmp_str0 = \x00\x00
;Int tmp_int7 = -1
