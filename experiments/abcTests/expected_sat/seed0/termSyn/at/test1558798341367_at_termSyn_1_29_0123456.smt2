(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (str.++ tmp_str12 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 
