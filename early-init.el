;; -*- lexical-binding: t; -*-

(setq debug-on-error t)

(push (expand-file-name "lisp/" user-emacs-directory)
      load-path)

(require 'early-elpaca)
(require 'early-startup-time)
(require 'early-ui-tweaks)

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
