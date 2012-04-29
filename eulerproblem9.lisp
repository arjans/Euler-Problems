(defun problemnine (a b)
  (let ((c 0))
    (setf c (sqrt (+ (expt a 2) (expt b 2))))
    (cond
      ((> (+ a b c) 1000) (problemnine (+ a 1) (+ a 2)))
      ((= (+ a b c) 1000) (format t "~a" (* a b c)))
      (t (problemnine a (+ b 1))))))