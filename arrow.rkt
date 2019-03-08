#lang racket

;; Déclarer les fonctions de construction de la flèche
(define line (λ (size) (make-string size #\*)))
(define tranche-de-flèche (λ (taille-base numéro)
                            (let ((space (- (- taille-base numéro) 1)))
                              (string-append (make-string space #\ )
                                           "*"
                                           (make-string (- (* (- taille-base space) 2) 1) #\ )
                                           "*"))))
(define display-line (λ(str) (display (string-append str "\n" ))))

;; Récupérer la hauteur de la flèche
(display-line "Entrer la taille de la flèche:")
(define-values (in out) (make-pipe))
(define size (string->number (read-line (current-input-port))))

;; Valider la hauteur entrée
(if (exact-integer? size) 'OK ((display-line "Ceci n'est pas un nombre")(exit)))
(if (or (< size 2) (> size 20))
    ((display-line "La hauteur de la flèche doit être comprise entre 2 et 20") (exit))
    (display-line "OK"))

;; Dessiner la flèche
(display-line (string-append (make-string size #\ ) "*"))
(for ([i (in-range (- size 1))]) (display-line (tranche-de-flèche size i)))
(display-line (line (+ (* size 2) 1)))
(for ([i (in-range size)]) (display-line (string-append (make-string size #\ ) "*")))