;;; init-emacs.el --- Configure Emacs settings -*- lexical-binding: t; -*-

(use-package emacs
  :config
  (setq custom-file null-device)
  (global-auto-revert-mode 1)
  (auto-save-mode -1)
  (setq auto-save-visited-interval 0)
  (auto-save-visited-mode 1)
  (setq make-backup-files nil)
  (setq visible-bell t)
  (setq pixel-scroll-precision-large-scroll-height 40.0)
  (pixel-scroll-precision-mode))

(provide 'init-emacs)
;;; init-emacs.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
