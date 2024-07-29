;; path is relative to the root of the application
(defun ru1aa-elisp (path-to-relative)
"the application is relative to the root of the application"
  (let ((path = path) (relative)
  ;; replace backslashes with slashes in path
  (set path (replace-regexp #"\\" "/" path))
  ;; replace the root of the application with "~/"
  (set relative (replace-regexp "^~/" "~/" path))))
  ;; return the path
  relative)