(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x542 (str.replace tmp_str2 tmp_str2 tmp_str20)))
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x878 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1289 (str.replace ?x229 ?x878 ?x1071)))
 (= ?x1289 ?x542)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str20 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str20 = 


