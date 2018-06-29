(defn strTimes [what number]
  (apply str (repeat number what)))

(defn tip [length]
  (str (apply str (repeat length " ")) "*"))

(defn headSlice [leftS floor]
  (str (strTimes " " leftS) "*" (strTimes " " (- (* floor 2) 1)) "*"))

(defn head [length]
  (reverse (map #(headSlice % (- length %)) (take length (range)))))

(defn tail [length]
  (repeat length (tip length)))

(def length 5)

(println (tip length))

(doseq [x (head length)]
  (println x))

(doseq [x (tail length)]
  (println x))
