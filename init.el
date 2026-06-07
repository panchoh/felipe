;; -*- lexical-binding: t; -*-

(dolist (feature '(elpaca-nixos
                   elpaca

                   gc

                   evil
                   which-key
                   general
                   corfu
                   vertico
                   projectile
                   doom-modeline
                   project
                   magit
                   org
                   eglot
                   pdf

                   emacs))
  (require (intern (format "init-%s" feature))))

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
