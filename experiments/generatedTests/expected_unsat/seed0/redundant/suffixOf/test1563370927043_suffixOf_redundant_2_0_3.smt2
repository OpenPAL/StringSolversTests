(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1_fresh () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1907 (str.++ t1_fresh s)))
 (= ?x1907 t)) :named a1))
(assert (! 
 (let ((?x247 (str.replace t1 t1 t1)))
 (= ?x247 t1_fresh)) :named a2))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1478 (= $x1473 true)))
 (not $x1478))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 

