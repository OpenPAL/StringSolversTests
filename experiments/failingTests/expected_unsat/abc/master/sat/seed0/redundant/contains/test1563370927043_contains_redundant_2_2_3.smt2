(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s3_fresh () String)
(declare-fun s3 () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ (str.++ s1 t) s3_fresh) s))
(assert  
 (= (str.replace s3 s3 s3) s3_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s3 = NO VALUE
;s3_fresh = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a2 
;actual status: sat
;I0815 22:48:07.613265 10263 main.cpp:292] report is_sat: SAT time: 105.346 ms
;I0815 22:48:07.613306 10263 main.cpp:356] done.
