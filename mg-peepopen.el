(require 'peepopen)
(textmate-mode)

;; Not sure why this is required, something is funked up with peepopen.el
(peepopen-bind-carbon-keys)

;; Don't pop up files in a new frame
(setq ns-pop-up-frames nil)

(provide 'mg-peepopen)
