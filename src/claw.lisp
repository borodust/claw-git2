(claw:defwrapper (:claw-git2
                  (:system :claw-git2/wrapper)
                  (:headers "git2.h")
                  (:includes :git2-includes)
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu")
                            ((:and :x86-64 :windows) "x86_64-pc-windows-msvc"))
                  (:persistent t)
                  (:include-definitions "^(git|GIT)_\\w+"))
  :in-package :%git
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :symbolicate-names (:in-pipeline
                      (:by-removing-prefixes "git_" "GIT_")))
