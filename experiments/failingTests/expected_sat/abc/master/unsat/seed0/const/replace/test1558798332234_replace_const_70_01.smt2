(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "0") "0\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = 
;actual status: unsat
;I0818 17:36:14.090737  2594 main.cpp:352] report is_sat: UNSAT time: 2.07787 ms
;I0818 17:36:14.090772  2594 main.cpp:353] report count: 0 time: 0
;I0818 17:36:14.090781  2594 main.cpp:356] done.
