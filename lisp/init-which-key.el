;;; init-which-key.el --- Configure which-key -*- lexical-binding: t; -*-

(use-package which-key
  :after evil
  :ensure nil ; builtin
  :commands which-key-mode
  :hook (elpaca-after-init . which-key-mode)
  :custom
  (which-key-add-column-padding 1)
  (which-key-max-description-length 40)
  (which-key-show-remaining-keys t)
  (which-key-show-operator-state-maps t))

(provide 'init-which-key)
;;; init-which-key.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
