(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun s () String)
(assert (! 
 (let (($x21 (= result "")))
 (let (($x22 (= $x21 true)))
 (let (($x156 (= s2 result)))
 (let (($x157 (= $x156 true)))
 (let ((?x153 (str.len s2)))
 (let (($x154 (= ?x153 length)))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x155 (and $x152 $x154)))
 (let (($x158 (and $x155 $x157)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x964 (= ?x126 s_fresh)))
 (let (($x1205 (and $x964 $x158)))
 (let (($x150 (> length 0)))
 (let ((?x1201 (str.len s_fresh)))
 (let (($x1202 (< offset ?x1201)))
 (let (($x146 (>= offset 0)))
 (let (($x1203 (and $x146 $x1202)))
 (let (($x1204 (and $x1203 $x150)))
 (ite $x1204 $x1205 $x22))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x395 (str.replace s s s)))
 (= ?x395 s_fresh)) :named a2))
(assert (! 
 (let ((?x143 (str.substr s offset length)))
 (let (($x144 (= ?x143 result)))
 (not $x144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
