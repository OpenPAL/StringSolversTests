(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.len (int.to.str tmp_int0)) (str.to.int tmp_str5)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = 0
