(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str11 () String)
(declare-fun i () Int)
(declare-fun t () String)
(declare-fun tmp_str12 () String)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(assert (! 
 (let ((?x184 (str.substr t 0 i)))
 (let ((?x1497 (str.replace ?x184 tmp_str11 tmp_str12)))
 (let (($x1498 (= ?x1497 ?x184)))
 (and $x1498 (= (str.indexof ?x184 tmp_str11 0) (- 1)))))) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x201 (str.len ?x124)))
 (let (($x202 (= ?x201 result)))
 (let (($x198 (forall ((i Int) )(let (($x193 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x193)))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x199 (and $x152 $x198)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let (($x200 (and $x178 $x199)))
 (let (($x203 (and $x200 $x202)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x207 (ite $x174 $x203 $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x207)))))))))))))))))))))))))))) :named a2))
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
;i = NO VALUE
;tmp_str11 = NO VALUE
;tmp_str12 = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a2 

;actual status: unknown
;(:reason-unknown "(incomplete (theory seq))")
