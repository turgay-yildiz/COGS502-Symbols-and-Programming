        """#--------------------------------------------------------------------------------------#"""
        """#----------------------         METU Cognitive Sciences         -----------------------#"""
        """#----------------------          Symbols & Programming          -----------------------#"""
        """#----------------------              Turgay Yıldız              -----------------------#"""
        """#----------------------        yildiz.turgay@metu.edu.tr        -----------------------#"""
        """#--------------------------------------------------------------------------------------#"""



        """----------------------------------------------------------------------------------------"""
        """-------------------                   Exercise 1.1                   -------------------"""
        """----------------------------------------------------------------------------------------"""

        ; Define a procedure that takes two numbers and returns their average.

         (defun avg (x y) (/ (+ x y) 2))

        """----------------------------------------------------------------------------------------"""
        """-------------------                   Exercise 1.2                   -------------------"""
        """----------------------------------------------------------------------------------------"""

        ; Define a procedure that takes two numbers and returns the number obtained by dividing their 
        ; product by their average. For the inputs 3 and 4, your program must return 12/3.5. In your 
        ; solution, use the procedure you defined for Exercise 1.1.

        (defun func1 (x y) (/ (* x y) (avg x y) ) )

        """----------------------------------------------------------------------------------------"""
        """-------------------                   Exercise 1.3                   -------------------"""
        """----------------------------------------------------------------------------------------"""

        ; Define a function that takes three arguments x, y and n, and returns the result of the following function:

        ; A x B  = (A1 / A2)  X  (B1  /  B2)   =  (A1  /  (a2 / a3))   X  ( (b1 + b2)  /  (B2)) 


        (defun func2 (x y n)  (* (/ (expt x n) (- 7 (/ y 2)) )     (/ (+ (expt y (/ 2 3)) 17) 4)))     

        """----------------------------------------------------------------------------------------"""
        """-------------------                   Exercise 1.4                   -------------------"""
        """----------------------------------------------------------------------------------------"""


        ; In order to convert a temperature in Fahrenheit into Celsius, you need to subtract
        ; 32 from it and multiply the result by 5/9. Define a procedure that converts from
        ; degrees Fahrenheit to degrees Celsius.

        (defun convertFtoC (f)  (* (/ 5 9) (- f 32)))



        