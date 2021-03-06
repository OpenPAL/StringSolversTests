(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2539 (str.substr tmp_str0 tmp_int16 tmp_int16)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2113 (str.substr ?x118 ?x1081 ?x1327)))
 (= ?x2113 ?x2539)))))))
(check-sat)

(get-value (tmp_str0 tmp_int16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int16 = -1


;actual status: sat
;((tmp_str0 "4")
; (tmp_int16 (- 39)))

;model:
;String tmp_str0 = 4
;Int tmp_int16 = -39
