;; Generated by :claw at 2021-08-28T22:10:30.805048+03:00
(asdf:defsystem #:claw-git2-bindings
  :description "Bindings generated by claw-git2"
  :author "CLAW"
  :license "Public domain"
  :defsystem-depends-on (:trivial-features)
  :depends-on (:uiop :cffi)
  :components
  ((:file "bindings/x86_64-pc-linux-gnu" :if-feature
    (:and :x86-64 (:or :linux :darwin)))))
