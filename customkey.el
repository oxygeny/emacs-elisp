;;别名和快捷键
(global-set-key "\M- " 'set-mark-command)
(global-set-key "\C-x " (quote set-mark-command))
(global-set-key "\C-xk" #'(lambda () (interactive) (kill-buffer (current-buffer))));秒杀buffer
(global-set-key [(control ?=)] 'call-last-kbd-macro)
(defalias 'yes-or-no-p 'y-or-n-p) ;别答得那么长
(global-set-key [(control down)] #'(lambda () (interactive) (scroll-up 1))) ;单行卷动
(global-set-key [(control up)] #'(lambda () (interactive) (scroll-down 1)))

;(global-set-key "\C-z" 'undo)
(global-set-key "\C-x\C-z" 'iconify-or-deiconify-frame)
(global-set-key "\C-xp" #'(lambda () (interactive) (other-window -1)))

(global-set-key [insert] 'ignore)
(global-set-key [(control ?x) insert] 'overwrite-mode) ;;不要insert/overwrite

(global-set-key "\C-cp" 'anything);;无效，可能被模式的Local-Map覆盖了。
(global-set-key "\C-co" 'occur)  ;;从el-intro中学来的
(global-unset-key "\C-xf")
(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key [f6] 'semantic-ia-complete-symbol-menu);;无效，函数不存在
(global-set-key [f7] 'compile)

;(global-set-key [(control ?;)]  'semantic-ia-complete-symbol-menu)
(global-set-key [(control ?')]  'semantic-ia-complete-symbol)
(global-set-key "\C-c\M-b" 'pop-to-mark-command)
(global-set-key (kbd "C-c C-b") 'browse-kill-ring)
(global-set-key "\C-xx" 'hippie-expand)
(global-set-key "\247" (quote hippie-expand))
(global-set-key [C-tab] 'switch-to-previous-buffer)
(global-set-key [C-S-tab] 'switch-to-next-buffer)
(global-set-key (kbd "C-c w")         (quote copy-word))
(global-set-key (kbd "C-c l")         (quote copy-line))
(global-set-key (kbd "C-c p")         (quote copy-paragraph))

; 从eemacs中得来
;(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(defalias 'llm 'longlines-mode)
(defalias 'open 'find-file)
(defalias 'openo 'find-file-other-window)
(defalias 'qrr 'query-replace)
(defalias 'rstr 'replace-string)
(defalias 'ptm 'pop-to-mark-command)
(defalias 'emacs 'open)
(defalias 'ecbd 'ecb-deactivate)
(defalias 'ecba 'ecb-activate)