;; turn off toolbar
(tool-bar-mode -1)

;; turn off scrollbar
(scroll-bar-mode -1)

;; don't display startup
(setq inhibit-startup-message t)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/themes/")
(load-theme 'solarized-light)

(provide 'mg-appearance)
