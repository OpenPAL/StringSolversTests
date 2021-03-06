(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s_fresh () String)
(declare-fun s () String)
(assert (! 
 (= (str.++ s_fresh t2) t) :named a1))
(assert (! 
 (let ((?x2295 (str.len s)))
 (let (($x2296 (= ?x2295 1)))
 (let ((?x2293 (str.at s 0)))
 (let (($x2294 (= ?x2293 s_fresh)))
 (and $x2294 $x2296))))) :named a2))
(assert (! 
 (not (= (str.prefixof s t) true)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
