;(require 'server)
;(when (and (= emacs-major-version 23) (equal window-system 'w32))
;  (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                                 ; ~/.emacs.d/server is unsafe"
                                                 ; on windows.
;(server-start)

;;System Settings
;customize path
(setq elisp-path "~/.emacs.d/elisp/")
(add-to-list 'load-path elisp-path)

;make buffers' name unique, add path info to name
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;backup files to specific directory, keep five last versions
(setq version-control t)
(setq backup-directory-alist '((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves/\\2" t)))

;no starup message
(setq inhibit-startup-message t)

;fix copy/paste problem
; stops selection with a mouse being immediately injected to the kill ring
; stops killing/yanking interacting with primary X11 selection
; makes killing/yanking interact with clipboard X11 selection
(setq mouse-drag-copy-region nil)
(setq x-select-enable-primary nil)
(setq x-select-enable-clipboard t)

(ido-mode t)

(column-number-mode t)

;don't need menu-bar
(menu-bar-mode -1)

;disable version control
(setq vc-handled-backends nil)


;;Display Settings
;hightlight files like ini,batch
(require 'generic-x)

;default in text-mode
(setq default-major-mode 'text-mode)

;default tab-width
(setq-default tab-width 4)

;(global-hl-line-mode t)

(setq-default truncate-lines t)

;括号配对
(show-paren-mode t)

(global-font-lock-mode t)

;光标不闪
(blink-cursor-mode nil)


;;Edit Settings
;indent using space
(setq-default indent-tabs-mode nil)

;enable del selection text
(delete-selection-mode t)

(icomplete-mode t)



;load X window special setting
(if (display-graphic-p) (load "xlisp") (load-theme 'wombat))


(load "develop")
(load "elisp")
(load "customkey")
