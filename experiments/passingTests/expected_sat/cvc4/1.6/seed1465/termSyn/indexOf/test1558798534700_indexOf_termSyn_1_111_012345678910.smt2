(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1493 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x752 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x1783 ?x752 ?x1907) ?x1493))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: sat

;model:
;Int tmp_int5 = 1
;String tmp_str0 = 
