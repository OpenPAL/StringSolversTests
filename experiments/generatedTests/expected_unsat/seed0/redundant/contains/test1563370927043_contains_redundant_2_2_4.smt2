(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3_fresh () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun tmp_str2 () String)
(declare-fun s3 () String)
(declare-fun tmp_str3 () String)
(assert (! 
 (let ((?x325 (str.++ s1 t)))
 (let ((?x2488 (str.++ ?x325 s3_fresh)))
 (= ?x2488 s))) :named a1))
(assert (! 
 (and (= (str.replace s3 tmp_str2 tmp_str3) s3_fresh) (= (str.contains s3 tmp_str2) false)) :named a2))
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
;s3_fresh = NO VALUE
;s3 = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 

