(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x158 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (= (str.len (str.substr tmp_str0 tmp_int1 tmp_int1)) ?x158)))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int8 = 0


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = \x00
;Int tmp_int8 = 0
