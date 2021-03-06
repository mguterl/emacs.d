(require 'package)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(setq el-get-sources
      '((:name ruby-mode
               :type elpa
               :load "ruby-mode.el")
        (:name ruby-compilation :type elpa)
        (:name ruby-electric :type elpa)
        (:name css-mode :type elpa)
        (:name solarized-theme
               :type elpa)
        (:name zenburn-theme
               :type git
               :url "git://github.com/bbatsov/zenburn-emacs.git"
               :load "zenburn-theme.el"
               after (progn (load-theme 'zenburn t)))
        (:name feature-mode :type elpa)
        (:name multi-term :type elpa)
        (:name ag
               :type git
               :url "git://github.com/Wilfred/ag.el.git"
               :load "ag.el"
               :compile ("ag.el"))
        (:name textmate
               :type git
               :url "git://github.com/defunkt/textmate.el"
               :load "textmate.el")
        (:name rvm
               :type git
               :url "https://github.com/senny/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after (progn (rvm-use-default)))
        (:name rhtml
               :type git
               :url "https://github.com/eschulte/rhtml.git"
               :features rhtml-mode)
        (:name yaml-mode
               :type git
               :url "http://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode)
        (:name magit
               :type git
               :url "git://github.com/magit/magit.git")
        (:name coffee-mode
               :type git
               :url "git://github.com/defunkt/coffee-mode.git")
        (:name haml-mode
               :type git
               :url "git://github.com/nex3/haml-mode.git")
        (:name sass-mode
               :type git
               :url "git://github.com/nex3/sass-mode.git")))

(setq mg-el-get-packages
      (append
       '(ruby-mode
         ruby-compilation
         css-mode
         textmate
         rvm
         rhtml
         yaml-mode
         rspec-mode
         markdown-mode
         solarized-theme
         zenburn-theme)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync mg-el-get-packages)

(provide 'mg-packages)
