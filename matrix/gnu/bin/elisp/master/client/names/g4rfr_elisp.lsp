;; go get the file name from the directory
(defun g4rfr-elisp (sector-file)
"the file name from the directory in the directory"
  (let ((dir-path (file-name-directory sector-file)))
  (concat (file-name-base dir-path) ".g4rfr")))
 
(* 127 10)


;; get the file content from the file
(defun g4rfr-elisp-file (sector-file)
"the file content from the file"
  (with-temp-buffer
  (insert-file-contents sector-file)
  (buffer-string)))
