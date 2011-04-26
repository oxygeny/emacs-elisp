
(add-to-list 'load-path (concat elisp-path "elib-1.0"))			;;Elib - The Emacs Lisp Library
(add-to-list 'load-path (concat elisp-path "ecb-2.40"))			;;Emacs Code Browser
(add-to-list 'load-path (concat elisp-path "auto-complete"))		;;auto-complete

(require 'winring)
(require 'display-line-number)
(require 'browse-kill-ring)
(require 'anything)							;;相关查找，可以查找Buffer、历史文件、历史命令
(require 'session)
(require 'color-theme)
(require 'yasnippet-bundle)
(require 'ecb-autoloads)
(require 'eassist)							;;EmacsAssist, C/C++/Java/Python/ELisp method/function navigator.
(require 'css-mode)
(require 'php-mode)


(winring-initialize)
(setq display-line-number-format "%4d| ")
(add-hook 'after-init-hook 'session-initialize)

;color-theme
(if (display-graphic-p) 
    (color-theme-dark-blue)); load my theme

(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-idle-summary-mode
                                  global-semantic-mru-bookmark-mode))
(semantic-mode 1)

(load "auto-complete-settings")



(add-to-list 'auto-mode-alist (cons "\\.css\\'" 'css-mode))

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

;;文件格式转换
(defun dos-unix () (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))
(defun unix-dos () (interactive)
  (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))


                                        ;wxWidgets的样式调整示例代码
(require 'cc-mode)
(add-to-list  'c++-font-lock-extra-types
              "\\bwx[A-Z][a-z][a-zA-Z]*?\\b")
(add-to-list  'c++-font-lock-extra-types
              "\\bC[A-Z][a-z][a-zA-Z]*?\\b")
(defun c-wx-lineup-topmost-intro-cont (langelem)
  (save-excursion
    (beginning-of-line)
    (if (or (re-search-forward "EVT_" (line-end-position) t)
            (re-search-forward "ON_" (line-end-position) t))
        'c-basic-offset
      (c-lineup-topmost-intro-cont langelem))))
(defun c-wx-offset-hook ()
  (c-set-style "stroustrup")
  (c-set-offset 'topmost-intro-cont 'c-wx-lineup-topmost-intro-cont))

(add-hook 'c++-mode-hook 'c-wx-offset-hook)
(add-hook 'c-mode-hook 'c-wx-offset-hook)
