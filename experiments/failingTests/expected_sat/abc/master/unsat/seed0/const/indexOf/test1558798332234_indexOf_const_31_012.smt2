(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 tmp_str1 tmp_int2) 1))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = a
;tmp_int2 = 0
;actual status: unsat
;I0818 17:35:49.379757  2186 main.cpp:204] Done solving
;I0818 17:35:49.379842  2186 main.cpp:352] report is_sat: UNSAT time: 114.962 ms
;I0818 17:35:49.379909  2186 main.cpp:353] report count: 0 time: 0
;I0818 17:35:49.379920  2186 main.cpp:356] done.
