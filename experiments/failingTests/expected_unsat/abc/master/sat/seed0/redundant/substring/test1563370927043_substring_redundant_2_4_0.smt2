(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2_fresh () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s2 () String)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1 s2_fresh) s3) s) (and (and (= (str.len s1) offset) (= (str.len s2_fresh) length)) (= (= s2_fresh result) true))) (= (= result "") true)))
(assert  
 (and (= (str.at s2 0) s2_fresh) (= (str.len s2) 1)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE
;s2 = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:04.607262 10240 main.cpp:292] report is_sat: SAT time: 131.253 ms
;I0815 22:48:04.607290 10240 main.cpp:356] done.
