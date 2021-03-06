(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (= (str.substr t 0 (str.len t)) t_fresh) :named a1))
(assert (! 
 (forall ((s1 String) (s2 String) (s3 String) )(=> (= (str.++ (str.++ s1 s2) s3) s) (= (= s2 t_fresh) false)))
  :named a2))
(assert (! 
 (let (($x146 (str.contains s t)))
 (let (($x1678 (= $x146 false)))
 (not $x1678))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
