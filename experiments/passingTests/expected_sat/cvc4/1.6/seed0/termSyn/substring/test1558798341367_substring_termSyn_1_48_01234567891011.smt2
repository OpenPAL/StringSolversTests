(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x2753 (str.replace tmp_str0 tmp_str0 tmp_str22)))
 (let ((?x1301 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x843 (str.substr ?x118 ?x1301 ?x1301)))
 (= ?x843 ?x2753))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str22 = 


;actual status: sat

;model:
;Int tmp_int5 = 1
;String tmp_str0 = 
;String tmp_str22 = 
