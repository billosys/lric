;; If you want to call functions from macros) they need to be
;; wrapped in (eval-when-compile ...).
(eval-when-compile

  (defun get-api-funcs ()
    '((new 2) (new 3) (new 4)
      (bucket-type 1)
      (bucket 1)
      (only-bucket 1)
      (key 1)
      (vclock 1)
      (value-count 1)
      (select-sibling 2)
      (get-contents 1)
      (get-metadata 1)
      (get-metadatas 1)
      (get-content-type 1)
      (get-content-types 1)
      (get-value 1)
      (get-values 1)
      (update-metadata 2)
      (update-value 2)
      (update-value 3)
      (update-content-type 2)
      (get-update-metadata 1)
      (get-update-content-type 1)
      (get-update-value 1)
      (md-ctype 1)
      (set-vclock 2)
      (get-user-metadata-entry 2)
      (get-user-metadata-entries 1)
      (clear-user-metadata-entries 1)
      (delete-user-metadata-entry 2)
      (set-user-metadata-entry 2)
      (get-secondary-index 2)
      (get-secondary-indexes 1)
      (clear-secondary-indexes 1)
      (delete-secondary-index 2)
      (set-secondary-index 2)
      (add-secondary-index 2)
      (get-links 2)
      (get-all-links 1)
      (clear-links 1)
      (delete-links 2)
      (set-link 2)
      (add-link 2)))

;; end of (eval-when-compile ...)
)

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'riakc_obj)))

(generate-api)
