(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1693 (str.indexof s tmp_str1 0)))
 (let (($x1694 (= ?x1693 (- 1))))
 (let ((?x1685 (str.replace s tmp_str1 tmp_str2)))
 (let (($x1686 (= ?x1685 s_fresh)))
 (and $x1686 $x1694))))) :named a1))
(assert (! 
 (let ((?x1161 (str.++ t1 s_fresh)))
 (= ?x1161 t)) :named a2))
(assert (! 
 (let (($x1736 (str.suffixof s t)))
 (let (($x1737 (= $x1736 true)))
 (not $x1737))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

