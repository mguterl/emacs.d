(setq path "/Users/michaelguterl/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/mongodb/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/michaelguterl/.rvm/bin")
(setenv "PATH" path)

;; map command as meta
(setq ns-command-modifier (quote meta))

;; don't make backup files
(setq make-backup-files nil)

;; don't make autosave files
(setq auto-save-default nil)

;; spaces are better than tabs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; disable audio bell
(setq visible-bell t)

;; enable ido
(ido-mode t)

;; Save a list of recent files visited.
(recentf-mode 1)

;; Store customizations in custom.el and load them
(setq custom-file (concat dotfiles-dir "custom.el"))
(load custom-file)

;; Don't prompt for yes or no, prompt for y or n instead
(fset 'yes-or-no-p 'y-or-n-p)

;; cleanup trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Start the server for emacsclient
(server-start)

;; Show matching parens
(show-paren-mode 1)

(add-to-list 'auto-mode-alist '(".ya?ml$" . yaml-mode))

(provide 'mg-misc)
