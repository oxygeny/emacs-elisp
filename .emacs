;(require 'server)
;(when (and (= emacs-major-version 23) (equal window-system 'w32))
;  (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                                 ; ~/.emacs.d/server is unsafe"
                                                 ; on windows.
;(server-start)

(require 'generic-x);;for hightlight files like ini,batch
(require 'uniquify);;The library uniquify overrides Emacs' default mechanism for making buffer names unique (using suffixes like <2> , <3> etc.)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(setq backup-directory-alist '((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves/\\2" t)))

(setq inhibit-startup-message t) ;no starup message
(setq default-tab-width 4) 
(setq default-major-mode 'text-mode)

;(setq-default cursor-type 'bar)

(add-to-list 'auto-mode-alist (cons "\\.h\\'" 'c++-mode))

;;解决复制粘帖
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection

(setq compilation-scroll-output t)
(setq indent-tabs-mode nil)
(setq vc-handled-backends nil) ; disable version control

(delete-selection-mode t)
(global-hl-line-mode t)
(show-paren-mode 1);;括号配对
(setq-default truncate-lines t)
(ido-mode t)
(column-number-mode t)
(global-font-lock-mode 1)
(blink-cursor-mode 0);;光标不闪
(icomplete-mode t)


;customize path
(setq elisp-path "~/.emacs.d/elisp/")
(add-to-list 'load-path elisp-path)

(load "elisp")
(load "customkey")

;load X window special setting
(if (display-graphic-p) (load "xlisp"))