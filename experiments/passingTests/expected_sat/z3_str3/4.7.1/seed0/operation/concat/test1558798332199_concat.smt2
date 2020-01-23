(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () String)
(declare-fun t () String)
(declare-fun s () String)
(assert
 (= (str.++ s t) result))
(check-sat)

(get-value (s t result ))
(get-info :reason-unknown)

;s = 
;t = 
;result =


;actual status: sat

;model:
;String result = aasaaaaaaaaaaaaaaI
;String s = aas
;String t = aaaaaaaaaaaaaaI
