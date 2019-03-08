#lang racket
;(define a 1)
;(define b 0)
;(+ a b)
;(let ((a 10) (b 2)) (* a b))
;((λ(a) (+ 1 a)) 2)

;(if (> a b) 'oui 'no)

;(define foo (λ(a (b 0)) (+ 1 a b)))
;(foo 4)


(display "Entrer la taille de la flèche:\n")

(define-values (in out) (make-pipe))

(define line (λ (size) (make-string size #\*)))

(define tranche-de-flèche (λ (taille-base numéro)
                            (let ((space (- (- taille-base numéro) 1)))
                              (string-append (make-string space #\ )
                                           "*"
                                           (make-string (- (* (- taille-base space) 2) 1) #\ )
                                           "*"))))



;(write "Size:" out)
(define size (string->number (read-line (current-input-port))))
(define display-line (λ(str) (display (string-append str "\n" ))))

(if (exact-integer? size) 'OK 'Interge )
;(display (string-append  "Dessine une flèche de taille : \n" result))

(display-line (string-append (make-string size #\ ) "*"))
(for ([i (in-range (- size 1))]) (display-line (tranche-de-flèche size i)))

(display-line (line (+ (* size 2) 1)))
 
(for ([i (in-range size)]) (display-line (string-append (make-string size #\ ) "*")))

