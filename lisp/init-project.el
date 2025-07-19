;;; init-project.el --- Configure project.el -*- lexical-binding: t; -*-

(use-package project
  :after evil
  :ensure nil
  :init
  (setq project-project-search-path '("~/.config/emacs/" "~/sandbox/"))

  ;; Bind in Evil normal mode
  (define-key evil-normal-state-map (kbd "SPC p") project-prefix-map))

(provide 'init-project)
;;; init-project.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
