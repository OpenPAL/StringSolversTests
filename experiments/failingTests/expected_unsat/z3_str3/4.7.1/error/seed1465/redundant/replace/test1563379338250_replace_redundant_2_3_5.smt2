(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1_fresh () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun tmp_str5 () String)
(declare-fun s1 () String)
(declare-fun tmp_str6 () String)
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x1032 (str.++ s1_fresh u)))
 (let ((?x1033 (str.++ ?x1032 s3)))
 (let (($x1034 (= ?x1033 result)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x1028 (str.len s1_fresh)))
 (let (($x1029 (= ?x1028 index)))
 (let (($x1030 (and $x1029 $x131)))
 (let ((?x1025 (str.++ s1_fresh s2)))
 (let ((?x1026 (str.++ ?x1025 s3)))
 (let (($x1027 (= ?x1026 s)))
 (let (($x1031 (and $x1027 $x1030)))
 (let (($x1035 (and $x1031 $x1034)))
 (let (($x121 (>= index 0)))
 (let (($x1036 (ite $x121 $x1035 $x139)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1036)))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1048 (str.replace s1 tmp_str5 tmp_str6)))
 (let (($x1049 (= ?x1048 s1_fresh)))
 (and $x1049 (= (str.indexof s1 tmp_str5 0) (- 1))))) :named a2))
(assert (! 
 (let ((?x115 (str.replace s t u)))
 (let (($x116 (= ?x115 result)))
 (not $x116))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;index = NO VALUE
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 

;actual status: not_implemented
