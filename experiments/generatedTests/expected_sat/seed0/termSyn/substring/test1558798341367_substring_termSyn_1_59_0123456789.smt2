(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1263 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1301 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1315 (str.substr ?x118 ?x1301 ?x1081)))
 (= ?x1315 ?x1263)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


