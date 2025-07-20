;;; init-gc.el --- GCMH setup -*- lexical-binding: t; -*-

(use-package gcmh
  :ensure t
  :init
  (setq gc-cons-percentage 0.1)
  :custom
  (gcmh-idle-delay 'auto)
  :hook (elpaca-after-init . gcmh-mode))

(provide 'init-gc)
;;; init-gc.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
