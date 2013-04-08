;; turn off toolbar
(tool-bar-mode -1)

;; turn off scrollbar
(scroll-bar-mode -1)

;; don't display startup
(setq inhibit-startup-message t)

;; display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; highlight the current line
(global-hl-line-mode +1)

;; Display full file path in frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

(provide 'mg-appearance)
