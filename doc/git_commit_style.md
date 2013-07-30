## re-style commit

If any file is changed only by re-indent, remove spaces…etc the re-style changed. Create a commit with "re-style format" log.

## rule of commit log

Example:
```
# git commit -m "<file name> <commit log>"
$ git commit -m "layouts/login_modal partial, fix block menubar"
```
```
# git commit -m "<controller#action> <commit log>"
$ git commit -m "application#record_hit, fix request.fullpath string too long"
```

If their are many things to be committed, use multiple line to describe secondary logs.