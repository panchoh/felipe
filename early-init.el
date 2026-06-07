;; -*- lexical-binding: t; -*-

(setq debug-on-error t)

(dolist (feature '(gc
                   ui
                   startup-time
                   elpaca))
  (require (intern (format "early-%s" feature))
           (expand-file-name
            (format "user-lisp/early-%s.el" feature)
            user-emacs-directory)))

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
