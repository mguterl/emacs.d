;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (css-mode) "css-mode/css-mode" "css-mode/css-mode.el"
;;;;;;  (20214 1825))
;;; Generated autoloads from css-mode/css-mode.el
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(autoload 'css-mode "css-mode/css-mode" "\
Major mode for editing CSS source code.

Key bindings:

\\{css-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (gist-fetch gist-list gist-region-or-buffer-private
;;;;;;  gist-region-or-buffer gist-buffer-private gist-buffer gist-region-private
;;;;;;  gist-region) "gist/gist" "gist/gist.el" (20214 1832))
;;; Generated autoloads from gist/gist.el

(autoload 'gist-region "gist/gist" "\
Post the current region as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn BEGIN END &optional PRIVATE &optional CALLBACK)" t nil)

(autoload 'gist-region-private "gist/gist" "\
Post the current region as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn BEGIN END)" t nil)

(autoload 'gist-buffer "gist/gist" "\
Post the current buffer as a new paste at gist.github.com.
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'gist-buffer-private "gist/gist" "\
Post the current buffer as a new private paste at gist.github.com.
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-region-or-buffer "gist/gist" "\
Post either the current region, or if mark is not set, the current buffer as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'gist-region-or-buffer-private "gist/gist" "\
Post either the current region, or if mark is not set, the current buffer as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-list "gist/gist" "\
Displays a list of all of the current user's gists in a new buffer.

\(fn)" t nil)

(autoload 'gist-fetch "gist/gist" "\
Fetches a Gist and inserts it into a new buffer
If the Gist already exists in a buffer, switches to it

\(fn ID)" t nil)

;;;***

;;;### (autoloads (run-ruby inf-ruby inf-ruby-keys) "inf-ruby/inf-ruby"
;;;;;;  "inf-ruby/inf-ruby.el" (20214 1767))
;;; Generated autoloads from inf-ruby/inf-ruby.el

(autoload 'inf-ruby-keys "inf-ruby/inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use. Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process, input and output via buffer *ruby*.
If there is a process already running in `*ruby*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `ruby-program-name').  Runs the hooks `inferior-ruby-mode-hook'
\(after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn &optional COMMAND NAME)" t nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook 'inf-ruby-keys))

;;;***

;;;### (autoloads (markdown-mode) "markdown-mode/markdown-mode" "markdown-mode/markdown-mode.el"
;;;;;;  (20214 5102))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads (rspec-buffer-is-spec-p rspec-mode) "rspec-mode/rspec-mode"
;;;;;;  "rspec-mode/rspec-mode.el" (20214 1951))
;;; Generated autoloads from rspec-mode/rspec-mode.el

(autoload 'rspec-mode "rspec-mode/rspec-mode" "\
Minor mode for rSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode/rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (when (rspec-buffer-is-spec-p) (rspec-mode)))))

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (local-set-key rspec-key-command-prefix rspec-mode-verifible-keymap))))

(eval-after-load 'rails '(add-hook 'rails-minor-mode-hook (lambda nil (local-set-key rspec-key-command-prefix rspec-mode-verifible-keymap))))

;;;***

;;;### (autoloads (ruby-compilation-this-buffer ruby-compilation-cap
;;;;;;  ruby-compilation-rake ruby-compilation-run pcomplete/cap
;;;;;;  pcomplete/rake) "ruby-compilation/ruby-compilation" "ruby-compilation/ruby-compilation.el"
;;;;;;  (20214 1769))
;;; Generated autoloads from ruby-compilation/ruby-compilation.el

(autoload 'pcomplete/rake "ruby-compilation/ruby-compilation" "\


\(fn)" nil nil)

(autoload 'pcomplete/cap "ruby-compilation/ruby-compilation" "\


\(fn)" nil nil)

(autoload 'ruby-compilation-run "ruby-compilation/ruby-compilation" "\
Run a ruby process dumping output to a ruby compilation
buffer. If supplied, `name' will be used in place of the script
name to construct the name of the compilation buffer.

\(fn CMD &optional RUBY-OPTIONS NAME)" t nil)

(autoload 'ruby-compilation-rake "ruby-compilation/ruby-compilation" "\
Run a rake process dumping output to a ruby compilation buffer.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-cap "ruby-compilation/ruby-compilation" "\
Run a capistrano process dumping output to a ruby compilation buffer.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-this-buffer "ruby-compilation/ruby-compilation" "\
Run the current buffer through Ruby compilation.

\(fn)" t nil)

;;;***

;;;### (autoloads (ruby-electric-mode) "ruby-electric/ruby-electric"
;;;;;;  "ruby-electric/ruby-electric.el" (20214 4759))
;;; Generated autoloads from ruby-electric/ruby-electric.el

(autoload 'ruby-electric-mode "ruby-electric/ruby-electric" "\
Toggle Ruby Electric minor mode.
With no argument, this command toggles the mode.  Non-null prefix
argument turns on the mode.  Null prefix argument turns off the
mode.

When Ruby Electric mode is enabled, an indented 'end' is
heuristicaly inserted whenever typing a word like 'module',
'class', 'def', 'if', 'unless', 'case', 'until', 'for', 'begin',
'do'. Simple, double and back quotes as well as braces are paired
auto-magically. Expansion does not occur inside comments and
strings. Note that you must have Font Lock enabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ruby-mode) "ruby-mode/ruby-mode" "ruby-mode/ruby-mode.el"
;;;;;;  (20214 1765))
;;; Generated autoloads from ruby-mode/ruby-mode.el

(autoload 'ruby-mode "ruby-mode/ruby-mode" "\
Major mode for editing Ruby scripts.
\\[ruby-indent-line] properly indents subexpressions of multi-line
class, module, def, if, while, for, do, and case statements, taking
nesting into account.

The variable ruby-indent-level controls the amount of indentation.
\\{ruby-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("rbx" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("jruby" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby1.9" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby1.8" . ruby-mode))

;;;***

;;;### (autoloads (rvm-open-gem rvm-use rvm-activate-corresponding-ruby
;;;;;;  rvm-use-default) "rvm/rvm" "rvm/rvm.el" (20215 12278))
;;; Generated autoloads from rvm/rvm.el

(autoload 'rvm-use-default "rvm/rvm" "\
use the rvm-default ruby as the current ruby version

\(fn)" t nil)

(autoload 'rvm-activate-corresponding-ruby "rvm/rvm" "\
activate the corresponding ruby version for the file in the current buffer.
This function searches for an .rvmrc file and activates the configured ruby.
If no .rvmrc file is found, the default ruby is used insted.

\(fn)" t nil)

(autoload 'rvm-use "rvm/rvm" "\
switch the current ruby version to any ruby, which is installed with rvm

\(fn NEW-RUBY NEW-GEMSET)" t nil)

(autoload 'rvm-open-gem "rvm/rvm" "\


\(fn GEMHOME)" t nil)

;;;***

;;;### (autoloads (textmate-mode) "textmate/textmate" "textmate/textmate.el"
;;;;;;  (20214 1826))
;;; Generated autoloads from textmate/textmate.el

(defvar textmate-mode nil "\
Non-nil if Textmate mode is enabled.
See the command `textmate-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `textmate-mode'.")

(custom-autoload 'textmate-mode "textmate/textmate" nil)

(autoload 'textmate-mode "textmate/textmate" "\
TextMate Emulation Minor Mode

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("css-mode/css-mode-autoloads.el" "css-mode/css-mode-pkg.el"
;;;;;;  "inf-ruby/inf-ruby-autoloads.el" "inf-ruby/inf-ruby-pkg.el"
;;;;;;  "rhtml/rhtml-erb.el" "rhtml/rhtml-fonts.el" "rhtml/rhtml-mode.el"
;;;;;;  "rhtml/rhtml-navigation.el" "rhtml/rhtml-ruby-hook.el" "rhtml/rhtml-sgml-hacks.el"
;;;;;;  "rspec-mode/rspec-mode-expectations.el" "ruby-compilation/ruby-compilation-autoloads.el"
;;;;;;  "ruby-compilation/ruby-compilation-pkg.el" "ruby-electric/ruby-electric-autoloads.el"
;;;;;;  "ruby-electric/ruby-electric-pkg.el" "ruby-mode/ruby-mode-autoloads.el"
;;;;;;  "ruby-mode/ruby-mode-pkg.el" "yaml-mode/yaml-mode.el") (20215
;;;;;;  12278 821142))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
