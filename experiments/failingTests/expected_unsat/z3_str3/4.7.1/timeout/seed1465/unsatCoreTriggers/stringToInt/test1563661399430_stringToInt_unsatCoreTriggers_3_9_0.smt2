(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str6_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (and (= (int.to.str tmp_int3) tmp_str6_fresh) (= (= tmp_int3 1) true)) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
 (let (($x1971 (forall ((j Int) )(! (let (($x258 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x264 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x258))))
 (let (($x270 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x264))))
 (let (($x276 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) "3") true) $x270))))
 (let (($x1969 (or (= (= (str.at s j) "0") true) (or (= (= (str.at s j) tmp_str6_fresh) true) $x276))))
 (let (($x197 (>= j 0)))
 (let (($x284 (and $x197 (< j (str.len s)))))
 (=> $x284 $x1969)))))))) :pattern ( (str.at s j) )))
 ))
 (let (($x214 (= s "")))
 (let (($x215 (= $x214 false)))
 (ite (and $x215 $x1971) $x289 $x208)))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_int3 = NO VALUE
;tmp_str6_fresh = 1

;unsat core: a0 a1 a2 

;actual status: timeout
