(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\x07" "\x07" tmp_str2) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: sat
