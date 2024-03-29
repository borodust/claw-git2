;; Generated by :claw at 2021-08-29T13:13:27.301092Z
(asdf:defsystem #:claw-git2-bindings
  :description "Bindings generated by claw-git2"
  :author "CLAW"
  :license "Public domain"
  :defsystem-depends-on (:trivial-features)
  :depends-on (:uiop :cffi)
  :components
  ((:file "bindings/x86_64-pc-linux-gnu" :if-feature
    (:and :x86-64 :linux))
   (:file "bindings/x86_64-apple-darwin-gnu" :if-feature
    (:and :x86-64 :darwin))
   (:file "bindings/x86_64-pc-windows-msvc" :if-feature
    (:and :x86-64 :windows))))
#-(:or (:and :x86-64 :windows)(:and :x86-64 :darwin)(:and :x86-64 :linux))
(warn "Current platform unrecognized or unsupported by claw-git2-bindings system")