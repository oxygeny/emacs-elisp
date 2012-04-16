;;display 显示相关设定
;(setq default-frame-alist '((width . 175) (height . 60) (top . 0) (left . 0)))
(add-to-list 'default-frame-alist '(font . "-outline-DejaVu Sans YuanTi Mono-normal-normal-normal-mono-12-*-*-*-c-*-iso10646-1"))
(scroll-bar-mode nil)
(tool-bar-mode nil)
(set-fringe-mode '(1 . 1))

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue)