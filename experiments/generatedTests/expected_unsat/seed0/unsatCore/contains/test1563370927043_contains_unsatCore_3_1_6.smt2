(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t_fresh () String)
(declare-fun s1 () String)
(declare-fun t () String)
(assert (! 
 (let ((?x2477 (str.++ s1 t_fresh)))
 (let ((?x2478 (str.++ ?x2477 s3)))
 (= ?x2478 s))) :named a1))
(assert (! 
 (let ((?x181 (str.len t)))
 (let ((?x1007 (str.substr t 0 ?x181)))
 (= ?x1007 t_fresh))) :named a2))
(assert (! 
 (let (($x322 (str.contains s t)))
 (let (($x323 (= $x322 true)))
 (not $x323))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;t_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

