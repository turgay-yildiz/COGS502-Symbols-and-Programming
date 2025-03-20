(load "utils.lisp")

(defparameter *dataframe* (tsv-to-list "/data/test.tsv"))

(defun get-row  (df   n)
  (nth   (+ n 1 )   df )
)

(defun get_column_index (col_names  col_name  &optional (index 0))       ; col_names = (car *dataframe*)

  (cond   ( (endp col_names)                          nil)
          ( (equal (car col_names) col_name)          index)
            ( t                                       (get_column_index (cdr col_names)  col_name  (+ 1 index)))  
    )
)

(defun get-col (df  col_name)

  (let (  (index                      (get_column_index (car df)  col_name)))
          (mapcar #' (lambda (row)
                (nth index row))
                (cdr df)
     )))

(defun take (df &optional (row nil) (col nil))

  (cond   ( (and (eql col nil) (numberp row))                                        (get-row df row))
          ( (and (eql row nil) (or (symbolp col)(stringp col)))                      (get-col df col))
          ( (and (numberp row) (or (symbolp col)(stringp col)))                      (nth row (get-col df col)))
  ))

(defun turn-to-list (lst)
  (mapcar #' (lambda (x)  (list x)) lst)
  )

(defun  add-column_2 (df col lst)
  (append (list (append (car df) (list col)))   (mapcar  #' append  (cdr df) (turn-to-list lst)) )
)  

(defun add-column (df col lst)

  (cond   ( (eql (length lst) (length (get-col df (car (car df)))))         (add-column_2 df col lst) )
          ( (>   (length lst) (length (get-col df (car (car df)))))         (add-column df col (reverse (cdr (reverse lst)))))
          ( t                                                               (add-column df col (append lst (list 'T))))
  ))

(defun get-list (df lst)
  (mapcar #' (lambda (col) (get-col df col)) lst)                 ; '( a b )  = '( (1 4 7)  (2 5 8) )  merged !
  )

(defun collect-cars-and-apply (merged op)

    (list (apply op (mapcar #' (lambda (x) (car x))  merged )))   ; apply operation/function to the cars
  )                                                               ; e.g. if #' is +, then return "3"

(defun collect-cdrs (merged)
  (mapcar #' (lambda (x) (cdr x) ) merged)                        ; '( (1 4 7)  (2 5 8) )  =>  '( (4 7)  (5 8) )
  )

(defun map-columns_2 (merged op first-op storage)

  (if (eql (length (car merged)) 1)
      (append first-op storage)
      (map-columns_2 (collect-cdrs merged)  op first-op  (append storage (collect-cars-and-apply  (collect-cdrs merged) op)))
  ))

(defun map-columns (df lst op)

  (let* ((merged                       (get-list df lst))
        (first-op                      (collect-cars-and-apply merged op))
        )
        (map-columns_2  merged  op first-op nil)
  ))  