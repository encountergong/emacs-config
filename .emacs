
  (package-initialize)

(setq elisp-config-directory "e:/OneDrive/study/note/elisp/init")

(add-to-list 'load-path  "~/init")
(add-to-list 'load-path  "e:/OneDrive/study/note/elisp/init")


;;(add-to-list 'load-path (expand-file-name "E:/OneDrive/study/note/elisp/init"))
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-org)
(require 'init-custom)

;; 指定用户自定义配置的放置目录（文件）
(setq custom-file (expand-file-name "e:/OneDrive/study/note/elisp/init" user-emacs-directory))
(load-file custom-file) ;;权限不允许，故注释掉了


;;执行整个bufffer:
;;`M-x eval-buffer`
















