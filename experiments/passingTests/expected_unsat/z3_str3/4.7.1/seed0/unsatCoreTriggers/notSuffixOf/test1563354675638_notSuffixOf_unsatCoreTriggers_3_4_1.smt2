(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun tmp_bool1_fresh () Bool)
(assert (! 
 (let ((?x1723 (str.len tmp_str3)))
 (let ((?x1722 (str.len tmp_str1)))
 (let (($x1724 (= ?x1722 ?x1723)))
 (let (($x1725 (= $x1724 false)))
 (let (($x2292 (= tmp_str1 tmp_str3)))
 (let (($x1721 (= $x2292 tmp_bool1_fresh)))
 (and $x1721 $x1725))))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x302 (= (str.++ t1 t2) t)))
 (=> $x302 (= (= t2 s) tmp_bool1_fresh))) :pattern ( (str.++ t1 t2) )))
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
;tmp_str1 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool1_fresh = false

;unsat core: a0 a1 a2 

;actual status: unsat
