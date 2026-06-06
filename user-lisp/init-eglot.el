;;; init-eglot.el --- Eglot setup -*- lexical-binding: t; -*-

(use-package eglot
  :ensure nil
  :hook ((go-ts-mode go-mode c-mode) . eglot-ensure))

(provide 'init-eglot)
;;; init-eglot.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
