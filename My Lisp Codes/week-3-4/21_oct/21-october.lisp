(defun myfunc (x)
  (cond     ((zerop x)    'zero)
	    ((> x  0)     'positive)
	    (t            'negative)
	    )
  )

; zero instead of 'zero will give an error. You need "quoting" OR


(defun myfunc-2 (x)
  (cond     ((zerop x)    'zero)
	    ((> x  0)     (defvar positive 12345))  ; remember defvar prints the name not the value
	    (t            'negative)
	    )
  )















