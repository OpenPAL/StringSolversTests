(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x584 (str.++ tmp_str18 tmp_str18)))
 (let ((?x2482 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2430 (int.to.str tmp_int1)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x579 (str.replace ?x2321 ?x2430 ?x2482)))
 (= ?x579 ?x584)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int1 (- 1))
; (tmp_str18 ""))

;model:
;Int tmp_int1 = -1
;String tmp_str18 = 
;String tmp_str0 = \x00
