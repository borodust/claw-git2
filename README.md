# claw-git2

Common Lisp bindigns to [`libgit2`](https://github.com/libgit2/libgit2).


## Example
You need `libgit2` installed. Example tries to load appropriate foreign library
via `cffi:load-foreign-library`. If it fails, give it full path to `git2` lib
via `library-name` keyword argument of `git2.example:run`.

```common-lisp
(ql:quickload :claw-git2/example)
(git2.example:run "/path/to/git/repo-with-changes/")
```
