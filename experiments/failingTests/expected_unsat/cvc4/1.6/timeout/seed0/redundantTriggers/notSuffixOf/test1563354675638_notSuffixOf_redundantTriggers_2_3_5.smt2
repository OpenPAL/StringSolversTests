(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun t2 () String)
(declare-fun t1 () String)
(declare-fun tmp_str4 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x357 (str.++ t1 t2)))
 (let ((?x730 (str.indexof ?x357 tmp_str3 0)))
 (let (($x731 (= ?x730 (- 1))))
 (let ((?x725 (str.replace ?x357 tmp_str3 tmp_str4)))
 (let (($x726 (= ?x725 ?x357)))
 (and $x726 $x731)))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x302 (= (str.++ t1 t2) t)))
 (=> $x302 (= (= t2 s) false))) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x1736 (str.suffixof s t)))
 (let (($x1784 (= $x1736 false)))
 (not $x1784))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t2 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
