(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s1 () String)
(assert (! 
 (let ((?x997 (str.++ "" t)))
 (= ?x997 t_fresh)) :named a1))
(assert (! 
 (let ((?x2482 (str.++ s1 t_fresh)))
 (let ((?x2483 (str.++ ?x2482 s3)))
 (= ?x2483 s))) :named a2))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x327 (= $x326 true)))
 (not $x327))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

