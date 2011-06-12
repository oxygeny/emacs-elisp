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
(require 'anything)
;;;;;;;;;;     end of anything

;;;;;;;;;;     browse-kill-ring
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
;;;;;;;;;;     end of browse-kill-ring

;;;;;;;;;;     function define
(defun my-c-mode-common-hook ()
  (define-key c-mode-base-map (kbd "M-o") 'eassist-switch-h-cpp)
  (define-key c-mode-base-map (kbd "C-c m") 'eassist-list-methods))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;copy without selection
(defun copy-paragraph (&optional arg)
  "Copy paragraphes at point"
  (interactive "P")
  (let ((beg (progn (backward-paragraph 1) (point)))
        (end (progn (forward-paragraph arg) (point))))
    (copy-region-as-kill beg end))
  )

(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line "
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position)))
    (copy-region-as-kill beg end))
  )

(defun copy-word (&optional arg)
  "Copy words at point"
  (interactive "P")
  (let ((beg (progn (if (looking-back "[a-zA-Z]" 1) (backward-word 1)) (point)))
        (end (progn (forward-word arg) (point))))
    (copy-region-as-kill beg end))
  )

(defalias 'switch-to-next-buffer 'bury-buffer)
(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (nth (- (length (buffer-list)) 1) (buffer-list))))
