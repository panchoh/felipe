;;; init-elpaca-nixos.el --- Sets elpaca-core-date on NixOS -*- lexical-binding: t; -*-

(defun os-is-nixos-p ()
  "Return t if the operating system is NixOS, nil otherwise."
  (and (file-exists-p "/etc/os-release")
       (with-temp-buffer
         (insert-file-contents "/etc/os-release")
         (re-search-forward "^ID=nixos$" nil t))))

(defun nixos-elpaca-core-date-for-version (emacs-version-string)
  "Return the Elpaca core date for a given Emacs version on NixOS.
The core date determines which versions of Emacs core packages to use.
If the version is unknown, signal an error."
  (let ((version-dates
         '(("30.1.90" . 20250518)
           ;; Add future versions here as they land
           ;; ("30.1.91" . 20250601)
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
