;;; early-startup-time.el --- Shows Emacs startup time -*- lexical-binding: t; -*-

;; https://github.com/jamescherti/minimal-emacs.d?tab=readme-ov-file#how-to-display-emacs-startup-duration

(defun display-startup-time ()
  "Display the startup time and number of garbage collections."
  (message "Emacs init loaded in %.2f seconds (Full emacs-startup: %.2fs) with %d garbage collections."
           (float-time (time-subtract after-init-time before-init-time))
           (time-to-seconds (time-since before-init-time))
           gcs-done))

(add-hook 'elpaca-after-init-hook #'display-startup-time 100)

(provide 'early-startup-time)
;;; early-startup-time.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
