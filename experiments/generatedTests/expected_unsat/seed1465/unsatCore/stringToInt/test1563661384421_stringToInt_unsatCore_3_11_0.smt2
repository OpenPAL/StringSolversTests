(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str9_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (and (= (int.to.str tmp_int9) tmp_str9_fresh) (= (= tmp_int9 3) true)) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x2003 (forall ((j Int) )(let (($x254 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x260 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x254))))
 (let (($x266 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x260))))
 (let (($x1999 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) tmp_str9_fresh) true) $x266))))
 (let (($x274 (= (= (str.at s j) "1") true)))
 (let (($x277 (= (= (str.at s j) "0") true)))
 (let (($x195 (>= j 0)))
 (let (($x280 (and $x195 (< j (str.len s)))))
 (=> $x280 (or $x277 (or $x274 $x1999))))))))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (ite (and $x213 $x2003) $x285 $x206)))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_int9 = NO VALUE
;tmp_str9_fresh = 3

;unsat core: a0 a1 a2 

