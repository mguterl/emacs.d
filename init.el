;; References
;; 1. http://www.viget.com/extend/emacs-24-rails-development-environment-from-scratch-to-productive-in-5-minu/
;; 2. http://avdi.org/devblog/category/emacs-reboot/
;; 3. https://github.com/paulv/emacs-config
;; 4. https://github.com/technomancy/emacs-starter-kit

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

(push "/usr/local/bin" exec-path)

(require 'mg-misc)
(require 'mg-defuns)
(require 'mg-packages)
(require 'mg-ruby)
(require 'mg-javascript)
(require 'mg-peepopen)
(require 'mg-keybindings)
(require 'mg-appearance)
