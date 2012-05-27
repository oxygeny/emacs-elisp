(global-unset-key "\C-xf")
;;别名和快捷键
(global-set-key "\C-x " (quote set-mark-command))
;秒杀buffer
(global-set-key "\C-xk" #'(lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key "\C-xp" #'(lambda () (interactive) (other-window -1)))
(global-set-key "\C-x\C-b" 'ibuffer)

;不要insert/overwrite
(global-set-key [insertchar] 'ignore)
(global-set-key [(control ?x) insertchar] 'overwrite-mode)

;单行卷动
(global-set-key [(control down)] #'(lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-n" #'(lambda () (interactive) (scroll-up 1)))
(global-set-key [(control up)] #'(lambda () (interactive) (scroll-down 1)))
(global-set-key "\M-p" #'(lambda () (interactive) (scroll-down 1)))

(defalias 'llm 'longlines-mode)
(defalias 'yes-or-no-p 'y-or-n-p) ;别答得那么长