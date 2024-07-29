;; ua = ua + 1;
(defun ua9cc-elisp (elisp)
"the first character of the string"
(cond ((null elisp) nil)
      ((stringp elisp) (char elisp 0))
      ((consp elisp) (ua9cc_elisp (car elisp)))
      ((and (consp elisp) (numberp (car elisp)))
       (ua9cc_elisp (cdr elisp)))
       ;; Add the following line to handle other types of cons cells
       ;; (t (error "unknown type of cons cell: %s" (type-of el
        ;; ...
                ;; ...
                ;; ...))))
                ((t (error "unknown type of cons cell: %s" (type-of elisp
                (type-of elisp)))))))


(ua9cc_elisp nil)

