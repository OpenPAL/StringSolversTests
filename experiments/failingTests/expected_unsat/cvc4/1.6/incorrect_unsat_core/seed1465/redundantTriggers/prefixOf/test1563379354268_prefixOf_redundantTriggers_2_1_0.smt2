(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2_fresh () String)
(declare-fun s () String)
(declare-fun t2 () String)
(assert (! 
 (= (str.++ s t2_fresh) t) :named a1))
(assert (! 
 (and (= (str.at t2 0) t2_fresh) (= (str.len t2) 1)) :named a2))
(assert (! 
 (let (($x1301 (str.prefixof s t)))
 (let (($x1302 (= $x1301 true)))
 (not $x1302))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;(
;a1
;a0
;a2
;)
