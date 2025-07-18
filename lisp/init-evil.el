;;; init-evil.el --- Configure Evil stuff -*- lexical-binding: t; -*-

(use-package evil
  :ensure t
  :demand t
  :commands (evil-mode evil-define-key)
  :hook (elpaca-after-init . evil-mode)
  :init
  (setq evil-inhibit-esc t
        evil-search-module 'evil-search)
  :custom
  (evil-want-keybinding nil)
  (evil-want-C-h-delete t)
  (evil-want-C-u-delete t)
  (evil-want-C-u-scroll t)
  (evil-want-C-w-in-emacs-state t)
  (evil-want-fine-undo t)
  (evil-undo-system 'undo-redo)
  (evil-split-window-below t)
  (evil-vsplit-window-right t)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :custom
  (evil-collection-setup-minibuffer t)
  :init
  (evil-collection-init))

(provide 'init-evil)
;;; init-evil.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
