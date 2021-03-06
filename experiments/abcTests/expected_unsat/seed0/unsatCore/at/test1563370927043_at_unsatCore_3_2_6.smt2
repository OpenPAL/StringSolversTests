(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result_fresh () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun result () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr result 0 (str.len result)) result_fresh))
(assert  
 (= (str.substr s offset 1) result_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;result_fresh = NO VALUE

;unsat core: a0 a1 a2 
