;;; init-elpaca-nixos.el --- Sets elpaca-core-date on NixOS -*- lexical-binding: t; -*-

(defun os-is-nixos-p ()
  "Return t if the operating system is NixOS, nil otherwise."
  (file-exists-p "/etc/NIXOS"))

(defun nixos-elpaca-core-date-for-version (emacs-version-string)
  "On NixOS, return the Elpaca core date for a given EMACS-VERSION-STRING.

The core date determines which versions of Emacs core packages to use.
For unknown versions, an error is signaled."
  (let ((version-dates
         '(("30.1.90" . 20250518)
           ("30.2" . 20250814)
           ;; Add future versions here as they land
           )))
    (or (alist-get emacs-version-string version-dates nil nil #'string=)
        (error "Unknown Emacs version '%s' on NixOS. Update version-dates!" emacs-version-string))))

(when (os-is-nixos-p)
  (let ((elpaca-date (nixos-elpaca-core-date-for-version emacs-version)))
    (setq elpaca-core-date `(,elpaca-date))))

(provide 'init-elpaca-nixos)
;;; init-elpaca-nixos.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
