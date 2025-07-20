;; -*- lexical-binding: t; -*-

(setq debug-on-error t)

(push (expand-file-name "lisp/" user-emacs-directory)
      load-path)

(require 'early-gc)
(require 'early-ui)
(require 'early-startup-time)
(require 'early-elpaca)

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
