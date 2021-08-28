(cl:defpackage :git2.example
  (:use :cl)
  (:local-nicknames (:cref :cffi-c-ref))
  (:export #:run))
(cl:in-package :git2.example)

;;
;; Adapted from https://libgit2.org/docs/guides/101-samples/
;;

(defmacro with-repository ((repo path) &body body)
  `(cref:c-with ((,repo (:pointer %git:repository)))
     (%git:repository-open (repo &) (namestring ,path))
     (unwind-protect
          (progn ,@body)
       (%git:repository-free repo))))


(cffi:defcallback print-status :int ((path :string) (flags :unsigned-int) (payload :pointer))
  (declare (ignore payload))
  (format t "~%~A [flags: ~A]" path flags)
  0)


(defun run (repository-path &key (library-name "libgit2.so"))
  (cffi:load-foreign-library library-name)

  (%git:libgit2-init)

  (with-repository (repo repository-path)
    (%git:status-foreach repo (cffi:callback print-status) (cffi:null-pointer)))

  (%git:libgit2-shutdown))
