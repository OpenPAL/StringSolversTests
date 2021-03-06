(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1_fresh String) (s2 String) (s3 String) (s1 String) (tmp_str4 String) (tmp_str7 String) )(! (let (($x23 (=> (= (str.++ (str.++ s1_fresh s2) s3) s) (= (= s2 t) false))))
 (let (($x42 (=> (= (str.indexof s1 tmp_str4 0) (- 1)) (= (str.replace s1 tmp_str4 tmp_str7) s1_fresh))))
 (=> (and $x42 (= (str.++ (str.++ s1_fresh s2) s3) s)) (= (= s2 t) false)))) :pattern ( (str.++ (str.++ s1_fresh s2) s3) (str.replace s1 tmp_str4 tmp_str7) )))
  :named a1))
(assert (! 
 (let (($x1097 (str.contains s t)))
 (let (($x190 (= $x1097 false)))
 (not $x190))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
