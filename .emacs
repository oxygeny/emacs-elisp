(require 'server)
(when (and (= emacs-major-version 23) (equal window-system 'w32))
  (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                                 ; ~/.emacs.d/server is unsafe"
                                                 ; on windows.
;(server-start)

(require 'generic-x)
(require 'midnight)										;;for running configured actions at every “midnight”.
(require 'uniquify)										;;The library uniquify overrides Emacs' default mechanism for making buffer names unique (using suffixes like <2> , <3> etc.)

(setq backup-directory-alist '((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves/\\2" t)))

;;保存会话状态
;(desktop-save-mode 1)

;;display 显示相关设定
;(setq default-frame-alist '((width . 175) (height . 60) (top . 0) (left . 0)))
;(add-to-list 'default-frame-alist '(font . "-outline-DejaVu Sans YuanTi Mono-normal-normal-normal-mono-12-*-*-*-c-*-iso10646-1"))

(setq uniquify-buffer-name-style 'forward)
(setq Info-scroll-prefer-subnodes nil) ;info scrolling
(setq inhibit-startup-message t) ;no starup message
(setq default-tab-width 4) 
(setq default-major-mode 'text-mode)
(setq display-time-day-and-date t)
(display-time) ;显示时间

;additional mode 附加模式
(setq inferior-lisp-program "clisp")
(setq x-font-regexp-foundry-and-family "hack-to-save-we")

(add-to-list 'auto-mode-alist (cons "\\.h\\'" 'c++-mode))
(add-to-list 'auto-mode-alist (cons "\\.l\\'" 'c++-mode))
(add-to-list 'auto-mode-alist (cons "\\.y\\'" 'c++-mode))

;;解决复制粘帖
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection

;customize path
(setq elisp-path "~/.emacs.d/elisp/")
(add-to-list 'load-path elisp-path)

(load "elisp")
(load "customkey")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(compilation-scroll-output t)
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-tip-of-the-day nil)
 '(font-lock-maximum-decoration (quote ((c++-mode . 2) (t . t))))
 '(delete-selection-mode t)
 '(indent-tabs-mode nil)
 '(blink-cursor-mode nil)
 '(fringe-mode 3 nil (fringe))
 '(global-hl-line-mode t)
 '(icomplete-mode t)
 '(ido-mode (quote both) nil (ido))
 '(partial-completion-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(truncate-lines t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
