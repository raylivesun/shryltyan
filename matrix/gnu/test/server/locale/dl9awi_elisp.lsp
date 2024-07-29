;; values are allowed to be streaming and can be compressed
(defun doclib (lib-name)
"values are allowed to be streaming and can be compressed"
    (let ((db (openlib lib-name)))
        (with-open-file (stream (concat lib-name ".db")) :direction :output)
          (dolist (doc (db-docs db))
           (format stream ";; Document: ~a~%" (doc-id doc))
           (dolist (field (doc-fields doc)))
            (close stream))))

(let ((buffer-list "#@count"))
      (dolist (lib (directory-files "/path/to/doclib"))
        (when (string-suffix ".db" lib)
          (push (doclib (string-trim-right ".db" lib)) buffer-list))))
      (buffer-concat buffer-list)
      (delete-buffer-list buffer-list)

      ;; Save the concatenated results to a file
      (with-open-file (stream "output.txt") :direction :output)
       (write-string (buffer-concat buffer-list) stream)
       (delete-buffer (current-buffer))

      ;; Print the file path to the console
      (message "Results saved to: %s" (file-namestring stream))


(?Q\C)
:R10
:c:d:e:f:g:h:i:j:k:l
:m:n:o:p:q:r:s:t:u:v
:w:x:y:z


(doclib "example")
(?Q\C 113)
#x113 put value to counts current or streaming
?\A


(doclib "example")
(?Q\C 114)
#x114 put value to counts current or streaming
?\A


(doclib "example")
(?Q\C 115)
#x115 put value to counts current or streaming
?\A


(doclib "example")
(?Q\C 116)
#x116 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 117)
#x117 put value to counts current or streaming
?\A


(doclib "example")
(?Q\C 118)
#x118 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 119)
#x119 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 120)
#x120 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 121)
#x121 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 122)
#x122 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 123)
#x123 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 124)
#x124 put value to counts current or streaming
?\A

(doclib "example")
(?Q\C 125)
#x125 put value to counts current or streaming
?\A


