(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun tmp_bool1_fresh () Bool)
(assert (! 
 (let (($x1730 (str.contains tmp_str3 tmp_str1)))
 (let (($x1731 (= $x1730 false)))
 (and (= (str.suffixof tmp_str1 tmp_str3) tmp_bool1_fresh) $x1731))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x302 (= (str.++ t1 t2) t)))
 (=> $x302 (= (= t1 s) tmp_bool1_fresh))) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1144 (= $x1036 false)))
 (not $x1144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool1_fresh = false

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
