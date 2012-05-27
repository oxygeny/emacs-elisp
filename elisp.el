;;;;;;;;;;     auto-complete settings
(add-to-list 'load-path (concat elisp-path "auto-complete"))
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (concat elisp-path "auto-complete/ac-dict"))
(ac-config-default)
;;;;;;;;;;     end of auto-complete

;;;;;;;;;;     session setting
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
;;;;;;;;;;     end of session

;;;;;;;;;;     winring settings
;; (require 'winring)
;; (winring-initialize)
;;;;;;;;;;     end of winring

;;;;;;;;;;     anything settings
;; (require 'anything)
;;;;;;;;;;     end of anything

;;;;;;;;;;     browse-kill-ring
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
;;;;;;;;;;     end of browse-kill-ring

;;;;;;;;;;     whole-line-or-region
(require 'whole-line-or-region)
(add-hook 'after-change-major-mode-hook '(lambda () (interactive) (whole-line-or-region-mode t)))
;;;;;;;;;;     end of whole-line-or-region