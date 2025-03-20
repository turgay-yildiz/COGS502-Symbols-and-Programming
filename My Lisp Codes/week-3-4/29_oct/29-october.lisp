(defun    factorial  (n     acc)

  (if  (= n   1)
       acc
        (factorial (- n   1)  (*   acc   n )  )
	   )
       )


(defun    fact    (n)

  (let   ( (acc     1) )
    (factorial    n    acc)
    )
  )



(defun    fact    (n)

  (factorial    n    1)
    )









