;;别名和快捷键
(global-set-key "\M- " 'set-mark-command)
(global-set-key "\C-x " (quote set-mark-command))
(global-set-key "\C-xk" #'(lambda () (interactive) (kill-buffer (current-buffer))));秒杀buffer
(global-set-key [(control down)] #'(lambda () (interactive) (scroll-up 1))) ;单行卷动
(global-set-key [(control up)] #'(lambda () (interactive) (scroll-down 1)))

(global-set-key "\C-xp" #'(lambda () (interactive) (other-window -1)))

(global-set-key [insert] 'ignore)
(global-set-key [(control ?x) insert] 'overwrite-mode) ;;不要insert/overwrite

(global-unset-key "\C-xf")
(global-set-key "\C-x\C-b" 'ibuffer)

(global-set-key [f7] 'compile)
(global-set-key [C-tab] 'switch-to-next-buffer)
(global-set-key [C-S-iso-lefttab] 'switch-to-previous-buffer)
(global-set-key [C-S-tab] 'switch-to-previous-buffer)
(global-set-key (kbd "C-c w") (quote copy-word))
(global-set-key (kbd "C-c l") (quote copy-line))
(global-set-key (kbd "C-c p") (quote copy-paragraph))

; 从eemacs中得来
(global-set-key "\C-c\C-m" 'execute-extended-command)

(defalias 'llm 'longlines-mode)
(defalias 'open 'find-file)
(defalias 'openo 'find-file-other-window)
(defalias 'qrr 'query-replace)
(defalias 'rstr 'replace-string)
(defalias 'ptm 'pop-to-mark-command)
(defalias 'emacs 'open)
(defalias 'yes-or-no-p 'y-or-n-p) ;别答得那么长
(defalias 'gl 'goto-line)