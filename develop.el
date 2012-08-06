;Tab indent 4 spaces
(setq c-basic-offset 4)

;Use c++ mode to open h file
(add-to-list 'auto-mode-alist (cons "\\.h\\'" 'c++-mode))

(setq compilation-scroll-output t)

;C/C++ Programming Enviroment
(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "linux")))

(setq gtags-suggested-key-mapping t)
(load "gtags")
(define-key gtags-mode-map "\C-xg" 'ac-complete-gtags)
(add-hook 'c-mode-hook '(lambda () (gtags-mode 1) ))
(add-hook 'java-mode-hook '(lambda () (gtags-mode 1) ))
(add-hook 'cc-mode-hook '(lambda () (gtags-mode 1) ))
(add-hook 'c++-mode-hook '(lambda () (gtags-mode 1) ))
