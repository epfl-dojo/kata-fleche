(defn strTimes [what number]
  (apply str (repeat number what)))

(defn tip [length]
  (str (apply str (repeat length " ")) "*"))

(defn head [length]
  (reverse (map #(str (strTimes " " %) "*" ) (take length (range)))))

(defn tail [length]
  (repeat length (tip length)))

(def length 5)

(println (tip length))

(doseq [x (head length)]
  (println x))

(doseq [x (tail length)]
  (println x))
