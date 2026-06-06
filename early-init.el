;; -*- lexical-binding: t; -*-

(setq debug-on-error t)

(require 'early-gc (expand-file-name "user-lisp/early-gc.el" user-emacs-directory))
(require 'early-ui (expand-file-name "user-lisp/early-ui.el" user-emacs-directory))
(require 'early-startup-time (expand-file-name "user-lisp/early-startup-time.el" user-emacs-directory))
(require 'early-elpaca (expand-file-name "user-lisp/early-elpaca.el" user-emacs-directory))

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
