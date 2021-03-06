(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1_fresh () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun s1 () String)
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let (($x200 (forall ((i Int) )(! (let (($x195 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x195)) :pattern ( (str.substr t 0 i) )))
 ))
 (let ((?x1030 (str.len s1_fresh)))
 (let (($x1221 (= ?x1030 offset)))
 (let (($x1378 (and (= (str.++ (str.++ s1_fresh s2) (str.++ t s4)) s) (and $x1221 $x200))))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1382 (ite $x174 (and $x1378 (= (str.len (str.++ s1_fresh s2)) result)) $x208)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1382)))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x128 (str.len s1)))
 (let (($x1042 (= ?x128 1)))
 (let ((?x1040 (str.at s1 0)))
 (let (($x1041 (= ?x1040 s1_fresh)))
 (and $x1041 $x1042))))) :named a2))
(assert (! 
 (let ((?x161 (str.indexof s t offset)))
 (let (($x163 (= ?x161 result)))
 (not $x163))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a1 

;actual status: not_implemented
