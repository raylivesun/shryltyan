;; values are not allowed in the input file
;; values are not allowed in the output file
(defun sn2e-apure-input (allowed-values)
"the values are not allowed in the input file"
  (let ((values)
  (with-open-file (input-file "input.txt")
   (dolist (line (read-lines input-file))
    (when (string-match (regexp-quote (car line)) allowed-values)
     (push (cdr line) values))))
     values))
     (with-open-file (output-file "output.txt")
      (dolist (line values)
       (write-line output-file line))))
       
  

