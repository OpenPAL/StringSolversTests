(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "a") "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:11.842947  2558 main.cpp:352] report is_sat: UNSAT time: 2.18815 ms
;I0818 17:36:11.842973  2558 main.cpp:353] report count: 0 time: 0
;I0818 17:36:11.842981  2558 main.cpp:356] done.
