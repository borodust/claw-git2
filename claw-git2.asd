(asdf:defsystem :claw-git2
  :description "Common Lisp bindings to libgit2"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-git2-bindings))


(asdf:defsystem :claw-git2/wrapper
  :description "Wrapper generator for libgit2"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw)
  :serial t
  :components ((:file "src/claw")
               (:module :git2-includes :pathname "src/lib/git2/include/")))
