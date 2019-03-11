;; Declare functions
(defn repeatChar [character nTimes]
  (apply str (repeat nTimes character)))

(defn drawSlice [floor height]
  (str (repeatChar " "(- (- height floor) 1)) 
    "*"
    (repeatChar " "(+ (* floor 2) 1))
    "*"))

;; Get arrow height
(println "What height the arrow should be ?")
(def height (Integer/parseInt (read-line)))
(if (or (> height 20) (< height 2)) 
  ((println "Value must be between 2 and 20")
   (System/exit 0)))

;; Draw the first point
(println (repeatChar " " (- height 1)) "*")

;; Draw the slices
(doseq [x (range (- height 1))]
  (println (drawSlice x height)))

;; Draw the base
(println (repeatChar "*" (+ (* 2 height) 1)))

;; Draw the tail
(doseq [x (range height)]
  (println (repeatChar " " (- height 1)) "*"))
