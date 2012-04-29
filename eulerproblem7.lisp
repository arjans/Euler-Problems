(defvar *primeslst* '(2))

(defun nthprime (target)
  (do ((i 3 (+ i 1)))
      ((if (nth (- target 1) *primeslst*) t)
       (format t "~a" (nth (- target 1) *primeslst*)))
    (addtoprimeslst i)))

(defun addtoprimeslst (num)
  (if (isitprime num)
      (nconc *primeslst* (list num))))

(defun isitprime (num)
  (let ((test nil))
    (dolist (primetest *primeslst*)
      (if (= (mod num primetest) 0)
	  (progn (setf test nil) (return))
	  (setf test t)))
    test))