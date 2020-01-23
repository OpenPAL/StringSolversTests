(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int10 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int10)) (str.indexof tmp_str0 tmp_str0 tmp_int10)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1
