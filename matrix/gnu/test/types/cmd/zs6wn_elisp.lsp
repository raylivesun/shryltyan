;; token is not allowed to be used in the topics section
(defun zs6wn-elisp (token-topics)
"the token is not allowed to be used in the topics section"
  (when (string-match token-topics (zs6wn-elisp-topics-section)
  (format "Token '%s' is not allowed to be used in the topics section." token)
  (zs6wn-elisp-message))))


(defun zs6wn-elisp-topics-section (token-topics)
"Find the topics section in the given token-topics string"
  (let ((start-of-topics-section (string-match "^\\s*\\*
   Topics\\s*\\*\\s*" token-topics t :start)))
    (if start-of-topics-section
    (substring token-topics start-of-topics-section)
    nil)))


;; test the function
(defun zs6wn-elisp-callback-section (start-of-topics-section)
"Find the callback section in the given start-of-topics-section string"
  (let ((start-of-callback-section (string-match "\\s*\\*\\
   Callback\\s*\\*\\s*" start-of-topics-section t :start)))
    (if start-of-callback-section
    (substring start-of-topics-section start-of-callback-section)
    nil)))
