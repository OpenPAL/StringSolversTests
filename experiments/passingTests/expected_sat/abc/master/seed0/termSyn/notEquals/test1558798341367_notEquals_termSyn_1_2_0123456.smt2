(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str14 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 
;actual status: sat
