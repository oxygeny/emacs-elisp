;Tab indent 4 spaces
(setq c-basic-offset 4)

;Use c++ mode to open h file
(add-to-list 'auto-mode-alist (cons "\\.h\\'" 'c++-mode))

(setq compilation-scroll-output t)

;C/C++ Programming Enviroment
(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "linux")))
