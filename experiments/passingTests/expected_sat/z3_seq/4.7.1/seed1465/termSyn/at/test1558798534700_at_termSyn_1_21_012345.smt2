(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1459 (str.len tmp_str0)))
 (let ((?x512 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1424 (str.at ?x512 ?x1459)))
 (= ?x1424 (str.++ tmp_str0 tmp_str12))))))
(check-sat)

(get-value (tmp_str0 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 


;actual status: sat

;model:
;String tmp_str0 = \x00
;String tmp_str12 = 
