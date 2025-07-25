;;; init-pdf.el --- PDF Tools setup -*- lexical-binding: t; -*-

(use-package pdf-tools
  :ensure nil
  :magic ("%PDF" . pdf-view-mode))

(provide 'init-pdf)
;;; init-pdf.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
