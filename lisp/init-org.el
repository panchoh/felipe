;;; init-org.el --- Org setup -*- lexical-binding: t; -*-

(use-package org
  :ensure nil
  :commands (org-mode org-version)
  :mode
  ("\\.org\\'" . org-mode)
  :custom
  (org-adapt-indentation nil)
  (org-ellipsis "…")
  (org-hidden-keywords '(title))
  (org-hide-emphasis-markers t)
  (org-hide-leading-stars t)
  (org-link-descriptive t)
  (org-pretty-entities t)
  (org-startup-indented t)
  (org-startup-truncated t))

(use-package org-modern
  :ensure t
  :hook (org-mode . global-org-modern-mode)
  :custom (org-modern-keyword (quote (("options" . "🔧")
                                      (t . t))))
  :config
  ;; Add frame borders and window dividers
  (modify-all-frames-parameters
   '((right-divider-width . 40)
     (internal-border-width . 40)))
  (dolist (face '(window-divider
                  window-divider-first-pixel
                  window-divider-last-pixel))
    (face-spec-reset-face face)
    (set-face-foreground face (face-attribute 'default :background)))
  (set-face-background 'fringe (face-attribute 'default :background)))

(use-package org-appear
  :ensure t
  :after (evil org)
  :preface
  ;; Setup Evil integration for `org-appear' using buffer-local hooks.
  ;;
  ;; - On entering insert state (`evil-insert-state-entry-hook'), call
  ;;   `org-appear-manual-start' to reveal hidden entities.
  ;; - On exiting insert state (`evil-insert-state-exit-hook'), call
  ;;   `org-appear-manual-stop' to hide them again.
  ;;
  ;; Hooks are added buffer-locally, so this behavior only applies in
  ;; Org buffers where this function has been invoked.
  (defun org-appear-manual-evil ()
    "Integrate `org-appear' with Evil insert state in Org buffers."
    (add-hook 'evil-insert-state-entry-hook #'org-appear-manual-start nil t)
    (add-hook 'evil-insert-state-exit-hook #'org-appear-manual-stop nil t))
  :hook ((org-mode . org-appear-mode)
         (org-mode . org-appear-manual-evil))
  :custom
  (org-appear-autoemphasis t)
  (org-appear-autoentities t)
  (org-appear-autokeywords t)
  (org-appear-autolinks t)
  (org-appear-autosubmarkers t)
  (org-appear-inside-latex t)
  (org-appear-trigger 'manual))

(provide 'init-org)
;;; init-org.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
