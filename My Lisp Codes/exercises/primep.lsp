;; from SICP (here in clojure)
;; http://www.sicpdistilled.com/section/1.2.6/

(defun square (n)
  (* n n))
  

(defun dividesp (a b)
  (zerop (mod b a)))

(defun find-divisor (n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((dividesp test-divisor n) test-divisor)
        (t (find-divisor n (1+ test-divisor)))))
        
        
(defun smallest-divisor (n)
  (find-divisor n 2))
 

(defun primep (n)
  (= n (smallest-divisor n)))
