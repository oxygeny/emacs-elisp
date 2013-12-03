;;display 显示相关设定
;(setq default-frame-alist '((width . 175) (height . 60) (top . 0) (left . 0)))
(add-to-list 'default-frame-alist '(font . "-outline-DejaVu Sans YuanTi Mono-normal-normal-normal-mono-12-*-*-*-c-*-iso10646-1"))
(scroll-bar-mode 0)
(tool-bar-mode 0)
(set-fringe-mode '(1 . 1))

(global-font-lock-mode t)

;光标不闪
(blink-cursor-mode 0)

;fix copy/paste problem
; stops selection with a mouse being immediately injected to the kill ring
; stops killing/yanking interacting with primary X11 selection
; makes killing/yanking interact with clipboard X11 selection
(setq mouse-drag-copy-region nil)
(setq x-select-enable-primary nil)
(setq x-select-enable-clipboard t)

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue)
