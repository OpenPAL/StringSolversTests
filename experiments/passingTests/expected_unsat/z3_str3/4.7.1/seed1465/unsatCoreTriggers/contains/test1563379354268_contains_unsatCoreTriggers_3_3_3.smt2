(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert (! 
 (= (str.replace s s s) s_fresh) :named a1))
(assert (! 
 (let ((?x329 (str.++ s1 t)))
 (let ((?x1348 (str.++ ?x329 s3)))
 (= ?x1348 s_fresh))) :named a2))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x327 (= $x326 true)))
 (not $x327))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
