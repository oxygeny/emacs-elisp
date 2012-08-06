;;;;;;;;;;     auto-complete settings
(add-to-list 'load-path (concat elisp-path "auto-complete"))
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (concat elisp-path "auto-complete/ac-dict"))

(defun ac-emacs-lisp-mode-setup ()
  (setq ac-sources (append '(ac-source-features ac-source-functions ac-source-yasnippet ac-source-variables ac-source-symbols) ac-sources)))

(setq-default ac-sources '(;ac-source-abbrev
                           ac-source-dictionary
                           ac-source-words-in-same-mode-buffers))

(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)
(setq ac-use-comphist nil)
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
