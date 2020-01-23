(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.substr tmp_str0 tmp_int12 tmp_int12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int12 = -1
;actual status: unsat
;I0818 17:37:22.326900  3293 main.cpp:204] Done solving
;I0818 17:37:22.330310  3293 main.cpp:352] report is_sat: UNSAT time: 82.4387 ms
;I0818 17:37:22.330360  3293 main.cpp:353] report count: 0 time: 0
;I0818 17:37:22.330370  3293 main.cpp:356] done.
