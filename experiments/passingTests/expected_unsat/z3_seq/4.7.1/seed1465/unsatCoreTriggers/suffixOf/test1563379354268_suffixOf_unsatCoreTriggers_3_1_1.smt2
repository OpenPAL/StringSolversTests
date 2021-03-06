(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s_fresh () String)
(declare-fun t1 () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1325 (str.++ t1 s_fresh)))
 (= ?x1325 t)) :named a1))
(assert (! 
 (let ((?x207 (str.++ s "")))
 (= ?x207 s_fresh)) :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x465 (= $x464 true)))
 (not $x465))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
