(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun empty_fresh () String)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int5 () Int)
(assert (! 
 (let (($x587 (= result empty_fresh)))
 (let (($x588 (= $x587 true)))
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
 (let (($x127 (= ?x126 s)))
 (let (($x159 (and $x127 $x158)))
 (let (($x150 (> length 0)))
 (let ((?x147 (str.len s)))
 (let (($x148 (< offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x149 (and $x146 $x148)))
 (let (($x151 (and $x149 $x150)))
 (ite $x151 $x159 $x588))))))))))))))))))))) :named a1))
(assert (! 
 (let (($x1279 (or (or (< tmp_int5 0) (>= tmp_int5 (str.len tmp_str4))) (<= tmp_int6 0))))
 (and (= (str.substr tmp_str4 tmp_int5 tmp_int6) empty_fresh) $x1279)) :named a2))
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
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;empty_fresh = 
;tmp_str4 = NO VALUE
;tmp_int5 = NO VALUE
;tmp_int6 = NO VALUE

;unsat core: a0 a1 a2 

