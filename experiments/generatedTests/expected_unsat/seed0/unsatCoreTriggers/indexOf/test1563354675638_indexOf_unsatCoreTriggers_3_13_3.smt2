(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int10_fresh () Int)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str8 () String)
(assert (! 
 (let (($x1612 (= result tmp_int10_fresh)))
 (let (($x1613 (= $x1612 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x203 (str.len ?x124)))
 (let (($x204 (= ?x203 result)))
 (let (($x200 (forall ((i Int) )(! (let (($x195 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (let (($x197 (>= i 0)))
 (let (($x198 (and $x197 (< i (str.len t)))))
 (=> $x198 $x195)))) :pattern ( (str.substr t 0 i) )))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x201 (and $x152 $x200)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let (($x202 (and $x178 $x201)))
 (let (($x205 (and $x202 $x204)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1614 (ite $x174 $x205 $x1613)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1614)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let (($x1661 (and (= (= (str.at tmp_str8 tmp_int9) "8") false) (= (= (str.at tmp_str8 tmp_int9) "9") false))))
 (let (($x1663 (and (= (= (str.at tmp_str8 tmp_int9) "6") false) (and (= (= (str.at tmp_str8 tmp_int9) "7") false) $x1661))))
 (let (($x1665 (and (= (= (str.at tmp_str8 tmp_int9) "4") false) (and (= (= (str.at tmp_str8 tmp_int9) "5") false) $x1663))))
 (let (($x1667 (and (= (= (str.at tmp_str8 tmp_int9) "2") false) (and (= (= (str.at tmp_str8 tmp_int9) "3") false) $x1665))))
 (let (($x1669 (and (= (= (str.at tmp_str8 tmp_int9) "0") false) (and (= (= (str.at tmp_str8 tmp_int9) "1") false) $x1667))))
 (let (($x1670 (and (and (>= tmp_int9 0) (< tmp_int9 (str.len tmp_str8))) $x1669)))
 (let ((?x1630 (str.to.int tmp_str8)))
 (let (($x1631 (= ?x1630 tmp_int10_fresh)))
 (and $x1631 $x1670))))))))) :named a2))
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
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE
;tmp_int10_fresh = -1
;tmp_str8 = NO VALUE
;tmp_int9 = NO VALUE

;unsat core: a0 a1 a2 

