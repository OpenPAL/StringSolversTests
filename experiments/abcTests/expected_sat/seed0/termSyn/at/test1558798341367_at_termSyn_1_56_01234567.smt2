(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 
