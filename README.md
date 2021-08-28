# claw-git2

Common Lisp bindigns to [`libgit2`](https://github.com/libgit2/libgit2).


## Example
You need `libgit2` installed - example looks for `libgit2.so` through `cffi:load-foreign-library`.

```common-lisp
(ql:quickload :claw-git2/example)
(git2.example:run "/path/to/git/repo-with-changes/")
```

On Darwin:
```common-lisp
(ql:quickload :claw-git2/example)
(git2.example:run "/path/to/git/repo-with-changes/" :library-name "libgit2.dylib")
```
