(defvar *lst* ())

(defun problemfour (num1 num2)
  (if (= num1 0)
      nil
      (progn (if (palindrome-test (* num1 num2))
		 (push (* num1 num2) *lst*))
	     (if (= num2 1)
		 (problemfour (- num1 1) 999)
		 (problemfour num1 (- num2 1))))))

(defun palindrome-test (num)
  (let ((len (find-length num)) (test 1))
    (do ((i 0 (+ i 1)))
	((> i (/ len 2)) test)
      (if (not (equal (char (format nil "~a" num) i)
		      (char (format nil "~a" num) (- len i 1))))
	  (setf test nil)))))

(defun find-length (num)
  (do ((i 0 (+ i 1)))
      ((> (expt 10 i) num) i)))

; after running (problemfour 999 999) in the REPL, run (car (sort *lst* #'>)) to get the final answer.