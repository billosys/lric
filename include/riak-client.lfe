;; If you want to call functions from macros, they need to be
;; wrapped in (eval-when-compile ...).
(eval-when-compile

  (defun get-api-funcs ()
    '((start-link 2) (start-link 3)
      (start 2) (start 3)
      (stop 1)
      (set-options 2) (set-options 3)
      (is-connected 1) (is-connected 2)
      (ping 1) (ping 2)
      (get-client-id 1) (get-client-id 2)
      (set-client-id 2) (set-client-id 3)
      (get-server-info 1) (get-server-info 2)
      (get 3) (get 4) (get 5)
      (put 2) (put 3) (put 4)
      (delete 3) (delete 4) (delete 5)
      (delete-vclock 4) (delete-vclock 5) (delete-vclock 6)
      (delete-obj 2) (delete-obj 3) (delete-obj 4)
      (list-buckets 1) (list-buckets 2) (list-buckets 3)
      (stream-list-buckets 1) (stream-list-buckets 2) (stream-list-buckets 3)
      (legacy-list-buckets 2)
      (list-keys 2) (list-keys 3)
      (stream-list-keys 2) (stream-list-keys 3)
      (get-bucket 2) (get-bucket 3) (get-bucket 4)
      (get-bucket-type 2) (get-bucket-type 3)
      (set-bucket 3) (set-bucket 4) (set-bucket 5)
      (set-bucket-type 3) (set-bucket-type 4)
      (reset-bucket 2) (reset-bucket 3) (reset-bucket 4)
      (mapred 3) (mapred 4) (mapred 5)
      (mapred-stream 4) (mapred-stream 5) (mapred-stream 6)
      (mapred-bucket 3) (mapred-bucket 4) (mapred-bucket 5)
      (mapred-bucket-stream 5) (mapred-bucket-stream 6)
      (search 3) (search 4) (search 5) (search 6)
      (get-index-eq 4) (get-index-range 5) (get-index-eq 5) (get-index-range 6)
      (cs-bucket-fold 3)
      (default-timeout 1)
      (tunnel 4)
      ;; Counter API
      (counter-incr 4) (counter-val 3)
      ;; with options
      (counter-incr 5) (counter-val 4)
      (init 1) (handle-call 3) (handle-cast 2) (handle-info 2)
      (terminate 2) (code-change 3)
      ;; Yokozuna admin commands
      (list-search-indexes 1) (list-search-indexes 2)
      (create-search-index 2) (create-search-index 4)
      (get-search-index 2) (get-search-index 3)
      (delete-search-index 2) (delete-search-index 3)
      (set-search-index 3)
      (get-search-schema 2) (get-search-schema 3)
      (create-search-schema 3) (create-search-schema 4)
      ;; Datatypes API
      (fetch-type 3) (fetch-type 4)
      (update-type 4) (update-type 5)
      (modify-type 5)))

;; end of (eval-when-compile ...)
)

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'riakc_pb_socket)))

(generate-api)
