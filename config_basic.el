;;保存会话状态
(desktop-save-mode 1)
;;打开Session
(require 'session)
      (add-hook 'after-init-hook 'session-initialize)

;;颜色设置，其实有个color-theme.el可以将Emacs设置丰富多彩，非常漂亮，不过启动有些慢（我得机器不行），我只是选择了一些颜色设置。
;; 指针颜色设置为白色
;;(set-cursor-color "white")
;; 鼠标颜色设置为白色
;;(set-mouse-color "white")
;; 设置背景颜色和字体颜色
;;(set-foreground-color "white")
;;(set-background-color "darkblue")
;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
;;(set-face-foreground 'highlight "white")
;;(set-face-background 'highlight "blue")
;;(set-face-foreground 'region "cyan")
;;(set-face-background 'region "blue")
;;(set-face-foreground 'secondary-selection "skyblue")
;;(set-face-background 'secondary-selection "darkblue")
;;设置日历的一些颜色
;;(setq calendar-load-hook
;;'(lambda ()
;;(set-face-foreground 'diary-face "skyblue")
;;(set-face-background 'holiday-face "slate blue")
;;(set-face-foreground 'holiday-face "white")))

;;外观设置
;;去掉工具栏
(tool-bar-mode nil)
;;去掉菜单栏，我将F10绑定为显示菜单栏，万一什么东西忘了，需要菜单栏了可以摁F10调出，再摁F10就去掉菜单
(menu-bar-mode nil)
;;不要滚动栏，现在都用滚轴鼠标了，可以不用滚动栏了
(scroll-bar-mode nil)

;;备份设置
;;emacs还有一个自动保存功能，默认在~/.emacs.d/auto-save-list里，这个非常有用，我这里没有改动，具体可以参见Sams teach yourself emacs in 24hours(我简称为sams24)
;;启用版本控制，即可以备份多次
(setq version-control t)
;;备份最原始的版本两次，记第一次编辑前的文档，和第二次编辑前的文档
(setq kept-old-versions 2)
;;备份最新的版本五次，理解同上
(setq kept-new-versions 5)
;;删掉不属于以上7中版本的版本
(setq delete-old-versions t)
;;设置备份文件的路径
(setq backup-directory-alist '(("." . "~/.emacs.tmp")))
;;备份设置方法，直接拷贝
(setq backup-by-copying t)

;;自动补全功能，这事从王垠的网站直接Copy过来的，引用一些他对此的说明
;;你可以设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优先使用表最前面的函数来补全
;;这是说，首先使用当前的buffer补全，如果找不到，就到别的可见的窗口里寻找，如果还找不到，那么到所有打开的buffer去找，如果还……那么到kill-ring里，到文件名，到简称列表里，到list，…… 当前使用的匹配方式会在 echo 区域显示。
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致相同，只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后多按几下 M-/ 就能得到那一行。
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
'(try-expand-line
try-expand-line-all-buffers
try-expand-list
try-expand-list-all-buffers
try-expand-dabbrev
try-expand-dabbrev-visible
try-expand-dabbrev-all-buffers
try-expand-dabbrev-from-kill
try-complete-file-name
try-complete-file-name-partially
try-complete-lisp-symbol
try-complete-lisp-symbol-partially
try-expand-whole-kill))

;;时间戳设置(time-stamp)，设定文档上次保存的信息
;;只要里在你得文档里有Time-stamp:的设置，就会自动保存时间戳
;;启用time-stamp
(setq time-stamp-active t)
;;去掉time-stamp的警告？
(setq time-stamp-warn-inactive t)
;;设置time-stamp的格式，我如下的格式所得的一个例子：<hans 05/18/2004 12:01:12>
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")
;;将修改时间戳添加到保存文件的动作里。
(add-hook 'write-file-hooks 'time-stamp)

;;时间显示设置
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)
;;时间使用24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)
;;时间栏旁边启用邮件设置
(setq display-time-use-mail-icon t)
;;时间的变化频率，单位多少来着？
(setq display-time-interval 10) 