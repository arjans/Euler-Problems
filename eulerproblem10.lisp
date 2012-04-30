(defun problemten (start end)
  (let ((sumofprimes 0)(listoprimes '(2)))
  (do ((i start (+ i 1)))
      ((= i end) sumofprimes)
    (when (isitprime i listoprimes)
       (setf sumofprimes (+ sumofprimes i))
       (nconc listoprimes (list i))))))

(defun isitprime (num listoprimes)
  (let ((test nil))
    (dolist (primetest listoprimes)
      (cond
	((< (isqrt num) primetest) (setf test t) (return))
	((= (mod num primetest) 0) (setf test nil) (return))
	(t (setf test t))))
    test))

;;;;After solving this problem, I realized I've been using "trial division".  There's a theoretically less complex way called the "Sieve of Eratosthenes".