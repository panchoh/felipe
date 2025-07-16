;;; early-ui.el --- Reduce visual clutter -*- lexical-binding: t; -*-

(advice-add #'display-startup-echo-area-message :override #'ignore)
(advice-add #'display-startup-screen :override #'ignore)

(setq frame-inhibit-implied-resize t
      inhibit-startup-echo-area-message user-login-name
      inhibit-startup-screen t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil

      menu-bar-mode nil
      tool-bar-mode nil
      scroll-bar-mode nil
      horizontal-scroll-bar-mode nil
      tooltip-mode nil)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars . nil) default-frame-alist)
(push '(horizontal-scroll-bars . nil) default-frame-alist)

(provide 'early-ui)
;;; early-ui.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
