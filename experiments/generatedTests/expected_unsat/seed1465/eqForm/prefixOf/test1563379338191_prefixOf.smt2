(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s () String)
(assert (! 
 (= (str.++ s t2) t) :named a1))
(assert (! 
 (not (= (str.prefixof s t) true)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 

