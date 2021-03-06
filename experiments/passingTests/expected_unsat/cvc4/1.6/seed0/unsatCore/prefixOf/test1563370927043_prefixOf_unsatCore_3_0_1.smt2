(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun t2 () String)
(assert (! 
 (let ((?x908 (str.++ s "")))
 (= ?x908 s_fresh)) :named a1))
(assert (! 
 (let ((?x1346 (str.++ s_fresh t2)))
 (= ?x1346 t)) :named a2))
(assert (! 
 (let (($x991 (str.prefixof s t)))
 (let (($x992 (= $x991 true)))
 (not $x992))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
