(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1_fresh String) (s2 String) (s3 String) (s1 String) (tmp_str4 String) (tmp_str6 String) )(let (($x1436 (=> (= (str.++ (str.++ s1_fresh s2) s3) s) (= (= s2 t) false))))
 (let (($x106 (=> (= (str.contains s1 tmp_str4) false) (= (str.replace s1 tmp_str4 tmp_str6) s1_fresh))))
 (=> (and $x106 (= (str.++ (str.++ s1_fresh s2) s3) s)) (= (= s2 t) false)))))
  :named a1))
(assert (! 
 (let (($x146 (str.contains s t)))
 (let (($x1678 (= $x146 false)))
 (not $x1678))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

