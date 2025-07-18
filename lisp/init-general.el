;;; init-general.el --- Configure General -*- lexical-binding: t; -*-

(use-package general
  :after which-key
  :ensure (:wait t)
  :demand t
  :config
  (general-create-definer felipe-leader-key
    :keymaps '(normal visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (felipe-leader-key
   "f"  '(:ignore t :which-key "files")
   "ff" '(find-file :which-key "find file")
   "fs" '(save-buffer :which-key "save file")
   "b"  '(:ignore t :which-key "buffers")
   "bb" '(switch-to-buffer :which-key "switch buffer")))

(provide 'init-general)
;;; init-general.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
